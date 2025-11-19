void sub_264D6004C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D4BC10];
  v8 = [v6 storesForSharedContainer_];
  v9 = sub_264D6EAD8();

  LOBYTE(v8) = sub_264D5D6CC(a1, a2, v9);

  if (v8)
  {
    v10 = objc_allocWithZone(MEMORY[0x277D26578]);
    v11 = v7;
    v12 = sub_264D6E958();
    v13 = [v10 initWithName:v12 sharedContainer:v11];

    [v13 setActive_];
  }
}

void sub_264D60190()
{
  v0 = objc_opt_self();
  v17 = *MEMORY[0x277D4BC10];
  v1 = [v0 storesForSharedContainer_];
  v2 = sub_264D6EAD8();

  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v2 + 56 + 8 * v8);
    ++v3;
    if (v6)
    {
      while (1)
      {
        v9 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v10 = (*(v2 + 48) + ((v8 << 10) | (16 * v9)));
        v12 = *v10;
        v11 = v10[1];

        if (sub_264D6EA28())
        {
          v13 = objc_allocWithZone(MEMORY[0x277D26578]);
          v14 = v17;
          v15 = sub_264D6E958();

          v16 = [v13 initWithName:v15 sharedContainer:v14];

          [v16 setActive_];
          v3 = v8;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v3 = v8;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v8 = v3;
      }
    }
  }
}

void sub_264D6037C()
{
  v35 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D4BC10];
  v2 = [v0 storesForSharedContainer_];
  v3 = sub_264D6EAD8();

  v5 = *(v3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v30 = v6;
    v31 = v0;
    v32 = v1;
    v29 = &v27;
    v0 = 0x7463697274736572;
    MEMORY[0x28223BE20](v4);
    v8 = &v27 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = 0;
    v1 = v3 + 56;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    v6 = (v10 + 63) >> 6;
    v33 = 0;
    v34 = 0x8000000264D72D60;
    v28 = 0x8000000264D72D80;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v16 = v13 | (v9 << 6);
      v17 = (*(v3 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *v17 == 0x7463697274736572 && v18 == 0xEC000000736E6F69;
      if (!v20 && (sub_264D6EF28() & 1) == 0)
      {
        v21 = v19 == 0xD00000000000001FLL && v34 == v18;
        if (!v21 && (sub_264D6EF28() & 1) == 0 && (v19 != 0xD000000000000020 || v28 != v18) && (sub_264D6EF28() & 1) == 0)
        {
          *&v8[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
LABEL_30:
            sub_264D63638(v8, v30, v33, v3);
            v0 = v31;
            v1 = v32;
            goto LABEL_31;
          }
        }
      }
    }

    v14 = v9;
    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        goto LABEL_30;
      }

      v15 = *(v1 + 8 * v9);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v12 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_33:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  sub_264D62298(v26, v6, v3, sub_264D60734);

  MEMORY[0x26674D8B0](v26, -1, -1);
LABEL_31:
  v24 = sub_264D6EAC8();

  [v0 deleteStoresWithStoreNames:v24 sharedContainer:v1];

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_264D60734(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == 0x7463697274736572 && v2 == 0xEC000000736E6F69)
  {
    v6 = 0;
  }

  else
  {
    v4 = *a1;
    if ((sub_264D6EF28() & 1) != 0 || (v1 == 0xD00000000000001FLL ? (v5 = 0x8000000264D72D60 == v2) : (v5 = 0), v5 || (sub_264D6EF28() & 1) != 0 || v1 == 0xD000000000000020 && 0x8000000264D72D80 == v2))
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_264D6EF28() ^ 1;
    }
  }

  return v6 & 1;
}

void sub_264D6082C()
{
  v0 = objc_opt_self();
  v1 = sub_264D6EAC8();
  [v0 deleteStoresWithStoreNames:v1 sharedContainer:*MEMORY[0x277D4BC10]];
}

uint64_t sub_264D608B4(uint64_t a1, char a2)
{
  v5 = sub_264D5D3E8();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  *(v6 + 32) = v2;
  *(v6 + 40) = &v12;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_264D64844;
  *(v7 + 24) = v6;
  v11[4] = sub_264D6671C;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_264D5EA38;
  v11[3] = &block_descriptor_33;
  v8 = _Block_copy(v11);

  [v5 batchUpdate_];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if (v12)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

void sub_264D60A60(id a1, char a2, unint64_t a3)
{
  if (a2)
  {
    [a1 clearAllSettings];
  }

  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_264D6EC88())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26674CF10](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_264D60BE0(v7, a1);

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_264D60BE0(void *a1, void *a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 media];
    v6 = [v4 payloadAllowTVProviderModification];
    [v6 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setLockTVProvider_];
LABEL_7:

    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 account];
    v9 = [v8 payloadAllowAccountModification];
    [v9 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setLockAccounts_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 application];
    v11 = [v10 payloadAllowAutomaticAppUpdates];
    [v11 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setDenyBackgroundAppRefresh_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    sub_264D64EEC(v12, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClassUnconditional();
    sub_264D6529C(v13, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    sub_264D657AC(v14, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClassUnconditional();
    sub_264D658F8(v15, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 passcode];
    v17 = [v16 payloadAllowPasscodeModification];
    [v17 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setLockPasscode_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 airDrop];
    v19 = [v18 payloadAllowAirDrop];
    [v19 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setDenyAirDrop_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 webContent];
    v7 = sub_264D64174(v20);
    [v5 setBlockedByFilter_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClassUnconditional();
    sub_264D65A44(v21, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 carPlay];
    v23 = [v22 payloadAllowVehicleUI];
    [v23 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setDenyCarPlay_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 notification];
    v25 = [v24 payloadAllowDriverDoNotDisturbModifications];
    [v25 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setLockDriverDoNotDisturb_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClassUnconditional();
    sub_264D65B90(v26, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClassUnconditional();
    sub_264D65FB8(v27, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClassUnconditional();
    sub_264D662C0(v28, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v29 = swift_dynamicCastObjCClassUnconditional();
    sub_264D664A0(v29, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v30 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 findMy];
    v31 = [v30 payloadAllowFindMyFriendsModification];
    [v31 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setLockFindMyFriends_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 privacy];
    v7 = [v32 payloadForceLimitAdTracking];
    [v5 setForceLimitAdTracking_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v33 = a1;
    v34 = sub_264D6E828();
    v35 = sub_264D6EB28();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v36 = 136315138;
      v38 = [v33 debugDescription];
      v39 = sub_264D6E988();
      v41 = v40;

      v42 = sub_264D3FD80(v39, v41, &v43);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_264D33000, v34, v35, "Unsupported Declaration Type: %s. Failed to update ManagedSettings store.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x26674D8B0](v37, -1, -1);
      MEMORY[0x26674D8B0](v36, -1, -1);
    }

    sub_264D64D0C();
    swift_allocError();
    swift_willThrow();
  }
}

id *LocalRestrictions.deinit()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeSwift17LocalRestrictions_logger;
  v2 = sub_264D6E848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LocalRestrictions.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeSwift17LocalRestrictions_logger;
  v2 = sub_264D6E848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_264D6187C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC5B0, &unk_264D6FD50);
  v36 = a2;
  result = sub_264D6EDD8();
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
        sub_264D37670(v25, v37);
      }

      else
      {
        sub_264D37A38(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_264D6EFC8();
      sub_264D6E9B8();
      result = sub_264D6F008();
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
      result = sub_264D37670(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_264D61B34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD28, &qword_264D72150);
  result = sub_264D6EDD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
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
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_264D6EFB8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_264D61D98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC640, &qword_264D72310);
  v38 = a2;
  result = sub_264D6EDD8();
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
      sub_264D6EFC8();
      sub_264D6E9B8();
      result = sub_264D6F008();
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

uint64_t sub_264D62038(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_264D6EDD8();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      v27 = *(v10 + 40);
      result = sub_264D6EBD8();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v35 = 1 << *(v7 + 32);
      if (v35 >= 64)
      {
        bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v35;
      }

      *(v7 + 16) = 0;
    }

    v5 = v36;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

void *sub_264D62298(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    v8 = sub_264D634C4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_264D62328()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC5B0, &unk_264D6FD50);
  v2 = *v0;
  v3 = sub_264D6EDC8();
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
        sub_264D37A38(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_264D37670(v25, (*(v4 + 56) + v22));
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

void *sub_264D624CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD28, &qword_264D72150);
  v2 = *v0;
  v3 = sub_264D6EDC8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void *sub_264D62618()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC640, &qword_264D72310);
  v2 = *v0;
  v3 = sub_264D6EDC8();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

id sub_264D62780(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_264D6EDC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_264D628D0(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_264D6EC98();

    if (v17)
    {

      sub_264D414E0(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_264D6EC88();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_264D62B44(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_264D62D44(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_264D62F64(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_264D414E0(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_264D6EBD8();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_264D6EBE8();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_264D62FE8(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_264D62B44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_264D6ECD8();
    v24 = v10;
    sub_264D6EC78();
    if (sub_264D6ECA8())
    {
      sub_264D414E0(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_264D62D44(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_264D6EBD8();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_264D6ECA8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_264D62D44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_264D6ECC8();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_264D6EBD8();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_264D62F64(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_264D6EBD8();
  v5 = -1 << *(a2 + 32);
  result = sub_264D6EC68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_264D62FE8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_264D62D44(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_264D63178(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_264D632B8(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_264D6EBD8();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_264D414E0(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_264D6EBE8();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_264D6EF58();
  __break(1u);
}

id sub_264D63178(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_264D6ECB8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_264D632B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_264D6ECC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_264D6EBD8();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_264D634C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
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
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_264D63638(v21, a2, v22, v19);
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
  return result;
}

uint64_t sub_264D63638(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD88, &qword_264D722D8);
  result = sub_264D6ECE8();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_264D6EFC8();

    sub_264D6E9B8();
    result = sub_264D6F008();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
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

uint64_t sub_264D6385C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_264D6EBD8();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
    v12 = 1;
    while (1)
    {
      v13 = *(*(v6 + 48) + 8 * v10);
      v14 = sub_264D6EBE8();

      if (v14)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v12 = 0;
LABEL_8:
    v15 = v14 ^ 1;
    v3 = v2;
  }

  else
  {
    v15 = 1;
    v12 = 1;
  }

  v16 = *(v6 + 16);
  v17 = v16 + v12;
  if (__OFADD__(v16, v12))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = *(v6 + 24);
  if (v18 >= v17 && (a2 & 1) != 0)
  {
    if ((v15 & 1) == 0)
    {
LABEL_28:
      v31 = *(*v3 + 48);
      result = *(v31 + 8 * v10);
      *(v31 + 8 * v10) = a1;
      return result;
    }

    goto LABEL_25;
  }

  if (a2)
  {
    sub_264D62D44(v17, &qword_27FFACDB8, &qword_264D722F8);
  }

  else
  {
    if (v18 >= v17)
    {
      sub_264D63178(&qword_27FFACDB8, &qword_264D722F8);
      if ((v15 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_264D632B8(v17, &qword_27FFACDB8, &qword_264D722F8);
  }

  v19 = *v3;
  v20 = *(*v3 + 40);
  v21 = sub_264D6EBD8();
  v22 = -1 << *(v19 + 32);
  v10 = v21 & ~v22;
  if (((*(v19 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_24:
    if ((v15 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_25:
    v26 = *v3;
    *(*v3 + 8 * (v10 >> 6) + 56) |= 1 << v10;
    *(*(v26 + 48) + 8 * v10) = a1;
    v27 = *(v26 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      result = 0;
      *(v26 + 16) = v29;
      return result;
    }

    goto LABEL_30;
  }

  v23 = ~v22;
  sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
  while (1)
  {
    v24 = *(*(v19 + 48) + 8 * v10);
    v25 = sub_264D6EBE8();

    if (v25)
    {
      break;
    }

    v10 = (v10 + 1) & v23;
    if (((*(v19 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
  result = sub_264D6EF58();
  __break(1u);
  return result;
}

void sub_264D63B04(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_264D6EC88())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACDB8, &qword_264D722F8);
      v3 = sub_264D6ECE8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_264D6EC88();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x26674CF10](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_264D6EBD8();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_264D6EBE8();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_264D6EBD8();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_264D6EBE8();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_264D63DF4(unint64_t a1)
{
  if (!(MEMORY[0x277D84F90] >> 62))
  {
LABEL_2:
    v2 = MEMORY[0x277D84FA0];
    if (!(a1 >> 62))
    {
      goto LABEL_3;
    }

LABEL_21:
    v3 = sub_264D6EC88();
    if (!v3)
    {
      return;
    }

    goto LABEL_4;
  }

LABEL_19:
  if (!sub_264D6EC88())
  {
    goto LABEL_2;
  }

  sub_264D63B04(MEMORY[0x277D84F90]);
  v2 = v13;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

LABEL_3:
  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return;
  }

LABEL_4:
  if (v3 >= 1)
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26674CF10](v4, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = [v8 payloadAddress];
      if (!v10)
      {
        sub_264D6E988();
        v10 = sub_264D6E958();
      }

      v11 = [objc_allocWithZone(MEMORY[0x277D265A0]) initWithDomain_];

      if ((v2 & 0xC000000000000001) != 0)
      {
        if (v2 >= 0)
        {
          v2 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v12 = sub_264D6EC88();
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_19;
        }

        v14 = sub_264D62B44(v2, v12 + 1, &qword_27FFACDB8, &qword_264D722F8, &qword_27FFACD08, 0x277D265A0);
        v6 = v11;
        isUniquelyReferenced_nonNull_native = 1;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v2;
        v6 = v11;
      }

      v7 = sub_264D6385C(v6, isUniquelyReferenced_nonNull_native);

      v2 = v14;
      if (v3 == ++v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t sub_264D63FDC(uint64_t a1)
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

  v1 = MEMORY[0x277D84FA0];
  v2 = *(a1 + 16);
  if (v2)
  {
    while (1)
    {
      for (i = (a1 + 40); ; i += 2)
      {
        v7 = *(i - 1);
        v6 = *i;
        v8 = objc_allocWithZone(MEMORY[0x277D265A0]);

        v9 = sub_264D6E958();

        v10 = [v8 initWithDomain_];

        if ((v1 & 0xC000000000000001) != 0)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v1;
        v5 = v10;
LABEL_5:

        v1 = v14;
        if (!--v2)
        {
          return v1;
        }
      }

      if (v1 >= 0)
      {
        v1 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      a1 = sub_264D6EC88();
      if (!__OFADD__(a1, 1))
      {
        break;
      }

      __break(1u);
LABEL_12:
      v11 = a1;
      if (sub_264D6EC88())
      {
        sub_264D63B04(MEMORY[0x277D84F90]);
        v1 = v12;
      }

      else
      {
        v1 = MEMORY[0x277D84FA0];
      }

      a1 = v11;
      v2 = *(v11 + 16);
      if (!v2)
      {
        return v1;
      }
    }

    v14 = sub_264D62B44(v1, a1 + 1, &qword_27FFACDB8, &qword_264D722F8, &qword_27FFACD08, 0x277D265A0);
    v5 = v10;
    isUniquelyReferenced_nonNull_native = 1;
    goto LABEL_5;
  }

  return v1;
}

id sub_264D64174(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 nonePolicy];
  v4 = [a1 payloadRestrictWeb];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [a1 payloadWhiteListEnabled];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = [a1 payloadSiteWhiteList];
      if (v8)
      {
        v9 = v8;
        sub_264D414E0(0, &qword_27FFACDC8, 0x277CFBBF0);
        v10 = sub_264D6EAA8();
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      sub_264D63DF4(v10);

      sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
      sub_264D64760(&qword_27FFACD98, &qword_27FFACD08, 0x277D265A0);
      v18 = sub_264D6EAC8();

      v19 = [v2 allPolicyWithExceptions_];
    }

    else
    {
      v11 = [a1 payloadUseContentFilter];
      v12 = [v11 BOOLValue];

      v13 = [a1 payloadFilterBlackList];
      if (v12)
      {
        if (v13)
        {
          v14 = v13;
          v15 = sub_264D6EAA8();
        }

        else
        {
          v15 = MEMORY[0x277D84F90];
        }

        sub_264D63FDC(v15);

        sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
        sub_264D64760(&qword_27FFACD98, &qword_27FFACD08, 0x277D265A0);
        v20 = sub_264D6EAC8();

        v21 = [a1 payloadFilterWhiteList];
        if (v21)
        {
          v22 = v21;
          v23 = sub_264D6EAA8();
        }

        else
        {
          v23 = MEMORY[0x277D84F90];
        }

        sub_264D63FDC(v23);

        v18 = sub_264D6EAC8();

        v24 = [v2 autoPolicyWithDomains:v20 exceptions:v18];

        v3 = v20;
        goto LABEL_20;
      }

      if (v13)
      {
        v16 = v13;
        v17 = sub_264D6EAA8();
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
      }

      sub_264D63FDC(v17);

      sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
      sub_264D64760(&qword_27FFACD98, &qword_27FFACD08, 0x277D265A0);
      v18 = sub_264D6EAC8();

      v19 = [v2 specificPolicyWithDomains_];
    }

    v24 = v19;
LABEL_20:

    v3 = v24;
  }

  if (![v3 policy])
  {

    return 0;
  }

  return v3;
}

uint64_t sub_264D6456C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_264D6EC88())
  {
    v4 = sub_264D414E0(0, &qword_27FFACCF8, 0x277D26550);
    v5 = sub_264D64760(&qword_27FFACD40, &qword_27FFACCF8, 0x277D26550);
    result = MEMORY[0x26674CCE0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277D26550uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26674CF10](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_264D628D0(&v12, v10, &qword_27FFACCF8, 0x277D26550, &qword_27FFACDC0, &unk_264D72300);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_264D6EC88();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_264D646F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD50, &qword_264D72178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264D64760(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_264D414E0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264D647B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_264D64844(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_264D60A60(a1, *(v1 + 16), *(v1 + 24));
}

unint64_t sub_264D64858()
{
  result = qword_27FFACD60;
  if (!qword_27FFACD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACD60);
  }

  return result;
}

uint64_t type metadata accessor for LocalRestrictions()
{
  result = qword_27FFACD68;
  if (!qword_27FFACD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264D64900()
{
  result = sub_264D6E848();
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

unint64_t sub_264D64D0C()
{
  result = qword_27FFACD78;
  if (!qword_27FFACD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACD78);
  }

  return result;
}

uint64_t sub_264D64D60(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_264D6EC88())
  {
    v4 = sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
    v5 = sub_264D64760(&qword_27FFACD98, &qword_27FFACD08, 0x277D265A0);
    result = MEMORY[0x26674CCE0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277D265A0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26674CF10](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_264D628D0(&v12, v10, &qword_27FFACD08, 0x277D265A0, &qword_27FFACDB8, &qword_264D722F8);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_264D6EC88();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_264D64EEC(void *a1, id a2)
{
  v4 = [a2 appStore];
  v5 = [a1 payloadAllowInAppPurchases];
  [v5 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v6 = sub_264D6EBC8();

  [v4 setDenyInAppPurchases_];
  v7 = [a2 appStore];
  v8 = [a1 payloadForceITunesStorePasswordEntry];
  [v7 setRequirePasswordForPurchases_];

  v9 = [a2 application];
  v10 = [a1 payloadAllowAppInstallation];
  [v10 BOOLValue];
  v11 = sub_264D6EBC8();

  [v9 setDenyAppInstallation_];
  v12 = [a2 appStore];
  v13 = [a1 payloadAllowUIAppInstallation];
  [v13 BOOLValue];
  v14 = sub_264D6EBC8();

  [v12 setDenyAppStoreAppInstallation_];
  v15 = [a2 appStore];
  v16 = [a1 payloadAllowMarketplaceAppInstallation];
  [v16 BOOLValue];
  v17 = sub_264D6EBC8();

  [v15 setDenyMarketplaceAppInstallation_];
  v18 = [a2 appStore];
  v19 = [a1 payloadAllowWebDistributionAppInstallation];
  [v19 BOOLValue];
  v20 = sub_264D6EBC8();

  [v18 setDenyWebDistributionAppInstallation_];
  v21 = [a2 application];
  v22 = [a1 payloadAllowAppRemoval];
  [v22 BOOLValue];
  v23 = sub_264D6EBC8();

  [v21 setDenyAppRemoval_];
  v24 = [a2 application];
  v25 = [a1 payloadAllowAppClips];
  [v25 BOOLValue];
  v26 = sub_264D6EBC8();

  [v24 setDenyAppClips_];
}

void sub_264D6529C(void *a1, void *a2)
{
  v4 = [a1 payloadBlacklistedAppBundleIDs];
  if (v4)
  {
    v5 = v4;
    v6 = sub_264D6EAA8();

    v7 = *(v6 + 16);
    if (v7)
    {
      v38 = MEMORY[0x277D84F90];
      sub_264D6ED78();
      v8 = (v6 + 40);
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;
        v11 = objc_allocWithZone(MEMORY[0x277D26550]);

        v12 = sub_264D6E958();
        [v11 initWithBundleIdentifier_];

        sub_264D6ED58();
        v13 = *(v38 + 16);
        sub_264D6ED88();
        sub_264D6ED98();
        sub_264D6ED68();
        v8 += 2;
        --v7;
      }

      while (v7);

      v14 = v38;
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v15 = [a2 application];
    sub_264D6456C(v14);

    sub_264D414E0(0, &qword_27FFACCF8, 0x277D26550);
    sub_264D64760(&qword_27FFACD40, &qword_27FFACCF8, 0x277D26550);
    v16 = sub_264D6EAC8();

    [v15 setBlockedApplications_];
  }

  v17 = [a2 faceTime];
  v18 = [a1 payloadAllowVideoConferencing];
  [v18 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v19 = sub_264D6EBC8();

  [v17 setDenyFaceTime_];
  v20 = [a2 faceTime];
  v21 = [a1 payloadAllowGroupActivity];
  [v21 BOOLValue];
  v22 = sub_264D6EBC8();

  [v20 setDenySharePlay_];
  v23 = [a2 media];
  v24 = [a1 payloadAllowiTunes];
  [v24 BOOLValue];
  v25 = sub_264D6EBC8();

  [v23 setDenyiTunes_];
  v26 = [a2 media];
  v27 = [a1 payloadAllowPodcasts];
  [v27 BOOLValue];
  v28 = sub_264D6EBC8();

  [v26 setDenyPodcasts_];
  v29 = [a2 messages];
  v30 = [a1 payloadAllowChat];
  [v30 BOOLValue];
  v31 = sub_264D6EBC8();

  [v29 setDenyiMessage_];
  v32 = [a2 news];
  v33 = [a1 payloadAllowNews];
  [v33 BOOLValue];
  v34 = sub_264D6EBC8();

  [v32 setDenyNews_];
  v35 = [a2 safari];
  v36 = [a1 payloadAllowSafari];
  [v36 BOOLValue];
  v37 = sub_264D6EBC8();

  [v35 setDenySafari_];
}

void sub_264D657AC(void *a1, id a2)
{
  v4 = [a2 media];
  v5 = [a1 payloadAllowBookstore];
  [v5 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v6 = sub_264D6EBC8();

  [v4 setDenyBookstore_];
  v7 = [a2 media];
  v8 = [a1 payloadAllowBookstoreErotica];
  [v8 BOOLValue];
  v9 = sub_264D6EBC8();

  [v7 setDenyBookstoreErotica_];
}

void sub_264D658F8(void *a1, id a2)
{
  v4 = [a2 cellular];
  v5 = [a1 payloadAllowAppCellularDataModification];
  [v5 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v6 = sub_264D6EBC8();

  [v4 setLockAppCellularData_];
  v7 = [a2 cellular];
  v8 = [a1 payloadAllowCellularPlanModification];
  [v8 BOOLValue];
  v9 = sub_264D6EBC8();

  [v7 setLockCellularPlan_];
}

void sub_264D65A44(void *a1, id a2)
{
  v4 = [a2 camera];
  v5 = [a1 payloadAllowCamera];
  [v5 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v6 = sub_264D6EBC8();

  [v4 setDenyCamera_];
  v7 = [a2 camera];
  v8 = [a1 payloadAllowScreenRecording];
  [v8 BOOLValue];
  v9 = sub_264D6EBC8();

  [v7 setDenyScreenRecording_];
}

void sub_264D65B90(void *a1, void *a2)
{
  v4 = [a1 payloadAllowedGameCenterOtherPlayerTypes];
  v5 = [v4 integerValue];

  if (v5 <= 2)
  {
    v6 = qword_279B86E10[v5];
    v7 = [a2 gameCenter];
    [v7 setAllowedOtherPlayerTypes_];
  }

  v8 = [a2 gameCenter];
  v9 = [a1 payloadAllowMultiplayerGaming];
  [v9 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v10 = sub_264D6EBC8();

  [v8 setDenyMultiplayerGaming_];
  v11 = [a2 gameCenter];
  v12 = [a1 payloadAllowAddingGameCenterFriends];
  [v12 BOOLValue];
  v13 = sub_264D6EBC8();

  [v11 setDenyAddingFriends_];
  v14 = [a2 gameCenter];
  v15 = [a1 payloadAllowGameCenter];
  [v15 BOOLValue];
  v16 = sub_264D6EBC8();

  [v14 setDenyGameCenter_];
  v17 = [a2 gameCenter];
  v18 = [a1 payloadAllowGameCenterNearbyMultiplayer];
  [v18 BOOLValue];
  v19 = sub_264D6EBC8();

  [v17 setDenyNearbyMultiplayer_];
  v20 = [a2 gameCenter];
  v21 = [a1 payloadAllowGameCenterPrivateMessaging];
  [v21 BOOLValue];
  v22 = sub_264D6EBC8();

  [v20 setDenyPrivateMessaging_];
  v23 = [a2 gameCenter];
  v24 = [a1 payloadAllowGameCenterProfilePrivacyModification];
  [v24 BOOLValue];
  v25 = sub_264D6EBC8();

  [v23 setLockProfilePrivacy_];
  v26 = [a2 gameCenter];
  v27 = [a1 payloadAllowGameCenterProfileModification];
  [v27 BOOLValue];
  v28 = sub_264D6EBC8();

  [v26 setLockProfile_];
  v29 = [a2 gameCenter];
  v30 = [a1 payloadAllowGameCenterFriendsSharingModification];
  [v30 BOOLValue];
  v31 = sub_264D6EBC8();

  [v29 setLockFriendsSharing_];
}

void sub_264D65FB8(void *a1, id a2)
{
  v4 = [a2 media];
  v5 = [a1 payloadAllowMusicService];
  [v5 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v6 = sub_264D6EBC8();

  [v4 setDenyMusicService_];
  v7 = [a2 media];
  v8 = [a1 payloadAllowMusicArtistActivity];
  [v8 BOOLValue];
  v9 = sub_264D6EBC8();

  [v7 setDenyMusicArtistActivity_];
  v10 = [a2 media];
  v11 = [a1 payloadAllowMusicVideos];
  [v11 BOOLValue];
  v12 = sub_264D6EBC8();

  [v10 setDenyMusicVideos_];
  v13 = [a2 media];
  v14 = [a1 payloadAllowSharedLibraries];
  [v14 BOOLValue];
  v15 = sub_264D6EBC8();

  [v13 setDenySharedMediaLibraries_];
  v16 = sub_264D6E818();
  v21[3] = v16;
  v21[4] = sub_264D666A8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4B890], v16);
  LOBYTE(v16) = sub_264D6E7E8();
  __swift_destroy_boxed_opaque_existential_0(v21);
  if (v16)
  {
    v18 = [a2 media];
    v19 = [a1 payloadAllowSpeakerVolumeLimitModification];
    [v19 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v20 = sub_264D6EBC8();

    [v18 setLockSpeakerVolumeLimit_];
  }
}

void sub_264D662C0(void *a1, id a2)
{
  v4 = [a2 appStore];
  v5 = [a1 payloadRatingApps];
  [v4 setMaximumRating_];

  v6 = [a2 media];
  v7 = [a1 payloadRatingMovies];
  [v6 setMaximumMovieRating_];

  v8 = [a2 media];
  v9 = [a1 payloadRatingTVShows];
  [v8 setMaximumTVShowRating_];

  v10 = [a2 media];
  v11 = [a1 payloadAllowExplicitContent];
  if (v11)
  {
    v12 = v11;
    [v11 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v13 = sub_264D6EBC8();
  }

  else
  {
    v13 = 0;
  }

  [v10 setDenyExplicitContent_];
}

void sub_264D664A0(void *a1, id a2)
{
  v4 = [a2 siri];
  v5 = [a1 payloadAllowAssistant];
  [v5 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v6 = sub_264D6EBC8();

  [v4 setDenySiri_];
  v7 = [a2 keyboard];
  v8 = [a1 payloadAllowDictation];
  [v8 BOOLValue];
  v9 = sub_264D6EBC8();

  [v7 setDenyDictation_];
  v10 = [a2 siri];
  v11 = [a1 payloadAllowAssistantUserGeneratedContent];
  [v11 BOOLValue];
  v12 = sub_264D6EBC8();

  [v10 setDenySiriUserGeneratedContent_];
  v13 = [a2 siri];
  v14 = [a1 payloadForceAssistantProfanityFilter];
  [v13 setForceSiriProfanityFilter_];
}

unint64_t sub_264D666A8()
{
  result = qword_27FFACD80;
  if (!qword_27FFACD80)
  {
    sub_264D6E818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACD80);
  }

  return result;
}

uint64_t sub_264D66720()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACDD0);
  __swift_project_value_buffer(v0, qword_27FFACDD0);
  return sub_264D6E808();
}

uint64_t sub_264D667A8()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACDE8);
  __swift_project_value_buffer(v0, qword_27FFACDE8);
  return sub_264D6E808();
}

uint64_t sub_264D66830()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE00);
  __swift_project_value_buffer(v0, qword_27FFACE00);
  return sub_264D6E808();
}

uint64_t sub_264D668B8()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE18);
  __swift_project_value_buffer(v0, qword_27FFACE18);
  return sub_264D6E808();
}

uint64_t sub_264D66940()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE30);
  __swift_project_value_buffer(v0, qword_27FFACE30);
  return sub_264D6E808();
}

uint64_t sub_264D669C8()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE48);
  __swift_project_value_buffer(v0, qword_27FFACE48);
  return sub_264D6E808();
}

uint64_t sub_264D66A50()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE60);
  __swift_project_value_buffer(v0, qword_27FFACE60);
  return sub_264D6E808();
}

uint64_t sub_264D66AD8()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE78);
  __swift_project_value_buffer(v0, qword_27FFACE78);
  return sub_264D6E808();
}

uint64_t sub_264D66B60()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE90);
  __swift_project_value_buffer(v0, qword_27FFACE90);
  return sub_264D6E808();
}

uint64_t sub_264D66BE8()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACEA8);
  __swift_project_value_buffer(v0, qword_27FFACEA8);
  return sub_264D6E808();
}

uint64_t sub_264D66C70()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACEC0);
  __swift_project_value_buffer(v0, qword_27FFACEC0);
  return sub_264D6E808();
}

uint64_t sub_264D66CF8()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACED8);
  __swift_project_value_buffer(v0, qword_27FFACED8);
  return sub_264D6E808();
}

uint64_t sub_264D66D80()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACEF0);
  __swift_project_value_buffer(v0, qword_27FFACEF0);
  return sub_264D6E808();
}

uint64_t sub_264D66E08()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACF08);
  __swift_project_value_buffer(v0, qword_27FFACF08);
  return sub_264D6E808();
}

uint64_t sub_264D66E90()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACF20);
  __swift_project_value_buffer(v0, qword_27FFACF20);
  return sub_264D6E808();
}

uint64_t sub_264D66F18()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACF38);
  __swift_project_value_buffer(v0, qword_27FFACF38);
  return sub_264D6E808();
}

uint64_t sub_264D66FA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_264D6E7F8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t DeviceActivityName.isDowntime.getter()
{
  if (qword_27FFAC320 != -1)
  {
    swift_once();
  }

  v0 = sub_264D6E7F8();
  __swift_project_value_buffer(v0, qword_27FFACDD0);
  sub_264D67558();
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v1 = sub_264D6EF28();

  if (v1)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC328 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACDE8);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v4 = sub_264D6EF28();

  if (v4)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC330 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACE00);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v5 = sub_264D6EF28();

  if (v5)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC338 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACE18);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v6 = sub_264D6EF28();

  if (v6)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC340 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACE30);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v7 = sub_264D6EF28();

  if (v7)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC348 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACE48);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
LABEL_5:

LABEL_7:
    v2 = 1;
    return v2 & 1;
  }

  v8 = sub_264D6EF28();

  if (v8)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC350 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACE60);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_264D6EF28();
  }

  return v2 & 1;
}

unint64_t sub_264D67558()
{
  result = qword_27FFACF50;
  if (!qword_27FFACF50)
  {
    sub_264D6E7F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACF50);
  }

  return result;
}

uint64_t DeviceActivityName.isUsageLimit.getter()
{
  if (qword_27FFAC368 != -1)
  {
    swift_once();
  }

  v0 = sub_264D6E7F8();
  __swift_project_value_buffer(v0, qword_27FFACEA8);
  sub_264D67558();
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v1 = sub_264D6EF28();

  if (v1)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC370 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACEC0);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v4 = sub_264D6EF28();

  if (v4)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC378 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACED8);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v5 = sub_264D6EF28();

  if (v5)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC380 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACEF0);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v6 = sub_264D6EF28();

  if (v6)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC388 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACF08);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v7 = sub_264D6EF28();

  if (v7)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC390 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACF20);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
LABEL_5:

LABEL_7:
    v2 = 1;
    return v2 & 1;
  }

  v8 = sub_264D6EF28();

  if (v8)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC398 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACF38);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_264D6EF28();
  }

  return v2 & 1;
}

uint64_t sub_264D67AD4(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_264D6EF28() & 1) == 0)
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

void STUserNotifications.NotificationType.hash(into:)()
{
  v1 = v0;
  v2 = sub_264D6E778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for STUserNotifications.NotificationType();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_264D69B5C(v1, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v30 = *v10;
      v31 = *(v10 + 1);
      v32 = *(v10 + 2);
      v33 = *(v10 + 3);
      v35 = *(v10 + 4);
      v34 = *(v10 + 5);
      v36 = *(v10 + 6);
      MEMORY[0x26674D1D0](1);
      sub_264D6E9B8();

      sub_264D6E9B8();

      sub_264D6EFE8();
      if (v35)
      {
        v37 = v35;
        sub_264D6EBF8();
      }

      else
      {
        v37 = 0;
      }

      sub_264D6E9B8();

      return;
    case 2u:
      (*(v3 + 32))(v6, v10, v2);
      MEMORY[0x26674D1D0](2);
      sub_264D6B724(&qword_27FFACF78, MEMORY[0x277CC8990]);
      sub_264D6E948();
      (*(v3 + 8))(v6, v2);
      return;
    case 3u:
      v23 = *v10;
      v24 = *(v10 + 1);
      v25 = *(v10 + 2);
      v26 = *(v10 + 3);
      v27 = *(v10 + 4);
      v28 = *(v10 + 5);
      v15 = v10[6];
      MEMORY[0x26674D1D0](11);
      sub_264D6E9B8();

      sub_264D6E9B8();

      sub_264D6E9B8();
      goto LABEL_10;
    case 4u:
      v17 = *v10;
      v18 = *(v10 + 1);
      v19 = *(v10 + 2);
      v20 = *(v10 + 3);
      v21 = *(v10 + 4);
      v22 = *(v10 + 5);
      MEMORY[0x26674D1D0](12);
      sub_264D6E9B8();

      sub_264D6E9B8();

      sub_264D6E9B8();
      goto LABEL_19;
    case 5u:
      v38 = *v10;
      v39 = *(v10 + 1);
      v40 = *(v10 + 2);
      MEMORY[0x26674D1D0](14);
      sub_264D6E9B8();

      MEMORY[0x26674D1D0](*(v40 + 16));
      v41 = *(v40 + 16);
      if (v41)
      {
        v42 = (v40 + 40);
        do
        {
          v43 = *(v42 - 1);
          v44 = *v42;

          sub_264D6E9B8();

          v42 += 2;
          --v41;
        }

        while (v41);
      }

LABEL_19:

      return;
    case 6u:
      v16 = 3;
      goto LABEL_24;
    case 7u:
      v16 = 4;
      goto LABEL_24;
    case 8u:
      v16 = 5;
      goto LABEL_24;
    case 9u:
      v16 = 6;
      goto LABEL_24;
    case 0xAu:
      v16 = 7;
      goto LABEL_24;
    case 0xBu:
      v16 = 8;
      goto LABEL_24;
    case 0xCu:
      v16 = 9;
      goto LABEL_24;
    case 0xDu:
      v16 = 10;
      goto LABEL_24;
    case 0xEu:
      v16 = 13;
LABEL_24:
      MEMORY[0x26674D1D0](v16);
      break;
    default:
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = *(v10 + 2);
      v14 = *(v10 + 3);
      v15 = v10[4];
      MEMORY[0x26674D1D0](0);
      sub_264D6E9B8();

      sub_264D6E9B8();
LABEL_10:

      v29 = 0.0;
      if (v15 != 0.0)
      {
        v29 = v15;
      }

      MEMORY[0x26674D1F0](*&v29);
      break;
  }
}

uint64_t STUserNotifications.NotificationType.hashValue.getter()
{
  sub_264D6EFC8();
  STUserNotifications.NotificationType.hash(into:)();
  return sub_264D6F008();
}

uint64_t sub_264D68014()
{
  sub_264D6EFC8();
  STUserNotifications.NotificationType.hash(into:)();
  return sub_264D6F008();
}

uint64_t sub_264D68058()
{
  sub_264D6EFC8();
  STUserNotifications.NotificationType.hash(into:)();
  return sub_264D6F008();
}

uint64_t STUserNotifications.UserNotificationError.hashValue.getter()
{
  v1 = *v0;
  sub_264D6EFC8();
  MEMORY[0x26674D1D0](v1);
  return sub_264D6F008();
}

uint64_t sub_264D68124()
{
  v0 = sub_264D6E848();
  __swift_allocate_value_buffer(v0, qword_27FFACF58);
  v1 = __swift_project_value_buffer(v0, qword_27FFACF58);
  if (qword_27FFAC310 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FFB1650);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static STUserNotifications.post(notification:)(uint64_t a1)
{
  v1[2] = a1;
  v3 = sub_264D6E7D8();
  v1[3] = v3;
  v4 = *(v3 - 8);
  v1[4] = v4;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v6 = sub_264D6E778();
  v1[6] = v6;
  v7 = *(v6 - 8);
  v1[7] = v7;
  v8 = *(v7 + 64) + 15;
  v1[8] = swift_task_alloc();
  v9 = type metadata accessor for STUserNotifications.NotificationType();
  v1[9] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v11 = swift_task_alloc();
  v1[11] = v11;
  *v11 = v1;
  v11[1] = sub_264D6836C;

  return sub_264D69BC0(a1);
}

uint64_t sub_264D6836C(uint64_t a1)
{
  v3 = *(*v2 + 88);
  v4 = *v2;
  v4[12] = a1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[8];
    v7 = v4[5];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264D684CC, 0, 0);
  }
}

uint64_t sub_264D684CC()
{
  v1 = *(v0 + 72);
  sub_264D69B5C(*(v0 + 16), *(v0 + 80));
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = *(v0 + 96);
    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 80), *(v0 + 48));
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v6 = *(v0 + 56);
      v5 = *(v0 + 64);
      v7 = *(v0 + 40);
      v24 = *(v0 + 48);
      v9 = *(v0 + 24);
      v8 = *(v0 + 32);
      v10 = *(v0 + 96);
      sub_264D6E7C8();
      v11 = sub_264D6E748();
      v12 = sub_264D6E7B8();
      [v4 setEndDateComponents:v11 referenceDate:v12];

      (*(v8 + 8))(v7, v9);
      (*(v6 + 8))(v5, v24);
    }

    else
    {
      if (qword_27FFAC3A0 != -1)
      {
        swift_once();
      }

      v13 = sub_264D6E848();
      __swift_project_value_buffer(v13, qword_27FFACF58);
      v14 = sub_264D6E828();
      v15 = sub_264D6EB28();
      v16 = os_log_type_enabled(v14, v15);
      v18 = *(v0 + 56);
      v17 = *(v0 + 64);
      v19 = *(v0 + 48);
      if (v16)
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_264D33000, v14, v15, "Unable to cast context of type downtime to STDeviceDowntimeUserNotificationContext.", v20, 2u);
        MEMORY[0x26674D8B0](v20, -1, -1);
      }

      (*(v18 + 8))(v17, v19);
    }
  }

  else
  {
    sub_264D6A170(*(v0 + 80));
  }

  v21 = swift_task_alloc();
  *(v0 + 104) = v21;
  *v21 = v0;
  v21[1] = sub_264D6876C;
  v22 = *(v0 + 96);

  return sub_264D6A1CC(v22);
}

uint64_t sub_264D6876C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_264D68910;
  }

  else
  {
    v3 = sub_264D68880;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D68880()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_264D68910()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t static STUserNotifications.postNotification(context:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264D3D1A4;

  return sub_264D6A1CC(a1);
}

uint64_t static STUserNotifications.remove(notification:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264D68AD8;

  return sub_264D69BC0(a1);
}

uint64_t sub_264D68AD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;
  *(*v2 + 24) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_264D68C28, 0, 0);
  }
}

uint64_t sub_264D68C28()
{
  v1 = *(v0 + 32);
  sub_264D6AFA8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264D68CC0(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_264D68CF4(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC778, &qword_264D722D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_264D68DC0(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  sub_264D414E0(0, &qword_27FFAD010, 0x277CE1F78);
  **(*(v1 + 64) + 40) = sub_264D6EAA8();

  return MEMORY[0x282200948](v1);
}

void *sub_264D68E44()
{
  result = sub_264D68E64();
  off_27FFACF70 = result;
  return result;
}

unint64_t sub_264D68E64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACFD0, &qword_264D72530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264D72320;
  v1 = *MEMORY[0x277D4BCB0];
  *(inited + 32) = sub_264D6E988();
  *(inited + 40) = v2;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v3 = *MEMORY[0x277D4BCA0];
  *(inited + 56) = sub_264D6E988();
  *(inited + 64) = v4;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v5 = *MEMORY[0x277D4BCA8];
  *(inited + 80) = sub_264D6E988();
  *(inited + 88) = v6;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v7 = sub_264D38400(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACFD8, &qword_264D72538);
  swift_arrayDestroy();
  return v7;
}

uint64_t static STUserNotifications.notificationCentersByBundle.getter()
{
  if (qword_27FFAC3A8 != -1)
  {
    swift_once();
  }
}

uint64_t _s15ScreenTimeSwift19STUserNotificationsV16NotificationTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_264D6E778();
  v124 = *(v4 - 1);
  v125 = v4;
  v5 = *(v124 + 8);
  MEMORY[0x28223BE20](v4);
  v123 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for STUserNotifications.NotificationType();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v122 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v122 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v122 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v122 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = &v122 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD018, &unk_264D72570);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = (&v122 + *(v28 + 56) - v29);
  v31 = a1;
  v32 = &v122 - v29;
  sub_264D69B5C(v31, &v122 - v29);
  sub_264D69B5C(a2, v30);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = v32;
      sub_264D69B5C(v32, v23);
      v75 = *v23;
      v74 = v23[1];
      v77 = v23[2];
      v76 = v23[3];
      v78 = v23[4];
      v79 = v23[5];
      v80 = v23[6];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v32 = v39;
        goto LABEL_57;
      }

      v123 = v79;
      v125 = v78;
      v81 = *v30;
      v82 = *(v30 + 1);
      v84 = *(v30 + 2);
      v83 = *(v30 + 3);
      v85 = *(v30 + 5);
      v124 = *(v30 + 4);
      v122 = v85;
      v86 = *(v30 + 6);
      if (v75 == *&v81 && v74 == v82)
      {
      }

      else
      {
        v88 = sub_264D6EF28();

        if ((v88 & 1) == 0)
        {

LABEL_86:

          goto LABEL_123;
        }
      }

      if (v77 == v84 && v76 == v83)
      {
      }

      else
      {
        v109 = sub_264D6EF28();

        if ((v109 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      v115 = v124;
      v114 = v125;
      if (v125)
      {
        if (!v124)
        {

          goto LABEL_122;
        }

        sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
        v116 = v114;
        v117 = v115;
        v118 = sub_264D6EBE8();

        if ((v118 & 1) == 0)
        {

LABEL_122:

          goto LABEL_123;
        }
      }

      else if (v124)
      {

LABEL_123:
        sub_264D6A170(v39);
        goto LABEL_58;
      }

      if (v123 == v122 && v80 == v86)
      {
      }

      else
      {
        v121 = sub_264D6EF28();

        if ((v121 & 1) == 0)
        {
          goto LABEL_123;
        }
      }

LABEL_125:
      v96 = v39;
LABEL_53:
      sub_264D6A170(v96);
      v57 = 1;
      return v57 & 1;
    case 2u:
      sub_264D69B5C(v32, v20);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v55 = v123;
        v54 = v124;
        v56 = v125;
        (*(v124 + 4))(v123, v30, v125);
        v57 = MEMORY[0x26674C950](v20, v55);
        v58 = *(v54 + 1);
        v58(v55, v56);
        v58(v20, v56);
        goto LABEL_89;
      }

      (*(v124 + 1))(v20, v125);
      goto LABEL_57;
    case 3u:
      v39 = v32;
      sub_264D69B5C(v32, v17);
      v59 = *v17;
      v60 = *(v17 + 1);
      v62 = *(v17 + 2);
      v61 = *(v17 + 3);
      v64 = *(v17 + 4);
      v63 = *(v17 + 5);
      v65 = *(v17 + 6);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_28;
      }

      v124 = v64;
      v66 = *v30;
      v67 = *(v30 + 1);
      v69 = *(v30 + 2);
      v68 = *(v30 + 3);
      v70 = *(v30 + 5);
      v123 = *(v30 + 4);
      v125 = v70;
      v71 = v30[6];
      if (v59 == v66 && v60 == v67)
      {
      }

      else
      {
        v73 = sub_264D6EF28();

        if ((v73 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      if (v62 == v69 && v61 == v68)
      {
      }

      else
      {
        v107 = sub_264D6EF28();

        if ((v107 & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      if (v124 == v123 && v63 == v125)
      {
      }

      else
      {
        v120 = sub_264D6EF28();

        if ((v120 & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      v57 = v65 == v71;
      sub_264D6A170(v39);
      return v57 & 1;
    case 4u:
      v39 = v32;
      sub_264D69B5C(v32, v14);
      v40 = *v14;
      v41 = v14[1];
      v43 = v14[2];
      v42 = v14[3];
      v44 = v14[4];
      v45 = v14[5];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_28:

        v32 = v39;
        goto LABEL_57;
      }

      v125 = v44;
      v46 = *v30;
      v47 = *(v30 + 1);
      v49 = *(v30 + 2);
      v48 = *(v30 + 3);
      v50 = *(v30 + 4);
      v51 = *(v30 + 5);
      v124 = v50;
      if (v40 == *&v46 && v41 == v47)
      {
      }

      else
      {
        v53 = sub_264D6EF28();

        if ((v53 & 1) == 0)
        {
LABEL_14:

          goto LABEL_122;
        }
      }

      if (v43 == v49 && v42 == v48)
      {
      }

      else
      {
        v105 = sub_264D6EF28();

        if ((v105 & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      if (v125 == v124 && v45 == v51)
      {

        goto LABEL_125;
      }

      v119 = sub_264D6EF28();

      if (v119)
      {
        goto LABEL_125;
      }

      goto LABEL_123;
    case 5u:
      sub_264D69B5C(v32, v11);
      v90 = *v11;
      v89 = v11[1];
      v91 = v11[2];
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        goto LABEL_57;
      }

      v92 = *(v30 + 2);
      if (v90 == *v30 && v89 == *(v30 + 1))
      {
        v110 = *(v30 + 1);
      }

      else
      {
        v94 = *(v30 + 1);
        v95 = sub_264D6EF28();

        if ((v95 & 1) == 0)
        {

          sub_264D6A170(v32);
          goto LABEL_58;
        }
      }

      v57 = sub_264D67AD4(v91, v92);

LABEL_89:
      sub_264D6A170(v32);
      return v57 & 1;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_52;
      }

      goto LABEL_57;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_57;
      }

LABEL_52:
      v96 = v32;
      goto LABEL_53;
    default:
      v33 = v32;
      sub_264D69B5C(v32, v25);
      v35 = *v25;
      v34 = *(v25 + 1);
      v37 = *(v25 + 2);
      v36 = *(v25 + 3);
      v38 = *(v25 + 4);
      if (!swift_getEnumCaseMultiPayload())
      {
        v99 = *(v30 + 2);
        v98 = *(v30 + 3);
        v100 = v30[4];
        if (v35 == *v30 && v34 == *(v30 + 1))
        {
          v111 = *(v30 + 1);
        }

        else
        {
          v102 = *(v30 + 1);
          v103 = sub_264D6EF28();

          if ((v103 & 1) == 0)
          {

LABEL_104:
            sub_264D6A170(v33);
            goto LABEL_58;
          }
        }

        if (v37 == v99 && v36 == v98)
        {
        }

        else
        {
          v113 = sub_264D6EF28();

          if ((v113 & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        v57 = v38 == v100;
        sub_264D6A170(v33);
        return v57 & 1;
      }

      v32 = v33;
LABEL_57:
      sub_264D6B7D0(v32);
LABEL_58:
      v57 = 0;
      return v57 & 1;
  }
}

uint64_t type metadata accessor for STUserNotifications.NotificationType()
{
  result = qword_2812227B8;
  if (!qword_2812227B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264D69B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STUserNotifications.NotificationType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D69BC0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for STUserNotifications.NotificationType();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264D69C54, 0, 0);
}

uint64_t sub_264D69C54()
{
  v1 = v0[3];
  sub_264D69B5C(v0[2], v0[4]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v40 = v0[4];
      v41 = *v40;
      v42 = v40[1];
      v43 = v40[2];
      v44 = v40[3];
      v45 = v40[4];
      v46 = v40[5];
      v47 = v40[6];
      v48 = objc_allocWithZone(MEMORY[0x277D4B908]);
      v49 = sub_264D6E958();

      v50 = sub_264D6E958();

      v51 = sub_264D6E958();

      v10 = [v48 initWithAskForTimeRequestIdentifier:v49 childName:v50 childDSID:v45 requestedResourceName:v51];

      break;
    case 2u:
      v29 = v0[4];
      v10 = [objc_allocWithZone(MEMORY[0x277D4B9A0]) init];
      v30 = sub_264D6E778();
      (*(*(v30 - 8) + 8))(v29, v30);
      break;
    case 3u:
      v31 = v0[4];
      v33 = *v31;
      v32 = *(v31 + 1);
      v34 = *(v31 + 2);
      v35 = *(v31 + 3);
      v36 = *(v31 + 4);
      v37 = *(v31 + 5);
      v38 = v31[6];
      v39 = objc_allocWithZone(MEMORY[0x277D4B8E8]);
      v25 = sub_264D6E958();

      v26 = sub_264D6E958();

      v27 = sub_264D6E958();

      v28 = [v39 initWithAskForTimeRequestIdentifier:v25 parentName:v26 requestedResourceName:v27 amountGranted:v38];
      goto LABEL_12;
    case 4u:
      v17 = v0[4];
      v19 = *v17;
      v18 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v22 = v17[4];
      v23 = v17[5];
      v24 = objc_allocWithZone(MEMORY[0x277D4B900]);
      v25 = sub_264D6E958();

      v26 = sub_264D6E958();

      v27 = sub_264D6E958();

      v28 = [v24 initWithAskForTimeRequestIdentifier:v25 parentName:v26 requestedResourceName:v27];
LABEL_12:
      v10 = v28;

      break;
    case 5u:
      v52 = v0[4];
      v54 = *v52;
      v53 = v52[1];
      v55 = v52[2];
      v56 = objc_allocWithZone(MEMORY[0x277D4B8D0]);
      v57 = sub_264D6E958();

      v58 = sub_264D6EA98();

      v10 = [v56 initWithRatingLimit:v57 bundleIdentifiers:v58];

      break;
    case 6u:
      v10 = [objc_allocWithZone(MEMORY[0x277D4B9A8]) init];
      [v10 setTimeLeft_];
      break;
    case 7u:
      v12 = MEMORY[0x277D4B9E8];
      goto LABEL_20;
    case 8u:
      v12 = MEMORY[0x277D4B9F0];
      goto LABEL_20;
    case 9u:
      v12 = MEMORY[0x277D4B920];
      goto LABEL_20;
    case 0xAu:
      v12 = MEMORY[0x277D4BA80];
      goto LABEL_20;
    case 0xBu:
      v13 = v0[4];
      sub_264D6B68C();
      swift_allocError();
      *v14 = 1;
      swift_willThrow();

      v15 = v0[1];

      return v15();
    case 0xCu:
      v12 = MEMORY[0x277D4BAA0];
      goto LABEL_20;
    case 0xDu:
      v12 = MEMORY[0x277D4BAA8];
      goto LABEL_20;
    case 0xEu:
      v12 = MEMORY[0x277D4BAF0];
LABEL_20:
      v10 = [objc_allocWithZone(v12) init];
      break;
    default:
      v2 = v0[4];
      v4 = *v2;
      v3 = *(v2 + 1);
      v5 = *(v2 + 2);
      v6 = *(v2 + 3);
      v7 = v2[4];
      v8 = objc_allocWithZone(MEMORY[0x277D4B8C8]);
      v9 = sub_264D6E958();

      v10 = [v8 initWithIdentifier_];

      v11 = sub_264D6E958();

      [v10 setLimitDisplayName:v11 timeLeft:v7];

      break;
  }

  v59 = v0[4];

  v60 = v0[1];

  return v60(v10);
}

uint64_t sub_264D6A170(uint64_t a1)
{
  v2 = type metadata accessor for STUserNotifications.NotificationType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264D6A1CC(uint64_t a1)
{
  v1[58] = a1;
  v2 = sub_264D6E8E8();
  v1[59] = v2;
  v3 = *(v2 - 8);
  v1[60] = v3;
  v4 = *(v3 + 64) + 15;
  v1[61] = swift_task_alloc();
  v5 = sub_264D6E918();
  v1[62] = v5;
  v6 = *(v5 - 8);
  v1[63] = v6;
  v7 = *(v6 + 64) + 15;
  v1[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264D6A2E8, 0, 0);
}

uint64_t sub_264D6A2E8()
{
  v1 = v0[58];
  v2 = [v1 notificationContent];
  v0[65] = v2;
  v0[2] = v0;
  v0[3] = sub_264D6A428;
  v3 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACFF0, &qword_264D72548);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_264D68CC0;
  v0[29] = &block_descriptor_2;
  v0[30] = v3;
  [v1 customizeNotificationContent:v2 withCompletionBlock:v0 + 26];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264D6A428()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264D6A508, 0, 0);
}

uint64_t sub_264D6A508()
{
  v1 = [*(v0 + 464) identifier];
  if (!v1)
  {
    sub_264D6E988();
    v1 = sub_264D6E958();
  }

  v2 = *(v0 + 464);
  v3 = *(v0 + 520);
  v4 = [v2 trigger];
  v5 = [objc_opt_self() requestWithIdentifier:v1 content:v3 trigger:v4];
  *(v0 + 528) = v5;

  v6 = [v2 destinations];
  if (v6)
  {
    v7 = v6;
    [v5 setDestinations_];
  }

  if (qword_27FFAC3A8 != -1)
  {
    swift_once();
  }

  v8 = off_27FFACF70;
  v9 = [*(v0 + 464) notificationBundleIdentifier];
  v10 = sub_264D6E988();
  v12 = v11;

  if (v8[2])
  {
    v13 = sub_264D5B584(v10, v12);
    v15 = v14;

    if (v15)
    {
      v16 = *(v8[7] + 8 * v13);
      *(v0 + 536) = v16;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 552;
      *(v0 + 88) = sub_264D6A834;
      v17 = swift_continuation_init();
      *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACFF8, &qword_264D72550);
      *(v0 + 272) = MEMORY[0x277D85DD0];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_264D68CF4;
      *(v0 + 296) = &block_descriptor_20;
      *(v0 + 304) = v17;
      [v16 requestAuthorizationWithOptions:66 completionHandler:v0 + 272];

      return MEMORY[0x282200938](v0 + 80);
    }
  }

  else
  {
  }

  v18 = *(v0 + 520);
  sub_264D6B68C();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();

  v20 = *(v0 + 512);
  v21 = *(v0 + 488);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_264D6A834()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 544) = v2;
  if (v2)
  {
    v3 = sub_264D6AF08;
  }

  else
  {
    v3 = sub_264D6A944;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D6A944()
{
  if (*(v0 + 552))
  {
    v1 = *(v0 + 536);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 448;
    *(v0 + 152) = sub_264D6AAC8;
    v2 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD000, &qword_264D72558);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_264D68DC0;
    *(v0 + 360) = &block_descriptor_24;
    *(v0 + 368) = v2;
    [v1 getDeliveredNotificationsWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 144);
  }

  else
  {
    v3 = *(v0 + 528);
    v4 = *(v0 + 520);

    v5 = *(v0 + 512);
    v6 = *(v0 + 488);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_264D6AAC8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264D6ABA8, 0, 0);
}

uint64_t sub_264D6ABA8()
{
  v1 = v0[56];
  if (v1 >> 62)
  {
LABEL_18:
    v2 = sub_264D6EC88();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26674CF10](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v6 = v0[66];
    sub_264D414E0(0, &qword_27FFAD008, 0x277D82BB8);
    v7 = [v5 request];
    LOBYTE(v6) = sub_264D6EBE8();

    ++v3;
    if (v6)
    {
      v19 = v0[67];
      v20 = v0[66];
      v21 = v0[65];

      goto LABEL_13;
    }
  }

  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[64];
  v26 = v0[65];
  v27 = v0[63];
  v11 = v0[61];
  v28 = v0[62];
  v13 = v0[59];
  v12 = v0[60];

  sub_264D414E0(0, &qword_27FFACC68, 0x277D85C78);
  v14 = sub_264D6EB78();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v9;
  v0[54] = sub_264D6B6F8;
  v0[55] = v15;
  v0[50] = MEMORY[0x277D85DD0];
  v0[51] = 1107296256;
  v0[52] = sub_264D54E08;
  v0[53] = &block_descriptor_27;
  v16 = _Block_copy(v0 + 50);
  aBlock = v8;
  v17 = v9;
  sub_264D6E8F8();
  v0[57] = MEMORY[0x277D84F90];
  sub_264D6B724(&qword_27FFACC98, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACCA0, &unk_264D72560);
  sub_264D6B76C();
  sub_264D6EC38();
  MEMORY[0x26674CD80](0, v10, v11, v16);
  _Block_release(v16);

  (*(v12 + 8))(v11, v13);
  (*(v27 + 8))(v10, v28);
  v18 = v0[55];

LABEL_13:
  v22 = v0[64];
  v23 = v0[61];

  v24 = v0[1];

  return v24();
}

uint64_t sub_264D6AF08()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  swift_willThrow();

  v5 = v0[68];
  v6 = v0[64];
  v7 = v0[61];

  v8 = v0[1];

  return v8();
}

void sub_264D6AFA8(id a1)
{
  if (qword_27FFAC3A8 != -1)
  {
    swift_once();
  }

  v2 = off_27FFACF70;
  v3 = [a1 notificationBundleIdentifier];
  v4 = sub_264D6E988();
  v6 = v5;

  if (v2[2])
  {
    v7 = sub_264D5B584(v4, v6);
    v9 = v8;

    if (v9)
    {
      v10 = *(v2[7] + 8 * v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACFE8, &qword_264D72540);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_264D72160;
      v12 = v10;
      v13 = [a1 identifier];
      v14 = sub_264D6E988();
      v16 = v15;

      *(v11 + 32) = v14;
      *(v11 + 40) = v16;
      v17 = sub_264D6EA98();

      [v12 removeDeliveredNotificationsWithIdentifiers_];

      return;
    }
  }

  else
  {
  }

  sub_264D6B68C();
  swift_allocError();
  *v18 = 0;
  swift_willThrow();
}

unint64_t sub_264D6B198()
{
  result = qword_27FFACF88;
  if (!qword_27FFACF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACF88);
  }

  return result;
}

void sub_264D6B24C()
{
  sub_264D6B5A4(319, &qword_27FFACF90);
  if (v0 <= 0x3F)
  {
    sub_264D6B340(319);
    if (v1 <= 0x3F)
    {
      sub_264D6B45C();
      if (v2 <= 0x3F)
      {
        sub_264D6B4A4(319);
        if (v3 <= 0x3F)
        {
          sub_264D6B5A4(319, &qword_27FFACFB8);
          if (v4 <= 0x3F)
          {
            sub_264D6B604();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_264D6B340(uint64_t a1)
{
  if (!qword_27FFACF98)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFACFA0, &qword_264D724B8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27FFACF98);
    }
  }
}

void sub_264D6B45C()
{
  if (!qword_27FFACFA8)
  {
    v0 = sub_264D6E778();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFACFA8);
    }
  }
}

void sub_264D6B4A4(uint64_t a1)
{
  if (!qword_27FFACFB0)
  {
    MEMORY[0x28223BE20](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27FFACFB0);
    }
  }
}

void sub_264D6B5A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_264D6B604()
{
  if (!qword_27FFACFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFACFC8, &qword_264D724C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FFACFC0);
    }
  }
}

unint64_t sub_264D6B68C()
{
  result = qword_27FFACFE0;
  if (!qword_27FFACFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACFE0);
  }

  return result;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264D6B724(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_264D6B76C()
{
  result = qword_27FFACCA8;
  if (!qword_27FFACCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFACCA0, &unk_264D72560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACCA8);
  }

  return result;
}

uint64_t sub_264D6B7D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD018, &unk_264D72570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t STRestrictionsSwift.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D6F028();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);
    sub_264D6BAD4();
    sub_264D6EF38();
    sub_264D414E0(0, &qword_27FFAD028, 0x277CCAAC8);
    sub_264D414E0(0, &qword_27FFAD030, 0x277D4BA58);
    v6 = sub_264D6EB48();
    if (v6)
    {
      v8 = v6;
      sub_264D403BC(v13, v14);
      __swift_destroy_boxed_opaque_existential_0(v15);
      *a2 = v8;
    }

    else
    {
      v9 = sub_264D6ED38();
      swift_allocError();
      v11 = v10;
      v12 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      sub_264D6F018();
      sub_264D6ED28();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84168], v9);
      swift_willThrow();
      sub_264D403BC(v13, v14);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_264D6BAD4()
{
  result = qword_27FFAD020;
  if (!qword_27FFAD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAD020);
  }

  return result;
}

uint64_t STRestrictionsSwift.encode(to:)(void *a1)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D6F048();
  v12[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v12];
  v5 = v12[0];
  if (v4)
  {
    v6 = sub_264D6E7A8();
    v8 = v7;

    v12[0] = v6;
    v12[1] = v8;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_264D6BCC8();
    sub_264D6EF48();
    sub_264D403BC(v6, v8);
  }

  else
  {
    v9 = v5;
    sub_264D6E788();

    swift_willThrow();
  }

  result = __swift_destroy_boxed_opaque_existential_0(v13);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_264D6BCC8()
{
  result = qword_27FFAD038;
  if (!qword_27FFAD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAD038);
  }

  return result;
}

uint64_t sub_264D6BD80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_264D6BDC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t STExpressIntroduction.Internal.DefaultsSavingSettingsStore.init(internal:settingsDefaultsDataSource:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_264D6E838();
  v6 = type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore();
  sub_264D34A30(a1, a3 + *(v6 + 20));
  v7 = a3 + *(v6 + 24);

  return sub_264D34A30(a2, v7);
}

uint64_t type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore()
{
  result = qword_2812224B0;
  if (!qword_2812224B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t STExpressIntroduction.Internal.DefaultsSavingSettingsStore.load(forUser:withDefaults:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a1;
  v6 = type metadata accessor for STExpressIntroduction.STSettings();
  *(v4 + 104) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC950, &qword_264D709A0);
  *(v4 + 128) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v10 = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  *(v4 + 144) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *a2;
  *(v4 + 200) = v12;
  *(v4 + 208) = v13;
  *(v4 + 41) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D6C080, 0, 0);
}

uint64_t sub_264D6C080()
{
  v94 = v0;
  v1 = *(v0 + 96);
  sub_264D6E53C(*(v0 + 88), *(v0 + 200), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v2 = sub_264D6E828();
  v3 = sub_264D6EB38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 41);
    v5 = *(v0 + 200);
    v6 = *(v0 + 208);
    v7 = *(v0 + 192);
    v8 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v93 = v10;
    *v9 = 136380931;
    *(v0 + 64) = v6;
    *(v0 + 72) = v4;
    v11 = sub_264D6E998();
    v13 = sub_264D3FD80(v11, v12, &v93);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    sub_264D6E53C(v5, v7, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v14 = sub_264D6E998();
    v16 = v15;
    sub_264D6E5A4(v5, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v17 = sub_264D3FD80(v14, v16, &v93);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_264D33000, v2, v3, "Loading for user %{private}s with defaults %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v10, -1, -1);
    MEMORY[0x26674D8B0](v9, -1, -1);
  }

  else
  {
    v18 = *(v0 + 200);

    sub_264D6E5A4(v18, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v19 = *(v0 + 96);
  sub_264D6E53C(*(v0 + 88), *(v0 + 184), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v20 = sub_264D6E828();
  v21 = sub_264D6EB38();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 184);
  if (v22)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v93 = v25;
    *v24 = 136446210;
    v26 = *v23;
    v27 = *(v23 + 8);
    *(v0 + 48) = *v23;
    *(v0 + 56) = v27;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD058, &qword_264D72688);
    v29 = sub_264D6E998();
    v31 = v30;
    sub_264D6E5A4(v23, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v32 = sub_264D3FD80(v29, v31, &v93);

    *(v24 + 4) = v32;
    _os_log_impl(&dword_264D33000, v20, v21, "Defaults Content Restrictions: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x26674D8B0](v25, -1, -1);
    MEMORY[0x26674D8B0](v24, -1, -1);
  }

  else
  {

    sub_264D6E5A4(v23, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v33 = *(v0 + 96);
  sub_264D6E53C(*(v0 + 88), *(v0 + 176), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v34 = sub_264D6E828();
  v35 = sub_264D6EB38();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 176);
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v93 = v39;
    *v38 = 136446210;
    *(v0 + 30) = *(v37 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD050, &qword_264D72680);
    v40 = sub_264D6E998();
    v42 = v41;
    sub_264D6E5A4(v37, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v43 = sub_264D3FD80(v40, v42, &v93);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_264D33000, v34, v35, "Defaults Communication Safety: %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x26674D8B0](v39, -1, -1);
    MEMORY[0x26674D8B0](v38, -1, -1);
  }

  else
  {

    sub_264D6E5A4(v37, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v44 = *(v0 + 96);
  sub_264D6E53C(*(v0 + 88), *(v0 + 168), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v45 = sub_264D6E828();
  v46 = sub_264D6EB38();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 168);
  if (v47)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v93 = v50;
    *v49 = 136446210;
    v51 = *(v48 + 11);
    *(v0 + 27) = *(v48 + 13);
    *(v0 + 25) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD048, &qword_264D72678);
    v52 = sub_264D6E998();
    v54 = v53;
    sub_264D6E5A4(v48, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v55 = sub_264D3FD80(v52, v54, &v93);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_264D33000, v45, v46, "Defaults Communication Limits: %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x26674D8B0](v50, -1, -1);
    MEMORY[0x26674D8B0](v49, -1, -1);
  }

  else
  {

    sub_264D6E5A4(v48, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v56 = *(v0 + 96);
  sub_264D6E53C(*(v0 + 88), *(v0 + 160), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v57 = sub_264D6E828();
  v58 = sub_264D6EB38();
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 160);
  if (v59)
  {
    v61 = *(v0 + 136);
    v62 = *(v0 + 144);
    v63 = *(v0 + 128);
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v93 = v65;
    *v64 = 136446210;
    sub_264D5D24C(v60 + *(v62 + 28), v61);
    v66 = sub_264D6E998();
    v68 = v67;
    sub_264D6E5A4(v60, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v69 = sub_264D3FD80(v66, v68, &v93);

    *(v64 + 4) = v69;
    _os_log_impl(&dword_264D33000, v57, v58, "Defaults App and Website Activity: %{public}s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x26674D8B0](v65, -1, -1);
    MEMORY[0x26674D8B0](v64, -1, -1);
  }

  else
  {

    sub_264D6E5A4(v60, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v70 = *(v0 + 96);
  sub_264D6E53C(*(v0 + 88), *(v0 + 152), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v71 = sub_264D6E828();
  v72 = sub_264D6EB38();
  v73 = os_log_type_enabled(v71, v72);
  v74 = *(v0 + 152);
  if (v73)
  {
    v75 = *(v0 + 144);
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v93 = v77;
    *v76 = 136446210;
    *(v0 + 28) = *(v74 + *(v75 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD040, &qword_264D72670);
    v78 = sub_264D6E998();
    v80 = v79;
    sub_264D6E5A4(v74, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v81 = sub_264D3FD80(v78, v80, &v93);

    *(v76 + 4) = v81;
    _os_log_impl(&dword_264D33000, v71, v72, "Defaults Screen Distance: %{public}s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x26674D8B0](v77, -1, -1);
    MEMORY[0x26674D8B0](v76, -1, -1);
  }

  else
  {

    sub_264D6E5A4(v74, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v82 = *(v0 + 96);
  v83 = type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore();
  *(v0 + 216) = v83;
  v84 = (v82 + *(v83 + 24));
  v85 = v84[3];
  v86 = v84[4];
  __swift_project_boxed_opaque_existential_1Tm(v84, v85);
  v87 = *(v86 + 16);
  v92 = (v87 + *v87);
  v88 = v87[1];
  v89 = swift_task_alloc();
  *(v0 + 224) = v89;
  *v89 = v0;
  v89[1] = sub_264D6CA2C;
  v90 = *(v0 + 88);

  return v92(v90, v85, v86);
}

uint64_t sub_264D6CA2C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[24];
    v5 = v2[25];
    v8 = v2[22];
    v7 = v2[23];
    v10 = v2[20];
    v9 = v2[21];
    v11 = v2[19];
    v12 = v2[17];
    v15 = v2 + 14;
    v13 = v2[14];
    v14 = v15[1];

    v16 = *(v4 + 8);

    return v16();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264D6CBF8, 0, 0);
  }
}

uint64_t sub_264D6CBF8()
{
  v1 = *(v0 + 41);
  v2 = *(v0 + 208);
  v3 = (*(v0 + 96) + *(*(v0 + 216) + 20));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  v6 = *(v5 + 8);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v8[1] = sub_264D6CD54;
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);

  return v12(v9, v0 + 16, v10, v4, v5);
}

uint64_t sub_264D6CD54()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_264D6D0F4;
  }

  else
  {
    v3 = sub_264D6CE68;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D6CE68()
{
  v32 = v0;
  v1 = *(v0 + 96);
  sub_264D6E53C(*(v0 + 80), *(v0 + 120), type metadata accessor for STExpressIntroduction.STSettings);
  v2 = sub_264D6E828();
  v3 = sub_264D6EB38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 41);
    v5 = *(v0 + 208);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136380931;
    *(v0 + 32) = v5;
    *(v0 + 40) = v4;
    v11 = sub_264D6E998();
    v13 = sub_264D3FD80(v11, v12, &v31);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2081;
    sub_264D6E53C(v6, v7, type metadata accessor for STExpressIntroduction.STSettings);
    v14 = sub_264D6E998();
    v16 = v15;
    sub_264D6E5A4(v6, type metadata accessor for STExpressIntroduction.STSettings);
    v17 = sub_264D3FD80(v14, v16, &v31);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_264D33000, v2, v3, "Loaded for user %{private}s settings: %{private}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v10, -1, -1);
    MEMORY[0x26674D8B0](v9, -1, -1);
  }

  else
  {
    v18 = *(v0 + 120);

    sub_264D6E5A4(v18, type metadata accessor for STExpressIntroduction.STSettings);
  }

  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v24 = *(v0 + 160);
  v23 = *(v0 + 168);
  v25 = *(v0 + 152);
  v26 = *(v0 + 136);
  v28 = *(v0 + 112);
  v27 = *(v0 + 120);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_264D6D0F4()
{
  v13 = v0[30];
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];

  v11 = v0[1];

  return v11();
}

uint64_t STExpressIntroduction.Internal.DefaultsSavingSettingsStore.save(settings:forUser:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v5 = type metadata accessor for STExpressIntroduction.STSettings();
  *(v3 + 80) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v3 + 104) = v7;
  *(v3 + 112) = v8;
  *(v3 + 25) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D6D298, 0, 0);
}

uint64_t sub_264D6D298()
{
  v32 = v0;
  v1 = *(v0 + 72);
  sub_264D6E53C(*(v0 + 64), *(v0 + 104), type metadata accessor for STExpressIntroduction.STSettings);
  v2 = sub_264D6E828();
  v3 = sub_264D6EB38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 25);
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136380931;
    *(v0 + 48) = v6;
    *(v0 + 56) = v4;
    v11 = sub_264D6E998();
    v13 = sub_264D3FD80(v11, v12, &v31);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2081;
    sub_264D6E53C(v5, v7, type metadata accessor for STExpressIntroduction.STSettings);
    v14 = sub_264D6E998();
    v16 = v15;
    sub_264D6E5A4(v5, type metadata accessor for STExpressIntroduction.STSettings);
    v17 = sub_264D3FD80(v14, v16, &v31);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_264D33000, v2, v3, "Saving for user %{private}s settings %{private}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v10, -1, -1);
    MEMORY[0x26674D8B0](v9, -1, -1);
  }

  else
  {
    v18 = *(v0 + 104);

    sub_264D6E5A4(v18, type metadata accessor for STExpressIntroduction.STSettings);
  }

  v19 = *(v0 + 25);
  v20 = *(v0 + 112);
  v21 = *(v0 + 72);
  v22 = (v21 + *(type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore() + 20));
  v23 = v22[3];
  v24 = v22[4];
  __swift_project_boxed_opaque_existential_1Tm(v22, v23);
  *(v0 + 16) = v20;
  *(v0 + 24) = v19;
  v25 = *(v24 + 16);
  v30 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 120) = v27;
  *v27 = v0;
  v27[1] = sub_264D6D5AC;
  v28 = *(v0 + 64);

  return v30(v28, v0 + 16, v23, v24);
}

uint64_t sub_264D6D5AC()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_264D4EE80;
  }

  else
  {
    v3 = sub_264D6D6C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D6D6C0()
{
  v25 = v0;
  v1 = *(v0 + 72);
  sub_264D6E53C(*(v0 + 64), *(v0 + 88), type metadata accessor for STExpressIntroduction.STSettings);
  v2 = sub_264D6E828();
  v3 = sub_264D6EB38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 25);
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136380931;
    *(v0 + 32) = v5;
    *(v0 + 40) = v4;
    v11 = sub_264D6E998();
    v13 = sub_264D3FD80(v11, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2081;
    sub_264D6E53C(v6, v7, type metadata accessor for STExpressIntroduction.STSettings);
    v14 = sub_264D6E998();
    v16 = v15;
    sub_264D6E5A4(v6, type metadata accessor for STExpressIntroduction.STSettings);
    v17 = sub_264D3FD80(v14, v16, &v24);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_264D33000, v2, v3, "Saved for user %{private}s settings %{private}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v10, -1, -1);
    MEMORY[0x26674D8B0](v9, -1, -1);
  }

  else
  {
    v18 = *(v0 + 88);

    sub_264D6E5A4(v18, type metadata accessor for STExpressIntroduction.STSettings);
  }

  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v21 = *(v0 + 88);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t STExpressIntroduction.Internal.DefaultsSavingSettingsStore.save(defaults:forUser:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v5 = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  *(v3 + 80) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v3 + 104) = v7;
  *(v3 + 112) = v8;
  *(v3 + 25) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D6D9BC, 0, 0);
}

uint64_t sub_264D6D9BC()
{
  v31 = v0;
  v1 = *(v0 + 72);
  sub_264D6E53C(*(v0 + 64), *(v0 + 104), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v2 = sub_264D6E828();
  v3 = sub_264D6EB38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 25);
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136380931;
    *(v0 + 48) = v6;
    *(v0 + 56) = v4;
    v11 = sub_264D6E998();
    v13 = sub_264D3FD80(v11, v12, &v30);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    sub_264D6E53C(v5, v7, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v14 = sub_264D6E998();
    v16 = v15;
    sub_264D6E5A4(v5, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v17 = sub_264D3FD80(v14, v16, &v30);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_264D33000, v2, v3, "Saving for user %{private}s defaults %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v10, -1, -1);
    MEMORY[0x26674D8B0](v9, -1, -1);
  }

  else
  {
    v18 = *(v0 + 104);

    sub_264D6E5A4(v18, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v19 = *(v0 + 72);
  v20 = type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore();
  *(v0 + 120) = v20;
  v21 = (v19 + *(v20 + 24));
  v22 = v21[3];
  v23 = v21[4];
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  v24 = *(v23 + 16);
  v29 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  *(v0 + 128) = v26;
  *v26 = v0;
  v26[1] = sub_264D6DCBC;
  v27 = *(v0 + 64);

  return v29(v27, v22, v23);
}

uint64_t sub_264D6DCBC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[12];
    v5 = v2[13];
    v7 = v2[11];

    v8 = *(v4 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264D6DE14, 0, 0);
  }
}

uint64_t sub_264D6DE14()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 112);
  v3 = (*(v0 + 72) + *(*(v0 + 120) + 20));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  v6 = *(v5 + 24);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_264D6DF70;
  v9 = *(v0 + 64);

  return v11(v9, v0 + 16, v4, v5);
}

uint64_t sub_264D6DF70()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_264D6E2C4;
  }

  else
  {
    v3 = sub_264D6E084;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D6E084()
{
  v25 = v0;
  v1 = *(v0 + 72);
  sub_264D6E53C(*(v0 + 64), *(v0 + 88), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v2 = sub_264D6E828();
  v3 = sub_264D6EB38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 25);
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136380931;
    *(v0 + 32) = v5;
    *(v0 + 40) = v4;
    v11 = sub_264D6E998();
    v13 = sub_264D3FD80(v11, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    sub_264D6E53C(v6, v7, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v14 = sub_264D6E998();
    v16 = v15;
    sub_264D6E5A4(v6, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v17 = sub_264D3FD80(v14, v16, &v24);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_264D33000, v2, v3, "Saved for user %{private}s defaults %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v10, -1, -1);
    MEMORY[0x26674D8B0](v9, -1, -1);
  }

  else
  {
    v18 = *(v0 + 88);

    sub_264D6E5A4(v18, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v21 = *(v0 + 88);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_264D6E2C4()
{
  v1 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_264D6E344(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_264D3D1A4;

  return STExpressIntroduction.Internal.DefaultsSavingSettingsStore.load(forUser:withDefaults:)(a1, a2, a3);
}

uint64_t sub_264D6E3F4(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D41720;

  return STExpressIntroduction.Internal.DefaultsSavingSettingsStore.save(settings:forUser:)(a1, a2);
}

uint64_t sub_264D6E498(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D41720;

  return STExpressIntroduction.Internal.DefaultsSavingSettingsStore.save(defaults:forUser:)(a1, a2);
}

uint64_t sub_264D6E53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264D6E5A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264D6E62C()
{
  result = sub_264D6E848();
  if (v1 <= 0x3F)
  {
    result = sub_264D40E70(319, qword_281222788);
    if (v2 <= 0x3F)
    {
      result = sub_264D40E70(319, &unk_2812224C0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}