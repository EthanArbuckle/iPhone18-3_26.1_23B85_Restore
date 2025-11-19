uint64_t sub_1D98E0B28()
{
  v1 = *(v0 + 128);
  if (*(v0 + 144))
  {
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = OUTLINED_FUNCTION_20();
    v3(v7, v1, v6);
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 16) = v4;
    result = sub_1D9889568();
    if (__OFADD__(*(v4 + 16), (v9 & 1) == 0))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v10 = result;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48800, &qword_1D9931B28);
    if (sub_1D992BE34())
    {
      v12 = *(v0 + 16);
      v13 = sub_1D9889568();
      if ((v11 & 1) != (v14 & 1))
      {
        v15 = *(v0 + 40);
        OUTLINED_FUNCTION_28_5();

        return sub_1D992BFC4();
      }

      v10 = v13;
    }

    v18 = *(v0 + 16);
    v19 = *(v0 + 144);
    v20 = *(v0 + 128);
    if (v11)
    {
      v21 = *(v0 + 40);
      v22 = *(v0 + 48);
      v23 = v18[7];
      v24 = *(v23 + 8 * v10);
      *(v23 + 8 * v10) = v19;

      v25 = *(v22 + 8);
      v25(v7, v21);
      v25(v20, v21);
    }

    else
    {
      v27 = *(v0 + 112);
      v26 = *(v0 + 120);
      v28 = *(v0 + 104);
      v29 = *(v0 + 40);
      v30 = *(v0 + 48);
      v18[(v10 >> 6) + 8] |= 1 << v10;
      v27(v18[6] + v28 * v10, v7, v29);
      *(v18[7] + 8 * v10) = v19;
      v31 = *(v30 + 8);
      v31(v7, v29);
      result = (v31)(v20, v29);
      v32 = v18[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      v18[2] = v34;
    }

    v17 = v18;
  }

  else
  {
    (*(*(v0 + 48) + 8))(*(v0 + 128), *(v0 + 40));
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
  }

  v35 = *(v0 + 128);

  v37 = *(v0 + 88);
  v36 = *(v0 + 96);
  *(v0 + 72) = v18;
  *(v0 + 80) = v17;
  v38 = (v37 - 1) & v37;
  if (!v38)
  {
    while (1)
    {
      v40 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v40 >= (((1 << *(v0 + 152)) + 63) >> 6))
      {
        v53 = *(v0 + 64);
        v54 = *(v0 + 24);

        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_28_5();

        __asm { BRAA            X2, X16 }
      }

      v39 = *(v0 + 24);
      v38 = *(v39 + 8 * v40 + 56);
      ++v36;
      if (v38)
      {
        v36 = v40;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v39 = *(v0 + 24);
LABEL_21:
  *(v0 + 88) = v38;
  *(v0 + 96) = v36;
  v41 = *(v0 + 64);
  v42 = *(v0 + 40);
  v43 = *(v0 + 48);
  v44 = *(v0 + 56) + 15;
  v45 = *(v39 + 48);
  v46 = OUTLINED_FUNCTION_12_11();
  v47(v46);
  v48 = swift_task_alloc();
  v49 = OUTLINED_FUNCTION_25_5(v48);
  v50(v49);
  v51 = swift_task_alloc();
  *(v0 + 136) = v51;
  *v51 = v0;
  OUTLINED_FUNCTION_7_17();
  OUTLINED_FUNCTION_28_5();

  return sub_1D98E39A8();
}

uint64_t sub_1D98E11DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98E11F0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0[3] + OBJC_IVAR___SiriAnalyticsLogicalClocksProvider_provider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D98A0C24;
  v3 = OUTLINED_FUNCTION_93(v0[2]);

  return sub_1D98E271C(v3);
}

uint64_t sub_1D98E1314(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v3[4] = v7;
  if (a1)
  {
    sub_1D992AE64();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  a3;
  v10 = swift_task_alloc();
  v3[5] = v10;
  *v10 = v3;
  v10[1] = sub_1D98E1444;

  return sub_1D98E11DC(v7);
}

uint64_t sub_1D98E1444()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_29();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  OUTLINED_FUNCTION_17();
  *v7 = v6;

  sub_1D98E3DA0(v3, &qword_1ECB481D0, &qword_1D992F9F0);

  v4[2](v4);
  _Block_release(v4);
  OUTLINED_FUNCTION_25();

  return v8();
}

id LogicalClocksProviderShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LogicalClocksProviderShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogicalClocksProviderShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D98E165C(void *a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  v3[4] = v7;
  v3[5] = a3;
  v8 = a1;
  v9 = a2;
  return v3;
}

void sub_1D98E16C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_2();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v36 = OUTLINED_FUNCTION_9(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &a9 - v39;
  sub_1D992B874();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v26;
  v45[5] = v24;
  v45[6] = v20;
  v45[7] = v34;
  v45[8] = v32;
  v45[9] = v30;
  v45[10] = v28;

  sub_1D98C8F14(0, 0, v40, &unk_1D9934A60, v45);

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98E17E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D98E1818, 0, 0);
}

uint64_t sub_1D98E1818()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0[7] + 40);
  v7 = (v0[5] + *v0[5]);
  v2 = *(v0[5] + 4);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1D98E190C;
  v4 = v0[6];
  v5 = OUTLINED_FUNCTION_19();

  return v7(v5);
}

uint64_t sub_1D98E190C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_17();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v12();
  }
}

uint64_t sub_1D98E1A20()
{
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v2 = v1[13];
  v4 = v1[10];
  v3 = v1[11];
  v6 = v1[8];
  v5 = v1[9];
  OUTLINED_FUNCTION_18_7();
  v1[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(*v0, v1[3], v6, v5, v4, v3);

  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_1D98E1D44(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 72) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D98E1D6C, 0, 0);
}

uint64_t sub_1D98E1D6C()
{
  OUTLINED_FUNCTION_26();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_20();
  sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  result = __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  if (qword_1ECB47DD0 != -1)
  {
    result = OUTLINED_FUNCTION_63();
  }

  v9 = *(v0 + 40);
  if (v9 != -1 && qword_1ECB47DC8 != HIDWORD(qword_1ECB47DC8))
  {
    if (is_mul_ok(v9, qword_1ECB47DC8))
    {
      if (!HIDWORD(qword_1ECB47DC8))
      {
        __break(1u);
        return result;
      }

      v9 = v9 * qword_1ECB47DC8 / HIDWORD(qword_1ECB47DC8);
    }

    else
    {
      v9 = -1;
    }
  }

  v11 = *(v0 + 72);
  *(v0 + 16) = v9;
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_32_6(v12);
  *v13 = v14;
  v13[1] = sub_1D98E1EBC;
  v15 = *(v0 + 24);
  OUTLINED_FUNCTION_93(*(v0 + 32));

  return sub_1D9877220();
}

uint64_t sub_1D98E1EBC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_17();
  *v7 = v6;
  *(v3 + 64) = v0;

  sub_1D98E3DA0(v5, &qword_1ECB481D0, &qword_1D992F9F0);
  if (v0)
  {
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v11 = *(v3 + 48);

    OUTLINED_FUNCTION_25();

    return v12();
  }
}

uint64_t sub_1D98E21CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D98E21F0, 0, 0);
}

void sub_1D98E21F0()
{
  OUTLINED_FUNCTION_18();
  if (qword_1ECB47DD0 != -1)
  {
    OUTLINED_FUNCTION_63();
  }

  v1 = v0[6];
  if (v1 != -1 && qword_1ECB47DC8 != HIDWORD(qword_1ECB47DC8))
  {
    if (is_mul_ok(v1, qword_1ECB47DC8))
    {
      if (!HIDWORD(qword_1ECB47DC8))
      {
        __break(1u);
        return;
      }

      v1 = v1 * qword_1ECB47DC8 / HIDWORD(qword_1ECB47DC8);
    }

    else
    {
      v1 = -1;
    }
  }

  v0[2] = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32_6(v3);
  *v4 = v5;
  v4[1] = sub_1D98E22E8;
  v6 = v0[4];
  v7 = v0[3];
  OUTLINED_FUNCTION_93(v0[5]);

  sub_1D98781C8();
}

uint64_t sub_1D98E22E8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_17();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v12();
  }
}

uint64_t sub_1D98E23FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D98E2424, a1, 0);
}

uint64_t sub_1D98E2424()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  *(v0 + 48) = sub_1D98787B4(*(v0 + 32));
  *(v0 + 72) = v2;
  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1D98E2488()
{
  OUTLINED_FUNCTION_18();
  if (*(v0 + 72))
  {
    OUTLINED_FUNCTION_25();

    v1();
  }

  else
  {
    if (qword_1ECB47DD0 != -1)
    {
      OUTLINED_FUNCTION_63();
    }

    v2 = *(v0 + 40);
    if (v2 != -1 && qword_1ECB47DC8 != HIDWORD(qword_1ECB47DC8))
    {
      if (is_mul_ok(v2, qword_1ECB47DC8))
      {
        if (!HIDWORD(qword_1ECB47DC8))
        {
          __break(1u);
          return;
        }

        v2 = v2 * qword_1ECB47DC8 / HIDWORD(qword_1ECB47DC8);
      }

      else
      {
        v2 = -1;
      }
    }

    *(v0 + 16) = v2;
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_32_6(v4);
    *v5 = v6;
    v5[1] = sub_1D98E25B8;
    v7 = *(v0 + 24);
    OUTLINED_FUNCTION_93(*(v0 + 48));

    sub_1D9877A40();
  }
}

uint64_t sub_1D98E25B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_17();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v12();
  }
}

uint64_t sub_1D98E26CC()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 64);
  return v2();
}

uint64_t sub_1D98E26F0()
{
  result = sub_1D9869848();
  if ((result & 1) == 0)
  {
    v2 = *(v0 + 16);
    return sub_1D989912C();
  }

  return result;
}

uint64_t sub_1D98E271C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98E2730()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1D9869848();
  v2 = v0[6];
  if (v1)
  {
    v3 = *(v2 + 40);
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_32_6(v4);
    *v5 = v6;
    v5[1] = sub_1D98E2824;
    OUTLINED_FUNCTION_93(v0[5]);

    return sub_1D9879198();
  }

  else
  {
    v0[9] = *(v2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
    sub_1D98AB1B0();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_33_5();
    v8 = OUTLINED_FUNCTION_17_8();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1D98E2824()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_17();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v12();
  }
}

uint64_t sub_1D98E2998()
{
  OUTLINED_FUNCTION_26();
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v2 = v1[8];
  OUTLINED_FUNCTION_18_7();
  v1[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(*v0, v1[3], 0xD00000000000007DLL, 0x80000001D993BB40, 0xD00000000000002ELL, 0x80000001D9936E00);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t dispatch thunk of LogicalClocksProviderShim.cleanupAbandonedClocks(activeClockIdentifier:)()
{
  OUTLINED_FUNCTION_26();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_12(v3);
  *v4 = v5;
  v4[1] = sub_1D98692C4;
  v6 = OUTLINED_FUNCTION_19();

  return v8(v6);
}

uint64_t sub_1D98E2CE4()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E00, &qword_1D9934AB8);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = OUTLINED_FUNCTION_20();
  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D98E2D68()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1D9869848();
  v2 = v0[2];
  if (v1)
  {
    v3 = *(v2 + 40);
    v0[4] = v3;
    v4 = sub_1D98E2E14;
    v5 = 0;
  }

  else
  {
    v0[6] = *(v2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
    sub_1D98AB1B0();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_33_5();
    v4 = OUTLINED_FUNCTION_17_8();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v5);
}

uint64_t sub_1D98E2E14()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 40) = *(*(v0 + 32) + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream);

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D98E2E8C()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1D98E046C(v0[5], 0);

  v2 = v0[3];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1D98E2F08()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 48) + 24);
  type metadata accessor for LogicalClocksTable.Predicate(0);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_1D98EF554();
  sub_1D98E3DA0(v1, &qword_1ECB48E00, &qword_1D9934AB8);
  v7 = *(v0 + 24);

  v8 = OUTLINED_FUNCTION_21();

  return v9(v8);
}

uint64_t sub_1D98E2FA8()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48370, &qword_1D9934A50);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_20();
  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D98E302C()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1D9869848();
  v2 = v0[3];
  if (v1)
  {
    v3 = *(v2 + 40);
    v0[5] = v3;
    v4 = sub_1D98E30D8;
    v5 = 0;
  }

  else
  {
    v0[6] = *(v2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
    sub_1D98AB1B0();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_33_5();
    v4 = OUTLINED_FUNCTION_17_8();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v5);
}

uint64_t sub_1D98E30D8()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[5];
  v2 = v0[2];
  sub_1D9879098(v0[4]);
  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98E3138()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for RootLogicalClock();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1D98E3DA0(v1, &qword_1ECB48370, &qword_1D9934A50);
  }

  else
  {
    v3 = sub_1D992AE84();
    OUTLINED_FUNCTION_6(v3);
    v5 = v4;
    v7 = *(v6 + 64) + 15;
    v8 = swift_task_alloc();
    v9 = *(v5 + 16);
    v9(v8, v1, v3);
    v10 = v2[5];
    v11 = swift_task_alloc();
    v9(v11, v1 + v10, v3);
    v12 = v2[7];
    v13 = *(v1 + v2[6]);
    v14 = v2[9];
    v15 = v1 + v2[8];
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = *v15;
    }

    v18 = *(v1 + v12);
    v19 = *(v1 + v14);
    v20 = type metadata accessor for LogicalClockRecord();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_1D98C5504(v8, v11, v13, v17, v16, v18, 0, v19, v16);

    OUTLINED_FUNCTION_13_9();
  }

  v23 = *(v0 + 32);

  v24 = OUTLINED_FUNCTION_21();

  return v25(v24);
}

uint64_t sub_1D98E3318()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0[6] + 24);
  sub_1D98EE548(v0[2]);
  v2 = v0[4];

  v3 = OUTLINED_FUNCTION_21();

  return v4(v3);
}

uint64_t sub_1D98E3384()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48370, &qword_1D9934A50);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_20();
  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D98E340C()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1D9869848();
  v2 = v0[4];
  if (v1)
  {
    v3 = *(v2 + 40);
    v0[6] = v3;
    v4 = sub_1D98E34B8;
    v5 = 0;
  }

  else
  {
    v0[7] = *(v2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
    sub_1D98AB1B0();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_33_5();
    v4 = OUTLINED_FUNCTION_17_8();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v5);
}

uint64_t sub_1D98E34B8()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[6];
  v2 = v0[3];
  sub_1D98790B0(v0[5]);
  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98E3518()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 40);
  v2 = type metadata accessor for RootLogicalClock();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = *(v0 + 16);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D98E3DA0(v1, &qword_1ECB48370, &qword_1D9934A50);
    sub_1D992AE84();
    OUTLINED_FUNCTION_10_4();
  }

  else
  {
    v9 = sub_1D992AE84();
    (*(*(v9 - 8) + 16))(v4, v1, v9);
    OUTLINED_FUNCTION_13_9();
    v5 = v4;
    v6 = 0;
    v7 = 1;
    v8 = v9;
  }

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v10 = *(v0 + 40);

  OUTLINED_FUNCTION_25();

  return v11();
}

uint64_t sub_1D98E3628()
{
  OUTLINED_FUNCTION_18();
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0[7] + 24);
  sub_1D98EE774();
  v4 = v0[5];

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1D98E3690()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1D98E36C8()
{
  sub_1D98E3690();

  return swift_deallocClassInstance();
}

uint64_t sub_1D98E3720(uint64_t a1)
{
  v3 = v1[3];
  v15 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = v1[10];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_2_12(v11);
  *v12 = v13;
  v12[1] = sub_1D989EB64;

  return sub_1D98E17E4(a1, v15, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1D98E3810()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2_12(v4);
  *v5 = v6;
  v5[1] = sub_1D98692C4;
  v7 = OUTLINED_FUNCTION_19();

  return v8(v7, v2, v3);
}

uint64_t sub_1D98E38B8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v1 = sub_1D992AE84();
  OUTLINED_FUNCTION_23(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_12(v5);
  *v6 = v7;
  v6[1] = sub_1D989EB64;
  v8 = OUTLINED_FUNCTION_19();

  return sub_1D98E23FC(v8, v9, v4);
}

uint64_t sub_1D98E39A8()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_12(v0);
  *v1 = v2;
  v1[1] = sub_1D98E3A30;
  OUTLINED_FUNCTION_19();

  return sub_1D98E2FA8();
}

uint64_t sub_1D98E3A30()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v2 = v1;
  v4 = *(v3 + 16);
  *v2 = *v0;
  *(v1 + 24) = v5;

  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D98E3B18()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_derivativeClockIDs);
  }

  v3 = OUTLINED_FUNCTION_21();

  return v4(v3);
}

uint64_t sub_1D98E3B98()
{
  OUTLINED_FUNCTION_13_0();
  v1 = sub_1D992AE84();
  OUTLINED_FUNCTION_23(v1);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_12(v6);
  *v7 = v8;
  v7[1] = sub_1D98692C4;
  v9 = OUTLINED_FUNCTION_19();

  return sub_1D98E21CC(v9, v4, v10, v5);
}

uint64_t sub_1D98E3C9C()
{
  OUTLINED_FUNCTION_13_0();
  v1 = sub_1D992AE84();
  OUTLINED_FUNCTION_23(v1);
  v4 = ((*(v2 + 80) + 16) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = *(v0 + v4);
  v6 = *(v0 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_12(v7);
  *v8 = v9;
  v8[1] = sub_1D98692C4;
  v10 = OUTLINED_FUNCTION_19();

  return sub_1D98E1D44(v10, v11, v5, v6);
}

uint64_t sub_1D98E3DA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1D98E3DF4()
{
  v1 = OUTLINED_FUNCTION_13_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_0_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1D98E3E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootLogicalClock();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return sub_1D98E3DF4();
}

uint64_t sub_1D98E3EF8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 64) + 40);
  v4 = sub_1D992AD44();
  (*(*(v4 - 8) + 32))(v3, a2, v4);

  return swift_continuation_resume();
}

uint64_t sub_1D98E3F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_resume();
}

uint64_t PluginStateService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t PluginStateService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1D98E3FE0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98E3FF8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_1D988CFCC();
  v0[21] = v4;
  v5 = sub_1D992AD74();
  v0[22] = v5;
  v0[2] = v0;
  v0[3] = sub_1D98E4124;
  v6 = swift_continuation_init();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48670, &qword_1D99309F0);
  OUTLINED_FUNCTION_5_18(v7);
  v0[11] = 1107296256;
  v0[12] = sub_1D988D6BC;
  v0[13] = &block_descriptor_12;
  v0[14] = v6;
  [v4 saveState:v5 forPluginWithCompletion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D98E4124()
{
  OUTLINED_FUNCTION_18();
  v4 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D98E41F8, 0, 0);
}

uint64_t sub_1D98E41F8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D98E4284()
{
  v1 = v0[20];
  v2 = sub_1D988CFCC();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D98E4394;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB48E10, &qword_1D9934AF8);
  OUTLINED_FUNCTION_5_18(v4);
  v0[11] = 1107296256;
  v0[12] = sub_1D98E44D0;
  v0[13] = &block_descriptor_3_1;
  v0[14] = v3;
  [v2 fetchStateForPluginWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D98E4394()
{
  OUTLINED_FUNCTION_18();
  v4 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D98E4468, 0, 0);
}

uint64_t sub_1D98E4468()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_1D98E44D0(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = sub_1D992AD84();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  return sub_1D98E3F8C(v3, a2, v6);
}

uint64_t PluginStateService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of PluginStateService.save(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D988D0F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of PluginStateService.fetch()()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98E482C;

  return v6();
}

uint64_t sub_1D98E482C()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v5 = *(*v0 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_17();
  *v7 = v6;

  v8 = *(v6 + 8);

  return v8(v4, v2);
}

uint64_t sub_1D98E492C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D98E4968(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D98E49A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D98E4A08(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a2;
  v5 = type metadata accessor for IdentifiableTag();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = 0;
  v13 = *(a3 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v12)
    {

      return;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = *(v6 + 72);
    sub_1D98BA908(a3 + v14 + v15 * v12, v11);
    v16 = v26(v11);
    if (v3)
    {
      sub_1D98BA96C(v11);

      return;
    }

    if (v16)
    {
      sub_1D98E8260(v11, v24);
      v17 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = *(v17 + 16);
        sub_1D98B9D78();
        v17 = v28;
      }

      v20 = *(v17 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v17 + 24) >> 1)
      {
        v25 = v20 + 1;
        v23 = v20;
        sub_1D98B9D78();
        v21 = v25;
        v20 = v23;
        v17 = v28;
      }

      ++v12;
      *(v17 + 16) = v21;
      v25 = v17;
      sub_1D98E8260(v24, v17 + v14 + v20 * v15);
    }

    else
    {
      sub_1D98BA96C(v11);
      ++v12;
    }
  }

  __break(1u);
}

uint64_t sub_1D98E4C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EA0, &qword_1D9934BD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  result = sub_1D986C878(a1);
  if (v10)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    v11 = sub_1D98E806C(v7, result, v9, 0, a1);
    v13 = v12;
    v15 = v14;
    v16 = sub_1D992B1E4();
    (*(*(v16 - 8) + 32))(a2, v7, v16);
    v17 = a2 + *(v4 + 48);
    *v17 = v11;
    *(v17 + 8) = v13;
    *(v17 + 16) = v15 & 1;
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }
}

void sub_1D98E4DC0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a1;
  v9 = qword_1ECB47B38;
  v10 = a3;
  v11 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = byte_1ECB49690;

  *a4 = v8;
  *(a4 + 8) = a2;
  *(a4 + 16) = v12;
  v13 = MEMORY[0x1E69E7CC8];
  *(a4 + 24) = MEMORY[0x1E69E7CC8];
  *(a4 + 32) = v13;
}

uint64_t sub_1D98E4E88(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98E4EA0()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[7];
  v2 = sub_1D992AE84();
  v0[10] = v2;
  v3 = *(v2 - 8);
  v0[11] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v0[12] = v5;
  sub_1D992B134();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1D98E4F9C;
  v7 = v0[9];

  return sub_1D98E5D94(v5);
}

uint64_t sub_1D98E4F9C()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v5 = *(v4 + 104);
  *v3 = *v0;
  *(v2 + 112) = v6;

  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D98E508C()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = *(v2 + 32);
    v4 = sub_1D98B3970(*(v0 + 96), v3);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 16))
      {
        v6 = *(v0 + 64);
        v7 = *(v0 + 72);
        v8 = *(v0 + 56);
        v9 = *(v7 + 8);
        v10 = *(v7 + 16);
        v11 = *(v7 + 24);
        *(v0 + 24) = v9;
        *(v0 + 32) = v10;
        *(v0 + 40) = v11;
        *(v0 + 48) = v3;
        v26 = sub_1D98E7494(v1, v8, v6);
        v28 = v27;
        v30 = v29;

        v32 = sub_1D98E5CA0(v26, v31, v30);
        if (v32)
        {
          v33 = [v5 hasRedactedEvents];
          v35 = *(v0 + 88);
          v34 = *(v0 + 96);
          v36 = *(v0 + 80);
          if ((v33 & 1) == 0)
          {
            [v5 setHasRedactedEvents_];
            v37 = *(v2 + 32);
            swift_isUniquelyReferenced_nonNull_native();
            v38 = *(v2 + 32);
            sub_1D989E078();
            *(v2 + 32) = v38;
            (*(v35 + 8))(v34, v36);
            goto LABEL_9;
          }

          (*(v35 + 8))(*(v0 + 96), *(v0 + 80));
        }

        else
        {
          (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
        }

LABEL_9:
        v16 = *(v0 + 96);

        v17 = *(v0 + 8);

        return v17(v26, v28, v30);
      }

      v21 = *(v0 + 64);

      v22 = [v21 unwrap];
      v24 = *(v0 + 88);
      v23 = *(v0 + 96);
      v25 = *(v0 + 80);
      if (v22)
      {
        v26 = v22;
        (*(v24 + 8))(*(v0 + 96), *(v0 + 80));

        goto LABEL_8;
      }

      sub_1D98E8150();
      OUTLINED_FUNCTION_12_12();
      swift_allocError();
      swift_willThrow();

      (*(v24 + 8))(v23, v25);
      goto LABEL_13;
    }
  }

  v12 = [*(v0 + 64) unwrap];
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);
  v15 = *(v0 + 80);
  if (v12)
  {
    v26 = v12;
    (*(v14 + 8))(*(v0 + 96), *(v0 + 80));
LABEL_8:
    v28 = 0;
    v30 = 0;
    goto LABEL_9;
  }

  sub_1D98E8150();
  OUTLINED_FUNCTION_12_12();
  swift_allocError();
  swift_willThrow();
  (*(v14 + 8))(v13, v15);
LABEL_13:
  v19 = *(v0 + 96);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D98E53EC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EA0, &qword_1D9934BD0);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  if ((a3 & 0x80) == 0)
  {
    return a3 & 1;
  }

  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  OUTLINED_FUNCTION_1_5();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;

  v19 = 0;
  while (v15)
  {
    v20 = v19;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v22 = v21 | (v20 << 6);
    v23 = *(a1 + 48);
    v24 = sub_1D992B1E4();
    OUTLINED_FUNCTION_5(v24);
    (*(v25 + 16))(v10, v23 + *(v25 + 72) * v22);
    v26 = *(a1 + 56) + 24 * v22;
    v28 = *v26;
    v27 = *(v26 + 8);
    LOBYTE(v22) = *(v26 + 16);
    v29 = &v10[*(v5 + 48)];
    *v29 = v28;
    *(v29 + 1) = v27;
    v29[16] = v22;

    v30 = v28;
    result = sub_1D986B804(v10, &qword_1ECB48EA0, &qword_1D9934BD0);
    if ((v22 & 1) == 0)
    {

      a3 = 0;
      return a3 & 1;
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      a3 = 1;
      return a3 & 1;
    }

    v15 = *(a1 + 64 + 8 * v20);
    ++v19;
    if (v15)
    {
      v19 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98E5594(void *a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EA8, &qword_1D9934BD8);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_20_0();
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v9;
  if ((a3 & 0x80) == 0)
  {
    v12 = [a1 qualifiedMessageName];
LABEL_6:
    v14 = sub_1D992B624();

    return v14;
  }

  sub_1D98E4C38(a1, &v21 - v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EA0, &qword_1D9934BD0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) != 1)
  {
    v15 = &v11[*(v13 + 48)];
    v17 = *v15;
    v16 = *(v15 + 1);

    v12 = [v17 qualifiedMessageName];

    v18 = sub_1D992B1E4();
    OUTLINED_FUNCTION_5(v18);
    (*(v19 + 8))(v11);
    goto LABEL_6;
  }

  sub_1D986B804(v11, &qword_1ECB48EA8, &qword_1D9934BD8);
  return 0;
}

void sub_1D98E5708(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EA0, &qword_1D9934BD0);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  if (a3 < 0)
  {
    v11 = *(a1 + 64);
    v12 = *(a1 + 32);
    OUTLINED_FUNCTION_1_5();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;

    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    while (v15)
    {
LABEL_9:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v18 << 6);
      v23 = *(a1 + 48);
      v24 = sub_1D992B1E4();
      OUTLINED_FUNCTION_5(v24);
      (*(v25 + 16))(v10, v23 + *(v25 + 72) * v22);
      v26 = *(a1 + 56) + 24 * v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      LOBYTE(v26) = *(v26 + 16);
      v29 = &v10[*(v5 + 48)];
      *v29 = v27;
      *(v29 + 1) = v28;
      v29[16] = v26;
      swift_bridgeObjectRetain_n();
      v30 = v27;
      sub_1D986B804(v10, &qword_1ECB48EA0, &qword_1D9934BD0);
      if (v28)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = *(v19 + 16);
          v35 = OUTLINED_FUNCTION_1();
          sub_1D98BDDD4(v35, v36, v37, v19);
          v19 = v38;
        }

        v32 = *(v19 + 16);
        v31 = *(v19 + 24);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v54 = v32 + 1;
          sub_1D98BDDD4(v31 > 1, v32 + 1, 1, v19);
          v33 = v54;
          v19 = v39;
        }

        *(v19 + 16) = v33;
        *(v19 + 8 * v32 + 32) = v28;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        v40 = 0;
        v41 = *(v19 + 16);
        v42 = MEMORY[0x1E69E7CC0];
        while (v41 != v40)
        {
          if (v40 >= *(v19 + 16))
          {
            goto LABEL_31;
          }

          v43 = v19 + 8 * v40;
          v44 = *(v43 + 32);
          v45 = *(v44 + 16);
          v46 = *(v42 + 16);
          if (__OFADD__(v46, v45))
          {
            goto LABEL_32;
          }

          v47 = *(v43 + 32);

          if (!swift_isUniquelyReferenced_nonNull_native() || v46 + v45 > *(v42 + 24) >> 1)
          {
            sub_1D98BDC04();
            v42 = v48;
          }

          if (*(v44 + 16))
          {
            v49 = *(v42 + 16);
            if ((*(v42 + 24) >> 1) - v49 < v45)
            {
              goto LABEL_34;
            }

            memcpy((v42 + 4 * v49 + 32), (v44 + 32), 4 * v45);

            if (v45)
            {
              v50 = *(v42 + 16);
              v51 = __OFADD__(v50, v45);
              v52 = v50 + v45;
              if (v51)
              {
                goto LABEL_35;
              }

              *(v42 + 16) = v52;
            }
          }

          else
          {

            if (v45)
            {
              goto LABEL_33;
            }
          }

          ++v40;
        }

        return;
      }

      v15 = *(a1 + 64 + 8 * v20);
      ++v18;
      if (v15)
      {
        v18 = v20;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
  }
}

void *sub_1D98E5A14(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v4 = a2;
  if (a4 < 0)
  {
    if (!a2[2])
    {
      return 0;
    }

    v6 = sub_1D98898F4();
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v8 = v4[7] + 24 * v6;
    v4 = *v8;
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
  }

  v5 = v4;
  return v4;
}

id sub_1D98E5A98()
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result innerEvent];
  }

  return result;
}

uint64_t sub_1D98E5AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D98BA058(v2, v10);
    v4 = v10[0];
    sub_1D98BA0B4(v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = *(v3 + 16);
      sub_1D98BDC04();
      v3 = v7;
    }

    v5 = *(v3 + 16);
    if (v5 >= *(v3 + 24) >> 1)
    {
      sub_1D98BDC04();
      v3 = v8;
    }

    *(v3 + 16) = v5 + 1;
    *(v3 + 4 * v5 + 32) = v4;
    v2 += 48;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1D98E5BCC(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[4];
  v10 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v9);
  return (*(v10 + 8))(a2, a3 & 1, a4, a5, v9, v10) & 1;
}

uint64_t sub_1D98E5C60()
{
  sub_1D992C074();
  MEMORY[0x1DA73A5D0](0);
  return sub_1D992C0C4();
}

uint64_t sub_1D98E5CA0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1D992B1E4();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v13 = v12 - v11;
  if (a3 < 0)
  {
    sub_1D992B1D4();
    v14 = sub_1D98B0FB4(v13, a1);
    a3 = v15;
    (*(v8 + 8))(v13, v5);
    if (v14)
    {
    }

    else
    {
      a3 = 0;
    }
  }

  return a3 & 1;
}

uint64_t sub_1D98E5D94(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98E5DA8()
{
  v1 = v0[6];
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v3 = v0[5];
    v4 = sub_1D9889568();
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
      if (v6)
      {
      }

      v7 = v0[1];

      return v7(v6);
    }

    v1 = v0[6];
  }

  v9 = sub_1D992AE84();
  v0[7] = v9;
  v10 = *(v9 - 8);
  v0[8] = v10;
  v11 = *(v10 + 64) + 15;
  v0[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = *(v1 + 8);
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_1D98E5F48;
  v16 = v0[5];

  return sub_1D98E3384();
}

uint64_t sub_1D98E5F48()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 96);
  v2 = *v0;
  OUTLINED_FUNCTION_16();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D98E6034()
{
  v1 = v0[10];
  v2 = v0[7];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[9];
  if (EnumTagSinglePayload == 1)
  {
    sub_1D986B804(v1, &qword_1ECB481D0, &qword_1D992F9F0);

    v5 = v0[1];

    return v5(0);
  }

  else
  {
    v7 = v0[8];
    (*(v7 + 32))(v0[9], v1, v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48AC0, &qword_1D9932730);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D992FCB0;
    (*(v7 + 16))(v10 + v9, v4, v2);
    sub_1D98B399C();
    v12 = v11;
    v0[13] = v11;
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_1D98E61F8;
    v14 = v0[11];

    return sub_1D98E0810(v12);
  }
}

uint64_t sub_1D98E61F8()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *(v4 + 104);
  v7 = *v0;
  OUTLINED_FUNCTION_16();
  *v8 = v7;
  *(v10 + 120) = v9;

  v11 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D98E6304()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 128) = **(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
  sub_1D98AB1B0();
  v2 = sub_1D992B814();
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D98E639C, v2, v1);
}

uint64_t sub_1D98E639C()
{
  v1 = v0[15];
  v2 = *(v0[16] + 24);
  v3 = MEMORY[0x1E69E7CC8];
  v0[2] = v2;
  v0[3] = v1;
  v0[4] = v3;
  v5 = v0[17];
  v4 = v0[18];
  v6 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D98E6430, v5, v4);
}

uint64_t sub_1D98E6430()
{
  v6 = v0;
  sub_1D98E69AC((*(v0 + 128) + 24), *(v0 + 40), *(v0 + 72), v0 + 16, *(v0 + 48), v5);
  *(v0 + 152) = *v5;
  v1 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

id sub_1D98E64AC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69CED48]) init];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 152);
    v4 = *(v0 + 120);

    [v2 setHasRedactedEvents_];
    if (v3)
    {
      v6 = *(v0 + 152);
      v5 = *(v0 + 160);

      sub_1D98E7320(v2, v6);
    }

    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = v2;
    v10 = *(v7 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v59 = v9;
    v60 = *(v7 + 32);
    sub_1D989E078();
    *(v7 + 32) = v60;
    if (v3)
    {
      v56 = *(v0 + 152);
      v11 = *(v0 + 160);
      if (qword_1ED8BD6E0 != -1)
      {
        OUTLINED_FUNCTION_0_43();
        swift_once();
        v11 = *(v0 + 160);
      }

      v12 = *(v0 + 64);
      v51 = v11;
      v52 = *(v0 + 72);
      v14 = *(v0 + 48);
      v13 = *(v0 + 56);
      v15 = *(v0 + 40);
      v49 = qword_1ECB49640;
      OUTLINED_FUNCTION_9_13();
      sub_1D992BD64();
      OUTLINED_FUNCTION_15_5();

      v17 = sub_1D98E5AE8(v16);

      type metadata accessor for SISchemaDeviceSensitivityState(0);
      v19 = MEMORY[0x1DA739D10](v17, v18);
      v21 = v20;

      MEMORY[0x1DA739C30](v19, v21);

      OUTLINED_FUNCTION_15_5();
      sub_1D9882D14(&qword_1ED8BD8D0);
      v22 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v22);

      sub_1D986A454(v60, v63, 0xD000000000000072, 0x80000001D993BCD0, 0xD000000000000019, 0x80000001D993BDD0);

      v23 = *(v14 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = *(v14 + 24);
      sub_1D989E050(v51, v15, isUniquelyReferenced_nonNull_native, v25, v26, v27, v28, v29, v49, v51, v52, v56);

      *(v14 + 24) = v61;
      v30 = *(v0 + 24);

      v31 = *(v0 + 32);

      (*(v12 + 8))(v53, v13);

      v32 = *(v0 + 160);
    }

    else
    {
      if (qword_1ED8BD6E0 != -1)
      {
        OUTLINED_FUNCTION_0_43();
        swift_once();
      }

      v54 = *(v0 + 64);
      v57 = *(v0 + 72);
      v33 = *(v0 + 48);
      v34 = *(v0 + 56);
      v35 = *(v0 + 40);
      OUTLINED_FUNCTION_9_13();
      sub_1D992BD64();
      OUTLINED_FUNCTION_15_5();
      sub_1D9882D14(&qword_1ED8BD8D0);
      v36 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v36);

      sub_1D986A454(v60, v63, 0xD000000000000072, 0x80000001D993BCD0, 0xD000000000000019, 0x80000001D993BDD0);

      v37 = *(v33 + 24);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v62 = *(v33 + 24);
      sub_1D989E050(0, v35, v38, v39, v40, v41, v42, v43, v48, v50, v54, v57);
      *(v33 + 24) = v62;
      OUTLINED_FUNCTION_9_13();
      sub_1D992BD64();
      OUTLINED_FUNCTION_15_5();
      v44 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v44);

      sub_1D986A454(v62, v63, 0xD000000000000072, 0x80000001D993BCD0, 0xD000000000000019, 0x80000001D993BDD0);

      v45 = *(v0 + 24);

      v46 = *(v0 + 32);

      (*(v55 + 8))(v58, v34);

      v32 = 0;
    }

    v47 = *(v0 + 8);

    return v47(v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D98E69AC(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v90 = a5;
  v91 = a6;
  v92 = a4;
  v8 = *a1;
  if (qword_1ED8BD6E0 != -1)
  {
LABEL_69:
    swift_once();
  }

  v101 = 0;
  v102 = 0xE000000000000000;
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000037, 0x80000001D993BE70);
  v9 = sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BD8D0);
  v10 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v10);

  MEMORY[0x1DA739C30](0x6320746F6F72202CLL, 0xEE00203A6B636F6CLL);
  v11 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v11);

  sub_1D986A454(v101, v102, 0xD000000000000072, 0x80000001D993BCD0, 0xD000000000000019, 0x80000001D993BDD0);

  LOBYTE(v101) = 0;
  sub_1D98FE2D0();
  v94 = a2;
  v100 = v9;
  if (v12)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v15 = MEMORY[0x1EEE9AC00](v13 - 8);
    v17 = v87 - v16;
    (*(*(v9 - 8) + 16))(v87 - v16, a3, v9, v15);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v9);
    sub_1D98B6044();
    v19 = sub_1D98C3E0C(v18, a2, v17);

    v20 = v19;
    sub_1D986B804(v17, &qword_1ECB481D0, &qword_1D992F9F0);
    if (v19)
    {
      sub_1D98B6044();
      v93 = v21;
    }

    else
    {

      v93 = 0;
    }

    a2 = v100;
  }

  else
  {
    v20 = 0;
    v93 = 0;
    a2 = v9;
  }

  v22 = v94;
  Metastore.representativeIds(for:)();
  if (v23)
  {
    v24 = v23;
    v88 = v20;
    v89 = a3;
    v98 = v8;
    v99 = sub_1D98682F0(v23);
    v25 = 0;
    v87[1] = 0;
    v96 = v24 & 0xFFFFFFFFFFFFFF8;
    v97 = v24 & 0xC000000000000001;
    v95 = a2 - 1;
    v26 = MEMORY[0x1E69E7CC0];
    while (v99 != v25)
    {
      if (v97)
      {
        v27 = MEMORY[0x1DA73A2C0](v25, v24);
      }

      else
      {
        if (v25 >= *(v96 + 16))
        {
          goto LABEL_63;
        }

        v27 = *(v24 + 8 * v25 + 32);
      }

      v8 = v27;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      a2 = v87;
      a3 = v26;
      v29 = v24;
      v30 = v100;
      v31 = *(v100 - 1);
      v32 = *(v31 + 64);
      MEMORY[0x1EEE9AC00](v27);
      v34 = v87 - v33;
      sub_1D992B194();
      LOBYTE(v101) = 2;
      sub_1D98FEBCC();
      v36 = v35;

      v37 = v30;
      v24 = v29;
      v26 = a3;
      (*(v31 + 8))(v34, v37);
      ++v25;
      if (v36)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D98BE588(0, *(a3 + 16) + 1, 1, a3);
          v26 = v40;
        }

        v39 = *(v26 + 16);
        v38 = *(v26 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1D98BE588(v38 > 1, v39 + 1, 1, v26);
          v26 = v41;
        }

        *(v26 + 16) = v39 + 1;
        *(v26 + 8 * v39 + 32) = v36;
        v25 = v28;
      }
    }

    v42 = 0;
    v43 = *(v26 + 16);
    v44 = MEMORY[0x1E69E7CC0];
    v45 = MEMORY[0x1E69E7CC0];
    v8 = v98;
    while (v43 != v42)
    {
      if (v42 >= *(v26 + 16))
      {
        goto LABEL_64;
      }

      v46 = v26 + 8 * v42;
      v47 = *(v46 + 32);
      v48 = *(v47 + 16);
      a2 = *(v45 + 16);
      a3 = a2 + v48;
      if (__OFADD__(a2, v48))
      {
        goto LABEL_65;
      }

      v49 = *(v46 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || a3 > *(v45 + 24) >> 1)
      {
        if (a2 <= a3)
        {
          v51 = a2 + v48;
        }

        else
        {
          v51 = a2;
        }

        sub_1D98BE124(isUniquelyReferenced_nonNull_native, v51, 1, v45);
        v45 = v52;
      }

      if (*(v47 + 16))
      {
        a2 = *(v45 + 16);
        a3 = (*(v45 + 24) >> 1) - a2;
        v53 = *(type metadata accessor for IdentifiableTag() - 8);
        if (a3 < v48)
        {
          goto LABEL_67;
        }

        v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v55 = *(v53 + 72);
        swift_arrayInitWithCopy();

        if (v48)
        {
          v56 = *(v45 + 16);
          v57 = __OFADD__(v56, v48);
          v58 = v56 + v48;
          if (v57)
          {
            goto LABEL_68;
          }

          *(v45 + 16) = v58;
        }
      }

      else
      {

        if (v48)
        {
          goto LABEL_66;
        }
      }

      ++v42;
    }

    MEMORY[0x1EEE9AC00](v59);
    v60 = v94;
    v86[2] = v94;
    sub_1D98E4A08(sub_1D98E8240, v86, v45);
    if (v93)
    {
      v61 = v93;
    }

    else
    {
      v61 = v44;
    }

    sub_1D98B6044();
    v101 = v61;
    sub_1D98EBFD0(v62);
    v93 = v101;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v63 - 8);
    v66 = v87 - v65;
    __swift_storeEnumTagSinglePayload(v87 - v65, 1, 1, v100);
    sub_1D98B6044();
    v68 = v67;

    v69 = sub_1D98C3E0C(v68, v60, v66);

    sub_1D986B804(v66, &qword_1ECB481D0, &qword_1D992F9F0);
    if (v69)
    {
      v70 = v88;
      if (!v88)
      {
        v70 = v44;
      }

      v101 = v70;
      sub_1D98EC074(v69);
      v20 = v101;
      v22 = v94;
      a3 = v89;
    }

    else
    {
      v22 = v94;
      v20 = v88;
      a3 = v89;
    }

    a2 = v100;
  }

  v71 = sub_1D9907EE8();
  if (v71)
  {
    v72 = sub_1D98DFBD0(v71, *(v90 + 16));

    if (v72)
    {
      v73 = v20;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v75 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      v76 = MEMORY[0x1EEE9AC00](v74 - 8);
      v78 = v87 - v77;
      (*(*(a2 - 1) + 16))(v87 - v77, a3, a2, v76);
      __swift_storeEnumTagSinglePayload(v78, 0, 1, a2);
      v79 = sub_1D98C3E0C(v72, v22, v78);
      sub_1D986B804(v78, &qword_1ECB481D0, &qword_1D992F9F0);
      if (v79)
      {
        v80 = MEMORY[0x1E69E7CC0];
        v81 = v93;
        if (!v93)
        {
          v81 = MEMORY[0x1E69E7CC0];
        }

        v101 = v81;
        sub_1D98EBFD0(v72);
        v82 = v101;
        if (v73)
        {
          v83 = v73;
        }

        else
        {
          v83 = v80;
        }

        v101 = v83;
        sub_1D98EC074(v79);
        v20 = v101;
        goto LABEL_60;
      }
    }
  }

  v82 = v93;
  if (v93 && v20)
  {
LABEL_60:
    v84 = v91;
    *v91 = v82;
    v84[1] = v20;
    return;
  }

  v85 = v91;
  *v91 = 0;
  v85[1] = 0;
}

BOOL sub_1D98E7298()
{
  v0 = *(type metadata accessor for IdentifiableTag() + 20);
  sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BF058);
  return (sub_1D992B5F4() & 1) == 0;
}

void sub_1D98E7320(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v4 = *(a2 + 16);
  for (i = (a2 + 40); v4; --v4)
  {
    v6 = *i;
    v7 = *(i - 2);
    v10 = *i;
    sub_1D98907D8(*i);
    sub_1D98907D8(v6);
    sub_1D98F23C4(v7);
    v8 = sub_1D9890810(v10);
    MEMORY[0x1DA739CE0](v8);
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D992B7D4();
    }

    sub_1D992B7F4();
    v3 = v11;
    sub_1D9890810(v6);
    i += 2;
  }

  if (sub_1D98682F0(v3))
  {
    sub_1D98E81FC();
    v9 = sub_1D992B7A4();
    [a1 setRedactionSignals_];
  }

  else
  {
  }
}

uint64_t sub_1D98E7494(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1D992B1E4();
  v8 = OUTLINED_FUNCTION_6(v7);
  v143 = v9;
  v144 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v140 = v13 - v12;
  v14 = sub_1D992B274();
  v15 = OUTLINED_FUNCTION_6(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v22 = v21 - v20;
  v23 = sub_1D992AE84();
  v24 = OUTLINED_FUNCTION_6(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v150 = v30 - v29;
  v146 = a2;
  sub_1D992B134();
  v139 = a3;
  v147 = [a3 unwrap];
  if (!v147)
  {
    if (qword_1ED8BD6E0 != -1)
    {
LABEL_59:
      OUTLINED_FUNCTION_0_43();
      swift_once();
    }

    OUTLINED_FUNCTION_6_19("ics18PluginStateService");
    sub_1D98E8150();
    OUTLINED_FUNCTION_12_12();
    swift_allocError();
    swift_willThrow();
    (*(v26 + 8))(v150, v23);
    return v23;
  }

  v145 = v22;
  v137 = v17;
  v138 = v14;
  v141 = v26;
  v142 = v23;
  v136 = v3;
  v31 = *(a1 + 16);
  v135 = a1;
  if (!v31)
  {
    v32 = MEMORY[0x1E69E7CC8];
LABEL_25:

    sub_1D98D4680(v54);
    sub_1D992B244();
    if (sub_1D992B254())
    {
      v55 = [v139 unwrap];
      if (v55)
      {
        v139 = v55;
        sub_1D992B1B4();
        v56 = sub_1D992B264();
        v57 = *(v143 + 8);
        v143 += 8;
        v133 = v57;
        v57(v140, v144);
        v58 = *(v56 + 16);
        if (v58)
        {
          v59 = MEMORY[0x1E69E7CC0];
          v60 = 32;
          do
          {
            if (v32[2])
            {
              v61 = sub_1D988B5F0(*(v56 + v60));
              if (v62)
              {
                v63 = *(v32[7] + 8 * v61);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v66 = *(v59 + 16);
                  v67 = OUTLINED_FUNCTION_1();
                  sub_1D98BDCD0(v67, v68, v69, v59);
                  v59 = v70;
                }

                v65 = *(v59 + 16);
                v64 = *(v59 + 24);
                if (v65 >= v64 >> 1)
                {
                  sub_1D98BDCD0(v64 > 1, v65 + 1, 1, v59);
                  v59 = v71;
                }

                *(v59 + 16) = v65 + 1;
                *(v59 + 8 * v65 + 32) = v63;
              }
            }

            v60 += 4;
            --v58;
          }

          while (v58);
        }

        else
        {

          v59 = MEMORY[0x1E69E7CC0];
        }

        v84 = sub_1D992B154();
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
        OUTLINED_FUNCTION_9(v85);
        v87 = *(v86 + 64);
        OUTLINED_FUNCTION_20_0();
        v132[1] = v88;
        v90 = MEMORY[0x1EEE9AC00](v89);
        v92 = v132 - v91;
        v93 = v142;
        v132[0] = *(v141 + 16);
        (v132[0])(v132 - v91, v150, v142, v90);
        __swift_storeEnumTagSinglePayload(v92, 0, 1, v93);
        v135 = sub_1D98B59C8(v84, 0, v92, v147, v59);
        v134 = v94;

        sub_1D986B804(v92, &qword_1ECB481D0, &qword_1D992F9F0);
        v95 = v140;
        sub_1D992B1D4();
        v96 = sub_1D992B264();
        v133(v95, v144);
        v97 = *(v96 + 16);
        if (v97)
        {
          v98 = MEMORY[0x1E69E7CC0];
          v99 = 32;
          do
          {
            if (v32[2])
            {
              v100 = sub_1D988B5F0(*(v96 + v99));
              if (v101)
              {
                v102 = *(v32[7] + 8 * v100);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v105 = *(v98 + 16);
                  v106 = OUTLINED_FUNCTION_1();
                  sub_1D98BDCD0(v106, v107, v108, v98);
                  v98 = v109;
                }

                v104 = *(v98 + 16);
                v103 = *(v98 + 24);
                if (v104 >= v103 >> 1)
                {
                  sub_1D98BDCD0(v103 > 1, v104 + 1, 1, v98);
                  v98 = v110;
                }

                *(v98 + 16) = v104 + 1;
                *(v98 + 8 * v104 + 32) = v102;
              }
            }

            v99 += 4;
            --v97;
          }

          while (v97);
        }

        else
        {

          v98 = MEMORY[0x1E69E7CC0];
        }

        v111 = sub_1D992B154();
        v112 = MEMORY[0x1EEE9AC00](v111);
        v114 = v132 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
        v115 = v142;
        (v132[0])(v114, v150, v142, v112);
        __swift_storeEnumTagSinglePayload(v114, 0, 1, v115);
        v116 = v139;
        v117 = sub_1D98B59C8(v111, 0, v114, v139, v98);
        v119 = v118;

        sub_1D986B804(v114, &qword_1ECB481D0, &qword_1D992F9F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EC0, &qword_1D9934C00);
        v120 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EC8, &qword_1D9934C08) - 8);
        v121 = *(*v120 + 72);
        v122 = (*(*v120 + 80) + 32) & ~*(*v120 + 80);
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_1D9933A20;
        v124 = v123 + v122;
        v125 = v124 + v120[14];
        sub_1D992B1B4();
        v126 = v147;
        v127 = v135;
        *v125 = v147;
        *(v125 + 8) = v127;
        *(v125 + 16) = v134 & 1;
        v128 = v124 + v121 + v120[14];
        v129 = v126;
        sub_1D992B1D4();
        *v128 = v116;
        *(v128 + 8) = v117;
        *(v128 + 16) = v119 & 1;
        v130 = v116;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48ED0, &unk_1D9934C10);
        sub_1D98E81A4();
        v23 = sub_1D992B5B4();

        (*(v137 + 8))(v145, v138);
        (*(v141 + 8))(v150, v115);
      }

      else
      {

        if (qword_1ED8BD6E0 != -1)
        {
          OUTLINED_FUNCTION_0_43();
          swift_once();
        }

        OUTLINED_FUNCTION_6_19("ics18PluginStateService");
        sub_1D98E8150();
        OUTLINED_FUNCTION_12_12();
        swift_allocError();
        swift_willThrow();

        v23 = (v137 + 8);
        (*(v137 + 8))(v145, v138);
        (*(v141 + 8))(v150, v142);
      }
    }

    else
    {

      v72 = sub_1D992B154();
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      OUTLINED_FUNCTION_9(v73);
      v75 = *(v74 + 64);
      OUTLINED_FUNCTION_20_0();
      v77 = MEMORY[0x1EEE9AC00](v76);
      v79 = v132 - v78;
      v81 = v141;
      v80 = v142;
      v82 = v150;
      v83 = v145;
      (*(v141 + 16))(v132 - v78, v150, v142, v77);
      __swift_storeEnumTagSinglePayload(v79, 0, 1, v80);
      v23 = v147;
      sub_1D98B59F4(v72, 0, v79, v147, v135);
      sub_1D986B804(v79, &qword_1ECB481D0, &qword_1D992F9F0);
      (*(v137 + 8))(v83, v138);
      (*(v81 + 8))(v82, v80);
    }

    return v23;
  }

  v23 = (a1 + 32);
  v32 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    sub_1D98BA058(v23, v149);
    v26 = v149[0];
    if (v32[2] && (v33 = sub_1D988B5F0(v149[0]), (v34 & 1) != 0))
    {
      v35 = *(v32[7] + 8 * v33);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    sub_1D98BA058(v149, v148);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = *(v35 + 16);
      OUTLINED_FUNCTION_1();
      sub_1D98BDCF4();
      v35 = v52;
    }

    v36 = *(v35 + 16);
    if (v36 >= *(v35 + 24) >> 1)
    {
      sub_1D98BDCF4();
      v35 = v53;
    }

    *(v35 + 16) = v36 + 1;
    v37 = (v35 + 48 * v36);
    v38 = v148[0];
    v39 = v148[2];
    v37[3] = v148[1];
    v37[4] = v39;
    v37[2] = v38;
    swift_isUniquelyReferenced_nonNull_native();
    *&v148[0] = v32;
    v40 = sub_1D988B5F0(v26);
    if (__OFADD__(v32[2], (v41 & 1) == 0))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v42 = v40;
    v43 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EB8, &unk_1D9934BF0);
    if (sub_1D992BE34())
    {
      break;
    }

LABEL_16:
    v32 = *&v148[0];
    if (v43)
    {
      v46 = *(*&v148[0] + 56);
      v47 = *(v46 + 8 * v42);
      *(v46 + 8 * v42) = v35;
    }

    else
    {
      *(*&v148[0] + 8 * (v42 >> 6) + 64) |= 1 << v42;
      *(v32[6] + 4 * v42) = v26;
      *(v32[7] + 8 * v42) = v35;
      v48 = v32[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_58;
      }

      v32[2] = v50;
    }

    sub_1D98BA0B4(v149);
    v23 += 48;
    if (!--v31)
    {
      goto LABEL_25;
    }
  }

  v44 = sub_1D988B5F0(v26);
  if ((v43 & 1) == (v45 & 1))
  {
    v42 = v44;
    goto LABEL_16;
  }

  type metadata accessor for SISchemaDeviceSensitivityState(0);
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

id sub_1D98E806C(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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
    v7 = result;
    v8 = *(a5 + 48);
    v9 = sub_1D992B1E4();
    (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
    v10 = *(a5 + 56) + 24 * a2;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *v10;

    return v11;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1D98E8150()
{
  result = qword_1ECB48EB0;
  if (!qword_1ECB48EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48EB0);
  }

  return result;
}

unint64_t sub_1D98E81A4()
{
  result = qword_1ECB479F8;
  if (!qword_1ECB479F8)
  {
    sub_1D992B1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB479F8);
  }

  return result;
}

unint64_t sub_1D98E81FC()
{
  result = qword_1ECB47920;
  if (!qword_1ECB47920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB47920);
  }

  return result;
}

uint64_t sub_1D98E8260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiableTag();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ProcessingError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D98E8384(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D98E83D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1D98E8440()
{
  result = qword_1ECB48ED8;
  if (!qword_1ECB48ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48ED8);
  }

  return result;
}

void sub_1D98E8494()
{
  OUTLINED_FUNCTION_6_2();
  if (*(v1 + 16))
  {
    v2 = v1;
    v3 = v0;
    v4 = sub_1D992AE84();
    v5 = *(v2 + 40);
    sub_1D9882D14(&qword_1ED8BF060);
    v18 = v3;
    sub_1D992B5C4();
    v19 = v2 + 56;
    v6 = *(v2 + 32);
    OUTLINED_FUNCTION_26_5();
    v9 = ~v8;
    do
    {
      v10 = v7 & v9;
      if (((1 << (v7 & v9)) & *(v19 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v11 = *(v4 - 8);
      v12 = *(v11 + 64);
      v13 = MEMORY[0x1EEE9AC00](v7);
      v15 = &v18 - v14;
      (*(v11 + 16))(&v18 - v14, *(v2 + 48) + *(v16 + 72) * v10, v4, v13);
      sub_1D9882D14(&qword_1ED8BF058);
      v17 = sub_1D992B5F4();
      (*(v11 + 8))(v15, v4);
      v7 = v10 + 1;
    }

    while ((v17 & 1) == 0);
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98E8654(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    sub_1D992C074();
    sub_1D992C0A4();
    v6 = sub_1D992C0C4();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 4 * v8) != a1);
  }

  return v2;
}

void sub_1D98E8704()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = v0;
    sub_1D992BCC4();
  }

  else if (*(v1 + 16))
  {
    sub_1D992B1A4();
    v4 = *(v2 + 40);
    sub_1D992BBC4();
    v5 = *(v2 + 32);
    OUTLINED_FUNCTION_26_5();
    v8 = ~v7;
    do
    {
      v9 = v6 & v8;
      if (((1 << (v6 & v8)) & *(v2 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v10 = *(*(v2 + 48) + 8 * v9);
      v11 = sub_1D992BBD4();

      v6 = v9 + 1;
    }

    while ((v11 & 1) == 0);
  }

  OUTLINED_FUNCTION_7();
}

void sub_1D98E87F8(uint64_t a1)
{
  v1 = a1;
  v33 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D992BC84();
    sub_1D992B1A4();
    sub_1D98EB74C();
    sub_1D992B934();
    v1 = v28;
    v2 = v29;
    v3 = v30;
    v4 = v31;
    v5 = v32;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v24[2] = v3;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v25 = v9;
  v10 = 0x1E69CF000;
  while (v1 < 0)
  {
    v14 = sub_1D992BCB4();
    if (!v14 || (v26 = v14, sub_1D992B1A4(), swift_dynamicCast(), v13 = v27, v10 = 0x1E69CF000uLL, !v27))
    {
LABEL_23:
      sub_1D9873850();
      return;
    }

LABEL_18:
    v15 = [objc_allocWithZone(*(v10 + 1152)) init];
    if (v15)
    {
      v16 = v15;
      sub_1D992B174();
      v17 = sub_1D992BAF4();
      sub_1D98EC11C(v17, v18, v16);
      v25 = sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
      v19 = sub_1D992AE84();
      v24[1] = v24;
      v20 = *(*(v19 - 8) + 64);
      MEMORY[0x1EEE9AC00](v19 - 8);
      v22 = v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1D992B194();
      v23 = sub_1D98B5B94(v22);
      [v16 setUuid_];

      MEMORY[0x1DA739CE0]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D992B7D4();
      }

      sub_1D992B7F4();
      v9 = v33;
      goto LABEL_8;
    }
  }

  v11 = v4;
  v12 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *MetadataExtractor.__allocating_init(metastore:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC8];
  result[2] = a1;
  result[3] = v3;
  v4 = MEMORY[0x1E69E7CD0];
  result[4] = v3;
  result[5] = v4;
  return result;
}

uint64_t sub_1D98E8B3C(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v57 = a1 & 0xC000000000000001;
  v58 = sub_1D98682F0(a1);
  v55 = a1 & 0xFFFFFFFFFFFFFF8;
  v56 = a1;
  v53 = a2;
  while (1)
  {
    if (v58 == v5)
    {
    }

    if (v57)
    {
      v6 = MEMORY[0x1DA73A2C0](v5, v56);
    }

    else
    {
      if (v5 >= *(v55 + 16))
      {
        goto LABEL_42;
      }

      v6 = *(v56 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = *a2;
    if (*(*a2 + 16) && (v9 = sub_1D9889858(), (v10 & 1) != 0))
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v12 = *v11;
      v13 = v11[1];
      v14 = *a3;
      if (*v11 >= *a3)
      {
        v15 = *a3;
      }

      else
      {
        v15 = *v11;
      }

      v52 = v15;
      if (v14 <= v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = *a3;
      }

      v50 = v12;
      v51 = v16;
      v17 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v18 = *a2;
      v59 = *a2;
      v19 = sub_1D9889858();
      if (__OFADD__(*(v18 + 16), (v20 & 1) == 0))
      {
        goto LABEL_45;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F08, &qword_1D9934DC0);
      if (sub_1D992BE34())
      {
        v23 = sub_1D9889858();
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_47;
        }

        v21 = v23;
      }

      if (v22)
      {
        v25 = (v59[7] + 16 * v21);
        *v25 = v52;
        v25[1] = v51;
      }

      else
      {
        v59[(v21 >> 6) + 8] |= 1 << v21;
        *(v59[6] + 8 * v21) = v7;
        v42 = (v59[7] + 16 * v21);
        *v42 = v52;
        v42[1] = v51;
        v43 = v59[2];
        v39 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v39)
        {
          goto LABEL_46;
        }

        v59[2] = v44;
        v45 = v7;
      }

      a2 = v53;
      *v53 = v59;
      if (v50 <= v14 && v13 >= v14)
      {
      }

      else
      {
        swift_beginAccess();
        v47 = v7;
        sub_1D98B6C74(&v61, v47);
        v48 = v61;
        swift_endAccess();
      }
    }

    else
    {
      swift_beginAccess();
      v26 = v7;
      sub_1D98B6C74(&v61, v26);
      v27 = v61;
      swift_endAccess();

      v28 = *a3;
      v29 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v30 = *a2;
      v60 = *a2;
      v31 = sub_1D9889858();
      if (__OFADD__(*(v30 + 16), (v32 & 1) == 0))
      {
        goto LABEL_43;
      }

      v33 = v31;
      v34 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F08, &qword_1D9934DC0);
      if (sub_1D992BE34())
      {
        v35 = sub_1D9889858();
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_47;
        }

        v33 = v35;
      }

      v37 = vdupq_n_s64(v28);
      if (v34)
      {
        *(v60[7] + 16 * v33) = v37;
      }

      else
      {
        v60[(v33 >> 6) + 8] |= 1 << v33;
        *(v60[6] + 8 * v33) = v26;
        *(v60[7] + 16 * v33) = v37;
        v38 = v60[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_44;
        }

        v60[2] = v40;
        v41 = v26;
      }

      a2 = v53;
      *v53 = v60;
    }

    ++v5;
  }

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
LABEL_47:
  sub_1D992B1A4();
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

void *MetadataExtractor.init(metastore:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v1[2] = a1;
  v1[3] = v2;
  v3 = MEMORY[0x1E69E7CD0];
  v1[4] = v2;
  v1[5] = v3;
  return v1;
}

void sub_1D98E90D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_2();
  a19 = v21;
  a20 = v23;
  v24 = v20;
  v93 = v25;
  v27 = v26;
  if (v22)
  {
    v28 = v22;
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_5_0();
  v77 = v20[4];
  if (!*(v77 + 16))
  {
LABEL_36:
    OUTLINED_FUNCTION_7();
    return;
  }

  v78 = v24[4];

  v79 = sub_1D9889568();
  if ((v80 & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  v28 = *(*(v77 + 56) + 8 * v79);

LABEL_3:
  OUTLINED_FUNCTION_5_0();
  v29 = v24[3];

  v30 = sub_1D98B0F68(v27, v29);

  v31 = v28 + 64;
  v32 = 1 << *(v28 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v28 + 64);

  OUTLINED_FUNCTION_5_0();
  v35 = 0;
  v36 = (v32 + 63) >> 6;
  v87 = "nanosecondsSinceBoot:message:)";
  v86 = "Saving component: ";
  v85 = ", component Id: ";
  v84 = ", clusterIdentifier: ";
  v83 = ", substituting with: ";
  v82 = ", timestampRange: ";
  v89 = v28;
  v96 = v28 + 64;
  v88 = v36;
  v91 = v24;
  v90 = v27;
  v92 = v30;
  while (v34)
  {
LABEL_11:
    v38 = __clz(__rbit64(v34)) | (v35 << 6);
    v39 = *(*(v28 + 48) + 8 * v38);
    v40 = (*(v28 + 56) + 16 * v38);
    v41 = *v40;
    v97 = v40[1];
    v98 = v41;
    v42 = v24[5];
    v99 = v39;
    if ((v42 & 0xC000000000000001) != 0)
    {
      v43 = v39;

      v44 = sub_1D992BCC4();

      if (v44 & 1) != 0 || (v93)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (*(v42 + 16))
      {
        sub_1D992B1A4();
        v45 = v39;
        v46 = *(v42 + 40);
        v45;

        sub_1D992BBC4();
        v24 = (v42 + 56);
        v47 = *(v42 + 32);
        OUTLINED_FUNCTION_26_5();
        v30 = ~v49;
        while (1)
        {
          v36 = v48 & v30;
          if (((*(v24 + (((v48 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v48 & v30)) & 1) == 0)
          {
            break;
          }

          v50 = *(*(v42 + 48) + 8 * v36);
          v51 = sub_1D992BBD4();

          v48 = v36 + 1;
          if (v51)
          {

            OUTLINED_FUNCTION_19_5();
            v30 = v92;
            goto LABEL_23;
          }
        }

        OUTLINED_FUNCTION_19_5();
        v28 = v89;
        OUTLINED_FUNCTION_18_8();
      }

      else
      {
        v52 = v39;
      }

      if (v93)
      {
LABEL_23:
        if (v30)
        {
          v102 = v99;
          sub_1D992B014();
          v53 = v100;
        }

        else
        {
          v53 = 0;
        }

        v54 = v24[2];
        Metastore.saveComponentId(componentId:clusterIdentifier:timestampRange:onClock:)();
        if (qword_1ED8BD6D0 != -1)
        {
          swift_once();
        }

        v95 = qword_1ECB49610;
        v100 = 0;
        v101 = 0xE000000000000000;
        sub_1D992BD64();
        OUTLINED_FUNCTION_14_11(&a13);
        MEMORY[0x1DA739C30](0xD000000000000012);
        sub_1D992B174();
        v55 = sub_1D992BAF4();
        MEMORY[0x1DA739C30](v55);

        v30 = 0xD000000000000012;
        OUTLINED_FUNCTION_14_11(&a12);
        MEMORY[0x1DA739C30]();
        v56 = sub_1D992AE84();
        v57 = OUTLINED_FUNCTION_6(v56);
        v59 = v58;
        v61 = *(v60 + 64);
        MEMORY[0x1EEE9AC00](v57);
        OUTLINED_FUNCTION_13();
        v64 = v63 - v62;
        sub_1D992B194();
        v94 = sub_1D9882D14(&qword_1ED8BD8D0);
        v65 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v65);

        v66 = *(v59 + 8);
        v36 = v59 + 8;
        v66(v64, v56);
        OUTLINED_FUNCTION_14_11(&a11);
        MEMORY[0x1DA739C30]();
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
        OUTLINED_FUNCTION_5(v67);
        v69 = *(v68 + 64);
        OUTLINED_FUNCTION_20_0();
        MEMORY[0x1EEE9AC00](v70);
        v72 = &v81 - v71;
        if (v53)
        {
          v53 = v53;
          sub_1D992B194();
        }

        OUTLINED_FUNCTION_18_8();
        __swift_storeEnumTagSinglePayload(v72, v73, 1, v56);
        v74 = sub_1D992B6A4();
        MEMORY[0x1DA739C30](v74);

        OUTLINED_FUNCTION_14_11(&a10);
        MEMORY[0x1DA739C30](0xD000000000000012);
        v102 = v98;
        v103 = v97;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D70, &qword_1D99340B8);
        sub_1D992BE24();
        MEMORY[0x1DA739C30](0x636F6C436E6F202CLL, 0xEB00000000203A6BLL);
        v75 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v75);

        sub_1D986A454(v100, v101, 0xD000000000000067, v83 | 0x8000000000000000, 0xD000000000000031, v82 | 0x8000000000000000);

        v24 = v91;
        OUTLINED_FUNCTION_97();
        v76 = v99;
        v43 = sub_1D98EB07C(v99);
        swift_endAccess();

        v28 = v89;
        goto LABEL_31;
      }

      v43 = v99;
    }

LABEL_31:
    v34 &= v34 - 1;

    v31 = v96;
  }

  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v36)
    {

      goto LABEL_35;
    }

    v34 = *(v31 + 8 * v37);
    ++v35;
    if (v34)
    {
      v35 = v37;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1D98E97BC()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + 24);
  if (!*(v2 + 16))
  {
    goto LABEL_5;
  }

  v3 = sub_1D9889568();
  if ((v4 & 1) == 0)
  {

LABEL_5:
    v6 = sub_1D992B214();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = sub_1D992B204();
    OUTLINED_FUNCTION_97();

    v9 = *(v1 + 24);
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v1 + 24);
    sub_1D989DDBC();
    *(v1 + 24) = v11;
    swift_endAccess();
    return v5;
  }

  v5 = *(*(v2 + 56) + 8 * v3);

  return v5;
}

id sub_1D98E98AC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69CF488]) init];
  if (v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69CF480]) init];
    if (v4)
    {
      v5 = v4;
      sub_1D992B174();
      v6 = sub_1D992BAF4();
      sub_1D98EC11C(v6, v7, v5);
      sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
      v8 = sub_1D992AE84();
      v9 = OUTLINED_FUNCTION_9(v8);
      v11 = *(v10 + 64);
      MEMORY[0x1EEE9AC00](v9);
      OUTLINED_FUNCTION_13();
      v14 = v13 - v12;
      sub_1D992B194();
      v15 = sub_1D98B5B94(v14);
      [v5 setUuid_];

      [v3 setRepresentativeId_];
      sub_1D98E87F8(a2);
      sub_1D98EC180(v16, v3, &qword_1ECB478D0, 0x1E69CF480, &selRef_setComponentIds_);
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

void sub_1D98E9A1C()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69CF498]) init];
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69CF490]) init];
  if (!v3)
  {

LABEL_17:
    OUTLINED_FUNCTION_7();
    return;
  }

  v54 = v3;
  sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
  v4 = sub_1D992AE84();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v1;
  v52 = v11;
  v12 = *(v11 + 16);
  v53 = v13;
  v50 = v11 + 16;
  v48 = v9;
  v49 = v12;
  (v12)(v10, v1, v8);
  v14 = sub_1D98B5B94(v10);
  [v2 setClockIdentifier_];

  v15 = sub_1D992B024();
  v16 = v15;
  v17 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0];
  v18 = v15 + 64;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v15 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  while (v21)
  {
LABEL_11:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = (v23 << 9) | (8 * v25);
    v27 = *(*(v16 + 56) + v26);
    v28 = *(*(v16 + 48) + v26);

    v29 = sub_1D98E98AC(v28, v27);

    if (v29)
    {
      MEMORY[0x1DA739CE0]();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D992B7D4();
      }

      sub_1D992B7F4();
      v17 = v55;
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      v31 = v54;
      sub_1D98EC180(v17, v54, &qword_1ECB478D8, 0x1E69CF488, &selRef_setConnectedComponents_);
      v32 = [v2 setMsg_];
      v33 = v48;
      v34 = MEMORY[0x1EEE9AC00](v32);
      v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
      v36 = v53;
      v37 = v49;
      v49(&v48 - v35, v51, v53, v34);
      v38 = mach_absolute_time();
      SiriAnalyticsMachAbsoluteTimeGetNanoseconds(v38);
      v39 = objc_allocWithZone(sub_1D992B164());
      v40 = sub_1D992B144();
      MEMORY[0x1EEE9AC00](v40);
      sub_1D992AE74();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      OUTLINED_FUNCTION_9(v41);
      v43 = *(v42 + 64);
      OUTLINED_FUNCTION_20_0();
      v45 = MEMORY[0x1EEE9AC00](v44);
      v47 = &v48 - v46;
      v37(&v48 - v46, &v48 - v35, v36, v45);
      __swift_storeEnumTagSinglePayload(v47, 0, 1, v36);
      objc_allocWithZone(sub_1D992B104());
      sub_1D992B0A4();

      (*(v52 + 8))(&v48 - v35, v36);
      goto LABEL_17;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1D98E9E5C()
{
  OUTLINED_FUNCTION_6_2();
  v1 = sub_1D992AE84();
  sub_1D992B104();
  sub_1D9882D14(&qword_1ED8BF060);
  v2 = sub_1D992B5B4();
  OUTLINED_FUNCTION_5_0();
  v3 = *(v0 + 24);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F10, &qword_1D9934DC8);
  OUTLINED_FUNCTION_5(v49);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_20_0();
  v48 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v44 - v11;
  v12 = v4 + 63;
  v13 = v3 + 64;
  v14 = v12 >> 6;
  v46 = v1 - 8;

  v15 = 0;
  v44 = v3 + 64;
  v45 = v14;
  while (v6)
  {
    v55 = v2;
LABEL_9:
    v17 = __clz(__rbit64(v6)) | (v15 << 6);
    v18 = *(v3 + 48);
    v19 = *(v1 - 8);
    v20 = v19;
    v51 = *(v19 + 72);
    v22 = v19 + 16;
    v21 = *(v19 + 16);
    v23 = v3;
    v24 = v47;
    v52 = v22;
    v53 = v21;
    v25 = (v21)(v47, v18 + v51 * v17, v1);
    v54 = &v44;
    v26 = *(*(v23 + 56) + 8 * v17);
    MEMORY[0x1EEE9AC00](v25);
    OUTLINED_FUNCTION_8();
    v29 = v27 - v28;
    v30 = *(v49 + 48);
    (*(v20 + 32))(v27 - v28, v24, v1);
    *(v29 + v30) = v26;

    sub_1D98E9A1C();
    if (v31)
    {
      v50 = v31;
      v32 = v55;
      swift_isUniquelyReferenced_nonNull_native();
      v56 = v32;
      v33 = sub_1D9889568();
      if (__OFADD__(v32[2], (v34 & 1) == 0))
      {
        goto LABEL_24;
      }

      v35 = v33;
      v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F18, &unk_1D9934DD0);
      if (sub_1D992BE34())
      {
        v37 = sub_1D9889568();
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_26;
        }

        v35 = v37;
      }

      v3 = v23;
      v2 = v56;
      v13 = v44;
      if (v36)
      {
        v39 = v56[7];
        v40 = *(v39 + 8 * v35);
        *(v39 + 8 * v35) = v50;
      }

      else
      {
        v56[(v35 >> 6) + 8] |= 1 << v35;
        v53(v2[6] + v35 * v51, v29, v1);
        *(v2[7] + 8 * v35) = v50;
        v41 = v2[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_25;
        }

        v2[2] = v43;
      }

      v14 = v45;
    }

    else
    {
      v14 = v45;
      v3 = v23;
      v2 = v55;
    }

    v6 &= v6 - 1;
    sub_1D986B804(v29, &qword_1ECB48F10, &qword_1D9934DC8);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      OUTLINED_FUNCTION_7();
      return;
    }

    v6 = *(v13 + 8 * v16);
    ++v15;
    if (v6)
    {
      v55 = v2;
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1D992BFC4();
  __break(1u);
}

void sub_1D98EA244()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v83 = type metadata accessor for MonotonicTimestamp();
  v7 = OUTLINED_FUNCTION_9(v83);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v77 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EE0, &qword_1D9934D98);
  OUTLINED_FUNCTION_6(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  v84 = v4;
  v105[0] = v4;
  v23 = MEMORY[0x1E69E7CC0];
  v104 = MEMORY[0x1E69E7CC0];
  v79 = v6;
  v96 = v0;
  v24 = sub_1D98E97BC();
  v80 = v2;
  v25 = v24;
  v26 = sub_1D992B1F4();
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v23;
  }

  v95 = *(v27 + 2);
  if (v95)
  {
    v28 = 0;
    v94 = &v27[(*(v17 + 80) + 32) & ~*(v17 + 80)];
    v93 = v17 + 16;
    v92 = (v17 + 8);
    v88 = v15;
    v87 = v17;
    v89 = v24;
    v86 = v22;
    v85 = v27;
    do
    {
      if (v28 >= *(v27 + 2))
      {
        goto LABEL_54;
      }

      (*(v17 + 16))(v22, &v94[*(v17 + 72) * v28], v15);
      v29 = sub_1D992B294();
      MEMORY[0x1DA739CE0](v29);
      OUTLINED_FUNCTION_21_5();
      if (v30)
      {
        OUTLINED_FUNCTION_22_7();
      }

      sub_1D992B7F4();
      v31 = sub_1D992B284();
      MEMORY[0x1DA739CE0](v31);
      OUTLINED_FUNCTION_21_5();
      if (v30)
      {
        OUTLINED_FUNCTION_22_7();
      }

      sub_1D992B7F4();

      sub_1D992B294();
      (*v92)(v22, v15);
      v23 = *&v98[0];
      v103 = *&v98[0];
      v25 = v24;
      sub_1D992B014();

      v32 = v100;
      if (v100)
      {
        v25 = sub_1D992B024();

        if (*(v25 + 16))
        {
          v33 = sub_1D9889858();
          if (v34)
          {
            v22 = *(*(v25 + 56) + 8 * v33);

            v91 = v22;
            if ((v22 & 0xC000000000000001) != 0)
            {
              swift_unknownObjectRetain();
              sub_1D992BC84();
              sub_1D992B1A4();
              sub_1D98EB74C();
              sub_1D992B934();
              v22 = v105[1];
              v35 = v105[2];
              v25 = v105[3];
              v27 = v105[4];
              v23 = v105[5];
            }

            else
            {
              v36 = -1 << *(v22 + 32);
              v35 = v22 + 56;
              v25 = ~v36;
              v37 = -v36;
              if (v37 < 64)
              {
                v38 = ~(-1 << v37);
              }

              else
              {
                v38 = -1;
              }

              v23 = (v38 & *(v22 + 56));

              v27 = 0;
            }

            v90 = v25;
            v39 = (v25 + 64) >> 6;
            if ((v22 & 0x8000000000000000) != 0)
            {
              goto LABEL_29;
            }

            while (1)
            {
              v40 = v27;
              v41 = v23;
              v42 = v27;
              if (!v23)
              {
                break;
              }

LABEL_27:
              v17 = (v41 - 1) & v41;
              v25 = *(*(v22 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));
              if (!v25)
              {
                goto LABEL_34;
              }

              while (1)
              {
                OUTLINED_FUNCTION_97();
                v44 = v25;
                sub_1D98B6C74(v98, v44);
                v25 = *&v98[0];
                swift_endAccess();

                v27 = v42;
                v23 = v17;
                if ((v22 & 0x8000000000000000) == 0)
                {
                  break;
                }

LABEL_29:
                v25 = v22 & 0x7FFFFFFFFFFFFFFFLL;
                v43 = sub_1D992BCB4();
                if (v43)
                {
                  *&v98[0] = v43;
                  sub_1D992B1A4();
                  swift_dynamicCast();
                  v25 = v100;
                  v42 = v27;
                  v17 = v23;
                  if (v100)
                  {
                    continue;
                  }
                }

                goto LABEL_34;
              }
            }

            while (1)
            {
              v42 = (v40 + 1);
              if (__OFADD__(v40, 1))
              {
                __break(1u);
LABEL_54:
                __break(1u);
LABEL_55:
                swift_once();
LABEL_41:
                v58 = __swift_project_value_buffer(v23, qword_1ECB496F0);
                (*(v17 + 16))(v25, v58, v23);
                sub_1D986B804(v28, &qword_1ECB481D0, &qword_1D992F9F0);
                if (__swift_getEnumTagSinglePayload(v27, 1, v23) != 1)
                {
                  sub_1D986B804(v27, &qword_1ECB481D0, &qword_1D992F9F0);
                }

                goto LABEL_44;
              }

              if (v42 >= v39)
              {
                break;
              }

              v41 = *(v35 + 8 * v42);
              ++v40;
              if (v41)
              {
                goto LABEL_27;
              }
            }

            v23 = 0;
LABEL_34:

            sub_1D9873850();

            v24 = v89;
            v15 = v88;
            v17 = v87;
            v22 = v86;
            v27 = v85;
            goto LABEL_35;
          }
        }
      }

      else
      {
      }

LABEL_35:
      ++v28;
    }

    while (v28 != v95);
  }

  v45 = v80;
  v103 = v80;
  sub_1D986E35C(0, &qword_1ED8BD940, 0x1E69CF600);
  v46 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EE8, &qword_1D9934DA0);
  if (swift_dynamicCast())
  {
    sub_1D986D53C(v98, &v100);
    __swift_project_boxed_opaque_existential_1(&v100, v102);
    v47 = sub_1D992B224();
    sub_1D98EB6A0(v47);
    __swift_destroy_boxed_opaque_existential_1(&v100);
  }

  else
  {
    v99 = 0;
    memset(v98, 0, sizeof(v98));
    sub_1D986B804(v98, &qword_1ECB48EF0, &unk_1D9934DA8);
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v49 = OUTLINED_FUNCTION_9(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v77 - v52;
  v23 = sub_1D992AE84();
  v53 = __swift_storeEnumTagSinglePayload(&v77 - v52, 1, 1, v23);
  v17 = *(v23 - 1);
  v54 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  v25 = v56 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v27 = &v77 - v52;
  sub_1D9879FF8(&v77 - v52, &v77 - v52);
  if (__swift_getEnumTagSinglePayload(&v77 - v52, 1, v23) == 1)
  {
    v22 = v83;
    if (qword_1ECB47FB0 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_41;
  }

  sub_1D986B804(&v77 - v52, &qword_1ECB481D0, &qword_1D992F9F0);
  (*(v17 + 32))(v25, &v77 - v52, v23);
  v22 = v83;
LABEL_44:
  v59 = v81;
  (*(v17 + 32))(v81, v25, v23);
  v60 = v84;
  *(v59 + *(v22 + 20)) = v84;
  *(v59 + *(v22 + 24)) = 0;
  v61 = v82;
  sub_1D98ACCA0(v59, v82);
  v62 = sub_1D9908488();
  sub_1D98C7A84(v61);
  if (!v62)
  {
    v63 = mach_absolute_time();
    LOBYTE(v100) = 0;
    v64 = v78;
    MonotonicTimestamp.init(cpuTicks:clockType:)(v63, &v100);
    v65 = *(v64 + *(v22 + 20));
    sub_1D98C7A84(v64);
    if (qword_1ED8BD6F0 != -1)
    {
      swift_once();
    }

    v100 = 0;
    v101 = 0xE000000000000000;
    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD00000000000001FLL, 0x80000001D993BF20);
    *&v98[0] = v60;
    v66 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v66);

    MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D993BF40);
    *&v98[0] = v65;
    v67 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v67);

    sub_1D986A454(v100, v101, 0xD000000000000067, 0x80000001D993BF60, 0xD00000000000002ELL, 0x80000001D993BFD0);

    v105[0] = v65;
  }

  v68 = v104;
  if (sub_1D98682F0(v104))
  {
    v69 = v96;
    OUTLINED_FUNCTION_5_0();
    v70 = *(v69 + 32);

    v71 = v79;
    v72 = sub_1D98B3974(v79, v70);

    v73 = MEMORY[0x1E69E7CC8];
    if (v72)
    {
      v73 = v72;
    }

    v103 = v73;

    sub_1D98E8B3C(v68, &v103, v105);

    v74 = v103;
    OUTLINED_FUNCTION_97();

    v75 = *(v69 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(v69 + 32);
    sub_1D989DEF4(v74, v71, isUniquelyReferenced_nonNull_native);
    *(v69 + 32) = v97;
    swift_endAccess();
  }

  OUTLINED_FUNCTION_7();
}

uint64_t MetadataExtractor.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t MetadataExtractor.__deallocating_deinit()
{
  MetadataExtractor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D98EAE44(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1D992BC94();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1D992BD84();
  *v1 = result;
  return result;
}

uint64_t sub_1D98EAEF0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1D992C074();
  sub_1D992B6D4();
  sub_1D992C0C4();
  v10 = v8 + 56;
  v11 = *(v8 + 32);
  OUTLINED_FUNCTION_26_5();
  v14 = v13 & ~v12;
  if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v30 = v4;
  v15 = ~v12;
  v16 = *(v8 + 48);
  while (1)
  {
    v17 = v16 + 24 * v14;
    v18 = *(v17 + 16);
    v19 = *(v17 + 17);
    v20 = *v17 == a1 && *(v17 + 8) == a2;
    if (v20 || (sub_1D992BF64()) && v18 == a3 && ((v19 ^ ((a3 & 0x100) >> 8)) & 1) == 0)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v10 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v22 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v30;
  v31 = *v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D98B71B0();
    v24 = v31;
  }

  v25 = *(v24 + 48) + 24 * v14;
  v21 = *v25;
  v26 = *(v25 + 8);
  v27 = *(v25 + 16);
  v28 = *(v25 + 17);
  sub_1D98EB330(v14);
  *v30 = v31;
  return v21;
}

uint64_t sub_1D98EB07C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1D992B1A4();
    v9 = *(v4 + 40);
    v10 = sub_1D992BBC4();
    v11 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v4 + 48) + 8 * v12);
      v14 = sub_1D992BBD4();

      if (v14)
      {
        v15 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v2;
        v19 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D98B7400();
          v17 = v19;
        }

        v8 = *(*(v17 + 48) + 8 * v12);
        sub_1D98EB50C(v12);
        *v2 = v19;
        return v8;
      }

      v10 = v12 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  v6 = a1;
  v7 = sub_1D992BCC4();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_1D98EB1EC();

  return v8;
}

uint64_t sub_1D98EB1EC()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1D992BC94();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1D98B8C80(v4, v3);
  v14 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1D992BBC4();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    sub_1D992B1A4();
    v10 = *(*(v5 + 48) + 8 * v9);
    v11 = sub_1D992BBD4();

    if (v11)
    {

      v12 = *(*(v5 + 48) + 8 * v9);
      sub_1D98EB50C(v9);
      if (sub_1D992BBD4())
      {
        *v1 = v14;
        return v12;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D98EB330(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1D992BC64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 24 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1D992C074();

        sub_1D992B6D4();
        v15 = sub_1D992C0C4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = v19 + 24 * v2;
            v21 = (v19 + 24 * v6);
            if (24 * v2 < (24 * v6) || v20 >= v21 + 24 || v2 != v6)
            {
              v24 = *v21;
              *(v20 + 16) = *(v21 + 2);
              *v20 = v24;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D98EB50C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1D992BC64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1D992BBC4();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D98EB6A0(unint64_t a1)
{
  v3 = sub_1D9866E40(a1);
  v4 = sub_1D9866E40(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1D98EAE44(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1D98EC204(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1D98EB74C()
{
  result = qword_1ECB47A00;
  if (!qword_1ECB47A00)
  {
    sub_1D992B1A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47A00);
  }

  return result;
}

void sub_1D98EB7A4(uint64_t a1)
{
  v6 = a1;
  v7 = *(a1 + 16);
  v8 = sub_1D9866E40(*v1);
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D98EAE44(v10);
  v3 = *v1;
  v2 = *v1 & 0xFFFFFFFFFFFFFF8;
  v11 = (*(v2 + 0x18) >> 1) - *(v2 + 0x10);
  sub_1D987B4E4();
  if (v12 < v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v12)
  {
    v13 = *(v2 + 16);
    v9 = __OFADD__(v13, v12);
    v14 = v13 + v12;
    if (v9)
    {
      __break(1u);
LABEL_13:
      v17 = (v2 + 64) >> 6;
      while (1)
      {
        v18 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_33;
        }

        if (v18 >= v17)
        {
          goto LABEL_7;
        }

        ++v7;
        if (*(v11 + 8 * v18))
        {
          OUTLINED_FUNCTION_11_15();
          v7 = v19;
          goto LABEL_18;
        }
      }
    }

    *(v2 + 16) = v14;
  }

  v6 = v28;
  if (v12 != v11)
  {
LABEL_7:
    sub_1D9873850();
    *v1 = v3;
    return;
  }

LABEL_10:
  v4 = *(v2 + 16);
  v11 = v29;
  v2 = v30;
  v7 = v31;
  if (!v32)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_20_5();
  v16 = v15 | (v31 << 6);
  v17 = (v30 + 64) >> 6;
LABEL_18:
  v20 = *(*(v6 + 48) + 8 * v16);
  v21 = v20;
LABEL_19:
  if (v4 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D992B7D4();
  }

  v3 = *v1;
  v26 = *v1 & 0xFFFFFFFFFFFFFF8;
  v27 = *(v26 + 0x18) >> 1;
  while (1)
  {
    if (v4 >= v27)
    {
      *(v26 + 16) = v4;
      goto LABEL_19;
    }

    *(v26 + 32 + 8 * v4++) = v20;
    if (!v5)
    {
      break;
    }

LABEL_28:
    OUTLINED_FUNCTION_16_8();
    v20 = *(*(v6 + 48) + ((v23 << 9) | (8 * v24)));
    v25 = v20;
  }

  while (1)
  {
    v22 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v22 >= v17)
    {
      *(v26 + 16) = v4;
      goto LABEL_7;
    }

    v5 = *(v11 + 8 * v22);
    ++v7;
    if (v5)
    {
      v7 = v22;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1D98EB9B4()
{
  OUTLINED_FUNCTION_6_2();
  v7 = v6;
  v8 = *(v6 + 2);
  v9 = *(*v1 + 16);
  if (__OFADD__(v9, v8))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1D986FE38(v9 + v8, 1, sub_1D98BE160);
  v0 = *v1;
  v10 = *(*v1 + 16);
  v2 = sub_1D992AE84();
  OUTLINED_FUNCTION_6(v2);
  v4 = v11;
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v3 = *(v12 + 72);
  v13 = (*(v0 + 24) >> 1) - v10;
  sub_1D987B090();
  if (v14 < v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v14)
  {
    v17 = *(v0 + 16);
    v18 = __OFADD__(v17, v14);
    v19 = v17 + v14;
    if (v18)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v0 + 16) = v19;
  }

  if (v14 != v13)
  {
    sub_1D9873850();
LABEL_8:
    *v1 = v0;
    OUTLINED_FUNCTION_7();
    return;
  }

LABEL_11:
  v55 = v5;
  v8 = *(v0 + 16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_20_0();
  v64 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v7 = v52 - v25;
  v15 = v70;
  v59 = v69;
  v16 = v71;
  v5 = v72;
  v57 = v70;
  v65 = v52 - v25;
  v52[1] = v26;
  v52[0] = v71;
  if (v73)
  {
    v27 = v4;
    OUTLINED_FUNCTION_20_5();
    v29 = v28 | (v5 << 6);
    v56 = (v30 + 64) >> 6;
LABEL_19:
    v7 = v65;
    (*(v27 + 16))(v65, *(v59 + 48) + v29 * v3, v2);
    v33 = 0;
LABEL_20:
    v34 = __swift_storeEnumTagSinglePayload(v7, v33, 1, v2);
    v60 = (v27 + 32);
    v58 = (v27 + 16);
    v53 = (v27 + 8);
    v54 = v27;
    v35 = v7;
    while (2)
    {
      MEMORY[0x1EEE9AC00](v34);
      OUTLINED_FUNCTION_8();
      v38 = v36 - v37;
      sub_1D9879FF8(v35, v36 - v37);
      if (__swift_getEnumTagSinglePayload(v38, 1, v2) != 1)
      {
        v39 = sub_1D986B804(v38, &qword_1ECB481D0, &qword_1D992F9F0);
        v62 = *(v0 + 24) >> 1;
        if (v62 < v8 + 1)
        {
          sub_1D98BE160();
          v0 = v39;
          v62 = *(v39 + 24) >> 1;
        }

        v67 = v8;
        v61 = v0 + v55;
        v63 = *(v54 + 64);
        while (1)
        {
          MEMORY[0x1EEE9AC00](v39);
          OUTLINED_FUNCTION_8();
          v42 = v40 - v41;
          v68 = v52;
          MEMORY[0x1EEE9AC00](v43);
          OUTLINED_FUNCTION_8();
          v46 = v44 - v45;
          sub_1D9879FF8(v35, v44 - v45);
          if (__swift_getEnumTagSinglePayload(v46, 1, v2) == 1)
          {
            break;
          }

          v66 = v52;
          v47 = *v60;
          (*v60)(v42, v46, v2);
          v8 = v67;
          if (v67 >= v62)
          {
            v34 = (*v53)(v42, v2);
            v35 = v65;
            goto LABEL_39;
          }

          sub_1D986B804(v65, &qword_1ECB481D0, &qword_1D992F9F0);
          v47(v61 + v8 * v3, v42, v2);
          if (!v4)
          {
            v35 = v65;
            v38 = v66;
            while (1)
            {
              v48 = v5 + 1;
              if (__OFADD__(v5, 1))
              {
                break;
              }

              if (v48 >= v56)
              {
                v4 = 0;
                v51 = 1;
                goto LABEL_35;
              }

              v4 = *(v57 + 8 * v48);
              ++v5;
              if (v4)
              {
                v5 = v48;
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          v35 = v65;
LABEL_34:
          OUTLINED_FUNCTION_16_8();
          (*v58)(v35, *(v59 + 48) + (v50 | (v49 << 6)) * v3, v2);
          v51 = 0;
LABEL_35:
          v67 = v8 + 1;
          v39 = __swift_storeEnumTagSinglePayload(v35, v51, 1, v2);
        }

        v34 = sub_1D986B804(v46, &qword_1ECB481D0, &qword_1D992F9F0);
        v8 = v67;
LABEL_39:
        *(v0 + 16) = v8;
        continue;
      }

      break;
    }

LABEL_41:
    sub_1D986B804(v35, &qword_1ECB481D0, &qword_1D992F9F0);
    sub_1D9873850();
    sub_1D986B804(v38, &qword_1ECB481D0, &qword_1D992F9F0);
    goto LABEL_8;
  }

LABEL_14:
  v56 = (v16 + 64) >> 6;
  while (1)
  {
    v31 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v31 >= ((v16 + 64) >> 6))
    {
      v27 = v4;
      v4 = 0;
      v33 = 1;
      goto LABEL_20;
    }

    ++v5;
    if (*(v15 + 8 * v31))
    {
      v27 = v4;
      OUTLINED_FUNCTION_11_15();
      v5 = v32;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1D98EBF2C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_44(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D986FE38(v4, 1, sub_1D98BDB08);
  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_28();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_19();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_10();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D98EBFD0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_44(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D986FE38(v4, 1, sub_1D98BE018);
  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_28();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_19();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_10();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D98EC074(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_44(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D986FE38(v4, 1, sub_1D98BDCF4);
  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_28();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_19();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_10();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D98EC11C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D992B614();

  [a3 setComponent_];
}

void sub_1D98EC180(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_1D986E35C(0, a3, a4);
  v7 = sub_1D992B7A4();

  [a2 *a5];
}

uint64_t sub_1D98EC204(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1D992BC94();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1D9866E40(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1D992B1A4();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1D98EC3FC();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EF8, &qword_1D9934DB8);
          v9 = sub_1D98EC368(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1D98EC368(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1D98EAEE4(a3);
  sub_1D98BF364(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1DA73A2C0](a2, a3);
  }

  *a1 = v7;
  return sub_1D98EC3F4;
}

unint64_t sub_1D98EC3FC()
{
  result = qword_1ECB48F00;
  if (!qword_1ECB48F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48EF8, &qword_1D9934DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48F00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_7()
{

  return sub_1D992B7D4();
}

uint64_t sub_1D98EC4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48968, &qword_1D9932380);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_22_8();
  sub_1D9866D34(a2, v3, &qword_1ECB48968, &qword_1D9932380);
  v11 = type metadata accessor for TagsTable.Predicate(0);
  OUTLINED_FUNCTION_19_1(v3, 1, v11);
  if (v12)
  {

    sub_1D986B804(v3, &qword_1ECB48968, &qword_1D9932380);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  else
  {
    *(&v20 + 1) = v11;
    v21 = &off_1F5516A58;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
    sub_1D986C22C(v3, boxed_opaque_existential_1);
  }

  a3[3] = &type metadata for SQLUpdate;
  a3[4] = &off_1F5516B88;
  v14 = swift_allocObject();
  *a3 = v14;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0;
  *(v14 + 64) = 0u;
  *(v14 + 16) = 1936154996;
  *(v14 + 24) = 0xE400000000000000;
  sub_1D986C284(0x5F726574746573, 0xE700000000000000, a1);
  *(v14 + 32) = 0x5F726574746573;
  *(v14 + 40) = v15;
  *(v14 + 48) = v16;
  *(v14 + 56) = v17;
  return sub_1D986D144(&v19, v14 + 64);
}

uint64_t sub_1D98EC648()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48978, &qword_1D99323A8);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21_6();
  sub_1D9866D34(v1, v0, &qword_1ECB48978, &qword_1D99323A8);
  v6 = sub_1D992AE84();
  OUTLINED_FUNCTION_19_1(v0, 1, v6);
  if (!v7)
  {
    OUTLINED_FUNCTION_0();
    v9 = v8;
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v12);
    OUTLINED_FUNCTION_13();
    v15 = v14 - v13;
    (*(v9 + 32))(v14 - v13, v0, v6);
    sub_1D992AE24();
    (*(v9 + 8))(v15, v6);
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_1D98EC7B4(uint64_t a1)
{
  v2 = type metadata accessor for LogicalClocksTable.Record(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v70 = *(v5 + 72);
    v68 = v7 + 8;
    v11 = MEMORY[0x1E69E7CC8];
    v69 = v4;
    v12 = v4;
    v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v72 = v8;
      v77 = v9;
      v78 = v11;
      v76 = v10;
      sub_1D986BC08(v10, v7);
      v13 = sub_1D992AE84();
      v75 = &v68;
      v14 = *(v13 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x1EEE9AC00](v13);
      v71 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
      v16 = &v68 - v71;
      v17 = v12[6];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v74 = &v68;
      v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v18 - 8);
      v21 = &v68 - v20;
      v22 = v13;
      sub_1D9866D34(&v7[v17], &v68 - v20, &qword_1ECB481D0, &qword_1D992F9F0);
      if (__swift_getEnumTagSinglePayload(v21, 1, v13) == 1)
      {
        v23 = sub_1D986B804(v21, &qword_1ECB481D0, &qword_1D992F9F0);
        v75 = &v68;
        v24 = MEMORY[0x1EEE9AC00](v23);
        v25 = v71;
        v26 = &v68 - v71;
        v27 = *(v14 + 16);
        v28 = v73;
        v29 = v27(&v68 - v71, v73, v22, v24);
        v74 = &v68;
        v30 = v12[5];
        v31 = MEMORY[0x1EEE9AC00](v29);
        v32 = &v68 - v25;
        v27(&v68 - v25, (v28 + v33), v22, v31);
        v34 = v12[8];
        v35 = v28 + v12[7];
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        v39 = *(v35 + 24);
        v40 = *(v35 + 25);
        if (v40)
        {
          v41 = 0;
        }

        else
        {
          v41 = v38;
        }

        v42 = v40 | v39;
        if ((v40 | v37))
        {
          v43 = 0;
        }

        else
        {
          v43 = v36;
        }

        v44 = *(v28 + v34);
        v45 = *(v28 + v34 + 8);
        v46 = v68[v12[9]];
        v47 = type metadata accessor for LogicalClockRecord();
        v48 = *(v47 + 48);
        v49 = *(v47 + 52);
        swift_allocObject();
        sub_1D98C5504(v26, v32, v43, v41, v42 & 1, v44, v45, 0, v46);
        MEMORY[0x1DA739CE0]();
        if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D992B7D4();
        }

        sub_1D992B7F4();
        v7 = v73;
        sub_1D9870FB8(v73, type metadata accessor for LogicalClocksTable.Record);
        v8 = v81;
        v11 = v78;
      }

      else
      {
        v50 = v73;
        v51 = (*(v14 + 32))(v16, v21, v13);
        v52 = v78;
        if (*(v78 + 16) && (v51 = sub_1D9889568(), (v53 & 1) != 0))
        {
          v80 = *(*(v52 + 56) + 8 * v51);
        }

        else
        {
          v80 = MEMORY[0x1E69E7CD0];
        }

        v74 = &v68;
        MEMORY[0x1EEE9AC00](v51);
        v55 = MEMORY[0x1EEE9AC00](v54);
        v7 = v50;
        (*(v14 + 16))(&v68 - v56, v50, v13, v55);
        sub_1D98B6650();
        v57 = *(v14 + 8);
        v57(&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
        v58 = v80;
        v59 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v59;
        sub_1D989DF08(v58, v16, isUniquelyReferenced_nonNull_native);
        v57(v16, v22);
        sub_1D9870FB8(v50, type metadata accessor for LogicalClocksTable.Record);
        v11 = v79;
        v12 = v69;
        v8 = v72;
      }

      v10 = v76 + v70;
      v9 = v77 - 1;
    }

    while (v77 != 1);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1D98682F0(v8);
  if (!result)
  {
    goto LABEL_32;
  }

  v62 = result;
  if (result >= 1)
  {
    for (i = 0; i != v62; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1DA73A2C0](i, v8);
      }

      else
      {
        v64 = *(v8 + 8 * i + 32);
      }

      if (*(v11 + 16) && (v65 = sub_1D9889568(), (v66 & 1) != 0))
      {
        v67 = *(v64 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_derivativeClockIDs);
        *(v64 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_derivativeClockIDs) = *(*(v11 + 56) + 8 * v65);
      }

      else
      {
      }
    }

LABEL_32:

    return v8;
  }

  __break(1u);
  return result;
}

void sub_1D98ECE2C()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E00, &qword_1D9934AB8);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v90 - v12;
  v101 = type metadata accessor for LogicalClocksTable.Predicate(0);
  v13 = OUTLINED_FUNCTION_5(v101);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v100 = v17 - v16;
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v18 = qword_1ECB49610;
  v103 = 0;
  v104 = 0xE000000000000000;
  sub_1D992BD64();
  v19 = sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BD8D0);
  v20 = sub_1D992BF34();
  v22 = v21;

  v103 = v20;
  v104 = v22;
  MEMORY[0x1DA739C30](0x203A6E6F20, 0xE500000000000000);
  v106 = v5;
  v23 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v23);

  MEMORY[0x1DA739C30](0x3A6E6F7361657220, 0xE900000000000020);
  v106 = v3;
  v24 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v24);

  v98 = "pulseClock(_:lastEventOn:)";
  v99 = v18;
  sub_1D986A454(v103, v104, 0xD00000000000007BLL, 0x80000001D993C0E0, 0xD000000000000020, 0x80000001D993BBE0);

  if (sub_1D986AC54(0))
  {
    v25 = *(v1 + OBJC_IVAR___SiriAnalyticsMetastore_db);
    if (v25)
    {
      v91 = "No clock records found.";
      v95 = v3;
      v26 = v100;
      (*(*(v19 - 8) + 16))(v100, v7, v19);
      OUTLINED_FUNCTION_76();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v19);
      v30 = v25;
      v31 = v101;
      v32 = *(v101 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
      *(v26 + *(v31 + 20)) = 0;
      *(v26 + *(v31 + 28)) = 2;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48970, &qword_1D99323A0);
      v96 = &v90;
      v38 = OUTLINED_FUNCTION_9(v37);
      v40 = *(v39 + 64);
      MEMORY[0x1EEE9AC00](v38);
      v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48978, &qword_1D99323A8);
      OUTLINED_FUNCTION_10_4();
      v46 = __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
      v93 = &v90;
      MEMORY[0x1EEE9AC00](v46);
      v47 = &v90 - v41;
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v42);
      v97 = v30;

      Nanoseconds = SiriAnalyticsMachAbsoluteTimeGetNanoseconds(v5);
      MEMORY[0x1EEE9AC00](Nanoseconds);
      v51 = &v90 - v41;
      v94 = &v90 - v41;
      v52 = OUTLINED_FUNCTION_24_6();
      sub_1D9866D34(v52, v53, &qword_1ECB48970, &qword_1D99323A0);
      OUTLINED_FUNCTION_19_1(&v90 - v41, 1, v42);
      if (v54)
      {
        v60 = sub_1D986B804(&v90 - v41, &qword_1ECB48970, &qword_1D99323A0);
        v55 = MEMORY[0x1E69E7CC8];
      }

      else
      {
        v56 = sub_1D98EC648();
        v90 = v57;
        v59 = v58;
        v41 = ~v58;
        v60 = sub_1D986B804(v51, &qword_1ECB48978, &qword_1D99323A8);
        v55 = MEMORY[0x1E69E7CC8];
        if (v41)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v103 = v55;
          OUTLINED_FUNCTION_14_12();
          v41 = &v103;
          v60 = sub_1D986B85C(v56, v90, v59, v61, 0xE800000000000000, 0);
          v55 = v103;
        }
      }

      MEMORY[0x1EEE9AC00](v60);
      OUTLINED_FUNCTION_25_6();
      sub_1D9866D34(v47, v41, &qword_1ECB48970, &qword_1D99323A0);
      v62 = OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_19_1(v62, v63, v42);
      if (v54)
      {
        sub_1D986B804(v41, &qword_1ECB48970, &qword_1D99323A0);
      }

      else
      {
        v64 = sub_1D98EC648();
        v66 = v65;
        v68 = v67;
        v69 = ~v67;
        sub_1D986B804(v41, &qword_1ECB48978, &qword_1D99323A8);
        if (v69)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v103 = v55;
          sub_1D986B85C(v64, v66, v68, 0xD000000000000011, 0x80000001D9936910, 0);
          v55 = v103;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v103 = v55;
      OUTLINED_FUNCTION_30_6();
      sub_1D986B85C(v70, v71, v72, v73, 0xE800000000000000, 258);
      v74 = v103;
      swift_isUniquelyReferenced_nonNull_native();
      v103 = v74;
      OUTLINED_FUNCTION_16_9();
      OUTLINED_FUNCTION_30_6();
      sub_1D986B85C(v75, v76, v77, v78, v79, 258);
      v80 = v103;
      sub_1D986B804(v47, &qword_1ECB48970, &qword_1D99323A0);
      sub_1D986B804(v94, &qword_1ECB48970, &qword_1D99323A0);
      OUTLINED_FUNCTION_2_29();
      v81 = v102;
      sub_1D986BC08(v26, v102);
      OUTLINED_FUNCTION_76();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v31);
      sub_1D986BD4C(v80, v81, &v103);

      sub_1D986B804(v81, &qword_1ECB48E00, &qword_1D9934AB8);
      __swift_project_boxed_opaque_existential_1(&v103, v105);
      OUTLINED_FUNCTION_32_7();
      LOBYTE(v80) = sub_1D986D1D0(v85, v86, v87);
      __swift_destroy_boxed_opaque_existential_1(&v103);
      if (v80)
      {
        OUTLINED_FUNCTION_0_45();
        sub_1D9870FB8(v26, v88);
      }

      else
      {
        sub_1D98DCEB4(0xD00000000000001BLL, 0x80000001D993C230, 0xD00000000000007BLL, v91 | 0x8000000000000000, 0xD000000000000020, v98 | 0x8000000000000000);

        OUTLINED_FUNCTION_0_45();
        sub_1D9870FB8(v26, v89);
      }
    }
  }

  OUTLINED_FUNCTION_7();
}

void sub_1D98ED558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_2();
  a19 = v21;
  a20 = v22;
  v244 = v23;
  v239 = type metadata accessor for LogicalClocksTable.Record(0);
  OUTLINED_FUNCTION_0();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  v240 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E00, &qword_1D9934AB8);
  OUTLINED_FUNCTION_9(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v34);
  v232 = &v221 - v35;
  v234 = type metadata accessor for LogicalClocksTable.Predicate(0);
  v36 = OUTLINED_FUNCTION_5(v234);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_1();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v221 - v43;
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v45 = qword_1ECB49610;
  OUTLINED_FUNCTION_20_6();
  sub_1D986A454(v46, v47, v48, v49, v50, v51);
  if (sub_1D986AC54(0))
  {
    v52 = *(v20 + OBJC_IVAR___SiriAnalyticsMetastore_db);
    if (v52)
    {
      sub_1D992AE84();
      OUTLINED_FUNCTION_10_4();
      v248 = v53;
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
      v57 = v234;
      v58 = *(v234 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
      OUTLINED_FUNCTION_10_4();
      v223 = v59;
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
      *&v44[*(v57 + 20)] = 0;
      v44[*(v57 + 28)] = 0;
      OUTLINED_FUNCTION_2_29();
      v63 = v232;
      sub_1D986BC08(v44, v232);
      OUTLINED_FUNCTION_76();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v57);

      sub_1D98FD528(v253);
      sub_1D986B804(v63, &qword_1ECB48E00, &qword_1D9934AB8);
      __swift_project_boxed_opaque_existential_1(v253, v253[3]);
      OUTLINED_FUNCTION_32_7();
      v71 = sub_1D990C140(v67, v68, v69, v70);
      if (v71)
      {
        v72 = v71;
        v227 = v52;
        v221 = v41;
        v222 = v44;
        v249 = 0;
        v250 = 0xE000000000000000;
        sub_1D992BD64();

        v249 = 0x20646E756F46;
        v250 = 0xE600000000000000;
        v252 = *(v72 + 16);
        v73 = sub_1D992BF34();
        v228 = v72;
        MEMORY[0x1DA739C30](v73);

        MEMORY[0x1DA739C30](0xD000000000000014, 0x80000001D9936E30);
        v74 = v250;
        v224 = "No clock records found.";
        v225 = "ClockStream.swift";
        OUTLINED_FUNCTION_20_6();
        v226 = v45;
        sub_1D986A454(v75, v76, v77, v78, v79, v80);
        v81 = v228;

        v82 = *(v81 + 16);
        if (v82)
        {
          v83 = v81 + ((v25[80] + 32) & ~v25[80]);
          v84 = MEMORY[0x1E69E7CC0];
          v85 = v248;
          v242 = *(v25 + 9);
          v243 = v248 - 1;
          v86 = v240;
          while (1)
          {
            v248 = v82;
            v246 = v83;
            sub_1D986BC08(v83, v86);
            v247 = &v221;
            v87 = *(v85 - 8);
            v88 = *(v87 + 64);
            OUTLINED_FUNCTION_20_0();
            v245 = v89;
            MEMORY[0x1EEE9AC00](v90);
            OUTLINED_FUNCTION_22_8();
            v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
            v92 = OUTLINED_FUNCTION_9(v91);
            v94 = *(v93 + 64);
            MEMORY[0x1EEE9AC00](v92);
            OUTLINED_FUNCTION_21_6();
            sub_1D9866D34(v244, v25, &qword_1ECB481D0, &qword_1D992F9F0);
            OUTLINED_FUNCTION_19_1(v25, 1, v85);
            if (v129)
            {
              break;
            }

            v241 = v84;
            v102 = v85;
            v103 = *(v87 + 32);
            v103(v74, v25, v102);
            v104 = sub_1D992AE54();
            if (v104)
            {
              v105 = *(v87 + 8);
              v106 = OUTLINED_FUNCTION_24_6();
              v107(v106);
              v85 = v102;
              v84 = v241;
            }

            else
            {
              v230 = v87 + 32;
              v231 = v103;
              v238 = &v221;
              v109 = *(v239 + 24);
              v110 = MEMORY[0x1EEE9AC00](v104);
              v233 = ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
              v111 = (&v221 - v233);
              v235 = *(v87 + 16);
              v235(&v221 - v233, v74, v102, v110);
              OUTLINED_FUNCTION_76();
              __swift_storeEnumTagSinglePayload(v112, v113, v114, v102);
              v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48378, &qword_1D992F9F8);
              v237 = &v221;
              OUTLINED_FUNCTION_9(v115);
              v117 = *(v116 + 64);
              OUTLINED_FUNCTION_20_0();
              MEMORY[0x1EEE9AC00](v118);
              OUTLINED_FUNCTION_21_6();
              v120 = *(v119 + 56);
              sub_1D9866D34(v86 + v109, v25, &qword_1ECB481D0, &qword_1D992F9F0);
              v236 = v120;
              sub_1D9866D34(v111, &v25[v120], &qword_1ECB481D0, &qword_1D992F9F0);
              v121 = OUTLINED_FUNCTION_19_1(v25, 1, v102);
              if (v129)
              {
                sub_1D986B804(v111, &qword_1ECB481D0, &qword_1D992F9F0);
                v122 = *(v87 + 8);
                v123 = OUTLINED_FUNCTION_24_6();
                v124(v123);
                OUTLINED_FUNCTION_19_1(&v25[v236], 1, v102);
                v85 = v102;
                v84 = v241;
                if (!v129)
                {
                  goto LABEL_29;
                }

                sub_1D986B804(v25, &qword_1ECB481D0, &qword_1D992F9F0);
                OUTLINED_FUNCTION_7_18();
                v86 = v240;
              }

              else
              {
                v229 = &v221;
                MEMORY[0x1EEE9AC00](v121);
                v125 = (&v221 - v233);
                v126 = OUTLINED_FUNCTION_27();
                sub_1D9866D34(v126, v127, &qword_1ECB481D0, &qword_1D992F9F0);
                v128 = v236;
                v130 = OUTLINED_FUNCTION_19_1(&v25[v236], 1, v102);
                if (v129)
                {
                  sub_1D986B804(v111, &qword_1ECB481D0, &qword_1D992F9F0);
                  v131 = v125;
                  v132 = *(v87 + 8);
                  v133 = OUTLINED_FUNCTION_24_6();
                  v132(v133);
                  (v132)(v131, v102);
                  OUTLINED_FUNCTION_12_1(&a9);
                  v85 = v102;
                  v84 = v241;
LABEL_29:
                  sub_1D986B804(v25, &qword_1ECB48378, &qword_1D992F9F8);
                  OUTLINED_FUNCTION_7_18();
                  v86 = v240;
LABEL_11:
                  v97 = MEMORY[0x1EEE9AC00](v95);
                  v25 = &v221 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v99(v25, v86, v85, v97);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v139 = *(v84 + 16);
                    sub_1D98BE160();
                    v84 = v140;
                  }

                  v100 = *(v84 + 16);
                  if (v100 >= *(v84 + 24) >> 1)
                  {
                    sub_1D98BE160();
                    v84 = v141;
                  }

                  OUTLINED_FUNCTION_3_17();
                  sub_1D9870FB8(v86, v101);
                  *(v84 + 16) = v100 + 1;
                  (*(v87 + 32))(v84 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v100, v25, v85);
                  goto LABEL_19;
                }

                v233 = &v221;
                v134 = MEMORY[0x1EEE9AC00](v130);
                v136 = &v221 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
                v231(v136, &v25[v128], v102, v134);
                sub_1D9882D14(&qword_1ED8BF058);
                v231 = v125;
                LODWORD(v236) = sub_1D992B5F4();
                v137 = *(v87 + 8);
                v137(v136, v102);
                sub_1D986B804(v111, &qword_1ECB481D0, &qword_1D992F9F0);
                v138 = OUTLINED_FUNCTION_24_6();
                (v137)(v138);
                v137(v231, v102);
                OUTLINED_FUNCTION_12_1(&a13);
                OUTLINED_FUNCTION_12_1(&a9);
                sub_1D986B804(v25, &qword_1ECB481D0, &qword_1D992F9F0);
                OUTLINED_FUNCTION_7_18();
                v86 = v240;
                v84 = v241;
                v85 = v102;
                if ((v236 & 1) == 0)
                {
                  goto LABEL_11;
                }
              }
            }

            OUTLINED_FUNCTION_3_17();
            sub_1D9870FB8(v86, v108);
LABEL_19:
            v83 = v246 + v242;
            v82 = (v248 - 1);
            if (v248 == 1)
            {
              goto LABEL_34;
            }
          }

          v95 = sub_1D986B804(v25, &qword_1ECB481D0, &qword_1D992F9F0);
          v96 = *(v87 + 16);
          goto LABEL_11;
        }

        v84 = MEMORY[0x1E69E7CC0];
        v85 = v248;
LABEL_34:

        if (*(v84 + 16))
        {
          v249 = 0;
          v250 = 0xE000000000000000;
          sub_1D992BD64();

          v249 = 0xD000000000000029;
          v250 = 0x80000001D993C1B0;

          v151 = MEMORY[0x1DA739D10](v150, v85);
          MEMORY[0x1DA739C30](v151);

          OUTLINED_FUNCTION_6_20();
          OUTLINED_FUNCTION_20_6();
          sub_1D98DCECC(v152, v153, v154, v155, v156, v157);

          v158 = v221;
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v159, v160, v161, v85);

          v162 = v234;
          v163 = *(v234 + 24);
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v164, v165, v166, v223);
          *(v158 + *(v162 + 20)) = v84;
          *(v158 + *(v162 + 28)) = 2;
          v167 = &qword_1ECB48970;
          v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48970, &qword_1D99323A0);
          v248 = &v221;
          v169 = OUTLINED_FUNCTION_9(v168);
          v171 = *(v170 + 64);
          MEMORY[0x1EEE9AC00](v169);
          v172 = &v221 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
          v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48978, &qword_1D99323A8);
          OUTLINED_FUNCTION_10_4();
          v177 = __swift_storeEnumTagSinglePayload(v174, v175, v176, v173);
          v247 = &v221;
          MEMORY[0x1EEE9AC00](v177);
          OUTLINED_FUNCTION_10_4();
          v181 = __swift_storeEnumTagSinglePayload(v178, v179, v180, v173);
          MEMORY[0x1EEE9AC00](v181);
          sub_1D9866D34(v172, v172, &qword_1ECB48970, &qword_1D99323A0);
          OUTLINED_FUNCTION_19_1(v172, 1, v173);
          if (v129)
          {
            v193 = sub_1D986B804(v172, &qword_1ECB48970, &qword_1D99323A0);
            v182 = MEMORY[0x1E69E7CC8];
          }

          else
          {
            v246 = sub_1D98EC648();
            v190 = v189;
            v192 = v191;
            v167 = ~v191;
            v193 = sub_1D986B804(v172, &qword_1ECB48978, &qword_1D99323A8);
            v182 = MEMORY[0x1E69E7CC8];
            if (v167)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v249 = v182;
              OUTLINED_FUNCTION_14_12();
              v167 = &v249;
              v193 = sub_1D986B85C(v246, v190, v192, v194, 0xE800000000000000, 0);
              v182 = v249;
            }

            v158 = v221;
          }

          MEMORY[0x1EEE9AC00](v193);
          OUTLINED_FUNCTION_25_6();
          sub_1D9866D34(v172, v167, &qword_1ECB48970, &qword_1D99323A0);
          v195 = OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_19_1(v195, v196, v173);
          if (v129)
          {
            sub_1D986B804(v167, &qword_1ECB48970, &qword_1D99323A0);
          }

          else
          {
            v197 = sub_1D98EC648();
            v199 = v198;
            v201 = v200;
            v202 = ~v200;
            sub_1D986B804(v167, &qword_1ECB48978, &qword_1D99323A8);
            if (v202)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v249 = v182;
              sub_1D986B85C(v197, v199, v201, 0xD000000000000011, 0x80000001D9936910, 0);
              v182 = v249;
            }
          }

          swift_isUniquelyReferenced_nonNull_native();
          v249 = v182;
          OUTLINED_FUNCTION_16_9();
          OUTLINED_FUNCTION_30_6();
          sub_1D986B85C(v203, v204, v205, v206, v207, 258);
          v208 = v249;
          OUTLINED_FUNCTION_34_3(v172);
          OUTLINED_FUNCTION_34_3(v172);
          OUTLINED_FUNCTION_2_29();
          v209 = v232;
          sub_1D986BC08(v158, v232);
          OUTLINED_FUNCTION_76();
          __swift_storeEnumTagSinglePayload(v210, v211, v212, v234);
          sub_1D986BD4C(v208, v209, &v249);

          sub_1D986B804(v209, &qword_1ECB48E00, &qword_1D9934AB8);
          v213 = v251;
          v214 = __swift_project_boxed_opaque_existential_1(&v249, v251);
          if ((sub_1D986D1D0(v214, v227, v213) & 1) == 0)
          {
            OUTLINED_FUNCTION_6_20();
            OUTLINED_FUNCTION_20_6();
            sub_1D98DCEB4(v215, v216, v217, v218, v219, v220);
          }

          sub_1D9870FB8(v158, type metadata accessor for LogicalClocksTable.Predicate);
          __swift_destroy_boxed_opaque_existential_1(v253);
          sub_1D9870FB8(v222, type metadata accessor for LogicalClocksTable.Predicate);
          __swift_destroy_boxed_opaque_existential_1(&v249);
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_6_20();
        OUTLINED_FUNCTION_20_6();
        sub_1D986A454(v183, v184, v185, v186, v187, v188);

        __swift_destroy_boxed_opaque_existential_1(v253);
        OUTLINED_FUNCTION_0_45();
        v149 = v222;
      }

      else
      {
        OUTLINED_FUNCTION_20_6();
        sub_1D986A454(v142, v143, v144, v145, v146, v147);

        __swift_destroy_boxed_opaque_existential_1(v253);
        OUTLINED_FUNCTION_0_45();
        v149 = v44;
      }

      sub_1D9870FB8(v149, v148);
    }
  }

LABEL_51:
  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98EE548(uint64_t a1)
{
  if ((sub_1D986AC54(0) & 1) == 0 || !*(v1 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48AC0, &qword_1D9932730);
  OUTLINED_FUNCTION_31_7();
  v3 = sub_1D992AE84();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D992FCB0;
  (*(v5 + 16))(v9 + v8, a1, v3);

  sub_1D98B399C();
  v10 = OUTLINED_FUNCTION_31_7();
  v11 = sub_1D98EF6FC(v10, v9);

  if (!v11)
  {
    if (qword_1ED8BD6D0 != -1)
    {
      OUTLINED_FUNCTION_1_2();
    }

    sub_1D986A454(0xD000000000000017, 0x80000001D993C0C0, 0xD00000000000007BLL, 0x80000001D993C0E0, 0x636F6C43746F6F72, 0xEE00293A7962286BLL);
    goto LABEL_12;
  }

  v12 = sub_1D98EC7B4(v11);

  if (!sub_1D98682F0(v12))
  {

LABEL_12:

    return 0;
  }

  sub_1D98BF364(0, (v12 & 0xC000000000000001) == 0, v12);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1DA73A2C0](0, v12);
  }

  else
  {
    v13 = *(v12 + 32);
  }

  return v13;
}

void sub_1D98EE774()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SelectRootClockId(0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_23_1();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v64 - v13;
  if ((sub_1D986AC54(0) & 1) != 0 && *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    v15 = sub_1D992AE84();
    OUTLINED_FUNCTION_5(v15);
    (*(v16 + 16))(v14, v2, v15);
    sub_1D986BC08(v14, v11);

    v17 = sub_1D9893D00();
    v19 = v18;
    v21 = v20;
    sub_1D9870FB8(v11, type metadata accessor for SelectRootClockId);
    v22 = sub_1D990B8D4(v17, v19, v21);

    if (!v22)
    {
      OUTLINED_FUNCTION_4_20();

      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v15);
LABEL_22:
      OUTLINED_FUNCTION_7();
      return;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    v24 = OUTLINED_FUNCTION_5(v23);
    v26 = *(v25 + 64);
    MEMORY[0x1EEE9AC00](v24);
    v28 = v64 - v27;
    if (*(v22 + 16))
    {
      v29 = *(v22 + 32);

      if (*(v29 + 16))
      {
        v30 = sub_1D9889410(0x6F6C635F746F6F72, 0xED000064695F6B63);
        if (v31)
        {
          v64[0] = v23;
          v64[1] = v64;
          v32 = *(v29 + 56) + 24 * v30;
          v33 = *v32;
          v34 = *(v32 + 8);
          v35 = *(v32 + 16);
          sub_1D986C8B8(*v32, v34, *(v32 + 16));

          if (v35 == 4 && (v34 | v33) == 0)
          {
            OUTLINED_FUNCTION_10_4();
            __swift_storeEnumTagSinglePayload(v51, v52, v53, v15);
          }

          else
          {
            MEMORY[0x1EEE9AC00](v36);
            OUTLINED_FUNCTION_8_5();
            if (v38 == 3)
            {
              v39 = 3;
              v54 = OUTLINED_FUNCTION_33_6();
              sub_1D987BA38(v54, v55);
              OUTLINED_FUNCTION_29_6();
              sub_1D992AD64();
              v56 = OUTLINED_FUNCTION_29_6();
              sub_1D986C908(v56, v57, 3);
            }

            else
            {
              v39 = v38;
              if (v38)
              {
                OUTLINED_FUNCTION_10_4();
                __swift_storeEnumTagSinglePayload(v58, v59, v60, v15);
              }

              else
              {
                OUTLINED_FUNCTION_33_6();
                sub_1D992AE14();
              }
            }

            v61 = swift_dynamicCast();
            __swift_storeEnumTagSinglePayload(v28, v61 ^ 1u, 1, v15);

            v62 = OUTLINED_FUNCTION_29_6();
            sub_1D986C908(v62, v63, v39);
          }

          OUTLINED_FUNCTION_4_20();
          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_4_20();
    }

    else
    {
      OUTLINED_FUNCTION_4_20();
    }

    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v15);
LABEL_21:
    sub_1D98EF68C(v28, v4);
    goto LABEL_22;
  }

  sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_7();

  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
}

void sub_1D98EEB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_2();
  a19 = v21;
  a20 = v22;
  v131 = v20;
  v133 = v23;
  v124 = v24;
  v26 = v25;
  v28 = v27;
  v129 = type metadata accessor for LogicalClocksTable.Record(0);
  v29 = OUTLINED_FUNCTION_5(v129);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_23_1();
  v130 = v32 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v127 = &v117 - v35;
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v132 = qword_1ECB49610;
  *&v135 = 0;
  *(&v135 + 1) = 0xE000000000000000;
  sub_1D992BD64();
  v36 = sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BD8D0);
  v123 = v28;
  v37 = sub_1D992BF34();
  v39 = v38;

  *&v135 = v37;
  *(&v135 + 1) = v39;
  MEMORY[0x1DA739C30](0x203A746F6F7220, 0xE700000000000000);
  v40 = OUTLINED_FUNCTION_27();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
  v43 = OUTLINED_FUNCTION_5(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v126 = v26;
  sub_1D9866D34(v26, &v117 - v46, &qword_1ECB481D0, &qword_1D992F9F0);
  v47 = sub_1D992B6A4();
  MEMORY[0x1DA739C30](v47);

  MEMORY[0x1DA739C30](0xD000000000000011, 0x80000001D9936EE0);
  if (qword_1ECB47FB0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v36, qword_1ECB496F0);
  OUTLINED_FUNCTION_0();
  v49 = v48;
  v51 = *(v50 + 64);
  v53 = MEMORY[0x1EEE9AC00](v52);
  v54 = *(v49 + 16);
  Nanoseconds = v55;
  v128 = v54;
  (v54)(&v117 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0), v53);
  v56 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v56);

  v125 = *(v49 + 8);
  v125(&v117 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
  MEMORY[0x1DA739C30](0x203A6E6F20, 0xE500000000000000);
  v134 = v133;
  v57 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v57);

  v122 = "Failed to end stored clock.";
  sub_1D986A454(v135, *(&v135 + 1), 0xD00000000000007BLL, 0x80000001D993C0E0, 0xD00000000000003DLL, 0x80000001D993C250);

  v58 = v131;
  v59 = sub_1D986AC54(0);
  if (v59)
  {
    if (*&v58[OBJC_IVAR___SiriAnalyticsMetastore_db])
    {
      v117 = &v117;
      v60 = MEMORY[0x1EEE9AC00](v59);
      v61 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
      v119 = &v117 - v61;
      v62 = v128;
      v63 = v128(v60);
      v123 = &v117;
      MEMORY[0x1EEE9AC00](v63);
      v131 = &v117 - v61;
      MEMORY[0x1EEE9AC00](v64);
      OUTLINED_FUNCTION_8_5();
      v67 = v65 - v66;
      sub_1D9866D34(v124, v65 - v66, &qword_1ECB481D0, &qword_1D992F9F0);
      v68 = OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_19_1(v68, v69, v36);
      v118 = "No clock records found.";
      if (v70)
      {
        (v62)(v131, Nanoseconds, v36);
        v71 = OUTLINED_FUNCTION_10();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, v72, v36);

        if (EnumTagSinglePayload != 1)
        {
          v74 = sub_1D986B804(v67, &qword_1ECB481D0, &qword_1D992F9F0);
        }
      }

      else
      {
        (*(v49 + 32))(v131, v67, v36);
      }

      v124 = &v117;
      MEMORY[0x1EEE9AC00](v74);
      OUTLINED_FUNCTION_8_5();
      v77 = v75 - v76;
      sub_1D9866D34(v126, v75 - v76, &qword_1ECB481D0, &qword_1D992F9F0);
      Nanoseconds = SiriAnalyticsMachAbsoluteTimeGetNanoseconds(v133);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
      v133 = &v117;
      v79 = OUTLINED_FUNCTION_9(v78);
      v81 = *(v80 + 64);
      MEMORY[0x1EEE9AC00](v79);
      v126 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
      v82 = &v117 - v126;
      v83 = sub_1D992AE04();
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
      v87 = v130;
      v88 = v128;
      (v128)(v130, v119, v36);
      v89 = v129;
      (v88)(v87 + v129[5], v131, v36);
      v90 = v77;
      sub_1D9866D34(v77, v87 + v89[6], &qword_1ECB481D0, &qword_1D992F9F0);
      v128 = &v117;
      v91 = v87 + v89[7];
      *(v91 + 8) = 0;
      *(v91 + 16) = 0;
      *v91 = Nanoseconds;
      *(v91 + 24) = 1;
      v92 = v87 + v89[8];
      *v92 = 0;
      *(v92 + 8) = 1;
      v93 = v87 + v89[9];
      *v93 = 0;
      *(v93 + 8) = 1;
      OUTLINED_FUNCTION_0();
      v95 = v94;
      v97 = *(v96 + 64);
      MEMORY[0x1EEE9AC00](v98);
      OUTLINED_FUNCTION_13();
      v101 = v100 - v99;
      MEMORY[0x1EEE9AC00](v102);
      v103 = &v117 - v126;
      sub_1D9866D34(v82, &v117 - v126, &qword_1ECB48710, &qword_1D9931340);
      OUTLINED_FUNCTION_19_1(v103, 1, v83);
      if (v70)
      {
        sub_1D992ADF4();
        sub_1D986B804(v82, &qword_1ECB48710, &qword_1D9931340);
        sub_1D986B804(v90, &qword_1ECB481D0, &qword_1D992F9F0);
        v104 = v125;
        v125(v131, v36);
        v104(v119, v36);
        OUTLINED_FUNCTION_19_1(v103, 1, v83);
        if (!v70)
        {
          sub_1D986B804(v103, &qword_1ECB48710, &qword_1D9931340);
        }
      }

      else
      {
        sub_1D986B804(v82, &qword_1ECB48710, &qword_1D9931340);
        sub_1D986B804(v90, &qword_1ECB481D0, &qword_1D992F9F0);
        v105 = v125;
        v125(v131, v36);
        v105(v119, v36);
        (*(v95 + 32))(v101, v103, v83);
      }

      v106 = v130;
      (*(v95 + 32))(v130 + v129[10], v101, v83);
      v107 = v127;
      sub_1D986C22C(v106, v127);
      OUTLINED_FUNCTION_12_1(&a17);
      v108 = sub_1D9893494();
      v109 = sub_1D98B3B0C(&unk_1F55180D0);
      *&v135 = sub_1D98B3B0C(&unk_1F55181B0);
      sub_1D98D81B4(v109);
      v110 = sub_1D98D4538(v135);
      strcpy(&v135, "logical_clocks");
      HIBYTE(v135) = -18;
      v136 = v108;
      v137 = &unk_1F55181B0;
      v138 = v110;
      v111 = sub_1D990C31C();
      v114 = sub_1D987005C(v111, v112, v113);

      if (v114)
      {
        OUTLINED_FUNCTION_3_17();
        sub_1D9870FB8(v107, v115);
      }

      else
      {
        sub_1D98DCEB4(0xD00000000000001ELL, 0x80000001D993C290, 0xD00000000000007BLL, v118 | 0x8000000000000000, 0xD00000000000003DLL, v122 | 0x8000000000000000);

        OUTLINED_FUNCTION_3_17();
        sub_1D9870FB8(v107, v116);
      }
    }
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98EF554()
{
  if ((sub_1D986AC54(0) & 1) == 0 || !*(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db);

  sub_1D98FD528(v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  OUTLINED_FUNCTION_32_7();
  v6 = sub_1D990C140(v2, v3, v4, v5);
  if (!v6)
  {
    if (qword_1ED8BD6D0 != -1)
    {
      OUTLINED_FUNCTION_1_2();
    }

    sub_1D986A454(0xD000000000000021, 0x80000001D993C2B0, 0xD00000000000007BLL, 0x80000001D993C0E0, 0xD00000000000001DLL, 0x80000001D993C2E0);

    __swift_destroy_boxed_opaque_existential_1(v9);
    return 0;
  }

  v7 = sub_1D98EC7B4(v6);

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t sub_1D98EF68C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98EF6FC(uint64_t a1, uint64_t a2)
{
  v5[3] = &type metadata for SelectRootAndDerivativeClocks;
  v5[4] = &off_1F5518F78;
  v5[0] = a1;
  v5[1] = a2;

  v2 = objc_autoreleasePoolPush();
  v3 = sub_1D987F16C();
  objc_autoreleasePoolPop(v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D98EF7C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1D98EF830(uint64_t a1, uint64_t a2)
{
  sub_1D98F1BC8(a2, *(*(a1 + 64) + 40), &qword_1ECB48440, &qword_1D9930058);

  return MEMORY[0x1EEE6DEE0](a1);
}

uint64_t sub_1D98EF898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x1EEE6DEE0]();
}

uint64_t sub_1D98EF8DC(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return MEMORY[0x1EEE6DEE0]();
}

uint64_t sub_1D98EF900(uint64_t a1)
{
  v64 = type metadata accessor for IdentifiableTag();
  v63 = *(v64 - 8);
  v2 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v4 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E7CC8];
  v87 = MEMORY[0x1E69E7CC8];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F40, &qword_1D9934EA0);
  v61[0] = v61;
  v75 = v10;
  v76 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v67 = v61 - v11;
  v12 = (v7 + 63) >> 6;

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v66 = v12;
  v65 = a1;
  v62 = a1 + 64;
  if (v9)
  {
    while (1)
    {
      v74 = v5;
LABEL_10:
      v72 = v14;
      v73 = v9;
      v17 = __clz(__rbit64(v9)) | (v14 << 6);
      v18 = *(a1 + 48);
      v19 = sub_1D992AE84();
      v71 = *(v19 - 8);
      v69 = *(v71 + 72);
      v20 = v67;
      v81 = *(v71 + 16);
      v82 = v19;
      v80 = v71 + 16;
      v21 = v81(v67, v18 + v69 * v17);
      v70 = v61;
      v22 = *(*(a1 + 56) + 8 * v17);
      v23 = v75;
      *(v20 + *(v75 + 48)) = v22;
      MEMORY[0x1EEE9AC00](v21);
      v25 = v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1D98F1BC8(v20, v25, &qword_1ECB48F40, &qword_1D9934EA0);
      v26 = *&v25[*(v23 + 48)];
      v86 = v15;
      v27 = *(v26 + 16);
      if (v27)
      {
        v68 = v25;
        v79 = type metadata accessor for TagShim();
        v78 = *(v64 + 24);
        v28 = v63;
        v29 = v26 + ((*(v63 + 80) + 32) & ~*(v63 + 80));

        v77 = *(v28 + 72);
        do
        {
          sub_1D98BA908(v29, v4);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
          v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          v32 = MEMORY[0x1EEE9AC00](v30 - 8);
          v34 = v61 - v33;
          v35 = v82;
          (v81)(v61 - v33, v4, v82, v32);
          __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
          sub_1D98B37DC(&v4[v78], v83);
          v36 = v84;
          v37 = v85;
          v38 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
          v39 = *(*(v36 - 8) + 64);
          v40 = MEMORY[0x1EEE9AC00](v38);
          v42 = v61 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v43 + 16))(v42, v40);
          sub_1D9910918(v34, v42, v79, v36, v37);
          sub_1D98BA96C(v4);
          v44 = __swift_destroy_boxed_opaque_existential_1(v83);
          MEMORY[0x1DA739CE0](v44);
          if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D992B7D4();
          }

          v45 = sub_1D992B7F4();
          v29 += v77;
          --v27;
        }

        while (v27);
        v15 = v86;
        a1 = v65;
        v6 = v62;
        v25 = v68;
      }

      else
      {
      }

      v81 = v61;
      MEMORY[0x1EEE9AC00](v45);
      v47 = v61 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1D98F1BC8(v25, v47, &qword_1ECB48F40, &qword_1D9934EA0);
      v48 = *(v74 + 16);
      if (*(v74 + 24) <= v48)
      {
        sub_1D98F1558(v48 + 1, 1);
      }

      v5 = v87;
      v49 = *(v87 + 40);
      sub_1D98B3748();
      result = sub_1D992B5C4();
      v50 = v5 + 64;
      v51 = -1 << *(v5 + 32);
      v52 = result & ~v51;
      v53 = v52 >> 6;
      if (((-1 << v52) & ~*(v5 + 64 + 8 * (v52 >> 6))) == 0)
      {
        break;
      }

      v54 = __clz(__rbit64((-1 << v52) & ~*(v5 + 64 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      v9 = (v73 - 1) & v73;
      v59 = *(v75 + 48);
      *(v50 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
      (*(v71 + 32))(*(v5 + 48) + v54 * v69, v47, v82);
      *(*(v5 + 56) + 8 * v54) = v15;
      ++*(v5 + 16);
      v60 = *&v47[v59];

      v12 = v66;
      v15 = MEMORY[0x1E69E7CC0];
      v14 = v72;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v55 = 0;
    v56 = (63 - v51) >> 6;
    while (++v53 != v56 || (v55 & 1) == 0)
    {
      v57 = v53 == v56;
      if (v53 == v56)
      {
        v53 = 0;
      }

      v55 |= v57;
      v58 = *(v50 + 8 * v53);
      if (v58 != -1)
      {
        v54 = __clz(__rbit64(~v58)) + (v53 << 6);
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v12)
      {

        return v5;
      }

      v9 = *(v6 + 8 * v16);
      ++v14;
      if (v9)
      {
        v74 = v5;
        v14 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TaggingService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t TaggingService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1D98F0040(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98F0054()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = type metadata accessor for TagShim();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_1D98B37DC(v2, (v0 + 18));
  v7 = v0[21];
  v8 = v0[22];
  v9 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 18), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v10 + 16))(v12, v9, v7);
  v13 = sub_1D9910918(v5, v12, v3, v7, v8);
  v0[28] = v13;
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  v14 = sub_1D988CFCC();
  v0[29] = v14;
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_1D98F02C4;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D48, qword_1D9934E00);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D98D3734;
  v0[13] = &block_descriptor_13;
  v0[14] = v15;
  [v14 createTag:v13 completion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D98F02C4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 240) = v4;
  if (v4)
  {
    v5 = sub_1D98F0430;
  }

  else
  {
    v5 = sub_1D98F03C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D98F03C8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 232);

  OUTLINED_FUNCTION_29_0();
  v3 = *(v0 + 240) == 0;

  return v2(v3);
}

uint64_t sub_1D98F0430()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  swift_willThrow();

  if (qword_1ECB480B0 != -1)
  {
    OUTLINED_FUNCTION_1_26();
  }

  v4 = v0[30];
  v0[23] = 0;
  v0[24] = 0xE000000000000000;
  v0[25] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  v5 = v0[23];
  v6 = v0[24];
  OUTLINED_FUNCTION_34_4();
  sub_1D98DCEB4(v7, v8, v9, v10, v11, 0xEA0000000000293ALL);

  OUTLINED_FUNCTION_29_0();
  v13 = v0[30] == 0;

  return v12(v13);
}

uint64_t sub_1D98F0584()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[20];
  v2 = sub_1D988CFCC();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D98F06A8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F28, &qword_1D9934E18);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D98F093C;
  v0[13] = &block_descriptor_3_2;
  v0[14] = v3;
  [v2 fetchTags_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D98F06A8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_1D98F0824;
  }

  else
  {
    v5 = sub_1D98F07AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D98F07AC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  if (v1 != 1)
  {

    v2 = 0;
  }

  OUTLINED_FUNCTION_29_0();

  return v3(v2);
}

uint64_t sub_1D98F0824()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  if (qword_1ECB480B0 != -1)
  {
    OUTLINED_FUNCTION_1_26();
  }

  v3 = v0[22];
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[18] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  v4 = v0[10];
  v5 = v0[11];
  OUTLINED_FUNCTION_34_4();
  sub_1D98DCEB4(v6, v7, v8, v9, v10, 0xE500000000000000);

  OUTLINED_FUNCTION_29_0();

  return v11(0);
}

uint64_t sub_1D98F093C(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    return sub_1D98EF7C4(v6, a4);
  }

  sub_1D992AE84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F38, &qword_1D9934E98);
  sub_1D98B3748();
  v8 = sub_1D992B5A4();
  return sub_1D98EF8DC(v6, a2, v8);
}

uint64_t TaggingService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id TaggingXPCHandler.__allocating_init(metastore:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___SiriAnalyticsTaggingXPCHandler_metastore] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TaggingXPCHandler.init(metastore:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SiriAnalyticsTaggingXPCHandler_metastore] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TaggingXPCHandler();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1D98F0AF8()
{
  v1 = *(v0 + OBJC_IVAR___SiriAnalyticsTaggingXPCHandler_metastore);
  v5 = 2;
  v2 = sub_1D98FEE2C(&v5);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D98EF900(v2);

  return v3;
}

id TaggingXPCHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TaggingXPCHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TaggingXPCHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D98F0CC0()
{
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_2_30(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D60, &qword_1D99340A8);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_23_7();
  if (!v9)
  {
LABEL_29:

    *v0 = v3;
    OUTLINED_FUNCTION_38_1();
    return;
  }

  v10 = 0;
  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_33_7();
  if (!v7)
  {
LABEL_4:
    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v10 >= v6)
      {
        break;
      }

      ++v12;
      if (*(v5 + 8 * v10))
      {
        OUTLINED_FUNCTION_9_1();
        v7 = v14 & v13;
        goto LABEL_9;
      }
    }

    if (v4)
    {
      OUTLINED_FUNCTION_3_18();
      if (v33 != v34)
      {
        OUTLINED_FUNCTION_9_14(v32);
      }

      else
      {
        OUTLINED_FUNCTION_13_11(v32);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_32_8();
LABEL_9:
    OUTLINED_FUNCTION_29_7(v11 | (v10 << 6));
    v17 = *(v16 + 8 * v15);
    if ((v4 & 1) == 0)
    {
      v18 = v1;
    }

    v19 = *(v3 + 40);
    v20 = sub_1D992BBC4();
    OUTLINED_FUNCTION_1_31(v20);
    v22 = v0[v21];
    OUTLINED_FUNCTION_24_7();
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_6_21();
LABEL_21:
    OUTLINED_FUNCTION_12_13();
    *(v0 + v27) |= v28;
    OUTLINED_FUNCTION_17_9(v29);
    *(v31 + 8 * v30) = v17;
    OUTLINED_FUNCTION_10_12();
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (1)
  {
    OUTLINED_FUNCTION_22_9();
    if (v23)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    if (v0[v24] != -1)
    {
      OUTLINED_FUNCTION_11_16();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1D98F0E34(uint64_t a1)
{
  OUTLINED_FUNCTION_2_30(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F68, &qword_1D9934EC8);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_23_7();
  if (!v8)
  {

LABEL_30:
    *v1 = v4;
    return;
  }

  v32 = v1;
  v9 = 0;
  v10 = *(v3 + 64);
  *(v3 + 32);
  OUTLINED_FUNCTION_26_8();
  if (!v1)
  {
LABEL_4:
    v12 = v9;
    while (1)
    {
      v9 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v7)
      {
        break;
      }

      ++v12;
      if (*(v3 + 64 + 8 * v9))
      {
        OUTLINED_FUNCTION_9_1();
        v1 = (v14 & v13);
        goto LABEL_9;
      }
    }

    if (v5)
    {
      OUTLINED_FUNCTION_3_18();
      if (v30 != v31)
      {
        OUTLINED_FUNCTION_9_14(v29);
      }

      else
      {
        OUTLINED_FUNCTION_13_11(v29);
      }

      *(v3 + 16) = 0;
    }

    v1 = v32;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_0();
LABEL_9:
    OUTLINED_FUNCTION_29_7(v11 | (v9 << 6));
    v33 = *(v16 + 16 * v15);
    if ((v5 & 1) == 0)
    {
      v17 = v2;
    }

    v18 = *(v4 + 40);
    v19 = sub_1D992BBC4() & ~(-1 << *(v4 + 32));
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_21();
LABEL_21:
    OUTLINED_FUNCTION_12_13();
    *(v6 + v24) |= v25;
    OUTLINED_FUNCTION_17_9(v26);
    *(v28 + 16 * v27) = v33;
    OUTLINED_FUNCTION_10_12();
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (1)
  {
    OUTLINED_FUNCTION_22_9();
    if (v23)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    if (*(v6 + 8 * v20) != -1)
    {
      OUTLINED_FUNCTION_11_16();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1D98F0FEC()
{
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_2_30(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F70, &qword_1D9934ED0);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_23_7();
  if (!v9)
  {
LABEL_29:

    *v0 = v3;
    OUTLINED_FUNCTION_38_1();
    return;
  }

  v10 = 0;
  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_33_7();
  if (!v7)
  {
LABEL_4:
    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v10 >= v6)
      {
        break;
      }

      ++v12;
      if (*(v5 + 8 * v10))
      {
        OUTLINED_FUNCTION_9_1();
        v7 = v14 & v13;
        goto LABEL_9;
      }
    }

    if (v4)
    {
      OUTLINED_FUNCTION_3_18();
      if (v33 != v34)
      {
        OUTLINED_FUNCTION_9_14(v32);
      }

      else
      {
        OUTLINED_FUNCTION_13_11(v32);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_32_8();
LABEL_9:
    OUTLINED_FUNCTION_29_7(v11 | (v10 << 6));
    v17 = *(v16 + 8 * v15);
    if ((v4 & 1) == 0)
    {
      v18 = v1;
    }

    v19 = *(v3 + 40);
    v20 = sub_1D992BBC4();
    OUTLINED_FUNCTION_1_31(v20);
    v22 = v0[v21];
    OUTLINED_FUNCTION_24_7();
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_6_21();
LABEL_21:
    OUTLINED_FUNCTION_12_13();
    *(v0 + v27) |= v28;
    OUTLINED_FUNCTION_17_9(v29);
    *(v31 + 8 * v30) = v17;
    OUTLINED_FUNCTION_10_12();
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (1)
  {
    OUTLINED_FUNCTION_22_9();
    if (v23)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    if (v0[v24] != -1)
    {
      OUTLINED_FUNCTION_11_16();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1D98F1160()
{
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_2_30(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D80, &qword_1D99340D0);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_23_7();
  if (!v9)
  {

LABEL_30:
    *v0 = v3;
    OUTLINED_FUNCTION_38_1();
    return;
  }

  v36 = v0;
  v10 = 0;
  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_26_8();
  if (!v0)
  {
LABEL_4:
    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v7)
      {
        break;
      }

      ++v12;
      if (*(v5 + 8 * v10))
      {
        OUTLINED_FUNCTION_9_1();
        v0 = (v14 & v13);
        goto LABEL_9;
      }
    }

    if (v4)
    {
      OUTLINED_FUNCTION_3_18();
      if (v34 != v35)
      {
        OUTLINED_FUNCTION_9_14(v33);
      }

      else
      {
        OUTLINED_FUNCTION_13_11(v33);
      }

      *(v2 + 16) = 0;
    }

    v0 = v36;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_0();
LABEL_9:
    OUTLINED_FUNCTION_29_7(v11 | (v10 << 6));
    v17 = *(v16 + 8 * v15);
    if ((v4 & 1) == 0)
    {
      v18 = v1;
      v19 = v17;
    }

    v20 = *(v3 + 40);
    v21 = sub_1D992BBC4();
    OUTLINED_FUNCTION_1_31(v21);
    v23 = *(v6 + 8 * v22);
    OUTLINED_FUNCTION_24_7();
    if (v24)
    {
      break;
    }

    OUTLINED_FUNCTION_6_21();
LABEL_21:
    OUTLINED_FUNCTION_12_13();
    *(v6 + v28) |= v29;
    OUTLINED_FUNCTION_17_9(v30);
    *(v32 + 8 * v31) = v17;
    OUTLINED_FUNCTION_10_12();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (1)
  {
    OUTLINED_FUNCTION_22_9();
    if (v24)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    if (*(v6 + 8 * v25) != -1)
    {
      OUTLINED_FUNCTION_11_16();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1D98F12CC(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  OUTLINED_FUNCTION_4_21(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F58, &qword_1D9934EB8);
  OUTLINED_FUNCTION_8_13();
  sub_1D992BEC4();
  OUTLINED_FUNCTION_23_7();
  if (!v8)
  {
LABEL_30:

LABEL_31:
    *v6 = a2;
    return;
  }

  v52 = v2;
  v53 = v3;
  v9 = 0;
  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_30_7();
  if (!v10)
  {
LABEL_4:
    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v2)
      {
        break;
      }

      ++v11;
      if (*(v5 + 8 * v9))
      {
        OUTLINED_FUNCTION_9_1();
        v55 = v13 & v12;
        goto LABEL_9;
      }
    }

    if ((a2 & 1) == 0)
    {

      v6 = v52;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_3_18();
    v6 = v52;
    if (v50 != v51)
    {
      OUTLINED_FUNCTION_9_14(v49);
    }

    else
    {
      OUTLINED_FUNCTION_13_11(v49);
    }

    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_25_7();
LABEL_9:
    v14 = sub_1D992AE84();
    v22 = OUTLINED_FUNCTION_19_6(v14, v15, v16, v17, v18, v19, v20, v21, v52);
    v24 = v23;
    v26 = *(v25 + 64);
    MEMORY[0x1EEE9AC00](v22);
    OUTLINED_FUNCTION_18_9();
    v54 = *(v27 + 72);
    if (a2)
    {
      v28 = *(v24 + 32);
      v29 = OUTLINED_FUNCTION_35_5();
      v30(v29);
      OUTLINED_FUNCTION_36_5();
    }

    else
    {
      v31 = *(v24 + 16);
      v32 = OUTLINED_FUNCTION_35_5();
      v33(v32);
      OUTLINED_FUNCTION_36_5();
    }

    v34 = *(a2 + 40);
    sub_1D98B3748();
    v35 = sub_1D992B5C4();
    OUTLINED_FUNCTION_1_31(v35);
    v37 = *(v4 + 8 * v36);
    OUTLINED_FUNCTION_24_7();
    if (v38)
    {
      break;
    }

    OUTLINED_FUNCTION_6_21();
    v41 = v39 | v40;
LABEL_22:
    v47 = OUTLINED_FUNCTION_14_13();
    v48(v47);
    *(*(a2 + 56) + 8 * v41) = v3;
    OUTLINED_FUNCTION_10_12();
    v3 = v53;
    if (!v55)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (1)
  {
    OUTLINED_FUNCTION_22_9();
    if (v38)
    {
      if (v43)
      {
        break;
      }
    }

    if (v42 == v44)
    {
      v42 = 0;
    }

    if (*(v4 + 8 * v42) != -1)
    {
      OUTLINED_FUNCTION_11_16();
      v41 = v46 + (v45 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1D98F1558(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  OUTLINED_FUNCTION_4_21(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_8_13();
  sub_1D992BEC4();
  OUTLINED_FUNCTION_23_7();
  if (!v10)
  {
LABEL_30:

LABEL_31:
    *v6 = a2;
    return;
  }

  v54 = v2;
  v55 = v3;
  v11 = 0;
  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_30_7();
  if (!v12)
  {
LABEL_4:
    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v11 >= v2)
      {
        break;
      }

      ++v13;
      if (*(v5 + 8 * v11))
      {
        OUTLINED_FUNCTION_9_1();
        v57 = v15 & v14;
        goto LABEL_9;
      }
    }

    if ((a2 & 1) == 0)
    {

      v6 = v54;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_3_18();
    v6 = v54;
    if (v52 != v53)
    {
      OUTLINED_FUNCTION_9_14(v51);
    }

    else
    {
      OUTLINED_FUNCTION_13_11(v51);
    }

    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_25_7();
LABEL_9:
    v16 = sub_1D992AE84();
    v24 = OUTLINED_FUNCTION_19_6(v16, v17, v18, v19, v20, v21, v22, v23, v54);
    v26 = v25;
    v28 = *(v27 + 64);
    MEMORY[0x1EEE9AC00](v24);
    OUTLINED_FUNCTION_18_9();
    v56 = *(v29 + 72);
    if (a2)
    {
      v30 = *(v26 + 32);
      v31 = OUTLINED_FUNCTION_35_5();
      v32(v31);
      OUTLINED_FUNCTION_36_5();
    }

    else
    {
      v33 = *(v26 + 16);
      v34 = OUTLINED_FUNCTION_35_5();
      v35(v34);
      OUTLINED_FUNCTION_36_5();
    }

    v36 = *(a2 + 40);
    sub_1D98B3748();
    v37 = sub_1D992B5C4();
    OUTLINED_FUNCTION_1_31(v37);
    v39 = *(v4 + 8 * v38);
    OUTLINED_FUNCTION_24_7();
    if (v40)
    {
      break;
    }

    OUTLINED_FUNCTION_6_21();
    v43 = v41 | v42;
LABEL_22:
    v49 = OUTLINED_FUNCTION_14_13();
    v50(v49);
    *(*(a2 + 56) + 8 * v43) = v3;
    OUTLINED_FUNCTION_10_12();
    v3 = v55;
    if (!v57)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (1)
  {
    OUTLINED_FUNCTION_22_9();
    if (v40)
    {
      if (v45)
      {
        break;
      }
    }

    if (v44 == v46)
    {
      v44 = 0;
    }

    if (*(v4 + 8 * v44) != -1)
    {
      OUTLINED_FUNCTION_11_16();
      v43 = v48 + (v47 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t dispatch thunk of TaggingService.save(tag:)()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *(*v0 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D98F1970;

  return v8(v3);
}

uint64_t sub_1D98F1970()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_16();
  *v6 = v5;

  OUTLINED_FUNCTION_29_0();

  return v7(v2);
}

uint64_t dispatch thunk of TaggingService.all()()
{
  OUTLINED_FUNCTION_26();
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98F1970;

  return v6();
}

uint64_t sub_1D98F1BC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_11@<X0>(uint64_t a1@<X8>)
{

  return sub_1D98B9718(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 96) = &a9;
  v10 = *(result - 8);
  return result;
}

uint64_t SensitiveConditionTag.write(to:)(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1D98907D8(v4);
  [a1 writeInt32:v3 forTag:1];
  v6[3] = &type metadata for TagPredicate;
  v6[4] = sub_1D9891570();
  v6[0] = v4;
  sub_1D992B9D4();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t static SensitiveConditionTag.read(from:)()
{
  sub_1D98F1F8C();
  sub_1D992B964();
  if (!v0)
  {
    v1 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E6999BA8], v1);
    swift_willThrow();
  }

  return sub_1D9890E8C(0xF000000000000007);
}

id sub_1D98F1EC4(_BYTE *a1, uint64_t a2, id a3)
{
  if (*a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    return sub_1D992B974();
  }

  else
  {
    result = [a3 readInt32];
    *a2 = result;
    *(a2 + 4) = 0;
  }

  return result;
}

unint64_t sub_1D98F1F8C()
{
  result = qword_1ECB47CF8;
  if (!qword_1ECB47CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47CF8);
  }

  return result;
}

unint64_t sub_1D98F1FE4()
{
  result = qword_1ECB47CF0;
  if (!qword_1ECB47CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47CF0);
  }

  return result;
}

unint64_t sub_1D98F2038()
{
  sub_1D9890E38();
  sub_1D992B964();
  if (!v0)
  {
    v1 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E6999BA8], v1);
    swift_willThrow();
  }

  return sub_1D9890E8C(0xF000000000000007);
}

_BYTE *_s6FieldsOwst_2(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D98F2300()
{
  result = qword_1ECB48F78;
  if (!qword_1ECB48F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48F78);
  }

  return result;
}

unint64_t sub_1D98F2354()
{
  result = qword_1ECB48F80;
  if (!qword_1ECB48F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48F80);
  }

  return result;
}

unint64_t sub_1D98F23A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D98F2038();
}

id sub_1D98F23C4(uint64_t a1)
{
  v3 = type metadata accessor for ComponentId(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MessageGroupIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  v14 = *v1;
  result = [objc_allocWithZone(MEMORY[0x1E69CED40]) init];
  if (result)
  {
    v16 = result;
    [result setSensitivityState_];
    switch(v14 >> 61)
    {
      case 1uLL:
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
        v39 = swift_projectBox();
        v40 = *(v39 + *(v38 + 48));
        sub_1D988EE2C(v39, v13);
        sub_1D988EE2C(v13, v10);
        sub_1D98C5154(v10, v6);
        result = [objc_allocWithZone(MEMORY[0x1E69CED30]) &selRef_handler_fetchStateForPluginName_completion_];
        if (!result)
        {
          goto LABEL_53;
        }

        v41 = result;
        v42 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) &selRef_handler_fetchStateForPluginName_completion_];
        [v41 setComponentId_];

        v43 = [v41 componentId];
        if (v43)
        {
          v44 = v43;
          [v43 setComponent_];
        }

        v45 = [v41 componentId];
        if (v45)
        {
          v46 = v45;
          sub_1D98F2C18();
          v47 = *(v3 + 20);
          v48 = sub_1D992AE84();
          v49 = *(*(v48 - 8) + 64);
          v50 = MEMORY[0x1EEE9AC00](v48);
          v52 = &v55 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v53 + 16))(v52, v6 + v47, v50);
          v54 = sub_1D98B5B94(v52);
          [v46 setUuid_];
        }

        [v41 setRedactConnectedEvents_];
        [v16 setComponentId_];

        sub_1D98F2C5C(v6, type metadata accessor for ComponentId);
        sub_1D98F2C5C(v13, type metadata accessor for MessageGroupIdentifier);
        break;
      case 2uLL:
      case 3uLL:
      case 4uLL:
        if (qword_1ED8BD6E0 != -1)
        {
LABEL_50:
          swift_once();
        }

        v57 = 0;
        v58 = 0xE000000000000000;
        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000020, 0x80000001D993C420);
        v17 = sub_1D992BB54();
        MEMORY[0x1DA739C30](v17);

        MEMORY[0x1DA739C30](0xD000000000000043, 0x80000001D993C450);
        sub_1D986A454(v57, v58, 0xD000000000000060, 0x80000001D993C4A0, 0xD00000000000001CLL, 0x80000001D993C510);

        v57 = v14;
        sub_1D98F2A0C();
        v19 = v18;
        v20 = 0;
        v21 = *(v18 + 16);
        v22 = MEMORY[0x1E69E7CC0];
        while (v21 != v20)
        {
          if (v20 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_50;
          }

          v23 = *(v19 + 8 * v20 + 32);
          v55 = v23;
          sub_1D98907D8(v23);
          if (sub_1D98C500C())
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56 = v22;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D98B9CEC(0, v22[2] + 1, 1);
              v22 = v56;
            }

            v26 = v22[2];
            v25 = v22[3];
            v14 = v26 + 1;
            if (v26 >= v25 >> 1)
            {
              sub_1D98B9CEC(v25 > 1, v26 + 1, 1);
              v22 = v56;
            }

            ++v20;
            v22[2] = v14;
            v22[v26 + 4] = v23;
          }

          else
          {
            sub_1D9890810(v23);
            ++v20;
          }
        }

        if (v22[2])
        {
          v27 = v22[4];
          sub_1D98907D8(v27);

          v57 = v27;
          v28 = sub_1D98F23C4(a1);

          sub_1D9890810(v27);
          v16 = v28;
        }

        else
        {
        }

        break;
      case 5uLL:
        [v16 setIsEntireClockAffected_];
        break;
      default:
        v29 = *(v14 + 32);
        v30 = *(v14 + 16);
        if (v29 == 1)
        {
          v31 = *(v14 + 16);
        }

        else
        {
          v31 = 0;
        }

        if (v29 == 1)
        {
          v32 = 0;
        }

        else
        {
          v32 = *(v14 + 16);
        }

        if (*(v14 + 32))
        {
          v33 = v31;
        }

        else
        {
          v33 = *(v14 + 16);
        }

        if (*(v14 + 32))
        {
          v34 = v29 != 1;
        }

        else
        {
          v34 = 0;
        }

        if (*(v14 + 32))
        {
          v35 = v32;
        }

        else
        {
          v35 = *(v14 + 24);
        }

        if (*(v14 + 32))
        {
          v36 = v29 == 1;
        }

        else
        {
          v36 = 0;
        }

        result = [objc_allocWithZone(MEMORY[0x1E69CED50]) &selRef_handler_fetchStateForPluginName_completion_];
        if (!result)
        {
          goto LABEL_52;
        }

        v37 = result;
        if (!v34)
        {
          [result setStartTimeInNs_];
        }

        if (!v36)
        {
          [v37 setEndTimeInNs_];
        }

        [v16 setTimeSpan_];

        break;
    }

    return v16;
  }

  else
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  return result;
}

void sub_1D98F2A0C()
{
  v1 = *v0;
  if ((v1 >> 61) - 2 >= 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489F0, &unk_1D9932530);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D992FCB0;
    *(v18 + 32) = v1;
    sub_1D98907D8(v1);
  }

  else if (((v1 >> 61) & 6) == 2)
  {
    v2 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v5 = MEMORY[0x1E69E7CC0];
      for (i = 32; ; i += 8)
      {
        v7 = *(v2 + i);
        v8 = sub_1D98907D8(v7);
        v9 = sub_1D98F2A0C(v8);
        v10 = *(v9 + 16);
        v11 = *(v5 + 16);
        if (__OFADD__(v11, v10))
        {
          break;
        }

        v12 = v9;
        if (!swift_isUniquelyReferenced_nonNull_native() || (v13 = *(v5 + 24) >> 1, v13 < v11 + v10))
        {
          sub_1D98BDB08();
          v5 = v14;
          v13 = *(v14 + 24) >> 1;
        }

        if (*(v12 + 16))
        {
          if (v13 - *(v5 + 16) < v10)
          {
            goto LABEL_22;
          }

          swift_arrayInitWithCopy();

          if (v10)
          {
            v15 = *(v5 + 16);
            v16 = __OFADD__(v15, v10);
            v17 = v15 + v10;
            if (v16)
            {
              goto LABEL_23;
            }

            *(v5 + 16) = v17;
          }
        }

        else
        {

          if (v10)
          {
            goto LABEL_21;
          }
        }

        sub_1D9890810(v7);
        if (!--v3)
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
    }
  }

  else
  {
    v21 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = sub_1D98907D8(v21);
    v20 = sub_1D98F2A0C(v19);
    sub_1D98EBF2C(v20);
    sub_1D9890810(v21);
  }
}

unint64_t sub_1D98F2C18()
{
  result = qword_1ED8BD948[0];
  if (!qword_1ED8BD948[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED8BD948);
  }

  return result;
}

uint64_t sub_1D98F2C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id BiomeSELFStreamProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeSELFStreamProvider.init()()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics23BiomeSELFStreamProvider_excludedAnyEventTypes;
  *&v0[v1] = sub_1D98F375C(&unk_1F55182C8);
  v2 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v3 = [v2 SELFProcessedEvent];
  swift_unknownObjectRelease();
  v4 = [v3 source];

  *&v0[OBJC_IVAR____TtC13SiriAnalytics23BiomeSELFStreamProvider_biomeSource] = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BiomeSELFStreamProvider();
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_1D98F2DF0(void *a1)
{
  v2 = sub_1D98F2E70(a1);
  if (v2)
  {
    v3 = v2;
    v4 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics23BiomeSELFStreamProvider_biomeSource);
    v5 = sub_1D98F30D0();
    [v4 sendEvent_];
  }
}

id sub_1D98F2E70(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC13SiriAnalytics23BiomeSELFStreamProvider_excludedAnyEventTypes);
  result = sub_1D992B054();
  if (!result)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = [result getAnyEventType];

  if (sub_1D98E8654(v7, v4))
  {
    return 0;
  }

  result = sub_1D992B054();
  if (!result)
  {
    goto LABEL_20;
  }

  v9 = result;
  v10 = [result getAnyEventType];

  if (v10 != 1)
  {
    return a1;
  }

  v11 = sub_1D992B074();
  if (!v11)
  {
    return a1;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();

  if (!v13)
  {
    return a1;
  }

  [a1 copy];
  sub_1D992BC24();
  swift_unknownObjectRelease();
  sub_1D992B104();
  swift_dynamicCast();
  v8 = v29;
  v14 = sub_1D992B074();

  if (!v14)
  {
    return v8;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15 || (v16 = [v15 location]) == 0)
  {
LABEL_16:

    return v8;
  }

  result = OUTLINED_FUNCTION_3_19();
  if (!result)
  {
    goto LABEL_21;
  }

  v17 = result;
  [result latitude];
  v19 = v18;

  result = OUTLINED_FUNCTION_3_19();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = result;
  [result longitude];
  v22 = v21;

  result = OUTLINED_FUNCTION_3_19();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = result;
  *&v24 = OUTLINED_FUNCTION_1_32(v19);
  [v25 setLatitude_];

  result = OUTLINED_FUNCTION_3_19();
  if (result)
  {
    v26 = result;
    *&v27 = OUTLINED_FUNCTION_1_32(v22);
    [v28 setLongitude_];

    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_1D98F30D0()
{
  result = sub_1D992B0B4();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v1 = result;
  sub_1D992B154();

  v2 = sub_1D992C0D4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v40 - v5;
  result = sub_1D992B0B4();
  if (!result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  sub_1D992B134();

  v8 = sub_1D992AE84();
  OUTLINED_FUNCTION_2_31();
  v9 = objc_allocWithZone(MEMORY[0x1E698EF40]);
  v10 = sub_1D98F3490(v2, v6);
  v11 = sub_1D992B0E4();
  if (v11)
  {
    v12 = v11;
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_0_47();
    v15 = v13 - v14;
    sub_1D992B194();
    OUTLINED_FUNCTION_2_31();
    sub_1D992B174();
    v16 = sub_1D992C064();
    v17 = objc_allocWithZone(MEMORY[0x1E698EF38]);
    v18 = sub_1D98F3550(v15, v16);
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_0_47();
  v21 = v19 - v20;
  result = sub_1D992B054();
  if (!result)
  {
    goto LABEL_19;
  }

  v22 = result;
  v23 = [result getComponentId];

  if (v23)
  {
    sub_1D992BA04();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v8);
  }

  result = sub_1D992B054();
  if (!result)
  {
    goto LABEL_20;
  }

  v24 = result;
  [result getComponentName];

  v25 = sub_1D992C064();
  v26 = objc_allocWithZone(MEMORY[0x1E698EF38]);
  v27 = sub_1D98F3550(v21, v25);
  result = sub_1D992B054();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = result;
  [result getAnyEventType];

  v29 = sub_1D992C064();
  v30 = sub_1D992B064();
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v30 = sub_1D992B954();
    v32 = v30;
  }

  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_0_47();
  v35 = v33 - v34;
  sub_1D992B084();
  result = sub_1D992B054();
  if (result)
  {
    v36 = sub_1D98F3918(result);
    v38 = v37;
    v39 = objc_allocWithZone(MEMORY[0x1E698EF30]);
    return sub_1D98F3610(v10, v18, v27, v29, v32, v35, v36, v38);
  }

LABEL_22:
  __break(1u);
  return result;
}

id BiomeSELFStreamProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeSELFStreamProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D98F3490(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D992AE84();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v6) != 1)
  {
    v7 = sub_1D992AE44();
    (*(*(v6 - 8) + 8))(a2, v6);
  }

  v8 = [v3 initWithTimestampInNanoseconds:a1 clockIdentifier:v7];

  return v8;
}

id sub_1D98F3550(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D992AE84();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    v7 = sub_1D992AE44();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithUuid:v7 componentName:a2];

  return v8;
}

id sub_1D98F3610(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = sub_1D992AE84();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a6, 1, v16) != 1)
  {
    v17 = sub_1D992AE44();
    (*(*(v16 - 8) + 8))(a6, v16);
  }

  if (a8 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_1D992AD74();
    sub_1D9866358(a7, a8);
  }

  v19 = [v21 initWithLogicalTimestamp:a1 clusterRepresentativeId:a2 componentId:a3 anyEventType:a4 innerType:a5 messageUuid:v17 eventData:v18];

  return v19;
}

uint64_t sub_1D98F375C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A18, &qword_1D9932570);
  result = sub_1D992BD34();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 4 * v5++);
    v8 = *(v3 + 40);
    sub_1D992C074();
    sub_1D992C0A4();
    result = sub_1D992C0C4();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 4 * v10) == v7)
      {
        goto LABEL_11;
      }

      result = v10 + 1;
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(*(v3 + 48) + 4 * v10) = v7;
    v14 = *(v3 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v16;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D98F3918(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D992AD84();

  return v3;
}

unint64_t sub_1D98F3988()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connectionLock);
  os_unfair_lock_lock(v1 + 4);
  v2 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection);
  if (v2 && (v3 = [v2 processIdentifier], v3 >= 1))
  {
    v4 = v3;
    os_unfair_lock_unlock(v1 + 4);
    v5 = 0;
    v6 = v4;
  }

  else
  {
    os_unfair_lock_unlock(v1 + 4);
    v6 = 0;
    v5 = 1;
  }

  return v6 | (v5 << 32);
}