id sub_1BEE1647C()
{
  result = [v0 rootFolder];
  if (result)
  {

    v2 = [v0 iconModelMetadata];
    if (v2)
    {
      v3 = v2;
      sub_1BEE4701C();

      v4 = sub_1BEE4700C();
    }

    else
    {
      v4 = 0;
    }

    v5 = [objc_opt_self() archiveRootFolderInModel:v0 metadata:v4];

    sub_1BEE4701C();
    sub_1BEE165B4();
  }

  return result;
}

id sub_1BEE165B4()
{
  v1 = v0;
  v36[1] = *MEMORY[0x1E69E9840];
  v2 = OBJC_IVAR___SBHIconModel_autosaveTimer;
  v3 = *&v1[OBJC_IVAR___SBHIconModel_autosaveTimer];
  if (v3)
  {
    [v3 invalidate];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  v5 = [v1 delegate];
  if (!v5)
  {
LABEL_9:
    result = [v1 store];
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = sub_1BEE4700C();
    v36[0] = 0;
    v11 = [v9 saveCurrentIconState:v10 error:v36];

    if (v11)
    {
      v12 = qword_1EBDBFFA8;
      v13 = v36[0];
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = sub_1BEE46A0C();
      __swift_project_value_buffer(v14, qword_1EBDCA820);
      v15 = sub_1BEE469FC();
      v16 = sub_1BEE4731C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1BEB18000, v15, v16, "current icon state saved", v17, 2u);
        MEMORY[0x1BFB50850](v17, -1, -1);
      }

      [v1 markIconStateClean];
      v18 = [v1 delegate];
      if (v18)
      {
        v19 = v18;
        if ([v18 respondsToSelector_])
        {
          [v19 didSaveIconState_];
        }

        swift_unknownObjectRelease();
      }

      v20 = [v1 todayListsStore];
      if (!v20)
      {
        return swift_unknownObjectRelease();
      }

      v21 = v20;
      v36[0] = 0;
      v22 = [v20 loadCurrentIconState_];
      v23 = v36[0];
      if (v22)
      {
        v24 = v22;
        sub_1BEE4701C();
        v25 = v23;

        v35 = objc_opt_self();
        v26 = sub_1BEE4700C();

        v27 = sub_1BEE4700C();
        v28 = [v35 iconStateByReplacingTodayListsInIconState:v26 withTodayListsFromIconState:v27];

        sub_1BEE4701C();
        v29 = sub_1BEE4700C();

        v36[0] = 0;
        v30 = [v21 saveCurrentIconState:v29 error:v36];

        if (v30)
        {
          v31 = v36[0];
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

        v34 = v36[0];
        sub_1BEE4682C();
      }

      else
      {
        v33 = v36[0];
        sub_1BEE4682C();
      }

      swift_willThrow();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    v32 = v36[0];
    sub_1BEE4682C();

    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v6 = v5;
  if (([v5 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v7 = [v6 canSaveIconState_];
  result = swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1BEE16A34()
{
  v1 = OBJC_IVAR___SBHIconModel_autosaveTimer;
  v2 = *&v0[OBJC_IVAR___SBHIconModel_autosaveTimer];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  if ([v0 isIconStateDirty])
  {
LABEL_12:
    sub_1BEE1647C();
    return 1;
  }

  v4 = [v0 rootFolder];
  if (v4)
  {
    v5 = v4;
    v16 = 0;
    v6 = swift_allocObject();
    *(v6 + 16) = &v16;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1BEDFB400;
    *(v7 + 24) = v6;
    aBlock[4] = sub_1BEDFB220;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BEE39C64;
    aBlock[3] = &block_descriptor_41;
    v8 = _Block_copy(aBlock);

    [v5 enumerateListsWithOptions:1 usingBlock:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
      goto LABEL_15;
    }

    v9 = v16;

    if (v9 == 1)
    {
      if (qword_1EBDBFFA8 == -1)
      {
LABEL_9:
        v10 = sub_1BEE46A0C();
        __swift_project_value_buffer(v10, qword_1EBDCA820);
        v11 = sub_1BEE469FC();
        v12 = sub_1BEE4732C();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_1BEB18000, v11, v12, "Icon model is not marked dirty but has dirty model objects", v13, 2u);
          MEMORY[0x1BFB50850](v13, -1, -1);
        }

        goto LABEL_12;
      }

LABEL_15:
      swift_once();
      goto LABEL_9;
    }
  }

  return 1;
}

id sub_1BEE16D10()
{
  [v0 clearDesiredIconState];
  sub_1BEE165B4();

  return [v0 layout];
}

id sub_1BEE1719C(uint64_t a1, uint64_t a2)
{
  v5 = _s33IconModelDisableAutosaveAssertionCMa();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR____TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8133IconModelDisableAutosaveAssertion_isInvalidated] = 0;
  swift_unknownObjectWeakAssign();
  v7 = &v6[OBJC_IVAR____TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8133IconModelDisableAutosaveAssertion_reason];
  *v7 = a1;
  v7[1] = a2;
  v13.receiver = v6;
  v13.super_class = v5;

  v8 = objc_msgSendSuper2(&v13, sel_init);
  [*(v2 + OBJC_IVAR___SBHIconModel_autosaveDisableAssertions) addObject_];
  v9 = OBJC_IVAR___SBHIconModel_autosaveTimer;
  v10 = *(v2 + OBJC_IVAR___SBHIconModel_autosaveTimer);
  if (v10)
  {
    [v10 invalidate];
    v11 = *(v2 + v9);
  }

  else
  {
    v11 = 0;
  }

  *(v2 + v9) = 0;

  return v8;
}

id sub_1BEE1731C()
{
  ObjectType = swift_getObjectType();
  if ((v0[OBJC_IVAR____TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8133IconModelDisableAutosaveAssertion_isInvalidated] & 1) == 0)
  {
    v0[OBJC_IVAR____TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8133IconModelDisableAutosaveAssertion_isInvalidated] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = OBJC_IVAR___SBHIconModel_autosaveDisableAssertions;
      [*(Strong + OBJC_IVAR___SBHIconModel_autosaveDisableAssertions) removeObject_];
      if (![*&v3[v4] count])
      {
        [v3 saveIconStateIfNeeded];
      }
    }
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void sub_1BEE173DC()
{
  if ((*(v0 + OBJC_IVAR____TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8133IconModelDisableAutosaveAssertion_isInvalidated) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8133IconModelDisableAutosaveAssertion_isInvalidated) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = OBJC_IVAR___SBHIconModel_autosaveDisableAssertions;
      v3 = Strong;
      [*(Strong + OBJC_IVAR___SBHIconModel_autosaveDisableAssertions) removeObject_];
      if (![*&v3[v2] count])
      {
        [v3 saveIconStateIfNeeded];
      }
    }
  }
}

id sub_1BEE1770C(id a1, uint64_t *a2)
{
  v3 = v2;
  v54 = a2;
  v51 = sub_1BEE469DC();
  v5 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 setIsCheckingModelConsistency_];
  v7 = [v3 ignoresIconsNotInIconState];
  v50 = v5;
  if (v7)
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v9 = [v3 leafIcons];
    sub_1BEB20D28(0, &qword_1EBDBFFE0);
    sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
    v8 = sub_1BEE4726C();
  }

  v57 = v8;
  v10 = [a1 leafIcons];
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v11 = sub_1BEE4726C();

  sub_1BEE1EC8C(v11);

  v12 = v57;
  v58[0] = sub_1BEE1D2AC(v57, &qword_1EBDBFFE0, off_1E80877A0, &qword_1EBDBFF70);
  sub_1BEE1EEC4(v58);
  v13 = v58[0];
  v58[0] = MEMORY[0x1E69E7CC0];
  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    goto LABEL_20;
  }

  v14 = *(v13 + 16);
  for (i = a1; v14; i = a1)
  {
    v49 = v12;
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFB4EA90](v15, v13);
      }

      else
      {
        if (v15 >= *(v13 + 16))
        {
          goto LABEL_19;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ([v3 isIconVisible_])
      {
        v12 = v58;
        sub_1BEE475FC();
        sub_1BEE4761C();
        a1 = i;
        sub_1BEE4762C();
        sub_1BEE4760C();
      }

      else
      {
      }

      ++v15;
      if (v18 == v14)
      {
        v19 = v58[0];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v14 = sub_1BEE474CC();
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_22:

  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    v20 = sub_1BEE474CC();
    if (!v20)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v20 = *(v19 + 16);
    if (!v20)
    {
      goto LABEL_32;
    }
  }

  if (v20 < 1)
  {
    goto LABEL_59;
  }

  for (j = 0; j != v20; ++j)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1BFB4EA90](j, v19);
    }

    else
    {
      v22 = *(v19 + 8 * j + 32);
    }

    v23 = v22;
    sub_1BEE10740(v22, a1, 0, v54);
  }

LABEL_32:

  v24 = [a1 folderIcons];
  v25 = sub_1BEB20D28(0, &unk_1EBDBFF60);
  sub_1BEB2A7E0(&qword_1EBDBFF58, &unk_1EBDBFF60);
  v49 = v25;
  v26 = sub_1BEE4726C();

  if ((v26 & 0xC000000000000001) != 0)
  {
    sub_1BEE4748C();
    sub_1BEE472AC();
    v26 = v58[0];
    v27 = v58[1];
    v28 = v58[2];
    v20 = v58[3];
    v29 = v58[4];
  }

  else
  {
    v20 = 0;
    v30 = -1 << *(v26 + 32);
    v27 = v26 + 56;
    v28 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(v26 + 56);
  }

  v48 = v28;
  v33 = (v28 + 64) >> 6;
  ++v50;
  v54 = v26;
  if ((v26 & 0x8000000000000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_48:
  v39 = sub_1BEE474FC();
  if (!v39 || (v55 = v39, swift_dynamicCast(), v38 = v56, v36 = v20, v37 = v29, !v56))
  {
LABEL_57:
    sub_1BEB2AAE8();
    return [v3 setIsCheckingModelConsistency_];
  }

  while (1)
  {
    v40 = i;
    v41 = [i indexPathForIcon_];
    if (v41)
    {
      v42 = v52;
      v43 = v41;
      sub_1BEE4697C();

      v44 = sub_1BEE4696C();
      v45 = [v40 folderContainingIndexPath_];

      if (v45)
      {
        type metadata accessor for SBFolder(0);
        if (sub_1BEE473CC())
        {
          (*v50)(v52, v51);
        }

        else
        {
          v46 = [v40 addIcon_];

          (*v50)(v52, v51);
        }
      }

      else
      {
        (*v50)(v42, v51);
      }

      v20 = v36;
      v29 = v37;
      v26 = v54;
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }
    }

    else
    {

      v20 = v36;
      v29 = v37;
      if (v26 < 0)
      {
        goto LABEL_48;
      }
    }

LABEL_42:
    v34 = v20;
    v35 = v29;
    v36 = v20;
    if (!v29)
    {
      break;
    }

LABEL_46:
    v37 = (v35 - 1) & v35;
    v38 = *(*(v26 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
    if (!v38)
    {
      goto LABEL_57;
    }
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
      goto LABEL_57;
    }

    v35 = *(v27 + 8 * v36);
    ++v34;
    if (v35)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1BEE17EB4()
{
  v1 = [v0 iconRepository];

  v2 = sub_1BEE4724C();

  v3 = sub_1BEE4724C();

  [v1 setVisibilityOfIconsWithVisibleTags:v2 hiddenTags:v3];
}

id sub_1BEE18080(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 iconRepository];
  v6 = [v5 *a3];

  sub_1BEE4726C();
  v7 = sub_1BEE4724C();

  return v7;
}

id sub_1BEE18160(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1BEE4724C();

  return v5;
}

uint64_t sub_1BEE181D0()
{
  v8 = MEMORY[0x1E69E7CD0];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEE24384;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEE2438C;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE183AC;
  aBlock[3] = &block_descriptor_32;
  v3 = _Block_copy(aBlock);
  v4 = v0;

  [v4 enumerateLeafIconsUsingBlock_];
  _Block_release(v3);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

id sub_1BEE1833C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, id a5)
{
  result = [a5 isIconVisible_];
  if (result)
  {

    sub_1BEDF6558(&v8, a2, a3);
  }

  return result;
}

void sub_1BEE183AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1BEE4708C();
  v4 = a2;
  v3();
}

id sub_1BEE18520(id result)
{
  v2 = *&v1[OBJC_IVAR___SBHIconModel_store];
  if (v2)
  {
    if (v2 == result)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  [v1 saveIconStateIfNeeded];

  return [v1 markIconStateClean];
}

id sub_1BEE18584(id result)
{
  v2 = *&v1[OBJC_IVAR___SBHIconModel_store];
  if (v2)
  {
    if (v2 == result)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  *&v1[OBJC_IVAR___SBHIconModel__desiredIconState] = 0;

  [v1 setDesiredIconStateFlattened_];

  return [v1 layout];
}

id sub_1BEE186AC(id result)
{
  v2 = *&v1[OBJC_IVAR___SBHIconModel_todayListsStore];
  if (v2)
  {
    if (v2 == result)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  result = [v1 rootFolder];
  if (result)
  {

    return [v1 layout];
  }

  return result;
}

id sub_1BEE18750(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3))
  {

    v3 = sub_1BEE4724C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1BEE187BC()
{
  v2 = v0;
  [v0 saveIconStateIfNeeded];
  v3 = OBJC_IVAR___SBHIconModel_needsToCallLoadIcons;
  if (v2[OBJC_IVAR___SBHIconModel_needsToCallLoadIcons] == 1)
  {
    [v2 loadAllIcons];
    v2[v3] = 0;
  }

  v70 = OBJC_IVAR___SBHIconModel__isLayingOut;
  v2[OBJC_IVAR___SBHIconModel__isLayingOut] = 1;
  v66 = [v2 hasDesiredIconState];
  [v2 willLayout];
  v68 = objc_opt_self();
  v4 = [v68 defaultCenter];
  [v4 postNotificationName:@"SBIconModelWillLayoutIconStateNotification" object:v2];

  v5 = sub_1BEE15318();
  v64 = v6;
  v71 = v7;
  v8 = OBJC_IVAR___SBHIconModel__rootFolder;
  v9 = *&v2[OBJC_IVAR___SBHIconModel__rootFolder];
  if (v9)
  {
    v10 = v9;
    [v10 setModel_];
    [v10 removeFolderObserver_];
  }

  v69 = v9;
  v11 = OBJC_IVAR___SBHIconModel_widgetIconsByIdentifier;
  swift_beginAccess();
  v12 = *&v2[v11];
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_13:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v1 = *(*(v12 + 56) + ((v18 << 9) | (8 * v19)));
      sub_1BEE0E878(v1, 0, 1);

      if (!v15)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_13;
    }
  }

  v20 = OBJC_IVAR___SBHIconModel_fileStackIconsByIdentifier;
  swift_beginAccess();
  v21 = *&v2[v20];
  v22 = 1 << *(v21 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v15 = v23 & *(v21 + 64);
  v24 = (v22 + 63) >> 6;

  v25 = 0;
  while (v15)
  {
    v26 = v25;
LABEL_23:
    v27 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v1 = *(*(v21 + 56) + ((v26 << 9) | (8 * v27)));
    sub_1BEE0E878(v1, 0, 1);
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      v28 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByUniqueIdentifier;
      swift_beginAccess();
      v29 = *&v2[v28];
      v30 = 1 << *(v29 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v15 = v31 & *(v29 + 64);
      v32 = (v30 + 63) >> 6;

      v33 = 0;
      while (v15)
      {
        v34 = v33;
LABEL_33:
        v35 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v1 = *(*(v29 + 56) + ((v34 << 9) | (8 * v35)));
        sub_1BEE0E878(v1, 0, 1);
      }

      while (1)
      {
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_57;
        }

        if (v34 >= v32)
        {

          v36 = v5;
          [v36 setModel_];
          v37 = v36;
          [v37 addFolderObserver_];
          v38 = *&v2[v8];
          *&v2[v8] = v37;
          v1 = v37;

          [v1 checkIgnoredListConsistency];
          [v1 markIconStateClean];
          v39 = swift_allocObject();
          *(v39 + 16) = v2;
          v40 = swift_allocObject();
          *(v40 + 16) = sub_1BEE242F8;
          *(v40 + 24) = v39;
          aBlock[4] = sub_1BEB31F0C;
          aBlock[5] = v40;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BEB31DD8;
          aBlock[3] = &block_descriptor_17;
          v41 = _Block_copy(aBlock);
          v42 = v2;

          [v1 enumerateAllIconsWithOptions:1 usingBlock:v41];
          _Block_release(v41);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
            return result;
          }

          sub_1BEE13370(v1);
          sub_1BEE1770C(v1, 0);
          v45 = [v1 isIconStateDirty];

          v46 = &selRef_markIconStateDirty;
          if (!v45)
          {
            v46 = &selRef_markIconStateClean;
          }

          [v42 *v46];
          if (v66)
          {
            sub_1BEE1647C();
            v47 = v71;
            v48 = &_OBJC_LABEL_PROTOCOL___SBHFileStackIconImageProviderDataSourceDelegate;
            v49 = v68;
            v50 = &selRef_configureViewsForCurrentInterfaceOrientation;
          }

          else
          {
            [v42 saveIconStateIfNeeded];
            v47 = v71;
            v48 = &_OBJC_LABEL_PROTOCOL___SBHFileStackIconImageProviderDataSourceDelegate;
            v49 = v68;
            v50 = &selRef_configureViewsForCurrentInterfaceOrientation;
          }

          *&v42[OBJC_IVAR___SBHIconModel__lastLayoutStatus] = v65;
          *&v42[OBJC_IVAR___SBHIconModel__lastLayoutUnarchivedIdentifiers] = v47;

          v51 = [v49 v50[337]];
          [v51 postNotificationName:@"SBIconModelDidLayoutIconStateNotification" object:v42];

          [v42 clearDesiredIconStateIfPossible];
          if ((v66 & 1) == 0 && [v42 v48[439]])
          {
            [v42 saveDesiredIconState];
          }

          if (![v42 v48[439]])
          {

            goto LABEL_60;
          }

          v52 = [v1 hasFixedIconLocations];

          if (v52)
          {
            v53 = [v42 desiredIconStateFlattened];
            if (v53)
            {
              v54 = v53;
              v55 = sub_1BEE4726C();

              LOBYTE(v54) = sub_1BEB1E8D4(0xD000000000000010, 0x80000001BEEA5C80, v55);

              if (v54)
              {
                v56 = sub_1BEE21DC4();
                if (v56)
                {
                  v15 = v56;
                  v57 = sub_1BEE4705C();
                  v5 = [v15 iconWithIdentifier_];

                  if (!v5)
                  {

                    goto LABEL_59;
                  }

                  v58 = [v15 gridPathForIcon:v5 listGridCellInfoOptions:0];
                  if (!v58)
                  {
                    goto LABEL_58;
                  }

                  v59 = v58;
                  v60 = [v1 iconAtGridPath_];
                  if (v60)
                  {
                    v61 = v60;

                    goto LABEL_61;
                  }

                  v62 = [v1 listAtGridPath_];
                  if (!v62)
                  {

                    goto LABEL_59;
                  }

                  v63 = v62;
                  [v62 copy];
                  sub_1BEE4741C();
                  swift_unknownObjectRelease();
                  sub_1BEB20D28(0, &qword_1EBDBFF10);
                  if ((swift_dynamicCast() & 1) == 0)
                  {

                    goto LABEL_61;
                  }

                  v67 = [objc_allocWithZone(SBIcon) init];

                  [v72 removeFixedIconLocationsIfPossibleWithGridCellInfoOptions_];
                  if (([v72 hasFixedIconLocations] & 1) == 0)
                  {
                    [v63 removeAllFixedIconLocations];
                    [v42 clearDesiredIconState];
                  }
                }
              }
            }
          }

          goto LABEL_59;
        }

        v15 = *(v29 + 64 + 8 * v34);
        ++v33;
        if (v15)
        {
          v33 = v34;
          goto LABEL_33;
        }
      }
    }

    v15 = *(v21 + 64 + 8 * v26);
    ++v25;
    if (v15)
    {
      v25 = v26;
      goto LABEL_23;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:

LABEL_59:

LABEL_60:

LABEL_61:
  v2[v70] = 0;
}

void sub_1BEE19194(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
LABEL_7:

    [a4 addIcon_];
    return;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
LABEL_5:
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        return;
      }
    }

    goto LABEL_7;
  }

  v8 = v7;
  v9 = a1;
  if ([v8 leafIdentifierAndApplicationBundleIDMatches])
  {

    goto LABEL_5;
  }

  [a4 addIcon_];
}

id sub_1BEE193C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [v4 maxListCountForFolders];
  type metadata accessor for SBFolder(0);
  v7 = [v4 listGridSizeForFolderClass_];
  v8 = [v4 gridSizeClassSizes];
  v9 = v8;
  if (a4)
  {
    a4 = sub_1BEE4705C();
  }

  v10 = objc_allocWithZone(SBFolder);
  v11 = sub_1BEE4705C();
  v12 = [v10 initWithUniqueIdentifier:a4 displayName:v11 maxListCount:v6 listGridSize:v7 iconGridSizeClassSizes:v8];

  swift_getObjectType();
  v13 = [v4 delegate];
  if (v13)
  {
    v14 = v13;
    if ([v13 respondsToSelector_])
    {
      v15 = [v14 iconModel:v4 allowedGridSizeClassesForFolderClass:swift_getObjCClassFromMetadata()];
      swift_unknownObjectRelease();
      if (v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v15 = [v4 rootFolderAllowedGridSizeClasses];
LABEL_9:
  [v12 setListAllowedGridSizeClasses_];

  v16 = [v4 delegate];
  if (v16)
  {
    v17 = v16;
    if ([v16 respondsToSelector_])
    {
      v18 = [v17 gridSizeClassDomainForIconModel_];
    }

    else
    {
      v18 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
  }

  [v12 setGridSizeClassDomain_];

  return v12;
}

void sub_1BEE19970()
{
  v1 = [v0 leafIcons];
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v2 = sub_1BEE4726C();

  sub_1BEE0A7BC(v2);
  v4 = v3;

  v24 = v4;
  v5 = [v0 rootFolder];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 allIcons];
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    v8 = sub_1BEE4726C();

    sub_1BEB2A840(v8, &qword_1EBDBFEA0, off_1E8087510, &qword_1EBDBFDC0, sub_1BEDF66A8);
    v4 = v24;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_1BEE4748C();
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    sub_1BEE472AC();
    v4 = v25;
    v9 = v26;
    v10 = v27;
    v11 = v28;
    v12 = v29;
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(v4 + 32);
    v9 = v4 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v4 + 56);
  }

  if (v4 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v16 = v11;
    v17 = v12;
    v18 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v4 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
LABEL_20:
      sub_1BEB2AAE8();
      return;
    }

    while (1)
    {
      [v20 localeChanged];

      v11 = v18;
      v12 = v19;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v21 = sub_1BEE474FC();
      if (v21)
      {
        v22 = v21;
        sub_1BEB20D28(0, &qword_1EBDBFEA0);
        swift_dynamicCast();
        v20 = v23;
        v18 = v11;
        v19 = v12;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= ((v10 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v17 = *(v9 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1BEE19CEC(void *a1)
{
  v3 = [a1 applicationBundleIdentifier];
  v4 = v3;
  v5 = v3;
  v6 = v3;
  v7 = v3;
  if (!v3)
  {
    sub_1BEE4708C();
    v7 = sub_1BEE4705C();

    sub_1BEE4708C();
    v6 = sub_1BEE4705C();

    sub_1BEE4708C();
    v5 = sub_1BEE4705C();

    sub_1BEE4708C();
    v4 = sub_1BEE4705C();
  }

  sub_1BEE4708C();
  v8 = v3;
  v9 = [v1 applicationIconsForBundleIdentifier_];

  sub_1BEB20D28(0, &unk_1EBDBFFD0);
  v10 = sub_1BEE471AC();

  v11 = [v1 applicationIconsForBundleIdentifier_];
  v12 = sub_1BEE471AC();

  if (v12 >> 62)
  {
    v20 = sub_1BEE474CC();

    if (v20)
    {
LABEL_5:

      if (!(v10 >> 62))
      {
        goto LABEL_6;
      }

LABEL_19:
      v14 = sub_1BEE474CC();
      if (!v14)
      {
        goto LABEL_20;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v13)
    {
      goto LABEL_5;
    }
  }

  [v1 iconClassForApplicationWithBundleIdentifier_];

  swift_getObjCClassMetadata();
  swift_dynamicCastMetatype();
  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = sub_1BEE4705C();

  v23 = [v21 initWithLeafIdentifier:v4 applicationBundleID:v22];

  [v1 addIcon_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BEE8AF50;
  *(v10 + 32) = v23;
  if (v10 >> 62)
  {
    goto LABEL_19;
  }

LABEL_6:
  v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_20:

    return;
  }

LABEL_7:
  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    v15 = 0;
    v16 = v10 & 0xC000000000000001;
    do
    {
      if (v16)
      {
        v17 = MEMORY[0x1BFB4EA90](v15, v10);
      }

      else
      {
        v17 = *(v10 + 8 * v15 + 32);
      }

      v18 = v17;
      ++v15;
      [v17 addIconDataSource_];
    }

    while (v14 != v15);
    if (v16)
    {
      MEMORY[0x1BFB4EA90](0, v10);
      goto LABEL_20;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v10 + 32);
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_1BEE1A110(void *a1, char a2)
{
  v5 = [a1 applicationBundleIdentifier];
  if (!v5)
  {
    sub_1BEE4708C();
    v5 = sub_1BEE4705C();
  }

  v6 = [v2 applicationIconsForBundleIdentifier_];

  sub_1BEB20D28(0, &unk_1EBDBFFD0);
  v7 = sub_1BEE471AC();

  if (v7 >> 62)
  {
    v8 = sub_1BEE474CC();
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
LABEL_19:

      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    do
    {
      if (v10)
      {
        v11 = MEMORY[0x1BFB4EA90](v9, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      [v11 removeIconDataSource_];
      if ((a2 & 1) != 0 && ![v12 iconDataSourceCount])
      {
        [v2 removeIcon_];
      }

      ++v9;
    }

    while (v8 != v9);
    if (v10)
    {
      MEMORY[0x1BFB4EA90](0, v7);
      goto LABEL_19;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v7 + 32);
      goto LABEL_19;
    }
  }

  __break(1u);
}

id sub_1BEE1A2F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v9 = a1;
  v10 = a5(a3, a4);
  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_1BEE1A484(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = a1;
  v7 = [v6 delegate];
  if (v7)
  {
    v8 = [v7 *a4];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 6;
  }

  return v8;
}

uint64_t sub_1BEE1A50C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 delegate];
  if (v5)
  {
    v6 = v5;
    if ([v5 respondsToSelector_])
    {
      v7 = [v6 *a3];
    }

    else
    {
      v7 = 4;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 4;
  }

  return v7;
}

id sub_1BEE1A708()
{
  v1 = [v0 delegate];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8280);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8B700;
    *(inited + 32) = @"SBHIconGridSizeClassSmall";
    *(inited + 40) = @"SBHIconGridSizeClassMedium";
    *(inited + 48) = @"SBHIconGridSizeClassLarge";
    v5 = @"SBHIconGridSizeClassSmall";
    v6 = @"SBHIconGridSizeClassMedium";
    v7 = @"SBHIconGridSizeClassLarge";
    sub_1BEDFB000(inited);
    swift_setDeallocating();
    type metadata accessor for SBHIconGridSizeClass(0);
    swift_arrayDestroy();
    v8 = objc_allocWithZone(SBHIconGridSizeClassSet);
    sub_1BEE242A0();
    v9 = sub_1BEE4724C();

    v3 = [v8 initWithGridSizeClasses_];

    return v3;
  }

  v3 = [v2 allowedGridSizeClassesForTodayListForIconModel_];
  swift_unknownObjectRelease();
  if (!v3)
  {
    goto LABEL_6;
  }

  return v3;
}

id sub_1BEE1A888()
{
  v1 = [v0 delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v3 = sub_1BEE4705C();
      v4 = sub_1BEE4705C();
      v5 = sub_1BEE4705C();
      v6 = [v2 iconModel:v0 supportedGridSizeClassesForWidgetWithKind:v3 extensionBundleIdentifier:v4 containerBundleIdentifier:v5];
      swift_unknownObjectRelease();

      if (v6)
      {
        return v6;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v8 = [objc_opt_self() gridSizeClassSetForAllNonDefaultGridSizeClasses];

  return v8;
}

void sub_1BEE1ABE4()
{
  v1 = OBJC_IVAR___SBHIconModel_iconRunLoopObserver;
  if (!*(v0 + OBJC_IVAR___SBHIconModel_iconRunLoopObserver))
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_1BEE24488;
    v8[5] = v3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1BEE12CE8;
    v8[3] = &block_descriptor_77;
    v4 = _Block_copy(v8);

    v5 = CFRunLoopObserverCreateWithHandler(v2, 0xA0uLL, 0, 1999900, v4);
    _Block_release(v4);
    v6 = CFRunLoopGetMain();
    CFRunLoopAddObserver(v6, v5, *MEMORY[0x1E695E8D0]);

    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
  }
}

void sub_1BEE1AD18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a4();
  }
}

void sub_1BEE1AD74()
{
  v1 = OBJC_IVAR___SBHIconModel_iconRunLoopObserver;
  v2 = *&v0[OBJC_IVAR___SBHIconModel_iconRunLoopObserver];
  if (v2)
  {
    CFRunLoopObserverInvalidate(v2);
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v4 = [v0 rootFolder];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 delegate];
    v7 = [v0 removedIcons];
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    v8 = sub_1BEE4726C();

    v9 = v0;
    v12 = v5;
    swift_unknownObjectRetain();
    v10 = sub_1BEE22AC0(v8, v9, v12, v6);

    swift_unknownObjectRelease();
    v11 = sub_1BEE4724C();
    [v9 setRemovedIcons_];

    sub_1BEE0EFA0(v10);

    swift_unknownObjectRelease();
  }

  else
  {

    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    v12 = sub_1BEE4724C();
    [v0 setRemovedIcons_];
  }
}

void sub_1BEE1AFBC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v34 = v4;
  v8 = [v4 delegate];
  if (qword_1EBDBFE30 != -1)
  {
    swift_once();
  }

  v9 = sub_1BEE46A0C();
  __swift_project_value_buffer(v9, qword_1EBDCA800);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = a1;
  v11 = a2;
  v12 = sub_1BEE469FC();
  v13 = sub_1BEE4733C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v33 = 1162760014;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v14 = 138413058;
    *(v14 + 4) = v10;
    v31 = v15;
    *v15 = v10;
    *(v14 + 12) = 2082;
    v16 = sub_1BEE4708C();
    v18 = v17;
    v19 = v10;
    v20 = sub_1BEDCE8F4(v16, v18, &v35);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    if (a3 && ([a3 respondsToSelector_] & 1) != 0)
    {
      v30 = v11;
      v21 = [a3 debugDescription];
      v22 = sub_1BEE4708C();
      v24 = v23;

      v11 = v30;
    }

    else
    {
      v24 = 0xE400000000000000;
      v22 = 1162760014;
    }

    v25 = sub_1BEDCE8F4(v22, v24, &v35);

    *(v14 + 24) = v25;
    *(v14 + 32) = 2080;
    if (v8 && ([v8 respondsToSelector_] & 1) != 0)
    {
      v26 = [v8 &selRef_iconRepository_didRemoveIcon_];
      v33 = sub_1BEE4708C();
      v28 = v27;
    }

    else
    {
      v28 = 0xE400000000000000;
    }

    v29 = sub_1BEDCE8F4(v33, v28, &v35);

    *(v14 + 34) = v29;
    _os_log_impl(&dword_1BEB18000, v12, v13, "%@ launchFromLocation:%{public}s context:%s delegate:%s", v14, 0x2Au);
    sub_1BEB4992C(v31, &qword_1EBDC7490);
    MEMORY[0x1BFB50850](v31, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1BFB50850](v32, -1, -1);
    MEMORY[0x1BFB50850](v14, -1, -1);
  }

  if (v8)
  {
    if ([v8 respondsToSelector_])
    {
      [v8 iconModel:v34 launchIcon:v10 fromLocation:v11 context:a3];
    }

    swift_unknownObjectRelease();
  }
}

id sub_1BEE1BA30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = a1;
  v8 = [v7 delegate];
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      v10 = [v9 *a5];
    }

    else
    {
      v10 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1BEE1BAE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  sub_1BEE4701C();
  v7 = a1;
  v8 = [v7 delegate];
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      v10 = sub_1BEE4700C();

      v11 = [v9 *a5];
      swift_unknownObjectRelease();

      v12 = v11;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v12 = 0;
LABEL_6:

  return v12;
}

id sub_1BEE1BF30(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = a1;
  v6 = [v5 delegate];
  if (v6)
  {
    v7 = v6;
    if ([v6 respondsToSelector_])
    {
      v8 = [v7 *a4];
    }

    else
    {
      v8 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1BEE1BFDC(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = [v3 isDockUtilitiesSupportedForIconModel_];
    }

    else
    {
      v4 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1BEE1C070()
{
  v1 = v0;
  swift_getObjectType();
  if ([v0 automaticallyAddsWebClips])
  {
    v2 = [objc_opt_self() clipsIncludingWebClips:1 includingAppClips:1];
    if (!v2)
    {
      goto LABEL_21;
    }

    v3 = v2;
    sub_1BEB20D28(0, &qword_1EBDBFE50);
    v4 = sub_1BEE471AC();

    [swift_getObjCClassFromMetadata() bookmarkIconClass];
    swift_getObjCClassMetadata();
    v5 = [v0 iconsOfClass_];
    sub_1BEB20D28(0, &qword_1EBDBFFE0);
    sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
    v6 = sub_1BEE4726C();

    v17 = v6;
    if (v4 >> 62)
    {
      v7 = sub_1BEE474CC();
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_5:
        if (v7 >= 1)
        {
          for (i = 0; i != v7; ++i)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x1BFB4EA90](i, v4);
            }

            else
            {
              v9 = *(v4 + 8 * i + 32);
            }

            v10 = v9;
            v11 = [v9 identifier];
            if (v11)
            {
              v12 = v11;
              v13 = [v1 bookmarkIconForWebClipIdentifier_];

              if (v13)
              {
                v14 = sub_1BEDF7CE0(v13);

                v10 = v14;
              }

              else
              {
              }
            }
          }

          v6 = v17;
          goto LABEL_18;
        }

        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }
    }

LABEL_18:
    sub_1BEE0A7BC(v6);
    v16 = v15;

    sub_1BEE0EFA0(v16);
  }
}

uint64_t sub_1BEE1C34C()
{
  v1 = v0;
  v2 = sub_1BEE4680C();
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  v22 = 0xD000000000000012;
  v23 = 0x80000001BEEA5C30;
  sub_1BEE4754C();
  if (!*(v3 + 16) || (v4 = sub_1BEB45D00(&v16), (v5 & 1) == 0))
  {
LABEL_12:

    sub_1BEDFA2B0(&v16);
LABEL_13:
    v24 = 0u;
    v25 = 0u;
    return sub_1BEB4992C(&v24, &unk_1EBDC7A40);
  }

  sub_1BEDD0540(*(v3 + 56) + 32 * v4, &v24);
  sub_1BEDFA2B0(&v16);

  if (!*(&v25 + 1))
  {
    return sub_1BEB4992C(&v24, &unk_1EBDC7A40);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v8 = v16;
    v7 = v17;
    if (qword_1EBDBFFA8 != -1)
    {
      swift_once();
    }

    v9 = sub_1BEE46A0C();
    __swift_project_value_buffer(v9, qword_1EBDCA820);

    v10 = sub_1BEE469FC();
    v11 = sub_1BEE4731C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1BEDCE8F4(v8, v7, &v16);
      _os_log_impl(&dword_1BEB18000, v10, v11, "Reloading icon image for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1BFB50850](v13, -1, -1);
      MEMORY[0x1BFB50850](v12, -1, -1);
    }

    v14 = sub_1BEE4705C();

    v20 = sub_1BEE1C648;
    v21 = 0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1BEE2457C;
    v19 = &block_descriptor_7;
    v15 = _Block_copy(&v16);

    [v1 enumerateApplicationIconsForBundleIdentifier:v14 usingBlock:v15];

    _Block_release(v15);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  return result;
}

id SBHIconModel.description.getter()
{
  result = [v0 descriptionWithMultilinePrefix_];
  if (result)
  {
    v2 = result;
    v3 = sub_1BEE4708C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SBHIconModel.folder(_:willAdd:)(uint64_t a1, uint64_t a2)
{
  result = [v2 isTrackingIcon_];
  if ((result & 1) == 0)
  {

    return [v2 addIcon_];
  }

  return result;
}

void SBHIconModel.folder(_:didReplace:with:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (([v3 isTrackingIcon_] & 1) == 0)
  {
    [v3 addIcon_];
  }

  sub_1BEE0C540(a2);
}

void SBHIconModel.folder(_:didAdd:)(int a1, id a2)
{
  v3 = [a2 icons];
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v4 = sub_1BEE471AC();

  if (v4 >> 62)
  {
    v5 = sub_1BEE474CC();
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB4EA90](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (![v2 isTrackingIcon_])
    {
      [v2 addIcon_];
    }
  }

LABEL_12:
}

void *sub_1BEE1D130(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1BEE1D1B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1BEB20D28(0, &qword_1EBDBFF10);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1BEE1D2AC(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_1BEE474CC();
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v9 = sub_1BEE1D130(v8, 0);

    a4 = sub_1BEE1DFAC(&v11, v9 + 4, v8, a1, a2, a3, a4);
    sub_1BEB2AAE8();
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v9;
}

void *sub_1BEE1D37C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1BEE21FF8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_1BEE1D418(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_1BEE2026C(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

unint64_t *sub_1BEE1D4B0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1BEE1E9A8(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_1BEE1D538(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1BEE1EB0C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_1BEE1D5C8(unint64_t *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_unknownObjectRetain();
    v12 = a4;
    v13 = a5;
    sub_1BEE22550(v11, a2, a3, v12, v13, a6);
    v15 = v14;
    swift_unknownObjectRelease_n();

    return v15;
  }

  return result;
}

uint64_t sub_1BEE1D69C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC82B0);
  result = sub_1BEE4758C();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1BEE4777C();

    sub_1BEE470CC();
    result = sub_1BEE477CC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BEE1D8C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = sub_1BEE4758C();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = sub_1BEE473BC();
    v18 = -1 << *(v10 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v10 + 48) + 8 * v21) = v17;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BEE1DAC0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1BEE474CC();
  }

  return sub_1BEE475DC();
}

void sub_1BEE1DB24(uint64_t a1, unint64_t *a2)
{
  v5 = *v2;
  v6 = sub_1BEE473BC();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = v6 & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    sub_1BEB20D28(0, a2);
    while (1)
    {
      v14 = *(*(v5 + 48) + 8 * v9);
      v15 = sub_1BEE473CC();

      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) == 0)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v5 + 48);
    v18 = *(v17 + 8 * v9);
    *(v17 + 8 * v9) = a1;
  }

  else
  {
LABEL_5:
    v16 = *(v5 + 16);
    if (v16 >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v7 + 8 * v10) = v12 | v11;
      *(*(v5 + 48) + 8 * v9) = a1;
      *(v5 + 16) = v16 + 1;
    }
  }
}

uint64_t sub_1BEE1DC64(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BEE4777C();
  sub_1BEE470CC();
  result = sub_1BEE477CC();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    while (1)
    {
      v14 = (*(v5 + 48) + 16 * v9);
      if (*v14 == a1 && v14[1] == a2)
      {
        break;
      }

      result = sub_1BEE4770C();
      if (result)
      {
        break;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) == 0)
      {
        goto LABEL_9;
      }
    }

    *v14 = a1;
    v14[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v7 + 8 * v10) = v12 | v11;
      v16 = (*(v5 + 48) + 16 * v9);
      *v16 = a1;
      v16[1] = a2;
      v17 = *(v5 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v5 + 16) = v19;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BEE1DDBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = a6;
  v7 = a5;
  v12 = a5;
  v31 = HIWORD(a5);
  v13 = a6;
  result = SBHIconGridRangeMaxCellIndexOnRow(a4, a5, a6, 0);
  v15 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = sub_1BEE467EC();
    if (result == a4)
    {
LABEL_5:
      v16 = 0;
      a3 = 0;
LABEL_7:
      v12 = a4;
LABEL_8:
      *a1 = a4;
      *(a1 + 8) = v7;
      *(a1 + 10) = v31;
      *(a1 + 16) = v6;
      *(a1 + 24) = v12;
      *(a1 + 32) = v16;
      *(a1 + 40) = v15;
      return a3;
    }

    v26 = v13;
    v27 = v12;
    v22 = v7;
    v23 = v6;
    v17 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
LABEL_22:
      __break(1u);
LABEL_23:
      a3 = v13;
LABEL_24:
      v7 = v22;
      v6 = v23;
      v16 = v28;
      goto LABEL_8;
    }

    v18 = 0;
    v28 = 0;
    v24 = v31 << 16;
    v25 = a1;
    v13 = 1;
    v19 = a4;
    while (1)
    {
      if (v17 >= v15)
      {
        v20 = v18;
        if (__OFADD__(v18++, 1))
        {
          goto LABEL_26;
        }

        if (v18 >= v31)
        {
          result = sub_1BEE467EC();
          v12 = result;
          v18 = v20;
        }

        else
        {
          v29 = v29 & 0xFFFFFFFF00000000 | v27 | v24;
          v12 = SBHIconGridRangeMinCellIndexOnRow(a4, v29, v26, v18);
          v30 = v30 & 0xFFFFFFFF00000000 | v27 | v24;
          a1 = v25;
          result = SBHIconGridRangeMaxCellIndexOnRow(a4, v27, v26, v18);
          v15 = result;
          v28 = v18;
        }
      }

      else
      {
        v12 = v17;
      }

      *a2 = v19;
      if (a3 == v13)
      {
        goto LABEL_24;
      }

      if (__OFADD__(v13, 1))
      {
        break;
      }

      result = sub_1BEE467EC();
      if (v12 == result)
      {
        goto LABEL_23;
      }

      ++a2;
      ++v13;
      v19 = v12;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BEE1DFAC(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v14 = 0;
    v23 = -1 << *(v8 + 32);
    v12 = v8 + 56;
    v13 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v15 = v25 & *(v8 + 56);
    v16 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    goto LABEL_32;
  }

  sub_1BEE4748C();
  sub_1BEB20D28(0, a5);
  sub_1BEB2A7E0(a7, a5);
  result = sub_1BEE472AC();
  v8 = v31;
  v12 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v16)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (v16 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v17 = 0;
  v27 = v13;
  a5 = ((v13 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_1BEE474FC())
      {
        goto LABEL_30;
      }

      sub_1BEB20D28(0, v28);
      swift_dynamicCast();
      result = v30;
      v16 = a3;
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v14;
    if (!v15)
    {
      break;
    }

    v20 = v14;
LABEL_13:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    result = *(*(v8 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v16)
    {
      v17 = v16;
      goto LABEL_30;
    }

    ++a2;
    v17 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v14 = v20;
      goto LABEL_13;
    }
  }

  v15 = 0;
  if (a5 <= (v14 + 1))
  {
    v26 = (v14 + 1);
  }

  else
  {
    v26 = a5;
  }

  v14 = v26 - 1;
LABEL_30:
  v13 = v27;
LABEL_32:
  *v10 = v8;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  return v17;
}

void (*sub_1BEE1E1DC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1BEE1E4F4(v7);
  v7[9] = sub_1BEE1E2E8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1BEE1E288;
}

void sub_1BEE1E288(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1BEE1E2E8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1BEB1DAFC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1BEE32554();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1BEE311E4(v18, a4 & 1);
    v13 = sub_1BEB1DAFC(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1BEE4775C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1BEE1E440;
}

void sub_1BEE1E440(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1BEE32120(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1BEE24330(*(v7 + 48) + 16 * v6);
    sub_1BEE316F0(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_1BEE1E4F4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1BEE1E51C;
}

uint64_t sub_1BEE1E528(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1BEE1E738(a1);
  }

  v1 = MEMORY[0x1E69E7CD0];
  v14 = MEMORY[0x1E69E7CD0];
  sub_1BEE4748C();
  if (sub_1BEE474FC())
  {
    sub_1BEB20D28(0, &qword_1EBDBFFE0);
    do
    {
      swift_dynamicCast();
      if ([v13 isKindOfClass_])
      {
        v2 = *(v1 + 16);
        if (*(v1 + 24) <= v2)
        {
          sub_1BEDF69D0(v2 + 1);
        }

        v1 = v14;
        result = sub_1BEE473BC();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      else
      {
      }
    }

    while (sub_1BEE474FC());
  }

  return v1;
}

uint64_t sub_1BEE1E738(uint64_t a1)
{
  v2 = a1;
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v20 = v4;
    v21 = v1;
    v19[1] = v19;
    MEMORY[0x1EEE9AC00](a1);
    v6 = v19 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v22 = 0;
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v4 = v12 | (v7 << 6);
      if ([*(*(v2 + 48) + 8 * v4) isKindOfClass_])
      {
        *&v6[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
          return sub_1BEE1D8C0(v6, v20, v22, v2, &qword_1EBDC79E0);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_1BEE1D8C0(v6, v20, v22, v2, &qword_1EBDC79E0);
      }

      v14 = *(v2 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v17 = swift_slowAlloc();
  v18 = sub_1BEE1D4B0(v17, v4, v2);

  MEMORY[0x1BFB50850](v17, -1, -1);
  return v18;
}

unint64_t *sub_1BEE1E9A8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v16 = result;
  v17 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    result = [*(*(a3 + 48) + 8 * v13) isKindOfClass_];
    if (result)
    {
      *(v16 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v17++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_1BEE1D8C0(v16, a2, v17, a3, &qword_1EBDC79E0);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1BEE1EB0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1BEE1D8C0(a1, a2, v20, a3, &qword_1EBDC79E0);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1BEE1EC8C(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_1BEE474CC())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BEE4748C();
    sub_1BEB20D28(0, &qword_1EBDBFFE0);
    sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
    sub_1BEE472AC();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_1BEB2AAE8();
      return;
    }

    while (1)
    {
      v16 = sub_1BEDF7CE0(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1BEE474FC())
      {
        sub_1BEB20D28(0, &qword_1EBDBFFE0);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1BEE1EEC4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BEE1FCB0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BEE1EF40(v6);
  return sub_1BEE4760C();
}

char *sub_1BEE1EF40(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BEE476DC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BEB20D28(0, &qword_1EBDBFFE0);
        v6 = sub_1BEE471CC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1BEE1F110(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1BEE1F054(0, v2, 1, a1);
  }

  return result;
}

char *sub_1BEE1F054(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
LABEL_5:
    result = *(v6 + 8 * v4);
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = [result localizedCompareDisplayNames_];
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
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

      v11 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v11;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BEE1F110(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v81 = a4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 8 * v6);
        v10 = 8 * v8;
        v11 = (*a3 + 8 * v8);
        v13 = *v11;
        v12 = (v11 + 2);
        result = [v9 localizedCompareDisplayNames_];
        v14 = result;
        v82 = v8;
        v15 = (v8 + 2);
        while (v5 != v15)
        {
          result = [*v12 localizedCompareDisplayNames_];
          ++v15;
          ++v12;
          if ((v14 == -1) == (result != -1))
          {
            v5 = (v15 - 1);
            break;
          }
        }

        v8 = v82;
        if (v14 == -1)
        {
          if (v5 < v82)
          {
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
            return result;
          }

          if (v82 < v5)
          {
            v16 = 8 * v5 - 8;
            v17 = v5;
            v18 = v82;
            do
            {
              if (v18 != --v17)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v19 = *(v20 + v10);
                *(v20 + v10) = *(v20 + v16);
                *(v20 + v16) = v19;
              }

              v18 = (v18 + 1);
              v16 -= 8;
              v10 += 8;
            }

            while (v18 < v17);
          }
        }

        v6 = v5;
      }

      v21 = a3[1];
      if (v6 < v21)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_116;
        }

        if (v6 - v8 < v81)
        {
          if (__OFADD__(v8, v81))
          {
            goto LABEL_117;
          }

          if (v8 + v81 >= v21)
          {
            v22 = a3[1];
          }

          else
          {
            v22 = (v8 + v81);
          }

          if (v22 < v8)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v6 != v22)
          {
            v23 = *a3;
            v24 = *a3 + 8 * v6 - 8;
            v83 = v8;
            v25 = (v8 - v6);
            do
            {
              v26 = *(v23 + 8 * v6);
              v27 = v25;
              v28 = v24;
              do
              {
                result = [v26 localizedCompareDisplayNames_];
                if (result != -1)
                {
                  break;
                }

                if (!v23)
                {
                  goto LABEL_121;
                }

                v29 = *v28;
                v26 = v28[1];
                *v28 = v26;
                v28[1] = v29;
                --v28;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v24 += 8;
              --v25;
            }

            while (v6 != v22);
            v6 = v22;
            v8 = v83;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1BEE1F988(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v32 = *(v7 + 2);
      v31 = *(v7 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_1BEE1F988((v31 > 1), v32 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v33;
      v34 = &v7[16 * v32];
      *(v34 + 4) = v8;
      *(v34 + 5) = v6;
      v35 = *v84;
      if (!*v84)
      {
        goto LABEL_125;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v7 + 4);
            v38 = *(v7 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_104;
            }

            v53 = &v7[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_107;
            }

            v59 = &v7[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_111;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v63 = &v7[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_71:
          if (v58)
          {
            goto LABEL_106;
          }

          v66 = &v7[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_109;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_78:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*a3)
          {
            goto LABEL_122;
          }

          v8 = *&v7[16 * v74 + 32];
          v75 = *&v7[16 * v36 + 40];
          sub_1BEE1F6B4((*a3 + 8 * v8), (*a3 + 8 * *&v7[16 * v36 + 32]), (*a3 + 8 * v75), v35);
          if (v4)
          {
          }

          if (v75 < v8)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1BEE1F974(v7);
          }

          if (v74 >= *(v7 + 2))
          {
            goto LABEL_101;
          }

          v76 = &v7[16 * v74];
          *(v76 + 4) = v8;
          *(v76 + 5) = v75;
          result = sub_1BEE1F8E8(v36);
          v33 = *(v7 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v7[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_102;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_103;
        }

        v48 = &v7[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_105;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_108;
        }

        if (v52 >= v44)
        {
          v70 = &v7[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_112;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_88;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
  v8 = *v84;
  if (!*v84)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_1BEE1F974(v7);
    v7 = result;
  }

  v77 = *(v7 + 2);
  if (v77 >= 2)
  {
    while (*a3)
    {
      v78 = *&v7[16 * v77];
      v79 = *&v7[16 * v77 + 24];
      sub_1BEE1F6B4((*a3 + 8 * v78), (*a3 + 8 * *&v7[16 * v77 + 16]), (*a3 + 8 * v79), v8);
      if (v4)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1BEE1F974(v7);
      }

      if (v77 - 2 >= *(v7 + 2))
      {
        goto LABEL_114;
      }

      v80 = &v7[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_1BEE1F8E8(v77 - 1);
      v77 = *(v7 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_1BEE1F6B4(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 1;
      --v5;
      v18 = v14;
      do
      {
        v19 = v5 + 1;
        v20 = *--v18;
        if ([v20 localizedCompareDisplayNames_] == -1)
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (--v6, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        --v5;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      while ([*v6 localizedCompareDisplayNames_] == -1)
      {
        v15 = v6;
        v16 = v7 == v6++;
        if (!v16)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v7 = *v15;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1BEE1F8E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BEE1F974(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1BEE1F988(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8290);
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

void sub_1BEE1FA8C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1BFB4E9B0](a1, a2, v7);
      sub_1BEB20D28(0, &qword_1EBDBFFE0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1BEB20D28(0, &qword_1EBDBFFE0);
    if (sub_1BEE474AC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1BEE474BC();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1BEE473BC();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1BEE473CC();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

char *sub_1BEE1FCC4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1BEE474CC();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1BEE474CC();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1BEB528EC(result, 1);

  return sub_1BEB5364C(v6, v5, 1, v3);
}

void sub_1BEE1FDEC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = sub_1BEE4705C();
  v9 = [a3 applicationIconForBundleIdentifier_];

  if (v9)
  {
    v19 = 0;
    (*(a4 + 16))(a4, v9, &v19);
    if (v19 == 1)
    {
    }

    else
    {
      v10 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByBundleIdentifier;
      swift_beginAccess();
      v11 = *&a3[v10];
      if (*(v11 + 16) && (v12 = sub_1BEB1DAFC(a1, a2), (v13 & 1) != 0))
      {
        v14 = *(*(v11 + 56) + 8 * v12);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v14 = MEMORY[0x1E69E7CC0];
      }

      if (v14 >> 62)
      {
LABEL_23:
        v15 = sub_1BEE474CC();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = 0;
      while (v15 != v16)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1BFB4EA90](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        (*(a4 + 16))(a4, v17, &v19);

        ++v16;
        if (v19 == 1)
        {
          break;
        }
      }
    }
  }
}

unint64_t sub_1BEE1FFDC(unint64_t *a1)
{
  v3 = *a1;
  result = sub_1BEDF8C3C(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_1BEE474CC();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_1EBDBFE90;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_1BEE474CC())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFB4EA90](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_1BEB20D28(0, v8);
    v12 = sub_1BEE473CC();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFB4EA90](v6, v3);
          v14 = MEMORY[0x1BFB4EA90](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1BEE1DAC0(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_1BEE1DAC0(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

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
  __break(1u);
  return sub_1BEE474CC();
}

unint64_t *sub_1BEE2026C(unint64_t *result, uint64_t a2, uint64_t a3, id a4)
{
  v18 = a2;
  v19 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    result = [a4 isIconVisible_];
    if (result)
    {
      *(v19 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_1BEE1D8C0(v19, v18, v6, a3, &qword_1EBDC79E0);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_15;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEE203BC(uint64_t a1, void *a2)
{
  v3 = v2;
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v7;
    v26 = v3;
    v24[1] = v24;
    MEMORY[0x1EEE9AC00](v9);
    v11 = v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v8);
    v27 = 0;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v3 = v14 & *(a1 + 56);
    v15 = (v13 + 63) >> 6;
    v7 = &selRef_isEligibleForSimpleMutationsWithGridCellInfoOptions_mutationOptions_;
    while (v3)
    {
      v16 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v8 = v16 | (v12 << 6);
      if ([v10 isIconVisible_])
      {
        *&v11[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_1BEE1D8C0(v11, v25, v27, a1, &qword_1EBDC79E0);

          return v20;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v15)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v3 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v10;
  v20 = sub_1BEE1D418(v22, v7, a1, v23);

  MEMORY[0x1BFB50850](v22, -1, -1);

  return v20;
}

uint64_t sub_1BEE20630(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1BEE203BC(a1, a2);
  }

  v2 = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  v3 = a2;
  sub_1BEE4748C();
  if (sub_1BEE474FC())
  {
    sub_1BEB20D28(0, &qword_1EBDBFFE0);
    do
    {
      swift_dynamicCast();
      if ([v3 isIconVisible_])
      {
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          sub_1BEDF69D0(v4 + 1);
        }

        v2 = v16;
        result = sub_1BEE473BC();
        v6 = v16 + 56;
        v7 = -1 << *(v16 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v9 == v12;
            if (v9 == v12)
            {
              v9 = 0;
            }

            v11 |= v13;
            v14 = *(v6 + 8 * v9);
          }

          while (v14 == -1);
          v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v16 + 48) + 8 * v10) = v15;
        ++*(v16 + 16);
      }

      else
      {
      }
    }

    while (sub_1BEE474FC());
  }

  return v2;
}

uint64_t sub_1BEE2083C(char *a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v48 = a2;
  v46 = 0;
  v4 = [a1 iconRepository];
  v5 = swift_allocObject();
  v5[2] = sub_1BEE243C8;
  v5[3] = &v47;
  v5[4] = &v46;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BEE24440;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1BEE2444C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE2457C;
  aBlock[3] = &block_descriptor_62;
  v7 = _Block_copy(aBlock);

  [v4 enumerateIconsUsingBlock_];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    goto LABEL_40;
  }

  if (v46)
  {
  }

  v8 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByUniqueIdentifier;
  swift_beginAccess();
  v45 = a1;
  v9 = *&a1[v8];
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  do
  {
    if (v12)
    {
      v15 = v14;
      goto LABEL_12;
    }

    do
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      if (v15 >= v13)
      {
        goto LABEL_13;
      }

      v12 = *(v9 + 64 + 8 * v15);
      ++v14;
    }

    while (!v12);
    v14 = v15;
LABEL_12:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(v9 + 56) + 8 * (v16 | (v15 << 6)));

    v18 = v17;
    v19 = sub_1BEE4705C();
    (*(a2 + 16))(a2, v18, v19, &v46);
  }

  while ((v46 & 1) == 0);
LABEL_13:

  if ((v46 & 1) == 0)
  {
    v20 = OBJC_IVAR___SBHIconModel_widgetIconsByIdentifier;
    swift_beginAccess();
    v21 = *&v45[v20];
    v22 = 1 << *(v21 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v21 + 64);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    do
    {
      if (v24)
      {
        v27 = v26;
      }

      else
      {
        do
        {
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_38;
          }

          if (v27 >= v25)
          {
            goto LABEL_24;
          }

          v24 = *(v21 + 64 + 8 * v27);
          ++v26;
        }

        while (!v24);
        v26 = v27;
      }

      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v29 = *(*(v21 + 56) + 8 * (v28 | (v27 << 6)));

      v30 = v29;
      v31 = sub_1BEE4705C();
      (*(a2 + 16))(a2, v30, v31, &v46);
    }

    while ((v46 & 1) == 0);
LABEL_24:

    if (v46 != 1)
    {
      v33 = OBJC_IVAR___SBHIconModel_fileStackIconsByIdentifier;
      swift_beginAccess();
      v34 = *&v45[v33];
      v35 = 1 << *(v34 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v34 + 64);
      v38 = (v35 + 63) >> 6;

      v39 = 0;
      do
      {
        if (v37)
        {
          v40 = v39;
        }

        else
        {
          do
          {
            v40 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_39;
            }

            if (v40 >= v38)
            {
              goto LABEL_36;
            }

            v37 = *(v34 + 64 + 8 * v40);
            ++v39;
          }

          while (!v37);
          v39 = v40;
        }

        v41 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v42 = *(*(v34 + 56) + 8 * (v41 | (v40 << 6)));

        v43 = v42;
        v44 = sub_1BEE4705C();
        (*(a2 + 16))(a2, v43, v44, &v46);
      }

      while (v46 != 1);
LABEL_36:
    }
  }
}

void sub_1BEE20D6C(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = a1;
    v4 = [v2 application];
    if (v4)
    {
      v5 = v4;
      if (([v4 respondsToSelector_] & 1) != 0 && objc_msgSend(v5, sel_isAppClip))
      {
        if (qword_1EBDBFE30 != -1)
        {
          swift_once();
        }

        v6 = sub_1BEE46A0C();
        __swift_project_value_buffer(v6, qword_1EBDCA800);
        swift_unknownObjectRetain();
        v7 = sub_1BEE469FC();
        v8 = sub_1BEE4731C();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v7, v8))
        {
          goto LABEL_18;
        }

        v9 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = v41;
        *v9 = 136315138;
        v10 = [v5 bundleIdentifier];
        v11 = sub_1BEE4708C();
        v13 = v12;

        v14 = sub_1BEDCE8F4(v11, v13, &v42);

        *(v9 + 4) = v14;
        v15 = "Application icon for app clip should not be added to folder: %s";
LABEL_17:
        _os_log_impl(&dword_1BEB18000, v7, v8, v15, v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x1BFB50850](v41, -1, -1);
        MEMORY[0x1BFB50850](v9, -1, -1);
LABEL_18:
        swift_unknownObjectRelease();

        goto LABEL_21;
      }

      swift_unknownObjectRelease();
    }

    v16 = [v2 applicationPlaceholder];
    if (v16)
    {
      v17 = v16;
      if ([v16 respondsToSelector_] & 1) != 0 && (objc_msgSend(v17, sel_isAppClip))
      {
        if (qword_1EBDBFE30 != -1)
        {
          swift_once();
        }

        v18 = sub_1BEE46A0C();
        __swift_project_value_buffer(v18, qword_1EBDCA800);
        swift_unknownObjectRetain();
        v7 = sub_1BEE469FC();
        v8 = sub_1BEE4731C();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v7, v8))
        {
          goto LABEL_18;
        }

        v9 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = v41;
        *v9 = 136315138;
        v19 = [v17 applicationBundleIdentifier];
        v20 = sub_1BEE4708C();
        v22 = v21;

        v23 = sub_1BEDCE8F4(v20, v22, &v42);

        *(v9 + 4) = v23;
        v15 = "Application placeholder icon for app clip should not be added to folder: %s";
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }
  }

LABEL_21:
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = a1;
    v27 = [v25 webClip];
    v28 = [v27 isAppClip];

    if (v28)
    {
      if (qword_1EBDBFE30 != -1)
      {
        swift_once();
      }

      v29 = sub_1BEE46A0C();
      __swift_project_value_buffer(v29, qword_1EBDCA800);
      v30 = v26;
      v31 = sub_1BEE469FC();
      v32 = sub_1BEE4731C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v42 = v34;
        *v33 = 136315138;
        v35 = [v25 webClip];
        v36 = [v35 identifier];

        if (v36)
        {
          v37 = sub_1BEE4708C();
          v39 = v38;

          v40 = sub_1BEDCE8F4(v37, v39, &v42);

          *(v33 + 4) = v40;
          _os_log_impl(&dword_1BEB18000, v31, v32, "Bookmark icon for app clip should not be added to folder: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x1BFB50850](v34, -1, -1);
          MEMORY[0x1BFB50850](v33, -1, -1);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1BEE212B8(uint64_t a1, void *a2)
{
  v3 = v2;
  v30 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = sub_1BEE469DC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v3 delegate];
  if (v15)
  {
    v16 = v15;
    if ([v15 respondsToSelector_])
    {
      v17 = [v16 iconModel:v3 customInsertionGridPathForIcon:v30 inRootFolder:a2];
      swift_unknownObjectRelease();
      if (v17)
      {

        return 1;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v19 = [v3 delegate];
  if (v19)
  {
    v20 = v19;
    if ([v19 respondsToSelector_])
    {
      v21 = [v20 iconModel:v3 customInsertionRelativePathForIcon:v30 inRootFolder:a2];
      swift_unknownObjectRelease();
      if (v21)
      {
        v29 = v14;
        v22 = [a2 gridPathForRelativePath_];
        if (v22)
        {
          v23 = v22;

          return 1;
        }

        v14 = v29;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v24 = [v3 delegate];
  if (!v24)
  {
    goto LABEL_17;
  }

  v25 = v24;
  if (([v24 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_17:
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_18:
    sub_1BEB4992C(v10, &qword_1EBDC7A28);
    return 0;
  }

  v26 = [v25 iconModel:v3 customInsertionIndexPathForIcon:v30 inRootFolder:a2];
  swift_unknownObjectRelease();
  if (v26)
  {
    sub_1BEE4697C();

    (*(v12 + 56))(v8, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v8, 1, 1, v11);
  }

  sub_1BEB31BF4(v8, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_18;
  }

  (*(v12 + 32))(v14, v10, v11);
  v27 = sub_1BEE4696C();
  v28 = [a2 gridPathForIndexPath:v27 listGridCellInfoOptions:0];

  if (v28)
  {

    (*(v12 + 8))(v14, v11);
    return 1;
  }

  (*(v12 + 8))(v14, v11);
  return 0;
}

id sub_1BEE21750(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_1BEE469DC();
  v47 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v44 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - v18;
  v20 = [a1 icon];
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v46 = a4;
  v22 = [a2 relativePathForIcon:v20 listGridCellInfoOptions:a4];
  if (v22)
  {
    v23 = v22;
    v24 = [a3 gridPathForRelativePath_];

    if (v24)
    {

      return v24;
    }
  }

  v25 = [a2 indexPathForIcon_];
  if (!v25)
  {

    return 0;
  }

  v26 = v25;
  sub_1BEE4697C();

  v27 = v47;
  v45 = *(v47 + 32);
  v45(v19, v17, v8);
  (*(v27 + 16))(v14, v19, v8);
  v28 = sub_1BEE4696C();
  v29 = [a3 isValidIndexPath:v28 forInsertion:1];

  if ((v29 & 1) == 0)
  {
    v30 = sub_1BEE4696C();
    v31 = [v30 sb_iconPathCount];

    if (v31 == 1)
    {
      v32 = sub_1BEE4696C();
      v33 = [v32 sbListIndex];

      if (v33 == [a3 listCount])
      {

        v34 = sub_1BEE4696C();
        v35 = [v34 sb:0 indexPathByReplacingLastIconIndex:?];

        sub_1BEE4697C();
        (*(v47 + 8))(v14, v8);
        v45(v14, v11, v8);
      }
    }
  }

  v36 = sub_1BEE4696C();
  v37 = [a3 isValidIndexPath:v36 forInsertion:1];

  if (!v37)
  {

    v42 = *(v47 + 8);
    v42(v14, v8);
    v42(v19, v8);
    return 0;
  }

  v38 = sub_1BEE4696C();
  v39 = v46;
  v24 = [a3 gridPathForIndexPath:v38 listGridCellInfoOptions:v46];

  if (!v24)
  {
    v40 = sub_1BEE4696C();
    v24 = [a3 gridPathWithListAtIndexPath:v40 gridCellIndex:0 listGridCellInfoOptions:v39];

    v21 = v40;
  }

  v41 = *(v47 + 8);
  v41(v14, v8);
  v41(v19, v8);
  return v24;
}

id sub_1BEE21BB0(void *a1, void *a2)
{
  v5 = OBJC_IVAR___SBHIconModel__cachedDefaultRootFolder;
  v6 = *&v2[OBJC_IVAR___SBHIconModel__cachedDefaultRootFolder];
  if (!v6)
  {
    v7 = [v2 defaultIconState];
    sub_1BEE4701C();

    v8 = sub_1BEE11674();

    v9 = *&v2[v5];
    *&v2[v5] = v8;

    sub_1BEE117A0();
    v6 = *&v2[v5];
    if (!v6)
    {
      return 0;
    }
  }

  v10 = v6;
  v11 = [a1 uniqueIdentifier];
  if (!v11)
  {
    sub_1BEE4708C();
    v11 = sub_1BEE4705C();
  }

  v12 = [v10 isIconWithIdentifierInIgnoredList_];

  if (v12)
  {
    v13 = [a2 ignoredList];

    if (qword_1EBDBFE30 != -1)
    {
      swift_once();
    }

    v14 = sub_1BEE46A0C();
    __swift_project_value_buffer(v14, qword_1EBDCA800);
    v15 = sub_1BEE469FC();
    v16 = sub_1BEE4733C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BEB18000, v15, v16, "Added icon to ignored list based on other root folder", v17, 2u);
      MEMORY[0x1BFB50850](v17, -1, -1);
    }
  }

  return v12;
}

uint64_t sub_1BEE21DC4()
{
  v1 = OBJC_IVAR___SBHIconModel__cachedDesiredRootFolder;
  if (!*&v0[OBJC_IVAR___SBHIconModel__cachedDesiredRootFolder])
  {
    v2 = [v0 desiredIconState];
    if (v2)
    {
      v3 = v2;
      sub_1BEE4701C();

      v4 = sub_1BEE11674();

      v5 = *&v0[v1];
      *&v0[v1] = v4;

      sub_1BEE117A0();
    }
  }

  return *&v0[v1];
}

uint64_t sub_1BEE21E68(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = a1;
    v4 = [v2 application];
    if (v4)
    {
      v5 = v4;
      if ([v4 respondsToSelector_])
      {
        v6 = [v5 isAppClip];
        swift_unknownObjectRelease();
        if (v6)
        {

          LOBYTE(v2) = 1;
          goto LABEL_13;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v7 = [v2 applicationPlaceholder];
    if (v7)
    {
      v8 = v7;
      if ([v7 respondsToSelector_])
      {
        LOBYTE(v2) = [v8 isAppClip];

        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    LOBYTE(v2) = 0;
  }

LABEL_13:
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    v12 = [v10 webClip];
    v13 = [v12 isAppClip];

    LOBYTE(v2) = v13 | v2;
  }

  return v2 & 1;
}

uint64_t sub_1BEE21FF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = result;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v15 = v12 | (v5 << 6);
    if (!*(a4 + 16))
    {
      goto LABEL_23;
    }

    v31 = v9;
    v29 = v12 | (v5 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_1BEE4777C();

    sub_1BEE470CC();
    v19 = sub_1BEE477CC();
    v20 = -1 << *(a4 + 32);
    v21 = v19 & ~v20;
    if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = (*(a4 + 48) + 16 * v21);
        v24 = *v23 == v18 && v23[1] == v17;
        if (v24 || (sub_1BEE4770C() & 1) != 0)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v9 = v31;
    }

    else
    {
LABEL_22:

      v9 = v31;
      v15 = v29;
LABEL_23:
      *(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_26:

        return sub_1BEE1D69C(v27, a2, v28, a3);
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1BEE22204(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v33[0] = v3;
    v33[1] = v33;
    v34 = v8;
    MEMORY[0x1EEE9AC00](v10);
    v35 = v33 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v9);
    v36 = 0;
    v37 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
    v15 = a2 + 56;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v11 << 6);
      if (!*(a2 + 16))
      {
        goto LABEL_24;
      }

      v38 = v16 | (v11 << 6);
      v39 = v14;
      v20 = (*(v5 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      sub_1BEE4777C();

      sub_1BEE470CC();
      v23 = sub_1BEE477CC();
      v24 = -1 << *(a2 + 32);
      v9 = v23 & ~v24;
      if ((*(v15 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v25 = ~v24;
        while (1)
        {
          v26 = (*(a2 + 48) + 16 * v9);
          v27 = *v26 == v22 && v26[1] == v21;
          if (v27 || (sub_1BEE4770C() & 1) != 0)
          {
            break;
          }

          v9 = (v9 + 1) & v25;
          if (((*(v15 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v5 = v37;
        v14 = v39;
      }

      else
      {
LABEL_23:

        v5 = v37;
        v19 = v38;
        v14 = v39;
LABEL_24:
        *&v35[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_27:
          v29 = sub_1BEE1D69C(v35, v34, v36, v5);

          return v29;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_27;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = swift_slowAlloc();

  v32 = sub_1BEE1D37C(v31, v8, v5, a2);

  MEMORY[0x1BFB50850](v31, -1, -1);

  return v32;
}

void sub_1BEE22550(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v24 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = v14 | (v8 << 6);
    v18 = *(*(a3 + 48) + 8 * v17);
    if ([a4 isTrackingIcon_] && (objc_msgSend(a5, sel_containsIcon_, v18) & 1) == 0 && objc_msgSend(a4, sel_isIconVisible_, v18))
    {
      if (a6 && ([a6 respondsToSelector_] & 1) != 0)
      {
        v19 = [a6 iconModel:a4 shouldRemoveIcon:v18];

        if (v19)
        {
          goto LABEL_20;
        }
      }

      else
      {

LABEL_20:
        *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
LABEL_23:

          sub_1BEE1D8C0(a1, a2, v24, a3, &qword_1EBDC7A90);
          return;
        }
      }
    }

    else
    {
    }
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
      goto LABEL_23;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1BEE2273C(uint64_t a1, void *a2, char **a3, void *a4)
{
  v5 = v4;
  v8 = a1;
  v40 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v38 = a4;
  swift_unknownObjectRetain();
  v34 = v11;
  v35 = v5;
  v39 = a3;
  if (v10 > 0xD)
  {
    goto LABEL_29;
  }

  v13 = a2;
  v14 = a3;
  while (2)
  {
    v33 = &v33;
    MEMORY[0x1EEE9AC00](v14);
    v36 = &v33 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v12);
    v37 = 0;
    v11 = 0;
    v5 = v8 + 56;
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v12 = (v15 + 63) >> 6;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v21 = v18 | (v11 << 6);
      v22 = v8;
      v23 = *(*(v8 + 48) + 8 * v21);
      if ([a2 isTrackingIcon_] && (objc_msgSend(v39, sel_containsIcon_, v23) & 1) == 0 && objc_msgSend(a2, sel_isIconVisible_, v23))
      {
        a3 = &selRef_didDeleteIconState_;
        if (v38 && ([v38 respondsToSelector_] & 1) != 0)
        {
          a3 = [v38 iconModel:a2 shouldRemoveIcon:v23];

          v8 = v22;
          if (a3)
          {
            goto LABEL_22;
          }
        }

        else
        {

          v8 = v22;
LABEL_22:
          *&v36[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
          if (__OFADD__(v37++, 1))
          {
            __break(1u);
LABEL_25:
            v25 = sub_1BEE1D8C0(v36, v34, v37, v8, &qword_1EBDC7A90);

            goto LABEL_26;
          }
        }
      }

      else
      {

        v8 = v22;
      }
    }

    v19 = v11;
    a3 = v39;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v12)
      {
        goto LABEL_25;
      }

      v20 = *(v5 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v17 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    v27 = a2;
    v28 = a3;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v29 = swift_slowAlloc();
  v30 = v27;
  v31 = v28;
  v32 = v38;
  swift_unknownObjectRetain();
  v25 = sub_1BEE1D5C8(v29, v11, v8, v30, v31, v32);

  MEMORY[0x1BFB50850](v29, -1, -1);
  if (v5)
  {
    swift_unknownObjectRelease();
  }

  else
  {

LABEL_26:
    swift_unknownObjectRelease();
  }

  return v25;
}

uint64_t sub_1BEE22AC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E69E7CD0];
    v24 = MEMORY[0x1E69E7CD0];
    swift_unknownObjectRetain();
    v8 = a2;
    v9 = a3;
    sub_1BEE4748C();
    if (sub_1BEE474FC())
    {
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v22 = a4;
      do
      {
        swift_dynamicCast();
        if (![v8 isTrackingIcon_] || (objc_msgSend(v9, sel_containsIcon_, v23) & 1) != 0 || !objc_msgSend(v8, sel_isIconVisible_, v23) || a4 && (objc_msgSend(a4, sel_respondsToSelector_, sel_iconModel_shouldRemoveIcon_) & 1) != 0 && (objc_msgSend(a4, sel_iconModel_shouldRemoveIcon_, v8, v23) & 1) == 0)
        {
        }

        else
        {
          v10 = *(v7 + 16);
          if (*(v7 + 24) <= v10)
          {
            sub_1BEDF6C44(v10 + 1);
          }

          v7 = v24;
          result = sub_1BEE473BC();
          v12 = v24 + 56;
          v13 = -1 << *(v24 + 32);
          v14 = result & ~v13;
          v15 = v14 >> 6;
          if (((-1 << v14) & ~*(v24 + 56 + 8 * (v14 >> 6))) != 0)
          {
            v16 = __clz(__rbit64((-1 << v14) & ~*(v24 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v17 = 0;
            v18 = (63 - v13) >> 6;
            do
            {
              if (++v15 == v18 && (v17 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v19 = v15 == v18;
              if (v15 == v18)
              {
                v15 = 0;
              }

              v17 |= v19;
              v20 = *(v12 + 8 * v15);
            }

            while (v20 == -1);
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          }

          *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          *(*(v24 + 48) + 8 * v16) = v23;
          ++*(v24 + 16);
          a4 = v22;
        }
      }

      while (sub_1BEE474FC());
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    v7 = sub_1BEE2273C(a1, a2, a3, a4);
    swift_unknownObjectRelease();
  }

  return v7;
}

id sub_1BEE22DA4()
{
  v1 = [v0 delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v3 = [v2 iconModel:v0 allowedGridSizeClassesForFolderClass:swift_getObjCClassFromMetadata()];
      swift_unknownObjectRelease();
      if (v3)
      {
        return v3;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v5 = [v0 rootFolderAllowedGridSizeClasses];

  return v5;
}

id sub_1BEE22E78()
{
  v1 = [v0 delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v3 = [v2 allowedGridSizeClassesForDockForIconModel_];
      swift_unknownObjectRelease();
      if (v3)
      {
        return v3;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v5 = [objc_opt_self() gridSizeClassSetForDefaultGridSizeClass];

  return v5;
}

id sub_1BEE22F44(void *a1)
{
  v3 = [a1 leafIdentifier];
  v4 = sub_1BEE4708C();
  v6 = v5;

  v7 = sub_1BEE0CEA8(v4, v6);

  if (v7 && ([a1 matchesWidgetIcon_] & 1) == 0)
  {

    v7 = 0;
  }

  v8 = [v1 delegate];
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      if (!v7)
      {
        v7 = a1;
      }

      if ([v9 respondsToSelector_])
      {
        v10 = [v9 iconModel:v1 validatedWidgetIconForWidgetIcon:v7];

        swift_unknownObjectRelease();
        return v10;
      }

      else
      {

        swift_unknownObjectRelease();
        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v7;
}

id sub_1BEE23084(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1;
  v5 = [v2 delegate];
  if (v5)
  {
    v6 = v5;
    if ([v5 respondsToSelector_])
    {
      if ([v6 respondsToSelector_])
      {
        v3 = [v6 iconModel:v2 validatedFileStackIconForFileStackIcon:v4];
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v3;
}

id sub_1BEE2315C()
{
  result = [v0 succinctDescriptionBuilder];
  if (result)
  {
    v2 = result;
    v3 = result;
    v4 = [v0 store];
    v5 = sub_1BEE4705C();

    swift_unknownObjectRelease();
    v6 = v3;
    v7 = [v0 iconRepository];
    v8 = sub_1BEE4705C();

    v9 = v6;
    v10 = [v0 rootFolder];
    v11 = sub_1BEE4705C();

    v12 = v9;
    v13 = [v0 hasDesiredIconState];
    v14 = sub_1BEE4705C();

    v15 = v12;
    v16 = [v0 ignoresIconsNotInIconState];
    v17 = sub_1BEE4705C();

    v18 = v15;
    v19 = [v0 automaticallyAddsWebClips];
    v20 = sub_1BEE4705C();

    return v2;
  }

  return result;
}

void sub_1BEE23448(void *a1)
{
  v3 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8298);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BEE8AE40;
  sub_1BEE4754C();
  *(inited + 96) = sub_1BEB20D28(0, &qword_1EBDBFFE0);
  *(inited + 72) = a1;
  v5 = a1;
  sub_1BEB449C8(inited);
  swift_setDeallocating();
  sub_1BEB4992C(inited + 32, &unk_1EBDC82A0);
  v6 = sub_1BEE4700C();

  [v3 postNotificationName:@"SBIconModelWillRemoveIconNotification" object:v1 userInfo:v6];

  sub_1BEE0E878(v5, 1, 0);
}

id sub_1BEE235C0(void *a1, SEL *a2, SEL *a3)
{
  result = [a1 *a2];
  if (result)
  {
    v7 = result;
    v8 = [a1 applicationBundleID];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1BEE4708C();
      v12 = v11;

      v13 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByBundleIdentifier;
      swift_beginAccess();
      v14 = *(v3 + v13);
      if (*(v14 + 16) && (v15 = sub_1BEB1DAFC(v10, v12), (v16 & 1) != 0))
      {
        v17 = *(*(v14 + 56) + 8 * v15);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v17 = MEMORY[0x1E69E7CC0];
      }

      if (v17 >> 62)
      {
        result = sub_1BEE474CC();
        v18 = result;
        if (result)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
LABEL_9:
          if (v18 < 1)
          {
            __break(1u);
            return result;
          }

          for (i = 0; i != v18; ++i)
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x1BFB4EA90](i, v17);
            }

            else
            {
              v20 = *(v17 + 8 * i + 32);
            }

            v21 = v20;
            [v20 *a3];
          }
        }
      }

      return swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BEE2377C(unint64_t a1, unint64_t a2)
{
  v4 = v2;
  v5 = a2;
  v6 = a1;
  v54[0] = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    v7 = sub_1BEE474CC();
    v52 = v5;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v52 = a2;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_58;
  }

  v8 = 0;
  v9 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByBundleIdentifier;
  v3 = v6 & 0xC000000000000001;
  do
  {
    if (v3)
    {
      v12 = MEMORY[0x1BFB4EA90](v8, v6);
    }

    else
    {
      v12 = *(v6 + 8 * v8 + 32);
    }

    v13 = v12;
    v2 = v54;
    MEMORY[0x1BFB4E650]();
    if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BEE471BC();
    }

    sub_1BEE471DC();
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 applicationBundleID];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1BEE4708C();
        v19 = v18;

        swift_beginAccess();
        v20 = *&v4[v9];
        if (*(v20 + 16) && (v21 = sub_1BEB1DAFC(v17, v19), (v22 & 1) != 0))
        {
          v10 = *(*(v20 + 56) + 8 * v21);
        }

        else
        {
          v10 = MEMORY[0x1E69E7CC0];
        }

        swift_endAccess();

        if (v10 >> 62)
        {
          sub_1BEB20D28(0, &qword_1EBDBFFE0);

          v11 = sub_1BEE4765C();
        }

        else
        {

          sub_1BEE4771C();
          sub_1BEB20D28(0, &qword_1EBDBFFE0);
          v11 = v10;
        }

        v2 = v54;
        sub_1BEE35000(v11);
        v5 = v52;
      }
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_22:
  v53 = MEMORY[0x1E69E7CC0];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_24;
    }

LABEL_44:
    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_45;
  }

  v6 = sub_1BEE474CC();
  if (!v6)
  {
    goto LABEL_44;
  }

LABEL_24:
  if (v6 < 1)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v23 = 0;
  v24 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByBundleIdentifier;
  v25 = v5 & 0xC000000000000001;
  do
  {
    if (v25)
    {
      v28 = MEMORY[0x1BFB4EA90](v23, v5);
    }

    else
    {
      v28 = *(v5 + 8 * v23 + 32);
    }

    v29 = v28;
    MEMORY[0x1BFB4E650]();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BEE471BC();
    }

    sub_1BEE471DC();
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      v31 = [v30 applicationBundleID];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1BEE4708C();
        v35 = v34;

        swift_beginAccess();
        v36 = *&v4[v24];
        if (*(v36 + 16) && (v37 = sub_1BEB1DAFC(v33, v35), (v38 & 1) != 0))
        {
          v26 = *(*(v36 + 56) + 8 * v37);
        }

        else
        {
          v26 = MEMORY[0x1E69E7CC0];
        }

        swift_endAccess();

        if (v26 >> 62)
        {
          sub_1BEB20D28(0, &qword_1EBDBFFE0);

          v27 = sub_1BEE4765C();
        }

        else
        {

          sub_1BEE4771C();
          sub_1BEB20D28(0, &qword_1EBDBFFE0);
          v27 = v26;
        }

        sub_1BEE35000(v27);
        v5 = v52;
      }
    }

    ++v23;
  }

  while (v6 != v23);
  v2 = v53;
LABEL_45:
  v39 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8298);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BEE8AD80;
  sub_1BEE4754C();
  v3 = v54[0];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7480);
  *(inited + 96) = v41;
  *(inited + 72) = v3;

  sub_1BEE4754C();
  *(inited + 168) = v41;
  *(inited + 144) = v2;

  sub_1BEB449C8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC82A0);
  swift_arrayDestroy();
  v42 = sub_1BEE4700C();

  [v39 postNotificationName:@"SBIconModelVisibilityDidChangeNotification" object:v4 userInfo:v42];

  result = [v4 rootFolder];
  if (!result)
  {
  }

  v6 = result;
  if (v3 >> 62)
  {
LABEL_59:
    result = sub_1BEE474CC();
    v44 = result;
    if (!result)
    {
      goto LABEL_60;
    }

    goto LABEL_48;
  }

  v44 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v44)
  {
    goto LABEL_60;
  }

LABEL_48:
  if (v44 < 1)
  {
    __break(1u);
    goto LABEL_72;
  }

  for (i = 0; i != v44; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x1BFB4EA90](i, v3);
    }

    else
    {
      v46 = *(v3 + 8 * i + 32);
    }

    v47 = v46;
    if (([v6 containsIcon_] & 1) == 0)
    {
      [v4 addIconToDesignatedLocation:v47 options:0 listGridCellInfoOptions:0];
    }
  }

LABEL_60:

  if (!(v2 >> 62))
  {
    v48 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_62;
    }

LABEL_69:
  }

  result = sub_1BEE474CC();
  v48 = result;
  if (!result)
  {
    goto LABEL_69;
  }

LABEL_62:
  if (v48 >= 1)
  {
    for (j = 0; j != v48; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x1BFB4EA90](j, v2);
      }

      else
      {
        v50 = *(v2 + 8 * j + 32);
      }

      v51 = v50;
      [v6 removeIcon:v50 options:0];
    }

    goto LABEL_69;
  }

LABEL_72:
  __break(1u);
  return result;
}

void sub_1BEE23F18(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (!a1)
  {
LABEL_22:
    if (v4)
    {

      v19 = [v3 removedIcons];
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
      sub_1BEE4726C();

      sub_1BEB2A840(v4, &qword_1EBDBFEA0, off_1E8087510, &qword_1EBDBFDC0, sub_1BEDF66A8);
      v20 = sub_1BEE4724C();

      [v3 setRemovedIcons_];

      sub_1BEE1ABE4();
    }

    return;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {

    sub_1BEE4748C();
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    sub_1BEE472AC();
    v5 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  while (v5 < 0)
  {
    if (!sub_1BEE474FC() || (sub_1BEB20D28(0, &qword_1EBDBFEA0), swift_dynamicCast(), v18 = v22, v16 = v8, v17 = v9, !v22))
    {
LABEL_21:
      sub_1BEB2AAE8();
      v4 = a2;
      goto LABEL_22;
    }

LABEL_19:
    if (([v3 isTrackingIcon_] & 1) == 0)
    {
      [v3 addIcon_];
    }

    v8 = v16;
    v9 = v17;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_21;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

unint64_t sub_1BEE242A0()
{
  result = qword_1EBDBFF00;
  if (!qword_1EBDBFF00)
  {
    type metadata accessor for SBHIconGridSizeClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDBFF00);
  }

  return result;
}

uint64_t sub_1BEE243BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1BEE243C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = sub_1BEE4705C();
  (*(v7 + 16))(v7, a1, v8, a4);
}

void sub_1BEE245D0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___SBHSheenEffectView_lightAngle] = 0;
  *&v4[OBJC_IVAR___SBHSheenEffectView_lightActivityLevel] = 0;
  *&v4[OBJC_IVAR___SBHSheenEffectView_contentVisibility] = 2;
  v9 = &v4[OBJC_IVAR___SBHSheenEffectView_lastActiveLightAngle];
  *v9 = 0;
  v9[8] = 1;
  *&v4[OBJC_IVAR___SBHSheenEffectView_gradientVisibilityAnimationCount] = 0;
  *&v4[OBJC_IVAR___SBHSheenEffectView____lazy_storage___sheenIconEffectViews] = 0;
  v10 = [objc_opt_self() rootSettings];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 iconSettings];

    if (v12)
    {
      *&v4[OBJC_IVAR___SBHSheenEffectView_iconSettings] = v12;
      v20.receiver = v4;
      v20.super_class = SBHSheenEffectView;
      v13 = v12;
      v14 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
      [v13 addKeyObserver_];
      [v14 bounds];
      v19 = [objc_allocWithZone(SBHGradientView) initWithFrame_];
      [v19 setAutoresizingMask_];
      [v19 bs:1 setHitTestingDisabled:?];
      [v14 addSubview_];
      sub_1BEE247D8();
      sub_1BEE24AE4(0);
      sub_1BEE24F24();
      [v14 bs:1 setHitTestingDisabled:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BEE247D8()
{
  v1 = [v0 iconSettings];
  v2 = [v1 sheenEffectDebugUIEnabled];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1BEE8B7F0;
    v4 = objc_opt_self();
    *(v3 + 32) = [v4 systemBlueColor];
    *(v3 + 40) = [v4 magentaColor];
  }

  else
  {
    v5 = [v0 iconSettings];
    [v5 sheenEffectStrength];
    v7 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BEE8B7F0;
    v9 = objc_opt_self();
    v10 = [v9 whiteColor];
    v11 = [v10 colorWithAlphaComponent_];

    *(v8 + 32) = v11;
    v12 = [v9 whiteColor];
    v13 = [v12 colorWithAlphaComponent_];

    *(v8 + 40) = v13;
  }

  v14 = [v0 subviews];
  sub_1BEB20D28(0, &qword_1EBDC8398);
  v15 = sub_1BEE471AC();
  v16 = v15;
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  if (!sub_1BEE474CC())
  {
    goto LABEL_13;
  }

LABEL_6:

  if ((v16 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v17 = MEMORY[0x1BFB4EA90](0, v16);
    goto LABEL_9;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v17 = *(v16 + 32);
LABEL_9:
  v18 = v17;

  objc_opt_self();
  v19 = swift_dynamicCastObjCClassUnconditional();
  sub_1BEB20D28(0, &unk_1EBDC83B0);
  v20 = sub_1BEE4719C();

  [v19 setColors_];
}

void sub_1BEE24AE4(char a1)
{
  v3 = [v1 lightActivityLevel];
  if (v3)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [v1 subviews];
  sub_1BEB20D28(0, &qword_1EBDC8398);
  v6 = sub_1BEE471AC();
  v7 = v6;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  if (!sub_1BEE474CC())
  {
    goto LABEL_24;
  }

LABEL_6:

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v8 = MEMORY[0x1BFB4EA90](0, v7);
    goto LABEL_9;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = *(v7 + 32);
LABEL_9:
  v9 = v8;

  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() alpha];
  v11 = v10;

  if (v11 != v4)
  {
    if (![v1 lightActivityLevel] || (v1[OBJC_IVAR___SBHSheenEffectView_lastActiveLightAngle + 8] & 1) == 0 && (v12 = *&v1[OBJC_IVAR___SBHSheenEffectView_lastActiveLightAngle], objc_msgSend(v1, sel_lightAngle), v14 = fabs(fmod(v13 - v12, 6.28318531)), v15 = objc_msgSend(v1, sel_iconSettings), objc_msgSend(v15, sel_sheenEffectMinimumMovementToBecomeVisible), v15, BSDegreesToRadians(), v16 <= v14))
    {
      if (a1)
      {
        v17 = [v1 iconSettings];
        v18 = v17;
        if (v3)
        {
          v19 = [v17 sheenEffectFadeInSettings];

          if (!v19)
          {
            __break(1u);
            goto LABEL_17;
          }
        }

        else
        {
          v19 = [v17 sheenEffectFadeOutSettings];

          if (!v19)
          {
LABEL_28:
            __break(1u);
            return;
          }
        }

        v20 = [v19 BSAnimationSettings];

LABEL_20:
        v21 = *&v1[OBJC_IVAR___SBHSheenEffectView_gradientVisibilityAnimationCount];
        v22 = __CFADD__(v21, 1);
        v23 = v21 + 1;
        if (!v22)
        {
          *&v1[OBJC_IVAR___SBHSheenEffectView_gradientVisibilityAnimationCount] = v23;
          sub_1BEE26094();
          v24 = objc_opt_self();
          v25 = swift_allocObject();
          *(v25 + 16) = v1;
          *(v25 + 24) = v4;
          v26 = swift_allocObject();
          *(v26 + 16) = sub_1BEE26FBC;
          *(v26 + 24) = v25;
          v35 = sub_1BEE26FC8;
          v36 = v26;
          v31 = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = sub_1BEE245A8;
          v34 = &block_descriptor_8;
          v27 = _Block_copy(&v31);
          v28 = v1;

          v29 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v35 = sub_1BEE26FF0;
          v36 = v29;
          v31 = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = sub_1BEDCD0E4;
          v34 = &block_descriptor_10;
          v30 = _Block_copy(&v31);

          [v24 animateWithSettings:v20 options:4 actions:v27 completion:v30];
          _Block_release(v30);
          _Block_release(v27);

          return;
        }

        goto LABEL_27;
      }

LABEL_17:
      v20 = 0;
      goto LABEL_20;
    }
  }
}

void sub_1BEE24F24()
{
  v1 = [v0 subviews];
  sub_1BEB20D28(0, &qword_1EBDC8398);
  v2 = sub_1BEE471AC();
  v3 = v2;
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    __break(1u);
    goto LABEL_11;
  }

  if (!sub_1BEE474CC())
  {
    goto LABEL_10;
  }

LABEL_3:

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v4 = MEMORY[0x1BFB4EA90](0, v3);
    goto LABEL_6;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v4 = *(v3 + 32);
LABEL_6:
  v11 = v4;

  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  [v0 lightAngle];
  v7 = __sincos_stret(v6);
  v8 = v7.__cosval * 0.5 + 0.5;
  v9 = v7.__sinval * 0.5 + 0.5;
  v10 = 1.0 - v8;
  [v5 setStartPoint_];
  [v5 setEndPoint_];
}

uint64_t sub_1BEE25248(uint64_t a1)
{
  v3 = v1;

  return a1;
}

void sub_1BEE25348()
{
  [v0 setHidden_];
  v1 = [v0 subviews];
  sub_1BEB20D28(0, &qword_1EBDC8398);
  v2 = sub_1BEE471AC();
  v3 = v2;
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    __break(1u);
    goto LABEL_9;
  }

  if (!sub_1BEE474CC())
  {
    goto LABEL_8;
  }

LABEL_3:

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v4 = MEMORY[0x1BFB4EA90](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_6:
    v5 = v4;

    objc_opt_self();
    v6 = swift_dynamicCastObjCClassUnconditional();
    v7 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v8 = objc_allocWithZone(SBHFixedSourceIconEffect);

    v9 = sub_1BEE4705C();
    v11[4] = sub_1BEE273E8;
    v11[5] = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1BEE26C8C;
    v11[3] = &block_descriptor_30;
    v10 = _Block_copy(v11);

    [v8 initWithName:v9 sourceView:v6 configuration:v10];
    _Block_release(v10);

    return;
  }

  __break(1u);
}

void sub_1BEE25578(uint64_t a1, void *a2)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [a2 layer];
  [v3 setCompositingFilter_];

  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong subviews];
  sub_1BEB20D28(0, &qword_1EBDC8398);
  v6 = sub_1BEE471AC();
  v7 = v6;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_15:

    __break(1u);
    goto LABEL_16;
  }

  if (!sub_1BEE474CC())
  {
    goto LABEL_15;
  }

LABEL_5:

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v8 = MEMORY[0x1BFB4EA90](0, v7);
    goto LABEL_8;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v8 = *(v7 + 32);
LABEL_8:
  v9 = v8;

  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() alpha];

  if (BSFloatIsZero())
  {
    v10 = *&Strong[OBJC_IVAR___SBHSheenEffectView_gradientVisibilityAnimationCount];

    v11 = v10 == 0;
  }

  else
  {

    v11 = 0;
  }

  [a2 setHidden_];
  v12 = swift_unknownObjectUnownedLoadStrong();
  v13 = sub_1BEE257D0();

  [v13 addObject_];
}

id sub_1BEE257D0()
{
  v1 = OBJC_IVAR___SBHSheenEffectView____lazy_storage___sheenIconEffectViews;
  v2 = *(v0 + OBJC_IVAR___SBHSheenEffectView____lazy_storage___sheenIconEffectViews);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SBHSheenEffectView____lazy_storage___sheenIconEffectViews);
  }

  else
  {
    v4 = [objc_opt_self() weakObjectsHashTable];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BEE25A68(double a1)
{
  v2 = OBJC_IVAR___SBHSheenEffectView_lightAngle;
  v3 = *&v1[OBJC_IVAR___SBHSheenEffectView_lightAngle];
  *&v1[OBJC_IVAR___SBHSheenEffectView_lightAngle] = a1;
  if (v3 != a1)
  {
    sub_1BEE24F24();
    v4 = &v1[OBJC_IVAR___SBHSheenEffectView_lastActiveLightAngle];
    if ((v1[OBJC_IVAR___SBHSheenEffectView_lastActiveLightAngle + 8] & 1) != 0 && [v1 lightActivityLevel])
    {
      *v4 = *&v1[v2];
      v4[8] = 0;
    }

    sub_1BEE24AE4(1);
  }
}

void sub_1BEE25BDC(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR___SBHSheenEffectView_lightActivityLevel];
  *&v1[OBJC_IVAR___SBHSheenEffectView_lightActivityLevel] = a1;
  if (v2 != a1)
  {
    if (!a1)
    {
      [v1 lightAngle];
      v3 = &v1[OBJC_IVAR___SBHSheenEffectView_lastActiveLightAngle];
      *v3 = v4;
      v3[8] = 0;
    }

    sub_1BEE24AE4(1);
  }
}

uint64_t sub_1BEE25C5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

void sub_1BEE25E08()
{
  v1 = [v0 window];
  if (v1 && (v1, [v0 contentVisibility] != 2))
  {
    v2 = [objc_opt_self() sharedManager];
    [v2 addObserver:v0 inView:v0];
  }

  else
  {
    v2 = [objc_opt_self() sharedManager];
    [v2 removeObserver_];
  }
}

Swift::Void __swiftcall SBHSheenEffectView.didMoveToWindow()()
{
  v0.super_class = SBHSheenEffectView;
  objc_msgSendSuper2(&v0, sel_didMoveToWindow);
  sub_1BEE25E08();
}

void sub_1BEE26094()
{
  v1 = [v0 subviews];
  sub_1BEB20D28(0, &qword_1EBDC8398);
  v2 = sub_1BEE471AC();
  v3 = v2;
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_17:

    __break(1u);
    goto LABEL_18;
  }

  if (!sub_1BEE474CC())
  {
    goto LABEL_17;
  }

LABEL_3:

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v4 = MEMORY[0x1BFB4EA90](0, v3);
    goto LABEL_6;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = *(v3 + 32);
LABEL_6:
  v5 = v4;

  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() alpha];

  v6 = 0;
  if (BSFloatIsZero())
  {
    v6 = *&v0[OBJC_IVAR___SBHSheenEffectView_gradientVisibilityAnimationCount] == 0;
  }

  v7 = sub_1BEE257D0();
  v8 = [v7 allObjects];

  v9 = sub_1BEE471AC();
  if (v9 >> 62)
  {
    v10 = sub_1BEE474CC();
    if (v10)
    {
LABEL_10:
      if (v10 >= 1)
      {
        for (i = 0; i != v10; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1BFB4EA90](i, v9);
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
          }

          v13 = v12;
          [v12 setHidden_];
        }

        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_10;
    }
  }

LABEL_20:
}

void sub_1BEE262BC(void *a1, double a2)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 subviews];
  sub_1BEB20D28(0, &qword_1EBDC8398);
  v5 = sub_1BEE471AC();
  v6 = v5;
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_12:

    __break(1u);
    goto LABEL_13;
  }

  if (!sub_1BEE474CC())
  {
    goto LABEL_12;
  }

LABEL_5:

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v7 = MEMORY[0x1BFB4EA90](0, v6);
    goto LABEL_8;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v7 = *(v6 + 32);
LABEL_8:
  v8 = v7;

  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setAlpha_];
}

uint64_t sub_1BEE26458(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC83A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1BEE4722C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1BEE4720C();

  v7 = sub_1BEE471FC();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_1BEE267CC(0, 0, v5, &unk_1BEE8B810, v8);
}

uint64_t sub_1BEE2657C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1BEE4720C();
  *(v4 + 48) = sub_1BEE471FC();
  v6 = sub_1BEE471EC();

  return MEMORY[0x1EEE6DFA0](sub_1BEE26614, v6, v5);
}

void sub_1BEE26614()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR___SBHSheenEffectView_gradientVisibilityAnimationCount;
    v4 = *&Strong[OBJC_IVAR___SBHSheenEffectView_gradientVisibilityAnimationCount];
    if (v4)
    {
      *&Strong[OBJC_IVAR___SBHSheenEffectView_gradientVisibilityAnimationCount] = v4 - 1;
    }

    v5 = [Strong subviews];
    sub_1BEB20D28(0, &qword_1EBDC8398);
    v6 = sub_1BEE471AC();
    v7 = v6;
    if (v6 >> 62)
    {
      if (sub_1BEE474CC())
      {
LABEL_6:

        if ((v7 & 0xC000000000000001) == 0)
        {
          if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v8 = *(v7 + 32);
          goto LABEL_9;
        }

LABEL_18:
        v8 = MEMORY[0x1BFB4EA90](0, v7);
LABEL_9:
        v9 = v8;

        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() alpha];

        if (BSFloatIsZero() && !*&v2[v3])
        {
          sub_1BEE26094();
        }

        goto LABEL_13;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v10 = *(v0 + 8);

  v10();
}

uint64_t sub_1BEE267CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC83A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BEE271A0(a3, v25 - v10);
  v12 = sub_1BEE4722C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BEE27210(v11);
  }

  else
  {
    sub_1BEE4721C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BEE471EC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BEE470AC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1BEE27210(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BEE27210(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall SBHSheenEffectView.settings(_:changedValueForKey:)(PTSettings_optional *_, Swift::String_optional changedValueForKey)
{
  object = changedValueForKey.value._object;
  countAndFlagsBits = changedValueForKey.value._countAndFlagsBits;
  v6 = [v2 iconSettings];

  if (_)
  {
    v7 = v6 != _ || object == 0;
    if (!v7 && (countAndFlagsBits == 0xD000000000000013 && 0x80000001BEEA5DF0 == object || (sub_1BEE4770C() & 1) != 0 || countAndFlagsBits == 0xD000000000000019 && 0x80000001BEEA5DD0 == object || (sub_1BEE4770C() & 1) != 0))
    {

      sub_1BEE247D8();
    }
  }
}

uint64_t sub_1BEE26C8C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BEE26D04(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BEE26DFC;

  return v6(a1);
}

uint64_t sub_1BEE26DFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void _sSo18SBHSheenEffectViewC15SpringBoardHomeE5coderABSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___SBHSheenEffectView_lightAngle) = 0;
  *(v0 + OBJC_IVAR___SBHSheenEffectView_lightActivityLevel) = 0;
  *(v0 + OBJC_IVAR___SBHSheenEffectView_contentVisibility) = 2;
  v1 = v0 + OBJC_IVAR___SBHSheenEffectView_lastActiveLightAngle;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR___SBHSheenEffectView_gradientVisibilityAnimationCount) = 0;
  *(v0 + OBJC_IVAR___SBHSheenEffectView____lazy_storage___sheenIconEffectViews) = 0;
  sub_1BEE4764C();
  __break(1u);
}

uint64_t sub_1BEE26FF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BEE270AC;

  return sub_1BEE2657C(a1, v4, v5, v6);
}

uint64_t sub_1BEE270AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BEE271A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC83A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BEE27210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC83A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BEE27278(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BEE273F8;

  return sub_1BEE26D04(a1, v4);
}

uint64_t sub_1BEE27330(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BEE270AC;

  return sub_1BEE26D04(a1, v4);
}

void __swiftcall SBHPageManagementIcon.init(leafIdentifier:applicationBundleID:)(SBHPageManagementIcon *__return_ptr retstr, Swift::String leafIdentifier, Swift::String_optional applicationBundleID)
{
  object = applicationBundleID.value._object;
  v4 = sub_1BEE4705C();

  if (object)
  {
    v5 = sub_1BEE4705C();
  }

  else
  {
    v5 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLeafIdentifier:v4 applicationBundleID:v5];
}

unint64_t type metadata accessor for SBHPageManagementIcon()
{
  result = qword_1EBDC83C8;
  if (!qword_1EBDC83C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDC83C8);
  }

  return result;
}

id sub_1BEE276FC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v3 = v1(v2);

  swift_unknownObjectRelease();

  return v3;
}

id sub_1BEE27768(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);

  return v2;
}

id sub_1BEE27864(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v11 = a3;
  sub_1BEE27F94(a4);
  v12 = sub_1BEE4705C();

  v16[4] = sub_1BEE27F88;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1BEE276FC;
  v16[3] = &block_descriptor_15_0;
  v13 = _Block_copy(v16);

  v14 = [v6 initWithName:v12 viewBuilder:v13];

  sub_1BEB326F8(a4);

  _Block_release(v13);
  return v14;
}

id sub_1BEE279C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, id))
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD648]) initWithSourceView_];
  [v5 setHidesSourceView_];
  [v5 setMatchesPosition_];
  [v5 setMatchesTransform_];
  [v5 setMatchesAlpha_];
  v6 = v5;
  [v6 setClipsToBounds_];
  if (a3)
  {

    a3(a1, v6);

    sub_1BEB326F8(a3);
  }

  else
  {
  }

  return v6;
}

id SBHFixedSourceIconEffect.init(name:viewBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1BEE4705C();

  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BEE276FC;
  v11[3] = &block_descriptor_9;
  v8 = _Block_copy(v11);
  v9 = [v6 initWithName:v7 viewBuilder:v8];

  _Block_release(v8);

  return v9;
}

{
  v7 = sub_1BEE4705C();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE276FC;
  aBlock[3] = &block_descriptor_3;
  v8 = _Block_copy(aBlock);

  v11.receiver = v4;
  v11.super_class = SBHFixedSourceIconEffect;
  v9 = objc_msgSendSuper2(&v11, sel_initWithName_viewBuilder_, v7, v8);

  _Block_release(v8);

  return v9;
}

unint64_t type metadata accessor for SBHFixedSourceIconEffect()
{
  result = qword_1EBDC83D8;
  if (!qword_1EBDC83D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDC83D8);
  }

  return result;
}

id sub_1BEE27F34()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_1BEE27F94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BEE27FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1BEB45B64(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1BEB1DAFC(a2, a3);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v6;
      v18 = *v6;
      if (!v15)
      {
        sub_1BEE326C4(a4);
        v16 = v18;
      }

      result = sub_1BEE316F0(v12, v16);
      *v6 = v16;
    }
  }

  return result;
}

unint64_t sub_1BEE28110(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    result = sub_1BEE30138(a3);
    if (v7)
    {
      v8 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BEE32820();
        v10 = v13;
      }

      result = sub_1BEE318A0(v8, v10);
      *v4 = v10;
    }
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_1BEE31F44(a1, a3, v12);
    *v3 = v14;
  }

  return result;
}

uint64_t sub_1BEE28250(id a1)
{
  result = sub_1BEE467EC();
  if (result == a1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = &v1[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex];
  if (v1[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8])
  {
LABEL_3:

    return sub_1BEE467EC();
  }

  v5 = *v4;
  if (*v4 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = 0;
  while ([v1 iconIndexForGridCellIndex_] != a1)
  {
    if (v5 == v6)
    {
      goto LABEL_3;
    }

    if (__OFADD__(v6++, 1))
    {
      __break(1u);
      return v6;
    }
  }

  return v6;
}

uint64_t sub_1BEE2834C(uint64_t a1)
{
  v3 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_1BEE30138(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = sub_1BEE467EC();
  }

  swift_endAccess();
  return v7;
}

uint64_t sub_1BEE2840C(uint64_t a1)
{
  v3 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {
    sub_1BEE30138(a1);
    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  swift_endAccess();
  return v5 & 1;
}

unint64_t sub_1BEE28484(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  swift_beginAccess();
  sub_1BEE28110(a1, a2 & 1, a3);
  swift_endAccess();
  result = [v3 gridSize];
  if (!result)
  {
    goto LABEL_39;
  }

  v10 = a3 % result;
  v11 = &v3[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex];
  if (a2)
  {
    if ((v11[8] & 1) == 0)
    {
      v12 = *v11;
      if (*v11 <= a3)
      {
        if (v12 < 0)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v12)
        {
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_44:
            __break(1u);
            return result;
          }

          v14 = 0;
          while (1)
          {
            v15 = v13 - v14;
            if (__OFSUB__(v13, v14))
            {
              break;
            }

            swift_beginAccess();
            if (*(*&v3[v8] + 16))
            {
              sub_1BEE30138(v13 - v14);
              if (v16)
              {
                result = swift_endAccess();
                v17 = 0;
                goto LABEL_21;
              }
            }

            ++v14;
            result = swift_endAccess();
            if (v12 == v14)
            {
              goto LABEL_20;
            }
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_20:
        v15 = 0;
        v17 = 1;
LABEL_21:
        *v11 = v15;
        v11[8] = v17;
      }
    }

    v19 = &v3[OBJC_IVAR___SBIconListGridCellInfo_maxUsedColumnIndex];
    if ((v3[OBJC_IVAR___SBIconListGridCellInfo_maxUsedColumnIndex + 8] & 1) == 0)
    {
      v20 = *v19;
      if (v10 >= *v19)
      {
        result = [v3 numberOfUsedRows];
        if (v20 < 0)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if ((result & 0x8000000000000000) != 0)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (result >> 16)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v21 = 0;
        v22 = (result << 16) | 1;
        while (1)
        {
          v23 = v20 - v21;
          if (__OFSUB__(v20, v21))
          {
            break;
          }

          result = [v4 hasUsedGridCellsInGridRange_];
          if (result)
          {
            goto LABEL_34;
          }

          if (v20 == v21)
          {
            *v19 = 0;
            v19[8] = 1;
            return result;
          }

          if (__OFADD__(v21++, 1))
          {
            __break(1u);
LABEL_34:
            *v19 = v23;
            v19[8] = 0;
            return result;
          }
        }

        __break(1u);
        goto LABEL_38;
      }
    }
  }

  else
  {
    if ((v11[8] & 1) != 0 || *v11 < a3)
    {
      *v11 = a3;
      v11[8] = 0;
    }

    v18 = &v3[OBJC_IVAR___SBIconListGridCellInfo_maxUsedColumnIndex];
    if ((v3[OBJC_IVAR___SBIconListGridCellInfo_maxUsedColumnIndex + 8] & 1) != 0 || *v18 < v10)
    {
      *v18 = v10;
      v18[8] = 0;
    }
  }

  return result;
}

id sub_1BEE28740(uint64_t a1, id a2, unsigned int a3)
{
  v4 = v3;
  result = sub_1BEE467EC();
  if (result != a2)
  {
    if (HIWORD(a3) == 1 && a3 == 1)
    {

      return [v4 setIconIndex:a1 forGridCellIndex:a2];
    }

    else
    {
      v9 = [v4 gridSize];
      v10 = v9;
      v11 = HIWORD(v9);
      v24 = &_s12CellSequenceVN;
      v25 = sub_1BEB38740();
      v20 = a2;
      v21 = a3;
      v22 = v10;
      v23 = v11;
      v12 = __swift_project_boxed_opaque_existential_0(&v20, &_s12CellSequenceVN);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
      v14 = *v12;
      v15 = *(v12 + 4);
      v16 = *(v12 + 5);
      v17 = *(v12 + 8);
      LOWORD(v12) = *(v12 + 9);
      v18 = SBHIconGridRangeMaxCellIndexOnRow(v14, v15, v17, 0);
      *boxed_opaque_existential_1 = v14;
      *(boxed_opaque_existential_1 + 4) = v15;
      *(boxed_opaque_existential_1 + 5) = v16;
      *(boxed_opaque_existential_1 + 8) = v17;
      *(boxed_opaque_existential_1 + 9) = v12;
      boxed_opaque_existential_1[3] = v14;
      boxed_opaque_existential_1[4] = 0;
      boxed_opaque_existential_1[5] = v18;
      __swift_destroy_boxed_opaque_existential_0(&v20);
      __swift_mutable_project_boxed_opaque_existential_1(v26, AssociatedTypeWitness);
      sub_1BEE4740C();
      if ((v21 & 1) == 0)
      {
        v19 = v20;
        do
        {
          [v4 setIconIndex:a1 forGridCellIndex:v19];
          __swift_mutable_project_boxed_opaque_existential_1(v26, AssociatedTypeWitness);
          sub_1BEE4740C();
          v19 = v20;
        }

        while (v21 != 1);
      }

      return __swift_destroy_boxed_opaque_existential_0(v26);
    }
  }

  return result;
}

char *sub_1BEE28B80(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v4 = a2;
  v6 = HIWORD(a2);
  v7 = [v3 gridSize];
  v8 = v7;
  v9 = HIWORD(v7);
  v33 = &_s12CellSequenceVN;
  v34 = sub_1BEB38740();
  v28 = a1;
  v29 = v4;
  v30 = v6;
  v31 = v8;
  v32 = v9;
  v10 = __swift_project_boxed_opaque_existential_0(&v28, &_s12CellSequenceVN);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  v12 = *v10;
  v13 = *(v10 + 4);
  v14 = *(v10 + 5);
  LOWORD(v6) = *(v10 + 8);
  LOWORD(v10) = *(v10 + 9);
  v15 = SBHIconGridRangeMaxCellIndexOnRow(v12, v13, v6, 0);
  *boxed_opaque_existential_1 = v12;
  *(boxed_opaque_existential_1 + 4) = v13;
  *(boxed_opaque_existential_1 + 5) = v14;
  *(boxed_opaque_existential_1 + 8) = v6;
  *(boxed_opaque_existential_1 + 9) = v10;
  boxed_opaque_existential_1[3] = v12;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = v15;
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v16 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  __swift_mutable_project_boxed_opaque_existential_1(v35, AssociatedTypeWitness);
  sub_1BEE4740C();
  if (v29)
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v19 = v28;
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      swift_beginAccess();
      v20 = *&v3[v16];
      if (*(v20 + 16) && (v21 = sub_1BEE30138(v19), (v22 & 1) != 0))
      {
        v23 = 0;
        v24 = *(*(v20 + 56) + 8 * v21);
      }

      else
      {
        v24 = 0;
        v23 = 1;
      }

      swift_endAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1BEE306F8(0, *(v17 + 2) + 1, 1, v17);
      }

      v26 = *(v17 + 2);
      v25 = *(v17 + 3);
      if (v26 >= v25 >> 1)
      {
        v17 = sub_1BEE306F8((v25 > 1), v26 + 1, 1, v17);
      }

      *(v17 + 2) = v26 + 1;
      v27 = &v17[16 * v26];
      *(v27 + 4) = v24;
      v27[40] = v23;
      __swift_mutable_project_boxed_opaque_existential_1(v35, AssociatedTypeWitness);
      sub_1BEE4740C();
      v19 = v28;
    }

    while ((v29 & 1) == 0);
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v17;
}

uint64_t sub_1BEE28E00(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v5 = a3;
  v8 = HIWORD(a3);
  v9 = [v4 gridSize];
  v10 = v9;
  v11 = HIWORD(v9);
  v28 = &_s12CellSequenceVN;
  v29 = sub_1BEB38740();
  v23 = a2;
  v24 = v5;
  v25 = v8;
  v26 = v10;
  v27 = v11;
  v12 = __swift_project_boxed_opaque_existential_0(&v23, &_s12CellSequenceVN);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  v14 = *v12;
  v15 = *(v12 + 4);
  v16 = *(v12 + 5);
  LOWORD(v8) = *(v12 + 8);
  LOWORD(v12) = *(v12 + 9);
  v17 = SBHIconGridRangeMaxCellIndexOnRow(v14, v15, v8, 0);
  *boxed_opaque_existential_1 = v14;
  *(boxed_opaque_existential_1 + 4) = v15;
  *(boxed_opaque_existential_1 + 5) = v16;
  *(boxed_opaque_existential_1 + 8) = v8;
  *(boxed_opaque_existential_1 + 9) = v12;
  boxed_opaque_existential_1[3] = v14;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = v17;
  __swift_destroy_boxed_opaque_existential_0(&v23);
  __swift_mutable_project_boxed_opaque_existential_1(v30, AssociatedTypeWitness);
  result = sub_1BEE4740C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_0(v30);
  }

  v19 = v23;
  v20 = (a1 + 40);
  v21 = -1;
  while (++v21 < *(a1 + 16))
  {
    v22 = v20 + 16;
    sub_1BEE28484(*(v20 - 1), *v20, v19);
    __swift_mutable_project_boxed_opaque_existential_1(v30, AssociatedTypeWitness);
    result = sub_1BEE4740C();
    v19 = v23;
    v20 = v22;
    if (v24 == 1)
    {
      return __swift_destroy_boxed_opaque_existential_0(v30);
    }
  }

  __break(1u);
  return result;
}

id sub_1BEE29160()
{
  if (v0[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8])
  {
    return 0;
  }

  v2 = *&v0[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex];
  result = [v0 gridSize];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2 / result;
  result = (v3 + 1);
  if (__OFADD__(v3, 1))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BEE292BC()
{
  v1 = [v0 gridSize];
  if ((v0[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8] & 1) == 0)
  {
    v3 = v1;
    v4 = *&v0[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex];
    result = [v0 gridSize];
    if (result)
    {
      v5 = v4 / result;
      if ((v5 & 0x8000000000000000) == 0)
      {
        v6 = 0;
        while (1)
        {
          result = [v0 numberOfUsedGridCellsInRow_];
          if (result > 0)
          {
            break;
          }

          if (v5 == v6)
          {
            goto LABEL_2;
          }

          v7 = __OFADD__(v6++, 1);
          if (v7)
          {
            __break(1u);
            break;
          }
        }

        if ((v6 * v3) >> 64 == (v6 * v3) >> 63)
        {
          result = [v0 numberOfUsedColumns];
          if ((result & 0x8000000000000000) == 0)
          {
            if (!(result >> 16))
            {
              result = [v0 lastUsedRow];
              v8 = result - v6;
              if (!__OFSUB__(result, v6))
              {
                v7 = __OFADD__(v8, 1);
                v9 = v8 + 1;
                if (!v7)
                {
                  if ((v9 & 0x8000000000000000) == 0)
                  {
                    if (!(v9 >> 16))
                    {
                      return v6 * v3;
                    }

                    goto LABEL_29;
                  }

LABEL_28:
                  __break(1u);
LABEL_29:
                  __break(1u);
                  return result;
                }

LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_2:
  if (qword_1EBDBFDC8 != -1)
  {
    swift_once();
  }

  return qword_1EBDBFDD0;
}

BOOL sub_1BEE29468()
{
  v1 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 0;
  }

  v3 = OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes;
  swift_beginAccess();
  return *(*(v0 + v3) + 16) == 0;
}

uint64_t sub_1BEE294E8(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v4 = sub_1BEE28B80(a2, a3);
  v5 = *(v4 + 2);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = 0;
  v7 = v4 + 40;
  while ((*v7 & 1) != 0)
  {
    *a1 = sub_1BEE467EC();
LABEL_4:
    ++a1;
    v7 += 16;
    if (!--v5)
    {
      goto LABEL_10;
    }
  }

  *a1 = *(v7 - 1);
  if (!__OFADD__(v6++, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_9:
  v6 = 0;
LABEL_10:

  return v6;
}

char *sub_1BEE295D8(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v4 = a2;
  v6 = HIWORD(a2);
  v42 = MEMORY[0x1E69E7CD0];
  v7 = [v3 gridSize];
  v8 = v7;
  v9 = HIWORD(v7);
  v37 = &_s12CellSequenceVN;
  v38 = sub_1BEB38740();
  v32 = a1;
  v33 = v4;
  v34 = v6;
  v35 = v8;
  v36 = v9;
  v10 = __swift_project_boxed_opaque_existential_0(&v32, &_s12CellSequenceVN);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  v12 = *v10;
  v13 = *(v10 + 4);
  v14 = *(v10 + 5);
  LOWORD(v6) = *(v10 + 8);
  LOWORD(v10) = *(v10 + 9);
  v15 = SBHIconGridRangeMaxCellIndexOnRow(v12, v13, v6, 0);
  *boxed_opaque_existential_1 = v12;
  *(boxed_opaque_existential_1 + 4) = v13;
  *(boxed_opaque_existential_1 + 5) = v14;
  *(boxed_opaque_existential_1 + 8) = v6;
  *(boxed_opaque_existential_1 + 9) = v10;
  boxed_opaque_existential_1[3] = v12;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = v15;
  __swift_destroy_boxed_opaque_existential_0(&v32);
  v16 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  __swift_mutable_project_boxed_opaque_existential_1(v39, AssociatedTypeWitness);
  sub_1BEE4740C();
  if (v33)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v19 = v32;
  v17 = MEMORY[0x1E69E7CC0];
  do
  {
    v20 = v42;
    v21 = v42 + 56;
    while (1)
    {
      swift_beginAccess();
      v22 = *&v3[v16];
      if (*(v22 + 16))
      {
        v23 = sub_1BEE30138(v19);
        if (v24)
        {
          break;
        }
      }

      swift_endAccess();
LABEL_15:
      __swift_mutable_project_boxed_opaque_existential_1(v39, AssociatedTypeWitness);
      sub_1BEE4740C();
      v19 = v32;
      if (v33)
      {
        goto LABEL_3;
      }
    }

    v25 = *(*(v22 + 56) + 8 * v23);
    swift_endAccess();
    if (*(v20 + 16))
    {
      v26 = sub_1BEE4776C();
      v27 = -1 << *(v20 + 32);
      v28 = v26 & ~v27;
      if ((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (*(*(v20 + 48) + 8 * v28) != v25)
        {
          v28 = (v28 + 1) & v29;
          if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_15;
      }
    }

LABEL_17:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1BEE307F8(0, *(v17 + 2) + 1, 1, v17);
    }

    v31 = *(v17 + 2);
    v30 = *(v17 + 3);
    if (v31 >= v30 >> 1)
    {
      v17 = sub_1BEE307F8((v30 > 1), v31 + 1, 1, v17);
    }

    *(v17 + 2) = v31 + 1;
    *&v17[8 * v31 + 32] = v25;
    sub_1BEDF66CC(&v32, v25);
    __swift_mutable_project_boxed_opaque_existential_1(v39, AssociatedTypeWitness);
    sub_1BEE4740C();
    v19 = v32;
  }

  while (v33 != 1);
LABEL_3:

  __swift_destroy_boxed_opaque_existential_0(v39);
  return v17;
}

uint64_t sub_1BEE29A88(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v4 = a2;
  v6 = HIWORD(a2);
  sub_1BEE4694C();
  v7 = [v3 gridSize];
  v8 = v7;
  v9 = HIWORD(v7);
  v25 = &_s12CellSequenceVN;
  v26 = sub_1BEB38740();
  v20 = a1;
  v21 = v4;
  v22 = v6;
  v23 = v8;
  v24 = v9;
  v10 = __swift_project_boxed_opaque_existential_0(&v20, &_s12CellSequenceVN);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  v12 = *v10;
  v13 = *(v10 + 4);
  v14 = *(v10 + 5);
  LOWORD(v6) = *(v10 + 8);
  LOWORD(v10) = *(v10 + 9);
  v15 = SBHIconGridRangeMaxCellIndexOnRow(v12, v13, v6, 0);
  *boxed_opaque_existential_1 = v12;
  *(boxed_opaque_existential_1 + 4) = v13;
  *(boxed_opaque_existential_1 + 5) = v14;
  *(boxed_opaque_existential_1 + 8) = v6;
  *(boxed_opaque_existential_1 + 9) = v10;
  boxed_opaque_existential_1[3] = v12;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = v15;
  __swift_destroy_boxed_opaque_existential_0(&v20);
  v16 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  __swift_mutable_project_boxed_opaque_existential_1(v27, AssociatedTypeWitness);
  sub_1BEE4740C();
  if ((v21 & 1) == 0)
  {
    v18 = v20;
    do
    {
      swift_beginAccess();
      if (*(*&v3[v16] + 16) && (sub_1BEE30138(v18), (v19 & 1) != 0))
      {
        swift_endAccess();
        sub_1BEE4691C();
      }

      else
      {
        swift_endAccess();
      }

      __swift_mutable_project_boxed_opaque_existential_1(v27, AssociatedTypeWitness);
      sub_1BEE4740C();
      v18 = v20;
    }

    while (v21 != 1);
  }

  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t sub_1BEE29DB0(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v5 = a3;
  v8 = HIWORD(a3);
  v9 = [v4 gridSize];
  v10 = v9;
  v11 = HIWORD(v9);
  v26 = &_s12CellSequenceVN;
  v27 = sub_1BEB38740();
  v21 = a2;
  v22 = v5;
  v23 = v8;
  v24 = v10;
  v25 = v11;
  v12 = __swift_project_boxed_opaque_existential_0(&v21, &_s12CellSequenceVN);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  v14 = *v12;
  v15 = *(v12 + 4);
  v16 = *(v12 + 5);
  LOWORD(v8) = *(v12 + 8);
  LOWORD(v12) = *(v12 + 9);
  v17 = SBHIconGridRangeMaxCellIndexOnRow(v14, v15, v8, 0);
  *boxed_opaque_existential_1 = v14;
  *(boxed_opaque_existential_1 + 4) = v15;
  *(boxed_opaque_existential_1 + 5) = v16;
  *(boxed_opaque_existential_1 + 8) = v8;
  *(boxed_opaque_existential_1 + 9) = v12;
  boxed_opaque_existential_1[3] = v14;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = v17;
  __swift_destroy_boxed_opaque_existential_0(&v21);
  __swift_mutable_project_boxed_opaque_existential_1(v28, AssociatedTypeWitness);
  sub_1BEE4740C();
  if ((v22 & 1) == 0)
  {
    v18 = v21;
    do
    {
      v19 = *a1++;
      [v4 setIconIndex:v19 forGridCellIndex:v18];
      __swift_mutable_project_boxed_opaque_existential_1(v28, AssociatedTypeWitness);
      sub_1BEE4740C();
      v18 = v21;
    }

    while (v22 != 1);
  }

  return __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t sub_1BEE2A1C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v4 = a3;
  if (a3)
  {
    v5 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v6 = 0;
      v7 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
      for (i = 1; ; ++i)
      {
        v9 = [v3 gridCellIndexForCoordinate_];
        swift_beginAccess();
        if (*(*&v3[v7] + 16) && (sub_1BEE30138(v9), (v10 & 1) != 0))
        {
          swift_endAccess();
          if (__OFADD__(v6++, 1))
          {
            __break(1u);
            return 0;
          }
        }

        else
        {
          swift_endAccess();
        }

        if (!--v4)
        {
          return v6;
        }
      }
    }

    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1BEE2A35C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v4 = a3;
  if (a3)
  {
    v5 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v6 = 0;
      v7 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
      for (i = 1; ; ++i)
      {
        v9 = [v3 gridCellIndexForCoordinate_];
        swift_beginAccess();
        if (*(*&v3[v7] + 16) && (sub_1BEE30138(v9), (v10 & 1) != 0))
        {
          swift_endAccess();
          if (__OFADD__(v6++, 1))
          {
            __break(1u);
            return 0;
          }
        }

        else
        {
          swift_endAccess();
        }

        if (!--v4)
        {
          return v6;
        }
      }
    }

    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1BEE2A49C(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v4 = a2;
  v6 = HIWORD(a2);
  v7 = [v3 gridSize];
  v8 = v7;
  v9 = HIWORD(v7);
  v27 = &_s12CellSequenceVN;
  v28 = sub_1BEB38740();
  v22 = a1;
  v23 = v4;
  v24 = v6;
  v25 = v8;
  v26 = v9;
  v10 = __swift_project_boxed_opaque_existential_0(&v22, &_s12CellSequenceVN);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v12 = *v10;
  v13 = *(v10 + 4);
  v14 = *(v10 + 5);
  LOWORD(v6) = *(v10 + 8);
  LOWORD(v10) = *(v10 + 9);
  v15 = SBHIconGridRangeMaxCellIndexOnRow(v12, v13, v6, 0);
  *boxed_opaque_existential_1 = v12;
  *(boxed_opaque_existential_1 + 4) = v13;
  *(boxed_opaque_existential_1 + 5) = v14;
  *(boxed_opaque_existential_1 + 8) = v6;
  *(boxed_opaque_existential_1 + 9) = v10;
  boxed_opaque_existential_1[3] = v12;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = v15;
  __swift_destroy_boxed_opaque_existential_0(&v22);
  v16 = 0;
  v17 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v29, AssociatedTypeWitness);
    sub_1BEE4740C();
    if (v23)
    {
      break;
    }

    v18 = v22;
    while (1)
    {
      swift_beginAccess();
      if (*(*&v3[v17] + 16))
      {
        sub_1BEE30138(v18);
        if (v19)
        {
          break;
        }
      }

      swift_endAccess();
      __swift_mutable_project_boxed_opaque_existential_1(v29, AssociatedTypeWitness);
      sub_1BEE4740C();
      v18 = v22;
      if (v23 == 1)
      {
        goto LABEL_10;
      }
    }

    swift_endAccess();
    if (__OFADD__(v16++, 1))
    {
      __break(1u);
      break;
    }
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v16;
}