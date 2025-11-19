uint64_t _s21SiriTimeTimerInternal0A6DeviceC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = [a1 roomName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2693B3750();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a2 roomName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2693B3750();
    v13 = v12;

    if (v8)
    {
      if (!v13)
      {
        goto LABEL_86;
      }

      if (v6 == v11 && v8 == v13)
      {
      }

      else
      {
        v15 = sub_2693B3CE0();

        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v13)
    {
      goto LABEL_86;
    }
  }

  else if (v8)
  {
    goto LABEL_86;
  }

  v16 = [a1 deviceName];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2693B3750();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a2 deviceName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_2693B3750();
    v25 = v24;

    if (v20)
    {
      if (!v25)
      {
        goto LABEL_86;
      }

      if (v18 == v23 && v20 == v25)
      {
      }

      else
      {
        v26 = sub_2693B3CE0();

        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v25)
    {
      goto LABEL_86;
    }
  }

  else if (v20)
  {
    goto LABEL_86;
  }

  v27 = [a1 assistantId];
  if (v27)
  {
    v28 = v27;
    v29 = sub_2693B3750();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [a2 assistantId];
  if (v32)
  {
    v33 = v32;
    v34 = sub_2693B3750();
    v36 = v35;

    if (v31)
    {
      if (!v36)
      {
        goto LABEL_86;
      }

      if (v29 == v34 && v31 == v36)
      {
      }

      else
      {
        v37 = sub_2693B3CE0();

        if ((v37 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v36)
    {
      goto LABEL_86;
    }
  }

  else if (v31)
  {
    goto LABEL_86;
  }

  v38 = [a1 accessoryId];
  if (v38)
  {
    v39 = v38;
    v40 = sub_2693B3750();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v43 = [a2 accessoryId];
  if (v43)
  {
    v44 = v43;
    v45 = sub_2693B3750();
    v47 = v46;

    if (v42)
    {
      if (!v47)
      {
        goto LABEL_86;
      }

      if (v40 == v45 && v42 == v47)
      {
      }

      else
      {
        v48 = sub_2693B3CE0();

        if ((v48 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v47)
    {
      goto LABEL_86;
    }
  }

  else if (v42)
  {
    goto LABEL_86;
  }

  v49 = [a1 homeID];
  if (v49)
  {
    v50 = v49;
    v51 = sub_2693B3750();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v54 = [a2 homeID];
  if (v54)
  {
    v55 = v54;
    v56 = sub_2693B3750();
    v58 = v57;

    if (v53)
    {
      if (!v58)
      {
        goto LABEL_86;
      }

      if (v51 == v56 && v53 == v58)
      {
      }

      else
      {
        v59 = sub_2693B3CE0();

        if ((v59 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v58)
    {
      goto LABEL_86;
    }
  }

  else if (v53)
  {
    goto LABEL_86;
  }

  v60 = [a1 accessoryType];
  if (v60)
  {
    v61 = v60;
    v62 = sub_2693B3750();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  v65 = [a2 accessoryType];
  if (!v65)
  {
    if (!v64)
    {
      goto LABEL_89;
    }

    goto LABEL_86;
  }

  v66 = v65;
  v67 = sub_2693B3750();
  v69 = v68;

  if (!v64)
  {
    if (!v69)
    {
      goto LABEL_89;
    }

LABEL_86:

    return 0;
  }

  if (!v69)
  {
    goto LABEL_86;
  }

  if (v62 == v67 && v64 == v69)
  {
  }

  else
  {
    v71 = sub_2693B3CE0();

    if ((v71 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_89:
  v72 = [a1 isRespondingDevice];
  v73 = [a2 isRespondingDevice];
  v74 = v73;
  if (v72)
  {
    if (v73)
    {
      sub_269373370();
      v75 = sub_2693B3A50();

      if (v75)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  if (v73)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_269373298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D278, &qword_2693B6228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269373308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D278, &qword_2693B6228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269373370()
{
  result = qword_280E261B8;
  if (!qword_280E261B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E261B8);
  }

  return result;
}

unint64_t sub_2693733BC()
{
  result = qword_28030D280;
  if (!qword_28030D280)
  {
    type metadata accessor for SiriDevice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D280);
  }

  return result;
}

void sub_26937343C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;

  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v36 = v10;
  v33 = v8;
  v34 = v4;
  while (v7)
  {
    v38 = v12;
LABEL_13:
    v16 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
    v17 = *(*(v3 + 48) + v16);
    v18 = *(*(v3 + 56) + v16);
    v40 = MEMORY[0x277D84F90];
    if (v18 >> 62)
    {
      v19 = sub_2693B3C70();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v17;

    v39 = v19;
    if (v19)
    {
      v35 = v7;
      v20 = 0;
      v21 = v19;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x26D639EB0](v20, v18);
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v22 = *(v18 + 32 + 8 * v20);
        }

        v23 = v22;
        if (__OFADD__(v20++, 1))
        {
          break;
        }

        v25 = [v22 state];
        if (*(a2 + 16))
        {
          v26 = v25;
          v27 = *(a2 + 40);
          sub_2693B3DB0();
          MEMORY[0x26D63A0A0](v26);
          v28 = sub_2693B3DD0();
          v29 = -1 << *(a2 + 32);
          v30 = v28 & ~v29;
          if ((*(v9 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
          {
            v31 = ~v29;
            while (*(*(a2 + 48) + 8 * v30) != v26)
            {
              v30 = (v30 + 1) & v31;
              if (((*(v9 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            sub_2693B3C00();
            v32 = *(v40 + 16);
            sub_2693B3C30();
            sub_2693B3C40();
            sub_2693B3C10();
          }

          else
          {
LABEL_28:
          }

          v21 = v39;
        }

        else
        {
        }

        if (v20 == v21)
        {
          v13 = v40;
          v7 = v35;
          v3 = v36;
          v8 = v33;
          v4 = v34;
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v13 = MEMORY[0x277D84F90];
    v3 = v36;
LABEL_6:
    v7 &= v7 - 1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26939D1C8(v13, v37, isUniquelyReferenced_nonNull_native);

    v12 = v38;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v15);
    ++v11;
    if (v7)
    {
      v38 = v12;
      v11 = v15;
      goto LABEL_13;
    }
  }

LABEL_37:
  __break(1u);
}

void sub_269373728(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;

  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v36 = v10;
  v33 = v8;
  v34 = v4;
  while (1)
  {
    if (v7)
    {
      v38 = v12;
    }

    else
    {
      do
      {
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_40;
        }

        if (v15 >= v8)
        {

          return;
        }

        v7 = *(v4 + 8 * v15);
        ++v11;
      }

      while (!v7);
      v38 = v12;
      v11 = v15;
    }

    v16 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
    v17 = *(*(v3 + 48) + v16);
    v18 = *(*(v3 + 56) + v16);
    v40 = MEMORY[0x277D84F90];
    v19 = v18 >> 62 ? sub_2693B3C70() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v17;

    v39 = v19;
    if (v19)
    {
      break;
    }

    v13 = MEMORY[0x277D84F90];
    v3 = v36;
LABEL_6:
    v7 &= v7 - 1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26939D1C8(v13, v37, isUniquelyReferenced_nonNull_native);

    v12 = v38;
  }

  v35 = v7;
  v20 = 0;
  v21 = v19;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x26D639EB0](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v22 = *(v18 + 32 + 8 * v20);
    }

    v23 = v22;
    if (__OFADD__(v20++, 1))
    {
      break;
    }

    v25 = [v22 state];
    if (v25 > 4)
    {
      v26 = 0;
      if (*(a2 + 16))
      {
LABEL_27:
        v27 = *(a2 + 40);
        sub_2693B3DB0();
        MEMORY[0x26D63A0A0](v26);
        v28 = sub_2693B3DD0();
        v29 = -1 << *(a2 + 32);
        v30 = v28 & ~v29;
        if ((*(v9 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
        {
          v31 = ~v29;
          while (*(*(a2 + 48) + 8 * v30) != v26)
          {
            v30 = (v30 + 1) & v31;
            if (((*(v9 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          sub_2693B3C00();
          v32 = *(v40 + 16);
          sub_2693B3C30();
          sub_2693B3C40();
          sub_2693B3C10();
        }

        else
        {
LABEL_31:
        }

        v21 = v39;
        goto LABEL_18;
      }
    }

    else
    {
      v26 = qword_2693B6230[v25];
      if (*(a2 + 16))
      {
        goto LABEL_27;
      }
    }

LABEL_18:
    if (v20 == v21)
    {
      v13 = v40;
      v7 = v35;
      v3 = v36;
      v8 = v33;
      v4 = v34;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t SiriDismissTimerManager.__allocating_init(endpointUUID:)()
{

  v0 = swift_allocObject();
  if (qword_28030CE20 != -1)
  {
    swift_once();
  }

  sub_26934489C(&qword_28030D2A0, v0 + 16);
  return v0;
}

uint64_t sub_269373AE0()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D288);
  v1 = __swift_project_value_buffer(v0, qword_28030D288);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_269373BA8()
{
  result = [*v0 timers];
  if (!result)
  {
    sub_2693608D8(0, &qword_28030D2D8, 0x277CBEA60);
    v2 = MEMORY[0x26D639CF0](MEMORY[0x277D84F90]);
    v3 = [objc_opt_self() futureWithResult_];

    return v3;
  }

  return result;
}

id sub_269373C38()
{
  v1 = *v0;
  v2 = sub_2693B3740();
  v3 = [v1 dismissTimerWithIdentifier_];

  if (v3)
  {
    return v3;
  }

  v5 = [objc_opt_self() futureWithNoResult];

  return v5;
}

uint64_t sub_269373CC4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  result = sub_2693608D8(0, &qword_28030D2F0, 0x277D29740);
  qword_28030D2B8 = result;
  unk_28030D2C0 = &off_2879EE3B0;
  qword_28030D2A0 = v0;
  return result;
}

uint64_t SiriDismissTimerManager.init(endpointUUID:)()
{

  if (qword_28030CE20 != -1)
  {
    swift_once();
  }

  sub_26934489C(&qword_28030D2A0, v0 + 16);
  return v0;
}

void sub_269373D8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v10 = sub_2693B3620();
  __swift_project_value_buffer(v10, qword_28030D288);

  v11 = sub_2693B3610();
  v12 = sub_2693B39B0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_26934CA40(a1, a2, &v24);
    _os_log_impl(&dword_26933F000, v11, v12, "SiriDismissTimerManager: call dismissTimer with Id %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x26D63A640](v14, -1, -1);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  sub_26934489C(v5 + 16, &v24);
  v15 = v28;
  __swift_project_boxed_opaque_existential_1(&v24, v27);
  v16 = sub_2693B37A0();
  v17 = v15[2](v16);

  __swift_destroy_boxed_opaque_existential_1(&v24);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v28 = sub_269374F6C;
  v29 = v18;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_269378A84;
  v27 = &block_descriptor_1;
  v19 = _Block_copy(&v24);

  v20 = [v17 addSuccessBlock_];
  _Block_release(v19);

  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v28 = sub_269374FA8;
  v29 = v21;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_269373AD8;
  v27 = &block_descriptor_6;
  v22 = _Block_copy(&v24);

  v23 = [v17 addFailureBlock_];
  _Block_release(v22);
}

void sub_2693740C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v6 = sub_2693B3620();
  __swift_project_value_buffer(v6, qword_28030D288);
  v7 = sub_2693B3610();
  v8 = sub_2693B39B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26933F000, v7, v8, "SiriDismissTimerManager: calling allTimers().", v9, 2u);
    MEMORY[0x26D63A640](v9, -1, -1);
  }

  sub_26934489C(v3 + 16, &v19);
  v10 = v22;
  v11 = v23;
  __swift_project_boxed_opaque_existential_1(&v19, v22);
  v12 = (*(v11 + 1))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v19);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v23 = sub_269376564;
  v24 = v13;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269378A84;
  v22 = &block_descriptor_12;
  v14 = _Block_copy(&v19);

  v15 = [v12 addSuccessBlock_];
  _Block_release(v14);

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v23 = sub_26937656C;
  v24 = v16;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269373AD8;
  v22 = &block_descriptor_18;
  v17 = _Block_copy(&v19);

  v18 = [v12 addFailureBlock_];
  _Block_release(v17);
}

uint64_t sub_26937437C(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v55 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v54 - v10);
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v12 = sub_2693B3620();
  v13 = __swift_project_value_buffer(v12, qword_28030D288);
  v14 = sub_2693B3610();
  v15 = sub_2693B39B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26933F000, v14, v15, "TimersFuture success block called.", v16, 2u);
    MEMORY[0x26D63A640](v16, -1, -1);
  }

  v57 = 0;
  v17 = sub_2693608D8(0, &qword_280E261C0, 0x277D29730);
  sub_2693B3810();
  v18 = v57;
  if (!v57)
  {
    goto LABEL_25;
  }

  v19 = sub_2693B3610();
  v20 = sub_2693B39B0();

  if (os_log_type_enabled(v19, v20))
  {
    v12 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v57 = v11;
    *v12 = 136315138;
    v21 = MEMORY[0x26D639B10](v18, v17);
    v13 = v22;
    a1 = sub_26934CA40(v21, v22, &v57);

    *(v12 + 4) = a1;
    _os_log_impl(&dword_26933F000, v19, v20, "TimerManager fetched timers: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x26D63A640](v11, -1, -1);
    MEMORY[0x26D63A640](v12, -1, -1);
  }

  if (v18 >> 62)
  {
    v9 = sub_2693B3C70();
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_20:

    v24 = MEMORY[0x277D84F90];
LABEL_21:
    v57 = v24;
    LOBYTE(v58) = 0;
    a2(&v57);
    v32 = v57;
    v33 = v58;

    return sub_2693789D8(v32, v33);
  }

  v9 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_10:
  v57 = MEMORY[0x277D84F90];
  sub_26939D4DC(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v54 = a2;
    v23 = 0;
    v24 = v57;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x26D639EB0](v23, v18);
      }

      else
      {
        v25 = *(v18 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = sub_269374AE4();
      v28 = [v26 isFiring];

      v57 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_26939D4DC((v29 > 1), v30 + 1, 1);
        v24 = v57;
      }

      ++v23;
      *(v24 + 16) = v30 + 1;
      v31 = v24 + 16 * v30;
      *(v31 + 32) = v27;
      *(v31 + 40) = v28;
    }

    while (v9 != v23);

    a2 = v54;
    goto LABEL_21;
  }

  __break(1u);
LABEL_25:
  v35 = sub_2693B35D0();
  v59 = v35;
  v60 = MEMORY[0x277D61908];
  v36 = __swift_allocate_boxed_opaque_existential_1(&v57);
  v37 = *MEMORY[0x277D61888];
  v38 = sub_2693B3560();
  (*(*(v38 - 8) + 104))(v36, v37, v38);
  (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D618D8], v35);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1(&v57);
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_2693B3BA0();
  MEMORY[0x26D639AA0](0xD000000000000048, 0x80000002693B8C30);
  v39 = a1;
  v40 = [v39 description];
  v41 = sub_2693B3750();
  v43 = v42;

  MEMORY[0x26D639AA0](v41, v43);

  v44 = v57;
  v45 = v58;
  v46 = *(v12 - 8);
  (*(v46 + 16))(v11, v13, v12);
  (*(v46 + 56))(v11, 0, 1, v12);
  sub_26936F690(v11, v9);
  LODWORD(v39) = (*(v46 + 48))(v9, 1, v12);

  if (v39 == 1)
  {
    sub_26934B4F0(v9, &qword_28030D200, &qword_2693B6178);
  }

  else
  {

    v47 = sub_2693B3610();
    v48 = sub_2693B39A0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v55;
      *v49 = 136315650;
      v50 = sub_2693B3BB0();
      v52 = sub_26934CA40(v50, v51, &v56);

      *(v49 + 4) = v52;
      *(v49 + 12) = 2048;
      *(v49 + 14) = 128;
      *(v49 + 22) = 2080;
      *(v49 + 24) = sub_26934CA40(v44, v45, &v56);
      _os_log_impl(&dword_26933F000, v47, v48, "FatalError at %s:%lu - %s", v49, 0x20u);
      v53 = v55;
      swift_arrayDestroy();
      MEMORY[0x26D63A640](v53, -1, -1);
      MEMORY[0x26D63A640](v49, -1, -1);
    }

    (*(v46 + 8))(v9, v12);
  }

  sub_2693B3330();
  result = sub_2693B3C50();
  __break(1u);
  return result;
}

id sub_269374AE4()
{
  v1 = v0;
  v2 = sub_2693B31C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriTimer();
  v7 = [v1 timerID];
  sub_2693B31A0();

  sub_2693B3180();
  (*(v3 + 8))(v6, v2);
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_2693B3740();

  v10 = sub_2693B3740();
  v11 = [v8 initWithIdentifier:v9 displayString:v10];

  if ([v1 type] == 2 || (v12 = objc_msgSend(v1, sel_sound), v13 = objc_msgSend(v12, sel_isSilent), v12, (v13 & 1) == 0))
  {
    v15 = [v1 type];
    if (v15 == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v15 == 1;
    }
  }

  else
  {
    v14 = 2;
  }

  [v11 setType_];
  v16 = [v1 state];
  if (v16 > 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = qword_2693B64A8[v16];
  }

  [v11 setState_];
  [v1 duration];
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v11 setDuration_];

  [v1 remainingTime];
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v11 setRemainingTime_];

  v22 = [v1 title];
  if (!v22)
  {
    v30 = *MEMORY[0x277D29768];
    sub_2693B3750();
    goto LABEL_16;
  }

  v23 = v22;
  v24 = sub_2693B3750();
  v26 = v25;

  v27 = *MEMORY[0x277D29768];
  v28 = sub_2693B3750();
  if (!v26)
  {
LABEL_16:

LABEL_17:
    v31 = [v1 title];
    [v11 setLabel_];

    return v11;
  }

  if (v24 != v28 || v26 != v29)
  {
    v33 = sub_2693B3CE0();

    if (v33)
    {
      return v11;
    }

    goto LABEL_17;
  }

  return v11;
}

uint64_t SiriDismissTimerManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_269374F30()
{
  result = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  qword_28030D2C8 = result;
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269374FD0(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v5 = [a1 durationNumber];
  if (v5)
  {
    v6 = v5;
    [v5 doubleValue];
    v8 = v7;

    if (v8 > 0.0)
    {
LABEL_3:

      sub_269375BB8(a2, a3, v8);
      return;
    }
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v8 = v9;
    if (v9 > 0.0)
    {
      goto LABEL_3;
    }
  }

  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v10 = sub_2693B3620();
  __swift_project_value_buffer(v10, qword_28030D288);
  v11 = sub_2693B3610();
  v12 = sub_2693B39A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v8;
    _os_log_impl(&dword_26933F000, v11, v12, "Illegal duration: %f", v13, 0xCu);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  v14 = 1;
  v15 = 1;
  a2(&v14);
}

uint64_t sub_269375184(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = [a1 toDuration];
  if (!v6)
  {
LABEL_11:
    v16 = 7;
    v17 = 1;
    return (a2)(&v16);
  }

  v7 = v6;
  [v6 doubleValue];
  v9 = v8;

  [objc_opt_self() minimumDuration];
  if (v9 <= v10)
  {
    if (qword_28030CE18 != -1)
    {
      swift_once();
    }

    v12 = sub_2693B3620();
    __swift_project_value_buffer(v12, qword_28030D288);
    v13 = sub_2693B3610();
    v14 = sub_2693B39A0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v9;
      _os_log_impl(&dword_26933F000, v13, v14, "Illegal duration: %f", v15, 0xCu);
      MEMORY[0x26D63A640](v15, -1, -1);
    }

    goto LABEL_11;
  }

  sub_2693770B8(v3, a2, a3, v9);
}

void sub_269375344(uint64_t a1, void (*a2)(id *))
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    v5 = *a1;
    v6 = 1;
    a2(&v5);
  }

  else
  {
    v5 = *a1;
    v6 = 0;
    v4 = v3;
    a2(&v5);
    sub_26937883C(v5, v6);
  }
}

void sub_2693753C0(void *a1, void (*a2)(id *))
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_28030D288);
  v5 = a1;
  v6 = sub_2693B3610();
  v7 = sub_2693B39B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_26933F000, v6, v7, "TimerSearchFuture success block called: found timer %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  v17 = sub_269374AE4();
  v18 = 0;
  a2(&v17);
  v15 = v17;
  v16 = v18;

  sub_26937883C(v15, v16);
}

void sub_26937558C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2693755F8(void *a1, uint64_t (*a2)(uint64_t *), uint64_t a3, const char *a4, uint64_t a5)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v9 = sub_2693B3620();
  __swift_project_value_buffer(v9, qword_28030D288);
  v10 = a1;
  v11 = sub_2693B3610();
  v12 = sub_2693B39A0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_2693B30D0();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_26933F000, v11, v12, a4, v13, 0xCu);
    sub_26934B4F0(v14, &qword_28030D150, &qword_2693B5F70);
    MEMORY[0x26D63A640](v14, -1, -1);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  v17 = a5;
  v18 = 1;
  return a2(&v17);
}

uint64_t sub_269375784(void *a1, uint64_t (*a2)(_BYTE *), uint64_t a3, const char *a4, char a5)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v9 = sub_2693B3620();
  __swift_project_value_buffer(v9, qword_28030D288);
  v10 = a1;
  v11 = sub_2693B3610();
  v12 = sub_2693B39A0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_2693B30D0();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_26933F000, v11, v12, a4, v13, 0xCu);
    sub_26934B4F0(v14, &qword_28030D150, &qword_2693B5F70);
    MEMORY[0x26D63A640](v14, -1, -1);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  v17[0] = a5;
  v17[1] = 1;
  return a2(v17);
}

uint64_t sub_269375924(uint64_t a1, uint64_t (*a2)(__int16 *), uint64_t a3, const char *a4)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v6 = sub_2693B3620();
  __swift_project_value_buffer(v6, qword_28030D288);
  v7 = sub_2693B3610();
  v8 = sub_2693B39B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26933F000, v7, v8, a4, v9, 2u);
    MEMORY[0x26D63A640](v9, -1, -1);
  }

  v11 = 0;
  return a2(&v11);
}

void sub_269375A2C(uint64_t a1, void (*a2)(id *))
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v3 = sub_2693B3620();
  __swift_project_value_buffer(v3, qword_28030D288);
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_26933F000, v4, v5, "SiriTimerManager: TimerResetFuture success block called.", v6, 2u);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  v9 = sub_269374AE4();
  v10 = 0;
  a2(&v9);
  v7 = v9;
  v8 = v10;

  sub_26937883C(v7, v8);
}

void *sub_269375B58()
{
  v0 = sub_2693768E4();
  v1 = v0;
  if (v0 && [v0 state] != 2 && objc_msgSend(v1, sel_state) != 1)
  {

    return 0;
  }

  return v1;
}

void sub_269375BB8(void (*a1)(uint64_t *), uint64_t a2, double a3)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v7 = sub_2693B3620();
  __swift_project_value_buffer(v7, qword_28030D288);
  v8 = sub_2693B3610();
  v9 = sub_2693B39B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26933F000, v8, v9, "SiriTimerManager: call startCurrentTimer().", v10, 2u);
    MEMORY[0x26D63A640](v10, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v11 = [qword_28030D2C8 startCurrentTimerWithDuration_];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = v3;
    v13[3] = a1;
    v13[4] = a2;
    v26 = sub_269378A30;
    v27 = v13;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_269378A84;
    v25 = &block_descriptor_129;
    v14 = _Block_copy(&v22);

    v15 = [v12 addSuccessBlock_];
    _Block_release(v14);

    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v26 = sub_269378A88;
    v27 = v16;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_269373AD8;
    v25 = &block_descriptor_136;
    v17 = _Block_copy(&v22);

    v18 = [v12 addFailureBlock_];
    _Block_release(v17);
  }

  else
  {
    v19 = sub_2693B3610();
    v20 = sub_2693B39A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26933F000, v19, v20, "No startCurrentTimerFuture created", v21, 2u);
      MEMORY[0x26D63A640](v21, -1, -1);
    }

    v22 = 1;
    LOBYTE(v23) = 1;
    a1(&v22);
  }
}

void sub_269375F1C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v6 = sub_2693B3620();
  __swift_project_value_buffer(v6, qword_28030D288);
  v7 = sub_2693B3610();
  v8 = sub_2693B39B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26933F000, v7, v8, "startCurrentTimerFuture success block called; fetching CURRENT_TIMER", v9, 2u);
    MEMORY[0x26D63A640](v9, -1, -1);
  }

  sub_269376594(a3, a4);
}

uint64_t sub_26937601C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26934518C;

  return sub_269377D80();
}

void sub_2693760BC(uint64_t a1, void *a2)
{
  v16 = a2;
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E8, &unk_2693B6498);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v18 = *(v5 + 16);
  v18(&v16 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v17 = *(v5 + 32);
  v17(v10 + v9, v8, v4);
  v24 = sub_269378660;
  v25 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_269378A84;
  v23 = &block_descriptor_41_1;
  v11 = _Block_copy(&aBlock);

  v12 = [a2 addSuccessBlock_];
  _Block_release(v11);

  v18(v8, v19, v4);
  v13 = swift_allocObject();
  v17(v13 + v9, v8, v4);
  v24 = sub_269378770;
  v25 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_269373AD8;
  v23 = &block_descriptor_47_0;
  v14 = _Block_copy(&aBlock);

  v15 = [v16 addFailureBlock_];
  _Block_release(v14);
}

uint64_t sub_269376374()
{
  sub_269374AE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E8, &unk_2693B6498);
  return sub_2693B3900();
}

uint64_t sub_26937642C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_269378A34;

  return sub_269377D80();
}

uint64_t TimerOperationError.hashValue.getter()
{
  v1 = *v0;
  sub_2693B3DB0();
  MEMORY[0x26D63A0A0](v1);
  return sub_2693B3DD0();
}

void sub_269376594(void (*a1)(uint64_t *), uint64_t a2)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_28030D288);
  v5 = sub_2693B3610();
  v6 = sub_2693B39B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26933F000, v5, v6, "SiriTimerManager: call currentTimer().", v7, 2u);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v8 = [qword_28030D2C8 currentTimer];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v23 = sub_26937892C;
    v24 = v10;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269378A84;
    v22 = &block_descriptor_101;
    v11 = _Block_copy(&v19);

    v12 = [v9 addSuccessBlock_];
    _Block_release(v11);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v23 = sub_269378934;
    v24 = v13;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269373AD8;
    v22 = &block_descriptor_107;
    v14 = _Block_copy(&v19);

    v15 = [v9 addFailureBlock_];
    _Block_release(v14);
  }

  else
  {
    v16 = sub_2693B3610();
    v17 = sub_2693B39A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26933F000, v16, v17, "No searchTimer future created", v18, 2u);
      MEMORY[0x26D63A640](v18, -1, -1);
    }

    v19 = 8;
    LOBYTE(v20) = 1;
    a1(&v19);
  }
}

id sub_2693768E4()
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v0 = sub_2693B3620();
  __swift_project_value_buffer(v0, qword_28030D288);
  v1 = sub_2693B3610();
  v2 = sub_2693B39B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26933F000, v1, v2, "SiriTimerManager: call currentTimerSync().", v3, 2u);
    MEMORY[0x26D63A640](v3, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v4 = [qword_28030D2C8 getCurrentTimerSync];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_269374AE4();

  return v6;
}

void sub_269376A28(void (*a1)(uint64_t *), uint64_t a2)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_28030D288);
  v5 = sub_2693B3610();
  v6 = sub_2693B39B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26933F000, v5, v6, "SiriTimerManager: call stopCurrentTimer().", v7, 2u);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v8 = [qword_28030D2C8 stopCurrentTimer];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v23 = sub_2693788E0;
    v24 = v10;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269378A84;
    v22 = &block_descriptor_89;
    v11 = _Block_copy(&v19);

    v12 = [v9 addSuccessBlock_];
    _Block_release(v11);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v23 = sub_269378904;
    v24 = v13;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269373AD8;
    v22 = &block_descriptor_95;
    v14 = _Block_copy(&v19);

    v15 = [v9 addFailureBlock_];
    _Block_release(v14);
  }

  else
  {
    v16 = sub_2693B3610();
    v17 = sub_2693B39A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26933F000, v16, v17, "No timerStopFuture future created", v18, 2u);
      MEMORY[0x26D63A640](v18, -1, -1);
    }

    LOWORD(v19) = 259;
    a1(&v19);
  }
}

void sub_269376D70(void (*a1)(uint64_t *), uint64_t a2)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_28030D288);
  v5 = sub_2693B3610();
  v6 = sub_2693B39B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26933F000, v5, v6, "SiriTimerManager: call pauseCurrentTimer().", v7, 2u);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v8 = [qword_28030D2C8 pauseCurrentTimer];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v23 = sub_269378894;
    v24 = v10;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269378A84;
    v22 = &block_descriptor_77;
    v11 = _Block_copy(&v19);

    v12 = [v9 addSuccessBlock_];
    _Block_release(v11);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v23 = sub_2693788B8;
    v24 = v13;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269373AD8;
    v22 = &block_descriptor_83;
    v14 = _Block_copy(&v19);

    v15 = [v9 addFailureBlock_];
    _Block_release(v14);
  }

  else
  {
    v16 = sub_2693B3610();
    v17 = sub_2693B39A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26933F000, v16, v17, "No timerPauseFuture created", v18, 2u);
      MEMORY[0x26D63A640](v18, -1, -1);
    }

    LOWORD(v19) = 260;
    a1(&v19);
  }
}

void sub_2693770B8(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = qword_28030CE18;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_2693B3620();
  __swift_project_value_buffer(v10, qword_28030D288);
  v11 = sub_2693B3610();
  v12 = sub_2693B39B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26933F000, v11, v12, "SiriTimerManager: call startCurrentTimer().", v13, 2u);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v14 = [qword_28030D2C8 startCurrentTimerWithDuration_];
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = sub_26937895C;
    v16[4] = v8;
    v29 = sub_269378964;
    v30 = v16;
    v25 = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_269378A84;
    v28 = &block_descriptor_116;
    v17 = _Block_copy(&v25);

    v18 = [v15 addSuccessBlock_];
    _Block_release(v17);

    v19 = swift_allocObject();
    *(v19 + 16) = sub_26937895C;
    *(v19 + 24) = v8;
    v29 = sub_269378970;
    v30 = v19;
    v25 = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_269373AD8;
    v28 = &block_descriptor_122;
    v20 = _Block_copy(&v25);

    v21 = [v15 addFailureBlock_];
    _Block_release(v20);
  }

  else
  {
    v22 = sub_2693B3610();
    v23 = sub_2693B39A0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26933F000, v22, v23, "No startCurrentTimerFuture created", v24, 2u);
      MEMORY[0x26D63A640](v24, -1, -1);
    }

    v25 = 1;
    LOBYTE(v26) = 1;
    a2(&v25);
  }
}

id sub_269377464()
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v0 = sub_2693B3620();
  __swift_project_value_buffer(v0, qword_28030D288);
  v1 = sub_2693B3610();
  v2 = sub_2693B39B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26933F000, v1, v2, "SiriTimerManager: call stopCurrentTimerSync().", v3, 2u);
    MEMORY[0x26D63A640](v3, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  return [qword_28030D2C8 stopCurrentTimerSync];
}

void sub_269377580(void (*a1)(uint64_t *), uint64_t a2)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_28030D288);
  v5 = sub_2693B3610();
  v6 = sub_2693B39B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26933F000, v5, v6, "SiriTimerManager: call resumeCurrentTimer().", v7, 2u);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v8 = [qword_28030D2C8 resumeCurrentTimer];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v23 = sub_269378848;
    v24 = v10;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269378A84;
    v22 = &block_descriptor_65;
    v11 = _Block_copy(&v19);

    v12 = [v9 addSuccessBlock_];
    _Block_release(v11);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v23 = sub_26937886C;
    v24 = v13;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269373AD8;
    v22 = &block_descriptor_71;
    v14 = _Block_copy(&v19);

    v15 = [v9 addFailureBlock_];
    _Block_release(v14);
  }

  else
  {
    v16 = sub_2693B3610();
    v17 = sub_2693B39A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26933F000, v16, v17, "No timerResumeFuture created", v18, 2u);
      MEMORY[0x26D63A640](v18, -1, -1);
    }

    LOWORD(v19) = 262;
    a1(&v19);
  }
}

void sub_2693778C8(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v6 = sub_2693B3620();
  __swift_project_value_buffer(v6, qword_28030D288);
  v7 = sub_2693B3610();
  v8 = sub_2693B39B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26933F000, v7, v8, "SiriTimerManager: call resetCurrentTimer().", v9, 2u);
    MEMORY[0x26D63A640](v9, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v10 = qword_28030D2C8;
  v11 = [qword_28030D2C8 getCurrentTimerSync];
  if (v11)
  {
    v12 = v11;
    [v11 mutableCopy];

    sub_2693B3AB0();
    swift_unknownObjectRelease();
    sub_2693608D8(0, &qword_28030D220, 0x277D29700);
    if (swift_dynamicCast())
    {
      v13 = v37;
      [v37 setState_];
      v14 = [a1 toTimer];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 duration];

        if (v16)
        {
          [v16 doubleValue];
          v18 = v17;

          [v37 setDuration_];
        }
      }

      [v37 setState_];
      v19 = [v10 updateTimer_];
      if (v19)
      {
        v20 = v19;
        v21 = swift_allocObject();
        v21[2] = a2;
        v21[3] = a3;
        v21[4] = v13;
        v35 = sub_269378808;
        v36 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v32 = 1107296256;
        v33 = sub_269378A84;
        v34 = &block_descriptor_53;
        v22 = _Block_copy(&aBlock);

        v23 = v13;

        v24 = [v20 addSuccessBlock_];
        _Block_release(v22);

        v25 = swift_allocObject();
        *(v25 + 16) = a2;
        *(v25 + 24) = a3;
        v35 = sub_269378814;
        v36 = v25;
        aBlock = MEMORY[0x277D85DD0];
        v32 = 1107296256;
        v33 = sub_269373AD8;
        v34 = &block_descriptor_59_0;
        v26 = _Block_copy(&aBlock);

        v27 = [v20 addFailureBlock_];

        _Block_release(v26);
      }

      else
      {
        v28 = sub_2693B3610();
        v29 = sub_2693B39A0();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_26933F000, v28, v29, "SiriTimerManager: No timerResetFuture created", v30, 2u);
          MEMORY[0x26D63A640](v30, -1, -1);
        }

        aBlock = 5;
        LOBYTE(v32) = 1;
        a2(&aBlock);
      }
    }

    else
    {
      aBlock = 5;
      LOBYTE(v32) = 1;
      a2(&aBlock);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269377D9C()
{
  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v1 = [qword_28030D2C8 currentTimer];
  v0[3] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v2;
    v4 = *(MEMORY[0x277D859E0] + 4);
    v5 = swift_task_alloc();
    v0[5] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E0, &qword_2693B6490);
    *v5 = v0;
    v5[1] = sub_269377F28;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x54746E6572727563, 0xEE00292872656D69, sub_269378658, v3, v6);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_269377F28()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269378040, 0, 0);
}

uint64_t sub_269378040()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_2693780A8()
{
  result = qword_28030D2D0;
  if (!qword_28030D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D2D0);
  }

  return result;
}

uint64_t dispatch thunk of SiriTimerManagerImpl.currentTimer()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26934518C;

  return v6();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_269378470(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_2693784B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimerOperationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerOperationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269378660()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E8, &unk_2693B6498) - 8) + 80);

  return sub_269376374();
}

uint64_t objectdestroy_37Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E8, &unk_2693B6498);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269378770()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E8, &unk_2693B6498) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E8, &unk_2693B6498);
  return sub_2693B3900();
}

void sub_269378808(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_269375A2C(a1, *(v1 + 16));
}

void sub_26937883C(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t objectdestroy_112Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2693789D8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void *sub_269378A8C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2693B3AD0();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_269378F2C(&v5, v3, *(a1 + 36), 0, a1);
  }
}

void *sub_269378B08(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2693B3AD0();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_269378FB0(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_269378B8C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2693B3AF0();
    v5 = v4;
    v6 = sub_2693B3B40();
    v8 = v7;
    v9 = MEMORY[0x26D639DE0](v3, v5, v6, v7);
    sub_26937904C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_26937904C(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_2693B3AD0();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_269379058(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_26937904C(v3, v5, v2 != 0);
  return v13;
}

void HALTimerDeviceContext.toDismissTimerIntent.getter()
{
  v0 = sub_2693B3110();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(type metadata accessor for DismissTimerIntent()) init];
  v6 = sub_2693B3530();
  v7 = sub_269378B8C(v6);

  if (v7)
  {
    v8 = [v7 timerURL];

    if (!v8)
    {
      __break(1u);
      return;
    }

    sub_2693B30F0();

    sub_2693B30E0();
    (*(v1 + 8))(v4, v0);
    v7 = sub_2693B3740();
  }

  [v5 setTimerId_];

  sub_2693B3550();
  v9 = sub_2693B34D0();
  if (v9)
  {
    v10 = v9;
    v11 = sub_2693B35F0();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v15 = sub_2693B3740();

      [v5 setRemoteDeviceId_];
    }

    else
    {
    }
  }

  sub_2693B3540();
  if (v16)
  {
    v17 = sub_2693B3740();
  }

  else
  {
    v17 = 0;
  }

  [v5 setRemoteExecutionId_];

  sub_2693B34E0();
  v18 = sub_2693B38D0();
  [v5 setSkipConfirmation_];
}

void *sub_269378F2C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);
    v6 = v5;

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_269378FB0(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = (*(a5 + 56) + 16 * a2);
    v9 = v8[1];
    *result = *v8;
    result[1] = v9;

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26937904C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_269379058(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x26D639E10](a1, a2, v7);
      sub_269379258();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_269379258();
    if (sub_2693B3B10() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2693B3B20();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_2693B3A40();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_2693B3A50();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
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

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

unint64_t sub_269379258()
{
  result = qword_28030D2F8;
  if (!qword_28030D2F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030D2F8);
  }

  return result;
}

uint64_t sub_2693792A4()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D300);
  v1 = __swift_project_value_buffer(v0, qword_28030D300);
  if (qword_28030CDF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28030D160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2693797F0(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343B30, 0, 0);
}

uint64_t sub_2693799E4(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343DC4, 0, 0);
}

void sub_269379AD4(uint64_t *a1, void (*a2)(char *))
{
  if (a1[1])
  {
    if (qword_28030CE30 != -1)
    {
      swift_once();
    }

    v3 = sub_2693B3620();
    __swift_project_value_buffer(v3, qword_28030D300);
    v4 = sub_2693B3610();
    v5 = sub_2693B39A0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26933F000, v4, v5, "create failed", v6, 2u);
      MEMORY[0x26D63A640](v6, -1, -1);
    }

    v7 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
    v8 = OBJC_IVAR___CreateTimerIntentResponse_code;
    swift_beginAccess();
    *&v7[v8] = 5;
    [v7 setUserActivity_];
  }

  else
  {
    v9 = *a1;
    v10 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
    v11 = OBJC_IVAR___CreateTimerIntentResponse_code;
    swift_beginAccess();
    *&v10[v11] = 4;
    [v10 setUserActivity_];
    [v10 setCreatedTimer_];
    if (qword_28030CE30 != -1)
    {
      swift_once();
    }

    v12 = sub_2693B3620();
    __swift_project_value_buffer(v12, qword_28030D300);
    v7 = v10;
    v13 = sub_2693B3610();
    v14 = sub_2693B39B0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v21 = [v7 createdTimer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E0, &qword_2693B6490);
      v17 = sub_2693B3A60();
      v19 = v18;

      v20 = sub_26934CA40(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_26933F000, v13, v14, "timer after handled: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x26D63A640](v16, -1, -1);
      MEMORY[0x26D63A640](v15, -1, -1);
    }
  }

  a2(v7);
}

id sub_269379E1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CreateTimerIntentHandlerSingle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_269379E98(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_28030CE30 != -1)
  {
    swift_once();
  }

  v7 = sub_2693B3620();
  __swift_project_value_buffer(v7, qword_28030D300);
  v8 = sub_2693B3610();
  v9 = sub_2693B39B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26933F000, v8, v9, "Handling create timer intent.", v10, 2u);
    MEMORY[0x26D63A640](v10, -1, -1);
  }

  v11 = [a1 durationNumber];
  if (v11)
  {
    v12 = v11;
    [v11 doubleValue];
    v14 = v13;
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v14 = v15;
  }

  v16 = objc_opt_self();
  [v16 minimumDuration];
  if (v17 >= v14)
  {
    v22 = sub_2693B3610();
    v23 = sub_2693B39B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26933F000, v22, v23, "failureDurationTooShort", v24, 2u);
      MEMORY[0x26D63A640](v24, -1, -1);
    }

    v25 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
    v26 = OBJC_IVAR___CreateTimerIntentResponse_code;
    swift_beginAccess();
    v27 = 102;
  }

  else
  {
    v18 = [a1 durationNumber];
    if (v18)
    {
      v19 = v18;
      [v18 doubleValue];
      v21 = v20;
    }

    else
    {
      [v16 minimumDuration];
      v21 = v28;
    }

    if (v21 >= 86400.0)
    {
      v41 = sub_2693B3610();
      v42 = sub_2693B39B0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_26933F000, v41, v42, "failureDurationTooLong", v43, 2u);
        MEMORY[0x26D63A640](v43, -1, -1);
      }

      v25 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
      v26 = OBJC_IVAR___CreateTimerIntentResponse_code;
      swift_beginAccess();
      v27 = 100;
    }

    else
    {
      v29 = OBJC_IVAR____TtC21SiriTimeTimerInternal30CreateTimerIntentHandlerSingle_siriTimerManager;
      sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal30CreateTimerIntentHandlerSingle_siriTimerManager, v47);
      v30 = v48;
      v31 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v32 = (*(v31 + 80))(v30, v31);
      if (!v32)
      {
        __swift_destroy_boxed_opaque_existential_1(v47);
        sub_26934489C(a2 + v29, v47);
        v36 = v48;
        v37 = v49;
        __swift_project_boxed_opaque_existential_1(v47, v48);
        v38 = swift_allocObject();
        *(v38 + 16) = sub_269344A48;
        *(v38 + 24) = v6;
        v39 = *(v37 + 8);

        v40 = sub_26937A9E0;
        goto LABEL_23;
      }

      __swift_destroy_boxed_opaque_existential_1(v47);
      sub_26934489C(a2 + v29, v47);
      v33 = v48;
      v34 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v35 = (*(v34 + 72))(v33, v34);
      __swift_destroy_boxed_opaque_existential_1(v47);
      if (v35)
      {
        sub_26934489C(a2 + v29, v47);
        v36 = v48;
        v37 = v49;
        __swift_project_boxed_opaque_existential_1(v47, v48);
        v38 = swift_allocObject();
        *(v38 + 16) = sub_269344A48;
        *(v38 + 24) = v6;
        v39 = *(v37 + 8);

        v40 = sub_26937A9E8;
LABEL_23:
        v39(a1, v40, v38, v36, v37);

        __swift_destroy_boxed_opaque_existential_1(v47);

        return;
      }

      v44 = sub_2693B3610();
      v45 = sub_2693B39A0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_26933F000, v44, v45, "Failed to stop current timer using siriTimerManager.stopCurrentTimerSync", v46, 2u);
        MEMORY[0x26D63A640](v46, -1, -1);
      }

      v25 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
      v26 = OBJC_IVAR___CreateTimerIntentResponse_code;
      swift_beginAccess();
      v27 = 5;
    }
  }

  *&v25[v26] = v27;
  [v25 setUserActivity_];
  (a3)[2](a3, v25);
}

void sub_26937A4A4(void *a1, uint64_t a2)
{
  if (qword_28030CE30 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_28030D300);
  v5 = sub_2693B3610();
  v6 = sub_2693B39B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26933F000, v5, v6, "resolve duration for iOS", v7, 2u);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v8 = [a1 durationNumber];
  if (v8)
  {
    v9 = v8;
    [v8 doubleValue];
    v11 = v10;

    if (v11 > 0.0)
    {
LABEL_7:
      v12 = [objc_opt_self() successWithResolvedTimeInterval_];
      goto LABEL_10;
    }
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v11 = v13;
    if (v13 > 0.0)
    {
      goto LABEL_7;
    }
  }

  sub_2693608D8(0, &qword_28030D320, 0x277CD4268);
  v12 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_10:
  v14 = v12;
  (*(a2 + 16))(a2, v14);
}

void sub_26937A678(uint64_t a1, uint64_t a2)
{
  sub_26934489C(a1 + OBJC_IVAR____TtC21SiriTimeTimerInternal30CreateTimerIntentHandlerSingle_siriTimerManager, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = (*(v4 + 80))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v6 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
  v7 = OBJC_IVAR___CreateTimerIntentResponse_code;
  if (v5)
  {
    swift_beginAccess();
    *&v6[v7] = 3;
    [v6 setUserActivity_];
    [v6 setCreatedTimer_];
    if (qword_28030CE30 != -1)
    {
      swift_once();
    }

    v8 = sub_2693B3620();
    __swift_project_value_buffer(v8, qword_28030D300);
    v9 = sub_2693B3610();
    v10 = sub_2693B39B0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26933F000, v9, v10, "In handler: confirm(), shouldConfirm = true", v11, 2u);
      MEMORY[0x26D63A640](v11, -1, -1);
    }

    (*(a2 + 16))(a2, v6);
  }

  else
  {
    swift_beginAccess();
    *&v6[v7] = 4;
    [v6 setUserActivity_];
    (*(a2 + 16))(a2, v6);
  }
}

uint64_t sub_26937A878()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_2693799E4(v2, v3);
}

uint64_t sub_26937A92C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_2693797F0(v2, v3);
}

uint64_t sub_26937A9EC()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D328);
  v1 = __swift_project_value_buffer(v0, qword_28030D328);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26937AAB4(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B65E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6790;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B65F0, v15);
}

uint64_t sub_26937AC3C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26937ACC8, 0, 0);
}

uint64_t sub_26937ACC8()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_26937AD7C;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_26937C628(v4, v3);
}

uint64_t sub_26937AD7C(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_26937AEE4(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B65B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6760;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B65C0, v15);
}

uint64_t sub_26937B06C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26937B0F8, 0, 0);
}

uint64_t sub_26937B0F8()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_269347CE0;
  v3 = *(v0 + 24);

  return sub_26937C338(v3);
}

uint64_t sub_26937B1AC(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6598;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5740;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5748, v15);
}

uint64_t sub_26937B334(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26934B604;

  return sub_26937CFAC(v6);
}

uint64_t sub_26937B408(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_26937B428, 0, 0);
}

uint64_t sub_26937B428()
{
  v35 = v0;
  if (qword_28030CE38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_2693B3620();
  *(v0 + 168) = __swift_project_value_buffer(v2, qword_28030D328);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v34);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "SearchTimersIntentHandler.handle(intent:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  if ([*(v0 + 152) type] == 2 || (v15 = objc_msgSend(*(v0 + 152), sel_label)) == 0)
  {
    v18 = 0;
  }

  else
  {
    v16 = v15;
    sub_2693B3750();
    v18 = v17;
  }

  v19 = 2 * ([*(v0 + 152) type] == 2);
  *(v0 + 176) = type metadata accessor for SiriTimer();
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = sub_2693B3740();
  v22 = [v20 initWithIdentifier:0 displayString:v21];
  *(v0 + 184) = v22;

  if (v18)
  {
    v23 = sub_2693B3740();
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v0 + 152);
  [v22 setLabel_];

  v25 = [v24 duration];
  if (!v25)
  {
    [objc_opt_self() minimumDuration];
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v27 = v25;
  [v22 setDuration_];

  [v22 setState_];
  [v22 setType_];
  v28 = sub_2693B3610();
  v29 = sub_2693B39B0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_26933F000, v28, v29, "handle(intent:completion:) Enter matchTimers", v30, 2u);
    MEMORY[0x26D63A640](v30, -1, -1);
  }

  v31 = swift_task_alloc();
  *(v0 + 192) = v31;
  *v31 = v0;
  v31[1] = sub_26937B864;
  v32 = *(v0 + 160);

  return sub_26938D0B0(v0 + 16, v22, 1);
}

uint64_t sub_26937B864()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_26937BC78;
  }

  else
  {
    v3 = sub_26937B978;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26937B978()
{
  v1 = v0[21];
  v2 = sub_2693B3610();
  v3 = sub_2693B39B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26933F000, v2, v3, "handle(intent:completion:) matchTimers execute", v4, 2u);
    MEMORY[0x26D63A640](v4, -1, -1);
  }

  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v0[13] = v5;
  v0[26] = v6;
  v0[27] = v7;
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_26937BAA0;
  v9 = v0[19];

  return sub_26937D1F0(v9, v7, v5, v6);
}

uint64_t sub_26937BAA0(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_26937BBA0, 0, 0);
}

uint64_t sub_26937BBA0()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[23];
  v0[14] = v0[2];
  sub_26934B4F0((v0 + 14), &qword_28030CF40, &unk_2693B57D0);

  sub_26934B4F0((v0 + 13), &qword_28030CF48, &qword_2693B6A70);

  v0[15] = v0[6];
  sub_26934B4F0((v0 + 15), &qword_28030CF48, &qword_2693B6A70);

  v4 = v0[29];
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_26937BC78()
{
  v29 = v0;
  v1 = *(v0 + 200);
  *(v0 + 128) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 136);
    if (v3 == 6)
    {
      v4 = *(v0 + 176);
      v5 = *(v0 + 184);

      v6 = [objc_allocWithZone(type metadata accessor for SearchTimerIntentResponse()) init];
      v7 = OBJC_IVAR___SearchTimerIntentResponse_code;
      swift_beginAccess();
      *&v6[v7] = 4;
      [v6 setUserActivity_];
      v8 = sub_2693B3800();
      [v6 setMatchedTimers_];

      v9 = sub_2693B3800();
      [v6 setUnmatchedTimers_];

      v10 = sub_2693B3800();
      [v6 setRemoteTimers_];

      goto LABEL_8;
    }

    sub_26934ADAC(v3);
  }

  v11 = *(v0 + 200);
  v12 = *(v0 + 168);

  v13 = v11;
  v14 = sub_2693B3610();
  v15 = sub_2693B39A0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 200);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    *(v0 + 144) = v16;
    v19 = v16;
    v20 = sub_2693B3760();
    v22 = sub_26934CA40(v20, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_26933F000, v14, v15, "Failed to handle search timers due to error %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x26D63A640](v18, -1, -1);
    MEMORY[0x26D63A640](v17, -1, -1);
  }

  v23 = *(v0 + 200);
  v24 = *(v0 + 184);
  v6 = [objc_allocWithZone(type metadata accessor for SearchTimerIntentResponse()) init];
  v25 = OBJC_IVAR___SearchTimerIntentResponse_code;
  swift_beginAccess();
  *&v6[v25] = 5;
  [v6 setUserActivity_];

LABEL_8:
  v26 = *(v0 + 8);

  return v26(v6);
}

uint64_t sub_26937BFAC(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6570;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5700;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5530, v15);
}

uint64_t sub_26937C134(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_26937B408(v6);
}

uint64_t type metadata accessor for SearchTimersIntentHandler()
{
  result = qword_28030D340;
  if (!qword_28030D340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26937C284()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26937C134(v2, v3, v4);
}

uint64_t sub_26937C338(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2693B3420();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26937C3F8, 0, 0);
}

uint64_t sub_26937C3F8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    __swift_project_value_buffer(v5, qword_280E262F0);
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAllTargetableDevices() Resolving all targetable devices", v8, 2u);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_269349074;
    v10 = v0[2];

    return sub_269394BC4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2693B54B0;
    type metadata accessor for SiriDeviceResolutionResult();
    *(v12 + 32) = [swift_getObjCClassFromMetadata() notRequired];
    v13 = v0[5];

    v14 = v0[1];

    return v14(v12);
  }
}

uint64_t sub_26937C628(void *a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v4 = sub_2693B3420();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[5] = type metadata accessor for SearchTimerIntent();
  v2[6] = &protocol witness table for SearchTimerIntent;
  v2[2] = a1;
  v7 = a1;

  return MEMORY[0x2822009F8](sub_26937C70C, 0, 0);
}

uint64_t sub_26937C70C()
{
  v21 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    v0[25] = __swift_project_value_buffer(v5, qword_280E262F0);
    sub_26934489C((v0 + 2), (v0 + 7));
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      sub_26934489C((v0 + 7), (v0 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
      v10 = sub_2693B3760();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v13 = sub_26934CA40(v10, v12, &v20);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAssociatedDeviceTarget(for:) %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D63A640](v9, -1, -1);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    }

    v18 = swift_task_alloc();
    v0[26] = v18;
    *v18 = v0;
    v18[1] = sub_26937C9E8;
    v19 = v0[21];

    return sub_269394BC4();
  }

  else
  {
    *(v0[21] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v14 = [swift_getObjCClassFromMetadata() notRequired];
    v15 = v0[24];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v16 = v0[1];

    return v16(v14);
  }
}

uint64_t sub_26937C9E8(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_26937CAE8, 0, 0);
}

uint64_t sub_26937CAE8()
{
  v54 = v0;
  v1 = *(v0 + 216);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_22:
    v47 = *(v0 + 216);
    goto LABEL_23;
  }

  if (v1 < 0)
  {
    v46 = *(v0 + 216);
  }

  if (!sub_2693B3C70())
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = [*(v0 + 160) targetingInfo];
  v3 = *(v0 + 216);
  if (!v2)
  {
LABEL_23:

LABEL_24:
    *(*(v0 + 168) + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v41 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_25;
  }

  v4 = *(v0 + 200);

  v5 = v2;
  v6 = sub_2693B3610();
  v7 = sub_2693B39B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v53 = v9;
    *v8 = 134218242;
    if (v1 >> 62)
    {
      v12 = *(v0 + 216);
      if (v1 < 0)
      {
        v13 = *(v0 + 216);
      }

      v10 = sub_2693B3C70();
    }

    else
    {
      v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = *(v0 + 216);
    *(v8 + 4) = v10;

    *(v8 + 12) = 2080;
    v15 = v5;
    v16 = [v15 description];
    v17 = v5;
    v18 = sub_2693B3750();
    v20 = v19;

    v21 = v18;
    v5 = v17;
    v22 = sub_26934CA40(v21, v20, &v53);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_26933F000, v6, v7, "Filtering %ld targets using targeting info: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  else
  {
    v11 = *(v0 + 216);
  }

  v23 = sub_26939D8E8(v5, *(v0 + 160), *(v0 + 216));

  v24 = *(v0 + 200);
  if (!v23)
  {
    v42 = sub_2693B3610();
    v43 = sub_2693B39B0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26933F000, v42, v43, "No valid device target found for target criteria", v44, 2u);
      MEMORY[0x26D63A640](v44, -1, -1);
    }

    v45 = *(v0 + 168);

    *(v45 + qword_280E266B8) = 1;
    goto LABEL_24;
  }

  v25 = v23;
  v26 = sub_2693B3610();
  v27 = sub_2693B39B0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v28 = 136315138;
    v52 = v5;
    v29 = v25;
    v30 = v25;
    v31 = [v29 description];
    v32 = sub_2693B3750();
    v34 = v33;

    v25 = v30;
    v5 = v52;
    v35 = sub_26934CA40(v32, v34, &v53);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_26933F000, v26, v27, "Found valid device target: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x26D63A640](v51, -1, -1);
    MEMORY[0x26D63A640](v28, -1, -1);
  }

  v36 = *(v0 + 168) + qword_28030D540;
  swift_beginAccess();
  v37 = *(v36 + 24);
  v38 = *(v36 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v39 = *(v38 + 40);
  v40 = v25;
  v39(v23, v37, v38);
  swift_endAccess();
  type metadata accessor for SiriDeviceResolutionResult();
  v41 = sub_2693B1D2C(v40);

LABEL_25:
  v48 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v49 = *(v0 + 8);

  return v49(v41);
}

uint64_t sub_26937CFCC()
{
  v20 = v0;
  if (qword_28030CE38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_28030D328);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "SearchTimersIntentHandler.confirm(intent:completion:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = [objc_allocWithZone(type metadata accessor for SearchTimerIntentResponse()) init];
  v16 = OBJC_IVAR___SearchTimerIntentResponse_code;
  swift_beginAccess();
  *&v15[v16] = 4;
  [v15 setUserActivity_];
  v17 = *(v0 + 8);

  return v17(v15);
}

uint64_t sub_26937D1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_26937D214, 0, 0);
}

uint64_t sub_26937D214()
{
  v92 = v0;
  v1 = v0;
  if (qword_28030CE38 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v2 = sub_2693B3620();
    __swift_project_value_buffer(v2, qword_28030D328);
    v3 = sub_2693B3610();
    v4 = sub_2693B39B0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26933F000, v3, v4, "SearchTimersIntentHandler.handleTimerResult(intent:matchedTimers:unmatchedTimers:)", v5, 2u);
      MEMORY[0x26D63A640](v5, -1, -1);
    }

    v6 = v1[6];
    v7 = v1[7];

    sub_26938B998(v6);
    v8 = sub_2693995BC(v7);
    v9 = MEMORY[0x277D84F90];
    if (!v8)
    {
      break;
    }

    v10 = sub_2693995BC(v1[7]);
    v11 = v1[7];
    if (v10 < 2)
    {
      v48 = v1[7];

LABEL_52:
      if (sub_2693995BC(v11))
      {
        sub_26938B998(v11);
      }

      break;
    }

    v79 = v1;
    v12 = v1[5];
    v13 = [v12 state];
    v86 = [v12 type];
    v14 = sub_26939ECE0(&unk_2879EC988);
    v15 = v14;
    v16 = v11 + 64;
    v17 = -1 << *(v11 + 32);
    if (-v17 < 64)
    {
      v18 = ~(-1 << -v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v83 = (63 - v17) >> 6;
    v1 = (v14 + 56);

    v20 = 0;
    v85 = MEMORY[0x277D84F98];
    v80 = v11;
    v81 = v11 + 64;
    while (v19)
    {
LABEL_17:
      v24 = (v20 << 9) | (8 * __clz(__rbit64(v19)));
      v25 = *(*(v11 + 48) + v24);
      v26 = *(*(v11 + 56) + v24);
      v90 = v9;
      if (v26 >> 62)
      {
        v27 = sub_2693B3C70();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v84 = v25;

      if (v27)
      {
        v29 = 0;
        v88 = v28 & 0xFFFFFFFFFFFFFF8;
        v89 = v28 & 0xC000000000000001;
        v82 = v28;
        v87 = v28 + 32;
        v30 = &property descriptor for SearchTimerIntent.targetingInfo;
        while (1)
        {
          if (v89)
          {
            v31 = MEMORY[0x26D639EB0](v29, v82);
          }

          else
          {
            if (v29 >= *(v88 + 16))
            {
              goto LABEL_61;
            }

            v31 = *(v87 + 8 * v29);
          }

          v32 = v31;
          if (__OFADD__(v29++, 1))
          {
            break;
          }

          if (v13 && ((v34 = [v31 v30[190]], v34 >= 5) ? (v35 = 0) : (v35 = qword_2693B6600[v34]), v35 != v13))
          {
          }

          else
          {
            v36 = v27;
            v37 = v13;
            v38 = [v32 v30[190]];
            if (*(v15 + 16))
            {
              v39 = v38;
              v40 = *(v15 + 40);
              sub_2693B3DB0();
              MEMORY[0x26D63A0A0](v39);
              v41 = sub_2693B3DD0();
              v42 = -1 << *(v15 + 32);
              v43 = v41 & ~v42;
              if (((*(v1 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
              {
                goto LABEL_43;
              }

              v44 = ~v42;
              while (*(*(v15 + 48) + 8 * v43) != v39)
              {
                v43 = (v43 + 1) & v44;
                if (((*(v1 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                {
                  goto LABEL_43;
                }
              }

              v45 = [v32 type];
              v46 = v45 == 1;
              if (v45 == 2)
              {
                v46 = 2;
              }

              if ((v86 & ~v46) != 0)
              {
LABEL_43:
              }

              else
              {
                sub_2693B3C00();
                v47 = *(v90 + 16);
                sub_2693B3C30();
                sub_2693B3C40();
                sub_2693B3C10();
              }

              v30 = &property descriptor for SearchTimerIntent.targetingInfo;
            }

            else
            {
            }

            v13 = v37;
            v27 = v36;
          }

          if (v29 == v27)
          {
            v21 = v90;
            v9 = MEMORY[0x277D84F90];
            v11 = v80;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v21 = v9;
LABEL_11:
      v19 &= v19 - 1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91[0] = v85;
      sub_26939D1C8(v21, v84, isUniquelyReferenced_nonNull_native);

      v16 = v81;
    }

    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v83)
      {
        v1 = v79;
        v49 = v79[7];

        v11 = v85;
        goto LABEL_52;
      }

      v19 = *(v16 + 8 * v23);
      ++v20;
      if (v19)
      {
        v20 = v23;
        goto LABEL_17;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
  }

  v50 = v1[8];
  v51 = v1[5];
  v52 = [objc_allocWithZone(type metadata accessor for SearchTimerIntentResponse()) init];
  v53 = OBJC_IVAR___SearchTimerIntentResponse_code;
  swift_beginAccess();
  *&v52[v53] = 4;
  [v52 setUserActivity_];
  type metadata accessor for SiriTimer();
  v54 = sub_2693B3800();

  [v52 setMatchedTimers_];

  v55 = sub_2693B3800();

  [v52 setUnmatchedTimers_];

  sub_26938B998(v50);
  v56 = sub_2693B3800();

  [v52 setRemoteTimers_];

  v57 = v51;
  v58 = v52;
  v59 = sub_2693B3610();
  v60 = sub_2693B39B0();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = v1[5];
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v91[0] = v63;
    *v62 = 136315394;
    v64 = v61;
    v65 = v1;
    v66 = [v64 description];
    v67 = sub_2693B3750();
    v69 = v68;

    v70 = sub_26934CA40(v67, v69, v91);

    *(v62 + 4) = v70;
    *(v62 + 12) = 2080;
    v71 = v58;
    v72 = [v71 description];
    v73 = sub_2693B3750();
    v75 = v74;

    v1 = v65;
    v76 = sub_26934CA40(v73, v75, v91);

    *(v62 + 14) = v76;
    _os_log_impl(&dword_26933F000, v59, v60, "Successfully handled search timers intent: %s with response %s", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v63, -1, -1);
    MEMORY[0x26D63A640](v62, -1, -1);
  }

  v77 = v1[1];

  return v77(v58);
}

uint64_t sub_26937D9BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26937B334(v2, v3, v4);
}

uint64_t sub_26937DA70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_26937B06C(v2, v3, v4);
}

uint64_t sub_26937DB24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26937AC3C(v2, v3, v4);
}

uint64_t dispatch thunk of SessionManaging.sessionIDString(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_269352CDC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_26937DD44(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v38 = v6;
  v35 = v2;
  v36 = result;
  while (v5)
  {
LABEL_10:
    v11 = v5;
    v12 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v13 = v12 >> 62;
    v14 = v12;
    if (v12 >> 62)
    {
      v15 = sub_2693B3C70();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_2693B3C70();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v15;
    v17 = __OFADD__(result, v15);
    v18 = result + v15;
    if (v17)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v16)
      {
LABEL_22:
        sub_2693B3C70();
      }

      else
      {
        v19 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v20 = *(v19 + 16);
      }

      result = sub_2693B3BE0();
      v39 = result;
      v19 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v16)
    {
      goto LABEL_22;
    }

    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v39 = v9;
LABEL_24:
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    v23 = v14;
    if (v13)
    {
      v25 = v19;
      result = sub_2693B3C70();
      v19 = v25;
      v23 = v14;
      v24 = result;
    }

    else
    {
      v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v24)
    {
      if (((v22 >> 1) - v21) < v40)
      {
        goto LABEL_43;
      }

      v26 = v19 + 8 * v21 + 32;
      v37 = v19;
      v42 = v23;
      if (v13)
      {
        if (v24 < 1)
        {
          goto LABEL_45;
        }

        sub_26934B1D8();
        v27 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
          v28 = v24;
          v29 = v26;
          v30 = sub_26936F610(v41, v27, v42);
          v32 = *v31;
          (v30)(v41, 0);
          v26 = v29;
          v24 = v28;
          *(v26 + 8 * v27++) = v32;
        }

        while (v28 != v27);
      }

      else
      {
        sub_2693608D8(0, &qword_280E261C0, 0x277D29730);
        swift_arrayInitWithCopy();
      }

      v9 = v39;
      v2 = v35;
      v1 = v36;
      v6 = v38;
      v5 = (v11 - 1) & v11;
      if (v40 >= 1)
      {
        v33 = *(v37 + 16);
        v17 = __OFADD__(v33, v40);
        v34 = v33 + v40;
        if (v17)
        {
          goto LABEL_44;
        }

        *(v37 + 16) = v34;
      }
    }

    else
    {

      v9 = v39;
      v6 = v38;
      v5 = (v11 - 1) & v11;
      if (v40 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

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
  return result;
}

uint64_t sub_26937E094()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D350);
  v1 = __swift_project_value_buffer(v0, qword_28030D350);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_26937E15C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x168);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UpdateTimerIntentHandler();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_26937E1E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  v4 = v2;
}

uint64_t sub_26937E220(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 416) = a4;
  *(v5 + 424) = a5;
  *(v5 + 529) = a3;
  *(v5 + 528) = a2;
  *(v5 + 408) = a1;
  return MEMORY[0x2822009F8](sub_26937E24C, 0, 0);
}

uint64_t sub_26937E24C()
{
  v21 = v0;
  if (qword_28030CE40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = sub_2693B3620();
  *(v0 + 432) = __swift_project_value_buffer(v2, qword_28030D350);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Updating timer matching intentsTimer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = swift_task_alloc();
  *(v0 + 440) = v15;
  *v15 = v0;
  v15[1] = sub_26937E474;
  v16 = *(v0 + 424);
  v17 = *(v0 + 529);
  v18 = *(v0 + 408);

  return sub_26938C30C(v0 + 64, v18, v17);
}

uint64_t sub_26937E474()
{
  v2 = *(*v1 + 440);
  v3 = *v1;
  *(v3 + 448) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26937E5A8, 0, 0);
  }
}

uint64_t sub_26937E5A8()
{
  v74 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 72);
  *(v0 + 456) = v2;

  if ((v1 & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = [*(v0 + 408) shouldMatchAny];
  sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
  v4 = sub_2693B3A30();
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = sub_2693B3A50();

  if ((v5 & 1) == 0)
  {
LABEL_10:
    v20 = *(v0 + 448);
    v19 = v2;
    goto LABEL_11;
  }

  v6 = [*(v0 + 408) shouldMatchRemote];
  v4 = sub_2693B3A30();
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = sub_2693B3A50();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(v0 + 432);
  v9 = *(v0 + 88);

  v10 = sub_2693B3610();
  v11 = sub_2693B39B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v73[0] = v13;
    *v12 = 136315138;
    *(v0 + 216) = sub_2693995BC(v9);
    v14 = sub_2693B3CB0();
    v16 = sub_26934CA40(v14, v15, v73);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_26933F000, v10, v11, "Appending matched remote timers to list of timers to update: %s timer(s)", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D63A640](v13, -1, -1);
    MEMORY[0x26D63A640](v12, -1, -1);
  }

  v17 = *(v0 + 448);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73[0] = v2;
  sub_269349ED8(v9, sub_26937E1E4, 0, isUniquelyReferenced_nonNull_native, v73);

  v19 = v73[0];
LABEL_11:
  *(v0 + 464) = v19;
  v21 = *(v0 + 432);
  v22 = sub_2693B3610();
  v23 = sub_2693B39B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;

    v26 = sub_2693995BC(v25);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_26933F000, v22, v23, "Found matching timers in updateTimer pre-filter: %ld", v24, 0xCu);
    MEMORY[0x26D63A640](v24, -1, -1);
  }

  v27 = *(v0 + 416);

  v28 = *(v27 + 16);

  if (v28)
  {
    v29 = *(v0 + 416);

    sub_269373728(v19, v29);
    v31 = v30;
  }

  else
  {
    v31 = v19;
  }

  v32 = *(v0 + 432);
  v33 = sub_2693B3610();
  v34 = sub_2693B39B0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;

    v37 = sub_2693995BC(v36);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_26933F000, v33, v34, "Found matching filtered timers in updateTimer: %ld", v35, 0xCu);
    MEMORY[0x26D63A640](v35, -1, -1);
  }

  v38 = *(v0 + 528);
  v39 = *(v0 + 408);

  v41 = sub_2693A0900(v40, v39);
  v43 = v42;

  *(v0 + 472) = v41;
  *(v0 + 480) = v43;
  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF50, &unk_2693B57E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2693B5770;
    *(inited + 32) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_2693B54B0;
    *(v45 + 32) = v43;
    *(inited + 40) = v45;
    v46 = v41;
    v47 = v43;
    v48 = sub_2693A83E8(inited);
    swift_setDeallocating();
    sub_26934B4F0(inited + 32, &qword_28030CF58, &unk_2693B57F0);

    v31 = v48;
  }

  *(v0 + 488) = v31;
  if ((*(v0 + 528) & 1) == 0)
  {

    v50 = sub_2693995BC(v49);

    if (v50 > 1)
    {
      v51 = (v0 + 208);
      v72 = (v0 + 376);
      v52 = (v0 + 384);
      v53 = (v0 + 392);
      sub_26934B0F0();
      swift_allocError();
      v55 = 1;
      goto LABEL_29;
    }
  }

  v57 = sub_2693995BC(v56);

  if (!v57)
  {

    v67 = sub_2693995BC(v66);

    if (!v67)
    {

      v70 = sub_2693995BC(v69);

      if (v70)
      {
        v51 = (v0 + 296);
        v53 = (v0 + 304);
        v52 = (v0 + 312);
        v72 = (v0 + 320);
        sub_26934B0F0();
        swift_allocError();
        *v71 = v19;
        swift_willThrow();

        goto LABEL_30;
      }
    }

    v51 = (v0 + 328);
    v53 = (v0 + 336);
    v52 = (v0 + 344);
    v72 = (v0 + 352);
    sub_26934B0F0();
    swift_allocError();
    v55 = 5;
LABEL_29:
    *v54 = v55;
    swift_willThrow();
LABEL_30:
    sub_26934B144(v41, v43);

    *v51 = *(v0 + 64);
    sub_26934B4F0(v51, &qword_28030CF40, &unk_2693B57D0);

    *v53 = *(v0 + 80);
    sub_26934B4F0(v53, &qword_28030CF48, &qword_2693B6A70);
    *v52 = *(v0 + 88);
    sub_26934B4F0(v52, &qword_28030CF48, &qword_2693B6A70);
    *v72 = *(v0 + 96);
    sub_26934B4F0(v72, &qword_28030CF48, &qword_2693B6A70);
    v68 = *(v0 + 8);

    return v68();
  }

  v58 = *(v0 + 424);
  v59 = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v58 + v59, v0 + 144);
  v60 = __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));

  v62 = sub_26937DD44(v61);
  *(v0 + 496) = v62;

  v63 = *v60;
  v64 = swift_task_alloc();
  *(v0 + 504) = v64;
  *v64 = v0;
  v64[1] = sub_26937ED54;

  return sub_269368DE0(v62, v63);
}

uint64_t sub_26937ED54(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;
  v4[64] = v1;

  v7 = v4[62];

  if (v1)
  {
    v8 = sub_269382180;
  }

  else
  {
    v4[65] = a1;
    v8 = sub_269382184;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26937EE98(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 416) = a4;
  *(v5 + 424) = a5;
  *(v5 + 529) = a3;
  *(v5 + 528) = a2;
  *(v5 + 408) = a1;
  return MEMORY[0x2822009F8](sub_26937EEC4, 0, 0);
}

uint64_t sub_26937EEC4()
{
  v21 = v0;
  if (qword_28030CE40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = sub_2693B3620();
  *(v0 + 432) = __swift_project_value_buffer(v2, qword_28030D350);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Updating timer matching intentsTimer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = swift_task_alloc();
  *(v0 + 440) = v15;
  *v15 = v0;
  v15[1] = sub_26937F0EC;
  v16 = *(v0 + 424);
  v17 = *(v0 + 529);
  v18 = *(v0 + 408);

  return sub_26938C798(v0 + 64, v18, v17);
}

uint64_t sub_26937F0EC()
{
  v2 = *(*v1 + 440);
  v3 = *v1;
  *(v3 + 448) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26937F220, 0, 0);
  }
}

uint64_t sub_26937F220()
{
  v74 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 72);
  *(v0 + 456) = v2;

  if ((v1 & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = [*(v0 + 408) shouldMatchAny];
  sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
  v4 = sub_2693B3A30();
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = sub_2693B3A50();

  if ((v5 & 1) == 0)
  {
LABEL_10:
    v20 = *(v0 + 448);
    v19 = v2;
    goto LABEL_11;
  }

  v6 = [*(v0 + 408) shouldMatchRemote];
  v4 = sub_2693B3A30();
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = sub_2693B3A50();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(v0 + 432);
  v9 = *(v0 + 88);

  v10 = sub_2693B3610();
  v11 = sub_2693B39B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v73[0] = v13;
    *v12 = 136315138;
    *(v0 + 216) = sub_2693995BC(v9);
    v14 = sub_2693B3CB0();
    v16 = sub_26934CA40(v14, v15, v73);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_26933F000, v10, v11, "Appending matched remote timers to list of timers to update: %s timer(s)", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D63A640](v13, -1, -1);
    MEMORY[0x26D63A640](v12, -1, -1);
  }

  v17 = *(v0 + 448);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73[0] = v2;
  sub_269349ED8(v9, sub_26937E1E4, 0, isUniquelyReferenced_nonNull_native, v73);

  v19 = v73[0];
LABEL_11:
  *(v0 + 464) = v19;
  v21 = *(v0 + 432);
  v22 = sub_2693B3610();
  v23 = sub_2693B39B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;

    v26 = sub_2693995BC(v25);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_26933F000, v22, v23, "Found matching timers in updateTimer pre-filter: %ld", v24, 0xCu);
    MEMORY[0x26D63A640](v24, -1, -1);
  }

  v27 = *(v0 + 416);

  v28 = *(v27 + 16);

  if (v28)
  {
    v29 = *(v0 + 416);

    sub_269373728(v19, v29);
    v31 = v30;
  }

  else
  {
    v31 = v19;
  }

  v32 = *(v0 + 432);
  v33 = sub_2693B3610();
  v34 = sub_2693B39B0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;

    v37 = sub_2693995BC(v36);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_26933F000, v33, v34, "Found matching filtered timers in updateTimer: %ld", v35, 0xCu);
    MEMORY[0x26D63A640](v35, -1, -1);
  }

  v38 = *(v0 + 528);
  v39 = *(v0 + 408);

  v41 = sub_2693A0900(v40, v39);
  v43 = v42;

  *(v0 + 472) = v41;
  *(v0 + 480) = v43;
  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF50, &unk_2693B57E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2693B5770;
    *(inited + 32) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_2693B54B0;
    *(v45 + 32) = v43;
    *(inited + 40) = v45;
    v46 = v41;
    v47 = v43;
    v48 = sub_2693A83E8(inited);
    swift_setDeallocating();
    sub_26934B4F0(inited + 32, &qword_28030CF58, &unk_2693B57F0);

    v31 = v48;
  }

  *(v0 + 488) = v31;
  if ((*(v0 + 528) & 1) == 0)
  {

    v50 = sub_2693995BC(v49);

    if (v50 > 1)
    {
      v51 = (v0 + 208);
      v72 = (v0 + 376);
      v52 = (v0 + 384);
      v53 = (v0 + 392);
      sub_26934B0F0();
      swift_allocError();
      v55 = 1;
      goto LABEL_29;
    }
  }

  v57 = sub_2693995BC(v56);

  if (!v57)
  {

    v67 = sub_2693995BC(v66);

    if (!v67)
    {

      v70 = sub_2693995BC(v69);

      if (v70)
      {
        v51 = (v0 + 296);
        v53 = (v0 + 304);
        v52 = (v0 + 312);
        v72 = (v0 + 320);
        sub_26934B0F0();
        swift_allocError();
        *v71 = v19;
        swift_willThrow();

        goto LABEL_30;
      }
    }

    v51 = (v0 + 328);
    v53 = (v0 + 336);
    v52 = (v0 + 344);
    v72 = (v0 + 352);
    sub_26934B0F0();
    swift_allocError();
    v55 = 5;
LABEL_29:
    *v54 = v55;
    swift_willThrow();
LABEL_30:
    sub_26934B144(v41, v43);

    *v51 = *(v0 + 64);
    sub_26934B4F0(v51, &qword_28030CF40, &unk_2693B57D0);

    *v53 = *(v0 + 80);
    sub_26934B4F0(v53, &qword_28030CF48, &qword_2693B6A70);
    *v52 = *(v0 + 88);
    sub_26934B4F0(v52, &qword_28030CF48, &qword_2693B6A70);
    *v72 = *(v0 + 96);
    sub_26934B4F0(v72, &qword_28030CF48, &qword_2693B6A70);
    v68 = *(v0 + 8);

    return v68();
  }

  v58 = *(v0 + 424);
  v59 = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v58 + v59, v0 + 144);
  v60 = __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));

  v62 = sub_26937DD44(v61);
  *(v0 + 496) = v62;

  v63 = *v60;
  v64 = swift_task_alloc();
  *(v0 + 504) = v64;
  *v64 = v0;
  v64[1] = sub_26937F9CC;

  return sub_269369AC0(v62, v63);
}

uint64_t sub_26937F9CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;
  v4[64] = v1;

  v7 = v4[62];

  if (v1)
  {
    v8 = sub_26937FC20;
  }

  else
  {
    v4[65] = a1;
    v8 = sub_26937FB10;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26937FB10()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 464);
  v3 = *(v0 + 456);
  sub_26934B144(*(v0 + 472), *(v0 + 480));
  *(v0 + 264) = *(v0 + 64);
  sub_26934B4F0(v0 + 264, &qword_28030CF40, &unk_2693B57D0);

  *(v0 + 272) = *(v0 + 80);
  sub_26934B4F0(v0 + 272, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 280) = *(v0 + 88);
  sub_26934B4F0(v0 + 280, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 288) = *(v0 + 96);
  sub_26934B4F0(v0 + 288, &qword_28030CF48, &qword_2693B6A70);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  v4 = *(v0 + 8);
  v5 = *(v0 + 520);

  return v4(v5);
}

uint64_t sub_26937FC20()
{
  v20 = v0;
  v1 = v0[64];
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v2 = sub_2693B35D0();
  v3 = MEMORY[0x277D61908];
  v0[16] = v2;
  v0[17] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 13);
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v5 = *MEMORY[0x277D61838];
  v6 = sub_2693B34B0();
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, v5, v6);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v2);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v7 = sub_2693B30D0();
  sub_2693A7BF4(v7, &v19);

  v8 = v19;
  v9 = v0[64];
  v11 = v0[60];
  v10 = v0[61];
  v12 = v0[58];
  v13 = v0[59];
  v14 = v0[57];
  if (v19 == 10)
  {
    swift_willThrow();
    sub_26934B144(v13, v11);

    v0[46] = v0[8];
    sub_26934B4F0((v0 + 46), &qword_28030CF40, &unk_2693B57D0);

    v0[45] = v0[10];
    sub_26934B4F0((v0 + 45), &qword_28030CF48, &qword_2693B6A70);
    v0[50] = v0[11];
    sub_26934B4F0((v0 + 50), &qword_28030CF48, &qword_2693B6A70);
    v0[28] = v0[12];
    sub_26934B4F0((v0 + 28), &qword_28030CF48, &qword_2693B6A70);
    v15 = v0[64];
  }

  else
  {
    sub_26934B0F0();
    swift_allocError();
    *v16 = v8;
    swift_willThrow();

    sub_26934B144(v13, v11);

    v0[29] = v0[8];
    sub_26934B4F0((v0 + 29), &qword_28030CF40, &unk_2693B57D0);

    v0[30] = v0[10];
    sub_26934B4F0((v0 + 30), &qword_28030CF48, &qword_2693B6A70);
    v0[31] = v0[11];
    sub_26934B4F0((v0 + 31), &qword_28030CF48, &qword_2693B6A70);
    v0[32] = v0[12];
    sub_26934B4F0((v0 + 32), &qword_28030CF48, &qword_2693B6A70);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_26937FF18(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  *(v6 + 424) = a5;
  *(v6 + 432) = a6;
  *(v6 + 537) = a3;
  *(v6 + 536) = a2;
  *(v6 + 408) = a1;
  *(v6 + 416) = a4;
  v7 = a6;

  return MEMORY[0x2822009F8](sub_26937FF90, 0, 0);
}

uint64_t sub_26937FF90()
{
  v21 = v0;
  if (qword_28030CE40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = sub_2693B3620();
  *(v0 + 440) = __swift_project_value_buffer(v2, qword_28030D350);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Updating timer matching intentsTimer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = swift_task_alloc();
  *(v0 + 448) = v15;
  *v15 = v0;
  v15[1] = sub_2693801B8;
  v16 = *(v0 + 424);
  v17 = *(v0 + 537);
  v18 = *(v0 + 408);

  return sub_26938CC24(v0 + 64, v18, v17);
}

uint64_t sub_2693801B8()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_269380308, 0, 0);
  }
}

uint64_t sub_269380308()
{
  v77 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 72);
  *(v0 + 464) = v2;

  if ((v1 & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = [*(v0 + 408) shouldMatchAny];
  sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
  v4 = sub_2693B3A30();
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = sub_2693B3A50();

  if ((v5 & 1) == 0)
  {
LABEL_10:
    v20 = *(v0 + 456);
    v19 = v2;
    goto LABEL_11;
  }

  v6 = [*(v0 + 408) shouldMatchRemote];
  v4 = sub_2693B3A30();
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = sub_2693B3A50();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(v0 + 440);
  v9 = *(v0 + 88);

  v10 = sub_2693B3610();
  v11 = sub_2693B39B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v76[0] = v13;
    *v12 = 136315138;
    *(v0 + 216) = sub_2693995BC(v9);
    v14 = sub_2693B3CB0();
    v16 = sub_26934CA40(v14, v15, v76);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_26933F000, v10, v11, "Appending matched remote timers to list of timers to update: %s timer(s)", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D63A640](v13, -1, -1);
    MEMORY[0x26D63A640](v12, -1, -1);
  }

  v17 = *(v0 + 456);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76[0] = v2;
  sub_269349ED8(v9, sub_26937E1E4, 0, isUniquelyReferenced_nonNull_native, v76);

  v19 = v76[0];
LABEL_11:
  *(v0 + 472) = v19;
  v21 = *(v0 + 440);
  v22 = sub_2693B3610();
  v23 = sub_2693B39B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;

    v26 = sub_2693995BC(v25);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_26933F000, v22, v23, "Found matching timers in updateTimer pre-filter: %ld", v24, 0xCu);
    MEMORY[0x26D63A640](v24, -1, -1);
  }

  v27 = *(v0 + 416);

  v28 = *(v27 + 16);

  if (v28)
  {
    v29 = *(v0 + 416);

    sub_269373728(v19, v29);
    v31 = v30;
  }

  else
  {
    v31 = v19;
  }

  v32 = *(v0 + 440);
  v33 = sub_2693B3610();
  v34 = sub_2693B39B0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;

    v37 = sub_2693995BC(v36);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_26933F000, v33, v34, "Found matching filtered timers in updateTimer: %ld", v35, 0xCu);
    MEMORY[0x26D63A640](v35, -1, -1);
  }

  v38 = *(v0 + 536);
  v39 = *(v0 + 408);

  v41 = sub_2693A0900(v40, v39);
  v43 = v42;

  *(v0 + 480) = v41;
  *(v0 + 488) = v43;
  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF50, &unk_2693B57E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2693B5770;
    *(inited + 32) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_2693B54B0;
    *(v45 + 32) = v43;
    *(inited + 40) = v45;
    v46 = v41;
    v47 = v43;
    v48 = sub_2693A83E8(inited);
    swift_setDeallocating();
    sub_26934B4F0(inited + 32, &qword_28030CF58, &unk_2693B57F0);

    v31 = v48;
  }

  *(v0 + 496) = v31;
  if ((*(v0 + 536) & 1) == 0)
  {

    v50 = sub_2693995BC(v49);

    if (v50 > 1)
    {
      v51 = (v0 + 208);
      v75 = (v0 + 376);
      v52 = (v0 + 384);
      v53 = (v0 + 392);
      sub_26934B0F0();
      swift_allocError();
      v55 = 1;
      goto LABEL_29;
    }
  }

  v57 = sub_2693995BC(v56);

  if (!v57)
  {

    v70 = sub_2693995BC(v69);

    if (!v70)
    {

      v73 = sub_2693995BC(v72);

      if (v73)
      {
        v51 = (v0 + 296);
        v53 = (v0 + 304);
        v52 = (v0 + 312);
        v75 = (v0 + 320);
        sub_26934B0F0();
        swift_allocError();
        *v74 = v19;
        swift_willThrow();

        goto LABEL_30;
      }
    }

    v51 = (v0 + 328);
    v53 = (v0 + 336);
    v52 = (v0 + 344);
    v75 = (v0 + 352);
    sub_26934B0F0();
    swift_allocError();
    v55 = 5;
LABEL_29:
    *v54 = v55;
    swift_willThrow();
LABEL_30:
    sub_26934B144(v41, v43);

    *v51 = *(v0 + 64);
    sub_26934B4F0(v51, &qword_28030CF40, &unk_2693B57D0);

    *v53 = *(v0 + 80);
    sub_26934B4F0(v53, &qword_28030CF48, &qword_2693B6A70);
    *v52 = *(v0 + 88);
    sub_26934B4F0(v52, &qword_28030CF48, &qword_2693B6A70);
    *v75 = *(v0 + 96);
    sub_26934B4F0(v75, &qword_28030CF48, &qword_2693B6A70);

    v71 = *(v0 + 8);

    return v71();
  }

  v58 = *(v0 + 424);
  v59 = *(v0 + 432);
  v60 = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v58 + v60, v0 + 144);
  v61 = __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));

  v63 = sub_26937DD44(v62);
  *(v0 + 504) = v63;

  v64 = *v61;
  v65 = v59;
  v66 = swift_task_alloc();
  *(v0 + 512) = v66;
  *v66 = v0;
  v66[1] = sub_269380AC8;
  v67 = *(v0 + 432);

  return sub_26936A930(v63, v64, v67);
}

uint64_t sub_269380AC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 512);
  v6 = *v2;
  v4[65] = v1;

  v7 = v4[63];

  if (v1)
  {
    v8 = sub_269380D2C;
  }

  else
  {
    v4[66] = a1;
    v8 = sub_269380C0C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_269380C0C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);
  v3 = *(v0 + 464);
  v4 = *(v0 + 432);
  sub_26934B144(*(v0 + 480), *(v0 + 488));
  *(v0 + 264) = *(v0 + 64);
  sub_26934B4F0(v0 + 264, &qword_28030CF40, &unk_2693B57D0);

  *(v0 + 272) = *(v0 + 80);
  sub_26934B4F0(v0 + 272, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 280) = *(v0 + 88);
  sub_26934B4F0(v0 + 280, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 288) = *(v0 + 96);
  sub_26934B4F0(v0 + 288, &qword_28030CF48, &qword_2693B6A70);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  v5 = *(v0 + 8);
  v6 = *(v0 + 528);

  return v5(v6);
}

uint64_t sub_269380D2C()
{
  v20 = v0;
  v1 = *(v0 + 520);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v2 = sub_2693B35D0();
  v3 = MEMORY[0x277D61908];
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 104));
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v5 = *MEMORY[0x277D61838];
  v6 = sub_2693B34B0();
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, v5, v6);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v2);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v7 = sub_2693B30D0();
  sub_2693A7BF4(v7, &v19);

  v8 = v19;
  v9 = *(v0 + 520);
  v11 = *(v0 + 488);
  v10 = *(v0 + 496);
  v12 = *(v0 + 472);
  v13 = *(v0 + 480);
  v14 = *(v0 + 464);
  if (v19 == 10)
  {
    swift_willThrow();
    sub_26934B144(v13, v11);

    *(v0 + 368) = *(v0 + 64);
    sub_26934B4F0(v0 + 368, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 360) = *(v0 + 80);
    sub_26934B4F0(v0 + 360, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 400) = *(v0 + 88);
    sub_26934B4F0(v0 + 400, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 224) = *(v0 + 96);
    sub_26934B4F0(v0 + 224, &qword_28030CF48, &qword_2693B6A70);
    v15 = *(v0 + 520);
  }

  else
  {
    sub_26934B0F0();
    swift_allocError();
    *v16 = v8;
    swift_willThrow();

    sub_26934B144(v13, v11);

    *(v0 + 232) = *(v0 + 64);
    sub_26934B4F0(v0 + 232, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 240) = *(v0 + 80);
    sub_26934B4F0(v0 + 240, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 248) = *(v0 + 88);
    sub_26934B4F0(v0 + 248, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 256) = *(v0 + 96);
    sub_26934B4F0(v0 + 256, &qword_28030CF48, &qword_2693B6A70);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26938102C(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8)
{
  *(v8 + 546) = a8;
  *(v8 + 432) = a6;
  *(v8 + 440) = a7;
  *(v8 + 416) = a4;
  *(v8 + 424) = a5;
  *(v8 + 545) = a3;
  *(v8 + 544) = a2;
  *(v8 + 408) = a1;
  v9 = a6;

  return MEMORY[0x2822009F8](sub_2693810AC, 0, 0);
}

uint64_t sub_2693810AC()
{
  v21 = v0;
  if (qword_28030CE40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = sub_2693B3620();
  *(v0 + 448) = __swift_project_value_buffer(v2, qword_28030D350);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Updating timer matching intentsTimer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = swift_task_alloc();
  *(v0 + 456) = v15;
  *v15 = v0;
  v15[1] = sub_2693812D4;
  v16 = *(v0 + 424);
  v17 = *(v0 + 545);
  v18 = *(v0 + 408);

  return sub_26938D9C8(v0 + 64, v18, v17);
}

uint64_t sub_2693812D4()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_269381424, 0, 0);
  }
}

uint64_t sub_269381424()
{
  v79 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 72);
  *(v0 + 472) = v2;

  if ((v1 & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = [*(v0 + 408) shouldMatchAny];
  sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
  v4 = sub_2693B3A30();
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = sub_2693B3A50();

  if ((v5 & 1) == 0)
  {
LABEL_10:
    v20 = *(v0 + 464);
    v19 = v2;
    goto LABEL_11;
  }

  v6 = [*(v0 + 408) shouldMatchRemote];
  v4 = sub_2693B3A30();
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = sub_2693B3A50();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(v0 + 448);
  v9 = *(v0 + 88);

  v10 = sub_2693B3610();
  v11 = sub_2693B39B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v78[0] = v13;
    *v12 = 136315138;
    *(v0 + 216) = sub_2693995BC(v9);
    v14 = sub_2693B3CB0();
    v16 = sub_26934CA40(v14, v15, v78);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_26933F000, v10, v11, "Appending matched remote timers to list of timers to update: %s timer(s)", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D63A640](v13, -1, -1);
    MEMORY[0x26D63A640](v12, -1, -1);
  }

  v17 = *(v0 + 464);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = v2;
  sub_269349ED8(v9, sub_26937E1E4, 0, isUniquelyReferenced_nonNull_native, v78);

  v19 = v78[0];
LABEL_11:
  *(v0 + 480) = v19;
  v21 = *(v0 + 448);
  v22 = sub_2693B3610();
  v23 = sub_2693B39B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;

    v26 = sub_2693995BC(v25);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_26933F000, v22, v23, "Found matching timers in updateTimer pre-filter: %ld", v24, 0xCu);
    MEMORY[0x26D63A640](v24, -1, -1);
  }

  v27 = *(v0 + 416);

  v28 = *(v27 + 16);

  if (v28)
  {
    v29 = *(v0 + 416);

    sub_269373728(v19, v29);
    v31 = v30;
  }

  else
  {
    v31 = v19;
  }

  v32 = *(v0 + 448);
  v33 = sub_2693B3610();
  v34 = sub_2693B39B0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;

    v37 = sub_2693995BC(v36);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_26933F000, v33, v34, "Found matching filtered timers in updateTimer: %ld", v35, 0xCu);
    MEMORY[0x26D63A640](v35, -1, -1);
  }

  v38 = *(v0 + 544);
  v39 = *(v0 + 408);

  v41 = sub_2693A0900(v40, v39);
  v43 = v42;

  *(v0 + 488) = v41;
  *(v0 + 496) = v43;
  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF50, &unk_2693B57E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2693B5770;
    *(inited + 32) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_2693B54B0;
    *(v45 + 32) = v43;
    *(inited + 40) = v45;
    v46 = v41;
    v47 = v43;
    v48 = sub_2693A83E8(inited);
    swift_setDeallocating();
    sub_26934B4F0(inited + 32, &qword_28030CF58, &unk_2693B57F0);

    v31 = v48;
  }

  *(v0 + 504) = v31;
  if ((*(v0 + 544) & 1) == 0)
  {

    v50 = sub_2693995BC(v49);

    if (v50 > 1)
    {
      v51 = (v0 + 208);
      v77 = (v0 + 376);
      v52 = (v0 + 384);
      v53 = (v0 + 392);
      sub_26934B0F0();
      swift_allocError();
      v55 = 1;
      goto LABEL_29;
    }
  }

  v57 = sub_2693995BC(v56);

  if (!v57)
  {

    v72 = sub_2693995BC(v71);

    if (!v72)
    {

      v75 = sub_2693995BC(v74);

      if (v75)
      {
        v51 = (v0 + 296);
        v53 = (v0 + 304);
        v52 = (v0 + 312);
        v77 = (v0 + 320);
        sub_26934B0F0();
        swift_allocError();
        *v76 = v19;
        swift_willThrow();

        goto LABEL_30;
      }
    }

    v51 = (v0 + 328);
    v53 = (v0 + 336);
    v52 = (v0 + 344);
    v77 = (v0 + 352);
    sub_26934B0F0();
    swift_allocError();
    v55 = 5;
LABEL_29:
    *v54 = v55;
    swift_willThrow();
LABEL_30:
    sub_26934B144(v41, v43);

    *v51 = *(v0 + 64);
    sub_26934B4F0(v51, &qword_28030CF40, &unk_2693B57D0);

    *v53 = *(v0 + 80);
    sub_26934B4F0(v53, &qword_28030CF48, &qword_2693B6A70);
    *v52 = *(v0 + 88);
    sub_26934B4F0(v52, &qword_28030CF48, &qword_2693B6A70);
    *v77 = *(v0 + 96);
    sub_26934B4F0(v77, &qword_28030CF48, &qword_2693B6A70);

    v73 = *(v0 + 8);

    return v73();
  }

  v58 = *(v0 + 546);
  v59 = *(v0 + 424);
  v60 = *(v0 + 432);
  v61 = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v59 + v61, v0 + 144);
  v62 = __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));

  v64 = sub_26937DD44(v63);
  *(v0 + 512) = v64;

  v65 = *v62;
  v66 = v60;
  v67 = swift_task_alloc();
  *(v0 + 520) = v67;
  *v67 = v0;
  v67[1] = sub_269381BEC;
  v68 = *(v0 + 432);
  v69 = *(v0 + 440);

  return sub_26936B858(v64, v65, v68, v69, v58 & 1);
}

uint64_t sub_269381BEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 520);
  v6 = *v2;
  v4[66] = v1;

  v7 = v4[64];

  if (v1)
  {
    v8 = sub_269381E50;
  }

  else
  {
    v4[67] = a1;
    v8 = sub_269381D30;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_269381D30()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 472);
  v4 = *(v0 + 432);
  sub_26934B144(*(v0 + 488), *(v0 + 496));
  *(v0 + 264) = *(v0 + 64);
  sub_26934B4F0(v0 + 264, &qword_28030CF40, &unk_2693B57D0);

  *(v0 + 272) = *(v0 + 80);
  sub_26934B4F0(v0 + 272, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 280) = *(v0 + 88);
  sub_26934B4F0(v0 + 280, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 288) = *(v0 + 96);
  sub_26934B4F0(v0 + 288, &qword_28030CF48, &qword_2693B6A70);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  v5 = *(v0 + 8);
  v6 = *(v0 + 536);

  return v5(v6);
}

uint64_t sub_269381E50()
{
  v20 = v0;
  v1 = *(v0 + 528);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v2 = sub_2693B35D0();
  v3 = MEMORY[0x277D61908];
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 104));
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v5 = *MEMORY[0x277D61838];
  v6 = sub_2693B34B0();
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, v5, v6);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v2);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v7 = sub_2693B30D0();
  sub_2693A7BF4(v7, &v19);

  v8 = v19;
  v9 = *(v0 + 528);
  v11 = *(v0 + 496);
  v10 = *(v0 + 504);
  v12 = *(v0 + 480);
  v13 = *(v0 + 488);
  v14 = *(v0 + 472);
  if (v19 == 10)
  {
    swift_willThrow();
    sub_26934B144(v13, v11);

    *(v0 + 368) = *(v0 + 64);
    sub_26934B4F0(v0 + 368, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 360) = *(v0 + 80);
    sub_26934B4F0(v0 + 360, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 400) = *(v0 + 88);
    sub_26934B4F0(v0 + 400, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 224) = *(v0 + 96);
    sub_26934B4F0(v0 + 224, &qword_28030CF48, &qword_2693B6A70);
    v15 = *(v0 + 528);
  }

  else
  {
    sub_26934B0F0();
    swift_allocError();
    *v16 = v8;
    swift_willThrow();

    sub_26934B144(v13, v11);

    *(v0 + 232) = *(v0 + 64);
    sub_26934B4F0(v0 + 232, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 240) = *(v0 + 80);
    sub_26934B4F0(v0 + 240, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 248) = *(v0 + 88);
    sub_26934B4F0(v0 + 248, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 256) = *(v0 + 96);
    sub_26934B4F0(v0 + 256, &qword_28030CF48, &qword_2693B6A70);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_269382188(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = sub_2693B3420();
  v2[44] = v3;
  v4 = *(v3 - 8);
  v2[45] = v4;
  v5 = *(v4 + 64) + 15;
  v2[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269382248, 0, 0);
}

uint64_t sub_269382248()
{
  v50 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = *(v0 + 336);
  if (!v5)
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_26934B4F0(v0 + 96, &qword_28030D3E8, &unk_2693B67E0);
    goto LABEL_20;
  }

  *(v0 + 328) = v5;
  TimerIntent = type metadata accessor for CreateTimerIntent();
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D3F0, &unk_2693B6A00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
LABEL_15:
    v33 = *(v0 + 344);
    sub_26934B4F0(v0 + 96, &qword_28030D3E8, &unk_2693B67E0);
    if ((*(v33 + qword_280E266A8) & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (!*(v0 + 120))
  {
    goto LABEL_15;
  }

  sub_2693436F0((v0 + 96), v0 + 56);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = [v10 device];

  if (v11)
  {
LABEL_8:
    *(v0 + 376) = v11;
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v14 = sub_2693B3620();
    __swift_project_value_buffer(v14, qword_280E262F0);
    v15 = v11;
    v16 = sub_2693B3610();
    v17 = sub_2693B39B0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v49 = v19;
      *v18 = 136315138;
      v20 = v15;
      v21 = [v20 description];
      v22 = sub_2693B3750();
      v24 = v23;

      v25 = sub_26934CA40(v22, v24, &v49);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_26933F000, v16, v17, "Found targetTimer device from intent to search: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x26D63A640](v19, -1, -1);
      MEMORY[0x26D63A640](v18, -1, -1);
    }

    v26 = *(v0 + 344);
    v27 = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v26 + v27, v0 + 216);
    v28 = __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
    *(v0 + 384) = sub_26939ECE0(&unk_2879EC748);
    v29 = *v28;
    v48 = sub_26936FA6C;
    v30 = v15;
    v31 = swift_task_alloc();
    *(v0 + 392) = v31;
    *v31 = v0;
    v32 = sub_269382884;
LABEL_25:
    v31[1] = v32;

    return v48();
  }

  v12 = (*(v0 + 344) + qword_28030D540);
  swift_beginAccess();
  v13 = *(*__swift_project_boxed_opaque_existential_1(v12, v12[3]) + 24);
  if (v13)
  {
    v11 = v13;
    goto LABEL_8;
  }

  v39 = *(v0 + 344);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  if (*(v39 + qword_280E266A8) != 1)
  {
LABEL_20:
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v40 = sub_2693B3620();
    __swift_project_value_buffer(v40, qword_280E262F0);
    v41 = sub_2693B3610();
    v42 = sub_2693B39B0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26933F000, v41, v42, "Searching all known target destinations for timers", v43, 2u);
      MEMORY[0x26D63A640](v43, -1, -1);
    }

    v44 = *(v0 + 344);

    v45 = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v44 + v45, v0 + 16);
    v46 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 424) = sub_26939ECE0(&unk_2879EC788);
    v47 = *v46;
    v48 = sub_2693703A4;
    v31 = swift_task_alloc();
    *(v0 + 432) = v31;
    *v31 = v0;
    v32 = sub_269382DE8;
    goto LABEL_25;
  }

LABEL_16:
  *(v0 + 200) = TimerIntent;
  *(v0 + 208) = &protocol witness table for CreateTimerIntent;
  *(v0 + 176) = v7;
  sub_2693436F0((v0 + 176), v0 + 136);
  v34 = *__swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v35 = v7;
  v36 = swift_task_alloc();
  *(v0 + 416) = v36;
  *v36 = v0;
  v36[1] = sub_269382B2C;
  v37 = *(v0 + 344);

  return sub_269389A28(v34, v37);
}

uint64_t sub_269382884(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *(*v2 + 384);
  v7 = *(*v2 + 376);
  v8 = *v2;
  *(*v2 + 400) = v1;

  swift_unknownObjectRelease();
  if (v1)
  {
    v9 = sub_269382AB0;
  }

  else
  {
    *(v4 + 408) = a1;
    v9 = sub_2693829EC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2693829EC()
{
  v1 = sub_269378A8C(v0[51]);
  v3 = v2;

  v4 = v0[47];
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 27);

    v3 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = v0[46];

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_269382AB0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 400);
  v2 = *(v0 + 368);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_269382B2C(void *a1)
{
  v3 = *(*v1 + 416);
  v5 = *v1;

  return MEMORY[0x2822009F8](sub_269382C30, 0, 0);
}

uint64_t sub_269382C30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  if (qword_280E262E8 != -1)
  {
    swift_once();
  }

  v1 = sub_2693B3620();
  __swift_project_value_buffer(v1, qword_280E262F0);
  v2 = sub_2693B3610();
  v3 = sub_2693B39B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26933F000, v2, v3, "Searching all known target destinations for timers", v4, 2u);
    MEMORY[0x26D63A640](v4, -1, -1);
  }

  v5 = v0[43];

  v6 = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v5 + v6, (v0 + 2));
  v7 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[53] = sub_26939ECE0(&unk_2879EC788);
  v8 = *v7;
  v9 = swift_task_alloc();
  v0[54] = v9;
  *v9 = v0;
  v9[1] = sub_269382DE8;

  return sub_2693703A4();
}

uint64_t sub_269382DE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *(*v2 + 424);
  v7 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v8 = sub_269382FA8;
  }

  else
  {
    *(v4 + 448) = a1;
    v8 = sub_269382F34;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_269382F34()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[56];
  v2 = v0[46];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_269382FA8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[55];
  v2 = v0[46];

  v3 = v0[1];

  return v3();
}

uint64_t sub_269383014()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_280E262D0);
  v1 = __swift_project_value_buffer(v0, qword_280E262D0);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2693830DC(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6840;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6848;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B6850, v15);
}

uint64_t sub_269383264(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26934B604;

  return sub_26938A5D8(v6);
}

uint64_t sub_269383338(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_269383358, 0, 0);
}

uint64_t sub_269383358()
{
  v23 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_280E262D0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v22);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "CreateTimeIntentHandler.handle(intent:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = v0[2];
  [v15 type];
  sub_2693836E4(v15, &v22);
  if (v22 == 10)
  {
    v16 = swift_task_alloc();
    v0[4] = v16;
    *v16 = v0;
    v16[1] = sub_2693835E8;
    v17 = v0[2];
    v18 = v0[3];

    return sub_269383964(v17);
  }

  else
  {
    v20 = sub_26938A81C(0, &v22);
    sub_26938A514(v22);
    v21 = v0[1];

    return v21(v20);
  }
}

uint64_t sub_2693835E8(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

id sub_2693836E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_280E262D0);
  v5 = a1;
  v6 = sub_2693B3610();
  v7 = sub_2693B39B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_2693B3750();
    v14 = v13;

    v15 = sub_26934CA40(v12, v14, &v31);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_26933F000, v6, v7, "CreateTimeIntentHandler.validateDurationForIntent(_:) %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  v16 = [v5 durationNumber];
  if (v16)
  {
    v17 = v16;
    [v16 doubleValue];
    v19 = v18;
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v19 = v20;
  }

  v21 = objc_opt_self();
  result = [v21 minimumDuration];
  if (v19 <= v23)
  {
    v28 = 2;
  }

  else
  {
    v24 = [v5 durationNumber];
    if (v24)
    {
      v25 = v24;
      [v24 doubleValue];
      v27 = v26;
    }

    else
    {
      [v21 minimumDuration];
      v27 = v29;
    }

    result = [v21 maximumDuration];
    v28 = 3;
    if (v30 > v27)
    {
      v28 = 10;
    }
  }

  *a2 = v28;
  return result;
}

uint64_t sub_269383964(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = sub_2693B31C0();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269383A30, 0, 0);
}

uint64_t sub_269383A30()
{
  v129 = v0;
  if (qword_280E262C8 != -1)
  {
LABEL_59:
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_2693B3620();
  v0[39] = __swift_project_value_buffer(v2, qword_280E262D0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B3990();

  v127 = v0;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v128 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v128);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "CreateTimeIntentHandler.createTime(intent:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = [v0[33] durationNumber];
  if (v15)
  {
    v16 = v15;
    [v15 doubleValue];
    v18 = v17;
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v18 = v19;
  }

  v20 = v0[33];
  v21 = [objc_allocWithZone(MEMORY[0x277D29700]) initWithState:3 duration:v18];
  v0[40] = v21;
  if ([v20 type] == 2 || (v22 = objc_msgSend(v0[33], sel_label)) == 0)
  {
    v26 = 0;
  }

  else
  {
    v23 = v22;
    v24 = [v22 spokenPhrase];

    sub_2693B3750();
    v26 = v25;
  }

  if ([v0[33] type] == 2)
  {
    v27 = [objc_opt_self() toneSoundWithIdentifier:*MEMORY[0x277D72068] vibrationIdentifer:0 volume:0];
    [v21 setSound_];
  }

  if (v26)
  {
    v28 = sub_2693B3740();
  }

  else
  {
    v28 = 0;
  }

  v29 = v0[33];
  [v21 setTitle_];

  if ([v29 type])
  {
    v30 = [v0[33] type];
  }

  else
  {
    v30 = 1;
  }

  v31 = MEMORY[0x277D84F90];
  v32 = sub_2693A85E0(MEMORY[0x277D84F90]);
  v33 = *MEMORY[0x277D29658];
  v34 = sub_2693B3750();
  v36 = v35;
  v37 = MEMORY[0x277D83BB8];
  v0[5] = MEMORY[0x277D83B88];
  v0[6] = v37;
  v0[7] = MEMORY[0x277D83B90];
  v0[2] = v30;
  sub_26938AF94(v0 + 1, v0 + 4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v128 = v32;
  v39 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  sub_269389478(*v39, v34, v36, isUniquelyReferenced_nonNull_native, &v128);

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v40 = v128;
  v0[41] = v128;
  sub_269388FE0(v40);
  v41 = sub_2693B3710();

  [v21 setSiriContext_];

  v42 = v21;
  v43 = sub_2693B3610();
  v44 = sub_2693B39B0();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v128 = v46;
    *v45 = 136315138;
    v47 = v42;
    v48 = [v47 description];
    v49 = sub_2693B3750();
    v51 = v50;

    v31 = MEMORY[0x277D84F90];
    v52 = sub_26934CA40(v49, v51, &v128);

    *(v45 + 4) = v52;
    _os_log_impl(&dword_26933F000, v43, v44, "Creating new timer with proto timer: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x26D63A640](v46, -1, -1);
    MEMORY[0x26D63A640](v45, -1, -1);
  }

  sub_2693B3510();
  sub_2693B3500();
  sub_2693B34F0();

  v53 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
  v54 = sub_2693B3360();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  if ((v54 & 1) == 0)
  {
    v66 = (v0[34] + qword_28030D540);
    swift_beginAccess();
    v67 = *__swift_project_boxed_opaque_existential_1(v66, v66[3]);
    v68 = swift_task_alloc();
    v0[42] = v68;
    *v68 = v0;
    v68[1] = sub_26938471C;

    return sub_269367778(v42);
  }

  v126 = v31 >> 62;
  if (!(v31 >> 62))
  {
    v55 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_24;
    }

LABEL_62:
    v0 = v127;
    v115 = v127[41];
    v116 = v127[39];

    v117 = sub_2693B3610();
    v118 = sub_2693B39B0();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_26933F000, v117, v118, "Failed to create new timer", v119, 2u);
      MEMORY[0x26D63A640](v119, -1, -1);
    }

    v120 = v127[40];

    v128 = 4;
    v98 = sub_26938A81C(0, &v128);

LABEL_65:
    v122 = v0[37];
    v121 = v0[38];

    v123 = v0[1];

    return (v123)(v98);
  }

LABEL_61:
  v55 = sub_2693B3C70();
  if (!v55)
  {
    goto LABEL_62;
  }

LABEL_24:
  v56 = 0;
  v124 = (v127[36] + 1);
  v125 = v31 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v126)
    {
      v57 = MEMORY[0x26D639EB0](v56, v31);
    }

    else
    {
      if (v56 >= *(v125 + 16))
      {
        goto LABEL_57;
      }

      v57 = v31[v56 + 4];
    }

    v58 = v57;
    v127[47] = v57;
    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v60 = v127[40];
    v62 = v127[37];
    v61 = v127[38];
    v63 = v127[35];
    v64 = [v57 timerID];
    sub_2693B31A0();

    v65 = [v60 timerID];
    sub_2693B31A0();

    LOBYTE(v65) = sub_2693B3190();
    v0 = v124;
    v31 = *v124;
    (*v124)(v62, v63);
    (v31)(v61, v63);
    if (v65)
    {
      break;
    }

    ++v56;
    v31 = MEMORY[0x277D84F90];
    if (v59 == v55)
    {
      goto LABEL_62;
    }
  }

  v70 = MEMORY[0x277D84F90];
  if (v126)
  {
    v71 = sub_2693B3C70();
    v0 = v127;
    if (!v71)
    {
LABEL_48:
      v76 = v0[41];

      v77 = v0[39];
      v78 = v0[47];
      v79 = sub_2693B3610();
      v80 = sub_2693B39B0();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = v0[47];
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v128 = v83;
        *v82 = 136315138;
        v84 = v81;
        v85 = [v84 description];
        v86 = sub_2693B3750();
        v88 = v87;

        v89 = sub_26934CA40(v86, v88, &v128);
        v0 = v127;

        *(v82 + 4) = v89;
        _os_log_impl(&dword_26933F000, v79, v80, "Successfully created new timer: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v83);
        MEMORY[0x26D63A640](v83, -1, -1);
        MEMORY[0x26D63A640](v82, -1, -1);
      }

      v90 = v0[47];
      v91 = v0[40];
      v92 = v0[34];
      type metadata accessor for SiriTimer();
      v93 = (v92 + qword_28030D540);
      swift_beginAccess();
      v94 = *(*__swift_project_boxed_opaque_existential_1(v93, v93[3]) + 24);
      v95 = v94;
      v96 = v90;
      v97 = sub_26935CB88(v96, v94);
      v128 = 10;
      v98 = sub_26938A81C(v97, &v128);

      goto LABEL_65;
    }
  }

  else
  {
    v71 = *(v125 + 16);
    v0 = v127;
    if (!v71)
    {
      goto LABEL_48;
    }
  }

  v72 = 0;
  while (1)
  {
    if (v126)
    {
      v73 = MEMORY[0x26D639EB0](v72, v70);
    }

    else
    {
      if (v72 >= *(v125 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      v73 = *(v70 + 8 * v72 + 32);
    }

    v74 = v73;
    v0[48] = v73;
    v75 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_58;
    }

    if (sub_269388940(v58))
    {
      break;
    }

    ++v72;
    if (v75 == v71)
    {
      goto LABEL_48;
    }
  }

  v99 = v0[41];
  v100 = v0[39];

  v101 = v74;
  v102 = sub_2693B3610();
  v103 = sub_2693B39B0();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v128 = v105;
    *v104 = 136315138;
    v106 = v101;
    v107 = [v106 description];
    v108 = sub_2693B3750();
    v110 = v109;

    v0 = v127;
    v111 = sub_26934CA40(v108, v110, &v128);

    *(v104 + 4) = v111;
    _os_log_impl(&dword_26933F000, v102, v103, "Attempting to remove conflicting timer: %s", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v105);
    MEMORY[0x26D63A640](v105, -1, -1);
    MEMORY[0x26D63A640](v104, -1, -1);
  }

  v112 = (v0[34] + qword_28030D540);
  swift_beginAccess();
  v113 = *__swift_project_boxed_opaque_existential_1(v112, v112[3]);
  v114 = swift_task_alloc();
  v0[49] = v114;
  *v114 = v0;
  v114[1] = sub_26938538C;

  return sub_26936D0F4(v101);
}

uint64_t sub_26938471C()
{
  v2 = *(*v1 + 336);
  v3 = *v1;
  v3[43] = v0;

  if (v0)
  {
    v4 = v3[41];

    return MEMORY[0x2822009F8](sub_2693849D4, 0, 0);
  }

  else
  {
    v5 = v3[33];
    v6 = swift_task_alloc();
    v3[44] = v6;
    *v6 = v3;
    v6[1] = sub_2693848B8;
    v7 = v3[34];

    return sub_269382188(v5);
  }
}

uint64_t sub_2693848B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v8 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  if (v1)
  {
    v5 = v3[41];

    v6 = sub_269385BAC;
  }

  else
  {
    v6 = sub_269384BC4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2693849D4()
{
  v20 = v0;
  v1 = v0[43];
  v2 = v0[39];
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v0[31] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v9 = sub_2693B3760();
    v11 = sub_26934CA40(v9, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26933F000, v4, v5, "Error creating timer: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D63A640](v7, -1, -1);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  v12 = v0[40];
  v13 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
  v14 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *&v13[v14] = 5;
  [v13 setUserActivity_];

  v16 = v0[37];
  v15 = v0[38];

  v17 = v0[1];

  return v17(v13);
}

uint64_t sub_269384BC4()
{
  v88 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 312);

  v3 = sub_2693B3610();
  v4 = sub_2693B39B0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 360);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v87 = v8;
    *v7 = 136315138;
    v9 = sub_2693608D8(0, &qword_280E261C0, 0x277D29730);
    v10 = MEMORY[0x26D639B10](v6, v9);
    v12 = v11;

    v13 = sub_26934CA40(v10, v12, &v87);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_26933F000, v3, v4, "Fetched all timers: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  else
  {
    v14 = *(v0 + 360);
  }

  v15 = *(v0 + 360);
  v81 = v15 >> 62;
  if (v15 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2693B3C70())
  {
    v17 = 0;
    v84 = v15 & 0xFFFFFFFFFFFFFF8;
    v85 = v15 & 0xC000000000000001;
    v82 = (*(v0 + 288) + 8);
    v83 = v0;
    while (1)
    {
      if (v85)
      {
        v18 = MEMORY[0x26D639EB0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      *(v0 + 376) = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v21 = *(v0 + 320);
      v23 = *(v0 + 296);
      v22 = *(v0 + 304);
      v86 = *(v0 + 280);
      v24 = [v18 timerID];
      sub_2693B31A0();

      v25 = [v21 timerID];
      sub_2693B31A0();

      LOBYTE(v25) = sub_2693B3190();
      v26 = *v82;
      (*v82)(v23, v86);
      v26(v22, v86);
      if (v25)
      {
        break;
      }

      ++v17;
      v0 = v83;
      if (v20 == i)
      {
        goto LABEL_40;
      }
    }

    if (v81)
    {
      v28 = v15;
      v27 = sub_2693B3C70();
      v0 = v83;
      if (!v27)
      {
LABEL_27:
        v32 = *(v0 + 328);

        v33 = *(v0 + 312);
        v34 = *(v0 + 376);
        v35 = sub_2693B3610();
        v36 = sub_2693B39B0();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = *(v0 + 376);
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v87 = v39;
          *v38 = 136315138;
          v40 = v37;
          v41 = [v40 description];
          v42 = sub_2693B3750();
          v44 = v43;

          v45 = sub_26934CA40(v42, v44, &v87);

          *(v38 + 4) = v45;
          _os_log_impl(&dword_26933F000, v35, v36, "Successfully created new timer: %s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v39);
          MEMORY[0x26D63A640](v39, -1, -1);
          MEMORY[0x26D63A640](v38, -1, -1);
        }

        v46 = *(v0 + 376);
        v47 = *(v0 + 320);
        v48 = *(v0 + 272);
        type metadata accessor for SiriTimer();
        v49 = (v48 + qword_28030D540);
        swift_beginAccess();
        v50 = *(*__swift_project_boxed_opaque_existential_1(v49, v49[3]) + 24);
        v51 = v50;
        v52 = v46;
        v53 = sub_26935CB88(v52, v50);
        v87 = 10;
        v54 = sub_26938A81C(v53, &v87);

        goto LABEL_43;
      }
    }

    else
    {
      v27 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v15;
      v0 = v83;
      if (!v27)
      {
        goto LABEL_27;
      }
    }

    v29 = 0;
    while (1)
    {
      if (v85)
      {
        v30 = MEMORY[0x26D639EB0](v29, v28);
      }

      else
      {
        if (v29 >= *(v84 + 16))
        {
          goto LABEL_38;
        }

        v30 = *(v28 + 8 * v29 + 32);
      }

      v31 = v30;
      *(v0 + 384) = v30;
      v15 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (sub_269388940(v19))
      {
        v55 = *(v0 + 328);
        v56 = *(v0 + 312);

        v57 = v31;
        v58 = sub_2693B3610();
        v59 = sub_2693B39B0();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v87 = v61;
          *v60 = 136315138;
          v62 = v57;
          v63 = [v62 description];
          v64 = sub_2693B3750();
          v66 = v65;

          v67 = sub_26934CA40(v64, v66, &v87);
          v0 = v83;

          *(v60 + 4) = v67;
          _os_log_impl(&dword_26933F000, v58, v59, "Attempting to remove conflicting timer: %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v61);
          MEMORY[0x26D63A640](v61, -1, -1);
          MEMORY[0x26D63A640](v60, -1, -1);
        }

        v68 = (*(v0 + 272) + qword_28030D540);
        swift_beginAccess();
        v69 = *__swift_project_boxed_opaque_existential_1(v68, v68[3]);
        v70 = swift_task_alloc();
        *(v0 + 392) = v70;
        *v70 = v0;
        v70[1] = sub_26938538C;

        return sub_26936D0F4(v57);
      }

      ++v29;
      if (v15 == v27)
      {
        goto LABEL_27;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_40:
  v72 = *(v0 + 328);
  v73 = *(v0 + 312);

  v74 = sub_2693B3610();
  v75 = sub_2693B39B0();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_26933F000, v74, v75, "Failed to create new timer", v76, 2u);
    MEMORY[0x26D63A640](v76, -1, -1);
  }

  v77 = *(v0 + 320);

  v87 = 4;
  v54 = sub_26938A81C(0, &v87);

LABEL_43:
  v79 = *(v0 + 296);
  v78 = *(v0 + 304);

  v80 = *(v0 + 8);

  return v80(v54);
}

uint64_t sub_26938538C()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_2693857E0;
  }

  else
  {
    v3 = sub_2693854A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2693854A0()
{
  v42 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 384);
  v3 = sub_2693B3610();
  v4 = sub_2693B39B0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 384);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v41);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v3, v4, "Successfully removed conflicting timer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 312);
  v16 = *(v0 + 376);
  v17 = sub_2693B3610();
  v18 = sub_2693B39B0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 376);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v41 = v21;
    *v20 = 136315138;
    v22 = v19;
    v23 = [v22 &off_279C564F8];
    v24 = sub_2693B3750();
    v26 = v25;

    v27 = sub_26934CA40(v24, v26, &v41);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_26933F000, v17, v18, "Successfully created new timer: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x26D63A640](v21, -1, -1);
    MEMORY[0x26D63A640](v20, -1, -1);
  }

  v28 = *(v0 + 376);
  v29 = *(v0 + 320);
  v30 = *(v0 + 272);
  type metadata accessor for SiriTimer();
  v31 = (v30 + qword_28030D540);
  swift_beginAccess();
  v32 = *(*__swift_project_boxed_opaque_existential_1(v31, v31[3]) + 24);
  v33 = v32;
  v34 = v28;
  v35 = sub_26935CB88(v34, v32);
  v41 = 10;
  v36 = sub_26938A81C(v35, &v41);

  v38 = *(v0 + 296);
  v37 = *(v0 + 304);

  v39 = *(v0 + 8);

  return v39(v36);
}

uint64_t sub_2693857E0()
{
  v51 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 312);
  v3 = *(v0 + 384);
  v4 = v1;
  v5 = sub_2693B3610();
  v6 = sub_2693B39A0();

  v7 = &property descriptor for SearchTimerIntent.targetingInfo;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 400);
    v9 = *(v0 + 384);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v50 = v11;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = sub_2693B3750();
    v16 = v15;

    v17 = sub_26934CA40(v14, v16, &v50);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v0 + 256) = v8;
    v18 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v19 = sub_2693B3760();
    v21 = sub_26934CA40(v19, v20, &v50);
    v7 = &property descriptor for SearchTimerIntent.targetingInfo;

    *(v10 + 14) = v21;
    _os_log_impl(&dword_26933F000, v5, v6, "Failed to remove conflicting timer: %s with error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v11, -1, -1);
    MEMORY[0x26D63A640](v10, -1, -1);
  }

  else
  {
    v22 = *(v0 + 400);
    v23 = *(v0 + 384);
  }

  v24 = *(v0 + 312);
  v25 = *(v0 + 376);
  v26 = sub_2693B3610();
  v27 = sub_2693B39B0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 376);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v50 = v30;
    *v29 = 136315138;
    v31 = v28;
    v32 = [v31 v7[213]];
    v33 = sub_2693B3750();
    v35 = v34;

    v36 = sub_26934CA40(v33, v35, &v50);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_26933F000, v26, v27, "Successfully created new timer: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x26D63A640](v30, -1, -1);
    MEMORY[0x26D63A640](v29, -1, -1);
  }

  v37 = *(v0 + 376);
  v38 = *(v0 + 320);
  v39 = *(v0 + 272);
  type metadata accessor for SiriTimer();
  v40 = (v39 + qword_28030D540);
  swift_beginAccess();
  v41 = *(*__swift_project_boxed_opaque_existential_1(v40, v40[3]) + 24);
  v42 = v41;
  v43 = v37;
  v44 = sub_26935CB88(v43, v41);
  v50 = 10;
  v45 = sub_26938A81C(v44, &v50);

  v47 = *(v0 + 296);
  v46 = *(v0 + 304);

  v48 = *(v0 + 8);

  return v48(v45);
}

uint64_t sub_269385BAC()
{
  v20 = v0;
  v1 = v0[46];
  v2 = v0[39];
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v0[31] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v9 = sub_2693B3760();
    v11 = sub_26934CA40(v9, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26933F000, v4, v5, "Error creating timer: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D63A640](v7, -1, -1);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  v12 = v0[40];
  v13 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
  v14 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *&v13[v14] = 5;
  [v13 setUserActivity_];

  v16 = v0[37];
  v15 = v0[38];

  v17 = v0[1];

  return v17(v13);
}

uint64_t sub_269385D9C(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B67F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6800;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B6808, v15);
}

uint64_t sub_269385F24(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934B604;

  return sub_269383338(v6);
}

uint64_t sub_269385FE8(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_269386008, 0, 0);
}

uint64_t sub_269386008()
{
  v33 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_280E262D0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v32);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "CreateTimeIntentHandler.resolveLabel(for:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = [*(v0 + 48) durationNumber];
  if (v15)
  {
    v16 = v15;
    [v15 doubleValue];
    v18 = v17;
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v18 = v19;
  }

  v20 = *(v0 + 48);
  v21 = [objc_allocWithZone(MEMORY[0x277D29700]) initWithState:3 duration:v18];
  *(v0 + 64) = v21;
  if ([v20 type] == 2 || (v22 = objc_msgSend(*(v0 + 48), sel_label)) == 0)
  {
    v24 = 0;
  }

  else
  {
    v23 = v22;
    v24 = [v22 spokenPhrase];

    if (!v24)
    {
      sub_2693B3750();
      v24 = sub_2693B3740();
    }
  }

  v25 = *(v0 + 48);
  [v21 setTitle_];

  v26 = [v25 type];
  v27 = swift_task_alloc();
  *(v0 + 72) = v27;
  *v27 = v0;
  if (v26 == 2)
  {
    v28 = sub_269386358;
  }

  else
  {
    v28 = sub_2693864C0;
  }

  v27[1] = v28;
  v29 = *(v0 + 48);
  v30 = *(v0 + 56);

  return sub_269386628(v29, v21);
}

uint64_t sub_269386358(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 72);
  v6 = *v1;

  return MEMORY[0x2822009F8](sub_269386458, 0, 0);
}

uint64_t sub_269386458()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2693864C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 32) = v1;
  *(v3 + 40) = a1;
  v4 = *(v2 + 72);
  v6 = *v1;

  return MEMORY[0x2822009F8](sub_2693865C0, 0, 0);
}

uint64_t sub_2693865C0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_269386628(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_2693866D8;

  return (sub_269382188)(a1);
}

uint64_t sub_2693866D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_269386CC4;
  }

  else
  {
    v5 = sub_2693867EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2693867EC()
{
  v45 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = sub_2693B3620();
  __swift_project_value_buffer(v1, qword_280E262D0);
  v2 = sub_2693B3610();
  v3 = sub_2693B39B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26933F000, v2, v3, "MTCreateTimerIntentHandler: fetchFuture success block called", v4, 2u);
    MEMORY[0x26D63A640](v4, -1, -1);
  }

  v5 = *(v0 + 24);

  v6 = [v5 label];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 spokenPhrase];
    v9 = sub_2693B3750();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = sub_26938AE08(*(v0 + 32), *(v0 + 48));

      if (v13 && ([*(v0 + 32) type] == 2 || (v14 = objc_msgSend(*(v0 + 32), sel_sound), v15 = objc_msgSend(v14, sel_isSilent), v14, (v15 & 1) == 0)) && objc_msgSend(*(v0 + 32), sel_type) == 1)
      {
        v16 = [objc_opt_self() confirmationRequiredWithStringToConfirm_];
      }

      else
      {
        v16 = [objc_opt_self() successWithResolvedString_];
      }

      v17 = v16;

      goto LABEL_24;
    }
  }

  v18 = sub_26938AE08(*(v0 + 32), *(v0 + 48));

  if (v18 && ([*(v0 + 32) type] == 2 || (v19 = objc_msgSend(*(v0 + 32), sel_sound), v20 = objc_msgSend(v19, sel_isSilent), v19, (v20 & 1) == 0)) && objc_msgSend(*(v0 + 32), sel_type) == 1)
  {
    v21 = [objc_opt_self() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    sub_2693608D8(0, &qword_280E261C8, 0x277CD4190);
    v21 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v17 = v21;
LABEL_24:
  v22 = *(v0 + 24);
  v23 = v17;
  v24 = v22;
  v25 = sub_2693B3610();
  v26 = sub_2693B39B0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 24);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44 = v29;
    *v28 = 136315394;
    v30 = v27;
    v31 = [v30 description];
    v32 = sub_2693B3750();
    v34 = v33;

    v35 = sub_26934CA40(v32, v34, &v44);

    *(v28 + 4) = v35;
    *(v28 + 12) = 2080;
    v36 = v23;
    v37 = [v36 description];
    v38 = sub_2693B3750();
    v40 = v39;

    v41 = sub_26934CA40(v38, v40, &v44);

    *(v28 + 14) = v41;
    _os_log_impl(&dword_26933F000, v25, v26, "Handled resolve label for intent: %s with result: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v29, -1, -1);
    MEMORY[0x26D63A640](v28, -1, -1);
  }

  else
  {
  }

  v42 = *(v0 + 8);

  return v42(v23);
}

uint64_t sub_269386CC4()
{
  v27 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_2693B3620();
  __swift_project_value_buffer(v3, qword_280E262D0);
  v4 = v2;
  v5 = v1;
  v6 = sub_2693B3610();
  v7 = sub_2693B39A0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[7];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = sub_2693B3750();
    v16 = v15;

    v17 = sub_26934CA40(v14, v16, &v26);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    v0[2] = v8;
    v18 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v19 = sub_2693B3760();
    v21 = sub_26934CA40(v19, v20, &v26);

    *(v10 + 14) = v21;
    _os_log_impl(&dword_26933F000, v6, v7, "Failed to fetch timers for intent: %s, error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v11, -1, -1);
    MEMORY[0x26D63A640](v10, -1, -1);
  }

  v22 = v0[7];
  sub_2693608D8(0, &qword_280E261C8, 0x277CD4190);
  v23 = [swift_getObjCClassFromMetadata() unsupported];

  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_269386F48(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B67B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B67B8;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B67C0, v15);
}

uint64_t sub_2693870D0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934B604;

  return sub_269385FE8(v6);
}

uint64_t sub_269387194(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2693871B4, 0, 0);
}

uint64_t sub_2693871B4()
{
  v28 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_280E262D0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v27);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "CreateTimeIntentHandler.resolveDurationNumber(for:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = *(v0 + 24);
  sub_2693836E4(*(v0 + 16), &v27);
  v16 = v27;
  if (v27 == 3)
  {
    v21 = [objc_opt_self() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    if (v27 != 10)
    {
      sub_2693608D8(0, &qword_28030D320, 0x277CD4268);
      v22 = [swift_getObjCClassFromMetadata() needsValue];
      sub_26938A514(v16);
      v23 = v22;
      goto LABEL_14;
    }

    v17 = [*(v0 + 16) durationNumber];
    if (v17)
    {
      v18 = v17;
      [v17 doubleValue];
      v20 = v19;
    }

    else
    {
      [objc_opt_self() minimumDuration];
      v20 = v24;
    }

    v21 = [objc_opt_self() successWithResolvedTimeInterval_];
  }

  v23 = v21;
LABEL_14:
  v25 = *(v0 + 8);

  return v25(v23);
}

uint64_t sub_26938747C(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6788;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6790;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B65F0, v15);
}

uint64_t sub_269387604(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934B604;

  return sub_269387194(v6);
}

uint64_t sub_2693876C8(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_2693876E8, 0, 0);
}

uint64_t sub_2693876E8()
{
  v53 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_2693B3620();
  v0[24] = __swift_project_value_buffer(v2, qword_280E262D0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v52 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v52);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "CreateTimeIntentHandler.resolveType(for:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = v0[22];
  v0[25] = type metadata accessor for SiriTimerTypeResolutionResult();
  v16 = sub_2693B0080([v15 type]);
  v0[26] = v16;
  v17 = [v15 type];
  v18 = v0[22];
  if (v17 != 2)
  {
    v29 = v18;
    v30 = v16;
    v31 = sub_2693B3610();
    v32 = sub_2693B39A0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[22];
      v34 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v51;
      *v34 = 136315394;
      v35 = v33;
      v36 = [v35 description];
      v37 = sub_2693B3750();
      v39 = v38;

      v40 = sub_26934CA40(v37, v39, &v52);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      v41 = v30;
      v42 = [v41 description];
      v43 = sub_2693B3750();
      v45 = v44;

      v46 = sub_26934CA40(v43, v45, &v52);

      *(v34 + 14) = v46;
      _os_log_impl(&dword_26933F000, v31, v32, "Handled resolve type for intent: %s with result: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D63A640](v51, -1, -1);
      MEMORY[0x26D63A640](v34, -1, -1);
    }

    goto LABEL_11;
  }

  type metadata accessor for SiriTimer();
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = sub_2693B3740();
  v21 = [v19 initWithIdentifier:0 displayString:v20];
  v0[27] = v21;

  v22 = objc_opt_self();
  [v22 defaultDuration];
  v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v21 setDuration_];

  [v22 defaultDuration];
  v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v21 setRemainingTime_];

  [v21 setState_];
  [v21 setType_];
  sub_2693B3510();
  sub_2693B3500();
  sub_2693B34F0();

  v27 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v28 = sub_2693B3360();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (v28)
  {

LABEL_11:
    v47 = v0[1];

    return v47(v16);
  }

  v49 = swift_task_alloc();
  v0[28] = v49;
  *v49 = v0;
  v49[1] = sub_269387C9C;
  v50 = v0[23];

  return sub_26938D53C((v0 + 2), v21, 1);
}

uint64_t sub_269387C9C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_269387FB4;
  }

  else
  {
    v3 = sub_269387DB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_269387DB0()
{
  v1 = *(v0 + 24);

  v3 = sub_2693995BC(v2);

  if (v3)
  {
    v5 = *(v0 + 208);
    v4 = *(v0 + 216);
    v6 = *(v0 + 200);
    *(v0 + 168) = [*(v0 + 176) type];
    v7 = sub_2693B3D20();
    v8 = [swift_getObjCClassFromMetadata() resolutionResultConfirmationRequiredWithItemToConfirm_];
    swift_unknownObjectRelease();

    *(v0 + 96) = *(v0 + 16);
    sub_26934B4F0(v0 + 96, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 104) = *(v0 + 32);
    sub_26934B4F0(v0 + 104, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 112) = *(v0 + 40);
    sub_26934B4F0(v0 + 112, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 120) = *(v0 + 48);
    sub_26934B4F0(v0 + 120, &qword_28030CF48, &qword_2693B6A70);
  }

  else
  {
    v9 = *(v0 + 216);
    *(v0 + 128) = *(v0 + 16);
    sub_26934B4F0(v0 + 128, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 136) = *(v0 + 32);
    sub_26934B4F0(v0 + 136, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 144) = *(v0 + 40);
    sub_26934B4F0(v0 + 144, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 152) = *(v0 + 48);
    sub_26934B4F0(v0 + 152, &qword_28030CF48, &qword_2693B6A70);

    v8 = *(v0 + 208);
  }

  v10 = *(v0 + 8);

  return v10(v8);
}

uint64_t sub_269387FB4()
{
  v20 = v0;
  v1 = v0[29];
  v2 = v0[24];
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v7 = v0[27];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v0[20] = v6;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v11 = sub_2693B3760();
    v13 = sub_26934CA40(v11, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_26933F000, v4, v5, "Response from matchTimers in resolveType(for:) in CreateTimerIntent: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  else
  {
    v14 = v0[29];
    v15 = v0[27];
  }

  v16 = v0[26];
  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_269388164(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6758;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6760;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B65C0, v15);
}

uint64_t sub_2693882EC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_2693876C8(v6);
}

uint64_t sub_2693883B0(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6728;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6730;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B6E40, v15);
}

uint64_t sub_269388538(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_2693885C4, 0, 0);
}

uint64_t sub_2693885C4()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_26937AD7C;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_269389A28(v4, v3);
}

uint64_t sub_269388678(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6708;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5700;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5530, v15);
}

uint64_t sub_269388800(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26938888C, 0, 0);
}

uint64_t sub_26938888C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_269347CE0;
  v3 = *(v0 + 24);

  return sub_269389684(v3);
}

uint64_t sub_269388940(void *a1)
{
  v3 = sub_2693B35B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v65 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = v60 - v8;
  v9 = sub_2693B30A0();
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2693B31C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v60 - v19;
  if ([v1 state] != 3)
  {
    goto LABEL_36;
  }

  v62 = v4;
  v63 = v3;
  v21 = [a1 timerID];
  sub_2693B31A0();

  v22 = [v1 timerID];
  sub_2693B31A0();

  LOBYTE(v22) = sub_2693B3190();
  v23 = *(v14 + 8);
  v23(v18, v13);
  v23(v20, v13);
  if (v22)
  {
    goto LABEL_36;
  }

  if (([a1 type] == 2 || (v24 = objc_msgSend(a1, sel_sound), v25 = objc_msgSend(v24, sel_isSilent), v24, (v25 & 1) == 0)) && objc_msgSend(a1, sel_type) != 2 || (objc_msgSend(v1, sel_type) == 2 || (v26 = objc_msgSend(v1, sel_sound), v27 = objc_msgSend(v26, sel_isSilent), v26, (v27 & 1) == 0)) && objc_msgSend(v1, sel_type) != 2)
  {
    if ([a1 type] == 2 || (v29 = objc_msgSend(a1, sel_sound), v30 = objc_msgSend(v29, sel_isSilent), v29, (v30 & 1) == 0))
    {
      v31 = [a1 type];
    }

    else
    {
      v31 = 2;
    }

    if ([v1 type] == 2 || (v32 = objc_msgSend(v1, sel_sound), v33 = objc_msgSend(v32, sel_isSilent), v32, (v33 & 1) == 0))
    {
      if (v31 != [v1 type])
      {
        goto LABEL_36;
      }
    }

    else if (v31 != 2)
    {
      goto LABEL_36;
    }

    v34 = [a1 title];
    if (v34)
    {
      v35 = v34;
      v36 = sub_2693B3750();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v39 = [v1 title];
    if (v39)
    {
      v40 = v39;
      v41 = sub_2693B3750();
      v43 = v42;

      if (v38)
      {
        if (v43)
        {
          v60[1] = v36;
          v67 = v36;
          v68 = v38;

          sub_2693B3090();
          sub_26934CFE8();
          v61 = sub_2693B3A80();
          v45 = v44;
          v46 = *(v66 + 8);
          v46(v12, v9);

          v66 = v41;
          v67 = v41;
          v68 = v43;
          sub_2693B3090();
          v47 = sub_2693B3A80();
          v49 = v48;
          v46(v12, v9);

          if ((v45 & 0x2000000000000000) != 0)
          {
            v50 = HIBYTE(v45) & 0xF;
          }

          else
          {
            v50 = v61 & 0xFFFFFFFFFFFFLL;
          }

          if (v50)
          {
            v51 = HIBYTE(v49) & 0xF;
            if ((v49 & 0x2000000000000000) == 0)
            {
              v51 = v47 & 0xFFFFFFFFFFFFLL;
            }

            if (v51)
            {
              v52 = v64;
              sub_2693B3580();
              v53 = *MEMORY[0x277D618A8];
              v54 = sub_2693B3590();
              v55 = v65;
              (*(*(v54 - 8) + 104))(v65, v53, v54);
              v57 = v62;
              v56 = v63;
              (*(v62 + 104))(v55, *MEMORY[0x277D618C8], v63);
              v28 = sub_2693B35A0();

              v58 = *(v57 + 8);
              v58(v55, v56);
              v58(v52, v56);
              return v28 & 1;
            }
          }
        }
      }
    }

LABEL_36:
    v28 = 0;
    return v28 & 1;
  }

  v28 = 1;
  return v28 & 1;
}

uint64_t sub_269388FE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D400, &qword_2693B6828);
    v2 = sub_2693B3CA0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26938AFAC(*(a1 + 56) + 48 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    *&v33[5] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v34[2] = v36[2];
    v25[3] = v35;

    swift_dynamicCast();
    sub_26938AF94(v34, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_28030D408, &qword_2693B6830);
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_26938B010(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_26938B010(v33, v25);
    v17 = *(v2 + 40);
    result = sub_2693B3B50();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_26938B010(v25, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CreateTimerIntentHandler()
{
  result = qword_280E26850;
  if (!qword_280E26850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693893C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269388800(v2, v3, v4);
}

_OWORD *sub_269389478(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x277D83B88];
  v26 = MEMORY[0x277D83BB8];
  v27 = MEMORY[0x277D83B90];
  v9 = *a5;
  v11 = sub_26939C1CC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_26938AF94(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_26939D020();
    goto LABEL_7;
  }

  sub_26939CA80(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_26939C1CC(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_2693B3D40();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D83B88]);
  sub_2693895E8(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v24);
}

_OWORD *sub_2693895E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  v13 = MEMORY[0x277D83BB8];
  v14 = MEMORY[0x277D83B90];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26938AF94(&v11, (a5[7] + 48 * a1));
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

uint64_t sub_269389684(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2693B3420();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269389744, 0, 0);
}

uint64_t sub_269389744()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    __swift_project_value_buffer(v5, qword_280E262F0);
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAllTargetableDevices() Resolving all targetable devices", v8, 2u);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_269349074;
    v10 = v0[2];

    return sub_269394DF0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2693B54B0;
    type metadata accessor for SiriDeviceResolutionResult();
    *(v12 + 32) = [swift_getObjCClassFromMetadata() notRequired];
    v13 = v0[5];

    v14 = v0[1];

    return v14(v12);
  }
}

uint64_t sub_269389974()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269388538(v2, v3, v4);
}

uint64_t sub_269389A28(void *a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v4 = sub_2693B3420();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[5] = type metadata accessor for CreateTimerIntent();
  v2[6] = &protocol witness table for CreateTimerIntent;
  v2[2] = a1;
  v7 = a1;

  return MEMORY[0x2822009F8](sub_269389B0C, 0, 0);
}

uint64_t sub_269389B0C()
{
  v21 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    v0[25] = __swift_project_value_buffer(v5, qword_280E262F0);
    sub_26934489C((v0 + 2), (v0 + 7));
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      sub_26934489C((v0 + 7), (v0 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
      v10 = sub_2693B3760();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v13 = sub_26934CA40(v10, v12, &v20);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAssociatedDeviceTarget(for:) %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D63A640](v9, -1, -1);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    }

    v18 = swift_task_alloc();
    v0[26] = v18;
    *v18 = v0;
    v18[1] = sub_269389DE8;
    v19 = v0[21];

    return sub_269394DF0();
  }

  else
  {
    *(v0[21] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v14 = [swift_getObjCClassFromMetadata() notRequired];
    v15 = v0[24];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v16 = v0[1];

    return v16(v14);
  }
}

uint64_t sub_269389DE8(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_269389EE8, 0, 0);
}

uint64_t sub_269389EE8()
{
  v54 = v0;
  v1 = *(v0 + 216);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_22:
    v47 = *(v0 + 216);
    goto LABEL_23;
  }

  if (v1 < 0)
  {
    v46 = *(v0 + 216);
  }

  if (!sub_2693B3C70())
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = [*(v0 + 160) targetingInfo];
  v3 = *(v0 + 216);
  if (!v2)
  {
LABEL_23:

LABEL_24:
    *(*(v0 + 168) + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v41 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_25;
  }

  v4 = *(v0 + 200);

  v5 = v2;
  v6 = sub_2693B3610();
  v7 = sub_2693B39B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v53 = v9;
    *v8 = 134218242;
    if (v1 >> 62)
    {
      v12 = *(v0 + 216);
      if (v1 < 0)
      {
        v13 = *(v0 + 216);
      }

      v10 = sub_2693B3C70();
    }

    else
    {
      v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = *(v0 + 216);
    *(v8 + 4) = v10;

    *(v8 + 12) = 2080;
    v15 = v5;
    v16 = [v15 description];
    v17 = v5;
    v18 = sub_2693B3750();
    v20 = v19;

    v21 = v18;
    v5 = v17;
    v22 = sub_26934CA40(v21, v20, &v53);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_26933F000, v6, v7, "Filtering %ld targets using targeting info: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  else
  {
    v11 = *(v0 + 216);
  }

  v23 = sub_26939D91C(v5, *(v0 + 160), *(v0 + 216));

  v24 = *(v0 + 200);
  if (!v23)
  {
    v42 = sub_2693B3610();
    v43 = sub_2693B39B0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26933F000, v42, v43, "No valid device target found for target criteria", v44, 2u);
      MEMORY[0x26D63A640](v44, -1, -1);
    }

    v45 = *(v0 + 168);

    *(v45 + qword_280E266B8) = 1;
    goto LABEL_24;
  }

  v25 = v23;
  v26 = sub_2693B3610();
  v27 = sub_2693B39B0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v28 = 136315138;
    v52 = v5;
    v29 = v25;
    v30 = v25;
    v31 = [v29 description];
    v32 = sub_2693B3750();
    v34 = v33;

    v25 = v30;
    v5 = v52;
    v35 = sub_26934CA40(v32, v34, &v53);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_26933F000, v26, v27, "Found valid device target: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x26D63A640](v51, -1, -1);
    MEMORY[0x26D63A640](v28, -1, -1);
  }

  v36 = *(v0 + 168) + qword_28030D540;
  swift_beginAccess();
  v37 = *(v36 + 24);
  v38 = *(v36 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v39 = *(v38 + 40);
  v40 = v25;
  v39(v23, v37, v38);
  swift_endAccess();
  type metadata accessor for SiriDeviceResolutionResult();
  v41 = sub_2693B1D2C(v40);

LABEL_25:
  v48 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v49 = *(v0 + 8);

  return v49(v41);
}