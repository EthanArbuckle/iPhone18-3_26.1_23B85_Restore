uint64_t sub_1B8AB9E44()
{
  v1 = v0[24] + 1;
  if (v1 == v0[23])
  {
    v2 = v0[22];
    while (1)
    {
      v4 = v0[19];
      v3 = v0[20];

      if (v3 + 1 == v4)
      {
        break;
      }

      v6 = v0[20] + 1;
      v0[20] = v6;
      v7 = v0[18];
      if (v6 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v8 = v0[10];
      v0[21] = *__swift_project_boxed_opaque_existential_1((v7 + 40 * v6 + 32), *(v7 + 40 * v6 + 56));
      result = sub_1B8AF0438();
      v0[22] = result;
      v9 = *(result + 16);
      v0[23] = v9;
      if (v9)
      {
        v1 = 0;
        goto LABEL_8;
      }
    }

    v14 = v0[2];
    v15 = v0[17];

    v17 = sub_1B8AB6CF8(v16);
    LOBYTE(v15) = sub_1B8ABA5C8(v15, v17);

    if ((v15 & 1) == 0)
    {
      goto LABEL_20;
    }

    v18 = v0[5] + v0[16];
    v19 = sub_1B8AF0388();
    v20 = sub_1B8AF08E8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B8A3C000, v19, v20, "End MultimodalSanitizer sanitize", v21, 2u);
      MEMORY[0x1B8CC7D70](v21, -1, -1);
    }

    v23 = v0[14];
    v22 = v0[15];
    v24 = v0[13];
    v25 = v0[10];
    v26 = v0[8];
    v27 = v0[5];
    v28 = v0[3];

    *v28 = v0[2];
    sub_1B8ABE3BC(v25, type metadata accessor for MultimodalSanitizer.Request);
    sub_1B8ABA320(v27, "MultimodalSanitizer.sanitize", 28, 2);

    v29 = v0[1];

    return v29();
  }

  else
  {
    result = v0[22];
LABEL_8:
    v0[24] = v1;
    if (v1 >= *(result + 16))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    else
    {
      (*(v0[7] + 16))(v0[8], result + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)) + *(v0[7] + 72) * v1, v0[6]);
      v10 = swift_task_alloc();
      v0[25] = v10;
      *v10 = v0;
      v10[1] = sub_1B8AB9CF4;
      v11 = v0[21];
      v12 = v0[10];
      v13 = v0[8];

      return sub_1B8AB421C(v13, v12, (v0 + 2));
    }
  }

  return result;
}

uint64_t sub_1B8ABA138()
{
  v1 = v0[10];
  v2 = v0[2];

  sub_1B8ABE3BC(v1, type metadata accessor for MultimodalSanitizer.Request);
  v3 = v0[26];
  v4 = v0[16];
  v5 = v0[5];
  v6 = v3;
  v7 = sub_1B8AF0388();
  v8 = sub_1B8AF08D8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v3;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B8A3C000, v7, v8, "End MultimodalSanitizer sanitize with error: %@", v9, 0xCu);
    sub_1B8A897C4(v10, &qword_1EBA96B08, &qword_1B8AF94B0);
    MEMORY[0x1B8CC7D70](v10, -1, -1);
    MEMORY[0x1B8CC7D70](v9, -1, -1);
  }

  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[8];
  v18 = v0[5];

  swift_willThrow();
  sub_1B8ABA320(v18, "MultimodalSanitizer.sanitize", 28, 2);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1B8ABA320(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1B8AF0338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1B8AF0318();
  sub_1B8AF0348();
  v22 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1B8CC7D70](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B8ABA5C8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v26 = v9;
  v27 = result;
  if (v8)
  {
    do
    {
      v11 = __clz(__rbit64(v8));
      v28 = (v8 - 1) & v8;
LABEL_13:
      v14 = *(*(v3 + 48) + (v11 | (v4 << 6)));
      v15 = *(a2 + 40);
      sub_1B8AF1018();
      v16 = v14 ? 0x65636E656C6F6976 : 1701998439;
      v17 = v14 ? 0xE800000000000000 : 0xE400000000000000;
      sub_1B8AF05F8();

      v18 = sub_1B8AF1038();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return 0;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = *(*(a2 + 48) + v20) ? 0x65636E656C6F6976 : 1701998439;
        v23 = *(*(a2 + 48) + v20) ? 0xE800000000000000 : 0xE400000000000000;
        if (v22 == v16 && v23 == v17)
        {
          break;
        }

        v25 = sub_1B8AF0EA8();

        if (v25)
        {
          goto LABEL_35;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_35:
      v9 = v26;
      v3 = v27;
      v8 = v28;
    }

    while (v28);
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v28 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t MultimodalSanitizer.deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_signposter;
  v2 = sub_1B8AF0328();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_logger;
  v4 = sub_1B8AF03A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1B8ABE3BC(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_configuration, type metadata accessor for MultimodalSanitizer.Configuration);
  v5 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_backends);

  return v0;
}

uint64_t MultimodalSanitizer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_signposter;
  v2 = sub_1B8AF0328();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_logger;
  v4 = sub_1B8AF03A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1B8ABE3BC(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_configuration, type metadata accessor for MultimodalSanitizer.Configuration);
  v5 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_backends);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

void *sub_1B8ABA9E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96F38, &unk_1B8AFA3A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96DE0, &qword_1B8AF9CB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8ABAB18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96F40, &qword_1B8AFA3B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B8ABAC24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B8ABAD30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96F30, &qword_1B8AFA3A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1B8ABAE58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96E80, &qword_1B8AFA100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B8ABAF4C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1B8ABB094(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96F48, &qword_1B8AFA3C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1B8ABB198(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965A8, &qword_1B8AF6720);
  result = sub_1B8AF0A68();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B8ABB5D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B8AF0A68();
  v8 = result;
  if (*(v5 + 16))
  {
    v27 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
LABEL_15:
      v18 = *(v8 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v19 = -1 << *(v8 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v15 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v15 + 8 * v21);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v20) & ~*(v15 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v13 &= v13 - 1;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      ++*(v8 + 16);
    }

    while (1)
    {
      v17 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v17 >= v14)
      {
        break;
      }

      v13 = v10[v17];
      ++v9;
      if (v13)
      {
        v9 = v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v5 + 32);
    if (v26 >= 64)
    {
      bzero((v5 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v26;
    }

    v4 = v27;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1B8ABB7F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965F0, &unk_1B8AF6780);
  result = sub_1B8AF0A68();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B8ABBA7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D8, &qword_1B8AF6748);
  result = sub_1B8AF0A68();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B8ABBCDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965A8, &qword_1B8AF6720);
  result = sub_1B8AF0A68();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B8ABC0E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B8AF0A68();
  v8 = result;
  if (*(v5 + 16))
  {
    v25 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
LABEL_15:
      v17 = *(v8 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v18 = -1 << *(v8 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v14 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v14 + 8 * v20);
          if (v24 != -1)
          {
            v15 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v19) & ~*(v14 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v12 &= v12 - 1;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      ++*(v8 + 16);
    }

    while (1)
    {
      v16 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        v4 = v25;
        goto LABEL_26;
      }

      v12 = *(v5 + 56 + 8 * v16);
      ++v9;
      if (v12)
      {
        v9 = v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1B8ABC2DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965F0, &unk_1B8AF6780);
  result = sub_1B8AF0A68();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B8ABC530(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D8, &qword_1B8AF6748);
  result = sub_1B8AF0A68();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1B8AF1018();

      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B8ABC768(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B8AF1018();
  AFMModel.Task.rawValue.getter();
  sub_1B8AF05F8();

  v7 = sub_1B8AF1038();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_48:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1B8ABD0B8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    result = 1;
    goto LABEL_51;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xEA00000000007974;
    v12 = 0x6566615365646F63;
    switch(*(*(v5 + 48) + v9))
    {
      case 1:
        break;
      case 2:
        v12 = 0x646E417367616C66;
        v11 = 0xEC0000007370614DLL;
        break;
      case 3:
        v11 = 0xE800000000000000;
        v12 = 0x4E4F534A6373696DLL;
        break;
      case 4:
        v12 = 0x6F43656C706F6570;
        v11 = 0xEB00000000746E75;
        break;
      case 5:
        v12 = 0x6544656C706F6570;
        v11 = 0xEF6E6F6974636574;
        break;
      case 6:
        v12 = 0x7365627570657270;
        v11 = 0xEC000000746E6563;
        break;
      case 7:
        v12 = 0xD000000000000014;
        v11 = 0x80000001B8B05560;
        break;
      case 8:
        v12 = 0xD000000000000017;
        v11 = 0x80000001B8B05580;
        break;
      case 9:
        v12 = 0xD000000000000020;
        v11 = 0x80000001B8B055A0;
        break;
      case 0xA:
        v12 = 0xD000000000000014;
        v11 = 0x80000001B8B055D0;
        break;
      case 0xB:
        v12 = 0xD000000000000013;
        v11 = 0x80000001B8B055F0;
        break;
      case 0xC:
        v12 = 0x6566615374786574;
        break;
      case 0xD:
        v12 = 0x65636E656C6F6976;
        v11 = 0xEF65726F47646E41;
        break;
      default:
        v12 = 0xD000000000000014;
        v11 = 0x80000001B8B05500;
        break;
    }

    v13 = 0x6566615365646F63;
    v14 = 0xEA00000000007974;
    switch(a2)
    {
      case 1:
        goto LABEL_41;
      case 2:
        v15 = 0x646E417367616C66;
        v16 = 1936744781;
        goto LABEL_38;
      case 3:
        v14 = 0xE800000000000000;
        if (v12 != 0x4E4F534A6373696DLL)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 4:
        v14 = 0xEB00000000746E75;
        if (v12 != 0x6F43656C706F6570)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 5:
        v14 = 0xEF6E6F6974636574;
        if (v12 != 0x6544656C706F6570)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 6:
        v15 = 0x7365627570657270;
        v16 = 1953391971;
LABEL_38:
        v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v12 != v15)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 7:
        v14 = 0x80000001B8B05560;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 8:
        v14 = 0x80000001B8B05580;
        if (v12 != 0xD000000000000017)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 9:
        v14 = 0x80000001B8B055A0;
        if (v12 != 0xD000000000000020)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 10:
        v13 = 0xD000000000000014;
        v14 = 0x80000001B8B055D0;
LABEL_41:
        if (v12 == v13)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 11:
        v14 = 0x80000001B8B055F0;
        if (v12 != 0xD000000000000013)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 12:
        if (v12 != 0x6566615374786574)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 13:
        v14 = 0xEF65726F47646E41;
        if (v12 != 0x65636E656C6F6976)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      default:
        v14 = 0x80000001B8B05500;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_43;
        }

LABEL_42:
        if (v11 != v14)
        {
LABEL_43:
          v17 = sub_1B8AF0EA8();

          if (v17)
          {
            goto LABEL_50;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_48;
          }

          continue;
        }

LABEL_50:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_51:
        *a1 = a2;
        return result;
    }
  }
}

BOOL sub_1B8ABCCDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t))
{
  v6 = *v4;
  v7 = *(*v4 + 40);
  sub_1B8AF1018();
  sub_1B8AF05F8();
  v8 = sub_1B8AF1038() & ~(-1 << *(v6 + 32));
  v9 = (1 << v8) & *(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v9)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v4;
    a4(v8, isUniquelyReferenced_nonNull_native);
    *v4 = v13;
  }

  return v9 == 0;
}

uint64_t sub_1B8ABCDAC(_BYTE *a1, char a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1B8AF1018();
  v20 = a2;
  if (a2)
  {
    v6 = 0x65636E656C6F6976;
  }

  else
  {
    v6 = 1701998439;
  }

  if (a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  sub_1B8AF05F8();

  v8 = sub_1B8AF1038();
  v9 = -1 << *(v4 + 32);
  v10 = v8 & ~v9;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v4 + 48) + v10) ? 0x65636E656C6F6976 : 1701998439;
      v13 = *(*(v4 + 48) + v10) ? 0xE800000000000000 : 0xE400000000000000;
      if (v12 == v6 && v13 == v7)
      {
        break;
      }

      v15 = sub_1B8AF0EA8();

      if (v15)
      {
        goto LABEL_23;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v18 = *(*(v4 + 48) + v10);
  }

  else
  {
LABEL_21:
    v16 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v18 = v20 & 1;
    sub_1B8ABD8D0(v20 & 1, v10, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
  }

  *a1 = v18;
  return result;
}

uint64_t sub_1B8ABCF68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B8AF1018();
  sub_1B8AF05F8();
  v9 = sub_1B8AF1038();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B8AF0EA8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1B8ABDAD0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B8ABD0B8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B8ABB198(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_1B8A87668();
        goto LABEL_55;
      }

      sub_1B8ABBCDC(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_1B8AF1018();
    AFMModel.Task.rawValue.getter();
    sub_1B8AF05F8();

    result = sub_1B8AF1038();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xEA00000000007974;
        v14 = 0x6566615365646F63;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            break;
          case 2:
            v14 = 0x646E417367616C66;
            v13 = 0xEC0000007370614DLL;
            break;
          case 3:
            v13 = 0xE800000000000000;
            v14 = 0x4E4F534A6373696DLL;
            break;
          case 4:
            v14 = 0x6F43656C706F6570;
            v13 = 0xEB00000000746E75;
            break;
          case 5:
            v14 = 0x6544656C706F6570;
            v13 = 0xEF6E6F6974636574;
            break;
          case 6:
            v14 = 0x7365627570657270;
            v13 = 0xEC000000746E6563;
            break;
          case 7:
            v14 = 0xD000000000000014;
            v13 = 0x80000001B8B05560;
            break;
          case 8:
            v14 = 0xD000000000000017;
            v13 = 0x80000001B8B05580;
            break;
          case 9:
            v14 = 0xD000000000000020;
            v13 = 0x80000001B8B055A0;
            break;
          case 0xA:
            v14 = 0xD000000000000014;
            v13 = 0x80000001B8B055D0;
            break;
          case 0xB:
            v14 = 0xD000000000000013;
            v13 = 0x80000001B8B055F0;
            break;
          case 0xC:
            v14 = 0x6566615374786574;
            break;
          case 0xD:
            v14 = 0x65636E656C6F6976;
            v13 = 0xEF65726F47646E41;
            break;
          default:
            v14 = 0xD000000000000014;
            v13 = 0x80000001B8B05500;
            break;
        }

        v15 = 0x6566615365646F63;
        v16 = 0xEA00000000007974;
        switch(v6)
        {
          case 1:
            goto LABEL_48;
          case 2:
            v17 = 0x646E417367616C66;
            v18 = 1936744781;
            goto LABEL_45;
          case 3:
            v16 = 0xE800000000000000;
            if (v14 != 0x4E4F534A6373696DLL)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 4:
            v16 = 0xEB00000000746E75;
            if (v14 != 0x6F43656C706F6570)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 5:
            v16 = 0xEF6E6F6974636574;
            if (v14 != 0x6544656C706F6570)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 6:
            v17 = 0x7365627570657270;
            v18 = 1953391971;
LABEL_45:
            v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v14 != v17)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 7:
            v16 = 0x80000001B8B05560;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 8:
            v16 = 0x80000001B8B05580;
            if (v14 != 0xD000000000000017)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 9:
            v16 = 0x80000001B8B055A0;
            if (v14 != 0xD000000000000020)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 10:
            v15 = 0xD000000000000014;
            v16 = 0x80000001B8B055D0;
LABEL_48:
            if (v14 == v15)
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          case 11:
            v16 = 0x80000001B8B055F0;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 12:
            if (v14 != 0x6566615374786574)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 13:
            v16 = 0xEF65726F47646E41;
            if (v14 != 0x65636E656C6F6976)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          default:
            v16 = 0x80000001B8B05500;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_50;
            }

LABEL_49:
            if (v13 == v16)
            {
              goto LABEL_58;
            }

LABEL_50:
            v19 = sub_1B8AF0EA8();

            if (v19)
            {
              goto LABEL_59;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_55:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v6;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_58:

LABEL_59:
    result = sub_1B8AF0FA8();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
  }

  return result;
}

unint64_t sub_1B8ABD620(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1B8ABB5D4(v3 + 1, &qword_1EBA965F8, &unk_1B8AFA3E0);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1B8ABC0E8(v3 + 1, &qword_1EBA965F8, &unk_1B8AFA3E0);
LABEL_8:
      v6 = *v2;
      v7 = *(*v2 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1B8A877A8();
    result = v5;
  }

LABEL_9:
  v8 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    *(v8 + 16) = v11;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1B8AF0FA8();
  __break(1u);
  return result;
}

unint64_t sub_1B8ABD770(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1B8ABB5D4(v3 + 1, &qword_1EBA96600, &qword_1B8AF67A0);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1B8ABC0E8(v3 + 1, &qword_1EBA96600, &qword_1B8AF67A0);
LABEL_8:
      v6 = *v2;
      v7 = *(*v2 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1B8A877BC();
    result = v5;
  }

LABEL_9:
  v8 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    *(v8 + 16) = v11;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1B8AF0FA8();
  __break(1u);
  return result;
}

uint64_t sub_1B8ABD8D0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1B8ABB7F8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1B8A878CC();
      goto LABEL_28;
    }

    sub_1B8ABC2DC(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1B8AF1018();
  if (v5)
  {
    v10 = 0x65636E656C6F6976;
  }

  else
  {
    v10 = 1701998439;
  }

  if (v5)
  {
    v11 = 0xE800000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  sub_1B8AF05F8();

  result = sub_1B8AF1038();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v8 + 48) + a2) ? 0x65636E656C6F6976 : 1701998439;
      v15 = *(*(v8 + 48) + a2) ? 0xE800000000000000 : 0xE400000000000000;
      if (v14 == v10 && v15 == v11)
      {
        goto LABEL_31;
      }

      v17 = sub_1B8AF0EA8();

      if (v17)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  result = sub_1B8AF0FA8();
  __break(1u);
  return result;
}

uint64_t sub_1B8ABDAD0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B8ABBA7C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B8A87A0C();
      goto LABEL_16;
    }

    sub_1B8ABC530(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B8AF1018();
  sub_1B8AF05F8();
  result = sub_1B8AF1038();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B8AF0EA8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B8AF0FA8();
  __break(1u);
  return result;
}

void *sub_1B8ABDC50(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1B8ABDCE0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B8ABDCE0(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v53 = result;
  v61 = a4;
  if (a4[2] >= *(a3 + 16))
  {
LABEL_38:
    v29 = 0;
    v30 = v4 + 56;
    v31 = 1 << *(v4 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v57 = 0;
    v59 = v32 & *(v4 + 56);
    v51 = (v31 + 63) >> 6;
    v33 = a4 + 7;
LABEL_42:
    while (v59)
    {
      v34 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
LABEL_49:
      v55 = v34 | (v29 << 6);
      v37 = *(*(v4 + 48) + v55);
      v38 = a4[5];
      sub_1B8AF1018();
      if (v37)
      {
        v39 = 0x65636E656C6F6976;
      }

      else
      {
        v39 = 1701998439;
      }

      if (v37)
      {
        v40 = 0xE800000000000000;
      }

      else
      {
        v40 = 0xE400000000000000;
      }

      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      a4 = v61;
      v41 = -1 << *(v61 + 32);
      v42 = result & ~v41;
      if ((*(v33 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v43 = ~v41;
        while (1)
        {
          v44 = *(a4[6] + v42) ? 0x65636E656C6F6976 : 1701998439;
          v45 = *(a4[6] + v42) ? 0xE800000000000000 : 0xE400000000000000;
          if (v44 == v39 && v45 == v40)
          {
            break;
          }

          v47 = sub_1B8AF0EA8();

          if (v47)
          {
            goto LABEL_71;
          }

          v42 = (v42 + 1) & v43;
          a4 = v61;
          if (((*(v33 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            v4 = a3;
            goto LABEL_42;
          }
        }

LABEL_71:
        *(v53 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
        v48 = __OFADD__(v57++, 1);
        v4 = a3;
        a4 = v61;
        if (v48)
        {
          __break(1u);
LABEL_74:
          v5 = v57;
          goto LABEL_75;
        }
      }
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v29 >= v51)
      {
        goto LABEL_74;
      }

      v36 = *(v30 + 8 * v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v59 = (v36 - 1) & v36;
        goto LABEL_49;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v9 = a4[7];
    v7 = a4 + 7;
    v8 = v9;
    v10 = 1 << *(v7 - 24);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v54 = v11 & v8;
    v49 = (v10 + 63) >> 6;
    v50 = v7;
    v58 = a3 + 56;
LABEL_6:
    while (v54)
    {
      v12 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v13 = v12 | (v6 << 6);
      v4 = a3;
      v14 = v61;
LABEL_13:
      v17 = *(v14[6] + v13);
      v18 = *(v4 + 40);
      sub_1B8AF1018();
      if (v17)
      {
        v19 = 0x65636E656C6F6976;
      }

      else
      {
        v19 = 1701998439;
      }

      if (v17)
      {
        v20 = 0xE800000000000000;
      }

      else
      {
        v20 = 0xE400000000000000;
      }

      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      v4 = 1 << v22;
      if (((1 << v22) & *(v58 + 8 * (v22 >> 6))) != 0)
      {
        v56 = v5;
        v24 = ~v21;
        while (1)
        {
          v25 = *(*(a3 + 48) + v22) ? 0x65636E656C6F6976 : 1701998439;
          v26 = *(*(a3 + 48) + v22) ? 0xE800000000000000 : 0xE400000000000000;
          if (v25 == v19 && v26 == v20)
          {
            break;
          }

          v28 = sub_1B8AF0EA8();

          if (v28)
          {
            goto LABEL_35;
          }

          v22 = (v22 + 1) & v24;
          v23 = v22 >> 6;
          v4 = 1 << v22;
          if ((*(v58 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
          {
            v5 = v56;
            goto LABEL_6;
          }
        }

LABEL_35:
        v53[v23] |= v4;
        v5 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          __break(1u);
          goto LABEL_38;
        }
      }
    }

    v15 = v6;
    v4 = a3;
    v14 = v61;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v49)
      {
LABEL_75:

        return sub_1B8A8742C(v53, a2, v5, v4);
      }

      v16 = v50[v6];
      ++v15;
      if (v16)
      {
        v54 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) | (v6 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8ABE1B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8ABE21C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B8ABEAB4();
  result = MEMORY[0x1B8CC6080](v2, &type metadata for AFMModel.Task, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B8ABC768(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B8ABE290(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1B8ABEB08();
  result = MEMORY[0x1B8CC6080](v1, &type metadata for BackgroundEstimator.Estimation.Classification, v2);
  v4 = result;
  if (v1)
  {
    do
    {
      LOBYTE(result) = sub_1B8ABCCDC(result, 0x70616373646E616CLL, 0xE900000000000065, sub_1B8ABD770);
      --v1;
    }

    while (v1);
    return v4;
  }

  return result;
}

uint64_t sub_1B8ABE324(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8CC6080](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B8ABCF68(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B8ABE3BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B8ABE420()
{
  result = qword_1EBA96EB0;
  if (!qword_1EBA96EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96EB0);
  }

  return result;
}

unint64_t sub_1B8ABE478()
{
  result = qword_1EBA96EB8;
  if (!qword_1EBA96EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA96EC0, &qword_1B8AFA1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96EB8);
  }

  return result;
}

unint64_t sub_1B8ABE4E0()
{
  result = qword_1EBA96EC8;
  if (!qword_1EBA96EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96EC8);
  }

  return result;
}

uint64_t sub_1B8ABE55C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8ABE594()
{
  result = sub_1B8AF0328();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_1B8AF03A8();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for MultimodalSanitizer.Configuration(319);
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1B8ABE71C()
{
  sub_1B8AEFED8();
  if (v0 <= 0x3F)
  {
    sub_1B8ABE7B8();
    if (v1 <= 0x3F)
    {
      sub_1B8ABE868();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8ABE7B8()
{
  if (!qword_1EBA96EF0)
  {
    sub_1B8ABE814();
    v0 = sub_1B8AF08A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA96EF0);
    }
  }
}

unint64_t sub_1B8ABE814()
{
  result = qword_1EBA96EF8;
  if (!qword_1EBA96EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96EF8);
  }

  return result;
}

void sub_1B8ABE868()
{
  if (!qword_1EBA96F00)
  {
    v0 = sub_1B8AF0948();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA96F00);
    }
  }
}

void sub_1B8ABE8E0()
{
  sub_1B8AF04E8();
  if (v0 <= 0x3F)
  {
    sub_1B8ABE974();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8ABE974()
{
  if (!qword_1EBA96F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA96F20, &qword_1B8AFA328);
    v0 = sub_1B8AF0948();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA96F18);
    }
  }
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MultimodalSanitizer.SignalValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MultimodalSanitizer.SignalValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B8ABEAB4()
{
  result = qword_1EBA96F28;
  if (!qword_1EBA96F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96F28);
  }

  return result;
}

unint64_t sub_1B8ABEB08()
{
  result = qword_1EBA96F68;
  if (!qword_1EBA96F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96F68);
  }

  return result;
}

uint64_t sub_1B8ABEB68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
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

uint64_t sub_1B8ABEBB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1B8ABEC10(void *a1)
{
  a1[1] = sub_1B8ABEC60();
  a1[2] = sub_1B8ABECB4();
  a1[3] = sub_1B8ABED08();
  a1[4] = sub_1B8ABED5C();
  a1[5] = sub_1B8ABEDB0();
  result = sub_1B8ABEE04();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8ABEC60()
{
  result = qword_1EBA96F80;
  if (!qword_1EBA96F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96F80);
  }

  return result;
}

unint64_t sub_1B8ABECB4()
{
  result = qword_1EBA96F88;
  if (!qword_1EBA96F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96F88);
  }

  return result;
}

unint64_t sub_1B8ABED08()
{
  result = qword_1EBA96F90;
  if (!qword_1EBA96F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96F90);
  }

  return result;
}

unint64_t sub_1B8ABED5C()
{
  result = qword_1EBA96F98;
  if (!qword_1EBA96F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96F98);
  }

  return result;
}

unint64_t sub_1B8ABEDB0()
{
  result = qword_1EBA96FA0;
  if (!qword_1EBA96FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96FA0);
  }

  return result;
}

unint64_t sub_1B8ABEE04()
{
  result = qword_1EBA96FA8;
  if (!qword_1EBA96FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96FA8);
  }

  return result;
}

uint64_t sub_1B8ABEE58(uint64_t *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96FB0, &qword_1B8AFA600);
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96FB8, &qword_1B8AFA608);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96FC0, &unk_1B8AFA610);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B8ABF38C();
  v16 = v35;
  sub_1B8AF1048();
  if (!v16)
  {
    v31 = 0;
    v35 = v10;
    v17 = sub_1B8AF0C78();
    v18 = (2 * *(v17 + 16)) | 1;
    v37 = v17;
    v38 = v17 + 32;
    v39 = 0;
    v40 = v18;
    v19 = sub_1B8AE4FD0();
    v20 = v9;
    if (v19 == 2 || v39 != v40 >> 1)
    {
      v23 = sub_1B8AF0B08();
      swift_allocError();
      v10 = v9;
      v25 = v24;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190) + 48);
      *v25 = &type metadata for MultimodalSanitizer.Error;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v35 + 8))(v13, v10);
    }

    else
    {
      v41 = v19;
      if (v19)
      {
        v42 = 1;
        sub_1B8ABF3E0();
        v21 = v31;
        sub_1B8AF0BF8();
        v22 = v35;
        if (!v21)
        {
          v30 = v32;
          v10 = sub_1B8AF0C18();
          (*(v34 + 8))(v4, v30);
          (*(v22 + 8))(v13, v20);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      else
      {
        v42 = 0;
        sub_1B8ABF434();
        v28 = v31;
        sub_1B8AF0BF8();
        v29 = v35;
        if (!v28)
        {
          v10 = sub_1B8AF0C18();
          (*(v33 + 8))(v8, v5);
          (*(v29 + 8))(v13, v20);
          goto LABEL_8;
        }
      }

      (*(v35 + 8))(v13, v20);
    }

LABEL_8:
    swift_unknownObjectRelease();
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(v36);
  return v10;
}

unint64_t sub_1B8ABF38C()
{
  result = qword_1EBA96FC8;
  if (!qword_1EBA96FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96FC8);
  }

  return result;
}

unint64_t sub_1B8ABF3E0()
{
  result = qword_1EBA96FD0;
  if (!qword_1EBA96FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96FD0);
  }

  return result;
}

unint64_t sub_1B8ABF434()
{
  result = qword_1EBA96FD8;
  if (!qword_1EBA96FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96FD8);
  }

  return result;
}

unint64_t sub_1B8ABF4BC()
{
  result = qword_1EBA96FF8;
  if (!qword_1EBA96FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96FF8);
  }

  return result;
}

unint64_t sub_1B8ABF514()
{
  result = qword_1EBA97000;
  if (!qword_1EBA97000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97000);
  }

  return result;
}

unint64_t sub_1B8ABF56C()
{
  result = qword_1EBA97008;
  if (!qword_1EBA97008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97008);
  }

  return result;
}

unint64_t sub_1B8ABF5C4()
{
  result = qword_1EBA97010;
  if (!qword_1EBA97010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97010);
  }

  return result;
}

unint64_t sub_1B8ABF61C()
{
  result = qword_1EBA97018;
  if (!qword_1EBA97018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97018);
  }

  return result;
}

unint64_t sub_1B8ABF674()
{
  result = qword_1EBA97020;
  if (!qword_1EBA97020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97020);
  }

  return result;
}

unint64_t sub_1B8ABF6CC()
{
  result = qword_1EBA97028;
  if (!qword_1EBA97028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97028);
  }

  return result;
}

unint64_t sub_1B8ABF724()
{
  result = qword_1EBA97030;
  if (!qword_1EBA97030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97030);
  }

  return result;
}

unint64_t sub_1B8ABF77C()
{
  result = qword_1EBA97038;
  if (!qword_1EBA97038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97038);
  }

  return result;
}

uint64_t sub_1B8ABF8C4()
{
  v1 = (v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1B8ABF988(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1B8ABF9E8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1B8ABFAFC()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8ABFB94(int a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SCMLPeopleDetectionAttribute.__allocating_init(term:gender:)(uint64_t a1, uint64_t a2, int a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SCMLPeopleDetectionAttribute.init(term:gender:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = &v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SCMLPeopleDetectionAttribute();
  return objc_msgSendSuper2(&v6, sel_init);
}

BOOL sub_1B8ABFD04(uint64_t a1)
{
  sub_1B8A8975C(a1, v12, &qword_1EBA97050, &qword_1B8AFA9C0);
  if (v13)
  {
    type metadata accessor for SCMLPeopleDetectionAttribute();
    if (swift_dynamicCast())
    {
      v2 = (v1 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
      swift_beginAccess();
      v3 = *v2;
      v4 = v2[1];
      v5 = &v11[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term];
      swift_beginAccess();
      v6 = v3 == *v5 && v4 == *(v5 + 1);
      if (v6 || (sub_1B8AF0EA8() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
        swift_beginAccess();
        v8 = *(v1 + v7);
        v9 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
        swift_beginAccess();
        LODWORD(v9) = *&v11[v9];

        return v8 == v9;
      }
    }
  }

  else
  {
    sub_1B8A897C4(v12, &qword_1EBA97050, &qword_1B8AFA9C0);
  }

  return 0;
}

uint64_t sub_1B8ABFF60()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8ABFFF8(char a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8AC00F0()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8AC0188(char a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8AC0280()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8AC0318(char a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8AC0410()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8AC04A8(char a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8AC05A0()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8AC0638(char a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1B8AC0900(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  if (*(a1 + v4))
  {

    v5 = sub_1B8AF0808();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1B8AC0990(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1B8AC09E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v6 = sub_1B8AF0818();
  }

  else
  {
    v6 = 0;
  }

  v7 = *a4;
  swift_beginAccess();
  v8 = *(a1 + v7);
  *(a1 + v7) = v6;
}

uint64_t sub_1B8AC0A64(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1B8AC0AB8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_1B8AC0BC4()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8AC0C5C(char a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

_BYTE *SCMLPersonAttributes.__allocating_init(specific:isGroup:hasAge:hasGender:hasEthnicity:age:gender:ethnicity:hasImplicitCategoryRequiringPersonalization:)(char a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = objc_allocWithZone(v9);
  v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific] = 0;
  v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup] = 0;
  v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge] = 0;
  v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender] = 0;
  v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity] = 0;
  *&v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age] = 0;
  *&v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender] = 0;
  *&v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity] = 0;
  v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization] = 0;
  v34.receiver = v14;
  v34.super_class = v9;
  v15 = objc_msgSendSuper2(&v34, sel_init);
  v16 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  v15[v16] = a1;
  v17 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  v15[v17] = a2;
  v18 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  v15[v18] = a3;
  v19 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  v15[v19] = a4;
  v20 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  v15[v20] = a5;
  v21 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age;
  swift_beginAccess();
  v22 = *&v15[v21];
  *&v15[v21] = a6;
  v23 = v15;

  v24 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender;
  swift_beginAccess();
  v25 = *&v23[v24];
  *&v23[v24] = a7;

  v26 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity;
  swift_beginAccess();
  v27 = *&v23[v26];
  *&v23[v26] = a8;

  v28 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  v23[v28] = a9;

  return v23;
}

_BYTE *SCMLPersonAttributes.init(specific:isGroup:hasAge:hasGender:hasEthnicity:age:gender:ethnicity:hasImplicitCategoryRequiringPersonalization:)(char a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific] = 0;
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup] = 0;
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge] = 0;
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender] = 0;
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity] = 0;
  *&v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age] = 0;
  *&v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender] = 0;
  *&v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity] = 0;
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization] = 0;
  v33.receiver = v9;
  v33.super_class = type metadata accessor for SCMLPersonAttributes();
  v14 = objc_msgSendSuper2(&v33, sel_init);
  v15 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  v14[v15] = a1;
  v16 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  v14[v16] = a2;
  v17 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  v14[v17] = a3;
  v18 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  v14[v18] = a4;
  v19 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  v14[v19] = a5;
  v20 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age;
  swift_beginAccess();
  v21 = *&v14[v20];
  *&v14[v20] = a6;
  v22 = v14;

  v23 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender;
  swift_beginAccess();
  v24 = *&v22[v23];
  *&v22[v23] = a7;

  v25 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity;
  swift_beginAccess();
  v26 = *&v22[v25];
  *&v22[v25] = a8;

  v27 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  v22[v27] = a9;

  return v22;
}

uint64_t sub_1B8AC1190(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for SCMLPeopleDetectionAttribute();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B8CC62C0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1B8CC62C0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1B8AF0918();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1B8AF0918();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1B8AF0BA8();
  }

  result = sub_1B8AF0BA8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1B8AC13CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B8AF0EA8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B8AC145C(uint64_t a1)
{
  sub_1B8A8975C(a1, v36, &qword_1EBA97050, &qword_1B8AFA9C0);
  if (!v37)
  {
    sub_1B8A897C4(v36, &qword_1EBA97050, &qword_1B8AFA9C0);
    goto LABEL_14;
  }

  type metadata accessor for SCMLPersonAttributes();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v33 = 0;
    return v33 & 1;
  }

  v2 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  LODWORD(v2) = *(v1 + v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  if (v2 != v35[v3])
  {
    goto LABEL_13;
  }

  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  LODWORD(v4) = *(v1 + v4);
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  if (v4 != v35[v5])
  {
    goto LABEL_13;
  }

  v6 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  LODWORD(v6) = *(v1 + v6);
  v7 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  if (v6 != v35[v7])
  {
    goto LABEL_13;
  }

  v8 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  LODWORD(v8) = *(v1 + v8);
  v9 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  if (v8 != v35[v9])
  {
    goto LABEL_13;
  }

  v10 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  LODWORD(v10) = *(v1 + v10);
  v11 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  if (v10 != v35[v11])
  {
    goto LABEL_13;
  }

  v12 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age;
  swift_beginAccess();
  v15 = *&v35[v14];

  v17 = sub_1B8AC92D8(v16, v15);

  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender;
  swift_beginAccess();
  v21 = *&v35[v20];

  v23 = sub_1B8AC93A4(v22, v21);

  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity;
  swift_beginAccess();
  v25 = *(v1 + v24);
  v26 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity;
  swift_beginAccess();
  v27 = *&v35[v26];

  v29 = sub_1B8AC92D8(v28, v27);

  if (!v29)
  {
LABEL_13:

    goto LABEL_14;
  }

  v30 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  v31 = *(v1 + v30);
  v32 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  LOBYTE(v32) = v35[v32];

  v33 = v31 ^ v32 ^ 1;
  return v33 & 1;
}

uint64_t sub_1B8AC1800(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1B8AF0A18();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1B8A897C4(v10, &qword_1EBA97050, &qword_1B8AFA9C0);
  return v8 & 1;
}

uint64_t SCMLPersonAttributes.__allocating_init(_:)(uint64_t a1)
{
  v1 = sub_1B8AC8A74(a1);

  return v1;
}

id SCMLPersonAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B8AC19D4()
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B0, &qword_1B8AFA9D0);
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v3 = &v12 - v2;
  v16 = MEMORY[0x1E69E7CC0];
  v4 = 3;
  sub_1B8AD84AC(0, 3, 0);
  v5 = v16;
  v6 = &unk_1F37470E8;
  do
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v14 = 25180;
    v15 = 0xE200000000000000;

    MEMORY[0x1B8CC5F50](v8, v7);

    MEMORY[0x1B8CC5F50](25180, 0xE200000000000000);

    sub_1B8AF0178();

    v16 = v5;
    v10 = *(v5 + 16);
    v9 = *(v5 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1B8AD84AC(v9 > 1, v10 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v10 + 1;
    result = (*(v0 + 32))(v5 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v10, v3, v13);
    v6 += 2;
    --v4;
  }

  while (v4);
  off_1EDB74E18 = v5;
  return result;
}

uint64_t sub_1B8AC1BD8()
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B0, &qword_1B8AFA9D0);
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v3 = &v18 - v2;
  v22 = MEMORY[0x1E69E7CC0];
  sub_1B8AD84AC(0, 2, 0);
  v4 = v22;
  v5 = *aChink;
  v6 = unk_1F3747138;
  v20 = 25180;
  v21 = 0xE200000000000000;

  MEMORY[0x1B8CC5F50](v5, v6);

  MEMORY[0x1B8CC5F50](25180, 0xE200000000000000);

  sub_1B8AF0178();

  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  if (v8 >= v7 >> 1)
  {
    sub_1B8AD84AC(v7 > 1, v8 + 1, 1);
    v4 = v22;
  }

  *(v4 + 16) = v8 + 1;
  v9 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v10 = *(v0 + 72);
  v11 = v4 + v9 + v10 * v8;
  v12 = *(v0 + 32);
  v12(v11, v3, v19);
  v14 = *aMage;
  v13 = unk_1F3747148;
  v20 = 25180;
  v21 = 0xE200000000000000;

  MEMORY[0x1B8CC5F50](v14, v13);

  MEMORY[0x1B8CC5F50](25180, 0xE200000000000000);

  sub_1B8AF0178();

  v22 = v4;
  v16 = *(v4 + 16);
  v15 = *(v4 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_1B8AD84AC(v15 > 1, v16 + 1, 1);
    v4 = v22;
  }

  *(v4 + 16) = v16 + 1;
  result = (v12)(v4 + v9 + v10 * v16, v3, v19);
  off_1EDB74A18 = v4;
  return result;
}

uint64_t sub_1B8AC1F10()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult_people;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1B8AC1FD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult_people;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B8AC2030(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult_people;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t SCMLPeopleDetectorImplResult.init(result:text:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v135 = a4;
  v132 = a3;
  v151 = *MEMORY[0x1E69E9840];
  v120 = sub_1B8AEFB28();
  v118 = *(v120 - 8);
  v8 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v119 = v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970A8, &qword_1B8AFA9C8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v138 = v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v128 = v116 - v14;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B0, &qword_1B8AFA9D0);
  v134 = *(v141 - 8);
  v15 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v140 = v116 - v16;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B8, &unk_1B8AFA9D8);
  v17 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v130 = v116 - v18;
  v19 = sub_1B8AF06A8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult_people;
  v25 = sub_1B8AE6928(MEMORY[0x1E69E7CC0]);
  v123 = v24;
  *&v4[v24] = v25;
  sub_1B8AF0698();
  v26 = sub_1B8AF0678();
  v28 = v27;
  (*(v20 + 8))(v23, v19);
  if (v28 >> 60 == 15)
  {
    goto LABEL_82;
  }

  v29 = objc_opt_self();
  v30 = sub_1B8AEFC18();
  *&v148 = 0;
  v31 = [v29 JSONObjectWithData:v30 options:0 error:&v148];

  if (!v31)
  {
    v69 = v148;

    v70 = sub_1B8AEFBD8();

    swift_willThrow();
LABEL_35:
    v71 = type metadata accessor for SCMLPeopleDetectorImplResult();
    v143.receiver = v7;
    v143.super_class = v71;
    v48 = objc_msgSendSuper2(&v143, sel_init);
    sub_1B8A89878(v26, v28);
    goto LABEL_37;
  }

  v32 = v148;
  sub_1B8AF0A18();
  swift_unknownObjectRelease();
  v116[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C28, &qword_1B8AF8FC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_35;
  }

  v116[0] = v28;
  v139 = v145;
  if (qword_1EDB74E10 != -1)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v33 = 0;
    v34 = off_1EDB74E18;
    v126 = v134 + 16;
    v125 = v134 + 32;
    v124 = (v134 + 8);
    v117 = v7;
    v35 = v128;
    v127 = v26;
    v121 = off_1EDB74E18;
    do
    {
      v36 = v34[2];
      if (v33 == v36)
      {
        break;
      }

      if (v33 >= v36)
      {
        goto LABEL_78;
      }

      v37 = v7;
      v38 = &unk_1F37470C0 + 16 * v33;
      v39 = *(v38 + 5);
      v122 = *(v38 + 4);
      v40 = v134;
      v41 = v34 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v42 = *(v134 + 72);
      v129 = v33;
      v43 = *(v131 + 48);
      v44 = v130;
      v45 = v141;
      (*(v134 + 16))(&v130[v43], &v41[v42 * v33], v141);
      v46 = &v44[v43];
      v47 = v140;
      (*(v40 + 32))(v140, v46, v45);
      v133 = v39;

      v48 = v47;
      sub_1B8AF0168();
      if (v6)
      {
        (*v124)(v140, v141);

        sub_1B8A89878(v26, v116[0]);

        v7 = v37;
        goto LABEL_36;
      }

      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970C0, &qword_1B8AFA9E8);
      v50 = *(v49 - 8);
      v137 = *(v50 + 48);
      v136 = (v50 + 48);
      if (v137(v35, 1, v49) == 1)
      {
        v7 = v37;
        (*v124)(v140, v141);

        sub_1B8A897C4(v35, &qword_1EBA970A8, &qword_1B8AFA9C8);
      }

      else
      {
        v7 = 0;
        sub_1B8A897C4(v35, &qword_1EBA970A8, &qword_1B8AFA9C8);
        v51 = v139 + 64;
        v52 = 1 << *(v139 + 32);
        if (v52 < 64)
        {
          v53 = ~(-1 << v52);
        }

        else
        {
          v53 = -1;
        }

        v54 = v53 & *(v139 + 64);
        v55 = (v52 + 63) >> 6;

        v56 = 0;
        if (!v54)
        {
LABEL_17:
          if (v55 <= v56 + 1)
          {
            v58 = v56 + 1;
          }

          else
          {
            v58 = v55;
          }

          v59 = v58 - 1;
          while (1)
          {
            v57 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              break;
            }

            if (v57 >= v55)
            {
              v54 = 0;
              v146 = 0u;
              v147 = 0u;
              v145 = 0u;
              goto LABEL_25;
            }

            v54 = *(v51 + 8 * v57);
            ++v56;
            if (v54)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_76:
          __swift_destroy_boxed_opaque_existential_0(&v145);

          sub_1B8A89878(v127, v116[0]);
LABEL_36:
          v72 = *&v7[v123];

          type metadata accessor for SCMLPeopleDetectorImplResult();
          swift_deallocPartialClassInstance();
LABEL_37:
          v73 = *MEMORY[0x1E69E9840];
          return v48;
        }

        while (1)
        {
          v57 = v56;
LABEL_24:
          v60 = __clz(__rbit64(v54));
          v54 &= v54 - 1;
          v61 = v60 | (v57 << 6);
          v62 = (*(v139 + 48) + 16 * v61);
          v63 = *v62;
          v64 = v62[1];
          sub_1B8A7BBE0(*(v139 + 56) + 32 * v61, &v144);
          *&v145 = v63;
          *(&v145 + 1) = v64;
          sub_1B8AAB328(&v144, &v146);

          v59 = v57;
LABEL_25:
          v148 = v145;
          v149 = v146;
          v150 = v147;
          if (!*(&v145 + 1))
          {
            v66 = v139;

            v67 = sub_1B8AE6A2C(&unk_1F3747150);
            sub_1B8A897C4(&unk_1F3747170, &qword_1EBA970C8, &qword_1B8AFA9F0);
            *(&v149 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970D0, &unk_1B8AFA9F8);
            *&v148 = v67;
            sub_1B8AAB328(&v148, &v145);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v144 = v66;
            sub_1B8AC5684(&v145, v122, v133, isUniquelyReferenced_nonNull_native);

            (*v124)(v140, v141);
            v139 = v144;
            goto LABEL_32;
          }

          v65 = v138;
          v48 = v140;
          sub_1B8AF0168();

          if (v137(v65, 1, v49) != 1)
          {
            break;
          }

          sub_1B8A897C4(v65, &qword_1EBA970A8, &qword_1B8AFA9C8);
          __swift_destroy_boxed_opaque_existential_0(&v149);
          v56 = v59;
          if (!v54)
          {
            goto LABEL_17;
          }
        }

        (*v124)(v140, v141);
        sub_1B8A897C4(v65, &qword_1EBA970A8, &qword_1B8AFA9C8);
        __swift_destroy_boxed_opaque_existential_0(&v149);
LABEL_32:
        v6 = 0;
        v7 = v117;
        v35 = v128;
      }

      v33 = v129 + 1;
      v26 = v127;
      v34 = v121;
    }

    while (v129 != 2);

    v26 = 0;
    v76 = v139 + 64;
    v75 = *(v139 + 64);
    v77 = 1 << *(v139 + 32);
    v78 = -1;
    if (v77 < 64)
    {
      v78 = ~(-1 << v77);
    }

    v79 = v78 & v75;
    v80 = (v77 + 63) >> 6;
    v136 = (v118 + 8);
    if ((v78 & v75) != 0)
    {
      break;
    }

LABEL_44:
    if (v80 <= v26 + 1)
    {
      v82 = v26 + 1;
    }

    else
    {
      v82 = v80;
    }

    v83 = v82 - 1;
    while (1)
    {
      v81 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v81 >= v80)
      {
        v79 = 0;
        v146 = 0u;
        v147 = 0u;
        v26 = v83;
        v145 = 0u;
        goto LABEL_53;
      }

      v79 = *(v76 + 8 * v81);
      ++v26;
      if (v79)
      {
        v26 = v81;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    swift_once();
  }

  while (1)
  {
    while (1)
    {
      v81 = v26;
LABEL_52:
      v84 = __clz(__rbit64(v79));
      v79 &= v79 - 1;
      v85 = v84 | (v81 << 6);
      v86 = (*(v139 + 48) + 16 * v85);
      v87 = *v86;
      v88 = v86[1];
      sub_1B8A7BBE0(*(v139 + 56) + 32 * v85, &v144);
      *&v145 = v87;
      *(&v145 + 1) = v88;
      sub_1B8AAB328(&v144, &v146);

LABEL_53:
      v148 = v145;
      v149 = v146;
      v150 = v147;
      v89 = *(&v145 + 1);
      if (!*(&v145 + 1))
      {

        v28 = v116[0];
        v26 = v127;
        goto LABEL_35;
      }

      v48 = v148;
      sub_1B8AAB328(&v149, &v145);
      if ((v48 || v89 != 0xE000000000000000) && (sub_1B8AF0EA8() & 1) == 0)
      {
        v90 = sub_1B8AC83F0(v48, v89);
        if (v6)
        {
          goto LABEL_76;
        }

        if (!v90)
        {
          sub_1B8A7BBE0(&v145, &v144);
          if (swift_dynamicCast())
          {
            break;
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_0(&v145);

      if (!v79)
      {
        goto LABEL_44;
      }
    }

    v137 = 0;
    v91 = v142;
    *&v144 = v48;
    *(&v144 + 1) = v89;
    v92 = v119;
    sub_1B8AEFB08();
    sub_1B8A3F920();
    v141 = sub_1B8AF09D8();
    v140 = v93;
    (*v136)(v92, v120);

    v138 = sub_1B8AC8A74(v91);

    v94 = v123;
    swift_beginAccess();
    v95 = *&v7[v94];
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v97 = v7;
    v98 = v96;
    v142 = *&v97[v94];
    v99 = v142;
    *&v97[v94] = 0x8000000000000000;
    v100 = v140;
    v101 = sub_1B8A3FC1C(v141, v140, MEMORY[0x1E69E60C8], sub_1B8A3FCB0);
    v103 = v99[2];
    v104 = (v102 & 1) == 0;
    v105 = __OFADD__(v103, v104);
    v106 = v103 + v104;
    if (v105)
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
    }

    v107 = v102;
    if (v99[3] >= v106)
    {
      if ((v98 & 1) == 0)
      {
        v115 = v101;
        sub_1B8AC5BFC();
        v101 = v115;
      }

      goto LABEL_67;
    }

    sub_1B8AC45F8(v106, v98);
    v101 = sub_1B8A3FC1C(v141, v100, MEMORY[0x1E69E60C8], sub_1B8A3FCB0);
    if ((v107 & 1) != (v108 & 1))
    {
      break;
    }

LABEL_67:
    v7 = v117;
    v109 = v142;
    if (v107)
    {
      v110 = v142[7];
      v111 = *(v110 + 8 * v101);
      *(v110 + 8 * v101) = v138;
    }

    else
    {
      v142[(v101 >> 6) + 8] |= 1 << v101;
      v112 = (v109[6] + 16 * v101);
      *v112 = v141;
      v112[1] = v100;
      *(v109[7] + 8 * v101) = v138;
      v113 = v109[2];
      v105 = __OFADD__(v113, 1);
      v114 = v113 + 1;
      if (v105)
      {
        goto LABEL_81;
      }

      v109[2] = v114;
    }

    v6 = v137;
    *&v7[v123] = v109;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(&v145);
    if (!v79)
    {
      goto LABEL_44;
    }
  }

  result = sub_1B8AF0FB8();
  __break(1u);
  return result;
}

id SCMLPeopleDetectorImpl.init(onBehalfOf:modelManagerServicesUseCaseID:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v52 = a2;
  v53 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - v11;
  v61 = v4;
  v57 = OBJC_IVAR____TtC26SensitiveContentAnalysisML22SCMLPeopleDetectorImpl_logger;
  sub_1B8AF0398();
  v13 = sub_1B8AEFCC8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v60 = a4;
  v15(v12, a4, v13);
  v16 = *(v14 + 56);
  v59 = v13;
  v16(v12, 0, 1, v13);
  v17 = type metadata accessor for AFMModel();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v56 = v17;
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v22 = sub_1B8AF03A8();
  v23 = __swift_project_value_buffer(v22, qword_1EDB75B38);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v55 = v21;
  v25(v20 + v21, v23, v22);
  v26 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v27 = sub_1B8AF0328();
  v28 = __swift_project_value_buffer(v27, qword_1EDB75B50);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v54 = v26;
  v30(v20 + v26, v28, v27);
  v65 = 0;
  sub_1B8A93BF0(v63);
  if (v5)
  {

    (*(v14 + 8))(v60, v59);
    sub_1B8A897C4(v12, &qword_1EBA96528, &unk_1B8AF64B0);
    v39 = *(v24 + 8);
    v38 = (v24 + 8);
    v39(v20 + v55, v22);
    (*(v29 + 8))(v20 + v54, v27);
    v40 = *(*v20 + 48);
    v41 = *(*v20 + 52);
    swift_deallocPartialClassInstance();
    v42 = v61;
    v39(v61 + v57, v22);
    type metadata accessor for SCMLPeopleDetectorImpl();
    v43 = *((*MEMORY[0x1E69E7D40] & *v42) + 0x30);
    v44 = *((*MEMORY[0x1E69E7D40] & *v42) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v20 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v32 = v63[1];
    *v31 = v63[0];
    *(v31 + 16) = v32;
    *(v31 + 32) = v64;
    LOBYTE(v63[0]) = 0;
    v50 = v12;
    v33 = v12;
    v34 = v51;
    sub_1B8A8975C(v33, v51, &qword_1EBA96528, &unk_1B8AF64B0);
    v35 = type metadata accessor for AFMModelCore();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v46 = sub_1B8A8AB94(v63, v52, v58, v53, 0, v34);
    sub_1B8A897C4(v50, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v20 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v46;
    v47 = v61;
    *(v61 + OBJC_IVAR____TtC26SensitiveContentAnalysisML22SCMLPeopleDetectorImpl_model) = v20;
    v48 = type metadata accessor for SCMLPeopleDetectorImpl();
    v62.receiver = v47;
    v62.super_class = v48;
    v38 = objc_msgSendSuper2(&v62, sel_init);
    (*(v14 + 8))(v60, v59);
  }

  return v38;
}

uint64_t sub_1B8AC3850(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8AC3874, 0, 0);
}

uint64_t sub_1B8AC3874()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC26SensitiveContentAnalysisML22SCMLPeopleDetectorImpl_model);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B8AC3918;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1B8A834C4(v4, v3);
}

uint64_t sub_1B8AC3918(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1B8AC3BA0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_1B8AF0668();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B8AC3C2C, 0, 0);
}

uint64_t sub_1B8AC3C2C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC26SensitiveContentAnalysisML22SCMLPeopleDetectorImpl_model);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8AC3CD0;
  v4 = v0[4];
  v3 = v0[5];

  return sub_1B8A834C4(v4, v3);
}

uint64_t sub_1B8AC3CD0(void *a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(v5 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8AC3E4C, 0, 0);
  }

  else
  {
    v6 = *(v5 + 40);
    v7 = *(v5 + 24);

    (v7)[2](v7, a1, 0);
    _Block_release(v7);

    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_1B8AC3E4C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  v4 = sub_1B8AEFBC8();

  (v3)[2](v3, 0, v4);
  _Block_release(v3);
  v5 = *(v0 + 8);

  return v5();
}

id sub_1B8AC3F78(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1B8AC4058(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B8AF1018();
  type metadata accessor for CFString(0);
  sub_1B8ACA394(&qword_1EBA970F0, 255, type metadata accessor for CFString);
  sub_1B8AEFF78();
  v4 = sub_1B8AF1038();

  return sub_1B8AC4214(a1, v4);
}

unint64_t sub_1B8AC4110(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B8AF1018();
  sub_1B8AF05F8();

  v5 = sub_1B8AF1038();

  return sub_1B8AC4324(a1 & 1, v5);
}

unint64_t sub_1B8AC41B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B8AF0B88();
  v5 = sub_1B8AF05E8();

  return sub_1B8AC4460(a1, v5);
}

unint64_t sub_1B8AC4214(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1B8ACA394(&qword_1EBA970F0, 255, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B8AEFF68();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B8AC4324(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x65636E656C6F6976;
    }

    else
    {
      v6 = 1701998439;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x65636E656C6F6976 : 1701998439;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1B8AF0EA8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B8AC4460(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1B8AF0B88();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_1B8AF0648();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1B8AC45F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97100, &qword_1B8AFAB58);
  v39 = a2;
  result = sub_1B8AF0BC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B8AC489C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97108, &unk_1B8AFAB60);
  v36 = a2;
  result = sub_1B8AF0BC8();
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
        sub_1B8AAB328(v25, v37);
      }

      else
      {
        sub_1B8A7BBE0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
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
      result = sub_1B8AAB328(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1B8AC4B54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970E8, &qword_1B8AFD3D0);
  result = sub_1B8AF0BC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1B8AAB328(v22, v34);
      }

      else
      {
        sub_1B8A7BBE0(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_1B8AF1018();
      type metadata accessor for CFString(0);
      sub_1B8ACA394(&qword_1EBA970F0, 255, type metadata accessor for CFString);
      sub_1B8AEFF78();
      result = sub_1B8AF1038();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1B8AAB328(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B8AC4E38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97120, &unk_1B8AFD400);
  v38 = a2;
  result = sub_1B8AF0BC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B8AC50E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97118, &qword_1B8AFAB70);
  result = sub_1B8AF0BC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = a2;
    v37 = v3;
    v38 = v5;
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
      v22 = *(v5 + 56);
      v23 = *(*(v5 + 48) + v21);
      v24 = (v22 + 12 * v21);
      v39 = *(v24 + 1);
      v40 = v24[8];
      v25 = v24[1];
      v26 = *v24;
      v27 = *(v8 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v23;
      v17 = *(v8 + 56) + 12 * v16;
      *v17 = v26;
      *(v17 + 1) = v25;
      *(v17 + 4) = v39;
      *(v17 + 8) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v36)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1B8AC53C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970F8, &qword_1B8AFAB50);
  v40 = a2;
  result = sub_1B8AF0BC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

_OWORD *sub_1B8AC5684(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B8A3FC1C(a2, a3, MEMORY[0x1E69E60C8], sub_1B8A3FCB0);
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
      sub_1B8AC5D68();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B8AC489C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B8A3FC1C(a2, a3, MEMORY[0x1E69E60C8], sub_1B8A3FCB0);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B8AF0FB8();
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

    return sub_1B8AAB328(a1, v23);
  }

  else
  {
    sub_1B8AC5ABC(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1B8AC5824(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B8AC4058(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1B8AC5F0C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1B8AC4B54(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1B8AC4058(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1B8AF0FB8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_1B8AAB328(a1, v20);
  }

  else
  {
    sub_1B8AC5B28(v8, a2, a1, v19);

    return a2;
  }
}

unint64_t sub_1B8AC5964(uint64_t a1, char a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B8AC4110(a3 & 1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1B8AC61FC();
      result = v19;
      goto LABEL_8;
    }

    sub_1B8AC50E0(v16, a4 & 1);
    v20 = *v5;
    result = sub_1B8AC4110(a3 & 1);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_1B8AF0FB8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 12 * result;
    *v23 = a1 & 1;
    *(v23 + 1) = BYTE1(a1) & 1;
    *(v23 + 4) = HIDWORD(a1);
    *(v23 + 8) = a2 & 1;
  }

  else
  {

    return sub_1B8AC5B90(result, a3 & 1, a1 & 0xFFFFFFFF00000101, a2 & 1, v22);
  }

  return result;
}

_OWORD *sub_1B8AC5ABC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B8AAB328(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_1B8AC5B28(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1B8AAB328(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1B8AC5B90(unint64_t result, char a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2 & 1;
  v5 = a5[7] + 12 * result;
  *v5 = a3 & 1;
  *(v5 + 1) = BYTE1(a3) & 1;
  *(v5 + 4) = HIDWORD(a3);
  *(v5 + 8) = a4 & 1;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

id sub_1B8AC5BFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97100, &qword_1B8AFAB58);
  v2 = *v0;
  v3 = sub_1B8AF0BB8();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B8AC5D68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97108, &unk_1B8AFAB60);
  v2 = *v0;
  v3 = sub_1B8AF0BB8();
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
        sub_1B8A7BBE0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B8AAB328(v25, (*(v4 + 56) + v22));
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

id sub_1B8AC5F0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970E8, &qword_1B8AFD3D0);
  v2 = *v0;
  v3 = sub_1B8AF0BB8();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1B8A7BBE0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1B8AAB328(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B8AC608C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97120, &unk_1B8AFD400);
  v2 = *v0;
  v3 = sub_1B8AF0BB8();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B8AC61FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97118, &qword_1B8AFAB70);
  v2 = *v0;
  v3 = sub_1B8AF0BB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 12 * v14;
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = *(v17 + 4);
      LOBYTE(v17) = *(v17 + 8);
      result = *(v4 + 48);
      *(result + v14) = *(*(v2 + 48) + v14);
      v21 = *(v4 + 56) + 12 * v14;
      *v21 = v18;
      *(v21 + 1) = v19;
      *(v21 + 4) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B8AC6370()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970F8, &qword_1B8AFAB50);
  v2 = *v0;
  v3 = sub_1B8AF0BB8();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B8AC64E8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = (a2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v5 == v8 && v6 == v9;
  if (v10 || (sub_1B8AF0EA8() & 1) != 0)
  {
    v11 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
    swift_beginAccess();
    v12 = *(a1 + v11);
    v13 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
    swift_beginAccess();
    v14 = v12 < *(a2 + v13);
  }

  else
  {
    v14 = sub_1B8AF0EA8();
  }

  return v14 & 1;
}

uint64_t sub_1B8AC6604(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B8AC8298(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v27 = v2 + 32;
  v32[0] = v2 + 32;
  v32[1] = v4;
  v5 = sub_1B8AF0D18();
  if (v5 >= v4)
  {
    if (v4 < 2)
    {
      return sub_1B8AF0B38();
    }

    v8 = -1;
    v9 = 1;
    v10 = (v2 + 32);
    v26 = v4;
LABEL_9:
    v29 = v9;
    v11 = *(v27 + 8 * v9);
    v33 = v8;
    v28 = v10;
    while (1)
    {
      v17 = *v10;
      v18 = (v11 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
      swift_beginAccess();
      v19 = *v18;
      v20 = v18[1];
      v21 = (v17 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
      swift_beginAccess();
      v22 = *v21;
      v23 = v21[1];
      v24 = v19 == v22 && v20 == v23;
      if (v24 || (sub_1B8AF0EA8() & 1) != 0)
      {
        v12 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
        swift_beginAccess();
        v13 = *(v11 + v12);
        v14 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
        swift_beginAccess();
        if (v13 >= *(v17 + v14))
        {
          goto LABEL_8;
        }
      }

      else if ((sub_1B8AF0EA8() & 1) == 0)
      {
LABEL_8:
        v9 = v29 + 1;
        v10 = v28 + 1;
        v8 = v33 - 1;
        if (v29 + 1 == v26)
        {
          return sub_1B8AF0B38();
        }

        goto LABEL_9;
      }

      v15 = *v10;
      v11 = v10[1];
      *v10 = v11;
      v10[1] = v15;
      --v10;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_8;
      }
    }
  }

  v6 = v5;
  if (v4 >= 2)
  {
    type metadata accessor for SCMLPeopleDetectionAttribute();
    v7 = sub_1B8AF0848();
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v31[0] = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
  v31[1] = v4 >> 1;
  sub_1B8AC6A80(v31, v30, v32, v6);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

  return sub_1B8AF0B38();
}

uint64_t sub_1B8AC684C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B8AC82AC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B8AC68B8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B8AC68B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B8AF0D18();
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
        v5 = sub_1B8AF0848();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B8AC7578(v7, v8, a1, v4);
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
    return sub_1B8AC69B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B8AC69B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1B8AF0EA8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B8AC6A80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v133 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_152:
    v4 = *v133;
    if (!*v133)
    {
      goto LABEL_190;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_154;
    }

    goto LABEL_185;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v8 >= v4)
    {
      v4 = v8;
    }

    else
    {
      v9 = *a3;
      result = sub_1B8AC64E8(*(*a3 + 8 * v8), *(*a3 + 8 * v7));
      v156 = result;
      if (v134)
      {
      }

      v141 = v7;
      v144 = v6;
      v10 = v7 + 2;
      __dst = (8 * v7);
      v152 = v4;
      v11 = (v9 + 8 * v7 + 16);
      while (v4 != v10)
      {
        v14 = *(v11 - 1);
        v15 = *v11;
        v16 = (*v11 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v17 = *v16;
        v18 = v16[1];
        v19 = (v14 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v20 = v17 == *v19 && v18 == v19[1];
        if (v20 || (v21 = *v19, v22 = v19[1], (sub_1B8AF0EA8() & 1) != 0))
        {
          v12 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          LODWORD(v12) = *(v15 + v12);
          v13 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          result = v12 < *(v14 + v13);
        }

        else
        {
          result = sub_1B8AF0EA8();
        }

        ++v10;
        ++v11;
        v4 = v152;
        if ((v156 ^ result))
        {
          v4 = v10 - 1;
          break;
        }
      }

      v7 = v141;
      v6 = v144;
      v23 = __dst;
      if (v156)
      {
        if (v4 < v141)
        {
          goto LABEL_183;
        }

        if (v141 < v4)
        {
          v24 = 8 * v4 - 8;
          v25 = v4;
          v26 = v141;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_187;
              }

              v27 = *&v23[v28];
              *&v23[v28] = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }
    }

    v29 = a3[1];
    if (v4 < v29)
    {
      if (__OFSUB__(v4, v7))
      {
        goto LABEL_180;
      }

      if (v4 - v7 < a4)
      {
        if (__OFADD__(v7, a4))
        {
          goto LABEL_181;
        }

        if (v7 + a4 < v29)
        {
          v29 = v7 + a4;
        }

        if (v29 < v7)
        {
          goto LABEL_182;
        }

        if (v4 != v29)
        {
          v136 = v29;
          v143 = v7;
          v146 = v6;
          v158 = *a3;
          v114 = (*a3 + 8 * v4 - 8);
          v115 = v7 - v4;
          do
          {
            __dstb = v114;
            v155 = v4;
            v116 = *(v158 + 8 * v4);
            v148 = v115;
            do
            {
              v117 = *v114;
              v118 = (v116 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
              swift_beginAccess();
              v4 = *v118;
              v119 = v118[1];
              v120 = (v117 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
              swift_beginAccess();
              v6 = v120[1];
              v121 = v4 == *v120 && v119 == v6;
              if (v121 || (v122 = *v120, v123 = v120[1], (sub_1B8AF0EA8() & 1) != 0))
              {
                v124 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
                swift_beginAccess();
                LODWORD(v124) = *(v116 + v124);
                v125 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
                swift_beginAccess();
                if (v124 >= *(v117 + v125))
                {
                  break;
                }
              }

              else if ((sub_1B8AF0EA8() & 1) == 0)
              {
                break;
              }

              if (!v158)
              {
                goto LABEL_184;
              }

              v126 = *v114;
              v116 = *(v114 + 1);
              *v114 = v116;
              *(v114 + 1) = v126;
              v114 -= 8;
            }

            while (!__CFADD__(v115++, 1));
            v4 = v155 + 1;
            v114 = __dstb + 8;
            v115 = v148 - 1;
          }

          while (v155 + 1 != v136);
          v7 = v143;
          v6 = v146;
          v30 = v136;
          if (v136 >= v143)
          {
            goto LABEL_36;
          }

LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          result = sub_1B8AC81F0(v6);
          v6 = result;
LABEL_154:
          v128 = *(v6 + 2);
          if (v128 >= 2)
          {
            while (*a3)
            {
              v129 = *&v6[16 * v128];
              v130 = *&v6[16 * v128 + 24];
              sub_1B8AC7B54((*a3 + 8 * v129), (*a3 + 8 * *&v6[16 * v128 + 16]), (*a3 + 8 * v130), v4);
              if (v134)
              {
              }

              if (v130 < v129)
              {
                goto LABEL_178;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_1B8AC81F0(v6);
              }

              if (v128 - 2 >= *(v6 + 2))
              {
                goto LABEL_179;
              }

              v131 = &v6[16 * v128];
              *v131 = v129;
              *(v131 + 1) = v130;
              result = sub_1B8AC8164(v128 - 1);
              v128 = *(v6 + 2);
              if (v128 <= 1)
              {
              }
            }

            goto LABEL_189;
          }
        }
      }
    }

    v30 = v4;
    if (v4 < v7)
    {
      goto LABEL_177;
    }

LABEL_36:
    v135 = v30;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B8ABB094(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
    }

    v32 = *(v6 + 2);
    v31 = *(v6 + 3);
    v4 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      result = sub_1B8ABB094((v31 > 1), v32 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v4;
    v33 = &v6[16 * v32];
    *(v33 + 4) = v7;
    *(v33 + 5) = v135;
    __dsta = *v133;
    if (!*v133)
    {
      goto LABEL_188;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v5 = v135;
    v4 = a3[1];
    if (v135 >= v4)
    {
      goto LABEL_152;
    }
  }

  while (1)
  {
    v34 = v4 - 1;
    if (v4 >= 4)
    {
      v39 = &v6[16 * v4 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_166;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_167;
      }

      v46 = &v6[16 * v4];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_169;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_172;
      }

      if (v50 >= v42)
      {
        v68 = &v6[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_176;
        }

        if (v37 < v71)
        {
          v34 = v4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

    if (v4 == 3)
    {
      v35 = *(v6 + 4);
      v36 = *(v6 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_55:
      if (v38)
      {
        goto LABEL_168;
      }

      v51 = &v6[16 * v4];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_171;
      }

      v57 = &v6[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_174;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_175;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    v61 = &v6[16 * v4];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_69:
    if (v56)
    {
      goto LABEL_170;
    }

    v64 = &v6[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_173;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_76:
    if (v34 - 1 >= v4)
    {
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

    v72 = *a3;
    if (!*a3)
    {
      break;
    }

    v142 = v34;
    v145 = v6;
    v73 = v6 + 32;
    v138 = v34 - 1;
    v74 = *&v6[16 * v34 + 16];
    v75 = *&v73[16 * v34 + 8];
    v76 = (v72 + 8 * v74);
    v77 = 8 * *&v73[16 * v34];
    v78 = (v72 + v77);
    v139 = v75;
    v140 = v74;
    v79 = 8 * v75;
    v80 = (v72 + 8 * v75);
    v81 = v77 - 8 * v74;
    v82 = 8 * v75 - v77;
    if (v81 >= v82)
    {
      if (v78 != __dsta || v80 <= __dsta)
      {
        v96 = (v72 + v77);
        memmove(__dsta, (v72 + v77), 8 * v75 - v77);
        v78 = v96;
      }

      v157 = &__dsta[v82];
      if (v82 < 1 || v77 <= 8 * v74)
      {
        v6 = __dsta;
        v111 = v78;
        goto LABEL_125;
      }

      while (1)
      {
        v154 = v78;
        v97 = v78 - 8;
        v80 -= 8;
        v98 = v157;
        v147 = v78 - 8;
        while (1)
        {
          v100 = *(v98 - 1);
          v98 -= 8;
          v99 = v100;
          v101 = *v97;
          v102 = (v100 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
          swift_beginAccess();
          v104 = *v102;
          v103 = v102[1];
          v105 = (v101 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
          swift_beginAccess();
          v107 = *v105;
          v106 = v105[1];
          v108 = v104 == v107 && v103 == v106;
          if (!v108 && (sub_1B8AF0EA8() & 1) == 0)
          {
            break;
          }

          v109 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          LODWORD(v109) = *(v99 + v109);
          v110 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          if (v109 < *(v101 + v110))
          {
            goto LABEL_116;
          }

LABEL_114:
          if (v80 + 8 != v157)
          {
            *v80 = *v98;
          }

          v80 -= 8;
          v157 = v98;
          v97 = v147;
          if (v98 <= __dsta)
          {
            v157 = v98;
            v6 = __dsta;
            v111 = v154;
            goto LABEL_125;
          }
        }

        if ((sub_1B8AF0EA8() & 1) == 0)
        {
          goto LABEL_114;
        }

LABEL_116:
        v6 = __dsta;
        v111 = v147;
        if (v80 + 8 != v154)
        {
          *v80 = *v147;
        }

        if (v157 > __dsta)
        {
          v78 = v147;
          if (v76 < v147)
          {
            continue;
          }
        }

        goto LABEL_125;
      }
    }

    if (v76 != __dsta || v78 <= __dsta)
    {
      v83 = (v72 + v77);
      memmove(__dsta, (v72 + 8 * v74), v77 - 8 * v74);
      v78 = v83;
    }

    v157 = &__dsta[v81];
    if (v81 >= 1 && v79 > v77)
    {
      v6 = __dsta;
      while (1)
      {
        v153 = v78;
        v84 = *v78;
        v85 = *v6;
        v86 = (*v78 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v87 = *v86;
        v88 = v86[1];
        v89 = (v85 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v90 = *v89;
        v91 = v89[1];
        v92 = v87 == v90 && v88 == v91;
        if (v92 || (sub_1B8AF0EA8() & 1) != 0)
        {
          v93 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          LODWORD(v93) = *(v84 + v93);
          v94 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          if (v93 >= *(v85 + v94))
          {
            goto LABEL_94;
          }
        }

        else if ((sub_1B8AF0EA8() & 1) == 0)
        {
LABEL_94:
          v95 = v6;
          v20 = v76 == v6;
          v6 += 8;
          v78 = v153;
          if (v20)
          {
            goto LABEL_96;
          }

LABEL_95:
          *v76 = *v95;
          goto LABEL_96;
        }

        v95 = v153;
        v78 = v153 + 8;
        if (v76 != v153)
        {
          goto LABEL_95;
        }

LABEL_96:
        v76 += 8;
        if (v6 >= v157 || v78 >= v80)
        {
          goto LABEL_122;
        }
      }
    }

    v6 = __dsta;
LABEL_122:
    v111 = v76;
LABEL_125:
    if (v111 != v6 || v111 >= &v6[(v157 - v6 + (v157 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v111, v6, 8 * ((v157 - v6) / 8));
    }

    v4 = v139;
    v112 = v145;
    if (v139 < v140)
    {
      goto LABEL_164;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = sub_1B8AC81F0(v145);
    }

    if (v142 > *(v112 + 2))
    {
      goto LABEL_165;
    }

    v113 = &v112[16 * v138];
    *(v113 + 4) = v140;
    *(v113 + 5) = v139;
    result = sub_1B8AC8164(v142);
    v6 = v112;
    v4 = *(v112 + 2);
    if (v4 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
  return result;
}

uint64_t sub_1B8AC7578(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1B8AC81F0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1B8AC7F3C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1B8AF0EA8();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B8AF0EA8();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B8ABB094(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B8ABB094((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
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
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1B8AC7F3C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B8AC81F0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1B8AC8164(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1B8AF0EA8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1B8AC7B54(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v28 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v50 = &v4[8 * v12];
    if (v10 >= 8 && v28 > v6)
    {
      v49 = v4;
LABEL_32:
      v47 = v28;
      v29 = v28 - 8;
      v5 -= 8;
      v30 = v50;
      v45 = v29;
      do
      {
        v32 = *(v30 - 1);
        v30 -= 8;
        v31 = v32;
        v33 = *v29;
        v34 = (v32 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v35 = *v34;
        v36 = v34[1];
        v37 = (v33 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v38 = *v37;
        v39 = v37[1];
        v40 = v35 == v38 && v36 == v39;
        if (v40 || (sub_1B8AF0EA8() & 1) != 0)
        {
          v41 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          v42 = *(v31 + v41);
          v43 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          if (v42 < *(v33 + v43))
          {
            goto LABEL_44;
          }
        }

        else if (sub_1B8AF0EA8())
        {
LABEL_44:
          v4 = v49;
          if (v5 + 8 != v47)
          {
            *v5 = *v45;
          }

          if (v50 <= v49 || (v28 = v45, v45 <= v6))
          {
            v28 = v45;
            goto LABEL_50;
          }

          goto LABEL_32;
        }

        v4 = v49;
        if (v5 + 8 != v50)
        {
          *v5 = *v30;
        }

        v5 -= 8;
        v50 = v30;
        v29 = v45;
      }

      while (v30 > v49);
      v50 = v30;
      v28 = v47;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v50 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      do
      {
        v46 = v14;
        v48 = v4;
        v15 = *v14;
        v16 = *v4;
        v17 = (*v14 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v18 = *v17;
        v19 = v17[1];
        v20 = (v16 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v21 = *v20;
        v22 = v20[1];
        v23 = v18 == v21 && v19 == v22;
        if (v23 || (sub_1B8AF0EA8() & 1) != 0)
        {
          v24 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          v25 = *(v15 + v24);
          v26 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          if (v25 >= *(v16 + v26))
          {
            goto LABEL_21;
          }
        }

        else if ((sub_1B8AF0EA8() & 1) == 0)
        {
LABEL_21:
          v14 = v46;
          v27 = v48;
          v4 = v48 + 8;
          if (v6 == v48)
          {
            goto LABEL_23;
          }

LABEL_22:
          *v6 = *v27;
          goto LABEL_23;
        }

        v4 = v48;
        v27 = v46;
        v14 = v46 + 8;
        if (v6 != v46)
        {
          goto LABEL_22;
        }

LABEL_23:
        v6 += 8;
      }

      while (v4 < v50 && v14 < v5);
    }

    v28 = v6;
  }

LABEL_50:
  if (v28 != v4 || v28 >= &v4[(v50 - v4 + (v50 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v28, v4, 8 * ((v50 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1B8AC7F3C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1B8AF0EA8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1B8AF0EA8() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1B8AC8164(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B8AC81F0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B8AC8204(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1B8AF0BA8();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1B8ADAA28(v3, 0);
  sub_1B8ADAB2C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t _s26SensitiveContentAnalysisML28SCMLPeopleDetectionAttributeC1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = (a2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v5 == v8 && v6 == v9;
  if (v10 || (sub_1B8AF0EA8() & 1) != 0)
  {
    v11 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
    swift_beginAccess();
    v12 = *(a1 + v11);
    v13 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
    swift_beginAccess();
    v14 = v12 < *(a2 + v13);
  }

  else
  {
    v14 = sub_1B8AF0EA8();
  }

  return v14 & 1;
}

BOOL sub_1B8AC83F0(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970A8, &qword_1B8AFA9C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B0, &qword_1B8AFA9D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  if (qword_1EDB74A10 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = off_1EDB74A18;
    v13 = *(off_1EDB74A18 + 2);
    if (!v13)
    {
      break;
    }

    v14 = 0;
    v20 = v13 - 1;
    v21 = v8 + 16;
    while (v14 < v12[2])
    {
      (*(v8 + 16))(v11, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v7);
      sub_1B8AF0168();
      (*(v8 + 8))(v11, v7);
      if (v2)
      {
        return 1;
      }

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970C0, &qword_1B8AFA9E8);
      v16 = (*(*(v15 - 8) + 48))(v6, 1, v15);
      sub_1B8A897C4(v6, &qword_1EBA970A8, &qword_1B8AFA9C8);
      result = v16 != 1;
      if (v16 == 1 && v20 != v14++)
      {
        continue;
      }

      return result;
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  return 0;
}

uint64_t sub_1B8AC8674(uint64_t a1)
{
  sub_1B8A7BBE0(a1, v13);
  if (swift_dynamicCast())
  {
    return v11;
  }

  sub_1B8A7BBE0(a1, v13);
  if (swift_dynamicCast())
  {
    v3 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v3 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1B8AF6490;
      *(v4 + 32) = v11;
      *(v4 + 40) = v12;
      return 1;
    }
  }

  else
  {
    sub_1B8A7BBE0(a1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97110, &qword_1B8AFD600);
    result = swift_dynamicCast();
    if (!result)
    {
      return result;
    }

    v5 = *(v11 + 16);
    if (v5)
    {
      v6 = v11 + 32;
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1B8A7BBE0(v6, v13);
        if (swift_dynamicCast())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1B8ABAC24(0, *(v7 + 2) + 1, 1, v7);
          }

          v10 = *(v7 + 2);
          v9 = *(v7 + 3);
          if (v10 >= v9 >> 1)
          {
            v7 = sub_1B8ABAC24((v9 > 1), v10 + 1, 1, v7);
          }

          *(v7 + 2) = v10 + 1;
          v8 = &v7[16 * v10];
          *(v8 + 4) = v11;
          *(v8 + 5) = v12;
        }

        v6 += 32;
        --v5;
      }

      while (v5);

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B8AC8898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1701601645 && a3 == 0xE400000000000000 || (sub_1B8AF0EA8() & 1) != 0)
  {
    v6 = 1;
  }

  else if (a2 == 0x656C616D6566 && a3 == 0xE600000000000000 || (sub_1B8AF0EA8() & 1) != 0)
  {
    v6 = 2;
  }

  else if (a2 == 0x616E69625F6E6F6ELL && a3 == 0xEA00000000007972 || (v6 = 0, (sub_1B8AF0EA8() & 1) != 0))
  {
    v6 = 3;
  }

  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1B8AF0B48();
    v9 = type metadata accessor for SCMLPeopleDetectionAttribute();
    v10 = (a1 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = objc_allocWithZone(v9);
      v14 = &v13[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term];
      *v14 = v12;
      *(v14 + 1) = v11;
      *&v13[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender] = v6;
      v16.receiver = v13;
      v16.super_class = v9;

      objc_msgSendSuper2(&v16, sel_init);
      sub_1B8AF0B28();
      v15 = *(v17 + 16);
      sub_1B8AF0B58();
      sub_1B8AF0B68();
      sub_1B8AF0B38();
      v10 += 2;
      --v7;
    }

    while (v7);
    return v17;
  }

  return result;
}

uint64_t sub_1B8AC8A74(uint64_t a1)
{
  v2 = type metadata accessor for SCMLPersonAttributes();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific] = 0;
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup] = 0;
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge] = 0;
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender] = 0;
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity] = 0;
  *&v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age] = 0;
  *&v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender] = 0;
  *&v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity] = 0;
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization] = 0;
  v68.receiver = v3;
  v68.super_class = v2;
  v4 = objc_msgSendSuper2(&v68, sel_init);
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  v4[v5] = 0;
  v6 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  v61 = v6;
  v4[v6] = 0;
  v7 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  v60 = v7;
  v4[v7] = 0;
  v8 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  v57 = v8;
  v4[v8] = 0;
  v9 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  v56 = v9;
  v4[v9] = 0;
  v10 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age;
  swift_beginAccess();
  v11 = *&v4[v10];
  v59 = v10;
  *&v4[v10] = 0;
  v12 = v4;

  v13 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender;
  swift_beginAccess();
  v14 = *&v12[v13];
  v58 = v13;
  *&v12[v13] = 0;

  v15 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity;
  swift_beginAccess();
  v16 = *&v12[v15];
  v55 = v15;
  *&v12[v15] = 0;

  v17 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  v54 = v17;
  v12[v17] = 0;

  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;

  v23 = 0;
  while (v20)
  {
    v25 = v23;
LABEL_15:
    v28 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v29 = v28 | (v25 << 6);
    v30 = (*(a1 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    sub_1B8A7BBE0(*(a1 + 56) + 32 * v29, v62);
    *&v63 = v32;
    *(&v63 + 1) = v31;
    sub_1B8AAB328(v62, &v64);

LABEL_16:
    v66 = v63;
    v67[0] = v64;
    v67[1] = v65;
    v33 = *(&v63 + 1);
    if (!*(&v63 + 1))
    {

      return v12;
    }

    v34 = v66;
    sub_1B8AAB328(v67, &v63);
    if (v34 == 0x6369666963657073 && v33 == 0xE800000000000000 || (sub_1B8AF0EA8() & 1) != 0)
    {

      v24 = sub_1B8AC8674(&v63);
      __swift_destroy_boxed_opaque_existential_0(&v63);

      v4[v5] = v24 & 1;
    }

    else if (v34 == 0x70756F72675F7369 && v33 == 0xE800000000000000 || (sub_1B8AF0EA8() & 1) != 0)
    {

      v35 = sub_1B8AC8674(&v63);
      __swift_destroy_boxed_opaque_existential_0(&v63);

      v4[v61] = v35 & 1;
    }

    else if (v34 == 6645601 && v33 == 0xE300000000000000 || (sub_1B8AF0EA8() & 1) != 0)
    {

      v36 = sub_1B8AC8674(&v63);
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_0(&v63);
      v4[v60] = v36 & 1;
      v39 = *&v4[v59];
      *&v4[v59] = v38;
    }

    else if (v34 == 0x7265646E6567 && v33 == 0xE600000000000000 || ((v42 = sub_1B8AF0EA8(), v34 == 0x656C616D6566) ? (v43 = v33 == 0xE600000000000000) : (v43 = 0), !v43 ? (v44 = 0) : (v44 = 1), (v42 & 1) != 0 || (v44 & 1) != 0 || (sub_1B8AF0EA8() & 1) != 0 || v34 == 1701601645 && v33 == 0xE400000000000000 || (sub_1B8AF0EA8() & 1) != 0 || v34 == 0x616E69625F6E6F6ELL && v33 == 0xEA00000000007972 || (sub_1B8AF0EA8() & 1) != 0))
    {
      v4[v57] = (v4[v57] | sub_1B8AC8674(&v63)) & 1;
      if (v40)
      {
        if (!*&v12[v58])
        {
          *&v12[v58] = MEMORY[0x1E69E7CC0];
        }

        v41 = sub_1B8AC8898(v40, v34, v33);
        result = swift_beginAccess();
        if (!*&v12[v58])
        {
          goto LABEL_72;
        }

        sub_1B8AE5794(v41);
        swift_endAccess();

        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_0(&v63);
    }

    else if (v34 == 0x746963696E687465 && v33 == 0xE900000000000079 || (sub_1B8AF0EA8() & 1) != 0)
    {

      v45 = sub_1B8AC8674(&v63);
      v47 = v46;
      __swift_destroy_boxed_opaque_existential_0(&v63);
      v4[v56] = v45 & 1;
      v48 = *&v12[v55];
      *&v12[v55] = v47;
    }

    else if (v34 == 0xD000000000000011 && 0x80000001B8B06980 == v33)
    {

LABEL_61:
      result = sub_1B8AC8674(&v63);
      v51 = v50;
      if (result)
      {
        if (v50)
        {
          if (!v50[2])
          {
            goto LABEL_73;
          }

          v53 = v50[4];
          v52 = v50[5];

          if (v53 == 0x6E6F69746361 && v52 == 0xE600000000000000)
          {

            v51 = 1;
          }

          else
          {
            v51 = sub_1B8AF0EA8();
          }
        }

        result = __swift_destroy_boxed_opaque_existential_0(&v63);
        v12[v54] = v51 & 1;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v63);

        v12[v54] = 0;
      }
    }

    else
    {
      v49 = sub_1B8AF0EA8();

      if (v49)
      {
        goto LABEL_61;
      }

LABEL_36:
      result = __swift_destroy_boxed_opaque_existential_0(&v63);
    }
  }

  if (v21 <= v23 + 1)
  {
    v26 = v23 + 1;
  }

  else
  {
    v26 = v21;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
      v20 = 0;
      v64 = 0u;
      v65 = 0u;
      v23 = v27;
      v63 = 0u;
      goto LABEL_16;
    }

    v20 = *(a1 + 64 + 8 * v25);
    ++v23;
    if (v20)
    {
      v23 = v25;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

BOOL sub_1B8AC92D8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return a2 == 0;
  }

  if (!a2 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = a1;

  sub_1B8AC684C(&v6);
  v3 = v6;
  v6 = a2;

  sub_1B8AC684C(&v6);
  v4 = sub_1B8AC13CC(v3, v6);

  return v4 & 1;
}

BOOL sub_1B8AC93A4(unint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return a2 == 0;
  }

  if (a2)
  {
    if (a1 >> 62)
    {
      v8 = a2;
      v9 = sub_1B8AF0BA8();
      a2 = v8;
      v2 = v9;
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a2 >> 62)
    {
      if (v2 == sub_1B8AF0BA8())
      {
        goto LABEL_7;
      }
    }

    else if (v2 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:

      v10 = sub_1B8AC8204(v3);
      sub_1B8AC6604(&v10);
      v4 = v10;

      v10 = sub_1B8AC8204(v5);
      sub_1B8AC6604(&v10);
      v6 = sub_1B8AC1190(v4, v10);

      return v6 & 1;
    }
  }

  return 0;
}

uint64_t type metadata accessor for SCMLPeopleDetectorImpl()
{
  result = qword_1EDB75068;
  if (!qword_1EDB75068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_22Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t keypath_get_12Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_13Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_1B8AC9F00()
{
  result = sub_1B8AF03A8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SCMLPeopleDetectorImpl.predict(text:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B8ACA118;

  return v10(a1, a2);
}

uint64_t sub_1B8ACA118(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1B8ACA214()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B8A7B414;

  return sub_1B8AC3BA0(v2, v3, v4);
}

uint64_t sub_1B8ACA2C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B8AA7150;

  return sub_1B8AD76B0(a1, v4, v5, v7);
}

uint64_t sub_1B8ACA394(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B8ACA3EC()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8ACA50C()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t static PromptRewriter.parseRawResponse(_:)()
{
  v18[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1B8AF06A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AF0698();
  v5 = sub_1B8AF0678();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v8 = objc_opt_self();
  v9 = sub_1B8AEFC18();
  v18[0] = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:v18];

  if (!v10)
  {
    v13 = v18[0];
    v14 = sub_1B8AEFBD8();

    swift_willThrow();
    sub_1B8A89878(v5, v7);

    goto LABEL_6;
  }

  v11 = v18[0];
  sub_1B8AF0A18();
  sub_1B8A89878(v5, v7);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_1B8A89824();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0;
    result = swift_willThrow();
    goto LABEL_7;
  }

  result = v17;
LABEL_7:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}