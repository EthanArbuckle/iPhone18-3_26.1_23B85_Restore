void specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v48 = a2;
  v5 = a3;
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v52 = a5;
  v54 = a3 + 56;
LABEL_2:
  v49 = v7;
LABEL_4:
  while (2)
  {
    v9 = a5[3];
    v10 = a5[4];
    if (v10)
    {
      v11 = a5[3];
LABEL_10:
      v14 = *(*(*a5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
      a5[3] = v11;
      a5[4] = (v10 - 1) & v10;
      v15 = *(v5 + 40);
      Hasher.init(_seed:)();
      v55 = v14;
      if (v14)
      {
        v16 = v14;
        if ([v16 acceptanceStatus] == 2 && (v17 = objc_msgSend(v16, sel_userIdentity), v18 = objc_msgSend(v17, sel_userRecordID), v17, v18))
        {
          v19 = [v18 recordName];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }
      }

      else
      {
        String.hash(into:)();
      }

      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      v24 = 1 << v22;
      if (((1 << v22) & *(v8 + 8 * (v22 >> 6))) == 0)
      {
LABEL_3:

        a5 = v52;
        continue;
      }

      v56 = ~v21;
      while (1)
      {
        v25 = *(*(v5 + 48) + 8 * v22);
        if (v25)
        {
          v26 = v25;
          if ([v26 acceptanceStatus] != 2)
          {

LABEL_33:
            goto LABEL_19;
          }

          v27 = [v26 userIdentity];
          v28 = [v27 userRecordID];

          if (!v28)
          {

            v8 = v54;
            goto LABEL_19;
          }

          v29 = [v28 recordName];

          v8 = v54;
          v30 = v55;
          if (!v55)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v30 = v55;
          if (!v55)
          {
            goto LABEL_53;
          }
        }

        v31 = v30;
        if ([v31 acceptanceStatus] != 2 || (v32 = objc_msgSend(v31, sel_userIdentity), v33 = objc_msgSend(v32, sel_userRecordID), v32, !v33))
        {

          goto LABEL_19;
        }

        v34 = [v33 recordName];

        if (!v25)
        {
          goto LABEL_19;
        }

        if ([v25 acceptanceStatus] == 2)
        {
          v35 = [v25 userIdentity];
          v36 = [v35 userRecordID];

          if (v36)
          {
            v37 = [v36 recordName];

            v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v38;
          }

          else
          {
            v53 = 0;
          }
        }

        else
        {
          v53 = 0;
          v36 = 0;
        }

        if ([v31 acceptanceStatus] == 2)
        {
          v39 = [v31 userIdentity];
          v40 = [v39 userRecordID];

          if (v40)
          {
            v51 = v36;
            v41 = v5;
            v42 = [v40 recordName];

            v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v40 = v44;

            v5 = v41;
            v36 = v51;
            if (!v51)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v43 = 0;
            if (!v36)
            {
LABEL_49:

              v8 = v54;
              if (!v40)
              {
                goto LABEL_52;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
          v43 = 0;
          v40 = 0;
          if (!v36)
          {
            goto LABEL_49;
          }
        }

        if (v40)
        {
          if (v53 == v43 && v36 == v40)
          {

            v31 = v25;
            v8 = v54;
LABEL_52:

LABEL_53:
            v46 = a1[v23];
            a1[v23] = v46 & ~v24;
            a5 = v52;
            if ((v46 & v24) != 0)
            {
              v7 = v49 - 1;
              if (__OFSUB__(v49, 1))
              {
                goto LABEL_62;
              }

              if (v49 == 1)
              {
                return;
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }

          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v8 = v54;
          if (v45)
          {
            goto LABEL_52;
          }
        }

        else
        {

          v8 = v54;
        }

LABEL_19:
        v22 = (v22 + 1) & v56;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if ((*(v8 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v12 = (a5[2] + 64) >> 6;
  v13 = a5[3];
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      return;
    }

    if (v11 >= v12)
    {
      break;
    }

    v10 = *(a5[1] + 8 * v11);
    ++v13;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  if (v12 <= v9 + 1)
  {
    v47 = v9 + 1;
  }

  else
  {
    v47 = (a5[2] + 64) >> 6;
  }

  a5[3] = v47 - 1;
  a5[4] = 0;

  specialized _NativeSet.extractSubset(using:count:)(a1, v48, v49, v5);
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for Participant();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMd, &_ss11_SetStorageCy17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    Hasher.init(_seed:)();
    if (v16)
    {
      v18 = v16;
      if ([v18 acceptanceStatus] == 2 && (v19 = objc_msgSend(v18, sel_userIdentity), v20 = objc_msgSend(v19, sel_userRecordID), v19, v4 = v31, v20))
      {
        v21 = [v20 recordName];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v31;
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }
    }

    else
    {
      String.hash(into:)();
    }

    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_33;
        }
      }

      goto LABEL_37;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_33:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_38;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in FastSyncStateMachine.startActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](specialized closure #1 in FastSyncStateMachine.startActivity(_:));
}

uint64_t specialized closure #1 in FastSyncStateMachine.startActivity(_:)()
{
  static Task<>.checkCancellation()();
  v1 = v0[5];
  v6 = (v0[3] + *v0[3]);
  v2 = *(v0[3] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in FastSyncStateMachine.startActivity(_:);
  v4 = v0[4];

  return v6(v1, 0);
}

{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized closure #1 in FastSyncStateMachine.startActivity(_:));
}

uint64_t specialized closure #2 in FastSyncStateMachine.startActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  v8 = *(MEMORY[0x277D857E0] + 4);
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = specialized closure #2 in FastSyncStateMachine.startActivity(_:);

  return MEMORY[0x282200460]();
}

{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  v8 = *(MEMORY[0x277D857E0] + 4);
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = specialized closure #2 in FastSyncStateMachine.startActivity(_:);

  return MEMORY[0x282200460]();
}

uint64_t specialized closure #2 in FastSyncStateMachine.startActivity(_:)()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized closure #2 in FastSyncStateMachine.startActivity(_:));
}

{
  static Task<>.checkCancellation()();
  v1 = v0[5];
  v6 = (v0[3] + *v0[3]);
  v2 = *(v0[3] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = specialized closure #2 in FastSyncStateMachine.startActivity(_:);
  v4 = v0[4];

  return v6(v1, 0);
}

{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized closure #1 in FastSyncStateMachine.startActivity(_:));
}

{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized closure #2 in FastSyncStateMachine.startActivity(_:));
}

{
  static Task<>.checkCancellation()();
  v1 = v0[5];
  v6 = (v0[3] + *v0[3]);
  v2 = *(v0[3] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = specialized closure #2 in FastSyncStateMachine.startActivity(_:);
  v4 = v0[4];

  return v6(v1, 0);
}

{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized closure #2 in FastSyncStateMachine.startActivity(_:));
}

{
  **(v0 + 16) = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t specialized closure #3 in FastSyncStateMachine.startActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);

  return specialized closure #3 in FastSyncStateMachine.startActivity(_:)(a4, a5, a6, a7);
}

{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);

  return specialized closure #3 in FastSyncStateMachine.startActivity(_:)(a4, a5, a6, a7);
}

uint64_t specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, a3, a4, v10, v11);
}

{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized closure #1 in CollaborationConnectionManager.startActivity();

  return specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, a3, a4, v10, v11);
}

uint64_t specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = a6[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, a3, a4, a5, v12, v13);
}

{
  v12 = *a6;
  v13 = a6[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = a6[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, a3, a4, a5, v12, v13);
}

{
  v12 = *a6;
  v13 = a6[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t specialized closure #1 in GroupSessionMessengerController._makeTasks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in GroupSessionMessengerController._makeTasks()(a1, a2, a3, a4, v10, v11);
}

{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in GroupSessionMessengerController._makeTasks()(a1, a2, a3, a4, v10, v11);
}

uint64_t specialized closure #2 in GroupSessionMessengerController._makeTasks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in GroupSessionMessengerController._makeTasks()(a1, a2, a3, a4, v10, v11);
}

{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in GroupSessionMessengerController._makeTasks()(a1, a2, a3, a4, v10, v11);
}

uint64_t specialized closure #3 in FastSyncStateMachine.startActivity(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    **(v4 + 16) = a1;
    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t specialized CollaborationConnectionManager.didLeaveGroupSession(_:)()
{
  *(v1 + 48) = v0;
  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.didLeaveGroupSession(_:));
}

{
  v1 = v0[6];
  v2 = v1[21];
  v0[7] = v2;
  if (v2)
  {

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.didLeaveGroupSession(_:));
  }

  else
  {
    v1[21] = 0;
    v3 = *(*v1 + 176);
    swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = *(v4 + 16);
    if (v5)
    {
      v12 = *(v1 + v3);
      v13 = v3;
      v6 = v4 + 32;

      do
      {
        outlined init with copy of TaskPriority?(v6, (v0 + 5), &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMR);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v8 = *(*Strong + 88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMR);
          AsyncStream.Continuation.finish()();
        }

        outlined destroy of TaskPriority?((v0 + 5), &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMR);
        v6 += 8;
        --v5;
      }

      while (v5);

      v3 = v13;
      v9 = *(v1 + v13);
    }

    *(v1 + v3) = MEMORY[0x277D84F90];

    v10 = v0[1];

    return v10();
  }
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  specialized GroupSessionMessengerController.finish()();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.didLeaveGroupSession(_:));
}

{
  v1 = *(v0 + 48);
  v2 = v1[21];
  v1[21] = 0;

  v3 = *(*v1 + 176);
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v12 = *(v1 + v3);
    v13 = v3;
    v6 = v4 + 32;

    do
    {
      outlined init with copy of TaskPriority?(v6, v0 + 40, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMR);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v8 = *(*Strong + 88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMR);
        AsyncStream.Continuation.finish()();
      }

      outlined destroy of TaskPriority?(v0 + 40, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMR);
      v6 += 8;
      --v5;
    }

    while (v5);

    v3 = v13;
    v9 = *(v1 + v13);
  }

  *(v1 + v3) = MEMORY[0x277D84F90];

  v10 = *(v0 + 8);

  return v10();
}

{
  *(v1 + 48) = v0;
  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.didLeaveGroupSession(_:));
}

{
  v1 = v0[6];
  v2 = v1[21];
  v0[7] = v2;
  if (v2)
  {

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.didLeaveGroupSession(_:));
  }

  else
  {
    v1[21] = 0;
    v3 = *(*v1 + 176);
    swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = *(v4 + 16);
    if (v5)
    {
      v12 = *(v1 + v3);
      v13 = v3;
      v6 = v4 + 32;

      do
      {
        outlined init with copy of TaskPriority?(v6, (v0 + 5), &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMR);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v8 = *(*Strong + 88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMR);
          AsyncStream.Continuation.finish()();
        }

        outlined destroy of TaskPriority?((v0 + 5), &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMR);
        v6 += 8;
        --v5;
      }

      while (v5);

      v3 = v13;
      v9 = *(v1 + v13);
    }

    *(v1 + v3) = MEMORY[0x277D84F90];

    v10 = v0[1];

    return v10();
  }
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  specialized GroupSessionMessengerController.finish()();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.didLeaveGroupSession(_:));
}

{
  v1 = *(v0 + 48);
  v2 = v1[21];
  v1[21] = 0;

  v3 = *(*v1 + 176);
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v12 = *(v1 + v3);
    v13 = v3;
    v6 = v4 + 32;

    do
    {
      outlined init with copy of TaskPriority?(v6, v0 + 40, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMR);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v8 = *(*Strong + 88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMR);
        AsyncStream.Continuation.finish()();
      }

      outlined destroy of TaskPriority?(v0 + 40, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMR);
      v6 += 8;
      --v5;
    }

    while (v5);

    v3 = v13;
    v9 = *(v1 + v13);
  }

  *(v1 + v3) = MEMORY[0x277D84F90];

  v10 = *(v0 + 8);

  return v10();
}

void specialized CollaborationConnectionManager.handleGroupSessionStateChange(_:state:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v37 - v8);
  GroupSession.activity.getter();
  (*(v6 + 16))(v9, a2, v5);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != *MEMORY[0x277CCB1F8])
  {
    if (v10 == *MEMORY[0x277CCB208])
    {
      if (one-time initialization token for tabGroup != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.tabGroup);
      v26 = v39;
      v25 = v40;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v38 = v30;
        *v29 = 136446210;
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v38);

        *(v29 + 4) = v31;
        v32 = "Changed state to waiting in groupSession for activity %{public}s";
LABEL_18:
        _os_log_impl(&dword_272D1B000, v27, v28, v32, v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x2743D7F00](v30, -1, -1);
        MEMORY[0x2743D7F00](v29, -1, -1);

LABEL_20:

        return;
      }
    }

    else
    {
      if (v10 != *MEMORY[0x277CCB200])
      {

        (*(v6 + 8))(v9, v5);
        return;
      }

      if (one-time initialization token for tabGroup != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.tabGroup);
      v35 = v39;
      v34 = v40;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v38 = v30;
        *v29 = 136446210;
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v38);

        *(v29 + 4) = v36;
        v32 = "Changed state to joined in groupSession for activity %{public}s";
        goto LABEL_18;
      }
    }

    swift_bridgeObjectRelease_n();
    goto LABEL_20;
  }

  (*(v6 + 96))(v9, v5);
  v11 = *v9;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.tabGroup);
  v14 = v39;
  v13 = v40;

  v15 = v11;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v18 = 136446466;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v38);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2112;
    v22 = v11;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v23;
    *v19 = v23;
    _os_log_impl(&dword_272D1B000, v16, v17, "Changed state to invalidated in groupSession for activity %{public}s with error: %@", v18, 0x16u);
    outlined destroy of TaskPriority?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x2743D7F00](v20, -1, -1);
    MEMORY[0x2743D7F00](v18, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
}

uint64_t specialized GroupSessionMessengerController.init(groupSession:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV__GMd, &_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV__GMR);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized GroupSessionMessengerController.init(groupSession:));
}

{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV__GMd, &_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV__GMR);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized GroupSessionMessengerController.init(groupSession:));
}

uint64_t specialized GroupSessionMessengerController.init(groupSession:)()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  swift_defaultActor_initialize();
  v9 = *MEMORY[0x277D85778];
  (*(v2 + 104))(v1, v9, v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageVGMR);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v7[15] = specialized AsyncBufferedQueue.init(bufferingPolicy:)(v1);
  (*(v6 + 104))(v3, v9, v5);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVtGMd, &_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVtGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v7[16] = specialized AsyncBufferedQueue.init(bufferingPolicy:)(v3);
  v7[18] = MEMORY[0x277D84F90];
  v7[14] = v8;
  v16 = type metadata accessor for GroupSessionMessenger();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  swift_retain_n();
  v7[17] = GroupSessionMessenger.init<A>(session:)();

  return MEMORY[0x2822009F8](specialized GroupSessionMessengerController.init(groupSession:));
}

{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  v4 = specialized GroupSessionMessengerController._makeTasks()();
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v4);
  swift_endAccess();

  v5 = v0[1];
  v6 = v0[6];

  return v5(v6);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  swift_defaultActor_initialize();
  v9 = *MEMORY[0x277D85778];
  (*(v2 + 104))(v1, v9, v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageVGMR);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v7[15] = specialized AsyncBufferedQueue.init(bufferingPolicy:)(v1);
  (*(v6 + 104))(v3, v9, v5);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVtGMd, &_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVtGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v7[16] = specialized AsyncBufferedQueue.init(bufferingPolicy:)(v3);
  v7[18] = MEMORY[0x277D84F90];
  v7[14] = v8;
  v16 = type metadata accessor for GroupSessionMessenger();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  swift_retain_n();
  v7[17] = GroupSessionMessenger.init<A>(session:)();

  return MEMORY[0x2822009F8](specialized GroupSessionMessengerController.init(groupSession:));
}

{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  v4 = specialized GroupSessionMessengerController._makeTasks()();
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v4);
  swift_endAccess();

  v5 = v0[1];
  v6 = v0[6];

  return v5(v6);
}

uint64_t specialized closure #3 in FastSyncStateMachine.startActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = *(MEMORY[0x277D857C8] + 4);
  v7 = swift_task_alloc();
  v4[6] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  *v7 = v4;
  v7[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v4 + 2, a1, v8, v9, v10);
}

{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = *(MEMORY[0x277D857C8] + 4);
  v7 = swift_task_alloc();
  v4[6] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  *v7 = v4;
  v7[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v4 + 2, a1, v8, v9, v10);
}

uint64_t specialized closure #3 in FastSyncStateMachine.startActivity(_:)()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {

    v3 = specialized closure #3 in FastSyncStateMachine.startActivity(_:);
  }

  else
  {
    v3 = specialized closure #3 in FastSyncStateMachine.startActivity(_:);
  }

  return MEMORY[0x2822009F8](v3);
}

{
  v1 = v0[2];
  v2 = v0[3];
  v0[8] = v1;

  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);
  v5 = v0[4];

  return v7(v1, 1);
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized closure #3 in FastSyncStateMachine.startActivity(_:));
}

{
  v1 = v0[8];

  v2 = v0[7];
  static Task<>.checkCancellation()();
  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[5];
    v9 = (v0[3] + *v0[3]);
    v6 = *(v0[3] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);
    v8 = v0[4];

    return v9(v5, 0);
  }
}

{
  static Task<>.checkCancellation()();
  v1 = v0[5];
  v6 = (v0[3] + *v0[3]);
  v2 = *(v0[3] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);
  v4 = v0[4];

  return v6(v1, 0);
}

{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {

    v3 = specialized closure #3 in FastSyncStateMachine.startActivity(_:);
  }

  else
  {
    v3 = specialized closure #3 in FastSyncStateMachine.startActivity(_:);
  }

  return MEMORY[0x2822009F8](v3);
}

{
  v1 = v0[2];
  v2 = v0[3];
  v0[8] = v1;

  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);
  v5 = v0[4];

  return v7(v1, 1);
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized closure #3 in FastSyncStateMachine.startActivity(_:));
}

{
  v1 = v0[8];

  v2 = v0[7];
  static Task<>.checkCancellation()();
  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[5];
    v9 = (v0[3] + *v0[3]);
    v6 = *(v0[3] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);
    v8 = v0[4];

    return v9(v5, 0);
  }
}

{
  static Task<>.checkCancellation()();
  v1 = v0[5];
  v6 = (v0[3] + *v0[3]);
  v2 = *(v0[3] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);
  v4 = v0[4];

  return v6(v1, 0);
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v6 + 8);
  v4 = *(v1 + 40);

  return v3(v4);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17WebBookmarksSwift20ParticipantHandleMapC0F4KindOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PersonalGroupSessionProvider<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CKShareGroupSessionProvider<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantPresenceCoordinator.ConnectionManagerStore.SharedConnection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for ParticipantPresenceCoordinator.ConnectionManagerStore.SharedConnection(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS18tabGroupIdentifier_SS0cE0tTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2S18tabGroupIdentifier_SS0cE0tGMd, &_ss18_DictionaryStorageCyS2S18tabGroupIdentifier_SS0cE0tGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySo18CKShareParticipantCGGMd, &_ss18_DictionaryStorageCySSShySo18CKShareParticipantCGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined consume of ParticipantPresenceCoordinator.ConnectionManagerStore.SharedConnection?(uint64_t a1, void *a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return @objc closure #1 in ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return @objc closure #1 in ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:)(v2, v3, v4);
}

uint64_t objectdestroy_57Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return @objc closure #1 in ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:)(v2, v3, v4);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in ParticipantPresenceCoordinator.currentConnectionState()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return @objc closure #1 in ParticipantPresenceCoordinator.currentConnectionState()(v2, v3);
}

uint64_t objectdestroy_61Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t specialized ParticipantPresenceCoordinator._startActivityForShare(_:tabGroupIdentifier:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized ParticipantPresenceCoordinator._startActivityForShare(_:tabGroupIdentifier:));
}

uint64_t specialized ParticipantPresenceCoordinator._startActivityForShare(_:tabGroupIdentifier:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = [v4 recordID];
  v6 = [v5 zoneID];

  v7 = [v6 zoneName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA07CKShareD8ActivityVAA0G20GroupSessionProviderCyAEGAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA07CKShareD8ActivityVAA0G20GroupSessionProviderCyAEGAA21PresenceUpdateMessageVGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v0[10] = v15;
  v16 = v4;
  swift_defaultActor_initialize();
  *(v15 + 21) = 0;
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVtGMd, &_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVtGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v15 + 22) = specialized AsyncBufferedQueue.init(bufferingPolicy:)(v1);
  v20 = *(*v15 + 160);
  v21 = type metadata accessor for Participant();
  (*(*(v21 - 8) + 56))(&v15[v20], 1, 1, v21);
  *&v15[*(*v15 + 168)] = MEMORY[0x277D84FA0];
  *&v15[*(*v15 + 176)] = MEMORY[0x277D84F90];
  *(v15 + 14) = 0;
  *(v15 + 15) = 0;
  *(v15 + 16) = 0xA000000000000000;
  *(v15 + 17) = v8;
  *(v15 + 18) = v10;
  *(v15 + 19) = partial apply for closure #1 in ParticipantPresenceCoordinator._startActivityForShare(_:tabGroupIdentifier:);
  *(v15 + 20) = v11;

  return MEMORY[0x2822009F8](specialized ParticipantPresenceCoordinator._startActivityForShare(_:tabGroupIdentifier:));
}

{
  v1 = *(v0 + 80);
  swift_beginAccess();

  specialized FastSyncStateMachine.startActivity(_:)(&async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.startActivity(), v1);
  *(v0 + 88) = 0;
  v2 = *(v0 + 80);
  swift_endAccess();

  return MEMORY[0x2822009F8](specialized ParticipantPresenceCoordinator._startActivityForShare(_:tabGroupIdentifier:));
}

{
  v1 = v0[11];
  v2 = v0[5];
  type metadata accessor for ParticipantHandleMap();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17WebBookmarksSwift20ParticipantHandleMapC0F4KindOTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = specialized static ParticipantHandleMap.handlesToParticipantKindsForShare(_:)(v2);
  v5 = v0[10];
  if (v1)
  {

    v6 = v0[9];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[9];
    v11 = v0[5];
    v10 = v0[6];
    v12 = *(v3 + 112);
    *(v3 + 112) = v4;

    v13 = ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)(v5, v11, v3);

    v14 = v0[1];
    v15 = v0[10];

    return v14(v3, v15, v13);
  }
}

{
  v1 = v0[10];

  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.addSharedConnection(forShare:createIfNeededUsing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;
  return MEMORY[0x2822009F8](specialized ParticipantPresenceCoordinator.ConnectionManagerStore.addSharedConnection(forShare:createIfNeededUsing:));
}

unint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.addSharedConnection(forShare:createIfNeededUsing:)()
{
  v83 = v0;
  v1 = [*(v0 + 184) recordID];
  v2 = [v1 zoneID];

  v3 = [v2 safari_tabGroupRootRecordName];
  if (!v3)
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.tabGroup);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_272D1B000, v20, v21, "Trying to start a collaboration activity with a CKShare not attached to a tab group", v22, 2u);
      MEMORY[0x2743D7F00](v22, -1, -1);
    }

LABEL_55:
    v79 = *(v0 + 8);

    return v79();
  }

  v4 = *(v0 + 192);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(v0 + 216) = v5;
  *(v0 + 224) = v7;
  v8 = *(v4 + 152);
  v9 = *(v0 + 192);
  if (v8)
  {
    swift_beginAccess();
    if (!*(*(v9 + 144) + 16) || (v10 = *(v9 + 144), , specialized __RawDictionaryStorage.find<A>(_:)(v5, v7), v12 = v11, , (v12 & 1) == 0))
    {
      if (one-time initialization token for tabGroup != -1)
      {
        goto LABEL_60;
      }

      goto LABEL_24;
    }

    if (one-time initialization token for tabGroup != -1)
    {
LABEL_62:
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.tabGroup);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_27;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v82 = v17;
    *v16 = 136446210;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v82);
    v18 = "Incrementing retain count for paused tab group connection %{public}s";
LABEL_26:
    _os_log_impl(&dword_272D1B000, v14, v15, v18, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x2743D7F00](v17, -1, -1);
    MEMORY[0x2743D7F00](v16, -1, -1);
    while (1)
    {
LABEL_27:

      v42 = *(v0 + 184);
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      swift_beginAccess();
      v44 = swift_allocObject();
      *(v44 + 16) = partial apply for implicit closure #3 in ParticipantPresenceCoordinator.ConnectionManagerStore.addSharedConnection(forShare:createIfNeededUsing:);
      *(v44 + 24) = v43;
      v45 = v42;
      v46 = *(v9 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v5;
      v82 = *(v9 + 144);
      v48 = v82;
      *(v9 + 144) = 0x8000000000000000;
      v5 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
      v50 = v48[2];
      v51 = (v49 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        __break(1u);
      }

      else
      {
        v53 = v49;
        if (v48[3] >= v52)
        {
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v48 = v82;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, isUniquelyReferenced_nonNull_native);
          v48 = v82;
          v54 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v7);
          if ((v53 & 1) != (v55 & 1))
          {
            goto LABEL_30;
          }

          v5 = v54;
        }

        *(v9 + 144) = v48;
        if ((v53 & 1) == 0)
        {
          v65 = *(v44 + 24);
          v66 = (*(v44 + 16))();
          v48[(v5 >> 6) + 8] |= 1 << v5;
          v67 = (v48[6] + 16 * v5);
          *v67 = v81;
          v67[1] = v7;
          v68 = (v48[7] + 16 * v5);
          *v68 = v66;
          v68[1] = v69;
          v70 = v48[2];
          v38 = __OFADD__(v70, 1);
          v71 = v70 + 1;
          if (v38)
          {
            __break(1u);
            goto LABEL_62;
          }

          v48[2] = v71;
        }

        v72 = v48[7] + 16 * v5;
        v74 = *(v72 + 8);
        v73 = (v72 + 8);
        v75 = v74 + 1;
        if (!__OFADD__(v74, 1))
        {
          *v73 = v75;
          swift_endAccess();

          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_60:
      swift_once();
LABEL_24:
      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.tabGroup);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v82 = v17;
        *v16 = 136446210;
        *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v82);
        v18 = "Adding paused connection for tab group %{public}s";
        goto LABEL_26;
      }
    }
  }

  swift_beginAccess();
  if (*(*(v9 + 136) + 16))
  {
    v23 = *(v9 + 136);

    specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
    v25 = v24;

    if (v25)
    {
      if (one-time initialization token for tabGroup != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.tabGroup);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v82 = v30;
        *v29 = 136446210;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v82);
        _os_log_impl(&dword_272D1B000, v27, v28, "Incrementing retain count for tab group connection %{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x2743D7F00](v30, -1, -1);
        MEMORY[0x2743D7F00](v29, -1, -1);
      }

      swift_beginAccess();
      v31 = *(v9 + 136);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v82 = *(v9 + 136);
      v33 = v82;
      *(v9 + 136) = 0x8000000000000000;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
      v36 = *(v33 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        __break(1u);
        goto LABEL_64;
      }

      v28 = v35;
      if (*(v33 + 24) >= v39)
      {
        if ((v32 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, v32);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
        if ((v28 & 1) != (v40 & 1))
        {
LABEL_30:
          v56 = *(v0 + 208);

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      if ((v28 & 1) == 0)
      {
LABEL_66:
        __break(1u);
        return result;
      }

      while (1)
      {
        v76 = v82;
        v77 = (v82[7] + 48 * result);
        if (!__OFADD__(*v77, 1))
        {
          break;
        }

LABEL_64:
        __break(1u);
LABEL_65:
        v80 = result;
        specialized _NativeDictionary.copy()();
        result = v80;
        if ((v28 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      if (v77[1])
      {
        ++*v77;
      }

      else
      {
        v78 = result;
        outlined destroy of String(v82[6] + 16 * result);
        specialized _NativeDictionary._delete(at:)(v78, v76);
      }

      *(v9 + 136) = v76;
      swift_endAccess();

      goto LABEL_55;
    }
  }

  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  __swift_project_value_buffer(v57, static Logger.tabGroup);

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v82 = v61;
    *v60 = 136446210;
    *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v82);
    _os_log_impl(&dword_272D1B000, v58, v59, "Opening new connection for tab group %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x2743D7F00](v61, -1, -1);
    MEMORY[0x2743D7F00](v60, -1, -1);
  }

  v62 = swift_task_alloc();
  *(v0 + 232) = v62;
  *v62 = v0;
  v62[1] = specialized ParticipantPresenceCoordinator.ConnectionManagerStore.addSharedConnection(forShare:createIfNeededUsing:);
  v64 = *(v0 + 200);
  v63 = *(v0 + 208);

  return specialized ParticipantPresenceCoordinator._startActivityForShare(_:tabGroupIdentifier:)(v63);
}

uint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.addSharedConnection(forShare:createIfNeededUsing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 232);
  v10 = *v4;
  v8[30] = v3;

  v11 = v8[24];
  if (v3)
  {
    v12 = specialized ParticipantPresenceCoordinator.ConnectionManagerStore.addSharedConnection(forShare:createIfNeededUsing:);
  }

  else
  {
    v8[31] = a3;
    v8[32] = a2;
    v8[33] = a1;
    v12 = specialized ParticipantPresenceCoordinator.ConnectionManagerStore.addSharedConnection(forShare:createIfNeededUsing:);
  }

  return MEMORY[0x2822009F8](v12);
}

uint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.addSharedConnection(forShare:createIfNeededUsing:)()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  *(v0 + 16) = 1;
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  *(v0 + 24) = v6;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  *(v0 + 56) = 0;
  swift_beginAccess();
  v8 = v6;

  v9 = *(v7 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v7 + 136);
  *(v7 + 136) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 16), v5, v4, isUniquelyReferenced_nonNull_native);

  *(v7 + 136) = v13;
  swift_endAccess();

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[28];

  v2 = v0[1];
  v3 = v0[30];

  return v2();
}

uint64_t specialized ParticipantPresenceCoordinator._stopActivityForShare(_:connectionManager:subscriptionTasks:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](specialized ParticipantPresenceCoordinator._stopActivityForShare(_:connectionManager:subscriptionTasks:));
}

uint64_t specialized ParticipantPresenceCoordinator._stopActivityForShare(_:connectionManager:subscriptionTasks:)()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F78];
    v5 = MEMORY[0x277D84A98];
    v6 = MEMORY[0x277D84AC0];
    do
    {
      v7 = *v3++;

      MEMORY[0x2743D73C0](v8, v4 + 8, v5, v6);

      --v2;
    }

    while (v2);
  }

  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = specialized ParticipantPresenceCoordinator._stopActivityForShare(_:connectionManager:subscriptionTasks:);
  v10 = v0[3];

  return specialized CollaborationConnectionManager.leaveActivity()();
}

{
  v19 = v0;
  if ((*(v0 + 48) & 1) == 0)
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 16);
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.tabGroup);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 16);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = [v6 recordID];
      v10 = [v9 zoneID];

      v11 = [v10 zoneName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

      *(v7 + 4) = v15;
      _os_log_impl(&dword_272D1B000, v4, v5, "Failed to leave activity for share %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2743D7F00](v8, -1, -1);
      MEMORY[0x2743D7F00](v7, -1, -1);
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t specialized ParticipantPresenceCoordinator._stopActivityForShare(_:connectionManager:subscriptionTasks:)(char a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](specialized ParticipantPresenceCoordinator._stopActivityForShare(_:connectionManager:subscriptionTasks:));
}

uint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.removeSharedConnection(forShare:cleanUpIfNeeedUsing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[37] = a2;
  v3[38] = a3;
  v3[36] = a1;
  return MEMORY[0x2822009F8](specialized ParticipantPresenceCoordinator.ConnectionManagerStore.removeSharedConnection(forShare:cleanUpIfNeeedUsing:));
}

uint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.removeSharedConnection(forShare:cleanUpIfNeeedUsing:)()
{
  v62 = v0;
  v1 = [*(v0 + 288) recordID];
  v2 = [v1 zoneID];

  v3 = [v2 safari_tabGroupRootRecordName];
  if (!v3)
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.tabGroup);
    v22 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v22, v29))
    {
      goto LABEL_36;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_272D1B000, v22, v29, "Trying to start a collaboration activity with a CKShare not attached to a tab group", v30, 2u);
    v31 = v30;
LABEL_35:
    MEMORY[0x2743D7F00](v31, -1, -1);
LABEL_36:

LABEL_38:
    v52 = *(v0 + 8);

    return v52();
  }

  v4 = *(v0 + 296);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(v0 + 312) = v5;
  *(v0 + 320) = v7;
  v8 = *(v0 + 296);
  if (*(v4 + 152))
  {
    v9 = ParticipantPresenceCoordinator.ConnectionManagerStore.pausedSharedConnections.modify();
    v11 = specialized Dictionary.subscript.modify((v0 + 160), v5, v7);
    if (!*v10)
    {
      goto LABEL_6;
    }

    v12 = v10[1];
    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    if (!v13)
    {
      v10[1] = v14;
LABEL_6:
      (v11)(v0 + 160, 0);
      (v9)(v0 + 128, 0);
      v15 = *(v0 + 296);
      swift_beginAccess();
      v16 = *(v15 + 144);
      if (*(v16 + 16))
      {
        v17 = *(v15 + 144);

        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
        if (v19)
        {
          v20 = *(*(v16 + 56) + 16 * v18 + 8);

          if (v20 > 0)
          {
            if (one-time initialization token for tabGroup == -1)
            {
              goto LABEL_10;
            }

            goto LABEL_50;
          }
        }

        else
        {
        }
      }

      if (one-time initialization token for tabGroup != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.tabGroup);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v61 = v49;
        *v48 = 136446210;
        *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v61);
        _os_log_impl(&dword_272D1B000, v46, v47, "Removing last instance of paused connection for tab group %{public}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x2743D7F00](v49, -1, -1);
        MEMORY[0x2743D7F00](v48, -1, -1);
      }

      swift_beginAccess();
      specialized Dictionary.subscript.setter(0, 0, v5, v7);
      swift_endAccess();
      goto LABEL_38;
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
LABEL_10:
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.tabGroup);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v61 = v25;
      *v24 = 136446210;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v61);

      *(v24 + 4) = v26;
      v27 = "Decrementing retain count for paused tab group connection %{public}s";
LABEL_34:
      _os_log_impl(&dword_272D1B000, v22, v23, v27, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x2743D7F00](v25, -1, -1);
      v31 = v24;
      goto LABEL_35;
    }

    goto LABEL_37;
  }

  v32 = ParticipantPresenceCoordinator.ConnectionManagerStore.tabGroupIdentifiersToSharedConnections.modify();
  v34 = specialized Dictionary.subscript.modify((v0 + 96), v5, v7);
  if (v33[1])
  {
    if (__OFSUB__(*v33, 1))
    {
      goto LABEL_49;
    }

    --*v33;
  }

  (v34)(v0 + 96, 0);
  (v32)(v0 + 64, 0);
  v35 = *(v0 + 296);
  swift_beginAccess();
  v36 = *(v35 + 136);
  if (!*(v36 + 16))
  {
LABEL_30:
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.tabGroup);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v61 = v25;
      *v24 = 136446210;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v61);

      *(v24 + 4) = v51;
      v27 = "Decrementing retain count for tab group connection %{public}s";
      goto LABEL_34;
    }

LABEL_37:

    goto LABEL_38;
  }

  v37 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
  if ((v38 & 1) == 0)
  {
LABEL_29:

    goto LABEL_30;
  }

  v39 = (*(v36 + 56) + 48 * v37);
  v41 = *v39;
  v40 = v39[1];
  *(v0 + 328) = v40;
  *(v0 + 336) = v39[2];
  v42 = v39[3];
  *(v0 + 344) = v42;
  v43 = v39[4];
  *(v0 + 352) = v43;
  v44 = v40;

  if (v41 > 0)
  {

    goto LABEL_29;
  }

  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Logger.tabGroup);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v61 = v58;
    *v57 = 136446210;
    *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v61);
    _os_log_impl(&dword_272D1B000, v55, v56, "Removing last instance of active connection for tab group %{public}s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x2743D7F00](v58, -1, -1);
    MEMORY[0x2743D7F00](v57, -1, -1);
  }

  v59 = swift_task_alloc();
  *(v0 + 360) = v59;
  *v59 = v0;
  v59[1] = specialized ParticipantPresenceCoordinator.ConnectionManagerStore.removeSharedConnection(forShare:cleanUpIfNeeedUsing:);
  v60 = *(v0 + 304);

  return specialized ParticipantPresenceCoordinator._stopActivityForShare(_:connectionManager:subscriptionTasks:)(v60, v42, v43);
}

{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 296);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized ParticipantPresenceCoordinator.ConnectionManagerStore.removeSharedConnection(forShare:cleanUpIfNeeedUsing:));
}

{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 296);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v0 + 16, v6, v5);
  swift_endAccess();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t partial apply for specialized closure #1 in CollaborationConnectionManager.leaveActivity()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in CollaborationConnectionManager.leaveActivity()();
}

{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in CollaborationConnectionManager.leaveActivity()();
}

uint64_t partial apply for specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = specialized closure #1 in CollaborationConnectionManager.startActivity();

  return specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:)(a1, v4, v5, v6, v7, v9, v8);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:)(a1, v4, v5, v6, v7, v8);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.pauseSharedConnections(using:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](specialized ParticipantPresenceCoordinator.ConnectionManagerStore.pauseSharedConnections(using:));
}

uint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.pauseSharedConnections(using:)()
{
  v42 = v0;
  if (*(*(v0 + 96) + 152))
  {
    __break(1u);
  }

  else if (one-time initialization token for tabGroup == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v1 = type metadata accessor for Logger();
  *(v0 + 112) = __swift_project_value_buffer(v1, static Logger.tabGroup);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_272D1B000, v2, v3, "Pausing shared connections", v4, 2u);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  v5 = *(v0 + 96);

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So7CKShareC5share_Si5counttTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v7 = *(v5 + 144);
  *(v5 + 144) = v6;

  swift_beginAccess();
  v8 = *(v5 + 136);
  *(v0 + 120) = v8;
  v9 = *(v8 + 32);
  *(v0 + 208) = v9;
  v10 = -1;
  v11 = -1 << v9;
  if (-(-1 << v9) < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v8 + 64);

  if (v12)
  {
    v14 = 0;
LABEL_12:
    *(v0 + 128) = v12;
    *(v0 + 136) = v14;
    v16 = *(v0 + 112);
    v17 = __clz(__rbit64(v12)) | (v14 << 6);
    v18 = (*(v13 + 48) + 16 * v17);
    v19 = *v18;
    *(v0 + 144) = *v18;
    v20 = v18[1];
    *(v0 + 152) = v20;
    v21 = (*(v13 + 56) + 48 * v17);
    v22 = *v21;
    *(v0 + 160) = *v21;
    v23 = v21[1];
    *(v0 + 168) = v23;
    *(v0 + 176) = v21[2];
    v24 = v21[3];
    *(v0 + 184) = v24;
    v25 = v21[4];
    *(v0 + 192) = v25;
    v26 = v23;
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v39 = v22;
      v30 = swift_slowAlloc();
      v40 = v27;
      v41 = swift_slowAlloc();
      v31 = v41;
      *v30 = 136446466;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v41);
      *(v30 + 12) = 2050;
      *(v30 + 14) = v39;

      _os_log_impl(&dword_272D1B000, v28, v29, "Pausing connection for tab group %{public}s with retain count %{public}ld", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v32 = v31;
      v27 = v40;
      MEMORY[0x2743D7F00](v32, -1, -1);
      MEMORY[0x2743D7F00](v30, -1, -1);
    }

    else
    {
    }

    v33 = swift_task_alloc();
    *(v0 + 200) = v33;
    *v33 = v0;
    v33[1] = specialized ParticipantPresenceCoordinator.ConnectionManagerStore.pauseSharedConnections(using:);

    return specialized ParticipantPresenceCoordinator._stopActivityForShare(_:connectionManager:subscriptionTasks:)(v27, v24, v25);
  }

  else
  {
    v15 = 0;
    while (((63 - v11) >> 6) - 1 != v15)
    {
      v14 = v15 + 1;
      v12 = *(v13 + 8 * v15++ + 72);
      if (v12)
      {
        goto LABEL_12;
      }
    }

    v35 = *(v0 + 96);

    v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v37 = *(v35 + 136);
    *(v35 + 136) = v36;

    *(v35 + 152) = 1;
    v38 = *(v0 + 8);

    return v38();
  }
}

{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized ParticipantPresenceCoordinator.ConnectionManagerStore.pauseSharedConnections(using:));
}

unint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.pauseSharedConnections(using:)()
{
  v62 = v0;
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 96);
  swift_beginAccess();
  v5 = v1;
  v6 = *(v4 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + 144);
  *(v0 + 88) = v8;
  *(v4 + 144) = 0x8000000000000000;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v3, v2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  LOBYTE(v2) = v10;
  if (*(v8 + 24) >= v14)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_29:
    v58 = result;
    specialized _NativeDictionary.copy()();
    result = v58;
    goto LABEL_8;
  }

  v16 = *(v0 + 144);
  v15 = *(v0 + 152);
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
  v17 = *(v0 + 88);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
  if ((v2 & 1) != (v18 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_8:
  v19 = *(v0 + 88);
  v20 = *(v0 + 160);
  v21 = *(v0 + 168);
  v22 = *(v0 + 152);
  if (v2)
  {
    v23 = v19[7] + 16 * result;
    v24 = *v23;
    *v23 = v21;
    *(v23 + 8) = v20;
  }

  else
  {
    v25 = *(v0 + 144);
    v19[(result >> 6) + 8] |= 1 << result;
    v26 = (v19[6] + 16 * result);
    *v26 = v25;
    v26[1] = v22;
    v27 = (v19[7] + 16 * result);
    *v27 = v21;
    v27[1] = v20;
    v28 = v19[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v13)
    {
      __break(1u);
      return result;
    }

    v19[2] = v29;
  }

  v2 = *(v0 + 184);
  v30 = *(v0 + 192);
  v32 = *(v0 + 168);
  v31 = *(v0 + 176);
  *(*(v0 + 96) + 144) = v19;
  swift_endAccess();

  v33 = *(v0 + 136);
  v34 = (*(v0 + 128) - 1) & *(v0 + 128);
  if (v34)
  {
    result = *(v0 + 120);
LABEL_18:
    *(v0 + 128) = v34;
    *(v0 + 136) = v33;
    v36 = *(v0 + 112);
    v37 = __clz(__rbit64(v34)) | (v33 << 6);
    v38 = (*(result + 48) + 16 * v37);
    v39 = *v38;
    *(v0 + 144) = *v38;
    v40 = v38[1];
    *(v0 + 152) = v40;
    v41 = (*(result + 56) + 48 * v37);
    v42 = *v41;
    *(v0 + 160) = *v41;
    v43 = v41[1];
    *(v0 + 168) = v43;
    *(v0 + 176) = v41[2];
    v44 = v41[3];
    *(v0 + 184) = v44;
    v45 = v41[4];
    *(v0 + 192) = v45;
    v46 = v43;
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v47 = v46;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v59 = v42;
      v50 = swift_slowAlloc();
      v60 = v47;
      v61 = swift_slowAlloc();
      v51 = v61;
      *v50 = 136446466;
      *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v61);
      *(v50 + 12) = 2050;
      *(v50 + 14) = v59;

      _os_log_impl(&dword_272D1B000, v48, v49, "Pausing connection for tab group %{public}s with retain count %{public}ld", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v51);
      v52 = v51;
      v47 = v60;
      MEMORY[0x2743D7F00](v52, -1, -1);
      MEMORY[0x2743D7F00](v50, -1, -1);
    }

    else
    {
    }

    v53 = swift_task_alloc();
    *(v0 + 200) = v53;
    *v53 = v0;
    v53[1] = specialized ParticipantPresenceCoordinator.ConnectionManagerStore.pauseSharedConnections(using:);

    return specialized ParticipantPresenceCoordinator._stopActivityForShare(_:connectionManager:subscriptionTasks:)(v47, v44, v45);
  }

  else
  {
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      result = *(v0 + 120);
      if (v35 >= (((1 << *(v0 + 208)) + 63) >> 6))
      {
        break;
      }

      v34 = *(result + 8 * v35 + 64);
      ++v33;
      if (v34)
      {
        v33 = v35;
        goto LABEL_18;
      }
    }

    v54 = *(v0 + 96);

    v55 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v56 = *(v54 + 136);
    *(v54 + 136) = v55;

    *(v54 + 152) = 1;
    v57 = *(v0 + 8);

    return v57();
  }
}

uint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.unpauseSharedConnections(using:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](specialized ParticipantPresenceCoordinator.ConnectionManagerStore.unpauseSharedConnections(using:));
}

uint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.unpauseSharedConnections(using:)()
{
  v37 = v0;
  if (*(*(v0 + 96) + 152) == 1)
  {
    if (one-time initialization token for tabGroup == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v1 = type metadata accessor for Logger();
  *(v0 + 112) = __swift_project_value_buffer(v1, static Logger.tabGroup);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_272D1B000, v2, v3, "Unpausing shared connections", v4, 2u);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  v5 = *(v0 + 96);

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v7 = *(v5 + 136);
  *(v5 + 136) = v6;

  swift_beginAccess();
  v8 = *(v5 + 144);
  *(v0 + 120) = v8;
  v9 = *(v8 + 32);
  *(v0 + 216) = v9;
  v10 = -1;
  v11 = -1 << v9;
  if (-(-1 << v9) < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v8 + 64);

  if (v12)
  {
    v14 = 0;
LABEL_12:
    *(v0 + 128) = v12;
    *(v0 + 136) = v14;
    v16 = *(v0 + 112);
    v17 = *(v13 + 48);
    v18 = (v14 << 10) | (16 * __clz(__rbit64(v12)));
    v19 = *(v17 + v18);
    *(v0 + 144) = v19;
    v20 = *(v17 + v18 + 8);
    *(v0 + 152) = v20;
    v21 = *(v13 + 56) + v18;
    v22 = *v21;
    *(v0 + 160) = *v21;
    v23 = *(v21 + 8);
    *(v0 + 168) = v23;
    swift_bridgeObjectRetain_n();
    v24 = v22;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136446466;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v36);
      *(v27 + 12) = 2050;
      *(v27 + 14) = v23;
      _os_log_impl(&dword_272D1B000, v25, v26, "Unpausing connection for tab group %{public}s with retain count %{public}ld", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x2743D7F00](v28, -1, -1);
      MEMORY[0x2743D7F00](v27, -1, -1);
    }

    v29 = swift_task_alloc();
    *(v0 + 176) = v29;
    *v29 = v0;
    v29[1] = specialized ParticipantPresenceCoordinator.ConnectionManagerStore.unpauseSharedConnections(using:);
    v30 = *(v0 + 104);

    return specialized ParticipantPresenceCoordinator._startActivityForShare(_:tabGroupIdentifier:)(v24);
  }

  else
  {
    v15 = 0;
    while (((63 - v11) >> 6) - 1 != v15)
    {
      v14 = v15 + 1;
      v12 = *(v13 + 8 * v15++ + 72);
      if (v12)
      {
        goto LABEL_12;
      }
    }

    v32 = *(v0 + 96);

    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So7CKShareC5share_Si5counttTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v34 = *(v32 + 144);
    *(v32 + 144) = v33;

    *(v32 + 152) = 0;
    v35 = *(v0 + 8);

    return v35();
  }
}

{
  v1 = v0[20];
  v2 = v0[15];

  v3 = v0[1];
  v4 = v0[26];

  return v3();
}

uint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.unpauseSharedConnections(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 176);
  v12 = *v4;
  v5[23] = a1;
  v5[24] = a2;
  v5[25] = a3;
  v5[26] = v3;

  if (v3)
  {
    v7 = v5[19];
    v8 = v5[12];

    v9 = specialized ParticipantPresenceCoordinator.ConnectionManagerStore.unpauseSharedConnections(using:);
  }

  else
  {
    v10 = v5[12];
    v9 = specialized ParticipantPresenceCoordinator.ConnectionManagerStore.unpauseSharedConnections(using:);
  }

  return MEMORY[0x2822009F8](v9);
}

unint64_t specialized ParticipantPresenceCoordinator.ConnectionManagerStore.unpauseSharedConnections(using:)()
{
  v64 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 96);
  swift_beginAccess();
  v7 = v3;

  v8 = *(v6 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + 136);
  *(v0 + 88) = v10;
  *(v6 + 136) = 0x8000000000000000;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  LOBYTE(v1) = v12;
  if (*(v10 + 24) >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_28:
    v62 = result;
    specialized _NativeDictionary.copy()();
    result = v62;
    goto LABEL_8;
  }

  v18 = *(v0 + 144);
  v17 = *(v0 + 152);
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
  v19 = *(v0 + 88);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
  if ((v1 & 1) != (v20 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_8:
  v21 = *(v0 + 88);
  v23 = *(v0 + 192);
  v22 = *(v0 + 200);
  v24 = *(v0 + 184);
  v25 = *(v0 + 160);
  v26 = *(v0 + 168);
  v27 = *(v0 + 152);
  if (v1)
  {
    v28 = (v21[7] + 48 * result);
    v29 = v28[1];
    v30 = v28[2];
    v31 = v28[3];
    v32 = v28[4];
    *v28 = v26;
    v28[1] = v25;
    v28[2] = v24;
    v28[3] = v23;
    v28[4] = v22;
    v28[5] = 0;
  }

  else
  {
    v33 = *(v0 + 144);
    v21[(result >> 6) + 8] |= 1 << result;
    v34 = (v21[6] + 16 * result);
    *v34 = v33;
    v34[1] = v27;
    v35 = (v21[7] + 48 * result);
    *v35 = v26;
    v35[1] = v25;
    v35[2] = v24;
    v35[3] = v23;
    v35[4] = v22;
    v35[5] = 0;
    v36 = v21[2];
    v15 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v15)
    {
      __break(1u);
      return result;
    }

    v21[2] = v37;
  }

  v1 = *(v0 + 184);
  v38 = *(v0 + 192);
  v39 = *(v0 + 160);
  *(*(v0 + 96) + 136) = v21;
  swift_endAccess();

  v40 = *(v0 + 136);
  v41 = (*(v0 + 128) - 1) & *(v0 + 128);
  if (v41)
  {
    result = *(v0 + 120);
LABEL_18:
    *(v0 + 128) = v41;
    *(v0 + 136) = v40;
    v43 = *(v0 + 112);
    v44 = *(result + 48);
    v45 = (v40 << 10) | (16 * __clz(__rbit64(v41)));
    v46 = *(v44 + v45);
    *(v0 + 144) = v46;
    v47 = *(v44 + v45 + 8);
    *(v0 + 152) = v47;
    v48 = *(result + 56) + v45;
    v49 = *v48;
    *(v0 + 160) = *v48;
    v50 = *(v48 + 8);
    *(v0 + 168) = v50;
    swift_bridgeObjectRetain_n();
    v51 = v49;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v63 = v55;
      *v54 = 136446466;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v63);
      *(v54 + 12) = 2050;
      *(v54 + 14) = v50;
      _os_log_impl(&dword_272D1B000, v52, v53, "Unpausing connection for tab group %{public}s with retain count %{public}ld", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x2743D7F00](v55, -1, -1);
      MEMORY[0x2743D7F00](v54, -1, -1);
    }

    v56 = swift_task_alloc();
    *(v0 + 176) = v56;
    *v56 = v0;
    v56[1] = specialized ParticipantPresenceCoordinator.ConnectionManagerStore.unpauseSharedConnections(using:);
    v57 = *(v0 + 104);

    return specialized ParticipantPresenceCoordinator._startActivityForShare(_:tabGroupIdentifier:)(v51);
  }

  else
  {
    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      result = *(v0 + 120);
      if (v42 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v41 = *(result + 8 * v42 + 64);
      ++v40;
      if (v41)
      {
        v40 = v42;
        goto LABEL_18;
      }
    }

    v58 = *(v0 + 96);

    v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So7CKShareC5share_Si5counttTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v60 = *(v58 + 144);
    *(v58 + 144) = v59;

    *(v58 + 152) = 0;
    v61 = *(v0 + 8);

    return v61();
  }
}

void specialized ParticipantPresenceCoordinator._notifyStoreUpdates(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v33 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        v15 = *(*(a1 + 56) + 8 * v11);
        type metadata accessor for CKShareParticipant();
        lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject, type metadata accessor for CKShareParticipant);

        isa = Set._bridgeToObjectiveC()().super.isa;

        v17 = MEMORY[0x2743D7200](v13, v14);

        [Strong participantPresenceCoordinator:v33 didUpdateActiveParticipants:isa inTabGroupWithIdentifier:v17];

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    v18 = 1 << *(a2 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a2 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    while (v20)
    {
      v23 = v22;
LABEL_20:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = v24 | (v23 << 6);
      v26 = (*(a2 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(*(a2 + 56) + 8 * v25);
      type metadata accessor for CKShareParticipant();
      lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject, type metadata accessor for CKShareParticipant);

      v30 = Set._bridgeToObjectiveC()().super.isa;

      v31 = MEMORY[0x2743D7200](v27, v28);

      [Strong participantPresenceCoordinator:v33 didUpdateActiveParticipants:v30 inTabWithIdentifier:v31];
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        swift_unknownObjectRelease();
        return;
      }

      v20 = *(a2 + 64 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_20;
      }
    }

LABEL_25:
    __break(1u);
  }
}

void *partial apply for implicit closure #3 in ParticipantPresenceCoordinator.ConnectionManagerStore.addSharedConnection(forShare:createIfNeededUsing:)()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t partial apply for specialized closure #1 in CollaborationConnectionManager.startActivity()(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in CollaborationConnectionManager.startActivity()(a1, a2 & 1);
}

{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in CollaborationConnectionManager.startActivity()(a1, a2 & 1);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage()
{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessage and conformance PresenceUpdateMessage;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessage and conformance PresenceUpdateMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessage and conformance PresenceUpdateMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessage and conformance PresenceUpdateMessage;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessage and conformance PresenceUpdateMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessage and conformance PresenceUpdateMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessage and conformance PresenceUpdateMessage;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessage and conformance PresenceUpdateMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessage and conformance PresenceUpdateMessage);
  }

  return result;
}

void outlined consume of ParticipantHandleMap.ParticipantKind?(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t partial apply for specialized closure #1 in AsyncBufferedQueue.init(bufferingPolicy:)(uint64_t a1)
{
  return specialized closure #1 in AsyncBufferedQueue.init(bufferingPolicy:)(a1, *(v1 + 16), &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMR, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMR);
}

{
  return specialized closure #1 in AsyncBufferedQueue.init(bufferingPolicy:)(a1, *(v1 + 16), &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMR, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
}

{
  return specialized closure #1 in AsyncBufferedQueue.init(bufferingPolicy:)(a1, *(v1 + 16), &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMR, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
}

uint64_t partial apply for specialized closure #3 in FastSyncStateMachine.startActivity(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #3 in FastSyncStateMachine.startActivity(_:)(a1, v4, v5, v6, v7, v9, v8);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #3 in FastSyncStateMachine.startActivity(_:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for specialized closure #2 in FastSyncStateMachine.startActivity(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in FastSyncStateMachine.startActivity(_:)(a1, v4, v5, v6, v7, v9, v8);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in FastSyncStateMachine.startActivity(_:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for specialized closure #1 in FastSyncStateMachine.startActivity(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in FastSyncStateMachine.startActivity(_:)(a1, v4, v5, v6, v7, v8);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in FastSyncStateMachine.startActivity(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for specialized closure #1 in CollaborationConnectionManager.joinGroupSessionProvider(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in CollaborationConnectionManager.joinGroupSessionProvider(_:)(a1, v4, v5, v7, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in CollaborationConnectionManager.joinGroupSessionProvider(_:)(a1, v4, v5, v7, v6);
}

uint64_t outlined assign with take of Participant?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, v6, v7, v8);
}

{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, v4, v5, v6, v7, v1 + 6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, v4, v5, v6, v7, v1 + 6);
}

uint64_t partial apply for specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, v4, v5, v6, v7, v1 + 6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, v4, v5, v6, v7, v1 + 6);
}

uint64_t partial apply for specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, v4, v5, v7, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for specialized closure #1 in GroupSession.leave(on:)(uint64_t a1)
{
  return specialized closure #1 in GroupSession.leave(on:)(a1, *(v1 + 16), *(v1 + 24), &unk_28826B480, partial apply for specialized closure #1 in closure #1 in GroupSession.leave(on:), &block_descriptor);
}

{
  return specialized closure #1 in GroupSession.leave(on:)(a1, *(v1 + 16), *(v1 + 24), &unk_28826B7A0, partial apply for specialized closure #1 in closure #1 in GroupSession.leave(on:), &block_descriptor_447);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for specialized closure #1 in GroupSessionMessengerController._makeTasks()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in GroupSessionMessengerController._makeTasks()(a1, v4, v5, v6, v1 + 5);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in GroupSessionMessengerController._makeTasks()(a1, v4, v5, v6, v1 + 5);
}

uint64_t partial apply for specialized closure #2 in GroupSessionMessengerController._makeTasks()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in GroupSessionMessengerController._makeTasks()(a1, v4, v5, v6, v1 + 5);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in GroupSessionMessengerController._makeTasks()(a1, v4, v5, v6, v1 + 5);
}

uint64_t partial apply for specialized closure #1 in GroupSession.join(on:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized closure #1 in CollaborationConnectionManager.startActivity();

  return specialized closure #1 in GroupSession.join(on:)(a1, v5, v4);
}

{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in GroupSession.join(on:)(a1, v5, v4);
}

void partial apply for specialized closure #2 in GroupSession.join(on:)()
{
  specialized closure #2 in GroupSession.join(on:)(v0, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
}

{
  specialized closure #2 in GroupSession.join(on:)(v0, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
}

uint64_t partial apply for specialized closure #1 in closure #1 in GroupSession.join(on:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  return specialized closure #1 in closure #1 in GroupSession.join(on:)(a1, *(v1 + 16));
}

{
  v2 = *(v1 + 24);
  return specialized closure #1 in closure #1 in GroupSession.join(on:)(a1, *(v1 + 16));
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in GroupSession.join(on:)@<X0>(uint64_t *a1@<X8>)
{
  return partial apply for specialized closure #1 in closure #1 in closure #1 in GroupSession.join(on:)(specialized GroupSession.JoinState.join(resuming:), a1);
}

{
  return partial apply for specialized closure #1 in closure #1 in closure #1 in GroupSession.join(on:)(specialized GroupSession.JoinState.join(resuming:), a1);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v4 > 1)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
LABEL_9:

    goto LABEL_11;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {

      v5 = a2;
    }

    return;
  }

LABEL_11:
}

void outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v4 > 1)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
LABEL_9:

    goto LABEL_11;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
    }

    return;
  }

LABEL_11:
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_372Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_200Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_251Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_279Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_269Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_304Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in closure #1 in GroupSession.leave(on:)()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8) + 80);
  v2 = *(v0 + 16);
  return specialized closure #1 in closure #1 in GroupSession.leave(on:)();
}

uint64_t objectdestroy_204Tm(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  a1(v1[6]);

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in GroupSession.join(on:)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1(*(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t objectdestroy_328Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void partial apply for specialized closure #1 in GroupSession.JoinState.join(resuming:)()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);
  v2 = *(v0 + 24);
  specialized closure #1 in GroupSession.JoinState.join(resuming:)(*(v0 + 16));
}

uint64_t lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CKShareParticipant.participantIdentifier.getter()
{
  if ([v0 acceptanceStatus] != 2)
  {
    return 0;
  }

  v1 = [v0 userIdentity];
  v2 = [v1 userRecordID];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 recordName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    *&v26[0] = *a1;
    *(&v26[0] + 1) = v7;
    v26[1] = *(a1 + 16);
    v27 = v9;
    v28 = v8;
    v10 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v25;
  }

  else
  {
    v13 = *v3;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      *&v26[0] = *v4;
      if (!v17)
      {
        specialized _NativeDictionary.copy()();
        v18 = *&v26[0];
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = (*(v18 + 56) + 48 * v14);
      v22 = v20[1];
      v21 = v20[2];
      v24 = v20[3];
      v23 = v20[4];

      result = specialized _NativeDictionary._delete(at:)(v14, v18);
      *v4 = v18;
    }
  }

  return result;
}

{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = specialized _NativeDictionary._delete(at:)(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = specialized _NativeDictionary._delete(at:)(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v20;
  }

  else
  {
    v13 = *v4;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v21 = *v5;
      if (!v17)
      {
        specialized _NativeDictionary.copy()();
        v18 = v21;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      result = specialized _NativeDictionary._delete(at:)(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t ParticipantPresenceStore.handleCurrentUserPresenceUpdateMessage(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[22];
  v5 = *(a1 + 32);
  if (v5 == v4)
  {
    if (*(a1 + 40) == v3[23] && *(a1 + 48) == v3[24])
    {
      goto LABEL_16;
    }

    v7 = a2;
    v8 = a3;
    v9 = a1;
    v10 = *(a1 + 40);
    v11 = v3[23];
    v12 = v3[24];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a1 = v9;
      if (v13)
      {
        a3 = v8;
        a2 = v7;
        v14 = v3[24];
        goto LABEL_11;
      }

LABEL_16:
      if (v3[19])
      {
        v28 = 1;
      }

      else
      {
        v28 = *(a1 + 8) == 0;
      }

      if (v28)
      {
        return 0;
      }

      v29 = v3[18];
      v30 = v3[20];
      v31 = v3[21];
      v32 = v3[24];
      v33 = *(a1 + 16);
      *(v3 + 9) = *a1;
      *(v3 + 10) = v33;
      *(v3 + 11) = *(a1 + 32);
      v3[24] = *(a1 + 48);
      outlined init with copy of PresenceUpdateMessage(a1, v34);
      outlined consume of PresenceUpdateMessage.Kind(v29, 0);
      goto LABEL_21;
    }

    return 0;
  }

  if (v5 < v4)
  {
    return 0;
  }

  if (v4 >= v5)
  {
    goto LABEL_16;
  }

LABEL_11:
  v15 = a2;
  v16 = a3;
  v17 = v3[18];
  v18 = v3[19];
  v20 = v3[20];
  v19 = v3[21];
  v21 = *(a1 + 16);
  *(v3 + 9) = *a1;
  *(v3 + 10) = v21;
  *(v3 + 11) = *(a1 + 32);
  v3[24] = *(a1 + 48);
  v22 = a1;
  outlined copy of PresenceUpdateMessage.Kind(v17, v18);
  v23 = v22;
  outlined init with copy of PresenceUpdateMessage(v22, v34);
  v24 = v17;
  outlined consume of PresenceUpdateMessage.Kind(v17, v18);

  if (!v18)
  {
    return 0;
  }

  v25 = *v22;
  v26 = v23[1];

  result = v24;
  if (v26)
  {
    if (v24 != v25 || v18 != v26)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (v16)
  {
    if (v24 != v15 || v18 != v16)
    {
LABEL_28:
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return v24;
      }
    }

LABEL_21:

    return 0;
  }

  return result;
}

unint64_t ParticipantPresenceStore.handleSharedPresenceUpdateMessage(_:from:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = CKShareParticipant.participantIdentifier.getter();
  if (!v7)
  {
    goto LABEL_32;
  }

  v8 = v6;
  v9 = v7;
  swift_beginAccess();
  v10 = *(v2 + 120);
  if (!*(v10 + 16))
  {
LABEL_21:
    swift_beginAccess();
    outlined init with copy of PresenceUpdateMessage(a1, v134);

    v27 = *(v2 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134[0] = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v8, v9, isUniquelyReferenced_nonNull_native);

    *(v2 + 120) = v134[0];
    swift_endAccess();
    v29 = a1[1];
    if (!v29)
    {
      goto LABEL_31;
    }

    v30 = *a1;
    v31 = a1[2];
    v32 = a1[3];
    ParticipantPresenceStore._addParticipant(_:to:in:)(a2, v31, v32, *a1, a1[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SS18tabGroupIdentifier_SS0dF0ttGMd, &_ss23_ContiguousArrayStorageCySS_SS18tabGroupIdentifier_SS0dF0ttGMR);
    inited = swift_initStackObject();
    v133 = 1;
    *(inited + 32) = v8;
    *(inited + 16) = xmmword_272D66CD0;
    *(inited + 40) = v9;
    *(inited + 48) = v30;
    *(inited + 56) = v29;
    *(inited + 64) = v31;
    *(inited + 72) = v32;

    v132 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS18tabGroupIdentifier_SS0cE0tTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(inited + 32, &_sSS_SS18tabGroupIdentifier_SS0aC0ttMd, &_sSS_SS18tabGroupIdentifier_SS0aC0ttMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ShySo18CKShareParticipantCGtGMd, &_ss23_ContiguousArrayStorageCySS_ShySo18CKShareParticipantCGtGMR);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_272D66CD0;
    *(v34 + 32) = v30;
    v35 = v34 + 32;
    *(v34 + 40) = v29;
    swift_beginAccess();
    v36 = *(v3 + 128);
    if (*(v36 + 16))
    {

      v37 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29);
      if (v38)
      {
        v39 = *(*(v36 + 56) + 8 * v37);

        *(v34 + 48) = v39;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v34);
        swift_setDeallocating();
        outlined destroy of TaskPriority?(v35, &_sSS_ShySo18CKShareParticipantCGtMd, &_sSS_ShySo18CKShareParticipantCGtMR);
        v40 = swift_initStackObject();
        *(v40 + 16) = xmmword_272D66CD0;
        *(v40 + 32) = v31;
        v29 = v40 + 32;
        *(v40 + 40) = v32;
        swift_beginAccess();
        v41 = *(v3 + 136);
        if (*(v41 + 16))
        {

          v3 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
          v43 = v42;

          if (v43)
          {
            v44 = *(*(v41 + 56) + 8 * v3);

            *(v40 + 48) = v44;
            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v40);
            swift_setDeallocating();
            outlined destroy of TaskPriority?(v29, &_sSS_ShySo18CKShareParticipantCGtMd, &_sSS_ShySo18CKShareParticipantCGtMR);
            return v132;
          }

          goto LABEL_99;
        }

LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_98;
  }

  v11 = *(v2 + 120);

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  if ((v13 & 1) == 0)
  {

    goto LABEL_21;
  }

  v132 = v8;
  v14 = (*(v10 + 56) + 56 * v12);
  v16 = v14[4];
  v15 = v14[5];
  v17 = v14[6];
  v128 = *v14;
  v129 = v14[2];
  v133 = v14[1];
  v130 = v14[3];
  outlined copy of PresenceUpdateMessage.Kind(*v14, v133);

  v19 = a1[4];
  v18 = a1[5];
  v20 = a1[6];
  *&v131 = v17;
  if (v19 != v16)
  {
    v22 = v15;
    if (v19 >= v16)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  v21 = v18 == v15 && v20 == v17;
  v22 = v15;
  if (!v21)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v22 = v15;
    if (v23)
    {
LABEL_30:

      outlined consume of PresenceUpdateMessage.Kind(v128, v133);
LABEL_31:

      goto LABEL_32;
    }
  }

LABEL_10:
  v24 = a1[1];
  v127 = a1[3];
  if (!v133)
  {
    if (v24)
    {
      v48 = a1[2];
      v49 = a1[1];
      v50 = *a1;

      ParticipantPresenceStore._addParticipant(_:to:in:)(a2, v48, v127, v50, v49);
      swift_beginAccess();
      outlined init with copy of PresenceUpdateMessage(a1, v134);

      v51 = *(v3 + 120);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v134[0] = *(v3 + 120);
      *(v3 + 120) = 0x8000000000000000;
      v53 = a1;
      v35 = v127;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, v132, v9, v52);

      *(v3 + 120) = v134[0];
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SS18tabGroupIdentifier_SS0dF0ttGMd, &_ss23_ContiguousArrayStorageCySS_SS18tabGroupIdentifier_SS0dF0ttGMR);
      v54 = swift_initStackObject();
      v133 = 1;
      *(v54 + 32) = v132;
      v55 = v50;
      *(v54 + 16) = xmmword_272D66CD0;
      *(v54 + 40) = v9;
      *(v54 + 48) = v50;
      *(v54 + 56) = v49;
      *(v54 + 64) = v48;
      v126 = v48;
      *(v54 + 72) = v127;

      v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS18tabGroupIdentifier_SS0cE0tTt0g5Tf4g_n(v54);
      swift_setDeallocating();
      outlined destroy of TaskPriority?(v54 + 32, &_sSS_SS18tabGroupIdentifier_SS0aC0ttMd, &_sSS_SS18tabGroupIdentifier_SS0aC0ttMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ShySo18CKShareParticipantCGtGMd, &_ss23_ContiguousArrayStorageCySS_ShySo18CKShareParticipantCGtGMR);
      v57 = swift_initStackObject();
      *(v57 + 16) = xmmword_272D66CD0;
      *(v57 + 32) = v50;
      v29 = v57 + 32;
      *(v57 + 40) = v49;
      swift_beginAccess();
      v58 = *(v3 + 128);
      if (*(v58 + 16))
      {
        v132 = v56;

        v59 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v49);
        if (v60)
        {
          v61 = *(*(v58 + 56) + 8 * v59);

          *(v57 + 48) = v61;
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v57);
          swift_setDeallocating();
          outlined destroy of TaskPriority?(v29, &_sSS_ShySo18CKShareParticipantCGtMd, &_sSS_ShySo18CKShareParticipantCGtMR);
          v29 = swift_initStackObject();
          *(v29 + 16) = xmmword_272D66CD0;
          *(v29 + 32) = v126;
          *(v29 + 40) = v127;
          swift_beginAccess();
          v62 = *(v3 + 136);
          if (*(v62 + 16))
          {

            v3 = specialized __RawDictionaryStorage.find<A>(_:)(v126, v127);
            v64 = v63;

            v45 = v56;
            if (v64)
            {
              v65 = *(*(v62 + 56) + 8 * v3);

              *(v29 + 48) = v65;
              _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v29);
              swift_setDeallocating();
              outlined destroy of TaskPriority?(v29 + 32, &_sSS_ShySo18CKShareParticipantCGtMd, &_sSS_ShySo18CKShareParticipantCGtMR);
              return v45;
            }

            goto LABEL_103;
          }

LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          if (__CocoaSet.count.getter())
          {
            _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
            v80 = v120;
LABEL_53:
            v81 = v129;
            v82 = v130;

            *(v35 + 48) = v80;
            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v35);
            swift_setDeallocating();
            outlined destroy of TaskPriority?(v9, &_sSS_ShySo18CKShareParticipantCGtMd, &_sSS_ShySo18CKShareParticipantCGtMR);
            v83 = swift_initStackObject();
            *(v83 + 16) = v131;
            *(v83 + 32) = v129;
            *(v83 + 40) = v130;
            swift_beginAccess();
            v84 = *(v3 + 136);
            v85 = *(v84 + 16);

            if (v85 && (v86 = specialized __RawDictionaryStorage.find<A>(_:)(v129, v130), (v87 & 1) != 0))
            {
              v88 = *(*(v84 + 56) + 8 * v86);
            }

            else if (v29 >> 62)
            {
              if (__CocoaSet.count.getter())
              {
                _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
                v88 = v121;
              }

              else
              {
                v88 = MEMORY[0x277D84FA0];
              }

              v81 = v129;
              v82 = v130;
            }

            else
            {
              v88 = MEMORY[0x277D84FA0];
            }

            *(v83 + 48) = v88;
            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v83);
            swift_setDeallocating();
            outlined destroy of TaskPriority?(v83 + 32, &_sSS_ShySo18CKShareParticipantCGtMd, &_sSS_ShySo18CKShareParticipantCGtMR);
            if (v128 == v125 && v133 == v124)
            {

              v89 = v127;
            }

            else
            {
              v89 = v127;
              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
              }

              else
              {
                v109 = *(v3 + 128);
                if (*(v109 + 16))
                {
                  v110 = *(v3 + 128);

                  v111 = specialized __RawDictionaryStorage.find<A>(_:)(v125, v124);
                  if (v112)
                  {
                    v113 = *(*(v109 + 56) + 8 * v111);
                  }

                  else
                  {
                    v113 = 0;
                  }
                }

                else
                {
                  v113 = 0;
                }

                specialized Dictionary.subscript.setter(v113, v125, v124);
              }
            }

            if (v81 == v126 && v82 == v89 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              outlined consume of PresenceUpdateMessage.Kind(v128, v133);
            }

            else
            {
              v115 = *(v3 + 136);
              if (*(v115 + 16))
              {
                v116 = *(v3 + 136);

                v117 = specialized __RawDictionaryStorage.find<A>(_:)(v126, v89);
                if (v118)
                {
                  v119 = *(*(v115 + 56) + 8 * v117);
                }

                else
                {
                  v119 = 0;
                }
              }

              else
              {
                v119 = 0;
              }

              specialized Dictionary.subscript.setter(v119, v126, v89);
              outlined consume of PresenceUpdateMessage.Kind(v128, v133);
            }

            return v132;
          }

LABEL_52:
          v80 = MEMORY[0x277D84FA0];
          goto LABEL_53;
        }

LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    swift_beginAccess();
    outlined init with copy of PresenceUpdateMessage(a1, v134);
    v90 = *(v3 + 120);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v134[0] = *(v3 + 120);
    *(v3 + 120) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v132, v9, v91);

    *(v3 + 120) = v134[0];
    swift_endAccess();
LABEL_32:
    v46 = MEMORY[0x277D84F90];
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS18tabGroupIdentifier_SS0cE0tTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v46);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v46);
    return v45;
  }

  if (v24)
  {
    v125 = *a1;
    if (v19 != v16)
    {
      v126 = a1[2];
      v68 = a1[1];

      v69 = v127;

      v70 = v130;
LABEL_48:
      ParticipantPresenceStore._removeParticipant(_:from:in:)(v132, v9, v129, v70, v128, v133);
      ParticipantPresenceStore._addParticipant(_:to:in:)(a2, v126, v69, v125, v68);
      swift_beginAccess();
      outlined init with copy of PresenceUpdateMessage(a1, v134);

      v71 = *(v3 + 120);
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v134[0] = *(v3 + 120);
      *(v3 + 120) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v132, v9, v72);

      *(v3 + 120) = v134[0];
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SS18tabGroupIdentifier_SS0dF0ttGMd, &_ss23_ContiguousArrayStorageCySS_SS18tabGroupIdentifier_SS0dF0ttGMR);
      v73 = swift_initStackObject();
      v131 = xmmword_272D66CD0;
      *(v73 + 32) = v132;
      *(v73 + 16) = xmmword_272D66CD0;
      *(v73 + 40) = v9;
      *(v73 + 48) = v125;
      *(v73 + 56) = v68;
      *(v73 + 64) = v126;
      *(v73 + 72) = v69;
      v124 = v68;

      v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS18tabGroupIdentifier_SS0cE0tTt0g5Tf4g_n(v73);
      swift_setDeallocating();
      outlined destroy of TaskPriority?(v73 + 32, &_sSS_SS18tabGroupIdentifier_SS0aC0ttMd, &_sSS_SS18tabGroupIdentifier_SS0aC0ttMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ShySo18CKShareParticipantCGtGMd, &_ss23_ContiguousArrayStorageCySS_ShySo18CKShareParticipantCGtGMR);
      v35 = swift_initStackObject();
      *(v35 + 16) = xmmword_272D66CD0;
      *(v35 + 32) = v128;
      v9 = v35 + 32;
      *(v35 + 40) = v133;
      swift_beginAccess();
      v75 = *(v3 + 128);
      v76 = *(v75 + 16);

      v77 = MEMORY[0x277D84F90];
      v132 = v74;
      if (v76)
      {
        v78 = specialized __RawDictionaryStorage.find<A>(_:)(v128, v133);
        if (v79)
        {
          v29 = v77;
          v80 = *(*(v75 + 56) + 8 * v78);

          goto LABEL_53;
        }
      }

      v29 = v77;
      if (!(v77 >> 62))
      {
        goto LABEL_52;
      }

      goto LABEL_104;
    }

    if (v22 == v18 && v17 == v20)
    {
    }

    else
    {
      v126 = a1[2];
      v70 = v130;
      v68 = a1[1];
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v69 = v127;

      if ((v26 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_80:

    v114 = MEMORY[0x277D84F90];
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS18tabGroupIdentifier_SS0cE0tTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v114);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v114);
    outlined consume of PresenceUpdateMessage.Kind(v128, v133);
    return v45;
  }

  if (v19 == v16)
  {
    v92 = v130;
    v66 = v22 == v18 && v17 == v20;
    v93 = v128;
    if (v66)
    {

      goto LABEL_80;
    }

    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v67)
    {
      goto LABEL_80;
    }
  }

  else
  {

    v92 = v130;
    v93 = v128;
  }

  v94 = v133;
  ParticipantPresenceStore._removeParticipant(_:from:in:)(v132, v9, v129, v92, v93, v133);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v95 = swift_initStackObject();
  *(v95 + 16) = xmmword_272D66CD0;
  *(v95 + 32) = v132;
  v96 = v95 + 32;
  *(v95 + 40) = v9;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(v95);
  swift_setDeallocating();
  outlined destroy of String(v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ShySo18CKShareParticipantCGtGMd, &_ss23_ContiguousArrayStorageCySS_ShySo18CKShareParticipantCGtGMR);
  v97 = swift_initStackObject();
  *(v97 + 16) = xmmword_272D66CD0;
  *(v97 + 32) = v93;
  *(v97 + 40) = v133;
  swift_beginAccess();
  v98 = *(v3 + 128);
  v99 = *(v98 + 16);

  if (v99 && (v100 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v133), (v101 & 1) != 0))
  {
    v102 = *(*(v98 + 56) + 8 * v100);
  }

  else if (MEMORY[0x277D84F90] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v102 = v122;
    }

    else
    {
      v102 = MEMORY[0x277D84FA0];
    }

    v94 = v133;
    v93 = v128;
  }

  else
  {
    v102 = MEMORY[0x277D84FA0];
  }

  *(v97 + 48) = v102;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v97);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v97 + 32, &_sSS_ShySo18CKShareParticipantCGtMd, &_sSS_ShySo18CKShareParticipantCGtMR);
  v103 = swift_initStackObject();
  *(v103 + 16) = xmmword_272D66CD0;
  *(v103 + 32) = v129;
  *(v103 + 40) = v130;
  swift_beginAccess();
  v104 = *(v3 + 136);
  v105 = *(v104 + 16);

  if (v105 && (v106 = specialized __RawDictionaryStorage.find<A>(_:)(v129, v130), (v107 & 1) != 0))
  {
    v108 = *(*(v104 + 56) + 8 * v106);
  }

  else if (MEMORY[0x277D84F90] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v108 = v123;
    }

    else
    {
      v108 = MEMORY[0x277D84FA0];
    }

    v94 = v133;
    v93 = v128;
  }

  else
  {
    v108 = MEMORY[0x277D84FA0];
  }

  *(v103 + 48) = v108;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v103);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v103 + 32, &_sSS_ShySo18CKShareParticipantCGtMd, &_sSS_ShySo18CKShareParticipantCGtMR);
  v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS18tabGroupIdentifier_SS0cE0tTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  outlined consume of PresenceUpdateMessage.Kind(v93, v94);
  return v45;
}

void specialized thunk for @callee_guaranteed () -> (@owned Set<CKShareParticipant>)(void *a1@<X8>)
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v2 = MEMORY[0x277D84FA0];
    }

    *a1 = v2;
  }

  else
  {
    *a1 = MEMORY[0x277D84FA0];
  }
}

unint64_t ParticipantPresenceStore.replace(share:with:in:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v10 = [a1 recordID];
  v11 = [a2 recordID];
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v61 = a3;
  valid = CKShare.identifiersToValidParticipants.getter();
  v13 = MEMORY[0x277D84F90];
  v58 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS18tabGroupIdentifier_SS0cE0tTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v13);
  v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v13);
  v69 = MEMORY[0x277D84FA0];
  v14 = CKShare.identifiersToValidParticipants.getter();
  v10 = (v14 + 64);
  v66 = v14;
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  swift_beginAccess();
  swift_beginAccess();
  v18 = 0;
  v19 = (v15 + 63) >> 6;
  v64 = v10;
  v65 = v5;
  v63 = v19;
  v60 = a4;
  while (v17)
  {
LABEL_10:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = (*(v66 + 48) + ((v18 << 10) | (16 * v21)));
    v24 = *v22;
    v23 = v22[1];
    v25 = *(v5 + 120);
    v26 = *(v25 + 16);

    v67 = v23;
    if (!v26)
    {
      v31 = 0;
      v30 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
LABEL_23:

      outlined consume of PresenceUpdateMessage?(v31, v30, v32, v33, v34, v26, 0);
      goto LABEL_24;
    }

    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v23);
    if ((v28 & 1) == 0)
    {

      v31 = 0;
      v30 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v26 = 0;
      goto LABEL_23;
    }

    v57 = v24;
    v29 = (*(v25 + 56) + 56 * v27);
    v31 = *v29;
    v30 = v29[1];
    v32 = v29[2];
    v33 = v29[3];
    v34 = v29[4];
    v26 = v29[5];
    v35 = v29[6];
    outlined copy of PresenceUpdateMessage.Kind(*v29, v30);

    if (!v35)
    {
      a4 = v60;
      goto LABEL_23;
    }

    outlined copy of PresenceUpdateMessage.Kind(v31, v30);
    outlined consume of PresenceUpdateMessage?(v31, v30, v32, v33, v34, v26, v35);
    if (!v30)
    {

      a4 = v60;
      goto LABEL_24;
    }

    a4 = v60;
    if (v31 == v61 && v30 == v60)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {

LABEL_24:
        v5 = v65;
        goto LABEL_25;
      }
    }

    v38 = v33;
    v5 = v65;
    if (*(valid + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v67), (v40 & 1) != 0))
    {
      v41 = *(*(valid + 56) + 8 * v39);
      ParticipantPresenceStore._removeParticipant(_:from:in:)(v57, v67, v32, v33, v61, v60);

      ParticipantPresenceStore._addParticipant(_:to:in:)(v41, v32, v33, v61, v60);

LABEL_25:
      v19 = v63;
      v10 = v64;
    }

    else
    {
      ParticipantPresenceStore._removeParticipant(_:from:in:)(v57, v67, v32, v33, v61, v60);
      specialized Set._Variant.insert(_:)(&v68, v57, v67);

      v42 = *(v65 + 136);
      v43 = *(v42 + 16);

      if (v43 && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v33), (v45 & 1) != 0))
      {
        v46 = *(*(v42 + 56) + 8 * v44);
      }

      else if (MEMORY[0x277D84F90] >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v46 = v48;
        }

        else
        {
          v46 = MEMORY[0x277D84FA0];
        }

        a4 = v60;
        v5 = v65;
      }

      else
      {
        v46 = MEMORY[0x277D84FA0];
      }

      v10 = v64;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v59;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, v32, v38, isUniquelyReferenced_nonNull_native);

      v59 = v68;
      v19 = v63;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v20 >= v19)
    {
      break;
    }

    v17 = *(v10 + v20);
    ++v18;
    if (v17)
    {
      v18 = v20;
      goto LABEL_10;
    }
  }

  if (!*(v69 + 16))
  {
    return v58;
  }

  swift_beginAccess();
  v49 = *(v5 + 128);
  v50 = *(v49 + 16);

  v10 = v61;
  if (v50)
  {
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(v61, a4);
    if (v52)
    {
      v53 = *(*(v49 + 56) + 8 * v51);

      goto LABEL_47;
    }
  }

  if (!(MEMORY[0x277D84F90] >> 62))
  {
LABEL_46:
    v53 = MEMORY[0x277D84FA0];
    goto LABEL_47;
  }

LABEL_51:
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_46;
  }

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v53 = v56;
LABEL_47:

  v54 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, v10, a4, v54);

  return v58;
}

uint64_t CKShare.identifiersToValidParticipants.getter()
{
  v1 = [v0 participants];
  type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v24 = v5;
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2743D7610](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ([v7 acceptanceStatus] == 2)
      {
        v9 = [v8 userIdentity];
        v10 = [v9 userRecordID];

        if (v10)
        {
          break;
        }
      }

      ++v6;
      if (v4 == v3)
      {
        v5 = v24;
        goto LABEL_25;
      }
    }

    v11 = [v10 recordName];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
    }

    v17 = v24[2];
    v16 = v24[3];
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v24);
      v18 = v17 + 1;
      v24 = v20;
    }

    v24[2] = v18;
    v19 = &v24[3 * v17];
    v19[4] = v12;
    v19[5] = v14;
    v5 = v24;
    v19[6] = v8;
  }

  while (v4 != v3);
LABEL_25:

  if (v5[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo18CKShareParticipantCGMd, &_ss18_DictionaryStorageCySSSo18CKShareParticipantCGMR);
    v21 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v21 = MEMORY[0x277D84F98];
  }

  v25 = v21;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v22, 1, &v25);

  return v25;
}

unint64_t ParticipantPresenceStore.participants(_:didLeaveTabGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = MEMORY[0x277D84F90];
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS18tabGroupIdentifier_SS0cE0tTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v7);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v7);
  v84 = MEMORY[0x277D84FA0];
  v77 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    a1 = v85;
    v10 = v86;
    v12 = v87;
    v11 = v88;
    v81 = v89;
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v12 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v81 = v15 & *(a1 + 56);

    v11 = 0;
  }

  v76 = v8;
  v16 = (v12 + 64) >> 6;
  v17 = 0x279E7D000uLL;
  v72 = v7 >> 62;
  v78 = a1;
  v79 = v5;
LABEL_8:
  v18 = v11;
  v19 = v81;
  while (1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v20 = v18;
      v21 = v19;
      v11 = v18;
      if (!v19)
      {
        while (1)
        {
          v11 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v11 >= v16)
          {
            goto LABEL_52;
          }

          v21 = *(v10 + 8 * v11);
          ++v20;
          if (v21)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_15:
      v22 = (v21 - 1) & v21;
      v4 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v21)))));
      if (!v4)
      {
        break;
      }

      goto LABEL_19;
    }

    v23 = __CocoaSet.Iterator.next()();
    if (!v23)
    {
      break;
    }

    v83 = v23;
    type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
    swift_dynamicCast();
    v4 = v82[0];
    v11 = v18;
    v22 = v19;
    if (!v82[0])
    {
      break;
    }

LABEL_19:
    if ([v4 *(v17 + 2456)] == 2)
    {
      v81 = v22;
      v24 = [v4 userIdentity];
      v25 = [v24 userRecordID];

      if (!v25)
      {
        goto LABEL_40;
      }

      v26 = [v25 recordName];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      swift_beginAccess();
      v30 = *(v5 + 120);
      v80 = v29;
      if (!*(v30 + 16))
      {
        goto LABEL_32;
      }

      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v29);
      if ((v32 & 1) == 0)
      {

LABEL_32:
        v34 = 0;
        v35 = 0;
        v41 = 0;
        v42 = 0;
        v37 = 0;
        v36 = 0;
        goto LABEL_33;
      }

      v69 = v27;
      v33 = (*(v30 + 56) + 56 * v31);
      v34 = *v33;
      v35 = v33[1];
      v37 = v33[4];
      v36 = v33[5];
      v38 = v33[6];
      v70 = v33[3];
      v71 = v33[2];
      outlined copy of PresenceUpdateMessage.Kind(*v33, v35);

      if (v38)
      {
        outlined copy of PresenceUpdateMessage.Kind(v34, v35);
        outlined consume of PresenceUpdateMessage?(v34, v35, v71, v70, v37, v36, v38);
        if (!v35)
        {
          v5 = v79;
          swift_beginAccess();
          v43 = *(v79 + 120);
          v44 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v80);
          LOBYTE(v43) = v45;

          a1 = v78;
          v17 = 0x279E7D000;
          if (v43)
          {
            v46 = *(v79 + 120);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v48 = *(v79 + 120);
            v83 = v48;
            *(v79 + 120) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v48 = v83;
            }

            v49 = *(*(v48 + 48) + 16 * v44 + 8);

            v50 = (*(v48 + 56) + 56 * v44);
            v51 = v50[2];
            v52 = v50[3];
            v53 = v50[6];
            outlined consume of PresenceUpdateMessage.Kind(*v50, v50[1]);

            specialized _NativeDictionary._delete(at:)(v44, v48);
            *(v79 + 120) = v48;
          }

          swift_endAccess();
LABEL_40:

          goto LABEL_8;
        }

        v39 = v34 == a2 && v35 == a3;
        v5 = v79;
        if (v39)
        {

          a1 = v78;
LABEL_42:
          ParticipantPresenceStore._removeParticipant(_:from:in:)(v69, v80, v71, v70, a2, a3);
          swift_beginAccess();
          specialized Dictionary._Variant.removeValue(forKey:)(v69, v80, v82);
          outlined consume of PresenceUpdateMessage?(v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6]);
          swift_endAccess();
          specialized Set._Variant.insert(_:)(v82, v69, v80);

          swift_beginAccess();
          v54 = *(v79 + 136);
          v55 = *(v54 + 16);

          v17 = 0x279E7D000;
          if (v55 && (v56 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v70), (v57 & 1) != 0))
          {
            v58 = *(*(v54 + 56) + 8 * v56);
          }

          else if (v72)
          {
            if (__CocoaSet.count.getter())
            {
              _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v58 = v60;
            }

            else
            {
              v58 = MEMORY[0x277D84FA0];
            }

            a1 = v78;
            v5 = v79;
          }

          else
          {
            v58 = MEMORY[0x277D84FA0];
          }

          v59 = swift_isUniquelyReferenced_nonNull_native();
          v82[0] = v77;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v71, v70, v59);

          v77 = v82[0];
          goto LABEL_8;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a1 = v78;
        if (v40)
        {
          goto LABEL_42;
        }

        v18 = v11;
        v19 = v81;
        v17 = 0x279E7D000;
      }

      else
      {
        v42 = v70;
        v41 = v71;
LABEL_33:

        outlined consume of PresenceUpdateMessage?(v34, v35, v41, v42, v37, v36, 0);
        v18 = v11;
        v19 = v81;
        a1 = v78;
        v5 = v79;
        v17 = 0x279E7D000;
      }
    }

    else
    {

      v18 = v11;
      v19 = v22;
    }
  }

LABEL_52:
  outlined consume of Set<Participant>.Iterator._Variant();
  if (*(v84 + 16))
  {
    swift_beginAccess();
    v61 = *(v5 + 128);
    v62 = *(v61 + 16);

    v18 = v76;
    v4 = a2;
    a1 = a3;
    if (v62)
    {
      v63 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v64)
      {
        v65 = *(*(v61 + 56) + 8 * v63);

LABEL_58:

        v66 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v75;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v65, v4, a1, v66);

        return v18;
      }
    }

    if (!v72)
    {
LABEL_57:
      v65 = MEMORY[0x277D84FA0];
      goto LABEL_58;
    }

LABEL_62:
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v65 = v68;
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  return v76;
}

uint64_t ParticipantPresenceStore.removeTabGroup(_:)(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v5 = MEMORY[0x277D84F90];
  v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS18tabGroupIdentifier_SS0cE0tTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v67 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v5);
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v5);
  v83 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v79 = v2;
  v7 = *(v2 + 128);
  v8 = *(v7 + 16);

  v78 = v6;
  if (v8)
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, a2);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);

      goto LABEL_6;
    }
  }

  if (v5 >> 62)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    if ((v11 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
      lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject();
      Set.Iterator.init(_cocoa:)();
      v11 = v84;
      v12 = v85;
      v13 = v86;
      v14 = v87;
      v15 = v88;
    }

    else
    {
      v14 = 0;
      v16 = -1 << *(v11 + 32);
      v12 = v11 + 56;
      v13 = ~v16;
      v17 = -v16;
      v18 = v17 < 64 ? ~(-1 << v17) : -1;
      v15 = v18 & *(v11 + 56);
    }

    v19 = (v13 + 64) >> 6;
    v73 = a2;
    v74 = MEMORY[0x277D84F90] >> 62;
    v71 = v11;
    v72 = isUniquelyReferenced_nonNull_native;
    v69 = v19;
    v70 = v12;
    if (v11 < 0)
    {
      break;
    }

    while (1)
    {
      v23 = v14;
      v24 = v15;
      v21 = v14;
      if (!v15)
      {
        break;
      }

LABEL_20:
      v22 = (v24 - 1) & v24;
      v20 = *(*(v11 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v24)))));
      if (!v20)
      {
        goto LABEL_48;
      }

LABEL_21:
      v77 = v22;
      v25 = v20;
      if ([v20 acceptanceStatus] != 2)
      {
        goto LABEL_63;
      }

      v26 = [v25 userIdentity];
      v27 = [v26 userRecordID];

      if (!v27)
      {
        goto LABEL_63;
      }

      v76 = v25;
      v28 = [v27 recordName];

      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      swift_beginAccess();
      v31 = *(v79 + 120);
      if (!*(v31 + 16))
      {
        goto LABEL_62;
      }

      v32 = *(v79 + 120);

      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v30);
      if ((v34 & 1) == 0)
      {
        goto LABEL_60;
      }

      v35 = (*(v31 + 56) + 56 * v33);
      v37 = *v35;
      v36 = v35[1];
      v38 = v35[3];
      v75 = v35[2];
      outlined copy of PresenceUpdateMessage.Kind(*v35, v36);

      if (!v36)
      {
        goto LABEL_62;
      }

      v39 = v37 == isUniquelyReferenced_nonNull_native && v36 == a2;
      if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        outlined consume of PresenceUpdateMessage.Kind(v37, v36);
        goto LABEL_62;
      }

      swift_beginAccess();

      v40 = *(v79 + 120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v79 + 120);
      v81 = v41;
      *(v79 + 120) = 0x8000000000000000;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v30);
      v44 = v41[2];
      v45 = (v42 & 1) == 0;
      v46 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        goto LABEL_54;
      }

      v47 = v42;
      if (v41[3] >= v46)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v42 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if ((v47 & 1) == 0)
          {
            goto LABEL_59;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v30);
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_64;
        }

        v43 = v48;
        if ((v47 & 1) == 0)
        {
LABEL_59:
          __break(1u);
LABEL_60:

LABEL_62:

LABEL_63:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_64:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v50 = (v41[7] + 56 * v43);
      v51 = v50[6];
      if (!v51)
      {
        goto LABEL_59;
      }

      v53 = v50[4];
      v52 = v50[5];
      v54 = v50[2];
      v55 = v50[3];
      outlined consume of PresenceUpdateMessage.Kind(*v50, v50[1]);
      v56 = v81[7] + 56 * v43;
      *v56 = 0u;
      *(v56 + 16) = 0u;
      *(v56 + 32) = v53;
      *(v56 + 40) = v52;
      *(v56 + 48) = v51;
      outlined copy of PresenceUpdateMessage?(0, 0, 0, 0, v53, v52, v51);
      outlined consume of PresenceUpdateMessage?(0, 0, 0, 0, v53, v52, v51);
      *(v79 + 120) = v81;
      swift_endAccess();
      outlined consume of PresenceUpdateMessage.Kind(v37, v36);
      ParticipantPresenceStore._removeParticipant(_:from:in:)(v80, v30, v75, v38, v37, v36);

      specialized Set._Variant.insert(_:)(&v82, v80, v30);

      if (v74)
      {
        v60 = MEMORY[0x277D84F90];
        isUniquelyReferenced_nonNull_native = v72;
        a2 = v73;
        v58 = v78;
        v19 = v69;
        v12 = v70;
        if (__CocoaSet.count.getter())
        {
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(v60);
          v57 = v61;
        }

        else
        {
          v57 = MEMORY[0x277D84FA0];
        }
      }

      else
      {
        v57 = MEMORY[0x277D84FA0];
        isUniquelyReferenced_nonNull_native = v72;
        a2 = v73;
        v58 = v78;
        v19 = v69;
        v12 = v70;
      }

      v59 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v58;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, v75, v38, v59);

      v78 = v82;
      v14 = v21;
      v15 = v77;
      v11 = v71;
      if (v71 < 0)
      {
        goto LABEL_13;
      }
    }

    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
        goto LABEL_48;
      }

      v24 = *(v12 + 8 * v21);
      ++v23;
      if (v24)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v11 = v65;
      goto LABEL_6;
    }
  }

LABEL_13:
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
    swift_dynamicCast();
    v20 = v82;
    v21 = v14;
    v22 = v15;
    if (v82)
    {
      goto LABEL_21;
    }
  }

LABEL_48:
  outlined consume of Set<Participant>.Iterator._Variant();
  if (*(v83 + 16))
  {
    if (v74 && __CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v62 = v66;
    }

    else
    {
      v62 = MEMORY[0x277D84FA0];
    }

    v63 = swift_isUniquelyReferenced_nonNull_native();
    v82 = v67;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, isUniquelyReferenced_nonNull_native, a2, v63);
  }

  return v68;
}

uint64_t ParticipantPresenceStore.removeTab(_:)(uint64_t a1, uint64_t isUniquelyReferenced_nonNull_native)
{
  v5 = MEMORY[0x277D84F90];
  v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS18tabGroupIdentifier_SS0cE0tTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v5);
  v67 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo18CKShareParticipantCGTt0g5Tf4g_n(v5);
  v84 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v79 = v2;
  v7 = *(v2 + 136);
  v8 = *(v7 + 16);

  v77 = v6;
  if (v8 && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, isUniquelyReferenced_nonNull_native), (v10 & 1) != 0))
  {
    v11 = *(*(v7 + 56) + 8 * v9);
  }

  else
  {
    if (v5 >> 62)
    {
LABEL_57:
      if (__CocoaSet.count.getter())
      {
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v11 = v65;
        goto LABEL_6;
      }
    }

    v11 = MEMORY[0x277D84FA0];
  }

LABEL_6:

  if ((v11 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v11 = v85;
    v12 = v86;
    v13 = v87;
    v14 = v88;
    v15 = v89;
  }

  else
  {
    v14 = 0;
    v16 = -1 << *(v11 + 32);
    v12 = v11 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v11 + 56);
  }

  v19 = (v13 + 64) >> 6;
  v69 = v5 >> 62;
  v70 = v19;
  v73 = a1;
  v74 = isUniquelyReferenced_nonNull_native;
  v71 = v12;
  v72 = v11;
  while (1)
  {
    v5 = v15;
    if (v11 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_50;
      }

      type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
      swift_dynamicCast();
      v25 = v83;
      v24 = v5;
      if (!v83)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v23 = v14;
      if (!v15)
      {
        while (1)
        {
          v14 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v14 >= v19)
          {
            goto LABEL_50;
          }

          v15 = *(v12 + 8 * v14);
          ++v23;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_20:
      v24 = (v15 - 1) & v15;
      v25 = *(*(v11 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v25)
      {
        goto LABEL_50;
      }
    }

    v76 = v24;
    v26 = v25;
    if ([v25 acceptanceStatus] != 2)
    {
      goto LABEL_64;
    }

    v27 = [v26 userIdentity];
    v28 = [v27 userRecordID];

    if (!v28)
    {
      goto LABEL_64;
    }

    v75 = v26;
    v29 = [v28 recordName];

    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v30;

    swift_beginAccess();
    v31 = *(v79 + 120);
    if (!*(v31 + 16))
    {
      goto LABEL_63;
    }

    v32 = *(v79 + 120);

    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v81);
    if ((v34 & 1) == 0)
    {

LABEL_63:

LABEL_64:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_65:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v35 = (*(v31 + 56) + 56 * v33);
    v5 = *v35;
    v36 = v35[1];
    v38 = v35[2];
    v37 = v35[3];
    outlined copy of PresenceUpdateMessage.Kind(*v35, v36);

    if (!v36)
    {
      goto LABEL_63;
    }

    v39 = v38 == a1 && v37 == isUniquelyReferenced_nonNull_native;
    if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      outlined consume of PresenceUpdateMessage.Kind(v5, v36);
      goto LABEL_63;
    }

    a1 = v81;
    ParticipantPresenceStore._removeParticipant(_:from:in:)(v80, v81, v38, v37, v5, v36);
    swift_beginAccess();
    v40 = *(v79 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v79 + 120);
    v82 = v41;
    *(v79 + 120) = 0x8000000000000000;
    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v81);
    v44 = v41[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_56;
    }

    a1 = v42;
    v78 = v5;
    if (v41[3] < v46)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v42 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((a1 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

LABEL_41:
    v49 = (v41[7] + 56 * v43);
    v50 = v49[6];
    if (!v50)
    {
      goto LABEL_49;
    }

    v52 = v49[4];
    v51 = v49[5];
    v53 = v49[2];
    v54 = v49[3];
    outlined consume of PresenceUpdateMessage.Kind(*v49, v49[1]);
    v55 = v82[7] + 56 * v43;
    *v55 = 0u;
    *(v55 + 16) = 0u;
    *(v55 + 32) = v52;
    *(v55 + 40) = v51;
    *(v55 + 48) = v50;
    outlined copy of PresenceUpdateMessage?(0, 0, 0, 0, v52, v51, v50);
    outlined consume of PresenceUpdateMessage?(0, 0, 0, 0, v52, v51, v50);
    *(v79 + 120) = v82;
    swift_endAccess();

    outlined consume of PresenceUpdateMessage.Kind(v5, v36);
    specialized Set._Variant.insert(_:)(&v83, v80, v81);

    swift_beginAccess();
    v56 = *(v79 + 128);
    v57 = *(v56 + 16);

    if (v57 && (v58 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v36), (v59 & 1) != 0))
    {
      v20 = *(*(v56 + 56) + 8 * v58);

      a1 = v73;
      isUniquelyReferenced_nonNull_native = v74;
      v21 = v77;
      v11 = v72;
      v19 = v70;
    }

    else
    {
      a1 = v73;
      isUniquelyReferenced_nonNull_native = v74;
      v21 = v77;
      v11 = v72;
      v19 = v70;
      if (v69 && (v60 = MEMORY[0x277D84F90], __CocoaSet.count.getter()))
      {
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(v60);
        v20 = v61;
      }

      else
      {
        v20 = MEMORY[0x277D84FA0];
      }
    }

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v21;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v78, v36, v22);

    v77 = v83;
    v12 = v71;
    v15 = v76;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
  v47 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v81);
  if ((a1 & 1) != (v48 & 1))
  {
    goto LABEL_65;
  }

  v43 = v47;
  if (a1)
  {
    goto LABEL_41;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  outlined consume of Set<Participant>.Iterator._Variant();
  if (*(v84 + 16))
  {
    if (v69 && __CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v62 = v66;
    }

    else
    {
      v62 = MEMORY[0x277D84FA0];
    }

    v63 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v67;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, a1, isUniquelyReferenced_nonNull_native, v63);
  }

  return v68;
}

Swift::String_optional __swiftcall ParticipantPresenceStore.tabGroupIdentifierForParticipant(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 120);
  if (!*(v4 + 16))
  {
    goto LABEL_6;
  }

  v5 = *(v1 + 120);

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
  if ((v7 & 1) == 0)
  {

LABEL_6:
    v9 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v8 = (*(v4 + 56) + 56 * v6);
  v9 = *v8;
  v10 = v8[1];
  v12 = v8[2];
  v11 = v8[3];
  v13 = v8[6];
  outlined copy of PresenceUpdateMessage.Kind(*v8, v10);

  if (v10)
  {

    outlined consume of PresenceUpdateMessage.Kind(v9, v10);
  }

  else
  {
    outlined consume of PresenceUpdateMessage.Kind(v9, 0);

    v9 = 0;
  }

LABEL_7:
  v14 = v9;
  v15 = v10;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

Swift::String_optional __swiftcall ParticipantPresenceStore.tabIdentifierForParticipant(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 120);
  if (!*(v4 + 16))
  {
    goto LABEL_8;
  }

  v5 = *(v1 + 120);

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
  if ((v7 & 1) == 0)
  {
LABEL_7:

LABEL_8:
    v11 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  v8 = (*(v4 + 56) + 56 * v6);
  v10 = *v8;
  v9 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = v8[6];
  outlined copy of PresenceUpdateMessage.Kind(*v8, v9);

  if (!v9)
  {
    outlined consume of PresenceUpdateMessage.Kind(v10, 0);
    goto LABEL_7;
  }

  outlined consume of PresenceUpdateMessage.Kind(v10, v9);

LABEL_9:
  v14 = v11;
  v15 = v12;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

uint64_t ParticipantPresenceStore.activeParticipantsInTabGroup(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 128);
  v6 = *(v5 + 16);

  if (v6 && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * v7);
  }

  else if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v9 = v11;
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  return v9;
}

uint64_t ParticipantPresenceStore._addParticipant(_:to:in:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = v5;
  v13 = CKShareParticipant.participantIdentifier.getter();
  v41 = v14;
  v42 = v13;
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_26;
  }

  swift_beginAccess();
  v15 = v5[16];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v5[16];
  v17 = v43;
  v7[16] = 0x8000000000000000;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = v18;
  if (v17[3] >= v22)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }

    v7[16] = v17;
    if ((v18 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
    v17 = v43;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
    if ((v6 & 1) != (v24 & 1))
    {
      goto LABEL_26;
    }

    v19 = v23;
    v7[16] = v43;
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
    v25 = v17[7] + 8 * v19;
    a1 = a1;
    specialized Set._Variant.insert(_:)(&v43, a1);
    swift_endAccess();

    swift_beginAccess();
    v26 = v7[17];
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v43 = v7[17];
    v27 = v43;
    v7[17] = 0x8000000000000000;
    a5 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v29 = v27[2];
    v30 = (v28 & 1) == 0;
    v31 = v29 + v30;
    if (!__OFADD__(v29, v30))
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    specialized _NativeDictionary.copy()();
    v17 = v43;
    v7[16] = v43;
    if ((v6 & 1) == 0)
    {
LABEL_9:
      specialized thunk for @callee_guaranteed () -> (@owned Set<CKShareParticipant>)(&v43);
      specialized _NativeDictionary._insert(at:key:value:)(v19, a4, a5, v43, v17);
    }
  }

  v32 = v28;
  if (v27[3] >= v31)
  {
    if (v6)
    {
      v7[17] = v27;
      if (v28)
      {
LABEL_18:
        v35 = v27[7] + 8 * a5;
        v36 = a1;
        specialized Set._Variant.insert(_:)(&v43, v36);
        swift_endAccess();

        swift_beginAccess();
        v37 = v36;
        v38 = v7[14];
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v43 = v7[14];
        v7[14] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, v42, v41, v39);

        v7[14] = v43;
        return swift_endAccess();
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v27 = v43;
      v7[17] = v43;
      if (v32)
      {
        goto LABEL_18;
      }
    }

LABEL_17:
    specialized thunk for @callee_guaranteed () -> (@owned Set<CKShareParticipant>)(&v43);
    specialized _NativeDictionary._insert(at:key:value:)(a5, a2, a3, v43, v27);

    goto LABEL_18;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, v6);
  v27 = v43;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v32 & 1) == (v34 & 1))
  {
    a5 = v33;
    v7[17] = v27;
    if (v32)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void ParticipantPresenceStore._removeParticipant(_:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_beginAccess();
  v14 = *(v6 + 112);
  if (*(v14 + 16))
  {

    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v16)
    {
      v37 = a1;
      v38 = a3;
      v17 = *(*(v14 + 56) + 8 * v15);

      v18 = ParticipantPresenceStore._tabGroupIdentifiersToParticipants.modify();
      v19 = specialized Dictionary.subscript.modify(v39, a5, a6);
      v21 = v17;
      if (*v20)
      {
      }

      (v19)(v39, 0);
      (v18)(v40, 0);
      swift_beginAccess();
      v22 = *(v7 + 128);
      if (*(v22 + 16))
      {
        v23 = *(v7 + 128);

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
        if (v25)
        {
          v26 = *(*(v22 + 56) + 8 * v24);

          if ((v26 & 0xC000000000000001) != 0)
          {
            v27 = __CocoaSet.count.getter();
          }

          else
          {
            v27 = *(v26 + 16);
          }

          v21 = v17;
          if (!v27)
          {
            swift_beginAccess();

            specialized Dictionary.subscript.setter(0, a5, a6);
            swift_endAccess();
          }
        }

        else
        {
        }
      }

      v28 = ParticipantPresenceStore._tabIdentifiersToParticipants.modify();
      v29 = specialized Dictionary.subscript.modify(v39, v38, a4);
      if (*v30)
      {
      }

      (v29)(v39, 0);
      (v28)(v40, 0);
      swift_beginAccess();
      v31 = *(v7 + 136);
      if (*(v31 + 16))
      {
        v32 = *(v7 + 136);

        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v38, a4);
        if (v34)
        {
          v35 = *(*(v31 + 56) + 8 * v33);

          if ((v35 & 0xC000000000000001) != 0)
          {
            v36 = __CocoaSet.count.getter();
          }

          else
          {
            v36 = *(v35 + 16);
          }

          if (!v36)
          {
            swift_beginAccess();

            specialized Dictionary.subscript.setter(0, v38, a4);
            swift_endAccess();
          }
        }

        else
        {
        }
      }

      swift_beginAccess();

      specialized Dictionary.subscript.setter(0, v37, a2);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t ParticipantPresenceStore.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[24];
  outlined consume of PresenceUpdateMessage.Kind(v0[18], v0[19]);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOtGMd, &_ss23_ContiguousArrayStorageCySS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtMd, &_sSS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So18CKShareParticipantCtGMd, &_ss23_ContiguousArrayStorageCySS_So18CKShareParticipantCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So18CKShareParticipantCtMd, &_sSS_So18CKShareParticipantCtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAC34PersonalDeviceCoordinationActivityV15GroupActivities0sW15SessionProviderCyAJGAC21PresenceUpdateMessageV_AC18AsyncBufferedQueueCyShyAK11ParticipantVGGGGMd, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAC34PersonalDeviceCoordinationActivityV15GroupActivities0sW15SessionProviderCyAJGAC21PresenceUpdateMessageV_AC18AsyncBufferedQueueCyShyAK11ParticipantVGGGGMR, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAC07CKShareG8ActivityVAC0S20GroupSessionProviderCyAJGAC21PresenceUpdateMessageV_AC18AsyncBufferedQueueCyShy0U10Activities11ParticipantVGGGGMd, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAC07CKShareG8ActivityVAC0S20GroupSessionProviderCyAJGAC21PresenceUpdateMessageV_AC18AsyncBufferedQueueCyShy0U10Activities11ParticipantVGGGGMR, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMR);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 < a4 || v16 + 4 >= &a4[v14 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
      swift_arrayInitWithTakeBackToFront();
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

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v40 = a1;
  v38 = v2;
  if (a2)
  {
    CKShareParticipant.participantIdentifier.getter();
    if (v7)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    String.hash(into:)();
  }

  v8 = Hasher._finalize()();
  v9 = v5 + 56;
  v10 = -1 << *(v5 + 32);
  v11 = v8 & ~v10;
  if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_40:
    v32 = *v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *v38;
    v34 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v11, isUniquelyReferenced_nonNull_native);
    *v38 = v42;
    *v40 = a2;
    return 1;
  }

  v41 = ~v10;
  v39 = v5;
  while (1)
  {
    v12 = *(*(v5 + 48) + 8 * v11);
    if (v12)
    {
      v13 = v12;
      if ([v13 acceptanceStatus] != 2 || (v14 = objc_msgSend(v13, sel_userIdentity), v15 = objc_msgSend(v14, sel_userRecordID), v14, !v15))
      {

LABEL_16:
        goto LABEL_9;
      }

      v16 = [v15 recordName];

      if (!a2)
      {
        goto LABEL_16;
      }
    }

    else if (!a2)
    {
      goto LABEL_43;
    }

    v17 = a2;
    if ([v17 acceptanceStatus] != 2 || (v18 = objc_msgSend(v17, sel_userIdentity), v19 = objc_msgSend(v18, sel_userRecordID), v18, !v19))
    {

      goto LABEL_9;
    }

    v20 = [v19 recordName];

    if (!v12)
    {
      goto LABEL_9;
    }

    if ([v12 acceptanceStatus] == 2)
    {
      v21 = [v12 userIdentity];
      v22 = [v21 userRecordID];

      if (v22)
      {
        v23 = [v22 recordName];

        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v25;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
      v22 = 0;
    }

    if ([v17 acceptanceStatus] == 2)
    {
      break;
    }

    v29 = 0;
    v27 = 0;
    if (v22)
    {
      goto LABEL_31;
    }

LABEL_38:

    v5 = v39;
    if (!v27)
    {
      goto LABEL_42;
    }

LABEL_9:
    v11 = (v11 + 1) & v41;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  v26 = [v17 userIdentity];
  v27 = [v26 userRecordID];

  if (v27)
  {
    v28 = [v27 recordName];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v30;

    if (v22)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  v29 = 0;
  if (!v22)
  {
    goto LABEL_38;
  }

LABEL_31:
  if (!v27)
  {

    v5 = v39;
    goto LABEL_9;
  }

  if (v24 != v29 || v22 != v27)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v39;
    if (v31)
    {
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v17 = v12;
  v5 = v39;
LABEL_42:

LABEL_43:
  v36 = *(*(v5 + 48) + 8 * v11);
  *v40 = v36;
  v37 = v36;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo18CKShareParticipantC_Tt1g5(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      specialized _NativeSet.resize(capacity:)(v21 + 1);
    }

    v19 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AddressableMember();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo18CKShareParticipantC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18CKShareParticipantCGMd, &_ss11_SetStorageCySo18CKShareParticipantCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMd, &_ss11_SetStorageCy17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
    v13 = result + 56;
    v31 = v3;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v18)
      {
        if ([v18 acceptanceStatus] == 2 && (v20 = objc_msgSend(v18, sel_userIdentity), v21 = objc_msgSend(v20, sel_userRecordID), v20, v3 = v31, v21))
        {
          v22 = [v21 recordName];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v3 = v31;
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }
      }

      else
      {
        String.hash(into:)();
      }

      result = Hasher._finalize()();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v8, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for AddressableMember();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20]();
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMd, &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18CKShareParticipantCGMd, &_ss11_SetStorageCySo18CKShareParticipantCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
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

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        specialized _NativeSet.copy()();
        goto LABEL_47;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    Hasher.init(_seed:)();
    if (a1)
    {
      CKShareParticipant.participantIdentifier.getter();
      if (v11)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }
    }

    else
    {
      String.hash(into:)();
    }

    v3 = &v41;
    v12 = Hasher._finalize()();
    v13 = -1 << *(v9 + 32);
    a2 = v12 & ~v13;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v14 = ~v13;
      v40 = ~v13;
      do
      {
        v3 = *(*(v9 + 48) + 8 * a2);
        if (v3)
        {
          v15 = v3;
          if ([v15 acceptanceStatus] != 2 || (v16 = objc_msgSend(v15, sel_userIdentity), v17 = objc_msgSend(v16, sel_userRecordID), v16, !v17))
          {

LABEL_23:
            goto LABEL_16;
          }

          v18 = [v17 recordName];

          if (!a1)
          {
            goto LABEL_23;
          }
        }

        else if (!a1)
        {
          goto LABEL_51;
        }

        v19 = a1;
        if ([v19 acceptanceStatus] != 2 || (v20 = objc_msgSend(v19, sel_userIdentity), v21 = objc_msgSend(v20, sel_userRecordID), v20, !v21))
        {

          goto LABEL_16;
        }

        v22 = [v21 recordName];

        if (!v3)
        {
          goto LABEL_16;
        }

        if ([v3 acceptanceStatus] == 2)
        {
          v23 = [v3 userIdentity];
          v24 = [v23 userRecordID];

          if (v24)
          {
            v25 = [v24 recordName];

            v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v27;
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
          v24 = 0;
        }

        if ([v19 acceptanceStatus] == 2)
        {
          v28 = [v19 userIdentity];
          v29 = [v28 userRecordID];

          if (v29)
          {
            v39 = v26;
            v30 = v4;
            v31 = [v29 recordName];

            v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v29 = v33;

            v4 = v30;
            v26 = v39;
            if (!v24)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v32 = 0;
            if (!v24)
            {
LABEL_45:

              v14 = v40;
              if (!v29)
              {
                goto LABEL_51;
              }

              goto LABEL_16;
            }
          }
        }

        else
        {
          v32 = 0;
          v29 = 0;
          if (!v24)
          {
            goto LABEL_45;
          }
        }

        if (v29)
        {
          if (v26 == v32 && v24 == v29)
          {
            goto LABEL_50;
          }

          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v14 = v40;
          if (v34)
          {
            goto LABEL_51;
          }
        }

        else
        {

          v14 = v40;
        }

LABEL_16:
        a2 = (a2 + 1) & v14;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_47:
  v35 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v35 + 48) + 8 * a2) = a1;
  v36 = *(v35 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
LABEL_50:

LABEL_51:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v35 + 16) = v38;
  }
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for AddressableMember();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x277CCB290], &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMd, &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMd, &_ss11_SetStorageCy17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18CKShareParticipantCGMd, &_ss11_SetStorageCySo18CKShareParticipantCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMd, &_ss11_SetStorageCy17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = v3 + 56;
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
    v31 = v3;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v18)
      {
        v20 = v18;
        if ([v20 acceptanceStatus] == 2 && (v21 = objc_msgSend(v20, sel_userIdentity), v22 = objc_msgSend(v21, sel_userRecordID), v21, v3 = v31, v22))
        {
          v23 = [v22 recordName];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v3 = v31;
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }
      }

      else
      {
        String.hash(into:)();
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_34;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
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

      if (v7 >= v12)
      {
        goto LABEL_32;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_32:

    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for AddressableMember();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMd, &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18CKShareParticipantCGMd, &_ss11_SetStorageCySo18CKShareParticipantCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
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
      *(*(v6 + 48) + 8 * v13) = v18;
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