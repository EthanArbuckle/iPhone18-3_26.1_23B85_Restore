@interface _UIViewInProcessAnimationManager
+ (uint64_t)_advanceWithTime:(double)time;
+ (uint64_t)_applicationBecameActive;
+ (uint64_t)_applicationDidEnterBackground;
+ (uint64_t)_cancelAllAnimationsImmediately;
+ (uint64_t)_setCurrentMediaTime:(double)time;
+ (void)_setExternalAnimationDriver:(id)driver;
- (_UIViewInProcessAnimationManager)init;
@end

@implementation _UIViewInProcessAnimationManager

+ (void)_setExternalAnimationDriver:(id)driver
{
  v4 = 0;
  if (driver)
  {
    type metadata accessor for ManagerDriverShimPresenter();
    v4 = swift_allocObject();
    *(v4 + 16) = driver;
    v5 = &off_1EFAE6850;
  }

  else
  {
    v5 = 0;
  }

  qword_1EA9951C0 = v4;
  qword_1EA9951C8 = v5;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (_UIViewInProcessAnimationManager)init
{
  v3.receiver = self;
  v3.super_class = _UIViewInProcessAnimationManager;
  return [(_UIViewInProcessAnimationManager *)&v3 init];
}

+ (uint64_t)_cancelAllAnimationsImmediately
{
  if (qword_1ED48EFD0 != -1)
  {
LABEL_14:
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EA9951B0;
  v1 = 1 << *(qword_1EA9951B0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(qword_1EA9951B0 + 64);
  v4 = (v1 + 63) >> 6;

  v5 = 0;
  if (v3)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v6 >= v4)
    {
    }

    v3 = *(v0 + 64 + 8 * v6);
    ++v5;
    if (v3)
    {
      v5 = v6;
      do
      {
LABEL_10:
        v3 &= v3 - 1;

        sub_18920C138();
      }

      while (v3);
      continue;
    }
  }
}

+ (uint64_t)_advanceWithTime:(double)time
{
  if (qword_1ED48EFD0 != -1)
  {
LABEL_23:
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EA9951B0 + 64;
  v3 = 1 << *(qword_1EA9951B0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(qword_1EA9951B0 + 64);
  v6 = (v3 + 63) >> 6;
  v27 = qword_1EA9951B0;

  v7 = 0;
  v8 = "";
  v25 = v6;
  v26 = v2;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v11 = *(*(v27 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));

    signpost_c2_tick_enter_start();
    v12 = v11[33];
    v13 = swift_allocObject();
    *(v13 + 16) = sub_188AA7238;
    *(v13 + 24) = v11;
    v32 = sub_188A4B574;
    v33 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_188A4A968;
    v31 = &block_descriptor_115;
    v14 = _Block_copy(&aBlock);

    dispatch_sync(v12, v14);
    _Block_release(v14);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v15 = v11[34];
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = 0;
    *(v16 + 32) = signpost_c2_entryLock_start;
    *(v16 + 40) = 0;
    *(v16 + 48) = time;
    *(v16 + 56) = 0;
    *(v16 + 64) = time;
    *(v16 + 72) = signpost_c2_entryLock_start;
    *(v16 + 80) = 0;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_188AA7258;
    *(v17 + 24) = v16;
    v32 = sub_188E3FE50;
    v33 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_188A4A968;
    v31 = &block_descriptor_17_2;
    v18 = _Block_copy(&aBlock);

    dispatch_sync(v15, v18);
    _Block_release(v18);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      goto LABEL_22;
    }

    v8 = v9;
    swift_beginAccess();
    while (1)
    {
      v19 = v11[51];
      v20 = *(v19 + 16);
      if (!v20)
      {
        break;
      }

      v11[51] = MEMORY[0x1E69E7CC0];
      v21 = v19 + 40;
      do
      {
        v22 = *(v21 - 8);

        v22(v23);

        v21 += 16;
        --v20;
      }

      while (v20);
    }

    v5 &= v5 - 1;

    v6 = v25;
    v2 = v26;
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= v6)
    {
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
    if (v5)
    {
      v9 = v8;
      v7 = v10;
      goto LABEL_12;
    }
  }
}

+ (uint64_t)_setCurrentMediaTime:(double)time
{
  if (qword_1ED48EFD0 != -1)
  {
LABEL_14:
    swift_once();
  }

  result = swift_beginAccess();
  v3 = 0;
  v4 = qword_1EA9951B0;
  v5 = qword_1EA9951B0 + 64;
  v6 = 1 << *(qword_1EA9951B0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(qword_1EA9951B0 + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v3;
LABEL_10:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      *(*(*(v4 + 56) + ((v10 << 9) | (8 * v11))) + 240) = time;
      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v10 >= v9)
    {
      return result;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_10;
    }
  }
}

+ (uint64_t)_applicationDidEnterBackground
{
  if (qword_1ED48EFD0 != -1)
  {
LABEL_17:
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EA9951B0;
  v1 = 1 << *(qword_1EA9951B0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(qword_1EA9951B0 + 64);
  v4 = (v1 + 63) >> 6;

  v5 = 0;
  v6 = &unk_1ED48F000;
  while (v3)
  {
LABEL_11:
    v8 = *(*(v0 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(v3)))));
    v9 = v6[248];

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_18A4A4378();
    __swift_project_value_buffer(v10, qword_1ED48F7C8);
    v11 = sub_18A4A4358();
    v12 = sub_18A4A7968();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v6;
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_188A29000, v11, v12, "Application did enter background", v14, 2u);
      v15 = v14;
      v6 = v13;
      MEMORY[0x18CFEA5B0](v15, -1, -1);
    }

    v3 &= v3 - 1;

    *(v8 + 376) = 1;
    sub_18920DE24();
    sub_18920C138();
  }

  while (1)
  {
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v7 >= v4)
    {
    }

    v3 = *(v0 + 64 + 8 * v7);
    ++v5;
    if (v3)
    {
      v5 = v7;
      goto LABEL_11;
    }
  }
}

+ (uint64_t)_applicationBecameActive
{
  if (qword_1ED48EFD0 != -1)
  {
LABEL_17:
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EA9951B0;
  v1 = qword_1EA9951B0 + 64;
  v2 = 1 << *(qword_1EA9951B0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(qword_1EA9951B0 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = &unk_1ED48F000;
  v8 = qword_1ED48F7C8;
  v20 = v0;
  while (v4)
  {
LABEL_11:
    v10 = *(*(v0 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v7[248];

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_18A4A4378();
    __swift_project_value_buffer(v12, v8);
    v13 = sub_18A4A4358();
    v14 = sub_18A4A7968();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v8;
      v16 = v7;
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_188A29000, v13, v14, "Application did become active", v17, 2u);
      v18 = v17;
      v7 = v16;
      v8 = v15;
      v0 = v20;
      MEMORY[0x18CFEA5B0](v18, -1, -1);
    }

    v4 &= v4 - 1;

    *(v10 + 376) = 0;
    sub_18920DE24();
  }

  while (1)
  {
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v9 >= v5)
    {
    }

    v4 = *(v1 + 8 * v9);
    ++v6;
    if (v4)
    {
      v6 = v9;
      goto LABEL_11;
    }
  }
}

@end