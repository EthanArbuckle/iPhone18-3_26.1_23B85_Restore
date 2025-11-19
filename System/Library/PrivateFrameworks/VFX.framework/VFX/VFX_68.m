void sub_1AF668144(uint64_t a1, void *a2, char *a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;
    v10 = a3;
    v11 = v9;
    v12 = v10;

    v13 = pthread_self();
    if (pthread_equal(v8, v13))
    {
      sub_1AF65E3F4();
      sub_1AFC8BF5C(*&v12[OBJC_IVAR____TtC3VFX8VFXScene_entityManager]);
      sub_1AFCDD50C(v11);
      sub_1AF66DB74(a1);
    }

    else
    {
      v22 = v11;
      v23 = v12;
      sub_1AF6CD9B8(v7, v22, v23);
    }

    goto LABEL_17;
  }

  v30 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v14)
  {
    v15 = a2;
    v16 = a3;
    v17 = v15;
    v18 = v16;
    pthread_mutex_lock(v14);
    if (*(a1 + v6))
    {
LABEL_6:
      v19 = a2;
      v20 = a3;
      sub_1AF668144(a1, v19, v20);
      v21 = *(a1 + v30);
      if (v21)
      {
        pthread_mutex_unlock(v21);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v24 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v25 = a2;
    v26 = a3;
    v27 = v25;
    v28 = v26;
    [v24 lock];
    if (*(a1 + v6))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AFC8BF5C(*&a3[OBJC_IVAR____TtC3VFX8VFXScene_entityManager]);
  sub_1AFCDD50C(a2);
  sub_1AF66DB74(a1);
  v29 = *(a1 + v30);
  if (v29)
  {
    pthread_mutex_unlock(v29);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

void sub_1AF6683BC(uint64_t a1, char *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v7)
  {
    v48 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v15)
    {
      v16 = a2;
      v17 = a3;
      v18 = v16;
      v19 = v17;
      pthread_mutex_lock(v15);
      if (*(a1 + v6))
      {
LABEL_8:
        v20 = a2;
        v21 = a3;
        sub_1AF6683BC(a1, v20, v21);
        v22 = *(a1 + v48);
        if (v22)
        {
          pthread_mutex_unlock(v22);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

LABEL_42:
        goto LABEL_43;
      }
    }

    else
    {
      v25 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v26 = a2;
      v27 = a3;
      v28 = v26;
      v29 = v27;
      [v25 lock];
      if (*(a1 + v6))
      {
        goto LABEL_8;
      }
    }

    sub_1AF65E3F4();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      if (*&a2[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v39 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v47 = v39;
          swift_once();
          v39 = v47;
        }

        v50 = 0;
        sub_1AF0D4F18(v39, &v50, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    v40 = Strong;

    v20 = a2;
    v41 = sub_1AF670BD0(v40, v20);
    v43 = v42;

    if (v43)
    {
      sub_1AF8267DC(0, v41, v43);
      [v20 removeFromScene];
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v44 = sub_1AFDFDA08();
      v50 = 1;
      sub_1AF75A4B4(v44, 0xD000000000000021, 0x80000001AFF2E760, &v50);
    }

    sub_1AF66DB74(a1);
    v45 = *(a1 + v48);
    if (v45)
    {
      pthread_mutex_unlock(v45);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_42;
  }

  v8 = *(v7 + 144);
  v9 = a2;
  v10 = a3;
  v11 = v9;
  v12 = v10;

  v13 = pthread_self();
  if (pthread_equal(v8, v13))
  {
    sub_1AF65E3F4();
    v14 = swift_weakLoadStrong();
    if (!v14)
    {
      if (*&v11[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v31 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v46 = v31;
          swift_once();
          v31 = v46;
        }

        v50 = 0;
        sub_1AF0D4F18(v31, &v50, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        v14 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    v49 = a3;
    v32 = v12;
    v33 = v14;

    v34 = v11;
    v35 = sub_1AF670BD0(v33, v34);
    v37 = v36;

    if (v37)
    {
      sub_1AF8267DC(0, v35, v37);
      [v34 removeFromScene];
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v38 = sub_1AFDFDA08();
      v50 = 1;
      sub_1AF75A4B4(v38, 0xD000000000000021, 0x80000001AFF2E760, &v50);
    }

    sub_1AF66DB74(a1);

    a3 = v49;
  }

  else
  {
    v23 = v11;
    v24 = v12;
    sub_1AF6CDAA8(v7, v23, v24);
  }

LABEL_43:
}

void sub_1AF6689CC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;
    swift_unknownObjectRetain_n();
    v10 = v9;

    v11 = pthread_self();
    if (pthread_equal(v8, v11))
    {
      sub_1AF65E3F4();
      sub_1AF6F7F40(a3);
      sub_1AF66DB74(a1);
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = v10;
      swift_unknownObjectRetain();
      sub_1AF6CDD60(v7, v18, a3);
      swift_unknownObjectRelease();
    }

    goto LABEL_17;
  }

  v12 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v13)
  {
    v14 = a2;
    swift_unknownObjectRetain_n();
    v15 = v14;
    pthread_mutex_lock(v13);
    if (*(a1 + v6))
    {
LABEL_6:
      v16 = a2;
      swift_unknownObjectRetain();
      sub_1AF6689CC(a1, v16, a3);
      v17 = *(a1 + v12);
      if (v17)
      {
        pthread_mutex_unlock(v17);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      swift_unknownObjectRelease();

      goto LABEL_17;
    }
  }

  else
  {
    v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v20 = a2;
    swift_unknownObjectRetain_n();
    v21 = v20;
    [v19 lock];
    if (*(a1 + v6))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AF6F7F40(a3);
  sub_1AF66DB74(a1);
  v22 = *(a1 + v12);
  if (v22)
  {
    pthread_mutex_unlock(v22);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_unknownObjectRelease();

LABEL_17:
  swift_unknownObjectRelease_n();
}

void sub_1AF668C28(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v13 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v14)
  {
    v15 = *(v14 + 144);
    v16 = a2;
    swift_unknownObjectRetain_n();
    v17 = v16;

    v18 = pthread_self();
    if (pthread_equal(v15, v18))
    {
      sub_1AF65E3F4();
      v19 = *&v17[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
      v20 = objc_autoreleasePoolPush();
      v21 = v19 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock;
      os_unfair_lock_lock(*(v19 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock + 24));
      if (*(v19 + OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground))
      {
        os_unfair_lock_unlock(*(v21 + 24));
      }

      else
      {
        v35 = *(v19 + OBJC_IVAR____TtC3VFX13EntityManager_sceneInBackground);
        os_unfair_lock_unlock(*(v21 + 24));
        if ((v35 & 1) == 0)
        {
          v36 = v19 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
          v37 = a6;
          *(v19 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64) = v37;
          sub_1AF627D68(a6);
          v38 = *(v36 + 72);
          if (v38 >= 8)
          {
            v38 = 8;
          }

          *(v36 + 72) = v38;
          *(v36 + 48) = a5;
          *(v36 + 8) = a3;
          v39 = OBJC_IVAR____TtC3VFX13EntityManager_scheduler;

          sub_1AF6D8818();

          sub_1AF6F71F4();
          sub_1AF65F2F4(a4);
          v40 = *(v19 + v39);
          if (*(v40 + 16))
          {
            v41 = *(v40 + 176);
            *(v40 + 176) = *(v40 + 192);
            *(v40 + 192) = v41;
          }
        }
      }

      objc_autoreleasePoolPop(v20);
      sub_1AF66DB74(a1);
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = *(v14 + 64);
      v29 = v17;
      swift_unknownObjectRetain();
      pthread_mutex_lock(v28);
      v30 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      v32 = *&v29[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
      v33 = objc_autoreleasePoolPush();
      v34 = v32 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock;
      os_unfair_lock_lock(*(v32 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock + 24));
      if (*(v32 + OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground))
      {
        os_unfair_lock_unlock(*(v34 + 24));
      }

      else
      {
        v48 = *(v32 + OBJC_IVAR____TtC3VFX13EntityManager_sceneInBackground);
        os_unfair_lock_unlock(*(v34 + 24));
        if ((v48 & 1) == 0)
        {
          v49 = v32 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
          v50 = a6;
          *(v32 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64) = v50;
          sub_1AF627D68(a6);
          v51 = *(v49 + 72);
          if (v51 >= 8)
          {
            v51 = 8;
          }

          *(v49 + 72) = v51;
          *(v49 + 48) = a5;
          *(v49 + 8) = a3;
          v52 = OBJC_IVAR____TtC3VFX13EntityManager_scheduler;

          sub_1AF6D8818();

          sub_1AF6F71F4();
          sub_1AF65F2F4(a4);
          v53 = *(v32 + v52);
          if (*(v53 + 16))
          {
            v54 = *(v53 + 176);
            *(v53 + 176) = *(v53 + 192);
            *(v53 + 192) = v54;
          }
        }
      }

      objc_autoreleasePoolPop(v33);
      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v55 = v30(&runtime_thread_is_locked);
      --*v55;
      pthread_mutex_unlock(*(v14 + 64));

      swift_unknownObjectRelease_n();
    }

    goto LABEL_31;
  }

  v22 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v23 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v23)
  {
    v24 = a2;
    swift_unknownObjectRetain_n();
    v25 = v24;
    pthread_mutex_lock(v23);
    if (*(a1 + v13))
    {
      goto LABEL_7;
    }

LABEL_21:
    sub_1AF65E3F4();
    v45 = *&a2[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
    v46 = objc_autoreleasePoolPush();
    v47 = v45 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock;
    os_unfair_lock_lock(*(v45 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock + 24));
    if (*(v45 + OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground))
    {
      os_unfair_lock_unlock(*(v47 + 24));
    }

    else
    {
      v57 = *(v45 + OBJC_IVAR____TtC3VFX13EntityManager_sceneInBackground);
      os_unfair_lock_unlock(*(v47 + 24));
      if ((v57 & 1) == 0)
      {
        v58 = v45 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
        v59 = a6;
        *(v45 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64) = v59;
        sub_1AF627D68(a6);
        v60 = *(v58 + 72);
        if (v60 >= 8)
        {
          v60 = 8;
        }

        *(v58 + 72) = v60;
        *(v58 + 48) = a5;
        *(v58 + 8) = a3;
        v61 = OBJC_IVAR____TtC3VFX13EntityManager_scheduler;

        sub_1AF6D8818();

        sub_1AF6F71F4();
        sub_1AF65F2F4(a4);
        v62 = *(v45 + v61);
        if (*(v62 + 16))
        {
          v63 = *(v62 + 176);
          *(v62 + 176) = *(v62 + 192);
          *(v62 + 192) = v63;
        }
      }
    }

    objc_autoreleasePoolPop(v46);
    sub_1AF66DB74(a1);
    v64 = *(a1 + v22);
    if (v64)
    {
      pthread_mutex_unlock(v64);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    swift_unknownObjectRelease();

    goto LABEL_31;
  }

  v42 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  v43 = a2;
  swift_unknownObjectRetain_n();
  v44 = v43;
  [v42 lock];
  if (!*(a1 + v13))
  {
    goto LABEL_21;
  }

LABEL_7:
  v26 = a2;
  swift_unknownObjectRetain();
  sub_1AF668C28(a1, v26, a3, a4, a5, a6);
  if (!v7)
  {
    v56 = *(a1 + v22);
    if (v56)
    {
      pthread_mutex_unlock(v56);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    swift_unknownObjectRelease();

LABEL_31:
    swift_unknownObjectRelease_n();

    return;
  }

  v27 = *(a1 + v22);
  if (v27)
  {
    pthread_mutex_unlock(v27);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_unknownObjectRelease_n();
}

void sub_1AF669210(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v11)
  {
    v12 = *(v11 + 144);
    v13 = a2;
    swift_unknownObjectRetain_n();
    v14 = v13;

    v15 = pthread_self();
    if (pthread_equal(v12, v15))
    {
      sub_1AF65E3F4();
      sub_1AF6F7D18(a3, a4);
      sub_1AF66DB74(a1);
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = *(v11 + 64);
      v23 = v14;
      swift_unknownObjectRetain();
      pthread_mutex_lock(v22);
      v24 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      sub_1AF6F7D18(a3, a4);
      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v26 = v24(&runtime_thread_is_locked);
      --*v26;
      pthread_mutex_unlock(*(v11 + 64));

      swift_unknownObjectRelease_n();
    }

    goto LABEL_25;
  }

  v16 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v17)
  {
    v18 = a2;
    swift_unknownObjectRetain_n();
    v19 = v18;
    pthread_mutex_lock(v17);
    if (*(a1 + v10))
    {
      goto LABEL_6;
    }

LABEL_15:
    sub_1AF65E3F4();
    sub_1AF6F7D18(a3, a4);
    sub_1AF66DB74(a1);
    v30 = *(a1 + v16);
    if (v30)
    {
      pthread_mutex_unlock(v30);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    swift_unknownObjectRelease();

    goto LABEL_25;
  }

  v27 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  v28 = a2;
  swift_unknownObjectRetain_n();
  v29 = v28;
  [v27 lock];
  if (!*(a1 + v10))
  {
    goto LABEL_15;
  }

LABEL_6:
  v20 = a2;
  swift_unknownObjectRetain();
  sub_1AF669210(a1, v20, a3, a4);
  if (!v5)
  {
    v31 = *(a1 + v16);
    if (v31)
    {
      pthread_mutex_unlock(v31);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    swift_unknownObjectRelease();

LABEL_25:
    swift_unknownObjectRelease_n();

    return;
  }

  v21 = *(a1 + v16);
  if (v21)
  {
    pthread_mutex_unlock(v21);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_unknownObjectRelease_n();
}

void sub_1AF66955C(uint64_t a1, char *a2)
{
  v4 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v5 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v5)
  {
    v6 = *(v5 + 144);
    v7 = a2;

    v8 = pthread_self();
    if (pthread_equal(v6, v8))
    {
      sub_1AF65E3F4();
      v9 = *&v7[OBJC_IVAR____TtC3VFX8VFXScene_entityManager] + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
      v10 = type metadata accessor for ScriptingConfiguration();
      ++*(v9 + *(v10 + 36));
      sub_1AF66DB74(a1);
    }

    else
    {
      v16 = v7;
      sub_1AF6CDE48(v5, v16);
    }

    goto LABEL_17;
  }

  v11 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v12)
  {
    v13 = a2;
    pthread_mutex_lock(v12);
    if (*(a1 + v4))
    {
LABEL_6:
      v14 = a2;
      sub_1AF66955C(a1, v14);
      v15 = *(a1 + v11);
      if (v15)
      {
        pthread_mutex_unlock(v15);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v18 = a2;
    [v17 lock];
    if (*(a1 + v4))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  v19 = *&a2[OBJC_IVAR____TtC3VFX8VFXScene_entityManager] + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  v20 = type metadata accessor for ScriptingConfiguration();
  ++*(v19 + *(v20 + 36));
  sub_1AF66DB74(a1);
  v21 = *(a1 + v11);
  if (v21)
  {
    pthread_mutex_unlock(v21);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

uint64_t sub_1AF66977C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v11)
  {
    v12 = *(v11 + 144);
    v13 = a2;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v14 = v13;

    v15 = pthread_self();
    if (pthread_equal(v12, v15))
    {
      sub_1AF65E3F4();
      *&v14[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity] = sub_1AF822738(a4, a5);
      sub_1AF66DB74(a1);
    }

    else
    {
      v22 = *(v11 + 64);
      v23 = v14;

      pthread_mutex_lock(v22);
      v24 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      *&v23[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity] = sub_1AF822738(a4, a5);
      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v26 = v24(&runtime_thread_is_locked);
      --*v26;
      pthread_mutex_unlock(*(v11 + 64));
    }

    goto LABEL_14;
  }

  v16 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v17)
  {
    v18 = a2;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v19 = v18;
    pthread_mutex_lock(v17);
    if (*(a1 + v10))
    {
      goto LABEL_6;
    }

LABEL_17:
    sub_1AF65E3F4();
    *&a2[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity] = sub_1AF822738(a4, a5);
    sub_1AF66DB74(a1);
    v31 = *(a1 + v16);
    if (v31)
    {
      pthread_mutex_unlock(v31);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_14;
  }

  v28 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  v29 = a2;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v30 = v29;
  [v28 lock];
  if (!*(a1 + v10))
  {
    goto LABEL_17;
  }

LABEL_6:
  v20 = a2;

  sub_1AF66977C(a1, v20, a3, a4, a5);
  if (!v33)
  {
    v32 = *(a1 + v16);
    if (v32)
    {
      pthread_mutex_unlock(v32);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

LABEL_14:

    return swift_bridgeObjectRelease_n();
  }

  v21 = *(a1 + v16);
  if (v21)
  {
    pthread_mutex_unlock(v21);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return swift_bridgeObjectRelease_n();
}

void sub_1AF669B24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a6;
  v7 = v6;
  v13 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v14)
  {
    v15 = *(v14 + 144);
    swift_bridgeObjectRetain_n();
    v16 = a5;
    swift_retain_n();
    v17 = v16;

    v18 = pthread_self();
    if (pthread_equal(v15, v18))
    {
      v46 = a4;
      v19 = a3;
      sub_1AF65E3F4();
      v20 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v20)
      {
        v21 = *(v20 + 80);
        swift_unknownObjectWeakLoadStrong();
        v20 = *(v20 + 56);
      }

      else
      {
        v21 = 0;
      }

      swift_unknownObjectUnownedInit();
      v48[0] = a2;
      v49 = v20;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v50 = v21;
      sub_1AFCE73B4(v48, v19, v46, v17);
      v32 = v7;
      if (!v7)
      {
        sub_1AF579490(v48);
        if (v21)
        {
          v33 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v33 ^ 1);
        }

        sub_1AF66DB74(a1);

LABEL_19:

LABEL_42:
        swift_bridgeObjectRelease_n();

        return;
      }
    }

    else
    {
      v28 = *(v14 + 64);

      v47 = v17;
      pthread_mutex_lock(v28);
      v45 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      v30 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v30)
      {
        v31 = *(v30 + 80);
        swift_unknownObjectWeakLoadStrong();
        v30 = *(v30 + 56);
      }

      else
      {
        v31 = 0;
      }

      swift_unknownObjectUnownedInit();
      v48[0] = a2;
      v49 = v30;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v50 = v31;
      sub_1AFCE73B4(v48, a3, a4, v47);
      v32 = v7;
      if (!v7)
      {
        sub_1AF579490(v48);
        if (v31)
        {
          v40 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v40 ^ 1);
        }

        if (swift_weakLoadStrong())
        {
          sub_1AF65E37C();
        }

        v41 = v45(&runtime_thread_is_locked);
        --*v41;
        pthread_mutex_unlock(*(v14 + 64));

        swift_bridgeObjectRelease_n();

        goto LABEL_42;
      }
    }

    goto LABEL_45;
  }

  v22 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v23 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (!v23)
  {
    v34 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    swift_bridgeObjectRetain_n();
    v35 = a5;

    v36 = v35;

    [v34 lock];
    if (*(a1 + v13))
    {
      goto LABEL_7;
    }

LABEL_21:
    sub_1AF65E3F4();
    v37 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v37)
    {
      v38 = *(v37 + 80);
      swift_unknownObjectWeakLoadStrong();
      v37 = *(v37 + 56);
    }

    else
    {
      v38 = 0;
    }

    swift_unknownObjectUnownedInit();
    v48[0] = a2;
    v49 = v37;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v50 = v38;
    sub_1AFCE73B4(v48, a3, a4, a5);
    v32 = v7;
    if (!v7)
    {
      sub_1AF579490(v48);
      if (v38)
      {
        v42 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v42 ^ 1);
      }

      sub_1AF66DB74(a1);
      v43 = *(a1 + v22);
      if (v43)
      {
        pthread_mutex_unlock(v43);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_42;
    }

LABEL_45:

    sub_1AF579490(v48);
    v44 = [objc_opt_self() immediateMode];
    sub_1AF6C5E30(v44 ^ 1);
    __break(1u);
    return;
  }

  swift_bridgeObjectRetain_n();
  v24 = a5;
  swift_retain_n();
  v25 = v24;
  pthread_mutex_lock(v23);
  if (!*(a1 + v13))
  {
    goto LABEL_21;
  }

LABEL_7:

  v26 = a5;

  sub_1AF669B24(a1, a2, a3, a4, v26);
  if (!v7)
  {
    v39 = *(a1 + v22);
    if (v39)
    {
      pthread_mutex_unlock(v39);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_19;
  }

  v27 = *(a1 + v22);
  if (v27)
  {
    pthread_mutex_unlock(v27);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_bridgeObjectRelease_n();
}

void sub_1AF66A14C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v11)
  {
    v12 = *(v11 + 144);
    swift_unknownObjectRetain_n();
    v13 = a4;
    swift_retain_n();
    v14 = v13;

    v15 = pthread_self();
    v47 = v5;
    if (pthread_equal(v12, v15))
    {
      sub_1AF65E3F4();
      v16 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v16)
      {
        v17 = *(v16 + 80);
        swift_unknownObjectWeakLoadStrong();
        v16 = *(v16 + 56);
      }

      else
      {
        v17 = 0;
      }

      swift_unknownObjectUnownedInit();
      v44[0] = a2;
      v45 = v16;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v46 = v17;
      v30 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
      sub_1AF5AF118(a3, 0, *&v14[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity]);
      sub_1AF6C8780(*&v14[v30]);
      sub_1AF579490(v44);
      if (v17)
      {
        v31 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v31 ^ 1);
      }

      sub_1AF66DB74(a1);
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = *(v11 + 64);

      swift_unknownObjectRetain();
      v25 = v14;
      pthread_mutex_lock(v24);
      v26 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      v28 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v28)
      {
        v29 = *(v28 + 80);
        swift_unknownObjectWeakLoadStrong();
        v28 = *(v28 + 56);
      }

      else
      {
        v29 = 0;
      }

      swift_unknownObjectUnownedInit();
      v44[0] = a2;
      v45 = v28;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v46 = v29;
      v38 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
      sub_1AF5AF118(a3, 0, *&v25[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity]);
      sub_1AF6C8780(*&v25[v38]);
      sub_1AF579490(v44);
      if (v29)
      {
        v39 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v39 ^ 1);
      }

      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v40 = v26(&runtime_thread_is_locked);
      --*v40;
      pthread_mutex_unlock(*(v11 + 64));

      swift_unknownObjectRelease_n();
    }

    goto LABEL_40;
  }

  v18 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v19)
  {
    swift_unknownObjectRetain_n();
    v20 = a4;
    swift_retain_n();
    v21 = v20;
    pthread_mutex_lock(v19);
    if (*(a1 + v10))
    {
      goto LABEL_7;
    }

LABEL_19:
    sub_1AF65E3F4();
    v35 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v35)
    {
      v36 = *(v35 + 80);
      swift_unknownObjectWeakLoadStrong();
      v35 = *(v35 + 56);
    }

    else
    {
      v36 = 0;
    }

    swift_unknownObjectUnownedInit();
    v44[0] = a2;
    v45 = v35;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v46 = v36;
    v41 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    sub_1AF5AF118(a3, 0, *&a4[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity]);
    sub_1AF6C8780(*&a4[v41]);
    sub_1AF579490(v44);
    if (v36)
    {
      v42 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v42 ^ 1);
    }

    sub_1AF66DB74(a1);
    v43 = *(a1 + v18);
    if (v43)
    {
      pthread_mutex_unlock(v43);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  v32 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  swift_unknownObjectRetain_n();
  v33 = a4;

  v34 = v33;

  [v32 lock];
  if (!*(a1 + v10))
  {
    goto LABEL_19;
  }

LABEL_7:
  swift_unknownObjectRetain();
  v22 = a4;

  sub_1AF66A14C(a1, a2, a3, v22);
  if (!v5)
  {
    v37 = *(a1 + v18);
    if (v37)
    {
      pthread_mutex_unlock(v37);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    swift_unknownObjectRelease();

LABEL_40:
    swift_unknownObjectRelease_n();

    return;
  }

  v23 = *(a1 + v18);
  if (v23)
  {
    pthread_mutex_unlock(v23);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_unknownObjectRelease_n();
}

void sub_1AF66A71C(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v10)
  {
    v11 = *(v10 + 144);
    v12 = a3;
    v47 = a4;
    v13 = a4;
    swift_retain_n();
    v14 = v12;
    v15 = v13;

    v16 = pthread_self();
    if (pthread_equal(v11, v16))
    {
      sub_1AF65E3F4();
      v17 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      v52 = v4;
      if (v17)
      {
        v18 = *(v17 + 80);
        swift_unknownObjectWeakLoadStrong();
        v17 = *(v17 + 56);
      }

      else
      {
        v18 = 0;
      }

      swift_unknownObjectUnownedInit();
      v49[0] = a2;
      v50 = v17;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v51 = v18;
      sub_1AF5AF26C(a3, *&v15[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity]);
      sub_1AF579490(v49);
      if (v18)
      {
        v33 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v33 ^ 1);
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v28 = *(v10 + 64);

      v14 = v14;
      v29 = v15;
      pthread_mutex_lock(v28);
      v46 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      v31 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v31)
      {
        v32 = *(v31 + 80);
        swift_unknownObjectWeakLoadStrong();
        v31 = *(v31 + 56);
      }

      else
      {
        v32 = 0;
      }

      swift_unknownObjectUnownedInit();
      v49[0] = a2;
      v50 = v31;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v51 = v32;
      sub_1AF5AF26C(a3, *&v29[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity]);
      sub_1AF579490(v49);
      if (v32)
      {
        v42 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v42 ^ 1);
      }

      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v43 = v46(&runtime_thread_is_locked);
      --*v43;
      pthread_mutex_unlock(*(v10 + 64));
    }

    v25 = v47;
    goto LABEL_30;
  }

  v52 = v4;
  v48 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v19)
  {
    v20 = a3;
    v21 = a4;
    v22 = a4;
    swift_retain_n();
    v23 = v20;
    v24 = v22;
    pthread_mutex_lock(v19);
    if (*(a1 + v9))
    {
      goto LABEL_7;
    }

LABEL_19:
    sub_1AF65E3F4();
    v39 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    v25 = v21;
    if (v39)
    {
      v40 = *(v39 + 80);
      swift_unknownObjectWeakLoadStrong();
      v39 = *(v39 + 56);
    }

    else
    {
      v40 = 0;
    }

    swift_unknownObjectUnownedInit();
    v49[0] = a2;
    v50 = v39;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v51 = v40;
    sub_1AF5AF26C(a3, *&v21[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity]);
    sub_1AF579490(v49);
    if (v40)
    {
      v44 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v44 ^ 1);
    }

    sub_1AF66DB74(a1);
    v45 = *(a1 + v48);
    if (v45)
    {
      pthread_mutex_unlock(v45);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    v14 = a3;
    goto LABEL_30;
  }

  v34 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  v35 = a3;
  v21 = a4;
  v36 = a4;

  v37 = v35;
  v38 = v36;

  [v34 lock];
  if (!*(a1 + v9))
  {
    goto LABEL_19;
  }

LABEL_7:
  v14 = a3;
  v25 = v21;
  v26 = v21;

  sub_1AF66A71C(a1, a2, a3, v26);
  if (!v52)
  {
    v41 = *(a1 + v48);
    if (v41)
    {
      pthread_mutex_unlock(v41);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

LABEL_30:

    return;
  }

  v27 = *(a1 + v48);
  if (v27)
  {
    pthread_mutex_unlock(v27);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }
}

id sub_1AF66ACE0(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v10)
  {
    v13 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v14)
    {
      pthread_mutex_lock(v14);
      if (*(a1 + v9))
      {
        goto LABEL_6;
      }
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) lock];
      if (*(a1 + v9))
      {
LABEL_6:
        sub_1AF66ACE0(a1, a2, a3, a4 & 1);
        if (v4)
        {
          v15 = *(a1 + v13);
          if (!v15)
          {
            return [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
          }

          return pthread_mutex_unlock(v15);
        }

LABEL_13:
        v15 = *(a1 + v13);
        if (!v15)
        {
          return [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        return pthread_mutex_unlock(v15);
      }
    }

    sub_1AF65E3F4();
    sub_1AF5AADE8((a4 & 1) == 0, a2, a3);
    sub_1AF66DB74(a1);
    goto LABEL_13;
  }

  v11 = *(v10 + 144);

  v12 = pthread_self();
  if (pthread_equal(v11, v12))
  {
    sub_1AF65E3F4();
    sub_1AF5AADE8((a4 & 1) == 0, a2, a3);
    sub_1AF66DB74(a1);
  }

  else
  {
    sub_1AF6CDF3C(v10, a2, a3, a4 & 1);
  }
}

uint64_t sub_1AF66AE60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  v58 = a3;
  if (v11)
  {
    v13 = *(v11 + 144);
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    v14 = pthread_self();
    if (!pthread_equal(v13, v14))
    {
      v25 = *(v11 + 64);

      pthread_mutex_lock(v25);
      v26 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      v28 = sub_1AF66DBF0(a3);
      if (v28)
      {
        v30 = v28;
        v53 = v29;
        v31 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
        if (v31)
        {
          v32 = *(v31 + 80);
          swift_unknownObjectWeakLoadStrong();
          v31 = *(v31 + 56);
        }

        else
        {
          v32 = 0;
        }

        swift_unknownObjectUnownedInit();
        v55[0] = a2;
        v56 = v31;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        v44 = swift_unknownObjectRelease();
        v57 = v32;
        MEMORY[0x1EEE9AC00](v44, v45);
        sub_1AF6C8850(v30, v53, v58);
        sub_1AF579490(v55);
        if (v32)
        {
          v46 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v46 ^ 1);
        }
      }

      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v47 = v26(&runtime_thread_is_locked);
      --*v47;
      pthread_mutex_unlock(*(v11 + 64));

      swift_bridgeObjectRelease_n();

      goto LABEL_42;
    }

    sub_1AF65E3F4();
    v15 = sub_1AF66DBF0(a3);
    if (v15)
    {
      v17 = v15;
      v18 = v16;
      v19 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v19)
      {
        v20 = *(v19 + 80);
        swift_unknownObjectWeakLoadStrong();
        v19 = *(v19 + 56);
      }

      else
      {
        v20 = 0;
      }

      swift_unknownObjectUnownedInit();
      v55[0] = a2;
      v56 = v19;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      v40 = swift_unknownObjectRelease();
      v57 = v20;
      MEMORY[0x1EEE9AC00](v40, v41);
      sub_1AF6C8850(v17, v18, v58);
      sub_1AF579490(v55);
      if (v20)
      {
        v42 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v42 ^ 1);
      }
    }

    sub_1AF66DB74(a1);

LABEL_24:

LABEL_42:
    swift_bridgeObjectRelease_n();
  }

  v22 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v23 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v23)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    pthread_mutex_lock(v23);
    if (*(a1 + v10))
    {
      goto LABEL_8;
    }

LABEL_17:
    sub_1AF65E3F4();
    v34 = sub_1AF66DBF0(v58);
    if (v34)
    {
      v36 = v34;
      v37 = v35;
      v38 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v38)
      {
        v39 = *(v38 + 80);
        swift_unknownObjectWeakLoadStrong();
        v38 = *(v38 + 56);
      }

      else
      {
        v39 = 0;
      }

      swift_unknownObjectUnownedInit();
      v55[0] = a2;
      v56 = v38;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      v48 = swift_unknownObjectRelease();
      v57 = v39;
      MEMORY[0x1EEE9AC00](v48, v49);
      sub_1AF6C8850(v36, v37, v58);
      sub_1AF579490(v55);
      if (v39)
      {
        v50 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v50 ^ 1);
      }
    }

    sub_1AF66DB74(a1);
    v51 = *(a1 + v22);
    if (v51)
    {
      pthread_mutex_unlock(v51);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_42;
  }

  v33 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  swift_bridgeObjectRetain_n();

  [v33 lock];
  if (!*(a1 + v10))
  {
    goto LABEL_17;
  }

LABEL_8:

  sub_1AF66AE60(a1, a2, v58, a4, a5, a6);
  if (!v6)
  {
    v43 = *(a1 + v22);
    if (v43)
    {
      pthread_mutex_unlock(v43);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_24;
  }

  v24 = *(a1 + v22);
  if (v24)
  {
    pthread_mutex_unlock(v24);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_bridgeObjectRelease_n();
}

id sub_1AF66B4BC(uint64_t a1, unint64_t a2, uint64_t a3, float a4)
{
  v8 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v9 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v9)
  {
    v16 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v17)
    {
      pthread_mutex_lock(v17);
      if (*(a1 + v8))
      {
        goto LABEL_9;
      }
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) lock];
      if (*(a1 + v8))
      {
LABEL_9:
        sub_1AF66B4BC(a1, a2, a3, a4);
        v18 = *(a1 + v16);
        if (v18)
        {
          return pthread_mutex_unlock(v18);
        }

        return [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }
    }

    sub_1AF65E3F4();
    MEMORY[0x1EEE9AC00](v20, v21);
    if (HIDWORD(a2) || a2 != -1)
    {
      v22 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v22)
      {
        v23 = *(v22 + 80);
        swift_unknownObjectWeakLoadStrong();
        v22 = *(v22 + 56);
      }

      else
      {
        v23 = 0;
      }

      swift_unknownObjectUnownedInit();
      v26[0] = a3;
      v27 = v22;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v28 = v23;
      sub_1AFCDA270(a2);
      sub_1AF579490(v26);
      if (v23)
      {
        v25 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v25 ^ 1);
      }
    }

    sub_1AF66DB74(a1);
    v18 = *(a1 + v16);
    if (v18)
    {
      return pthread_mutex_unlock(v18);
    }

    return [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  v10 = *(v9 + 144);

  v11 = pthread_self();
  if (pthread_equal(v10, v11))
  {
    sub_1AF65E3F4();
    MEMORY[0x1EEE9AC00](v12, v13);
    if (HIDWORD(a2) || a2 != -1)
    {
      v14 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v14)
      {
        v15 = *(v14 + 80);
        swift_unknownObjectWeakLoadStrong();
        v14 = *(v14 + 56);
      }

      else
      {
        v15 = 0;
      }

      swift_unknownObjectUnownedInit();
      v26[0] = a3;
      v27 = v14;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v28 = v15;
      sub_1AFCDA270(a2);
      sub_1AF579490(v26);
      if (v15)
      {
        v24 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v24 ^ 1);
      }
    }

    sub_1AF66DB74(a1);
  }

  else
  {
    sub_1AF6CE018(v9, a2, a3);
  }
}

void sub_1AF66B858(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v8 = a4;
  v54 = a3;
  v11 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v12)
  {
    v13 = *(v12 + 144);
    v14 = a4;
    swift_retain_n();
    v15 = v14;

    v16 = pthread_self();
    if (pthread_equal(v13, v16))
    {
      sub_1AF65E3F4();
      MEMORY[0x1EEE9AC00](v17, v18);
      if (HIDWORD(a2) || a2 != -1)
      {
        v19 = *(v54 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v19)
        {
          v20 = *(v19 + 80);
          swift_unknownObjectWeakLoadStrong();
          v19 = *(v19 + 56);
        }

        else
        {
          v20 = 0;
        }

        swift_unknownObjectUnownedInit();
        v51[0] = v54;
        v52 = v19;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v53 = v20;
        sub_1AFCDA718(a2);
        sub_1AF579490(v51);
        if (v20)
        {
          v42 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v42 ^ 1);
        }
      }

      sub_1AF66DB74(a1);

      v8 = a4;
    }

    else
    {
      v27 = *(v12 + 64);
      v28 = v15;

      pthread_mutex_lock(v27);
      v48 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        sub_1AF65E3F4();
      }

      MEMORY[0x1EEE9AC00](Strong, v31);
      v8 = a4;
      if (HIDWORD(a2) || a2 != -1)
      {
        v32 = *(v54 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v32)
        {
          v47 = *(v32 + 80);
          swift_unknownObjectWeakLoadStrong();
          v32 = *(v32 + 56);
        }

        else
        {
          v47 = 0;
        }

        swift_unknownObjectUnownedInit();
        v51[0] = v54;
        v52 = v32;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v53 = v47;
        sub_1AFCDA718(a2);
        sub_1AF579490(v51);
        if (v47)
        {
          v43 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v43 ^ 1);
        }

        v8 = a4;
      }

      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v44 = v48(&runtime_thread_is_locked);
      --*v44;
      pthread_mutex_unlock(*(v12 + 64));
    }

    goto LABEL_49;
  }

  v21 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v22)
  {
    v23 = a4;
    swift_retain_n();
    v24 = v23;
    pthread_mutex_lock(v22);
    if (*(a1 + v11))
    {
      goto LABEL_9;
    }

LABEL_19:
    sub_1AF65E3F4();
    MEMORY[0x1EEE9AC00](v36, v37);
    v50 = v38;
    if (HIDWORD(a2) || a2 != -1)
    {
      v39 = *(v54 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v39)
      {
        v40 = *(v39 + 80);
        swift_unknownObjectWeakLoadStrong();
        v39 = *(v39 + 56);
      }

      else
      {
        v40 = 0;
      }

      swift_unknownObjectUnownedInit();
      v51[0] = v54;
      v52 = v39;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v53 = v40;
      sub_1AFCDA718(a2);
      sub_1AF579490(v51);
      if (v40)
      {
        v45 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v45 ^ 1);
      }
    }

    sub_1AF66DB74(a1);
    v46 = *(a1 + v21);
    if (v46)
    {
      pthread_mutex_unlock(v46);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    v8 = v50;

    goto LABEL_49;
  }

  v33 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  v34 = a4;
  swift_retain_n();
  v35 = v34;
  [v33 lock];
  if (!*(a1 + v11))
  {
    goto LABEL_19;
  }

LABEL_9:
  v25 = v8;

  sub_1AF66B858(a1, a2, v54, v25, a5);
  if (!v6)
  {
    v41 = *(a1 + v21);
    if (v41)
    {
      pthread_mutex_unlock(v41);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

LABEL_49:

    return;
  }

  v26 = *(a1 + v21);
  if (v26)
  {
    pthread_mutex_unlock(v26);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }
}

void sub_1AF66BEE8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v10)
  {
    v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v16)
    {
      v17 = a4;
      swift_retain_n();
      v18 = v17;
      pthread_mutex_lock(v16);
      if (*(a1 + v9))
      {
LABEL_6:
        v19 = a4;

        sub_1AF66BEE8(a1, a2, a3, v19, a5);
        v20 = *(a1 + v15);
        if (v20)
        {
          pthread_mutex_unlock(v20);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        goto LABEL_20;
      }
    }

    else
    {
      v26 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v27 = a4;
      swift_retain_n();
      v28 = v27;
      [v26 lock];
      if (*(a1 + v9))
      {
        goto LABEL_6;
      }
    }

    sub_1AF65E3F4();
    sub_1AFCED660(a2, a3, a4, a5);
    sub_1AF66DB74(a1);
    v29 = *(a1 + v15);
    if (v29)
    {
      pthread_mutex_unlock(v29);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_20;
  }

  v11 = *(v10 + 144);
  v12 = a4;
  swift_retain_n();
  v13 = v12;

  v14 = pthread_self();
  if (pthread_equal(v11, v14))
  {
    sub_1AF65E3F4();
    sub_1AFCED660(a2, a3, v13, a5);
    sub_1AF66DB74(a1);
  }

  else
  {
    v21 = *(v10 + 64);
    v22 = v13;

    pthread_mutex_lock(v21);
    v23 = runtime_thread_is_locked;
    is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
    ++*is_locked;
    if (swift_weakLoadStrong())
    {
      sub_1AF65E3F4();
    }

    sub_1AFCED660(a2, a3, v22, a5);
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v25 = v23(&runtime_thread_is_locked);
    --*v25;
    pthread_mutex_unlock(*(v10 + 64));
  }

LABEL_20:
}

uint64_t sub_1AF66C204(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v9 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v9)
  {
    v12 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v13)
    {
      swift_retain_n();
      pthread_mutex_lock(v13);
      if (*(a1 + v8))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      [v15 lock];
      if (*(a1 + v8))
      {
LABEL_6:

        sub_1AF66C204(a1, a2, a3);
        if (v4)
        {
          v14 = *(a1 + v12);
          if (!v14)
          {
LABEL_8:
            [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
LABEL_15:
          }

LABEL_14:
          pthread_mutex_unlock(v14);
          goto LABEL_15;
        }

LABEL_13:
        v14 = *(a1 + v12);
        if (!v14)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    sub_1AF65E3F4();
    a2();
    sub_1AF66DB74(a1);
    goto LABEL_13;
  }

  v10 = *(v9 + 144);
  swift_retain_n();

  v11 = pthread_self();
  if (pthread_equal(v10, v11))
  {
    sub_1AF65E3F4();
    a2();
    sub_1AF66DB74(a1);
  }

  else
  {

    sub_1AF6CE214(v9, a2);
  }
}

uint64_t sub_1AF66C3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v13)
  {
    v16 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v17)
    {
      swift_retain_n();
      swift_retain_n();
      pthread_mutex_lock(v17);
      if (*(a1 + v12))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v23 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      swift_retain_n();
      [v23 lock];
      if (*(a1 + v12))
      {
LABEL_6:

        sub_1AF66C3CC(a1, a2, a3, a4, a5);
        v18 = *(a1 + v16);
        if (v18)
        {
LABEL_7:
          pthread_mutex_unlock(v18);
LABEL_16:

          goto LABEL_17;
        }

LABEL_15:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_16;
      }
    }

    sub_1AF65E3F4();
    sub_1AFC4BDA8(a3, a4, a5, a6);
    sub_1AF66DB74(a1);
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v14 = *(v13 + 144);
  swift_retain_n();
  swift_retain_n();

  v15 = pthread_self();
  if (pthread_equal(v14, v15))
  {
    sub_1AF65E3F4();
    sub_1AFC4BDA8(a3, a4, a5, a6);
    sub_1AF66DB74(a1);

LABEL_17:

    goto LABEL_18;
  }

  v19 = *(v13 + 64);

  pthread_mutex_lock(v19);
  v20 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC4BDA8(a3, a4, a5, a6);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v22 = v20(&runtime_thread_is_locked);
  --*v22;
  pthread_mutex_unlock(*(v13 + 64));

LABEL_18:
}

uint64_t sub_1AF66C6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v15)
  {
    v16 = *(v15 + 144);
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v17 = pthread_self();
    if (!pthread_equal(v16, v17))
    {
      v23 = *(v15 + 64);

      pthread_mutex_lock(v23);
      v24 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      v26 = sub_1AF6AC0F4(a3, a4, a5 & 0xFFFFFFFFFFLL, 1);
      if (v27)
      {
        *a8 = 0u;
        *(a8 + 16) = 0u;
      }

      else
      {
        v32 = v26;

        sub_1AF67EFEC(v32, a2, a6, a7, v39);
        sub_1AFC83DF0(v39, a8);
        sub_1AF67001C(v39, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      }

      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v33 = v24(&runtime_thread_is_locked);
      --*v33;
      pthread_mutex_unlock(*(v15 + 64));

      swift_bridgeObjectRelease_n();

      goto LABEL_30;
    }

    sub_1AF65E3F4();
    v18 = sub_1AF6AC0F4(a3, a4, a5 & 0xFFFFFFFFFFLL, 1);
    if (v19)
    {
      *a8 = 0u;
      *(a8 + 16) = 0u;
    }

    else
    {
      v28 = v18;

      sub_1AF67EFEC(v28, a2, a6, a7, v39);
      sub_1AFC83DF0(v39, a8);
      sub_1AF67001C(v39, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

    sub_1AF66DB74(a1);

LABEL_29:

LABEL_30:
    swift_bridgeObjectRelease_n();
    goto LABEL_31;
  }

  v20 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v21 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v21)
  {
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    pthread_mutex_lock(v21);
    if (*(a1 + v14))
    {
      goto LABEL_7;
    }

LABEL_17:
    sub_1AF65E3F4();
    v30 = sub_1AF6AC0F4(a3, a4, a5 & 0xFFFFFFFFFFLL, 1);
    if (v31)
    {
      *a8 = 0u;
      *(a8 + 16) = 0u;
    }

    else
    {
      v34 = v30;

      sub_1AF67EFEC(v34, a2, a6, a7, v39);
      sub_1AFC83DF0(v39, a8);
      sub_1AF67001C(v39, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

    sub_1AF66DB74(a1);
    goto LABEL_25;
  }

  v29 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  [v29 lock];
  if (!*(a1 + v14))
  {
    goto LABEL_17;
  }

LABEL_7:

  sub_1AF66C6B4(a1, a2, a3, a4, a5 & 0xFFFFFFFFFFLL, a6, a7);
  if (!v40)
  {
LABEL_25:
    v35 = *(a1 + v20);
    if (v35)
    {
      pthread_mutex_unlock(v35);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_29;
  }

  v22 = *(a1 + v20);
  if (v22)
  {
    pthread_mutex_unlock(v22);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_bridgeObjectRelease_n();
LABEL_31:

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1AF66CB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v30 = a6;
  v12 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v13)
  {
    v14 = *(v13 + 144);
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    v15 = pthread_self();
    if (!pthread_equal(v14, v15))
    {
      v20 = *(v13 + 64);

      pthread_mutex_lock(v20);
      v21 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      if (a3)
      {
        v23 = a3;
      }

      else
      {
        v23 = 0xFFFFFFFFLL;
      }

      sub_1AF67EFEC(v23 | a3 & 0xFFFFFFFF00000000, a2, a4, a5, v29);
      sub_1AFC83DF0(v29, v30);
      sub_1AF67001C(v29, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v24 = v21(&runtime_thread_is_locked);
      --*v24;
      pthread_mutex_unlock(*(v13 + 64));

      swift_bridgeObjectRelease_n();

      goto LABEL_30;
    }

    sub_1AF65E3F4();
    if (a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
    }

    sub_1AF67EFEC(v16 | a3 & 0xFFFFFFFF00000000, a2, a4, a5, v29);
    sub_1AFC83DF0(v29, v30);
    sub_1AF67001C(v29, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF66DB74(a1);

LABEL_29:

LABEL_30:
    swift_bridgeObjectRelease_n();
  }

  v17 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v18 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v18)
  {
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    pthread_mutex_lock(v18);
    if (*(a1 + v12))
    {
      goto LABEL_9;
    }

LABEL_21:
    sub_1AF65E3F4();
    if (a3)
    {
      v26 = a3;
    }

    else
    {
      v26 = 0xFFFFFFFFLL;
    }

    sub_1AF67EFEC(v26 | a3 & 0xFFFFFFFF00000000, a2, a4, a5, v29);
    sub_1AFC83DF0(v29, v30);
    sub_1AF67001C(v29, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF66DB74(a1);
    goto LABEL_25;
  }

  v25 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  [v25 lock];
  if (!*(a1 + v12))
  {
    goto LABEL_21;
  }

LABEL_9:

  sub_1AF66CB6C(a1, a2, a3, a4, a5);
  if (!v6)
  {
LABEL_25:
    v27 = *(a1 + v17);
    if (v27)
    {
      pthread_mutex_unlock(v27);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_29;
  }

  v19 = *(a1 + v17);
  if (v19)
  {
    pthread_mutex_unlock(v19);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_bridgeObjectRelease_n();
}

void sub_1AF66CF74(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v11)
  {
    v12 = *(v11 + 144);
    v13 = a2;
    swift_bridgeObjectRetain_n();
    v14 = v13;

    v15 = pthread_self();
    if (pthread_equal(v12, v15))
    {
      sub_1AF65E3F4();
      sub_1AF7013D0(a3, a4, 0x100000000uLL, a5, v16);
      sub_1AF66DB74(a1);
    }

    else
    {
      v22 = v14;

      sub_1AF6CE2EC(v11, v22, a3, a4, a5);
    }

    goto LABEL_17;
  }

  v28 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v17)
  {
    v18 = a2;
    swift_bridgeObjectRetain_n();
    v19 = v18;
    pthread_mutex_lock(v17);
    if (*(a1 + v10))
    {
LABEL_6:
      v20 = a2;

      sub_1AF66CF74(a1, v20, a3, a4);
      v21 = *(a1 + v28);
      if (v21)
      {
        pthread_mutex_unlock(v21);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v23 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v24 = a2;
    swift_bridgeObjectRetain_n();
    v25 = v24;
    [v23 lock];
    if (*(a1 + v10))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AF7013D0(a3, a4, 0x100000000uLL, a5, v26);
  sub_1AF66DB74(a1);
  v27 = *(a1 + v28);
  if (v27)
  {
    pthread_mutex_unlock(v27);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1AF66D228(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v8 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v8)
  {
    v12 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v13)
    {
      pthread_mutex_lock(v13);
      if (*(a1 + v7))
      {
        goto LABEL_7;
      }
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) lock];
      if (*(a1 + v7))
      {
LABEL_7:
        v14 = sub_1AF66D228(a1, a2, a3);
        if (v3)
        {
          v15 = *(a1 + v12);
          if (v15)
          {
LABEL_9:
            pthread_mutex_unlock(v15);
            return v7 & 1;
          }
        }

        else
        {
          LOBYTE(v7) = v14;
          v15 = *(a1 + v12);
          if (v15)
          {
            goto LABEL_9;
          }
        }

LABEL_15:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        return v7 & 1;
      }
    }

    sub_1AF65E3F4();

    v16 = sub_1AF67CACC(&type metadata for Hidden, &off_1F25296F8, a2);

    LOBYTE(v7) = !v16;
    sub_1AF66DB74(a1);
    v15 = *(a1 + v12);
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v9 = *(v8 + 144);

  v10 = pthread_self();
  if (pthread_equal(v9, v10))
  {
    sub_1AF65E3F4();

    v11 = sub_1AF67CACC(&type metadata for Hidden, &off_1F25296F8, a2);

    LOBYTE(v7) = !v11;
    sub_1AF66DB74(a1);
  }

  else
  {
    LOBYTE(v7) = sub_1AF6CE3FC(v8, a2);
  }

  return v7 & 1;
}

uint64_t sub_1AF66D424()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACF0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF66D498()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACF0](v1);
  return sub_1AFDFF2F8();
}

void sub_1AF66D4DC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock(*(v3 + 136));
  v6 = *(a1 + 188);
  v7 = *(v3 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 104) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *(v3 + 104) = sub_1AFC0D9B8(v7);
  }

  sub_1AF6211D0(v6, 0, 0, a2);
  v9 = *(v3 + 136);

  os_unfair_lock_unlock(v9);
}

void sub_1AF66D580(uint64_t a1, int8x16_t *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  os_unfair_lock_lock(*(v5 + 136));
  v10 = (a3 + 63) >> 6;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (a3 + 63) >> 6;
  }

  if (v10 <= 3)
  {
    v12 = 0;
    v13 = 0;
LABEL_9:
    v18 = v11 - v13;
    v19 = a2 + v13;
    do
    {
      v20 = *v19++;
      v21 = vcnt_s8(v20);
      v21.i16[0] = vaddlv_u8(v21);
      v12 += v21.u32[0];
      --v18;
    }

    while (v18);
    goto LABEL_11;
  }

  v13 = v11 & 0x7FFFFFFFFFFFFFFCLL;
  v14 = a2 + 1;
  v15 = 0uLL;
  v16 = v11 & 0x7FFFFFFFFFFFFFFCLL;
  v17 = 0uLL;
  do
  {
    v15 = vpadalq_u32(v15, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v14[-1]))));
    v17 = vpadalq_u32(v17, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v14))));
    v14 += 2;
    v16 -= 4;
  }

  while (v16);
  v12 = vaddvq_s64(vaddq_s64(v17, v15));
  if (v11 != v13)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v12)
  {
    v22 = *(a1 + 240) - *(a1 + 232);
    v23 = *(a1 + 188);
    v24 = *(v5 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 104) = v24;
    if (v22 == v12)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        *(v5 + 104) = sub_1AFC0D9B8(v24);
      }

      v26 = v23;
      v27 = 0;
      v28 = 0;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        *(v5 + 104) = sub_1AFC0D9B8(v24);
      }

      v26 = v23;
      v27 = a2;
      v28 = a3;
    }

    sub_1AF6211D0(v26, v27, v28, a4);
  }

  v29 = *(v5 + 136);

  os_unfair_lock_unlock(v29);
}

uint64_t sub_1AF66D724(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1;
    v7 = *v6;
    if (v5 != 0xFFFFFFFF && *(v6 + 8) != v5)
    {
      return 0;
    }

    result = 0;
    if (a2 < 0)
    {
      return result;
    }

    v8 = *(*(v2 + 104) + 40 * *(v6 + 6) + 48);
    if (*(v8 + 16) <= a2)
    {
      return result;
    }

    v9 = *(v8 + 8 * a2 + 32);
    v10 = *(v9 + 16);
    if (!v10)
    {
      return 0;
    }

    v11 = *(v6 + 4);
    v12 = v11 >> 6;
    v13 = 1 << v11;
    for (i = (v9 + 40); *(i - 2) != v7 || *i && (*(*i + 8 * v12) & v13) == 0; i += 3)
    {
      result = 0;
      if (!--v10)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

void sub_1AF66D814(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
  {

    sub_1AF6CC3F8(a1, a2);
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated);
    v6 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated + 8);
    [v6 lock];
    [v6 unlock];

    if (v5 == 1)
    {
      return;
    }

    v7 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_asyncQueue);
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    v9 = v7;

    sub_1AF758AE4(sub_1AF67008C, v8);
  }
}

void sub_1AF66D948(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
  {

    sub_1AF6CC3F8(a1, a2);
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated);
    v6 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated + 8);
    [v6 lock];
    [v6 unlock];

    if (v5)
    {
      return;
    }

    v7 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_asyncQueue);
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    v9 = v7;

    sub_1AF758AE4(sub_1AF6786F0, v8);
  }
}

id sub_1AF66DA78(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v7)
  {
    pthread_mutex_lock(v7);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) lock];
  }

  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
  {
    sub_1AF66D948(a2, a3);
    v8 = *(a1 + v6);
    if (v8)
    {
LABEL_6:

      return pthread_mutex_unlock(v8);
    }
  }

  else
  {
    sub_1AF65E3F4();
    a2();
    sub_1AF66DB74(a1);
    v8 = *(a1 + v6);
    if (v8)
    {
      goto LABEL_6;
    }
  }

  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);

  return [v10 unlock];
}

void sub_1AF66DB74(uint64_t a1)
{
  if (*(a1 + 224) == 1)
  {
    sub_1AF65DCF4(1);
  }

  v2 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (v2)
  {
    v3 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
    if (v3)
    {
      v4 = 8 * v3;
      do
      {
        v5 = *v2++;
        ecs_stack_allocator_pop_snapshot(*(v5 + 32));
        v4 -= 8;
      }

      while (v4);
    }
  }

  --*(a1 + 224);
}

uint64_t sub_1AF66DBF0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  v2 = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1;
    if (HIDWORD(a1) == 0xFFFFFFFF || *(v4 + 8) == HIDWORD(a1))
    {
      v5 = *(*(*(*(v1 + 88) + 8 * *(v4 + 6) + 32) + 16) + 32);
      v6 = *(v5 + 16);
      v7 = (v5 + 32);
      v8 = v6 + 1;
      while (--v8)
      {
        v9 = v7 + 2;
        v2 = *v7;
        if (swift_conformsToProtocol2())
        {
          v10 = v2 == 0;
        }

        else
        {
          v10 = 1;
        }

        v7 = v9;
        if (!v10)
        {
          return v2;
        }
      }
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1AF66DCEC(uint64_t (*a1)(__int128 *))
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = 9; ; i += 5)
  {
    sub_1AF441194(&v3[i - 5], v14);
    v8 = a1(v14);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AFC0D9A4(v3);
      }

      if (v3[2] - 1 != v6)
      {
        v9 = v6 + 1;
        v15 = v3 + 4;
        v10 = &v3[i];
        do
        {
          sub_1AF441194(v10, v14);
          v11 = a1(v14);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
          if ((v11 & 1) == 0)
          {
            if (v9 != v6)
            {
              v12 = &v15[5 * v6];
              sub_1AF441194(v12, v14);
              sub_1AF6156AC(v12, v10);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
              sub_1AF0FBA54(v14, v10);
            }

            ++v6;
          }

          ++v9;
          v10 += 5;
        }

        while (v9 != v3[2]);
      }

      *v1 = v3;
      return v6;
    }

    if (v4 == ++v6)
    {
      return v3[2];
    }
  }

  return v6;
}

uint64_t sub_1AF66DE98(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v7 = *v2;
  v8 = sub_1AF65A18C(a1, a2, *v2);
  if (!v3)
  {
    if (v9)
    {
      return v7[2];
    }

    else
    {
      v4 = v8;
      v10 = v8 + 1;
      if (v8 + 1 != v7[2])
      {
        v12 = 16 * v8 + 48;
        v17 = a2;
        do
        {
          v16 = *(v7 + v12);
          swift_unknownObjectRetain();
          v13 = a1(&v16);
          swift_unknownObjectRelease();
          if ((v13 & 1) == 0)
          {
            if (v10 != v4)
            {
              v14 = *&v7[2 * v4 + 4];
              v15 = *(v7 + v12);
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_1AFC0DB70(v7);
              }

              *&v7[2 * v4 + 4] = v15;
              swift_unknownObjectRelease();
              *(v7 + v12) = v14;
              swift_unknownObjectRelease();
              *v2 = v7;
            }

            ++v4;
          }

          ++v10;
          v12 += 16;
        }

        while (v10 != v7[2]);
      }
    }
  }

  return v4;
}

uint64_t sub_1AF66E030(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1AFDFCB28();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED72E180 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED73B850;
  os_unfair_lock_lock(*(qword_1ED73B850 + 40));
  if (sub_1AF702754(a3, *(v12 + 48)))
  {
    os_unfair_lock_unlock(*(v12 + 40));
  }

  else
  {
    swift_unknownObjectRetain();
    v34 = a2;
    sub_1AF70DCE8(&v44, a3);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(*(v12 + 40));
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a3;
    *&v46 = sub_1AF6700B8;
    *(&v46 + 1) = v13;
    *&v44 = MEMORY[0x1E69E9820];
    *(&v44 + 1) = 1107296256;
    *&v45 = sub_1AF719CC4;
    *(&v45 + 1) = &unk_1F2533770;
    v14 = _Block_copy(&v44);
    swift_unknownObjectRetain();

    a2 = v34;

    [a3 addScheduledHandler_];
    _Block_release(v14);
  }

  v15 = *(a4 + 280);
  v16 = *(v15 + 16);
  if (v16)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1AF6F37F0();
    [v16 commit];
    swift_unknownObjectRelease();
    *(v15 + 16) = a3;
    swift_unknownObjectRelease();
    if (*(a4 + 393))
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(v15 + 16) = a3;
    v17 = *(a4 + 393);
    swift_unknownObjectRetain();
    if (v17 == 1)
    {
      goto LABEL_13;
    }
  }

  if ((*(a4 + 395) & 1) == 0 && (*(a4 + 396) & 1) == 0)
  {
    sub_1AFDFCB08();
    sub_1AFDFDBA8();
    (*(v8 + 8))(v11, v7);
  }

LABEL_13:
  *(a4 + 288) = [*(a2 + 16) pixelFormat];
  *(a4 + 352) = *(a4 + 448);
  *(a4 + 240) = 1;

  v19 = sub_1AFB2EB3C(v18, a4);
  v21 = v20;
  v22 = CACurrentMediaTime();
  if (v21)
  {
    v23 = 0xFFFFFFFFLL;
  }

  else
  {
    v23 = v19;
  }

  sub_1AFB2F7B0(v23, v53);
  *&v35 = a2;
  *(&v35 + 1) = &off_1F25379A8;
  *&v36 = v22;
  *(&v36 + 1) = a3;
  LOBYTE(v37) = 0;
  v38 = v53[0];
  v39 = v53[1];
  v40 = v53[2];
  v41 = v53[3];
  v42 = v53[4];
  v43[0] = v53[5];
  *&v43[1] = 0;
  BYTE8(v43[1]) = 0;
  nullsub_106();
  v24 = *(a4 + 656);
  v50 = *(a4 + 640);
  v51 = v24;
  v52[0] = *(a4 + 672);
  *(v52 + 9) = *(a4 + 681);
  v25 = *(a4 + 592);
  v46 = *(a4 + 576);
  v47 = v25;
  v26 = *(a4 + 624);
  v48 = *(a4 + 608);
  v49 = v26;
  v27 = *(a4 + 560);
  v44 = *(a4 + 544);
  v45 = v27;
  v28 = v42;
  *(a4 + 640) = v41;
  *(a4 + 656) = v28;
  *(a4 + 672) = v43[0];
  *(a4 + 681) = *(v43 + 9);
  v29 = v38;
  *(a4 + 576) = v37;
  *(a4 + 592) = v29;
  v30 = v40;
  *(a4 + 608) = v39;
  *(a4 + 624) = v30;
  v31 = v36;
  *(a4 + 544) = v35;
  *(a4 + 560) = v31;
  swift_unknownObjectRetain();

  sub_1AF67001C(&v44, &unk_1ED730830, &type metadata for Renderer.CurrentRenderContext);
}

uint64_t sub_1AF66E44C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1AF585714(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1AF0FBA54(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1AF66E4E4(void *a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v72 = a3;
  v10 = sub_1AFDFC4F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a6 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) == 1)
  {
    if (a4)
    {
      CFXBufferAllocatorPerFrameNextFrame(a1[29]);
      CFXBufferAllocatorPerFrameNextFrame(a1[31]);
      v15 = a1[7];
      if (v15)
      {
        sub_1AFDEB254(v15);
      }
    }

    v16 = OBJC_IVAR____TtC3VFX13EntityManager_currentState;
    v17 = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_currentState);
    *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_currentState) = 2;
    if (v17 != 2)
    {
      v18 = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
      if (v18)
      {

        v18(a6);
        sub_1AF0FB8EC(v18);
      }
    }

    sub_1AF66E030(a6, a2, v72, a1);
    Strong = swift_unknownObjectUnownedLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      sub_1AF5CF44C(Strong, v20);
    }

    v22 = *(*(a6 + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) + 24);

    if (v22)
    {
      v24 = thread_worker_index(v23);
      v25 = *v24;
      *v24 = 0;

      sub_1AF6D88DC(a6, a1, 4);
      *v24 = v25;
    }

    else
    {
    }

    sub_1AF707238(v71);
    v48 = *(a2 + 104);
    if (v48)
    {
      v49 = *(a2 + 112);
      v50 = swift_allocObject();
      *(v50 + 16) = v48;
      *(v50 + 24) = v49;
      v77 = sub_1AF6786E0;
      v78 = v50;
      aBlock = MEMORY[0x1E69E9820];
      v74 = 1107296256;
      v75 = sub_1AF719CC4;
      v76 = &unk_1F2533720;
      v51 = _Block_copy(&aBlock);
      swift_retain_n();

      [v72 addCompletedHandler_];
      _Block_release(v51);
      sub_1AF0FB8EC(v48);
    }

    v53 = *(a6 + v16);
    *(a6 + v16) = 4;
    if (v53 != 4)
    {
      v54 = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
      if (v54)
      {

        v54(a6);
        return sub_1AF0FB8EC(v54);
      }
    }
  }

  else
  {
    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v26 = sub_1AFDFC538();
    sub_1AF477C68(v26, qword_1ED73B608);
    (*(v11 + 16))(v14, a6 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v10);

    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = a6;
    *(v27 + 12) = 2048;
    *(v27 + 14) = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);

    v28 = sub_1AFDFC528();
    v29 = v14;
    v30 = sub_1AFDFDB88();
    v70 = v29;
    v31 = sub_1AFDFC4E8();
    v68 = v28;
    v69 = v27;
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v28, v30, v31, "render", "[%ld:%ld]", v27, 0x16u);
    if (a4)
    {
      CFXBufferAllocatorPerFrameNextFrame(a1[29]);
      CFXBufferAllocatorPerFrameNextFrame(a1[31]);
      v32 = a1[7];
      if (v32)
      {
        sub_1AFDEB254(v32);
      }
    }

    v33 = OBJC_IVAR____TtC3VFX13EntityManager_currentState;
    v34 = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_currentState);
    *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_currentState) = 2;
    v35 = &unk_1ED73B000;
    if (v34 != 2)
    {
      v36 = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
      if (v36)
      {

        v36(a6);
        sub_1AF0FB8EC(v36);
      }
    }

    sub_1AF66E030(a6, a2, v72, a1);
    v37 = swift_unknownObjectUnownedLoadStrong();
    if (v37)
    {
      v39 = v37;
      sub_1AF5CF44C(v37, v38);
    }

    v40 = *(*(a6 + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) + 24);

    if (v40)
    {
      v42 = thread_worker_index(v41);
      v43 = v11;
      v44 = v10;
      v45 = a2;
      v46 = v33;
      v47 = *v42;
      *v42 = 0;

      sub_1AF6D88DC(a6, a1, 4);
      *v42 = v47;
      v33 = v46;
      a2 = v45;
      v10 = v44;
      v11 = v43;
      v35 = &unk_1ED73B000;
    }

    else
    {
    }

    sub_1AF707238(v71);
    v55 = *(a2 + 104);
    if (v55)
    {
      v56 = *(a2 + 112);
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = v56;
      v77 = sub_1AF670098;
      v78 = v57;
      aBlock = MEMORY[0x1E69E9820];
      v74 = 1107296256;
      v75 = sub_1AF719CC4;
      v76 = &unk_1F24E5EE8;
      v58 = _Block_copy(&aBlock);
      swift_retain_n();

      [v72 addCompletedHandler_];
      _Block_release(v58);
      sub_1AF0FB8EC(v55);
    }

    v59 = *(a6 + v33);
    *(a6 + v33) = 4;
    if (v59 != 4)
    {
      v60 = *(a6 + v35[239]);
      if (v60)
      {

        v60(a6);
        sub_1AF0FB8EC(v60);
      }
    }

    v61 = sub_1AFDFDB78();
    v62 = v70;
    v63 = sub_1AFDFC4E8();
    v64 = v61;
    v66 = v68;
    v65 = v69;
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v68, v64, v63, "render", "[%ld:%ld]", v69, 0x16u);

    MEMORY[0x1B271DEA0](v65, -1, -1);
    return (*(v11 + 8))(v62, v10);
  }

  return result;
}

char *sub_1AF66EC18(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1AF422C28(0, v2, 0, MEMORY[0x1E69E7CC0]);
  v20 = result;
  v18 = v2;
  if (v2)
  {
    v4 = 0;
    do
    {
      v19 = v4;
      v7 = (a1 + 32 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v8 + 8);
      if (sub_1AF640D84(*v7, v10))
      {
        v17 = v8;
        v11 = *(v10 + 24);
        v12 = a1 + 40;
        v13 = v18;
        while (1)
        {
          v14 = *(v12 - 8);
          v15 = (*(*(*v12 + 8) + 24))(v14, *(*v12 + 8));
          if (v15 == v11(v9, v10))
          {
            v16 = sub_1AF640D40(v14);
            if (sub_1AF640D40(v9) < v16)
            {
              break;
            }
          }

          v12 += 16;
          if (!--v13)
          {
            v5 = v9;
            v6 = v17;
            goto LABEL_4;
          }
        }
      }

      else
      {
        v5 = v9;
        v6 = v8;
LABEL_4:
        sub_1AF65D974(v5, v6);
      }

      v4 = v19 + 1;
    }

    while (v19 + 1 != v18);
    return v20;
  }

  return result;
}

uint64_t sub_1AF66EDB4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = a1 + 32;
    do
    {
      v8 += 16;
      v7 ^= sub_1AFDFD7D8();
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  a3(a1);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + 32;
    v11 = a2 + 32;
    v12 = v9;
    do
    {
      sub_1AF441194(v11, v18);
      sub_1AF441150(v18, v19);
      swift_getDynamicType();
      v13 = sub_1AFDFD7D8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
      v7 ^= v13;
      v11 += 40;
      --v12;
    }

    while (v12);
    v14 = 0;
    do
    {
      sub_1AF441194(v10, v18);
      v15 = v19;
      v16 = v20;
      sub_1AF441150(v18, v19);
      v14 ^= (*(v16 + 16))(v15, v16);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return v7;
}

uint64_t sub_1AF66EEF8(unint64_t a1, uint64_t a2)
{
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v13 = a2;
  v14 = sub_1AFDFE108();
  a2 = v13;
  v3 = v14;
  if (!v14)
  {
    return 0;
  }

LABEL_3:
  v4 = 0;
  v5 = (a2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
  while (1)
  {
    v6 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v4, a1) : *(a1 + 8 * v4 + 32);
    v7 = *&v6[OBJC_IVAR____TtC3VFX9VFXEffect_effectID];
    v8 = v6[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4];
    v9 = *v5;
    v10 = *(v5 + 4);

    v11 = v8 ? 0 : v7;
    v12 = v10 ? 0 : v9;
    if (v11 == v12)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1AF66F020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = 0;
    v7 = *(a3 + 16);
    if (!v7)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v4 = a2;
  v6 = 0;
  do
  {
    a1 += 16;
    v6 ^= sub_1AFDFD7D8();
    --v4;
  }

  while (v4);
  v7 = *(a3 + 16);
  if (v7)
  {
LABEL_5:
    v8 = a3 + 32;
    v9 = a3 + 32;
    v10 = v7;
    do
    {
      sub_1AF441194(v9, v16);
      sub_1AF441150(v16, v17);
      swift_getDynamicType();
      v11 = sub_1AFDFD7D8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
      v6 ^= v11;
      v9 += 40;
      --v10;
    }

    while (v10);
    v12 = 0;
    do
    {
      sub_1AF441194(v8, v16);
      v13 = v17;
      v14 = v18;
      sub_1AF441150(v16, v17);
      v12 ^= (*(v14 + 16))(v13, v14);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return v6;
}

uint64_t sub_1AF66F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v97 = a3;
  v95 = a2;
  v94 = a1;
  v7 = sub_1AFDFC4F8();
  v99 = *(v7 - 8);
  *&v100 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v98 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1AFDFDAF8();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v10);
  v91 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AFDFDAC8();
  MEMORY[0x1EEE9AC00](v12, v13);
  v90 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AFDFCAC8();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v17 = sub_1AFDFCA98();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 40) = 0;
  *(v4 + 48) = 0xE000000000000000;
  *(v4 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 72) = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v23 = MEMORY[0x1E69E7CC0];
    v86 = sub_1AFDFE108();
    if (v86)
    {
      v87 = v86;
      v23 = sub_1AFC892CC(v86, 0);
      sub_1AF56E2F8(v23 + 32, v87, MEMORY[0x1E69E7CC0]);
    }
  }

  v96 = a4;
  *(v5 + 80) = v23;
  *(v5 + 88) = v22;
  *(v5 + 96) = v22;
  *(v5 + 104) = v22;
  v24 = swift_slowAlloc();
  *v24 = 0;
  *(v5 + 112) = "ChunksStorage";
  *(v5 + 120) = 13;
  *(v5 + 128) = 2;
  *(v5 + 136) = v24;
  *(v5 + 144) = v22;
  *(v5 + 152) = v22;
  *(v5 + 160) = v22;
  v25 = sub_1AFDFD488();
  v26 = vdupq_n_s64(0x2710uLL);
  *(v25 + 16) = 32;
  *(v25 + 32) = v26;
  *(v25 + 48) = v26;
  *(v25 + 64) = v26;
  *(v25 + 80) = v26;
  *(v25 + 96) = v26;
  *(v25 + 112) = v26;
  *(v25 + 128) = v26;
  *(v25 + 144) = v26;
  *(v25 + 160) = v26;
  *(v25 + 176) = v26;
  *(v25 + 192) = v26;
  *(v25 + 208) = v26;
  *(v25 + 224) = v26;
  *(v25 + 240) = v26;
  *(v25 + 256) = v26;
  *(v25 + 272) = v26;
  *(v5 + 168) = v25;
  type metadata accessor for WorkerComponentStorage();
  v27 = swift_allocObject();
  sub_1AF64F3CC(v22, 0, 256, 0, (v27 + 2));
  v27[11] = 0;
  v28 = swift_slowAlloc();
  v27[12] = v28;
  v27[13] = v28 + 4096;
  v27[14] = 4096;
  *(v5 + 176) = v27;
  *(v5 + 192) = 0;
  sub_1AF615168();
  (*(v18 + 104))(v21, *MEMORY[0x1E69E7F90], v17);
  v29 = sub_1AFDFDB38();
  (*(v18 + 8))(v21, v17);
  *(v5 + 200) = v29;
  *(v5 + 208) = dispatch_group_create();
  *(v5 + 216) = sub_1AF43BAB0(v22);
  *(v5 + 224) = 0;
  *(v5 + 232) = 0;
  v30 = (v5 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
  *(v30 + 76) = 0u;
  v30[3] = 0u;
  v30[4] = 0u;
  v30[1] = 0u;
  v30[2] = 0u;
  *v30 = 0u;
  v89 = OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity) = 1024;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) = 0;
  v31 = OBJC_IVAR____TtC3VFX13EntityManager_generationSalt;
  *(v5 + v31) = sub_1AF700FA8(0x7FFFFFFEu) + 1;
  v32 = v5 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v33 = swift_slowAlloc();
  *v32 = "lock EntityManager";
  *(v32 + 8) = 18;
  *(v32 + 16) = 2;
  *(v32 + 24) = v33;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) = 0;
  *v33 = 0;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2Presentation) = 0;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex) = -1;
  v34 = OBJC_IVAR____TtC3VFX13EntityManager_scheduler;
  type metadata accessor for Scheduler();
  swift_allocObject();
  *(v5 + v34) = sub_1AF6D6B60();
  v35 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  type metadata accessor for QueryManager();
  v36 = swift_allocObject();
  v37 = swift_slowAlloc();
  *v37 = 0;
  *(v36 + 16) = "QueryManagerLock";
  *(v36 + 24) = 16;
  *(v36 + 32) = 2;
  *(v36 + 40) = v37;
  *(v36 + 48) = sub_1AF43B8F8(v22);
  *(v36 + 56) = sub_1AF43B9E8(v22);
  *(v5 + v35) = v36;
  v38 = OBJC_IVAR____TtC3VFX13EntityManager_updateQueue;
  sub_1AFDFCAA8();
  *&v102[0] = v22;
  sub_1AF678314();
  sub_1AF6723CC(0, &qword_1ED726C38, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1AF67836C();
  sub_1AFDFE058();
  (*(v92 + 104))(v91, *MEMORY[0x1E69E8090], v93);
  *(v5 + v38) = sub_1AFDFDB28();
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks) = v22;
  v39 = v5 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock;
  v40 = swift_slowAlloc();
  *v39 = "nextFrameBlocks";
  *(v39 + 8) = 15;
  *(v39 + 16) = 2;
  *(v39 + 24) = v40;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread) = 0;
  *v40 = 0;
  v41 = v5 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated;
  v42 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *v41 = 0;
  *(v41 + 8) = v42;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_canUseImGUI) = 0;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_imGUIEnabled) = 1;
  v43 = OBJC_IVAR____TtC3VFX13EntityManager_syncLock;
  *(v5 + v43) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock) = 0;
  v44 = OBJC_IVAR____TtC3VFX13EntityManager_asyncQueue;
  *(v5 + v44) = sub_1AFDFDB08();
  v45 = v5 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock;
  v46 = swift_slowAlloc();
  *v45 = "backgroundingSignalLock";
  *(v45 + 8) = 23;
  *(v45 + 16) = 2;
  *(v45 + 24) = v46;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground) = 0;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_sceneInBackground) = 0;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach) = 1;
  *v46 = 0;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 0;
  v47 = (v5 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
  *v47 = 0;
  v47[1] = 0;
  v48 = OBJC_IVAR____TtC3VFX13EntityManager_mainGraphScriptGroup;
  type metadata accessor for MainGraphScriptGroup();
  v49 = swift_allocObject();
  *(v5 + v48) = v49;
  v50 = v22;
  *(v49 + 16) = v22;
  v51 = OBJC_IVAR____TtC3VFX13EntityManager_logger;
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  *(v5 + v51) = qword_1ED73B8A0;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream) = 0;
  v52 = v5 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  *v52 = 0;
  *(v52 + 2) = 1;
  v53 = type metadata accessor for ScriptingConfiguration();
  v54 = v53[7];
  v55 = sub_1AFDFC128();
  (*(*(v55 - 8) + 56))(v52 + v54, 1, 1, v55);
  *(v52 + v53[8]) = 0;
  *(v52 + v53[9]) = 0;
  swift_unknownObjectWeakInit();
  v56 = (v5 + OBJC_IVAR____TtC3VFX13EntityManager_clock);

  sub_1AF627F50(v102);
  v57 = v102[3];
  v56[2] = v102[2];
  v56[3] = v57;
  v58 = v102[5];
  v56[4] = v102[4];
  v56[5] = v58;
  v59 = v102[1];
  *v56 = v102[0];
  v56[1] = v59;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_activeStatesPerEffects) = MEMORY[0x1E69E7CC8];
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_currentState) = 4;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) = 0;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive) = 0;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_peerPid) = -1;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_peerTaskIdentity) = 0;
  v60 = v95;
  *(v5 + 24) = v94;
  *(v5 + 32) = v60;
  v61 = v96;
  *(v5 + 72) = v96;

  if (v61)
  {

    v62 = sub_1AF6DBB94();
    type metadata accessor for SceneComponentStorage();
    swift_allocObject();
    v63 = sub_1AF6D26FC(v62);
  }

  else
  {
    type metadata accessor for SceneComponentStorage();
    swift_allocObject();
    v63 = sub_1AF6D25F0();
  }

  *(v5 + 184) = v63;
  v64 = *(v5 + v89);
  v65 = swift_slowAlloc();
  v66 = (v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  *v66 = v65;
  v66[1] = v64;
  v67 = v97 + 1;
  v68 = swift_slowAlloc();
  v69 = (v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  *v69 = v68;
  v69[1] = v67;
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v70 = sub_1AFDFC538();
  sub_1AF477C68(v70, qword_1ED73B608);
  sub_1AFDFC528();
  v71 = v98;
  sub_1AFDFC4D8();
  (*(v99 + 32))(v5 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v71, v100);
  v72 = CFXMTLCreateSystemDefaultDevice();
  if (v72)
  {
    ShaderCache6deviceyXlSo9MTLDevice_p_tF_0 = _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v72);
    swift_unknownObjectRelease();
  }

  else
  {
    ShaderCache6deviceyXlSo9MTLDevice_p_tF_0 = 0;
  }

  *(v5 + 16) = ShaderCache6deviceyXlSo9MTLDevice_p_tF_0;
  v74 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (v74)
  {
    v75 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
    if (v75)
    {
      type metadata accessor for PrivateCommandQueue();

      v76 = 0;
      v100 = xmmword_1AFE22A20;
      do
      {
        v77 = swift_allocObject();

        *(v77 + 32) = ecs_stack_allocator_create(0x10000);
        type metadata accessor for FrameAllocator();
        v78 = swift_allocObject();
        v78[4] = 0;
        v78[5] = v50;
        v79 = swift_slowAlloc();
        v78[2] = v79;
        v78[3] = v79 + 0x10000;
        v78[4] = 0;
        *(v77 + 40) = v78;
        *(v77 + 48) = 0;
        *(v77 + 56) = 0;
        *(v77 + 64) = 0;
        *(v77 + 72) = v100;
        *(v77 + 88) = MEMORY[0x1E69E7CD0];
        *(v77 + 96) = MEMORY[0x1E69E7CC8];
        *(v77 + 104) = v50;
        *(v77 + 112) = 0;
        *(v77 + 120) = 0u;
        *(v77 + 136) = 0u;
        *(v77 + 152) = 0u;
        *(v77 + 16) = v5;
        *(v77 + 24) = v76 - 1;

        *(v74 + 8 * v76++) = v77;
      }

      while (v75 != v76);
    }
  }

  *(*(v5 + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) + 24) = v5;
  sub_1AF65BAAC(0);
  v80 = qword_1ED72C938;

  if (v80 != -1)
  {
    swift_once();
  }

  [qword_1ED73B7F8 lock];
  if (qword_1ED72C930 != -1)
  {
    swift_once();
  }

  swift_weakInit();
  swift_weakAssign();

  v81 = qword_1ED73B7F0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  qword_1ED73B7F0 = v81;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v81 = sub_1AF4202A0(0, v81[2] + 1, 1, v81);
    qword_1ED73B7F0 = v81;
  }

  v84 = v81[2];
  v83 = v81[3];
  if (v84 >= v83 >> 1)
  {
    v81 = sub_1AF4202A0(v83 > 1, v84 + 1, 1, v81);
  }

  v81[2] = v84 + 1;
  sub_1AF6783F4(v101, &v81[v84 + 4]);
  qword_1ED73B7F0 = v81;
  [qword_1ED73B7F8 unlock];
  return v5;
}

unint64_t sub_1AF66FEEC()
{
  result = qword_1EB63D220;
  if (!qword_1EB63D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D220);
  }

  return result;
}

unint64_t sub_1AF66FF40()
{
  result = qword_1ED72C1D0;
  if (!qword_1ED72C1D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED72C1D0);
  }

  return result;
}

BOOL sub_1AF66FFA4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  sub_1AF441150(a1, v3);
  return sub_1AF640C98(v2, v3, v4);
}

uint64_t sub_1AF67001C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF6782C4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF6700A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1AF6700C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    if (HIDWORD(result) == 0xFFFFFFFF || v6[2] == HIDWORD(result))
    {
      v7 = *(v6 + 2);
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      if (*(v8 + 232) <= v7 && *(v8 + 240) > v7)
      {
        v10 = **(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v11 = *(v8 + 344);

        os_unfair_lock_lock(v11);
        ecs_stack_allocator_push_snapshot(*(v10 + 32));

        sub_1AF682880(v10, v8, v7, a3, a4, a5);

        if (!v5)
        {
          ecs_stack_allocator_pop_snapshot(*(v10 + 32));
        }

        os_unfair_lock_unlock(*(v8 + 344));
      }
    }
  }

  return result;
}

unint64_t sub_1AF67022C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v9 = *(v8 + 2);
      v10 = *(*(a2 + 144) + 8 * *v8 + 32);
      if (*(v10 + 232) <= v9 && *(v10 + 240) > v9)
      {
        v12 = **(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v13 = *(v10 + 344);

        os_unfair_lock_lock(v13);
        ecs_stack_allocator_push_snapshot(*(v12 + 32));

        a7(v12, v10, v9, a3, a4, a5, a6);

        if (!v7)
        {
          ecs_stack_allocator_pop_snapshot(*(v12 + 32));
        }

        os_unfair_lock_unlock(*(v10 + 344));
      }
    }
  }

  return result;
}

uint64_t sub_1AF670384(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_1AF66EEF8(*a1, a2);
  if (!v2)
  {
    if (v7)
    {
      if (v5 >> 62)
      {
        return sub_1AFDFE108();
      }

      else
      {
        return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v32 = a1;
      v34 = (a2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
      v33 = result;
      v8 = result;
LABEL_6:
      v9 = v5 & 0xFFFFFFFFFFFFFF8;
      v10 = v5 & 0xC000000000000001;
      v11 = v5 >> 62;
      v12 = v8;
      while (1)
      {
        v13 = v11 ? sub_1AFDFE108() : *(v9 + 16);
        v8 = v12 + 1;
        if (v12 + 1 == v13)
        {
          return v33;
        }

        v14 = v5;
        if (v10)
        {
          v15 = MEMORY[0x1B2719C70](v12 + 1, v5);
        }

        else
        {
          v15 = *(v5 + 8 * v12 + 40);
        }

        v16 = *&v15[OBJC_IVAR____TtC3VFX9VFXEffect_effectID];
        v17 = v15[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4];
        v18 = *v34;
        v19 = *(v34 + 4);

        if (v17)
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        if (v19)
        {
          v21 = 0;
        }

        else
        {
          v21 = v18;
        }

        v12 = v8;
        v5 = v14;
        if (v20 != v21)
        {
          v22 = v33;
          if (v33 != v8)
          {
            if (v10)
            {
              v23 = MEMORY[0x1B2719C70]();
              v24 = MEMORY[0x1B2719C70](v8, v14);
            }

            else
            {
              v25 = *(v14 + 8 * v8 + 32);
              v23 = *(v14 + 8 * v33 + 32);
              v24 = v25;
            }

            v26 = v24;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
            {
              v5 = sub_1AFC28858(v14);
              v27 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v27) = 0;
            }

            v28 = v5 & 0xFFFFFFFFFFFFFF8;
            v29 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v26;

            if ((v5 & 0x8000000000000000) != 0 || v27)
            {
              v5 = sub_1AFC28858(v5);
              v28 = v5 & 0xFFFFFFFFFFFFFF8;
            }

            v30 = v28 + 8 * v8;
            v31 = *(v30 + 32);
            *(v30 + 32) = v23;

            *v32 = v5;
            v22 = v33;
          }

          v33 = v22 + 1;
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF6705C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v13)
  {
    v21 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v22)
    {
      swift_retain_n();
      v23 = a3;
      swift_retain_n();
      v24 = v23;
      pthread_mutex_lock(v22);
      if (*(a1 + v12))
      {
LABEL_7:

        v25 = a3;

        v26 = sub_1AF6705C4(a1, a2, v25, a4, a5 & 1);
        if (v6)
        {

          v27 = *(a1 + v21);
          if (v27)
          {
            pthread_mutex_unlock(v27);
          }

          else
          {
            [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
          }

          goto LABEL_28;
        }

        a5 = v26;

        v40 = *(a1 + v21);
        if (v40)
        {
          pthread_mutex_unlock(v40);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
      v34 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      v35 = a3;
      swift_retain_n();
      v36 = v35;
      [v34 lock];
      if (*(a1 + v12))
      {
        goto LABEL_7;
      }
    }

    sub_1AF65E3F4();
    v37 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    v48 = v21;
    if (v37)
    {
      v38 = *(v37 + 80);
      swift_unknownObjectWeakLoadStrong();
      v39 = *(v37 + 56);
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    v53 = a5;
    swift_unknownObjectUnownedInit();
    v50[0] = a2;
    v51 = v39;
    swift_unknownObjectUnownedAssign();
    v41 = a3;

    swift_unownedRetain();
    swift_unknownObjectRelease();
    v52 = v38;
    sub_1AF6782C4(0, &unk_1ED7269B0, &type metadata for Entity, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    v43 = OBJC_IVAR____TtC3VFX15VFXEntityObject_entity;
    *(inited + 32) = *&v41[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
    v54 = 1;
    sub_1AF6C6C58(inited, a4, 0, 0x100000000uLL, 1);
    v45 = v44;
    swift_setDeallocating();
    if (*(v45 + 16))
    {
      a5 = *(v45 + 32);
    }

    else
    {
      a5 = 0;
    }

    if ((v53 & 1) == 0)
    {
      sub_1AF6C8594(*&v41[v43]);
    }

    sub_1AF579490(v50);
    if (v38)
    {
      sub_1AF6C5E30(1);
    }

    sub_1AF66DB74(a1);
    v46 = *(a1 + v48);
    if (v46)
    {
      pthread_mutex_unlock(v46);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_43;
  }

  v14 = *(v13 + 144);
  swift_retain_n();
  v49 = a3;
  v15 = a3;
  swift_retain_n();
  v16 = v15;

  v17 = pthread_self();
  if (pthread_equal(v14, v17))
  {
    sub_1AF65E3F4();
    v18 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    v53 = a5;
    if (v18)
    {
      v19 = *(v18 + 80);
      swift_unknownObjectWeakLoadStrong();
      v20 = *(v18 + 56);
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    swift_unknownObjectUnownedInit();
    v50[0] = a2;
    v51 = v20;
    swift_unknownObjectUnownedAssign();
    v29 = v16;

    swift_unownedRetain();
    swift_unknownObjectRelease();
    v52 = v19;
    sub_1AF6782C4(0, &unk_1ED7269B0, &type metadata for Entity, MEMORY[0x1E69E6F90]);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1AFE431C0;
    v31 = OBJC_IVAR____TtC3VFX15VFXEntityObject_entity;
    *(v30 + 32) = *&v29[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
    v54 = 1;
    sub_1AF6C6C58(v30, a4, 0, 0x100000000uLL, 1);
    v33 = v32;
    swift_setDeallocating();
    if (*(v33 + 16))
    {
      a5 = *(v33 + 32);
    }

    else
    {
      a5 = 0;
    }

    if ((v53 & 1) == 0)
    {
      sub_1AF6C8594(*&v29[v31]);
    }

    sub_1AF579490(v50);
    if (v19)
    {
      sub_1AF6C5E30(1);
    }

    sub_1AF66DB74(a1);

    a3 = v49;
    goto LABEL_44;
  }

  v28 = v16;

  a5 = sub_1AF6CF398(v13, a2, v28, a4, a5 & 1);

  a3 = v49;
  if (!v6)
  {
LABEL_44:

    return a5;
  }

LABEL_28:

  return a5;
}

uint64_t sub_1AF670BD0(uint64_t a1, char *a2)
{
  v3 = a2;
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v6)
  {
    v11 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v12)
    {
      v13 = a2;
      pthread_mutex_lock(v12);
      if (*(a1 + v5))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v18 = a2;
      [v17 lock];
      if (*(a1 + v5))
      {
LABEL_8:
        v3 = v3;
        v14 = sub_1AF670BD0(a1, v3);
        if (v2)
        {

          v15 = *(a1 + v11);
          if (v15)
          {
            pthread_mutex_unlock(v15);
          }

          else
          {
            [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
          }

          return v5;
        }

        v5 = v14;

        v20 = *(a1 + v11);
        if (!v20)
        {
          goto LABEL_17;
        }

        goto LABEL_37;
      }
    }

    sub_1AF65E3F4();
    v19 = *&v3[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
    if (!swift_weakLoadStrong())
    {
      if (*&v3[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v24 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v30 = v24;
          swift_once();
          v24 = v30;
        }

        v31 = 0;
        sub_1AF0D4F18(v24, &v31, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    v25 = sub_1AF3CB7C4(v19);
    v27 = v26;

    if (v27)
    {
      v5 = v25;
    }

    else
    {
      v5 = 0;
    }

    sub_1AF66DB74(a1);
    v20 = *(a1 + v11);
    if (!v20)
    {
LABEL_17:
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
LABEL_38:

      return v5;
    }

LABEL_37:
    pthread_mutex_unlock(v20);
    goto LABEL_38;
  }

  v7 = *(v6 + 144);
  v8 = a2;

  v9 = pthread_self();
  if (pthread_equal(v7, v9))
  {
    sub_1AF65E3F4();
    v10 = *&v8[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
    if (!swift_weakLoadStrong())
    {
      if (*&v8[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v21 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v29 = v21;
          swift_once();
          v21 = v29;
        }

        v31 = 0;
        sub_1AF0D4F18(v21, &v31, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    v5 = sub_1AF3CB7C4(v10);
    v23 = v22;

    if (!v23)
    {
      v5 = 0;
    }

    sub_1AF66DB74(a1);
  }

  else
  {
    v16 = v8;
    v5 = sub_1AF6CF5D8(v6, v16);
  }

  return v5;
}

uint64_t sub_1AF671054(uint64_t a1, char *a2)
{
  v3 = a2;
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v6)
  {
    v17 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v18 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v18)
    {
      v19 = a2;
      pthread_mutex_lock(v18);
      if (*(a1 + v5))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v23 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v24 = a2;
      [v23 lock];
      if (*(a1 + v5))
      {
LABEL_12:
        v3 = v3;
        v20 = sub_1AF671054(a1, v3);
        if (v2)
        {

          v21 = *(a1 + v17);
          if (v21)
          {
LABEL_14:
            pthread_mutex_unlock(v21);
LABEL_32:

            return v5;
          }
        }

        else
        {
          v5 = v20;

          v21 = *(a1 + v17);
          if (v21)
          {
            goto LABEL_14;
          }
        }

LABEL_31:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_32;
      }
    }

    sub_1AF65E3F4();
    v25 = *&v3[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
    v26 = *&v3[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
    if (v25 == -1 && v26 == 0)
    {
      v5 = 0;
    }

    else
    {
      v28 = v25 | (v26 << 32);

      v29 = sub_1AF3C9078(v28);
      v31 = v30;

      if (v31)
      {
        v5 = v29;
      }

      else
      {
        v5 = 0;
      }
    }

    sub_1AF66DB74(a1);
    v21 = *(a1 + v17);
    if (v21)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

  v7 = *(v6 + 144);
  v8 = a2;

  v9 = pthread_self();
  if (pthread_equal(v7, v9))
  {
    sub_1AF65E3F4();
    v10 = *&v8[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
    v11 = *&v8[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
    if (v10 == -1 && v11 == 0)
    {
      v5 = 0;
    }

    else
    {
      v13 = v10 | (v11 << 32);

      v14 = sub_1AF3C9078(v13);
      v16 = v15;

      if (v16)
      {
        v5 = v14;
      }

      else
      {
        v5 = 0;
      }
    }

    sub_1AF66DB74(a1);
  }

  else
  {
    v22 = v8;
    v5 = sub_1AF6CF7F4(v6, v22);
  }

  return v5;
}

uint64_t sub_1AF671300(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v11)
  {
    v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v16)
    {
      swift_retain_n();
      pthread_mutex_lock(v16);
      if (*(a1 + v10))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v23 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      [v23 lock];
      if (*(a1 + v10))
      {
LABEL_7:

        v17 = sub_1AF671300(a1, a2, a3, a4);
        if (v5)
        {

          v19 = *(a1 + v15);
          if (v19)
          {
LABEL_9:
            pthread_mutex_unlock(v19);
          }

LABEL_16:
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        v24 = v17;
        v25 = v18;

        v27 = v24;
        v28 = v25;
        v26 = *(a1 + v15);
        if (v26)
        {
LABEL_20:
          pthread_mutex_unlock(v26);
LABEL_23:

          return v27;
        }

LABEL_22:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_23;
      }
    }

    sub_1AF65E3F4();
    sub_1AFCEC81C(a3, &v27);
    if (v5)
    {
      sub_1AF66DB74(a1);
      v19 = *(a1 + v15);
      if (v19)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    sub_1AF66DB74(a1);
    v26 = *(a1 + v15);
    if (v26)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v12 = *(v11 + 144);
  swift_retain_n();

  v13 = pthread_self();
  if (pthread_equal(v12, v13))
  {
    sub_1AF65E3F4();
    sub_1AFCEC81C(a3, &v27);
    if (v4)
    {
      sub_1AF66DB74(a1);
    }

    sub_1AF66DB74(a1);

    return v27;
  }

  v20 = sub_1AF6CF918(v11, a2, a3);
  v22 = v21;

  if (!v4)
  {
    v27 = v20;
    v28 = v22;
    return v27;
  }

  return result;
}

uint64_t sub_1AF671594(uint64_t a1, char *a2)
{
  v3 = a2;
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v6)
  {
    v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v14)
    {
      v16 = a2;
      pthread_mutex_lock(v14);
      if (*(a1 + v5))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v20 = a2;
      [(pthread_mutex_t *)v14 lock];
      if (*(a1 + v5))
      {
LABEL_10:
        v3 = v3;
        v17 = sub_1AF671594(a1, v3);
        if (v2)
        {

          v18 = *(a1 + v15);
          if (v18)
          {
LABEL_12:
            pthread_mutex_unlock(v18);
LABEL_28:

            return v14 & 1;
          }
        }

        else
        {
          LOBYTE(v14) = v17;

          v18 = *(a1 + v15);
          if (v18)
          {
            goto LABEL_12;
          }
        }

LABEL_27:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_28;
      }
    }

    sub_1AF65E3F4();
    v21 = *&v3[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
    v22 = *&v3[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
    if (v21 == -1 && v22 == 0)
    {
      LOBYTE(v14) = 0;
    }

    else
    {
      v24 = v21 | (v22 << 32);

      LOBYTE(v14) = sub_1AF67CACC(&type metadata for OrthographicCamera, &off_1F2511C70, v24);
    }

    sub_1AF66DB74(a1);
    v18 = *(a1 + v15);
    if (v18)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  v7 = *(v6 + 144);
  v8 = a2;

  v9 = pthread_self();
  if (pthread_equal(v7, v9))
  {
    sub_1AF65E3F4();
    v10 = *&v8[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
    v11 = *&v8[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
    if (v10 == -1 && v11 == 0)
    {
      LOBYTE(v14) = 0;
    }

    else
    {
      v13 = v10 | (v11 << 32);

      LOBYTE(v14) = sub_1AF67CACC(&type metadata for OrthographicCamera, &off_1F2511C70, v13);
    }

    sub_1AF66DB74(a1);
  }

  else
  {
    v19 = v8;
    LOBYTE(v14) = sub_1AF6CFA44(v6, v19);
  }

  return v14 & 1;
}

uint64_t sub_1AF671834(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v6)
  {
    v11 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v12)
    {
      v13 = a2;
      pthread_mutex_lock(v12);
      if (*(a1 + v5))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v19 = a2;
      [v18 lock];
      if (*(a1 + v5))
      {
LABEL_7:
        v3 = v3;
        v14 = sub_1AF671834(a1, v3);
        if (v2)
        {

          v15 = *(a1 + v11);
          if (v15)
          {
LABEL_9:
            pthread_mutex_unlock(v15);
LABEL_17:

            return v10 & 1;
          }

LABEL_16:
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
          goto LABEL_17;
        }

        v21 = v14;

        v23 = v21 & 1;
        v22 = *(a1 + v11);
        if (v22)
        {
LABEL_20:
          pthread_mutex_unlock(v22);
LABEL_23:

          v10 = v23;
          return v10 & 1;
        }

LABEL_22:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_23;
      }
    }

    sub_1AF65E3F4();
    sub_1AFC7ADF0(v3, &v23);
    if (v2)
    {
      sub_1AF66DB74(a1);
      v15 = *(a1 + v11);
      if (v15)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    sub_1AF66DB74(a1);
    v22 = *(a1 + v11);
    if (v22)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v7 = *(v6 + 144);
  v8 = a2;

  v9 = pthread_self();
  if (pthread_equal(v7, v9))
  {
    sub_1AF65E3F4();
    sub_1AFC7ADF0(v8, &v23);
    sub_1AF66DB74(a1);

    if (!v2)
    {
      v10 = v23;
    }
  }

  else
  {
    v16 = v8;
    v17 = sub_1AF6CFB5C(v6, v16);

    if (!v2)
    {
      v23 = v17 & 1;
      v10 = v17 & 1;
    }
  }

  return v10 & 1;
}

uint64_t sub_1AF671A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v12)
  {
    v18 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v17)
    {
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      pthread_mutex_lock(v17);
      if (*(a1 + v11))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      [(pthread_mutex_t *)v17 lock];
      if (*(a1 + v11))
      {
LABEL_7:

        v19 = sub_1AF671A7C(a1, a2, a3, a4, a5 & 0xFFFFFFFFFFLL);
        if (v5)
        {

          v20 = *(a1 + v18);
          if (v20)
          {
            pthread_mutex_unlock(v20);
          }

          else
          {
            [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
          }

          goto LABEL_25;
        }

        LOBYTE(v17) = v19;

        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }

    sub_1AF65E3F4();
    v21 = sub_1AF6AC0F4(a3, a4, a5 & 0xFFFFFFFFFFLL, 1);
    if (v22)
    {
      LOBYTE(v17) = 0;
    }

    else
    {
      LOBYTE(v17) = sub_1AF65AE88(v21);
    }

    sub_1AF66DB74(a1);
    v23 = *(a1 + v18);
    if (!v23)
    {
LABEL_17:
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
LABEL_21:

LABEL_22:

      goto LABEL_25;
    }

LABEL_20:
    pthread_mutex_unlock(v23);
    goto LABEL_21;
  }

  v13 = *(v12 + 144);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  v14 = pthread_self();
  if (pthread_equal(v13, v14))
  {
    sub_1AF65E3F4();
    v15 = sub_1AF6AC0F4(a3, a4, a5 & 0xFFFFFFFFFFLL, 1);
    if (v16)
    {
      LOBYTE(v17) = 0;
    }

    else
    {
      LOBYTE(v17) = sub_1AF65AE88(v15);
    }

    sub_1AF66DB74(a1);

    goto LABEL_22;
  }

  LOBYTE(v17) = sub_1AF6CFC74(v12, a2, a3, a4, a5 & 0xFFFFFFFFFFLL);

  swift_bridgeObjectRelease_n();
LABEL_25:

  return v17 & 1;
}

uint64_t sub_1AF671D7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v6)
  {
    v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v14)
    {
      v16 = a2;
      pthread_mutex_lock(v14);
      if (*(a1 + v5))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v20 = a2;
      [(pthread_mutex_t *)v14 lock];
      if (*(a1 + v5))
      {
LABEL_7:
        v3 = v3;
        v17 = sub_1AF671D7C(a1, v3);
        if (v2)
        {

          v18 = *(a1 + v15);
          if (v18)
          {
            goto LABEL_21;
          }
        }

        else
        {
          LOBYTE(v14) = v17;

          v18 = *(a1 + v15);
          if (v18)
          {
LABEL_21:
            pthread_mutex_unlock(v18);
            goto LABEL_22;
          }
        }

LABEL_17:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
LABEL_22:

        return v14 & 1;
      }
    }

    sub_1AF65E3F4();
    v21 = sub_1AFC7BFF8();
    if (v22)
    {
      v23 = v21;

      v24 = sub_1AF67CACC(&type metadata for Hidden, &off_1F25296F8, v23);

      LOBYTE(v14) = !v24;
    }

    else
    {
      LOBYTE(v14) = *(v3 + OBJC_IVAR____TtC3VFX9VFXEffect__enabled);
    }

    sub_1AF66DB74(a1);
    v18 = *(a1 + v15);
    if (v18)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v7 = *(v6 + 144);
  v8 = a2;

  v9 = pthread_self();
  if (pthread_equal(v7, v9))
  {
    sub_1AF65E3F4();
    v10 = sub_1AFC7BFF8();
    if (v11)
    {
      v12 = v10;

      v13 = sub_1AF67CACC(&type metadata for Hidden, &off_1F25296F8, v12);

      LOBYTE(v14) = !v13;
    }

    else
    {
      LOBYTE(v14) = v8[OBJC_IVAR____TtC3VFX9VFXEffect__enabled];
    }

    sub_1AF66DB74(a1);
  }

  else
  {
    v19 = v8;
    LOBYTE(v14) = sub_1AF6CFD7C(v6, v19);
  }

  return v14 & 1;
}

uint64_t sub_1AF67200C(uint64_t a1, void *a2, char *a3)
{
  v7 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v8 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v8)
  {
    v18 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v19)
    {
      v20 = a2;
      v21 = a3;
      v22 = v20;
      v23 = v21;
      pthread_mutex_lock(v19);
      if (*(a1 + v7))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v30 = a2;
      v31 = a3;
      v32 = v30;
      v33 = v31;
      [(pthread_mutex_t *)v19 lock];
      if (*(a1 + v7))
      {
LABEL_9:
        v24 = a2;
        v25 = a3;
        v26 = sub_1AF67200C(a1, v24, v25);
        if (v3)
        {

          v27 = *(a1 + v18);
          if (v27)
          {
            goto LABEL_21;
          }
        }

        else
        {
          LOBYTE(v19) = v26;

          v27 = *(a1 + v18);
          if (v27)
          {
LABEL_21:
            pthread_mutex_unlock(v27);
LABEL_29:

            goto LABEL_30;
          }
        }

        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_29;
      }
    }

    sub_1AF65E3F4();
    v34 = *&a3[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_effect];
    if (v34)
    {
      v35 = (v34 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
      if (*(v35 + 4) != 1)
      {
        v34 = *v35;
        v36 = (v34 == 0) << 33;
        goto LABEL_24;
      }

      v34 = 0;
    }

    v36 = 0x200000000;
LABEL_24:
    LOBYTE(v19) = sub_1AF6F6ACC(v36 | v34);
    sub_1AF66DB74(a1);
    v37 = *(a1 + v18);
    if (v37)
    {
      pthread_mutex_unlock(v37);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_30;
  }

  v9 = *(v8 + 144);
  v10 = a2;
  v11 = a3;
  v12 = v10;
  v13 = v11;

  v14 = pthread_self();
  if (pthread_equal(v9, v14))
  {
    sub_1AF65E3F4();
    v15 = *&v13[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_effect];
    if (v15)
    {
      v16 = (v15 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
      if (*(v16 + 4) != 1)
      {
        v15 = *v16;
        v17 = (v15 == 0) << 33;
        goto LABEL_19;
      }

      v15 = 0;
    }

    v17 = 0x200000000;
LABEL_19:
    LOBYTE(v19) = sub_1AF6F6ACC(v17 | v15);
    sub_1AF66DB74(a1);

    goto LABEL_30;
  }

  v28 = v12;
  v29 = v13;
  LOBYTE(v19) = sub_1AF6CFE90(v8, v28, v29);

LABEL_30:
  return v19 & 1;
}

uint64_t sub_1AF67235C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1AF6723CC(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AF6723CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF672430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1AF6723CC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AF67248C(uint64_t a1, uint64_t a2)
{
  sub_1AF6723CC(0, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF672520(uint64_t a1, uint64_t a2)
{
  sub_1AF6723CC(0, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1AF6725C4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v8 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v8)
  {
    v12 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v13)
    {
      swift_retain_n();
      v14 = a3;
      pthread_mutex_lock(v13);
      if (*(a1 + v7))
      {
LABEL_7:

        v15 = a3;
        v16 = sub_1AF6725C4(a1, a2, v15);
        if (v3)
        {

          v17 = *(a1 + v12);
          if (v17)
          {
            pthread_mutex_unlock(v17);
          }

          else
          {
            [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
          }

          goto LABEL_23;
        }

        v24 = v16;

        v29 = v24 & 1;
        v25 = *(a1 + v12);
        if (v25)
        {
          pthread_mutex_unlock(v25);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

LABEL_33:

        return v29;
      }
    }

    else
    {
      v21 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      v22 = a3;
      [v21 lock];
      if (*(a1 + v7))
      {
        goto LABEL_7;
      }
    }

    sub_1AF65E3F4();
    sub_1AFCECEA8(a2, a3, &v29);
    if (v3)
    {
      sub_1AF66DB74(a1);
      v23 = *(a1 + v12);
      if (v23)
      {
        pthread_mutex_unlock(v23);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_23;
    }

    sub_1AF66DB74(a1);
    v28 = *(a1 + v12);
    if (v28)
    {
      pthread_mutex_unlock(v28);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_33;
  }

  v9 = *(v8 + 144);
  swift_retain_n();
  v10 = a3;

  v11 = pthread_self();
  if (pthread_equal(v9, v11))
  {
    sub_1AF65E3F4();
    sub_1AFCECEA8(a2, v10, &v29);
    if (v3)
    {
      sub_1AF66DB74(a1);

LABEL_23:

      goto LABEL_24;
    }

    sub_1AF66DB74(a1);

    return v29;
  }

  else
  {

    v18 = v10;
    v19 = sub_1AF6CFFC0(v8, a2, v18);
    if (v3)
    {

LABEL_24:

      return v20;
    }

    v26 = v19;

    v29 = v26;
    return v26;
  }
}

void sub_1AF672928(uint64_t a1, char *a2)
{
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v6)
  {
    v7 = *(v6 + 144);
    v8 = a2;

    v9 = pthread_self();
    if (pthread_equal(v7, v9))
    {
      sub_1AF65E3F4();
      v10 = *&v8[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v11 = *&v8[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      if (v10 != -1 || v11 != 0)
      {
        v13 = v10 | (v11 << 32);

        sub_1AF3C9244(v13, &v27);
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v19 = v8;
      sub_1AF6D00E0(v6, v19);
    }

    return;
  }

  v14 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v15)
  {
    v16 = a2;
    pthread_mutex_lock(v15);
    if (*(a1 + v5))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v20 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v21 = a2;
    [v20 lock];
    if (*(a1 + v5))
    {
LABEL_11:
      v17 = a2;
      sub_1AF672928(a1, v17);
      if (v2)
      {

        v18 = *(a1 + v14);
        if (v18)
        {
          goto LABEL_23;
        }
      }

      else
      {

        v18 = *(a1 + v14);
        if (v18)
        {
LABEL_23:
          pthread_mutex_unlock(v18);
LABEL_30:

          return;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_30;
    }
  }

  sub_1AF65E3F4();
  v22 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v23 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  if (v22 != -1 || v23 != 0)
  {
    v25 = v22 | (v23 << 32);

    sub_1AF3C9244(v25, &v28);
  }

  sub_1AF66DB74(a1);
  v26 = *(a1 + v14);
  if (v26)
  {
    pthread_mutex_unlock(v26);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }
}

void sub_1AF672D50(uint64_t a1, char *a2, void (*a3)(uint64_t, char *), void (*a4)(__int128 *__return_ptr, uint64_t), void (*a5)(uint64_t, char *))
{
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v10)
  {
    v12 = *(v10 + 144);
    v13 = a2;

    v14 = pthread_self();
    if (pthread_equal(v12, v14))
    {
      sub_1AF65E3F4();
      v15 = *&v13[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v16 = *&v13[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      if (v15 != -1 || v16 != 0)
      {
        v18 = v15 | (v16 << 32);

        a4(&v33, v18);
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v25 = v13;
      a3(v10, v25);
    }

    return;
  }

  v20 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v21 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v21)
  {
    v22 = a2;
    pthread_mutex_lock(v21);
    if (*(a1 + v9))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v26 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v27 = a2;
    [v26 lock];
    if (*(a1 + v9))
    {
LABEL_11:
      v23 = a2;
      a5(a1, v23);
      if (v5)
      {

        v24 = *(a1 + v20);
        if (v24)
        {
          goto LABEL_24;
        }
      }

      else
      {

        v24 = *(a1 + v20);
        if (v24)
        {
LABEL_24:
          pthread_mutex_unlock(v24);
LABEL_29:

          return;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_29;
    }
  }

  sub_1AF65E3F4();
  v28 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v29 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  if (v28 != -1 || v29 != 0)
  {
    v31 = v28 | (v29 << 32);

    a4(&v34, v31);
  }

  sub_1AF66DB74(a1);
  v32 = *(a1 + v20);
  if (v32)
  {
    pthread_mutex_unlock(v32);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }
}

void sub_1AF6730AC(uint64_t a1, char *a2)
{
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v6)
  {
    v7 = *(v6 + 144);
    v8 = a2;

    v9 = pthread_self();
    if (pthread_equal(v7, v9))
    {
      sub_1AF65E3F4();
      v10 = *&v8[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v11 = *&v8[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      if (v10 != -1 || v11 != 0)
      {
        v13 = v10 | (v11 << 32);

        sub_1AF3C9FF4(v13);
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v19 = v8;
      sub_1AF6D0434(v6, v19);
    }

    return;
  }

  v14 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v15)
  {
    v16 = a2;
    pthread_mutex_lock(v15);
    if (*(a1 + v5))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v20 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v21 = a2;
    [v20 lock];
    if (*(a1 + v5))
    {
LABEL_11:
      v17 = a2;
      sub_1AF6730AC(a1, v17);
      if (v2)
      {

        v18 = *(a1 + v14);
        if (v18)
        {
          goto LABEL_24;
        }
      }

      else
      {

        v18 = *(a1 + v14);
        if (v18)
        {
LABEL_24:
          pthread_mutex_unlock(v18);
LABEL_29:

          return;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_29;
    }
  }

  sub_1AF65E3F4();
  v22 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v23 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  if (v22 != -1 || v23 != 0)
  {
    v25 = v22 | (v23 << 32);

    sub_1AF3C9FF4(v25);
  }

  sub_1AF66DB74(a1);
  v26 = *(a1 + v14);
  if (v26)
  {
    pthread_mutex_unlock(v26);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }
}

void sub_1AF673390(uint64_t a1, char *a2)
{
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v6)
  {
    v7 = *(v6 + 144);
    v8 = a2;

    v9 = pthread_self();
    if (pthread_equal(v7, v9))
    {
      sub_1AF65E3F4();
      v10 = *&v8[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v11 = *&v8[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      if (v10 != -1 || v11 != 0)
      {
        v13 = v10 | (v11 << 32);

        sub_1AF3CA0E0(v13);
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v19 = v8;
      sub_1AF6D0568(v6, v19);
    }

    return;
  }

  v14 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v15)
  {
    v16 = a2;
    pthread_mutex_lock(v15);
    if (*(a1 + v5))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v20 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v21 = a2;
    [v20 lock];
    if (*(a1 + v5))
    {
LABEL_11:
      v17 = a2;
      sub_1AF673390(a1, v17);
      if (v2)
      {

        v18 = *(a1 + v14);
        if (v18)
        {
          goto LABEL_24;
        }
      }

      else
      {

        v18 = *(a1 + v14);
        if (v18)
        {
LABEL_24:
          pthread_mutex_unlock(v18);
LABEL_29:

          return;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_29;
    }
  }

  sub_1AF65E3F4();
  v22 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v23 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  if (v22 != -1 || v23 != 0)
  {
    v25 = v22 | (v23 << 32);

    sub_1AF3CA0E0(v25);
  }

  sub_1AF66DB74(a1);
  v26 = *(a1 + v14);
  if (v26)
  {
    pthread_mutex_unlock(v26);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }
}

float sub_1AF67367C(uint64_t a1, char *a2)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      v11 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v12 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      v3 = 0.0;
      if (v11 != -1 || v12 != 0)
      {
        v14 = v11 | (v12 << 32);

        sub_1AF3CEE78(v14, v30);

        if (v31 != 2)
        {
          v3 = (v30[0] * 180.0) / 3.1416;
        }
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v21 = v9;
      v3 = sub_1AF6D06A0(v7, v21);
    }

    return v3;
  }

  v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v16)
  {
    v17 = a2;
    pthread_mutex_lock(v16);
    if (*(a1 + v6))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v23 = a2;
    [v22 lock];
    if (*(a1 + v6))
    {
LABEL_12:
      v18 = a2;
      sub_1AF67367C(a1, v18);
      if (v2)
      {

        v20 = *(a1 + v15);
        if (v20)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v3 = v19;

        v20 = *(a1 + v15);
        if (v20)
        {
LABEL_26:
          pthread_mutex_unlock(v20);
LABEL_31:

          return v3;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_31;
    }
  }

  sub_1AF65E3F4();
  v24 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v25 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  v3 = 0.0;
  if (v24 != -1 || v25 != 0)
  {
    v27 = v24 | (v25 << 32);

    sub_1AF3CEE78(v27, v30);

    if (v31 != 2)
    {
      v3 = (v30[0] * 180.0) / 3.1416;
    }
  }

  sub_1AF66DB74(a1);
  v28 = *(a1 + v15);
  if (v28)
  {
    pthread_mutex_unlock(v28);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return v3;
}

float sub_1AF673978(uint64_t a1, char *a2)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      v11 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v12 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      v3 = 0.0;
      if (v11 != -1 || v12 != 0)
      {
        v14 = v11 | (v12 << 32);

        sub_1AF3CEE78(v14, v30);

        if (v32 == 2)
        {
          v3 = 0.0;
        }

        else
        {
          v3 = v31;
        }
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v21 = v9;
      v3 = sub_1AF6D07E0(v7, v21);
    }

    return v3;
  }

  v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v16)
  {
    v17 = a2;
    pthread_mutex_lock(v16);
    if (*(a1 + v6))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v23 = a2;
    [v22 lock];
    if (*(a1 + v6))
    {
LABEL_13:
      v18 = a2;
      sub_1AF673978(a1, v18);
      if (v2)
      {

        v20 = *(a1 + v15);
        if (v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v3 = v19;

        v20 = *(a1 + v15);
        if (v20)
        {
LABEL_28:
          pthread_mutex_unlock(v20);
LABEL_33:

          return v3;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_33;
    }
  }

  sub_1AF65E3F4();
  v24 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v25 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  v3 = 0.0;
  if (v24 != -1 || v25 != 0)
  {
    v27 = v24 | (v25 << 32);

    sub_1AF3CEE78(v27, v30);

    if (v32 == 2)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = v31;
    }
  }

  sub_1AF66DB74(a1);
  v28 = *(a1 + v15);
  if (v28)
  {
    pthread_mutex_unlock(v28);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return v3;
}

float sub_1AF673C44(uint64_t a1, char *a2)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      v11 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v12 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      v3 = 0.0;
      if (v11 != -1 || v12 != 0)
      {
        v14 = v11 | (v12 << 32);

        sub_1AF3CEE78(v14, &v30);

        if (v32 == 2)
        {
          v3 = 0.0;
        }

        else
        {
          v3 = v31;
        }
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v21 = v9;
      v3 = sub_1AF6D0908(v7, v21);
    }

    return v3;
  }

  v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v16)
  {
    v17 = a2;
    pthread_mutex_lock(v16);
    if (*(a1 + v6))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v23 = a2;
    [v22 lock];
    if (*(a1 + v6))
    {
LABEL_13:
      v18 = a2;
      sub_1AF673C44(a1, v18);
      if (v2)
      {

        v20 = *(a1 + v15);
        if (v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v3 = v19;

        v20 = *(a1 + v15);
        if (v20)
        {
LABEL_28:
          pthread_mutex_unlock(v20);
LABEL_33:

          return v3;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_33;
    }
  }

  sub_1AF65E3F4();
  v24 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v25 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  v3 = 0.0;
  if (v24 != -1 || v25 != 0)
  {
    v27 = v24 | (v25 << 32);

    sub_1AF3CEE78(v27, &v30);

    if (v32 == 2)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = v31;
    }
  }

  sub_1AF66DB74(a1);
  v28 = *(a1 + v15);
  if (v28)
  {
    pthread_mutex_unlock(v28);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return v3;
}

float sub_1AF673F10(uint64_t a1, char *a2)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      v11 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v12 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      v3 = 0.0;
      if (v11 != -1 || v12 != 0)
      {
        v14 = v11 | (v12 << 32);

        sub_1AF3CEE78(v14, v30);

        if (v32 == 2)
        {
          v3 = 0.0;
        }

        else
        {
          v3 = v31;
        }
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v21 = v9;
      v3 = sub_1AF6D0A30(v7, v21);
    }

    return v3;
  }

  v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v16)
  {
    v17 = a2;
    pthread_mutex_lock(v16);
    if (*(a1 + v6))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v23 = a2;
    [v22 lock];
    if (*(a1 + v6))
    {
LABEL_13:
      v18 = a2;
      sub_1AF673F10(a1, v18);
      if (v2)
      {

        v20 = *(a1 + v15);
        if (v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v3 = v19;

        v20 = *(a1 + v15);
        if (v20)
        {
LABEL_28:
          pthread_mutex_unlock(v20);
LABEL_33:

          return v3;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_33;
    }
  }

  sub_1AF65E3F4();
  v24 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v25 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  v3 = 0.0;
  if (v24 != -1 || v25 != 0)
  {
    v27 = v24 | (v25 << 32);

    sub_1AF3CEE78(v27, v30);

    if (v32 == 2)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = v31;
    }
  }

  sub_1AF66DB74(a1);
  v28 = *(a1 + v15);
  if (v28)
  {
    pthread_mutex_unlock(v28);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return v3;
}

float sub_1AF6741DC(uint64_t a1, char *a2)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      v11 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v12 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      v3 = 0.0;
      if (v11 != -1 || v12 != 0)
      {
        v14 = v11 | (v12 << 32);

        sub_1AF3CEE78(v14, v30);

        if (v32 == 2)
        {
          v3 = 0.0;
        }

        else
        {
          v3 = v31;
        }
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v21 = v9;
      v3 = sub_1AF6D0B58(v7, v21);
    }

    return v3;
  }

  v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v16)
  {
    v17 = a2;
    pthread_mutex_lock(v16);
    if (*(a1 + v6))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v23 = a2;
    [v22 lock];
    if (*(a1 + v6))
    {
LABEL_13:
      v18 = a2;
      sub_1AF6741DC(a1, v18);
      if (v2)
      {

        v20 = *(a1 + v15);
        if (v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v3 = v19;

        v20 = *(a1 + v15);
        if (v20)
        {
LABEL_28:
          pthread_mutex_unlock(v20);
LABEL_33:

          return v3;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_33;
    }
  }

  sub_1AF65E3F4();
  v24 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v25 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  v3 = 0.0;
  if (v24 != -1 || v25 != 0)
  {
    v27 = v24 | (v25 << 32);

    sub_1AF3CEE78(v27, v30);

    if (v32 == 2)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = v31;
    }
  }

  sub_1AF66DB74(a1);
  v28 = *(a1 + v15);
  if (v28)
  {
    pthread_mutex_unlock(v28);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return v3;
}

float sub_1AF6744A8(uint64_t a1, char *a2)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      v11 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v12 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      v3 = 0.0;
      if (v11 != -1 || v12 != 0)
      {
        v14 = v11 | (v12 << 32);

        sub_1AF3CEE78(v14, v30);

        if (v32 == 2)
        {
          v3 = 0.0;
        }

        else
        {
          v3 = v31;
        }
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v21 = v9;
      v3 = sub_1AF6D0C80(v7, v21);
    }

    return v3;
  }

  v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v16)
  {
    v17 = a2;
    pthread_mutex_lock(v16);
    if (*(a1 + v6))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v23 = a2;
    [v22 lock];
    if (*(a1 + v6))
    {
LABEL_13:
      v18 = a2;
      sub_1AF6744A8(a1, v18);
      if (v2)
      {

        v20 = *(a1 + v15);
        if (v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v3 = v19;

        v20 = *(a1 + v15);
        if (v20)
        {
LABEL_28:
          pthread_mutex_unlock(v20);
LABEL_33:

          return v3;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_33;
    }
  }

  sub_1AF65E3F4();
  v24 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v25 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  v3 = 0.0;
  if (v24 != -1 || v25 != 0)
  {
    v27 = v24 | (v25 << 32);

    sub_1AF3CEE78(v27, v30);

    if (v32 == 2)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = v31;
    }
  }

  sub_1AF66DB74(a1);
  v28 = *(a1 + v15);
  if (v28)
  {
    pthread_mutex_unlock(v28);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return v3;
}

float sub_1AF674774(uint64_t a1, char *a2)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      v11 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v12 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      v3 = 0.0;
      if (v11 != -1 || v12 != 0)
      {
        v14 = v11 | (v12 << 32);

        sub_1AF3CEE78(v14, v30);

        if (v33 != 2)
        {
          v3 = v31 / v32;
        }
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v21 = v9;
      v3 = sub_1AF6D0DA8(v7, v21);
    }

    return v3;
  }

  v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v16)
  {
    v17 = a2;
    pthread_mutex_lock(v16);
    if (*(a1 + v6))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v23 = a2;
    [v22 lock];
    if (*(a1 + v6))
    {
LABEL_12:
      v18 = a2;
      sub_1AF674774(a1, v18);
      if (v2)
      {

        v20 = *(a1 + v15);
        if (v20)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v3 = v19;

        v20 = *(a1 + v15);
        if (v20)
        {
LABEL_26:
          pthread_mutex_unlock(v20);
LABEL_31:

          return v3;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_31;
    }
  }

  sub_1AF65E3F4();
  v24 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v25 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  v3 = 0.0;
  if (v24 != -1 || v25 != 0)
  {
    v27 = v24 | (v25 << 32);

    sub_1AF3CEE78(v27, v30);

    if (v33 != 2)
    {
      v3 = v31 / v32;
    }
  }

  sub_1AF66DB74(a1);
  v28 = *(a1 + v15);
  if (v28)
  {
    pthread_mutex_unlock(v28);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return v3;
}

float sub_1AF674A40(uint64_t a1, char *a2)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      v11 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v12 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      v3 = 1.0;
      if (v11 != -1 || v12 != 0)
      {
        v14 = v11 | (v12 << 32);

        v15 = sub_1AF3CEF50(v14);

        if ((v15 & 0xFF00000000) != 0x200000000)
        {
          v3 = *&v15;
        }
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v22 = v9;
      v3 = sub_1AF6D0ED0(v7, v22);
    }

    return v3;
  }

  v16 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v17)
  {
    v18 = a2;
    pthread_mutex_lock(v17);
    if (*(a1 + v6))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v23 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v24 = a2;
    [v23 lock];
    if (*(a1 + v6))
    {
LABEL_12:
      v19 = a2;
      sub_1AF674A40(a1, v19);
      if (v2)
      {

        v21 = *(a1 + v16);
        if (v21)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v3 = v20;

        v21 = *(a1 + v16);
        if (v21)
        {
LABEL_26:
          pthread_mutex_unlock(v21);
LABEL_31:

          return v3;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_31;
    }
  }

  sub_1AF65E3F4();
  v25 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v26 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  v3 = 1.0;
  if (v25 != -1 || v26 != 0)
  {
    v28 = v25 | (v26 << 32);

    v29 = sub_1AF3CEF50(v28);

    if ((v29 & 0xFF00000000) != 0x200000000)
    {
      v3 = *&v29;
    }
  }

  sub_1AF66DB74(a1);
  v30 = *(a1 + v16);
  if (v30)
  {
    pthread_mutex_unlock(v30);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return v3;
}

void sub_1AF674DBC(uint64_t a1, void *a2, float (*a3)(uint64_t, id), void (*a4)(uint64_t *__return_ptr, id), void (*a5)(uint64_t, id))
{
  v7 = a2;
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v10)
  {
    v16 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v17)
    {
      v18 = a2;
      pthread_mutex_lock(v17);
      if (*(a1 + v9))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v23 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v24 = a2;
      [v23 lock];
      if (*(a1 + v9))
      {
LABEL_6:
        v7 = v7;
        a5(a1, v7);
        if (v5)
        {

          v20 = *(a1 + v16);
          if (v20)
          {
LABEL_8:
            pthread_mutex_unlock(v20);
LABEL_15:

            return;
          }
        }

        else
        {
          v25 = v19;

          LODWORD(v26) = v25;
          v20 = *(a1 + v16);
          if (v20)
          {
            goto LABEL_8;
          }
        }

LABEL_14:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_15;
      }
    }

    sub_1AF65E3F4();
    a4(&v26, v7);
    if (v5)
    {
      sub_1AF66DB74(a1);
      v20 = *(a1 + v16);
      if (v20)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1AF66DB74(a1);
      v20 = *(a1 + v16);
      if (v20)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_14;
  }

  v12 = *(v10 + 144);
  v13 = a2;

  v14 = pthread_self();
  if (pthread_equal(v12, v14))
  {
    sub_1AF65E3F4();
    a4(&v26, v13);
    sub_1AF66DB74(a1);
  }

  else
  {
    v21 = v13;
    v22 = a3(v10, v21);

    if (!v5)
    {
      *&v26 = v22;
    }
  }
}

double sub_1AF67501C(uint64_t a1, char *a2)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      v11 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
      v12 = *&v9[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
      v3 = 0.0;
      if (v11 != -1 || v12 != 0)
      {
        v14 = v11 | (v12 << 32);

        sub_1AF3CEE78(v14, v30);

        v3 = COERCE_DOUBLE(vbic_s8(v32, vceqd_s64(v31, 2)));
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v21 = v9;
      v3 = sub_1AF6D1168(v7, v21);
    }

    return v3;
  }

  v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v16)
  {
    v17 = a2;
    pthread_mutex_lock(v16);
    if (*(a1 + v6))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v23 = a2;
    [v22 lock];
    if (*(a1 + v6))
    {
LABEL_11:
      v18 = a2;
      sub_1AF67501C(a1, v18);
      if (v2)
      {

        v20 = *(a1 + v15);
        if (v20)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v3 = v19;

        v20 = *(a1 + v15);
        if (v20)
        {
LABEL_24:
          pthread_mutex_unlock(v20);
LABEL_29:

          return v3;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_29;
    }
  }

  sub_1AF65E3F4();
  v24 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v25 = *&a2[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4];
  v3 = 0.0;
  if (v24 != -1 || v25 != 0)
  {
    v27 = v24 | (v25 << 32);

    sub_1AF3CEE78(v27, v30);

    v3 = COERCE_DOUBLE(vbic_s8(v32, vceqd_s64(v31, 2)));
  }

  sub_1AF66DB74(a1);
  v28 = *(a1 + v15);
  if (v28)
  {
    pthread_mutex_unlock(v28);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return v3;
}

void sub_1AF6752F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v6)
  {
    v10 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v11)
    {
      v12 = a2;
      pthread_mutex_lock(v11);
      if (*(a1 + v5))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v18 = a2;
      [v17 lock];
      if (*(a1 + v5))
      {
LABEL_6:
        v3 = v3;
        v13 = sub_1AF6752F8(a1, v3);
        if (v2)
        {

          v14 = *(a1 + v10);
          if (v14)
          {
LABEL_8:
            pthread_mutex_unlock(v14);
LABEL_15:

            return;
          }
        }

        else
        {
          v19 = v13;

          v20 = v19;
          v14 = *(a1 + v10);
          if (v14)
          {
            goto LABEL_8;
          }
        }

LABEL_14:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_15;
      }
    }

    sub_1AF65E3F4();
    sub_1AFC7AFFC(v3, &v20);
    if (v2)
    {
      sub_1AF66DB74(a1);
      v14 = *(a1 + v10);
      if (v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1AF66DB74(a1);
      v14 = *(a1 + v10);
      if (v14)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_14;
  }

  v7 = *(v6 + 144);
  v8 = a2;

  v9 = pthread_self();
  if (pthread_equal(v7, v9))
  {
    sub_1AF65E3F4();
    sub_1AFC7AFFC(v8, &v20);
    sub_1AF66DB74(a1);
  }

  else
  {
    v15 = v8;
    v16 = sub_1AF6D1298(v6, v15);

    if (!v2)
    {
      v20 = v16;
    }
  }
}

uint64_t sub_1AF675534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v12)
  {
    v29 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v15)
    {

      sub_1AF678488(a3, v31, sub_1AF6784F0);

      sub_1AF678488(a3, v31, sub_1AF6784F0);
      pthread_mutex_lock(v15);
      if (*(a1 + v11))
      {
LABEL_7:

        sub_1AF678488(a3, v31, sub_1AF6784F0);
        v16 = sub_1AF675534(a1, a2, a3, a4 & 0xFFFFFFFFFFLL, a5);
        if (v5)
        {
          sub_1AF67856C(a3, sub_1AF6784F0);

          goto LABEL_19;
        }

        v24 = v16;
        sub_1AF67856C(a3, sub_1AF6784F0);

        v32 = v24;
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);

      sub_1AF678488(a3, v31, sub_1AF6784F0);

      sub_1AF678488(a3, v31, sub_1AF6784F0);
      [v22 lock];
      if (*(a1 + v11))
      {
        goto LABEL_7;
      }
    }

    sub_1AF65E3F4();
    sub_1AFC82E7C(a2, a3, a4 & 0xFFFFFFFFFFLL, a5, &v32);
    if (v5)
    {
      sub_1AF66DB74(a1);
LABEL_19:
      v23 = *(a1 + v29);
      if (v23)
      {
        pthread_mutex_unlock(v23);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_26;
    }

    sub_1AF66DB74(a1);
LABEL_29:
    v28 = *(a1 + v29);
    if (v28)
    {
      pthread_mutex_unlock(v28);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

LABEL_32:

    sub_1AF67856C(a3, sub_1AF6784F0);

    sub_1AF67856C(a3, sub_1AF6784F0);
    return v32;
  }

  v13 = *(v12 + 144);

  sub_1AF678488(a3, v31, sub_1AF6784F0);

  sub_1AF678488(a3, v31, sub_1AF6784F0);

  v14 = pthread_self();
  if (pthread_equal(v13, v14))
  {
    sub_1AF65E3F4();
    sub_1AFC82E7C(a2, a3, a4 & 0xFFFFFFFFFFLL, a5, &v32);
    if (v5)
    {
      sub_1AF66DB74(a1);

LABEL_26:

      v21 = a3;
LABEL_27:
      sub_1AF67856C(v21, sub_1AF6784F0);

      return sub_1AF67856C(a3, sub_1AF6784F0);
    }

    sub_1AF66DB74(a1);

    goto LABEL_32;
  }

  v17 = *(v12 + 64);

  sub_1AF678488(a3, v31, sub_1AF6784F0);
  pthread_mutex_lock(v17);
  v18 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC82E7C(a2, a3, a4 & 0xFFFFFFFFFFLL, a5, &v30);
  if (v5)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v20 = v18(&runtime_thread_is_locked);
    --*v20;
    pthread_mutex_unlock(*(v12 + 64));
    sub_1AF67856C(a3, sub_1AF6784F0);

    v21 = a3;
    goto LABEL_27;
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v25 = v18(&runtime_thread_is_locked);
  --*v25;
  pthread_mutex_unlock(*(v12 + 64));
  sub_1AF67856C(a3, sub_1AF6784F0);

  sub_1AF67856C(a3, sub_1AF6784F0);
  v26 = v30;

  sub_1AF67856C(a3, sub_1AF6784F0);
  v32 = v26;
  return v26;
}

uint64_t sub_1AF675A8C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v13)
  {
    v19 = a2;
    v33 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v20 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v20)
    {
      v21 = a2;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v22 = v21;
      pthread_mutex_lock(v20);
      if (*(a1 + v12))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v27 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v28 = a2;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v29 = v28;
      [v27 lock];
      if (*(a1 + v12))
      {
LABEL_7:
        v23 = v19;
        v19 = v19;

        v24 = sub_1AF675A8C(a1, v19, a3, a4, a5, a6);
        if (v6)
        {

          v25 = *(a1 + v33);
          if (v25)
          {
LABEL_9:
            pthread_mutex_unlock(v25);
LABEL_21:

            goto LABEL_22;
          }
        }

        else
        {
          v7 = v24;

          v25 = *(a1 + v33);
          if (v25)
          {
            goto LABEL_9;
          }
        }

LABEL_20:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_21;
      }
    }

    sub_1AF65E3F4();
    v23 = v19;
    sub_1AFC7C4B8();
    if (v19[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4])
    {
      v30 = 0x200000000;
    }

    else
    {
      v30 = *&v19[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | ((*&v19[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] == 0) << 33);
    }

    v7 = sub_1AFC7E36C(a3, a4, a5, a6, v30);

    sub_1AF66DB74(a1);
    v25 = *(a1 + v33);
    if (v25)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v14 = *(v13 + 144);
  v15 = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v16 = v15;

  v17 = pthread_self();
  if (pthread_equal(v14, v17))
  {
    sub_1AF65E3F4();
    sub_1AFC7C4B8();
    if (v16[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4])
    {
      v18 = 0x200000000;
    }

    else
    {
      v18 = *&v16[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | ((*&v16[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] == 0) << 33);
    }

    v7 = sub_1AFC7E36C(a3, a4, a5, a6, v18);

    sub_1AF66DB74(a1);

    v23 = a2;
  }

  else
  {
    v26 = v16;

    v7 = sub_1AF6D13AC(v13, v26, a3, a4, a5, a6);

    swift_bridgeObjectRelease_n();

    v23 = a2;
  }

LABEL_22:

  swift_bridgeObjectRelease_n();
  return v7;
}

void sub_1AF675E9C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v12)
  {
    v13 = *(v12 + 144);
    v14 = a2;
    swift_bridgeObjectRetain_n();
    v15 = v14;

    v16 = pthread_self();
    if (pthread_equal(v13, v16))
    {
      sub_1AF65E3F4();
      sub_1AFC7E5E4(a3, &v34);
      if (!v5)
      {
        sub_1AF66DB74(a1);
        swift_bridgeObjectRelease_n();

        return;
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v23 = v15;

      v24 = sub_1AF6D14E4(v12, v23, a3);
      if (!v5)
      {
        v31 = v24;

        swift_bridgeObjectRelease_n();
        v34 = v31;
        return;
      }

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_26;
  }

  v33 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v17)
  {
    v18 = a2;
    swift_bridgeObjectRetain_n();
    v19 = v18;
    pthread_mutex_lock(v17);
    if (*(a1 + v11))
    {
LABEL_7:
      v20 = a2;

      v21 = sub_1AF675E9C(a1, v20, a3, a4, a5);
      if (v5)
      {

        v22 = *(a1 + v33);
        if (v22)
        {
          pthread_mutex_unlock(v22);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

LABEL_26:

        return;
      }

      v29 = v21;

      v34 = v29;
      v30 = *(a1 + v33);
      if (v30)
      {
        pthread_mutex_unlock(v30);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      swift_bridgeObjectRelease_n();

      return;
    }
  }

  else
  {
    v25 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v26 = a2;
    swift_bridgeObjectRetain_n();
    v27 = v26;
    [v25 lock];
    if (*(a1 + v11))
    {
      goto LABEL_7;
    }
  }

  sub_1AF65E3F4();
  sub_1AFC7E5E4(a3, &v34);
  if (v5)
  {
    sub_1AF66DB74(a1);
    v28 = *(a1 + v33);
    if (v28)
    {
      pthread_mutex_unlock(v28);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_26;
  }

  sub_1AF66DB74(a1);
  v32 = *(a1 + v33);
  if (v32)
  {
    pthread_mutex_unlock(v32);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_bridgeObjectRelease_n();
}

pthread_mutex_t *sub_1AF676254(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v10)
  {
    v11 = *(v10 + 144);
    v12 = a2;
    swift_bridgeObjectRetain_n();
    v13 = v12;

    v14 = pthread_self();
    if (pthread_equal(v11, v14))
    {
      sub_1AF65E3F4();
      sub_1AFC7C4B8();
      if (v13[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4])
      {
        v15 = 0x200000000;
      }

      else
      {
        v15 = *&v13[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | ((*&v13[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] == 0) << 33);
      }

      v24 = sub_1AF9075D4(a3, a4, v15);

      if (v24 == 0xFFFFFFFFLL)
      {
        v17 = 0;
      }

      else
      {
        v17 = v24;
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v23 = v13;

      v17 = sub_1AF6D1618(v10, v23, a3, a4);

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_32;
  }

  v16 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v17)
  {
    v18 = a2;
    swift_bridgeObjectRetain_n();
    v19 = v18;
    pthread_mutex_lock(v17);
    if (*(a1 + v9))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v25 = a2;
    swift_bridgeObjectRetain_n();
    v26 = v25;
    [(pthread_mutex_t *)v17 lock];
    if (*(a1 + v9))
    {
LABEL_7:
      v20 = a2;

      v21 = sub_1AF676254(a1, v20, a3, a4);
      if (v4)
      {

        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v17 = v21;

        v22 = *(a1 + v16);
        if (v22)
        {
LABEL_20:
          pthread_mutex_unlock(v22);
LABEL_31:

          goto LABEL_32;
        }
      }

      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_31;
    }
  }

  sub_1AF65E3F4();
  sub_1AFC7C4B8();
  if (a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4])
  {
    v27 = 0x200000000;
  }

  else
  {
    v27 = *&a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | ((*&a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] == 0) << 33);
  }

  v28 = sub_1AF9075D4(a3, a4, v27);

  if (v28 == 0xFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = v28;
  }

  sub_1AF66DB74(a1);
  v29 = *(a1 + v16);
  if (v29)
  {
    pthread_mutex_unlock(v29);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_32:

  return v17;
}

void sub_1AF6765C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v6)
  {
    v10 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v11)
    {
      v12 = a2;
      pthread_mutex_lock(v11);
      if (*(a1 + v5))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v18 = a2;
      [v17 lock];
      if (*(a1 + v5))
      {
LABEL_6:
        v3 = v3;
        v13 = sub_1AF6765C0(a1, v3);
        if (v2)
        {

          v14 = *(a1 + v10);
          if (v14)
          {
LABEL_8:
            pthread_mutex_unlock(v14);
LABEL_15:

            return;
          }
        }

        else
        {
          v19 = v13;

          v20 = v19;
          v14 = *(a1 + v10);
          if (v14)
          {
            goto LABEL_8;
          }
        }

LABEL_14:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_15;
      }
    }

    sub_1AF65E3F4();
    sub_1AFC81904(v3, &v20);
    if (v2)
    {
      sub_1AF66DB74(a1);
      v14 = *(a1 + v10);
      if (v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1AF66DB74(a1);
      v14 = *(a1 + v10);
      if (v14)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_14;
  }

  v7 = *(v6 + 144);
  v8 = a2;

  v9 = pthread_self();
  if (pthread_equal(v7, v9))
  {
    sub_1AF65E3F4();
    sub_1AFC81904(v8, &v20);
    sub_1AF66DB74(a1);
  }

  else
  {
    v15 = v8;
    v16 = sub_1AF6D1744(v6, v15);

    if (!v2)
    {
      v20 = v16;
    }
  }
}

void sub_1AF6767FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v10)
  {
    v11 = *(v10 + 144);
    v12 = a2;
    swift_bridgeObjectRetain_n();
    v13 = v12;

    v14 = pthread_self();
    if (pthread_equal(v11, v14))
    {
      sub_1AF65E3F4();
      sub_1AFC820BC(v13, a3, a4, &v32);
      if (!v4)
      {
        sub_1AF66DB74(a1);
        swift_bridgeObjectRelease_n();

        return;
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v22 = v13;

      v23 = sub_1AF6D1858(v10, v22, a3, a4);
      if (!v4)
      {
        v30 = v23;

        swift_bridgeObjectRelease_n();
        v32 = v30;
        return;
      }

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_26;
  }

  v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v16)
  {
    v17 = a2;
    swift_bridgeObjectRetain_n();
    v18 = v17;
    pthread_mutex_lock(v16);
    if (*(a1 + v9))
    {
LABEL_7:
      v19 = a2;

      v20 = sub_1AF6767FC(a1, v19, a3, a4);
      if (v4)
      {

        v21 = *(a1 + v15);
        if (v21)
        {
          pthread_mutex_unlock(v21);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

LABEL_26:

        return;
      }

      v28 = v20;

      v32 = v28;
      v29 = *(a1 + v15);
      if (v29)
      {
        pthread_mutex_unlock(v29);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      swift_bridgeObjectRelease_n();

      return;
    }
  }

  else
  {
    v24 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v25 = a2;
    swift_bridgeObjectRetain_n();
    v26 = v25;
    [v24 lock];
    if (*(a1 + v9))
    {
      goto LABEL_7;
    }
  }

  sub_1AF65E3F4();
  sub_1AFC820BC(a2, a3, a4, &v32);
  if (v4)
  {
    sub_1AF66DB74(a1);
    v27 = *(a1 + v15);
    if (v27)
    {
      pthread_mutex_unlock(v27);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_26;
  }

  sub_1AF66DB74(a1);
  v31 = *(a1 + v15);
  if (v31)
  {
    pthread_mutex_unlock(v31);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1AF676B84(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a3;
  v11 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v12)
  {
    v13 = *(v12 + 144);
    v14 = a2;
    v15 = v9;
    swift_retain_n();
    swift_retain_n();
    v16 = v14;
    v17 = v15;

    v18 = pthread_self();
    if (pthread_equal(v13, v18))
    {
      v58 = v9;
      sub_1AF65E3F4();
      v19 = v17[OBJC_IVAR___VFXREScene_isPrepared];

      v21 = sub_1AF700A58(v20, v19 ^ 1u, v19, a4);

      v22 = sub_1AFCDABC4();

      if (v22)
      {
        *(v22 + 16) = 1;
      }

      sub_1AF66DB74(a1);

      v23 = a2;
      v24 = v21;
      v9 = v58;
      goto LABEL_32;
    }

    v34 = *(v12 + 64);
    v35 = v16;
    v36 = v17;

    pthread_mutex_lock(v34);
    v37 = runtime_thread_is_locked;
    is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
    ++*is_locked;
    if (swift_weakLoadStrong())
    {
      sub_1AF65E3F4();
    }

    v39 = v36[OBJC_IVAR___VFXREScene_isPrepared];

    v55 = sub_1AF700A58(v40, v39 ^ 1u, v39, a4);

    v41 = sub_1AFCDABC4();

    if (v41)
    {
      *(v41 + 16) = 1;
    }

    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      sub_1AF65E37C();
    }

    v43 = v37(&runtime_thread_is_locked);
    --*v43;
    pthread_mutex_unlock(*(v12 + 64));

    v23 = a2;
LABEL_31:
    v24 = v55;
LABEL_32:

    return v24;
  }

  v57 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v25 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v25)
  {
    v26 = a2;
    v27 = a2;
    v28 = a3;
    swift_retain_n();
    swift_retain_n();
    v29 = v27;
    v30 = v28;
    pthread_mutex_lock(v25);
    if (*(a1 + v11))
    {
      goto LABEL_8;
    }

LABEL_19:
    sub_1AF65E3F4();
    v23 = v26;
    v9 = a3;
    v49 = *(a3 + OBJC_IVAR___VFXREScene_isPrepared);

    v24 = sub_1AF700A58(v50, v49 ^ 1u, v49, a4);

    v51 = sub_1AFCDABC4();

    if (v51)
    {
      *(v51 + 16) = 1;
    }

    sub_1AF66DB74(a1);
    v52 = *(a1 + v57);
    if (v52)
    {
      pthread_mutex_unlock(v52);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_32;
  }

  v44 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  v26 = a2;
  v45 = a2;
  v46 = a3;
  swift_retain_n();
  swift_retain_n();
  v47 = v45;
  v48 = v46;
  v6 = v5;
  [v44 lock];
  if (!*(a1 + v11))
  {
    goto LABEL_19;
  }

LABEL_8:
  v31 = v26;
  v24 = a3;

  v32 = sub_1AF676B84(a1, v31, v24, a4, a5);
  if (!v6)
  {
    v55 = v32;

    v53 = *(a1 + v57);
    if (v53)
    {
      pthread_mutex_unlock(v53);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    v23 = v26;
    v9 = a3;
    goto LABEL_31;
  }

  v33 = *(a1 + v57);
  if (v33)
  {
    pthread_mutex_unlock(v33);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return v24;
}

pthread_mutex_t *sub_1AF6771B8(uint64_t a1, char *a2)
{
  v3 = a2;
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v6)
  {
    v7 = *(v6 + 144);
    v8 = a2;

    v9 = pthread_self();
    if (pthread_equal(v7, v9))
    {
      sub_1AF65E3F4();
      v10 = *&v8[OBJC_IVAR___VFXREScene_externalDrawCallQuery + 16];
      v27[0] = *&v8[OBJC_IVAR___VFXREScene_externalDrawCallQuery];
      v27[1] = v10;
      v28 = *&v8[OBJC_IVAR___VFXREScene_externalDrawCallQuery + 32];

      sub_1AF6B06C0(v11, v27, 0x200000000, v23);

      if (*&v23[0])
      {
        v12 = v24;
        sub_1AF67001C(v23, &qword_1ED725EA0, &type metadata for QueryResult);
      }

      else
      {
        v12 = 0;
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v17 = v8;
      v12 = sub_1AF6D1984(v6, v17);
    }

    return v12;
  }

  v13 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v12)
  {
    v14 = a2;
    pthread_mutex_lock(v12);
    if (*(a1 + v5))
    {
      goto LABEL_7;
    }

LABEL_14:
    sub_1AF65E3F4();
    v19 = *&v3[OBJC_IVAR___VFXREScene_externalDrawCallQuery + 16];
    v29[0] = *&v3[OBJC_IVAR___VFXREScene_externalDrawCallQuery];
    v29[1] = v19;
    v30 = *&v3[OBJC_IVAR___VFXREScene_externalDrawCallQuery + 32];

    sub_1AF6B06C0(v20, v29, 0x200000000, v25);

    if (*&v25[0])
    {
      v12 = v26;
      sub_1AF67001C(v25, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    else
    {
      v12 = 0;
    }

    sub_1AF66DB74(a1);
    v21 = *(a1 + v13);
    if (!v21)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  v18 = a2;
  [(pthread_mutex_t *)v12 lock];
  if (!*(a1 + v5))
  {
    goto LABEL_14;
  }

LABEL_7:
  v3 = v3;
  v15 = sub_1AF6771B8(a1, v3);
  if (!v2)
  {
    v12 = v15;

    v21 = *(a1 + v13);
    if (!v21)
    {
LABEL_17:
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
LABEL_23:

      return v12;
    }

LABEL_22:
    pthread_mutex_unlock(v21);
    goto LABEL_23;
  }

  v16 = *(a1 + v13);
  if (v16)
  {
    pthread_mutex_unlock(v16);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return v12;
}

void sub_1AF6774C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v6)
  {
    v10 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v11)
    {
      v12 = a2;
      pthread_mutex_lock(v11);
      if (*(a1 + v5))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v25 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v26 = a2;
      [v25 lock];
      if (*(a1 + v5))
      {
LABEL_6:
        v3 = v3;
        sub_1AF6774C8(a1, v3);
        if (v2)
        {

          v17 = *(a1 + v10);
          if (v17)
          {
LABEL_8:
            pthread_mutex_unlock(v17);
LABEL_15:

            return;
          }

LABEL_14:
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
          goto LABEL_15;
        }

        v35 = v14;
        v37 = v13;
        v30 = v16;
        v33 = v15;

        v27 = v33;
        DWORD2(v27) = v30;
        v28 = v37;
        v28.i32[2] = v35;
        v38 = v28;
        v39 = v27;
        v29 = *(a1 + v10);
        if (v29)
        {
LABEL_18:
          pthread_mutex_unlock(v29);
LABEL_21:

          return;
        }

LABEL_20:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_21;
      }
    }

    sub_1AF65E3F4();
    sub_1AFCC871C(v3, &v38);
    if (v2)
    {
      sub_1AF66DB74(a1);
      v17 = *(a1 + v10);
      if (v17)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    sub_1AF66DB74(a1);
    v29 = *(a1 + v10);
    if (v29)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  v7 = *(v6 + 144);
  v8 = a2;

  v9 = pthread_self();
  if (pthread_equal(v7, v9))
  {
    sub_1AF65E3F4();
    sub_1AFCC871C(v8, &v38);
    sub_1AF66DB74(a1);
  }

  else
  {
    v18 = v8;
    *v19.i64 = sub_1AF6D1AD8(v6, v18);
    v34 = v20;
    v36 = v19;
    v31 = v22;
    v32 = v21;

    if (!v2)
    {
      v23 = v34;
      DWORD2(v23) = v31;
      v24 = v36;
      v24.i32[2] = v32;
      v38 = v24;
      v39 = v23;
    }
  }
}

uint64_t sub_1AF677734(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v10)
  {
    v14 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v15)
    {
      swift_retain_n();
      swift_retain_n();
      v16 = a4;
      pthread_mutex_lock(v15);
      if (*(a1 + v9))
      {
LABEL_7:

        v17 = a4;
        v18 = sub_1AF677734(a1, a2, a3, v17);
        if (v4)
        {

          v19 = *(a1 + v14);
          if (v19)
          {
LABEL_9:
            pthread_mutex_unlock(v19);
LABEL_17:

            goto LABEL_18;
          }

LABEL_16:
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
          goto LABEL_17;
        }

        v24 = v18;

        v29 = v24;
        v25 = *(a1 + v14);
        if (v25)
        {
          pthread_mutex_unlock(v25);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        goto LABEL_28;
      }
    }

    else
    {
      v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      swift_retain_n();
      v23 = a4;
      [v22 lock];
      if (*(a1 + v9))
      {
        goto LABEL_7;
      }
    }

    sub_1AF65E3F4();
    sub_1AFCE08B4(a2, a3, a4, &v29);
    if (v4)
    {
      sub_1AF66DB74(a1);
      v19 = *(a1 + v14);
      if (v19)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    sub_1AF66DB74(a1);
    v27 = *(a1 + v14);
    if (v27)
    {
      pthread_mutex_unlock(v27);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

LABEL_28:

    goto LABEL_29;
  }

  v11 = *(v10 + 144);
  swift_retain_n();
  swift_retain_n();
  v12 = a4;

  v13 = pthread_self();
  if (pthread_equal(v11, v13))
  {
    sub_1AF65E3F4();
    sub_1AFCE08B4(a2, a3, v12, &v29);
    if (v4)
    {
      sub_1AF66DB74(a1);

LABEL_18:

      goto LABEL_19;
    }

    sub_1AF66DB74(a1);

LABEL_29:
    a2 = v29;

    return a2;
  }

  v20 = v12;
  v21 = sub_1AF6D1BF8(v10, a2, a3, v20);
  if (!v4)
  {
    v26 = v21;

    v29 = v26;
    goto LABEL_29;
  }

LABEL_19:

  return a2;
}

pthread_mutex_t *sub_1AF677AE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v10)
  {
    v11 = *(v10 + 144);
    swift_retain_n();
    swift_retain_n();
    v12 = a4;

    v13 = pthread_self();
    if (!pthread_equal(v11, v13))
    {
      v21 = *(v10 + 64);

      v22 = v12;
      pthread_mutex_lock(v21);
      v23 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      v25 = v22;
      v15 = sub_1AF677734(a2, a3, a2, v25);

      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v26 = v23(&runtime_thread_is_locked);
      --*v26;
      pthread_mutex_unlock(*(v10 + 64));

      goto LABEL_21;
    }

    sub_1AF65E3F4();

    v14 = v12;
    v15 = sub_1AF677734(a2, a3, a2, v14);

    sub_1AF66DB74(a1);

LABEL_20:

LABEL_21:

    return v15;
  }

  v16 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v15)
  {
    swift_retain_n();
    swift_retain_n();
    v17 = a4;
    pthread_mutex_lock(v15);
    if (*(a1 + v9))
    {
      goto LABEL_6;
    }

LABEL_15:
    sub_1AF65E3F4();

    v28 = a4;
    v15 = sub_1AF677734(a2, a3, a2, v28);

    sub_1AF66DB74(a1);
    v29 = *(a1 + v16);
    if (!v29)
    {
LABEL_18:
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_19;
    }

LABEL_16:
    pthread_mutex_unlock(v29);
LABEL_19:

    goto LABEL_20;
  }

  v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  swift_retain_n();
  swift_retain_n();
  v27 = a4;
  [(pthread_mutex_t *)v15 lock];
  if (!*(a1 + v9))
  {
    goto LABEL_15;
  }

LABEL_6:

  v18 = a4;
  v19 = sub_1AF677AE4(a1, a2, a3, v18);
  if (!v4)
  {
    v15 = v19;

    v29 = *(a1 + v16);
    if (!v29)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v20 = *(a1 + v16);
  if (v20)
  {
    pthread_mutex_unlock(v20);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return v15;
}