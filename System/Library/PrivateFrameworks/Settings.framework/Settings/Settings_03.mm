uint64_t sub_21CE265BC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_21CE26604(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void *SettingsService.__allocating_init(_:delegate:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[4] = 0;
  result[5] = 0;
  result[2] = a1;
  result[3] = a2;
  return result;
}

void *SettingsService.init(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_21CE26708(void (*a1)(), uint64_t a2)
{
  result = sub_21CE27460();
  if (result)
  {
    v5 = result;
    v15 = sub_21CE26234;
    v16 = 0;
    v11 = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_21CE18088;
    v14 = &block_descriptor_3;
    v6 = _Block_copy(&v11);
    v7 = v5;
    v8 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v6);

    sub_21CE6D190();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40810, &qword_21CE72690);
    result = swift_dynamicCast();
    if (result)
    {
      v9 = v11;
      if ([v11 respondsToSelector_])
      {
        v15 = a1;
        v16 = a2;
        v11 = MEMORY[0x277D85DD0];
        v12 = 1107296256;
        v13 = sub_21CE268E0;
        v14 = &block_descriptor_3;
        v10 = _Block_copy(&v11);

        [v9 getSidebarItems_];
        swift_unknownObjectRelease();
        _Block_release(v10);
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21CE2692C(void (*a1)(), uint64_t a2)
{
  result = sub_21CE27460();
  if (result)
  {
    v5 = result;
    v15 = sub_21CE26234;
    v16 = 0;
    v11 = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_21CE18088;
    v14 = &block_descriptor_6;
    v6 = _Block_copy(&v11);
    v7 = v5;
    v8 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v6);

    sub_21CE6D190();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40810, &qword_21CE72690);
    result = swift_dynamicCast();
    if (result)
    {
      v9 = v11;
      if ([v11 respondsToSelector_])
      {
        v15 = a1;
        v16 = a2;
        v11 = MEMORY[0x277D85DD0];
        v12 = 1107296256;
        v13 = sub_21CE26B04;
        v14 = &block_descriptor_9;
        v10 = _Block_copy(&v11);

        [v9 isAvailable_];
        swift_unknownObjectRelease();
        _Block_release(v10);
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21CE26B04(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_21CE26B8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(), uint64_t a5)
{
  result = sub_21CE27460();
  if (result)
  {
    v8 = result;
    v20 = sub_21CE26234;
    v21 = 0;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_21CE18088;
    v19 = &block_descriptor_12;
    v9 = _Block_copy(&v16);
    v10 = v8;
    v11 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_21CE6D190();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40810, &qword_21CE72690);
    result = swift_dynamicCast();
    if (result)
    {
      v12 = v16;
      if ([v16 respondsToSelector_])
      {
        v13 = sub_21CE6CC20();
        v14 = sub_21CE6CD30();
        v20 = a4;
        v21 = a5;
        v16 = MEMORY[0x277D85DD0];
        v17 = 1107296256;
        v18 = sub_21CE26DAC;
        v19 = &block_descriptor_15;
        v15 = _Block_copy(&v16);

        [v12 filterSearchAnchorsForSidebarItem:v13 suggestedAnchors:v14 reply:v15];
        swift_unknownObjectRelease();
        _Block_release(v15);
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21CE26DAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_21CE6CD40();

  v2(v3);
}

uint64_t sub_21CE26F00(void (*a1)(), uint64_t a2)
{
  result = sub_21CE27460();
  if (result)
  {
    v5 = result;
    v15 = sub_21CE26234;
    v16 = 0;
    v11 = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_21CE18088;
    v14 = &block_descriptor_18;
    v6 = _Block_copy(&v11);
    v7 = v5;
    v8 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v6);

    sub_21CE6D190();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40810, &qword_21CE72690);
    result = swift_dynamicCast();
    if (result)
    {
      v9 = v11;
      if ([v11 respondsToSelector_])
      {
        v15 = a1;
        v16 = a2;
        v11 = MEMORY[0x277D85DD0];
        v12 = 1107296256;
        v13 = sub_21CE270D8;
        v14 = &block_descriptor_21;
        v10 = _Block_copy(&v11);

        [v9 getSidebarSections_];
        swift_unknownObjectRelease();
        _Block_release(v10);
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21CE270F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  a3(0);
  v5 = sub_21CE6CD40();

  v4(v5);
}

uint64_t sub_21CE2719C(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  a6(a5, v9);
}

uint64_t sub_21CE27234(uint64_t a1)
{
  result = sub_21CE27460();
  if (result)
  {
    v3 = result;
    v8[4] = sub_21CE26234;
    v8[5] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_21CE18088;
    v8[3] = &block_descriptor_24;
    v4 = _Block_copy(v8);
    v5 = v3;
    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_21CE6D190();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40810, &qword_21CE72690);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = v8[0];
      if ([v8[0] respondsToSelector_])
      {
        [v7 openURL_];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t SettingsService.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SettingsService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21CE27460()
{
  aBlock[73] = *MEMORY[0x277D85DE8];
  result = v0[4];
  if (!result)
  {
    v2 = v0;
    v3 = *(v0[2] + 16);
    aBlock[0] = 0;
    v4 = [v3 makeXPCConnectionWithError_];
    if (v4)
    {
      v5 = aBlock[0];
    }

    else
    {
      v6 = aBlock[0];
      v7 = sub_21CE6B910();

      swift_willThrow();
    }

    v8 = v2[4];
    v2[4] = v4;

    v38 = objc_opt_self();
    v9 = [v38 interfaceWithProtocol_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406D0, &qword_21CE721C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_21CE6F420;
    v12 = sub_21CDE40C8(0, &unk_27CE40B30, 0x277CBEA60);
    *(v11 + 32) = v12;
    v13 = type metadata accessor for SidebarItem();
    *(v11 + 40) = v13;
    *(inited + 32) = v11;
    v14 = MEMORY[0x277D84F90];
    sub_21CE1EF90(MEMORY[0x277D84F90]);
    sub_21CE1EF90(inited);
    swift_setDeallocating();
    sub_21CE27B98(inited + 32);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_21CE71CD0;
    *(v16 + 32) = v12;
    *(v16 + 40) = type metadata accessor for SidebarSection();
    *(v16 + 48) = v13;
    v36 = v13;
    *(v15 + 32) = v16;
    sub_21CE1EF90(v14);
    sub_21CE1EF90(v15);
    swift_setDeallocating();
    sub_21CE27B98(v15 + 32);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_21CE6F420;
    *(v18 + 32) = v12;
    v19 = sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
    *(v18 + 40) = v19;
    *(v17 + 32) = v18;
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_21CE6F420;
    *(v21 + 32) = v12;
    *(v21 + 40) = v19;
    *(v20 + 32) = v21;
    sub_21CE1EF90(v17);
    swift_setDeallocating();
    sub_21CE27B98(v17 + 32);
    sub_21CE1EF90(v20);
    swift_setDeallocating();
    sub_21CE27B98(v20 + 32);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_21CE702B0;
    *(v23 + 32) = sub_21CDE40C8(0, &qword_27CE40118, 0x277CBEBC0);
    *(v22 + 32) = v23;
    sub_21CE1EF90(v22);
    swift_setDeallocating();
    sub_21CE27B98(v22 + 32);
    sub_21CE1EF90(MEMORY[0x277D84F90]);
    v24 = v2[4];
    if (v24)
    {
      [v24 setRemoteObjectInterface_];
    }

    v25 = [v38 interfaceWithProtocol_];
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_21CE6F420;
    *(v27 + 32) = v12;
    *(v27 + 40) = v37;
    *(v26 + 32) = v27;
    sub_21CE1EF90(v26);
    swift_setDeallocating();
    sub_21CE27B98(v26 + 32);
    sub_21CE1EF90(MEMORY[0x277D84F90]);
    v28 = v2[4];
    if (v28 && ([v28 setExportedObject_], (v29 = v2[4]) != 0) && (objc_msgSend(v29, sel_setExportedInterface_, v25), (v30 = v2[4]) != 0))
    {
      aBlock[4] = sub_21CE27C00;
      aBlock[5] = v2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21CE27C50;
      aBlock[3] = &block_descriptor_43;
      v31 = _Block_copy(aBlock);
      v32 = v30;

      [v32 setInvalidationHandler_];
      _Block_release(v31);

      v33 = v2[4];
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;
    [v34 resume];

    result = v2[4];
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21CE27B98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406D8, &qword_21CE721D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CE27C50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_21CE27CC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CE6CD30();
  (*(a2 + 16))(a2, v3);
}

void sub_21CE27D3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v4 = sub_21CE6CD30();
  (*(a2 + 16))(a2, v4);
}

uint64_t sub_21CE27DF8(id a1)
{
  v2 = v1;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v4 = [a1 description];
  v5 = sub_21CE6CC50();
  v7 = v6;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  __swift_project_value_buffer(v8, qword_27CE412C0);

  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CF30();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446978;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 24;
    *(v11 + 22) = 2082;
    v16 = sub_21CE6D2B0();
    v18 = sub_21CDF2CC8(v16, v17, &v22);

    *(v11 + 24) = v18;
    *(v11 + 32) = 2082;
    v19 = sub_21CDF2CC8(v5, v7, &v22);

    *(v11 + 34) = v19;
    _os_log_impl(&dword_21CDE1000, v9, v10, "%{public}s:%ld %{public}s %{public}s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v12, -1, -1);
    MEMORY[0x21CF1BD50](v11, -1, -1);
  }

  else
  {
  }

  v20 = *(v2 + 16);
  result = [v20 respondsToSelector_];
  if (result)
  {

    return [v20 openURL_];
  }

  return result;
}

uint64_t sub_21CE2814C(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

uint64_t sub_21CE28284()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21CE282BC()
{
  v1 = *(v0 + 16);
  aBlock[4] = sub_21CE283C4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CE18088;
  aBlock[3] = &block_descriptor_23;
  v2 = _Block_copy(aBlock);
  v3 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);
  sub_21CE6D190();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40818, &unk_21CE727C0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_21CE283C4()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  swift_getErrorValue();
  v0 = sub_21CE6D450();
  v2 = v1;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v3 = sub_21CE6BDA0();
  __swift_project_value_buffer(v3, qword_27CE412C0);

  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446978;
    v8 = sub_21CE6D2B0();
    v10 = sub_21CDF2CC8(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = 66;
    *(v6 + 22) = 2082;
    v11 = sub_21CE6D2B0();
    v13 = sub_21CDF2CC8(v11, v12, &v15);

    *(v6 + 24) = v13;
    *(v6 + 32) = 2082;
    v14 = sub_21CDF2CC8(v0, v2, &v15);

    *(v6 + 34) = v14;
    _os_log_impl(&dword_21CDE1000, v4, v5, "%{public}s:%ld %{public}s %{public}s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v7, -1, -1);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  else
  {
  }
}

Swift::Bool __swiftcall SettingsServiceScene.shouldAccept(connection:)(NSXPCConnection connection)
{
  v3 = *v1;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v4 = sub_21CE6BDA0();
  __swift_project_value_buffer(v4, qword_27CE412C0);
  v5 = sub_21CE6BD80();
  v6 = sub_21CE6CF30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23[0] = v8;
    *v7 = 136446978;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = 94;
    *(v7 + 22) = 2082;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, v23);

    *(v7 + 24) = v14;
    *(v7 + 32) = 2082;
    *(v7 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v23);
    _os_log_impl(&dword_21CDE1000, v5, v6, "%{public}s:%ld %{public}s %{public}s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v8, -1, -1);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  [(objc_class *)connection.super.isa setExportedObject:v3];
  v15 = objc_opt_self();
  v16 = [v15 interfaceWithProtocol_];
  [(objc_class *)connection.super.isa setExportedInterface:v16];

  v17 = [v15 interfaceWithProtocol_];
  [(objc_class *)connection.super.isa setRemoteObjectInterface:v17];

  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  v23[4] = sub_21CE28D24;
  v23[5] = v18;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_21CE27C50;
  v23[3] = &block_descriptor_4;
  v19 = _Block_copy(v23);
  swift_unknownObjectRetain();

  [(objc_class *)connection.super.isa setInvalidationHandler:v19];
  _Block_release(v19);
  [(objc_class *)connection.super.isa resume];
  type metadata accessor for SettingsServiceScene.RemoteObject();
  v20 = swift_allocObject();
  v20[2].super.isa = connection.super.isa;
  v21 = connection.super.isa;
  [v3 setServiceHost_];

  return 1;
}

id sub_21CE28A94(void *a1)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_27CE412C0);
  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CF30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446978;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 101;
    *(v5 + 22) = 2082;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, &v14);

    *(v5 + 24) = v12;
    *(v5 + 32) = 2082;
    *(v5 + 34) = sub_21CDF2CC8(0xD000000000000017, 0x800000021CE77390, &v14);
    _os_log_impl(&dword_21CDE1000, v3, v4, "%{public}s:%ld %{public}s %{public}s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v6, -1, -1);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  return [a1 setServiceHost_];
}

uint64_t SettingsServiceScene.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SettingsServiceScene.SettingsServiceProtocolDispatch();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

void sub_21CE28D84(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 16);
  if ([v5 respondsToSelector_])
  {
    aBlock[4] = sub_21CE29494;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21CE268E0;
    aBlock[3] = &block_descriptor_47;
    v6 = _Block_copy(aBlock);
    _Block_copy(a2);
    swift_unknownObjectRetain();

    [v5 getSidebarItems_];
    _Block_release(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    _Block_copy(a2);
    type metadata accessor for SidebarItem();
    v7 = sub_21CE6CD30();
    (a2)[2](a2, v7);
  }
}

void sub_21CE28F18(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 16);
  if ([v5 respondsToSelector_])
  {
    aBlock[4] = sub_21CE29464;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21CE270D8;
    aBlock[3] = &block_descriptor_41;
    v6 = _Block_copy(aBlock);
    _Block_copy(a2);
    swift_unknownObjectRetain();

    [v5 getSidebarSections_];
    _Block_release(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    _Block_copy(a2);
    type metadata accessor for SidebarSection();
    v7 = sub_21CE6CD30();
    (a2)[2](a2, v7);
  }
}

uint64_t sub_21CE290AC(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 16);
  if ([v5 respondsToSelector_])
  {
    v8[4] = sub_21CE29450;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_21CE26B04;
    v8[3] = &block_descriptor_35;
    v6 = _Block_copy(v8);
    _Block_copy(a2);
    swift_unknownObjectRetain();

    [v5 isAvailable_];
    _Block_release(v6);

    return swift_unknownObjectRelease();
  }

  else
  {
    _Block_copy(a2);
    a2[2](a2, 1);
  }
}

void sub_21CE2921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a5;
  v8 = *(a4 + 16);
  v9 = [v8 respondsToSelector_];
  _Block_copy(a5);
  if (v9)
  {
    swift_unknownObjectRetain();
    v10 = sub_21CE6CC20();
    v11 = sub_21CE6CD30();
    aBlock[4] = sub_21CE293F0;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21CE26DAC;
    aBlock[3] = &block_descriptor_29;
    v12 = _Block_copy(aBlock);

    [v8 filterSearchAnchorsForSidebarItem:v10 suggestedAnchors:v11 reply:v12];
    _Block_release(v12);

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_21CE6CD30();
    (a5)[2](a5, v13);
  }
}

void sub_21CE293F0()
{
  v1 = *(v0 + 16);
  v2 = sub_21CE6CD30();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_21CE294EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v13 = sub_21CE64BE8();
  if (v13)
  {
    v14 = v13;
    if (a2)
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_21CE6D290();

      v15 = [v14 bundleIdentifier];
      v16 = sub_21CE6CC50();
      v18 = v17;

      MEMORY[0x21CF1ACB0](v16, v18);

      MEMORY[0x21CF1ACB0](63, 0xE100000000000000);
      MEMORY[0x21CF1ACB0](a1, a2);
      sub_21CE6BA40();

      v19 = sub_21CE6BA60();
      v20 = *(v19 - 8);
      result = (*(v20 + 48))(v12, 1, v19);
      if (result != 1)
      {

        (*(v20 + 32))(a3, v12, v19);
        return (*(v20 + 56))(a3, 0, 1, v19);
      }

      __break(1u);
    }

    else
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_21CE6D290();

      v35 = [v14 bundleIdentifier];
      v36 = sub_21CE6CC50();
      v38 = v37;

      MEMORY[0x21CF1ACB0](v36, v38);

      sub_21CE6BA40();

      v39 = sub_21CE6BA60();
      v40 = *(v39 - 8);
      result = (*(v40 + 48))(v10, 1, v39);
      if (result != 1)
      {

        (*(v40 + 32))(a3, v10, v39);
        return (*(v40 + 56))(a3, 0, 1, v39);
      }
    }

    __break(1u);
  }

  else
  {
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v22 = sub_21CE6BDA0();
    __swift_project_value_buffer(v22, qword_27CE412C0);
    v23 = sub_21CE6BD80();
    v24 = sub_21CE6CF10();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = 136446978;
      v27 = sub_21CE6D2B0();
      v29 = sub_21CDF2CC8(v27, v28, &v41);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2048;
      *(v25 + 14) = 26;
      *(v25 + 22) = 2082;
      v30 = sub_21CE6D2B0();
      v32 = sub_21CDF2CC8(v30, v31, &v41);

      *(v25 + 24) = v32;
      *(v25 + 32) = 2082;
      *(v25 + 34) = sub_21CDF2CC8(0xD000000000000019, 0x800000021CE77AC0, &v41);
      _os_log_impl(&dword_21CDE1000, v23, v24, "%{public}s:%ld %{public}s %{public}s", v25, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v26, -1, -1);
      MEMORY[0x21CF1BD50](v25, -1, -1);
    }

    v33 = sub_21CE6BA60();
    v34 = *(*(v33 - 8) + 56);

    return v34(a3, 1, 1, v33);
  }

  return result;
}

uint64_t SettingsUndoAction.init(_:url:undoAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v8 = sub_21CE6B960();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v24 = sub_21CE6CC70();
  v13 = v12;
  v14 = type metadata accessor for SettingsUndoAction();
  v15 = v14[5];
  v16 = sub_21CE6BA60();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a5 + v15, a2, v16);
  v18 = a5 + v14[6];
  sub_21CE6B4A0();
  (*(v17 + 8))(a2, v16);
  result = (*(v9 + 8))(a1, v8);
  v20 = v25;
  *a5 = v24;
  a5[1] = v13;
  v21 = (a5 + v14[7]);
  v22 = v26;
  *v21 = v20;
  v21[1] = v22;
  return result;
}

uint64_t SettingsUndoAction.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SettingsUndoAction.deepLink.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsUndoAction() + 20);
  v4 = sub_21CE6BA60();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SettingsUndoAction.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsUndoAction() + 24);
  v4 = sub_21CE6BAF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SettingsUndoAction.init(verbatim:deepLink:undoAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for SettingsUndoAction();
  v13 = &a6[v12[6]];
  sub_21CE6B4A0();
  *a6 = a1;
  *(a6 + 1) = a2;
  v14 = v12[5];
  v15 = sub_21CE6BA60();
  result = (*(*(v15 - 8) + 32))(&a6[v14], a3, v15);
  v17 = &a6[v12[7]];
  *v17 = a4;
  *(v17 + 1) = a5;
  return result;
}

uint64_t type metadata accessor for SettingsUndoAction()
{
  result = qword_27CE40820;
  if (!qword_27CE40820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CE29E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_21CE6BAF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_21CE29EEC()
{
  result = sub_21CE6BA60();
  if (v1 <= 0x3F)
  {
    result = sub_21CE6BAF0();
    if (v2 <= 0x3F)
    {
      result = sub_21CE00D24();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21CE29FFC()
{
  v1 = OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_id;
  v2 = sub_21CE6BAF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_actions);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CE2A0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_id;
  v5 = sub_21CE6BAF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_21CE2A124(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD78, &qword_21CE6F5D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v49[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40850, &unk_21CE72910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49[-1] - v10;
  v12 = type metadata accessor for SettingsUndoAction();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = &type metadata for SettingsFrameworkFeatureFlags;
  v49[4] = sub_21CE0F8AC();
  v17 = sub_21CE6BC00();
  __swift_destroy_boxed_opaque_existential_1(v49);
  if (v17)
  {
    v18 = v1[3];
    if (!v18)
    {
      sub_21CE0F900(a1, v11);
      (*(v13 + 56))(v11, 0, 1, v12);
      v24 = *(v3 + 48);
      sub_21CE2B8D4(v11, v7, &qword_27CE40850, &unk_21CE72910);
      *&v7[v24] = 0;
      swift_beginAccess();
      v25 = v1[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[4] = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_21CDF26A0(0, v25[2] + 1, 1, v25);
        v1[4] = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_21CDF26A0(v27 > 1, v28 + 1, 1, v25);
      }

      v25[2] = v28 + 1;
      sub_21CE2B8D4(v7, v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28, &qword_27CE3FD78, &qword_21CE6F5D8);
      v1[4] = v25;
      swift_endAccess();
      v29 = v1[5];
      if (v29)
      {
        v30 = *(v29 + 16);
        if (!v30 || ([*(v29 + 16) respondsToSelector_] & 1) == 0)
        {
          return;
        }

        v31 = *a1;
        v32 = a1[1];
        v33 = *(v12 + 24);

        swift_unknownObjectRetain();
        sub_21CE6BAD0();
        v34 = a1 + *(v12 + 20);
        sub_21CE6B980();
        v35 = sub_21CE6CC20();
        v36 = sub_21CE6CC20();

        v37 = sub_21CE6CC20();

        [v30 registerUndoActionWithLabel:v35 uuid:v36 urlString:v37];

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_27CE3FA30 != -1)
        {
          swift_once();
        }

        if (qword_27CE3FA38 != -1)
        {
          swift_once();
        }

        v38 = sub_21CE6BDA0();
        __swift_project_value_buffer(v38, qword_27CE412C0);
        v37 = sub_21CE6BD80();
        v39 = sub_21CE6CF10();
        if (os_log_type_enabled(v37, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v49[0] = v41;
          *v40 = 136446978;
          v42 = sub_21CE6D2B0();
          v44 = sub_21CDF2CC8(v42, v43, v49);

          *(v40 + 4) = v44;
          *(v40 + 12) = 2048;
          *(v40 + 14) = 149;
          *(v40 + 22) = 2082;
          v45 = sub_21CE6D2B0();
          v47 = sub_21CDF2CC8(v45, v46, v49);

          *(v40 + 24) = v47;
          *(v40 + 32) = 2082;
          *(v40 + 34) = sub_21CDF2CC8(0xD000000000000036, 0x800000021CE77D90, v49);
          _os_log_impl(&dword_21CDE1000, v37, v39, "%{public}s:%ld %{public}s %{public}s", v40, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x21CF1BD50](v41, -1, -1);
          MEMORY[0x21CF1BD50](v40, -1, -1);
        }
      }

      return;
    }

    sub_21CE0F900(a1, v16);
    v19 = OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_actions;
    swift_beginAccess();
    v20 = *(v18 + v19);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    *(v18 + v19) = v20;
    if ((v21 & 1) == 0)
    {
      v20 = sub_21CDF249C(0, v20[2] + 1, 1, v20);
      *(v18 + v19) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_21CDF249C(v22 > 1, v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    sub_21CE0F964(v16, v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23);
    *(v18 + v19) = v20;
    swift_endAccess();
  }
}

uint64_t sub_21CE2A768()
{
  v1 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_27CE412C0);
  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CEF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315906;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 161;
    *(v5 + 22) = 2080;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, v16);

    *(v5 + 24) = v12;
    *(v5 + 32) = 2080;
    *(v5 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v16);
    _os_log_impl(&dword_21CDE1000, v3, v4, "%s:%ld %s %s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v6, -1, -1);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  swift_beginAccess();
  v13 = *(v1 + 32);
  *(v1 + 32) = MEMORY[0x277D84F90];

  v14 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void sub_21CE2A994()
{
  v1 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_27CE412C0);
  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CEF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315906;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, &v22);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 168;
    *(v5 + 22) = 2080;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, &v22);

    *(v5 + 24) = v12;
    *(v5 + 32) = 2080;
    *(v5 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v22);
    _os_log_impl(&dword_21CDE1000, v3, v4, "%s:%ld %s %s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v6, -1, -1);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  v13 = *(v1 + 24);
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_nestedGroupCount);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v13 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_nestedGroupCount) = v16;
    }
  }

  else
  {
    v17 = type metadata accessor for SettingsUndoManager.UndoGroup();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    sub_21CE6B4A0();
    *(v20 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_actions) = MEMORY[0x277D84F90];
    *(v20 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_nestedGroupCount) = 1;
    v21 = *(v1 + 24);
    *(v1 + 24) = v20;
  }
}

void sub_21CE2AC30()
{
  v1 = v0;
  v2 = sub_21CE6BA60();
  v86 = *(v2 - 8);
  v87 = v2;
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v2);
  v85 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CE6BAF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD78, &qword_21CE6F5D8);
  v89 = *(v10 - 8);
  isa = v89[8].isa;
  MEMORY[0x28223BE20](v10);
  v13 = &v81 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40850, &unk_21CE72910);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v81 - v16);
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v18 = sub_21CE6BDA0();
  v19 = __swift_project_value_buffer(v18, qword_27CE412C0);
  v20 = sub_21CE6BD80();
  v21 = sub_21CE6CEF0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v84 = v13;
    v23 = v22;
    v24 = swift_slowAlloc();
    v88 = v1;
    v25 = v24;
    v90[0] = v24;
    *v23 = 136315906;
    v26 = sub_21CE6D2B0();
    v82 = v5;
    v83 = v9;
    v28 = v10;
    v29 = sub_21CDF2CC8(v26, v27, v90);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2048;
    *(v23 + 14) = 179;
    *(v23 + 22) = 2080;
    v30 = sub_21CE6D2B0();
    v32 = sub_21CDF2CC8(v30, v31, v90);
    v10 = v28;

    *(v23 + 24) = v32;
    v5 = v82;
    v9 = v83;
    *(v23 + 32) = 2080;
    *(v23 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v90);
    _os_log_impl(&dword_21CDE1000, v20, v21, "%s:%ld %s %s", v23, 0x2Au);
    swift_arrayDestroy();
    v33 = v25;
    v1 = v88;
    MEMORY[0x21CF1BD50](v33, -1, -1);
    v34 = v23;
    v13 = v84;
    MEMORY[0x21CF1BD50](v34, -1, -1);
  }

  v35 = v1[3];
  if (v35)
  {
    v36 = *(v35 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_nestedGroupCount);
    v37 = __OFSUB__(v36, 1);
    v38 = v36 - 1;
    if (v37)
    {
      __break(1u);
    }

    else
    {
      *(v35 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_nestedGroupCount) = v38;
      if (v38)
      {
        return;
      }

      v39 = type metadata accessor for SettingsUndoAction();
      v84 = *(v39 - 8);
      v40 = *(v84 + 7);
      v83 = v39;
      v40(v17, 1, 1);
      v41 = *(v10 + 48);
      sub_21CE2B8D4(v17, v13, &qword_27CE40850, &unk_21CE72910);
      *&v13[v41] = v35;
      swift_beginAccess();
      v17 = v1[4];
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[4] = v17;
      v19 = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }
    }

    v17 = sub_21CDF26A0(0, v17[2] + 1, 1, v17);
    v1[4] = v17;
LABEL_11:
    v44 = v17[2];
    v43 = v17[3];
    if (v44 >= v43 >> 1)
    {
      v17 = sub_21CDF26A0(v43 > 1, v44 + 1, 1, v17);
    }

    v17[2] = v44 + 1;
    sub_21CE2B8D4(v19, v17 + ((LOBYTE(v89[10].isa) + 32) & ~LOBYTE(v89[10].isa)) + v89[9].isa * v44, &qword_27CE3FD78, &qword_21CE6F5D8);
    v1[4] = v17;
    swift_endAccess();
    v45 = v1[5];
    if (v45)
    {
      v46 = *(v45 + 16);
      if (v46 && ([*(v45 + 16) respondsToSelector_] & 1) != 0)
      {
        v47 = OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_actions;
        swift_beginAccess();
        v48 = *(v35 + v47);
        v49 = *(v48 + 16);
        v88 = v1;
        if (v49)
        {
          v50 = v48 + ((v84[80] + 32) & ~v84[80]) + *(v84 + 9) * (v49 - 1);
          v51 = *(v50 + 8);
          v89 = *v50;
        }

        else
        {
          v89 = 0;
        }

        (*(v6 + 16))(v9, v35 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_id, v5);

        swift_unknownObjectRetain();
        sub_21CE6BAD0();
        (*(v6 + 8))(v9, v5);
        v72 = *(v35 + v47);
        v73 = *(v72 + 16);
        if (v73)
        {
          v75 = v86;
          v74 = v87;
          v76 = v85;
          (*(v86 + 16))(v85, v72 + ((v84[80] + 32) & ~v84[80]) + *(v84 + 9) * (v73 - 1) + *(v83 + 5), v87);
          sub_21CE6B980();
          (*(v75 + 8))(v76, v74);
        }

        v77 = sub_21CE6CC20();

        v78 = sub_21CE6CC20();

        v79 = sub_21CE6CC20();

        [v46 registerUndoActionWithLabel:v77 uuid:v78 urlString:v79];

        swift_unknownObjectRelease();

        v1 = v88;
      }

      else
      {
      }

      v80 = v1[3];
      v1[3] = 0;
    }

    else
    {
      v62 = sub_21CE6BD80();
      v63 = sub_21CE6CF10();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v90[0] = v65;
        *v64 = 136446978;
        v66 = sub_21CE6D2B0();
        v68 = sub_21CDF2CC8(v66, v67, v90);

        *(v64 + 4) = v68;
        *(v64 + 12) = 2048;
        *(v64 + 14) = 193;
        *(v64 + 22) = 2082;
        v69 = sub_21CE6D2B0();
        v71 = sub_21CDF2CC8(v69, v70, v90);

        *(v64 + 24) = v71;
        *(v64 + 32) = 2082;
        *(v64 + 34) = sub_21CDF2CC8(0xD000000000000031, 0x800000021CE77D30, v90);
        _os_log_impl(&dword_21CDE1000, v62, v63, "%{public}s:%ld %{public}s %{public}s", v64, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x21CF1BD50](v65, -1, -1);
        MEMORY[0x21CF1BD50](v64, -1, -1);
      }
    }

    return;
  }

  v89 = sub_21CE6BD80();
  v52 = sub_21CE6CF10();
  if (os_log_type_enabled(v89, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v90[0] = v54;
    *v53 = 136446978;
    v55 = sub_21CE6D2B0();
    v57 = sub_21CDF2CC8(v55, v56, v90);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2048;
    *(v53 + 14) = 182;
    *(v53 + 22) = 2082;
    v58 = sub_21CE6D2B0();
    v60 = sub_21CDF2CC8(v58, v59, v90);

    *(v53 + 24) = v60;
    *(v53 + 32) = 2082;
    *(v53 + 34) = sub_21CDF2CC8(0xD000000000000038, 0x800000021CE77CF0, v90);
    _os_log_impl(&dword_21CDE1000, v89, v52, "%{public}s:%ld %{public}s %{public}s", v53, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v54, -1, -1);
    MEMORY[0x21CF1BD50](v53, -1, -1);
  }

  else
  {
    v61 = v89;
  }
}

uint64_t sub_21CE2B6CC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SettingsUndoManager.UndoGroup()
{
  result = qword_27CE40840;
  if (!qword_27CE40840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CE2B78C()
{
  result = sub_21CE6BAF0();
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

uint64_t sub_21CE2B8D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21CE2B978@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_21CE2B9D0()
{
  v0 = sub_21CE6BBC0();
  __swift_allocate_value_buffer(v0, qword_27CE40858);
  __swift_project_value_buffer(v0, qword_27CE40858);
  return sub_21CE6BBB0();
}

uint64_t static Role.sidebar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3F9D8 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BBC0();
  v3 = __swift_project_value_buffer(v2, qword_27CE40858);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21CE2BADC()
{
  v1 = *(v0 + 16);
  aBlock[4] = sub_21CE2BBE4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CE18088;
  aBlock[3] = &block_descriptor_96;
  v2 = _Block_copy(aBlock);
  v3 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);
  sub_21CE6D190();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40A48, &qword_21CE72DD0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_21CE2BBE4()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  swift_getErrorValue();
  v0 = sub_21CE6D450();
  v2 = v1;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v3 = sub_21CE6BDA0();
  __swift_project_value_buffer(v3, qword_27CE412C0);

  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446978;
    v8 = sub_21CE6D2B0();
    v10 = sub_21CDF2CC8(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = 37;
    *(v6 + 22) = 2082;
    v11 = sub_21CE6D2B0();
    v13 = sub_21CDF2CC8(v11, v12, &v15);

    *(v6 + 24) = v13;
    *(v6 + 32) = 2082;
    v14 = sub_21CDF2CC8(v0, v2, &v15);

    *(v6 + 34) = v14;
    _os_log_impl(&dword_21CDE1000, v4, v5, "%{public}s:%ld %{public}s %{public}s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v7, -1, -1);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21CE2BE44(uint64_t a1, uint64_t a2, void *a3)
{

  v4 = a3;
  v5 = sub_21CE2BADC();
  if (v5)
  {
    [v5 navigationSubtitleDidChange_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21CE2BEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_21CE6CC50();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_21CE2BADC();
  if (v5)
  {
    v6 = v5;
    if (v4)
    {
      v7 = sub_21CE6CC20();
    }

    else
    {
      v7 = 0;
    }

    [v6 navigationTitleDidChange_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_21CE2BFA4(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v5 = a3;

  v6 = sub_21CE2BADC();
  if (v6)
  {
    [v6 *a4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21CE2C018(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  v4 = sub_21CE2BADC();
  if (v4)
  {
    [v4 signalWithMilestone_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_21CE2C094(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;

  v7 = sub_21CE2BADC();
  if (v7)
  {
    [v7 signalWithExtensionID:v5 milestone:v6];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_21CE2C128(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v11 = a5;

  v9 = sub_21CE2BADC();
  if (v9)
  {
    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      [v10 registerUndoActionWithLabel:v7 uuid:v8 urlString:v11];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_21CE2C1F0()
{

  v0 = sub_21CE2BADC();
  if (v0)
  {
    v1 = v0;
    if ([v0 respondsToSelector_])
    {
      [v1 removeAllUndoActions];
    }

    swift_unknownObjectRelease();
  }
}

void sub_21CE2C268(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (a5)
  {
    v7 = a3;
    v8 = a4;

    v9 = a5;
    v10 = sub_21CE6BA90();
    v12 = v11;

    v13 = sub_21CE2BADC();
    if (v13)
    {
      v14 = v13;
      if (v12 >> 60 != 15)
      {
        v15 = sub_21CE6BA70();
LABEL_8:
        [v14 updateAccessoryViewForExtensionIdentifier:a3 sceneName:a4 with:v15];

        sub_21CE16800(v10, v12);

        swift_unknownObjectRelease();
        return;
      }

LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v16 = a3;
    v17 = a4;

    v18 = sub_21CE2BADC();
    v12 = 0xF000000000000000;
    if (v18)
    {
      v14 = v18;
      v10 = 0;
      goto LABEL_7;
    }

    v10 = 0;
  }

  sub_21CE16800(v10, v12);
}

uint64_t sub_21CE2C3D4()
{
  type metadata accessor for XPCConnection.ConnectionAndRemoteObjectManager();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  qword_27CE40870 = result;
  return result;
}

uint64_t sub_21CE2C410(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for XPCConnection.RemoteHostObject();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  swift_beginAccess();
  v7 = a1;
  v8 = 0;
  sub_21CE318E4((v3 + 16));
  v10 = *(*(v3 + 16) + 16);
  if (v10 < v9)
  {
    __break(1u);
  }

  else
  {
    sub_21CE31748(v9, v10);
    a1 = *(v3 + 16);
    v8 = v7;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = a1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a1 = sub_21CDF29B8(0, a1[2] + 1, 1, a1);
  *(v3 + 16) = a1;
LABEL_3:
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12 >> 1)
  {
    a1 = sub_21CDF29B8((v12 > 1), v13 + 1, 1, a1);
  }

  a1[2] = v13 + 1;
  v14 = &a1[2 * v13];
  v14[4] = v8;
  v14[5] = v6;
  *(v3 + 16) = a1;
  swift_endAccess();
  if (a2)
  {
    [a2 setSettingsHost_];
  }

  return v6;
}

void sub_21CE2C568(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  if (a2)
  {
    v29 = v9;
    swift_beginAccess();
    v30 = a2;
    v31 = v3;
    v10 = *(v3 + 16);
    v11 = *(v10 + 16);
    swift_unknownObjectRetain();

    if (v11)
    {
      v12 = 0;
      v13 = (v10 + 40);
      while (1)
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v14 = *(v13 - 1);
        v15 = *v13;
        sub_21CDE40C8(0, qword_281211808, 0x277D82BB8);
        v16 = v14;

        if (sub_21CE6D110())
        {
          break;
        }

        ++v12;
        v13 += 2;
        if (v11 == v12)
        {
          goto LABEL_7;
        }
      }

      v17 = v30;
      v18 = [v30 settingsHost];
      if (v18)
      {
        v19 = v18;
        swift_unknownObjectRelease();

        v3 = v31;
        if (v15 == v19)
        {
          [v17 setSettingsHost_];
          v20 = sub_21CE6CE20();
          v21 = v29;
          (*(*(v20 - 8) + 56))(v29, 1, 1, v20);
          sub_21CE6CDE0();
          swift_unknownObjectRetain();
          v22 = sub_21CE6CDD0();
          v23 = swift_allocObject();
          v24 = MEMORY[0x277D85700];
          v23[2] = v22;
          v23[3] = v24;
          v23[4] = v17;
          sub_21CE12224(0, 0, v21, &unk_21CE72DC0, v23);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();

        v3 = v31;
      }
    }

    else
    {
LABEL_7:
      swift_unknownObjectRelease();

      v3 = v31;
    }
  }

  swift_beginAccess();
  v25 = a1;
  sub_21CE318E4((v3 + 16));
  v27 = v26;

  v28 = *(*(v3 + 16) + 16);
  if (v28 < v27)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    sub_21CE31748(v27, v28);
    swift_endAccess();
  }
}

uint64_t sub_21CE2C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_21CE6CDE0();
  v4[4] = sub_21CE6CDD0();
  v6 = sub_21CE6CDB0();

  return MEMORY[0x2822009F8](sub_21CE2C920, v6, v5);
}

uint64_t sub_21CE2C920()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = [v2 respondsToSelector_];
  if (v3)
  {
    [*(v0 + 24) didUnselect];
  }

  **(v0 + 16) = (v3 & 1) == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21CE2C9BC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21CE2C9F4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  sub_21CE6D290();

  aBlock = 0x203A6C65646F6DLL;
  v53 = 0xE700000000000000;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40718, &qword_21CE72200);
  v7 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v7);

  MEMORY[0x21CF1ACB0](0x6F73736563636120, 0xEC000000203A7972);
  v58 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40A58, &qword_21CE72E08);
  v8 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v8);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v9 = sub_21CE6BDA0();
  __swift_project_value_buffer(v9, qword_27CE412C0);

  v10 = sub_21CE6BD80();
  v11 = sub_21CE6CEF0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136315906;
    v14 = sub_21CE6D2B0();
    v49 = v4;
    v16 = sub_21CDF2CC8(v14, v15, &aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    *(v12 + 14) = 146;
    *(v12 + 22) = 2080;
    v17 = sub_21CE6D2B0();
    v19 = sub_21CDF2CC8(v17, v18, &aBlock);

    *(v12 + 24) = v19;
    v4 = v49;
    *(v12 + 32) = 2080;
    v20 = sub_21CDF2CC8(0x203A6C65646F6DLL, 0xE700000000000000, &aBlock);

    *(v12 + 34) = v20;
    _os_log_impl(&dword_21CDE1000, v10, v11, "%s:%ld %s %s", v12, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v13, -1, -1);
    MEMORY[0x21CF1BD50](v12, -1, -1);

    if (a2)
    {
LABEL_7:
      swift_unknownObjectRetain();
      [a1 setExportedObject_];
      v21 = objc_opt_self();
      v22 = [v21 interfaceWithProtocol_];
      [a1 setExportedInterface_];

      v23 = [v21 interfaceWithProtocol_];
      [a1 setRemoteObjectInterface_];

      if (qword_27CE3F9E0 != -1)
      {
        swift_once();
      }

      swift_unknownObjectRetain();
      v24 = sub_21CE2C410(a1, a2);
      swift_unknownObjectRelease_n();
      v25 = *(v4 + 16);
      *(v4 + 16) = v24;
      *(v4 + 24) = &off_282E81888;
      swift_unknownObjectRelease();
      goto LABEL_13;
    }
  }

  else
  {

    if (a2)
    {
      goto LABEL_7;
    }
  }

  if (a3)
  {
    swift_unknownObjectRetain();
    [a1 setExportedObject_];
    v26 = [objc_opt_self() interfaceWithProtocol_];
    [a1 setExportedInterface_];
    swift_unknownObjectRelease();
  }

LABEL_13:
  aBlock = 0;
  v53 = 0xE000000000000000;
  sub_21CE6D290();

  aBlock = 0x6E6E6F632077654ELL;
  v53 = 0xEF206E6F69746365;
  v27 = [a1 description];
  v28 = sub_21CE6CC50();
  v30 = v29;

  MEMORY[0x21CF1ACB0](v28, v30);

  v32 = aBlock;
  v31 = v53;

  v33 = sub_21CE6BD80();
  v34 = sub_21CE6CF30();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v50 = a1;
    v36 = swift_slowAlloc();
    aBlock = v36;
    *v35 = 136446978;
    v37 = sub_21CE6D2B0();
    v39 = sub_21CDF2CC8(v37, v38, &aBlock);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2048;
    *(v35 + 14) = 159;
    *(v35 + 22) = 2082;
    v40 = sub_21CE6D2B0();
    v42 = sub_21CDF2CC8(v40, v41, &aBlock);

    *(v35 + 24) = v42;
    *(v35 + 32) = 2082;
    v43 = sub_21CDF2CC8(v32, v31, &aBlock);

    *(v35 + 34) = v43;
    _os_log_impl(&dword_21CDE1000, v33, v34, "%{public}s:%ld %{public}s %{public}s", v35, 0x2Au);
    swift_arrayDestroy();
    v44 = v36;
    a1 = v50;
    MEMORY[0x21CF1BD50](v44, -1, -1);
    MEMORY[0x21CF1BD50](v35, -1, -1);
  }

  else
  {
  }

  v45 = swift_allocObject();
  *(v45 + 16) = a1;
  *(v45 + 24) = a2;
  v56 = sub_21CE328B4;
  v57 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_21CE27C50;
  v55 = &block_descriptor_126;
  v46 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v47 = a1;

  [v47 setInvalidationHandler_];
  _Block_release(v46);
  [v47 resume];
  return 1;
}

void sub_21CE2D184(void *a1, void *a2)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  sub_21CE6D290();

  v24[0] = 0xD000000000000017;
  v24[1] = 0x800000021CE78290;
  v4 = a1;
  v5 = [v4 description];
  v6 = sub_21CE6CC50();
  v8 = v7;

  MEMORY[0x21CF1ACB0](v6, v8);

  MEMORY[0x21CF1ACB0](0x3A6C65646F6D202CLL, 0xE900000000000020);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40718, &qword_21CE72200);
  v9 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v9);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v10 = sub_21CE6BDA0();
  __swift_project_value_buffer(v10, qword_27CE412C0);

  v11 = sub_21CE6BD80();
  v12 = sub_21CE6CF30();

  if (os_log_type_enabled(v11, v12))
  {
    v23 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136446978;
    v15 = sub_21CE6D2B0();
    v17 = sub_21CDF2CC8(v15, v16, v24);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = 162;
    *(v13 + 22) = 2082;
    v18 = sub_21CE6D2B0();
    v20 = sub_21CDF2CC8(v18, v19, v24);

    *(v13 + 24) = v20;
    *(v13 + 32) = 2082;
    v21 = sub_21CDF2CC8(0xD000000000000017, 0x800000021CE78290, v24);

    *(v13 + 34) = v21;
    _os_log_impl(&dword_21CDE1000, v11, v12, "%{public}s:%ld %{public}s %{public}s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v14, -1, -1);
    v22 = v13;
    a2 = v23;
    MEMORY[0x21CF1BD50](v22, -1, -1);
  }

  else
  {
  }

  if (qword_27CE3F9E0 != -1)
  {
    swift_once();
  }

  sub_21CE2C568(v4, a2);
}

uint64_t sub_21CE2D4E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21CE2D56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21CE6CDE0();
  v5[4] = sub_21CE6CDD0();
  v7 = sub_21CE6CDB0();

  return MEMORY[0x2822009F8](sub_21CE2D604, v7, v6);
}

uint64_t sub_21CE2D604()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v3(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_21CE2D670()
{
  sub_21CE6D290();
  MEMORY[0x21CF1ACB0](0xD00000000000001ALL, 0x800000021CE78110);
  sub_21CE6D340();
  MEMORY[0x21CF1ACB0](0x3A74656772617420, 0xE900000000000020);
  v2 = *(v0 + 16);
  sub_21CE6D340();
  return 0;
}

id sub_21CE2D75C()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAB00]) init];
  qword_27CE40878 = result;
  return result;
}

uint64_t sub_21CE2D824(uint64_t a1)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_27CE412C0);
  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CF30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136446978;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 256;
    *(v5 + 22) = 2082;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, v16);

    *(v5 + 24) = v12;
    *(v5 + 32) = 2082;
    *(v5 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v16);
    _os_log_impl(&dword_21CDE1000, v3, v4, "%{public}s:%ld %{public}s %{public}s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v6, -1, -1);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  v13 = *(a1 + 16);
  if ([v13 respondsToSelector_])
  {
    [v13 willSelect];
  }

  result = [v13 respondsToSelector_];
  if (result)
  {
    v16[4] = nullsub_1;
    v16[5] = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_21CE27C50;
    v16[3] = &block_descriptor_5;
    v15 = _Block_copy(v16);
    [v13 willSelect_];
    _Block_release(v15);
  }

  return result;
}

uint64_t sub_21CE2DAFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    sub_21CE2DCD8(v3, a1, a2);
  }

  else
  {
    v13 = sub_21CE6CE20();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_21CE6CDE0();

    v14 = sub_21CE6CDD0();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = sub_21CE32818;
    v15[5] = v10;
    sub_21CE11F34(0, 0, v9, &unk_21CE72DF8, v15);
  }
}

void sub_21CE2DCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = &off_278323000;
  if (([v5 respondsToSelector_] & 1) == 0)
  {
    sub_21CE2D7DC();
    return;
  }

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v24[0] = a2;
  v24[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40460, &qword_21CE72620);
  v7 = sub_21CE6CC80();
  v9 = v8;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v10 = sub_21CE6BDA0();
  __swift_project_value_buffer(v10, qword_27CE412C0);

  v11 = sub_21CE6BD80();
  v12 = sub_21CE6CF30();

  if (!os_log_type_enabled(v11, v12))
  {

    if (a3)
    {
      goto LABEL_8;
    }

LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v23 = v7;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v24[0] = v14;
  *v13 = 136447235;
  v15 = sub_21CE6D2B0();
  v17 = sub_21CDF2CC8(v15, v16, v24);

  *(v13 + 4) = v17;
  *(v13 + 12) = 2048;
  *(v13 + 14) = 268;
  *(v13 + 22) = 2082;
  v18 = sub_21CE6D2B0();
  v20 = sub_21CDF2CC8(v18, v19, v24);

  *(v13 + 24) = v20;
  *(v13 + 32) = 2160;
  *(v13 + 34) = 1752392040;
  *(v13 + 42) = 2081;
  v21 = sub_21CDF2CC8(v23, v9, v24);

  *(v13 + 44) = v21;
  v6 = &off_278323000;
  _os_log_impl(&dword_21CDE1000, v11, v12, "%{public}s:%ld %{public}s %{private,mask.hash}s", v13, 0x34u);
  swift_arrayDestroy();
  MEMORY[0x21CF1BD50](v14, -1, -1);
  MEMORY[0x21CF1BD50](v13, -1, -1);

  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = sub_21CE6CC20();
LABEL_12:
  [v5 v6[433]];
}

uint64_t sub_21CE2E030(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v1;
  v8 = objc_opt_self();

  v9 = a1;
  if ([v8 isMainThread])
  {
    sub_21CE2E1FC(v9, v1);
  }

  else
  {
    v11 = sub_21CE6CE20();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_21CE6CDE0();

    v12 = sub_21CE6CDD0();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = sub_21CE327B8;
    v13[5] = v7;
    sub_21CE11F34(0, 0, v6, &unk_21CE72DF0, v13);
  }
}

void sub_21CE2E1FC(id a1, uint64_t a2)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v4 = [a1 description];
  v5 = sub_21CE6CC50();
  v7 = v6;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  v9 = __swift_project_value_buffer(v8, qword_27CE412C0);

  v10 = sub_21CE6BD80();
  v11 = sub_21CE6CF30();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136446978;
    v14 = sub_21CE6D2B0();
    oslog = v9;
    v16 = v5;
    v17 = sub_21CDF2CC8(v14, v15, &v35);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    *(v12 + 14) = 285;
    *(v12 + 22) = 2082;
    v18 = sub_21CE6D2B0();
    v20 = sub_21CDF2CC8(v18, v19, &v35);

    *(v12 + 24) = v20;
    *(v12 + 32) = 2082;
    v21 = sub_21CDF2CC8(v16, v7, &v35);

    *(v12 + 34) = v21;
    _os_log_impl(&dword_21CDE1000, v10, v11, "%{public}s:%ld %{public}s %{public}s", v12, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v13, -1, -1);
    MEMORY[0x21CF1BD50](v12, -1, -1);
  }

  else
  {
  }

  v22 = *(a2 + 16);
  if ([v22 respondsToSelector_])
  {
    [v22 willSelectWithNavigationPath_];
    osloga = sub_21CE6BD80();
    v23 = sub_21CE6CF30();
    if (os_log_type_enabled(osloga, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v24 = 136446978;
      v26 = sub_21CE6D2B0();
      v28 = sub_21CDF2CC8(v26, v27, &v35);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2048;
      *(v24 + 14) = 289;
      *(v24 + 22) = 2082;
      v29 = sub_21CE6D2B0();
      v31 = sub_21CDF2CC8(v29, v30, &v35);

      *(v24 + 24) = v31;
      *(v24 + 32) = 2082;
      *(v24 + 34) = sub_21CDF2CC8(0xD000000000000021, 0x800000021CE78220, &v35);
      _os_log_impl(&dword_21CDE1000, osloga, v23, "%{public}s:%ld %{public}s %{public}s", v24, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v25, -1, -1);
      MEMORY[0x21CF1BD50](v24, -1, -1);
    }
  }

  else
  {
    osloga = *(a2 + 32);
    *(a2 + 32) = a1;
    v32 = a1;
  }
}

void sub_21CE2E65C()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6BDA0();
  __swift_project_value_buffer(v0, qword_27CE412C0);
  oslog = sub_21CE6BD80();
  v1 = sub_21CE6CF30();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v11 = v3;
    *v2 = 136446978;
    v4 = sub_21CE6D2B0();
    v6 = sub_21CDF2CC8(v4, v5, &v11);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2048;
    *(v2 + 14) = 298;
    *(v2 + 22) = 2082;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, &v11);

    *(v2 + 24) = v9;
    *(v2 + 32) = 2082;
    *(v2 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v11);
    _os_log_impl(&dword_21CDE1000, oslog, v1, "%{public}s:%ld %{public}s %{public}s", v2, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v3, -1, -1);
    MEMORY[0x21CF1BD50](v2, -1, -1);
  }
}

uint64_t sub_21CE2E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = v5;
  v16 = objc_opt_self();

  v17 = a5;
  if ([v16 isMainThread])
  {
    sub_21CE2EAC8(a1, a2, a3, a4, a5, v5);
  }

  else
  {
    v19 = sub_21CE6CE20();
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    sub_21CE6CDE0();

    v20 = sub_21CE6CDD0();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = sub_21CE326E8;
    v21[5] = v15;
    sub_21CE11F34(0, 0, v14, &unk_21CE72DD8, v21);
  }
}

void sub_21CE2EAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_21CE6D290();
  MEMORY[0x21CF1ACB0](a1, a2);
  MEMORY[0x21CF1ACB0](32, 0xE100000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40460, &qword_21CE72620);
  v10 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v10);

  MEMORY[0x21CF1ACB0](0xD000000000000011, 0x800000021CE78190);
  v11 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40A50, &qword_21CE72DE8);
  v12 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v12);

  MEMORY[0x21CF1ACB0](0x3A74656772617420, 0xE900000000000020);
  v13 = *(a6 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40A40, &qword_21CE72D98);
  sub_21CE6D340();
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v14 = sub_21CE6BDA0();
  __swift_project_value_buffer(v14, qword_27CE412C0);

  v15 = sub_21CE6BD80();
  v16 = sub_21CE6CF30();

  if (!os_log_type_enabled(v15, v16))
  {

    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v31 = v13;
  v17 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v32[0] = v30;
  *v17 = 136446978;
  v18 = sub_21CE6D2B0();
  v29 = 0;
  v20 = sub_21CDF2CC8(v18, v19, v32);

  *(v17 + 4) = v20;
  *(v17 + 12) = 2048;
  *(v17 + 14) = 319;
  *(v17 + 22) = 2082;
  v21 = sub_21CE6D2B0();
  v23 = sub_21CDF2CC8(v21, v22, v32);

  *(v17 + 24) = v23;
  *(v17 + 32) = 2082;
  v24 = sub_21CDF2CC8(0, 0xE000000000000000, v32);

  *(v17 + 34) = v24;
  _os_log_impl(&dword_21CDE1000, v15, v16, "%{public}s:%ld %{public}s %{public}s", v17, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x21CF1BD50](v30, -1, -1);
  v25 = v17;
  v13 = v31;
  MEMORY[0x21CF1BD50](v25, -1, -1);

  if (a5)
  {
LABEL_9:
    v26 = *(a6 + 32);
    *(a6 + 32) = a5;
    v27 = v11;
  }

LABEL_10:
  if ([v13 respondsToSelector_])
  {
    v28 = sub_21CE6CC20();
    [v13 willSelectWithSidebarItemWithUUID_];
  }
}

uint64_t sub_21CE2EF20(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = objc_opt_self();

  if ([v13 isMainThread])
  {
    a1(v8);
  }

  else
  {
    v15 = sub_21CE6CE20();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_21CE6CDE0();

    v16 = sub_21CE6CDD0();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = a3;
    v17[5] = v8;
    sub_21CE11F34(0, 0, v12, a4, v17);
  }
}

uint64_t sub_21CE2F0C0(uint64_t a1)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v2 = *(a1 + 16);
  v21[0] = v2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40A40, &qword_21CE72D98);
  v3 = sub_21CE6CC80();
  v5 = v4;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6BDA0();
  __swift_project_value_buffer(v6, qword_27CE412C0);

  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136446978;
    v11 = sub_21CE6D2B0();
    v13 = sub_21CDF2CC8(v11, v12, v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = 337;
    *(v9 + 22) = 2082;
    v14 = sub_21CE6D2B0();
    v16 = sub_21CDF2CC8(v14, v15, v21);

    *(v9 + 24) = v16;
    *(v9 + 32) = 2082;
    v17 = sub_21CDF2CC8(v3, v5, v21);

    *(v9 + 34) = v17;
    _os_log_impl(&dword_21CDE1000, v7, v8, "%{public}s:%ld %{public}s %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v10, -1, -1);
    MEMORY[0x21CF1BD50](v9, -1, -1);
  }

  else
  {
  }

  if ([v2 respondsToSelector_])
  {
    [v2 didUnselect];
  }

  v18 = *(a1 + 24);
  swift_beginAccess();
  v19 = *(v18 + 32);
  *(v18 + 32) = MEMORY[0x277D84F90];
}

uint64_t sub_21CE2F394(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_21CE2F3D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_21CE2F4B4(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  v9 = objc_opt_self();

  if (![v9 isMainThread])
  {
    v11 = sub_21CE6CE20();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_21CE6CDE0();

    v12 = sub_21CE6CDD0();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = sub_21CE313C4;
    v13[5] = v8;
    sub_21CE11F34(0, 0, v7, &unk_21CE72D80, v13);

    return;
  }

  v10 = *(v2 + 16);
  if ([v10 respondsToSelector_] & 1) != 0 && (objc_msgSend(v10, sel_respondsToSelector_, sel_isCloudSyncEnabled_))
  {
    [v10 setCloudSyncEnabled_];
LABEL_10:

    return;
  }

  sub_21CE321B4();
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = [objc_opt_self() sharedCloudSettingsManager];
  v19 = sub_21CE6CC20();

  [v16 setEnabled:a1 & 1 forStore:v19];

  v17 = v19;
}

void sub_21CE2F760(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if ([v3 respondsToSelector_] & 1) != 0 && (objc_msgSend(v3, sel_respondsToSelector_, sel_isCloudSyncEnabled_))
  {

    [v3 setCloudSyncEnabled_];
  }

  else
  {
    sub_21CE321B4();
    if (v4)
    {
      v5 = [objc_opt_self() sharedCloudSettingsManager];
      v6 = sub_21CE6CC20();

      [v5 setEnabled:a2 & 1 forStore:v6];
    }
  }
}

uint64_t sub_21CE2F8CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_21CE2F938(uint64_t a1, unint64_t a2)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  MEMORY[0x21CF1ACB0](0x203A746567726174, 0xE800000000000000);
  v4 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE404D8, &qword_21CE71D40);
  sub_21CE6D340();
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v5 = sub_21CE6BDA0();
  __swift_project_value_buffer(v5, qword_27CE412C0);

  v6 = sub_21CE6BD80();
  v7 = sub_21CE6CEF0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315906;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = 449;
    *(v8 + 22) = 2080;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, v18);

    *(v8 + 24) = v15;
    *(v8 + 32) = 2080;
    v16 = sub_21CDF2CC8(0, 0xE000000000000000, v18);

    *(v8 + 34) = v16;
    _os_log_impl(&dword_21CDE1000, v6, v7, "%s:%ld %s %s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v9, -1, -1);
    MEMORY[0x21CF1BD50](v8, -1, -1);
  }

  else
  {
  }

  if ([v4 respondsToSelector_])
  {
    if (a2 >> 60 == 15)
    {
      v17 = 0;
    }

    else
    {
      v17 = sub_21CE6BA70();
    }

    [v4 updateWith_];
  }
}

uint64_t sub_21CE2FC30(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a3)
  {

    v4 = v3;
    v3 = sub_21CE6BA90();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  sub_21CE2F938(v3, v6);
  sub_21CE16800(v3, v6);
}

uint64_t sub_21CE2FCB8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_21CE2FCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v34 = *a3;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v35[0] = 0x203A6C65646F6DLL;
  v35[1] = 0xE700000000000000;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40A60, &qword_21CE72E10);
  v9 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v9);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v10 = sub_21CE6BDA0();
  __swift_project_value_buffer(v10, qword_27CE412C0);

  v11 = sub_21CE6BD80();
  v12 = sub_21CE6CF30();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = a2;
    v32 = swift_slowAlloc();
    v35[0] = v32;
    *v13 = 136446978;
    v14 = sub_21CE6D2B0();
    v16 = a5;
    v17 = a4;
    v18 = sub_21CDF2CC8(v14, v15, v35);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2048;
    *(v13 + 14) = 459;
    *(v13 + 22) = 2082;
    v19 = sub_21CE6D2B0();
    v21 = sub_21CDF2CC8(v19, v20, v35);

    *(v13 + 24) = v21;
    a4 = v17;
    a5 = v16;
    *(v13 + 32) = 2082;
    v22 = sub_21CDF2CC8(0x203A6C65646F6DLL, 0xE700000000000000, v35);

    *(v13 + 34) = v22;
    _os_log_impl(&dword_21CDE1000, v11, v12, "%{public}s:%ld %{public}s %{public}s", v13, 0x2Au);
    swift_arrayDestroy();
    a2 = v33;
    MEMORY[0x21CF1BD50](v32, -1, -1);
    MEMORY[0x21CF1BD50](v13, -1, -1);
  }

  else
  {
  }

  type metadata accessor for XPCConnection();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  a5[3] = v23;
  if (a1)
  {
    v24 = v23;
    v25 = swift_unknownObjectRetain();
    v26 = sub_21CE31ABC(v25, v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0;
  }

  a5[1] = v26;
  v27 = 0;
  if (a2)
  {
    type metadata accessor for SettingsViewScene.SettingsAccessoryProtocolDispatch();
    v27 = swift_allocObject();
    *(v27 + 16) = a2;
  }

  a5[2] = v27;
  type metadata accessor for SettingsViewSceneOptions();
  v28 = swift_allocObject();
  *(v28 + 32) = 1;
  *(v28 + 16) = v34;
  *(v28 + 24) = 0;
  *a5 = v28;
  v29 = *(type metadata accessor for SettingsViewScene() + 48);
  v30 = swift_unknownObjectRetain();
  a4(v30);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t SettingsViewScene.init(_:_:)@<X0>(void (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v4 = swift_unknownObjectRetain();
  v6 = 0;
  sub_21CE2FCEC(v4, 0, &v6, a1, a2);

  return swift_unknownObjectRelease();
}

{
  swift_unknownObjectRelease();
  v5 = 0;
  return sub_21CE2FCEC(0, 0, &v5, a1, a2);
}

uint64_t SettingsViewScene.init(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  swift_unknownObjectRetain();
  v7 = 0;
  sub_21CE2FCEC(0, a1, &v7, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t SettingsViewScene.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + 16);
  v10(v9, v2 + *(v7 + 48), v4);
  v10(a2, v9, v4);
  return (*(v5 + 8))(v9, v4);
}

Swift::Bool __swiftcall SettingsViewScene.shouldAccept(connection:)(NSXPCConnection connection)
{
  v2 = v1;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v4 = sub_21CE6BDA0();
  __swift_project_value_buffer(v4, qword_27CE412C0);
  v5 = sub_21CE6BD80();
  v6 = sub_21CE6CF30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446978;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = 532;
    *(v7 + 22) = 2082;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, &v20);

    *(v7 + 24) = v14;
    *(v7 + 32) = 2082;
    *(v7 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v20);
    _os_log_impl(&dword_21CDE1000, v5, v6, "%{public}s:%ld %{public}s %{public}s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v8, -1, -1);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  v15 = *(v2 + 8);
  v18 = v2 + 16;
  v17 = *(v2 + 16);
  v16 = *(v18 + 8);

  sub_21CE2C9F4(connection.super.isa, v15, v17);

  return 1;
}

void SettingsViewScene.consume(initializationParameters:)()
{
  v1 = v0;
  type metadata accessor for InitializationParameters();
  v2 = sub_21CE6BBA0();
  if (!v2)
  {
    return;
  }

  v34 = v2;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  sub_21CE6D290();

  v35[0] = 0xD00000000000001ALL;
  v35[1] = 0x800000021CE77E40;
  v3 = [v34 description];
  v4 = sub_21CE6CC50();
  v6 = v5;

  MEMORY[0x21CF1ACB0](v4, v6);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v7 = sub_21CE6BDA0();
  __swift_project_value_buffer(v7, qword_27CE412C0);

  v8 = sub_21CE6BD80();
  v9 = sub_21CE6CF30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35[0] = v11;
    *v10 = 136447235;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, v35);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = 538;
    *(v10 + 22) = 2082;
    v15 = sub_21CE6D2B0();
    v17 = sub_21CDF2CC8(v15, v16, v35);

    *(v10 + 24) = v17;
    *(v10 + 32) = 2160;
    *(v10 + 34) = 1752392040;
    *(v10 + 42) = 2081;
    v18 = sub_21CDF2CC8(0xD00000000000001ALL, 0x800000021CE77E40, v35);

    *(v10 + 44) = v18;
    _os_log_impl(&dword_21CDE1000, v8, v9, "%{public}s:%ld %{public}s %{private,mask.hash}s", v10, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v11, -1, -1);
    MEMORY[0x21CF1BD50](v10, -1, -1);
  }

  else
  {
  }

  v19 = *v1;
  v20 = v34[OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth + 8];
  *(v19 + 24) = *&v34[OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth];
  *(v19 + 32) = v20;
  if (sub_21CE18AA8())
  {
    if (!v1[1])
    {
LABEL_13:
      v21 = v34;
      goto LABEL_14;
    }

LABEL_12:
    sub_21CE2DAFC(0, 0);
    goto LABEL_13;
  }

  v21 = v34;
  v22 = *&v34[OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier + 8];
  if (!v22)
  {
    v28 = *&v34[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8];
    if (v28)
    {
      if (!v1[1])
      {
        goto LABEL_14;
      }

      v29 = *&v34[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor];
      v30 = *&v34[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8];

      sub_21CE2DAFC(v29, v28);

      goto LABEL_13;
    }

    v31 = *&v34[OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath];
    v32 = v1[1];
    if (v31)
    {
      if (v32)
      {
        v33 = v31;
        sub_21CE2E030(v33);

        v21 = v33;
      }

      goto LABEL_14;
    }

    if (!v32)
    {
LABEL_14:

      return;
    }

    goto LABEL_12;
  }

  if (!v1[1])
  {
    goto LABEL_14;
  }

  v23 = *&v34[OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier];
  v24 = *&v34[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor];
  v25 = *&v34[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8];
  v26 = *&v34[OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath];
  v27 = v26;

  sub_21CE2E8AC(v23, v22, v24, v25, v26);
}

unint64_t sub_21CE30AA0()
{
  result = qword_27CE40880;
  if (!qword_27CE40880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40880);
  }

  return result;
}

unint64_t sub_21CE30AF8()
{
  result = qword_27CE40888;
  if (!qword_27CE40888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40888);
  }

  return result;
}

unint64_t sub_21CE30B50()
{
  result = qword_27CE40890;
  if (!qword_27CE40890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40890);
  }

  return result;
}

unint64_t sub_21CE30BA8()
{
  result = qword_27CE40898[0];
  if (!qword_27CE40898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE40898);
  }

  return result;
}

uint64_t type metadata accessor for XPCConnection.RemoteHostObject()
{
  result = qword_27CE40920;
  if (!qword_27CE40920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CE30DCC(uint64_t a1)
{
  type metadata accessor for SettingsViewSceneOptions();
  if (v2 <= 0x3F)
  {
    sub_21CE312AC();
    if (v3 <= 0x3F)
    {
      sub_21CE31304();
      if (v4 <= 0x3F)
      {
        type metadata accessor for XPCConnection();
        v5 = *(a1 + 16);
        swift_checkMetadataState();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21CE30E90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21CE3102C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_21CE312AC()
{
  if (!qword_27CE409B0)
  {
    type metadata accessor for SettingsProtocolDispatch();
    v0 = sub_21CE6D150();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE409B0);
    }
  }
}

void sub_21CE31304()
{
  if (!qword_27CE409B8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE404D8, &qword_21CE71D40);
    v0 = sub_21CE6D150();
    if (!v1)
    {
      atomic_store(v0, qword_27CE409B8);
    }
  }
}

uint64_t sub_21CE313D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21CDE7888;

  return sub_21CE2D56C(a1, v4, v5, v7, v6);
}

uint64_t sub_21CE31490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_21CDE40C8(0, &qword_27CE40490, 0x277CCAE80);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_21CE6D360();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_21CE6D360();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_21CE315A0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_21CE6D360();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_21CE6D360();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_21CE454E4(result, 1);

  return sub_21CE31490(v4, v2, 0);
}

unint64_t sub_21CE31678(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD68, &qword_21CE6F5C8);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_21CE31748(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_21CDF29B8(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_21CE31678(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_21CE31808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  sub_21CDE40C8(0, qword_281211808, 0x277D82BB8);
  v3 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v5 = *i;
    v6 = *(i - 1);

    v7 = sub_21CE6D110();

    if (v7)
    {
      break;
    }

    if (v1 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

void sub_21CE318E4(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_21CE31808(*a1);
  v5 = v3;
  if (!v1)
  {
    if (v4)
    {
      v6 = v2[2];
      return;
    }

    v7 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      v9 = v2 + 2;
      v8 = v2[2];
      if (v7 == v8)
      {
        return;
      }

      v10 = 2 * v3;
      while (v7 < v8)
      {
        v11 = &v2[v10];
        v12 = v2[v10 + 6];
        v13 = v2[v10 + 7];
        sub_21CDE40C8(0, qword_281211808, 0x277D82BB8);
        v14 = v12;

        v15 = sub_21CE6D110();

        if ((v15 & 1) == 0)
        {
          if (v7 != v5)
          {
            if ((v5 & 0x8000000000000000) != 0)
            {
              goto LABEL_21;
            }

            if (v5 >= *v9)
            {
              goto LABEL_22;
            }

            if (v7 >= *v9)
            {
              goto LABEL_23;
            }

            v26 = *&v2[2 * v5 + 4];
            v17 = v11[6];
            v16 = v11[7];
            v18 = v26;

            v19 = v17;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_21CE25AE0(v2);
            }

            v20 = &v2[2 * v5];
            v22 = v20[4];
            v21 = v20[5];
            v20[4] = v19;
            v20[5] = v16;

            if (v7 >= v2[2])
            {
              goto LABEL_24;
            }

            v24 = v2[v10 + 6];
            v23 = v2[v10 + 7];
            *&v2[v10 + 6] = v26;

            *a1 = v2;
          }

          ++v5;
        }

        ++v7;
        v9 = v2 + 2;
        v8 = v2[2];
        v10 += 2;
        if (v7 == v8)
        {
          return;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_21CE31ABC(uint64_t a1, uint64_t a2)
{
  if (qword_27CE3F9E8 != -1)
  {
    swift_once();
  }

  v4 = [qword_27CE40878 objectForKey_];
  if (v4)
  {
    v5 = v4;
    v6 = v4[3];
    v7 = *(v6 + 40);
    *(v6 + 40) = a2;
  }

  else
  {
    type metadata accessor for SettingsUndoManager();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    v9 = MEMORY[0x277D84F90];
    *(v8 + 24) = 0;
    *(v8 + 32) = v9;
    *(v8 + 40) = a2;
    *(v8 + 48) = 0;
    type metadata accessor for SettingsProtocolDispatch();
    v5 = swift_allocObject();
    *(v5 + 24) = v8;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 16) = a1;
    v10 = qword_27CE40878;

    swift_unknownObjectRetain();
    [v10 setObject:v5 forKey:a1];
  }

  return v5;
}

void sub_21CE31F34(id a1)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v2 = [a1 description];
  v3 = sub_21CE6CC50();
  v5 = v4;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6BDA0();
  __swift_project_value_buffer(v6, qword_27CE412C0);

  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446978;
    v11 = sub_21CE6D2B0();
    v13 = sub_21CDF2CC8(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = 313;
    *(v9 + 22) = 2082;
    v14 = sub_21CE6D2B0();
    v16 = sub_21CDF2CC8(v14, v15, &v20);

    *(v9 + 24) = v16;
    *(v9 + 32) = 2082;
    v17 = sub_21CDF2CC8(v3, v5, &v20);

    *(v9 + 34) = v17;
    _os_log_impl(&dword_21CDE1000, v7, v8, "%{public}s:%ld %{public}s %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v10, -1, -1);
    MEMORY[0x21CF1BD50](v9, -1, -1);
  }

  else
  {
  }

  v19 = qword_27CE3FA88;
  qword_27CE3FA88 = a1;
  v18 = a1;
}

uint64_t sub_21CE321B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_21CE6CB60();

  if (!*(v2 + 16))
  {
    goto LABEL_15;
  }

  v3 = sub_21CE66850(0xD000000000000018, 0x800000021CE780B0);
  if ((v4 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_21CDE66C8(*(v2 + 56) + 32 * v3, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD98, &qword_21CE71CC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_15;
  }

  v5 = sub_21CE66850(0xD00000000000001BLL, 0x800000021CE76DB0);
  if ((v6 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_21CDE66C8(*(v12 + 56) + 32 * v5, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_15;
  }

  v7 = sub_21CE66850(0xD000000000000016, 0x800000021CE780D0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_21CDE66C8(*(v12 + 56) + 32 * v7, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v12 + 16) || (v9 = sub_21CE66850(0x65644965726F7473, 0xEF7265696669746ELL), (v10 & 1) == 0))
  {
LABEL_15:

    return 0;
  }

  sub_21CDE66C8(*(v12 + 56) + 32 * v9, v13);

  if (swift_dynamicCast())
  {
    return v12;
  }

  return 0;
}

uint64_t sub_21CE32418(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 16);
  if ([v5 respondsToSelector_])
  {
    if ([v5 respondsToSelector_])
    {
      v12[4] = sub_21CE32618;
      v12[5] = v4;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = sub_21CE2F3D8;
      v12[3] = &block_descriptor_84;
      v6 = _Block_copy(v12);
      _Block_copy(a2);
      swift_unknownObjectRetain();

      [v5 isCloudSyncEnabled_];
      _Block_release(v6);

      swift_unknownObjectRelease();
    }

    _Block_copy(a2);
  }

  else
  {
    _Block_copy(a2);
    sub_21CE321B4();
    if (v8)
    {
      v9 = [objc_opt_self() sharedCloudSettingsManager];
      v10 = sub_21CE6CC20();

      v11 = [v9 isEnabledForStore_];

      (a2)[2](a2, v11, 0);
    }
  }
}

uint64_t sub_21CE32634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CDE7888;

  return sub_21CE2C888(a1, v4, v5, v6);
}

uint64_t sub_21CE326F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21CDE7A00;

  return sub_21CE2D56C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_91Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t objectdestroy_66Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_106Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

Settings::SidebarButtonAction::ActionType_optional __swiftcall SidebarButtonAction.ActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void sub_21CE32934(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Settings19SidebarButtonAction_action);
  v4 = sub_21CE6CC20();
  [a1 encodeInteger:v3 forKey:v4];
}

id SidebarButtonAction.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE35A4C(a1);

  return v4;
}

id SidebarButtonAction.init(coder:)(void *a1)
{
  v2 = sub_21CE35A4C(a1);

  return v2;
}

id SidebarButtonAction.__allocating_init(_:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC8Settings19SidebarButtonAction_action] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SidebarButtonAction.init(_:)(_BYTE *a1)
{
  v1[OBJC_IVAR____TtC8Settings19SidebarButtonAction_action] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SidebarButtonAction();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t SidebarConfiguration.SidebarIconSize.description.getter()
{
  if (*v0)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

Settings::SidebarConfiguration::SidebarIconSize_optional __swiftcall SidebarConfiguration.SidebarIconSize.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_21CE32C5C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_21CE32C7C()
{
  if (*v0)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_21CE32CA8()
{
  v1 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21CE32CEC(char a1)
{
  v3 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21CE32D9C()
{
  v1 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21CE32DE0(char a1)
{
  v3 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21CE32E90()
{
  v1 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21CE32ED4(char a1)
{
  v3 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21CE32F84()
{
  v1 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21CE32FC8(char a1)
{
  v3 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21CE330F0@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_21CE33144(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_21CE331F4(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC8Settings20SidebarConfiguration_selection);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_21CE6CC20();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CE6CC20();
  [a1 encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = sub_21CE6CC20();
  [a1 encodeBool:v8 forKey:v9];

  v10 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = sub_21CE6CC20();
  [a1 encodeBool:v11 forKey:v12];

  v13 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = sub_21CE6CC20();
  [a1 encodeBool:v14 forKey:v15];

  v16 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = sub_21CE6CC20();
  [a1 encodeBool:v17 forKey:v18];

  v19 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = sub_21CE6CC20();
  [a1 encodeInteger:v20 forKey:v21];
}

id SidebarConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE35B0C(a1);

  return v4;
}

id SidebarConfiguration.init(coder:)(void *a1)
{
  v2 = sub_21CE35B0C(a1);

  return v2;
}

id SidebarConfiguration.__allocating_init(selection:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton] = 0;
  v5[OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton] = 0;
  v5[OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled] = 0;
  v5[OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled] = 0;
  v6 = &v5[OBJC_IVAR____TtC8Settings20SidebarConfiguration_selection];
  *v6 = 0;
  v6[1] = 0;
  v5[OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize] = 0;
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SidebarConfiguration.init(selection:)(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton] = 0;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton] = 0;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled] = 0;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled] = 0;
  v5 = &v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_selection];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize] = 0;
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SidebarConfiguration();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_21CE337A4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21CE33804()
{
  v1 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21CE33850(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21CE33908()
{
  v1 = OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon;
  v2 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
    swift_beginAccess();
    v5 = *(v0 + v4);
    if (v5)
    {
      v6 = v5;
      v3 = sub_21CE6C960();
    }

    else
    {
      v3 = 0;
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_21CE35E20(v7);
  }

  sub_21CE35E30(v2);
  return v3;
}

uint64_t sub_21CE339B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon);
  *(v1 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon) = a1;
  return sub_21CE35E20(v2);
}

uint64_t (*sub_21CE339C8(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_21CE33908();
  return sub_21CE33A10;
}

uint64_t sub_21CE33A10(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon);
  *(v2 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon) = *a1;
  if (a2)
  {

    sub_21CE35E20(v3);
  }

  else
  {

    return sub_21CE35E20(v3);
  }
}

uint64_t sub_21CE33A94()
{
  v1 = OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SidebarItem.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_name);
  v2 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_name + 8);

  return v1;
}

uint64_t SidebarItem.subtext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_subtext);
  v2 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_subtext + 8);

  return v1;
}

uint64_t SidebarItem.uuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_uuid);
  v2 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_uuid + 8);

  return v1;
}

uint64_t SidebarItem.iconUTTypeIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier + 8);

  return v1;
}

uint64_t sub_21CE33BC8()
{
  v1 = (v0 + OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_21CE33C14(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_21CE33CEC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_21CE33DC0()
{
  v1 = v0;
  sub_21CE6D290();
  MEMORY[0x21CF1ACB0](0x203A656D616ELL, 0xE600000000000000);
  v12 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_name);
  v14 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_name + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40460, &qword_21CE72620);
  v2 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v2);

  MEMORY[0x21CF1ACB0](0x7478657462757320, 0xEA0000000000203ALL);
  v13 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_subtext);
  v15 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_subtext + 8);

  v3 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v3);

  MEMORY[0x21CF1ACB0](0x203A6469757520, 0xE700000000000000);
  MEMORY[0x21CF1ACB0](*(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_uuid), *(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_uuid + 8));
  MEMORY[0x21CF1ACB0](0x203A6567616D6920, 0xE800000000000000);
  v4 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  swift_beginAccess();
  v5 = *(v1 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40B00, &qword_21CE72E18);
  v6 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v6);

  MEMORY[0x21CF1ACB0](0x6F43656764616220, 0xED0000203A746E75);
  v7 = (v1 + OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount);
  swift_beginAccess();
  v10 = *v7;
  v11 = *(v7 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40B08, &qword_21CE72E20);
  v8 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v8);

  return 0;
}

void sub_21CE33FE8(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_name + 8))
  {
    v3 = *(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_name);
    v4 = sub_21CE6CC20();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_21CE6CC20();
  [a1 encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_subtext + 8))
  {
    v6 = *(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_subtext);
    v7 = sub_21CE6CC20();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_21CE6CC20();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = *(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_uuid);
  v10 = *(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_uuid + 8);
  v11 = sub_21CE6CC20();
  v12 = sub_21CE6CC20();
  [a1 encodeObject:v11 forKey:v12];

  v13 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = sub_21CE6CC20();
  [a1 encodeObject:v14 forKey:v15];

  v16 = (v1 + OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID);
  swift_beginAccess();
  if (v16[1])
  {
    v17 = *v16;

    v18 = sub_21CE6CC20();
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_21CE6CC20();
  [a1 encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier + 8))
  {
    v20 = *(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier);
    v21 = sub_21CE6CC20();
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_21CE6CC20();
  [a1 encodeObject:v21 forKey:v22];
  swift_unknownObjectRelease();

  v23 = (v1 + OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount);
  swift_beginAccess();
  v24 = 0;
  if ((v23[1] & 1) == 0)
  {
    v25 = *v23;
    v24 = sub_21CE6CEC0();
  }

  v26 = sub_21CE6CC20();
  [a1 encodeObject:v24 forKey:v26];
  swift_unknownObjectRelease();

  v27 = (v1 + OBJC_IVAR____TtC8Settings11SidebarItem_tooltip);
  swift_beginAccess();
  if (v27[1])
  {
    v28 = *v27;

    v29 = sub_21CE6CC20();
  }

  else
  {
    v29 = 0;
  }

  v30 = sub_21CE6CC20();
  [a1 encodeObject:v29 forKey:v30];
  swift_unknownObjectRelease();

  v31 = OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth;
  swift_beginAccess();
  v32 = *(v1 + v31);
  v33 = sub_21CE6CC20();
  [a1 encodeBool:v32 forKey:v33];
}

id SidebarItem.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE35E40(a1);

  return v4;
}

id SidebarItem.init(coder:)(void *a1)
{
  v2 = sub_21CE35E40(a1);

  return v2;
}

id SidebarItem.__allocating_init(name:subtext:uuid:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  *&v15[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v15[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v17 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v17 = 0;
  v17[1] = 0;
  v15[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v18 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v21 = a5;
  v21[1] = a6;
  swift_beginAccess();
  *&v15[v16] = a7;
  v22 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v22 = a3;
  v22[1] = a4;
  v23 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  *v23 = 0;
  v23[1] = 0;
  v25.receiver = v15;
  v25.super_class = v7;
  return objc_msgSendSuper2(&v25, sel_init);
}

id SidebarItem.init(name:subtext:uuid:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  *&v7[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v7[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v12 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v12 = 0;
  v12[1] = 0;
  v7[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v13 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v15 = a1;
  v15[1] = a2;
  v16 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v16 = a5;
  v16[1] = a6;
  swift_beginAccess();
  *&v7[v11] = a7;
  v17 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v17 = a3;
  v17[1] = a4;
  v18 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  v19 = type metadata accessor for SidebarItem();
  *v18 = 0;
  v18[1] = 0;
  v21.receiver = v7;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, sel_init);
}

id SidebarItem.init(extensionID:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  *&v2[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v2[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v4 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v4 = 0;
  v4[1] = 0;
  v2[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v5 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v8 = a1;
  v8[1] = a2;
  swift_beginAccess();
  *&v2[v3] = 0;
  v9 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  v11 = type metadata accessor for SidebarItem();
  *v10 = 0;
  v10[1] = 0;
  v13.receiver = v2;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SidebarItem.init(name:subtext:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v6[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v7 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v7 = 0;
  v7[1] = 0;
  v6[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v8 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v11 = a5;
  v11[1] = a6;
  v12 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v12 = a3;
  v12[1] = a4;
  v13 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  v14 = type metadata accessor for SidebarItem();
  *v13 = 0;
  v13[1] = 0;
  v16.receiver = v6;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_init);
}

id SidebarItem.__allocating_init(name:subtext:uuid:imageFromBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = objc_allocWithZone(v8);
  *&v16[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v16[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v17 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v17 = 0;
  v17[1] = 0;
  v16[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v18 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v21 = a5;
  v21[1] = a6;
  v22 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v22 = a3;
  v22[1] = a4;
  swift_beginAccess();
  *v17 = a7;
  v17[1] = a8;
  v23 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  *v23 = 0;
  v23[1] = 0;
  v26.receiver = v16;
  v26.super_class = v8;
  return objc_msgSendSuper2(&v26, sel_init);
}

id SidebarItem.init(name:subtext:uuid:imageFromBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v8[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v8[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v11 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v11 = 0;
  v11[1] = 0;
  v8[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v12 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v14 = a1;
  v14[1] = a2;
  v15 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v15 = a5;
  v15[1] = a6;
  v16 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v16 = a3;
  v16[1] = a4;
  swift_beginAccess();
  *v11 = a7;
  v11[1] = a8;
  v17 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  v18 = type metadata accessor for SidebarItem();
  *v17 = 0;
  v17[1] = 0;
  v20.receiver = v8;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, sel_init);
}

id SidebarItem.__allocating_init(name:subtext:uuid:iconUTTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  *&v17[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v17[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v18 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v18 = 0;
  v18[1] = 0;
  v17[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v19 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v21 = a1;
  v21[1] = a2;
  v22 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v22 = a5;
  v22[1] = a6;
  v23 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v23 = a3;
  v23[1] = a4;
  v24 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  *v24 = a7;
  v24[1] = a8;
  v26.receiver = v17;
  v26.super_class = v8;
  return objc_msgSendSuper2(&v26, sel_init);
}

id SidebarItem.init(name:subtext:uuid:iconUTTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v8[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v8[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v9 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v9 = 0;
  v9[1] = 0;
  v8[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v10 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v13 = a5;
  v13[1] = a6;
  v14 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v14 = a3;
  v14[1] = a4;
  v15 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  *v15 = a7;
  v15[1] = a8;
  v17.receiver = v8;
  v17.super_class = type metadata accessor for SidebarItem();
  return objc_msgSendSuper2(&v17, sel_init);
}

id SidebarItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21CE34F68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for SidebarItem();
  result = sub_21CE6D2A0();
  *a1 = result;
  return result;
}

uint64_t SidebarSection.label.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings14SidebarSection_label);
  v2 = *(v0 + OBJC_IVAR____TtC8Settings14SidebarSection_label + 8);

  return v1;
}

uint64_t sub_21CE34FF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Settings14SidebarSection_content;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_21CE3505C()
{
  v1 = OBJC_IVAR____TtC8Settings14SidebarSection_content;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_21CE350A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Settings14SidebarSection_content;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_21CE35174(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21CE6CC20();

  return v5;
}

uint64_t sub_21CE351E4()
{
  v13 = *(v0 + OBJC_IVAR____TtC8Settings14SidebarSection_label);
  v14 = *(v0 + OBJC_IVAR____TtC8Settings14SidebarSection_label + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40460, &qword_21CE72620);
  v1 = sub_21CE6CC80();
  v15 = v1;
  v2 = OBJC_IVAR____TtC8Settings14SidebarSection_content;
  result = swift_beginAccess();
  v4 = *(v0 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return v1;
  }

  result = sub_21CE6D360();
  v5 = result;
  if (!result)
  {
    return v1;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CF1B2A0](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 description];
      v10 = sub_21CE6CC50();
      v12 = v11;

      MEMORY[0x21CF1ACB0](v10, v12);
    }

    while (v5 != v6);

    return v15;
  }

  __break(1u);
  return result;
}

id SidebarSection.__allocating_init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC8Settings14SidebarSection_label];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC8Settings14SidebarSection_content] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SidebarSection.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC8Settings14SidebarSection_label];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC8Settings14SidebarSection_content] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SidebarSection();
  return objc_msgSendSuper2(&v6, sel_init);
}

id SidebarSection.init(coder:)(void *a1)
{
  v2 = v1;
  sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
  v4 = sub_21CE6D0F0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CE6CC50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = &v2[OBJC_IVAR____TtC8Settings14SidebarSection_label];
  *v9 = v6;
  v9[1] = v8;
  sub_21CDE40C8(0, &qword_27CE40388, 0x277CBEA90);
  v10 = sub_21CE6D0F0();
  if (v10)
  {
    v11 = v10;
    sub_21CDE40C8(0, &qword_27CE40B20, 0x277CCAAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40B28, &unk_21CE72E28);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21CE6F420;
    *(v12 + 32) = sub_21CDE40C8(0, &unk_27CE40B30, 0x277CBEA60);
    *(v12 + 40) = type metadata accessor for SidebarItem();
    v13 = sub_21CE6BA90();
    v15 = v14;
    sub_21CE6CF50();

    sub_21CDF32E8(v13, v15);

    if (!v22)
    {

      sub_21CE362A4(v21);
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40B40, &qword_21CE72E38);
    if (swift_dynamicCast())
    {
      *&v2[OBJC_IVAR____TtC8Settings14SidebarSection_content] = v20;
      v19.receiver = v2;
      v19.super_class = type metadata accessor for SidebarSection();
      v16 = objc_msgSendSuper2(&v19, sel_init);

      return v16;
    }
  }

LABEL_9:
  v18 = v9[1];

  type metadata accessor for SidebarSection();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_21CE35700(void *a1)
{
  v20[4] = *MEMORY[0x277D85DE8];
  if (*(v1 + OBJC_IVAR____TtC8Settings14SidebarSection_label + 8))
  {
    v3 = *(v1 + OBJC_IVAR____TtC8Settings14SidebarSection_label);
    v4 = sub_21CE6CC20();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_21CE6CC20();
  [a1 encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = objc_opt_self();
  v7 = OBJC_IVAR____TtC8Settings14SidebarSection_content;
  swift_beginAccess();
  v8 = *(v1 + v7);
  type metadata accessor for SidebarItem();

  v9 = sub_21CE6CD30();

  v20[0] = 0;
  v10 = [v6 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v20];

  v11 = v20[0];
  if (v10)
  {
    v12 = sub_21CE6BA90();
    v14 = v13;

    v15 = sub_21CE6BA70();
    sub_21CDF32E8(v12, v14);
    v16 = sub_21CE6CC20();
    [a1 encodeObject:v15 forKey:v16];
  }

  else
  {
    v17 = v11;
    v18 = sub_21CE6B910();

    swift_willThrow();
  }

  v19 = *MEMORY[0x277D85DE8];
}

id sub_21CE359C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21CE35A4C(void *a1)
{
  v3 = sub_21CE6CC20();
  v4 = [a1 decodeIntegerForKey_];

  v5 = v4 == 1;
  if (v4 == 2)
  {
    v5 = 2;
  }

  v1[OBJC_IVAR____TtC8Settings19SidebarButtonAction_action] = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SidebarButtonAction();
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21CE35B0C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton] = 0;
  v5 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton] = 0;
  v28 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled] = 0;
  v6 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled] = 0;
  v7 = &v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_selection];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize] = 0;
  sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
  v9 = sub_21CE6D0F0();
  if (v9)
  {
    v10 = v6;
    v11 = v8;
    v12 = v9;
    v13 = sub_21CE6CC50();
    v15 = v14;

    v8 = v11;
    v6 = v10;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  swift_beginAccess();
  v16 = v7[1];
  *v7 = v13;
  v7[1] = v15;

  v17 = sub_21CE6CC20();
  v18 = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v2[v4] = v18;
  v19 = sub_21CE6CC20();
  v20 = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v2[v5] = v20;
  v21 = sub_21CE6CC20();
  v22 = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v2[v28] = v22;
  v23 = sub_21CE6CC20();
  v24 = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v2[v6] = v24;
  v25 = sub_21CE6CC20();
  v26 = [a1 decodeIntegerForKey_];

  swift_beginAccess();
  v2[v8] = v26 == 1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for SidebarConfiguration();
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t sub_21CE35E20(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21CE35E30(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

id sub_21CE35E40(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  *&v2[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v2[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v5 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v5 = 0;
  v5[1] = 0;
  v51 = OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth;
  v2[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v6 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
  *v7 = 0;
  v7[1] = 0;
  v8 = sub_21CE6D0F0();
  if (v8)
  {
    v9 = v8;
    v10 = sub_21CE6CC50();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v13 = v10;
  v13[1] = v12;
  v14 = sub_21CE6D0F0();
  if (v14)
  {
    v15 = v14;
    v16 = sub_21CE6CC50();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v19 = v16;
  v19[1] = v18;
  result = sub_21CE6D0F0();
  if (result)
  {
    v21 = result;
    v22 = sub_21CE6CC50();
    v24 = v23;

    v25 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
    *v25 = v22;
    v25[1] = v24;
    v26 = sub_21CE6D0F0();
    if (v26)
    {
      v27 = v26;
      v28 = sub_21CE6CC50();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    swift_beginAccess();
    v31 = v5[1];
    *v5 = v28;
    v5[1] = v30;

    v32 = sub_21CE6D0F0();
    if (v32)
    {
      v33 = v32;
      v34 = sub_21CE6CC50();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
    *v37 = v34;
    v37[1] = v36;
    v38 = sub_21CE6D0F0();
    if (v38)
    {
      v39 = v38;
      v40 = sub_21CE6CC50();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    swift_beginAccess();
    v43 = v7[1];
    *v7 = v40;
    v7[1] = v42;

    sub_21CDE40C8(0, &unk_27CE403F0, 0x277CCABB0);
    v44 = sub_21CE6D0F0();
    v45 = v44;
    if (v44)
    {
      v46 = [v44 integerValue];
    }

    else
    {
      v46 = 0;
    }

    swift_beginAccess();
    *v6 = v46;
    v6[8] = v45 == 0;
    v47 = sub_21CE6CC20();
    v48 = [a1 decodeBoolForKey_];

    swift_beginAccess();
    v2[v51] = v48;
    sub_21CDE40C8(0, &unk_27CE40B60, 0x277D755B8);
    v49 = sub_21CE6D0F0();
    swift_beginAccess();
    v50 = *&v2[v4];
    *&v2[v4] = v49;

    v52.receiver = v2;
    v52.super_class = type metadata accessor for SidebarItem();
    return objc_msgSendSuper2(&v52, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CE362A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40410, &qword_21CE71B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CE36310()
{
  result = qword_27CE40B48;
  if (!qword_27CE40B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40B48);
  }

  return result;
}

unint64_t sub_21CE36368()
{
  result = qword_27CE40B50;
  if (!qword_27CE40B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40B50);
  }

  return result;
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm_0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for SidebarButtonAction.ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SidebarButtonAction.ActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21CE3701C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_21CE3708C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

void sub_21CE37130(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21CE37190()
{
  v1 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_21CE371DC()
{
  v1 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21CE37220(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC8Settings21TitlebarConfiguration_title);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_21CE6CC20();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CE6CC20();
  [a1 encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = (v1 + OBJC_IVAR____TtC8Settings21TitlebarConfiguration_subtitle);
  swift_beginAccess();
  if (v7[1])
  {
    v8 = *v7;

    v9 = sub_21CE6CC20();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_21CE6CC20();
  [a1 encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  v11 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageSymbols;
  swift_beginAccess();
  if (*(v1 + v11))
  {
    v12 = *(v1 + v11);

    v13 = sub_21CE6CD30();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_21CE6CC20();
  [a1 encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  v15 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageLabels;
  swift_beginAccess();
  if (*(v1 + v15))
  {
    v16 = *(v1 + v15);

    v17 = sub_21CE6CD30();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_21CE6CC20();
  [a1 encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  v19 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = sub_21CE6CC20();
  [a1 encodeObject:v20 forKey:v21];

  v22 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v24 = sub_21CE6CC20();
  [a1 encodeBool:v23 forKey:v24];
}

id TitlebarConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE37D68(a1);

  return v4;
}

id TitlebarConfiguration.init(coder:)(void *a1)
{
  v2 = sub_21CE37D68(a1);

  return v2;
}

id TitlebarConfiguration.__allocating_init(title:subtitle:imageSymbol:imageLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = type metadata accessor for TitlebarConfiguration();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_title];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_subtitle];
  *v16 = 0;
  v16[1] = 0;
  *&v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageSymbols] = 0;
  *&v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageLabels] = 0;
  v17 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  *&v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration] = 0;
  swift_beginAccess();
  *v15 = a1;
  v15[1] = a2;
  swift_beginAccess();
  *v16 = a3;
  v16[1] = a4;
  swift_beginAccess();
  v18 = *&v14[v17];
  *&v14[v17] = 0;

  v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration] = 0;
  v24.receiver = v14;
  v24.super_class = v13;
  v19 = objc_msgSendSuper2(&v24, sel_init);
  sub_21CE37934(a5, a6, a7, a8);

  return v19;
}

id TitlebarConfiguration.__allocating_init(title:subtitle:imageSymbol:imageLabel:cloudSyncConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v13 = type metadata accessor for TitlebarConfiguration();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_title];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_subtitle];
  *v16 = 0;
  v16[1] = 0;
  *&v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageSymbols] = 0;
  *&v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageLabels] = 0;
  v17 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  *&v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration] = 0;
  swift_beginAccess();
  *v15 = a1;
  v15[1] = a2;
  swift_beginAccess();
  *v16 = a3;
  v16[1] = a4;
  swift_beginAccess();
  v18 = *&v14[v17];
  *&v14[v17] = a9;
  v19 = a9;

  v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration] = 1;
  v26.receiver = v14;
  v26.super_class = v13;
  v20 = objc_msgSendSuper2(&v26, sel_init);
  sub_21CE37934(a5, a6, a7, a8);

  return v20;
}

uint64_t sub_21CE37934(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v8 = result;
    v9 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageSymbols;
    swift_beginAccess();
    if (*(v4 + v9))
    {

      v11 = sub_21CE36FBC();
      v12 = *v10;
      if (*v10)
      {
        v13 = v10;
        v14 = *v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_21CDF2150(0, *(v12 + 2) + 1, 1, v12);
          *v13 = v12;
        }

        v16 = *(v12 + 2);
        v17 = *(v12 + 3);
        v18 = v16 + 1;
        if (v16 >= v17 >> 1)
        {
          v37 = v16 + 1;
          v34 = v12;
          v35 = *(v12 + 2);
          v36 = sub_21CDF2150((v17 > 1), v16 + 1, 1, v34);
          v16 = v35;
          v18 = v37;
          v12 = v36;
          *v13 = v36;
        }

        *(v12 + 2) = v18;
        v19 = &v12[16 * v16];
        *(v19 + 4) = v8;
        *(v19 + 5) = a2;
        (v11)(v38, 0);
      }

      else
      {

        (v11)(v38, 0);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE402F0, &qword_21CE6F600);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21CE702B0;
      *(v20 + 32) = v8;
      *(v20 + 40) = a2;
      *(v4 + v9) = v20;
    }

    v21 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageLabels;
    swift_beginAccess();
    if (*(v4 + v21))
    {
      v23 = sub_21CE370D0();
      v24 = *v22;
      if (*v22)
      {
        v25 = v22;
        if (a4)
        {
          v26 = a4;
        }

        else
        {
          a3 = 0;
          v26 = 0xE000000000000000;
        }

        v27 = swift_isUniquelyReferenced_nonNull_native();
        *v25 = v24;
        if ((v27 & 1) == 0)
        {
          v24 = sub_21CDF2150(0, *(v24 + 2) + 1, 1, v24);
          *v25 = v24;
        }

        v29 = *(v24 + 2);
        v28 = *(v24 + 3);
        if (v29 >= v28 >> 1)
        {
          v24 = sub_21CDF2150((v28 > 1), v29 + 1, 1, v24);
          *v25 = v24;
        }

        *(v24 + 2) = v29 + 1;
        v30 = &v24[16 * v29];
        *(v30 + 4) = a3;
        *(v30 + 5) = v26;
        return (v23)(v38, 0);
      }

      else
      {
        return (v23)(v38, 0);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE402F0, &qword_21CE6F600);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_21CE702B0;
      if (a4)
      {
        v32 = a3;
      }

      else
      {
        v32 = 0;
      }

      v33 = 0xE000000000000000;
      if (a4)
      {
        v33 = a4;
      }

      *(v31 + 32) = v32;
      *(v31 + 40) = v33;
      *(v4 + v21) = v31;
    }
  }

  return result;
}

id TitlebarConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TitlebarConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitlebarConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21CE37D68(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_title];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_subtitle];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageSymbols;
  *&v2[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageSymbols] = 0;
  v7 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageLabels;
  *&v2[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageLabels] = 0;
  v33 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  *&v2[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration] = 0;
  sub_21CE383A0();
  v8 = sub_21CE6D0F0();
  if (v8)
  {
    v9 = v8;
    v10 = sub_21CE6CC50();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  swift_beginAccess();
  v13 = v4[1];
  *v4 = v10;
  v4[1] = v12;

  v14 = sub_21CE6D0F0();
  if (v14)
  {
    v15 = v14;
    v16 = sub_21CE6CC50();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  swift_beginAccess();
  v19 = v5[1];
  *v5 = v16;
  v5[1] = v18;

  v20 = sub_21CE6CC20();
  v21 = [a1 decodeObjectForKey_];

  if (v21)
  {
    sub_21CE6D190();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (*(&v38 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40BA0, &qword_21CE6F4B0);
    if (swift_dynamicCast())
    {
      v22 = v36;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    sub_21CE362A4(&v39);
    v22 = 0;
  }

  swift_beginAccess();
  v23 = *&v2[v6];
  *&v2[v6] = v22;

  v24 = sub_21CE6CC20();
  v25 = [a1 decodeObjectForKey_];

  if (v25)
  {
    sub_21CE6D190();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (*(&v38 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40BA0, &qword_21CE6F4B0);
    if (swift_dynamicCast())
    {
      v26 = v34;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    sub_21CE362A4(&v39);
    v26 = 0;
  }

  swift_beginAccess();
  v27 = *&v2[v7];
  *&v2[v7] = v26;

  type metadata accessor for CloudSyncConfiguration();
  v28 = sub_21CE6D0F0();
  swift_beginAccess();
  v29 = *&v2[v33];
  *&v2[v33] = v28;

  v30 = sub_21CE6CC20();
  v31 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration] = v31;
  v35.receiver = v2;
  v35.super_class = type metadata accessor for TitlebarConfiguration();
  return objc_msgSendSuper2(&v35, sel_init);
}

uint64_t keypath_get_3Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

unint64_t sub_21CE383A0()
{
  result = qword_27CE40110;
  if (!qword_27CE40110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE40110);
  }

  return result;
}

uint64_t sub_21CE38448()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_21CE6CB20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CE6CB40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_viewDidLoad);
  sub_21CE38EB0();
  v13 = sub_21CE6CF90();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_21CE38EFC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CE27C50;
  aBlock[3] = &block_descriptor_6;
  v15 = _Block_copy(aBlock);

  sub_21CE6CB30();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21CE38F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BC0, &qword_21CE73218);
  sub_21CE38F5C();
  sub_21CE6D1B0();
  MEMORY[0x21CF1AF80](0, v12, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

void sub_21CE386F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v6 = sub_21CE6BDA0();
    __swift_project_value_buffer(v6, qword_27CE412C0);
    v1 = sub_21CE6BD80();
    v7 = sub_21CE6CF10();
    if (os_log_type_enabled(v1, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16[0] = v9;
      *v8 = 136446978;
      v10 = sub_21CE6D2B0();
      v12 = sub_21CDF2CC8(v10, v11, v16);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2048;
      *(v8 + 14) = 34;
      *(v8 + 22) = 2082;
      v13 = sub_21CE6D2B0();
      v15 = sub_21CDF2CC8(v13, v14, v16);

      *(v8 + 24) = v15;
      *(v8 + 32) = 2082;
      *(v8 + 34) = sub_21CDF2CC8(0x20736920666C6573, 0xEC000000216C696ELL, v16);
      _os_log_impl(&dword_21CDE1000, v1, v7, "%{public}s:%ld %{public}s %{public}s", v8, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v9, -1, -1);
      MEMORY[0x21CF1BD50](v8, -1, -1);
    }

    goto LABEL_10;
  }

  v1 = Strong;
  v2 = [Strong view];
  if (v2)
  {
    v3 = v2;
    [v2 frame];

    v4 = *(&v1[1].isa + OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size);
    v5 = *(&v1[2].isa + OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size);
    v16[0] = *(v1 + OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size);
    v16[1] = v4;
    v17 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BB8, &qword_21CE73210);
    sub_21CE6CA60();

LABEL_10:

    return;
  }

  __break(1u);
}

id sub_21CE38B34()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21CE38BD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21CE38C1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21CE38C6C()
{
  v1 = v0[1];
  v14 = *v0;
  v15 = v1;
  v16 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BB8, &qword_21CE73210);
  sub_21CE6CA70();
  v2 = v11;
  v3 = v12;
  v4 = v13;
  v5 = type metadata accessor for _ViewSizeReader.Reader();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size];
  *v7 = v10;
  *(v7 + 1) = v2;
  *(v7 + 2) = v3;
  *(v7 + 3) = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_21CE38D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE38E5C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21CE38D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE38E5C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21CE38DDC()
{
  sub_21CE38E5C();
  sub_21CE6C520();
  __break(1u);
}

unint64_t sub_21CE38E08()
{
  result = qword_281211F20;
  if (!qword_281211F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211F20);
  }

  return result;
}

unint64_t sub_21CE38E5C()
{
  result = qword_281211F18;
  if (!qword_281211F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211F18);
  }

  return result;
}

unint64_t sub_21CE38EB0()
{
  result = qword_281211A58;
  if (!qword_281211A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281211A58);
  }

  return result;
}

unint64_t sub_21CE38F04()
{
  result = qword_281213170;
  if (!qword_281213170)
  {
    sub_21CE6CB20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213170);
  }

  return result;
}

unint64_t sub_21CE38F5C()
{
  result = qword_281211AC0;
  if (!qword_281211AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BC0, &qword_21CE73218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211AC0);
  }

  return result;
}

uint64_t sub_21CE38FC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CE6BA60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_21CE3B9B4(&qword_2812132C0, MEMORY[0x277CC9260]), v9 = sub_21CE6CB70(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_21CE3B9B4(&qword_2812132B8, MEMORY[0x277CC9260]);
      v17 = sub_21CE6CBA0();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_21CE391D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CE6C3C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_21CE3B9B4(&qword_281213200, MEMORY[0x277CE02A8]), v9 = sub_21CE6CB70(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_21CE3B9B4(&qword_2812131F8, MEMORY[0x277CE02A8]);
      v17 = sub_21CE6CBA0();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_21CE393F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C60, &qword_21CE73398);
  v0 = sub_21CE6C3C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21CE6F420;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277CE0270], v0);
  v6(v5 + v2, *MEMORY[0x277CE0248], v0);
  v7 = sub_21CE3B694(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_2812165B0 = v7;
  return result;
}

uint64_t sub_21CE39534@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CE6C280();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C08, &qword_21CE73290);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SettingsListAppearanceModifier();
  sub_21CDFAA5C(v1 + *(v12 + 20), v11, &qword_27CE40C08, &qword_21CE73290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CE6C3C0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21CE6CF20();
    v16 = sub_21CE6C580();
    sub_21CE6BD70();

    sub_21CE6C270();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21CE3973C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CE6C280();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for SettingsListAppearanceModifier();
  sub_21CDFAA5C(v1 + *(v12 + 24), v11, &qword_27CE40C10, &unk_21CE73DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21CE3B624(v11, a1);
  }

  v14 = *v11;
  sub_21CE6CF20();
  v15 = sub_21CE6C580();
  sub_21CE6BD70();

  sub_21CE6C270();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t SettingsListAppearanceModifier.body(content:)()
{
  sub_21CE6CAA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BC8, &qword_21CE73220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BD0, &qword_21CE73228);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BD8, &qword_21CE73230);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE0, &qword_21CE73238);
  sub_21CE6C450();
  sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE8, &qword_21CE73240);
  sub_21CE39DE4();
  swift_getOpaqueTypeConformance2();
  return sub_21CE6CAB0();
}

uint64_t sub_21CE39AE8@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = sub_21CE6C2F0();
  v19 = *(v21 - 8);
  v1 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CE6C450();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BD8, &qword_21CE73230);
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v18);
  v12 = &v18 - v11;
  sub_21CE6C440();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BE0, &qword_21CE73238);
  v14 = sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238);
  v15 = MEMORY[0x277CDE0D0];
  sub_21CE6C8F0();
  (*(v5 + 8))(v8, v4);
  sub_21CE6C2D0();
  v22 = v13;
  v23 = v4;
  v24 = v14;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v18;
  sub_21CE6C7C0();
  (*(v19 + 8))(v3, v21);
  return (*(v9 + 8))(v12, v16);
}

uint64_t sub_21CE39DBC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_21CE3A040(v1);
}

unint64_t sub_21CE39DE4()
{
  result = qword_281213220;
  if (!qword_281213220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE8, &qword_21CE73240);
    sub_21CE39E9C();
    sub_21CDE4158(&qword_281213208, &qword_27CE40C00, &qword_21CE73258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213220);
  }

  return result;
}

unint64_t sub_21CE39E9C()
{
  result = qword_281213198;
  if (!qword_281213198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BF0, &qword_21CE73248);
    sub_21CE39F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213198);
  }

  return result;
}

unint64_t sub_21CE39F20()
{
  result = qword_2812131E8;
  if (!qword_2812131E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BF8, &qword_21CE73250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE0, &qword_21CE73238);
    sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812131E8);
  }

  return result;
}

uint64_t sub_21CE3A040(uint64_t a1)
{
  v3 = sub_21CE6C450();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BE8, &qword_21CE73240);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  sub_21CE3A214(a1, v20 - v10);
  v12 = sub_21CE6CAD0();
  v14 = v13;
  v15 = *(v1 + 2);
  v22 = *v1;
  v23 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C38, &qword_21CE73370);
  sub_21CE6C9E0();
  v16 = v20[1];
  v17 = v21;
  v18 = &v11[*(v8 + 36)];
  *v18 = v20[0];
  *(v18 + 1) = v16;
  *(v18 + 1) = v17;
  v18[32] = 0;
  *(v18 + 5) = v12;
  *(v18 + 6) = v14;
  sub_21CE6C440();
  sub_21CE39DE4();
  sub_21CE6C8F0();
  (*(v4 + 8))(v7, v3);
  return sub_21CDEC70C(v11);
}

uint64_t sub_21CE3A214@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v36 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C40, &qword_21CE73378);
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 8);
  MEMORY[0x28223BE20](v2);
  v33 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C48, &qword_21CE73380);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = sub_21CE6C2F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C50, &qword_21CE73388);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  if (sub_21CE3A724())
  {
    v34 = v8;
    v22 = [objc_opt_self() currentDevice];
    v23 = [v22 userInterfaceIdiom];

    if (v23)
    {
      sub_21CE6C2D0();
    }

    else
    {
      sub_21CE6C2E0();
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BE0, &qword_21CE73238);
    v31 = sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238);
    sub_21CE6C7C0();
    (*(v10 + 8))(v16, v9);
    (*(v18 + 16))(v34, v21, v17);
    swift_storeEnumTagMultiPayload();
    v38 = v30;
    v39 = v31;
    swift_getOpaqueTypeConformance2();
    v38 = v30;
    v39 = v31;
    swift_getOpaqueTypeConformance2();
    sub_21CE6C400();
    return (*(v18 + 8))(v21, v17);
  }

  else
  {
    sub_21CE6C590();
    sub_21CE6C2E0();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BE0, &qword_21CE73238);
    v25 = sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238);
    v26 = v33;
    sub_21CE6C7D0();
    (*(v10 + 8))(v14, v9);
    v28 = v34;
    v27 = v35;
    (*(v34 + 2))(v8, v26, v35);
    swift_storeEnumTagMultiPayload();
    v38 = v24;
    v39 = v25;
    swift_getOpaqueTypeConformance2();
    v38 = v24;
    v39 = v25;
    swift_getOpaqueTypeConformance2();
    sub_21CE6C400();
    return (*(v28 + 1))(v26, v27);
  }
}

BOOL sub_21CE3A724()
{
  v1 = sub_21CE6C4A0();
  v39 = *(v1 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v1);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C58, &qword_21CE73390);
  v4 = *(*(v38 - 1) + 64);
  MEMORY[0x28223BE20](v38);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C28, &qword_21CE73360);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = sub_21CE6C3C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + 2);
  v41 = *v0;
  v42 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C38, &qword_21CE73370);
  sub_21CE6C9C0();
  v22 = v40;
  if (qword_2812127C0 != -1)
  {
    swift_once();
  }

  v23 = qword_2812165B0;
  sub_21CE39534(v20);
  v36 = sub_21CE391D8(v20, v23);
  (*(v17 + 8))(v20, v16);
  sub_21CE3973C(v15);
  v24 = v39;
  (*(v39 + 104))(v13, *MEMORY[0x277CE0560], v1);
  (*(v24 + 56))(v13, 0, 1, v1);
  v25 = *(v38 + 12);
  sub_21CDFAA5C(v15, v6, &qword_27CE40C28, &qword_21CE73360);
  sub_21CDFAA5C(v13, &v6[v25], &qword_27CE40C28, &qword_21CE73360);
  v26 = *(v24 + 48);
  if (v26(v6, 1, v1) != 1)
  {
    v38 = v15;
    v28 = v37;
    sub_21CDFAA5C(v6, v37, &qword_27CE40C28, &qword_21CE73360);
    if (v26(&v6[v25], 1, v1) != 1)
    {
      v29 = v35;
      (*(v24 + 32))(v35, &v6[v25], v1);
      sub_21CE3B9B4(&qword_2812131C0, MEMORY[0x277CE0570]);
      v27 = sub_21CE6CBA0();
      v30 = *(v24 + 8);
      v30(v29, v1);
      sub_21CDE5494(v13, &qword_27CE40C28, &qword_21CE73360);
      sub_21CDE5494(v38, &qword_27CE40C28, &qword_21CE73360);
      v30(v28, v1);
      sub_21CDE5494(v6, &qword_27CE40C28, &qword_21CE73360);
      goto LABEL_10;
    }

    sub_21CDE5494(v13, &qword_27CE40C28, &qword_21CE73360);
    sub_21CDE5494(v38, &qword_27CE40C28, &qword_21CE73360);
    (*(v24 + 8))(v28, v1);
    goto LABEL_8;
  }

  sub_21CDE5494(v13, &qword_27CE40C28, &qword_21CE73360);
  sub_21CDE5494(v15, &qword_27CE40C28, &qword_21CE73360);
  if (v26(&v6[v25], 1, v1) != 1)
  {
LABEL_8:
    sub_21CDE5494(v6, &qword_27CE40C58, &qword_21CE73390);
    v27 = 0;
    goto LABEL_10;
  }

  sub_21CDE5494(v6, &qword_27CE40C28, &qword_21CE73360);
  v27 = 1;
LABEL_10:
  v31 = [objc_opt_self() currentDevice];
  v32 = [v31 userInterfaceIdiom];

  return v32 || v22 > 320.0 && v27 & 1 | ((v36 & 1) == 0);
}

uint64_t sub_21CE3AD1C()
{
  sub_21CE6CAA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BC8, &qword_21CE73220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BD0, &qword_21CE73228);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BD8, &qword_21CE73230);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE0, &qword_21CE73238);
  sub_21CE6C450();
  sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE8, &qword_21CE73240);
  sub_21CE39DE4();
  swift_getOpaqueTypeConformance2();
  return sub_21CE6CAB0();
}

uint64_t View.settingsListAppearance()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsListAppearanceModifier();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = vdupq_n_s64(0x43E0000000000000uLL);
  type metadata accessor for CGSize(0);
  sub_21CE6C9B0();
  v8 = v13;
  *v7 = v12[1];
  *(v7 + 2) = v8;
  v9 = *(v4 + 20);
  *&v7[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C08, &qword_21CE73290);
  swift_storeEnumTagMultiPayload();
  v10 = *(v4 + 24);
  *&v7[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x21CF1A890](v7, a1, v4, a2);
  return sub_21CE3B228(v7);
}

uint64_t type metadata accessor for SettingsListAppearanceModifier()
{
  result = qword_2812127A0;
  if (!qword_2812127A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CE3B0B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C28, &qword_21CE73360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21CDFAA5C(a1, &v6 - v4, &qword_27CE40C28, &qword_21CE73360);
  return sub_21CE6C1D0();
}

uint64_t sub_21CE3B160(uint64_t a1)
{
  v2 = sub_21CE6C3C0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21CE6C170();
}

uint64_t sub_21CE3B228(uint64_t a1)
{
  v2 = type metadata accessor for SettingsListAppearanceModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21CE3B2C8()
{
  sub_21CE3B3C4(319, &qword_281213188, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_21CE3B3C4(319, &qword_281213240, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21CE3B428();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CE3B3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21CE3B428()
{
  if (!qword_281213238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40C28, &qword_21CE73360);
    v0 = sub_21CE6BF50();
    if (!v1)
    {
      atomic_store(v0, &qword_281213238);
    }
  }
}

unint64_t sub_21CE3B48C()
{
  result = qword_281213178;
  if (!qword_281213178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40C30, &qword_21CE73368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BD8, &qword_21CE73230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE0, &qword_21CE73238);
    sub_21CE6C450();
    sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE8, &qword_21CE73240);
    sub_21CE39DE4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213178);
  }

  return result;
}

uint64_t sub_21CE3B624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C28, &qword_21CE73360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE3B694(uint64_t a1)
{
  v2 = sub_21CE6C3C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C68, &qword_21CE733A0);
    v10 = sub_21CE6D260();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_21CE3B9B4(&qword_281213200, MEMORY[0x277CE02A8]);
      v18 = sub_21CE6CB70();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_21CE3B9B4(&qword_2812131F8, MEMORY[0x277CE02A8]);
          v25 = sub_21CE6CBA0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21CE3B9B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CE3BA04(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_21CDF2128(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_21CE6B960();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21CE3BB30(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21CE6D360();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_21CE6D360();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_21CE454E8(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21CE13F9C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_21CE3BC20(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21CDF2AEC(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD98, &qword_21CE71CC0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21CE3BD24()
{
  result = sub_21CE4A090();
  qword_281211D10 = result;
  return result;
}

uint64_t static LinkMetadataIndexer.shared.getter()
{
  if (qword_281211D08 != -1)
  {
    swift_once();
  }
}

void *LinkMetadataIndexer.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v3 = *MEMORY[0x277CCA1A0];
  v4 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v5 = v3;
  v6 = sub_21CE6CC20();
  v7 = [v4 initWithName:v6 protectionClass:v5];

  v2[3] = v7;
  v2[4] = a1;
  return v2;
}

void sub_21CE3BE70(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 32);
  v4 = sub_21CE6CC20();
  LOBYTE(v3) = [v3 BOOLForKey_];

  *a2 = v3;
}

void sub_21CE3BEE0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 32);
  v4 = sub_21CE6CDA0();
  v5 = sub_21CE6CC20();
  [v3 setValue:v4 forKey:v5];
}

id sub_21CE3BF68()
{
  v1 = *(v0 + 32);
  v2 = sub_21CE6CC20();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21CE3BFC8()
{
  v1 = *(v0 + 32);
  v2 = sub_21CE6CDA0();
  v3 = sub_21CE6CC20();
  [v1 setValue:v2 forKey:v3];
}

void (*sub_21CE3C048(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 32);
  *a1 = v3;
  v4 = sub_21CE6CC20();
  LOBYTE(v3) = [v3 BOOLForKey_];

  *(a1 + 8) = v3;
  return sub_21CE3C0D4;
}

void sub_21CE3C0D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v4 = sub_21CE6CDA0();
  v3 = sub_21CE6CC20();
  [v1 setValue:v4 forKey:v3];
}

id sub_21CE3C158()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC3508]) init];
  [v0 setEnableRankedResults_];
  v1 = v0;
  v2 = sub_21CE6CD30();
  [v1 setFetchAttributes_];

  [v1 setDisableSemanticSearch_];
  [v1 setEnableRankedResults_];
  [v1 setMaxRankedResultCount_];
  [v1 setMaxResultCount_];
  v3 = objc_allocWithZone(MEMORY[0x277CC3500]);
  v4 = v1;
  v5 = sub_21CE6CC20();
  v6 = [v3 initWithUserQueryString:v5 userQueryContext:v4];

  v7 = v6;
  v8 = sub_21CE6CD30();
  [v7 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C78, &unk_21CE733C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21CE6F420;
  v10 = *MEMORY[0x277CCA190];
  v11 = *MEMORY[0x277CCA1A0];
  *(v9 + 32) = *MEMORY[0x277CCA190];
  *(v9 + 40) = v11;
  type metadata accessor for FileProtectionType(0);
  v12 = v10;
  v13 = v11;
  v14 = sub_21CE6CD30();

  [v7 setProtectionClasses_];

  return v7;
}

uint64_t sub_21CE3C360()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  sub_21CE6CDF0();
  v5 = sub_21CE6CE20();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_21CE11F34(0, 0, v4, &unk_21CE733D8, v6);
}

uint64_t sub_21CE3C470()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_21CE3C500;

  return sub_21CE3C7D8();
}

uint64_t sub_21CE3C500()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CE3C634, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_21CE3C634()
{
  v1 = v0[7];
  sub_21CE6D290();

  swift_getErrorValue();
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = sub_21CE6D450();
  MEMORY[0x21CF1ACB0](v5);

  sub_21CE6BB00();

  v6 = v0[1];

  return v6();
}

uint64_t sub_21CE3C724()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21CDE7A00;

  return sub_21CE3C470();
}

uint64_t sub_21CE3C7D8()
{
  v1[2] = v0;
  v2 = sub_21CE6BAC0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_21CE3C8D8;

  return sub_21CE3CDB8(0, 0, 0, 0, 0);
}

uint64_t sub_21CE3C8D8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21CE3CA30, 0, 0);
  }
}

uint64_t sub_21CE3CA30()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_21CE6BAB0();
  v5 = *(v4 + 32);
  v6 = sub_21CE6BAA0();
  v7 = sub_21CE6CC20();
  [v5 setValue:v6 forKey:v7];

  v8 = sub_21CE6CC20();
  [v5 removeObjectForKey_];

  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21CE3CB54(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CE3CC08;

  return sub_21CE3CDB8(a1, a2, 0, 0, a3);
}

uint64_t sub_21CE3CC08(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_21CE3CD08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CE4B3D0;

  return sub_21CE3CDB8(0, 0, a1, a2, 0);
}

uint64_t sub_21CE3CDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v6 + 72) = a4;
  *(v6 + 80) = v5;
  *(v6 + 184) = a5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 48) = a1;
  v7 = sub_21CE6BB40();
  *(v6 + 88) = v7;
  v8 = *(v7 - 8);
  *(v6 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21CE3CEB0, 0, 0);
}

uint64_t sub_21CE3CEB0()
{
  v138 = v0;
  v137[1] = *MEMORY[0x277D85DE8];
  if (qword_281213298 != -1)
  {
    swift_once();
  }

  v1 = sub_21CE6BDA0();
  *(v0 + 112) = __swift_project_value_buffer(v1, qword_2812165F0);
  v2 = sub_21CE6BD80();
  v3 = sub_21CE6CF30();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CDE1000, v2, v3, "Collecting open intents...", v4, 2u);
    MEMORY[0x21CF1BD50](v4, -1, -1);
  }

  v5 = *(v0 + 80);

  v6 = *(v5 + 16);
  v7 = [objc_opt_self() openEntitySystemProtocol];
  sub_21CDFA7C4(MEMORY[0x277D84F90]);
  sub_21CDE40C8(0, &qword_281211AA8, 0x277D23960);
  v8 = sub_21CE6CB50();

  *(v0 + 16) = 0;
  v9 = [v6 actionsConformingToSystemProtocol:v7 withParametersOfTypes:v8 bundleIdentifier:0 error:v0 + 16];

  v10 = *(v0 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C80, &qword_21CE73400);
    v135 = sub_21CE6CB60();
    v11 = v10;

    v12 = sub_21CE6BD80();
    v13 = sub_21CE6CF30();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21CDE1000, v12, v13, "Collecting open intents... done!", v14, 2u);
      MEMORY[0x21CF1BD50](v14, -1, -1);
    }

    v128 = (v0 + 32);
    v129 = (v0 + 24);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);
    v18 = *(v0 + 72);

    sub_21CE6BB30();
    v127 = sub_21CE6BB10();
    v130 = v19;
    (*(v16 + 8))(v15, v17);
    v20 = MEMORY[0x277D84F90];
    v131 = sub_21CDFA8D4(MEMORY[0x277D84F90]);
    v132 = sub_21CDFA8E8(v20);
    v133 = sub_21CDFA8E8(v20);
    if (v18)
    {
      v21 = *(v0 + 72);

      v22 = sub_21CE6BD80();
      v23 = sub_21CE6CF30();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = *(v0 + 64);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v137[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_21CDF2CC8(v24, v21, v137);
        _os_log_impl(&dword_21CDE1000, v22, v23, "Request to index %s only", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x21CF1BD50](v26, -1, -1);
        MEMORY[0x21CF1BD50](v25, -1, -1);
      }
    }

    v27 = 0;
    v28 = v135;
    v29 = v135 + 64;
    v30 = -1;
    v31 = -1 << *(v135 + 32);
    v32 = *(v0 + 56);
    if (-v31 < 64)
    {
      v30 = ~(-1 << -v31);
    }

    v33 = v30 & *(v135 + 64);
    v34 = (63 - v31) >> 6;
    v134 = v0;
    v136 = v34;
LABEL_15:
    *(v0 + 120) = v132;
    *(v0 + 128) = v133;
    v35 = v27;
    while (v33)
    {
      v27 = v35;
LABEL_23:
      v36 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v37 = v36 | (v27 << 6);
      v38 = (*(v28 + 48) + 16 * v37);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(*(v28 + 56) + 8 * v37);
      if (!v32 || (v40 == *(v0 + 48) ? (v42 = *(v0 + 56) == v39) : (v42 = 0), v42 || (v43 = *v38, v44 = v38[1], (sub_21CE6D400() & 1) != 0)))
      {
        v126 = v32;
        swift_bridgeObjectRetain_n();

        v53 = sub_21CE6BD80();
        v54 = sub_21CE6CF30();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v137[0] = v56;
          *v55 = 136315138;
          *(v55 + 4) = sub_21CDF2CC8(v40, v39, v137);
          _os_log_impl(&dword_21CDE1000, v53, v54, "processing %s...", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v56);
          v0 = v134;
          MEMORY[0x21CF1BD50](v56, -1, -1);
          MEMORY[0x21CF1BD50](v55, -1, -1);
        }

        v58 = *(v0 + 64);
        v57 = *(v0 + 72);
        v59 = MEMORY[0x277D84FA0];
        *(v0 + 24) = MEMORY[0x277D84FA0];
        *(v0 + 32) = v59;
        v60 = swift_task_alloc();
        v60[2] = v40;
        v60[3] = v39;
        v60[4] = v127;
        v60[5] = v130;
        v60[6] = v58;
        v60[7] = v57;
        v60[8] = v129;
        v60[9] = v128;
        sub_21CE4A334(v41, sub_21CE4A050, v60);
        v62 = v61;

        if (!*(v62 + 16))
        {

          v0 = v134;
          v29 = v135 + 64;
          goto LABEL_46;
        }

        v63 = v131;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v137[0] = v131;
        v65 = sub_21CE66850(v40, v39);
        v67 = *(v131 + 16);
        v68 = (v66 & 1) == 0;
        v69 = __OFADD__(v67, v68);
        v70 = v67 + v68;
        v29 = v135 + 64;
        if (v69)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v71 = v66;
        if (*(v131 + 24) < v70)
        {
          sub_21CE464E4(v70, isUniquelyReferenced_nonNull_native, &qword_27CE3FEE0, &qword_21CE70268);
          v63 = v137[0];
          v65 = sub_21CE66850(v40, v39);
          if ((v71 & 1) != (v72 & 1))
          {
            goto LABEL_80;
          }

LABEL_40:
          v131 = v63;
          if (v71)
          {
            goto LABEL_41;
          }

LABEL_43:
          v63[(v65 >> 6) + 8] |= 1 << v65;
          v76 = (v63[6] + 16 * v65);
          *v76 = v40;
          v76[1] = v39;
          *(v63[7] + 8 * v65) = v62;
          v77 = v63[2];
          v69 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (!v69)
          {
            v63[2] = v78;
            goto LABEL_45;
          }

LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_40;
        }

        v75 = v65;
        sub_21CE4728C(&qword_27CE3FEE0, &qword_21CE70268);
        v65 = v75;
        v29 = v135 + 64;
        v63 = v137[0];
        v131 = v137[0];
        if ((v71 & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_41:
        v73 = v63[7];
        v74 = *(v73 + 8 * v65);
        *(v73 + 8 * v65) = v62;

LABEL_45:
        v0 = v134;
LABEL_46:
        v79 = *v129;
        if (!*(*v129 + 16))
        {
          goto LABEL_58;
        }

        v80 = v79;

        v81 = v132;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v137[0] = v132;
        v83 = sub_21CE66850(v40, v39);
        v85 = *(v132 + 16);
        v86 = (v84 & 1) == 0;
        v69 = __OFADD__(v85, v86);
        v87 = v85 + v86;
        if (v69)
        {
          goto LABEL_84;
        }

        v88 = v84;
        if (*(v132 + 24) >= v87)
        {
          if (v82)
          {
            goto LABEL_52;
          }

          v92 = v83;
          sub_21CE4728C(&qword_27CE40CD0, &qword_21CE70260);
          v83 = v92;
          v29 = v135 + 64;
          v81 = v137[0];
          v132 = v137[0];
          if ((v88 & 1) == 0)
          {
            goto LABEL_55;
          }

LABEL_53:
          v90 = v81[7];
          v91 = *(v90 + 8 * v83);
          *(v90 + 8 * v83) = v80;
        }

        else
        {
          sub_21CE464E4(v87, v82, &qword_27CE40CD0, &qword_21CE70260);
          v81 = v137[0];
          v83 = sub_21CE66850(v40, v39);
          if ((v88 & 1) != (v89 & 1))
          {
LABEL_80:
            v125 = *MEMORY[0x277D85DE8];

            return sub_21CE6D440();
          }

LABEL_52:
          v132 = v81;
          if (v88)
          {
            goto LABEL_53;
          }

LABEL_55:
          v81[(v83 >> 6) + 8] |= 1 << v83;
          v93 = (v81[6] + 16 * v83);
          *v93 = v40;
          v93[1] = v39;
          *(v81[7] + 8 * v83) = v80;
          v94 = v81[2];
          v69 = __OFADD__(v94, 1);
          v95 = v94 + 1;
          if (v69)
          {
            goto LABEL_87;
          }

          v81[2] = v95;
        }

        v0 = v134;
LABEL_58:
        v96 = *v128;
        if (!*(*v128 + 16))
        {

          v28 = v135;
          v32 = v126;
          v34 = v136;
          goto LABEL_15;
        }

        v97 = v133;
        v98 = swift_isUniquelyReferenced_nonNull_native();
        v137[0] = v133;
        v100 = sub_21CE66850(v40, v39);
        v101 = *(v133 + 16);
        v102 = (v99 & 1) == 0;
        v103 = v101 + v102;
        if (__OFADD__(v101, v102))
        {
          goto LABEL_85;
        }

        v104 = v99;
        if (*(v133 + 24) >= v103)
        {
          if ((v98 & 1) == 0)
          {
            sub_21CE4728C(&qword_27CE40CD0, &qword_21CE70260);
            v97 = v137[0];
          }

          v29 = v135 + 64;
          v133 = v97;
          if ((v104 & 1) == 0)
          {
            goto LABEL_63;
          }

LABEL_69:
          v110 = v97[7];
          v111 = *(v110 + 8 * v100);
          *(v110 + 8 * v100) = v96;

          goto LABEL_70;
        }

        sub_21CE464E4(v103, v98, &qword_27CE40CD0, &qword_21CE70260);
        v97 = v137[0];
        v105 = sub_21CE66850(v40, v39);
        v29 = v135 + 64;
        if ((v104 & 1) != (v106 & 1))
        {
          goto LABEL_80;
        }

        v100 = v105;
        v133 = v97;
        if (v104)
        {
          goto LABEL_69;
        }

LABEL_63:
        v97[(v100 >> 6) + 8] |= 1 << v100;
        v107 = (v97[6] + 16 * v100);
        *v107 = v40;
        v107[1] = v39;
        *(v97[7] + 8 * v100) = v96;
        v108 = v97[2];
        v69 = __OFADD__(v108, 1);
        v109 = v108 + 1;
        if (v69)
        {
          goto LABEL_88;
        }

        v97[2] = v109;
LABEL_70:
        v0 = v134;
        v28 = v135;
        v34 = v136;

        v32 = v126;
        goto LABEL_15;
      }

      v45 = v32;

      v46 = sub_21CE6BD80();
      v47 = sub_21CE6CEF0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v137[0] = v49;
        *v48 = 136315138;
        v50 = sub_21CDF2CC8(v40, v39, v137);

        *(v48 + 4) = v50;
        _os_log_impl(&dword_21CDE1000, v46, v47, "skipping %s...", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        v51 = v49;
        v0 = v134;
        v28 = v135;
        MEMORY[0x21CF1BD50](v51, -1, -1);
        v52 = v48;
        v29 = v135 + 64;
        MEMORY[0x21CF1BD50](v52, -1, -1);
      }

      else
      {
      }

      v35 = v27;
      v32 = v45;
      v34 = v136;
    }

    while (1)
    {
      v27 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_80;
      }

      if (v27 >= v34)
      {
        break;
      }

      v33 = *(v29 + 8 * v27);
      ++v35;
      if (v33)
      {
        goto LABEL_23;
      }
    }

    *(v0 + 40) = MEMORY[0x277D84FA0];
    v112 = sub_21CE6BD80();
    v113 = sub_21CE6CF30();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_21CDE1000, v112, v113, "Indexing settingsEntities...", v114, 2u);
      MEMORY[0x21CF1BD50](v114, -1, -1);
    }

    v115 = *(v0 + 80);

    v116 = swift_task_alloc();
    *(v0 + 136) = v116;
    *v116 = v0;
    v116[1] = sub_21CE3DC0C;
    v117 = *(v0 + 80);
    v118 = *(v0 + 184);
    v119 = *MEMORY[0x277D85DE8];

    return sub_21CE4049C(v133, v118, v0 + 40, 0xD000000000000024, 0x800000021CE78890, sub_21CE4A4C8, v117);
  }

  else
  {
    v121 = v10;
    sub_21CE6B910();

    swift_willThrow();
    v122 = *(v0 + 104);

    v123 = *(v0 + 8);
    v124 = *MEMORY[0x277D85DE8];

    return v123();
  }
}

uint64_t sub_21CE3DC0C(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 136);
  v9 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_21CE3DF50;
  }

  else
  {
    v5 = sub_21CE3DD4C;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21CE3DD4C()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);

  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CF30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21CDE1000, v3, v4, "Indexing settingsEntities... Done!", v5, 2u);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  v6 = *(v0 + 112);

  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21CDE1000, v7, v8, "Indexing settingsEnums...", v9, 2u);
    MEMORY[0x21CF1BD50](v9, -1, -1);
  }

  v10 = *(v0 + 80);

  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_21CE3E00C;
  v12 = *(v0 + 120);
  v13 = *(v0 + 80);
  v14 = *(v0 + 184);
  v15 = *MEMORY[0x277D85DE8];

  return sub_21CE429D8(v12, v14, v0 + 40, 0xD000000000000022, 0x800000021CE788C0, sub_21CE4A4E4, v13);
}

uint64_t sub_21CE3DF50()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[10];

  v4 = v0[5];

  v5 = v0[19];
  v6 = v0[13];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_21CE3E00C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 160);
  v10 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = v3[18];

    v6 = sub_21CE3E340;
  }

  else
  {
    v6 = sub_21CE3E15C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21CE3E15C()
{
  v23 = v0;
  v22[2] = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v2 = v0[10];

  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CF30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21CDE1000, v3, v4, "Indexing settingsEnums... Done!", v5, 2u);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  v6 = v0[9];

  if (!v6)
  {
    v7 = v0[10];
    sub_21CE3ECB4(v0[5]);
  }

  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[18];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = v10;
  sub_21CE4A7CC(v8, sub_21CE4B3CC, 0, isUniquelyReferenced_nonNull_native, v22);
  v12 = v0[21];
  if (v9)
  {

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[13];

    v18 = v22[0];
    v19 = v0[5];

    v20 = v0[1];
    v21 = *MEMORY[0x277D85DE8];

    return v20(v18);
  }
}

uint64_t sub_21CE3E340()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[10];

  v4 = v0[5];

  v5 = v0[22];
  v6 = v0[13];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_21CE3E3FC(uint64_t a1, unint64_t a2, id a3, uint64_t a4, unint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a4 != 0xD000000000000015 || 0x800000021CE757E0 != a5) && (sub_21CE6D400() & 1) == 0)
  {
    v16 = [a3 attributionBundleIdentifier];
    if (!v16)
    {
LABEL_48:
      if (qword_281213298 != -1)
      {
        swift_once();
      }

      v75 = sub_21CE6BDA0();
      __swift_project_value_buffer(v75, qword_2812165F0);
      v76 = a3;

      v77 = sub_21CE6BD80();
      v78 = sub_21CE6CF00();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v90 = v80;
        *v79 = 136315394;
        *(v79 + 4) = sub_21CDF2CC8(a1, a2, &v90);
        *(v79 + 12) = 2080;
        v81 = [v76 identifier];
        v82 = sub_21CE6CC50();
        v84 = v83;

        v85 = sub_21CDF2CC8(v82, v84, &v90);

        *(v79 + 14) = v85;
        _os_log_impl(&dword_21CDE1000, v77, v78, "skipping %s (%s...", v79, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CF1BD50](v80, -1, -1);
        MEMORY[0x21CF1BD50](v79, -1, -1);
      }

      return 0;
    }

    v17 = v16;
    v18 = sub_21CE6CC50();
    v20 = v19;

    if (v18 == 0xD000000000000015 && 0x800000021CE757E0 == v20)
    {
    }

    else
    {
      v22 = sub_21CE6D400();

      if ((v22 & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  v23 = [a3 parameters];
  v24 = sub_21CDE40C8(0, &qword_281211A30, 0x277D23748);
  v25 = sub_21CE6CD40();

  if (v25 >> 62)
  {
    v26 = sub_21CE6D360();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26 != 1)
  {
    goto LABEL_48;
  }

  v27 = [a3 parameters];
  v28 = sub_21CE6CD40();

  if (v28 >> 62)
  {
    if (sub_21CE6D360())
    {
      goto LABEL_17;
    }

LABEL_47:

    goto LABEL_48;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

LABEL_17:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x21CF1B2A0](0, v28);
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v29 = *(v28 + 32);
  }

  v24 = v29;

  if ([v24 isOptional])
  {
    goto LABEL_30;
  }

  v30 = [v24 name];
  if (!v30)
  {
    goto LABEL_30;
  }

  v31 = v30;
  v32 = sub_21CE6CC50();
  v34 = v33;

  if (v32 == 0x746567726174 && v34 == 0xE600000000000000)
  {

    goto LABEL_26;
  }

  v35 = sub_21CE6D400();

  if ((v35 & 1) == 0)
  {
LABEL_30:

    goto LABEL_48;
  }

LABEL_26:
  v88 = a9;
  if (qword_281213298 != -1)
  {
LABEL_56:
    swift_once();
  }

  v36 = sub_21CE6BDA0();
  __swift_project_value_buffer(v36, qword_2812165F0);
  v37 = a3;

  v38 = v24;

  v39 = sub_21CE6BD80();
  v40 = sub_21CE6CF30();

  v41 = &off_278323000;
  if (os_log_type_enabled(v39, v40))
  {
    v87 = v40;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v90 = v43;
    *v42 = 136316162;
    *(v42 + 4) = sub_21CDF2CC8(a1, a2, &v90);
    *(v42 + 12) = 2080;
    v44 = [v37 title];
    v86 = v43;
    if (v44)
    {
      v45 = sub_21CE6CC20();
      v46 = [v44 localizedStringForLocaleIdentifier_];

      v44 = sub_21CE6CC50();
      v48 = v47;
    }

    else
    {
      v48 = 0xE000000000000000;
    }

    v49 = sub_21CDF2CC8(v44, v48, &v90);

    *(v42 + 14) = v49;
    *(v42 + 22) = 2080;
    v50 = [v37 identifier];
    v51 = sub_21CE6CC50();
    v53 = v52;

    v54 = sub_21CDF2CC8(v51, v53, &v90);

    *(v42 + 24) = v54;
    *(v42 + 32) = 2080;
    v41 = &off_278323000;
    v55 = [v38 valueType];
    v56 = [v55 description];

    v57 = sub_21CE6CC50();
    v59 = v58;

    v60 = sub_21CDF2CC8(v57, v59, &v90);

    *(v42 + 34) = v60;
    *(v42 + 42) = 2080;
    *(v42 + 44) = sub_21CDF2CC8(a4, a5, &v90);
    _os_log_impl(&dword_21CDE1000, v39, v87, "found %s attributed to settings %s (%s) parameter target: %s originBundle: %s", v42, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v86, -1, -1);
    MEMORY[0x21CF1BD50](v42, -1, -1);
  }

  if (!v88)
  {
    goto LABEL_38;
  }

  v61 = [v37 identifier];
  v62 = sub_21CE6CC50();
  v64 = v63;

  if (v62 == a8 && v64 == v88)
  {

    goto LABEL_38;
  }

  v65 = sub_21CE6D400();

  if (v65)
  {
LABEL_38:
    v66 = [v38 v41[476]];
    objc_opt_self();
    v67 = swift_dynamicCastObjCClass();
    if (v67)
    {
      v68 = [v67 enumerationIdentifier];
    }

    else
    {

      v66 = [v38 v41[476]];
      objc_opt_self();
      v69 = swift_dynamicCastObjCClass();
      if (!v69)
      {

        return 1;
      }

      v68 = [v69 identifier];
    }

    v70 = v68;
    v71 = sub_21CE6CC50();
    v73 = v72;

    sub_21CE4784C(&v90, v71, v73);

    return 1;
  }

  return 0;
}

void sub_21CE3ECB4(uint64_t a1)
{
  v2 = v1;
  if (qword_281213298 != -1)
  {
    swift_once();
  }

  v4 = sub_21CE6BDA0();
  __swift_project_value_buffer(v4, qword_2812165F0);
  v5 = sub_21CE6BD80();
  v6 = sub_21CE6CF30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21CDE1000, v5, v6, "Cleaning up items from old domains...", v7, 2u);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84FA0];
  v9 = [objc_allocWithZone(MEMORY[0x277CC3508]) init];
  v10 = sub_21CE6CD30();
  [v9 setFetchAttributes_];

  [v9 setEnableRankedResults_];
  [v9 setDisableSemanticSearch_];
  v11 = [objc_allocWithZone(MEMORY[0x277CC3500]) initWithUserQueryString:0 userQueryContext:v9];
  v12 = sub_21CE6CD30();
  [v11 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C78, &unk_21CE733C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21CE6F420;
  v14 = *MEMORY[0x277CCA190];
  v15 = *MEMORY[0x277CCA1A0];
  *(v13 + 32) = *MEMORY[0x277CCA190];
  *(v13 + 40) = v15;
  type metadata accessor for FileProtectionType(0);
  v16 = v14;
  v17 = v15;
  v18 = sub_21CE6CD30();

  [v11 setProtectionClasses_];

  v26 = sub_21CE4B2C0;
  v27 = v8;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21CE3F1E4;
  v25 = &block_descriptor_31;
  v19 = _Block_copy(&v22);

  [v11 setFoundItemsHandler_];
  _Block_release(v19);
  v20 = swift_allocObject();
  v20[2] = v8;
  v20[3] = a1;
  v20[4] = v2;
  v26 = sub_21CE4B2E0;
  v27 = v20;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21CE3F934;
  v25 = &block_descriptor_37;
  v21 = _Block_copy(&v22);

  [v11 setCompletionHandler_];
  _Block_release(v21);

  [v11 start];
}

void sub_21CE3F0B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21CE6D360();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CF1B2A0](i, a1);
      }

      else
      {
        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v10 = [v8 domainIdentifier];
      if (v10)
      {
        v4 = v10;
        v5 = sub_21CE6CC50();
        v7 = v6;

        swift_beginAccess();
        sub_21CE4784C(&v11, v5, v7);
        swift_endAccess();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_21CE3F1E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_21CDE40C8(0, &unk_281211A88, 0x277CC34B0);
  v3 = sub_21CE6CD40();

  v2(v3);
}

void sub_21CE3F268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = a1;
    v5 = a1;
    if (qword_281213298 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v53 = a4;
    swift_beginAccess();
    v4 = *(a2 + 16);
    if (*(a3 + 16) <= *(v4 + 16) >> 3)
    {
      v55[0] = v4;

      v17 = sub_21CE48F44(a3);
    }

    else
    {

      v17 = sub_21CE49070(a3, v4);
      v4 = v17;
    }

    v19 = *(v4 + 32);
    v20 = (((1 << v19) + 63) >> 6);
    if ((v19 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        goto LABEL_42;
      }
    }

    v51 = &v51;
    v52 = v20;
    MEMORY[0x28223BE20](v17);
    v22 = &v51 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v22, v21);
    v54 = 0;
    v23 = 0;
    v24 = 1 << *(v4 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v4 + 56);
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
      v28 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_22:
      v31 = v28 | (v23 << 6);
      v32 = (*(v4 + 48) + 16 * v31);
      v33 = *v32;
      v34 = v32[1];

      LOBYTE(v33) = sub_21CE6CCF0();

      if (v33)
      {
        *&v22[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
        if (__OFADD__(v54++, 1))
        {
          __break(1u);
LABEL_26:
          v4 = sub_21CE49754(v22, v52, v54, v4);
          while (1)
          {
            v36 = *(v4 + 16);
            if (!v36)
            {
              break;
            }

            v20 = *(v53 + 24);
            v37 = sub_21CE12CDC(*(v4 + 16), 0);
            v38 = sub_21CE49EB0(v55, v37 + 4, v36, v4);

            sub_21CDEEAA0();
            if (v38 == v36)
            {
              v39 = sub_21CE6CD30();

              [v20 deleteSearchableItemsWithDomainIdentifiers:v39 completionHandler:0];

              break;
            }

            __break(1u);
LABEL_42:
            v50 = swift_slowAlloc();
            v4 = sub_21CE48C64(v50, v20, v4, sub_21CE3F8EC, 0, sub_21CE495E0);

            MEMORY[0x21CF1BD50](v50, -1, -1);
          }

          if (qword_281213298 != -1)
          {
            swift_once();
          }

          v40 = sub_21CE6BDA0();
          __swift_project_value_buffer(v40, qword_2812165F0);

          v41 = sub_21CE6BD80();
          v42 = sub_21CE6CF30();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v55[0] = v44;
            *v43 = 136315138;
            v45 = sub_21CE6CEA0();
            v47 = v46;

            v48 = sub_21CDF2CC8(v45, v47, v55);

            *(v43 + 4) = v48;
            _os_log_impl(&dword_21CDE1000, v41, v42, "Finished cleaning up items from old domains: (%s).", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v44);
            MEMORY[0x21CF1BD50](v44, -1, -1);
            MEMORY[0x21CF1BD50](v43, -1, -1);
          }

          else
          {
          }

          goto LABEL_36;
        }
      }
    }

    v29 = v23;
    while (1)
    {
      v23 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
        goto LABEL_26;
      }

      v30 = *(v4 + 56 + 8 * v23);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v26 = (v30 - 1) & v30;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v6 = sub_21CE6BDA0();
  __swift_project_value_buffer(v6, qword_2812165F0);
  v7 = v4;
  v8 = sub_21CE6BD80();
  v9 = sub_21CE6CF10();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v55[0] = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = sub_21CE6D450();
    v14 = sub_21CDF2CC8(v12, v13, v55);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21CDE1000, v8, v9, "Error cleaning up items from old domains:  %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CF1BD50](v11, -1, -1);
    MEMORY[0x21CF1BD50](v10, -1, -1);

LABEL_36:
    v49 = *MEMORY[0x277D85DE8];
  }

  else
  {

    v18 = *MEMORY[0x277D85DE8];
  }
}