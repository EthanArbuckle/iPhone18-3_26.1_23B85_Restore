uint64_t sub_1D221970C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D222C71C(result, a2, 10);

    v18 = (v6 >> 8) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1D225108C();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOBYTE(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 >> 8))
              {
                goto LABEL_61;
              }

              ++v11;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          while (1)
          {
            v15 = *result - 48;
            if (v15 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) + v15;
            if ((v6 >> 8))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOBYTE(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFFFF00) != 0)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOBYTE(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 >> 8))
          {
            break;
          }

          ++v16;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOBYTE(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOBYTE(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF00) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 >> 8))
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

id sub_1D2219A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 16) persistentStoreCoordinator];
  if (result)
  {
    v9 = result;
    v10 = [result persistentStores];

    sub_1D2174E10(0, &qword_1EDC886C0);
    v11 = sub_1D2250AFC();

    if (v11 >> 62)
    {
      result = sub_1D2250F4C();
      if (result)
      {
LABEL_4:
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D3898A80](0, v11);
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v12 = *(v11 + 32);
        }

        v13 = v12;

        v14 = [*(a1 + 16) persistentStoreCoordinator];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 metadataForPersistentStore_];

          v17 = sub_1D225089C();
          *&v21[0] = 0x2E7865646E495556;
          *(&v21[0] + 1) = 0xE800000000000000;
          MEMORY[0x1D3898450](a3, a4);
          if (*(v17 + 16))
          {
            v18 = sub_1D2196C7C(*&v21[0], *(&v21[0] + 1));
            v20 = v19;

            if (v20)
            {
              sub_1D21763A8(*(v17 + 56) + 32 * v18, v21);

              return sub_1D21C7088(v21, a2);
            }
          }

          else
          {
          }
        }

        memset(v21, 0, sizeof(v21));
        return sub_1D21C7088(v21, a2);
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void sub_1D2219C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [*(a1 + 16) persistentStoreCoordinator];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [v8 persistentStores];

  sub_1D2174E10(0, &qword_1EDC886C0);
  v11 = sub_1D2250AFC();

  if (v11 >> 62)
  {
    if (sub_1D2250F4C())
    {
      goto LABEL_4;
    }

LABEL_18:

    return;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1D3898A80](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = [*(a1 + 16) persistentStoreCoordinator];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 metadataForPersistentStore_];

    v17 = sub_1D225089C();
    *&v23[0] = 0x2E7865646E495556;
    *(&v23[0] + 1) = 0xE800000000000000;
    MEMORY[0x1D3898450](a2, a3);
    sub_1D21763A8(a4, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D21BB36C(v23, 0x2E7865646E495556, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = [*(a1 + 16) persistentStoreCoordinator];
  if (v20)
  {
    v21 = v20;
    if (v19)
    {
      v22 = sub_1D225088C();
    }

    else
    {
      v22 = 0;
    }

    [v21 setMetadata:v22 forPersistentStore:v13];
  }

  else
  {
  }
}

uint64_t sub_1D2219F2C(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v18 = 0;
  v19 = 1;
  v8 = *(v4 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3 & 1;
  *(v9 + 40) = &v18;
  *(v9 + 48) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D2217F14;
  *(v10 + 24) = v9;
  v17[4] = sub_1D21A7328;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D2179EE8;
  v17[3] = &block_descriptor_188;
  v11 = _Block_copy(v17);
  v12 = a1;
  v13 = v8;

  [v13 performBlockAndWait_];

  _Block_release(v11);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v15 = v18;
    v16 = v19;

    if (v16)
    {
      return 0;
    }

    else
    {
      return v15;
    }
  }

  return result;
}

void sub_1D221A0D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v11 = sub_1D225092C();
  v12 = [v10 initWithEntityName_];

  if (a1)
  {
    [v12 setPredicate_];
  }

  if ((a3 & 1) == 0)
  {
    [v12 setFetchLimit_];
  }

  v13 = *(a5 + 16);
  type metadata accessor for VUIndexObservation();
  v14 = v13;
  v15 = sub_1D2250DCC();

  *a4 = v15;
  *(a4 + 8) = 0;
}

uint64_t sub_1D221A1FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v5 = sub_1D225092C();
  v6 = [v4 initWithEntityName_];

  v7 = sub_1D225092C();
  v8 = objc_opt_self();
  v9 = [v8 expressionForKeyPath_];

  v10 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  v11 = sub_1D225092C();
  [v10 setName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D22526E0;
  *(v12 + 56) = sub_1D2174E10(0, &qword_1EDC872B0);
  *(v12 + 32) = v9;
  v13 = v9;
  v14 = v6;
  v54 = v13;
  v15 = sub_1D225092C();
  v16 = sub_1D2250AEC();

  v17 = [v8 expressionForFunction:v15 arguments:v16];

  [v10 setExpression_];
  [v10 setExpressionResultType_];
  [v14 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D2252720;
  v19 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v20 = sub_1D225092C();
  v21 = [v19 initWithKey:v20 ascending:1];

  *(v18 + 32) = v21;
  sub_1D2174E10(0, &qword_1EDC886C8);
  v22 = sub_1D2250AEC();

  [v14 setSortDescriptors_];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D22526E0;
  v24 = MEMORY[0x1E69E6158];
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 32) = 0x6C6562616CLL;
  *(v23 + 40) = 0xE500000000000000;
  v25 = sub_1D2250AEC();

  [v14 setPropertiesToGroupBy_];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D22526F0;
  *(v26 + 56) = v24;
  v27 = 0x6C6562616CLL;
  *(v26 + 32) = 0x6C6562616CLL;
  *(v26 + 40) = 0xE500000000000000;
  *(v26 + 88) = sub_1D2174E10(0, &qword_1EDC87298);
  *(v26 + 64) = v10;
  v53 = v10;
  v28 = sub_1D2250AEC();

  [v14 setPropertiesToFetch_];

  if (a1)
  {
    [v14 setPredicate_];
  }

  v29 = *(a2 + 16);
  sub_1D2174E10(0, &qword_1EDC872B8);
  v58 = v29;
  v30 = sub_1D2250DDC();

  if (v30 >> 62)
  {
LABEL_47:
    v31 = sub_1D2250F4C();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v31)
  {
  }

  v52 = v14;
  v14 = 0;
  v56 = v31;
  while (1)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1D3898A80](v14, v30);
    }

    else
    {
      if (v14 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v32 = *(v30 + 8 * v14 + 32);
    }

    v33 = v32;
    v34 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    *&v60 = v27;
    *(&v60 + 1) = 0xE500000000000000;
    v35 = [v32 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v35)
    {
      sub_1D2250E9C();
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v62 = 0u;
    }

    v63 = v60;
    v64 = v62;
    if (*(&v62 + 1))
    {
      break;
    }

    sub_1D2176170(&v63, &unk_1EC6D2180);
LABEL_8:
    ++v14;
    if (v34 == v31)
    {
    }
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_8;
  }

  *&v61 = 0x746E756F63;
  *(&v61 + 1) = 0xE500000000000000;
  v36 = [v33 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v36)
  {
    sub_1D2250E9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v63 = v61;
  v64 = v62;
  if (!*(&v62 + 1))
  {

    sub_1D2176170(&v63, &unk_1EC6D2180);
    goto LABEL_39;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_39;
  }

  v27 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v63 = *a3;
  v38 = v63;
  *a3 = 0x8000000000000000;
  v40 = sub_1D2176758(v59);
  v41 = *(v38 + 16);
  v42 = (v39 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    goto LABEL_46;
  }

  v44 = v39;
  if (*(v38 + 24) >= v43)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v47 = v63;
      if ((v39 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      sub_1D21B6C24();
      v47 = v63;
      if ((v44 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_34;
  }

  sub_1D21B140C(v43, isUniquelyReferenced_nonNull_native);
  v45 = sub_1D2176758(v59);
  if ((v44 & 1) != (v46 & 1))
  {
    goto LABEL_49;
  }

  v40 = v45;
  v47 = v63;
  if (v44)
  {
LABEL_34:
    *(v47[7] + 8 * v40) = v59;

    goto LABEL_38;
  }

LABEL_36:
  v47[(v40 >> 6) + 8] |= 1 << v40;
  *(v47[6] + 8 * v40) = v59;
  *(v47[7] + 8 * v40) = v59;

  v48 = v47[2];
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (!v49)
  {
    v47[2] = v50;
LABEL_38:
    *a3 = v47;

    v27 = 0x6C6562616CLL;
LABEL_39:
    v31 = v56;
    goto LABEL_8;
  }

  __break(1u);
LABEL_49:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D221AA88(void *a1)
{
  v14 = 0;
  v15 = 1;
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = &v14;
  v4[4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D222D3EC;
  *(v5 + 24) = v4;
  v13[4] = sub_1D21A7328;
  v13[5] = v5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D2179EE8;
  v13[3] = &block_descriptor_178;
  v6 = _Block_copy(v13);
  v7 = a1;
  v8 = v3;

  [v8 performBlockAndWait_];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v14;
    v12 = v15;

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

void sub_1D221AC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_1D225092C();
  v8 = [v6 initWithEntityName_];

  if (a1)
  {
    [v8 setPredicate_];
  }

  v9 = *(a3 + 16);
  type metadata accessor for VUIndexTag();
  v10 = v9;
  v11 = sub_1D2250DCC();

  *a2 = v11;
  *(a2 + 8) = 0;
}

uint64_t sub_1D221AD20()
{
  v11 = 0;
  v12 = 1;
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = &v11;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1D222D3E4;
  *(v3 + 24) = v2;
  v10[4] = sub_1D21A7328;
  v10[5] = v3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D2179EE8;
  v10[3] = &block_descriptor_168;
  v4 = _Block_copy(v10);
  v5 = v1;

  [v5 performBlockAndWait_];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v11;
    v9 = v12;

    if (v9)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

void sub_1D221AEA8(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v5 = sub_1D225092C();
  v6 = [v4 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  v7 = sub_1D2250C5C();
  [v6 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 16) = xmmword_1D22526E0;
  *(v8 + 56) = v9;
  *(v8 + 32) = 0x6C6562616CLL;
  *(v8 + 40) = 0xE500000000000000;
  v10 = sub_1D2250AEC();

  [v6 setPropertiesToFetch_];

  [v6 setReturnsDistinctResults_];
  [v6 setResultType_];
  v11 = *(a2 + 16);
  sub_1D2174E10(0, &qword_1EDC872B8);
  v12 = v11;
  v13 = sub_1D2250DDC();

  if (v13 >> 62)
  {
    v14 = sub_1D2250F4C();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = v14;
  *(a1 + 8) = 0;
}

uint64_t sub_1D221B0E0(__int16 a1)
{
  v2 = v1;
  v13 = 0;
  v14 = 1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = &v13;
  *(v5 + 32) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D222D3D8;
  *(v6 + 24) = v5;
  v12[4] = sub_1D21A7328;
  v12[5] = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D2179EE8;
  v12[3] = &block_descriptor_158;
  v7 = _Block_copy(v12);
  v8 = v4;

  [v8 performBlockAndWait_];

  _Block_release(v7);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v10 = v13;
    v11 = v14;

    if (v11)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

void sub_1D221B270(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_1D225092C();
  v8 = [v6 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7290];
  *(v9 + 16) = xmmword_1D22526E0;
  v11 = MEMORY[0x1E69E72E8];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = a1;
  v12 = sub_1D2250C5C();
  [v8 setPredicate_];

  v13 = *(a3 + 16);
  type metadata accessor for VUIndexObservation();
  v14 = v13;
  v15 = sub_1D2250DCC();

  *a2 = v15;
  *(a2 + 8) = 0;
}

uint64_t sub_1D221B400()
{
  v11 = 0;
  v12 = 1;
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = &v11;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1D222D3D0;
  *(v3 + 24) = v2;
  v10[4] = sub_1D21A7328;
  v10[5] = v3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D2179EE8;
  v10[3] = &block_descriptor_148;
  v4 = _Block_copy(v10);
  v5 = v1;

  [v5 performBlockAndWait_];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v11;
    v9 = v12;

    if (v9)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

void sub_1D221B588(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v5 = sub_1D225092C();
  v6 = [v4 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D22526F0;
  v8 = MEMORY[0x1E69E72E8];
  *(v7 + 56) = MEMORY[0x1E69E7290];
  *(v7 + 64) = v8;
  *(v7 + 32) = 1;
  v9 = MEMORY[0x1E69E7558];
  *(v7 + 96) = MEMORY[0x1E69E7508];
  *(v7 + 104) = v9;
  *(v7 + 72) = 2;
  v10 = sub_1D2250C5C();
  [v6 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 16) = xmmword_1D22526E0;
  *(v11 + 56) = v12;
  *(v11 + 32) = 0x746176726573626FLL;
  *(v11 + 40) = 0xEB000000006E6F69;
  v13 = sub_1D2250AEC();

  [v6 setPropertiesToFetch_];

  [v6 setReturnsDistinctResults_];
  v14 = *(a2 + 16);
  type metadata accessor for VUIndexTag();
  v15 = v14;
  v16 = sub_1D2250DDC();

  if (v16 >> 62)
  {
    v17 = sub_1D2250F4C();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = v17;
  *(a1 + 8) = 0;
}

uint64_t sub_1D221B7FC(__int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v8 = sub_1D225092C();
  v9 = [v7 initWithEntityName_];

  v19 = MEMORY[0x1E69E7CC0];
  v10 = *(v3 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = v9;
  *(v11 + 48) = v3;
  *(v11 + 56) = &v19;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D222D3BC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1D21A7328;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_137;
  v13 = _Block_copy(aBlock);

  v14 = v9;

  v15 = v10;

  [v15 performBlockAndWait_];

  _Block_release(v13);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = v19;

    return v17;
  }

  return result;
}

char *sub_1D221B9F8(__int16 a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char **a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D2252720;
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D22526F0;
  v13 = MEMORY[0x1E69E7290];
  v14 = MEMORY[0x1E69E72E8];
  *(v12 + 56) = MEMORY[0x1E69E7290];
  *(v12 + 64) = v14;
  *(v12 + 32) = 1;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 72) = a1;
  *(v11 + 32) = sub_1D2250C5C();
  v48 = v11;
  if (a3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2252720;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D22526E0;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1D217A924();
    *(v16 + 32) = a2;
    *(v16 + 40) = a3;

    *(inited + 32) = sub_1D2250C5C();
    sub_1D217A694(inited);
    v17 = v48;
  }

  else
  {
    v17 = v11;
  }

  v18 = sub_1D2250AEC();
  v19 = [objc_opt_self() andPredicateWithSubpredicates_];

  [a4 setPredicate_];
  v20 = sub_1D2250AEC();
  [a4 setRelationshipKeyPathsForPrefetching_];

  [a4 setReturnsDistinctResults_];
  v21 = *(a5 + 16);
  type metadata accessor for VUIndexTag();
  v22 = v21;
  v23 = sub_1D2250DDC();

  if (v23 >> 62)
  {
    goto LABEL_38;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_39;
  }

LABEL_6:
  v45 = v17;
  v47 = MEMORY[0x1E69E7CC0];
  result = sub_1D21AFC80(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
    __break(1u);
  }

  else
  {
    v26 = 0;
    v27 = v47;
    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_38:
          v24 = sub_1D2250F4C();
          if (v24)
          {
            goto LABEL_6;
          }

LABEL_39:

          v27 = MEMORY[0x1E69E7CC0];
LABEL_21:
          v36 = sub_1D2206A48(v27);

          v37 = *(v36 + 16);
          if (!v37)
          {
            break;
          }

          v38 = sub_1D21F82B4(*(v36 + 16), 0);
          v23 = sub_1D21F9EF4(&v47, (v38 + 4), v37, v36);
          sub_1D217CF78();
          if (v23 == v37)
          {
            v39 = v38[2];
            if (v39)
            {
LABEL_24:
              v40 = v38 + 5;
              v41 = MEMORY[0x1E69E7CC0];
              do
              {
                if ((*v40 & 1) == 0)
                {
                  v42 = *(v40 - 1);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v41 = sub_1D2196A38(0, *(v41 + 2) + 1, 1, v41);
                  }

                  v44 = *(v41 + 2);
                  v43 = *(v41 + 3);
                  if (v44 >= v43 >> 1)
                  {
                    v41 = sub_1D2196A38((v43 > 1), v44 + 1, 1, v41);
                  }

                  *(v41 + 2) = v44 + 1;
                  *&v41[8 * v44 + 32] = v42;
                }

                v40 += 16;
                --v39;
              }

              while (v39);
              goto LABEL_34;
            }

LABEL_33:
            v41 = MEMORY[0x1E69E7CC0];
LABEL_34:

            *a6 = v41;
          }
        }

        v38 = MEMORY[0x1E69E7CC0];
        v39 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v39)
        {
          goto LABEL_24;
        }

        goto LABEL_33;
      }

      if ((v23 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1D3898A80](v26, v23);
      }

      else
      {
        if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v29 = *(v23 + 8 * v26 + 32);
      }

      v30 = v29;
      result = [v29 observation];
      if (!result)
      {
        break;
      }

      v31 = result;
      v32 = [result mapping];

      if (v32)
      {
        v17 = [v32 label];
      }

      else
      {
        v17 = -1;
      }

      v47 = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D21AFC80((v33 > 1), v34 + 1, 1);
        v27 = v47;
      }

      *(v27 + 16) = v34 + 1;
      v35 = v27 + 16 * v34;
      *(v35 + 32) = v17;
      *(v35 + 40) = 0;
      ++v26;
      if (v28 == v24)
      {

        v17 = v45;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D221BF60(__int16 a1, uint64_t a2)
{
  v3 = v2;
  v15 = 0;
  v16 = 1;
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = &v15;
  *(v7 + 40) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D222D3AC;
  *(v8 + 24) = v7;
  v14[4] = sub_1D21A7328;
  v14[5] = v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D2179EE8;
  v14[3] = &block_descriptor_127;
  v9 = _Block_copy(v14);
  v10 = v6;

  [v10 performBlockAndWait_];

  _Block_release(v9);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v12 = v15;
    v13 = v16;

    if (v13)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  return result;
}

void sub_1D221C108(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v9 = sub_1D225092C();
  v10 = [v8 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7290];
  *(v11 + 16) = xmmword_1D22526F0;
  v13 = MEMORY[0x1E69E72E8];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = a1;
  *(v11 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D70);
  *(v11 + 104) = sub_1D2177F3C(&qword_1EDC869C8, &unk_1EC6D2D70);
  *(v11 + 72) = a2;

  v14 = sub_1D2250C5C();
  [v10 setPredicate_];

  v15 = *(a4 + 16);
  type metadata accessor for VUIndexMapping();
  v16 = v15;
  v17 = sub_1D2250DCC();

  *a3 = v17;
  *(a3 + 8) = 0;
}

void sub_1D221C304(__int16 a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = MEMORY[0x1D3898F20]();
  sub_1D221C394(a1, a2, a3, &v10);
  objc_autoreleasePoolPop(v9);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a4 = v10;
  }
}

void sub_1D221C394(__int16 a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, size_t *a4@<X8>)
{
  v65 = a3;
  v55 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - v9;
  v11 = sub_1D225055C();
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v15 = sub_1D225092C();
  v16 = [v14 initWithEntityName_];

  v17 = v16;
  v18 = sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E72E8];
  *(v19 + 56) = MEMORY[0x1E69E7290];
  *(v19 + 64) = v20;
  *(v19 + 32) = a1;
  v21 = MEMORY[0x1E69E6530];
  v22 = MEMORY[0x1E69E65A8];
  *(v19 + 16) = xmmword_1D22526F0;
  *(v19 + 96) = v21;
  *(v19 + 104) = v22;
  *(v19 + 72) = a2;
  v23 = sub_1D2250C5C();
  [v16 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E6158];
  *(v24 + 16) = xmmword_1D22526E0;
  *(v24 + 56) = v25;
  *(v24 + 32) = 0x7465737361;
  *(v24 + 40) = 0xE500000000000000;
  v26 = sub_1D2250AEC();

  [v16 setPropertiesToFetch_];

  v27 = *(v65 + 2);
  type metadata accessor for VUIndexObservation();
  v28 = v27;
  v29 = v67;
  v30 = sub_1D2250DDC();
  if (!v29)
  {
    v18 = v30;
    v67 = v11;
    v53 = 0;
    v64 = v13;
    v65 = v10;

    if (v18 >> 62)
    {
      goto LABEL_33;
    }

    v32 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v49 = sub_1D22068AC(v31);

    v50 = *(v49 + 16);
    if (!v50)
    {
      break;
    }

    v51 = sub_1D21F7F48(*(v49 + 16), 0);
    v52 = sub_1D21FA000(&v66, (v51 + ((*(v57 + 80) + 32) & ~*(v57 + 80))), v50, v49);
    sub_1D217CF78();
    if (v52 == v50)
    {

      goto LABEL_29;
    }

    while (1)
    {
      __break(1u);
LABEL_33:
      v32 = sub_1D2250F4C();
LABEL_5:
      v33 = v56;
      v54 = v17;
      if (!v32)
      {
        break;
      }

      v34 = 0;
      v62 = v18 & 0xFFFFFFFFFFFFFF8;
      v63 = v18 & 0xC000000000000001;
      v58 = (v57 + 48);
      v59 = (v57 + 56);
      v31 = MEMORY[0x1E69E7CC0];
      v60 = (v57 + 32);
      v61 = v32;
      v17 = &unk_1D22527C0;
      while (1)
      {
        if (v63)
        {
          v35 = MEMORY[0x1D3898A80](v34, v18);
        }

        else
        {
          if (v34 >= *(v62 + 16))
          {
            goto LABEL_31;
          }

          v35 = *(v18 + 8 * v34 + 32);
        }

        v36 = v35;
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v38 = v18;
        v39 = [v35 asset];
        if (v39)
        {
          v40 = v39;
          sub_1D225054C();

          v41 = 0;
        }

        else
        {
          v41 = 1;
        }

        v42 = v41;
        v43 = v67;
        (*v59)(v33, v42, 1, v67);
        v44 = v65;
        sub_1D21A6938(v33, v65, &qword_1EC6D2110);
        if ((*v58)(v44, 1, v43) == 1)
        {
          sub_1D2176170(v44, &qword_1EC6D2110);
        }

        else
        {
          v45 = v43;
          v46 = *v60;
          (*v60)(v64, v44, v45);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_1D2196098(0, *(v31 + 2) + 1, 1, v31);
          }

          v48 = *(v31 + 2);
          v47 = *(v31 + 3);
          if (v48 >= v47 >> 1)
          {
            v31 = sub_1D2196098(v47 > 1, v48 + 1, 1, v31);
          }

          *(v31 + 2) = v48 + 1;
          v46(&v31[((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v48], v64, v67);
          v33 = v56;
        }

        ++v34;
        v18 = v38;
        if (v37 == v61)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
    }

    v31 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v17 = v54;
  }

  v51 = MEMORY[0x1E69E7CC0];
LABEL_29:
  *v55 = v51;
}

void sub_1D221C9C0(__int16 a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v115 = a5;
  v116 = a6;
  v97 = a7;
  v114 = sub_1D225055C();
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v120 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v13 = sub_1D225092C();
  v14 = [v12 initWithEntityName_];

  v15 = sub_1D2174E10(0, &unk_1EDC886D0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E72E8];
  *(v17 + 56) = MEMORY[0x1E69E7290];
  *(v17 + 64) = v18;
  *(v17 + 32) = a1;
  v19 = MEMORY[0x1E69E6530];
  v20 = MEMORY[0x1E69E65A8];
  *(v17 + 16) = xmmword_1D22526F0;
  *(v17 + 96) = v19;
  *(v17 + 104) = v20;
  *(v17 + 72) = a2;
  v21 = sub_1D2250C5C();
  [v14 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D2252700;
  v23 = MEMORY[0x1E69E6158];
  *(v22 + 32) = 0x696669746E656469;
  *(v22 + 40) = 0xEA00000000007265;
  *(v22 + 56) = v23;
  *(v22 + 64) = 0x7465737361;
  *(v22 + 72) = 0xE500000000000000;
  *(v22 + 120) = v23;
  *(v22 + 88) = v23;
  *(v22 + 96) = 0x6675537465737361;
  *(v22 + 104) = 0xEB00000000786966;
  v24 = sub_1D2250AEC();

  [v14 setPropertiesToFetch_];

  [v14 setFetchBatchSize_];
  v25 = *(a4 + 16);
  v26 = type metadata accessor for VUIndexObservation();
  v27 = v25;
  v28 = v119;
  v29 = sub_1D2250DDC();
  v98 = v28;
  if (v28)
  {

    return;
  }

  v30 = v29;
  v112 = v26;
  v113 = v16;
  v102 = a3;
  v109 = v15;
  v96 = v14;

  v123 = MEMORY[0x1E69E7CC8];
  v108 = v30 >> 62;
  if (v30 >> 62)
  {
    goto LABEL_92;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D2250F4C())
  {
    v33 = v115;
    v32 = v116;
    v34 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2E10);
    v35 = sub_1D22508BC();
    if (!v34)
    {
      __break(1u);
LABEL_94:
      sub_1D22512AC();
      __break(1u);
      return;
    }

    v95 = a4;
    v36 = i >= 0;
    if (v34 > 0)
    {
      v36 = i < 1;
    }

    if (v36)
    {
      break;
    }

    v107 = i;
    a4 = 0;
    if (v30 < 0)
    {
      v48 = v30;
    }

    else
    {
      v48 = v30 & 0xFFFFFFFFFFFFFF8;
    }

    v103 = v48;
    v101 = v30 & 0xC000000000000001;
    v104 = v30 & 0xFFFFFFFFFFFFFF8;
    v99 = (v30 & 0xFFFFFFFFFFFFFF8) + 32;
    v111 = (v117 + 8);
    v110 = MEMORY[0x1E69E7CC0];
    v118 = v30;
    while (1)
    {
      v50 = __OFADD__(a4, v34);
      v51 = a4 + v34;
      v52 = v50;
      v53 = (v51 >> 63) ^ 0x8000000000000000;
      if (!v50)
      {
        v53 = v51;
      }

      v106 = v53;
      v54 = MEMORY[0x1D3898F20](v35);
      if (v52)
      {
        goto LABEL_86;
      }

      if (v107 < v51)
      {
        v51 = v107;
      }

      if (v51 < a4)
      {
        break;
      }

      v105 = v54;
      if (v108)
      {
        v55 = sub_1D2250F4C();
      }

      else
      {
        v55 = *(v104 + 16);
      }

      if (v55 < a4)
      {
        goto LABEL_88;
      }

      if (a4 < 0)
      {
        goto LABEL_89;
      }

      if (v108)
      {
        v56 = sub_1D2250F4C();
      }

      else
      {
        v56 = *(v104 + 16);
      }

      if (v56 < v51)
      {
        goto LABEL_90;
      }

      if (!v101 || a4 == v51)
      {

        if (!v108)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (a4 >= v51)
        {
          goto LABEL_91;
        }

        v57 = a4;
        do
        {
          v58 = v57 + 1;
          sub_1D225103C();
          v57 = v58;
        }

        while (v51 != v58);
        if (!v108)
        {
LABEL_47:
          v59 = v104;
          v119 = v99;
          if (a4 != v51)
          {
            goto LABEL_51;
          }

          goto LABEL_20;
        }
      }

      v59 = sub_1D225111C();
      v119 = v60;
      a4 = v61;
      v51 = v62 >> 1;
      if (v61 != v62 >> 1)
      {
LABEL_51:
        v100 = v59;
        swift_unknownObjectRetain();
        v117 = v51;
        while (1)
        {
          if (a4 >= v51)
          {
            __break(1u);
            goto LABEL_83;
          }

          v30 = *(v119 + 8 * a4);
          v63 = [v30 asset];
          if (v63)
          {
            break;
          }

          v30 = v118;
LABEL_53:
          if (v51 == ++a4)
          {
            swift_unknownObjectRelease();
            goto LABEL_20;
          }
        }

        v64 = v63;
        sub_1D225054C();

        v121 = sub_1D225051C();
        v122 = v65;

        MEMORY[0x1D3898450](47, 0xE100000000000000);

        v67 = v121;
        v66 = v122;
        v68 = [v30 assetSuffix];
        if (v68)
        {
          v69 = v68;
          v33 = sub_1D225095C();
          v32 = v70;
        }

        else
        {
        }

        v121 = v67;
        v122 = v66;

        MEMORY[0x1D3898450](v33, v32);

        v71 = v121;
        v72 = v122;
        v73 = [v30 identifier];
        v74 = v123;
        if (v123[2])
        {
          sub_1D2196C7C(v71, v72);
          if (v75)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v110 = sub_1D2195F78(0, *(v110 + 2) + 1, 1, v110);
            }

            v33 = v115;
            v32 = v116;
            v77 = *(v110 + 2);
            v76 = *(v110 + 3);
            if (v77 >= v76 >> 1)
            {
              v110 = sub_1D2195F78((v76 > 1), v77 + 1, 1, v110);
            }

            (*v111)(v120, v114);
            v78 = v110;
            *(v110 + 2) = v77 + 1;
            *&v78[8 * v77 + 32] = v73;
            goto LABEL_78;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v74;
        v81 = sub_1D2196C7C(v71, v72);
        v82 = *(v74 + 16);
        v83 = (v80 & 1) == 0;
        v84 = v82 + v83;
        if (__OFADD__(v82, v83))
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          break;
        }

        v85 = v80;
        if (*(v74 + 24) >= v84)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v88 = v114;
            if ((v80 & 1) == 0)
            {
              goto LABEL_75;
            }
          }

          else
          {
            sub_1D21B94D8();
            v88 = v114;
            if ((v85 & 1) == 0)
            {
              goto LABEL_75;
            }
          }
        }

        else
        {
          sub_1D21B5788(v84, isUniquelyReferenced_nonNull_native);
          v86 = sub_1D2196C7C(v71, v72);
          if ((v85 & 1) != (v87 & 1))
          {
            goto LABEL_94;
          }

          v81 = v86;
          v88 = v114;
          if ((v85 & 1) == 0)
          {
LABEL_75:
            v89 = v121;
            *(v121 + 8 * (v81 >> 6) + 64) |= 1 << v81;
            v90 = (v89[6] + 16 * v81);
            *v90 = v71;
            v90[1] = v72;
            *(v89[7] + 8 * v81) = v73;

            (*v111)(v120, v88);
            v91 = v89[2];
            v50 = __OFADD__(v91, 1);
            v92 = v91 + 1;
            if (v50)
            {
              goto LABEL_85;
            }

            v89[2] = v92;
            goto LABEL_77;
          }
        }

        v89 = v121;
        *(*(v121 + 56) + 8 * v81) = v73;

        (*v111)(v120, v88);
LABEL_77:
        v123 = v89;
        v33 = v115;
        v32 = v116;
LABEL_78:
        v51 = v117;
        v30 = v118;
        goto LABEL_53;
      }

LABEL_20:
      swift_unknownObjectRelease();
      objc_autoreleasePoolPop(v105);
      a4 = v106;
      v49 = v107 >= v106;
      v34 = v102;
      if (v102 > 0)
      {
        v49 = v106 >= v107;
      }

      if (v49)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    ;
  }

  v110 = MEMORY[0x1E69E7CC0];
LABEL_10:

  v37 = v110;
  if (*(v110 + 2))
  {
    v38 = v95;
    v39 = sub_1D225080C();
    v40 = sub_1D2250CDC();
    v41 = os_log_type_enabled(v39, v40);
    v30 = v97;
    if (v41)
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = *(v37 + 2);
      _os_log_impl(&dword_1D2171000, v39, v40, "Found %ld duplicate entries in the index, cleaning up...", v42, 0xCu);
      MEMORY[0x1D3899640](v42, -1, -1);
    }

    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D22526E0;
    *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
    *(v43 + 64) = sub_1D2177F3C(&qword_1EDC869D0, &qword_1EC6D21D8);
    *(v43 + 32) = v37;

    v44 = sub_1D2250C5C();
    *(&v94 - 2) = MEMORY[0x1EEE9AC00](v44);
    *(&v94 - 1) = v38;
    v46 = v45;
    v47 = v98;
    sub_1D2250DBC();
    if (v47)
    {

      return;
    }

    sub_1D22299E0(16);
LABEL_83:
    v93 = v96;
  }

  else
  {
    v30 = v97;
    v93 = v96;
  }

  *v30 = v123;
}

void sub_1D221D52C(__int16 a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v10 = sub_1D225092C();
  v11 = [v9 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7290];
  v14 = MEMORY[0x1E69E72E8];
  *(v12 + 16) = xmmword_1D22526F0;
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  *(v12 + 32) = a1;
  v15 = MEMORY[0x1E69E65A8];
  *(v12 + 96) = MEMORY[0x1E69E6530];
  *(v12 + 104) = v15;
  *(v12 + 72) = a2;
  v16 = sub_1D2250C5C();
  [v11 setPredicate_];

  [v11 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 16) = xmmword_1D22526E0;
  *(v17 + 56) = v18;
  *(v17 + 32) = 0x7465737361;
  *(v17 + 40) = 0xE500000000000000;
  v19 = sub_1D2250AEC();

  [v11 setPropertiesToFetch_];

  [v11 setReturnsDistinctResults_];
  v20 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E00);
  v21 = sub_1D2250DDC();
  if (v4)
  {

    v22 = 0;
    v11 = v20;
  }

  else
  {
    v23 = v21;

    if (v23 >> 62)
    {
      v22 = sub_1D2250F4C();
    }

    else
    {
      v22 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  *a4 = v22;
}

id sub_1D221D7DC(unint64_t a1, __n128 a2)
{
  v2 = a1;
  v51[2] = *MEMORY[0x1E69E9840];
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2250F4C())
  {
    v4 = 0;
    v5 = 0;
    v47 = v2 & 0xC000000000000001;
    v42 = v2 & 0xFFFFFFFFFFFFFF8;
    v43 = OBJC_IVAR____TtCC19VisualUnderstanding20VUIndexCoreDataStoreP33_336226E85413B796FA6E8D2AB0466B9D27UniqueIdentifierMergePolicy_logger;
    a2.n128_u64[0] = 134217984;
    v41 = a2;
    v44 = v2;
    v46 = i;
LABEL_4:
    v6 = v5;
    while (1)
    {
      if (v47)
      {
        v7 = MEMORY[0x1D3898A80](v6, v2);
      }

      else
      {
        if (v6 >= *(v42 + 16))
        {
          goto LABEL_32;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v9 = [v7 constraint];
      v10 = sub_1D2250AFC();

      v51[0] = 0x696669746E656469;
      v51[1] = 0xEA00000000007265;
      MEMORY[0x1EEE9AC00](v11);
      v37[2] = v51;
      v12 = v49;
      LOBYTE(v9) = sub_1D219DBC0(sub_1D222D2DC, v37, v10);
      v49 = v12;

      if (v9)
      {
        v13 = [v8 conflictingObjects];
        sub_1D2174E10(0, &unk_1EC6D2D40);
        v14 = sub_1D2250AFC();

        if (v14 >> 62)
        {
          v15 = sub_1D2250F4C();
          if (v15)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v15)
          {
LABEL_15:
            v16 = 0;
            v17 = v14 & 0xC000000000000001;
            v38 = v14 + 32;
            v39 = v14 & 0xFFFFFFFFFFFFFF8;
            v40 = v14 & 0xC000000000000001;
            do
            {
              if (v17)
              {
                v18 = MEMORY[0x1D3898A80](v16, v14);
              }

              else
              {
                if (v16 >= *(v39 + 16))
                {
                  goto LABEL_33;
                }

                v18 = *(v38 + 8 * v16);
              }

              v48 = v18;
              if (__OFADD__(v16++, 1))
              {
                goto LABEL_31;
              }

              do
              {
                v51[0] = 0;
                MEMORY[0x1D3899660](v51, 8);
              }

              while (((0x7FFFFFFFFFFFFFFELL * v51[0]) & 0xFFFFFFFFFFFFFFFCLL) == 0);
              v20 = ((v51[0] * 0x7FFFFFFFFFFFFFFEuLL) >> 64) + 1;
              v21 = sub_1D2250C1C();
              v22 = sub_1D225092C();
              [v48 setValue:v21 forKey:v22];

              v23 = sub_1D225080C();
              v24 = sub_1D2250CCC();
              if (os_log_type_enabled(v23, v24))
              {
                v25 = v15;
                v26 = v5;
                v27 = v8;
                v28 = v14;
                v29 = swift_slowAlloc();
                *v29 = v41.n128_u32[0];
                *(v29 + 4) = v20;
                _os_log_impl(&dword_1D2171000, v23, v24, "Resolved conflict by assigning new identifier %ld", v29, 0xCu);
                v30 = v29;
                v14 = v28;
                v8 = v27;
                v5 = v26;
                v15 = v25;
                v17 = v40;
                MEMORY[0x1D3899640](v30, -1, -1);
              }

              v2 = v44;
            }

            while (v16 != v15);
          }
        }

        v4 = 1;
        if (v5 != v46)
        {
          goto LABEL_4;
        }

LABEL_29:
        sub_1D217EE2C();
        swift_allocError();
        *v31 = 11;
        return swift_willThrow();
      }

      ++v6;
      if (v5 == v46)
      {
        if ((v4 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:
  sub_1D2174E10(0, &unk_1EC6D2D30);
  v32 = sub_1D2250AEC();
  v51[0] = 0;
  v33 = type metadata accessor for VUIndexCoreDataStore.UniqueIdentifierMergePolicy(0);
  v50.receiver = v45;
  v50.super_class = v33;
  v34 = objc_msgSendSuper2(&v50, sel_resolveConstraintConflicts_error_, v32, v51);

  if (v34)
  {
    return v51[0];
  }

  v36 = v51[0];
  sub_1D22502FC();

  return swift_willThrow();
}

id sub_1D221DDC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIndexCoreDataStore.UniqueIdentifierMergePolicy(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D221DDF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v14 = [objc_opt_self() fetchRequest];
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() fetchHistoryAfterToken_];
    [v16 setResultType_];
    if ((a4 & 1) == 0)
    {
      [v16 setFetchLimit_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D2252720;
    sub_1D2174E10(0, &unk_1EDC886D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E6530];
    *(v18 + 16) = xmmword_1D22526E0;
    v20 = MEMORY[0x1E69E65A8];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    *(v18 + 32) = 0;
    *(v17 + 32) = sub_1D2250C5C();
    if ((a6 & 1) == 0)
    {
      v21 = swift_allocObject();
      v22 = MEMORY[0x1E69E7360];
      *(v21 + 16) = xmmword_1D22526E0;
      v23 = MEMORY[0x1E69E73D8];
      *(v21 + 56) = v22;
      *(v21 + 64) = v23;
      *(v21 + 32) = a5;
      sub_1D2250C5C();
      MEMORY[0x1D3898510]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2250B1C();
      }

      sub_1D2250B3C();
    }

    v24 = sub_1D2250AEC();

    v25 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v15 setPredicate_];
    [v16 setFetchRequest_];
    v26 = *(a1 + 16);
    *&v42 = 0;
    v27 = [v26 executeRequest:v16 error:&v42];
    v28 = v42;
    if (v27)
    {
      v29 = v27;
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      v31 = v28;
      v32 = a7;
      if (v30)
      {
        if ([v30 result])
        {
          sub_1D2250E9C();

          swift_unknownObjectRelease();
        }

        else
        {

          v40 = 0u;
          v41 = 0u;
        }

        v42 = v40;
        v43 = v41;
        if (*(&v41 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E08);
          v38 = swift_dynamicCast();
          v39 = v40;
          if (!v38)
          {
            v39 = 0;
          }

          *a7 = v39;
          return;
        }

LABEL_18:
        sub_1D2176170(&v42, &unk_1EC6D2180);
        *v32 = 0;
        return;
      }
    }

    else
    {
      v36 = v42;
      v37 = sub_1D22502FC();

      swift_willThrow();
      v32 = a7;
    }

    v42 = 0u;
    v43 = 0u;
    goto LABEL_18;
  }

  v33 = sub_1D225080C();
  v34 = sub_1D2250CDC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1D2171000, v33, v34, "Cannot create a NSPersistentHistoryChange request", v35, 2u);
    MEMORY[0x1D3899640](v35, -1, -1);
  }

  *a7 = 0;
}

void sub_1D221E2E8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v9[0] = 0;
  v5 = [v4 existingObjectWithID:a2 error:v9];
  v6 = v9[0];
  if (!v5)
  {
    v7 = v6;
    v8 = sub_1D22502FC();

    swift_willThrow();
    v5 = 0;
  }

  *a3 = v5;
}

void sub_1D221E3AC()
{
  if (*(v0 + OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_historySupport) == 1)
  {
    v1 = *(v0 + 16);
    v2 = swift_allocObject();
    *(v2 + 16) = sub_1D222D3A4;
    *(v2 + 24) = v0;
    v5[4] = sub_1D21A7328;
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1D2179EE8;
    v5[3] = &block_descriptor_117;
    v3 = _Block_copy(v5);
    v4 = v1;

    [v4 performBlockAndWait_];

    _Block_release(v3);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D221E508(uint64_t a1)
{
  v57[7] = *MEMORY[0x1E69E9840];
  v2 = sub_1D22504FC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - v7;
  if (sub_1D2219F2C(0, 0, 1) <= 5000)
  {
    v9 = 100;
  }

  else
  {
    v9 = 50;
  }

  sub_1D221E964(-129600);
  if (v10)
  {
    goto LABEL_21;
  }

  sub_1D22504CC();
  sub_1D221E964(-2592800);
  if (v11)
  {
    goto LABEL_22;
  }

  v12 = v8;
  sub_1D22504CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2252750;
  v14 = objc_opt_self();
  v52 = v12;
  v15 = sub_1D22504BC();
  v16 = [v14 deleteHistoryBeforeDate:v15 whenHistoryPercentageOfStoreIsGreaterThan:v9];

  *(inited + 32) = v16;
  v17 = inited + 32;
  v53 = v6;
  v18 = sub_1D22504BC();
  v19 = [v14 deleteHistoryBeforeDate_];

  *(inited + 40) = v19;
  v21 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) == 0 && *((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v50 = v3;
  v51 = v2;
  v22 = 0;
  v23 = 0;
  v24 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_logger;
  v25 = &off_1E83FA000;
  *&v20 = 138412290;
  v54 = v20;
  v55 = inited;
  v56 = a1;
  do
  {
    v28 = v22;
    if (v21)
    {
      v29 = MEMORY[0x1D3898A80](v23, inited);
    }

    else
    {
      v29 = *(v17 + 8 * v23);
    }

    v30 = v29;
    v31 = *(a1 + 16);
    v57[0] = 0;
    v32 = [v31 v25[400]];
    if (v32)
    {
      v26 = v32;
      v27 = v57[0];
    }

    else
    {
      v33 = v57[0];
      v34 = sub_1D22502FC();

      swift_willThrow();
      v35 = v34;
      v36 = sub_1D225080C();
      v37 = sub_1D2250CDC();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v17;
        v39 = swift_slowAlloc();
        v40 = v24;
        v41 = v21;
        v42 = swift_slowAlloc();
        *v39 = v54;
        v43 = v34;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_1D2171000, v36, v37, "Could not purge history: %@", v39, 0xCu);
        sub_1D2176170(v42, &qword_1EC6D2150);
        v45 = v42;
        v21 = v41;
        v24 = v40;
        MEMORY[0x1D3899640](v45, -1, -1);
        v46 = v39;
        v17 = v38;
        inited = v55;
        a1 = v56;
        MEMORY[0x1D3899640](v46, -1, -1);
      }

      else
      {
      }

      v25 = &off_1E83FA000;
    }

    v22 = 1;
    v23 = 1;
  }

  while ((v28 & 1) == 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  v47 = v51;
  v48 = *(v50 + 8);
  v48(v53, v51);
  return (v48)(v52, v47);
}

uint64_t sub_1D221E964(uint64_t result)
{
  v1 = result;
  if (result >= 9.22337204e18)
  {
    *&result = 0.0;
    return result;
  }

  if ((~*&v1 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v1 == result)
  {
    *&result = result;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_1D221E9C4(char a1)
{
  v12 = MEMORY[0x1E69E7CC8];
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 17) = 0;
  *(v4 + 18) = 0;
  *(v4 + 20) = 1;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  *(v4 + 40) = 4096;
  *(v4 + 48) = v1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 56) = &v12;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D21A6B74;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1D21A7328;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_109;
  v6 = _Block_copy(aBlock);
  v7 = v3;

  [v7 performBlockAndWait_];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_1D221EB6C(__int16 a1, int a2, uint64_t a3, char a4, uint64_t a5, void *a6, void *a7, void (*a8)(void))
{
  LOBYTE(v9) = a4;
  LODWORD(v11) = a2;
  v13 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v14 = sub_1D225092C();
  v71 = [v13 initWithEntityName_];

  v78 = MEMORY[0x1E69E7CC0];
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v15 = &off_1D2252000;
  v16 = swift_allocObject();
  if ((a1 & 0x100) != 0)
  {
    *(v16 + 16) = xmmword_1D22526F0;
    v18 = MEMORY[0x1E69E6530];
    v19 = MEMORY[0x1E69E65A8];
    *(v16 + 56) = MEMORY[0x1E69E6530];
    *(v16 + 64) = v19;
    *(v16 + 32) = 2;
    *(v16 + 96) = v18;
    *(v16 + 104) = v19;
    *(v16 + 72) = 63;
  }

  else
  {
    *(v16 + 16) = xmmword_1D22526E0;
    v17 = MEMORY[0x1E69E65A8];
    *(v16 + 56) = MEMORY[0x1E69E6530];
    *(v16 + 64) = v17;
    *(v16 + 32) = a1;
  }

  sub_1D2250C5C();
  MEMORY[0x1D3898510]();
  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    sub_1D2250B3C();
    if ((v11 & 0x10000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
      v20 = swift_allocObject();
      v21 = MEMORY[0x1E69E7290];
      *(v20 + 16) = *(v15 + 1760);
      v22 = MEMORY[0x1E69E72E8];
      *(v20 + 56) = v21;
      *(v20 + 64) = v22;
      *(v20 + 32) = v11;
      sub_1D2250C5C();
      MEMORY[0x1D3898510]();
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D2250B1C();
      }

      sub_1D2250B3C();
    }

    if ((v9 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E6530];
      *(v23 + 16) = *(v15 + 1760);
      v25 = MEMORY[0x1E69E65A8];
      *(v23 + 56) = v24;
      *(v23 + 64) = v25;
      *(v23 + 32) = a3;
    }

    sub_1D2250C5C();
    MEMORY[0x1D3898510]();
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D2250B1C();
    }

    sub_1D2250B3C();
    v26 = sub_1D2250AEC();
    v27 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v71 setPredicate_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E6158];
    *(v28 + 16) = *(v15 + 1760);
    *(v28 + 56) = v29;
    *(v28 + 32) = 0x696669746E656469;
    *(v28 + 40) = 0xEA00000000007265;
    v30 = sub_1D2250AEC();

    [v71 setPropertiesToFetch_];

    v31 = sub_1D2250AEC();
    [v71 setRelationshipKeyPathsForPrefetching_];

    [v71 setFetchBatchSize_];
    v32 = a6[2];
    v33 = type metadata accessor for VUIndexObservation();
    v34 = v32;
    a6 = 0;
    v35 = sub_1D2250DDC();

    v75 = v35 >> 62;
    if (!(v35 >> 62))
    {
      v74 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = a5;
      if (!a5)
      {
        break;
      }

      goto LABEL_15;
    }

    v74 = sub_1D2250F4C();
    v36 = a5;
    if (!a5)
    {
      break;
    }

LABEL_15:
    v37 = v74 >= 0;
    if (v36 > 0)
    {
      v37 = v74 < 1;
    }

    if (v37)
    {
LABEL_18:
    }

    a3 = 0;
    v69 = v35 & 0xFFFFFFFFFFFFFF8;
    v67 = v35 & 0xC000000000000001;
    v66 = (v35 & 0xFFFFFFFFFFFFFF8) + 32;
    while (1)
    {
      v9 = a3 + v36;
      v40 = __OFADD__(a3, v36);
      v41 = (v9 >> 63) ^ 0x8000000000000000;
      if (!__OFADD__(a3, v36))
      {
        v41 = a3 + v36;
      }

      v73 = v41;
      v42 = MEMORY[0x1D3898F20]();
      if (v40)
      {
        goto LABEL_77;
      }

      if (v74 < v9)
      {
        v9 = v74;
      }

      if (v9 < a3)
      {
        break;
      }

      v72 = v42;
      if (v75)
      {
        v43 = sub_1D2250F4C();
      }

      else
      {
        v43 = *(v69 + 16);
      }

      if (v43 < a3)
      {
        goto LABEL_79;
      }

      if (a3 < 0)
      {
        goto LABEL_80;
      }

      if (v75)
      {
        v44 = sub_1D2250F4C();
      }

      else
      {
        v44 = *(v69 + 16);
      }

      if (v44 < v9)
      {
        goto LABEL_81;
      }

      if (!v67 || a3 == v9)
      {

        if (!v75)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (a3 >= v9)
        {
          goto LABEL_82;
        }

        v45 = a3;
        do
        {
          v46 = v45 + 1;
          sub_1D225103C();
          v45 = v46;
        }

        while (v9 != v46);
        if (!v75)
        {
LABEL_49:
          v76 = v66;
          if (a3 != v9)
          {
            goto LABEL_53;
          }

          goto LABEL_72;
        }
      }

      sub_1D225111C();
      v76 = v47;
      a3 = v48;
      v9 = v49 >> 1;
      if (v48 != v49 >> 1)
      {
LABEL_53:
        swift_unknownObjectRetain();
        while (1)
        {
          if (a3 >= v9)
          {
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          v50 = v33;
          a6 = *(v76 + 8 * a3);
          v11 = [a6 identifier];
          v51 = [a6 mapping];
          if (v51)
          {
            v52 = v51;
            v53 = [v51 label];
          }

          else
          {
            v53 = -1;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = *a7;
          *a7 = 0x8000000000000000;
          v15 = sub_1D2176758(v11);
          v57 = v55[2];
          v58 = (v56 & 1) == 0;
          v59 = v57 + v58;
          if (__OFADD__(v57, v58))
          {
            goto LABEL_75;
          }

          v60 = v56;
          if (v55[3] >= v59)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v56)
              {
                goto LABEL_54;
              }
            }

            else
            {
              sub_1D21B6C24();
              if (v60)
              {
                goto LABEL_54;
              }
            }
          }

          else
          {
            sub_1D21B140C(v59, isUniquelyReferenced_nonNull_native);
            v61 = sub_1D2176758(v11);
            if ((v60 & 1) != (v62 & 1))
            {
              goto LABEL_86;
            }

            v15 = v61;
            if (v60)
            {
LABEL_54:
              *(v55[7] + 8 * v15) = v53;

              goto LABEL_55;
            }
          }

          v55[(v15 >> 6) + 8] |= 1 << v15;
          *(v55[6] + 8 * v15) = v11;
          *(v55[7] + 8 * v15) = v53;

          v63 = v55[2];
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (v64)
          {
            goto LABEL_76;
          }

          v55[2] = v65;
LABEL_55:
          ++a3;
          *a7 = v55;

          v33 = v50;
          if (v9 == a3)
          {
            swift_unknownObjectRelease();
            break;
          }
        }
      }

LABEL_72:
      swift_unknownObjectRelease();
      objc_autoreleasePoolPop(v72);
      if (a8)
      {
        a8();
      }

      a3 = v73;
      v39 = v74 >= v73;
      v36 = a5;
      if (a5 > 0)
      {
        v39 = v73 >= v74;
      }

      if (v39)
      {
        goto LABEL_18;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    sub_1D2250B1C();
  }

  __break(1u);
LABEL_86:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

void sub_1D221F478(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_1D225092C();
  v8 = [v6 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D22526E0;
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
  *(v9 + 64) = sub_1D2177F3C(&qword_1EDC869D0, &qword_1EC6D21D8);
  *(v9 + 32) = a1;

  v10 = sub_1D2250C5C();
  [v8 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 16) = xmmword_1D22526E0;
  *(v11 + 56) = v12;
  *(v11 + 32) = 0x696669746E656469;
  *(v11 + 40) = 0xEA00000000007265;
  v13 = sub_1D2250AEC();

  [v8 setPropertiesToFetch_];

  v14 = sub_1D2250AEC();
  [v8 setRelationshipKeyPathsForPrefetching_];

  v15 = *(a2 + 16);
  type metadata accessor for VUIndexObservation();
  v16 = v15;
  v52 = v8;
  v17 = sub_1D2250DDC();
  if (v3)
  {

LABEL_3:
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v18 = v17;

  if (!v18)
  {
    goto LABEL_3;
  }

LABEL_5:
  if (v18 >> 62)
  {
LABEL_34:
    v19 = sub_1D2250F4C();
    v51 = a1;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = a1;
    if (v19)
    {
LABEL_7:
      a1 = 0;
      v20 = v18 & 0xC000000000000001;
      v54 = v18 & 0xFFFFFFFFFFFFFF8;
      v21 = MEMORY[0x1E69E7CC8];
      v22 = &off_1E83FA000;
      v56 = v19;
      v57 = v18;
      v55 = v18 & 0xC000000000000001;
      while (1)
      {
        if (v20)
        {
          v23 = MEMORY[0x1D3898A80](a1, v18);
        }

        else
        {
          if (a1 >= *(v54 + 16))
          {
            goto LABEL_32;
          }

          v23 = *(v18 + 8 * a1 + 32);
        }

        v24 = v23;
        v25 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v26 = [v23 v22[276]];
        if (v26)
        {
          v27 = v18;
          v28 = v26;
          v18 = [v26 label];

          v58 = v18;
          if (v18 == -1)
          {

            v18 = v27;
          }

          else
          {
            v29 = [v24 identifier];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v32 = sub_1D2176758(v29);
            v33 = v21[2];
            v34 = (v31 & 1) == 0;
            v35 = v33 + v34;
            if (__OFADD__(v33, v34))
            {
              goto LABEL_31;
            }

            v18 = v31;
            if (v21[3] >= v35)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D21B6C24();
              }
            }

            else
            {
              sub_1D21B140C(v35, isUniquelyReferenced_nonNull_native);
              v36 = sub_1D2176758(v29);
              if ((v18 & 1) != (v37 & 1))
              {
                sub_1D22512AC();
                __break(1u);
                return;
              }

              v32 = v36;
            }

            if (v18)
            {
              *(v21[7] + 8 * v32) = v58;
            }

            else
            {
              v21[(v32 >> 6) + 8] |= 1 << v32;
              *(v21[6] + 8 * v32) = v29;
              *(v21[7] + 8 * v32) = v58;

              v38 = v21[2];
              v39 = __OFADD__(v38, 1);
              v40 = v38 + 1;
              if (v39)
              {
                goto LABEL_33;
              }

              v21[2] = v40;
            }

            v19 = v56;
            v18 = v57;
            v20 = v55;
          }

          v22 = &off_1E83FA000;
        }

        else
        {
        }

        ++a1;
        if (v25 == v19)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC8];
LABEL_36:

  v41 = *(v51 + 16);
  if (v41)
  {
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D21AF890(0, v41, 0);
    v42 = v59;
    v43 = (v51 + 32);
    do
    {
      if (v21[2] && (v44 = sub_1D2176758(*v43), (v45 & 1) != 0))
      {
        v46 = 0;
        v47 = *(v21[7] + 8 * v44);
      }

      else
      {
        v47 = 0;
        v46 = 1;
      }

      v49 = *(v59 + 16);
      v48 = *(v59 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1D21AF890((v48 > 1), v49 + 1, 1);
      }

      *(v59 + 16) = v49 + 1;
      v50 = v59 + 16 * v49;
      *(v50 + 32) = v47;
      *(v50 + 40) = v46;
      ++v43;
      --v41;
    }

    while (v41);
  }

  else
  {

    v42 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v42;
}

uint64_t sub_1D221FA28(__int16 a1)
{
  v2 = v1;
  v13 = 0;
  v14 = 1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 17) = HIBYTE(a1) & 1;
  *(v5 + 24) = &v13;
  *(v5 + 32) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D222D388;
  *(v6 + 24) = v5;
  v12[4] = sub_1D21A7328;
  v12[5] = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D2179EE8;
  v12[3] = &block_descriptor_99;
  v7 = _Block_copy(v12);
  v8 = v4;

  [v8 performBlockAndWait_];

  _Block_release(v7);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v10 = v13;
    v11 = v14;

    if (v11)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

void sub_1D221FBC0(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_1D225092C();
  v8 = [v6 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  if ((a1 & 0x100) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E7508];
    *(v9 + 16) = xmmword_1D22526E0;
    v11 = MEMORY[0x1E69E7558];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = a1;
  }

  v12 = sub_1D2250C5C();
  [v8 setPredicate_];

  v13 = *(a3 + 16);
  type metadata accessor for VUIndexObservation();
  v14 = v13;
  v15 = sub_1D2250DCC();

  *a2 = v15;
  *(a2 + 8) = 0;
}

uint64_t sub_1D221FD90(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v11 = sub_1D225092C();
  v12 = [v10 initWithEntityName_];

  if ((a2 & 1) == 0)
  {
    sub_1D2174E10(0, &unk_1EDC886D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E6530];
    *(v13 + 16) = xmmword_1D22526E0;
    v15 = MEMORY[0x1E69E65A8];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    *(v13 + 32) = a1;
    v16 = sub_1D2250C5C();
    [v12 setPredicate_];
  }

  if (a3)
  {
    sub_1D2174E10(0, &unk_1EDC886D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D22526E0;
    *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
    *(v17 + 64) = sub_1D2177F3C(&qword_1EDC869D0, &qword_1EC6D21D8);
    *(v17 + 32) = a3;

    v18 = sub_1D2250C5C();
    [v12 setPredicate_];
  }

  v19 = *(a5 + 16);
  type metadata accessor for VUIndexObservation();
  v20 = v19;
  v21 = sub_1D2250DDC();

  *a4 = v21;
}

void sub_1D2220018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, void (*a9)(void))
{
  v16 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v17 = sub_1D225092C();
  v18 = [v16 initWithEntityName_];

  [v18 setPredicate_];
  if (a2)
  {
    sub_1D2174E10(0, &qword_1EDC886C8);
    v19 = sub_1D2250AEC();
    [v18 setSortDescriptors_];
  }

  if (a3)
  {
    sub_1D222027C(a3);
    v20 = sub_1D2250AEC();

    [v18 setPropertiesToFetch_];
  }

  if ((a5 & 1) == 0)
  {
    [v18 setFetchLimit_];
  }

  if ((a7 & 1) == 0)
  {
    [v18 setFetchOffset_];
  }

  v21 = *(a8 + 16);
  type metadata accessor for VUIndexObservation();
  v22 = v21;
  v23 = sub_1D2250DDC();
  if (v9)
  {

    v18 = v22;
LABEL_21:

    return;
  }

  v24 = v23;

  v31 = MEMORY[0x1D3898F20]();
  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_13;
    }

LABEL_20:

    objc_autoreleasePoolPop(v31);
    goto LABEL_21;
  }

  v25 = sub_1D2250F4C();
  if (!v25)
  {
    goto LABEL_20;
  }

LABEL_13:
  if (v25 >= 1)
  {
    for (i = 0; i != v25; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1D3898A80](i, v24);
      }

      else
      {
        v27 = *(v24 + 8 * i + 32);
      }

      v28 = v27;
      a9();
    }

    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1D222027C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D21AFCB0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D21AFCB0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D21A6450(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1D222037C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v9 = sub_1D225092C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D22526E0;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 32) = 0x696669746E656469;
  *(v11 + 40) = 0xEA00000000007265;
  v12 = sub_1D2250AEC();

  [v10 setPropertiesToFetch_];

  v13 = [v10 setResultType_];
  if (a2)
  {
    sub_1D2174E10(0, &qword_1EDC886C8);
    v14 = sub_1D2250AEC();
    [v10 setSortDescriptors_];
  }

  v15 = MEMORY[0x1D3898F20](v13);
  v16 = *(a3 + 16);
  sub_1D2174E10(0, &qword_1EDC872B8);
  v17 = v16;
  v18 = sub_1D2250DDC();
  if (v4)
  {

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v19 = v18;

    if (v19 >> 62)
    {
      goto LABEL_21;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = a4;
    if (v20)
    {
      while (1)
      {
        v30 = v15;
        v31 = v10;
        v36 = MEMORY[0x1E69E7CC0];
        sub_1D21AF7AC(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
          break;
        }

        v10 = 0;
        v22 = v36;
        while (1)
        {
          v23 = (v10 + 1);
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if ((v19 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x1D3898A80](v10, v19);
          }

          else
          {
            if (v10 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v24 = *(v19 + 8 * v10 + 32);
          }

          v25 = v24;
          *&v34 = 0x696669746E656469;
          *(&v34 + 1) = 0xEA00000000007265;
          v26 = [v24 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (!v26)
          {
            goto LABEL_25;
          }

          sub_1D2250E9C();
          swift_unknownObjectRelease();

          sub_1D21A6450(&v33, &v34);
          swift_dynamicCast();
          v27 = v35;
          v36 = v22;
          v29 = *(v22 + 16);
          v28 = *(v22 + 24);
          v15 = (v29 + 1);
          if (v29 >= v28 >> 1)
          {
            sub_1D21AF7AC((v28 > 1), v29 + 1, 1);
            v22 = v36;
          }

          *(v22 + 16) = v15;
          *(v22 + 8 * v29 + 32) = v27;
          ++v10;
          if (v23 == v20)
          {

            v10 = v31;
            v21 = a4;
            v15 = v30;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v20 = sub_1D2250F4C();
        v21 = a4;
        if (!v20)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

    else
    {
LABEL_22:

      v22 = MEMORY[0x1E69E7CC0];
LABEL_23:
      objc_autoreleasePoolPop(v15);

      *v21 = v22;
    }
  }
}

void sub_1D2220774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, id), uint64_t a7, void (*a8)(id))
{
  v9 = v8;
  v64[1] = *MEMORY[0x1E69E9840];
  v12 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v13 = sub_1D225092C();
  v14 = [v12 initWithEntityName_];

  if (a1)
  {
    [v14 setPredicate_];
  }

  sub_1D222027C(a2);
  v15 = sub_1D2250AEC();

  [v14 setPropertiesToFetch_];

  v16 = sub_1D2250AEC();
  [v14 setRelationshipKeyPathsForPrefetching_];

  v17 = a4;
  [v14 setFetchBatchSize_];
  v18 = *(a5 + 16);
  type metadata accessor for VUIndexObservation();
  v19 = v18;
  v20 = sub_1D2250DDC();
  if (v8)
  {

    return;
  }

  v21 = v20;
  v55 = v14;

  v22 = v21 >> 62;
  if (v21 >> 62)
  {
    goto LABEL_87;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a4)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

LABEL_7:
  v54 = v9;
  v24 = v23 >= 0;
  if (v17 > 0)
  {
    v24 = v23 < 1;
  }

  if (v24)
  {
LABEL_10:

    return;
  }

  v25 = 0;
  v57 = v22;
  v56 = v23;
  while (1)
  {
    v27 = __OFADD__(v25, v17);
    v9 = v25 + v17;
    v17 = __OFADD__(v25, v17);
    v28 = (v9 >> 63) ^ 0x8000000000000000;
    if (!v27)
    {
      v28 = v9;
    }

    v61 = v28;
    v29 = MEMORY[0x1D3898F20]();
    if (v17)
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
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
      v23 = sub_1D2250F4C();
      if (!v17)
      {
        goto LABEL_88;
      }

      goto LABEL_7;
    }

    if (v23 < v9)
    {
      v9 = v23;
    }

    if (v9 < v25)
    {
      goto LABEL_79;
    }

    v30 = v29;
    if (v22)
    {
      v31 = sub_1D2250F4C();
    }

    else
    {
      v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v31 < v25)
    {
      goto LABEL_80;
    }

    if (v25 < 0)
    {
      goto LABEL_81;
    }

    if (v22)
    {
      v32 = sub_1D2250F4C();
    }

    else
    {
      v32 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v32 < v9)
    {
      goto LABEL_82;
    }

    if ((v21 & 0xC000000000000001) == 0 || v25 == v9)
    {

      v62 = v30;
      if (!v22)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v25 >= v9)
      {
        goto LABEL_85;
      }

      v33 = v25;
      do
      {
        v34 = v33 + 1;
        sub_1D225103C();
        v33 = v34;
      }

      while (v9 != v34);
      v62 = v30;
      if (!v22)
      {
LABEL_39:
        v35 = (2 * v9) | 1;
        v9 = (v21 & 0xFFFFFFFFFFFFFF8) + 32;
        if ((v35 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_40;
      }
    }

    sub_1D225111C();
    v9 = v39;
    v25 = v40;
    v35 = v41;
    if ((v41 & 1) == 0)
    {
LABEL_48:
      v22 = v35 >> 1;
      v27 = __OFSUB__(v35 >> 1, v25);
      v17 = (v35 >> 1) - v25;
      if (v27)
      {
        goto LABEL_84;
      }

      if (!v17)
      {
        goto LABEL_58;
      }

      goto LABEL_50;
    }

LABEL_40:
    sub_1D225127C();
    swift_unknownObjectRetain_n();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
      swift_unknownObjectRelease();
      v36 = MEMORY[0x1E69E7CC0];
    }

    v37 = *(v36 + 16);

    v22 = v35 >> 1;
    v27 = __OFSUB__(v35 >> 1, v25);
    v17 = (v35 >> 1) - v25;
    if (v27)
    {
      goto LABEL_86;
    }

    if (v37 != v17)
    {
      swift_unknownObjectRelease();
      if (!v17)
      {
LABEL_58:
        v38 = MEMORY[0x1E69E7CC0];
LABEL_59:
        swift_unknownObjectRelease();
        goto LABEL_60;
      }

LABEL_50:
      if (v17 < 1)
      {
        v38 = MEMORY[0x1E69E7CC0];
        if (v25 == v22)
        {
          goto LABEL_89;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
        v38 = swift_allocObject();
        v42 = _swift_stdlib_malloc_size(v38);
        v43 = v42 - 32;
        if (v42 < 32)
        {
          v43 = v42 - 25;
        }

        *(v38 + 16) = v17;
        *(v38 + 24) = (2 * (v43 >> 3)) | 1;
        if (v25 == v22)
        {
          goto LABEL_89;
        }
      }

      swift_arrayInitWithCopy();
      goto LABEL_59;
    }

    v38 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v38)
    {
      goto LABEL_58;
    }

LABEL_60:
    if (v38 < 0 || (v38 & 0x4000000000000000) != 0)
    {
      v9 = sub_1D2250F4C();
      if (!v9)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v9 = *(v38 + 16);
      if (!v9)
      {
        goto LABEL_72;
      }
    }

    if (v9 < 1)
    {
      goto LABEL_83;
    }

    for (i = 0; i != v9; ++i)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1D3898A80](i, v38);
      }

      else
      {
        v45 = *(v38 + 8 * i + 32);
      }

      v46 = v45;
      v47 = [v45 mapping];
      if (v47)
      {
        v48 = v47;
        a6([v46 identifier], v47);
      }
    }

LABEL_72:

    v49 = [*(a5 + 16) hasChanges];
    v17 = a4;
    v23 = v56;
    v22 = v57;
    if (v49)
    {
      break;
    }

LABEL_75:
    if (a8)
    {
      a8(v49);
    }

    objc_autoreleasePoolPop(v62);
    v25 = v61;
    v26 = v56 >= v61;
    if (a4 > 0)
    {
      v26 = v61 >= v56;
    }

    if (v26)
    {
      goto LABEL_10;
    }
  }

  v50 = *(a5 + 16);
  v64[0] = 0;
  if ([v50 save_])
  {
    v51 = *(a5 + 16);
    v52 = v64[0];
    v49 = [v51 reset];
    goto LABEL_75;
  }

  v53 = v64[0];

  sub_1D22502FC();

  swift_willThrow();
  objc_autoreleasePoolPop(v62);
}

void sub_1D2220DDC(unsigned __int8 a1, void (*a2)(id))
{
  v4 = v2;
  v7 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v8 = sub_1D225092C();
  v9 = [v7 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D22526E0;
  v11 = MEMORY[0x1E69E65A8];
  *(v10 + 56) = MEMORY[0x1E69E6530];
  *(v10 + 64) = v11;
  *(v10 + 32) = a1;
  v12 = sub_1D2250C5C();
  [v9 setPredicate_];

  v13 = *(v4 + 16);
  type metadata accessor for VUIndexSubset();
  v14 = v13;
  v15 = sub_1D2250DDC();

  if (v3)
  {
    goto LABEL_11;
  }

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    [v17 setType_];
    goto LABEL_10;
  }

  if (!sub_1D2250F4C())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1D3898A80](0, v15);
    goto LABEL_7;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 32);
LABEL_7:
    v17 = v16;

LABEL_10:
    a2(v17);

LABEL_11:
    return;
  }

  __break(1u);
}

void sub_1D222103C(unsigned __int8 a1, uint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D22504FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v10 = sub_1D225092C();
  v11 = [v9 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D22526E0;
  v13 = MEMORY[0x1E69E65A8];
  *(v12 + 56) = MEMORY[0x1E69E6530];
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  v14 = sub_1D2250C5C();
  [v11 setPredicate_];

  v15 = *(a2 + 16);
  type metadata accessor for VUIndexSubset();
  v16 = v15;
  v17 = sub_1D2250DDC();
  if (!v2)
  {
    v18 = v17;

    if (v18 >> 62)
    {
      if (sub_1D2250F4C())
      {
        goto LABEL_4;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1D3898A80](0, v18);
      }

      else
      {
        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v19 = *(v18 + 32);
      }

      v20 = v19;

      v16 = v20;
      [v16 setStaleObservations_];
      [v16 setStaleTags_];
      sub_1D22504EC();
      v21 = sub_1D22504BC();
      (*(v6 + 8))(v8, v5);
      [v16 setLastUpdated_];

      goto LABEL_10;
    }

    v16 = 0;
LABEL_10:
    v22 = *(a2 + 16);
    v25[0] = 0;
    if ([v22 save_])
    {
      v23 = v25[0];
    }

    else
    {
      v24 = v25[0];
      sub_1D22502FC();

      swift_willThrow();
    }
  }
}

void sub_1D22213B8(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, SEL *a3@<X2>, unsigned __int8 *a4@<X8>)
{
  v9 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v10 = sub_1D225092C();
  v11 = [v9 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D22526E0;
  v13 = MEMORY[0x1E69E65A8];
  *(v12 + 56) = MEMORY[0x1E69E6530];
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  v14 = sub_1D2250C5C();
  [v11 setPredicate_];

  v15 = *(a2 + 16);
  type metadata accessor for VUIndexSubset();
  v16 = v15;
  v17 = sub_1D2250DDC();
  if (v4)
  {

    v18 = 1;
LABEL_11:
    *a4 = v18;
    return;
  }

  v19 = v17;

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v18 = 1;
    goto LABEL_11;
  }

  if (!sub_1D2250F4C())
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1D3898A80](0, v19);
    goto LABEL_8;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);
LABEL_8:
    v21 = v20;

    v18 = [v21 *a3];

    goto LABEL_11;
  }

  __break(1u);
}

void sub_1D22215E8(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_1D225092C();
  v8 = [v6 initWithEntityName_];

  if ((a1 & 0x100) == 0)
  {
    sub_1D2174E10(0, &unk_1EDC886D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D22526E0;
    v10 = MEMORY[0x1E69E65A8];
    *(v9 + 56) = MEMORY[0x1E69E6530];
    *(v9 + 64) = v10;
    *(v9 + 32) = a1;
    v11 = sub_1D2250C5C();
    [v8 setPredicate_];
  }

  v12 = *(a2 + 16);
  type metadata accessor for VUIndexSubset();
  v21 = v12;
  v13 = sub_1D2250DDC();

  if (v13 >> 62)
  {
    v14 = sub_1D2250F4C();
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_21:

    goto LABEL_22;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_21;
  }

LABEL_5:
  v22 = v8;
  if (v14 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1D3898A80](i, v13);
    }

    else
    {
      v16 = *(v13 + 8 * i + 32);
    }

    v17 = v16;
    if ([v16 version] < 1)
    {
    }

    else
    {
      if (*(a3 + 8))
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = *a3;
      }

      v19 = [v17 version];

      v20 = v19;
      if (v18 < v19)
      {
        v20 = v18;
      }

      *a3 = v20;
      *(a3 + 8) = 0;
    }
  }

LABEL_22:
}

uint64_t sub_1D22218A8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v14 = sub_1D225092C();
  v15 = [v13 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D22526E0;
  v17 = MEMORY[0x1E69E65A8];
  *(v16 + 56) = MEMORY[0x1E69E6530];
  *(v16 + 64) = v17;
  *(v16 + 32) = a1;
  v18 = sub_1D2250C5C();
  [v15 setPredicate_];

  v19 = *(a2 + 16);
  type metadata accessor for VUIndexSubset();
  v20 = v19;
  v21 = sub_1D2250DDC();
  if (v3)
  {

    goto LABEL_3;
  }

  v25 = v21;

  if (!(v25 >> 62))
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_19:

    goto LABEL_3;
  }

  result = sub_1D2250F4C();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1D3898A80](0, v25);
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v26 = *(v25 + 32);
  }

  v23 = v26;

  if (v23)
  {
    v27 = [v23 lastUpdated];
    if (v27)
    {
      v28 = v27;
      sub_1D22504DC();

      v22 = sub_1D22504FC();
      (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
    }

    else
    {
      v22 = sub_1D22504FC();
      (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    }

    sub_1D21A6938(v10, v12, &qword_1EC6D23C0);
    sub_1D22504FC();
    v29 = *(v22 - 8);
    if ((*(v29 + 48))(v12, 1, v22) != 1)
    {

      return (*(v29 + 32))(a3, v12, v22);
    }

    goto LABEL_4;
  }

LABEL_3:
  v22 = sub_1D22504FC();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = 0;
LABEL_4:
  sub_1D225049C();

  sub_1D22504FC();
  result = (*(*(v22 - 8) + 48))(v12, 1, v22);
  if (result != 1)
  {
    return sub_1D2176170(v12, &qword_1EC6D23C0);
  }

  return result;
}

void sub_1D2221D08(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_1D225092C();
  v8 = [v6 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D22526E0;
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
  *(v9 + 64) = sub_1D2177F3C(&qword_1EDC869D0, &qword_1EC6D21D8);
  *(v9 + 32) = a1;

  v10 = sub_1D2250C5C();
  [v8 setPredicate_];

  v11 = sub_1D2250AEC();
  [v8 setRelationshipKeyPathsForPrefetching_];

  v12 = *(a2 + 16);
  type metadata accessor for VUIndexObservation();
  v13 = v12;
  v14 = sub_1D2250DDC();
  if (v3)
  {
  }

  else
  {
    v15 = v14;

    a3(v15);
  }
}

unint64_t sub_1D2221F50(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  swift_beginAccess();
  v9 = *(v4 + v8);
  if (*(v9 + 16))
  {
    result = sub_1D2176DFC(a1);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * result);
      v13 = *(v12 + 48);
      if (*(v12 + 56))
      {
        if ((v13 - 0x2000000000000000) >> 62 != 3)
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v14 = 4 * v13;
      }

      else
      {
        if (v13 + 0x4000000000000000 < 0)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v14 = 2 * v13;
      }

      v19 = a3 >> 62;
      if ((a3 >> 62) > 1)
      {
        if (v19 != 2 || !__OFSUB__(*(a2 + 24), *(a2 + 16)))
        {
          goto LABEL_19;
        }

        __break(1u);
      }

      else if (!v19)
      {
LABEL_19:
        if (v14)
        {
          v20 = *(v4 + 16);
          MEMORY[0x1EEE9AC00](result);

          v21 = v20;
          sub_1D2250DBC();
        }

        __break(1u);
        goto LABEL_22;
      }

      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_24:
        __break(1u);
        return result;
      }

      goto LABEL_19;
    }
  }

  v15 = sub_1D225080C();
  v16 = sub_1D2250CDC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 16777472;
    v17[4] = a1;
    _os_log_impl(&dword_1D2171000, v15, v16, "No parameters for type %hhu", v17, 5u);
    MEMORY[0x1D3899640](v17, -1, -1);
  }

  sub_1D217EE2C();
  swift_allocError();
  *v18 = 4;
  return swift_willThrow();
}

void sub_1D22221B8(unsigned __int8 a1, id *a2, uint64_t a3, uint64_t a4)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v8 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v9 = sub_1D225092C();
  v10 = [v8 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7508];
  *(v11 + 16) = xmmword_1D22526E0;
  v13 = MEMORY[0x1E69E7558];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = a1;
  v14 = sub_1D2250C5C();
  [v10 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D2252720;
  v16 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v17 = sub_1D225092C();
  v18 = [v16 initWithKey:v17 ascending:1];

  *(v15 + 32) = v18;
  sub_1D2174E10(0, &qword_1EDC886C8);
  v19 = sub_1D2250AEC();

  [v10 setSortDescriptors_];

  v20 = a2[2];
  type metadata accessor for VUIndexPartition();
  v21 = v20;
  v22 = sub_1D2250DDC();
  if (v4)
  {
  }

  else
  {
    ObjCClassFromMetadata = v22;
    v50 = a1;

    v48 = v10;
    v49 = ObjCClassFromMetadata >> 62;
    if (ObjCClassFromMetadata >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((ObjCClassFromMetadata & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D2250F4C())
    {
      v51 = a2;
      if (i)
      {
        break;
      }

LABEL_18:
      if (v49)
      {
        v36 = sub_1D2250F4C();
      }

      else
      {
        v36 = *((ObjCClassFromMetadata & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v36 >= a3)
      {
LABEL_32:
        if ([a2[2] hasChanges])
        {
          v45 = a2[2];
          v53[0] = 0;
          if ([v45 save_])
          {
            v46 = v53[0];
          }

          else
          {
            v47 = v53[0];
            sub_1D22502FC();

            swift_willThrow();
          }
        }

        else
        {
        }

        return;
      }

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if (v36 <= 0x80000000)
      {
        v37 = 0x80000000;
      }

      else
      {
        v37 = v36;
      }

      v38 = v36;
      while (1)
      {
        v39 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext_];
        if ((v38 * a4) >> 64 != (v38 * a4) >> 63)
        {
          break;
        }

        v40 = v38 + 1;
        v41 = (v38 + 1) * a4;
        if (((v38 + 1) * a4) >> 64 != v41 >> 63)
        {
          goto LABEL_39;
        }

        if (v41 < v38 * a4)
        {
          goto LABEL_40;
        }

        v42 = sub_1D225044C();
        v44 = v43;
        a2 = sub_1D225045C();
        sub_1D21A1ED8(v42, v44);
        [v39 setCentroid_];

        if (v36 < 0xFFFFFFFF80000000)
        {
          goto LABEL_41;
        }

        if (v40 - 1 == v37)
        {
          goto LABEL_42;
        }

        [v39 setPartition_];
        [v39 setType_];

        v38 = v40;
        a2 = v51;
        if (v40 == a3)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }

    if (i >= 1)
    {
      v25 = 0;
      v26 = &off_1E83FA000;
      while (1)
      {
        if ((ObjCClassFromMetadata & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1D3898A80](v25, ObjCClassFromMetadata);
        }

        else
        {
          v28 = *(ObjCClassFromMetadata + 8 * v25 + 32);
        }

        v29 = v28;
        if ([v28 v26[347]] >= a3)
        {
          v27 = a2[2];
          [v27 deleteObject_];
        }

        else
        {
          v30 = [v29 v26[347]];
          v31 = v30 * a4;
          if ((v30 * a4) >> 64 != (v30 * a4) >> 63)
          {
            goto LABEL_43;
          }

          if (__OFADD__(v31, a4))
          {
            goto LABEL_44;
          }

          if (v31 + a4 < v31)
          {
            goto LABEL_45;
          }

          v32 = sub_1D225044C();
          v34 = v33;
          v27 = sub_1D225045C();
          v35 = v32;
          a2 = v51;
          sub_1D21A1ED8(v35, v34);
          [v29 setCentroid_];
        }

        ++v25;

        v26 = &off_1E83FA000;
        if (i == v25)
        {
          goto LABEL_18;
        }
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D2222774(unsigned __int8 a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  swift_beginAccess();
  if (*(*(v2 + v4) + 16) && (v5 = sub_1D2176DFC(a1), (v6 & 1) != 0))
  {
    v7 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v5);

    v8 = v7;
    sub_1D2250DBC();

    return v13;
  }

  else
  {
    v10 = sub_1D225080C();
    v11 = sub_1D2250CDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 16777472;
      v12[4] = a1;
      _os_log_impl(&dword_1D2171000, v10, v11, "No parameters for type %hhu", v12, 5u);
      MEMORY[0x1D3899640](v12, -1, -1);
    }

    return 0;
  }
}

void sub_1D22228FC(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v9 = sub_1D225092C();
  v10 = [v8 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D22526E0;
  v12 = MEMORY[0x1E69E65A8];
  *(v11 + 56) = MEMORY[0x1E69E6530];
  *(v11 + 64) = v12;
  *(v11 + 32) = a1;
  v13 = sub_1D2250C5C();
  [v10 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D2252720;
  v15 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v16 = sub_1D225092C();
  v17 = [v15 initWithKey:v16 ascending:1];

  *(v14 + 32) = v17;
  sub_1D2174E10(0, &qword_1EDC886C8);
  v18 = sub_1D2250AEC();

  [v10 setSortDescriptors_];

  v19 = *(a2 + 16);
  type metadata accessor for VUIndexPartition();
  v20 = v19;
  v21 = sub_1D2250DDC();
  if (v4)
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v22 = v21;
  }

  v23 = *(a3 + 48);
  if ((*(a3 + 56) & 1) == 0)
  {
    if (v23 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v24 = 2 * v23;
    goto LABEL_9;
  }

  if ((v23 - 0x2000000000000000) >> 62 == 3)
  {
    v24 = 4 * v23;
LABEL_9:
    v25 = (v22 >> 62);
    if (v22 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); (v24 * i) >> 64 == (v24 * i) >> 63; i = sub_1D2250F4C())
    {
      v24 = sub_1D2178E78(v24 * i);
      v28 = v27;
      v42 = v24;
      v43 = v27;
      if (v25)
      {
        v25 = sub_1D2250F4C();
        if (!v25)
        {
LABEL_25:

          *a4 = v24;
          a4[1] = v28;
          return;
        }
      }

      else
      {
        v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v25)
        {
          goto LABEL_25;
        }
      }

      v40 = v10;
      v29 = 0;
      v44 = v22 & 0xC000000000000001;
      v30 = v22 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v44)
        {
          v31 = MEMORY[0x1D3898A80](v29, v22);
        }

        else
        {
          if (v29 >= *(v30 + 16))
          {
            goto LABEL_27;
          }

          v31 = *(v22 + 8 * v29 + 32);
        }

        v32 = v31;
        v33 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v10 = v25;
        v34 = v22;
        v35 = [v31 centroid];
        if (!v35)
        {
          goto LABEL_32;
        }

        v36 = v35;
        v37 = sub_1D225046C();
        v39 = v38;

        v24 = &v42;
        sub_1D225047C();
        sub_1D21A1ED8(v37, v39);

        ++v29;
        v25 = v10;
        v22 = v34;
        if (v33 == v10)
        {
          v24 = v42;
          v28 = v43;
          v10 = v40;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1D2222CFC(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_1D225092C();
  v8 = [v6 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D22526F0;
  v10 = MEMORY[0x1E69E72E8];
  *(v9 + 56) = MEMORY[0x1E69E7290];
  *(v9 + 64) = v10;
  *(v9 + 32) = 1;
  v11 = MEMORY[0x1E69E7558];
  *(v9 + 96) = MEMORY[0x1E69E7508];
  *(v9 + 104) = v11;
  *(v9 + 72) = a1;
  v12 = sub_1D2250C5C();
  [v8 setPredicate_];

  v13 = sub_1D2250AEC();
  [v8 setRelationshipKeyPathsForPrefetching_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D2255640;
  v15 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v16 = sub_1D225092C();
  v17 = [v15 initWithKey:v16 ascending:1];

  *(v14 + 32) = v17;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v19 = sub_1D225092C();
  v20 = [v18 initWithKey:v19 ascending:1];

  *(v14 + 40) = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1D225092C();
  v23 = [v21 initWithKey:v22 ascending:1];

  *(v14 + 48) = v23;
  v24 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v25 = sub_1D225092C();
  v26 = [v24 initWithKey:v25 ascending:1];

  *(v14 + 56) = v26;
  sub_1D2174E10(0, &qword_1EDC886C8);
  v27 = sub_1D2250AEC();

  [v8 setSortDescriptors_];

  v28 = *(a2 + 16);
  type metadata accessor for VUIndexTag();
  v29 = v28;
  v30 = sub_1D2250DDC();
  if (v3)
  {

    return;
  }

  v31 = v30;

  v39 = MEMORY[0x1E69E7CD0];
  sub_1D2218B60(v31);

  if (![*(a2 + 16) hasChanges])
  {

    v33 = a3;
    goto LABEL_7;
  }

  v32 = *(a2 + 16);
  v38 = 0;
  if ([v32 save_])
  {
    v33 = a3;
    v34 = v38;

LABEL_7:
    v35 = *(v39 + 16);

    *v33 = v35;
    return;
  }

  v36 = v38;
  sub_1D22502FC();

  swift_willThrow();
}

uint64_t sub_1D2223150(char a1)
{
  v2 = v1;
  v12 = MEMORY[0x1E69E7CC0];
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  *(v5 + 32) = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D222D338;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1D2179F10;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_4;
  v7 = _Block_copy(aBlock);
  v8 = v4;

  [v8 performBlockAndWait_];

  _Block_release(v7);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

id sub_1D22232D8(char a1, uint64_t a2, size_t *a3)
{
  v67 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2378);
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v69 = (v57 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = v57 - v8;
  v64 = sub_1D225055C();
  v61 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v70 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v11 = sub_1D225092C();
  v12 = [v10 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7508];
  *(v13 + 16) = xmmword_1D22526E0;
  v15 = MEMORY[0x1E69E7558];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = a1;
  v16 = sub_1D2250C5C();
  [v12 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D2252750;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v19 = sub_1D225092C();
  v20 = [v18 initWithKey:v19 ascending:1];

  *(v17 + 32) = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1D225092C();
  v23 = [v21 initWithKey:v22 ascending:1];

  *(v17 + 40) = v23;
  sub_1D2174E10(0, &qword_1EDC886C8);
  v24 = sub_1D2250AEC();

  [v12 setSortDescriptors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D22526F0;
  v26 = MEMORY[0x1E69E6158];
  *(v25 + 32) = 1701869940;
  *(v25 + 40) = 0xE400000000000000;
  *(v25 + 88) = v26;
  *(v25 + 56) = v26;
  *(v25 + 64) = 1684632949;
  *(v25 + 72) = 0xE400000000000000;
  v27 = sub_1D2250AEC();

  [v12 setPropertiesToFetch_];

  v28 = sub_1D2250AEC();
  [v12 setRelationshipKeyPathsForPrefetching_];

  v29 = *(a2 + 16);
  type metadata accessor for VUIndexTag();
  v30 = v29;
  v58 = v12;
  v56 = sub_1D2250DDC();

  v57[1] = v56;
  if (v56 >> 62)
  {
    result = sub_1D2250F4C();
    if (!result)
    {
      goto LABEL_24;
    }
  }

  else
  {
    result = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_24:
    }
  }

  v32 = 0;
  v62 = v56 & 0xFFFFFFFFFFFFFF8;
  v63 = v56 & 0xC000000000000001;
  v59 = (v61 + 56);
  v60 = result;
  v33 = (v61 + 32);
  v34 = &off_1E83FA000;
  v61 = v56;
  while (1)
  {
    if (v63)
    {
      result = MEMORY[0x1D3898A80](v32, v56);
    }

    else
    {
      if (v32 >= *(v62 + 16))
      {
        goto LABEL_26;
      }

      result = *(v56 + 8 * v32 + 32);
    }

    v35 = result;
    v36 = (v32 + 1);
    if (__OFADD__(v32, 1))
    {
      break;
    }

    result = [result v34[275]];
    if (!result)
    {
      goto LABEL_27;
    }

    v37 = result;
    v38 = [result identifier];

    result = [v35 uuid];
    if (!result)
    {
      goto LABEL_28;
    }

    v39 = result;
    sub_1D225054C();

    result = [v35 type];
    if (result > 2)
    {
      goto LABEL_30;
    }

    v40 = result;
    result = [v35 v34[275]];
    if (!result)
    {
      goto LABEL_29;
    }

    v41 = result;
    v42 = [result asset];

    if (v42)
    {
      v43 = v68;
      sub_1D225054C();

      v44 = 0;
    }

    else
    {
      v44 = 1;
      v43 = v68;
    }

    v45 = v64;
    (*v59)(v43, v44, 1, v64);
    sub_1D2176170(v43, &qword_1EC6D2110);
    v46 = v69 + *(v66 + 48);
    *v69 = v38;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
    v48 = *(v47 + 48);
    v49 = *(v47 + 64);
    (*v33)(v46, v70, v45);
    v46[v48] = v40;
    v46[v49] = v42 == 0;
    v50 = v67;
    v51 = *v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = v51;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v51 = sub_1D21960C0(0, v51[2] + 1, 1, v51);
      *v50 = v51;
    }

    v56 = v61;
    v54 = v51[2];
    v53 = v51[3];
    if (v54 >= v53 >> 1)
    {
      *v50 = sub_1D21960C0(v53 > 1, v54 + 1, 1, v51);
    }

    v55 = *v50;
    *(v55 + 16) = v54 + 1;
    result = sub_1D21A6938(v69, v55 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v54, &qword_1EC6D2378);
    ++v32;
    v34 = &off_1E83FA000;
    if (v36 == v60)
    {
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
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1D2223A7C@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v58 = a3;
  v6 = sub_1D225055C();
  v64 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v67 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = v55 - v9;
  v10 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v11 = sub_1D225092C();
  v12 = [v10 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v13 = swift_allocObject();
  v68 = xmmword_1D22526E0;
  v14 = MEMORY[0x1E69E7290];
  *(v13 + 16) = xmmword_1D22526E0;
  v15 = MEMORY[0x1E69E72E8];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = a1;
  v16 = sub_1D2250C5C();
  [v12 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 16) = v68;
  *(v17 + 56) = v18;
  *(v17 + 32) = 1684632949;
  *(v17 + 40) = 0xE400000000000000;
  v19 = sub_1D2250AEC();

  [v12 setPropertiesToFetch_];

  v20 = sub_1D2250AEC();
  [v12 setRelationshipKeyPathsForPrefetching_];

  v21 = *(a2 + 16);
  type metadata accessor for VUIndexTag();
  v22 = v21;
  v57 = v12;
  v23 = sub_1D2250DDC();
  if (v3)
  {

    v56 = 0;
  }

  else
  {
    v56 = 0;
    v26 = v23;

    v24 = v26;
    v25 = v26;
    if (v26)
    {
      goto LABEL_5;
    }
  }

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
LABEL_5:
  if (v25 >> 62)
  {
LABEL_38:
    v54 = v24;
    v27 = sub_1D2250F4C();
    v24 = v54;
  }

  else
  {
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v55[1] = v24;

  if (!v27)
  {
    v29 = MEMORY[0x1E69E7CC8];
LABEL_33:

    *v58 = v29;
    return result;
  }

  v28 = 0;
  v61 = v25 & 0xFFFFFFFFFFFFFF8;
  v62 = v25 & 0xC000000000000001;
  v65 = (v64 + 32);
  v29 = MEMORY[0x1E69E7CC8];
  v59 = v64 + 40;
  v60 = v25;
  while (1)
  {
    if (v62)
    {
      v24 = MEMORY[0x1D3898A80](v28, v25);
    }

    else
    {
      if (v28 >= *(v61 + 16))
      {
        goto LABEL_35;
      }

      v24 = *(v25 + 8 * v28 + 32);
    }

    v30 = v24;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v31 = [v24 observation];
    if (!v31)
    {
      break;
    }

    v32 = v31;
    v33 = [v31 mapping];

    v66 = v28 + 1;
    if (v33)
    {
      *&v68 = [v33 label];
    }

    else
    {
      *&v68 = -1;
    }

    v34 = v27;
    v25 = v30;
    v35 = [v30 uuid];
    if (!v35)
    {
      goto LABEL_40;
    }

    v36 = v35;
    v37 = v63;
    sub_1D225054C();

    v38 = *v65;
    v39 = v37;
    v40 = v6;
    (*v65)(v67, v39, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v29;
    v43 = sub_1D2176758(v68);
    v44 = v29[2];
    v45 = (v42 & 1) == 0;
    v24 = (v44 + v45);
    if (__OFADD__(v44, v45))
    {
      goto LABEL_36;
    }

    v46 = v42;
    if (v29[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v69;
        if (v42)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D21B7144();
        v29 = v69;
        if (v46)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      sub_1D21B1C80(v24, isUniquelyReferenced_nonNull_native);
      v47 = sub_1D2176758(v68);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_41;
      }

      v43 = v47;
      v29 = v69;
      if (v46)
      {
LABEL_9:
        v6 = v40;
        (*(v64 + 40))(v29[7] + *(v64 + 72) * v43, v67, v40);

        goto LABEL_10;
      }
    }

    v29[(v43 >> 6) + 8] |= 1 << v43;
    v49 = v67;
    *(v29[6] + 8 * v43) = v68;
    v6 = v40;
    v38((v29[7] + *(v64 + 72) * v43), v49, v40);

    v50 = v29[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_37;
    }

    v29[2] = v52;
LABEL_10:
    ++v28;
    v27 = v34;
    v25 = v60;
    if (v66 == v34)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

void sub_1D2224080(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v83 = a5;
  LODWORD(v81) = a3;
  LODWORD(v80) = a2;
  v79 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2128);
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v78 - v12;
  v90 = sub_1D225055C();
  v85 = *(v90 - 8);
  v14 = MEMORY[0x1EEE9AC00](v90);
  v87 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v78 - v16;
  v17 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v18 = sub_1D225092C();
  v82 = [v17 initWithEntityName_];

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D2252750;
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v20 = swift_allocObject();
  v86 = xmmword_1D22526E0;
  *(v20 + 16) = xmmword_1D22526E0;
  v21 = MEMORY[0x1E69E72E8];
  *(v20 + 56) = MEMORY[0x1E69E7290];
  *(v20 + 64) = v21;
  *(v20 + 32) = 1;
  *(v19 + 32) = sub_1D2250C5C();
  *(v19 + 40) = sub_1D2250C5C();
  v93 = v19;
  if ((v80 & 1) == 0)
  {
    v22 = a4;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2252720;
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E6530];
    v26 = MEMORY[0x1E69E65A8];
    *(v24 + 16) = v86;
    *(v24 + 56) = v25;
    *(v24 + 64) = v26;
    *(v24 + 32) = a1;
    *(inited + 32) = sub_1D2250C5C();
    v27 = inited;
    a4 = v22;
    sub_1D217A694(v27);
  }

  v28 = v81;
  if ((v81 & 0x10000) == 0)
  {
    v29 = a4;
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1D2252720;
    v31 = swift_allocObject();
    *(v31 + 16) = v86;
    *(v31 + 56) = MEMORY[0x1E69E7290];
    *(v31 + 64) = v21;
    *(v31 + 32) = v28;
    *(v30 + 32) = sub_1D2250C5C();
    v32 = v30;
    a4 = v29;
    sub_1D217A694(v32);
  }

  sub_1D2174DA8(a4, v13, &qword_1EC6D2110);
  v33 = v85;
  v34 = v90;
  if ((*(v85 + 6))(v13, 1, v90) == 1)
  {
    sub_1D2176170(v13, &qword_1EC6D2110);
  }

  else
  {
    v35 = *(v33 + 4);
    v36 = v13;
    v37 = v33;
    v38 = v78;
    v35(v78, v36, v34);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_1D2252720;
    v40 = swift_allocObject();
    *(v40 + 16) = v86;
    v41 = sub_1D225051C();
    v43 = v42;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = sub_1D217A924();
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    *(v39 + 32) = sub_1D2250C5C();
    sub_1D217A694(v39);
    v44 = v38;
    v33 = v37;
    (*(v37 + 1))(v44, v34);
  }

  v45 = v84;
  v46 = v83;
  v47 = v93;
  v48 = sub_1D2250AEC();
  v49 = [objc_opt_self() andPredicateWithSubpredicates_];

  v50 = v82;
  [v82 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D22526F0;
  *(v51 + 32) = 1684632949;
  *(v51 + 40) = 0xE400000000000000;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 88) = MEMORY[0x1E69E6158];
  *(v51 + 56) = v52;
  *(v51 + 64) = 1701869940;
  *(v51 + 72) = 0xE400000000000000;
  v53 = sub_1D2250AEC();

  [v50 setPropertiesToFetch_];

  v54 = sub_1D2250AEC();
  [v50 setRelationshipKeyPathsForPrefetching_];

  v55 = *(v46 + 16);
  type metadata accessor for VUIndexTag();
  v56 = v55;
  v57 = sub_1D2250DDC();
  if (v45)
  {

    goto LABEL_10;
  }

  v59 = v57;
  v60 = 0;

  if (v59 >> 62)
  {
    goto LABEL_33;
  }

  v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v61)
  {
LABEL_34:

LABEL_10:
    v58 = MEMORY[0x1E69E7CC0];
LABEL_30:
    *v79 = v58;
    return;
  }

  while (1)
  {
    v80 = v60;
    v81 = v47;
    v92 = MEMORY[0x1E69E7CC0];
    sub_1D21AFCD0(0, v61 & ~(v61 >> 63), 0);
    if (v61 < 0)
    {
      break;
    }

    v47 = 0;
    *&v86 = v59 & 0xC000000000000001;
    v58 = v92;
    v83 = v59 & 0xFFFFFFFFFFFFFF8;
    v85 = v33 + 32;
    v60 = &off_1E83FA000;
    v84 = v61;
    while (1)
    {
      v50 = (v47 + 1);
      if (__OFADD__(v47, 1))
      {
        break;
      }

      v91 = v58;
      if (v86)
      {
        v62 = MEMORY[0x1D3898A80](v47, v59);
      }

      else
      {
        if (v47 >= *(v83 + 16))
        {
          goto LABEL_32;
        }

        v62 = *(v59 + 8 * v47 + 32);
      }

      v63 = v62;
      v64 = [v62 v60[275]];
      if (!v64)
      {
        goto LABEL_37;
      }

      v65 = v64;
      v66 = [v64 mapping];

      if (v66)
      {
        v67 = [v66 label];
      }

      else
      {
        v67 = -1;
      }

      *v10 = v67;
      v68 = [v63 v60[275]];
      if (!v68)
      {
        goto LABEL_38;
      }

      v69 = v68;
      v70 = v59;
      v71 = [v68 client];

      *(v10 + 4) = v71;
      v72 = [v63 uuid];
      if (!v72)
      {
        goto LABEL_36;
      }

      v73 = v72;
      v74 = *(v89 + 64);
      v75 = *(v89 + 80);
      v33 = v87;
      sub_1D225054C();

      (*v85)(&v10[v74], v33, v90);
      LODWORD(v73) = [v63 type];

      v10[v75] = v73 == 0;
      v58 = v91;
      v92 = v91;
      v77 = *(v91 + 16);
      v76 = *(v91 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1D21AFCD0(v76 > 1, v77 + 1, 1);
        v58 = v92;
      }

      *(v58 + 16) = v77 + 1;
      sub_1D21A6938(v10, v58 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v77, &qword_1EC6D2128);
      ++v47;
      v59 = v70;
      v60 = &off_1E83FA000;
      if (v50 == v84)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v61 = sub_1D2250F4C();
    if (!v61)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_1D2224AB8(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v90 = a9;
  v16 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v17 = sub_1D225092C();
  v94 = [v16 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D2252750;
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E6530];
  *(v19 + 16) = xmmword_1D22526E0;
  v21 = MEMORY[0x1E69E65A8];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = a1;
  *(v18 + 32) = sub_1D2250C5C();
  *(v18 + 40) = sub_1D2250C5C();
  v22 = v18;
  v99 = v18;
  if (a2)
  {
    sub_1D2250C5C();
    MEMORY[0x1D3898510]();
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D2250B1C();
    }

    sub_1D2250B3C();
    v22 = v99;
    if ((a3 & 1) == 0)
    {
LABEL_3:
      v23 = v94;
      if ((a4 & 0x10000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a3 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_1D2250C5C();
  MEMORY[0x1D3898510]();
  if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2250B1C();
  }

  sub_1D2250B3C();
  v22 = v99;
  v23 = v94;
  if ((a4 & 0x10000) != 0)
  {
LABEL_4:
    v24 = a5;
    if ((a5 & 0x100000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D22526E0;
  *(v26 + 56) = MEMORY[0x1E69E6530];
  *(v26 + 64) = v21;
  *(v26 + 32) = a4;
  sub_1D2250C5C();
  MEMORY[0x1D3898510]();
  if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2250B1C();
  }

  sub_1D2250B3C();
  v22 = v99;
  v24 = a5;
  if ((a5 & 0x100000000) != 0)
  {
LABEL_5:
    v25 = a6;
    if ((a6 & 0x100000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E6448];
  *(v27 + 16) = xmmword_1D22526E0;
  v29 = MEMORY[0x1E69E64A8];
  *(v27 + 56) = v28;
  *(v27 + 64) = v29;
  *(v27 + 32) = v24;
  sub_1D2250C5C();
  MEMORY[0x1D3898510]();
  if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2250B1C();
  }

  sub_1D2250B3C();
  v22 = v99;
  v25 = a6;
  if ((a6 & 0x100000000) == 0)
  {
LABEL_19:
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E6448];
    *(v30 + 16) = xmmword_1D22526E0;
    v32 = MEMORY[0x1E69E64A8];
    *(v30 + 56) = v31;
    *(v30 + 64) = v32;
    *(v30 + 32) = v25;
    sub_1D2250C5C();
    MEMORY[0x1D3898510]();
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D2250B1C();
    }

    sub_1D2250B3C();
    v22 = v99;
  }

LABEL_22:
  v33 = &off_1E83FA000;
  v34 = &off_1E83FA000;
  v35 = &off_1E83FA000;
  if (a7)
  {
    v36 = v22;
    v37 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
    v38 = sub_1D225092C();
    v39 = [v37 initWithEntityName_];

    v96 = v36;
    v40 = sub_1D2250AEC();
    v41 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v39 &selRef:v41 fetchHistoryAfterToken:?];
    v42 = sub_1D2250AEC();
    [v39 setRelationshipKeyPathsForPrefetching_];

    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D2252720;
    v44 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v45 = sub_1D225092C();
    v46 = [v44 initWithKey:v45 ascending:0];

    v35 = &off_1E83FA000;
    *(v43 + 32) = v46;
    sub_1D2174E10(0, &qword_1EDC886C8);
    v47 = sub_1D2250AEC();

    [v39 setSortDescriptors_];

    v48 = *(a8 + 16);
    type metadata accessor for VUIndexObservation();
    v49 = v48;
    v50 = sub_1D2250DCC();
    if (!v97)
    {
      v51 = v50;

      [v39 setFetchLimit_];
      [v39 setFetchOffset_];
      v52 = *(a8 + 16);
      v53 = 0;
      v70 = sub_1D2250DDC();

      if (v70 >> 62)
      {
        goto LABEL_59;
      }

      v81 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_45;
    }

    v97 = 0;
    v22 = v36;
    v34 = &off_1E83FA000;
    v33 = &off_1E83FA000;
  }

  while (1)
  {
    v53 = a10;
    v96 = v22;
    v54 = sub_1D2250AEC();
    v55 = [objc_opt_self() v33[298]];

    [v23 v34[367]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1D22526F0;
    v57 = MEMORY[0x1E69E6158];
    *(v56 + 32) = 0x696669746E656469;
    *(v56 + 40) = 0xEA00000000007265;
    *(v56 + 88) = v57;
    *(v56 + 56) = v57;
    *(v56 + 64) = 0x7974696C617571;
    *(v56 + 72) = 0xE700000000000000;
    v58 = sub_1D2250AEC();

    [v23 setPropertiesToFetch_];

    v59 = *(a10 + 2);
    v60 = MEMORY[0x1E69E7CC0];
    if (v59)
    {
      v61 = v35;
      v98 = MEMORY[0x1E69E7CC0];
      sub_1D22510BC();
      v53 = a10 + 40;
      do
      {
        v62 = objc_allocWithZone(MEMORY[0x1E696AEB0]);

        v63 = sub_1D225092C();
        [v62 initWithKey:v63 ascending:0];

        sub_1D225109C();
        sub_1D22510CC();
        sub_1D22510DC();
        sub_1D22510AC();
        v53 += 16;
        --v59;
      }

      while (v59);
      v23 = v94;
      v35 = v61;
      v60 = MEMORY[0x1E69E7CC0];
    }

    sub_1D2174E10(0, &qword_1EDC886C8);
    v64 = sub_1D2250AEC();

    [v23 v35[369]];

    [v23 setFetchLimit_];
    [v23 setFetchOffset_];
    v65 = *(a8 + 16);
    type metadata accessor for VUIndexObservation();
    v66 = v65;
    v67 = sub_1D2250DDC();
    v39 = v97;
    if (v97)
    {

      return;
    }

    v68 = v67;

    if (v68 >> 62)
    {
      v69 = sub_1D2250F4C();
      if (!v69)
      {
LABEL_57:

        *v90 = MEMORY[0x1E69E7CC0];
        return;
      }
    }

    else
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v69)
      {
        goto LABEL_57;
      }
    }

    v98 = v60;
    v70 = &v98;
    sub_1D21AFBD0(0, v69 & ~(v69 >> 63), 0);
    if ((v69 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_59:
    v81 = sub_1D2250F4C();
LABEL_45:
    v35 = &off_1E83FA000;
    v33 = &off_1E83FA000;
    v97 = v53;
    if (v81)
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v82 = MEMORY[0x1D3898A80](0, v70);
      }

      else
      {
        if (!*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_62;
        }

        v82 = *(v70 + 32);
      }

      v83 = v82;

      v84 = [v83 mapping];

      if (v84)
      {
        [v84 density];
        v86 = v85;

        if (v86 > -1.0)
        {
          v87 = swift_allocObject();
          v88 = MEMORY[0x1E69E6448];
          *(v87 + 16) = xmmword_1D22526E0;
          v89 = MEMORY[0x1E69E64A8];
          *(v87 + 56) = v88;
          *(v87 + 64) = v89;
          *(v87 + 32) = v86;
          sub_1D2250C5C();
          MEMORY[0x1D3898510]();
          if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_52:
            sub_1D2250B3C();

            v22 = v99;
            goto LABEL_55;
          }

LABEL_62:
          sub_1D2250B1C();
          goto LABEL_52;
        }
      }
    }

    else
    {
    }

    v22 = v96;
LABEL_55:
    v34 = &off_1E83FA000;
  }

  v71 = 0;
  v72 = v98;
  do
  {
    if ((v68 & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x1D3898A80](v71, v68);
    }

    else
    {
      v73 = *(v68 + 8 * v71 + 32);
    }

    v74 = v73;
    v75 = [v73 identifier];
    [v74 quality];
    v77 = v76;

    v98 = v72;
    v79 = *(v72 + 16);
    v78 = *(v72 + 24);
    if (v79 >= v78 >> 1)
    {
      sub_1D21AFBD0((v78 > 1), v79 + 1, 1);
      v72 = v98;
    }

    ++v71;
    *(v72 + 16) = v79 + 1;
    v80 = v72 + 16 * v79;
    *(v80 + 32) = v75;
    *(v80 + 40) = v77;
  }

  while (v69 != v71);

  *v90 = v72;
}

void sub_1D2225750(unint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, unint64_t *a9@<X8>, uint64_t a10, unint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v25 = v24;
  v98 = a8;
  v96 = a7;
  v92 = a9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v99 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v89 - v35;
  if ((a2 & 1) == 0)
  {
    v40 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
    v41 = a4;
    v42 = sub_1D225092C();
    v38 = [v40 0x1FA942256];

    sub_1D2174E10(0, &unk_1EDC886D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D22526F0;
    *(v43 + 56) = MEMORY[0x1E69E6530];
    *(v43 + 64) = MEMORY[0x1E69E65A8];
    v44 = MEMORY[0x1E69E7290];
    *(v43 + 32) = a1;
    v45 = MEMORY[0x1E69E72E8];
    *(v43 + 96) = v44;
    *(v43 + 104) = v45;
    *(v43 + 72) = a3;
    v46 = sub_1D2250C5C();
    [v38 setPredicate_];

    [v38 setFetchLimit_];
    v47 = *(a4 + 16);
    type metadata accessor for VUIndexObservation();
    v48 = v47;
    v49 = sub_1D2250DDC();
    if (v24)
    {

      return;
    }

    v78 = v49;

    v70 = v78;
    if (v78 >> 62)
    {
      v70 = v78;
      a4 = v41;
      if (sub_1D2250F4C())
      {
        goto LABEL_38;
      }
    }

    else
    {
      v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a4 = v41;
      if (v79)
      {
LABEL_38:
        v97 = a1;
        v95 = a3;
        if ((v70 & 0xC000000000000001) != 0)
        {
          goto LABEL_65;
        }

        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v80 = *(v70 + 32);
          goto LABEL_41;
        }

        __break(1u);
        return;
      }
    }

    v85 = sub_1D225080C();
    v86 = sub_1D2250CDC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 134217984;
      *(v87 + 4) = a1;
      _os_log_impl(&dword_1D2171000, v85, v86, "Unable to update embedding: no existing embedding available for %ld", v87, 0xCu);
      MEMORY[0x1D3899640](v87, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    *v88 = 2;
    swift_willThrow();

    return;
  }

  v95 = a3;
  if (a6)
  {
    a5 = sub_1D222C104(0x7FFFFFFFFFFFFFFEuLL) + 1;
  }

  type metadata accessor for VUIndexObservation();
  v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v97 = a5;
  while (1)
  {
    v38 = v37;
    v91 = v98 >> 60;
    if (v98 >> 60 == 15)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_1D225045C();
    }

    [v38 setEmbedding_];

    v90 = a11 >> 60;
    v93 = a14;
    v94 = a4;
    if (a11 >> 60 == 15)
    {
      v50 = 0;
    }

    else
    {
      v50 = sub_1D225045C();
    }

    v96 = v25;
    [v38 setContextualEmbedding_];

    [v38 setIdentifier_];
    v98 = a12;
    [v38 setType_];
    sub_1D2174DA8(a13, v36, &qword_1EC6D2110);
    v51 = sub_1D225055C();
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    v54 = 0;
    if (v53(v36, 1, v51) != 1)
    {
      v54 = sub_1D225052C();
      (*(v52 + 8))(v36, v51);
    }

    [v38 setMoment_];

    v55 = v99;
    sub_1D2174DA8(v93, v99, &qword_1EC6D2110);
    if (v53(v55, 1, v51) == 1)
    {
      v56 = 0;
    }

    else
    {
      v57 = v55;
      v56 = sub_1D225052C();
      (*(v52 + 8))(v57, v51);
    }

    [v38 setAsset_];

    if (a16)
    {
      v58 = sub_1D225092C();
    }

    else
    {
      v58 = 0;
    }

    [v38 setAssetSuffix_];

    if (a17 == 3)
    {
      v59 = 2;
    }

    else
    {
      v59 = a17;
    }

    [v38 setSource_];
    LODWORD(v60) = a18;
    if ((a18 & 0x100000000) != 0)
    {
      *&v60 = 1.0;
    }

    [v38 setConfidence_];
    LODWORD(v61) = a19;
    if ((a19 & 0x100000000) != 0)
    {
      *&v61 = 1.0;
    }

    [v38 setQuality_];
    [v38 setIsPrimary_];
    [v38 setClient_];
    type metadata accessor for VUIndexMapping();
    v62 = v94;
    v36 = &off_1E83FA000;
    v63 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    [v38 setMapping_];

    v64 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
    v65 = sub_1D225092C();
    v66 = [v64 initWithEntityName_];

    sub_1D2174E10(0, &unk_1EDC886D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1D22526E0;
    *(v67 + 56) = MEMORY[0x1E69E6530];
    *(v67 + 64) = MEMORY[0x1E69E65A8];
    *(v67 + 32) = v98;
    v68 = sub_1D2250C5C();
    [v66 setPredicate_];

    v69 = *(v62 + 16);
    type metadata accessor for VUIndexSubset();
    v70 = v69;
    v71 = v96;
    v72 = sub_1D2250DDC();
    v25 = v71;
    if (v71)
    {

      return;
    }

    v73 = v72;

    v74 = v73;
    if (v73 >> 62)
    {
      break;
    }

    v75 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a4 = v97;
    if (!v75)
    {
      goto LABEL_43;
    }

LABEL_32:
    if ((v74 & 0xC000000000000001) != 0)
    {
      v76 = MEMORY[0x1D3898A80](0, v74);
      goto LABEL_35;
    }

    if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v76 = *(v74 + 32);
LABEL_35:
      v77 = v76;

      goto LABEL_44;
    }

    __break(1u);
LABEL_65:
    v80 = MEMORY[0x1D3898A80](0, v70);
LABEL_41:
    v37 = v80;
  }

  v81 = sub_1D2250F4C();
  v74 = v73;
  a4 = v97;
  if (v81)
  {
    goto LABEL_32;
  }

LABEL_43:

  v77 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  [v77 setType_];
LABEL_44:
  v82 = v90;
  v84 = v91 < 0xF || v90 > 0xE;
  if ((a22 & 1) == 0 && v84)
  {
    [v77 setEmbeddingRevision_];
  }

  if (v82 <= 0xE && (a24 & 1) == 0)
  {
    [v77 setContextualEmbeddingRevision_];
  }

  if (a20)
  {
    [v77 setStaleObservations_];
  }

  *v92 = a4;
}

void sub_1D22260D8(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v6 = sub_1D225092C();
  v7 = [v5 initWithEntityName_];

  [v7 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28F8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D22526F0;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 32) = 1701869940;
  *(v8 + 40) = 0xE400000000000000;
  *(v8 + 88) = v9;
  *(v8 + 56) = v9;
  *(v8 + 64) = 0x72616D6972507369;
  *(v8 + 72) = 0xE900000000000079;
  v10 = sub_1D2250AEC();

  [v7 setPropertiesToFetch_];

  v64 = MEMORY[0x1E69E7CD0];
  v63 = MEMORY[0x1E69E7CD0];
  v11 = *(a2 + 16);
  type metadata accessor for VUIndexObservation();
  v12 = v11;
  v13 = sub_1D2250DDC();
  v14 = v2;
  if (v2)
  {

    return;
  }

  v15 = v13;

  if (v15 >> 62)
  {
    goto LABEL_74;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v60 = v14;
  v61 = a2;
  v57 = v7;
  if (!v16)
  {

    v26 = MEMORY[0x1E69E7CD0];
    goto LABEL_24;
  }

  if (v16 >= 1)
  {
    v17 = 0;
    v14 = v15 & 0xC000000000000001;
    v7 = &off_1E83FA000;
    while (1)
    {
      if (v14)
      {
        v18 = MEMORY[0x1D3898A80](v17, v15);
      }

      else
      {
        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      if ([v18 isPrimary])
      {
        v20 = [v19 type];
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_69;
        }

        if (v20 > 0xFF)
        {
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        sub_1D2198EA4(&v62, v20);
      }

      v21 = [v19 tags];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 count];

        v24 = v23 < 1;
        a2 = v61;
        if (!v24)
        {
          v25 = [v19 type];
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_71;
          }

          if (v25 > 0xFF)
          {
            __break(1u);
LABEL_22:

            v26 = v64;
LABEL_24:
            v7 = 0;
            v27 = v26 + 56;
            v28 = 1 << *(v26 + 32);
            v29 = -1;
            if (v28 < 64)
            {
              v29 = ~(-1 << v28);
            }

            v30 = v29 & *(v26 + 56);
            v14 = (v28 + 63) >> 6;
            for (i = v26; ; v26 = i)
            {
              if (v30)
              {
                goto LABEL_34;
              }

              do
              {
                v32 = v7 + 1;
                if (__OFADD__(v7, 1))
                {
                  __break(1u);
                  goto LABEL_68;
                }

                if (v32 >= v14)
                {

                  v42 = 0;
                  v7 = v63 + 56;
                  v59 = v63;
                  v43 = 1 << *(v63 + 32);
                  v44 = -1;
                  if (v43 < 64)
                  {
                    v44 = ~(-1 << v43);
                  }

                  v45 = v44 & *(v63 + 56);
                  v14 = (v43 + 63) >> 6;
                  while (2)
                  {
                    if (!v45)
                    {
                      while (1)
                      {
                        v47 = v42 + 1;
                        if (__OFADD__(v42, 1))
                        {
                          break;
                        }

                        if (v47 >= v14)
                        {

                          return;
                        }

                        v45 = *(v7 + 8 * v47);
                        ++v42;
                        if (v45)
                        {
                          v42 = v47;
                          goto LABEL_54;
                        }
                      }

LABEL_68:
                      __break(1u);
LABEL_69:
                      __break(1u);
                      goto LABEL_70;
                    }

LABEL_54:
                    v48 = *(*(v59 + 48) + (__clz(__rbit64(v45)) | (v42 << 6)));
                    v49 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
                    v50 = sub_1D225092C();
                    v15 = [v49 initWithEntityName_];

                    sub_1D2174E10(0, &unk_1EDC886D0);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
                    v51 = swift_allocObject();
                    *(v51 + 16) = xmmword_1D22526E0;
                    *(v51 + 56) = MEMORY[0x1E69E6530];
                    *(v51 + 64) = MEMORY[0x1E69E65A8];
                    *(v51 + 32) = v48;
                    v52 = sub_1D2250C5C();
                    [v15 setPredicate_];

                    v53 = *(a2 + 16);
                    type metadata accessor for VUIndexSubset();
                    v54 = v53;
                    v55 = sub_1D2250DDC();
                    if (v60)
                    {

                      return;
                    }

                    a2 = v55;

                    if (a2 >> 62)
                    {
                      if (!sub_1D2250F4C())
                      {
                        goto LABEL_47;
                      }

LABEL_57:
                      if ((a2 & 0xC000000000000001) != 0)
                      {
                        v56 = MEMORY[0x1D3898A80](0, a2);
                      }

                      else
                      {
                        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_73;
                        }

                        v56 = *(a2 + 32);
                      }

                      v46 = v56;

                      a2 = v61;
                    }

                    else
                    {
                      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_57;
                      }

LABEL_47:

                      a2 = v61;
                      v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
                      [v46 setType_];
                    }

                    v45 &= v45 - 1;
                    [v46 setStaleTags_];

                    continue;
                  }
                }

                v30 = *(v27 + 8 * v32);
                ++v7;
              }

              while (!v30);
              v7 = v32;
LABEL_34:
              v15 = *(*(v26 + 48) + (__clz(__rbit64(v30)) | (v7 << 6)));
              v33 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
              v34 = sub_1D225092C();
              a2 = [v33 initWithEntityName_];

              sub_1D2174E10(0, &unk_1EDC886D0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
              v35 = swift_allocObject();
              *(v35 + 16) = xmmword_1D22526E0;
              *(v35 + 56) = MEMORY[0x1E69E6530];
              *(v35 + 64) = MEMORY[0x1E69E65A8];
              *(v35 + 32) = v15;
              v36 = sub_1D2250C5C();
              [a2 setPredicate_];

              v37 = *(v61 + 16);
              type metadata accessor for VUIndexSubset();
              v38 = v37;
              v39 = sub_1D2250DDC();
              if (v60)
              {

                return;
              }

              v40 = v39;

              if (v40 >> 62)
              {
                if (!sub_1D2250F4C())
                {
                  goto LABEL_27;
                }

LABEL_37:
                if ((v40 & 0xC000000000000001) != 0)
                {
                  v41 = MEMORY[0x1D3898A80](0, v40);
                  goto LABEL_40;
                }

                if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v41 = *(v40 + 32);
LABEL_40:
                  v31 = v41;

                  goto LABEL_28;
                }

LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                v16 = sub_1D2250F4C();
                goto LABEL_5;
              }

              if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_37;
              }

LABEL_27:

              v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
              [v31 setType_];
LABEL_28:
              v30 &= v30 - 1;
              [v31 setStaleObservations_];

              a2 = v61;
            }
          }

          sub_1D2198EA4(&v62, v25);
        }
      }

      ++v17;
      [*(a2 + 16) deleteObject_];

      if (v16 == v17)
      {
        goto LABEL_22;
      }
    }
  }

  __break(1u);
}

void sub_1D2226950(uint64_t a1, __int16 a2, id *a3)
{
  v71 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v65 - v7;
  v9 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v10 = sub_1D225092C();
  v11 = [v9 initWithEntityName_];

  v12 = sub_1D2174E10(0, &unk_1EDC886D0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D22526F0;
  v15 = sub_1D225051C();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1D217A924();
  v18 = MEMORY[0x1E69E7290];
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v19 = MEMORY[0x1E69E72E8];
  *(v14 + 96) = v18;
  *(v14 + 104) = v19;
  *(v14 + 72) = a2;
  v20 = v71;
  v21 = sub_1D2250C5C();
  [v11 setPredicate_];

  v22 = v20[2];
  type metadata accessor for VUIndexTag();
  v23 = v22;
  v24 = v75;
  v25 = sub_1D2250DDC();

  if (v24)
  {

    return;
  }

  v66 = v13;
  v67 = v12;
  v75 = v25;
  v68 = 0;
  if (v25 >> 62)
  {
LABEL_37:
    v26 = sub_1D2250F4C();
    v27 = v8;
    if (v26)
    {
      goto LABEL_5;
    }

LABEL_38:

    return;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = v8;
  if (!v26)
  {
    goto LABEL_38;
  }

LABEL_5:
  v65 = v11;
  v28 = 0;
  v73 = v26;
  v74 = v75 & 0xC000000000000001;
  v69 = v75 & 0xFFFFFFFFFFFFFF8;
  v11 = &qword_1EC6D2110;
  v29 = v71;
  do
  {
    if (v74)
    {
      v31 = MEMORY[0x1D3898A80](v28, v75);
    }

    else
    {
      v8 = v75;
      if (v28 >= *(v69 + 16))
      {
        goto LABEL_36;
      }

      v31 = *(v75 + 8 * v28 + 32);
    }

    v32 = v31;
    v33 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v34 = [v31 observation];
    v35 = v34;
    if (v34)
    {
      v72 = [v34 type];
    }

    else
    {
      v72 = 0;
    }

    v36 = [v32 observation];
    if (v36)
    {
      v37 = v27;
      v38 = v36;
      v39 = [v36 asset];

      if (v39)
      {
        v40 = v70;
        sub_1D225054C();

        v41 = 0;
      }

      else
      {
        v41 = 1;
        v40 = v70;
      }

      v43 = sub_1D225055C();
      v44 = *(v43 - 8);
      (*(v44 + 56))(v40, v41, 1, v43);
      v45 = v40;
      v27 = v37;
      v46 = v37;
      v11 = &qword_1EC6D2110;
      v47 = &unk_1D22527C0;
      sub_1D21A6938(v45, v46, &qword_1EC6D2110);
      v48 = (*(v44 + 48))(v27, 1, v43);
      v29 = v71;
      if (v48 != 1)
      {
        sub_1D2176170(v27, &qword_1EC6D2110);
        v8 = v29;
        v30 = v29[2];
        [v30 deleteObject_];
        goto LABEL_7;
      }
    }

    else
    {
      v42 = sub_1D225055C();
      (*(*(v42 - 8) + 56))(v27, 1, 1, v42);
    }

    v49 = v27;
    sub_1D2176170(v27, &qword_1EC6D2110);
    v8 = v29;
    v50 = v29[2];
    v51 = [v32 observation];
    if (!v51)
    {
      goto LABEL_47;
    }

    v30 = v51;
    [v50 deleteObject_];

    v11 = &qword_1EC6D2110;
    v27 = v49;
    v47 = &unk_1D22527C0;
LABEL_7:

    ++v28;
    v29 = v8;
  }

  while (v33 != v73);

  if (!v35)
  {

    return;
  }

  v52 = v68;
  v53 = v72;
  if ((v72 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v47 = &off_1E83FA000;
  if (v72 > 0xFF)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v54 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v55 = sub_1D225092C();
  v27 = [v54 initWithEntityName_];

  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1D22526E0;
  v57 = MEMORY[0x1E69E65A8];
  *(v56 + 56) = MEMORY[0x1E69E6530];
  *(v56 + 64) = v57;
  *(v56 + 32) = v53;
  v58 = sub_1D2250C5C();
  [v27 setPredicate_];

  v59 = *(v8 + 2);
  type metadata accessor for VUIndexSubset();
  v60 = v59;
  v61 = sub_1D2250DDC();
  v47 = v65;
  if (v52)
  {
    goto LABEL_44;
  }

  v52 = v61;

  v62 = v52;
  if (!(v52 >> 62))
  {
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_42:

    v60 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    [v60 setType_];
LABEL_43:
    [v60 setStaleTags_];
LABEL_44:

    return;
  }

LABEL_41:
  v64 = sub_1D2250F4C();
  v62 = v52;
  if (!v64)
  {
    goto LABEL_42;
  }

LABEL_30:
  if ((v62 & 0xC000000000000001) != 0)
  {
    v63 = MEMORY[0x1D3898A80](0, v62);
    goto LABEL_33;
  }

  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v63 = *(v62 + 32);
LABEL_33:
    v60 = v63;

    goto LABEL_43;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_1D22270D0(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  v11 = MEMORY[0x1E69E7CC8];
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D22526F0;
  v7 = MEMORY[0x1E69E65A8];
  *(v6 + 56) = MEMORY[0x1E69E6530];
  *(v6 + 64) = v7;
  *(v6 + 32) = a1;
  *(v6 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
  *(v6 + 104) = sub_1D2177F3C(&qword_1EDC869D0, &qword_1EC6D21D8);
  *(v6 + 72) = a2;

  v10 = sub_1D2250C5C();
  v8 = *(v3 + 16);
  sub_1D2250DBC();
  sub_1D21A65D8(aIdentifier_8);

  return v11;
}

uint64_t sub_1D22272C0(uint64_t a1, id a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = [a2 partner];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a3;
  *a3 = 0x8000000000000000;
  sub_1D21B9BE8(v10, a1, isUniquelyReferenced_nonNull_native);
  *a3 = v19;

  [a2 similarity];
  v13 = v12;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a4;
  *a4 = 0x8000000000000000;
  sub_1D21B9EA4(a1, v14, v13);
  *a4 = v20;

  [a2 density];
  v16 = v15;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *a5;
  *a5 = 0x8000000000000000;
  sub_1D21B9EA4(a1, v17, v16);
  *a5 = v21;
}

uint64_t sub_1D222740C(unsigned __int8 a1)
{
  v2 = v1;
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D22526E0;
  v5 = MEMORY[0x1E69E65A8];
  *(v4 + 56) = MEMORY[0x1E69E6530];
  *(v4 + 64) = v5;
  *(v4 + 32) = a1;
  v8 = sub_1D2250C5C();
  v6 = *(v2 + 16);
  sub_1D2250DBC();
  sub_1D21A65D8(aIdentifier_9);

  return 0;
}

unint64_t sub_1D22275AC(unint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = result;
  if (*(a3 + 16) && (result = sub_1D2176758(result), (v16 & 1) != 0) && (v17 = *(*(a3 + 56) + 4 * result), result = [a2 density], v17 != *&v18))
  {
    *&v18 = v17;
    result = [a2 setDensity_];
    v19 = 1;
    if (!*(a4 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
    if (!*(a4 + 16))
    {
      goto LABEL_9;
    }
  }

  result = sub_1D2176758(v14);
  if (v20)
  {
    v21 = *(*(a4 + 56) + 8 * result);
    result = [a2 partner];
    if (v21 != result)
    {
      result = [a2 setPartner_];
      v19 = 1;
    }
  }

LABEL_9:
  if (*(a5 + 16))
  {
    result = sub_1D2176758(v14);
    if (v22)
    {
      v23 = *(*(a5 + 56) + 4 * result);
      result = [a2 similarity];
      if (v23 != *&v24)
      {
        *&v24 = v23;
        result = [a2 setSimilarity_];
        v19 = 1;
      }
    }
  }

  if (*(a6 + 16))
  {
    result = sub_1D2176758(v14);
    if (v25)
    {
      v26 = *(*(a6 + 56) + 8 * result);
      result = [a2 label];
      if (v26 != result)
      {
        result = [a2 setLabel_];
        v19 = 1;
      }
    }
  }

  if (*(a7 + 16) && (result = sub_1D2176758(v14), (v27 & 1) != 0) && (v28 = *(*(a7 + 56) + 4 * result), result = [a2 diversity], v28 != *&v29))
  {
    *&v29 = v28;
    result = [a2 setDiversity_];
  }

  else if (!v19)
  {
    return result;
  }

  if (__OFADD__(*a8, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a8;
  }

  return result;
}

void sub_1D22277C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v84 = a3;
  v85 = a5;
  v86 = a4;
  v7 = sub_1D225055C();
  v8 = *(v7 - 8);
  v88 = v7;
  v89 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v80 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D80);
  MEMORY[0x1EEE9AC00](v87);
  v82 = v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v81 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (v74 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v74 - v17;
  v19 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v20 = sub_1D225092C();
  v21 = [v19 initWithEntityName_];

  v22 = sub_1D2174E10(0, &unk_1EDC886D0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E6530];
  v83 = xmmword_1D22526E0;
  *(v24 + 16) = xmmword_1D22526E0;
  v26 = MEMORY[0x1E69E65A8];
  *(v24 + 56) = v25;
  *(v24 + 64) = v26;
  *(v24 + 32) = a1;
  v27 = sub_1D2250C5C();
  [v21 setPredicate_];

  v28 = sub_1D2250AEC();
  [v21 setRelationshipKeyPathsForPrefetching_];

  [v21 setFetchLimit_];
  v29 = *(a2 + 16);
  type metadata accessor for VUIndexObservation();
  v30 = v29;
  v31 = v90;
  v32 = sub_1D2250DDC();
  if (v31)
  {

    return;
  }

  v33 = v32;
  v75 = v22;
  v76 = v21;
  v78 = v16;
  v79 = v18;
  v34 = v87;
  v35 = v88;
  v74[1] = v23;
  v77 = a2;

  if (v33 >> 62)
  {
    v36 = sub_1D2250F4C();
  }

  else
  {
    v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v89;
  v39 = v78;
  v38 = v79;
  if (!v36)
  {

    v44 = sub_1D225080C();
    v45 = sub_1D2250CDC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D2171000, v44, v45, "Unable to find observation for given identifier", v46, 2u);
      MEMORY[0x1D3899640](v46, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    *v47 = 2;
    swift_willThrow();

    return;
  }

  if ((v33 & 0xC000000000000001) != 0)
  {
    v40 = MEMORY[0x1D3898A80](0, v33);
  }

  else
  {
    if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v40 = *(v33 + 32);
  }

  v41 = v40;

  v33 = v41;
  v90 = sub_1D2228300();
  if (!v90)
  {
    v43 = v84;
    goto LABEL_16;
  }

  v42 = v84;
  if (v84 == 1)
  {

    v43 = 1;
LABEL_16:
    LODWORD(v88) = v43;
    type metadata accessor for VUIndexTag();
    v35 = v77;
    v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    [v34 setObservation_];
    [v34 setResolved_];
    v48 = v85;
    v39 = v75;
    v16 = &off_1E83FA000;
    goto LABEL_30;
  }

  v87 = v33;
  v49 = [v90 uuid];
  LODWORD(v88) = v42;
  if (v49)
  {
    v50 = v49;
    sub_1D225054C();

    v51 = *(v37 + 56);
    v51(v38, 0, 1, v35);
  }

  else
  {
    v51 = *(v37 + 56);
    v51(v38, 1, 1, v35);
  }

  (*(v37 + 16))(v39, v86, v35);
  v51(v39, 0, 1, v35);
  v52 = v34[12];
  v53 = v37;
  v54 = v82;
  sub_1D2174DA8(v38, v82, &qword_1EC6D2110);
  sub_1D2174DA8(v39, v54 + v52, &qword_1EC6D2110);
  v55 = *(v53 + 48);
  if (v55(v54, 1, v35) == 1)
  {
    sub_1D2176170(v39, &qword_1EC6D2110);
    sub_1D2176170(v38, &qword_1EC6D2110);
    if (v55(v54 + v52, 1, v35) == 1)
    {
      sub_1D2176170(v54, &qword_1EC6D2110);
      v35 = v77;
      v48 = v85;
      v33 = v87;
      v39 = v75;
      v16 = &off_1E83FA000;
      v56 = v90;
LABEL_27:
      v61 = [v56 type];
      if (v61 == v88 && [v56 isPrimary] == (v48 & 1))
      {
        v16 = v33;
        v72 = v76;
LABEL_47:

        return;
      }

      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v57 = v81;
  sub_1D2174DA8(v54, v81, &qword_1EC6D2110);
  if (v55(v54 + v52, 1, v35) == 1)
  {
    sub_1D2176170(v78, &qword_1EC6D2110);
    sub_1D2176170(v79, &qword_1EC6D2110);
    (*(v89 + 8))(v57, v35);
LABEL_25:
    sub_1D2176170(v54, &unk_1EC6D2D80);
    v35 = v77;
    v48 = v85;
    v33 = v87;
    v39 = v75;
    v16 = &off_1E83FA000;
    v56 = v90;
    goto LABEL_29;
  }

  v58 = v89;
  v59 = v80;
  (*(v89 + 32))(v80, v54 + v52, v35);
  sub_1D2178130(&qword_1EDC87220, MEMORY[0x1E69695A8]);
  v84 = sub_1D225091C();
  v60 = *(v58 + 8);
  v60(v59, v35);
  sub_1D2176170(v78, &qword_1EC6D2110);
  sub_1D2176170(v79, &qword_1EC6D2110);
  v60(v57, v35);
  sub_1D2176170(v54, &qword_1EC6D2110);
  v35 = v77;
  v48 = v85;
  v33 = v87;
  v39 = v75;
  v16 = &off_1E83FA000;
  v56 = v90;
  if (v84)
  {
    goto LABEL_27;
  }

LABEL_29:
  v34 = v56;
LABEL_30:
  v38 = &off_1E83FA000;
  [v34 setType_];
  v62 = sub_1D225052C();
  [v34 setUuid_];

  [v34 setIsPrimary_];
  v90 = v34;

  v63 = [v33 type];
  if ((v63 & 0x80000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v34 = v63;
  if (v63 > 0xFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    v73 = sub_1D2250F4C();
    v70 = v33;
    if (v73)
    {
      goto LABEL_34;
    }

LABEL_45:

    v72 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    [v72 v38[394]];
    goto LABEL_46;
  }

  v64 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v65 = sub_1D225092C();
  v16 = [v64 v16[366]];

  v66 = swift_allocObject();
  *(v66 + 16) = v83;
  *(v66 + 56) = MEMORY[0x1E69E6530];
  *(v66 + 64) = MEMORY[0x1E69E65A8];
  *(v66 + 32) = v34;
  v67 = sub_1D2250C5C();
  [(SEL *)v16 setPredicate:v67];

  v68 = *(v35 + 16);
  type metadata accessor for VUIndexSubset();
  v69 = v68;
  v39 = v33;
  v33 = sub_1D2250DDC();

  v70 = v33;
  if (v33 >> 62)
  {
    goto LABEL_44;
  }

  if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_45;
  }

LABEL_34:
  if ((v70 & 0xC000000000000001) != 0)
  {
    v71 = MEMORY[0x1D3898A80](0, v70);
    goto LABEL_37;
  }

  if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v71 = *(v70 + 32);
LABEL_37:
    v72 = v71;

LABEL_46:
    [v72 setStaleTags_];

    v56 = v90;
    goto LABEL_47;
  }

  __break(1u);
}

id sub_1D2228300()
{
  result = [v0 tags];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result allObjects];

  v4 = sub_1D2250AFC();
  v5 = sub_1D218C634(v4);

  if (!v5)
  {
    return 0;
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2250F4C())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3898A80](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v8 type] == 1)
      {
      }

      else
      {
        sub_1D225109C();
        sub_1D22510CC();
        sub_1D22510DC();
        sub_1D22510AC();
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  v15 = sub_1D21A1B90(v11);
  sub_1D2218AE4(&v15);

  v12 = v15;
  if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
  {
    if (sub_1D2250F4C())
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (!*(v15 + 16))
  {
LABEL_27:

    return 0;
  }

LABEL_22:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1D3898A80](0, v12);
    goto LABEL_25;
  }

  if (*(v12 + 16))
  {
    v13 = *(v12 + 32);
LABEL_25:
    v14 = v13;

    return v14;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1D2228554(uint64_t a1, uint64_t a2)
{
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_1D225092C();
  v8 = [v6 initWithEntityName_];

  v9 = sub_1D2174E10(0, &unk_1EDC886D0);
  i = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E6530];
  *(v11 + 16) = xmmword_1D22526E0;
  v13 = MEMORY[0x1E69E65A8];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = a1;
  v14 = sub_1D2250C5C();
  [v8 setPredicate_];

  [v8 setFetchLimit_];
  v15 = *(a2 + 16);
  type metadata accessor for VUIndexObservation();
  v16 = v15;
  v17 = sub_1D2250DDC();
  if (v2)
  {

    v8 = v16;
LABEL_3:

    return;
  }

  v18 = v17;

  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_21:

    v26 = sub_1D225080C();
    v27 = sub_1D2250CDC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D2171000, v26, v27, "Unable to find observation for given identifier", v28, 2u);
      MEMORY[0x1D3899640](v28, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    *v29 = 2;
    swift_willThrow();
    goto LABEL_3;
  }

  if (!sub_1D2250F4C())
  {
    goto LABEL_21;
  }

LABEL_6:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1D3898A80](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v19 = *(v18 + 32);
  }

  v20 = v19;

  v21 = [v20 tags];
  if (!v21 || (v22 = v21, v16 = [v21 allObjects], v22, v23 = sub_1D2250AFC(), v16, v24 = sub_1D218C634(v23), , !v24))
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  v42 = i;
  if (v24 >> 62)
  {
    v3 = sub_1D2250F4C();
    if (!v3)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v3 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_26;
    }
  }

  if (v3 < 1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1D3898A80](i, v24);
    }

    else
    {
      v25 = *(v24 + 8 * i + 32);
    }

    v16 = v25;
    [*(a2 + 16) deleteObject_];
  }

LABEL_26:

  v9 = v20;
  v30 = [v20 type];
  if ((v30 & 0x80000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  i = v30;
  v31 = MEMORY[0x1E69E6530];
  if (v30 > 0xFF)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v32 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v33 = sub_1D225092C();
  v3 = [v32 initWithEntityName_];

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D22526E0;
  *(v34 + 56) = v31;
  *(v34 + 64) = MEMORY[0x1E69E65A8];
  *(v34 + 32) = i;
  v35 = sub_1D2250C5C();
  [v3 setPredicate_];

  v36 = *(a2 + 16);
  type metadata accessor for VUIndexSubset();
  v37 = v36;
  v16 = sub_1D2250DDC();

  v38 = v16;
  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_39:

    v40 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    [v40 setType_];
    goto LABEL_40;
  }

LABEL_38:
  v41 = sub_1D2250F4C();
  v38 = v16;
  if (!v41)
  {
    goto LABEL_39;
  }

LABEL_30:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1D3898A80](0, v38);
    goto LABEL_33;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v38 + 32);
LABEL_33:
    v40 = v39;

LABEL_40:
    [v40 setStaleTags_];

    return;
  }

  __break(1u);
}

void sub_1D2228B4C(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_1D225092C();
  v8 = [v6 initWithEntityName_];

  v9 = *(a1 + 16);
  type metadata accessor for VUIndexTag();
  v10 = v9;
  v11 = sub_1D2250DDC();
  if (v1)
  {

    return;
  }

  v12 = v11;

  if (v12 >> 62)
  {
    v13 = sub_1D2250F4C();
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_5:
      v27 = 0;
      v28 = v8;
      if (v13 < 1)
      {
        __break(1u);
      }

      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1D3898A80](v14, v12);
        }

        else
        {
          v17 = *(v12 + 8 * v14 + 32);
        }

        v18 = v17;
        [*(a1 + 16) deleteObject_];
        v19 = [v18 observation];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 asset];
          if (v21)
          {
            v22 = v21;
            sub_1D225054C();

            v23 = sub_1D225055C();
            (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
            sub_1D2176170(v5, &qword_1EC6D2110);
            goto LABEL_9;
          }

          v15 = sub_1D225055C();
          (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
          sub_1D2176170(v5, &qword_1EC6D2110);
          v16 = *(a1 + 16);
          [v16 deleteObject_];
        }

LABEL_9:
        if (v13 == ++v14)
        {

          v8 = v28;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_19:
  if ([*(a1 + 16) hasChanges])
  {
    v24 = *(a1 + 16);
    v29[0] = 0;
    if ([v24 save_])
    {
      v25 = v29[0];
    }

    else
    {
      v26 = v29[0];
      sub_1D22502FC();

      swift_willThrow();
    }
  }
}

void sub_1D2228ED0(unint64_t a1)
{
  v2 = v1;
  v73[1] = *MEMORY[0x1E69E9840];
  v63 = sub_1D22504FC();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  while (1)
  {
    v66 = v5;
    v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);

    v7 = sub_1D225092C();

    v8 = [v6 initWithEntityName_];

    [v8 setIncludesPropertyValues_];
    v9 = *(a1 + 16);
    sub_1D2174E10(0, &unk_1EC6D2D40);
    v10 = v9;
    v11 = sub_1D2250DDC();
    if (v2)
    {

      swift_arrayDestroy();
      return;
    }

    v12 = v11;
    v64 = v8;
    v13 = a1;

    v65 = 0;
    if (!(v12 >> 62))
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        break;
      }

      goto LABEL_2;
    }

    v14 = sub_1D2250F4C();
    if (v14)
    {
      break;
    }

LABEL_2:
    v5 = v66 + 1;

    v2 = v65;
    a1 = v13;
    if (v5 == 4)
    {
      swift_arrayDestroy();
      v19 = &off_1E83FA000;
      v20 = [*(v13 + 16) persistentStoreCoordinator];
      if (!v20)
      {
        goto LABEL_60;
      }

      v21 = v20;
      v22 = [v20 persistentStores];

      sub_1D2174E10(0, &qword_1EDC886C0);
      v12 = sub_1D2250AFC();

      if (v12 >> 62)
      {
LABEL_58:
        if (sub_1D2250F4C())
        {
          goto LABEL_20;
        }
      }

      else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_20:
        if ((v12 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1D3898A80](0, v12);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v23 = *(v12 + 32);
        }

        v24 = v23;

        v25 = [*(a1 + 16) v19[302]];
        v60 = v24;
        if (!v25)
        {
          goto LABEL_27;
        }

        v12 = v25;
        v26 = [v25 metadataForPersistentStore_];

        v27 = sub_1D225089C();
        v73[0] = v27;

        goto LABEL_28;
      }

LABEL_59:

      goto LABEL_60;
    }
  }

  v15 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1D3898A80](v15, v12);
    }

    else
    {
      if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v16 = *(v12 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    [*(v13 + 16) deleteObject_];

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  v73[0] = 0;
  v27 = sub_1D21A2BEC(MEMORY[0x1E69E7CC0]);
LABEL_28:
  v28 = 0;
  v66 = v27;
  v30 = *(v27 + 64);
  v19 = (v27 + 64);
  v29 = v30;
  v31 = 1 << *(v19 - 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  a1 = v32 & v29;
  v33 = (v31 + 63) >> 6;
  v64 = v19;
  while (1)
  {
    if (!a1)
    {
      if (v33 <= v28 + 1)
      {
        v35 = v28 + 1;
      }

      else
      {
        v35 = v33;
      }

      v36 = v35 - 1;
      while (1)
      {
        v34 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v34 >= v33)
        {
          a1 = 0;
          v69 = 0u;
          v70 = 0u;
          v28 = v36;
          v68 = 0u;
          goto LABEL_44;
        }

        a1 = v19[v34];
        ++v28;
        if (a1)
        {
          v28 = v34;
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_58;
    }

    v34 = v28;
LABEL_43:
    v37 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v38 = v37 | (v34 << 6);
    v39 = (*(v66 + 48) + 16 * v38);
    v40 = *v39;
    v12 = v39[1];
    sub_1D21763A8(*(v66 + 56) + 32 * v38, v67);
    *&v68 = v40;
    *(&v68 + 1) = v12;
    sub_1D21A6450(v67, &v69);

    v19 = v64;
LABEL_44:
    v71 = v68;
    v72[0] = v69;
    v72[1] = v70;
    v41 = *(&v68 + 1);
    if (!*(&v68 + 1))
    {
      break;
    }

    v42 = v71;
    if (sub_1D222969C())
    {
      if (v73[0])
      {
        v12 = v73;
        sub_1D21FA484(v42, v41, &v68);
      }

      else
      {

        v68 = 0u;
        v69 = 0u;
      }

      sub_1D2176170(&v68, &unk_1EC6D2180);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v72);
  }

  a1 = v13;
  v43 = [*(v13 + 16) persistentStoreCoordinator];
  if (!v43)
  {

    goto LABEL_59;
  }

  v44 = v43;
  if (v73[0])
  {
    v45 = sub_1D225088C();
  }

  else
  {
    v45 = 0;
  }

  v46 = v60;
  [v44 setMetadata:v45 forPersistentStore:v60];

LABEL_60:
  if (*(a1 + OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_historySupport) == 1)
  {
    v47 = objc_opt_self();
    v48 = v61;
    sub_1D22504EC();
    v49 = sub_1D22504BC();
    (*(v62 + 8))(v48, v63);
    v50 = [v47 deleteHistoryBeforeDate_];

    v51 = *(a1 + 16);
    *&v71 = 0;
    v52 = [v51 executeRequest:v50 error:&v71];
    if (v52)
    {
      v53 = v52;
      v54 = v71;

      goto LABEL_63;
    }

    v58 = v71;
    sub_1D22502FC();

    swift_willThrow();
  }

  else
  {
LABEL_63:
    v55 = *(a1 + 16);
    *&v71 = 0;
    if ([v55 save_])
    {
      v56 = v71;
    }

    else
    {
      v57 = v71;
      sub_1D22502FC();

      swift_willThrow();
    }
  }
}

uint64_t sub_1D222969C()
{

  v0 = sub_1D2250A2C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1D2250A2C();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1D225126C();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1D2250A2C();
      v3 = v5;
    }

    while (v5);
  }

  sub_1D2250A2C();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_1D22297F8(char a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v5 = sub_1D225092C();
  v6 = [v4 initWithEntityName_];

  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7508];
  *(v7 + 16) = xmmword_1D22526E0;
  v9 = MEMORY[0x1E69E7558];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = a1;
  v10 = sub_1D2250C5C();
  [v6 setPredicate_];

  v11 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v12 = *(a2 + 16);
  v17[0] = 0;
  v13 = [v12 executeRequest:v11 error:v17];
  if (v13)
  {
    v14 = v13;
    v15 = v17[0];
  }

  else
  {
    v16 = v17[0];
    sub_1D22502FC();

    swift_willThrow();
  }
}

uint64_t sub_1D22299E0(uint64_t a1)
{
  v24 = a1;
  v2 = sub_1D225077C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  sub_1D225076C();
  v9 = sub_1D225078C();
  v10 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v9, v10, v12, "flush", "", v11, 2u);
    MEMORY[0x1D3899640](v11, -1, -1);
  }

  (*(v3 + 16))(v6, v8, v2);
  sub_1D22507EC();
  swift_allocObject();
  sub_1D22507DC();
  v13 = (*(v3 + 8))(v8, v2);
  v25 = 0;
  MEMORY[0x1EEE9AC00](v13);
  v14 = v24;
  *(&v23 - 4) = v24;
  *(&v23 - 3) = &v25;
  *(&v23 - 2) = v1;
  v16 = v15;
  v17 = v23;
  sub_1D2250DBC();
  if (v17)
  {
  }

  else
  {

    if ((v25 & 1) == 0)
    {
      v18 = sub_1D225080C();
      v19 = sub_1D2250CDC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        *(v20 + 4) = v14;
        _os_log_impl(&dword_1D2171000, v18, v19, "Cannot flush context to store after %ld retries", v20, 0xCu);
        MEMORY[0x1D3899640](v20, -1, -1);
      }

      sub_1D217EE2C();
      swift_allocError();
      *v21 = 11;
      swift_willThrow();
    }
  }

  sub_1D2229D18();
}

uint64_t sub_1D2229D18()
{
  v0 = sub_1D22507BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D225077C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D225078C();
  sub_1D22507CC();
  v9 = sub_1D2250D9C();
  if (sub_1D2250E4C())
  {

    sub_1D22507FC();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v8, v9, v12, "flush", v10, v11, 2u);
    MEMORY[0x1D3899640](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1D2229F6C(uint64_t a1, _BYTE *a2, uint64_t a3, __n128 a4)
{
  v37[1] = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    return;
  }

  v4 = a1;
  if (a1 < 1)
  {
    return;
  }

  v6 = a2;
  v7 = &off_1E83FA000;
  a4.n128_u64[0] = 134217984;
  v34 = a4;
  while (1)
  {
    v8 = *(a3 + 16);
    v37[0] = 0;
    v9 = [v8 v7[371]];
    v10 = v37[0];
    if (v9)
    {
      *v6 = 1;
      v11 = *(a3 + 16);
      v12 = v10;
      [v11 reset];
      if (*v6)
      {
        return;
      }

      goto LABEL_16;
    }

    v13 = v37[0];
    v14 = sub_1D22502FC();

    swift_willThrow();
    v37[0] = v14;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2560);
    sub_1D2174E10(0, &unk_1EC6D2D50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_1D217EE2C();
    v16 = swift_allocError();
    *v17 = 11;
    v18 = sub_1D22502EC();

    v19 = [v36 domain];
    v20 = sub_1D225095C();
    v22 = v21;

    v23 = [v18 domain];
    v24 = sub_1D225095C();
    v26 = v25;

    if (v20 != v24 || v22 != v26)
    {
      break;
    }

LABEL_12:
    v28 = [v36 code];
    v29 = [v18 code];

    if (v28 != v29)
    {
      goto LABEL_20;
    }

    v30 = sub_1D225080C();
    v31 = sub_1D2250CCC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = v34.n128_u32[0];
      *(v32 + 4) = v4;
      _os_log_impl(&dword_1D2171000, v30, v31, "Saving context failed, trying again (%ld left)", v32, 0xCu);
      MEMORY[0x1D3899640](v32, -1, -1);
    }

    v6 = a2;
    v7 = &off_1E83FA000;
    if (*a2)
    {
      return;
    }

LABEL_16:
    if (v4-- <= 1)
    {
      return;
    }
  }

  v27 = sub_1D225126C();

  if (v27)
  {
    goto LABEL_12;
  }

LABEL_20:
  swift_willThrow();
LABEL_21:
}

uint64_t sub_1D222A2C8()
{
  result = sub_1D225082C();
  if (v1 <= 0x3F)
  {
    result = sub_1D22507AC();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D222A3C0()
{
  result = sub_1D225082C();
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

uint64_t sub_1D222A514()
{
  v1 = *(*v0 + 16);
  sub_1D2250DBC();

  return v3;
}

void sub_1D222A580()
{
  v1 = *(*v0 + 16);
  sub_1D2250DBC();
}

BOOL sub_1D222A5F8(char a1)
{
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7508];
  *(v2 + 16) = xmmword_1D22526E0;
  v4 = MEMORY[0x1E69E7558];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_1D2250C5C();
  v6 = sub_1D2219F2C(v5, 0, 1);

  return v6 != 0;
}

void sub_1D222A6EC()
{
  v1 = *(*v0 + 16);
  sub_1D2250DBC();
}

id sub_1D222A7B4(void **a1, void **a2)
{
  v5 = sub_1D225055C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v28 - v10;
  v12 = *a1;
  v13 = *a2;
  v14 = [v12 type];
  if (v14 != [v13 type])
  {
    v27 = [v12 type];
    v26 = v27 < [v13 type];
    return (v26 & 1);
  }

  v28[1] = v2;
  result = [v12 uuid];
  if (result)
  {
    v16 = result;
    sub_1D225054C();

    v17 = sub_1D225051C();
    v19 = v18;
    v20 = *(v6 + 8);
    v20(v11, v5);
    result = [v13 uuid];
    if (result)
    {
      v21 = result;
      sub_1D225054C();

      v22 = sub_1D225051C();
      v24 = v23;
      v20(v9, v5);
      if (v17 == v22 && v19 == v24)
      {

        v26 = 0;
      }

      else
      {
        v26 = sub_1D225126C();
      }

      return (v26 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D222A9F4()
{
  v1 = *(v0 + 8);
  sub_1D225132C();
  sub_1D225135C();
  MEMORY[0x1D3898D70](v1);
  return sub_1D225137C();
}

uint64_t sub_1D222AA54()
{
  v1 = *(v0 + 8);
  sub_1D225135C();
  return MEMORY[0x1D3898D70](v1);
}

uint64_t sub_1D222AA94()
{
  v1 = *(v0 + 8);
  sub_1D225132C();
  sub_1D225135C();
  MEMORY[0x1D3898D70](v1);
  return sub_1D225137C();
}

void sub_1D222AB1C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D225124C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for VUIndexTag();
        v6 = sub_1D2250B2C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D222AF38(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D222AC20(0, v2, 1, a1);
  }
}

void sub_1D222AC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D225055C();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - v12;
  v44 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v14 = (v11 + 8);
    v15 = *a4 + 8 * a3 - 8;
    v16 = a1 - a3;
    v17 = &off_1E83FA000;
    v48 = *a4;
    v49 = v8;
LABEL_6:
    v46 = v15;
    v47 = a3;
    v18 = *(v13 + 8 * a3);
    v45 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = v18;
      v21 = v19;
      LODWORD(v19) = [v20 v17[286]];
      if (v19 == [v21 v17[286]])
      {
        v52 = v16;
        v53 = v20;
        v54 = v21;
        v22 = [v20 uuid];
        if (!v22)
        {
          goto LABEL_21;
        }

        v23 = v22;
        v24 = v51;
        sub_1D225054C();

        v25 = sub_1D225051C();
        v27 = v26;
        v28 = *v14;
        v29 = v49;
        (*v14)(v24, v49);
        v30 = [v54 uuid];
        if (!v30)
        {
          goto LABEL_20;
        }

        v31 = v30;
        v32 = v50;
        sub_1D225054C();

        v33 = sub_1D225051C();
        v35 = v34;
        v28(v32, v29);
        if (v25 == v33 && v27 == v35)
        {

          v13 = v48;
          v17 = &off_1E83FA000;
LABEL_5:
          a3 = v47 + 1;
          v15 = v46 + 8;
          v16 = v45 - 1;
          if (v47 + 1 == v44)
          {
            return;
          }

          goto LABEL_6;
        }

        v36 = sub_1D225126C();

        v13 = v48;
        v17 = &off_1E83FA000;
        v16 = v52;
        if ((v36 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v37 = [v20 v17[286]];
        v38 = [v21 v17[286]];
        v39 = v20;
        v40 = v38;

        if (v37 >= v40)
        {
          goto LABEL_5;
        }
      }

      if (!v13)
      {
        break;
      }

      v41 = *v15;
      v18 = *(v15 + 8);
      *v15 = v18;
      *(v15 + 8) = v41;
      v15 -= 8;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_1D222AF38(void ***a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v152 = a1;
  v9 = sub_1D225055C();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v162 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v163 = &v147 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v147 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v155 = &v147 - v18;
  v19 = *(a3 + 8);
  v157 = a3;
  if (v19 >= 1)
  {
    v164 = v16;
    v20 = 0;
    v21 = (v17 + 8);
    v22 = MEMORY[0x1E69E7CC0];
    v23 = &off_1E83FA000;
    v151 = a4;
    v149 = (v17 + 8);
    while (1)
    {
      v24 = v20++;
      v153 = v24;
      if (v20 < v19)
      {
        v161 = v19;
        v150 = v22;
        v5 = *a3;
        v25 = *(*a3 + 8 * v20);
        v168 = *(*a3 + 8 * v24);
        v26 = v168;
        v169 = v25;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        LODWORD(v165) = sub_1D222A7B4(&v169, &v168);
        if (v6)
        {

          return;
        }

        v20 = v27 + 2;
        v24 = v27;
        if (v27 + 2 < v161)
        {
          v148 = 0;
          v30 = (v5 + 8 * v27 + 16);
          v31 = &off_1E83FA000;
          do
          {
            v39 = *(v30 - 1);
            v40 = *v30;
            v41 = v39;
            v42 = v31[286];
            v167 = v40;
            LODWORD(v39) = [v40 v42];
            if (v39 == [v41 v31[286]])
            {
              v166 = v41;
              v160 = v20;
              v43 = [v167 v23[279]];
              if (!v43)
              {
                goto LABEL_155;
              }

              v44 = v43;
              v45 = v155;
              sub_1D225054C();

              v46 = sub_1D225051C();
              v5 = v47;
              v48 = *v21;
              v49 = v164;
              (*v21)(v45, v164);
              v50 = [v166 v23[279]];
              if (!v50)
              {
                goto LABEL_156;
              }

              v51 = v50;
              v52 = v21;
              v53 = v154;
              sub_1D225054C();

              v54 = sub_1D225051C();
              v56 = v55;
              v48(v53, v49);
              v21 = v52;
              if (v46 == v54 && v5 == v56)
              {

                a3 = v157;
                v31 = &off_1E83FA000;
                v23 = &off_1E83FA000;
                v20 = v160;
                if (v165)
                {
                  v22 = v150;
                  a4 = v151;
                  v6 = v148;
                  v24 = v153;
                  if (v160 < v153)
                  {
                    goto LABEL_146;
                  }

                  goto LABEL_24;
                }
              }

              else
              {
                v57 = sub_1D225126C();

                a3 = v157;
                v31 = &off_1E83FA000;
                v23 = &off_1E83FA000;
                v20 = v160;
                if ((v165 ^ v57))
                {
                  goto LABEL_32;
                }
              }
            }

            else
            {
              v32 = v167;
              v33 = [v167 v31[286]];
              v34 = [v41 v31[286]];
              v35 = v32;
              v5 = a3;
              v36 = v34;

              v37 = v33 < v36;
              a3 = v5;
              v38 = !v37;
              if (((v165 ^ v38) & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            ++v20;
            ++v30;
          }

          while (v161 != v20);
          v20 = v161;
LABEL_32:
          v22 = v150;
          a4 = v151;
          v6 = v148;
          v24 = v153;
          if ((v165 & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_23:
          if (v20 < v24)
          {
            goto LABEL_146;
          }

LABEL_24:
          if (v24 < v20)
          {
            v58 = 8 * v20 - 8;
            v59 = 8 * v24;
            v60 = v20;
            v61 = v24;
            while (1)
            {
              if (v61 != --v60)
              {
                v63 = *a3;
                if (!*a3)
                {
                  goto LABEL_154;
                }

                v62 = *(v63 + v59);
                *(v63 + v59) = *(v63 + v58);
                *(v63 + v58) = v62;
              }

              ++v61;
              v58 -= 8;
              v59 += 8;
              if (v61 >= v60)
              {
                goto LABEL_33;
              }
            }
          }

          goto LABEL_33;
        }

        v22 = v150;
        a4 = v151;
        if (v165)
        {
          goto LABEL_23;
        }
      }

LABEL_33:
      v64 = *(a3 + 8);
      if (v20 >= v64)
      {
        goto LABEL_58;
      }

      if (__OFSUB__(v20, v24))
      {
        goto LABEL_145;
      }

      if (v20 - v24 >= a4)
      {
        goto LABEL_58;
      }

      v65 = v24 + a4;
      if (__OFADD__(v24, a4))
      {
        goto LABEL_147;
      }

      if (v65 >= v64)
      {
        v65 = *(a3 + 8);
      }

      v5 = 0x1E83FA000;
      if (v65 < v24)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (v20 == v65)
      {
        goto LABEL_58;
      }

      v150 = v22;
      v148 = v6;
      v66 = *a3;
      v67 = *a3 + 8 * v20 - 8;
      v68 = v24 - v20;
      v156 = v65;
      v161 = v66;
      while (2)
      {
        v159 = v67;
        v160 = v20;
        v69 = *(v66 + 8 * v20);
        v158 = v68;
        v70 = v68;
        while (1)
        {
          v71 = *v67;
          v72 = v69;
          v73 = v71;
          LODWORD(v71) = [v72 *(v5 + 2288)];
          if (v71 == [v73 *(v5 + 2288)])
          {
            break;
          }

          a4 = [v72 *(v5 + 2288)];
          v88 = [v73 *(v5 + 2288)];
          v89 = v72;
          v90 = v88;

          if (a4 >= v90)
          {
            goto LABEL_43;
          }

LABEL_53:
          if (!v66)
          {
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          v91 = *v67;
          v69 = *(v67 + 8);
          *v67 = v69;
          *(v67 + 8) = v91;
          v67 -= 8;
          if (__CFADD__(v70++, 1))
          {
            goto LABEL_43;
          }
        }

        v165 = v70;
        v166 = v72;
        v167 = v73;
        v74 = [v72 v23[279]];
        if (!v74)
        {
          goto LABEL_152;
        }

        v75 = v74;
        v76 = v163;
        sub_1D225054C();

        a4 = sub_1D225051C();
        v78 = v77;
        v79 = *v21;
        v80 = v164;
        (*v21)(v76, v164);
        v81 = [v167 v23[279]];
        if (!v81)
        {
          goto LABEL_151;
        }

        v82 = v81;
        v83 = v21;
        v84 = v162;
        sub_1D225054C();

        v85 = sub_1D225051C();
        v87 = v86;
        v79(v84, v80);
        v21 = v83;
        if (a4 != v85 || v78 != v87)
        {
          a4 = sub_1D225126C();

          v5 = 0x1E83FA000;
          v23 = &off_1E83FA000;
          v66 = v161;
          v70 = v165;
          if ((a4 & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_53;
        }

        v5 = &off_1E83FA000;
        v23 = &off_1E83FA000;
        v66 = v161;
LABEL_43:
        v20 = v160 + 1;
        v67 = v159 + 8;
        v68 = v158 - 1;
        if (v160 + 1 != v156)
        {
          continue;
        }

        break;
      }

      v20 = v156;
      v6 = v148;
      a3 = v157;
      v22 = v150;
      v24 = v153;
LABEL_58:
      if (v20 < v24)
      {
        goto LABEL_144;
      }

      v93 = v22;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v93;
      }

      else
      {
        v22 = sub_1D2195E30(0, *(v93 + 2) + 1, 1, v93);
      }

      a4 = *(v22 + 2);
      v94 = *(v22 + 3);
      v95 = a4 + 1;
      v96 = v153;
      if (a4 >= v94 >> 1)
      {
        v141 = sub_1D2195E30((v94 > 1), a4 + 1, 1, v22);
        v96 = v153;
        v22 = v141;
      }

      *(v22 + 2) = v95;
      v97 = &v22[16 * a4];
      *(v97 + 4) = v96;
      *(v97 + 5) = v20;
      v98 = *v152;
      if (!*v152)
      {
        goto LABEL_158;
      }

      if (a4)
      {
        while (2)
        {
          v99 = v95 - 1;
          if (v95 >= 4)
          {
            v104 = &v22[16 * v95 + 32];
            v105 = *(v104 - 64);
            v106 = *(v104 - 56);
            v110 = __OFSUB__(v106, v105);
            v107 = v106 - v105;
            if (v110)
            {
              goto LABEL_131;
            }

            v109 = *(v104 - 48);
            v108 = *(v104 - 40);
            v110 = __OFSUB__(v108, v109);
            v102 = v108 - v109;
            v103 = v110;
            if (v110)
            {
              goto LABEL_132;
            }

            v111 = &v22[16 * v95];
            v113 = *v111;
            v112 = *(v111 + 1);
            v110 = __OFSUB__(v112, v113);
            v114 = v112 - v113;
            if (v110)
            {
              goto LABEL_134;
            }

            v110 = __OFADD__(v102, v114);
            v115 = v102 + v114;
            if (v110)
            {
              goto LABEL_137;
            }

            if (v115 >= v107)
            {
              v133 = &v22[16 * v99 + 32];
              v135 = *v133;
              v134 = *(v133 + 1);
              v110 = __OFSUB__(v134, v135);
              v136 = v134 - v135;
              if (v110)
              {
                goto LABEL_141;
              }

              if (v102 < v136)
              {
                v99 = v95 - 2;
              }
            }

            else
            {
LABEL_78:
              if (v103)
              {
                goto LABEL_133;
              }

              v116 = &v22[16 * v95];
              v118 = *v116;
              v117 = *(v116 + 1);
              v119 = __OFSUB__(v117, v118);
              v120 = v117 - v118;
              v121 = v119;
              if (v119)
              {
                goto LABEL_136;
              }

              v122 = &v22[16 * v99 + 32];
              v124 = *v122;
              v123 = *(v122 + 1);
              v110 = __OFSUB__(v123, v124);
              v125 = v123 - v124;
              if (v110)
              {
                goto LABEL_139;
              }

              if (__OFADD__(v120, v125))
              {
                goto LABEL_140;
              }

              if (v120 + v125 < v102)
              {
                goto LABEL_92;
              }

              if (v102 < v125)
              {
                v99 = v95 - 2;
              }
            }
          }

          else
          {
            if (v95 == 3)
            {
              v100 = *(v22 + 4);
              v101 = *(v22 + 5);
              v110 = __OFSUB__(v101, v100);
              v102 = v101 - v100;
              v103 = v110;
              goto LABEL_78;
            }

            v126 = &v22[16 * v95];
            v128 = *v126;
            v127 = *(v126 + 1);
            v110 = __OFSUB__(v127, v128);
            v120 = v127 - v128;
            v121 = v110;
LABEL_92:
            if (v121)
            {
              goto LABEL_135;
            }

            v129 = &v22[16 * v99];
            v131 = *(v129 + 4);
            v130 = *(v129 + 5);
            v110 = __OFSUB__(v130, v131);
            v132 = v130 - v131;
            if (v110)
            {
              goto LABEL_138;
            }

            if (v132 < v120)
            {
              break;
            }
          }

          a4 = v99 - 1;
          if (v99 - 1 >= v95)
          {
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
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
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
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_153;
          }

          v137 = v22;
          v138 = *&v22[16 * a4 + 32];
          v5 = *&v22[16 * v99 + 40];
          sub_1D222BA30(*a3 + 8 * v138, (*a3 + 8 * *&v22[16 * v99 + 32]), (*a3 + 8 * v5), v98);
          if (v6)
          {
            goto LABEL_125;
          }

          if (v5 < v138)
          {
            goto LABEL_129;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v139 = v137;
          }

          else
          {
            v139 = sub_1D21C88C8(v137);
          }

          v23 = &off_1E83FA000;
          if (a4 >= *(v139 + 2))
          {
            goto LABEL_130;
          }

          v140 = &v139[16 * a4];
          *(v140 + 4) = v138;
          *(v140 + 5) = v5;
          v170 = v139;
          sub_1D21C883C(v99);
          v22 = v170;
          v95 = *(v170 + 2);
          if (v95 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v19 = *(a3 + 8);
      a4 = v151;
      v21 = v149;
      if (v20 >= v19)
      {
        goto LABEL_114;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_114:
  v5 = *v152;
  if (!*v152)
  {
    goto LABEL_159;
  }

  a4 = v22;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v142 = a4;
  }

  else
  {
LABEL_149:
    v142 = sub_1D21C88C8(a4);
  }

  v170 = v142;
  a4 = *(v142 + 2);
  if (a4 < 2)
  {
LABEL_125:

    return;
  }

  while (1)
  {
    v143 = *a3;
    if (!*a3)
    {
      break;
    }

    v144 = *&v142[16 * a4];
    v145 = v142;
    a3 = *&v142[16 * a4 + 24];
    sub_1D222BA30(v143 + 8 * v144, (v143 + 8 * *&v142[16 * a4 + 16]), (v143 + 8 * a3), v5);
    if (v6)
    {
      goto LABEL_125;
    }

    if (a3 < v144)
    {
      goto LABEL_142;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v145 = sub_1D21C88C8(v145);
    }

    if (a4 - 2 >= *(v145 + 2))
    {
      goto LABEL_143;
    }

    v146 = &v145[16 * a4];
    *v146 = v144;
    *(v146 + 1) = a3;
    v170 = v145;
    sub_1D21C883C(a4 - 1);
    v142 = v170;
    a4 = *(v170 + 2);
    a3 = v157;
    if (a4 <= 1)
    {
      goto LABEL_125;
    }
  }

LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
}