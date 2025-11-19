void sub_1AF6F790C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(*(a2 + 104) + 16);
  if (!v3)
  {
LABEL_27:
    sub_1AF65F5E0(v2);
    if (*(v2 + 256) == 1)
    {
      *(v2 + 256) = 0;
      v22 = [objc_opt_self() sharedCaptureManager];
      [v22 stopCapture];
    }

    v23 = *(v2 + 528);
    v24 = *(v23 + 16);
    if (v24)
    {
      swift_unknownObjectRetain();
      sub_1AF6F37F0();
      [v24 commit];
      swift_unknownObjectRelease();
      *(v23 + 16) = 0;

      swift_unknownObjectRelease();
    }

    return;
  }

  v25 = OBJC_IVAR____TtC3VFX13EntityManager_isVFX2;
  v4 = ( + 40);
  v26 = v2;
  while (1)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 128);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v5);
    if (!v9)
    {
      v9 = sub_1AF707694(0x754F7265646E6552, 0xEC00000074757074, 0, a1);
      if (!v9)
      {
        break;
      }
    }

    v10 = v9;
    v28 = v8;
    v11 = v8(ObjectType, v5);
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = v11;

    os_unfair_recursive_lock_lock_with_options();
    sub_1AF6D2A6C(&type metadata for RERendererConfiguration);
    if (v13 == 2)
    {
      os_unfair_recursive_lock_unlock();

LABEL_10:
      if ((*(v29 + v25) & 1) == 0)
      {
        sub_1AF7188C4(v12, a1);
      }

      goto LABEL_12;
    }

    v14 = v13;
    os_unfair_recursive_lock_unlock();

    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    swift_unknownObjectRelease();
    v2 = v26;
LABEL_13:
    v15 = *(v2 + 104);
    v18 = *(v15 + 16);
    v16 = v15 + 16;
    v17 = v18;
    if (v18)
    {
      v19 = v6 == *(v16 + 16 * v17);
    }

    else
    {
      v19 = 0;
    }

    os_unfair_recursive_lock_lock_with_options();
    sub_1AF6D2A6C(&type metadata for RERendererConfiguration);
    if (v20 == 2)
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v21 = v20;
      os_unfair_recursive_lock_unlock();

      if (v21)
      {
        goto LABEL_20;
      }
    }

    if (*(v29 + v25) == 1)
    {
LABEL_20:
      v19 = 0;
    }

    v2 = v26;
    sub_1AF6FAF90(v26, v6, v10, v19, a1, v29, ObjectType, v5);
    if (v28(ObjectType, v5))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      [v10 commit];
    }

    if ((*(v5 + 136))(ObjectType, v5))
    {
      swift_getObjectType();
      sub_1AF473E3C();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v4 += 2;
    if (!--v3)
    {

      goto LABEL_27;
    }
  }

  swift_unknownObjectRelease();
}

void sub_1AF6F7D18(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = v2 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock;
  os_unfair_lock_lock(*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock + 24));
  if (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground))
  {
    os_unfair_lock_unlock(*(v6 + 24));
  }

  else
  {
    v7 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_sceneInBackground);
    os_unfair_lock_unlock(*(v6 + 24));
    if ((v7 & 1) == 0)
    {
      sub_1AF7078B4(v2);
      if (*(*(a2 + 104) + 16))
      {
        sub_1AF6F790C(a1, a2);
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1AF6F7DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock;
  os_unfair_lock_lock(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock + 24));
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground))
  {
    os_unfair_lock_unlock(*(v4 + 24));
  }

  else
  {
    v5 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_sceneInBackground);
    os_unfair_lock_unlock(*(v4 + 24));
    if ((v5 & 1) == 0)
    {
      v6 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
      if ((*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 82) & 1) == 0)
      {
        sub_1AF7078B4(a1);
        if (*(*(a2 + 104) + 16))
        {
          v7 = CACurrentMediaTime();
          v8 = OBJC_IVAR____TtC3VFX13EntityManager_scheduler;
          sub_1AF627E20(*(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) + 208));
          v9 = *(v6 + 8);

          sub_1AF6D8818();

          sub_1AF6F71F4();
          sub_1AF65F2F4(a2);
          v10 = *(a1 + v8);
          if (*(v10 + 16) == 1)
          {
            v11 = *(v10 + 176);
            *(v10 + 176) = *(v10 + 192);
            *(v10 + 192) = v11;
          }

          sub_1AF6F790C(v9, a2);
          v12 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_counters;
          v13 = *(v12 + 8);
          v14 = CACurrentMediaTime();
          if (*v12)
          {
            vfx_counters_update(*v12, v13, v14 - v7);
          }
        }
      }
    }
  }
}

uint64_t sub_1AF6F7F40(uint64_t a1)
{
  v3 = sub_1AFDFC4F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - v10;
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v12 = sub_1AFDFC538();
  sub_1AF477C68(v12, qword_1ED73B608);
  v13 = *(v4 + 16);
  v24 = v1;
  v13(v11, v1 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v3);
  v14 = sub_1AFDFC528();
  v15 = sub_1AFDFDB88();
  if (sub_1AFDFDCE8())
  {
    v16 = swift_slowAlloc();
    v23 = a1;
    v17 = v16;
    *v16 = 0;
    v18 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v14, v15, v18, "prepare", "", v17, 2u);
    v19 = v17;
    a1 = v23;
    MEMORY[0x1B271DEA0](v19, -1, -1);
  }

  v13(v7, v11, v3);
  sub_1AFDFC578();
  swift_allocObject();
  sub_1AFDFC568();
  (*(v4 + 8))(v11, v3);
  v20 = v24;

  sub_1AF660D1C(v20, v20, a1);
  sub_1AF6F81B0();
}

uint64_t sub_1AF6F81B0()
{
  v0 = sub_1AFDFC548();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AFDFC4F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v10 = sub_1AFDFC538();
  sub_1AF477C68(v10, qword_1ED73B608);
  v11 = sub_1AFDFC528();
  sub_1AFDFC558();
  v12 = sub_1AFDFDB78();
  if (sub_1AFDFDCE8())
  {

    sub_1AFDFC588();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v11, v12, v15, "prepare", v13, v14, 2u);
    MEMORY[0x1B271DEA0](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AF6F843C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_currentState);
  v65 = OBJC_IVAR____TtC3VFX13EntityManager_currentState;
  *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_currentState) = 0;
  v64 = v4;
  if (v4)
  {
    v5 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
    if (v5)
    {

      v5(a1);
      sub_1AF0FB8EC(v5);
    }
  }

  v63 = OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare;
  *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) = 1;
  sub_1AF678C34();
  v73 = a1;
  v74 = a2;
  v75 = 0;
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_scheduler;
  MEMORY[0x1EEE9AC00](v7, v8);

  sub_1AF6F6774(sub_1AF6FC910);

  v62 = v6;
  v9 = *(a1 + v6);
  v76 = a1;
  v10 = *(v9 + 24);

  if (v10)
  {
    v12 = thread_worker_index(v11);
    v13 = *v12;
    *v12 = 0;
    v60 = v14;
    v59 = v13;
    v15 = *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent);

    if (v15 == 1)
    {

      sub_1AF6D88DC(v16, a2, 2);
      v17 = a2;
      *(*(v9 + 24) + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 0;
    }

    else
    {
      v17 = a2;
    }

    sub_1AF6D88DC(v76, v17, 0);
    *v60(&thread_worker_index) = v59;
  }

  v18 = v65;
  v19 = *(a1 + v65);
  *(a1 + v65) = 2;
  if (v19 != 2)
  {
    v20 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
    if (v20)
    {

      v20(a1);
      sub_1AF0FB8EC(v20);
    }
  }

  if (*(a2 + 408))
  {
    v21 = *(a2 + 96);
    if (*(v21 + 16))
    {
      v22 = *(v21 + 40);
      ObjectType = swift_getObjectType();
      v24 = *(v22 + 96);
      swift_unknownObjectRetain();
      v25 = v24(ObjectType, v22);
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 80;
    }
  }

  else
  {
    v25 = *(a2 + 400);
  }

  CFXTextureDescriptorMakeDefault(&v69);
  sub_1AF6FC940(&v69);
  sub_1AF46748C(v25, &v69);
  sub_1AF6FC954(&v69);
  sub_1AF6FC960(&v69);
  sub_1AF5C44D4(&v69);
  sub_1AF48F3EC(&v69);
  sub_1AF4674BC(&v69);
  sub_1AF48F3F8(&v69);
  sub_1AF4674D0(&v69);
  sub_1AF5F7484(5, &v69);
  v72 = v70;
  v71 = v69;
  v26 = *(a2 + 16);
  if (CFXGPUDeviceCreateTexture(v26, &v69))
  {
    if (*(a2 + 424))
    {
      v27 = 0;
      goto LABEL_23;
    }

    v30 = *(a2 + 416);
    CFXTextureDescriptorMakeDefault(&v66);
    sub_1AF6FC940(&v66);
    sub_1AF46748C(v30, &v66);
    sub_1AF6FC954(&v66);
    sub_1AF6FC960(&v66);
    sub_1AF5C44D4(&v66);
    sub_1AF48F3EC(&v66);
    sub_1AF4674BC(&v66);
    sub_1AF48F3F8(&v66);
    sub_1AF4674D0(&v66);
    sub_1AF5F7484(7, &v66);
    v69 = v66;
    v70 = v67;
    v31 = CFXGPUDeviceCreateTexture(v26, &v69);
    if (v31)
    {
      v27 = v31;
      *(a2 + 448) = v30;
      sub_1AF0D8E28();
      swift_unknownObjectRetain();
LABEL_23:
      v61 = v19;
      type metadata accessor for MTLTextureRenderOutput();
      swift_allocObject();
      v32 = swift_unknownObjectRetain();
      v33 = sub_1AF7083F4(v32, v27);
      v34 = v33;
      *(v33 + 144) = 0;
      if ((*(a2 + 440) & 1) == 0)
      {
        *(v33 + 32) = *(a2 + 432);
      }

      v35 = sub_1AF707694(0x4365726170657250, 0xE900000000000042, 0, *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8));

      sub_1AF66E030(a1, v34, v35, a2);

      Strong = swift_unknownObjectUnownedLoadStrong();
      if (Strong)
      {
        v38 = Strong;
        sub_1AF5CF44C(Strong, v37);
      }

      v39 = *(*(a1 + v6) + 24);

      if (v39)
      {
        v58 = thread_worker_index;
        v41 = thread_worker_index(v40);
        v42 = *v41;
        *v41 = 0;

        sub_1AF6D88DC(v76, a2, 1);
        *v41 = v42;
        v18 = v65;

        v43 = *(*(a1 + v62) + 24);

        if (v43)
        {
          v44 = (v58)(&thread_worker_index);
          v45 = *v44;
          *v44 = 0;

          sub_1AF6D88DC(v76, a2, 5);
          *v44 = v45;
        }
      }

      sub_1AF728260();

      sub_1AF678C34();
      sub_1AF707238(0);
      swift_getObjectType();
      [v35 commit];
      sub_1AF473E3C();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v46 = *(a1 + v18);
      *(a1 + v18) = v61;
      if (v46 != v61)
      {
        v47 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
        if (v47)
        {

          v47(a1);
          sub_1AF0FB8EC(v47);
        }
      }

      *(a1 + v63) = 0;
      v49 = *(a1 + v18);
      *(a1 + v18) = v64;
      if (v49 != v64)
      {
        v50 = OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn;
        goto LABEL_41;
      }

      return result;
    }

    v51 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;

    sub_1AFDFE218();
    v68 = v69;
    MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF30F10);
    v69 = v66;
    v70 = v67;
    type metadata accessor for TextureDescriptor(0);
    sub_1AFDFE458();
    v52 = v68;
    v53 = sub_1AFDFDA08();
    *&v69 = 0;
    (*(*v51 + 88))(v53, &v69, v52, *(&v52 + 1));
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;

    sub_1AFDFE218();
    v68 = v69;
    MEMORY[0x1B2718AE0](0xD000000000000024, 0x80000001AFF30EE0);
    v69 = v71;
    v70 = v72;
    type metadata accessor for TextureDescriptor(0);
    sub_1AFDFE458();
    v29 = sub_1AFDFDA08();
    *&v69 = 0;
    (*(*v28 + 88))(v29, &v69, v68, *(&v68 + 1));
  }

  v54 = *(a1 + v65);
  *(a1 + v65) = v19;
  if (v54 != v19)
  {
    v55 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
    if (v55)
    {

      v55(a1);
      sub_1AF0FB8EC(v55);
    }
  }

  *(a1 + v63) = 0;
  v56 = *(a1 + v65);
  *(a1 + v65) = v64;
  if (v56 != v64)
  {
    v50 = OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn;
LABEL_41:
    v57 = *(a1 + v50);
    if (v57)
    {

      v57(a1);
      return sub_1AF0FB8EC(v57);
    }
  }

  return result;
}

uint64_t sub_1AF6F8F3C(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v42 = qword_1ED73B840;
  v43 = 0;
  v44 = 2;
  v45 = 0;
  v46 = 2;
  v47 = 0;
  sub_1AF704FF4(3, v25);
  v38[0] = v25[0];
  v38[1] = v25[1];
  v39 = v26;
  sub_1AF6B06C0(v1, v38, a1 & 0xFFFFFFFFFFLL, &v27);
  if (!v27)
  {
    return sub_1AF6FC96C(v25, &unk_1EB632BF0, &type metadata for Seed, &off_1F2563E60, sub_1AF5DD590);
  }

  if (v34 > 0)
  {
    v23 = v31;
    if (v31)
    {
      v3 = 0;
      v22 = v30;
      v4 = v33;
      v24 = *(v33 + 32);
      v5 = *(v32 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v35 = v27;
      v36 = v28;
      v37 = v29;
      v21 = v5;
      do
      {
        v6 = (v22 + 48 * v3);
        v7 = *v6;
        v8 = v6[1];
        v10 = *(v6 + 2);
        v9 = *(v6 + 3);
        v12 = *(v6 + 4);
        v11 = *(v6 + 5);
        if (v5)
        {
          v13 = *(v11 + 376);

          os_unfair_lock_lock(v13);
          os_unfair_lock_lock(*(v11 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v24);
        v14 = *(v4 + 64);
        v40[0] = *(v4 + 48);
        v40[1] = v14;
        v41 = *(v4 + 80);
        v15 = *(*(*(*(v11 + 40) + 16) + 32) + 16) + 1;
        *(v4 + 48) = ecs_stack_allocator_allocate(*(v4 + 32), 48 * v15, 8);
        *(v4 + 56) = v15;
        *(v4 + 72) = 0;
        *(v4 + 80) = 0;
        *(v4 + 64) = 0;
        v16 = sub_1AF64B110(&type metadata for Seed, &off_1F2563E60, v10, v9, v12, v4);
        if (v10)
        {
          v5 = v21;
          if (v12)
          {
            v17 = (v16 + 4);
            do
            {
              if (*v17 == 1)
              {
                *(v17 - 1) = arc4random();
              }

              v17 += 8;
              --v12;
            }

            while (v12);
          }
        }

        else
        {
          v5 = v21;
          if (v7 != v8)
          {
            v18 = (v16 + 8 * v7 + 4);
            v19 = v8 - v7;
            do
            {
              if (*v18 == 1)
              {
                *(v18 - 1) = arc4random();
              }

              v18 += 8;
              --v19;
            }

            while (v19);
          }
        }

        sub_1AF630994(v4, &v35, v40);
        sub_1AF62D29C(v11);
        ecs_stack_allocator_pop_snapshot(v24);
        if (v5)
        {
          os_unfair_lock_unlock(*(v11 + 344));
          os_unfair_lock_unlock(*(v11 + 376));
        }

        ++v3;
      }

      while (v3 != v23);
    }
  }

  sub_1AF6FC96C(v25, &unk_1EB632BF0, &type metadata for Seed, &off_1F2563E60, sub_1AF5DD590);
  return sub_1AF0D9DB0(&v27, &qword_1ED725EA0);
}

uint64_t sub_1AF6F92A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

  sub_1AFDFE218();

  v45 = 0x6974726174736572;
  *&v46 = 0xEF2078667620676ELL;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);

  MEMORY[0x1B2718AE0](v5, v6);

  v7 = sub_1AFDFDA28();
  v45 = 2;
  (*(*v4 + 88))(v7, &v45, 0x6974726174736572, 0xEF2078667620676ELL);

  v8 = a1 & 0xFFFFFFFFFFLL;
  if (v8 == 0x200000000)
  {
    v9 = v1 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
    v10 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 88);
    *(v9 + 68) = v10;
    *(v9 + 83) = 0;
    ++*v9;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = CACurrentMediaTime();
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 40) = 0;
    *(v9 + 64) = 0;
    *(v9 + 72) = 1;
  }

  v11 = sub_1AFCDABE4();

  if (v11)
  {
    sub_1AF6FBB58(v2, v8, sub_1AFCC6D68, sub_1AF6FCFCC, sub_1AFD255C4);
    sub_1AF6FBB58(v2, v8, sub_1AFCC6B2C, sub_1AF6FCF54, sub_1AFD25714);
    sub_1AF6FBB58(v2, v8, sub_1AFCC68F0, sub_1AF6FCE7C, sub_1AFD25864);
    sub_1AF6FBB58(v2, v8, sub_1AFCC66B4, sub_1AF6FCE04, sub_1AFD259B4);
    sub_1AF6FBB58(v2, v8, sub_1AFCC6478, sub_1AF6FCD8C, sub_1AFD25B04);
    sub_1AF6FBB58(v2, v8, sub_1AFCC623C, sub_1AF6FCD14, sub_1AFD25C54);
    sub_1AF6FBB58(v2, v8, sub_1AFCC6000, sub_1AF6FCC9C, sub_1AFD25DA4);
    sub_1AF6FBB58(v2, v8, sub_1AFCC5DC4, sub_1AF6FCC24, sub_1AFD25EF4);
    sub_1AF6FBB58(v2, v8, sub_1AFCC5B88, sub_1AF6FCBAC, sub_1AFD26044);
    sub_1AF6FBF50(v2, v8, sub_1AF703884, sub_1AF6FCB70, sub_1AF5B24F0);
    sub_1AF6FBF50(v2, v8, sub_1AF7044D4, sub_1AF6FCB34, sub_1AF5B2478);
    sub_1AF6FBF50(v2, v8, sub_1AF70426C, sub_1AF6FCAF8, sub_1AF5B2400);
    sub_1AF6FBF50(v2, v8, sub_1AF70473C, sub_1AF6FCABC, sub_1AF5B2568);
    sub_1AF6FBF50(v2, v8, sub_1AF7033F4, sub_1AF6FCA80, sub_1AF5B2310);
    sub_1AF6FBF50(v2, v8, sub_1AF70363C, sub_1AF6FCA44, sub_1AF5B2298);
    sub_1AF6FBF50(v2, v8, sub_1AF703AF4, sub_1AF6FCA08, sub_1AF5B2220);
    sub_1AF6FBF50(v2, v8, sub_1AF703D9C, sub_1AF6FC9CC, sub_1AF5B21A8);
  }

  sub_1AF6F8F3C(v8);

  v12 = sub_1AFCDACDC();

  if (v12)
  {
    sub_1AFB88698(v2, v8);
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v60 = qword_1ED73B840;
  v61 = 0;
  v62 = 2;
  v63 = 0;
  v64 = 2;
  v65 = 0;
  sub_1AF82912C(v43);
  v56[0] = v43[0];
  v56[1] = v43[1];
  v57 = v44;
  sub_1AF6B06C0(v2, v56, v8, &v45);
  if (!v45)
  {
    return sub_1AF6FC96C(v43, &unk_1EB6312F8, &type metadata for Bindings, &off_1F25117D8, sub_1AF5DD590);
  }

  if (v52 > 0)
  {
    v40 = v49;
    if (v49)
    {
      v13 = 0;
      v39 = v48;
      v14 = v51;
      v42 = *(v51 + 32);
      v15 = *(v50 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v53 = v45;
      v54 = v46;
      v55 = v47;
      v38 = v15;
      do
      {
        v16 = (v39 + 48 * v13);
        v17 = *v16;
        v41 = v16[1];
        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        v21 = *(v16 + 4);
        v20 = *(v16 + 5);
        if (v15)
        {
          v22 = *(v20 + 376);

          os_unfair_lock_lock(v22);
          os_unfair_lock_lock(*(v20 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v42);
        v23 = *(v14 + 64);
        v58[0] = *(v14 + 48);
        v58[1] = v23;
        v59 = *(v14 + 80);
        v24 = *(*(*(*(v20 + 40) + 16) + 32) + 16) + 1;
        *(v14 + 48) = ecs_stack_allocator_allocate(*(v14 + 32), 48 * v24, 8);
        *(v14 + 56) = v24;
        *(v14 + 72) = 0;
        *(v14 + 80) = 0;
        *(v14 + 64) = 0;
        v25 = sub_1AF64B110(&type metadata for Bindings, &off_1F25117D8, v19, v18, v21, v14);
        if (v19)
        {
          v15 = v38;
          if (!v21)
          {
            goto LABEL_35;
          }

          if (v21 == 1)
          {
            v26 = 0;
LABEL_27:
            v31 = v21 - v26;
            v32 = (v25 + 24 * v26 + 8);
            do
            {
              *v32 = 1;
              v32 += 24;
              --v31;
            }

            while (v31);
            goto LABEL_35;
          }

          v26 = v21 & 0xFFFFFFFFFFFFFFFELL;
          v29 = (v25 + 32);
          v30 = v21 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            *(v29 - 24) = 1;
            *v29 = 1;
            v29 += 48;
            v30 -= 2;
          }

          while (v30);
          if (v21 != v26)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15 = v38;
          if (v17 == v41)
          {
            goto LABEL_35;
          }

          v27 = v41 - v17;
          if ((v41 - v17) <= 1)
          {
            v28 = v17;
LABEL_33:
            v35 = (v25 + 24 * v28 + 8);
            v36 = v41 - v28;
            do
            {
              *v35 = 1;
              v35 += 24;
              --v36;
            }

            while (v36);
            goto LABEL_35;
          }

          v28 = (v27 & 0xFFFFFFFFFFFFFFFELL) + v17;
          v33 = (v25 + 24 * v17 + 32);
          v34 = v27 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            *(v33 - 24) = 1;
            *v33 = 1;
            v33 += 48;
            v34 -= 2;
          }

          while (v34);
          if (v27 != (v27 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_33;
          }
        }

LABEL_35:
        sub_1AF630994(v14, &v53, v58);
        sub_1AF62D29C(v20);
        ecs_stack_allocator_pop_snapshot(v42);
        if (v15)
        {
          os_unfair_lock_unlock(*(v20 + 344));
          os_unfair_lock_unlock(*(v20 + 376));
        }

        ++v13;
      }

      while (v13 != v40);
    }
  }

  sub_1AF6FC96C(v43, &unk_1EB6312F8, &type metadata for Bindings, &off_1F25117D8, sub_1AF5DD590);
  return sub_1AF0D9DB0(&v45, &qword_1ED725EA0);
}

uint64_t sub_1AF6F9CD8(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = [v3 defaultCenter];
    [v4 addObserver:v1 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    v5 = [v3 defaultCenter];
    [v5 addObserver:v1 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    v6 = [v3 defaultCenter];
    [v6 addObserver:v1 selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];

    v7 = [v3 defaultCenter];
    [v7 addObserver:v1 selector:sel__sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];

    v8 = [v3 defaultCenter];
    [v8 addObserver:v1 selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E696A2D8] object:0];

    v9 = [v3 defaultCenter];
    [v9 addObserver:v1 selector:sel__sceneWillEnterForeground_ name:*MEMORY[0x1E696A2C0] object:0];

    if (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
    {
      if (qword_1EB632FC0 != -1)
      {
        swift_once();
      }

      v10 = &qword_1EB6C29B0;
    }

    else
    {
      if (qword_1EB637158 != -1)
      {
        swift_once();
      }

      v10 = &qword_1EB6C3178;
    }

    v11 = *v10;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    v15 = *(v11 + 40);

    os_unfair_lock_lock(v15);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1AF6FC900;
    *(v16 + 24) = v14;

    v17 = sub_1AF6F6654(sub_1AF464154, v16);

    os_unfair_lock_unlock(*(v11 + 40));

    *(v2 + 32) = v17;
    *(v2 + 40) = 0;
  }

  return result;
}

uint64_t sub_1AF6FA054(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = v4;
    if (*(v6 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
    {

      sub_1AF6CE4F8(v4, sub_1AF6FC908, v7);
    }

    else
    {
      v8 = swift_weakLoadStrong();

      if (!v8)
      {
LABEL_9:

        goto LABEL_10;
      }

      v9 = objc_autoreleasePoolPush();
      sub_1AF6F7DDC(v8, v4);
      objc_autoreleasePoolPop(v9);
    }

    goto LABEL_9;
  }

LABEL_10:
}

uint64_t sub_1AF6FA1B4(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = objc_autoreleasePoolPush();
    sub_1AF6F7DDC(v4, a2);
    objc_autoreleasePoolPop(v5);
  }

  return result;
}

uint64_t sub_1AF6FA23C(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v2 = result;
    v3 = *(result + 32);
    v4 = [objc_opt_self() defaultCenter];
    [v4 removeObserver_];

    if (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
    {
      if (qword_1EB632FC0 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_1EB637158 == -1)
    {
LABEL_6:

      sub_1AF6F50CC(v3);

      *(v2 + 32) = 0;
      *(v2 + 40) = 1;
      return result;
    }

    swift_once();
    goto LABEL_6;
  }

  return result;
}

void sub_1AF6FA358()
{
  v1 = v0 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock;
  os_unfair_lock_lock(*(v0 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock + 24));
  v2 = OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground;
  if (*(v0 + OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground))
  {
    v3 = *(v1 + 24);

    os_unfair_lock_unlock(v3);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_sceneInBackground);
    os_unfair_lock_unlock(*(v1 + 24));
    if ((v4 & 1) == 0)
    {
      os_unfair_lock_lock(*(v1 + 24));
      *(v0 + v2) = 1;
      os_unfair_lock_unlock(*(v1 + 24));
      if (*(v0 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
      {

        sub_1AF6CF218(0);
      }

      sub_1AF660F84(v0);
    }
  }
}

void sub_1AF6FA444()
{
  v1 = v0 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock;
  os_unfair_lock_lock(*(v0 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock + 24));
  v2 = OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground;
  if (*(v0 + OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground))
  {
    os_unfair_lock_unlock(*(v1 + 24));
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_sceneInBackground);
    os_unfair_lock_unlock(*(v1 + 24));
    if ((v3 & 1) == 0)
    {
      return;
    }
  }

  os_unfair_lock_lock(*(v1 + 24));
  *(v0 + v2) = 0;
  os_unfair_lock_unlock(*(v1 + 24));
  if (*(v0 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
  {

    sub_1AF6CF300();
  }
}

uint64_t sub_1AF6FA508(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1AFDFCB38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1AFDFBD08();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFBCF8();
  sub_1AF0D4478(0, &qword_1ED72F8A0);

  *v9 = sub_1AFDFDB08();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  sub_1AFDFCB58();
  v15 = (*(v6 + 8))(v9, v5);
  a4(v15);

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AF6FA700()
{
  sub_1AFDFCA88();
  sub_1AF6FD464(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
  sub_1AF6FD4AC(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1AF6FD510();
  return sub_1AFDFE058();
}

uint64_t sub_1AF6FA7DC()
{
  v0 = sub_1AFDFBFC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AFDFC298();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AFDFC128();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v35 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v19 = sub_1AFDFCEC8();
  [v18 setDateFormat_];

  sub_1AFDFC038();
  v39[0] = 0x2D6563617274;
  v39[1] = 0xE600000000000000;
  v20 = [objc_opt_self() now];
  sub_1AFDFC278();

  v21 = sub_1AFDFC258();
  (*(v6 + 8))(v9, v5);
  v38 = v18;
  v22 = [v18 stringFromDate_];

  v23 = sub_1AFDFCEF8();
  v25 = v24;

  MEMORY[0x1B2718AE0](v23, v25);
  v26 = v17;

  MEMORY[0x1B2718AE0](0x6E6F736A2ELL, 0xE500000000000000);
  (*(v1 + 104))(v4, *MEMORY[0x1E6968F70], v0);
  sub_1AF4486E4();
  sub_1AFDFC118();
  v27 = v4;
  v29 = v36;
  v28 = v37;
  (*(v1 + 8))(v27, v0);

  v30 = *(v29 + 8);
  v30(v13, v28);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v31 = sub_1AFDFDA28();
  if (qword_1ED731058 != -1)
  {
    v34 = v31;
    swift_once();
    v31 = v34;
  }

  v39[0] = 0;
  sub_1AF0D4F18(v31, v39, 0xD00000000000001CLL, 0x80000001AFF30F60);
  v32 = CFXMTLCreateSystemDefaultDevice();
  if (v32)
  {
    _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v32);
    sub_1AF747850();
    if (qword_1ED730840 != -1)
    {
      swift_once();
    }

    if (byte_1ED72FA71 == 1)
    {
      sub_1AF7230F8();
    }

    swift_unknownObjectRelease();
  }

  sub_1AF6FD598();
  byte_1EB6C31A9 = 1;

  return (v30)(v26, v28);
}

void sub_1AF6FAC98(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [objc_allocWithZone(MEMORY[0x1E6973FF8]) init];
  [v2 setCaptureObject_];
  swift_unknownObjectRelease();
  v3 = [objc_opt_self() sharedCaptureManager];
  v12 = 0;
  v4 = [v3 startCaptureWithDescriptor:v2 error:&v12];

  if (v4)
  {
    v5 = v12;

    *(a1 + 256) = 1;
  }

  else
  {
    v6 = v12;
    v7 = sub_1AFDFBF58();

    swift_willThrow();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF30DD0);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v9 = v12;
    v8 = v13;
    v10 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v11 = v10;
      swift_once();
      v10 = v11;
    }

    v12 = 0;
    sub_1AF0D4F18(v10, &v12, v9, v8);
  }
}

uint64_t sub_1AF6FAF90(void *a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a5;
  v75 = a3;
  v73 = sub_1AFDFC4F8();
  v14 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a6 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) == 1)
  {
    if (a4)
    {
      CFXBufferAllocatorPerFrameNextFrame(a1[29]);
      CFXBufferAllocatorPerFrameNextFrame(a1[31]);
      v18 = a1[7];
      if (v18)
      {
        sub_1AFDEB254(v18);
      }
    }

    v19 = OBJC_IVAR____TtC3VFX13EntityManager_currentState;
    v20 = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_currentState);
    *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_currentState) = 2;
    if (v20 != 2)
    {
      v21 = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
      if (v21)
      {

        v21(a6);
        sub_1AF0FB8EC(v21);
      }
    }

    sub_1AF717084(a6, a2, v75, a1, a7, a8);
    Strong = swift_unknownObjectUnownedLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      sub_1AF5CF44C(Strong, v23);
    }

    v25 = *(*(a6 + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) + 24);

    if (v25)
    {
      v27 = thread_worker_index(v26);
      v28 = *v27;
      *v27 = 0;

      sub_1AF6D88DC(a6, a1, 4);
      *v27 = v28;
    }

    else
    {
    }

    sub_1AF707238(v74);
    v47 = (*(a8 + 184))(a7, a8);
    if (v47)
    {
      v49 = v47;
      v50 = v48;
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v80 = sub_1AF6FDAF4;
      v81 = v51;
      aBlock = MEMORY[0x1E69E9820];
      v77 = 1107296256;
      v78 = sub_1AF719CC4;
      v79 = &unk_1F2537138;
      v52 = _Block_copy(&aBlock);

      [v75 addCompletedHandler_];
      _Block_release(v52);
      sub_1AF0FB8EC(v49);
    }

    v54 = *(a6 + v19);
    *(a6 + v19) = 4;
    if (v54 != 4)
    {
      v55 = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
      if (v55)
      {

        v55(a6);
        return sub_1AF0FB8EC(v55);
      }
    }
  }

  else
  {
    v71 = a2;
    v72 = a7;
    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v29 = sub_1AFDFC538();
    sub_1AF477C68(v29, qword_1ED73B608);
    (*(v14 + 16))(v17, a6 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v73);

    v30 = swift_slowAlloc();
    *v30 = 134218240;
    *(v30 + 4) = a6;
    *(v30 + 12) = 2048;
    *(v30 + 14) = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);

    v31 = sub_1AFDFC528();
    v32 = sub_1AFDFDB88();
    v33 = sub_1AFDFC4E8();
    v70 = v31;
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v31, v32, v33, "render", "[%ld:%ld]", v30, 0x16u);
    if (a4)
    {
      CFXBufferAllocatorPerFrameNextFrame(a1[29]);
      CFXBufferAllocatorPerFrameNextFrame(a1[31]);
      v34 = a1[7];
      if (v34)
      {
        sub_1AFDEB254(v34);
      }
    }

    v35 = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_currentState);
    v69 = OBJC_IVAR____TtC3VFX13EntityManager_currentState;
    *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_currentState) = 2;
    v36 = v71;
    if (v35 != 2)
    {
      v37 = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
      if (v37)
      {

        v37(a6);
        sub_1AF0FB8EC(v37);
      }
    }

    sub_1AF717084(a6, v36, v75, a1, v72, a8);
    v38 = swift_unknownObjectUnownedLoadStrong();
    if (v38)
    {
      v40 = v38;
      sub_1AF5CF44C(v38, v39);
    }

    v41 = *(*(a6 + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) + 24);

    if (v41)
    {
      v43 = thread_worker_index(v42);
      v68 = v30;
      v44 = a8;
      v45 = v17;
      v46 = *v43;
      *v43 = 0;

      sub_1AF6D88DC(a6, a1, 4);
      *v43 = v46;
      v17 = v45;
      a8 = v44;
      v30 = v68;
    }

    else
    {
    }

    sub_1AF707238(v74);
    v56 = (*(a8 + 184))(v72, a8);
    if (v56)
    {
      v58 = v56;
      v59 = v57;
      v60 = swift_allocObject();
      *(v60 + 16) = v58;
      *(v60 + 24) = v59;
      v80 = sub_1AF6FC8D4;
      v81 = v60;
      aBlock = MEMORY[0x1E69E9820];
      v77 = 1107296256;
      v78 = sub_1AF719CC4;
      v79 = &unk_1F25370E8;
      v61 = _Block_copy(&aBlock);

      [v75 addCompletedHandler_];
      _Block_release(v61);
      sub_1AF0FB8EC(v58);
    }

    v62 = *(a6 + v69);
    *(a6 + v69) = 4;
    if (v62 != 4)
    {
      v63 = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
      if (v63)
      {

        v63(a6);
        sub_1AF0FB8EC(v63);
      }
    }

    v64 = sub_1AFDFDB78();
    v65 = sub_1AFDFC4E8();
    v66 = v64;
    v67 = v70;
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v70, v66, v65, "render", "[%ld:%ld]", v30, 0x16u);

    MEMORY[0x1B271DEA0](v30, -1, -1);
    return (*(v14 + 8))(v17, v73);
  }

  return result;
}

void sub_1AF6FB758()
{

  sub_1AF6FB858(&qword_1ED73B868, 30, sub_1AF6FA7DC, &unk_1F2537250);
}

void sub_1AF6FB7D8()
{

  sub_1AF6FB858(&qword_1ED73B750, 31, sub_1AF6FA6F0, &unk_1F2537228);
}

void sub_1AF6FB858(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = sub_1AFDFCA88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AFDFCAC8();
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    v25 = v15;
    v27.__sigaction_u.__sa_handler = sub_1AFDFC5B8();
    *&v27.sa_mask = 0;
    sigaction(a2, &v27, 0);
    sub_1AF0D4478(0, &unk_1ED72F870);
    sub_1AF0D4478(0, &qword_1ED72F8A0);
    v24 = v8;
    v18 = v9;
    v19 = sub_1AFDFDB08();
    v23 = a4;
    v20 = v19;
    v21 = sub_1AFDFDB48();

    *a1 = v21;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    aBlock[4] = a3;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AFCDA044;
    aBlock[3] = v23;
    v22 = _Block_copy(aBlock);
    sub_1AFDFCAA8();
    sub_1AF6FA700();
    sub_1AFDFDB58();
    _Block_release(v22);
    swift_unknownObjectRelease();
    (*(v18 + 8))(v12, v24);
    (*(v25 + 8))(v17, v13);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1AFDFDB68();
    swift_unknownObjectRelease();
  }
}

void sub_1AF6FBB58(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void, void), uint64_t (*a4)(void), void (*a5)(void *, uint64_t))
{
  if (qword_1ED72D720 != -1)
  {
    v22 = a3;
    swift_once();
    a3 = v22;
  }

  v65 = qword_1ED73B840;
  v66 = 0;
  v67 = 2;
  v68 = 0;
  v69 = 2;
  v70 = 0;
  a3(&v32, 1, 1);
  v59 = v32;
  v60 = v33;
  v61 = v34;
  v62 = v35 | 1;
  v63 = v36;
  v64 = v37;
  sub_1AF6B06C0(a1, &v59, a2 & 0xFFFFFFFFFFLL, &v38);
  v28 = v38;
  if (v38)
  {
    v8 = v41;
    v9 = v42;
    v10 = v44;
    v46 = v39;
    v47 = v40;
    v26 = v45;
    v27 = v43;
    if (v45 < 1)
    {
      sub_1AF6FCEF4(&v32, a4);
      sub_1AF0D9DB0(&v38, &qword_1ED725EA0);
    }

    else
    {
      v23 = a4;
      if (v42)
      {
        v11 = *(v44 + 32);
        v12 = *(v43 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(&v38, v54);
        v13 = (v8 + 24);
        v25 = a1;
        v24 = v12;
        do
        {
          v14 = *(v13 - 6);
          v15 = *(v13 - 5);
          v16 = *(v13 - 4);
          v17 = *v13;
          v18 = v13[2];
          v30 = v13[1];
          v31 = *(v13 - 1);
          if (v12)
          {
            v19 = *(v18 + 376);

            os_unfair_lock_lock(v19);
            os_unfair_lock_lock(*(v18 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v11);
          v20 = *(v10 + 64);
          v52[0] = *(v10 + 48);
          v52[1] = v20;
          v53 = *(v10 + 80);
          v21 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
          *(v10 + 48) = ecs_stack_allocator_allocate(*(v10 + 32), 48 * v21, 8);
          *(v10 + 56) = v21;
          *(v10 + 72) = 0;
          *(v10 + 80) = 0;
          *(v10 + 64) = 0;
          LOBYTE(v51) = 1;
          v54[0] = v27;
          v54[1] = v18;
          v54[2] = v10;
          v54[3] = v16;
          v54[4] = (v15 - v14 + v16);
          v54[5] = v26;
          v54[6] = v14;
          v54[7] = v15;
          v54[8] = 0;
          v54[9] = 0;
          v55 = 1;
          v56 = v31;
          v57 = v17;
          v58 = v30;

          a5(v54, v25);

          v48 = v28;
          v49 = v46;
          v50 = v47;
          sub_1AF630994(v10, &v48, v52);
          sub_1AF62D29C(v18);
          ecs_stack_allocator_pop_snapshot(v11);
          v12 = v24;
          if (v24)
          {
            os_unfair_lock_unlock(*(v18 + 344));
            os_unfair_lock_unlock(*(v18 + 376));
          }

          v13 += 6;
          --v9;
        }

        while (v9);
      }

      else
      {

        sub_1AF5D15C0(&v38, v54);
      }

      sub_1AF6FCEF4(&v32, v23);
      sub_1AF0D9DB0(&v38, &qword_1ED725EA0);
      sub_1AF0D9DB0(&v38, &qword_1ED725EA0);
    }
  }

  else
  {
    sub_1AF6FCEF4(&v32, a4);
  }
}

uint64_t sub_1AF6FBF50(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void), uint64_t (*a4)(void), uint64_t (*a5)(void, __n128))
{
  if (qword_1ED72D720 != -1)
  {
    v30 = a3;
    swift_once();
    a3 = v30;
  }

  v65 = qword_1ED73B840;
  v66 = 0;
  v67 = 2;
  v68 = 0;
  v69 = 2;
  v70 = 0;
  a3(&v46, 2);
  v59 = v46;
  v60 = v47;
  v61 = v48;
  v62 = v49 | 1;
  v63 = v50;
  v64 = v51;
  v9 = sub_1AF6B06C0(a1, &v59, a2 & 0xFFFFFFFFFFLL, v52);
  v10 = *v52;
  if (!*v52)
  {
    return sub_1AF6FCEF4(&v46, a4);
  }

  if (v55 < 1)
  {
    sub_1AF6FCEF4(&v46, a4);
  }

  else
  {
    v34 = *(&v53 + 1);
    if (*(&v53 + 1))
    {
      v31 = a4;
      v33 = *&v52[40];
      v11 = *(&v54 + 1);
      v37 = *(*(&v54 + 1) + 32);
      v36 = *(v54 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v12 = a5(0, v9);
      v56 = v10;
      v57 = *&v52[8];
      v58 = *&v52[24];
      v42 = *&v52[32];
      v43 = v53;
      v44 = v54;
      v45 = v55;
      v40 = *v52;
      v41 = *&v52[16];
      sub_1AF5DD298(&v40, v38);
      v13 = 0;
      v32 = v12 - 8;
      do
      {
        v14 = (v33 + 48 * v13);
        v15 = *v14;
        v35 = v14[1];
        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        v19 = *(v14 + 4);
        v18 = *(v14 + 5);
        if (v36)
        {
          v20 = *(v18 + 376);

          os_unfair_lock_lock(v20);
          os_unfair_lock_lock(*(v18 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v37);
        v21 = *(v11 + 64);
        v38[0] = *(v11 + 48);
        v38[1] = v21;
        v39 = *(v11 + 80);
        v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
        *(v11 + 48) = ecs_stack_allocator_allocate(*(v11 + 32), 48 * v22, 8);
        *(v11 + 56) = v22;
        *(v11 + 72) = 0;
        *(v11 + 80) = 0;
        *(v11 + 64) = 0;
        v23 = sub_1AF64B110(v12, &off_1F2558F90, v17, v16, v19, v11);
        if (v17)
        {
          if (v19)
          {
            v24 = *(*v32 + 72);
            do
            {
              *(v23 + *(v12 + 52)) = 0;
              v23 += v24;
              --v19;
            }

            while (v19);
          }
        }

        else if (v15 != v35)
        {
          v25 = *(*v32 + 72);
          v26 = v23 + v25 * v15;
          v27 = v35 - v15;
          do
          {
            *(v26 + *(v12 + 52)) = 0;
            v26 += v25;
            --v27;
          }

          while (v27);
        }

        sub_1AF630994(v11, &v56, v38);
        sub_1AF62D29C(v18);
        ecs_stack_allocator_pop_snapshot(v37);
        if (v36)
        {
          os_unfair_lock_unlock(*(v18 + 344));
          os_unfair_lock_unlock(*(v18 + 376));
        }

        ++v13;
      }

      while (v13 != v34);
      v29 = v31;
    }

    else
    {
      v42 = *&v52[32];
      v43 = v53;
      v44 = v54;
      v45 = v55;
      v40 = *v52;
      v41 = *&v52[16];
      sub_1AF5DD298(&v40, v38);
      v29 = a4;
    }

    sub_1AF6FCEF4(&v46, v29);
    sub_1AF0D9DB0(v52, &qword_1ED725EA0);
  }

  return sub_1AF0D9DB0(v52, &qword_1ED725EA0);
}

void sub_1AF6FC37C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) & 1) != 0 || !a2 || *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_canUseImGUI) != 1)
  {
    return;
  }

  v10 = sub_1AFBE45A8(a1);

  if (v10)
  {
    v4 = sub_1AFDFE238();
    v6 = v5;

    sub_1AF7180FC();

    v7 = sub_1AF6F3D60(v10, v4, v6);

    sub_1AF709E8C(v7);
    swift_unknownObjectRelease();

    v8 = *(a2 + 280);
    if (sub_1AF6F3FF4(0))
    {
      if (*(v8 + 16))
      {
        swift_getObjectType();
        v9 = *(a2 + 24);
        swift_unknownObjectRetain();
        sub_1AF6F5DBC(0, v9 & 1);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

uint64_t sub_1AF6FC5C8(uint64_t result)
{
  if (result)
  {
    if (*(result + 256) == 1)
    {
      *(result + 256) = 0;
      sub_1AF0D4478(0, &qword_1ED72F8A0);

      v1 = sub_1AFDFDB08();
      v4[4] = sub_1AF6F6534;
      v4[5] = 0;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 1107296256;
      v4[2] = sub_1AF6F662C;
      v4[3] = &unk_1F2537098;
      v2 = _Block_copy(v4);

      dispatch_sync(v1, v2);

      _Block_release(v2);
      swift_isEscapingClosureAtFileLocation();
    }

    else
    {
    }

    v3 = byte_1EB6C31AA;
    if (byte_1EB6C31AA == 1)
    {
      byte_1EB6C31AA = 0;
      byte_1EB6C31A9 = v3;
    }
  }

  return result;
}

uint64_t sub_1AF6FC710(uint64_t result)
{
  if (result)
  {
    if (byte_1EB6C31A9 == 1)
    {
      v7[12] = v1;
      v7[13] = v2;
      byte_1EB6C31A9 = 0;
      v3 = result;
      sub_1AF0D4478(0, &qword_1ED72F8A0);

      v4 = sub_1AFDFDB08();
      v5 = swift_allocObject();
      *(v5 + 16) = sub_1AF6FC88C;
      *(v5 + 24) = v3;
      v7[4] = sub_1AF6FC894;
      v7[5] = v5;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 1107296256;
      v7[2] = sub_1AF6F662C;
      v7[3] = &unk_1F24E5F60;
      v6 = _Block_copy(v7);

      dispatch_sync(v4, v6);

      _Block_release(v6);
      swift_isEscapingClosureAtFileLocation();
    }
  }

  return result;
}

uint64_t sub_1AF6FC8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF6FC96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AF6FCEF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF6FD008(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for Query2();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AF6FD0D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t _s3VFX8VFXSceneC29applicationDidEnterBackgroundyyFZ_0()
{
  if (qword_1ED72C938 != -1)
  {
    swift_once();
  }

  [qword_1ED73B7F8 lock];
  if (qword_1ED72C930 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED73B7F0;
  v1 = qword_1ED73B7F8;

  [v1 unlock];
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = v0 + 32;
    do
    {
      sub_1AF6FD3D0(v3, v12);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = Strong + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock;
        os_unfair_lock_lock(*(Strong + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock + 24));
        v7 = OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground;
        if (*(v5 + OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground))
        {
          os_unfair_lock_unlock(*(v6 + 24));
        }

        else
        {
          v8 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_sceneInBackground);
          os_unfair_lock_unlock(*(v6 + 24));
          if ((v8 & 1) == 0)
          {
            os_unfair_lock_lock(*(v6 + 24));
            *(v5 + v7) = 1;
            os_unfair_lock_unlock(*(v6 + 24));
            v9 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
            if (v9)
            {

              os_unfair_recursive_lock_lock_with_options();
              if ((*(v9 + 152) & 1) == 0)
              {
                *(v9 + 152) = 1;
              }

              v10 = *(v9 + 16);
              [*(v10 + 16) lock];
              *(v10 + 24) = 0;
              [*(v10 + 16) unlock];
              os_unfair_recursive_lock_unlock();
            }

            sub_1AF660F84(v5);
          }
        }
      }

      sub_1AF6FC96C(v12, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference, sub_1AF6FD4AC);
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

uint64_t sub_1AF6FD3D0(uint64_t a1, uint64_t a2)
{
  sub_1AF6FD4AC(0, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF6FD464(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AF6FD4AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1AF6FD510()
{
  result = qword_1ED72F990;
  if (!qword_1ED72F990)
  {
    sub_1AF6FD4AC(255, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72F990);
  }

  return result;
}

uint64_t sub_1AF6FD598()
{
  v0 = CFXMTLCreateSystemDefaultDevice();
  if (v0)
  {
    sub_1AF0D5E20(v0);
    v35 = sub_1AF747F54();

    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1AFDFDA28();
  if (qword_1ED731058 != -1)
  {
    v34 = v1;
    swift_once();
    v1 = v34;
  }

  v36 = 0;
  sub_1AF0D4F18(v1, &v36, 0x20534345203D3D0ALL, 0xEB000000000A3D3DLL);
  if (qword_1ED72C938 != -1)
  {
    swift_once();
  }

  [qword_1ED73B7F8 lock];
  if (qword_1ED72C930 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED73B7F0;
  v3 = qword_1ED73B7F8;

  [v3 unlock];
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v2 + 32;
    do
    {
      sub_1AF6FD3D0(v8, &v36);
      if (swift_weakLoadStrong())
      {
        v9 = sub_1AF65FB74();
        v11 = v10;
        v13 = v12;

        sub_1AF6FC96C(&v36, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference, sub_1AF6FD4AC);
        v7 += v9;
        v6 += v11;
        v5 += v13;
      }

      else
      {
        sub_1AF6FC96C(&v36, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference, sub_1AF6FD4AC);
      }

      v8 += 8;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = 0;
    v7 = 0;
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF30F80);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v14 setCountStyle_];
  v15 = [v14 stringFromByteCount_];
  v16 = sub_1AFDFCEF8();
  v18 = v17;

  MEMORY[0x1B2718AE0](v16, v18);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF30FA0);
  v19 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v19 setCountStyle_];
  v20 = [v19 stringFromByteCount_];
  v21 = sub_1AFDFCEF8();
  v23 = v22;

  MEMORY[0x1B2718AE0](v21, v23);

  MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF30FC0);
  v24 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v24);

  MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF30FE0);
  v25 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v25 setCountStyle_];
  v26 = [v25 stringFromByteCount_];
  v27 = sub_1AFDFCEF8();
  v29 = v28;

  MEMORY[0x1B2718AE0](v27, v29);

  v30 = v36;
  v31 = v37;
  v32 = sub_1AFDFDA28();
  v36 = 0;
  sub_1AF0D4F18(v32, &v36, v30, v31);
}

uint64_t sub_1AF6FDAF8(void *a1, uint64_t a2)
{

  *a1 = a2;
}

uint64_t sub_1AF6FDB3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);

  v9 = sub_1AF702820(a1, a2, v8);

  if ((v9 & 1) == 0)
  {
    sub_1AF70DEF8(v14, a1, a2);
    v11 = sub_1AF5AB97C(a1, a2);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = (v11 + 40);
      do
      {
        sub_1AF6FDB3C(*(v13 - 1), *v13, a3, a4);
        v13 += 2;
        --v12;
      }

      while (v12);
    }

    return sub_1AF70DA24(v14, a1);
  }

  return result;
}

void sub_1AF6FDC18(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v70 = qword_1ED73B840;
  v71 = 0;
  v72 = 2;
  v73 = 0;
  v74 = 2;
  v75 = 0;
  sub_1AFCC39D0(3, 3, &v37);
  v64 = v37;
  v65 = v38;
  v66 = v39;
  v67 = v40 | 1;
  v68 = v41;
  v69 = v42;
  v8 = MEMORY[0x1E69E7CD0];
  v36 = MEMORY[0x1E69E7CD0];
  sub_1AF6B06C0(v3, &v64, a1 & 0xFFFFFFFFFFLL, &v43);
  v30 = v43;
  if (v43)
  {
    v9 = v46;
    v10 = v47;
    v11 = v49;
    v51 = v44;
    v52 = v45;
    v28 = v50;
    v29 = v48;
    if (v50 > 0 && v47)
    {
      v24 = a3;
      v25 = a2;
      v12 = *(v49 + 32);
      v13 = *(v48 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF5D15C0(&v43, v59);
      v14 = (v9 + 24);
      v27 = v4;
      v26 = v13;
      do
      {
        v35 = v10;
        v15 = *(v14 - 6);
        v16 = *(v14 - 4);
        v33 = *v14;
        v34 = *(v14 - 1);
        v17 = v14[2];
        v31 = *(v14 - 5);
        v32 = v14[1];
        if (v13)
        {
          v18 = *(v17 + 376);

          os_unfair_lock_lock(v18);
          os_unfair_lock_lock(*(v17 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v12);
        v19 = *(v11 + 64);
        v57[0] = *(v11 + 48);
        v57[1] = v19;
        v58 = *(v11 + 80);
        v20 = *(v11 + 32);
        v21 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;

        *(v11 + 48) = ecs_stack_allocator_allocate(v20, 48 * v21, 8);
        *(v11 + 56) = v21;
        *(v11 + 72) = 0;
        *(v11 + 80) = 0;
        *(v11 + 64) = 0;

        LOBYTE(v53) = 1;
        v59[0] = v29;
        v59[1] = v17;
        v59[2] = v11;
        v59[3] = v16;
        v59[4] = (v31 - v15 + v16);
        v4 = v27;
        v59[5] = v28;
        v59[6] = v15;
        v59[7] = v31;
        v59[8] = 0;
        v59[9] = 0;
        v60 = 1;
        v61 = v34;
        v62 = v33;
        v63 = v32;

        sub_1AFD26194(v59, v27);

        v54 = v30;
        v55 = v51;
        v56 = v52;
        sub_1AF630994(v11, &v54, v57);
        sub_1AF62D29C(v17);
        ecs_stack_allocator_pop_snapshot(v12);
        v13 = v26;
        if (v26)
        {
          os_unfair_lock_unlock(*(v17 + 344));
          os_unfair_lock_unlock(*(v17 + 376));
        }

        v14 += 6;
        v10 = v35 - 1;
      }

      while (v35 != 1);
      v22 = MEMORY[0x1E69E6720];
      sub_1AF7005A0(&v43, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
      sub_1AF7005A0(&v43, &qword_1ED725EA0, &type metadata for QueryResult, v22, sub_1AF69348C);

      a2 = v25;
      a3 = v24;
    }

    else
    {
      sub_1AF7005A0(&v43, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
    }

    v8 = MEMORY[0x1E69E7CD0];
  }

  if ((a3 & 1) == 0)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v8;

    sub_1AF700120(a2, v4, v23, v4, &v36);
  }

  sub_1AF700540(&v37, sub_1AF7004C4);
}

uint64_t sub_1AF6FE0E4(unint64_t a1, unint64_t a2, char a3, char a4)
{
  v5 = v4;
  v243 = *MEMORY[0x1E69E9840];
  v8 = HIDWORD(a1) & 1;
  if (!a1)
  {
    LODWORD(v8) = 1;
  }

  if (v8)
  {
    v9 = 0x200000000;
  }

  else
  {
    v9 = a1;
  }

  sub_1AF6FDC18(v9, a2, a3 & 1);

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v217 = qword_1ED73B840;
  v218 = 0;
  v219 = 2;
  v220 = 1;
  v221 = 2;
  v222 = 0;

  sub_1AF6B06C0(v4, &v217, v9, &v236);
  if (v236)
  {
    v210[1] = v236;
    v214 = v240;
    v215 = v241;
    v216 = v242;
    v211 = v237;
    v212 = v238;
    v213 = v239;
    v10 = sub_1AF6B9944();
    sub_1AF7005A0(&v236, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);
  v12 = sub_1AF43B694();
  v13 = MEMORY[0x1B27191B0](v11, &type metadata for Entity, v12);
  *&v228 = v13;
  v14 = *(v10 + 16);
  if (v14)
  {
    v15 = 32;
    do
    {
      sub_1AF70DA24(v233, *(v10 + v15));
      v15 += 8;
      --v14;
    }

    while (v14);

    v16 = v228;
    v210[0] = v228;
    if (a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = v13;

    v210[0] = v16;
    if (a3)
    {
      goto LABEL_16;
    }
  }

  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x1E69E7CD0];
  sub_1AF6FDB3C(a2, v5, v17, v210);

  v16 = v210[0];
LABEL_16:
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 56);
  v21 = (v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v208 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v22 = (v18 + 63) >> 6;

  v23 = 0;
  v24 = 12;
  v25 = &thread_worker_index;
  v26 = &type metadata for PropagateDirtiness;
  while (1)
  {
    v27 = a4;
    while (1)
    {
LABEL_20:
      if (v20)
      {
        goto LABEL_24;
      }

      do
      {
        v28 = v23 + 1;
        if (v23 + 1 >= v22)
        {
        }

        v20 = *(v16 + 8 * v23++ + 64);
      }

      while (!v20);
      v23 = v28;
LABEL_24:
      v29 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v30 = (*(v16 + 48) + ((v23 << 9) | (8 * v29)));
      v31 = v30[1];
      v32 = *v30;
      v33 = v32 == -1 && v31 == 0;
      v34 = v33;
      if ((v27 & 1) == 0)
      {
        break;
      }

      if (!v34)
      {
        if ((v32 & 0x80000000) != 0)
        {
          goto LABEL_177;
        }

        v35 = v21[1];
        if (v35 <= v32)
        {
          goto LABEL_177;
        }

        v36 = (*v21 + v32 * v24);
        if (v31 != -1 && v36[2] != v31)
        {
          goto LABEL_178;
        }

        v38 = *(v36 + 2);
        v39 = *(*(v5 + 144) + 8 * *v36 + 32);
        if (*(v39 + 232) > v38 || *(v39 + 240) <= v38)
        {
          goto LABEL_178;
        }

        v179 = v32;
        v188 = v31;
        v195 = v5;
        v198 = v21;
        v41 = *(v5 + v208);
        v42 = *v41;
        v43 = *(v39 + 344);

        os_unfair_lock_lock(v43);
        v181 = v42;
        ecs_stack_allocator_push_snapshot(*(v42 + 32));
        v190 = v39;
        v44 = *(*(v39 + 40) + 16);
        v45 = *(v44 + 128);
        if (*(v45 + 16) && (v46 = sub_1AF449CB8(&type metadata for Tombstone), (v47 & 1) != 0) && *(*(v44 + 24) + 16 * *(*(v45 + 56) + 8 * v46) + 32) == &type metadata for Tombstone)
        {
          v5 = v195;
        }

        else
        {
          v48 = *(v181 + 32);

          v49 = ecs_stack_allocator_allocate(v48, 8, 8);
          v50 = v49;
          *v49 = v38;
          v51 = *v41;
          v52 = *(v39 + 192);
          v183 = v49;
          if (v52)
          {
            sub_1AF5C3A64(v49, 1, 1, &type metadata for Tombstone, &off_1F2532330, 1, v52, *(v39 + 200), *(v39 + 208));
            v50 = v183;
          }

          sub_1AF5C3B0C(*(v39 + 40), v39, v50, 1, 1, v51);
          v53 = *(v39 + 24);

          *&v230 = 0;
          v228 = 0u;
          v229 = 0u;
          memset(v233, 0, 40);
          v180 = sub_1AF65A4B4(v53, &type metadata for Tombstone, &off_1F2532330, 0, 0, &v228, v233);

          v54 = MEMORY[0x1E69E6720];
          sub_1AF7005A0(v233, &qword_1ED72C1C0, sub_1AF66FF40, MEMORY[0x1E69E6720], sub_1AF0D0D20);
          sub_1AF7005A0(&v228, &qword_1ED72C1C0, sub_1AF66FF40, v54, sub_1AF0D0D20);
          v5 = v195;
          if ((*(v39 + 240) - *(v39 + 232)) >= 2)
          {
            v172 = *(v39 + 120);
            v204 = *(v39 + 28);
            v201 = *(v39 + 32);
            v55 = *(v39 + 16);
            v56 = *(v190 + 40);
            v57 = *(v56 + 200);
            v192 = *(*(v55 + 88) + 8 * v180 + 32);

            if ((v57 & 1) != 0 || *(v192 + 200) == 1)
            {
              *(v55 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v56 = *(v190 + 40);
            }

            v174 = v55;
            v84 = *(v190 + 256);
            sub_1AF5B5880(v56, v183, 1, 1, 0, v190);
            v176 = *(v190 + 256);
            v177 = v84;
            v85 = v176 - v84;
            if (v176 == v84)
            {
              v86 = 0;
            }

            else
            {
              v86 = v84;
            }

            v233[0] = v86;
            v87 = *(*(v190 + 40) + 24);
            v88 = *(v87 + 16);
            if (v88)
            {
              v89 = v87 + 32;

              for (i = 0; i != v88; ++i)
              {
                v91 = v89 + 40 * i;
                if ((*(v91 + 32) & 1) == 0)
                {
                  v92 = *(v192 + 24);
                  v93 = *(v92 + 16);
                  if (v93)
                  {
                    v94 = (v92 + 32);
                    while (*v94 != *v91)
                    {
                      v94 += 5;
                      if (!--v93)
                      {
                        goto LABEL_91;
                      }
                    }
                  }

                  else
                  {
LABEL_91:
                    sub_1AF640BC8();
                  }
                }
              }

              v5 = v195;
            }

            if (*(v174 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v174 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v190 + 72) * v85);
            }

            v95 = *(v190 + 168);
            if (*(v190 + 184))
            {
              v95 = 0;
            }

            v184 = v95;
            v234[0] = 0;

            MEMORY[0x1EEE9AC00](v96, v97);
            v98 = v204;
            v99 = v201;
            *&v229 = v184;
            DWORD2(v229) = -1;
            *&v230 = v177;
            *(&v230 + 1) = v176;
            v231[0] = v177;
            v231[1] = v176;
            *&v228 = v177;
            *(&v228 + 1) = v176;
            if (v85 < 1)
            {
            }

            else
            {
              do
              {
                LOBYTE(v227[0]) = v99;
                sub_1AF6248A8(v180, v98 | (v99 << 32), v172, v174, &v228, sub_1AF5C5E08);
                v99 = v201;
                v98 = v204;
              }

              while ((*(&v228 + 1) - v228) > 0);

              v5 = v195;
            }

            v39 = v190;
            v105 = *(v190 + 192);
            if (v105)
            {
              v207 = *(v190 + 208);
              v107 = v176;
              v106 = v177;
              goto LABEL_173;
            }

            goto LABEL_174;
          }

          if (sub_1AF649CEC())
          {
            sub_1AF649D40(v180);
          }

          else
          {
            v100 = *(v39 + 232);
            v101 = *(v39 + 240);
            v173 = *(v39 + 120);
            v206 = *(v39 + 28);
            v203 = *(v39 + 32);
            v102 = *(v39 + 16);
            v103 = *(v39 + 40);
            v104 = *(v103 + 200);
            v193 = *(*(v102 + 88) + 8 * v180 + 32);

            if ((v104 & 1) != 0 || *(v193 + 200) == 1)
            {
              *(v102 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v103 = *(v190 + 40);
            }

            v178 = v102;
            v122 = v190;
            v106 = *(v190 + 256);
            sub_1AF5B4FCC(v103, v100, v101, 0, v190);
            v175 = *(v190 + 256);
            if (v175 == v106)
            {
              v123 = 0;
            }

            else
            {
              v123 = v106;
            }

            v233[0] = v123;
            v124 = *(*(v190 + 40) + 24);
            v125 = *(v124 + 16);
            if (v125)
            {
              v126 = v124 + 32;

              v127 = 0;
              v128 = v175 - v106;
              do
              {
                v129 = v126 + 40 * v127;
                if ((*(v129 + 32) & 1) == 0)
                {
                  v130 = *(v193 + 24);
                  v131 = *(v130 + 16);
                  if (v131)
                  {
                    v132 = (v130 + 32);
                    while (*v132 != *v129)
                    {
                      v132 += 5;
                      if (!--v131)
                      {
                        goto LABEL_150;
                      }
                    }
                  }

                  else
                  {
LABEL_150:
                    sub_1AF640BC8();
                    v128 = v175 - v106;
                  }
                }

                ++v127;
              }

              while (v127 != v125);
              v133 = v128;

              v122 = v190;
            }

            else
            {
              v133 = v175 - v106;
            }

            v134 = v178;
            if (*(v178 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v178 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v122 + 72) * v133);
              v134 = v178;
            }

            v135 = *(v122 + 168);
            if (*(v122 + 184))
            {
              v135 = 0;
            }

            v186 = v135;
            v234[0] = 0;
            v136 = v134;

            MEMORY[0x1EEE9AC00](v137, v138);
            v139 = v206;
            v140 = v203;
            *&v229 = v186;
            DWORD2(v229) = -1;
            *&v230 = v106;
            *(&v230 + 1) = v175;
            v231[0] = v106;
            v231[1] = v175;
            *&v228 = v106;
            *(&v228 + 1) = v175;
            if (v133 >= 1)
            {
              do
              {
                LOBYTE(v227[0]) = v140;
                sub_1AF6248A8(v180, v139 | (v140 << 32), v173, v136, &v228, sub_1AF5C44B0);
                v140 = v203;
                v139 = v206;
              }

              while ((*(&v228 + 1) - v228) > 0);
            }

            v39 = v190;
            v105 = *(v190 + 192);
            v5 = v195;
            if (v105)
            {
              v207 = *(v190 + 208);
              v107 = v175;
LABEL_173:
              sub_1AF75D364(v106, v107, v105);
              sub_1AF75D364(v106, v107, v207);
            }

LABEL_174:
          }
        }

        ecs_stack_allocator_pop_snapshot(*(v181 + 32));
        os_unfair_lock_unlock(*(v39 + 344));

        v27 = a4;
        v21 = v198;
        v24 = 12;
        v25 = &thread_worker_index;
        v26 = &type metadata for PropagateDirtiness;
        v31 = v188;
        v32 = v179;
        goto LABEL_177;
      }
    }

    if (v34)
    {
      goto LABEL_20;
    }

    if ((v32 & 0x80000000) != 0)
    {
      goto LABEL_177;
    }

    v35 = v21[1];
    if (v35 <= v32)
    {
      goto LABEL_177;
    }

    v58 = (*v21 + v32 * v24);
    if (v31 == -1 || v58[2] == v31)
    {
      v60 = *(v58 + 2);
      v61 = *(*(v5 + 144) + 8 * *v58 + 32);
      if (v61[29] <= v60 && v61[30] > v60)
      {
        v191 = *(v58 + 2);
        v187 = v61 + 29;
        v189 = v31;
        v199 = v21;
        v63 = **(v5 + v208);
        v64 = v61[43];

        os_unfair_lock_lock(v64);
        v202 = v63;
        ecs_stack_allocator_push_snapshot(*(v63 + 32));
        v65 = v61;
        v66 = *(v61[5] + 16);
        v67 = *(v66 + 128);
        v205 = v65;
        if (!*(v67 + 16) || (v68 = sub_1AF449CB8(&type metadata for Tombstone), (v69 & 1) == 0) || *(*(v66 + 24) + 16 * *(*(v67 + 56) + 8 * v68) + 32) != &type metadata for Tombstone)
        {

          goto LABEL_69;
        }

        v196 = v5;
        v234[0] = &type metadata for Tombstone;
        v234[1] = &off_1F2532330;
        v235 = 1;
        v108 = *(v63 + 104);
        v182 = (v63 + 104);
        v194 = *(v108 + 16);
        if (!v194)
        {

LABEL_195:
          v160 = v205[30] - v205[29];
          v161 = ecs_stack_allocator_allocate(*(v202 + 32), 8 * v160, 8);
          *v161 = v191;
          sub_1AF63515C(v234, &v228);
          v231[0] = v161;
          v231[1] = v160;
          v231[2] = 1;
          v162 = *(v202 + 104);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v202 + 104) = v162;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v162 = sub_1AF420EA0(0, v162[2] + 1, 1, v162);
            *v182 = v162;
          }

          v5 = v196;
          v165 = v162[2];
          v164 = v162[3];
          if (v165 >= v164 >> 1)
          {
            *v182 = sub_1AF420EA0(v164 > 1, v165 + 1, 1, v162);
          }

          sub_1AF635250(v234);
          v166 = *v182;
          *(v166 + 16) = v165 + 1;
          v167 = v166 + 72 * v165;
          *(v167 + 32) = v228;
          v169 = v230;
          v168 = *v231;
          v170 = v229;
          *(v167 + 96) = v231[2];
          *(v167 + 64) = v169;
          *(v167 + 80) = v168;
          *(v167 + 48) = v170;
          *v182 = v166;
          goto LABEL_69;
        }

        v109 = v108 + 32;

        v110 = 0;
        while (2)
        {
          sub_1AF6350F8(v109, v233);
          sub_1AF63515C(v233, &v228);
          sub_1AF63515C(v234, v231);
          if (BYTE8(v230) > 2u)
          {
            if (BYTE8(v230) != 3)
            {
              if (BYTE8(v230) != 4)
              {
                sub_1AF700540(v233, sub_1AF43A540);
                if (v232 == 5)
                {
                  v117 = vorrq_s8(*&v231[1], *&v231[3]);
                  if (!(*&vorr_s8(*v117.i8, *&vextq_s8(v117, v117, 8uLL)) | v231[0]))
                  {
                    sub_1AF635250(&v228);
LABEL_142:
                    v119 = sub_1AFBFCA08(&v228);
                    v120 = *(v118 + 48);
                    if (v120)
                    {
                      v121 = *(v118 + 64);
                      *(v120 + 8 * v121) = v191;
                      *(v118 + 64) = v121 + 1;
                    }

                    (v119)(&v228, 0);
                    sub_1AF635250(v234);
                    v5 = v196;
LABEL_69:
                    v21 = v199;
                    v70 = v202;
                    if (*(*(v202 + 104) + 16))
                    {

                      sub_1AF62F348(v71, v205);

                      v72 = swift_isUniquelyReferenced_nonNull_native();
                      v73 = *(v202 + 104);
                      if (v72)
                      {
                        v74 = v73[2];
                        v75 = swift_isUniquelyReferenced_nonNull_native();
                        *(v202 + 104) = v73;
                        if ((v75 & 1) == 0)
                        {
                          v73 = sub_1AF420EA0(0, v74, 1, v73);
                          *(v202 + 104) = v73;
                        }

                        sub_1AF43A540(0);
                        swift_arrayDestroy();
                        if (v74)
                        {
                          v76 = v73[2] - v74;
                          memmove(v73 + 4, &v73[9 * v74 + 4], 72 * v76);
                          v73[2] = v76;
                        }

                        v70 = v202;
                        *(v202 + 104) = v73;
                      }

                      else
                      {
                        v78 = MEMORY[0x1E69E7CC0];
                        if (v73[3] >= 2uLL)
                        {
                          sub_1AF0D0D20(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
                          v78 = swift_allocObject();
                          v79 = j__malloc_size_0(v78);
                          v78[2] = 0;
                          v78[3] = 2 * ((v79 - 32) / 72);
                        }

                        v70 = v202;
                        *(v202 + 104) = v78;
                      }

                      v80 = *(*(v70 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState);
                      v21 = v199;
                      v77 = v205;
                      if (v80 != 2 && v80 != 1)
                      {
                        v81 = v205[32];
                        v82 = v205[29];
                        if (v82 == v81)
                        {
                          v83 = v205[30];
                        }

                        else
                        {
                          sub_1AF6497A0(v81, v82);
                          v81 = v205[29];
                          v83 = v205[30];
                          if (v83 == v81)
                          {
                            v83 = 0;
                            v81 = 0;
                            *v187 = 0;
                            v187[1] = 0;
                          }

                          v21 = v199;
                        }

                        v205[31] = v83;
                        v205[32] = v81;
                      }
                    }

                    else
                    {
                      v77 = v205;
                    }

                    ecs_stack_allocator_pop_snapshot(*(v70 + 32));
                    os_unfair_lock_unlock(v77[43]);

                    v27 = a4;
                    v24 = 12;
                    v25 = &thread_worker_index;
                    v26 = &type metadata for PropagateDirtiness;
                    v31 = v189;
LABEL_177:
                    v35 = v21[1];
                    goto LABEL_178;
                  }
                }

                goto LABEL_118;
              }

              sub_1AF700540(v233, sub_1AF43A540);
              sub_1AF63515C(&v228, v227);
              if (v232 != 4)
              {
                goto LABEL_118;
              }

              v111 = LOBYTE(v227[0]);
              v112 = LOBYTE(v231[0]);
              sub_1AF635250(&v228);
              v113 = v111 == v112;
LABEL_131:
              if (v113)
              {
                goto LABEL_142;
              }

              goto LABEL_119;
            }

            sub_1AF63515C(&v228, v227);
            if (v232 == 3)
            {
LABEL_137:
              sub_1AF616568(v227, v224);
              sub_1AF616568(v231, v223);
              v116 = v225;
              v185 = v226;
              sub_1AF441150(v224, v225);
              LOBYTE(v116) = sub_1AF640C98(v223, v116, v185);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v223);
              sub_1AF700540(v233, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v224);
              sub_1AF635250(&v228);
              if (v116)
              {
                goto LABEL_142;
              }

              goto LABEL_119;
            }
          }

          else
          {
            if (!BYTE8(v230))
            {
              sub_1AF700540(v233, sub_1AF43A540);
              sub_1AF63515C(&v228, v227);
              if (!v232)
              {
                goto LABEL_130;
              }

              goto LABEL_118;
            }

            if (BYTE8(v230) == 1)
            {
              sub_1AF700540(v233, sub_1AF43A540);
              sub_1AF63515C(&v228, v227);
              if (v232 == 1)
              {
LABEL_130:
                v114 = *&v227[0];
                v115 = v231[0];
                sub_1AF635250(&v228);
                v113 = v114 == v115;
                goto LABEL_131;
              }

LABEL_118:
              sub_1AF700540(&v228, sub_1AF635194);
LABEL_119:
              ++v110;
              v109 += 72;
              if (v194 == v110)
              {
                goto LABEL_195;
              }

              continue;
            }

            sub_1AF63515C(&v228, v227);
            if (v232 == 2)
            {
              goto LABEL_137;
            }
          }

          break;
        }

        sub_1AF700540(v233, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v227);
        goto LABEL_118;
      }
    }

LABEL_178:
    if ((v32 & 0x80000000) != 0)
    {
      goto LABEL_20;
    }

    if (v35 <= v32)
    {
      goto LABEL_20;
    }

    v141 = (*v21 + v32 * v24);
    if (v31 != -1 && v141[2] != v31)
    {
      goto LABEL_20;
    }

    v142 = *(v141 + 2);
    v143 = *(*(v5 + 144) + 8 * *v141 + 32);
    (*v25)(v25, v26);
    v144 = *(v143 + 192);
    if (v144)
    {
      v145 = *(v143 + 208);
      *(v144 + 8 * (v142 >> 6)) |= 1 << v142;
      *(v145 + 8 * (v142 >> 6)) &= ~(1 << v142);
    }

    if (*(*(v143 + 40) + 213) != 1)
    {
      goto LABEL_20;
    }

    v146 = *(v143 + 48);
    v147 = (v146 + 32);
    v148 = *(v146 + 16) + 1;
    v197 = v5;
    v200 = v21;
    while (--v148)
    {
      v149 = v147 + 5;
      v150 = *v147;
      v147 += 5;
      if (v150 == v26)
      {
        v151 = *(v149 - 2);
        goto LABEL_190;
      }
    }

    v151 = 0;
LABEL_190:
    v152 = *(v143 + 128);
    v153 = *(v143 + 184);

    if (v153)
    {
      break;
    }

    v155 = *(*(v143 + 168) + 4 * v142);
    v156 = (v152 + v151 + 8 * v142);
    v157 = *(*(v154 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v155 + 8);

    v158 = *v156;
    v159 = v156[1];
    if (v158 == -1)
    {
      v5 = v197;
      v21 = v200;
      v27 = a4;
      v24 = 12;
      v25 = &thread_worker_index;
      v26 = &type metadata for PropagateDirtiness;
      if (!v159)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = v197;
      v21 = v200;
    }

    sub_1AF70D248(&v228, v155 | (v157 << 32), v158 | (v159 << 32));
    v26 = &type metadata for PropagateDirtiness;
    v25 = &thread_worker_index;
    v24 = 12;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6FF6AC(unint64_t a1, unint64_t a2, int a3)
{
  v7 = HIDWORD(a1) & 1;
  sub_1AF0D0D20(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v60 = &v59 - v10;
  v61 = a2;
  if (a1)
  {
    v11 = v7;
  }

  else
  {
    v11 = 1;
  }

  v63 = a1;
  v59 = a1;
  if (v11)
  {
    v12 = 0x200000000;
  }

  else
  {
    v12 = a1;
  }

  v62 = a3;
  v67 = v12;
  sub_1AF6FDC18(v12, a2, a3 & 1);
  v14 = v13;
  v68 = v3;
  v15 = *(v3 + 216);
  sub_1AF446324();
  v16 = sub_1AFDFE598();
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v66 = v16;
  v64 = v16 + 64;

  v21 = 0;
  for (i = v14; v19; v14 = i)
  {
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v23 = v22 | (v21 << 6);
LABEL_15:
    v27 = *(*(v15 + 48) + 8 * v23);
    v28 = *(v15 + 56) + 24 * v23;
    v29 = *(v28 + 16);
    *v71 = *v28;
    v71[2] = v29;

    sub_1AF693C38(v71, v67, v68, v70);

    *(v64 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v30 = v66;
    *(*(v66 + 48) + 8 * v23) = v27;
    v31 = *(v30 + 56) + 24 * v23;
    v32 = v70[2];
    *v31 = *v70;
    *(v31 + 16) = v32;
    ++*(v30 + 16);
  }

  v24 = v21 << 6;
  while (1)
  {
    v25 = v21 + 1;
    if (v21 + 1 >= v20)
    {
      break;
    }

    v26 = *(v15 + 8 * v21 + 72);
    v24 += 64;
    ++v21;
    if (v26)
    {
      v19 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) + v24;
      v21 = v25;
      goto LABEL_15;
    }
  }

  v33 = v68;
  v68[27] = v66;

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v72 = qword_1ED73B840;
  v73 = 0;
  v74 = 2;
  v75 = 1;
  v76 = 2;
  v77 = 0;

  sub_1AF6B06C0(v33, &v72, v67, v70);
  if (v70[0])
  {
    v71[0] = v70[0];
    *&v71[5] = *&v70[5];
    *&v71[7] = *&v70[7];
    *&v71[9] = *&v70[9];
    v71[11] = v70[11];
    *&v71[1] = *&v70[1];
    *&v71[3] = *&v70[3];
    sub_1AF6B8EAC(0);
    sub_1AF7005A0(v70, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
  }

  if ((v62 & 1) == 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = MEMORY[0x1E69E7CD0];

    sub_1AF7003A8(v61, v33, v34, v33);
  }

  v35 = 0;
  v36 = 1 << *(v14 + 32);
  v37 = *(v14 + 56);
  v38 = -1;
  if (v36 < 64)
  {
    v38 = ~(-1 << v36);
  }

  v39 = v38 & v37;
  v40 = (v36 + 63) >> 6;
  if ((v38 & v37) != 0)
  {
    do
    {
      v41 = v35;
LABEL_30:
      v42 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      sub_1AF6FFCDC(*(*(v14 + 48) + ((v41 << 9) | (8 * v42))), v33);
    }

    while (v39);
  }

  while (1)
  {
    v41 = v35 + 1;
    if (v35 + 1 >= v40)
    {
      break;
    }

    v39 = *(v14 + 8 * v35++ + 64);
    if (v39)
    {
      v35 = v41;
      goto LABEL_30;
    }
  }

  v43 = v63;
  if ((v63 & 0x100000000) != 0)
  {
  }

  v45 = v33[23];

  v46 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v45);

  if (v46)
  {
    v47 = sub_1AFDFC128();
    v48 = v60;
    (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
    LOBYTE(v69) = 0;
    sub_1AF825B54(v48, v59);
  }

  v49 = v68;
  v50 = v68[23];

  v51 = sub_1AF6D6574(&type metadata for EffectsRegistry, &off_1F2537360, v50);

  v69 = v51;
  v52 = sub_1AF8FC41C(v43);
  v53 = v69;
  MEMORY[0x1EEE9AC00](v52, v54);
  *(&v59 - 2) = v53;
  v55 = *(v49 + 184);
  MEMORY[0x1EEE9AC00](v56, v57);
  *(&v59 - 2) = sub_1AF6FFFA4;
  *(&v59 - 1) = v58;

  sub_1AF6D655C(&type metadata for EffectsRegistry, &off_1F2537360, v55, sub_1AF6FFFE8);
}

uint64_t sub_1AF6FFCDC(uint64_t a1, void *a2)
{
  v33 = &type metadata for EmitterReference;
  v34 = &off_1F2563D20;
  v32[0] = a1;
  sub_1AF441150(v32, &type metadata for EmitterReference);
  DynamicType = swift_getDynamicType();
  v4 = v33;
  v5 = v34;
  sub_1AF441150(v32, v33);
  v6 = (v5[2])(v4, v5);
  v7 = a2[17];
  os_unfair_lock_lock(v7);
  v30 = a2 + 12;
  v8 = a2[11];
  v9 = *(v8 + 16);
  if (v9)
  {
    v29 = v7;

    v10 = 32;
    v31 = v6;
    do
    {
      v13 = *(v8 + v10);
      if (v13)
      {
        v14 = *(v13 + 184);
        if (*(v14 + 16))
        {
          v15 = sub_1AF449CB8(DynamicType);
          if ((v16 & 1) != 0 && *(*(v14 + 56) + 8 * v15) == v6)
          {
            v17 = *(v13 + 16);
            v18 = sub_1AF449CB8(*(v13 + 192));
            v20 = v19;

            if (v20)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v22 = *(v17 + 16);
              *(v17 + 16) = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_1AF8452C0();
              }

              sub_1AF6B21E4(v18, v22);
              *(v17 + 16) = v22;
            }

            v23 = *(v13 + 204);
            sub_1AF62440C(v23);

            v24 = a2[11];
            v25 = swift_isUniquelyReferenced_nonNull_native();
            a2[11] = v24;
            if ((v25 & 1) == 0)
            {
              v24 = sub_1AF624774(v24);
            }

            *&v24[8 * v23 + 32] = 0;
            a2[11] = v24;
            v27 = a2[12];
            v26 = swift_isUniquelyReferenced_nonNull_native();
            a2[12] = v27;
            if ((v26 & 1) == 0)
            {
              sub_1AFC05EDC(0, *(v27 + 16) + 1, 1);
              v27 = *v30;
            }

            v12 = *(v27 + 16);
            v11 = *(v27 + 24);
            if (v12 >= v11 >> 1)
            {
              sub_1AFC05EDC(v11 > 1, v12 + 1, 1);
              v27 = *v30;
            }

            *(v27 + 16) = v12 + 1;
            *(v27 + 4 * v12 + 32) = v23;
            a2[12] = v27;
            sub_1AF6AFDFC(a2, v23);

            v6 = v31;
          }
        }
      }

      v10 += 8;
      --v9;
    }

    while (v9);

    v7 = v29;
  }

  os_unfair_lock_unlock(v7);
  sub_1AF6B01BC(v32);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v32);
}

uint64_t sub_1AF6FFFA4(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t sub_1AF700004(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if ((a3 != -1 || a4) && (a3 & 0x80000000) == 0 && *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > a3)
  {
    v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3);
    v6 = *(v5 + 2);
    if (a4 == -1 || v5[2] == a4)
    {
      v7 = *(*(a2 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for EmitterRuntime)
        {
          v13 = &(*(v11 - 2))[53 * v6] + *(v7 + 128);
          v14 = a3 | (a4 << 32);
          v15 = result;
          v16 = sub_1AF65CCB0(v14);
          return sub_1AFB7BFB0(v14, v16 | ((HIDWORD(v16) & 1) << 32), v15, v13, a2, 1);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF700120(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 16);

  v11 = sub_1AF702820(a1, a2, v10);

  if ((v11 & 1) == 0)
  {
    sub_1AF70DEF8(v18, a1, a2);
    v12 = sub_1AF5AB97C(a1, a2);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;

        sub_1AF700120(v15, v16, a3, a4, a5);

        v14 += 2;
        --v13;
      }

      while (v13);
    }

    sub_1AF68614C(a1, a4, a4, a1, HIDWORD(a1));

    sub_1AF70E044(v18, a1);
  }
}

uint64_t sub_1AF700270(uint64_t result, int a2, uint64_t a3)
{
  if ((result != -1 || a2) && (result & 0x80000000) == 0 && *(a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > result)
  {
    v3 = (*(a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    if (a2 == -1 || v3[2] == a2)
    {
      v4 = *(v3 + 2);
      v5 = *(*(a3 + 144) + 8 * *v3 + 32);
      if (*(v5 + 232) <= v4 && *(v5 + 240) > v4)
      {
        v7 = **(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v8 = *(v5 + 344);

        os_unfair_lock_lock(v8);
        ecs_stack_allocator_push_snapshot(*(v7 + 32));

        sub_1AF65CFA0(v7, v5, v4);

        ecs_stack_allocator_pop_snapshot(*(v7 + 32));
        os_unfair_lock_unlock(*(v5 + 344));
      }
    }
  }

  return result;
}

uint64_t sub_1AF7003A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);

  v9 = sub_1AF702820(a1, a2, v8);

  if ((v9 & 1) == 0)
  {
    sub_1AF70DEF8(&v16, a1, a2);
    v10 = sub_1AF5AB97C(a1, a2);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;

        sub_1AF7003A8(v13, v14, a3, a4);

        v12 += 2;
        --v11;
      }

      while (v11);
    }

    sub_1AF700270(a1, SHIDWORD(a1), a4);
  }
}

void sub_1AF7004C4()
{
  if (!qword_1EB6312C0)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6312C0);
    }
  }
}

uint64_t sub_1AF700540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF7005A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t initializeWithCopy for DiagnosticsTrackerInstance(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for DiagnosticsTrackerInstance(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t initializeWithTake for DiagnosticsTrackerInstance(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for DiagnosticsTrackerInstance(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for DiagnosticsTrackerInstance(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DiagnosticsTrackerInstance(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

void sub_1AF70077C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  else if (!(a2 >> 62))
  {
  }
}

uint64_t *assignWithCopy for ScriptStatus(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1AF446C68(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  sub_1AF70077C(v5, v6);
  return a1;
}

uint64_t *assignWithTake for ScriptStatus(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  sub_1AF70077C(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ScriptStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1AF700908(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

void *sub_1AF700934(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScriptHandle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ScriptHandle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

unint64_t sub_1AF700A00()
{
  result = qword_1EB63D960;
  if (!qword_1EB63D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D960);
  }

  return result;
}

uint64_t sub_1AF700A58(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_1AF700FA8(0xFFFFFFFF);
  LOBYTE(v59) = 0;
  v8 = sub_1AF80F414(v7 ^ 0x80000000);
  v10 = *thread_worker_index(v9);
  v49 = v5;
  v11 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (v10 != -1)
  {
    v11 += v10 + 1;
  }

  v47 = *v11;
  LOBYTE(v59) = 0;
  v12 = sub_1AF80F414(0);
  if (v8 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  v44 = v13;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for RemapContext();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = sub_1AF42B4D0(v14);
  v17 = sub_1AF42B590(v14);
  *(v16 + 24) = v15;
  *(v16 + 32) = v17;

  *(v16 + 16) = 1;
  v18 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  os_unfair_lock_lock(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
  v19 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v20 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
  if (v20)
  {
    v21 = 0;
    for (i = 0; i != v20; ++i)
    {
      v23 = *v19 + v21;
      if ((*(v23 + 6) & 0x80000000) == 0)
      {
        sub_1AF65B02C(i | (*(v23 + 8) << 32), v16);
      }

      v21 += 12;
    }
  }

  os_unfair_lock_unlock(*(v18 + 24));
  LOBYTE(v59) = v8 == v12;
  sub_1AF630BA4(v16, a1, v44 | ((v8 == v12) << 32), a3 & 1, v47);

  v24 = *(a1 + 184);

  v25 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v24);

  if (v25)
  {
    v26 = *(a1 + 184);

    v27 = sub_1AF6D6574(&type metadata for EffectsRegistry, &off_1F2537360, v26);

    v28 = sub_1AF8CC838(v27);

    v29 = *(v49 + 184);

    v30 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v29);

    if (v30)
    {
      sub_1AF8AFB74(v8, v28, v25);
    }
  }

  v31 = *(v49 + 184);

  v32 = sub_1AF6D6574(&type metadata for EffectsRegistry, &off_1F2537360, v31);

  v59 = v32;
  v33 = sub_1AF70DE00(&v52, v8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v35 = *(v49 + 184);
  MEMORY[0x1EEE9AC00](v36, v37);

  sub_1AF6D655C(&type metadata for EffectsRegistry, &off_1F2537360, v35, sub_1AF6FFFE8);

  LOBYTE(v59) = 0;
  v38 = sub_1AF80F414(0);
  if (v8 == v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v8;
  }

  sub_1AF6F8F3C(v39 | ((v8 == v38) << 33));
  if (a3)
  {
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v68 = qword_1ED73B840;
    v69 = 0;
    v70 = 2;
    v71 = 0;
    v72 = 2;
    v73 = 0;
    sub_1AF702F8C(1, v50);
    v66[0] = v50[0];
    v66[1] = v50[1];
    v67 = v51;
    sub_1AF6B06C0(v49, v66, 0x200000000, &v52);
    if (v52)
    {
      v62 = v55;
      v63 = v56;
      v64 = v57;
      v59 = v52;
      v65 = v58;
      v60 = v53;
      v61 = v54;
      sub_1AF6B9BF4();
      sub_1AF70108C(v50, sub_1AF701034);
      v40 = sub_1AF5C3C90;
      v41 = &v52;
    }

    else
    {
      v40 = sub_1AF701034;
      v41 = v50;
    }

    sub_1AF70108C(v41, v40);
  }

  if ((a2 & 1) != 0 && a4)
  {

    sub_1AF6F7F40(v42);
  }

  return v8;
}

unint64_t sub_1AF700FA8(unsigned int a1)
{
  v5 = 0;
  MEMORY[0x1B271DEC0](&v5, 8);
  v2 = v5 * a1;
  if (v2 < a1)
  {
    for (i = -a1 % a1; i > v2; v2 = v5 * a1)
    {
      v5 = 0;
      MEMORY[0x1B271DEC0](&v5, 8);
    }
  }

  return HIDWORD(v2);
}

void sub_1AF701034()
{
  if (!qword_1ED723D38)
  {
    v0 = type metadata accessor for Query1();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723D38);
    }
  }
}

uint64_t sub_1AF70108C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF7010EC(void *a1, char *a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  v6 = v5;
  v11 = thread_worker_index(a5);
  if (*v11 == -1)
  {
    v12 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  }

  else
  {
    v12 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v11 + 8;
  }

  v13 = *v12;
  ecs_stack_allocator_push_snapshot(*(*v12 + 32));
  sub_1AF702248(a2, a3, v6, a4 | ((HIDWORD(a4) & 1) << 32), v28);
  if (v29)
  {
    v14 = v30;
    v16 = v28[0];
    v15 = v28[1];
    ecs_stack_allocator_pop_snapshot(*(v13 + 32));
    v17 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (result)
    {
      v19 = result;
      v20 = v16 | (v15 << 32);
      v21 = sub_1AF6824B0(v17, result, v20);
      if (v21 && (v22 = sub_1AF67A4CC(a1, v21, v14, v17), (v22 & 1) == 0))
      {
        MEMORY[0x1EEE9AC00](v22, v23);
        sub_1AF682600(v17, v19, v20, sub_1AF702438);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v24 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    sub_1AFDFE218();

    v27[1] = 0x80000001AFF31000;
    MEMORY[0x1B2718AE0](a2, a3);
    v25 = sub_1AFDFDA08();
    v27[0] = 0;
    (*(*v24 + 88))(v25, v27, 0xD000000000000017, 0x80000001AFF31000);

    v26 = *(v13 + 32);

    return ecs_stack_allocator_pop_snapshot(v26);
  }

  return result;
}

uint64_t sub_1AF7013D0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>, __n128 a5@<Q0>)
{
  v6 = v5;
  v11 = thread_worker_index(a5);
  if (*v11 == -1)
  {
    v12 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  }

  else
  {
    v12 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v11 + 8;
  }

  v13 = *v12;
  ecs_stack_allocator_push_snapshot(*(*v12 + 32));
  sub_1AF702248(a1, a2, v6, a3 | ((HIDWORD(a3) & 1) << 32), v22);
  if (!v22[2])
  {
    v19 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    sub_1AFDFE218();

    v21[1] = 0x80000001AFF31000;
    MEMORY[0x1B2718AE0](a1, a2);
    v20 = sub_1AFDFDA08();
    v21[0] = 0;
    (*(*v19 + 88))(v20, v21, 0xD000000000000017, 0x80000001AFF31000);

    result = ecs_stack_allocator_pop_snapshot(*(v13 + 32));
LABEL_12:
    *a4 = 0u;
    a4[1] = 0u;
    return result;
  }

  v14 = v22[3];
  v15 = v22[0];
  ecs_stack_allocator_pop_snapshot(*(v13 + 32));
  v16 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v18 = sub_1AF6824B0(v16, result, v15);
  if (!v18)
  {

    goto LABEL_12;
  }

  sub_1AF6794BC(v18, v14, v16);
}

uint64_t sub_1AF701628()
{
  sub_1AFDFD078();

  return sub_1AFDFD1F8();
}

uint64_t sub_1AF7016BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v8 = sub_1AFDFD1C8();
  v9 = v7;
  if (v8 == 36 && v7 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v10 = sub_1AF701628();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v64 = v10;
    v65 = v12;
    v66 = v14;
    v67 = v16;
    sub_1AF6DC518();
    sub_1AF4486E4();
    v17 = sub_1AFDFDE98();

    v18 = v17;
    if (*(v17 + 16) != 2)
    {
      goto LABEL_76;
    }

    v19 = *(v17 + 32);
    v20 = v18[5];
    v21 = HIBYTE(v20) & 0xF;
    v22 = v19 & 0xFFFFFFFFFFFFLL;
    if (!((v20 & 0x2000000000000000) != 0 ? HIBYTE(v20) & 0xF : v19 & 0xFFFFFFFFFFFFLL))
    {
      goto LABEL_76;
    }

    if ((v20 & 0x1000000000000000) != 0)
    {
      v59 = v18;

      v26 = sub_1AF87B240(v19, v20, 10);

      v18 = v59;
      if ((v26 & 0x100000000) != 0)
      {
        goto LABEL_76;
      }

LABEL_79:
      v60 = v18[6];
      v61 = v18[7];

      v62 = sub_1AF878A90(v60, v61);
      if ((v62 & 0x100000000) != 0)
      {
        return 0;
      }

      else
      {
        return v26 | (v62 << 32);
      }
    }

    if ((v20 & 0x2000000000000000) != 0)
    {
      v64 = v18[4];
      v65 = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (--v21)
        {
          LODWORD(v26) = 0;
          v51 = &v64 + 1;
          while (1)
          {
            v52 = *v51 - 48;
            if (v52 > 9)
            {
              break;
            }

            v53 = 10 * v26;
            if (v53 != v53)
            {
              break;
            }

            LODWORD(v26) = v53 + v52;
            if (__OFADD__(v53, v52))
            {
              break;
            }

            ++v51;
            if (!--v21)
            {
              goto LABEL_75;
            }
          }
        }
      }

      else if (v19 == 45)
      {
        if (--v21)
        {
          LODWORD(v26) = 0;
          v30 = &v64 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if (v32 != v32)
            {
              break;
            }

            LODWORD(v26) = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v21)
            {
              goto LABEL_75;
            }
          }
        }
      }

      else if (v21)
      {
        LODWORD(v26) = 0;
        v56 = &v64;
        while (1)
        {
          v57 = *v56 - 48;
          if (v57 > 9)
          {
            break;
          }

          v58 = 10 * v26;
          if (v58 != v58)
          {
            break;
          }

          LODWORD(v26) = v58 + v57;
          if (__OFADD__(v58, v57))
          {
            break;
          }

          v56 = (v56 + 1);
          if (!--v21)
          {
            goto LABEL_75;
          }
        }
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        v21 = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v63 = v18;
        v21 = sub_1AFDFE308();
        v18 = v63;
      }

      v24 = *v21;
      if (v24 == 43)
      {
        v47 = v22 - 1;
        if (v22 != 1)
        {
          LODWORD(v26) = 0;
          if (!v21)
          {
            goto LABEL_75;
          }

          v48 = (v21 + 1);
          while (1)
          {
            v49 = *v48 - 48;
            if (v49 > 9)
            {
              break;
            }

            v50 = 10 * v26;
            if (v50 != v50)
            {
              break;
            }

            LODWORD(v26) = v50 + v49;
            if (__OFADD__(v50, v49))
            {
              break;
            }

            ++v48;
            if (!--v47)
            {
LABEL_66:
              LOBYTE(v21) = 0;
              goto LABEL_75;
            }
          }
        }
      }

      else if (v24 == 45)
      {
        v25 = v22 - 1;
        if (v22 != 1)
        {
          LODWORD(v26) = 0;
          if (!v21)
          {
            goto LABEL_75;
          }

          v27 = (v21 + 1);
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v26;
            if (v29 != v29)
            {
              break;
            }

            LODWORD(v26) = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v25)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v22)
      {
        LODWORD(v26) = 0;
        if (!v21)
        {
          goto LABEL_75;
        }

        while (1)
        {
          v54 = *v21 - 48;
          if (v54 > 9)
          {
            break;
          }

          v55 = 10 * v26;
          if (v55 != v55)
          {
            break;
          }

          LODWORD(v26) = v55 + v54;
          if (__OFADD__(v55, v54))
          {
            break;
          }

          ++v21;
          if (!--v22)
          {
            goto LABEL_66;
          }
        }
      }
    }

    LODWORD(v26) = 0;
    LOBYTE(v21) = 1;
LABEL_75:
    if (v21)
    {
LABEL_76:

      return 0;
    }

    goto LABEL_79;
  }

  if (v8 == 35 && v9 == 0xE100000000000000)
  {
  }

  else
  {
    v33 = sub_1AFDFEE28();

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v34 = sub_1AF701628();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = MEMORY[0x1B27189E0](v34, v36, v38, v40);
  v43 = v42;

  if ((a4 & 0x100000000) != 0)
  {
    v44 = 0x200000000;
  }

  else
  {
    v44 = a4;
  }

  v45 = sub_1AF6AC0F4(v41, v43, v44, 1);

  return v45;
}

uint64_t sub_1AF701BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *&v30[0] = a2;
  *(&v30[0] + 1) = a3;
  v31 = 44;
  v32 = 0xE100000000000000;
  sub_1AF4486E4();
  v6 = sub_1AFDFDE98();
  v7 = v6;
  if (*(v6 + 2) != 1)
  {
    goto LABEL_8;
  }

  v9 = *(v6 + 4);
  v8 = *(v6 + 5);

  v31 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1AF420554(0, 1, 1, v7);
  }

  sub_1AF64C314(0, 1, 0);

  v10 = swift_conformsToProtocol2();
  if (!v10 || !a1)
  {
LABEL_8:

    v16 = 0;
    v15 = 0;
LABEL_9:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v23 = 0;
    goto LABEL_10;
  }

  v11 = *(v10 + 8);
  v12 = (*(v11 + 16))(0, 1, a1, v11);
  if ((v12 & 1) == 0)
  {
    v24 = *(a1 - 8);
    MEMORY[0x1EEE9AC00](v12, v13);
    v26 = v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1AF6461F4(a1, v11);
    v15 = sub_1AF64622C(v9, v8, a1, v11);

    result = (*(v24 + 8))(v26, a1);
    if (v15)
    {
      v27 = sub_1AF6ACC04(0, 1);

      v16 = *(v27 + 16);
      v15 = *(v27 + 24);
      v17 = *(v27 + 32);
      v18 = *(v27 + 40);
      v19 = *(v27 + 48);
      v28 = *(v27 + 56);
      v29 = *(v27 + 58);

      v23 = v28 | (v29 << 16);
      goto LABEL_10;
    }

    v16 = 0;
    goto LABEL_9;
  }

  memset(v30, 0, sizeof(v30));
  v14 = (*(v11 + 64))(v9, v8, MEMORY[0x1E69E7CA0] + 8, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, v30, 0, a1, v11);

  sub_1AF44CB60(v30);
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  v17 = *(v14 + 32);
  v18 = *(v14 + 40);
  v19 = *(v14 + 48);
  v20 = *(v14 + 56);
  v21 = *(v14 + 58);

  v23 = v20 | (v21 << 16);
LABEL_10:
  *a4 = v16;
  *(a4 + 8) = v15;
  *(a4 + 16) = v17;
  *(a4 + 24) = v18;
  *(a4 + 32) = v19;
  *(a4 + 40) = v23;
  return result;
}

uint64_t sub_1AF701F04@<X0>(char *a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a2;
  v21 = 46;
  v22 = 0xE100000000000000;
  sub_1AF4486E4();
  v4 = sub_1AFDFDE98();
  v5 = v4;
  v6 = *(v4 + 2);
  if (!v6)
  {

    v13 = 0;
    goto LABEL_26;
  }

  v8 = *(v4 + 4);
  v7 = *(v4 + 5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v6 - 1) > *(v5 + 3) >> 1)
  {
    v5 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v6, 1, v5);
  }

  sub_1AF64C314(0, 1, 0);
  if (*(v5 + 2) || (sub_1AFB7929C(v8, v7, &v21), (v6 = v22) == 0))
  {
    v10 = 0x73676E69646E6942;
    v11 = v8 == 0x73676E69646E6962 && v7 == 0xE800000000000000;
    if (v11 || (sub_1AFDFEE28() & 1) != 0)
    {

      v7 = 0xE800000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (qword_1ED730450 != -1)
    {
      swift_once();
    }

    v13 = sub_1AF6DC144(v10, v7, 0, 1);

    if (v13)
    {
      if (swift_conformsToProtocol2() && swift_conformsToProtocol2())
      {
        v26 = v5;
        sub_1AF7021F8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1AF488088();
        v16 = sub_1AFDFCD98();
        v18 = v17;

        sub_1AF701BB8(v13, v16, v18, &v26);
        v13 = v26;
        v6 = v27;
        v20 = v28;
        v15 = v29;
        v14 = v30;
        goto LABEL_22;
      }

      v13 = 0;
    }

    else
    {
    }

    v6 = 0;
LABEL_26:
    v15 = 0;
    v14 = 0;
    v19 = 0uLL;
    goto LABEL_27;
  }

  v14 = v25;
  v15 = v24;
  v20 = v23;
  v13 = v21;

LABEL_22:

  v19 = v20;
LABEL_27:
  *a3 = v13;
  *(a3 + 8) = v6;
  *(a3 + 16) = v19;
  *(a3 + 32) = v15;
  *(a3 + 40) = v14;
  return result;
}

void sub_1AF7021F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF702248@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a1;
  v27 = a2;
  sub_1AF4486E4();
  v8 = sub_1AFDFDE98();
  v9 = v8;
  v10 = *(v8 + 2);
  if (!v10)
  {
    goto LABEL_6;
  }

  v12 = *(v8 + 4);
  v11 = *(v8 + 5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 - 1) > *(v9 + 3) >> 1)
  {
    v9 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v10, 1, v9);
  }

  sub_1AF64C314(0, 1, 0);
  v14 = sub_1AF7016BC(v12, v11, a3, a4 | ((HIDWORD(a4) & 1) << 32));
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    v26 = v9;
    sub_1AF7021F8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF488088();
    v23 = sub_1AFDFCD98();
    v25 = v24;

    sub_1AF701F04(v23, v25, &v26);

    v19 = v27;
    if (v27)
    {
      v20 = v29;
      v22 = v28;
      v18 = v26;
      v21 = v30 & 1 | (v31 << 16);
      goto LABEL_8;
    }

    v14 = 0;
    v18 = 0;
  }

  else
  {
LABEL_6:

    v14 = 0;
    v18 = 0;
    v19 = 0;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0uLL;
LABEL_8:
  *a5 = v14;
  *(a5 + 8) = v18;
  *(a5 + 16) = v19;
  *(a5 + 24) = v22;
  *(a5 + 40) = v20;
  *(a5 + 48) = v21;
  return result;
}

unint64_t sub_1AF702458()
{
  result = qword_1EB63D968;
  if (!qword_1EB63D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D968);
  }

  return result;
}

unint64_t sub_1AF7024B0()
{
  result = qword_1EB63D970;
  if (!qword_1EB63D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D970);
  }

  return result;
}

unint64_t sub_1AF702508()
{
  result = qword_1EB63D978;
  if (!qword_1EB63D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D978);
  }

  return result;
}

unint64_t sub_1AF702560()
{
  result = qword_1EB63D980;
  if (!qword_1EB63D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D980);
  }

  return result;
}

BOOL sub_1AF7025B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1AFDFF278();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1AF70265C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1AFDFF288();
  sub_1AFDFD038();
  v6 = sub_1AFDFF2F8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1AFDFEE28() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1AF702754(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  v4 = sub_1AFDFF2F8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1AF702820(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = a1;
  v6 = HIDWORD(a1);
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](a2);
  v7 = sub_1AFDFF2F8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(a3 + 48) + 16 * v9;
    v12 = *v11 == v5 && *(v11 + 4) == v6;
    if (v12 && *(v11 + 8) == a2)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1AF70292C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1AF7193F0(&qword_1EB633A20, MEMORY[0x1E69695A8]), v8 = sub_1AFDFCCF8(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_1AF7193F0(&qword_1EB633A10, MEMORY[0x1E69695A8]);
      v16 = sub_1AFDFCE58();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

BOOL sub_1AF702B44(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1AFDFF288();
  sub_1AFDFF2A8();
  v4 = sub_1AFDFF2F8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_1AF702C10(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x1B271AC80](*(a2 + 40), a1, 4);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

double sub_1AF702CE4@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = a2;
  inited[5] = a3;
  if (v13 > 0xF)
  {
    *&v21[0] = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = *&v21[0];
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE431C0;
  *(v17 + 32) = a1;
  if (v16)
  {
    *&v21[0] = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = *&v21[0];
    v18 = *(*&v21[0] + 16);
  }

  else
  {
    v18 = 1;
  }

  sub_1AF5C3CE0((v17 + 32), v18, inited + 4, inited[2], v7, v21);

  result = *v21;
  v20 = v21[1];
  *a4 = v21[0];
  *(a4 + 16) = v20;
  *(a4 + 32) = v22;
  return result;
}

uint64_t sub_1AF702FC8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = a2;
  inited[5] = a3;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE431C0;
  *(v17 + 32) = a1;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 1;
  }

  v19 = *v7 + 41;
  v20 = (*v7)[12];
  v21 = (*v7)[13] >> 4;
  v22 = (*v7)[14];
  v23 = (*v7)[15] / 0x18u;
  v24 = *(v7 + 2);
  v25 = *(v7 + 12);
  v26 = v7[4];
  v27 = v7[2];
  v28 = *(v7 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF7033F4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AF719A64(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
  v7 = v6;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 18);
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v7;
  inited[5] = &off_1F2558F10;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = *(v8 + 20);
  v14 = *(v8 + 22);
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = a1;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v15);
    v15 = v29;
    v16 = v29[2];
  }

  else
  {
    v16 = 1;
  }

  v17 = *v3 + 41;
  v18 = *(*v3 + 24);
  v19 = *(*v3 + 26) >> 4;
  v20 = *(*v3 + 28);
  v21 = *(*v3 + 30) / 0x18u;
  v22 = *(v3 + 2);
  v23 = *(v3 + 12);
  v24 = v3[4];
  v25 = v3[2];
  v26 = *(v3 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v15 + 32), v16, (v17 + v18), v19, (v17 + v20), v21);

  *a2 = v27;
  *(a2 + 8) = v22;
  *(a2 + 12) = v23;
  *(a2 + 13) = v30;
  *(a2 + 15) = v31;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v29;
  *(a2 + 28) = *(&v29 + 3);
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_1AF70363C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AF719A64(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
  v7 = v6;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 18);
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v7;
  inited[5] = &off_1F2558F10;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = *(v8 + 20);
  v14 = *(v8 + 22);
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = a1;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v15);
    v15 = v29;
    v16 = v29[2];
  }

  else
  {
    v16 = 1;
  }

  v17 = *v3 + 41;
  v18 = *(*v3 + 24);
  v19 = *(*v3 + 26) >> 4;
  v20 = *(*v3 + 28);
  v21 = *(*v3 + 30) / 0x18u;
  v22 = *(v3 + 2);
  v23 = *(v3 + 12);
  v24 = v3[4];
  v25 = v3[2];
  v26 = *(v3 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v15 + 32), v16, (v17 + v18), v19, (v17 + v20), v21);

  *a2 = v27;
  *(a2 + 8) = v22;
  *(a2 + 12) = v23;
  *(a2 + 13) = v30;
  *(a2 + 15) = v31;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v29;
  *(a2 + 28) = *(&v29 + 3);
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_1AF703884@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AF719A64(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v7 = v6;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 18);
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v7;
  inited[5] = &off_1F2558F10;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = *(v8 + 20);
  v14 = *(v8 + 22);
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = a1;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v15);
    v15 = v29;
    v16 = v29[2];
  }

  else
  {
    v16 = 1;
  }

  v17 = *v3 + 41;
  v18 = *(*v3 + 24);
  v19 = *(*v3 + 26) >> 4;
  v20 = *(*v3 + 28);
  v21 = *(*v3 + 30) / 0x18u;
  v22 = *(v3 + 2);
  v23 = *(v3 + 12);
  v24 = v3[4];
  v25 = v3[2];
  v26 = *(v3 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v15 + 32), v16, (v17 + v18), v19, (v17 + v20), v21);

  *a2 = v27;
  *(a2 + 8) = v22;
  *(a2 + 12) = v23;
  *(a2 + 13) = v30;
  *(a2 + 15) = v31;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v29;
  *(a2 + 28) = *(&v29 + 3);
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_1AF703AF4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AF719A64(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v7 = v6;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 18);
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v7;
  inited[5] = &off_1F2558F10;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = *(v8 + 20);
  v14 = *(v8 + 22);
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = a1;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v15);
    v15 = v29;
    v16 = v29[2];
  }

  else
  {
    v16 = 1;
  }

  v17 = *v3 + 41;
  v18 = *(*v3 + 24);
  v19 = *(*v3 + 26) >> 4;
  v20 = *(*v3 + 28);
  v21 = *(*v3 + 30) / 0x18u;
  v22 = *(v3 + 2);
  v23 = *(v3 + 12);
  v24 = v3[4];
  v25 = v3[2];
  v26 = *(v3 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v15 + 32), v16, (v17 + v18), v19, (v17 + v20), v21);

  *a2 = v27;
  *(a2 + 8) = v22;
  *(a2 + 12) = v23;
  *(a2 + 13) = v30;
  *(a2 + 15) = v31;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v29;
  *(a2 + 28) = *(&v29 + 3);
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_1AF703D9C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AF719A64(0, &unk_1ED725708, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptRuntime);
  v7 = v6;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 18);
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v7;
  inited[5] = &off_1F2558F10;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = *(v8 + 20);
  v14 = *(v8 + 22);
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = a1;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v15);
    v15 = v29;
    v16 = v29[2];
  }

  else
  {
    v16 = 1;
  }

  v17 = *v3 + 41;
  v18 = *(*v3 + 24);
  v19 = *(*v3 + 26) >> 4;
  v20 = *(*v3 + 28);
  v21 = *(*v3 + 30) / 0x18u;
  v22 = *(v3 + 2);
  v23 = *(v3 + 12);
  v24 = v3[4];
  v25 = v3[2];
  v26 = *(v3 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v15 + 32), v16, (v17 + v18), v19, (v17 + v20), v21);

  *a2 = v27;
  *(a2 + 8) = v22;
  *(a2 + 12) = v23;
  *(a2 + 13) = v30;
  *(a2 + 15) = v31;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v29;
  *(a2 + 28) = *(&v29 + 3);
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_1AF704004@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AF719A64(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
  v7 = v6;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 18);
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v7;
  inited[5] = &off_1F2558F10;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = *(v8 + 20);
  v14 = *(v8 + 22);
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = a1;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v15);
    v15 = v29;
    v16 = v29[2];
  }

  else
  {
    v16 = 1;
  }

  v17 = *v3 + 41;
  v18 = *(*v3 + 24);
  v19 = *(*v3 + 26) >> 4;
  v20 = *(*v3 + 28);
  v21 = *(*v3 + 30) / 0x18u;
  v22 = *(v3 + 2);
  v23 = *(v3 + 12);
  v24 = v3[4];
  v25 = v3[2];
  v26 = *(v3 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v15 + 32), v16, (v17 + v18), v19, (v17 + v20), v21);

  *a2 = v27;
  *(a2 + 8) = v22;
  *(a2 + 12) = v23;
  *(a2 + 13) = v30;
  *(a2 + 15) = v31;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v29;
  *(a2 + 28) = *(&v29 + 3);
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_1AF70426C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AF719A64(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
  v7 = v6;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 18);
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v7;
  inited[5] = &off_1F2558F10;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = *(v8 + 20);
  v14 = *(v8 + 22);
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = a1;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v15);
    v15 = v29;
    v16 = v29[2];
  }

  else
  {
    v16 = 1;
  }

  v17 = *v3 + 41;
  v18 = *(*v3 + 24);
  v19 = *(*v3 + 26) >> 4;
  v20 = *(*v3 + 28);
  v21 = *(*v3 + 30) / 0x18u;
  v22 = *(v3 + 2);
  v23 = *(v3 + 12);
  v24 = v3[4];
  v25 = v3[2];
  v26 = *(v3 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v15 + 32), v16, (v17 + v18), v19, (v17 + v20), v21);

  *a2 = v27;
  *(a2 + 8) = v22;
  *(a2 + 12) = v23;
  *(a2 + 13) = v30;
  *(a2 + 15) = v31;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v29;
  *(a2 + 28) = *(&v29 + 3);
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_1AF7044D4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AF719A64(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
  v7 = v6;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 18);
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v7;
  inited[5] = &off_1F2558F10;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = *(v8 + 20);
  v14 = *(v8 + 22);
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = a1;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v15);
    v15 = v29;
    v16 = v29[2];
  }

  else
  {
    v16 = 1;
  }

  v17 = *v3 + 41;
  v18 = *(*v3 + 24);
  v19 = *(*v3 + 26) >> 4;
  v20 = *(*v3 + 28);
  v21 = *(*v3 + 30) / 0x18u;
  v22 = *(v3 + 2);
  v23 = *(v3 + 12);
  v24 = v3[4];
  v25 = v3[2];
  v26 = *(v3 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v15 + 32), v16, (v17 + v18), v19, (v17 + v20), v21);

  *a2 = v27;
  *(a2 + 8) = v22;
  *(a2 + 12) = v23;
  *(a2 + 13) = v30;
  *(a2 + 15) = v31;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v29;
  *(a2 + 28) = *(&v29 + 3);
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_1AF70473C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AF719A64(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
  v7 = v6;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 18);
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v7;
  inited[5] = &off_1F2558F10;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = *(v8 + 20);
  v14 = *(v8 + 22);
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = a1;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v15);
    v15 = v29;
    v16 = v29[2];
  }

  else
  {
    v16 = 1;
  }

  v17 = *v3 + 41;
  v18 = *(*v3 + 24);
  v19 = *(*v3 + 26) >> 4;
  v20 = *(*v3 + 28);
  v21 = *(*v3 + 30) / 0x18u;
  v22 = *(v3 + 2);
  v23 = *(v3 + 12);
  v24 = v3[4];
  v25 = v3[2];
  v26 = *(v3 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v15 + 32), v16, (v17 + v18), v19, (v17 + v20), v21);

  *a2 = v27;
  *(a2 + 8) = v22;
  *(a2 + 12) = v23;
  *(a2 + 13) = v30;
  *(a2 + 15) = v31;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v29;
  *(a2 + 28) = *(&v29 + 3);
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_1AF7049E0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AF71985C(0, qword_1ED72FDC8, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for KeyframeAnimation);
  v7 = v6;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 18);
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v7;
  inited[5] = &off_1F2510EE8;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = *(v8 + 20);
  v14 = *(v8 + 22);
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = a1;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v15);
    v15 = v29;
    v16 = v29[2];
  }

  else
  {
    v16 = 1;
  }

  v17 = *v3 + 41;
  v18 = *(*v3 + 24);
  v19 = *(*v3 + 26) >> 4;
  v20 = *(*v3 + 28);
  v21 = *(*v3 + 30) / 0x18u;
  v22 = *(v3 + 2);
  v23 = *(v3 + 12);
  v24 = v3[4];
  v25 = v3[2];
  v26 = *(v3 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v15 + 32), v16, (v17 + v18), v19, (v17 + v20), v21);

  *a2 = v27;
  *(a2 + 8) = v22;
  *(a2 + 12) = v23;
  *(a2 + 13) = v30;
  *(a2 + 15) = v31;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v29;
  *(a2 + 28) = *(&v29 + 3);
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_1AF704DB8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AF71985C(0, qword_1ED72C208, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for BasicAnimation);
  v7 = v6;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 18);
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v7;
  inited[5] = &off_1F25114F0;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = *(v8 + 20);
  v14 = *(v8 + 22);
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = a1;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v15);
    v15 = v29;
    v16 = v29[2];
  }

  else
  {
    v16 = 1;
  }

  v17 = *v3 + 41;
  v18 = *(*v3 + 24);
  v19 = *(*v3 + 26) >> 4;
  v20 = *(*v3 + 28);
  v21 = *(*v3 + 30) / 0x18u;
  v22 = *(v3 + 2);
  v23 = *(v3 + 12);
  v24 = v3[4];
  v25 = v3[2];
  v26 = *(v3 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v15 + 32), v16, (v17 + v18), v19, (v17 + v20), v21);

  *a2 = v27;
  *(a2 + 8) = v22;
  *(a2 + 12) = v23;
  *(a2 + 13) = v30;
  *(a2 + 15) = v31;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v29;
  *(a2 + 28) = *(&v29 + 3);
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_1AF7052B4@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v9 = a2(0);
  v10 = *v6;
  v11 = *v6 + 41;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 18);
  sub_1AF718404(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v9;
  inited[5] = a3;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF0D96E0(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE431C0;
  *(v17 + 32) = a1;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 1;
  }

  v19 = *v6 + 41;
  v20 = *(*v6 + 24);
  v21 = *(*v6 + 26) >> 4;
  v22 = *(*v6 + 28);
  v23 = *(*v6 + 30) / 0x18u;
  v24 = *(v6 + 2);
  v25 = *(v6 + 12);
  v26 = v6[4];
  v27 = v6[2];
  v28 = *(v6 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

void *sub_1AF7054C4()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = *(v2 + 48);

  os_unfair_lock_lock(v3);
  v4 = *(v2 + 80);
  if (*(v4 + 16) && (v5 = sub_1AF419914(0xD000000000000017, 0x80000001AFF31890), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = *(v2 + 48);
    swift_unknownObjectRetain();
    v9 = v8;
  }

  else
  {
    v7 = sub_1AF708DF4(v1);
    v10 = sub_1AFDFCEC8();
    [v7 setLabel_];

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 80);
    *(v2 + 80) = 0x8000000000000000;
    sub_1AF851F78(v7, 0xD000000000000017, 0x80000001AFF31890, isUniquelyReferenced_nonNull_native);
    *(v2 + 80) = v13;
    v9 = *(v2 + 48);
  }

  os_unfair_lock_unlock(v9);

  return v7;
}

float32x2_t sub_1AF70561C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v8 = v4();
  (v4)(a1, a2);
  v5.f64[0] = v8;
  v5.f64[1] = v6;
  return vcvt_f32_f64(v5);
}

uint64_t sub_1AF705690(uint64_t result, uint64_t a2)
{
  if (*(v2[5] + 213) == 1)
  {
    v3 = v2;
    v5 = result;
    v6 = v2[6];
    v7 = (v6 + 32);
    v8 = *(v6 + 16) + 1;
    while (--v8)
    {
      v9 = v7 + 5;
      v10 = *v7;
      v7 += 5;
      if (v10 == &type metadata for PropagateDirtiness)
      {
        v8 = *(v9 - 2);
        break;
      }
    }

    if (result != a2)
    {
      for (i = (v8 + 8 * result + v2[16] + 4); ; i += 2)
      {

        if (v3[23])
        {
          break;
        }

        v13 = *(v3[21] + 4 * v5);
        v14 = *(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v13 + 8);

        v15 = *(i - 1);
        v16 = *i;
        if (v15 != -1 || v16 != 0)
        {
          result = sub_1AF70D248(v18, v13 | (v14 << 32), v15 | (v16 << 32));
        }

        if (a2 == ++v5)
        {
          return result;
        }
      }

      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AF705804(uint64_t result)
{
  if (*(*(v1 + 40) + 213) == 1)
  {
    v2 = result;
    v3 = *(v1 + 48);
    v4 = (v3 + 32);
    v5 = *(v3 + 16) + 1;
    while (--v5)
    {
      v6 = v4 + 5;
      v7 = *v4;
      v4 += 5;
      if (v7 == &type metadata for PropagateDirtiness)
      {
        v8 = *(v6 - 2);
        goto LABEL_7;
      }
    }

    v8 = 0;
LABEL_7:
    v9 = *(v1 + 128);
    v10 = *(v1 + 184);

    if (v10)
    {
      result = sub_1AFDFE518();
      __break(1u);
    }

    else
    {
      v12 = (v9 + v8 + 8 * v2);
      v13 = *(*(v1 + 168) + 4 * v2);
      v14 = *(*(v11 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v13 + 8);

      v15 = *v12;
      v16 = v12[1];
      if (v15 != -1 || v16 != 0)
      {
        return sub_1AF70D248(v18, v13 | (v14 << 32), v15 | (v16 << 32));
      }
    }
  }

  return result;
}

uint64_t sub_1AF707238(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 280);
  sub_1AF6F37F0();
  v5 = (v1 + 544);
  v6 = *(v1 + 656);
  v43[6] = *(v1 + 640);
  v43[7] = v6;
  v44[0] = *(v1 + 672);
  *(v44 + 9) = *(v1 + 681);
  v7 = *(v1 + 592);
  v43[2] = *(v1 + 576);
  v43[3] = v7;
  v8 = *(v1 + 624);
  v43[4] = *(v1 + 608);
  v43[5] = v8;
  v9 = *(v1 + 560);
  v43[0] = *(v1 + 544);
  v43[1] = v9;
  if (sub_1AF448314(v43) == 1)
  {
    goto LABEL_13;
  }

  v10 = *(&v43[0] + 1);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 192);
  swift_unknownObjectRetain();
  v13 = v12(ObjectType, v10);
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = *(v1 + 656);
    v40 = *(v1 + 640);
    v41 = v14;
    *v42 = *(v1 + 672);
    *&v42[9] = *(v1 + 681);
    v15 = *(v1 + 592);
    v36 = *(v1 + 576);
    v37 = v15;
    v16 = *(v1 + 624);
    v38 = *(v1 + 608);
    v39 = v16;
    v17 = *(v1 + 560);
    aBlock = *v5;
    v35 = v17;
    if (sub_1AF448314(&aBlock) != 1)
    {
      if (*&v42[16])
      {
        swift_unknownObjectRetain();
        sub_1AF6F3BD8();
        v13();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      sub_1AF0FB8EC(v13);
      goto LABEL_7;
    }

LABEL_13:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

LABEL_7:
  sub_1AF750D14();
  v18 = *(v4 + 16);
  if (v18 && (*(v2 + 393) & 1) == 0 && (*(v2 + 395) & 1) == 0 && (*(v2 + 396) & 1) == 0)
  {
    v19 = *(v2 + 384);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v19;
    *&v36 = sub_1AF7197E4;
    *(&v36 + 1) = v20;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v35 = sub_1AF719CC4;
    *(&v35 + 1) = &unk_1F2537CD8;
    v21 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v22 = v19;

    [v18 addCompletedHandler_];
    _Block_release(v21);
    swift_unknownObjectRelease();
  }

  sub_1AF0D24C0(v32);
  v23 = *(v2 + 656);
  v40 = *(v2 + 640);
  v41 = v23;
  *v42 = *(v2 + 672);
  *&v42[9] = *(v2 + 681);
  v24 = *(v2 + 592);
  v36 = *(v2 + 576);
  v37 = v24;
  v25 = *(v2 + 624);
  v38 = *(v2 + 608);
  v39 = v25;
  v26 = *(v2 + 560);
  aBlock = *v5;
  v35 = v26;
  v27 = v32[7];
  *(v2 + 640) = v32[6];
  *(v2 + 656) = v27;
  *(v2 + 672) = v33[0];
  *(v2 + 681) = *(v33 + 9);
  v28 = v32[3];
  *(v2 + 576) = v32[2];
  *(v2 + 592) = v28;
  v29 = v32[5];
  *(v2 + 608) = v32[4];
  *(v2 + 624) = v29;
  v30 = v32[1];
  *v5 = v32[0];
  *(v2 + 560) = v30;
  sub_1AF70D3FC(&aBlock, &unk_1ED730830, &type metadata for Renderer.CurrentRenderContext, MEMORY[0x1E69E6720], sub_1AF0D96E0);
  *(v4 + 16) = 0;
  result = swift_unknownObjectRelease();
  *(v2 + 240) = 0;
  return result;
}

void sub_1AF707598()
{
  os_unfair_lock_lock(*(v0 + 40));
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  os_unfair_lock_unlock(v2);
  v3 = 0;
  v4 = 1 << *(v1 + 32);
  v5 = *(v1 + 56);
  v6 = -1;
  if (v4 < 64)
  {
    v6 = ~(-1 << v4);
  }

  v7 = v6 & v5;
  v8 = (v4 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v9 = v3;
LABEL_8:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      [*(*(v1 + 48) + ((v9 << 9) | (8 * v10))) waitUntilScheduled];
    }

    while (v7);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (v3 + 1 >= v8)
    {
      break;
    }

    v7 = *(v1 + 8 * v3++ + 64);
    if (v7)
    {
      v3 = v9;
      goto LABEL_8;
    }
  }

  os_unfair_lock_lock(*(v0 + 40));
  v11 = *(v0 + 40);

  os_unfair_lock_unlock(v11);
}

id sub_1AF707694(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = [*(v4 + 264) commandBuffer];
  if (v9)
  {
    aBlock = a1;
    v17 = a2;

    MEMORY[0x1B2718AE0](8992, 0xE200000000000000);
    v22 = a4;
    v10 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v10);

    v11 = sub_1AFDFCEC8();

    [v9 setLabel_];

    if (a3)
    {
      if (qword_1ED72E180 != -1)
      {
        swift_once();
      }

      v12 = qword_1ED73B850;
      os_unfair_lock_lock(*(qword_1ED73B850 + 40));
      if (sub_1AF702754(v9, *(v12 + 48)))
      {
        os_unfair_lock_unlock(*(v12 + 40));
      }

      else
      {
        swift_unknownObjectRetain();
        sub_1AF70DCE8(&aBlock, v9);
        swift_unknownObjectRelease();
        os_unfair_lock_unlock(*(v12 + 40));
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = v9;
        v20 = sub_1AF719CCC;
        v21 = v13;
        aBlock = MEMORY[0x1E69E9820];
        v17 = 1107296256;
        v18 = sub_1AF719CC4;
        v19 = &unk_1F2537BE8;
        v14 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        [v9 addScheduledHandler_];
        _Block_release(v14);
      }
    }
  }

  return v9;
}

void sub_1AF7078B4(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock(*(v2 + 88));
  v4 = *(a1 + 184);

  v5 = sub_1AF6D6574(&type metadata for EffectsRegistry, &off_1F2537360, v4);

  v6 = sub_1AF6F7050(v2);
  v39 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
  v7 = *(*(v2 + 96) + 16);

  v40 = v5;
  if (!v7)
  {
    v38 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v9 = 0;
  v10 = 0;
  v11 = v6;
  v12 = v8 + 32;
  v41 = v5 + 56;
  v37 = v11;
  v35 = v11 / 0x78;
  v38 = MEMORY[0x1E69E7CC0];
  v36 = v2;
  do
  {
    while (1)
    {
      while (1)
      {
        v42 = *(v12 + 16 * v10++);
        ObjectType = swift_getObjectType();
        v14 = *(*(&v42 + 1) + 24);
        swift_unknownObjectRetain();
        v14(ObjectType, *(&v42 + 1));
        if (((*(*(&v42 + 1) + 32))(ObjectType, *(&v42 + 1)) & 1) == 0)
        {
          goto LABEL_10;
        }

        v15 = *(*(&v42 + 1) + 40);
        if (!v15(ObjectType, *(&v42 + 1)))
        {
          goto LABEL_10;
        }

        if (v15(ObjectType, *(&v42 + 1)) > 0)
        {
          v16 = (*(*(&v42 + 1) + 56))(v43, ObjectType, *(&v42 + 1));
          --*v17;
          v16(v43, 0);
        }

        if ((*(*(&v42 + 1) + 176))(ObjectType, *(&v42 + 1)))
        {
LABEL_37:
          ++v9;
          goto LABEL_38;
        }

        if ((*(*(&v42 + 1) + 80))(ObjectType, *(&v42 + 1)) != 0.0 || v18 != 0.0)
        {
          break;
        }

LABEL_10:
        swift_unknownObjectRelease();
        ++v9;
        if (v10 == v7)
        {
          goto LABEL_44;
        }
      }

      v19 = *(*(&v42 + 1) + 152);
      if ((v19(ObjectType, *(&v42 + 1)) & 0xFFFFFFFFFFLL) != 0x200000000)
      {
        v23 = v19(ObjectType, *(&v42 + 1));
        v24 = v23;
        if ((v23 & 0xFE00000000) != 0 || v23 == 0)
        {
          v43[0] = 0;
          v24 = sub_1AF80F414(0);
        }

        if (!*(v40 + 16))
        {
          goto LABEL_10;
        }

        sub_1AFDFF288();
        sub_1AFDFF2C8();
        v26 = sub_1AFDFF2F8();
        v27 = -1 << *(v40 + 32);
        v28 = v26 & ~v27;
        if (((*(v41 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_10;
        }

        v29 = ~v27;
        while (*(*(v40 + 48) + 4 * v28) != v24)
        {
          v28 = (v28 + 1) & v29;
          if (((*(v41 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      v20 = (*(*(&v42 + 1) + 160))(ObjectType, *(&v42 + 1));
      if (v21)
      {
        goto LABEL_37;
      }

      if (v20 > 119)
      {
        v22 = v35;
        if (v37 >= 120)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (v20 >= 1)
      {
        v22 = v37 / v20;
        if (v37 / v20 >= 1)
        {
          goto LABEL_32;
        }

LABEL_31:
        v22 = 1;
        goto LABEL_32;
      }

      v22 = v37;
      if (v37 < 1)
      {
        goto LABEL_31;
      }

LABEL_32:
      v30 = (v9 + v39) % v22;
      ++v9;
      if (v30)
      {
        break;
      }

LABEL_38:
      v31 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC07618(0, *(v38 + 16) + 1, 1);
        v31 = v44;
      }

      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1AFC07618(v33 > 1, v34 + 1, 1);
        v31 = v44;
      }

      *(v31 + 16) = v34 + 1;
      v38 = v31;
      *(v31 + 16 * v34 + 32) = v42;
      v2 = v36;
      if (v10 == v7)
      {
        goto LABEL_46;
      }
    }

    swift_unknownObjectRelease();
  }

  while (v10 != v7);
LABEL_44:
  v2 = v36;
LABEL_46:

  *(v2 + 104) = v38;

  os_unfair_lock_unlock(*(v2 + 88));
}

uint64_t sub_1AF707D7C()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v3 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v4, &v3, 0, 0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = v4 == 0;
  }

  v2 = v1;
  byte_1ED73B6A0 = v2;
  return result;
}

uint64_t sub_1AF707EC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  result = v4();
  if (v6 > 0.0)
  {
    (v4)(a1, a2, 1.0);
    return (v4)(a1, a2);
  }

  return result;
}

uint64_t sub_1AF707F54(BOOL a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 144))(a2, a3);
  switch(v6)
  {
    case 0:
      return a1;
    case 1:
      v7 = *(a3 + 80);
      v7(a2, a3);
      if (v8 <= 0.0)
      {
        return 1;
      }

      else
      {
        v9 = v7(a2, a3);
        v7(a2, a3);
        v11 = v9 / v10;
        return v11 >= 1.0;
      }

    case 2:
      v12 = *(a3 + 80);
      v12(a2, a3);
      if (v13 <= 0.0)
      {
        return 0;
      }

      else
      {
        v14 = v12(a2, a3);
        v12(a2, a3);
        v16 = v14 / v15;
        return v16 < 1.0;
      }
  }

  result = sub_1AFDFF138();
  __break(1u);
  return result;
}

uint64_t sub_1AF7080D4(uint64_t a1)
{
  *&v2 = 0xFFFFFFFFLL;
  *(&v2 + 1) = 0xFFFFFFFFLL;
  *(v1 + 24) = v2;
  *(v1 + 40) = 2;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 84) = 2;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  *(v1 + 97) = 0;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 1;
  *(v1 + 160) = -1;
  __asm { FMOV            V0.2D, #16.0 }

  *(v1 + 168) = _Q0;
  *(v1 + 184) = 0;
  *(v1 + 16) = a1;
  return v1;
}

id sub_1AF708134(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8[4] = sub_1AF717520;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1AF719CC4;
  v8[3] = &unk_1F2537B98;
  v6 = _Block_copy(v8);

  [a2 addPresentedHandler_];
  _Block_release(v6);
  prof_commit();
  if (a4 < 1)
  {
    return [a2 present];
  }

  else
  {
    return [a2 presentAfterMinimumDuration_];
  }
}

uint64_t sub_1AF708238(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF708298()
{
  sub_1AF0FB8EC(*(v0 + 104));
  sub_1AF0FB8EC(*(v0 + 120));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1AF7082EC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 16);
  result = [v3 drawableSize];
  if (v1 != v6 || v2 != v5)
  {
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);

    return [v3 setDrawableSize_];
  }

  return result;
}

uint64_t sub_1AF7083F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 2;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 76) = 2;
  *&v3 = 0xFFFFFFFFLL;
  *(&v3 + 1) = 0xFFFFFFFFLL;
  *(v2 + 80) = v3;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = -1;
  *(v2 + 144) = 1;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1AF708440()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1AF0FB8EC(*(v0 + 104));
  sub_1AF0FB8EC(*(v0 + 120));

  return swift_deallocClassInstance();
}

double sub_1AF7084C0()
{
  v1 = *(v0 + 16);
  v2 = [v1 width];
  [v1 height];
  return v2;
}

uint64_t sub_1AF708530()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PixelFormatDepth.description.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0x7469622038;
    case 2:
      return 0x746962203031;
    case 1:
      return 0x746962203631;
  }

  result = sub_1AFDFF138();
  __break(1u);
  return result;
}

uint64_t sub_1AF708654()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x7469622038;
  }

  if (v1 == 2)
  {
    return 0x746962203031;
  }

  if (v1 == 1)
  {
    return 0x746962203631;
  }

  result = sub_1AFDFF138();
  __break(1u);
  return result;
}

void *sub_1AF708718(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = v3;
  v8 = *(v3 + 120);
  v9 = *(v8 + 48);

  os_unfair_lock_lock(v9);
  v10 = *(v8 + 80);
  if (*(v10 + 16) && (v11 = sub_1AF419914(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    v14 = *(v8 + 48);
    swift_unknownObjectRetain();
    v15 = v14;
  }

  else
  {
    v13 = a3(v7);
    v16 = sub_1AFDFCEC8();
    [v13 setLabel_];

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v8 + 80);
    *(v8 + 80) = 0x8000000000000000;
    sub_1AF851F78(v13, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v8 + 80) = v19;
    v15 = *(v8 + 48);
  }

  os_unfair_lock_unlock(v15);

  return v13;
}

uint64_t sub_1AF708838(uint64_t a1)
{
  CFXTextureDescriptorMakeDefault(&v15);
  sub_1AF466BDC(2, &v15);
  sub_1AF46748C(70, &v15);
  sub_1AF7156E4(&v15);
  sub_1AF7156F0(&v15);
  sub_1AF5C44D4(&v15);
  sub_1AF48F3EC(&v15);
  sub_1AF4674BC(&v15);
  sub_1AF48F3F8(&v15);
  sub_1AF48F404(&v15);
  sub_1AF4674E4(&v15);
  v2 = *(a1 + 16);
  v11 = v15;
  *&v12 = v16;
  v3 = CFXGPUDeviceCreateTexture(v2, &v11);
  if (v3)
  {
    v4 = v3;
    swift_getObjectType();
    sub_1AF7156FC([v4 width], objc_msgSend(v4, sel_height), &v11);
    v5 = v13;
    v6 = v14;
    v9 = v12;
    v10 = v11;
    v7 = sub_1AF472034();
    v11 = v10;
    v12 = v9;
    v13 = v5;
    v14 = v6;
    [v4 replaceRegion:&v11 mipmapLevel:0 withBytes:&unk_1F24F7BF8 bytesPerRow:v7];
    return v4;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void *sub_1AF7089BC()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = *(v2 + 48);

  os_unfair_lock_lock(v3);
  v4 = *(v2 + 80);
  if (*(v4 + 16) && (v5 = sub_1AF419914(0xD000000000000015, 0x80000001AFF318D0), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = *(v2 + 48);
    swift_unknownObjectRetain();
    v9 = v8;
  }

  else
  {
    v7 = sub_1AF708ADC(v1);
    v10 = sub_1AFDFCEC8();
    [v7 setLabel_];

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 80);
    *(v2 + 80) = 0x8000000000000000;
    sub_1AF851F78(v7, 0xD000000000000015, 0x80000001AFF318D0, isUniquelyReferenced_nonNull_native);
    *(v2 + 80) = v13;
    v9 = *(v2 + 48);
  }

  os_unfair_lock_unlock(v9);

  return v7;
}

uint64_t sub_1AF708ADC(uint64_t a1)
{
  CFXTextureDescriptorMakeDefault(&v16);
  sub_1AF466BDC(2, &v16);
  sub_1AF46748C(25, &v16);
  sub_1AF7156E4(&v16);
  sub_1AF7156F0(&v16);
  sub_1AF5C44D4(&v16);
  sub_1AF48F3EC(&v16);
  sub_1AF4674BC(&v16);
  sub_1AF48F3F8(&v16);
  sub_1AF48F404(&v16);
  sub_1AF4674E4(&v16);
  v2 = *(a1 + 16);
  v11 = v16;
  *&v12 = v17;
  v3 = CFXGPUDeviceCreateTexture(v2, &v11);
  if (v3)
  {
    v4 = v3;
    v15 = 31743;
    swift_getObjectType();
    sub_1AF7156FC([v4 width], objc_msgSend(v4, sel_height), &v11);
    v5 = v13;
    v6 = v14;
    v9 = v12;
    v10 = v11;
    v7 = sub_1AF472034();
    v11 = v10;
    v12 = v9;
    v13 = v5;
    v14 = v6;
    [v4 replaceRegion:&v11 mipmapLevel:0 withBytes:&v15 bytesPerRow:v7];
    return v4;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF708C70(uint64_t a1)
{
  CFXTextureDescriptorMakeDefault(&v15);
  sub_1AF466BDC(2, &v15);
  sub_1AF46748C(70, &v15);
  sub_1AF7156E4(&v15);
  sub_1AF7156F0(&v15);
  sub_1AF5C44D4(&v15);
  sub_1AF48F3EC(&v15);
  sub_1AF4674BC(&v15);
  sub_1AF48F3F8(&v15);
  sub_1AF48F404(&v15);
  sub_1AF4674E4(&v15);
  v2 = *(a1 + 16);
  v11 = v15;
  *&v12 = v16;
  v3 = CFXGPUDeviceCreateTexture(v2, &v11);
  if (v3)
  {
    v4 = v3;
    swift_getObjectType();
    sub_1AF7156FC([v4 width], objc_msgSend(v4, sel_height), &v11);
    v5 = v13;
    v6 = v14;
    v9 = v12;
    v10 = v11;
    v7 = sub_1AF472034();
    v11 = v10;
    v12 = v9;
    v13 = v5;
    v14 = v6;
    [v4 replaceRegion:&v11 mipmapLevel:0 withBytes:&unk_1F24F7BA8 bytesPerRow:v7];
    return v4;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF708DF4(uint64_t a1)
{
  CFXTextureDescriptorMakeDefault(&v15);
  sub_1AF466BDC(5, &v15);
  sub_1AF46748C(70, &v15);
  sub_1AF7156E4(&v15);
  sub_1AF7156F0(&v15);
  sub_1AF5C44D4(&v15);
  sub_1AF48F3EC(&v15);
  sub_1AF4674BC(&v15);
  sub_1AF48F3F8(&v15);
  sub_1AF48F404(&v15);
  sub_1AF4674E4(&v15);
  v2 = *(a1 + 16);
  v11 = v15;
  *&v12 = v16;
  v3 = CFXGPUDeviceCreateTexture(v2, &v11);
  if (v3)
  {
    v4 = v3;
    swift_getObjectType();
    sub_1AF7181C8([v4 width], objc_msgSend(v4, sel_height), objc_msgSend(v4, sel_depth), &v11);
    v5 = v13;
    v6 = v14;
    v9 = v12;
    v10 = v11;
    v7 = sub_1AF472034();
    v11 = v10;
    v12 = v9;
    v13 = v5;
    v14 = v6;
    [v4 replaceRegion:&v11 mipmapLevel:0 withBytes:&unk_1F24FEA18 bytesPerRow:v7];
    return v4;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void *sub_1AF708F90()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = *(v2 + 48);

  os_unfair_lock_lock(v3);
  v4 = *(v2 + 80);
  if (*(v4 + 16) && (v5 = sub_1AF419914(0xD000000000000015, 0x80000001AFF31A00), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = *(v2 + 48);
    swift_unknownObjectRetain();
    v9 = v8;
  }

  else
  {
    v7 = sub_1AF7090B0(v1);
    v10 = sub_1AFDFCEC8();
    [v7 setLabel_];

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 80);
    *(v2 + 80) = 0x8000000000000000;
    sub_1AF851F78(v7, 0xD000000000000015, 0x80000001AFF31A00, isUniquelyReferenced_nonNull_native);
    *(v2 + 80) = v13;
    v9 = *(v2 + 48);
  }

  os_unfair_lock_unlock(v9);

  return v7;
}

uint64_t sub_1AF7090B0(uint64_t a1)
{
  CFXTextureDescriptorMakeDefault(&v15);
  sub_1AF466BDC(0, &v15);
  sub_1AF46748C(70, &v15);
  sub_1AF7156E4(&v15);
  sub_1AF7156F0(&v15);
  sub_1AF5C44D4(&v15);
  sub_1AF48F3EC(&v15);
  sub_1AF4674BC(&v15);
  sub_1AF48F3F8(&v15);
  sub_1AF48F404(&v15);
  sub_1AF4674E4(&v15);
  v2 = *(a1 + 16);
  v11 = v15;
  *&v12 = v16;
  v3 = CFXGPUDeviceCreateTexture(v2, &v11);
  if (v3)
  {
    v4 = v3;
    swift_getObjectType();
    sub_1AF7181C8([v4 width], objc_msgSend(v4, sel_height), objc_msgSend(v4, sel_depth), &v11);
    v5 = v13;
    v6 = v14;
    v9 = v12;
    v10 = v11;
    v7 = sub_1AF472034();
    v11 = v10;
    v12 = v9;
    v13 = v5;
    v14 = v6;
    [v4 replaceRegion:&v11 mipmapLevel:0 withBytes:&unk_1F25032A8 bytesPerRow:v7];
    return v4;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void *sub_1AF70924C()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = *(v2 + 48);

  os_unfair_lock_lock(v3);
  v4 = *(v2 + 80);
  if (*(v4 + 16) && (v5 = sub_1AF419914(0xD000000000000015, 0x80000001AFF316F0), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = *(v2 + 48);
    swift_unknownObjectRetain();
    v9 = v8;
  }

  else
  {
    v7 = sub_1AF70936C(v1);
    v10 = sub_1AFDFCEC8();
    [v7 setLabel_];

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 80);
    *(v2 + 80) = 0x8000000000000000;
    sub_1AF851F78(v7, 0xD000000000000015, 0x80000001AFF316F0, isUniquelyReferenced_nonNull_native);
    *(v2 + 80) = v13;
    v9 = *(v2 + 48);
  }

  os_unfair_lock_unlock(v9);

  return v7;
}

uint64_t sub_1AF70936C(uint64_t a1)
{
  CFXTextureDescriptorMakeDefault(&v15);
  sub_1AF466BDC(2, &v15);
  sub_1AF46748C(70, &v15);
  sub_1AF7156E4(&v15);
  sub_1AF7156F0(&v15);
  sub_1AF5C44D4(&v15);
  sub_1AF48F3EC(&v15);
  sub_1AF4674BC(&v15);
  sub_1AF48F3F8(&v15);
  sub_1AF48F404(&v15);
  sub_1AF4674E4(&v15);
  v2 = *(a1 + 16);
  v11 = v15;
  *&v12 = v16;
  v3 = CFXGPUDeviceCreateTexture(v2, &v11);
  if (v3)
  {
    v4 = v3;
    swift_getObjectType();
    sub_1AF7156FC([v4 width], objc_msgSend(v4, sel_height), &v11);
    v5 = v13;
    v6 = v14;
    v9 = v12;
    v10 = v11;
    v7 = sub_1AF472034();
    v11 = v10;
    v12 = v9;
    v13 = v5;
    v14 = v6;
    [v4 replaceRegion:&v11 mipmapLevel:0 withBytes:&unk_1F24F7BD0 bytesPerRow:v7];
    return v4;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void *sub_1AF7094F0()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = *(v2 + 48);

  os_unfair_lock_lock(v3);
  v4 = *(v2 + 80);
  if (*(v4 + 16) && (v5 = sub_1AF419914(0xD000000000000015, 0x80000001AFF31A40), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = *(v2 + 48);
    swift_unknownObjectRetain();
    v9 = v8;
  }

  else
  {
    v7 = sub_1AF709610(v1);
    v10 = sub_1AFDFCEC8();
    [v7 setLabel_];

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 80);
    *(v2 + 80) = 0x8000000000000000;
    sub_1AF851F78(v7, 0xD000000000000015, 0x80000001AFF31A40, isUniquelyReferenced_nonNull_native);
    *(v2 + 80) = v13;
    v9 = *(v2 + 48);
  }

  os_unfair_lock_unlock(v9);

  return v7;
}

uint64_t sub_1AF709610(uint64_t a1)
{
  CFXTextureDescriptorMakeDefault(&v15);
  sub_1AF466BDC(7, &v15);
  sub_1AF46748C(70, &v15);
  sub_1AF7156E4(&v15);
  sub_1AF7156F0(&v15);
  sub_1AF5C44D4(&v15);
  sub_1AF48F3EC(&v15);
  sub_1AF4674BC(&v15);
  sub_1AF48F3F8(&v15);
  sub_1AF48F404(&v15);
  sub_1AF4674E4(&v15);
  v2 = *(a1 + 16);
  v11 = v15;
  *&v12 = v16;
  v3 = CFXGPUDeviceCreateTexture(v2, &v11);
  if (v3)
  {
    v4 = v3;
    swift_getObjectType();
    sub_1AF7181C8([v4 width], objc_msgSend(v4, sel_height), objc_msgSend(v4, sel_depth), &v11);
    v5 = v13;
    v6 = v14;
    v9 = v12;
    v10 = v11;
    v7 = sub_1AF472034();
    v11 = v10;
    v12 = v9;
    v13 = v5;
    v14 = v6;
    [v4 replaceRegion:&v11 mipmapLevel:0 withBytes:&unk_1F25032D0 bytesPerRow:v7];
    return v4;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void *sub_1AF7097AC()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = *(v2 + 48);

  os_unfair_lock_lock(v3);
  v4 = *(v2 + 80);
  if (*(v4 + 16) && (v5 = sub_1AF419914(0xD000000000000017, 0x80000001AFF31A80), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = *(v2 + 48);
    swift_unknownObjectRetain();
    v9 = v8;
  }

  else
  {
    v7 = sub_1AF7098CC(v1);
    v10 = sub_1AFDFCEC8();
    [v7 setLabel_];

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 80);
    *(v2 + 80) = 0x8000000000000000;
    sub_1AF851F78(v7, 0xD000000000000017, 0x80000001AFF31A80, isUniquelyReferenced_nonNull_native);
    *(v2 + 80) = v13;
    v9 = *(v2 + 48);
  }

  os_unfair_lock_unlock(v9);

  return v7;
}

uint64_t sub_1AF7098CC(uint64_t a1)
{
  CFXTextureDescriptorMakeDefault(&v15);
  sub_1AF466BDC(5, &v15);
  sub_1AF46748C(70, &v15);
  sub_1AF7156E4(&v15);
  sub_1AF7156F0(&v15);
  sub_1AF5C44D4(&v15);
  sub_1AF48F3EC(&v15);
  sub_1AF4674BC(&v15);
  sub_1AF48F3F8(&v15);
  sub_1AF48F404(&v15);
  sub_1AF4674E4(&v15);
  v2 = *(a1 + 16);
  v11 = v15;
  *&v12 = v16;
  v3 = CFXGPUDeviceCreateTexture(v2, &v11);
  if (v3)
  {
    v4 = v3;
    swift_getObjectType();
    sub_1AF7181C8([v4 width], objc_msgSend(v4, sel_height), objc_msgSend(v4, sel_depth), &v11);
    v5 = v13;
    v6 = v14;
    v9 = v12;
    v10 = v11;
    v7 = sub_1AF472034();
    v11 = v10;
    v12 = v9;
    v13 = v5;
    v14 = v6;
    [v4 replaceRegion:&v11 mipmapLevel:0 withBytes:&unk_1F25032F8 bytesPerRow:v7];
    return v4;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void *sub_1AF709A68()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = *(v2 + 48);

  os_unfair_lock_lock(v3);
  v4 = *(v2 + 80);
  if (*(v4 + 16) && (v5 = sub_1AF419914(0xD000000000000017, 0x80000001AFF319C0), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = *(v2 + 48);
    swift_unknownObjectRetain();
    v9 = v8;
  }

  else
  {
    v7 = sub_1AF709B88(v1);
    v10 = sub_1AFDFCEC8();
    [v7 setLabel_];

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 80);
    *(v2 + 80) = 0x8000000000000000;
    sub_1AF851F78(v7, 0xD000000000000017, 0x80000001AFF319C0, isUniquelyReferenced_nonNull_native);
    *(v2 + 80) = v13;
    v9 = *(v2 + 48);
  }

  os_unfair_lock_unlock(v9);

  return v7;
}

uint64_t sub_1AF709B88(uint64_t a1)
{
  CFXTextureDescriptorMakeDefault(&v15);
  sub_1AF466BDC(2, &v15);
  sub_1AF46748C(70, &v15);
  sub_1AF7156E4(&v15);
  sub_1AF7156F0(&v15);
  sub_1AF5C44D4(&v15);
  sub_1AF48F3EC(&v15);
  sub_1AF4674BC(&v15);
  sub_1AF48F3F8(&v15);
  sub_1AF48F404(&v15);
  sub_1AF4674E4(&v15);
  v2 = *(a1 + 16);
  v11 = v15;
  *&v12 = v16;
  v3 = CFXGPUDeviceCreateTexture(v2, &v11);
  if (v3)
  {
    v4 = v3;
    swift_getObjectType();
    sub_1AF7156FC([v4 width], objc_msgSend(v4, sel_height), &v11);
    v5 = v13;
    v6 = v14;
    v9 = v12;
    v10 = v11;
    v7 = sub_1AF472034();
    v11 = v10;
    v12 = v9;
    v13 = v5;
    v14 = v6;
    [v4 replaceRegion:&v11 mipmapLevel:0 withBytes:&unk_1F2503320 bytesPerRow:v7];
    return v4;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void sub_1AF709D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(*(v4 + 88));
  v8 = (v4 + 96);
  v9 = *(v4 + 96);
  v10 = v9[2];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    while (!a1 || v9[v11 + 4] != a1)
    {
      ++v12;
      v11 += 2;
      if (v10 == v12)
      {
        goto LABEL_10;
      }
    }

    if (a3)
    {
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v8 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1AFC0DB70(v9);
        *v8 = v9;
      }

      v14 = &v9[v11];
      v14[4] = a3;
      v14[5] = a4;
    }

    else
    {
      sub_1AF620F30(v12);
    }

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_10:
    if (a3)
    {
      swift_unknownObjectRetain();
      v15 = swift_isUniquelyReferenced_nonNull_native();
      *v8 = v9;
      if ((v15 & 1) == 0)
      {
        v9 = sub_1AF424C70(0, v10 + 1, 1, v9);
        *v8 = v9;
      }

      v17 = v9[2];
      v16 = v9[3];
      if (v17 >= v16 >> 1)
      {
        v9 = sub_1AF424C70(v16 > 1, v17 + 1, 1, v9);
      }

      v9[2] = v17 + 1;
      v18 = &v9[2 * v17];
      v18[4] = a3;
      v18[5] = a4;
      *v8 = v9;
    }
  }

  v19 = *(v4 + 88);

  os_unfair_lock_unlock(v19);
}

id sub_1AF709E8C(void *a1)
{
  v3 = *(v1 + 656);
  v23[6] = *(v1 + 640);
  v23[7] = v3;
  v24[0] = *(v1 + 672);
  v4 = *(v1 + 592);
  v23[2] = *(v1 + 576);
  v23[3] = v4;
  v5 = *(v1 + 624);
  v23[4] = *(v1 + 608);
  v23[5] = v5;
  v6 = *(v1 + 560);
  v23[0] = *(v1 + 544);
  v23[1] = v6;
  *(v24 + 9) = *(v1 + 681);
  if (sub_1AF448314(v23) == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v1 + 552);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 168);
    swift_unknownObjectRetain();
    v7 = v10(ObjectType, v8);
    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  sub_1AF6F5DBC(v7, *(v1 + 24) & 1);
  *v11.i64 = sub_1AF474C10();
  v13 = vcvtq_f64_f32(*v11.f32);
  v14 = vcvt_hight_f64_f32(v11);
  if (v7)
  {
    v20 = v13;
    v21 = v14;
    v15 = xmmword_1AFE20BF0;
    if (v7 == 1)
    {
      v15 = xmmword_1AFE72A50;
    }

    v18 = v15;
    v15.i32[0] = 1;
    v12.i32[0] = v7;
    v19 = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(v12, v15), 0), xmmword_1AFE72A60, xmmword_1AFE20BF0);
    sub_1AF718404(0, &qword_1EB63DAA0, type metadata accessor for MTLViewport, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1AFE4C620;
    *(v16 + 32) = vaddq_f64(vmulq_f64(v21, vcvtq_f64_f32(*v18.f32)), v20);
    *(v16 + 48) = vmulq_f64(v21, vcvt_hight_f64_f32(v18));
    *(v16 + 64) = xmmword_1AFE42FD0;
    *(v16 + 80) = vaddq_f64(vmulq_f64(vcvtq_f64_f32(*v19.f32), v21), v20);
    *(v16 + 96) = vmulq_f64(vcvt_hight_f64_f32(v19), v21);
    *(v16 + 112) = xmmword_1AFE42FD0;
    sub_1AFDFDBD8();
  }

  else
  {
    v22[0] = v13;
    v22[1] = v14;
    v22[2] = xmmword_1AFE42FD0;
    return [a1 setViewport_];
  }
}

void sub_1AF70A0C4(void *a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR____TtC3VFX13EntityManager_counters);
    v4 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_counters + 20);
    [a1 GPUEndTime];
    v6 = v5;
    [a1 GPUStartTime];
    if (*v3)
    {
      vfx_counters_update(*v3, v4, v6 - v7);
    }
  }

  [a1 kernelStartTime];
  [a1 kernelEndTime];
  [a1 GPUStartTime];
  [a1 GPUEndTime];

  prof_commit();
}

void sub_1AF70A1A8(void *a1)
{
  os_unfair_lock_lock(*(v1 + 40));
  if (sub_1AF702754(a1, *(v1 + 48)))
  {
    v3 = *(v1 + 40);

    os_unfair_lock_unlock(v3);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1AF70DCE8(v6, a1);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(*(v1 + 40));
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = a1;
    v6[4] = sub_1AF719CCC;
    v6[5] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1AF719CC4;
    v6[3] = &unk_1F2537D78;
    v5 = _Block_copy(v6);
    swift_unknownObjectRetain();

    [a1 addScheduledHandler_];
    _Block_release(v5);
  }
}

uint64_t sub_1AF70A2F4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  swift_unknownObjectUnownedInit();
  *(v5 + 56) = 0;
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v5 + 64) = "Renderer.renderOutputs";
  *(v5 + 72) = 22;
  *(v5 + 80) = 2;
  v11 = MEMORY[0x1E69E7CC0];
  *(v5 + 88) = v10;
  *(v5 + 96) = v11;
  *(v5 + 104) = v11;
  *(v5 + 240) = 0;
  *(v5 + 256) = 0;
  *(v5 + 272) = 0x1000000;
  *(v5 + 276) = 0;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 320) = 0u;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0u;
  *(v5 + 368) = 0;
  *(v5 + 376) = v11;
  *(v5 + 384) = dispatch_semaphore_create(3);
  type metadata accessor for VariantDescriptorTracker();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_1AFDFD488();
  *(v13 + 16) = 3;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0u;
  *(v12 + 24) = v13;
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v12 + 32) = "VariantDescriptorTracker";
  *(v12 + 40) = 24;
  *(v12 + 48) = 2;
  *(v12 + 56) = v14;
  *(v5 + 520) = v12;
  sub_1AF0D24C0(v101);
  v15 = v101[7];
  *(v5 + 640) = v101[6];
  *(v5 + 656) = v15;
  *(v5 + 672) = v102[0];
  *(v5 + 681) = *(v102 + 9);
  v16 = v101[3];
  *(v5 + 576) = v101[2];
  *(v5 + 592) = v16;
  v17 = v101[5];
  *(v5 + 608) = v101[4];
  *(v5 + 624) = v17;
  v18 = v101[1];
  *(v5 + 544) = v101[0];
  *(v5 + 560) = v18;
  *(v5 + 736) = 0;
  *(v5 + 720) = 0u;
  *(v5 + 744) = sub_1AF0D24E0(v11);
  *(v5 + 752) = sub_1AF0D2608(v11);
  if (a1)
  {
    v19 = a4;
    v20 = a1;
    v21 = CFXGPUDeviceGetMTLDevice(v20);
    *(v5 + 16) = v20;
    v22 = v20;
    v23 = [swift_unknownObjectRetain() supportsVertexAmplificationCount_];
    if ([v21 supportsFamily_])
    {
      v23 |= 2uLL;
    }

    if ([swift_unknownObjectRetain() supportsMeshShaders])
    {
      v24 = v23 | 4;
    }

    else
    {
      v24 = v23;
    }

    v25 = [v21 supportsDepthClipMode];
    swift_unknownObjectRelease_n();
    v26 = v24 | 8;
    if (!v25)
    {
      v26 = v24;
    }

    *(v5 + 24) = v26;
    BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v22, 0x400, 0);
    if (BufferWithLength)
    {
      v28 = sub_1AFDFCEC8();
      [BufferWithLength setLabel_];

      v29 = 1024;
      v30 = a2;
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v92 = 0;
      *(&v92 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
      MEMORY[0x1B2718AE0](4271950, 0xE300000000000000);
      MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
      v35 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v35);

      MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
      v91 = 0;
      type metadata accessor for MTLResourceOptions(0);
      sub_1AFDFE458();
      v36 = v92;
      v37 = sub_1AFDFDA08();
      v30 = a2;
      if (qword_1ED731058 != -1)
      {
        v90 = v37;
        swift_once();
        v37 = v90;
      }

      *&v92 = 0;
      sub_1AF0D4F18(v37, &v92, v36, *(&v36 + 1));

      v29 = 0;
    }

    *(v5 + 208) = BufferWithLength;
    *(v5 + 216) = 0;
    *(v5 + 224) = v29;
    if (v30)
    {
      v38 = v30;
    }

    else
    {
      v38 = [v21 newCommandQueue];
      v39 = sub_1AFDFCEC8();
      [v38 setLabel_];

      swift_unknownObjectRetain();
    }

    *(v5 + 264) = v38;
    swift_unknownObjectRetain_n();
    sub_1AF0D2A84(v38);
    swift_unknownObjectRelease();
    if (v19)
    {
      swift_unknownObjectUnownedAssign();
      v40 = sub_1AF12E2A0(v19);
      v41 = v40;
      v42 = a3;
      if ((*(a3 + 1) & 1) == 0)
      {
        if (!v40)
        {
          goto LABEL_30;
        }

LABEL_28:
        type metadata accessor for ShaderCache();
        swift_allocObject();
        v44 = swift_unknownObjectRetain();
        *(v5 + 112) = sub_1AF0D2F80(v44);
        type metadata accessor for TextureCache();
        swift_allocObject();
        v45 = swift_unknownObjectRetain();
        v46 = sub_1AF0D60CC(v45);
LABEL_31:
        *(v5 + 120) = v46;
        v49 = v22;
        sub_1AF0D6EF0(v49, &v92);
        v50 = v93;
        *(v5 + 128) = v92;
        *(v5 + 144) = v50;
        v51 = v95;
        *(v5 + 160) = v94;
        *(v5 + 176) = v51;
        type metadata accessor for TexturePool();
        v52 = swift_allocObject();
        v53 = objc_allocWithZone(MEMORY[0x1E69741C0]);
        v54 = v49;
        v52[3] = [v53 init];
        v55 = MEMORY[0x1E69E7CC0];
        v52[4] = sub_1AF0D65E4(MEMORY[0x1E69E7CC0]);
        v56 = CFXTextureAllocatorPerFrameCreate(v54, 1);

        v52[2] = v56;
        *(v5 + 192) = v52;
        type metadata accessor for ColorRampCache();
        v57 = swift_allocObject();
        *(v57 + 16) = sub_1AF0D7824(v55);
        *(v57 + 24) = sub_1AF0D77F8(v55);
        swift_weakInit();
        *(v5 + 704) = v57;
        type metadata accessor for CurveCache();
        v58 = swift_allocObject();
        *(v58 + 16) = sub_1AF0D77F8(v55);
        swift_weakInit();
        *(v5 + 712) = v58;
        v59 = sub_1AFDFCEC8();
        v60 = CFXBufferAllocatorPerFrameCreate(v54, v59, 0, 3u, 0x10000);

        *(v5 + 232) = v60;
        v61 = sub_1AFDFCEC8();
        v62 = CFXBufferAllocatorPerFrameCreate(v54, v61, 0, 3u, 0x10000);

        *(v5 + 248) = v62;
        v63 = v42[3];
        *(v5 + 424) = v42[2];
        *(v5 + 440) = v63;
        *(v5 + 456) = v42[4];
        v64 = v42[1];
        *(v5 + 392) = *v42;
        *(v5 + 408) = v64;
        type metadata accessor for RenderGraph();
        v65 = swift_allocObject();
        v65[2] = 0;
        v65[3] = 2;
        v65[4] = 0;
        v65[5] = 0;
        v65[6] = 115;
        v66 = sub_1AF0D7D20(&unk_1F24FED00);
        sub_1AF0D8224();
        swift_arrayDestroy();
        v65[7] = v66;
        *(v5 + 200) = v65;
        type metadata accessor for CommandBufferHelper();
        swift_allocObject();
        v67 = swift_unknownObjectRetain();
        v68 = sub_1AF0D82B4(v67, 0xD00000000000001ALL, 0x80000001AFF31B20);
        swift_unknownObjectRelease();
        *(v5 + 280) = v68;
        swift_allocObject();
        v69 = swift_unknownObjectRetain();
        v70 = sub_1AF0D82B4(v69, 0xD00000000000001BLL, 0x80000001AFF31B40);
        swift_unknownObjectRelease();
        *(v5 + 528) = v70;
        v91 = sub_1AF0D839C();
        sub_1AF0D83A4(&v91);
        sub_1AF0D83B4(2, &v91);
        sub_1AF0D83C8(&v91);
        sub_1AF0D83BC(&v91);
        v71 = v91;
        v72 = sub_1AFDFCEC8();
        SamplerWithLabel = CFXGPUDeviceCreateSamplerWithLabel(v54, v71, v72);

        *(v5 + 472) = SamplerWithLabel;
        sub_1AF0D83B4(1, &v91);
        v74 = v91;
        v75 = sub_1AFDFCEC8();
        v76 = CFXGPUDeviceCreateSamplerWithLabel(v54, v74, v75);

        *(v5 + 488) = v76;
        sub_1AF0D8784(1, &v91);
        v77 = v91;
        v78 = sub_1AFDFCEC8();
        v79 = CFXGPUDeviceCreateSamplerWithLabel(v54, v77, v78);

        *(v5 + 504) = v79;
        sub_1AF0D878C(1, &v91);
        sub_1AF0D8794(1, &v91);
        v80 = v91;
        v81 = sub_1AFDFCEC8();
        v82 = CFXGPUDeviceCreateSamplerWithLabel(v54, v80, v81);

        *(v5 + 496) = v82;
        sub_1AF0D83B4(2, &v91);
        v83 = v91;
        v84 = sub_1AFDFCEC8();
        v85 = CFXGPUDeviceCreateSamplerWithLabel(v54, v83, v84);

        *(v5 + 480) = v85;
        sub_1AF0D83B4(1, &v91);
        sub_1AF0D878C(3, &v91);
        sub_1AF0D8784(3, &v91);
        sub_1AF0D8794(3, &v91);
        v86 = v91;
        v87 = sub_1AFDFCEC8();
        v88 = CFXGPUDeviceCreateSamplerWithLabel(v54, v86, v87);

        *(v5 + 512) = v88;
        *(*(v5 + 200) + 16) = v5;
        swift_weakAssign();
        swift_weakAssign();

        sub_1AF0D8E28();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return v5;
      }
    }

    else
    {
      v42 = a3;
      if ((*(a3 + 1) & 1) == 0)
      {
        goto LABEL_30;
      }

      v41 = 0;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    if (Strong)
    {

      if (v41)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v47 = [objc_allocWithZone(VFXMTLREContext) init];
      v48 = *(v5 + 56);
      *(v5 + 56) = v47;

      if (v41)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    *(v5 + 112) = _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v21);
    v46 = sub_1AF0D5E20(v21);
    goto LABEL_31;
  }

  swift_unknownObjectRelease();
  sub_1AF70D13C(a3);
  swift_unknownObjectUnownedDestroy();

  v31 = *(v5 + 656);
  v98 = *(v5 + 640);
  v99 = v31;
  v100[0] = *(v5 + 672);
  *(v100 + 9) = *(v5 + 681);
  v32 = *(v5 + 592);
  v94 = *(v5 + 576);
  v95 = v32;
  v33 = *(v5 + 624);
  v96 = *(v5 + 608);
  v97 = v33;
  v34 = *(v5 + 560);
  v92 = *(v5 + 544);
  v93 = v34;
  sub_1AF70D3FC(&v92, &unk_1ED730830, &type metadata for Renderer.CurrentRenderContext, MEMORY[0x1E69E6720], sub_1AF0D96E0);
  swift_unknownObjectRelease();

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1AF70AEFC()
{
  MEMORY[0x1B271DEA0](*(v0 + 88), -1, -1);

  swift_unknownObjectUnownedDestroy();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 656);
  v6[6] = *(v0 + 640);
  v6[7] = v1;
  v7[0] = *(v0 + 672);
  *(v7 + 9) = *(v0 + 681);
  v2 = *(v0 + 592);
  v6[2] = *(v0 + 576);
  v6[3] = v2;
  v3 = *(v0 + 624);
  v6[4] = *(v0 + 608);
  v6[5] = v3;
  v4 = *(v0 + 560);
  v6[0] = *(v0 + 544);
  v6[1] = v4;
  sub_1AF70D3FC(v6, &unk_1ED730830, &type metadata for Renderer.CurrentRenderContext, MEMORY[0x1E69E6720], sub_1AF0D96E0);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1AF70B0FC()
{
  sub_1AF70AEFC();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF70B130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v3 + 744);
  v11 = a3 | (v9 << 32);
  if (*(v10 + 16))
  {
    v12 = sub_1AF449D3C(a3 | (v9 << 32));
    if (v13)
    {
      v14 = (*(v10 + 56) + 24 * v12);
      if (*v14 >= a1)
      {
        BufferWithBytes = v14[1];
        swift_unknownObjectRetain();
        return BufferWithBytes;
      }
    }
  }

  v15 = a1 - 1 + a2;
  v16 = v15 / a2;
  if (a3 <= 0)
  {
    v17 = v15 / a2;
  }

  else
  {
    v17 = a3;
  }

  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (v18 < 1)
  {
    v19 = 2 * a1;
    if (2 * a1 < 0x10000)
    {
LABEL_18:
      if (v19 < 1)
      {
        v20 = MEMORY[0x1E69E7CC0];
        if (!v19)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v20 = sub_1AFDFD488();
        *(v20 + 16) = v19;
      }

      bzero((v20 + 32), 2 * v19);
LABEL_30:
      if (a1)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = v20 + 32;
        do
        {
          v40 = 2 * (v34 % (v16 * v9) + v37 / v16);
          if (v36)
          {
            v41 = (v38 + 2 * v35);
            *v41 = *(v41 - 1);
            v41[1] = v40;
            v35 += 2;
          }

          ++v37;
          v39 = (v38 + 2 * v35);
          *v39 = v40;
          v39[1] = v40 | 1;
          v35 += 2;
          v36 = v37 % v18 == 0;
          v34 += v9;
        }

        while (a1 != v37);
      }

      BufferWithBytes = CFXGPUDeviceCreateBufferWithBytes(*(v4 + 16), (v20 + 32), (2 * v19), 0);

      v32 = 2;
      if (!BufferWithBytes)
      {
        return BufferWithBytes;
      }

LABEL_27:
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v4 + 744);
      *(v4 + 744) = 0x8000000000000000;
      sub_1AF8567D0(a1, BufferWithBytes, v32, v11, isUniquelyReferenced_nonNull_native);
      *(v4 + 744) = v43;
      return BufferWithBytes;
    }
  }

  else
  {
    v19 = 2 * ((a1 - 1 + v18) / v18 + a1) - 2;
    if (v19 < 0x10000)
    {
      goto LABEL_18;
    }
  }

  v21 = sub_1AFDFD488();
  *(v21 + 16) = v19;
  v22 = (v21 + 32);
  v23 = (4 * v19);
  bzero((v21 + 32), v23);
  if (a1)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      v29 = 2 * (v24 % (v16 * v9) + v27 / v16);
      if (v26)
      {
        v30 = &v22[4 * v25];
        *v30 = *(v30 - 1);
        *(v30 + 1) = v29;
        v25 += 2;
      }

      ++v27;
      v28 = &v22[4 * v25];
      *v28 = v29;
      *(v28 + 1) = v29 | 1;
      v25 += 2;
      v26 = v27 % v18 == 0;
      v24 += v9;
    }

    while (a1 != v27);
  }

  BufferWithBytes = CFXGPUDeviceCreateBufferWithBytes(*(v4 + 16), v22, v23, 0);

  v32 = 4;
  if (BufferWithBytes)
  {
    goto LABEL_27;
  }

  return BufferWithBytes;
}

uint64_t sub_1AF70B434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v2 + 752);
  if (*(v6 + 16))
  {
    v7 = sub_1AF41A8F8(a1);
    if (v8)
    {
      v9 = *(v6 + 56) + 40 * v7;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      result = swift_unknownObjectRetain();
LABEL_6:
      *a2 = v11;
      *(a2 + 8) = v10;
      *(a2 + 16) = v12;
      *(a2 + 24) = v13;
      *(a2 + 32) = v14;
      return result;
    }
  }

  v12 = *(a1 + 16);
  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(*(v3 + 16), v12, 32);
  if (BufferWithLength)
  {
    v11 = BufferWithLength;
    v17 = sub_1AFDFCEC8();
    [v11 setLabel_];

    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    v12 = v12;
    v22 = v11;
    v23 = 0;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    swift_unknownObjectRetain();
    sub_1AF718F24(a1, v21);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = *(v3 + 752);
    *(v3 + 752) = 0x8000000000000000;
    sub_1AF856930(&v22, a1, isUniquelyReferenced_nonNull_native);
    sub_1AF718F80(a1);
    *(v3 + 752) = v21[0];
    result = swift_unknownObjectRelease();
    v10 = 0;
    goto LABEL_6;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v23 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
  MEMORY[0x1B2718AE0](4271950, 0xE300000000000000);
  MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
  v19 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v19);

  MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
  v21[0] = 32;
  type metadata accessor for MTLResourceOptions(0);
  sub_1AFDFE458();
  v20 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v22 = 0;
  sub_1AF0D4F18(v20, &v22, 0, 0xE000000000000000);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

_DWORD *sub_1AF70B7FC()
{
  type metadata accessor for CommandBufferTracker();
  v0 = swift_allocObject();
  result = swift_slowAlloc();
  *result = 0;
  *(v0 + 16) = "unscheduledCommandBuffersLock";
  *(v0 + 24) = 29;
  *(v0 + 32) = 2;
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + 40) = result;
  *(v0 + 48) = v2;
  qword_1ED73B850 = v0;
  return result;
}

uint64_t sub_1AF70B868()
{
  MEMORY[0x1B271DEA0](*(v0 + 40), -1, -1);

  return swift_deallocClassInstance();
}

void sub_1AF70B8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(*(a2 + 40));
  sub_1AF8FC530(a3);
  swift_unknownObjectRelease();
  v5 = *(a2 + 40);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_1AF70B908()
{
  MEMORY[0x1B271DEA0](*(v0 + 56), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t CFXCoreRendererCreateOptions.init(rawValue:)(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 2u) << 8);
}

unsigned __int8 *sub_1AF70B980@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 2;
  if (v2 > 2)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

id sub_1AF70B99C(void *a1, void *a2, char a3)
{
  v5 = a1;
  swift_unknownObjectRetain();
  v6 = sub_1AF70BA0C(v5, a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1AF70BA0C(void *a1, void *a2, char a3)
{
  v28[0] = 1;
  v16[0] = 1;
  v36 = 0;
  v37 = 0;
  *(&v38 + 3) = 0;
  BYTE11(v38) = 1;
  *(&v39 + 3) = 0;
  BYTE11(v39) = 1;
  *(&v40 + 3) = 0;
  *(&v40 + 11) = 257;
  *&v41[3] = 260;
  v41[11] = 0;
  v42 = 0;
  *(v27 + 15) = *&v41[15];
  v26 = v40;
  v27[0] = *v41;
  v24 = v38;
  v25 = v39;
  switch(a3)
  {
    case 2:
      v9 = 0;
      v11 = 0;
      v10 = 0;
      v7 = 0;
LABEL_10:
      v12 = sub_1AF13099C(a1);
      v32 = v25;
      v33 = v26;
      *v34 = v27[0];
      v28[0] = v9;
      v28[1] = v11;
      v29 = 0;
      v30 = v10;
      *&v34[15] = *(v27 + 15);
      v31 = v24;
      v35 = v7;
      type metadata accessor for Renderer();
      swift_allocObject();
      sub_1AF70D104(v28, v16);
      v13 = a1;
      swift_unknownObjectRetain();
      v14 = sub_1AF70A2F4(v12, a2, v28, a1);
      swift_unknownObjectUnownedAssign();
      v20 = v25;
      v21 = v26;
      *v22 = v27[0];
      v16[0] = v9;
      v16[1] = v11;
      v17 = 0;
      v18 = v10;
      *&v22[15] = *(v27 + 15);
      v19 = v24;
      v23 = v7;
      sub_1AF70D13C(v16);
      return v14;
    case 1:
      v5 = qword_1EB63E310;
      sub_1AF0D96E0(0, &unk_1ED730B60, &type metadata for RenderVariantDescriptor, MEMORY[0x1E69E6F90]);
      v6 = swift_allocObject();
      v7 = v6;
      *(v6 + 16) = xmmword_1AFE4C5F0;
      *(v6 + 32) = 1025;
      *(v6 + 40) = 115;
      *(v6 + 48) = 0u;
      *(v6 + 64) = 0u;
      *(v6 + 80) = 0u;
      *(v6 + 96) = 0;
      *(v6 + 104) = xmmword_1AFE72A70;
      *(v6 + 120) = 4;
      *(v6 + 128) = 3073;
      *(v6 + 136) = 115;
      *(v6 + 144) = 0u;
      *(v6 + 160) = 0u;
      *(v6 + 176) = 0u;
      *(v6 + 192) = 0;
      *(v6 + 200) = xmmword_1AFE72A70;
      *(v6 + 216) = 4;
      if (v5 >= 0x2540BE40ALL)
      {
        v8 = 5121;
      }

      else
      {
        v8 = 1029;
      }

      *(v6 + 224) = v8;
      *(v6 + 232) = 115;
      *(v6 + 256) = 0uLL;
      *(v6 + 272) = 0uLL;
      *(v6 + 240) = 0uLL;
      *(v6 + 288) = 0;
      *(v6 + 296) = 252;
      *(v6 + 304) = 253;
      *(v6 + 312) = 4;
      *(v6 + 320) = 1089;
      *(v6 + 328) = 81;
      *(v6 + 336) = 0uLL;
      *(v6 + 352) = 0uLL;
      *(v6 + 368) = 0uLL;
      *(v6 + 384) = 0;
      *(v6 + 392) = 252;
      *(v6 + 400) = 253;
      v9 = 1;
      *(v6 + 408) = 1;
      *(v6 + 416) = 3137;
      *(v6 + 424) = 81;
      *(v6 + 448) = 0uLL;
      *(v6 + 464) = 0uLL;
      *(v6 + 432) = 0uLL;
      *(v6 + 480) = 0;
      *(v6 + 488) = 252;
      *(v6 + 496) = 253;
      *(v6 + 504) = 1;
      *(v6 + 512) = v8 | 0x40;
      *(v6 + 520) = 81;
      *(v6 + 528) = 0uLL;
      *(v6 + 544) = 0uLL;
      *(v6 + 560) = 0uLL;
      *(v6 + 576) = 0;
      *(v6 + 584) = 252;
      *(v6 + 592) = 253;
      *(v6 + 600) = 1;
      *(v6 + 608) = 1025;
      *(v6 + 616) = 81;
      *(v6 + 672) = 0;
      *(v6 + 640) = 0uLL;
      *(v6 + 656) = 0uLL;
      *(v6 + 624) = 0uLL;
      *(v6 + 680) = 252;
      *(v6 + 688) = 253;
      *(v6 + 696) = 4;
      *(v6 + 704) = 3073;
      *(v6 + 712) = 81;
      *(v6 + 768) = 0;
      *(v6 + 736) = 0uLL;
      *(v6 + 752) = 0uLL;
      *(v6 + 720) = 0uLL;
      *(v6 + 776) = 252;
      *(v6 + 784) = 253;
      *(v6 + 792) = 4;
      sub_1AF70D13C(&v36);
      v10 = 0;
      v11 = 1;
      goto LABEL_10;
    case 0:
      sub_1AF70D13C(&v36);
      v11 = 0;
      v9 = 1;
      v10 = 1;
      v7 = &unk_1F2503328;
      goto LABEL_10;
  }

  result = sub_1AFDFF138();
  __break(1u);
  return result;
}

uint64_t sub_1AF70BDB8(uint64_t a1, int a2)
{
  v3 = 232;
  if (a2)
  {
    v3 = 248;
  }

  v4 = *(a1 + v3);
  swift_unknownObjectRetain();
  CFXBufferAllocatorPerFrameNextFrame(v4);
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = v5;
    sub_1AFDEB254(v6);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF70BE24()
{
  swift_unknownObjectRetain();
  sub_1AF70BE60();

  return swift_unknownObjectRelease();
}

void sub_1AF70BE60()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v0 = sub_1AF12DDCC(Strong);
  if (v0)
  {
    v107 = v0;
    v106 = sub_1AF1CF8AC(v0);
    v1 = *(sub_1AF0FB884(v106) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
    v2 = qword_1ED72D720;

    if (v2 != -1)
    {
      swift_once();
    }

    v150 = qword_1ED73B840;
    v151 = 0;
    v152 = 2;
    v153 = 0;
    v154 = 2;
    v155 = 0;
    sub_1AF702CE4(1, &type metadata for EmitterDescription, &off_1F2563548, v135);
    v146[0] = v135[0];
    v146[1] = v135[1];
    v147 = v136;
    sub_1AF6B06C0(v1, v146, 0x200000000, v137);
    v111 = *v137;
    if (!*v137)
    {

      sub_1AF70D374(v135);
      swift_unknownObjectRelease();

      return;
    }

    v110 = *&v137[40];
    v3 = *(&v138 + 1);
    v116 = *(&v139 + 1);
    v141 = *&v137[8];
    v142 = *&v137[24];
    if (v140 <= 0)
    {
      v131 = *&v137[32];
      v132 = v138;
      v133 = v139;
      v134 = v140;
      v129 = *v137;
      v130 = *&v137[16];
      sub_1AF5DD298(&v129, v128);

      sub_1AF70D374(v135);

      v105 = MEMORY[0x1E69E6720];
      sub_1AF70D3FC(v137, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF0D96E0);
      sub_1AF70D3FC(v137, &qword_1ED725EA0, &type metadata for QueryResult, v105, sub_1AF0D96E0);
      swift_unknownObjectRelease();
      return;
    }

    if (*(&v138 + 1))
    {
      v115 = *(*(&v139 + 1) + 32);
      v114 = *(v139 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v4 = (v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v127 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
      v131 = *&v137[32];
      v132 = v138;
      v133 = v139;
      v134 = v140;
      v129 = *v137;
      v130 = *&v137[16];
      sub_1AF5DD298(&v129, v128);
      v5 = 0;
      v123 = v4;
      v124 = v1;
      v109 = v3;
      do
      {
        v113 = v5;
        v6 = (v110 + 48 * v5);
        v7 = *v6;
        v121 = v6[1];
        v9 = *(v6 + 2);
        v8 = *(v6 + 3);
        v10 = *(v6 + 5);
        v117 = *(v6 + 4);
        if (v114)
        {
          v11 = *(v10 + 376);

          os_unfair_lock_lock(v11);
          os_unfair_lock_lock(*(v10 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v115);
        v12 = *(v116 + 64);
        v148[0] = *(v116 + 48);
        v148[1] = v12;
        v149 = *(v116 + 80);
        v13 = *(*(*(*(v10 + 40) + 16) + 32) + 16) + 1;
        *(v116 + 48) = ecs_stack_allocator_allocate(*(v116 + 32), 48 * v13, 8);
        *(v116 + 56) = v13;
        *(v116 + 72) = 0;
        *(v116 + 80) = 0;
        *(v116 + 64) = 0;
        v14 = v117;
        v15 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v9, v8, v117, v116);
        v112 = v10;
        if (v9)
        {
          if (v117)
          {
            v16 = 0;
            v119 = v15 + 24;
            do
            {
              v17 = *(v119 + 104 * v16);
              v18 = *(v17 + 16);
              if (v18)
              {
                v19 = v17 + 32;

                for (i = 0; i != v18; ++i)
                {
                  v21 = (v19 + 8 * i);
                  v23 = *v21;
                  v22 = v21[1];
                  v24 = v23 == -1 && v22 == 0;
                  if (!v24 && (v23 & 0x80000000) == 0 && v4[1] > v23)
                  {
                    v25 = (*v4 + 12 * v23);
                    if (v22 == -1 || v25[2] == v22)
                    {
                      v27 = *(v25 + 2);
                      v28 = *(*(v1 + 144) + 8 * *v25 + 32);
                      v29 = thread_worker_index();
                      if (*v29 == -1)
                      {
                        v30 = *(v1 + v127);
                      }

                      else
                      {
                        v30 = (*(v1 + v127) + 8 * *v29 + 8);
                      }

                      v31 = *v30;
                      v32 = *(v28 + 192);
                      if (v32)
                      {
                        v33 = *(v28 + 208);
                        *(v32 + 8 * (v27 >> 6)) |= 1 << v27;
                        *(v33 + 8 * (v27 >> 6)) &= ~(1 << v27);
                      }

                      if (*(*(v28 + 40) + 213) == 1)
                      {
                        v34 = *(v28 + 48);
                        v35 = (v34 + 32);
                        v36 = *(v34 + 16) + 1;
                        v125 = v31;
                        while (--v36)
                        {
                          v37 = v35 + 5;
                          v38 = *v35;
                          v35 += 5;
                          if (v38 == &type metadata for PropagateDirtiness)
                          {
                            v39 = *(v37 - 2);
                            goto LABEL_43;
                          }
                        }

                        v39 = 0;
LABEL_43:
                        v40 = *(v28 + 128);
                        v41 = *(v28 + 184);

                        if (v41)
                        {
                          goto LABEL_112;
                        }

                        v43 = *(*(v28 + 168) + 4 * v27);
                        v44 = (v40 + v39 + 8 * v27);
                        v45 = *(*(v42 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v43 + 8);

                        v47 = *v44;
                        v46 = v44[1];
                        if (v47 == -1 && v46 == 0)
                        {
                          v4 = v123;
                          v1 = v124;
                        }

                        else
                        {
                          v122 = v45;
                          v49 = *(v125 + 88);
                          sub_1AFDFF288();
                          sub_1AFDFF2C8();
                          sub_1AFDFF2C8();
                          v50 = sub_1AFDFF2F8();
                          v51 = v49 + 56;
                          v52 = -1 << *(v49 + 32);
                          v53 = v50 & ~v52;
                          if ((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
                          {
                            v54 = ~v52;
                            v55 = *(v49 + 48);
                            v1 = v124;
                            while (1)
                            {
                              v56 = v55 + 16 * v53;
                              v58 = *(v56 + 8);
                              v57 = *(v56 + 12);
                              if (v58 == v47 && v57 == v46)
                              {
                                break;
                              }

                              v53 = (v53 + 1) & v54;
                              if (((*(v51 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
                              {
                                goto LABEL_55;
                              }
                            }
                          }

                          else
                          {
LABEL_55:
                            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                            v128[0] = *(v125 + 88);
                            sub_1AF711640(v43 | (v122 << 32), v47 | (v46 << 32), v53, isUniquelyReferenced_nonNull_native);
                            *(v125 + 88) = v128[0];
                            v1 = v124;
                          }

                          v4 = v123;
                        }
                      }
                    }
                  }
                }

                v14 = v117;
              }

              ++v16;
            }

            while (v16 != v14);
          }
        }

        else if (v7 != v121)
        {
          v118 = v15 + 24;
          do
          {
            v61 = *(v118 + 104 * v7);
            v62 = *(v61 + 16);
            if (v62)
            {
              v126 = v7;
              v63 = v61 + 32;

              v64 = 0;
              while (1)
              {
                v66 = (v63 + 8 * v64);
                v68 = *v66;
                v67 = v66[1];
                v69 = v68 == -1 && v67 == 0;
                if (!v69 && (v68 & 0x80000000) == 0 && v4[1] > v68)
                {
                  v70 = (*v4 + 12 * v68);
                  if (v67 == -1 || v70[2] == v67)
                  {
                    v72 = *(v70 + 2);
                    v73 = *(*(v1 + 144) + 8 * *v70 + 32);
                    v74 = thread_worker_index();
                    if (*v74 == -1)
                    {
                      v75 = *(v1 + v127);
                    }

                    else
                    {
                      v75 = (*(v1 + v127) + 8 * *v74 + 8);
                    }

                    v76 = *v75;
                    v77 = *(v73 + 192);
                    if (v77)
                    {
                      v78 = *(v73 + 208);
                      *(v77 + 8 * (v72 >> 6)) |= 1 << v72;
                      *(v78 + 8 * (v72 >> 6)) &= ~(1 << v72);
                    }

                    if (*(*(v73 + 40) + 213) == 1)
                    {
                      v79 = *(v73 + 48);
                      v80 = (v79 + 32);
                      v81 = *(v79 + 16) + 1;
                      while (--v81)
                      {
                        v82 = v80 + 5;
                        v83 = *v80;
                        v80 += 5;
                        if (v83 == &type metadata for PropagateDirtiness)
                        {
                          v84 = *(v82 - 2);
                          goto LABEL_91;
                        }
                      }

                      v84 = 0;
LABEL_91:
                      v85 = *(v73 + 128);
                      v86 = *(v73 + 184);

                      if (v86)
                      {
LABEL_112:
                        sub_1AFDFE518();
                        __break(1u);
                        return;
                      }

                      v88 = *(*(v73 + 168) + 4 * v72);
                      v89 = (v85 + v84 + 8 * v72);
                      v90 = *(*(v87 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v88 + 8);

                      v92 = *v89;
                      v91 = v89[1];
                      if (v92 == -1 && v91 == 0)
                      {
                        v4 = v123;
                        v1 = v124;
                      }

                      else
                      {
                        v120 = v90;
                        v94 = *(v76 + 88);
                        sub_1AFDFF288();
                        sub_1AFDFF2C8();
                        sub_1AFDFF2C8();
                        v95 = sub_1AFDFF2F8();
                        v96 = v94 + 56;
                        v97 = -1 << *(v94 + 32);
                        v98 = v95 & ~v97;
                        if ((*(v94 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98))
                        {
                          v99 = ~v97;
                          v100 = *(v94 + 48);
                          v1 = v124;
                          while (1)
                          {
                            v101 = v100 + 16 * v98;
                            v103 = *(v101 + 8);
                            v102 = *(v101 + 12);
                            if (v103 == v92 && v102 == v91)
                            {
                              break;
                            }

                            v98 = (v98 + 1) & v99;
                            if (((*(v96 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
                            {
                              goto LABEL_66;
                            }
                          }
                        }

                        else
                        {
                          v1 = v124;
LABEL_66:
                          v65 = swift_isUniquelyReferenced_nonNull_native();
                          v128[0] = *(v76 + 88);
                          sub_1AF711640(v88 | (v120 << 32), v92 | (v91 << 32), v98, v65);
                          *(v76 + 88) = v128[0];
                        }

                        v4 = v123;
                      }
                    }
                  }
                }

                if (++v64 == v62)
                {

                  v7 = v126;
                  break;
                }
              }
            }

            ++v7;
          }

          while (v7 != v121);
        }

        v143 = v111;
        v144 = v141;
        v145 = v142;
        sub_1AF630994(v116, &v143, v148);
        sub_1AF62D29C(v112);
        ecs_stack_allocator_pop_snapshot(v115);
        if (v114)
        {
          os_unfair_lock_unlock(*(v112 + 344));
          os_unfair_lock_unlock(*(v112 + 376));
        }

        v5 = v113 + 1;
      }

      while (v113 + 1 != v109);
    }

    else
    {
      sub_1AF5D15C0(v137, &v129);
    }

    sub_1AF70D374(v135);
    swift_unknownObjectRelease();
    sub_1AF70D3FC(v137, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF0D96E0);
    sub_1AF70D3FC(v137, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF0D96E0);
    return;
  }
}

id sub_1AF70C954(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v6 = sub_1AF70C9BC(a1, a2, a3);
  swift_unknownObjectRelease();

  return v6;
}

id sub_1AF70C9BC(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  sub_1AF4674F0(8, 4, 1, &v24);
  v6 = v24;
  v5 = v25;
  v7 = v26;
  v8 = objc_allocWithZone(MEMORY[0x1E6974118]);
  v24 = v6;
  v25 = v5;
  v26 = v7;
  v9 = [v8 initWithSampleCount_];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v11 = [v9 vertical];
      sub_1AFDFDBE8();
    }
  }

  if (v6)
  {
    for (j = 0; j != v6; ++j)
    {
      v13 = [v9 horizontal];
      sub_1AFDFDBE8();
    }
  }

  v14 = [v9 horizontal];
  sub_1AFDFDBE8();

  v15 = [v9 horizontal];
  sub_1AFDFDBE8();

  v16 = [v9 vertical];
  sub_1AFDFDBE8();

  v17 = [v9 vertical];
  sub_1AFDFDBE8();

  sub_1AF0D4478(0, &qword_1EB63D988);
  sub_1AF4674F0(((a1 * v6) / (v6 - 1)), ((a2 * v5) / (v5 - 1)), 0, &v24);
  v18 = v9;
  v19 = sub_1AFDFDBF8();
  v20 = [v23 newRasterizationRateMapWithDescriptor_];

  return v20;
}

uint64_t sub_1AF70CC44(void *a1)
{
  v2 = qword_1ED72E180;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  sub_1AF70A1A8(a1);

  return swift_unknownObjectRelease();
}

void *sub_1AF70CCBC(void *a1, uint64_t a2)
{
  sub_1AF89B138(a2, v28);
  v4 = [v2 engineContext];
  v8 = sub_1AF130C80(v4, v5, v6, v7);

  v9 = sub_1AF730058(v28, 1);
  v11 = v10;
  v13 = v12;

  if (!v13)
  {
    if (!v11)
    {
      swift_unknownObjectRetain();
      sub_1AF602304(v28);
      sub_1AF6022A8(v9, 0, 0);
      swift_unknownObjectRelease();
      return v9;
    }

    swift_unknownObjectRetain();
    v26 = v11;
    v15 = [v26 fragmentBindings];
    sub_1AF7198B0();
    v16 = sub_1AFDFD418();

    if (v16 >> 62)
    {
      v17 = sub_1AFDFE108();
      if (v17)
      {
LABEL_11:
        for (i = 0; i != v17; ++i)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1B2719C70](i, v16);
          }

          else
          {
            v19 = *(v16 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v19 index] == 2)
          {
            v20 = swift_dynamicCastObjCProtocolConditional();
            if (v20)
            {
              v21 = v20;
              v22 = v8[2];
              swift_unknownObjectRetain();
              v23 = [CFXGPUDeviceGetMTLDevice(v22) newArgumentEncoderWithBufferBinding_];
              swift_unknownObjectRelease();
              swift_unknownObjectRetain();
              [a1 setArgumentEncoder_];
              swift_unknownObjectRelease_n();
              swift_unknownObjectRelease();
            }
          }

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_11;
      }
    }

    sub_1AF602304(v28);

    swift_unknownObjectRelease();
    sub_1AF6022A8(v9, v11, 0);

    return v9;
  }

  if (v13 == 1)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v27[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF31AE0);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v14 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v24 = v14;
      swift_once();
      v14 = v24;
    }

    v27[0] = 0;
    sub_1AF0D4F18(v14, v27, 0, 0xE000000000000000);
    sub_1AF602304(v28);

    sub_1AF6022A8(v9, v11, 1);
  }

  else
  {
    sub_1AF602304(v28);
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_1AF70D168(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1AFDFF278();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AF71150C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}