unint64_t sub_188A921E4()
{
  result = qword_1ED48EC30;
  if (!qword_1ED48EC30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48EC30);
  }

  return result;
}

uint64_t sub_188A92230(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(*(v3 + 48) + 16) && (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) != 0))
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364F8);
    v10 = swift_dynamicCastClassUnconditional();
    sub_188A34360(&qword_1ED48C930, &qword_1EA9364F8);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = Strong;
    v13 = 0uLL;
    if (Strong)
    {
      if (a1)
      {
        v14 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v14 = [Strong layer];
      }

      v22 = v14;

      v23 = sub_18A4A7258();
      v24 = [v22 valueForKeyPath_];

      if (v24)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      sub_188A3F29C(&v45, &v41, &qword_1EA934050);
      if (v42)
      {
        sub_188A55538(&v41, v40);
        sub_188A55598(v40, v39);
        sub_188A55598(v39, v38);
        sub_188A91E9C(v38, 0, v43);
        v36 = v43[1];
        v37 = v43[0];
        v34 = v43[3];
        v35 = v43[2];
        v32 = v43[5];
        v33 = v43[4];
        v30 = v43[7];
        v31 = v43[6];
        LOBYTE(v12) = v44;
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        sub_188A3F5FC(&v45, &qword_1EA934050);
        v21 = v30;
        v20 = v31;
        v19 = v32;
        v18 = v33;
        v17 = v34;
        v16 = v35;
        v15 = v36;
        v13 = v37;
      }

      else
      {
        sub_188A3F5FC(&v45, &qword_1EA934050);
        LOBYTE(v12) = 0;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v13 = 0uLL;
      }
    }

    else
    {
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
    }

    v45 = v13;
    v46 = v15;
    v47 = v16;
    v48 = v17;
    v49 = v18;
    v50 = v19;
    v51 = v20;
    v52 = v21;
    v53 = v12;
    v25 = swift_unknownObjectWeakLoadStrong();
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = a1 & 1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364F8);
    swift_allocObject();

    v10 = sub_188A926A0(&v45, v25, sub_188F0E03C, v27);

    *(v10 + 752) = 1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40[0] = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, v40, &qword_1ED48C930, &qword_1EA9364F8);

    *(v4 + 48) = *&v40[0];
    swift_endAccess();
    sub_188A34360(&qword_1ED48C930, &qword_1EA9364F8);
  }

  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

uint64_t sub_188A926A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v65 = a2;
  v9 = sub_18A4A7A58();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940E50);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(v5 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  *(v5 + 40) = v14;
  sub_188AA24A8(&v67);
  v15 = v72;
  v17 = v73;
  v16 = v74;
  *(v5 + 144) = v73;
  *(v5 + 160) = v16;
  v18 = v68;
  v20 = v69;
  v19 = v70;
  *(v5 + 80) = v69;
  *(v5 + 96) = v19;
  v21 = v70;
  v23 = v71;
  v22 = v72;
  *(v5 + 112) = v71;
  *(v5 + 128) = v22;
  v24 = v68;
  v25 = v67;
  *(v5 + 48) = v67;
  *(v5 + 64) = v24;
  *(v5 + 264) = v15;
  *(v5 + 280) = v17;
  *(v5 + 296) = v74;
  *(v5 + 200) = v18;
  *(v5 + 216) = v20;
  *(v5 + 232) = v21;
  *(v5 + 248) = v23;
  *(v5 + 176) = v75;
  *(v5 + 312) = v75;
  *(v5 + 184) = v25;
  swift_unknownObjectWeakInit();
  v26 = v72;
  v28 = v73;
  v27 = v74;
  *(v5 + 432) = v73;
  *(v5 + 448) = v27;
  v29 = v68;
  v31 = v69;
  v30 = v70;
  *(v5 + 368) = v69;
  *(v5 + 384) = v30;
  v32 = v70;
  v34 = v71;
  v33 = v72;
  *(v5 + 400) = v71;
  *(v5 + 416) = v33;
  v35 = v68;
  *(v5 + 336) = v67;
  *(v5 + 352) = v35;
  v36 = v72;
  v37 = v74;
  *(v5 + 568) = v73;
  *(v5 + 584) = v37;
  v39 = v67;
  v38 = v68;
  v40 = v70;
  *(v5 + 504) = v69;
  *(v5 + 520) = v40;
  *(v5 + 536) = v71;
  *(v5 + 552) = v36;
  *(v5 + 472) = v67;
  *(v5 + 488) = v38;
  v41 = v74;
  *(v5 + 704) = v28;
  *(v5 + 720) = v41;
  *(v5 + 640) = v31;
  *(v5 + 656) = v32;
  *(v5 + 672) = v34;
  *(v5 + 688) = v26;
  *(v5 + 328) = 0;
  *(v5 + 464) = v75;
  *(v5 + 600) = v75;
  *(v5 + 601) = 0;
  *(v5 + 736) = v75;
  *(v5 + 608) = v39;
  *(v5 + 624) = v29;
  swift_unknownObjectWeakInit();
  *(v5 + 768) = 0;
  *(v5 + 776) = a3;
  *(v5 + 784) = a4;
  sub_188A5E418();

  sub_18A4A7A28();
  sub_18A4A6E38();
  (*(v63 + 104))(v62, *MEMORY[0x1E69E8090], v64);
  v42 = sub_18A4A7A98();
  v43 = *(a1 + 80);
  v44 = *(a1 + 112);
  v66[6] = *(a1 + 96);
  v66[7] = v44;
  v45 = *(a1 + 16);
  v46 = *(a1 + 48);
  v66[2] = *(a1 + 32);
  v66[3] = v46;
  v47 = *(a1 + 48);
  v48 = *(a1 + 80);
  v66[4] = *(a1 + 64);
  v66[5] = v48;
  v49 = *(a1 + 16);
  v66[0] = *a1;
  v50 = v66[0];
  v66[1] = v49;
  *(&v66[13] + 8) = v43;
  *(&v66[14] + 8) = v66[6];
  *(&v66[15] + 8) = *(a1 + 112);
  *(&v66[9] + 8) = v45;
  *(&v66[10] + 8) = v66[2];
  *(&v66[11] + 8) = v47;
  *(&v66[12] + 8) = v66[4];
  *(v5 + 16) = v42;
  LOBYTE(v66[8]) = *(a1 + 128);
  BYTE8(v66[16]) = *(a1 + 128);
  *(&v66[8] + 8) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940E58);
  v51 = swift_allocObject();
  *(v51 + 284) = 0;
  memcpy((v51 + 16), v66, 0x109uLL);
  *(v5 + 24) = v51;
  swift_beginAccess();
  v52 = v73;
  v53 = v74;
  v54 = v71;
  *(v5 + 264) = v72;
  *(v5 + 280) = v52;
  *(v5 + 296) = v53;
  v55 = v67;
  *(v5 + 200) = v68;
  v56 = v70;
  *(v5 + 216) = v69;
  *(v5 + 232) = v56;
  *(v5 + 248) = v54;
  *(v5 + 312) = v75;
  *(v5 + 184) = v55;
  swift_beginAccess();
  v57 = v74;
  *(v5 + 144) = v73;
  *(v5 + 160) = v57;
  *(v5 + 176) = v75;
  v58 = v70;
  *(v5 + 80) = v69;
  *(v5 + 96) = v58;
  v59 = v72;
  *(v5 + 112) = v71;
  *(v5 + 128) = v59;
  v60 = v68;
  *(v5 + 48) = v67;
  *(v5 + 64) = v60;
  *(v5 + 752) = 0;
  *(v5 + 760) = 0;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t sub_188A92B38(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_188D7B65C();
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_188E79D58();
      goto LABEL_18;
    }

    sub_188A92CF4();
  }

  v13 = *v5;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v10 & 1);
  sub_18A4A7348();
  result = sub_18A4A88E8();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    while (1)
    {
      v18 = v17 + 24 * a4;
      if (*v18 == (v10 & 1))
      {
        if (*(v18 + 8) == a2 && *(v18 + 16) == a3)
        {
          break;
        }

        result = sub_18A4A86C8();
        if (result)
        {
          break;
        }
      }

      a4 = (a4 + 1) & v16;
      if (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    result = sub_18A4A8798();
    __break(1u);
  }

LABEL_18:
  v20 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = *(v20 + 48) + 24 * a4;
  *v21 = v10 & 1;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_188A92CF4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A40);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 24 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = *(v17 + 2);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v18);

      sub_18A4A7348();
      result = sub_18A4A88E8();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v1 = v4;
  }

  return result;
}

id _eventComponentPhaseMapping()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = _eventComponentPhaseMapping_mapping;
  if (!_eventComponentPhaseMapping_mapping)
  {
    v4[0] = &unk_1EFE2FEA8;
    v4[1] = &unk_1EFE2FED8;
    v5[0] = &unk_1EFE2FEC0;
    v5[1] = &unk_1EFE2FEF0;
    v4[2] = &unk_1EFE2FF08;
    v4[3] = &unk_1EFE2FF38;
    v5[2] = &unk_1EFE2FF20;
    v5[3] = &unk_1EFE2FF50;
    v4[4] = &unk_1EFE2FF68;
    v5[4] = &unk_1EFE2FF80;
    v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];
    v2 = _eventComponentPhaseMapping_mapping;
    _eventComponentPhaseMapping_mapping = v1;

    v0 = _eventComponentPhaseMapping_mapping;
  }

  return v0;
}

id _eventComponentPhaseMapping_0()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = _eventComponentPhaseMapping_mapping_0;
  if (!_eventComponentPhaseMapping_mapping_0)
  {
    v4[0] = &unk_1EFE31A08;
    v4[1] = &unk_1EFE31A20;
    v5[0] = &unk_1EFE31A08;
    v5[1] = &unk_1EFE31A20;
    v4[2] = &unk_1EFE319D8;
    v4[3] = &unk_1EFE319F0;
    v5[2] = &unk_1EFE319D8;
    v5[3] = &unk_1EFE319F0;
    v4[4] = &unk_1EFE31A38;
    v5[4] = &unk_1EFE31A38;
    v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];
    v2 = _eventComponentPhaseMapping_mapping_0;
    _eventComponentPhaseMapping_mapping_0 = v1;

    v0 = _eventComponentPhaseMapping_mapping_0;
  }

  return v0;
}

id _eventComponentPhaseMapping_1()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = _eventComponentPhaseMapping_mapping_1;
  if (!_eventComponentPhaseMapping_mapping_1)
  {
    v4[0] = &unk_1EFE33CA0;
    v4[1] = &unk_1EFE33CB8;
    v5[0] = &unk_1EFE33CA0;
    v5[1] = &unk_1EFE33CB8;
    v4[2] = &unk_1EFE33CD0;
    v4[3] = &unk_1EFE33CE8;
    v5[2] = &unk_1EFE33CD0;
    v5[3] = &unk_1EFE33CE8;
    v4[4] = &unk_1EFE33D00;
    v5[4] = &unk_1EFE33D00;
    v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];
    v2 = _eventComponentPhaseMapping_mapping_1;
    _eventComponentPhaseMapping_mapping_1 = v1;

    v0 = _eventComponentPhaseMapping_mapping_1;
  }

  return v0;
}

void forwardTouchMethod(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = [UIApp _responderBasedEventDeliverer];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v12 forward:v10 phase:a5 withEvent:v11 fromResponder:v9];
  }

  else
  {
    v13 = [v9 nextResponder];
    v14 = v13;
    if (v13 && v13 != v9)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __forwardTouchMethod_block_invoke;
      v22 = &unk_1E711E270;
      v23 = v9;
      v16 = v14;
      v24 = v16;
      v17 = v11;
      v25 = v17;
      v18 = v15;
      v26 = v18;
      [v10 enumerateObjectsUsingBlock:&v19];
      if ([v18 count])
      {
        ([v16 methodForSelector:a2])(v16, a2, v18, v17);
      }
    }
  }
}

void __forwardTouchMethod_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _wantsForwardingFromResponder:*(a1 + 32) toNextResponder:*(a1 + 40) withEvent:*(a1 + 48)])
  {
    [*(a1 + 56) addObject:v3];
  }
}

BOOL _UIResponderForwarderWantsForwardingFromResponder(void *a1, const char *a2, void *a3, void *a4, void *a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v9 _eventComponentPhase];
  v14 = [v13 value];

  if (v14 > 4 || v14 == 2)
  {
    if (!os_variant_has_internal_diagnostics())
    {
      v21 = *(__UILogGetCategoryCachedImpl("Assert", &_UIResponderForwarderWantsForwardingFromResponder___s_category) + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].receiver) = 0;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Unexpected touch phase during forwarding", buf, 2u);
      }

      goto LABEL_12;
    }

    IsDeallocating = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(IsDeallocating, OS_LOG_TYPE_FAULT))
    {
LABEL_34:

LABEL_12:
      v15 = 0;
      goto LABEL_32;
    }

LABEL_39:
    LOWORD(buf[0].receiver) = 0;
    _os_log_fault_impl(&dword_188A29000, IsDeallocating, OS_LOG_TYPE_FAULT, "Unexpected touch phase during forwarding", buf, 2u);
    goto LABEL_34;
  }

  os_variant_has_internal_diagnostics();
  if (([v9 _isAbandoningForwardingRecord] & 1) == 0)
  {
    v16 = [v9 _mutableForwardingRecord];
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__212;
    v45 = __Block_byref_object_dispose__212;
    v46 = 0;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = ___UIResponderForwarderWantsForwardingFromResponder_block_invoke;
    v38[3] = &unk_1E7108FF0;
    v17 = v11;
    v39 = v17;
    v40 = &v41;
    [v16 enumerateObjectsUsingBlock:v38];
    v18 = v42[5];
    if (v14)
    {
      if (v18)
      {
        WeakRetained = objc_loadWeakRetained((v18 + 8));
        v20 = WeakRetained == v10;

        if (!v20)
        {
          [v9 _abandonForwardingRecord];
          v15 = 1;
LABEL_31:

          _Block_object_dispose(&v41, 8);
          goto LABEL_32;
        }
      }

LABEL_29:
      v29 = v42;
      v30 = v42[5];
      if (v30)
      {
        *(v30 + 24) = v14;
        v15 = v29[5] != 0;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_31;
    }

    if (v18)
    {
      goto LABEL_29;
    }

    if (![v9 _eventComponentType] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v17, "_shouldApplyExclusiveTouch"))
    {
      v22 = [v9 window];
      v23 = [v12 touchesForWindow:v22];
      if ([v23 count] > 1)
      {

        goto LABEL_29;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [v17 _isInExclusiveTouchSubviewTree])
      {
        [v22 _setExclusiveTouchView:v17];
        v37 = [v12 _exclusiveTouchWindows];
        [v37 addObject:v22];
      }
    }

    if ((_objc_rootIsDeallocating() & 1) == 0 && !_objc_rootIsDeallocating())
    {
      v24 = [_UIEventComponentForwardingRecipient alloc];
      v25 = v17;
      v26 = v10;
      if (v24)
      {
        buf[0].receiver = v24;
        buf[0].super_class = _UIEventComponentForwardingRecipient;
        v27 = [(objc_super *)buf init];
        v24 = v27;
        if (v27)
        {
          objc_storeWeak(&v27->responder, v25);
          objc_storeWeak(&v24->fromResponder, v26);
        }
      }

      v28 = v42[5];
      v42[5] = v24;

      [v16 addObject:v42[5]];
      goto LABEL_29;
    }

    memset(buf, 0, sizeof(buf));
    v33 = MEMORY[0x1E69E9C10];
    v34 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    IsDeallocating = _objc_rootIsDeallocating();
    v35 = _objc_rootIsDeallocating();
    Name = sel_getName(a2);
    v47 = 67110658;
    v48 = IsDeallocating;
    v49 = 1024;
    v50 = v35;
    v51 = 2112;
    v52 = v10;
    v53 = 2112;
    v54 = v17;
    v55 = 2112;
    v56 = v9;
    v57 = 2112;
    v58 = v12;
    v59 = 2080;
    v60 = Name;
    v10 = MEMORY[0x1E69E9C10];
    v9 = _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

  v15 = 1;
LABEL_32:

  return v15;
}

void sub_188A94248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_UIEventComponentPhaseValue *_eventComponentPhaseForUnderlyingValue(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v5 = [a2 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 5;
  }

  v7 = [[_UIEventComponentPhaseValue alloc] initWithValue:v6 underlyingValue:a1];

  return v7;
}

uint64_t _UIApplicationProcessIsSpringBoard()
{
  if (qword_1EA992F00 != -1)
  {
    dispatch_once(&qword_1EA992F00, &__block_literal_global_1292);
  }

  return byte_1EA992DB9;
}

uint64_t _UILiveSceneResizeEnabled()
{
  if (qword_1ED49E140 != -1)
  {
    dispatch_once(&qword_1ED49E140, &__block_literal_global_13_0);
  }

  return byte_1ED49E114;
}

void __dispatchPreprocessedEventFromEventQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v260 = *MEMORY[0x1E69E9840];
  IOHIDEventGetType();
  IOHIDEventGetTimeStamp();
  ++_MergedGlobals_1216;
  kdebug_trace();
  alm_stop_tracking_responsive_launch();
  TimeStamp = IOHIDEventGetTimeStamp();
  v7 = _UIMediaTimeForMachTime(TimeStamp);
  if ((_UIUpdateCycleEnabled() & 1) == 0)
  {
    [MEMORY[0x1E6979518] setFrameInputTime:a2 withToken:v7];
  }

  v8 = *(a3 + 8);
  Type = IOHIDEventGetType();
  v170 = v8;
  if (![(UIApplication *)v8 _internalHandleHIDEventBypassingUIEvent:a1])
  {
    v11 = [(UIEventEnvironment *)a3 UIKitEventForHIDEvent:a1];
    v12 = v11;
    if (v11)
    {
      [v11 _setHIDEvent:a1];
      v165 = [v170 isIgnoringInteractionEvents];
      v13 = _UIEventHIDUIWindowForHIDEvent();
      v164 = [v13 windowScene];

      if (v164)
      {
        v14 = [v164 _isUserInteractionEnabled] ^ 1;
      }

      else
      {
        v14 = 0;
      }

      [v170 systemIsAnimatingApplicationLifecycleEvent];
      v17 = BKSHIDEventGetDigitizerAttributes();
      v18 = [v17 systemGestureStateChange];

      v169 = v165 | v14;
      v162 = v18;
      v163 = _UIEventHIDShouldAllowHoverEventGeneration(a1);
      if (Type == 11 && v18)
      {
        v19 = _UIEventHIDUIWindowForHIDEvent();
        if (!v19)
        {
          v20 = *(__UILogGetCategoryCachedImpl("Touch", &qword_1ED49F8E8) + 8);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v248 = v12;
            _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "unexpected nil window in __dispatchSystemChangeDigitizerEvent, touchesEvent:%@", buf, 0xCu);
          }
        }

        v21 = BKSHIDEventGetDigitizerAttributes();
        v22 = [v21 systemGesturesPossible];

        IOHIDEventGetType();
        IOHIDEventGetTimeStamp();
        kdebug_trace();
        __sendSystemGestureLatentClientUpdate(v12, v19, v22, 0);

        goto LABEL_21;
      }

      if (Type == 11)
      {
        if ((_UIEventHIDIgnoresDragEvents() & 1) == 0)
        {
          Children = IOHIDEventGetChildren();
          if (Children)
          {
            v30 = Children;
            if (CFArrayGetCount(Children) >= 1)
            {
              CFArrayGetValueAtIndex(v30, 0);
              v31 = BKSHIDEventGetDigitizerAttributes();
              v32 = _UIEventHIDPathAttributesForChild(v31);
              v33 = [v32 locus];

              if (v33)
              {
                v175 = 0;
                __dispatchDragEvent(v12, &v175, a3);
                v25 = v175;
LABEL_40:
                v23 = 0;
                v24 = 0;
LABEL_127:
                v166 = 1;
                goto LABEL_22;
              }
            }
          }
        }

        if (v163)
        {
          v37 = _UIEventHIDUIWindowForHIDEvent();
          v160 = [(UIEventEnvironment *)a3 _hoverEventForWindow:v37];
        }

        else
        {
          v160 = 0;
        }

        v44 = _UIEventHIDUIWindowForHIDEvent();
        v45 = [v44 _contextId];
        v156 = [v44 screen];
        v239[0] = 0;
        v239[1] = v239;
        v239[2] = 0x3032000000;
        v239[3] = __Block_byref_object_copy__143;
        v239[4] = __Block_byref_object_dispose__143;
        v240 = 0;
        v46 = [(UIEventEnvironment *)a3 _touchMapForWindow:v44];
        Mutable = v46;
        if (v46)
        {
          CFRetain(v46);
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
        }

        v154 = CFDictionaryGetCount(Mutable) != 0;
        v152 = *(a3 + 8);
        if ([v152 _isSpringBoard])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = [v152 _gestureEnvironment];
            [(UIGestureEnvironment *)v48 _forceUpdateForSpringBoardOnly];
          }
        }

        [v12 _clearTouches];
        v49 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
        CFAutorelease(v49);
        IntegerValue = IOHIDEventGetIntegerValue();
        v237[0] = 0;
        v237[1] = v237;
        v237[2] = 0x2020000000;
        v238 = 0;
        v233 = 0;
        v234 = &v233;
        v235 = 0x2020000000;
        v236 = 0;
        v232[0] = MEMORY[0x1E69E9820];
        v232[1] = 3221225472;
        v232[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke;
        v232[3] = &unk_1E7115F48;
        v232[4] = &v233;
        v232[5] = v237;
        _UIEventHIDEnumerateChildren(a1, 11, v232);
        v167 = IntegerValue & 0x83;
        v51 = BKSHIDEventGetDigitizerAttributes();
        v157 = [v51 systemGesturesPossible];

        v230[0] = 0;
        v230[1] = v230;
        v230[2] = 0x2020000000;
        v231 = 0;
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F708);
        if (*CategoryCachedImpl)
        {
          v136 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
          {
            v137 = v234[3];
            *buf = 67109376;
            *v248 = v167 >> 7;
            *&v248[4] = 1024;
            *&v248[6] = v137;
            _os_log_impl(&dword_188A29000, v136, OS_LOG_TYPE_ERROR, "Updating touches: isCancelling: %d; digitizerChildCount: %d", buf, 0xEu);
          }
        }

        if (v167 <= 0x7F && v234[3])
        {
          v53 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F710);
          if (*v53)
          {
            v150 = *(v53 + 8);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              v151 = v234[3];
              *buf = 67109120;
              *v248 = v151;
              _os_log_impl(&dword_188A29000, v150, OS_LOG_TYPE_ERROR, "\tEvent has %d digitizer child events", buf, 8u);
            }
          }

          v214 = MEMORY[0x1E69E9820];
          v215 = 3221225472;
          v216 = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_30;
          v217 = &unk_1E7119270;
          v222 = a1;
          v223 = Mutable;
          v224 = a3;
          v225 = v160;
          v229 = v45;
          v218 = v44;
          v220 = v230;
          v226 = v7;
          v227 = v12;
          v228 = v49;
          v219 = v156;
          v221 = v239;
          _UIEventHIDEnumerateChildren(a1, 11, &v214);
        }

        SenderID = IOHIDEventGetSenderID();
        v55 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F728);
        if (*v55)
        {
          v138 = *(v55 + 8);
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            Count = CFDictionaryGetCount(Mutable);
            *buf = 67109120;
            *v248 = Count;
            _os_log_impl(&dword_188A29000, v138, OS_LOG_TYPE_ERROR, "\tPrevious touch map count prior to senderID migration: %d", buf, 8u);
          }
        }

        v56 = [(__CFDictionary *)Mutable objectEnumerator];
        v57 = [v56 allObjects];
        v213[0] = MEMORY[0x1E69E9820];
        v213[1] = 3221225472;
        v213[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_37;
        v213[3] = &__block_descriptor_56_e24_v32__0__UITouch_8Q16_B24l;
        v213[4] = SenderID;
        v213[5] = v49;
        v213[6] = Mutable;
        [v57 enumerateObjectsUsingBlock:v213];

        if ((_UIEventHIDShouldIgnoreEventsExpectedToBecomeDragEvent() & 1) == 0)
        {
          v58 = _UIEventHIDExpectedToBecomeDragEvent();
          v59 = [(__CFDictionary *)Mutable objectEnumerator];
          v60 = [v59 allObjects];
          v211[0] = MEMORY[0x1E69E9820];
          v211[1] = 3221225472;
          v211[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_2;
          v211[3] = &__block_descriptor_49_e24_v32__0__UITouch_8Q16_B24l;
          v212 = v58;
          v211[4] = v49;
          v211[5] = Mutable;
          [v60 enumerateObjectsUsingBlock:v211];
        }

        v205 = 0;
        v206 = &v205;
        v207 = 0x3032000000;
        v208 = __Block_byref_object_copy__41;
        v209 = __Block_byref_object_dispose__42;
        v210 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_43;
        aBlock[3] = &unk_1E71192D8;
        aBlock[4] = &v205;
        v61 = _Block_copy(aBlock);
        v62 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F730);
        v63 = v157;
        if (*v62)
        {
          v140 = *(v62 + 8);
          if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
          {
            v141 = CFDictionaryGetCount(Mutable);
            *buf = 67109120;
            *v248 = v141;
            _os_log_impl(&dword_188A29000, v140, OS_LOG_TYPE_ERROR, "\tPrevious touch map count prior to terminal phase evaluation: %d", buf, 8u);
          }

          v63 = v157;
        }

        v198[0] = MEMORY[0x1E69E9820];
        v198[1] = 3221225472;
        v198[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_47;
        v198[3] = &unk_1E7119300;
        v202 = v167 > 0x7F;
        v200 = v7;
        v203 = v169 & 1;
        v201 = v12;
        v64 = v61;
        v199 = v64;
        [(__CFDictionary *)Mutable enumerateKeysAndObjectsUsingBlock:v198];
        v65 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F748);
        if (*v65)
        {
          v142 = *(v65 + 8);
          if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
          {
            v143 = CFDictionaryGetCount(v49);
            *buf = 67109120;
            *v248 = v143;
            _os_log_impl(&dword_188A29000, v142, OS_LOG_TYPE_ERROR, "\tNew touch map count: %d", buf, 8u);
          }

          v63 = v157;
        }

        v194[0] = MEMORY[0x1E69E9820];
        v194[1] = 3221225472;
        v194[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_52;
        v194[3] = &unk_1E7119328;
        v197 = v169 & 1;
        v196 = v12;
        v155 = v64;
        v195 = v155;
        [(__CFDictionary *)v49 enumerateKeysAndObjectsUsingBlock:v194];
        v66 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F750);
        if (*v66)
        {
          v144 = *(v66 + 8);
          if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
          {
            v145 = [v206[5] count];
            *buf = 134217984;
            *v248 = v145;
            _os_log_impl(&dword_188A29000, v144, OS_LOG_TYPE_ERROR, "\tTouches to cancel: %lu", buf, 0xCu);
          }

          v63 = v157;
        }

        if ([v206[5] count])
        {
          [v152 _cancelTouchesOrPresses:v206[5] withEvent:v12];
          __updateSystemGestureRecognitionIsPossible(v206[5], v44, v63, 1);
        }

        else if (v167 >= 0x80)
        {
          v67 = [v12 allTouches];
          __updateSystemGestureRecognitionIsPossible(v67, v44, v63, 1);

          v63 = v157;
        }

        v68 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F758);
        if (*v68)
        {
          v146 = *(v68 + 8);
          if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
          {
            v147 = CFDictionaryGetCount(v49);
            *buf = 67109120;
            *v248 = v147;
            _os_log_impl(&dword_188A29000, v146, OS_LOG_TYPE_ERROR, "+++++++++++   Number of touches in new touch map: %d", buf, 8u);
          }

          v63 = v157;
        }

        [(UIEventEnvironment *)a3 _setTouchMap:v49 forWindow:v44];
        if (v167 <= 0x7F)
        {
          v69 = [v12 allTouches];
          __updateSystemGestureRecognitionIsPossible(v69, v44, v63, 0);
        }

        else if (!v234[3])
        {
          __sendSystemGestureLatentClientUpdate(v12, v44, v63, 1);
        }

        v184[0] = MEMORY[0x1E69E9820];
        v184[1] = 3221225472;
        v184[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_56;
        v184[3] = &unk_1E7119350;
        v186 = v239;
        v187 = v230;
        v188 = v12;
        v153 = v44;
        v185 = v153;
        v189 = v160;
        v190 = Mutable;
        v191 = v49;
        v192 = a3;
        v193 = v154;
        v158 = _Block_copy(v184);
        v70 = v158;
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v71 = [v12 allTouches];
        v72 = [v71 countByEnumeratingWithState:&v180 objects:buf count:16];
        v166 = v72 != 0;
        if (v72)
        {
          v73 = 0;
          v74 = *v181;
          do
          {
            v75 = 0;
            do
            {
              if (*v181 != v74)
              {
                objc_enumerationMutation(v71);
              }

              v76 = *(*(&v180 + 1) + 8 * v75);
              v77 = [v76 phase];
              if (v77 != 2)
              {
                if (v77 == 3)
                {
                  [(UITouch *)v76 _willBeDispatchedAsEnded];
                }

                v78 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F760);
                if (*v78)
                {
                  v79 = *(v78 + 8);
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    v80 = [v76 _phaseDescription];
                    LODWORD(v243) = 138412290;
                    *(&v243 + 4) = v80;
                    _os_log_impl(&dword_188A29000, v79, OS_LOG_TYPE_ERROR, "Setting shouldSend to YES for touch phase %@", &v243, 0xCu);
                  }
                }

                v73 = 1;
              }

              ++v75;
            }

            while (v72 != v75);
            v81 = [v71 countByEnumeratingWithState:&v180 objects:buf count:16];
            v72 = v81;
          }

          while (v81);

          if ((v73 & 1) == 0)
          {
            v166 = 0;
            goto LABEL_102;
          }

          v71 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
          [v71 peekApplicationEvent:v12];
        }

LABEL_102:
        v179 = 0u;
        v177 = 0u;
        v178 = 0u;
        v176 = 0u;
        v82 = [v12 allTouches];
        v83 = [v82 countByEnumeratingWithState:&v176 objects:&v243 count:16];
        if (v83)
        {
          v84 = *v177;
          do
          {
            for (i = 0; i != v83; ++i)
            {
              if (*v177 != v84)
              {
                objc_enumerationMutation(v82);
              }

              [(UITouch *)*(*(&v176 + 1) + 8 * i) _updatePredictionsWithEvent:v12];
            }

            v83 = [v82 countByEnumeratingWithState:&v176 objects:&v243 count:16];
          }

          while (v83);
        }

        v86 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F768);
        if (*v86)
        {
          v148 = *(v86 + 8);
          if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
          {
            v149 = @"NO";
            if (v166)
            {
              v149 = @"YES";
            }

            *v241 = 138412290;
            v242 = v149;
            _os_log_impl(&dword_188A29000, v148, OS_LOG_TYPE_ERROR, "Returning %@ for shouldSend from update touches", v241, 0xCu);
          }
        }

        _Block_object_dispose(&v205, 8);
        _Block_object_dispose(v230, 8);
        _Block_object_dispose(&v233, 8);
        _Block_object_dispose(v237, 8);
        _Block_object_dispose(v239, 8);

        v25 = v158;
        v24 = v160;
        v23 = v160 != 0;
        if (v160)
        {
          v87 = v166;
        }

        else
        {
          v87 = 1;
        }

        if ((v87 & 1) == 0)
        {
          v23 = [v160 hasOutstandingUpdates];
          v166 = 0;
        }

        goto LABEL_22;
      }

      v34 = IOHIDEventGetType();
      switch(v34)
      {
        case 3:
          if (_UIEventHIDPressTypeForKeyboardHIDEvent() != -1)
          {
            goto LABEL_129;
          }

          break;
        case 29:
          v88 = IOHIDEventGetIntegerValue();
          if (v88 && v88 != 3)
          {
LABEL_129:
            v161 = *(a3 + 8);
            v159 = *(a3 + 56);
            if (IOHIDEventGetType() != 17)
            {
              v96 = IOHIDEventGetType();
              if (v96 == 3)
              {
                v168 = _UIEventHIDPressTypeForKeyboardHIDEvent();
                v94 = IOHIDEventGetIntegerValue() != 0;
LABEL_153:
                v93 = 1;
                goto LABEL_165;
              }

              if (IOHIDEventGetType() != 29)
              {
                v94 = 0;
                v168 = -1;
                goto LABEL_153;
              }

              IOHIDEventGetFloatValue();
              v94 = v102 != 0.0;
              v93 = 1;
              v95 = 105;
LABEL_148:
              v168 = v95;
              goto LABEL_165;
            }

            Event = IOHIDEventGetEvent();
            v92 = IOHIDEventGetEvent();
            if (Event && IOHIDEventIsRepeat())
            {
              v93 = 0;
              v94 = 0;
              v95 = -1;
              goto LABEL_148;
            }

            v97 = _UIEventHIDUIWindowForHIDEvent();
            v98 = [(UIEventEnvironment *)a3 _currentNudgePressTypeForWindow:v97];
            v99 = v98;
            if (v92)
            {
              v100 = 4;
              if (IOHIDEventGetIntegerValue())
              {
                v101 = 4;
LABEL_141:
                v168 = v101;
                if (v99 != -1)
                {
                  [v161 _cancelPressesWithType:v99 forPressesEvent:v12];
                }

                v94 = 1;
                v100 = v168;
                goto LABEL_163;
              }

              v94 = 0;
              v168 = -1;
            }

            else
            {
              v94 = 0;
              v168 = -1;
              v100 = -1;
              if (Event && v98 != 4)
              {
                IOHIDEventGetFloatValue();
                v104 = v103;
                IOHIDEventGetFloatValue();
                if (v104 == 0.0 && v105 == 0.0)
                {
                  v94 = 0;
                  v93 = 0;
                  v168 = -1;
                  v100 = v99;
                  if (v99 >= 4)
                  {
                    goto LABEL_164;
                  }

                  goto LABEL_163;
                }

                if (v104 > 0.0 && v105 == 0.0)
                {
                  v101 = 3;
                }

                else if (v104 < 0.0 && v105 == 0.0)
                {
                  v101 = 2;
                }

                else if (v104 == 0.0 && v105 > 0.0)
                {
                  v101 = 1;
                }

                else
                {
                  v129 = v105 >= 0.0 || v104 != 0.0;
                  v101 = v129 << 63 >> 63;
                }

                goto LABEL_141;
              }
            }

LABEL_163:
            [(UIEventEnvironment *)a3 _setCurrentNudgePressType:v168 forWindow:v97];
            v93 = 1;
            v168 = v100;
LABEL_164:

LABEL_165:
            v106 = BKSHIDEventGetBaseAttributes();
            v107 = [v106 options];

            if (v107)
            {
              [v161 _cancelPressesWithType:v168 forPressesEvent:v12];
              v93 = 0;
            }

            if (v94)
            {
              v108 = 0;
            }

            else
            {
              v108 = 3;
            }

            if ((IOHIDEventGetPhase() & 4) != 0)
            {
              v109 = v12;
              v243 = 0u;
              v244 = 0u;
              v245 = 0u;
              v246 = 0u;
              v110 = [v109 _terminalRegistrantsForPressType:v168];
              v111 = [v110 countByEnumeratingWithState:&v243 objects:buf count:16];
              if (v111)
              {
                v112 = *v244;
                do
                {
                  for (j = 0; j != v111; ++j)
                  {
                    if (*v244 != v112)
                    {
                      objc_enumerationMutation(v110);
                    }

                    [*(*(&v243 + 1) + 8 * j) pressesEventDidReceiveTerminal:v109];
                  }

                  v111 = [v110 countByEnumeratingWithState:&v243 objects:buf count:16];
                }

                while (v111);
              }

              v93 = 0;
            }

            v169 &= v159 ^ 1;
            if (v169)
            {
              [v12 _hidEvent];
              v114 = _UIEventHIDUIWindowForHIDEvent();
              v115 = [(UIEventEnvironment *)a3 _pressForType:v168 window:v114];

              if (v94)
              {
                [v115 setPhase:4];
                v108 = 0;
                v93 = 0;
              }

              else if (v115 && [v115 phase] != 4)
              {
                v116 = [MEMORY[0x1E695DFD8] setWithObject:v115];
                [v161 _cancelTouchesOrPresses:v116 withEvent:v12];

                v108 = 4;
              }

              else
              {
                v108 = 3;
              }
            }

            v214 = MEMORY[0x1E69E9820];
            v215 = 3221225472;
            v216 = ____dispatchPressesEvent_block_invoke;
            v217 = &unk_1E71194A0;
            v219 = v161;
            v218 = v12;
            v117 = _Block_copy(&v214);
            v118 = v117;
            if (!v93)
            {
              v120 = 0;
LABEL_199:
              v166 = v120 & (v169 ^ 1);
              v25 = v117;
              v23 = 0;
              v24 = 0;
              goto LABEL_22;
            }

            if (IOHIDEventGetType() == 29)
            {
              v119 = IOHIDEventGetIntegerValue();
            }

            else
            {
              if (IOHIDEventGetType() == 3)
              {
                v119 = IOHIDEventGetIntegerValue();
                v121 = IOHIDEventGetIntegerValue() != 0;
LABEL_195:
                if (v108 >= 3)
                {
                  v122 = 0.0;
                }

                else
                {
                  v122 = 1.0;
                }

                [v12 _hidEvent];
                v123 = BKSHIDEventGetBaseAttributes();
                v120 = [v161 _prepareButtonEvent:v12 type:v168 phase:v108 timestamp:v119 force:v121 clickCount:objc_msgSend(v123 longClick:"contextID") contextID:{v7, v122}];

                goto LABEL_199;
              }

              v119 = 0;
            }

            v121 = 0;
            goto LABEL_195;
          }

          break;
        case 17:
          v35 = _UIEventHIDUIScreenForHIDEvent(a1);
          v36 = [v35 _userInterfaceIdiom];

          if (v36 == 3)
          {
            goto LABEL_129;
          }

          break;
      }

      if (IOHIDEventGetType() == 3 && ((v89 = IOHIDEventGetIntegerValue(), v89 == 7) || v89 == 255 || v89 == 12 && ((v90 = IOHIDEventGetIntegerValue(), v90 == 184) || v90 == 669 || v90 == 430)))
      {
        [v170 handleKeyHIDEvent:a1];
      }

      else
      {
        if (_UIEventHIDIsDynamicButtonEvent(a1))
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          LOBYTE(v169) = (*(a3 + 56) ^ 1) & v169;
          goto LABEL_127;
        }

        if (IOHIDEventGetType() == 30)
        {
          [v170 _handleUnicodeEvent:a1];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(_UIPencilEvent *)v12 sendToInteractions];
          }

          else
          {
            if ([v12 type] != 10)
            {
              if ([v12 type] != 14)
              {
                v23 = 0;
                v24 = 0;
                v25 = 0;
                goto LABEL_127;
              }

              v171[0] = MEMORY[0x1E69E9820];
              v171[1] = 3221225472;
              v171[2] = ____dispatchPreprocessedEventFromEventQueue_block_invoke_2;
              v171[3] = &unk_1E70F3590;
              v172 = v12;
              v25 = _Block_copy(v171);

              goto LABEL_40;
            }

            if ([v12 _shouldSendEvent])
            {
              v173[0] = MEMORY[0x1E69E9820];
              v173[1] = 3221225472;
              v173[2] = ____dispatchPreprocessedEventFromEventQueue_block_invoke;
              v173[3] = &unk_1E70F3590;
              v174 = v12;
              v25 = _Block_copy(v173);

              goto LABEL_40;
            }
          }
        }
      }

LABEL_21:
      v23 = 0;
      v24 = 0;
      v166 = 0;
      v25 = 0;
LABEL_22:
      if (v163)
      {
        v26 = __UILogGetCategoryCachedImpl("EventDispatch", &qword_1ED49F780);
        if (*v26)
        {
          v130 = *(v26 + 8);
          if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
          {
            v131 = v130;
            v132 = [v24 type];
            v133 = [v24 subtype];
            v134 = IOHIDEventGetType();
            *buf = 134219264;
            *v248 = v24;
            *&v248[8] = 2048;
            v249 = v132;
            v250 = 2048;
            v251 = v133;
            v252 = 1024;
            v253 = v134;
            v254 = 1024;
            v255 = v23;
            v256 = 1024;
            v257 = v169 & 1;
            _os_log_impl(&dword_188A29000, v131, OS_LOG_TYPE_DEFAULT, "Evaluating dispatch of UIEvent: %p; type: %li; subtype: %li; backing type: %i; shouldSend: %d; ignoreInteractionEvents: %d", buf, 0x32u);
          }
        }

        if (((v24 != 0) & v23) == 1)
        {
          [v24 _setHIDEvent:a1];
          [v170 sendEvent:v24];
          [v24 _resetHasOutstandingUpdateTouches];
        }
      }

      v27 = __UILogGetCategoryCachedImpl("EventDispatch", &qword_1ED49F788);
      if (*v27)
      {
        v124 = *(v27 + 8);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          v125 = v124;
          v126 = [v12 type];
          v127 = [v12 subtype];
          v128 = IOHIDEventGetType();
          *buf = 134219520;
          *v248 = v12;
          *&v248[8] = 2048;
          v249 = v126;
          v250 = 2048;
          v251 = v127;
          v252 = 1024;
          v253 = v128;
          v254 = 1024;
          v255 = v166;
          v256 = 1024;
          v257 = v169 & 1;
          v258 = 1024;
          v259 = v162;
          _os_log_impl(&dword_188A29000, v125, OS_LOG_TYPE_DEFAULT, "Evaluating dispatch of UIEvent: %p; type: %li; subtype: %li; backing type: %i; shouldSend: %d; ignoreInteractionEvents: %d, systemGestureStateChange: %d", buf, 0x38u);
        }
      }

      if (v166 && ([v12 _shouldSkipEventDeliveryWithIgnoreInteractionEvents:v169 & 1] & 1) == 0)
      {
        v28 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F790);
        if (*v28)
        {
          v135 = *(v28 + 8);
          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v248 = v12;
            _os_log_impl(&dword_188A29000, v135, OS_LOG_TYPE_ERROR, "Delivering event %@", buf, 0xCu);
          }
        }

        [v170 sendEvent:v12];
        [v12 _didSendEvent];
      }

      if (v25)
      {
        v25[2](v25);
      }

      [v12 _cleanupAfterDispatch];
      IOHIDEventGetType();
      IOHIDEventGetTimeStamp();
      --_MergedGlobals_1216;
      kdebug_trace();

      goto LABEL_54;
    }

    if (Type == 29)
    {
      IOHIDEventGetFloatValue();
      v39 = v38;
      if (IOHIDEventGetIntegerValue() != 3)
      {
LABEL_50:
        v41 = BKSHIDEventGetBaseAttributes();
        v42 = [v41 contextID];

        v43 = *(__UILogGetCategoryCachedImpl("EventDispatch", &qword_1ED49F778) + 8);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v248 = Type;
          *&v248[4] = 1026;
          *&v248[6] = v42;
          _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_DEFAULT, "Found no UIEvent, so dispatching backing event of type directly to application: %i; contextId: 0x%{public}X", buf, 0xEu);
        }

        [v170 _handleHIDEvent:a1];
        goto LABEL_53;
      }

      v40 = +[UIScreen _carScreen];
      [v40 _setCarPlayHumanPresenceInRange:v39 > 0.0];
    }

    else
    {
      if (Type != 14)
      {
        goto LABEL_50;
      }

      v15 = (IOHIDEventGetIntegerValue() >> 6) & 1;
      [v170 proximityStateChanged:v15];
      v16 = +[UIDevice currentDevice];
      [v16 _setProximityState:v15];

      if ([v170 isFrontBoard])
      {
        goto LABEL_50;
      }
    }

LABEL_53:
    IOHIDEventGetType();
    IOHIDEventGetTimeStamp();
    --_MergedGlobals_1216;
    kdebug_trace();
LABEL_54:

    return;
  }

  v10 = *(__UILogGetCategoryCachedImpl("EventDispatch", &qword_1ED49F770) + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v248 = Type;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Backing event handled directly by system shell without UIEvent: %i", buf, 8u);
  }

  IOHIDEventGetType();
  IOHIDEventGetTimeStamp();
  --_MergedGlobals_1216;
  kdebug_trace();
}

void sub_188A98334(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x380], 8);
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose(&STACK[0x3F0], 8);
  _Block_object_dispose(&STACK[0x410], 8);
  _Unwind_Resume(a1);
}

void ____finishDigitizerEventDispatch_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a3 + 360);
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  v6 = [*(a1 + 32) hoverTouchForContextId:objc_msgSend(v7 pathIndex:{"_contextId"), objc_msgSend(a3, "_pathIndex")}];
  if (v6 && ([a3 phase] == 3 || objc_msgSend(a3, "phase") == 4))
  {
    [a3 _clearForReenteringHoverInWindow:v7];
  }

  if (a3)
  {
    *(a3 + 236) &= ~0x2000u;
  }

  [*(a1 + 40) _removeTouch:a3];
}

id UIApplicationSceneDeactivationReasonMaskDescriptionComponents(int a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 20; ++i)
  {
    if (((1 << i) & a1) != 0)
    {
      v4 = UIApplicationSceneDeactivationReasonDescription(i);
      if (v4)
      {
        [v2 addObject:v4];
      }
    }
  }

  return v2;
}

void updateCycleEntry(void *a1)
{
  v2 = a1;
  v1 = +[_UIEventBus instance];
  [(_UIEventBus *)v1 drainEvents:?];

  if ([*(v2[1] + 16) count])
  {
    [*(v2[1] + 16) count];
    ++updateCycleEntry_nestingLevel;
    kdebug_trace();
    __processEventQueue(v2[1], -1);
    [*(v2[1] + 16) count];
    --updateCycleEntry_nestingLevel;
    kdebug_trace();
  }
}

uint64_t sub_188A988BC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t sub_188A98930()
{
  v0 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (qword_1ED48FC18 != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    v2 = off_1ED48FC58;
    if (!*(off_1ED48FC58 + 2))
    {
      break;
    }

    off_1ED48FC58 = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    MEMORY[0x1EEE9AC00](v3);
    sub_18A4A54D8();
  }

  return result;
}

uint64_t sub_188A98A6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t __setupUpdateSequence_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E6979518] currentState])
  {
    if (*(a2 + 584) >= 1)
    {
      UCTimeToSeconds();
      [MEMORY[0x1E6979518] setUpdateDeadline:?];
    }

    if (*(a2 + 632) >= 1)
    {
      UCTimeToSeconds();
      [MEMORY[0x1E6979518] setCommitTime:?];
    }

    if (*(a2 + 689) == 1 && (*(a2 + 688) & 1) == 0 && (*(a2 + 690) & 1) == 0)
    {
      [MEMORY[0x1E6979518] setLowLatency:1];
    }

    _UIQOSMarkIntervalRelevant();
  }

  if (xmmword_1ED4A37C8 >= 1)
  {
    v3 = *(a2 + 512);
    UCTimeToSeconds();
    [MEMORY[0x1E6979518] setFrameInputTime:v3 withToken:?];
  }

  if (*(&xmmword_1ED4A37C8 + 1) >= 1)
  {
    v4 = *(__UILogGetCategoryCachedImpl("RemoteTimestamp", &performCATransactionCommitAction___s_category) + 8);
    if (os_signpost_enabled(v4))
    {
      v6 = 134217984;
      v7 = *(&xmmword_1ED4A37C8 + 1);
      _os_signpost_emit_with_name_impl(&dword_188A29000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetRemoteTimestamp", "remoteTime=%lli", &v6, 0xCu);
    }

    [MEMORY[0x1E6979518] setRemoteInputMachTime:*(&xmmword_1ED4A37C8 + 1)];
  }

  *(a2 + 280) = 0;
  _UIUpdateInputSetInputChanged(*(a2 + 328), a2 + 280);
  return _UIApplicationFlushCATransaction(1);
}

void _UIQOSMarkIntervalRelevant()
{
  if (qword_1ED4A28F8 != -1)
  {
    dispatch_once(&qword_1ED4A28F8, &__block_literal_global_7_4);
  }

  if (dword_1ED4A2908 || word_1ED4A2938 == 1)
  {
    HIBYTE(word_1ED4A2938) = 1;
  }
}

uint64_t _UIApplicationFlushCATransaction(int a1)
{
  if (!UIApp)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIApplicationFlushCATransaction(const BOOL)"];
    [v4 handleFailureInFunction:v5 file:@"UIApplication.m" lineNumber:3335 description:@"Requires UIApplication instance"];
  }

  if (a1)
  {
    [MEMORY[0x1E6979518] flushAsRunLoopObserver];
  }

  else
  {
    [MEMORY[0x1E6979518] flush];
  }

  result = _cleanUpAfterCAFlushAndRunDeferredBlocks(UIApp, 1);
  if (result)
  {
    [MEMORY[0x1E6979518] flush];
    v3 = UIApp;

    return _cleanUpAfterCAFlushAndRunDeferredBlocks(v3, 0);
  }

  return result;
}

double _UITouchForceFromTouches(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      v6 = 0.0;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v11 + 1) + 8 * i) force];
          v6 = v6 + v8;
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 0.0;
    }

    v9 = v6 / [v2 count];
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

uint64_t __UIAPPLICATION_IS_LOADING_INITIALIZATION_INFO_FROM_THE_SYSTEM__(uint64_t result)
{
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void UIGraphicsPushContext(CGContextRef context)
{
  ContextStack = GetContextStack(1);
  v3 = CGContextRetain(context);
  v4 = *ContextStack;
  v5 = &ContextStack[6 * *ContextStack];
  *(v5 + 1) = v3;
  v5[4] = 0;
  *(v5 + 3) = 0;
  *ContextStack = v4 + 1;
}

void *GetContextStack(int a1)
{
  pthread_once(&GetContextStack___contextThreadKeyOnce, CreateContextKey);
  v2 = pthread_getspecific(__contextThreadKey);
  if (!v2)
  {
    v3 = malloc_type_malloc(0x68uLL, 0x100004000313F17uLL);
    *v3 = 0x400000000;
    goto LABEL_6;
  }

  v3 = v2;
  if (a1)
  {
    v4 = *v2;
    if (*v2 == v2[1])
    {
      v2[1] = v4 + 4;
      v3 = malloc_type_realloc(v2, 24 * v4 + 104, 0x100004000313F17uLL);
LABEL_6:
      pthread_setspecific(__contextThreadKey, v3);
    }
  }

  return v3;
}

void PopContextFromStack(int *a1)
{
  v2 = *a1 - 1;
  if (*a1 >= 1)
  {
    *a1 = v2;
    v4 = a1 + 2;
    v5 = *&a1[6 * v2 + 2];
    if (v5)
    {
      CGContextRelease(v5);
      v2 = *a1;
    }

    v6 = *&v4[6 * v2 + 4];
    if (v6)
    {

      free(v6);
    }
  }
}

id _UIKitBundle()
{
  v0 = _UIKitBundle_kitBundle;
  if (!_UIKitBundle_kitBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = _UIKitBundle_kitBundle;
    _UIKitBundle_kitBundle = v1;

    v0 = _UIKitBundle_kitBundle;
  }

  return v0;
}

id _queue_compatibilityRecords()
{
  v0 = _eventDeferringCompatibilityQueue();
  dispatch_assert_queue_V2(v0);

  v1 = _compatibilityDeferringRecords;
  if (!_compatibilityDeferringRecords)
  {
    v2 = objc_opt_new();
    v3 = _compatibilityDeferringRecords;
    _compatibilityDeferringRecords = v2;

    v1 = _compatibilityDeferringRecords;
  }

  return v1;
}

uint64_t UIApplicationInitialize()
{
  v23 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (os_variant_has_internal_content())
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = [&unk_1EFE2D378 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(&unk_1EFE2D378);
          }

          v7 = *(*(&v18 + 1) + 8 * i);
          v8 = getenv([v7 UTF8String]);
          if (v8)
          {
            v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
            [v2 setObject:v9 forKey:v7];
          }
        }

        v4 = [&unk_1EFE2D378 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v4);
    }

    v10 = [v2 objectForKey:@"__PPT_ForTesting"];

    if (v10)
    {
      __IsRunningTests = [v2 bs_BOOLForKey:@"__PPT_ForTesting"];
    }

    v11 = [v2 objectForKey:@"__PPT_SignpostID"];

    if (v11)
    {
      v12 = [v2 bs_safeStringForKey:@"__PPT_SignpostID"];
      __ActivationSignpostID = [v12 longLongValue];
    }

    v13 = [v2 objectForKey:@"__PPT_LaunchTime"];

    if (v13)
    {
      v14 = [v2 bs_safeStringForKey:@"__PPT_LaunchTime"];
      [v14 doubleValue];
      __LaunchTime = v15;
      __ExecOrResumeTime = v15;
    }

    v16 = [v2 objectForKey:@"__PPT_BackgroundLaunch"];

    if (v16)
    {
      if ([v2 bs_BOOLForKey:@"__PPT_BackgroundLaunch"])
      {
        v17 = @"launch suspended";
      }

      else
      {
        v17 = @"launch";
      }

      objc_storeStrong(&qword_1EA992DE8, v17);
    }
  }

  if (!qword_1EA992DE8)
  {
    qword_1EA992DE8 = @"launch";
  }

  if (qword_1EA9932D8 != -1)
  {
    dispatch_once(&qword_1EA9932D8, &__block_literal_global_3910);
  }

  if (byte_1EA992DE2 == 1)
  {
    CTFontSetAltTextStyleSpec();
  }

  Main = CFRunLoopGetMain();
  CFRunLoopAddCommonMode(Main, @"UITrackingRunLoopMode");
  GSInitialize();
  _UIKitApplyPlatformVisualStyles();
  return kdebug_trace();
}

void _UIKitApplyPlatformVisualStyles()
{
  if (_UIKitApplyPlatformVisualStyles_onceToken[0] != -1)
  {
    dispatch_once(_UIKitApplyPlatformVisualStyles_onceToken, &__block_literal_global_596);
  }
}

void _UIInternalPreferenceSync(int a1, _DWORD *a2, uint64_t a3, uint64_t (*a4)(_DWORD *))
{
  v7 = [_revisionDefaults objectForKey:?];
  if (v7)
  {
    v9 = v7;
    v8 = a4(a2);
    v7 = v9;
    a1 += v8;
  }

  *a2 = a1;
}

void __defaultConfiguration_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  makeProfilePath("Default", v6);
  if (access(v6, 0))
  {
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      v0 = dispatch_time(0, 30000000000);
      v1 = dispatch_get_global_queue(17, 0);
      dispatch_after(v0, v1, &__block_literal_global_18_4);
    }
  }

  if (!_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UpdateCycleCompatibility, @"UpdateCycleCompatibility", _UIInternalPreferenceUpdateBool))
  {
    if ((byte_1ED48B3EC & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v2 = _UIMainBundleIdentifier();
    v3 = [&unk_1EFE2D168 containsObject:v2];

    byte_1ED49FC8A = v3 ^ 1;
    if (v3)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  byte_1ED49FC8A = 1;
LABEL_9:
  v4 = [MEMORY[0x1E6979328] mainDisplay];
  v5 = [v4 supportsVariableFrameDuration];

  byte_1ED49FC8B = v5;
}

void __UISceneAccessClassComponentArray(int a1, void *a2)
{
  v3 = a2;
  if (qword_1ED49C390 != -1)
  {
    dispatch_once(&qword_1ED49C390, &__block_literal_global_702);
  }

  v4 = qword_1ED49C388;
  if (a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ____UISceneAccessClassComponentArray_block_invoke_2;
    block[3] = &unk_1E70F0F78;
    v5 = &v11;
    v11 = v3;
    v6 = v3;
    dispatch_barrier_sync(v4, block);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ____UISceneAccessClassComponentArray_block_invoke_3;
    v8[3] = &unk_1E70F0F78;
    v5 = &v9;
    v9 = v3;
    v7 = v3;
    dispatch_sync(v4, v8);
  }
}

id _UIKitUserDefaults()
{
  if (qword_1ED4A25F0 != -1)
  {
    dispatch_once(&qword_1ED4A25F0, &__block_literal_global_651);
  }

  v1 = _MergedGlobals_1352;

  return v1;
}

char *makeProfilePath(const char *a1, char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v5 = 32;
  if (sysctlbyname("hw.targettype", v6, &v5, 0, 0) || snprintf(a2, 0x400uLL, "%s/%s.%s.plist", "/System/Library/EventTimingProfiles", v6, a1) >= 0x400)
  {
    abort();
  }

  return a2;
}

unint64_t __UILogCategoryGetNode(_BYTE *__s2, uint64_t a2, uint64_t (*a3)(_BYTE *))
{
  v4 = a2;
  v6 = *__s2;
  if (*__s2)
  {
    v7 = 0;
    v8 = 0;
    LOBYTE(v9) = *__s2;
    do
    {
      v8 = 257 * v8 + v9;
      v9 = __s2[++v7];
    }

    while (v9);
    v10 = 257 * v8;
  }

  else
  {
    LODWORD(v7) = 0;
    v10 = 0;
  }

  v11 = v10 + v7;
  v12 = *(a2 + 8 * (v11 & 0x1F));
  if (v12)
  {
    v13 = 0;
    v14 = v11;
    do
    {
      if (*v12 == v11)
      {
        if (!memcmp(*(v12 + 264), __s2, v7))
        {
          return v12;
        }

        ++v13;
        if (v6)
        {
          v7 = 0;
          LOBYTE(v15) = v6;
          v16 = v13;
          do
          {
            v16 = 257 * v16 + v15;
            v15 = __s2[++v7];
          }

          while (v15);
        }

        else
        {
          LODWORD(v7) = 0;
          v16 = v13;
        }

        v11 = 257 * v16 + v7;
        v14 = v11;
      }

      else
      {
        v14 >>= 5;
      }

      v12 = *(v12 + 8 * (v14 & 0x1F) + 8);
    }

    while (v12);
  }

  os_unfair_lock_lock(&_MergedGlobals_1345);
  v17 = *__s2;
  if (*__s2)
  {
    v18 = 0;
    v19 = 0;
    LOBYTE(v20) = *__s2;
    do
    {
      v19 = 257 * v19 + v20;
      v20 = __s2[++v18];
    }

    while (v20);
    v21 = 257 * v19;
  }

  else
  {
    v18 = 0;
    v21 = 0;
  }

  v22 = (v21 + v18);
  v23 = v22 | (v18 << 32);
  v24 = v22 & 0x1F;
  v25 = *(v4 + 8 * v24);
  if (v25)
  {
    v26 = 0;
    LODWORD(v27) = v22;
    do
    {
      if (*v25 == v27)
      {
        if (!memcmp(*(v25 + 264), __s2, v18))
        {
          v30 = (v4 + 8 * v24);
          goto LABEL_46;
        }

        ++v26;
        if (v17)
        {
          v18 = 0;
          LOBYTE(v28) = v17;
          v29 = v26;
          do
          {
            v29 = 257 * v29 + v28;
            v28 = __s2[++v18];
          }

          while (v28);
        }

        else
        {
          v18 = 0;
          v29 = v26;
        }

        v27 = (257 * v29 + v18);
        v23 = v27 | (v18 << 32);
        LODWORD(v22) = 257 * v29 + v18;
      }

      else
      {
        LODWORD(v22) = v22 >> 5;
      }

      v4 = v25 + 8;
      v24 = v22 & 0x1F;
      v25 = *(v25 + 8 + 8 * v24);
    }

    while (v25);
  }

  v30 = (v4 + 8 * v24);
  v31 = strlen(__s2);
  v32 = v31;
  if (v31 < 0x2801)
  {
    v34 = (g_UILogCategoriesAllocator_1 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (v34 < g_UILogCategoriesAllocator_1 || v34 > 10240 - v31)
    {
      v36 = malloc_type_malloc(0x2800uLL, 0x100004077774924uLL);
      v34 = 0;
      qword_1ED4A2560 = v36;
    }

    else
    {
      v36 = qword_1ED4A2560;
    }

    g_UILogCategoriesAllocator_1 = v34 + v32;
    v33 = &v36[v34];
  }

  else
  {
    v33 = malloc_type_malloc(v31, 0xF92C82F2uLL);
  }

  memcpy(v33, __s2, v32);
  v37 = a3(__s2);
  *v37 = v23;
  *(v37 + 264) = v33;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  *(v37 + 40) = 0u;
  *(v37 + 56) = 0u;
  *(v37 + 72) = 0u;
  *(v37 + 88) = 0u;
  *(v37 + 104) = 0u;
  *(v37 + 120) = 0u;
  *(v37 + 136) = 0u;
  *(v37 + 152) = 0u;
  *(v37 + 168) = 0u;
  *(v37 + 184) = 0u;
  *(v37 + 200) = 0u;
  *(v37 + 216) = 0u;
  *(v37 + 232) = 0u;
  *(v37 + 248) = 0u;
  atomic_store(v37, v30);
LABEL_46:
  os_unfair_lock_unlock(&_MergedGlobals_1345);
  return *v30;
}

void ____associateFlagWithPreferencesKeyLocked_block_invoke()
{
  v0 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v0, &__block_literal_global_12_10);
}

uint64_t __UILogCategoryNewNode(const char *a1)
{
  v2 = (g_UILogCategoriesAllocator_1 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 < g_UILogCategoriesAllocator_1 || v2 > 0x26E0)
  {
    v4 = malloc_type_malloc(0x2800uLL, 0x100004077774924uLL);
    v2 = 0;
    qword_1ED4A2560 = v4;
  }

  else
  {
    v4 = qword_1ED4A2560;
  }

  g_UILogCategoriesAllocator_1 = v2 + 288;
  v5 = v4 + v2;
  *v5 = 0;
  *(v5 + 4) = 0;
  *(v5 + 8) = 0;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v7 = _UIKitUserDefaults();
  v8 = [@"Log" stringByAppendingString:v6];
  v9 = 1;
  __associateFlagWithPreferencesKeyLocked(v5, 1, v7, v8);
  v10 = 0;
  while (1)
  {
    v11 = v9;
    v12 = &(&g_UILogCategoriesOverrides)[4 * v10];
    if ([v6 isEqualToString:*v12])
    {
      break;
    }

    v9 = 0;
    v10 = 1;
    if ((v11 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v13 = v12[1];
  if (v13)
  {
    __associateFlagWithPreferencesKeyLocked(v5, 2, v7, v13);
  }

  v14 = v12[2];
  if (v14)
  {
    v15 = [MEMORY[0x1E695E000] standardUserDefaults];
    __associateFlagWithPreferencesKeyLocked(v5, 4, v15, v14);
  }

  v16 = v12[3];
  if (v16 && (v16->data)())
  {
    *(v5 + 4) |= 8u;
    *v5 = 1;
  }

LABEL_18:
  *(v5 + 8) = os_log_create("com.apple.UIKit", a1);

  return v5 + 16;
}

void _UIUpdateSchedulerStart(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14[0] = 0;
  v12 = 0;
  v15 = v14;
  v16 = 752;
  v2 = *MEMORY[0x1E69DEFD8];
  v17 = &v13;
  v18 = v2;
  v3 = *MEMORY[0x1E69DEFD0];
  v19 = &v12;
  v20 = v3;
  UCCoallocNVars();
  CFRunLoopGetCurrent();
  v13 = UCLoopTapCFRunLoopInit();
  *(v14[0] + 696) = v13;
  UCLoopTapCFRunLoopAddToMode();
  v12 = UCDriverInit();
  *(v14[0] + 704) = v12;
  UCLoopTapCFRunLoopGetLoopTapImpl();
  UCDriverSetLoopTap();
  MEMORY[0x18CFE7DB0](*(v14[0] + 704), v14[0], schedulerModeSchedulingEnter);
  UCDriverSignal();
  UCDriverActivate();
  v4 = v14[0];
  *a1 = v14[0];
  *v4 = a1;
  *(v4 + 664) = UCTimeFromSeconds();
  *(v4 + 648) = 0x7FFFFFFFFFFFFFFFLL;
  *(v4 + 672) = UCTimeFromSeconds();
  *(v4 + 680) = UCTimeFromSeconds();
  v5 = *v4;
  unk_1ED4A3798 = requestRegistrySignaledCallback;
  unk_1ED4A37A0 = v5;
  *(v4 + 8) = &mainGroup;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 2;
  *(v4 + 65) = 0;
  *(v4 + 52) = 0;
  *(v4 + 60) = 0;
  *(v4 + 100) = 0;
  *(v4 + 84) = 0;
  *(v4 + 92) = 0;
  *(v4 + 76) = 0;
  _UIUpdateInputGroupAddInputSet(&mainGroup, &commonSet);
  _UIUpdateInputGroupAddInputSet(&mainGroup, v4 + 8);
  *(v4 + 104) = 0;
  *(v4 + 112) = &mainGroup;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 2;
  *(v4 + 160) = 2;
  *(v4 + 168) = &commonSet;
  *(v4 + 176) = v4 + 8;
  *(v4 + 280) = 2 * ([MEMORY[0x1E6979518] currentState] != 0);
  *(v4 + 288) = xmmword_18A680B00;
  *(v4 + 304) = 0;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0;
  *(v4 + 368) = "ImplicitTransaction";
  *(v4 + 376) = 0;
  *(v4 + 400) = 0;
  *(v4 + 408) = 0u;
  *(v4 + 424) = 0u;
  *(v4 + 384) = 0x8000000000000000;
  *(v4 + 392) = 0x8000000000000000;
  *(v4 + 456) = v4;
  *(v4 + 464) = "DisplayLinks";
  *(v4 + 440) = 0;
  *(v4 + 448) = inputDisplayLinksReadyForModelTimeCallback;
  *(v4 + 184) = 2 * (dword_1ED4A3784 != 0);
  *(v4 + 192) = xmmword_18A680B00;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 248) = 0u;
  *(v4 + 264) = 0;
  *(v4 + 272) = "ForceUpdates";
  _UIUpdateInputSetAddInput(v4 + 8, (v4 + 280));
  _UIUpdateInputSetAddInput(v4 + 8, (v4 + 376));
  _UIUpdateInputSetAddInput(v4 + 8, (v4 + 184));
  v6 = *v4;
  v7 = dword_1ED491790;
  if (qword_1ED4917A0)
  {
    v7 = dword_1ED491790 + 1;
  }

  dword_1ED491790 = v7 - 1;
  qword_1ED4917A0 = inputGroupSignaledCallback;
  unk_1ED4917A8 = v6;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x1E6979330] setEarlyWakeupOffset:1.79769313e308];
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __setupCA_block_invoke;
  v18 = &__block_descriptor_40_e16_B16__0r____QQI_8l;
  v19 = v4;
  [MEMORY[0x1E6979330] setWillFireHandler:&v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __setupCA_block_invoke_2;
  v14[3] = &__block_descriptor_40_e5_v8__0l;
  v14[4] = v4;
  [MEMORY[0x1E6979518] setImplicitTransactionDidBeginHandler:v14];
  [MEMORY[0x1E6979518] setDisableRunLoopObserverCommits:1];
  [MEMORY[0x1E6979518] setDefaultDisableRunLoopObserverCommits:1];
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x1E6979518] enableUpdateCycleSupport];
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"UISceneWillEnterForegroundNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"UISceneDidEnterBackgroundNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"UISceneDidDisconnectNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"UIWindowDidBecomeVisibleNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"UIWindowDidBecomeHiddenNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, _UIWindowDidDetachContextNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"_UIWindowDidMoveToSceneNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"_UIWindowHostingSceneDidMoveToScreenNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  *(v4 + 472) = 0;
  v9 = qword_1ED4918D8;
  qword_1ED4918D0 = v4;
  qword_1ED4918D8 = &__block_literal_global_436;

  v10 = qword_1ED4918A8;
  qword_1ED4918A0 = v4;
  qword_1ED4918A8 = &__block_literal_global_27_3;

  v11 = qword_1ED4916E8;
  qword_1ED4916E0 = v4;
  qword_1ED4916E8 = &__block_literal_global_29_5;
}

uint64_t _UIUpdateInputGroupAddInputSet(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  *(a2 + 80) = v2;
  if (v2)
  {
    *(v2 + 88) = a2 + 80;
  }

  *(result + 40) = a2;
  *(a2 + 88) = result + 40;
  ++*(result + 16);
  v3 = *result | 1;
  if (*result != v3)
  {
    *result = v3;
    if (!*(result + 8))
    {
      return (*(result + 24))(result, *(result + 32));
    }
  }

  return result;
}

uint64_t _UIUpdateInputSetAddInput(uint64_t a1, void *a2)
{
  v2 = *(a1 + 72);
  ++*(a1 + 68);
  *(a1 + 64) = 1;
  *(a1 + 40) = 2;
  a2[7] = v2;
  if (v2)
  {
    *(v2 + 64) = a2 + 7;
  }

  *(a1 + 72) = a2;
  a2[8] = a1 + 72;
  a2[6] = a1;
  result = *a1;
  ++*(result + 16);
  v4 = *result | 1;
  if (*result != v4)
  {
    *result = v4;
    if (!*(result + 8))
    {
      return (*(result + 24))(result, *(result + 32));
    }
  }

  return result;
}

id ___dragEventExtractionFilter_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___dragEventExtractionFilter_block_invoke_2;
  v7[3] = &unk_1E7115FE8;
  v9 = v3;
  v8 = *(a1 + 32);
  v4 = v3;
  v5 = _Block_copy(v7);

  return v5;
}

id ___globalEdgeSwipeEventDiscardFilterGenerator_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___globalEdgeSwipeEventDiscardFilterGenerator_block_invoke_2;
  aBlock[3] = &unk_1E7116010;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);

  return v4;
}

void UIApplicationInstantiateSingleton(objc_class *a1)
{
  kdebug_trace();
  if (UIApp)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void UIApplicationInstantiateSingleton(__unsafe_unretained Class)"];
    [v5 handleFailureInFunction:v6 file:@"UIApplication.m" lineNumber:5285 description:@"There can only be one UIApplication instance."];
  }

  v2 = [a1 alloc];
  v3 = UIApp;
  UIApp = v2;

  v4 = [UIApp init];
  v9 = v4;
  if (!UIApp || UIApp != v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void UIApplicationInstantiateSingleton(__unsafe_unretained Class)"];
    [v7 handleFailureInFunction:v8 file:@"UIApplication.m" lineNumber:5289 description:@"Unable to instantiate the UIApplication singleton."];
  }

  kdebug_trace();
}

void ____associateFlagWithPreferencesKeyLocked_block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __preferencesNotificationCallback, @"com.apple.UIKit.LoggingPreferences", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void _UIApplicationStartLaunchBackgroundTask()
{
  os_unfair_lock_lock(&_launchBackgroundTaskLock);
  if ((_launchBackgroundTaskPeriodOver & 1) == 0)
  {
    v0 = _doAddBackgroundTask(@"Launch Background Task for Coalescing", 0, 0);
    if (v0)
    {
      _launchBackgroundTaskIdentifier = v0[1];
      if (_launchBackgroundTaskIdentifier)
      {
        v1 = dispatch_time(0, 1000000000);
        v2 = dispatch_get_current_queue();
        dispatch_after(v1, v2, &__block_literal_global_86_0);

        goto LABEL_9;
      }
    }

    else
    {
      _launchBackgroundTaskIdentifier = 0;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unexpectedly failed to create Launch Background Task.", buf, 2u);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &_UIApplicationStartLaunchBackgroundTask___s_category) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unexpectedly failed to create Launch Background Task.", v5, 2u);
      }
    }
  }

LABEL_9:
  os_unfair_lock_unlock(&_launchBackgroundTaskLock);
}

const void **_doAddBackgroundTask(void *a1, void *a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    entr_act_modify();
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__98;
  v33 = __Block_byref_object_dispose__98;
  v34 = 0;
  v7 = +[_UIBackgroundTaskInfo backgroundTaskAssertionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___doAddBackgroundTask_block_invoke;
  block[3] = &unk_1E70FCDA0;
  v28 = &v29;
  v8 = v5;
  v27 = v8;
  dispatch_sync(v7, block);

  if (v30[5] || (dyld_program_sdk_at_least() & 1) == 0)
  {
    v10 = [_UIBackgroundTaskInfo alloc];
    v9 = [(_UIBackgroundTaskInfo *)v10 initWithProcessAssertion:v30[5] taskName:v8 expirationHandler:v6];
    os_unfair_lock_lock(&stru_1ED49E204);
    if (!qword_1ED49E250)
    {
      v11 = *(MEMORY[0x1E696A4A8] + 16);
      *&keyCallBacks.hash = *MEMORY[0x1E696A4A8];
      *&keyCallBacks.retain = v11;
      *&keyCallBacks.describe = *(MEMORY[0x1E696A4A8] + 32);
      valueCallBacks = **&MEMORY[0x1E696A788];
      v12 = NSCreateMapTable(&keyCallBacks, &valueCallBacks, 0);
      v13 = qword_1ED49E250;
      qword_1ED49E250 = v12;
    }

    do
    {
      v14 = _nextTaskId;
      v9[1] = _nextTaskId;
      _nextTaskId = v14 + 1;
      if (v14 == -1)
      {
        _nextTaskId = 1;
      }
    }

    while (NSMapGet(qword_1ED49E250, v14));
    NSMapInsert(qword_1ED49E250, v9[1], v9);
    if (!qword_1ED49E2C8)
    {
      _backgroundTaskExpirationWarningTimerSchedule_Locked(35);
    }

    os_unfair_lock_unlock(&stru_1ED49E204);
    v15 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E310) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v9 description];
      LODWORD(keyCallBacks.hash) = 138477827;
      *(&keyCallBacks.hash + 4) = v16;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "Created background task %{private}@.", &keyCallBacks, 0xCu);
    }

    if ((dyld_program_sdk_at_least() & 1) == 0 && !v30[5])
    {
      v17 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E318) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v9[1];
        LODWORD(keyCallBacks.hash) = 134217984;
        *(&keyCallBacks.hash + 4) = v18;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Enqueuing error for background assertion acquire failure: task ID = %lu", &keyCallBacks, 0xCu);
      }

      v19 = dispatch_get_global_queue(9, 0);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = ___doAddBackgroundTask_block_invoke_111;
      v23[3] = &unk_1E70F3590;
      v9 = v9;
      v24 = v9;
      dispatch_async(v19, v23);
    }
  }

  else
  {
    v9 = 0;
  }

  v20 = v27;
  v21 = v9;

  _Block_object_dispose(&v29, 8);

  return v21;
}

void sub_188A9CA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___shouldCoalesceBackgroundTaskAssertions_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    _MergedGlobals_1121 = 1;
  }

  return result;
}

void ___doAddBackgroundTask_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (qword_1ED49E328 != -1)
  {
    dispatch_once(&qword_1ED49E328, &__block_literal_global_114_0);
  }

  v2 = _MergedGlobals_1121;
  if ((_MergedGlobals_1121 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), qword_1ED49E260);
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (v3)
    {
      if ([v3 valid])
      {
        v4 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2D0) + 8);
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v5 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v34 = v5;
        v6 = "Reusing background assertion %@";
      }

      else
      {
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = 0;

        v4 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2D8) + 8);
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v12 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v34 = v12;
        v6 = "Creating new assertion because existing background assertion is invalid %@";
      }

      v8 = v4;
      v9 = 12;
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2E0) + 8);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v6 = "Creating new assertion because there is no existing background assertion.";
      v8 = v7;
      v9 = 2;
    }

    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, v6, buf, v9);
  }

LABEL_14:
  v13 = *(*(*(a1 + 40) + 8) + 40);
  if (!v13)
  {
    v14 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2E8) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Creating new background assertion", buf, 2u);
    }

    if (v2)
    {
      v15 = *(a1 + 32);
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = qword_1ED49E2F0++;
      v18 = _UIMainBundleIdentifier();
      v15 = [v16 stringWithFormat:@"Shared Background Assertion %lu for %@", v17, v18];
    }

    v19 = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:getpid() flags:1 reason:4 name:v15];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v22 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2F8) + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v34 = v23;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "Created new background assertion %@", buf, 0xCu);
      }

      if (([*(*(*(a1 + 40) + 8) + 40) acquire] & 1) == 0)
      {
        v24 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E300) + 8);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(*(*(a1 + 40) + 8) + 40);
          *buf = 138412290;
          v34 = v25;
          _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "Failed to acquire background assertion %@", buf, 0xCu);
        }

        v26 = *(*(a1 + 40) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = 0;
      }
    }

    v13 = *(*(*(a1 + 40) + 8) + 40);
  }

  if (v13)
  {
    v28 = v2;
  }

  else
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    objc_storeStrong(&qword_1ED49E260, v13);
    if (!qword_1ED49E268)
    {
      v29 = objc_alloc_init(_UIObjectReferenceCounter);
      v30 = qword_1ED49E268;
      qword_1ED49E268 = v29;
    }

    v31 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &unk_1ED49E308) + 8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138477827;
      v34 = v32;
      _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_DEFAULT, "Incrementing reference count for background assertion %{private}@", buf, 0xCu);
    }

    [qword_1ED49E268 incrementReferenceForObject:*(*(*(a1 + 40) + 8) + 40)];
  }
}

id ___hoverEventMemoryFilter_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___hoverEventMemoryFilter_block_invoke_2;
  v7[3] = &unk_1E7115FE8;
  v8 = *(a1 + 32);
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  return v5;
}

id ___grapeFingerOneStrokeMisinterpretationWorkaround_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___grapeFingerOneStrokeMisinterpretationWorkaround_block_invoke_2;
  aBlock[3] = &unk_1E7116010;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);

  return v4;
}

id ___wakeOnTouchSynchronizationFilter_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___wakeOnTouchSynchronizationFilter_block_invoke_2;
  v7[3] = &unk_1E7115FE8;
  v9 = v3;
  v8 = *(a1 + 32);
  v4 = v3;
  v5 = _Block_copy(v7);

  return v5;
}

id ___iosMacEventExtractionFilter_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___iosMacEventExtractionFilter_block_invoke_2;
  v7[3] = &unk_1E7115FE8;
  v8 = *(a1 + 32);
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  return v5;
}

id ___pencilRangeAndTouchingSeparationFilter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___pencilRangeAndTouchingSeparationFilter_block_invoke_2;
  aBlock[3] = &unk_1E7116010;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);

  return v4;
}

void __initializeActiveUserInterfaceIdiom_block_invoke()
{
  if (qword_1ED49E788 != -1)
  {
    dispatch_once(&qword_1ED49E788, &__block_literal_global_55_2);
  }

  sActiveUserInterfaceIdiom = qword_1ED49E780;
}

void _backgroundTaskExpirationWarningTimerSchedule_Locked(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  qword_1ED49E2C8 = CFRunLoopTimerCreate(v2, Current + a1, 0.0, 0, 0, _backgroundTaskExpirationWarningTimerFired, 0);
  Main = CFRunLoopGetMain();
  v5 = qword_1ED49E2C8;
  v6 = *MEMORY[0x1E695E8D0];

  CFRunLoopAddTimer(Main, v5, v6);
}

uint64_t _UIDeviceNativeUserInterfaceIdiomIgnoringClassic()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  v2 = v1 - 1;
  if (v1 - 1) < 7 && ((0x6Fu >> v2))
  {
    return qword_18A67CDE0[v2];
  }

  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIUserInterfaceIdiom _UIDeviceNativeUserInterfaceIdiomIgnoringClassic(void)"];
  [v4 handleFailureInFunction:v5 file:@"UIDevice.m" lineNumber:858 description:@"Device type is not associated with user interface idiom."];

  return -1;
}

uint64_t _UIApplicationSupportsIndirectInputEventsGivenInfo(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = _UIMainBundleIdentifier();
  if (!dyld_program_sdk_at_least())
  {
    v5 = 0;
    goto LABEL_39;
  }

  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = 1;
    goto LABEL_39;
  }

  v6 = dyld_program_sdk_at_least();
  v7 = _UIMainBundleIdentifier();
  if (([v7 isEqualToString:@"com.apple.springboard"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"com.apple.Home"))
  {
  }

  else
  {
    v26 = [v7 isEqualToString:@"com.apple.stocks"];

    if (!v26)
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v8 = [a1 hasSupportsIndirectInputEventsKey];
  v9 = [a1 supportsIndirectInputEvents];
  if (v8)
  {
    v5 = v9;
  }

  else
  {
    v5 = v6;
  }

  v10 = _UIInternalPreferenceUsesDefault(&unk_1ED48AA70, @"BundleIdentifiersWantingOverriddenIndirectEventSupport", _UIInternalPreferenceUpdateId);
  v11 = qword_1ED48AA78;
  if (v10)
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];

  if (v14 && [v14 length])
  {
    v33 = v12;
    v34 = v2;
    v15 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
    v32 = v14;
    v16 = [v14 componentsSeparatedByCharactersInSet:v15];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v36;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v35 + 1) + 8 * i);
          if (!v20)
          {
            v20 = objc_opt_new();
          }

          v24 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v25 = [v23 stringByTrimmingCharactersInSet:v24];

          if (v25)
          {
            [v20 addObject:v25];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    v12 = v33;
    v2 = v34;
    v14 = v32;
  }

  else
  {
    v20 = 0;
  }

  v27 = [v20 copy];

  if (v27 && [v27 containsObject:v2])
  {
    v28 = _UIInternalPreferenceUsesDefault(&_MergedGlobals_925, @"OverrideValueForBundleIdentifiersWantingOverriddenIndirectEventSupport", _UIInternalPreferenceUpdateBool);
    if (byte_1ED48AA64)
    {
      v5 = 1;
    }

    else
    {
      v5 = v28;
    }
  }

LABEL_39:
  v29 = _UIInternalPreferenceUsesDefault(&dword_1ED48AA68, @"ForceEnableIndirectEventSupportForAllApps", _UIInternalPreferenceUpdateBool);
  v30 = byte_1ED48AA6C != 0;

  return (v30 & ~v29 | v5) & 1;
}

void __associateFlagWithPreferencesKeyLocked(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKey:v8];
  __updateCategoryFlagValueLocked(a1, a2, v9);

  v10 = malloc_type_malloc(0x28uLL, 0x10A0040D8596764uLL);
  *v10 = a1;
  v10[2] = a2;
  *(v10 + 2) = v7;
  *(v10 + 3) = v8;
  *(v10 + 4) = qword_1ED4A2548;
  qword_1ED4A2548 = v10;
  if (qword_1ED4A2568 != -1)
  {

    dispatch_once(&qword_1ED4A2568, &__block_literal_global_10_13);
  }
}

void __updateCategoryFlagValueLocked(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [v7 BOOLValue];

    if (v5)
    {
      v6 = *(a1 + 4) | a2;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v6 = *(a1 + 4) & ~a2;
LABEL_7:
  atomic_store((v6 & 0xF) != 0, a1);
  *(a1 + 4) = v6;
}

id _UIApplicationDeactivationReasonLoggableDescription(uint64_t a1)
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = MEMORY[0x1E696AEC0];
  if (has_internal_diagnostics)
  {
    v6 = _UIApplicationDeactivationReasonDescription(a1);
    v4 = [v3 stringWithFormat:@"%@ (%i)", v6, a1];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", a1];
  }

  return v4;
}

id _UIApplicationDeactivationReasonMaskLoggableDescription(uint64_t a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = [MEMORY[0x1E695DF70] array];
    for (i = 0; i != 30; ++i)
    {
      if ((a1 >> i))
      {
        v6 = _UIApplicationDeactivationReasonDescription(i);
        [v4 addObject:v6];
      }
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = [v4 componentsJoinedByString:{@", "}];
    v2 = [v7 stringWithFormat:@"[%@] (%i)", v8, a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", a1];
  }

  return v2;
}

uint64_t UISelfHasEntitlement(void *a1)
{
  v1 = MEMORY[0x1E698E620];
  v2 = a1;
  v3 = [v1 tokenForCurrentProcess];
  HasEntitlement = UIAuditTokenHasEntitlement(v3, v2);

  return HasEntitlement;
}

uint64_t UIAuditTokenHasEntitlement(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v12 = MEMORY[0x1E69E9820];
  v13 = v3;
  v14 = v4;
  v5 = v4;
  v6 = v3;
  v7 = [v6 valueForEntitlement:{v5, v12, 3221225472, __UIAuditTokenHasEntitlement_block_invoke, &unk_1E70FB4F0}];
  v8 = v7;
  if (v7 && (v9 = CFGetTypeID(v7), v9 == CFBooleanGetTypeID()))
  {
    v10 = [v8 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id _UIApplicationMainSceneForDisplayIdentity(void *a1)
{
  v1 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__166;
  v21 = __Block_byref_object_dispose__166;
  v22 = 0;
  if (![qword_1EA992E50 count])
  {
    goto LABEL_6;
  }

  v2 = [UIScreen _screenWithFBSDisplayIdentity:v1];
  v3 = [v2 _isMainScreen];

  v4 = v3 ^ 1;
  if (!v1)
  {
    v4 = 0;
  }

  if (v4)
  {
LABEL_6:
    v7 = 0;
  }

  else
  {
    v5 = +[_UIApplicationConfigurationLoader sharedLoader];
    v6 = [v5 applicationInitializationContext];
    v7 = [v6 defaultSceneToken];
  }

  v8 = qword_1EA992E50;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___UIApplicationMainSceneForDisplayIdentity_block_invoke;
  v13[3] = &unk_1E711D9D0;
  v9 = v1;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = &v17;
  [v8 enumerateObjectsUsingBlock:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void sub_188A9F424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIEventProfileCollectionInit()
{
  if (os_variant_has_internal_diagnostics())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, eventProfileCollectionCallback, @"com.apple.EventTimingProfileCollection", 0, CFNotificationSuspensionBehaviorCoalesce);
    eventProfileCollectionCheckEnabled();
    _MergedGlobals_1044 = v1;
  }
}

uint64_t stateMachineSpec_block_invoke_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v129 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  v8 = _NSStringFromUIDeferringAction[a4];
  v9 = [(_UIEventDeferringManager *)*a2 _currentLocalOrCompatibilityRecordForEnvironment:v7 forcePreviousHardwareIdentifier:0];
  v10 = [(_UIEventDeferringManager *)*a2 _topRemoteRecordInStackForEnvironment:v7];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_52;
  }

  v13 = *(v9 + 16);
  v14 = *(v11 + 16);
  if (v13)
  {
    v15 = v13[9];
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_72:
    v16 = 0;
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_73;
  }

  v15 = 0;
  if (!v14)
  {
    goto LABEL_72;
  }

LABEL_7:
  v16 = v14[7];
  if (v13)
  {
LABEL_8:
    v17 = *(v13 + 5);
    goto LABEL_9;
  }

LABEL_73:
  v17 = 0;
LABEL_9:
  v107 = v8;
  if (v14)
  {
    v18 = *(v14 + 3);
  }

  else
  {
    v18 = 0;
  }

  v20 = v15 != v16 || v17 != v18;
  log = v20;

  v21 = *(v9 + 16);
  v22 = v21;
  if (v21)
  {
    v23 = *(v21 + 5);
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v25 = *(v11 + 16);
  v26 = v25;
  if (v25)
  {
    v27 = *(v25 + 5);
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  v101 = v28;
  if (v24 == v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = [v24 isEqualToString:v28] ^ 1;
  }

  v108 = [(_UIEventDeferringManager *)*a2 internalBehavior];
  WeakRetained = objc_loadWeakRetained((v11 + 32));
  v31 = WeakRetained;
  if (WeakRetained)
  {
    v32 = *(WeakRetained + 6);
  }

  else
  {
    v32 = 0;
  }

  v109 = v32;

  v33 = *(v11 + 16);
  v34 = v33;
  v102 = v24;
  if (v33)
  {
    v35 = *(v33 + 4);
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;
  v106 = [v108 shouldSuppressRemoteRuleForOwningElement:v109 inEnvironment:v36];

  v37 = *(v9 + 16);
  v38 = v37;
  if (v37)
  {
    v39 = *(v37 + 9);
  }

  else
  {
    v39 = 0;
  }

  v40 = v39;

  v100 = v40;
  v41 = [(_UIEventDeferringManager *)*a2 _isRemoteRuleOwningElement:v109 visibleForLocalTargetWindow:v40];
  v42 = [(_UIEventDeferringRecord *)v9 needsRecreation];
  v97 = v42;
  v98 = v41;
  v99 = log | v29;
  if (v106)
  {
    goto LABEL_31;
  }

  v44 = v41 ^ 1 | v42;
  if ((v44 | log | v29))
  {
    if ((v44 & 1) == 0)
    {
LABEL_36:
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE08);
      v89 = a4;
      if (*CategoryCachedImpl)
      {
        v78 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v79 = *a2;
          v80 = v78;
          *buf = 134350338;
          v111 = v79;
          v112 = 2114;
          v113 = v7;
          v114 = 2114;
          v115 = v8;
          v116 = 1026;
          *v117 = log;
          *&v117[4] = 1026;
          *&v117[6] = v29;
          LOWORD(v118) = 1026;
          *(&v118 + 2) = [(_UIEventDeferringRecord *)v11 needsRecreation];
          _os_log_impl(&dword_188A29000, v80, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Top remote record needs recreation: windowMismatch: %{public}d; hardwareIdMismatch: %{public}d; needsRecreation: %{public}d", buf, 0x32u);
        }
      }

      v46 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE10);
      if (*v46)
      {
        v81 = *(v46 + 8);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v82 = *a2;
          *buf = 134349826;
          v111 = v82;
          v112 = 2114;
          v113 = v7;
          v114 = 2114;
          v115 = v8;
          v116 = 2114;
          *v117 = v11;
          _os_log_impl(&dword_188A29000, v81, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Recreating top remote record: %{public}@", buf, 0x2Au);
        }
      }

      v47 = *a2;
      v48 = *(v11 + 16);
      v49 = v48;
      v90 = a3;
      if (v48)
      {
        v50 = *(v48 + 8);
      }

      else
      {
        v50 = 0;
      }

      v51 = *(v11 + 16);
      v52 = v51;
      if (v51)
      {
        v53 = *(v51 + 4);
      }

      else
      {
        v53 = 0;
      }

      v54 = v53;
      v55 = objc_loadWeakRetained((v11 + 32));
      v56 = [(_UIEventDeferringManager *)v47 _descriptorForCompatibility:v54 environment:v55 deferringToken:?];

      loga = [(_UIEventDeferringManager *)*a2 _predicateForDescriptor:v56];
      v92 = v56;
      v94 = [(_UIEventDeferringManager *)*a2 _targetForDescriptor:v56];
      v57 = [MEMORY[0x1E698E3B0] sharedInstance];
      v58 = objc_loadWeakRetained((v11 + 32));
      v59 = v58;
      if (v58)
      {
        v60 = *(v58 + 10);
      }

      else
      {
        v60 = 0;
      }

      a4 = v89;
      a3 = v90;
      v61 = v60;
      v62 = [v57 deferEventsMatchingPredicate:loga toTarget:v94 withReason:v61];

      v63 = v62;
      v64 = [_UIEventDeferringRecord alloc];
      v65 = objc_loadWeakRetained((v11 + 32));
      v66 = [(_UIEventDeferringRecord *)v64 _initWithDescriptor:v92 invalidationToken:v62 deferringToken:v65 recordingManagerPointer:*a2 recreationReasons:0];

      if (v99)
      {
        v67 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE18);
        if (*v67)
        {
          v87 = *(v67 + 8);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            v88 = *a2;
            *buf = 134349826;
            v111 = v88;
            v112 = 2114;
            v113 = v7;
            v114 = 2114;
            v115 = v107;
            v116 = 2114;
            *v117 = v11;
            _os_log_impl(&dword_188A29000, v87, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Invalidating remote record: %{public}@", buf, 0x2Au);
          }
        }

        v68 = *(v11 + 24);
        [v68 invalidate];
      }

      v69 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE20);
      if (*v69)
      {
        v83 = *(v69 + 8);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          v84 = *a2;
          *buf = 134349826;
          v111 = v84;
          v112 = 2114;
          v113 = v7;
          v114 = 2114;
          v115 = v107;
          v116 = 2114;
          *v117 = v11;
          _os_log_impl(&dword_188A29000, v83, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Removing remote record: %{public}@", buf, 0x2Au);
        }
      }

      [(_UIEventDeferringManager *)*a2 _removeRemoteRecord:v11 forEnvironment:v7];
      v70 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE28);
      if (*v70)
      {
        v85 = *(v70 + 8);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v86 = *a2;
          *buf = 134349826;
          v111 = v86;
          v112 = 2114;
          v113 = v7;
          v114 = 2114;
          v115 = v107;
          v116 = 2114;
          *v117 = v66;
          _os_log_impl(&dword_188A29000, v85, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Pushing recreated remote record onto stack: %{public}@", buf, 0x2Au);
        }
      }

      [(_UIEventDeferringManager *)*a2 _pushRemoteRecordOnStack:v66 forEnvironment:v7];

      v43 = 1;
      goto LABEL_50;
    }
  }

  else if ([(_UIEventDeferringRecord *)v11 needsRecreation])
  {
    goto LABEL_36;
  }

LABEL_31:
  v43 = 0;
LABEL_50:
  v71 = [v7 description];
  v72 = [v71 UTF8String];

  v8 = v107;
  v73 = [(__CFString *)v107 UTF8String];
  if (os_variant_has_internal_diagnostics())
  {
    logb = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE30) + 8);
    if (os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT))
    {
      v91 = a3;
      v93 = *a2;
      v75 = v109;
      if (v75)
      {
        v95 = MEMORY[0x1E696AEC0];
        v76 = objc_opt_class();
        v77 = NSStringFromClass(v76);
        v96 = [v95 stringWithFormat:@"<%@: %p>", v77, v75];
      }

      else
      {
        v96 = @"(nil)";
      }

      *buf = 134351362;
      v111 = v93;
      v112 = 2082;
      v113 = v72;
      v114 = 2082;
      v115 = v73;
      v116 = 2050;
      *v117 = v11;
      *&v117[8] = 2114;
      v118 = v96;
      v119 = 1026;
      v120 = v99 & 1;
      v121 = 1024;
      v122 = v106;
      v123 = 1024;
      v124 = v98;
      v125 = 1024;
      v126 = v97;
      v127 = 1026;
      v128 = v43;
      _os_log_impl(&dword_188A29000, logb, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] %{public}s: Top remote record: %{public}p; remote element: %{public}@; needed invalidation: %{public}d; shouldBeSuppressed: %d; remote element visible: %d; local record needs recreation: %d; remote record needed recreation: %{public}d;", buf, 0x52u);

      a3 = v91;
      v8 = v107;
    }
  }

LABEL_52:
  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE38))
  {
    _emitDebugLogForTransition(a3, a4, &stru_1EFB14550, a2);
  }

  return 10;
}

id sub_188AA0394(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v62 = *MEMORY[0x1E69E9840];
  v10 = sub_18A4A2BD8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18A4A2BA8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  if ([(UIView *)v5 _isDeallocInitiated])
  {

    return [v5 drawRect_];
  }

  else
  {
    v54 = v20;
    v55 = v17;
    v56 = v13;
    v57 = v11;
    v58 = v10;
    v28 = [(UIView *)v5 _typedStorage];
    v29 = sub_188A4CEC4();

    if (v29)
    {
      sub_18913E3AC(3);
    }

    v59 = v29;
    v53 = *(v15 + 56);
    v53(v26, 1, 1, v14);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v60 = v26;
    v31 = *(StatusReg + 848);
    *(StatusReg + 848) = v26;
    v32 = v15;
    v33 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [v5 drawRect_];
    *(StatusReg + 848) = v31;
    v34 = v14;
    v35 = v60;
    byte_1ED4A3680 = v33;
    v36 = v32;
    sub_188A3F29C(v60, v23, &qword_1EA93E090);
    if ((*(v32 + 48))(v23, 1, v14) == 1)
    {
      sub_188A3F5FC(v35, &qword_1EA93E090);
      sub_188A3F5FC(v23, &qword_1EA93E090);
    }

    else
    {
      v37 = v55;
      (*(v32 + 32))(v55, v23, v14);
      v38 = sub_188ACEB88(v5, 3, &block_descriptor_149_4);
      v39 = v59;
      if (!v59)
      {
        v40 = v38;
        v41 = [(UIView *)v5 _typedStorage];
        v39 = sub_188A4CEC4();

        v38 = v40;
      }

      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      *(v43 + 24) = 3;
      *(v43 + 25) = v38;
      *(v43 + 32) = sub_189071040;
      *(v43 + 40) = 0;
      v44 = v54;
      (*(v32 + 16))(v54, v37, v34);
      v53(v44, 0, 1, v34);

      v45 = v56;
      sub_18A4A2BE8();
      if (!v39)
      {
        type metadata accessor for TrackingDictionary();
        v46 = swift_allocObject();
        *(v46 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v47 = [(UIView *)v5 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098);
        v48 = swift_allocObject();
        *(v48 + 16) = v46;
        v59 = v42;
        v49 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = *(&v47->super.isa + v49);
        *(&v47->super.isa + v49) = 0x8000000000000000;
        sub_188A40430(v48, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v47->super.isa + v49) = v61;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v45, 3);

      v51 = swift_allocObject();
      *(v51 + 16) = sub_188B57AD4;
      *(v51 + 24) = v43;

      MEMORY[0x18CFDDAE0](v45, 0, 0, sub_188B57248, v51);

      (*(v57 + 8))(v45, v58);
      (*(v36 + 8))(v37, v34);
      sub_188A3F5FC(v60, &qword_1EA93E090);
    }
  }
}

double sub_188AA24A8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 3;
  return result;
}

uint64_t _UIApplicationSupportsHomeAffordanceObservation()
{
  if (qword_1EA993150 != -1)
  {
    dispatch_once(&qword_1EA993150, &__block_literal_global_2340);
  }

  return byte_1EA992DD0;
}

uint64_t _UIKeyboardGetDeviceIdiomFromInputUIScene(uint64_t result)
{
  if (result == 1)
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      v1 = +[UIKeyboardImpl keyboardScreen];
      v2 = +[UIKeyboard activeKeyboard];
      v3 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v1, [v2 interfaceOrientation]);

      v4 = [v3 idiom];
      return v4;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

NSString *__cdecl NSStringFromCGRect(CGRect rect)
{
  v1 = CFStringCreateWithFormat(0, 0, @"{{%.*g, %.*g}, {%.*g, %.*g}}", 17, *&rect.origin.x, 17, *&rect.origin.y, 17, *&rect.size.width, 17, *&rect.size.height);

  return v1;
}

_UIEventComponentPhaseValue *_eventComponentPhaseForValue(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v5 = [a2 allKeysForObject:v4];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = -[_UIEventComponentPhaseValue initWithValue:underlyingValue:]([_UIEventComponentPhaseValue alloc], "initWithValue:underlyingValue:", a1, [v6 integerValue]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id touchesFromDictionaryWithKey(const __CFDictionary *a1, void *a2)
{
  v3 = a2;
  v4 = CFDictionaryGetValue(a1, v3);
  v5 = v4;
  if (v3 && !v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    CFDictionarySetValue(a1, v3, v5);
  }

  return v5;
}

uint64_t stateMachineSpec_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 clickDriver:v2 didPerformEvent:3];

  v4 = [v2 gestureRecognizer];

  [v4 setCancelsTouchesInView:0];
  return 1;
}

uint64_t stateMachineSpec_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 clickDriver:v2 didPerformEvent:3];

  v4 = [v2 gestureRecognizer];

  [v4 setCancelsTouchesInView:0];
  return 1;
}

uint64_t stateMachineSpec_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 clickDriver:v2 didPerformEvent:3];

  v4 = [v2 gestureRecognizer];

  [v4 setCancelsTouchesInView:0];
  return 1;
}

void ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_56(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v3 = [*(a1 + 56) _dispatchWindows];
    v4 = [v3 countByEnumeratingWithState:&v51 objects:v66 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v52;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v52 != v6)
          {
            objc_enumerationMutation(v3);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            goto LABEL_14;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v51 objects:v66 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    _UIPencilEventRequestBarrelFocusIfAbleForWindow(*(a1 + 32), 0);
  }

LABEL_14:
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v47 = *(a1 + 96);
  v48 = *(a1 + 88);
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F8D0);
  if (*CategoryCachedImpl)
  {
    v38 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "Finishing digitizer dispatch", buf, 2u);
    }
  }

  v13 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F8D8);
  if (*v13)
  {
    v39 = *(v13 + 8);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = v39;
      Count = CFDictionaryGetCount(v11);
      v42 = CFDictionaryGetCount(v10);
      *buf = 67109376;
      v75 = Count;
      v76 = 1024;
      v77 = v42;
      _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_ERROR, "\tpreviousTouchMap.count: %d; newTouchMap.count: %d", buf, 0xEu);
    }
  }

  v49 = v11;
  v50 = v10;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v14 = [v8 allTouches];
  v15 = [v14 countByEnumeratingWithState:&v62 objects:buf count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v63;
    do
    {
      v18 = 0;
      do
      {
        if (*v63 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v62 + 1) + 8 * v18);
        if (![v19 phase] || objc_msgSend(v19, "phase") == 1)
        {
          [v19 setPhase:2];
        }

        if (v19)
        {
          v20 = *(v19 + 360);
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;
        v22 = [v9 hoverTouchForContextId:objc_msgSend(v21 pathIndex:{"_contextId"), objc_msgSend(v19, "_pathIndex")}];
        if (v22 && ([v19 phase] == 3 || objc_msgSend(v19, "phase") == 4))
        {
          [v19 _clearForReenteringHoverInWindow:v21];
        }

        if (v19)
        {
          *(v19 + 236) &= ~0x2000u;
        }

        ++v18;
      }

      while (v16 != v18);
      v23 = [v14 countByEnumeratingWithState:&v62 objects:buf count:16];
      v16 = v23;
    }

    while (v23);
  }

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = ____finishDigitizerEventDispatch_block_invoke;
  v61[3] = &__block_descriptor_48_e24_v32__0_8__UITouch_16_B24lu32l8u40l8;
  v61[4] = v9;
  v61[5] = v8;
  [(__CFDictionary *)v49 enumerateKeysAndObjectsUsingBlock:v61];
  v24 = *(v48 + 8);
  v25 = [v8 _exclusiveTouchWindows];
  v26 = [v25 mutableCopy];

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = ____finishDigitizerEventDispatch_block_invoke_2;
  v59[3] = &unk_1E7119478;
  v27 = v26;
  v60 = v27;
  [(__CFDictionary *)v50 enumerateKeysAndObjectsUsingBlock:v59];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v28 = v27;
  v29 = [v28 countByEnumeratingWithState:&v55 objects:v73 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v56;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v56 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v55 + 1) + 8 * j) _setExclusiveTouchView:0];
      }

      v30 = [v28 countByEnumeratingWithState:&v55 objects:v73 count:16];
    }

    while (v30);
  }

  v33 = [v8 _exclusiveTouchWindows];
  [v33 minusSet:v28];

  if ([v28 count])
  {
    v34 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F8E0);
    if (*v34)
    {
      v43 = *(v34 + 8);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = v43;
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *v67 = 138412802;
        v68 = v46;
        v69 = 2048;
        v70 = v8;
        v71 = 2112;
        v72 = v28;
        _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_ERROR, "%@<%p> - Windows are no longer exclusive touch (%@)", v67, 0x20u);
      }
    }
  }

  if ([v24 _rotationDisabledDuringTouch])
  {
    v35 = CFDictionaryGetCount(v50);
    if ((v47 & 1) == 0 && v35)
    {
      v36 = &selRef_beginDisablingInterfaceAutorotation;
LABEL_52:
      v37 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:0];
      [v37 makeObjectsPerformSelector:*v36];

      goto LABEL_53;
    }

    if (v47 && !v35)
    {
      v36 = &selRef_endDisablingInterfaceAutorotation;
      goto LABEL_52;
    }
  }

LABEL_53:

  CFRelease(*(a1 + 72));
}

uint64_t __processEventQueue(uint64_t a1, int a2)
{
  v171[16] = *MEMORY[0x1E69E9840];
  v133 = *(a1 + 8);
  v140 = *(a1 + 16);
  if (_UIUpdateCycleEnabled())
  {
    v135 = 0;
  }

  else
  {
    v4 = *(a1 + 72);
    if (v4 == 0.0)
    {
      v4 = CACurrentMediaTime();
    }

    v5 = *(a1 + 80);
    if (v5 == 0.0)
    {
      v5 = v4 + _UIQOSMaxFrameDurationSeconds();
    }

    v135 = [MEMORY[0x1E6979518] startFrameWithReason:32 beginTime:v4 commitDeadline:v5];
  }

  v147 = a2;
  if (!a2 || ![v140 count])
  {
    goto LABEL_267;
  }

  do
  {
    v142 = objc_autoreleasePoolPush();
    v6 = *(a1 + 16);
    context = [v6 lastObject];
    if (!context)
    {
      v149 = 0;
      v10 = 0;
      goto LABEL_213;
    }

    v143 = [v6 count];
    Type = IOHIDEventGetType();
    v141 = BKSHIDEventGetBaseAttributes();
    v132 = [v141 contextID];
    if (BKSHIDEventContainsUpdates())
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v7 addObject:context];
      v8 = 0;
      v134 = -1;
      v9 = 255;
    }

    else
    {
      if (Type == 11)
      {
        v11 = IOHIDEventGetChildren();
        if ([v11 count])
        {
          [v11 objectAtIndexedSubscript:0];

          if (IOHIDEventGetIntegerValue())
          {
            if ([UIApp _supportsIndirectInputEvents] && (v12 = _UIEventHIDGetDescendantPointerEvent(context)) != 0)
            {
              v13 = _UIEventHIDGetPointerEventSource(v12);
              v14 = 3;
              if (v13 == 4)
              {
                v14 = 0;
              }
            }

            else
            {
              v14 = IOHIDEventGetIntegerValue() == 0;
            }
          }

          else
          {
            v14 = 2;
          }

          v134 = v14;
          v15 = _UIEventHIDPathAttributesForChild(v141);
          v9 = [v15 locus];
        }

        else
        {
          v134 = -1;
          v9 = 255;
        }

        v7 = 0;
      }

      else
      {
        v7 = 0;
        v134 = -1;
        v9 = 255;
      }

      v8 = context;
    }

    v16 = v143 - 2;
    v149 = v7;
    if (v143 < 2)
    {
LABEL_200:
      v144 = 0;
      goto LABEL_201;
    }

    if (Type == 6 || Type == 17)
    {
      v16 = v143 - 2;
      if ((v143 - 2) < 0)
      {
        goto LABEL_200;
      }
    }

    else
    {
      if (Type != 11)
      {
        goto LABEL_200;
      }

      if (*(a1 + 184) > 0 || v16 < 0)
      {
        v144 = 0;
LABEL_201:
        v148 = 1;
        v10 = v8;
        goto LABEL_202;
      }
    }

    v131 = v9;
    v144 = 0;
    v148 = 1;
    while (1)
    {
      cf = v8;
      v145 = v16;
      v10 = [v6 objectAtIndex:?];
      if (IOHIDEventGetType() != Type)
      {
        break;
      }

      if (Type == 6)
      {
        Phase = IOHIDEventGetPhase();
        v19 = IOHIDEventGetPhase();
        v20 = _UIEventHIDGetChildScrollEvent(cf) != 0;
        v21 = _UIEventHIDGetChildScrollEvent(v10) != 0;
        if (Phase != v19)
        {
          break;
        }

        if ((v20 ^ v21))
        {
          v10 = cf;
          goto LABEL_202;
        }

        TimeStamp = IOHIDEventGetTimeStamp();
        if (TimeStamp <= IOHIDEventGetTimeStamp())
        {
          v23 = v10;
        }

        else
        {
          v23 = cf;
        }

        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        Copy = IOHIDEventCreateCopy();
        IOHIDEventSetFloatValue();
        IOHIDEventSetFloatValue();
        IOHIDEventSetFloatValue();
        if (_UIEventHIDGetChildPointerEvent(v23))
        {
          v25 = BKSHIDEventGetPointerAttributes();
          if (v25)
          {
            _UIEventHIDGetChildPointerEvent(Copy);
            BKSHIDEventSetAttributes();
          }
        }

        v26 = _UIEventHIDGetChildScrollEvent(Copy);
        v27 = _UIEventHIDGetChildScrollEvent(cf);
        v28 = _UIEventHIDGetChildScrollEvent(v10);
        if (v26 && v27 && v28)
        {
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventSetFloatValue();
          IOHIDEventSetFloatValue();
          IOHIDEventSetFloatValue();
        }

        v29 = CFAutorelease(Copy);
        goto LABEL_139;
      }

      if (Type == 17)
      {
        v171[0] = 0;
        *&v167 = 0;
        *&v158 = 0;
        _UIEventHIDGetTransformEventComponents(cf, v171, &v167, &v158);
        if (!v171[0] && !v167 && !v158)
        {
          break;
        }

        if (v171[0])
        {
          obj = IOHIDEventGetPhase();
          if (v167)
          {
            goto LABEL_52;
          }

LABEL_101:
          v136 = 0;
        }

        else
        {
          obj = 0;
          if (!v167)
          {
            goto LABEL_101;
          }

LABEL_52:
          v136 = IOHIDEventGetPhase();
        }

        if (v158)
        {
          v56 = IOHIDEventGetPhase();
        }

        else
        {
          v56 = 0;
        }

        v57 = v56;
        v58 = _UIEventHIDTransformPhaseForComponentPhases(obj, v136, v56);
        *&v154 = 0;
        v165 = 0;
        v166 = 0;
        _UIEventHIDGetTransformEventComponents(v10, &v154, &v166, &v165);
        if (!v154 && !v166 && !v165)
        {
          break;
        }

        if (v154)
        {
          v59 = IOHIDEventGetPhase();
          if (v166)
          {
            goto LABEL_110;
          }

LABEL_112:
          v60 = 0;
        }

        else
        {
          v59 = 0;
          if (!v166)
          {
            goto LABEL_112;
          }

LABEL_110:
          v60 = IOHIDEventGetPhase();
        }

        if (v165)
        {
          v61 = IOHIDEventGetPhase();
          v62 = v165;
        }

        else
        {
          v62 = 0;
          v61 = 0;
        }

        if (v58 != _UIEventHIDTransformPhaseForComponentPhases(v59, v166, v62) || obj != v59 || v60 != v136 || v61 != v57)
        {
          break;
        }

        v63 = IOHIDEventGetTimeStamp();
        v64 = IOHIDEventGetTimeStamp();
        v171[0] = 0;
        if (v63 <= v64)
        {
          v65 = cf;
        }

        else
        {
          v65 = v10;
        }

        if (v63 <= v64)
        {
          v66 = v10;
        }

        else
        {
          v66 = cf;
        }

        *&v167 = 0;
        *&v158 = 0;
        _UIEventHIDGetTransformEventComponents(v66, v171, &v167, &v158);
        *&v154 = 0;
        v165 = 0;
        v166 = 0;
        _UIEventHIDGetTransformEventComponents(v65, &v154, &v166, &v165);
        v67 = IOHIDEventCreateCopy();
        v163 = 0;
        v164 = 0;
        v162 = 0;
        _UIEventHIDGetTransformEventComponents(v67, &v164, &v163, &v162);
        if (v171[0] && v154 && v164)
        {
          IOHIDEventGetDoubleValue();
          IOHIDEventGetDoubleValue();
          IOHIDEventSetDoubleValue();
        }

        if (v167 && v166 && v163)
        {
          IOHIDEventGetDoubleValue();
          IOHIDEventGetDoubleValue();
          IOHIDEventSetDoubleValue();
        }

        if (v158 && v165 && v162)
        {
          IOHIDEventGetDoubleValue();
          IOHIDEventGetDoubleValue();
          IOHIDEventGetDoubleValue();
          IOHIDEventGetDoubleValue();
          IOHIDEventSetDoubleValue();
          IOHIDEventSetDoubleValue();
        }

        v29 = CFAutorelease(v67);
LABEL_139:
        v10 = v29;
        goto LABEL_140;
      }

      if (BKSHIDEventContainsUpdates())
      {
        if (!cf || v134 == 2)
        {
          v68 = v149;
          if (!v149)
          {
            v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v149 = v68;
          [v68 addObject:v10];
        }

        else
        {
          v17 = v144;
          if (!v144)
          {
            v17 = [MEMORY[0x1E695DF70] array];
          }

          v144 = v17;
          [v17 addObject:v10];
        }

        goto LABEL_173;
      }

      if (cf)
      {
        v30 = (IOHIDEventGetIntegerValue() & 2) == 0;
        v31 = (IOHIDEventGetIntegerValue() & 0x83) == 0 && v30;
        if (!v31 || IOHIDEventGetSenderID() == 0x8000000800A15175 || (BKSHIDEventGetDigitizerAttributes(), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 systemGestureStateChange], v32, (v33 & 1) != 0) || ((v34 = (IOHIDEventGetIntegerValue() & 2) == 0, (IOHIDEventGetIntegerValue() & 0x83) == 0) ? (v35 = v34) : (v35 = 0), !v35 || IOHIDEventGetSenderID() == 0x8000000800A15175 || (BKSHIDEventGetDigitizerAttributes(), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "systemGestureStateChange"), v36, (v37 & 1) != 0)))
        {
          v92 = cf;
          goto LABEL_204;
        }

        v137 = BKSHIDEventGetDigitizerAttributes();
        v130 = BKSHIDEventGetDigitizerAttributes();
        IntegerValue = IOHIDEventGetIntegerValue();
        if ((IOHIDEventGetIntegerValue() ^ IntegerValue) & 0x83) != 0 || (v39 = IOHIDEventGetIntegerValue() != 0, ((v39 ^ (IOHIDEventGetIntegerValue() != 0))) || (v40 = [v137 systemGesturesPossible], v40 != objc_msgSend(v130, "systemGesturesPossible")) || (v41 = objc_msgSend(v137, "contextID"), v41 != objc_msgSend(v130, "contextID")))
        {

          goto LABEL_145;
        }

        v42 = IOHIDEventGetChildren();
        v128 = IOHIDEventGetChildren();
        v43 = [v42 count];
        if (v43 != [v128 count] || v43 >= 1 && (objc_msgSend(v42, "objectAtIndexedSubscript:", 0), v44 = objc_claimAutoreleasedReturnValue(), _UIEventHIDPathAttributesForChild(v137), v45 = objc_claimAutoreleasedReturnValue(), v44, objc_msgSend(v128, "objectAtIndexedSubscript:", 0), v46 = objc_claimAutoreleasedReturnValue(), _UIEventHIDPathAttributesForChild(v130), v47 = objc_claimAutoreleasedReturnValue(), v46, LODWORD(v46) = objc_msgSend(v45, "locus"), LODWORD(v46) = v46 == objc_msgSend(v47, "locus"), v47, v45, !v46))
        {

LABEL_145:
          v69 = BKSHIDEventGetDigitizerAttributes();
          if (v132 == [v69 contextID])
          {
            v70 = IOHIDEventGetChildren();
            if (![v70 count])
            {

LABEL_265:
              break;
            }

            [v70 objectAtIndexedSubscript:0];

            if (IOHIDEventGetIntegerValue())
            {
              if ([UIApp _supportsIndirectInputEvents] && (v71 = _UIEventHIDGetDescendantPointerEvent(v10)) != 0)
              {
                if (_UIEventHIDGetPointerEventSource(v71) == 4)
                {
                  v72 = 0;
                }

                else
                {
                  v72 = 3;
                }
              }

              else
              {
                v72 = IOHIDEventGetIntegerValue() == 0;
              }
            }

            else
            {
              v72 = 2;
            }

            v77 = _UIEventHIDPathAttributesForChild(v69);
            v78 = [v77 locus];

            v80 = v72 != v134 || v78 != v131;
            if (!v80)
            {
              goto LABEL_265;
            }
          }

          v81 = v144;
          if (!v144)
          {
            v81 = [MEMORY[0x1E695DF70] array];
          }

          v144 = v81;
          [v81 addObject:v10];

LABEL_173:
          ++v148;
          v10 = cf;
          goto LABEL_174;
        }

        Mutable = __areDigitizerEventsCoalescable_children1EventMap;
        if (!__areDigitizerEventsCoalescable_children1EventMap)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
        }

        __areDigitizerEventsCoalescable_children1EventMap = Mutable;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        obja = v42;
        v49 = [obja countByEnumeratingWithState:&v158 objects:v171 count:16];
        if (v49)
        {
          v50 = *v159;
          v51 = 0.0;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v159 != v50)
              {
                objc_enumerationMutation(obja);
              }

              v53 = *(*(&v158 + 1) + 8 * i);
              if (IOHIDEventGetType() == 32)
              {
                IOHIDEventGetFloatValue();
                v51 = v54;
              }

              else
              {
                v55 = _UIEventHIDPathIndexForDigitizerEvent();
                CFDictionaryAddValue(__areDigitizerEventsCoalescable_children1EventMap, v55, v53);
              }
            }

            v49 = [obja countByEnumeratingWithState:&v158 objects:v171 count:16];
          }

          while (v49);
        }

        else
        {
          v51 = 0.0;
        }

        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v126 = v128;
        v129 = [v126 countByEnumeratingWithState:&v154 objects:&v167 count:16];
        if (v129)
        {
          v127 = *v155;
          while (2)
          {
            for (j = 0; j != v129; ++j)
            {
              if (*v155 != v127)
              {
                objc_enumerationMutation(v126);
              }

              if (IOHIDEventGetType() == 32)
              {
                IOHIDEventGetFloatValue();
                if (v51 != v85)
                {
                  goto LABEL_195;
                }
              }

              else
              {
                v86 = _UIEventHIDPathIndexForDigitizerEvent();
                if (!CFDictionaryGetValue(__areDigitizerEventsCoalescable_children1EventMap, v86) || (v87 = _UIEventHIDTouchEdgeTypeForHIDEvent(), v87 != _UIEventHIDTouchEdgeTypeForHIDEvent()) || (v88 = IOHIDEventGetIntegerValue() != 0, ((v88 ^ (IOHIDEventGetIntegerValue() != 0)) & 1) != 0))
                {
LABEL_195:
                  v89 = 0;
                  goto LABEL_197;
                }
              }
            }

            v129 = [v126 countByEnumeratingWithState:&v154 objects:&v167 count:16];
            v89 = 1;
            if (v129)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v89 = 1;
        }

LABEL_197:

        CFDictionaryRemoveAllValues(__areDigitizerEventsCoalescable_children1EventMap);
        if ((v89 & 1) == 0)
        {
          goto LABEL_145;
        }

        if (!v131)
        {
          v90 = _UIEventHIDUIWindowForHIDEvent();
          v91 = [(UIEventEnvironment *)a1 _touchesEventForWindow:v90];
          __coalesceDigitizerEventFromQueueEvent(cf, v10, v91, a1);
        }
      }

      else
      {
        v73 = IOHIDEventGetChildren();
        if ([v73 count])
        {
          [v73 objectAtIndexedSubscript:0];

          if (IOHIDEventGetIntegerValue())
          {
            if ([UIApp _supportsIndirectInputEvents] && (v74 = _UIEventHIDGetDescendantPointerEvent(v10)) != 0)
            {
              v75 = _UIEventHIDGetPointerEventSource(v74);
              v76 = 3;
              if (v75 == 4)
              {
                v76 = 0;
              }
            }

            else
            {
              v76 = IOHIDEventGetIntegerValue() == 0;
            }
          }

          else
          {
            v76 = 2;
          }

          v134 = v76;
          v82 = BKSHIDEventGetDigitizerAttributes();
          v83 = _UIEventHIDPathAttributesForChild(v82);
          v131 = [v83 locus];
        }
      }

LABEL_140:
      ++v148;
LABEL_174:
      v16 = v145 - 1;
      v8 = v10;
      if (v145 <= 0)
      {
        goto LABEL_202;
      }
    }

    v10 = cf;
LABEL_202:
    if (v10)
    {
      v92 = v10;
LABEL_204:
      v10 = v92;
      CFRetain(v92);
    }

    [v6 removeObjectsInRange:v143 - v148];
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v93 = [v144 reverseObjectEnumerator];
    v94 = [v93 countByEnumeratingWithState:&v167 objects:v171 count:16];
    if (v94)
    {
      v95 = *v168;
      do
      {
        for (k = 0; k != v94; ++k)
        {
          if (*v168 != v95)
          {
            objc_enumerationMutation(v93);
          }

          [v6 addObject:*(*(&v167 + 1) + 8 * k)];
        }

        v94 = [v93 countByEnumeratingWithState:&v167 objects:v171 count:16];
      }

      while (v94);
    }

    v97 = v149;
    __applySynthesizedTouchTranslationAndModifyIfNeeded(v10);

LABEL_213:
    cfa = v149;
    if (v10)
    {
      v98 = objc_autoreleasePoolPush();
      v99 = IOHIDEventGetType();
      v100 = IOHIDEventGetTimeStamp();
      v101 = _UIMediaTimeForMachTime(v100);
      v102 = _UIUpdateCycleEnabled();
      if (v99 == 11)
      {
        v103 = v102;
      }

      else
      {
        v103 = 1;
      }

      if ((v103 & 1) == 0 && *(a1 + 64) > 0.0)
      {
        v104 = IOHIDEventGetChildren();
        if (![v104 count])
        {
          goto LABEL_230;
        }

        v105 = [v104 objectAtIndexedSubscript:0];
        if (!IOHIDEventGetIntegerValue())
        {
          goto LABEL_226;
        }

        if (![UIApp _supportsIndirectInputEvents] || (v106 = _UIEventHIDGetDescendantPointerEvent(v10)) == 0)
        {
          v107 = IOHIDEventGetIntegerValue() == 0;

          if (!v107)
          {
            goto LABEL_228;
          }

          goto LABEL_230;
        }

        if (_UIEventHIDGetPointerEventSource(v106) != 4)
        {
LABEL_226:

          goto LABEL_230;
        }

LABEL_228:
        if (([MEMORY[0x1E6979518] lowLatency] & 1) == 0)
        {
          [MEMORY[0x1E6979518] setEarliestAutomaticCommitTime:CACurrentMediaTime() + *(a1 + 64)];
        }

LABEL_230:
      }

      __dispatchPreprocessedEventFromEventQueue(v10, v135, a1);
      if ((_UIUpdateCycleEnabled() & 1) == 0 && [MEMORY[0x1E6979518] currentState] && objc_msgSend(MEMORY[0x1E6979518], "lowLatency"))
      {
        [MEMORY[0x1E6979518] commitTime];
        if (v108 > 0.0)
        {
          [MEMORY[0x1E6979518] setCommitTime:0.0];
        }

        [MEMORY[0x1E6979518] earliestAutomaticCommitTime];
        if (v109 > 0.0)
        {
          [MEMORY[0x1E6979518] setEarliestAutomaticCommitTime:0.0];
        }
      }

      CFRelease(v10);
      objc_autoreleasePoolPop(v98);
    }

    else
    {
      v101 = 0.0;
    }

    if (cfa)
    {
      contexta = objc_autoreleasePoolPush();
      [cfa count];
      kdebug_trace();
      *&v154 = 0;
      *(&v154 + 1) = &v154;
      *&v155 = 0x3032000000;
      *(&v155 + 1) = __Block_byref_object_copy__41;
      *&v156 = __Block_byref_object_dispose__42;
      *(&v156 + 1) = 0;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v110 = cfa;
      v111 = [v110 countByEnumeratingWithState:&v167 objects:v171 count:16];
      if (v111)
      {
        v112 = *v168;
        do
        {
          for (m = 0; m != v111; ++m)
          {
            if (*v168 != v112)
            {
              objc_enumerationMutation(v110);
            }

            v114 = MEMORY[0x1E696AD98];
            v115 = BKSHIDEventGetBaseAttributes();
            v116 = [v114 numberWithUnsignedInt:{objc_msgSend(v115, "contextID")}];

            *&v158 = MEMORY[0x1E69E9820];
            *(&v158 + 1) = 3221225472;
            *&v159 = ____dispatchEstimationUpdateEvents_block_invoke;
            *(&v159 + 1) = &unk_1E7119398;
            *&v161 = a1;
            v117 = v116;
            *&v160 = v117;
            *(&v160 + 1) = &v154;
            BKSHIDEventEnumerateUpdatesWithBlock();
          }

          v111 = [v110 countByEnumeratingWithState:&v167 objects:v171 count:16];
        }

        while (v111);
      }

      v118 = *(*(&v154 + 1) + 40);
      if (v118)
      {
        if (v101 < 0.0)
        {
          v119 = IOHIDEventGetTimeStamp();
          v101 = _UIMediaTimeForMachTime(v119);
          v118 = *(*(&v154 + 1) + 40);
        }

        [(UIEventEnvironment *)a1 _dispatchAndRemoveStaleEstimationUpdateRecordsWithEventTime:v118 upToRecord:v101];
        if (([*(*(&v154 + 1) + 40) hasRemainingUpdates] & 1) == 0)
        {
          [(UIEventEnvironment *)a1 _removeEstimatedTouchRecord:?];
        }
      }

      _Block_object_dispose(&v154, 8);

      kdebug_trace();
      objc_autoreleasePoolPop(contexta);
    }

    objc_autoreleasePoolPop(v142);
    v120 = _UIUpdateCycleEnabled();
    v121 = --v147;
    if ((v120 & 1) == 0)
    {
      v122 = _UIApplicationFlushRunLoopCATransactionIfTooLate(v133);
      if (v147)
      {
        v123 = v122;
      }

      else
      {
        v123 = 1;
      }

      if ((v123 & 1) == 0)
      {
        continue;
      }

      break;
    }

    if (!v121)
    {
      break;
    }
  }

  while ([v140 count]);
LABEL_267:
  result = _UIUpdateCycleEnabled();
  if ((result & 1) == 0)
  {
    if ([v140 count])
    {
      v125 = v133[20];
      if (v125)
      {
        CFRunLoopSourceSignal(*(v125 + 24));
      }
    }

    return [MEMORY[0x1E6979518] finishFrameWithToken:v135];
  }

  return result;
}

uint64_t schedulerStepScheduledMainSectionContinue(uint64_t a1)
{
  UCDriverReset();
  if (!_UIUpdateSequenceRunNext(a1 + 712))
  {
    UCDriverUpdateMask();
    v3 = *(a1 + 592);
    if (v3 >= mach_absolute_time())
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UpdateCycle", &qword_1ED49FB68);
      if (os_signpost_enabled(*(CategoryCachedImpl + 8)))
      {
LABEL_9:
        _os_signpost_emit_unreliably_with_name_impl();
      }
    }

    else
    {
      v4 = __UILogGetCategoryCachedImpl("UpdateCycle.Stalls", &qword_1ED49FB60);
      if (os_signpost_enabled(*(v4 + 8)))
      {
        goto LABEL_9;
      }
    }

    kdebug_trace();
    _UIQOSProcessingEnd();
    return MEMORY[0x18CFE7DB0](*(a1 + 704), a1, schedulerModeScheduledWaitingLowLatencyInputsEnter);
  }

  return UCDriverNextStep();
}

void *_UIGestureDelayedTouchForUITouch(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (v8)
        {
          v9 = v8[3];
        }

        else
        {
          v9 = 0;
        }

        if (v9 == v3)
        {
          v5 = v8;
          goto LABEL_15;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v10 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v5 = v10;
    }

    while (v10);
  }

LABEL_15:

  return v5;
}

uint64_t _UISceneLiveResizeTransparentTearingEnabled()
{
  result = _UILiveSceneResizeEnabled();
  if (result)
  {
    v1 = +[_UISceneLiveResizePrototypeSettingsDomain rootSettings];
    v2 = [v1 transparentTearingEnabled];

    return v2;
  }

  return result;
}

uint64_t sub_188AA66C4()
{
  sub_188AA5E18();

  return swift_deallocClassInstance();
}

uint64_t __setupUpdateSequence_block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 376) = 0;
  _UIUpdateInputSetInputChanged(*(a2 + 424), a2 + 376);
  *(a2 + 384) = 0x7FFFFFFFFFFFFFFFLL;
  v3 = MEMORY[0x1E6979330];

  return [v3 dispatchDeferredDisplayLinks];
}

uint64_t _UIUpdateSequenceRunNext(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(v2 + 6);
    *(v2 + 6) = v3 & 0xFFFFFFFE;
    v4 = *v2;
    if ((v3 & 2) != 0)
    {
      _removeItem(v2);
    }
  }

  else
  {
    v4 = *(a1 + 16);
  }

  while (1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = v4[5];
    if (v5)
    {
      break;
    }

    v4 = *v4;
  }

  *(a1 + 24) = v4;
  *(v4 + 6) |= 1u;
  (*(v5 + 16))(v5, v4[4], *(a1 + 8), *a1);
  return 1;
}

CGContextRef UIGraphicsGetCurrentContext(void)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    return 0;
  }

  else
  {
    return ContextStack[3 * (*ContextStack - 1) + 1];
  }
}

uint64_t sub_188AA6CD0(void *a1, uint64_t a2)
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

    v8 = sub_18A4A7F88();

    if (v8)
    {

      type metadata accessor for InProcessAnimationManager();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_18A4A7F68();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_188E7375C(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_188E76D64();
    }

    sub_188E770F0(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a2);
  v10 = sub_18A4A88E8();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_188AA7650(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_188AA6EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for UIAnimatableProperty.ProtectedState();
  return (*(*(v5 - 8) + 16))(a2, a1 + *(v6 + 36), v5);
}

uint64_t sub_188AA6FF4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349C8);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v15);
      result = sub_18A4A88E8();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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
    *v1 = v4;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So6UIViewC5UIKitE18InProcessAnimationV7StorageO(uint64_t a1)
{
  if ((*(a1 + 88) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 88) & 3;
  }
}

uint64_t sub_188AA733C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  MEMORY[0x18CFE2450](v4);
  if (*((*(a1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
  swift_endAccess();
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  result = sub_18A4A79C8();
  if (result)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  sub_188AB0F24(v5);
  swift_endAccess();
  swift_beginAccess();
  sub_188AB0F24(v6);
  swift_endAccess();
  v8 = sub_18A4A79E8();
  if ((v8 & 0x100000000) == 0)
  {
    v9 = *&v8;
    swift_beginAccess();
    sub_188AB0F24(v9);
    swift_endAccess();
  }

  v10 = *(a2 + 28);
  swift_beginAccess();
  sub_188AB10F4(v10);
  result = swift_endAccess();
  if ((*(a2 + 32) & 1) == 0)
  {
    v11 = sub_18A4A79E8();
    result = sub_18A4A79E8();
    if ((v11 & 0x100000000) != 0)
    {
      if ((result & 0x100000000) == 0)
      {
LABEL_12:
        v12 = *(a1 + 176);
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          goto LABEL_20;
        }

        *(a1 + 176) = v14;
      }
    }

    else if ((result & 0x100000000) != 0 || *&v11 != *&result)
    {
      goto LABEL_12;
    }
  }

  *(a1 + 392) = 0;
LABEL_15:
  if (*(a2 + 33) != 1)
  {
    return sub_188AA7584();
  }

  v15 = *(a1 + 184);
  v13 = __OFADD__(v15, 1);
  v16 = v15 + 1;
  if (!v13)
  {
    *(a1 + 184) = v16;
    return sub_188AA7584();
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_188AA7584()
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EA9951C0)
    {
      v2 = qword_1EA9951C8;
    }

    else
    {
      swift_unknownObjectRetain();
      v2 = &off_1EFAF6C08;
    }

    *(v0 + 232) = v2;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    *(v0 + 314) = 1;
  }

  return result;
}

uint64_t sub_188AA7650(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E76D64();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_188E7A69C(&qword_1EA9349C8);
      a2 = v7;
      goto LABEL_12;
    }

    sub_188AA6FF4();
  }

  v8 = *v3;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v4);
  result = sub_18A4A88E8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = result & ~v9;
    result = type metadata accessor for InProcessAnimationManager();
    a2 = v11;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

void *sub_188AA785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = (v4 + *(*v4 + 112));
  *v9 = 0;
  v9[1] = 0;
  swift_unknownObjectWeakInit();
  sub_188A3F29C(a1, v4 + *(*v4 + 104), a4);
  *(v4 + *(*v4 + 128)) = 0;
  *(v4 + *(*v4 + 120)) = 0;
  v10 = *v9;
  *v9 = a2;
  v9[1] = a3;
  sub_188A52E38(a2);
  sub_188A55B8C(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9D0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  sub_188A3F5FC(a1, a4);
  v4[2] = v11;
  return v4;
}

double sub_188AA79A0(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3 < 0)
  {
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v4 = *(a1 + 48);
    if (*(a1 + 24) & a2)
    {
      v4 = 0.0;
    }

    if (v3 & a2)
    {
      v6 = 0.0;
    }
  }

  v7 = 6.28318531 / v4 * (6.28318531 / v4);
  v8 = sqrt(v7);
  *(v2 + 56) = v7;
  *(v2 + 64) = v8 + v8;
  *(v2 + 137) = v4 == 0.0;
  v9 = 6.28318531 / v6 * (6.28318531 / v6);
  v10 = sqrt(v9);
  *(v2 + 88) = v9;
  *(v2 + 96) = v10 + v10;
  *(v2 + 138) = v6 == 0.0;
  v11 = 6.28318531 / v5 * (6.28318531 / v5);
  v12 = sqrt(v11);
  *(v2 + 120) = v11;
  *(v2 + 128) = v12 + v12;
  *(v2 + 139) = v5 == 0.0;
  v13 = *a1;
  v14 = *(a1 + 8);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v15 = *a1;
    *(v2 + 32) = v13;
    v16 = 40;
    v17 = v14;
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 24);
  v15 = 6.28318531 / v13 * (6.28318531 / v13);
  v21 = sqrt(v15);
  v17 = (v21 + v21) * v14;
  *(v2 + 32) = v15;
  *(v2 + 40) = v17;
  *(v2 + 48) = v14;
  *(v2 + 80) = v13;
  if (v20)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v2 = v18;
    if (v3)
    {
LABEL_10:
      if (v4 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v16 = 16;
  v14 = v19;
LABEL_17:
  *(v2 + v16) = v14;
  if (v4 == 0.0)
  {
LABEL_11:
    *v2 = *(v2 + 48);
    *(v2 + 8) = 0;
  }

LABEL_12:
  if (v6 == 0.0)
  {
    *(v2 + 16) = *(v2 + 80);
    *(v2 + 24) = 0;
  }

  result = v17 / v15;
  *(v2 + 144) = v17 / v15;
  return result;
}

uint64_t sub_188AA7AF0(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 144))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_188AA7C54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_188CB1E44();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_188E79AAC();
      a3 = v9;
      goto LABEL_12;
    }

    sub_188AA9978();
  }

  v10 = *v4;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v6);
  result = sub_18A4A88E8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    while (*(*(v10 + 48) + 16 * a3) != v6)
    {
      a3 = (a3 + 1) & v12;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v14 = (*(v13 + 48) + 16 * a3);
  *v14 = v6;
  v14[1] = a2;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v13 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

uint64_t objectdestroy_29Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_29Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188AA7E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_188A3F5FC(a1, &qword_1EA937048);
    v5 = sub_188A403F4(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA8C1C();
        v10 = v13;
      }

      sub_188A3F704(*(v10 + 56) + 8 * v8, &v15, &unk_1EA935760);
      sub_188FA036C(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_188A3F5FC(&v15, &qword_1EA937048);
  }

  else
  {
    sub_188A3F704(a1, &v15, &unk_1EA935760);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_188AA7F94(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_188AA7F94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188A403F4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA8C1C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_188AA9D00(v14, a3 & 1);
    v9 = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    return sub_188A4B4F4(a1, v19[7] + 8 * v9, &unk_1EA935760);
  }

  return sub_188AAE548(v9, a2, a1, v19);
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(v0 + 104);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  if (v1 >= 0xA)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 32))
  {
  }

  v5 = (v3 + 48) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939040);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_3()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = *(v0 + 112);
  if (v1 != 255)
  {
    sub_188B1F3A0(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v1);
  }

  MEMORY[0x18CFEA6E0](v0 + 120);

  return MEMORY[0x1EEE6BDD0](v0, 129, 7);
}

uint64_t objectdestroyTm_4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_5(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 64);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_54Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188AA8490(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x18CFE37B0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
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
    sub_188ABC70C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188AA8578()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349C0);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      result = MEMORY[0x18CFE37B0](*(v4 + 40), v16, 4);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_188AA87A0()
{

  return swift_deallocClassInstance();
}

_DWORD *sub_188AA87D8(_DWORD *result, int a2, uint64_t a3, id a4)
{
  v4 = 0;
  v5 = 0;
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
    v10 = v5;
LABEL_10:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    result[v4] = *(*(a3 + 48) + ((v10 << 8) | (4 * v11)));
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
      return [a4 setHighFrameRateReasons:result count:*(a3 + 16)];
    }
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return [a4 setHighFrameRateReasons:result count:*(a3 + 16)];
    }

    v8 = *(a3 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188AA88B4(unint64_t result, uint64_t a2, void *a3, float a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 4 * result) = a4;
  *(a3[7] + 8 * result) = a2;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

void UICeilToScale(double a1, double a2)
{
  if (a2 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }
}

uint64_t sub_188AA8CD8()
{
  if (*(v0 + 392))
  {
    return swift_beginAccess();
  }

  if (*(v0 + 176) < 1)
  {
    result = swift_beginAccess();
    v35 = 0;
    v36 = *(v0 + 144);
    v37 = 1 << *(v36 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v36 + 64);
    v40 = (v37 + 63) >> 6;
    v41 = 0.0;
    while (v39)
    {
      v42 = v35;
LABEL_48:
      v43 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v44 = *(v36 + 48);
      v45 = (v42 << 8) | (4 * v43);
      if (v41 <= *(v44 + v45))
      {
        v41 = *(v44 + v45);
      }
    }

    while (1)
    {
      v42 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v42 >= v40)
      {
        v46 = fminf(v41, 48.0);
        swift_beginAccess();
        *(v0 + 64) = v46;
        result = swift_beginAccess();
        v47 = 0;
        v48 = *(v0 + 152);
        v49 = 1 << *(v48 + 32);
        v50 = -1;
        if (v49 < 64)
        {
          v50 = ~(-1 << v49);
        }

        v51 = v50 & *(v48 + 64);
        v52 = (v49 + 63) >> 6;
        v53 = 0.0;
        while (v51)
        {
          v54 = v47;
LABEL_60:
          v55 = __clz(__rbit64(v51));
          v51 &= v51 - 1;
          v56 = *(v48 + 48);
          v57 = (v54 << 8) | (4 * v55);
          if (v53 <= *(v56 + v57))
          {
            v53 = *(v56 + v57);
          }
        }

        while (1)
        {
          v54 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_71;
          }

          if (v54 >= v52)
          {
            swift_beginAccess();
            *(v0 + 68) = v53;
LABEL_65:
            sub_18A4A79F8();
            swift_endAccess();
            *(v0 + 392) = 1;
            return swift_beginAccess();
          }

          v51 = *(v48 + 64 + 8 * v54);
          ++v47;
          if (v51)
          {
            v47 = v54;
            goto LABEL_60;
          }
        }
      }

      v39 = *(v36 + 64 + 8 * v42);
      ++v35;
      if (v39)
      {
        v35 = v42;
        goto LABEL_48;
      }
    }
  }

  else
  {
    result = swift_beginAccess();
    v2 = 0;
    v3 = *(v0 + 144);
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;
    v8 = 0.0;
    if (v6)
    {
      while (1)
      {
        v9 = v2;
LABEL_11:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v3 + 48);
        v12 = (v9 << 8) | (4 * v10);
        if (v8 <= *(v11 + v12))
        {
          v8 = *(v11 + v12);
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v9 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++v2;
      if (v6)
      {
        v2 = v9;
        goto LABEL_11;
      }
    }

    swift_beginAccess();
    *(v0 + 64) = v8;
    result = swift_beginAccess();
    v13 = 0;
    v14 = *(v0 + 152);
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = 0.0;
    while (v17)
    {
      v20 = v13;
LABEL_23:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = *(v14 + 48);
      v23 = (v20 << 8) | (4 * v21);
      if (v19 <= *(v22 + v23))
      {
        v19 = *(v22 + v23);
      }
    }

    while (1)
    {
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        *(v0 + 68) = v19;
        result = swift_beginAccess();
        v24 = 0;
        v25 = *(v0 + 160);
        v26 = 1 << *(v25 + 32);
        v27 = -1;
        if (v26 < 64)
        {
          v27 = ~(-1 << v26);
        }

        v28 = v27 & *(v25 + 64);
        v29 = (v26 + 63) >> 6;
        v30 = 0.0;
        while (v28)
        {
          v31 = v24;
LABEL_35:
          v32 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          v33 = *(v25 + 48);
          v34 = (v31 << 8) | (4 * v32);
          if (v30 <= *(v33 + v34))
          {
            v30 = *(v33 + v34);
          }
        }

        while (1)
        {
          v31 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_69;
          }

          if (v31 >= v29)
          {
            swift_beginAccess();
            goto LABEL_65;
          }

          v28 = *(v25 + 64 + 8 * v31);
          ++v24;
          if (v28)
          {
            v24 = v31;
            goto LABEL_35;
          }
        }
      }

      v17 = *(v14 + 64 + 8 * v20);
      ++v13;
      if (v17)
      {
        v13 = v20;
        goto LABEL_23;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_188AA91F4()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  *(v0 + 88) = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    v4 = *(v1 + 16);
    while (1)
    {
      v5 = *(v3 - 8);
      v10 = v0;

      v5(&v10);

      if (*(*(v0 + 88) + 16))
      {
        v7 = sub_188AA91F4(v6);
        v8 = __OFADD__(v4, v7);
        v4 += v7;
        if (v8)
        {
          break;
        }
      }

      v3 += 16;
      if (!--v2)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  v4 = 0;
LABEL_9:

  return v4;
}

void sub_188AA9344(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  type metadata accessor for UIAnimatableProperty.ProtectedState();
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_188AA6EF4(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

void *sub_188AA9424(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_188AA9558@<X0>(BOOL *a1@<X8>)
{
  if (*(v1 + 184) <= 0)
  {
    result = swift_beginAccess();
    v3 = *(*(v1 + 120) + 16) != 0;
  }

  else
  {
    v3 = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_188AA95C4(uint64_t a1)
{
  *(a1 + 313) = 1;
  signpost_c2_tick_pre_start();
  sub_188AA91F4();
  result = signpost_c2_tick_pre_end();
  *(a1 + 313) = 0;
  return result;
}

double sub_188AA95FC@<D0>(id a1@<X4>, char a2@<W0>, uint64_t a3@<X1>, char a4@<W5>, uint64_t a5@<X8>)
{
  v8 = 1;
  if ((a2 & 1) == 0)
  {
    v10 = type metadata accessor for RunningInProcessAnimation();
    v8 = 2 * ((*(*(v10 - 8) + 48))(a3, 1, v10) != 1);
  }

  if (a4)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [a1 parametersForTransitionFromState:v8 toState:v11];
  sub_188AA96FC(v27, &v19);
  v12 = v20;
  v13 = v22;
  v14 = v26;
  v15 = v21 & 1;
  v16 = v23 & 1 | 0x8000000000000000;
  *a5 = v19;
  *(a5 + 16) = v12;
  *(a5 + 24) = v15;
  *(a5 + 32) = v13;
  *(a5 + 40) = v16;
  result = *&v24;
  v18 = v25;
  *(a5 + 48) = v24;
  *(a5 + 64) = v18;
  *(a5 + 80) = v14;
  *(a5 + 88) = 0;
  return result;
}

__n128 sub_188AA96FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 1;
  v7 = 1;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    v8 = 0;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 17))
  {
    v3 = *(a1 + 32);
    v7 = 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 72);
  *a2 = vextq_s8(*a1, *a1, 8uLL);
  *(a2 + 16) = v2;
  *(a2 + 24) = v8;
  *(a2 + 32) = v3;
  *(a2 + 40) = v7;
  result = *(a1 + 40);
  v6 = *(a1 + 56);
  *(a2 + 48) = result;
  *(a2 + 64) = v6;
  *(a2 + 80) = v4;
  return result;
}

id sub_188AA977C(uint64_t a1)
{
  sub_188A55538(a1, &v7);
  v2 = sub_188A34624(0, &qword_1ED48FD80);
  swift_dynamicCast();
  [v6 doubleValue];
  v4 = v3;

  if (v4 <= 0.0)
  {
    v4 = 0.0;
  }

  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(a1 + 24) = v2;
  *a1 = result;
  return result;
}

double sub_188AA9844@<D0>(_OWORD *a1@<X8>)
{
  v7 = *(MEMORY[0x1E69792E8] + 64);
  v8 = *(MEMORY[0x1E69792E8] + 80);
  v9 = *(MEMORY[0x1E69792E8] + 96);
  v10 = *(MEMORY[0x1E69792E8] + 112);
  v3 = *MEMORY[0x1E69792E8];
  v4 = *(MEMORY[0x1E69792E8] + 16);
  v5 = *(MEMORY[0x1E69792E8] + 32);
  v6 = *(MEMORY[0x1E69792E8] + 48);
  CATransform3DSetDecomposition_();
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_188AA9978()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349D0);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v22 = *(*(v2 + 48) + 16 * (v12 | (v5 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v22);
      result = sub_18A4A88E8();
      v15 = -1 << *(v4 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v10 + 8 * v17);
          if (v21 != -1)
          {
            v11 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 16 * v11) = v22;
      ++*(v4 + 16);
      result = swift_unknownObjectRetain();
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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
    *v1 = v4;
  }

  return result;
}

uint64_t sub_188AA9BB0()
{
  v0 = [objc_opt_self() currentThread];
  v1 = [v0 threadDictionary];

  *&v7[0] = 0xD000000000000022;
  *(&v7[0] + 1) = 0x800000018A68D0A0;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v2)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    _s29AnimatablePropertyTransformerCMa();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_188A3F5FC(v7, &qword_1EA934050);
    return 0;
  }
}

void sub_188AA9D24(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_188A5E664(a2 & 1, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_188FA1DBC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_188AAEB6C(v18, a5 & 1);
    v13 = sub_188A5E664(a2 & 1, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v13);
    *(v24 + 8 * v13) = a1;
  }

  else
  {
    sub_188AAD8E8(v13, a2 & 1, a3, a4, a1, v23);
  }
}

uint64_t sub_188AA9E78()
{
  result = swift_beginAccess();
  if (!*(v0[6] + 16))
  {
    result = swift_beginAccess();
    if (!*(v0[8] + 16))
    {
      result = swift_beginAccess();
      if (!*(v0[7] + 16))
      {
        result = swift_beginAccess();
        if (!*(v0[9] + 16))
        {
          v2 = v0[4];
          if (v2)
          {
            v0[4] = 0;
            v0[5] = 0;
            v2(result);
            return sub_188A55B8C(v2);
          }
        }
      }
    }
  }

  return result;
}

char *sub_188AA9F60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_188AAA064(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_18A4A8878();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_188AAA148(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188AAA148(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E76B40();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_188E7A418(&qword_1EA9349B8);
      a2 = v7;
      goto LABEL_12;
    }

    sub_188E7DAA4();
  }

  v8 = *v3;
  result = sub_18A4A8878();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

_DWORD *sub_188AAA27C(id isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4 >> 61)
    {
      __break(1u);
    }

    if ((4 * v4) > 1024)
    {
      v8 = v4;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if (!isStackAllocationSafe)
      {
        v9 = v8;
        v10 = swift_slowAlloc();
        sub_188AA87D8(v10, v9, a2, v3);

        JUMPOUT(0x18CFEA5B0);
      }
    }

    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    return sub_188AA87D8((v11 - v5), v6, a2, v3);
  }

  else
  {

    return [isStackAllocationSafe setHighFrameRateReasons:0 count:0];
  }
}

uint64_t sub_188AAA46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *(a1 + 16);
  v23 = *a1;
  v20 = *(a2 + 16);
  v21 = *a2;
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v14 = *(a2 + 48);
  v15 = *(a2 + 32);
  v13 = *(a1 + 80);
  v19 = *(a1 + 64);
  v12 = *(a2 + 80);
  v18 = *(a2 + 64);
  v10 = *(a1 + 112);
  v11 = *(a1 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 96);
  v4 = *(a1 + 128);
  v5 = *(a2 + 128);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EB60);
  v7 = 2;
  if (v4 == 2)
  {
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    goto LABEL_7;
  }

  v7 = 1;
  if (v4 == 1 || v5 == 1)
  {
    goto LABEL_7;
  }

  if (!v4)
  {
    v7 = 0;
LABEL_7:
    *a3 = vsubq_f64(v23, v21);
    *(a3 + 16) = vsubq_f64(v22, v20);
    *(a3 + 32) = vsubq_f64(v17, v15);
    *(a3 + 48) = vsubq_f64(v16, v14);
    *(a3 + 64) = vsubq_f64(v19, v18);
    *(a3 + 80) = vsubq_f64(v13, v12);
    *(a3 + 96) = vsubq_f64(v11, v9);
    *(a3 + 112) = vsubq_f64(v10, v8);
    *(a3 + 128) = v7;
    return result;
  }

  result = sub_18A4A86B8();
  __break(1u);
  return result;
}

uint64_t sub_188AAA5C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936718);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936720);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA936720);
  sub_188A3F29C(v9, v6, &qword_1EA936720);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_188A3F5FC(v9, &qword_1EA936720);
      v12 = 1;
      return v12 & 1;
    }

    sub_188A3F5FC(v9, &qword_1EA936720);
    sub_188A3F704(v6, v3, &qword_1EA936718);
    v12 = v3[112];
    v13 = v3;
    v14 = &qword_1EA936718;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v16 = v6[8];
      v15 = v6[9];
      v18 = v6[10];
      v17 = v6[11];
      v20 = v6[14];
      v19 = v6[15];
      v22 = v6[16];
      v21 = v6[17];
      if (qword_1ED48C638 != -1)
      {
        v31 = v6[17];
        v32 = v17;
        v27 = v15;
        v28 = v18;
        v29 = v19;
        v30 = v22;
        v25 = v20;
        v26 = v16;
        swift_once();
        v20 = v25;
        v16 = v26;
        v19 = v29;
        v22 = v30;
        v15 = v27;
        v18 = v28;
        v21 = v31;
        v17 = v32;
      }

      v12 = vabdd_f64(v20, v16) <= *&xmmword_1ED4A3470 && vabdd_f64(v19, v15) <= *&xmmword_1ED4A3470 && vabdd_f64(v22, v18) <= *(&xmmword_1ED4A3470 + 1) && vabdd_f64(v21, v17) <= *(&xmmword_1ED4A3470 + 1);
    }

    else
    {
      memcpy(v33, v6, sizeof(v33));
      v12 = sub_188AB4454();
    }

    v14 = &qword_1EA936720;
    v13 = v9;
  }

  sub_188A3F5FC(v13, v14);
  return v12 & 1;
}

uint64_t sub_188AAA888()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367A8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367B0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA9367B0);
  sub_188A3F29C(v9, v6, &qword_1EA9367B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v9, &qword_1EA9367B0);
      sub_188A3F704(v6, v3, &qword_1EA9367A8);
      v22 = v3[64];
      sub_188A3F5FC(v3, &qword_1EA9367A8);
    }

    else
    {
      sub_188A3F5FC(v9, &qword_1EA9367B0);
      v22 = 1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v23 = v6[2];
      v24 = v6[4];
      if (qword_1ED48D080 != -1)
      {
        v27 = v6[4];
        v28 = v23;
        swift_once();
        v24 = v27;
        v23 = v28;
      }

      v25 = vmovn_s64(vcgeq_f64(vdupq_lane_s64(qword_1ED4A3498, 0), vabdq_f64(v24, v23)));
      v22 = v25.i8[0] & v25.i8[4];
    }

    else
    {
      v12 = v6[12];
      v13 = v6[13];
      v14 = v6[10];
      v40 = v6[11];
      v41 = v12;
      v15 = v6[14];
      v42 = v13;
      v43 = v15;
      v16 = v6[8];
      v17 = v6[9];
      v18 = v6[6];
      v36 = v6[7];
      v37 = v16;
      v38 = v17;
      v39 = v14;
      v19 = v6[5];
      v33 = v6[4];
      v34 = v19;
      v35 = v18;
      v20 = v6[1];
      v29 = *v6;
      v30 = v20;
      v21 = v6[3];
      v31 = v6[2];
      v32 = v21;
      v22 = sub_188AAAB44();
    }

    sub_188A3F5FC(v9, &qword_1EA9367B0);
  }

  return v22 & 1;
}

BOOL sub_188AAAB44()
{
  v1 = v0[12];
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = vnegq_f64(v2);
  v4 = vdupq_n_s64(0x7FF0000000000000uLL);
  *&v2.f64[0] = vmovn_s64(vcgeq_s64(vandq_s8(v1, v3), v4));
  if ((LODWORD(v2.f64[0]) | HIDWORD(v2.f64[0])))
  {
    return 1;
  }

  v5 = v0[11];
  v6 = vmovn_s64(vcgeq_s64(vandq_s8(v5, v3), v4));
  if ((v6.i32[0] | v6.i32[1]))
  {
    return 1;
  }

  v7 = vsubq_f64(v0[10], v1);
  v8 = vmulq_n_f64(v5, v0[9].f64[1]);
  v9 = vaddq_f64(vmulq_f64(v7, v7), vmulq_f64(v8, v8));
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *&v7.f64[0] = vmovn_s64(vcgeq_s64(vandq_s8(v9, vnegq_f64(v7)), vdupq_n_s64(0x7FF0000000000000uLL)));
  if ((LODWORD(v7.f64[0]) | HIDWORD(v7.f64[0])))
  {
    return 1;
  }

  if (qword_1ED48D088 != -1)
  {
    v11 = v9;
    swift_once();
    v9 = v11;
  }

  return *v9.i64 <= *&qword_1ED4A34A0 && *&v9.i64[1] <= *&qword_1ED4A34A0;
}

BOOL sub_188AAAC5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA9366F0);
  sub_188A3F29C(v9, v6, &qword_1EA9366F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v9, &qword_1EA9366F0);
      sub_188A3F704(v6, v3, &qword_1EA9366E8);
      v12 = v3[40];
      sub_188A3F5FC(v3, &qword_1EA9366E8);
    }

    else
    {
      sub_188A3F5FC(v9, &qword_1EA9366F0);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = v6[2];
    v15 = v6[5];
    if (qword_1EA931200 != -1)
    {
      v20 = v6[5];
      v21 = v14;
      swift_once();
      v15 = v20;
      v14 = v21;
    }

    v16 = *&qword_1EA994F30;
    v17 = vabdd_f64(v15, v14);
    sub_188A3F5FC(v9, &qword_1EA9366F0);
    return v17 <= v16;
  }

  else
  {
    v12 = 1;
    if ((v6[21] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v6[20] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v13 = (v6[19] - v6[21]) * (v6[19] - v6[21]) + v6[20] * v6[18] * (v6[20] * v6[18]);
      if (COERCE_UNSIGNED_INT64(fabs(v13)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (qword_1EA931208 != -1)
        {
          v21 = (v6[19] - v6[21]) * (v6[19] - v6[21]) + v6[20] * v6[18] * (v6[20] * v6[18]);
          swift_once();
          v13 = v21;
        }

        v12 = v13 <= *&qword_1EA994F38;
      }
    }

    sub_188A3F5FC(v9, &qword_1EA9366F0);
  }

  return v12;
}

double sub_188AAAF70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - v5);
  v7 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v7, v6, &qword_1EA9366F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v6, v3, &qword_1EA9366E8);
      v9 = sub_188EF5F6C();
      sub_188A3F5FC(v3, &qword_1EA9366E8);
    }

    else
    {
      v9 = v6[1];
    }
  }

  else
  {
    v9 = 0.0;
    if (!EnumCaseMultiPayload)
    {
      v9 = v6[20];
    }
  }

  swift_endAccess();
  return v9;
}

float64_t sub_188AAB118(double a1)
{
  if (a1 <= 0.0)
  {
    v11 = *(v1 + 240);
    return v11.f64[0];
  }

  v3 = *(v1 + 176);
  v2 = *(v1 + 192);
  v4 = *(v1 + 163);
  if (v4)
  {
    *(v1 + 272) = v3;
    *(v1 + 288) = v2;
    *(v1 + 304) = 0u;
    *(v1 + 320) = 0u;
  }

  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  v9 = *(v1 + 161);
  v10 = *(v1 + 162);
  v135 = v3;
  v139 = v2;
  if ((v9 & 1) == 0)
  {
    v13 = *(v1 + 48);
    v12 = *(v1 + 56);
    v14 = *(v1 + 64);
    v15 = *(v1 + 72);
    if (*v1 == v13 && *(v1 + 8) == 0.0)
    {
      if (*(v1 + 162))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v18 = *v1 - v13;
      v169 = *(v1 + 88);
      if ((v15 - 1) <= 2)
      {
        v19 = __sincos_stret(*v1 - v13);
        v20 = atan2(v19.__sinval, v19.__cosval);
        if (v20 > 0.0 && v15 == 2)
        {
          v20 = v20 + -6.28318531;
        }

        if (v20 < 0.0 && v15 == 3)
        {
          v18 = v20 + 6.28318531;
        }

        else
        {
          v18 = v20;
        }
      }

      v23 = *(v1 + 8);
      v24 = sqrt(v12);
      v25 = v14 * 0.5;
      if (v14 * 0.5 >= v24)
      {
        if (v24 >= v25)
        {
          v44 = v25 * v18 + v23;
          v45 = v18 + v44 * a1;
          v30 = exp(-(v25 * a1));
          v31 = v30 * v45;
          v34 = v30 * v44;
          v35 = v45 * v25;
        }

        else
        {
          v163 = v5;
          v36 = sqrt(v25 * v25 - v24 * v24);
          v37 = cosh(v36 * a1);
          v157 = v7;
          v38 = 1.0 / v36 * (v25 * v18 + v23);
          v39 = sinh(v36 * a1);
          v40 = v18 * v37 + v38 * v39;
          v30 = exp(-(v25 * a1));
          v31 = v30 * v40;
          v41 = v36 * (v18 * v39);
          v42 = v36 * (v38 * v37);
          v5 = v163;
          v34 = v30 * (v42 + v41);
          v35 = v40 * v25;
          v7 = v157;
        }
      }

      else
      {
        v156 = v7;
        v26 = sqrt(v24 * v24 - v25 * v25);
        v27 = __sincos_stret(v26 * a1);
        v28 = 1.0 / v26 * (v25 * v18 + v23);
        v162 = v5;
        v29 = v27.__cosval * v18 + v27.__sinval * v28;
        v30 = exp(-(v25 * a1));
        v31 = v30 * v29;
        v32 = v26 * (v18 * v27.__sinval);
        v33 = v26 * (v27.__cosval * v28);
        v7 = v156;
        v34 = v30 * (v33 - v32);
        v35 = v29 * v25;
        v5 = v162;
      }

      *v1 = v13 + v31;
      *(v1 + 8) = v34 - v30 * v35;
      v3 = v135;
      v2 = v139;
      v6 = v169;
      if (v10)
      {
LABEL_11:
        if (!v9)
        {
          v43 = *(v1 + 16);
LABEL_53:
          v16 = 6.28318531 / v43 * (6.28318531 / v43);
          v70 = sqrt(v16);
          v17 = *v1 * (v70 + v70);
          *(v1 + 32) = v16;
          *(v1 + 40) = v17;
          goto LABEL_54;
        }

        goto LABEL_12;
      }
    }

LABEL_32:
    v43 = *(v1 + 16);
    if (v43 == v5 && *(v1 + 24) == 0.0)
    {
      goto LABEL_53;
    }

    v46 = v43 - v5;
    if ((v8 - 1) <= 2)
    {
      v47 = __sincos_stret(v43 - v5);
      v48 = atan2(v47.__sinval, v47.__cosval);
      if (v48 > 0.0 && v8 == 2)
      {
        v48 = v48 + -6.28318531;
      }

      if (v48 < 0.0 && v8 == 3)
      {
        v46 = v48 + 6.28318531;
      }

      else
      {
        v46 = v48;
      }
    }

    v51 = *(v1 + 24);
    v52 = sqrt(v6);
    v53 = v7 * 0.5;
    if (v7 * 0.5 >= v52)
    {
      if (v52 >= v53)
      {
        v67 = v53 * v46 + v51;
        v68 = v46 + v67 * a1;
        v58 = exp(-(v53 * a1));
        v59 = v58 * v68;
        v65 = v58 * v67;
        v66 = v68 * v53;
        goto LABEL_52;
      }

      v61 = sqrt(v53 * v53 - v52 * v52);
      v62 = cosh(v61 * a1);
      v63 = 1.0 / v61 * (v53 * v46 + v51);
      v64 = sinh(v61 * a1);
      v57 = v46 * v62 + v63 * v64;
      v58 = exp(-(v53 * a1));
      v59 = v58 * v57;
      v60 = v61 * (v63 * v62) + v61 * (v46 * v64);
    }

    else
    {
      v54 = sqrt(v52 * v52 - v53 * v53);
      v55 = __sincos_stret(v54 * a1);
      v56 = 1.0 / v54 * (v53 * v46 + v51);
      v57 = v55.__cosval * v46 + v55.__sinval * v56;
      v58 = exp(-(v53 * a1));
      v59 = v58 * v57;
      v60 = v54 * (v55.__cosval * v56) - v54 * (v46 * v55.__sinval);
    }

    v65 = v58 * v60;
    v66 = v57 * v53;
LABEL_52:
    v69 = v65 - v58 * v66;
    v43 = v5 + v59;
    *(v1 + 16) = v5 + v59;
    *(v1 + 24) = v69;
    v3 = v135;
    v2 = v139;
    goto LABEL_53;
  }

  if ((*(v1 + 162) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  v16 = *(v1 + 32);
  v17 = *(v1 + 40);
LABEL_54:
  *(v1 + 112) = v3;
  *(v1 + 128) = v2;
  v71 = *(v1 + 272);
  v72 = *(v1 + 288);
  rect1 = *(v1 + 320);
  v158 = *(v1 + 304);
  v74 = *(v1 + 240);
  v73 = *(v1 + 256);
  v148 = *(v1 + 224);
  v150 = *(v1 + 208);
  v140 = v74;
  v144 = v73;
  if ((v4 & 1) == 0)
  {
    v76 = *(v1 + 144);
    v75 = *(v1 + 152);
    v178.origin.y = v3.f64[1];
    v178.size.height = v2.f64[1];
    v164 = *(v1 + 272);
    v170 = *(v1 + 288);
    v178.origin.x = v3.f64[0];
    v178.size.width = v2.f64[0];
    if (CGRectEqualToRect(*(v1 + 272), v178) && (v176.origin = v158, v176.size = rect1, v179.origin.x = 0.0, v179.origin.y = 0.0, v179.size.width = 0.0, v179.size.height = 0.0, CGRectEqualToRect(v176, v179)))
    {
      v74 = v140;
      v73 = v144;
      v71 = v164;
      v72 = v170;
    }

    else
    {
      v77 = vsubq_f64(v164, v135);
      v78 = vsubq_f64(v170, v139);
      v79 = sqrt(v76);
      v80 = v75 * 0.5;
      if (v75 * 0.5 >= v79)
      {
        if (v79 >= v80)
        {
          v131 = vaddq_f64(v158, vmulq_n_f64(v77, v80));
          v161 = vaddq_f64(rect1, vmulq_n_f64(v78, v80));
          v167 = vaddq_f64(v77, vmulq_n_f64(v131, a1));
          rect1a = vaddq_f64(v78, vmulq_n_f64(v161, a1));
          v173 = -v80;
          v87 = exp(-(v80 * a1));
          v83 = vmulq_n_f64(rect1a, v87);
          v84 = vmulq_n_f64(v167, v87);
          v88 = vmulq_n_f64(v131, v87);
          v89 = vmulq_n_f64(vmulq_n_f64(v167, v173), v87);
          v90 = vmulq_n_f64(v161, v87);
          v91 = vmulq_n_f64(rect1a, v173);
        }

        else
        {
          v130 = sqrt(v80 * v80 - v79 * v79);
          v166 = v77;
          v172 = v78;
          v127 = cosh(v130 * a1);
          v120 = sinh(v130 * a1);
          v124 = vmulq_n_f64(vaddq_f64(v158, vmulq_n_f64(v166, v75 * 0.5)), 1.0 / v130);
          v160 = vmulq_n_f64(vaddq_f64(rect1, vmulq_n_f64(v172, v75 * 0.5)), 1.0 / v130);
          v117 = vaddq_f64(vmulq_n_f64(v172, v127), vmulq_n_f64(v160, v120));
          v119 = vaddq_f64(vmulq_n_f64(v166, v127), vmulq_n_f64(v124, v120));
          v87 = exp(-(v75 * 0.5 * a1));
          v83 = vmulq_n_f64(v117, v87);
          v84 = vmulq_n_f64(v119, v87);
          v88 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v124, v127), v130), vmulq_n_f64(vmulq_n_f64(v166, v120), v130)), v87);
          v89 = vmulq_n_f64(vmulq_n_f64(v119, -(v75 * 0.5)), v87);
          v90 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v160, v127), v130), vmulq_n_f64(vmulq_n_f64(v172, v120), v130)), v87);
          v91 = vmulq_n_f64(v117, -(v75 * 0.5));
        }

        v158 = vaddq_f64(v88, v89);
        v86 = vaddq_f64(v90, vmulq_n_f64(v91, v87));
      }

      else
      {
        v129 = sqrt(v79 * v79 - v80 * v80);
        v165 = v77;
        v171 = v78;
        v81 = __sincos_stret(v129 * a1);
        v123 = vmulq_n_f64(vaddq_f64(v158, vmulq_n_f64(v165, v75 * 0.5)), 1.0 / v129);
        v159 = vmulq_n_f64(vaddq_f64(rect1, vmulq_n_f64(v171, v75 * 0.5)), 1.0 / v129);
        v116 = vaddq_f64(vmulq_n_f64(v171, v81.__cosval), vmulq_n_f64(v159, v81.__sinval));
        v118 = vaddq_f64(vmulq_n_f64(v165, v81.__cosval), vmulq_n_f64(v123, v81.__sinval));
        v82 = exp(-(v75 * 0.5 * a1));
        v83 = vmulq_n_f64(v116, v82);
        v84 = vmulq_n_f64(v118, v82);
        v85 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v171, -v81.__sinval), v129), vmulq_n_f64(vmulq_n_f64(v159, v81.__cosval), v129)), v82);
        v158 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v165, -v81.__sinval), v129), vmulq_n_f64(vmulq_n_f64(v123, v81.__cosval), v129)), v82), vmulq_n_f64(vmulq_n_f64(v118, -(v75 * 0.5)), v82));
        v86 = vaddq_f64(v85, vmulq_n_f64(vmulq_n_f64(v116, -(v75 * 0.5)), v82));
      }

      rect1 = v86;
      v71 = vaddq_f64(v135, v84);
      v72 = vaddq_f64(v139, v83);
      v74 = v140;
      v73 = v144;
    }
  }

  v92 = v74.f64[1];
  v93 = v73.f64[1];
  v94 = v71.f64[1];
  v95 = v72.f64[1];
  v96 = v74.f64[0];
  v168 = v71;
  v174 = v72;
  if (CGRectEqualToRect(*(&v73 - 1), *v71.f64) && (v177.size.width = v148.f64[0], v177.origin = v150, v177.size.height = v148.f64[1], v180.origin.x = 0.0, v180.origin.y = 0.0, v180.size.width = 0.0, v180.size.height = 0.0, CGRectEqualToRect(v177, v180)))
  {
    v97 = v148;
    v98 = v150;
    v11 = v140;
    v99 = v144;
    v101 = v168;
    v100 = v174;
  }

  else
  {
    v102 = vsubq_f64(v140, v168);
    v103 = vsubq_f64(v144, v174);
    v104 = sqrt(v16);
    v105 = v17 * 0.5;
    if (v17 * 0.5 >= v104)
    {
      if (v104 >= v105)
      {
        v138 = vaddq_f64(v150, vmulq_n_f64(v102, v105));
        v153 = vaddq_f64(v148, vmulq_n_f64(v103, v105));
        v143 = vaddq_f64(v102, vmulq_n_f64(v138, a1));
        v147 = vaddq_f64(v103, vmulq_n_f64(v153, a1));
        v149 = -v105;
        v110 = exp(-(v105 * a1));
        v108 = vmulq_n_f64(v147, v110);
        v109 = vmulq_n_f64(v143, v110);
        v111 = vmulq_n_f64(v138, v110);
        v112 = vmulq_n_f64(vmulq_n_f64(v143, v149), v110);
        v113 = vmulq_n_f64(v153, v110);
        v114 = vmulq_n_f64(v147, v149);
      }

      else
      {
        v137 = sqrt(v105 * v105 - v104 * v104);
        v142 = v102;
        v146 = v103;
        v134 = cosh(v137 * a1);
        v128 = sinh(v137 * a1);
        v133 = vmulq_n_f64(vaddq_f64(v150, vmulq_n_f64(v142, v17 * 0.5)), 1.0 / v137);
        v152 = vmulq_n_f64(vaddq_f64(v148, vmulq_n_f64(v146, v17 * 0.5)), 1.0 / v137);
        v122 = vaddq_f64(vmulq_n_f64(v146, v134), vmulq_n_f64(v152, v128));
        v126 = vaddq_f64(vmulq_n_f64(v142, v134), vmulq_n_f64(v133, v128));
        v110 = exp(-(v17 * 0.5 * a1));
        v108 = vmulq_n_f64(v122, v110);
        v109 = vmulq_n_f64(v126, v110);
        v111 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v133, v134), v137), vmulq_n_f64(vmulq_n_f64(v142, v128), v137)), v110);
        v112 = vmulq_n_f64(vmulq_n_f64(v126, -(v17 * 0.5)), v110);
        v113 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v152, v134), v137), vmulq_n_f64(vmulq_n_f64(v146, v128), v137)), v110);
        v114 = vmulq_n_f64(v122, -(v17 * 0.5));
      }

      v98 = vaddq_f64(v111, v112);
      v97 = vaddq_f64(v113, vmulq_n_f64(v114, v110));
    }

    else
    {
      v136 = sqrt(v104 * v104 - v105 * v105);
      v141 = v102;
      v145 = v103;
      v106 = __sincos_stret(v136 * a1);
      v132 = vmulq_n_f64(vaddq_f64(v150, vmulq_n_f64(v141, v17 * 0.5)), 1.0 / v136);
      v151 = vmulq_n_f64(vaddq_f64(v148, vmulq_n_f64(v145, v17 * 0.5)), 1.0 / v136);
      v121 = vaddq_f64(vmulq_n_f64(v145, v106.__cosval), vmulq_n_f64(v151, v106.__sinval));
      v125 = vaddq_f64(vmulq_n_f64(v141, v106.__cosval), vmulq_n_f64(v132, v106.__sinval));
      v107 = exp(-(v17 * 0.5 * a1));
      v108 = vmulq_n_f64(v121, v107);
      v109 = vmulq_n_f64(v125, v107);
      v98 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v141, -v106.__sinval), v136), vmulq_n_f64(vmulq_n_f64(v132, v106.__cosval), v136)), v107), vmulq_n_f64(vmulq_n_f64(v125, -(v17 * 0.5)), v107));
      v97 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v145, -v106.__sinval), v136), vmulq_n_f64(vmulq_n_f64(v151, v106.__cosval), v136)), v107), vmulq_n_f64(vmulq_n_f64(v121, -(v17 * 0.5)), v107));
    }

    v101 = v168;
    v100 = v174;
    v11 = vaddq_f64(v168, v109);
    v99 = vaddq_f64(v174, v108);
  }

  *(v1 + 240) = v11;
  *(v1 + 256) = v99;
  *(v1 + 208) = v98;
  *(v1 + 224) = v97;
  *(v1 + 272) = v101;
  *(v1 + 288) = v100;
  *(v1 + 304) = v158;
  *(v1 + 320) = rect1;
  return v11.f64[0];
}

uint64_t sub_188AABCA0(double a1, double a2, double a3, double a4)
{
  v4 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  return (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v4;
}

uint64_t sub_188AABCFC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936778);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936780);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49[-v10];
  sub_188A3F704(v3, &v49[-v10], &qword_1EA936780);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v37 = *(v11 + 7);
      *(a1 + 96) = *(v11 + 6);
      *(a1 + 112) = v37;
      *(a1 + 128) = v11[128];
      v38 = *(v11 + 3);
      *(a1 + 32) = *(v11 + 2);
      *(a1 + 48) = v38;
      v39 = *(v11 + 5);
      *(a1 + 64) = *(v11 + 4);
      *(a1 + 80) = v39;
      v40 = *(v11 + 1);
      *a1 = *v11;
      *(a1 + 16) = v40;
      v15 = v3;
      v14 = v11;
      v16 = 265;
      goto LABEL_9;
    }

    sub_188A3F704(v11, v8, &qword_1EA936778);
    sub_188EF3F04(a1, a2);
    sub_188A3F704(v8, v3, &qword_1EA936778);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = memcpy(v49, v11, 0x3B9uLL);
      sub_188AB45D8(v13);
      v14 = v49;
      v15 = v3;
      v16 = 953;
LABEL_9:
      memcpy(v15, v14, v16);
      return swift_storeEnumTagMultiPayload();
    }

    memcpy(v60, v11, sizeof(v60));
    v17 = *(v11 + 51);
    v18 = *(v11 + 33);
    v58 = *(v11 + 32);
    v59[0] = v18;
    *(v59 + 9) = *(v11 + 537);
    v19 = *(v11 + 29);
    v54 = *(v11 + 28);
    v55 = v19;
    v20 = *(v11 + 30);
    v57 = *(v11 + 31);
    v56 = v20;
    v21 = *(v11 + 26);
    v53 = *(v11 + 27);
    v52 = v21;
    if (a2 <= 0.0)
    {
      v41 = *(v11 + 24);
      *(a1 + 96) = *(v11 + 23);
      *(a1 + 112) = v41;
      *(a1 + 128) = v11[400];
      v42 = *(v11 + 20);
      *(a1 + 32) = *(v11 + 19);
      *(a1 + 48) = v42;
      v43 = *(v11 + 22);
      *(a1 + 64) = *(v11 + 21);
      *(a1 + 80) = v43;
      v36 = *(v11 + 17);
      v35 = *(v11 + 18);
    }

    else
    {
      v22 = pow(v17, a2 * 1000.0);
      v23 = *(v11 + 536);
      v24 = 1.0 - v22;
      v69[6] = *(v11 + 520);
      v69[7] = v23;
      v70 = v11[552];
      v25 = *(v11 + 472);
      v69[2] = *(v11 + 456);
      v69[3] = v25;
      v26 = *(v11 + 488);
      v69[5] = *(v11 + 504);
      v69[4] = v26;
      v27 = *(v11 + 424);
      v69[1] = *(v11 + 440);
      v69[0] = v27;
      v28 = *(v11 + 216);
      v29 = *(v11 + 248);
      v71[6] = *(v11 + 232);
      v71[7] = v29;
      v72 = v11[264];
      v30 = *(v11 + 152);
      v31 = *(v11 + 184);
      v71[2] = *(v11 + 168);
      v71[3] = v31;
      v71[4] = *(v11 + 200);
      v71[5] = v28;
      v71[0] = *(v11 + 136);
      v71[1] = v30;
      sub_188AAA46C(v69, v71, v51);
      sub_188AB3714(v24);
      v67[6] = *&v60[232];
      v67[7] = *&v60[248];
      v68 = v60[264];
      v67[2] = *&v60[168];
      v67[3] = *&v60[184];
      v67[5] = *&v60[216];
      v67[4] = *&v60[200];
      v67[1] = *&v60[152];
      v67[0] = *&v60[136];
      sub_188AB35D4(v67, v51, &v60[136]);
      v63[6] = *&v60[232];
      v63[7] = *&v60[248];
      v64 = v60[264];
      v63[2] = *&v60[168];
      v63[3] = *&v60[184];
      v63[5] = *&v60[216];
      v63[4] = *&v60[200];
      v63[1] = *&v60[152];
      v63[0] = *&v60[136];
      v65[6] = *&v60[368];
      v65[7] = *&v60[384];
      v66 = v60[400];
      v65[2] = *&v60[304];
      v65[3] = *&v60[320];
      v65[5] = *&v60[352];
      v65[4] = *&v60[336];
      v65[1] = *&v60[288];
      v65[0] = *&v60[272];
      sub_188AAA46C(v63, v65, v50);
      sub_188AB3714(v24);
      v61[6] = *&v60[368];
      v61[7] = *&v60[384];
      v62 = v60[400];
      v61[2] = *&v60[304];
      v61[3] = *&v60[320];
      v61[5] = *&v60[352];
      v61[4] = *&v60[336];
      v61[1] = *&v60[288];
      v61[0] = *&v60[272];
      sub_188AB35D4(v61, v50, &v60[272]);
      v32 = *&v60[384];
      *(a1 + 96) = *&v60[368];
      *(a1 + 112) = v32;
      *(a1 + 128) = v60[400];
      v33 = *&v60[320];
      *(a1 + 32) = *&v60[304];
      *(a1 + 48) = v33;
      v34 = *&v60[352];
      *(a1 + 64) = *&v60[336];
      *(a1 + 80) = v34;
      v36 = *&v60[272];
      v35 = *&v60[288];
    }

    *a1 = v36;
    *(a1 + 16) = v35;
    memcpy(v3, v60, 0x198uLL);
    *(v3 + 408) = v17;
    v44 = v59[0];
    *(v3 + 512) = v58;
    *(v3 + 528) = v44;
    *(v3 + 537) = *(v59 + 9);
    v45 = v55;
    *(v3 + 448) = v54;
    *(v3 + 464) = v45;
    v46 = v57;
    *(v3 + 480) = v56;
    *(v3 + 496) = v46;
    v47 = v53;
    *(v3 + 416) = v52;
    *(v3 + 432) = v47;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_188AAC20C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(MEMORY[0x1E69792B8] + 8);
  v44 = *MEMORY[0x1E69792B8];
  v45 = v3;
  v4 = sub_188ABB4E0(MEMORY[0x1E69E7CC0]);
  v43 = sub_188ABC430(v4);
  v5 = a1[35];
  v6 = swift_allocObject();
  v6[2] = &v44;
  v6[3] = a1;
  v6[4] = &v43;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_188ABB4CC;
  *(v7 + 24) = v6;
  v41 = sub_188E3FE50;
  v42 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_188A4A968;
  v40 = &block_descriptor_204_1;
  v8 = _Block_copy(&aBlock);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = a1[2];
  os_unfair_lock_lock((v10 + 20));
  v11 = *(v10 + 19);
  os_unfair_lock_unlock((v10 + 20));
  if (v11 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v13 = dispatch_semaphore_create(0);
      v14 = swift_allocObject();
      swift_weakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v13;
      v16 = objc_allocWithZone(MEMORY[0x1E696AF00]);
      v41 = sub_1892156FC;
      v42 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v38 = 1107296256;
      v39 = sub_188A4A8F0;
      v40 = &block_descriptor_221;
      v17 = _Block_copy(&aBlock);

      v18 = v13;
      v19 = [v16 initWithBlock_];
      _Block_release(v17);

      swift_unknownObjectWeakAssign();
      v20 = [objc_opt_self() mainThread];
      [v20 threadPriority];
      v22 = v21;

      [v19 setThreadPriority_];
      v23 = sub_18A4A7258();
      [v19 setName_];

      [v19 start];
      v24 = v18;
      sub_188AAC82C(v24);

      Strong = v19;
    }

    v25 = a1[36];
    v26 = swift_allocObject();
    v26[2] = a1;
    v26[3] = &v44;
    v26[4] = &v43;
    v26[5] = v2;
    v27 = swift_allocObject();
    v28 = sub_189215704;
    *(v27 + 16) = sub_189215704;
    *(v27 + 24) = v26;
    v41 = sub_188E3FE50;
    v42 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_188A4A968;
    v40 = &block_descriptor_231;
    v29 = _Block_copy(&aBlock);

    dispatch_sync(v25, v29);
    _Block_release(v29);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v31 = 0;
LABEL_9:

      sub_188A55B8C(v28);
      return sub_188A55B8C(v31);
    }

    goto LABEL_11;
  }

  v32 = a1[36];
  v33 = swift_allocObject();
  v33[2] = a1;
  v33[3] = &v44;
  v33[4] = &v43;
  v33[5] = v2;
  v34 = swift_allocObject();
  v31 = sub_1892156F0;
  *(v34 + 16) = sub_1892156F0;
  *(v34 + 24) = v33;
  v41 = sub_188E3FE50;
  v42 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_188A4A968;
  v40 = &block_descriptor_214_1;
  v35 = _Block_copy(&aBlock);

  dispatch_sync(v32, v35);
  _Block_release(v35);
  v36 = swift_isEscapingClosureAtFileLocation();

  if ((v36 & 1) == 0)
  {
    v28 = 0;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_188AAC82C(void *a1)
{
  sub_18A4A7B88();
}

uint64_t sub_188AAC870()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188AAC8A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188AAC8E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188AAC950(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, id *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  LODWORD(v13) = a5;
  v100 = a4;
  v98 = a3;
  v99 = a2;
  v15 = [(UIView *)v8 __swiftAnimationInfo];
  if (!v15)
  {
    v16 = a6;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s13AnimationInfoCMa();
    swift_allocObject();
    v18 = a7;
    v19 = v8;
    v20 = a8;
    v21 = v13;
    v13 = v8;
    v22 = sub_188A5DF40(v13, sub_188ABE000, v17);

    a6 = v16;

    v23 = v13;
    LODWORD(v13) = v21;
    a8 = v20;
    v9 = v19;
    a7 = v18;
    v15 = v22;
    [(UIView *)v23 set__swiftAnimationInfo:v22];
  }

  sub_188A3F29C(a1, &v109, &qword_1EA934050);
  if (*(&v110 + 1))
  {
    sub_188A55538(&v109, &v112);
    goto LABEL_10;
  }

  v24 = sub_188A5548C(a6, a7);
  if (v24 != 13)
  {
    v95 = v13;
    v13 = sub_188A59768(v24);
    v96 = a8;
    v97 = a6;
    v26 = v25;
    v27 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v13);
    v29 = &v94[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
    sub_18A4A8408();
    v30 = *(v26 + 80);
    v31 = v26;
    a6 = v97;
    v30(&v112, v13, v31);
    v32 = v13;
    LOBYTE(v13) = v95;
    (*(v27 + 8))(v29, v32);
    a8 = v96;
    if (!*(&v110 + 1))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v112 = 0u;
  v113 = 0u;
  if (*(&v110 + 1))
  {
LABEL_9:
    sub_188A3F5FC(&v109, &qword_1EA934050);
  }

LABEL_10:
  if (!*(&v113 + 1))
  {

    return sub_188A3F5FC(&v112, &qword_1EA934050);
  }

  sub_188A55538(&v112, &v116);
  signpost_c2_entryLock_start(v33, v34);
  os_unfair_lock_lock(v15[2] + 4);
  signpost_c2_entryLock_start(v35, v36);
  swift_beginAccess();
  v37 = v15[7];
  if (v37[2] && (v38 = sub_188A5E664(v13 & 1, a6, a7), (v39 & 1) != 0))
  {
    v97 = a6;
    v40 = *(v37[7] + 8 * v38);
    swift_endAccess();
    if (v100)
    {
      v41 = v40;
    }

    else
    {
      __swift_project_boxed_opaque_existential_0(&v116, v117);
      v76 = v40;
      v77 = sub_18A4A86A8();
      v78 = [(CAPresentationModifier *)v76 supportsNewValue:v77];
      swift_unknownObjectRelease();
      if (v78)
      {

        signpost_c2_entryLock_start(v79, v80);
        __swift_project_boxed_opaque_existential_0(&v116, v117);
        v81 = sub_18A4A86A8();
        sub_188A3F29C(v99, &v112, &qword_1EA934050);
        v82 = *(&v113 + 1);
        if (*(&v113 + 1))
        {
          v83 = __swift_project_boxed_opaque_existential_0(&v112, *(&v113 + 1));
          v84 = *(v82 - 8);
          MEMORY[0x1EEE9AC00](v83);
          v86 = &v94[-((v85 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v84 + 16))(v86);
          v87 = sub_18A4A86A8();
          (*(v84 + 8))(v86, v82);
          __swift_destroy_boxed_opaque_existential_0Tm(&v112);
        }

        else
        {
          v87 = 0;
        }

        [v76 setValue:v81 velocity:v87];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        signpost_c2_entryLock_start(v92, v93);

        os_unfair_lock_unlock(v15[2] + 4);
        goto LABEL_58;
      }
    }

    swift_beginAccess();

    a6 = v97;
    sub_188B5D644(0, v13 & 1, v97, a7);
    swift_endAccess();
    if (sub_188AAD93C())
    {
      v88 = v13;
      v89 = v40;
      v90 = v15[4];
      if (v90)
      {
        v15[4] = 0;
        v15[5] = 0;
        v90();

        v91 = v90;
        v40 = v89;
        sub_188A55B8C(v91);
      }

      else
      {
        v40 = v89;
      }

      LOBYTE(v13) = v88;
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
    v40 = 0;
  }

  swift_beginAccess();
  v42 = v15[8];
  v43 = v42[2];
  v97 = v40;
  if (!v43)
  {
    swift_endAccess();
    LOBYTE(v44) = v13 & 1;
    goto LABEL_26;
  }

  v44 = (v13 & 1);
  v45 = sub_188A5E664(v13 & 1, a6, a7);
  if ((v46 & 1) == 0)
  {
    swift_endAccess();
    goto LABEL_26;
  }

  v47 = *(v42[7] + 8 * v45);
  swift_endAccess();
  v48 = *(a8 + 352);
  v49 = __OFSUB__(v48, 1);
  v50 = v48 - 1;
  if (v49)
  {
    __break(1u);
    goto LABEL_61;
  }

  *(a8 + 352) = v50;
  swift_beginAccess();
  v51 = *(a8 + 136);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 136) = v51;
  if (result)
  {
    if ((v47 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  result = sub_189212B24(v51);
  v51 = result;
  *(a8 + 136) = result;
  if ((v47 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

LABEL_21:
  if (v47 >= v51[2])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v53 = &v51[2 * v47];
  v53[4] = signpost_c2_entryLock_start;
  v53[5] = 0;
  *(a8 + 136) = v51;
  swift_endAccess();

LABEL_26:
  sub_188A55598(&v116, &v112);
  sub_188A3F29C(v99, &v109, &qword_1EA934050);
  v54 = swift_allocObject();
  *(v54 + 16) = v9;
  sub_188A55538(&v112, (v54 + 24));
  v55 = v110;
  *(v54 + 56) = v109;
  *(v54 + 72) = v55;
  *(v54 + 88) = v98;
  *(v54 + 96) = v100 & 1;
  *(v54 + 104) = v44;
  *(v54 + 112) = a6;
  *(v54 + 120) = a7;
  *(v54 + 128) = v15;
  *(v54 + 136) = a8;
  v40 = v9;

  v56 = a6;
  v57 = sub_188AB7304(sub_188AA88F8, v54);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v109 = v15[8];
  v15[8] = 0x8000000000000000;
  sub_188AB7478(v57, v44, v56, a7, isUniquelyReferenced_nonNull_native);
  v15[8] = v109;
  swift_endAccess();
  if (sub_188AAD93C())
  {
    v59 = v15[4];
    if (v59)
    {
      v15[4] = 0;
      v15[5] = 0;
      v59();
      sub_188A55B8C(v59);
    }
  }

  v60 = sub_188AAD9E4();
  if (!v60)
  {
    a6 = v97;
    goto LABEL_39;
  }

  v61 = v60;
  v96 = a8;
  v115 = v60;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  *&v106 = 0;
  v104 = 0u;
  v105 = 0u;
  v112 = 0u;
  v113 = 0u;
  memset(v114, 0, 48);
  sub_188A4B4F4(&v109, &v112, &qword_1EA935C98);
  sub_188A4B4F4(&v104, &v114[8], &qword_1EA935C98);
  sub_188A83170(&v112, &v109);
  sub_188A3F29C(&v109, &v104, &qword_1EA935CA0);
  if (*(&v105 + 1) == 1)
  {
    v62 = v40;

    sub_188A3F5FC(&v104, &qword_1EA935CA0);
    sub_1891E97B0(v62, v56, a7, v103);

    sub_188A3F5FC(v103, &qword_1EA935CA0);
    sub_188A3F5FC(&v109, &qword_1EA935CA0);
    v63 = v115;
  }

  else
  {
    v103[2] = v106;
    v103[3] = v107;
    v103[4] = v108;
    v103[0] = v104;
    v103[1] = v105;
    v64 = v40;

    v65 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v61;
    sub_188A82100(v103, v64, v56, a7, v65);

    sub_188A3F5FC(&v109, &qword_1EA935CA0);
    v63 = v101;
    v115 = v101;
  }

  if (pthread_main_np() != 1)
  {
    v66 = [objc_opt_self() currentThread];
    v42 = [v66 threadDictionary];

    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934CB0);
    v68 = objc_allocWithZone(v67);
    *&v68[*((*MEMORY[0x1E69E7D40] & *v68) + 0x58)] = v63;
    v102.receiver = v68;
    v102.super_class = v67;
    v44 = objc_msgSendSuper2(&v102, sel_init);
    a6 = v97;
    if (qword_1ED48F7A8 == -1)
    {
LABEL_37:
      [v42 setObject:v44 forKey:qword_1ED48F7B0];

      goto LABEL_38;
    }

LABEL_61:
    swift_once();
    goto LABEL_37;
  }

  qword_1EA935C88 = v63;

  a6 = v97;
LABEL_38:
  sub_188A8F7CC(&v112);
LABEL_39:
  os_unfair_lock_unlock(v15[2] + 4);
  if (!a6)
  {
LABEL_58:

    return __swift_destroy_boxed_opaque_existential_0Tm(&v116);
  }

  if (pthread_main_np() != 1)
  {
    v75 = swift_allocObject();
    *(v75 + 16) = v15;
    *(v75 + 24) = a6;

    v72 = a6;
    sub_188A32084(sub_188EB2CA8, v75);

LABEL_46:

    return __swift_destroy_boxed_opaque_existential_0Tm(&v116);
  }

  signpost_c2_entryLock_start(v69, v70);
  result = [v40 _outermostLayer];
  if (result)
  {
    v71 = result;
    v72 = [v40 layer];
    [v72 removePresentationModifier_];
    sub_188A34624(0, &qword_1ED48E970);
    if ((sub_18A4A7C88() & 1) == 0)
    {
      [v71 removePresentationModifier_];
    }

    signpost_c2_entryLock_start(v73, v74);

    goto LABEL_46;
  }

LABEL_65:
  __break(1u);
  return result;
}