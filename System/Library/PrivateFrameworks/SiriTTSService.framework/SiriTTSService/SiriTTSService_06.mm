void sub_1B1B0377C(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  AudioQueueInterface.audioVolume.getter();
  *a2 = v4;
}

void AudioQueueInterface.audioVolume.setter(AudioQueueParameterValue a1)
{
  v3 = *(v1 + 80);
  [v3 lock];
  v4 = AudioQueueSetParameter(*(v1 + 72), 1u, a1);
  [v3 unlock];
  if (v4 == sub_1B1C2C958())
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v5 = sub_1B1C2C8A8();
    oslog = OUTLINED_FUNCTION_56(v5, qword_1ED9A9120);
    v6 = sub_1B1C2D0D8();
    if (os_log_type_enabled(oslog, v6))
    {
      OUTLINED_FUNCTION_23_6();
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a1;
      _os_log_impl(&dword_1B1A8A000, oslog, v6, "Adjusted audio queue with volume %f", v7, 0xCu);
LABEL_10:
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v8 = sub_1B1C2C8A8();
    oslog = OUTLINED_FUNCTION_56(v8, qword_1ED9A9120);
    v9 = sub_1B1C2D0B8();
    if (os_log_type_enabled(oslog, v9))
    {
      OUTLINED_FUNCTION_23_6();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_34_1();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_1B1B269CC(v4);
      v14 = sub_1B1A930E4(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1B1A8A000, oslog, v9, "Unable to set audio volume, error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      goto LABEL_10;
    }
  }
}

void (*AudioQueueInterface.audioVolume.modify(uint64_t a1))(AudioQueueParameterValue *a1)
{
  *a1 = v1;
  AudioQueueInterface.audioVolume.getter();
  *(a1 + 8) = v3;
  return sub_1B1B03A2C;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioQueueInterface.adjust(volume:rampTime:)(Swift::Float volume, Swift::Double rampTime)
{
  v5 = *(v2 + 80);
  [v5 lock];
  v6 = *(v2 + 72);
  v7 = rampTime;
  v8 = AudioQueueSetParameter(v6, 4u, v7);
  if (v8 != sub_1B1C2C958())
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v19 = sub_1B1C2C888();
    sub_1B1C2D0B8();
    v20 = OUTLINED_FUNCTION_19();
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_23_6();
      swift_slowAlloc();
      OUTLINED_FUNCTION_18();
      v22 = swift_slowAlloc();
      v50 = v22;
      *v6 = 136315138;
      v23 = sub_1B1B269CC(v8);
      v25 = sub_1B1A930E4(v23, v24, &v50);

      *(v6 + 4) = v25;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v26, v27, v28, v29, v30, v31);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      v32 = OUTLINED_FUNCTION_10_0();
      MEMORY[0x1B2739FD0](v32);
    }

    v33 = "immediately, errno ";
    v34 = 0xD000000000000024;
    goto LABEL_18;
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v9 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v9, qword_1ED9A9120);
  v10 = sub_1B1C2C888();
  v11 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_23_6();
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = rampTime;
    _os_log_impl(&dword_1B1A8A000, v10, v11, "Adjusted audio queue with volume ramp time %f", v12, 0xCu);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  v13 = AudioQueueSetParameter(v6, 1u, volume);
  v14 = sub_1B1C2C958();
  v15 = sub_1B1C2C888();
  if (v13 != v14)
  {
    v34 = 0xD00000000000001ALL;
    sub_1B1C2D0B8();
    v35 = OUTLINED_FUNCTION_19();
    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_23_6();
      swift_slowAlloc();
      OUTLINED_FUNCTION_18();
      v37 = swift_slowAlloc();
      v50 = v37;
      *v14 = 136315138;
      v38 = sub_1B1B269CC(v13);
      v40 = sub_1B1A930E4(v38, v39, &v50);

      *(v14 + 4) = v40;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v41, v42, v43, v44, v45, v46);
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      v47 = OUTLINED_FUNCTION_10_0();
      MEMORY[0x1B2739FD0](v47);
    }

    v33 = "dio volume ramp time";
LABEL_18:
    v48 = v33 | 0x8000000000000000;
    sub_1B1A9EC9C();
    OUTLINED_FUNCTION_27();
    swift_allocError();
    *v49 = 14;
    *(v49 + 8) = v34;
    *(v49 + 16) = v48;
    swift_willThrow();
    [v5 unlock];
    return;
  }

  v16 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_23_6();
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = volume;
    _os_log_impl(&dword_1B1A8A000, v15, v16, "Adjusted audio queue with volume %f", v17, 0xCu);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  [v5 unlock];
}

void (*sub_1B1B03E50(uint64_t a1))(AudioQueueParameterValue *a1)
{
  *a1 = *v1;
  AudioQueueInterface.audioVolume.getter();
  *(a1 + 8) = v3;
  return sub_1B1B03A2C;
}

uint64_t sub_1B1B03EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1B1B03F20()
{
  v1 = OUTLINED_FUNCTION_22_0();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1B1B03F60(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1B1B03F84(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1B1B03FDC@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_1_7();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B04010@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B1B03F50(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B04040(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_46_0(a1);
  result = sub_1B1B20A3C(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1B1B04068@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B1B03F58(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B040A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B1B03F60(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B1B040D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B1B03F84(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B1B04120@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B1B03FAC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B04190(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1B1B1A5B8();
}

uint64_t sub_1B1B0419C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B1B03EC0(a1);
  *a2 = result;
  return result;
}

void *sub_1B1B041C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B1B041D4(uint64_t a1)
{
  v2 = sub_1B1AADDE4(&unk_1ED9A94F0, type metadata accessor for URLResourceKey);
  v3 = sub_1B1AADDE4(&qword_1EB761B88, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B1B04290@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B1C2CB28();

  *a2 = v5;
  return result;
}

uint64_t sub_1B1B042D8(uint64_t a1)
{
  v2 = sub_1B1AADDE4(&qword_1EB761B90, type metadata accessor for Name);
  v3 = sub_1B1AADDE4(&qword_1EB761B98, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B1B04394(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1B1B06314();
}

char *sub_1B1B043A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C88, &qword_1B1C35E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1B1B044A0()
{
  OUTLINED_FUNCTION_21_1();
  if (v7)
  {
    OUTLINED_FUNCTION_3_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_20();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_6_2(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761BF8, &qword_1B1C35D70);
    v11 = OUTLINED_FUNCTION_38();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_5();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_70();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_32_2();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C00, &qword_1B1C35D78);
    OUTLINED_FUNCTION_28();
  }
}

void sub_1B1B04580()
{
  OUTLINED_FUNCTION_21_1();
  if (v5)
  {
    OUTLINED_FUNCTION_3_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C18, &qword_1B1C35D90);
    v9 = OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_13_3(v9);
    OUTLINED_FUNCTION_9(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_42_2();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1B1B0464C()
{
  OUTLINED_FUNCTION_21_1();
  if (v7)
  {
    OUTLINED_FUNCTION_3_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_20();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_6_2(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C60, &unk_1B1C37E90);
    v11 = OUTLINED_FUNCTION_38();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_5();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_70();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_32_2();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C68, &unk_1B1C35DE0);
    OUTLINED_FUNCTION_28();
  }
}

void sub_1B1B04740()
{
  OUTLINED_FUNCTION_21_1();
  if (v7)
  {
    OUTLINED_FUNCTION_3_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_20();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_6_2(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    v4 = 48;
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_13_3(v11);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v12 / 48);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_70();
  if (v1)
  {
    if (v3 != v0 || v5 + 48 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_32_2();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C10, &qword_1B1C35D88);
    OUTLINED_FUNCTION_28();
  }
}

void sub_1B1B04838()
{
  OUTLINED_FUNCTION_21_1();
  if (v5)
  {
    OUTLINED_FUNCTION_3_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_33_0(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C20, &qword_1B1C35D98);
    v9 = OUTLINED_FUNCTION_39_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1B1B04900()
{
  OUTLINED_FUNCTION_21_1();
  if (v5)
  {
    OUTLINED_FUNCTION_3_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761BA8, &qword_1B1C35D40);
    v9 = OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_13_3(v9);
    OUTLINED_FUNCTION_9(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_42_2();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1B1B049CC()
{
  OUTLINED_FUNCTION_21_1();
  if (v5)
  {
    OUTLINED_FUNCTION_3_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_33_0(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C38, &unk_1B1C35DB0);
    v9 = OUTLINED_FUNCTION_39_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1B1B04AB8()
{
  OUTLINED_FUNCTION_21_1();
  if (v7)
  {
    OUTLINED_FUNCTION_3_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_20();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_6_2(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761BE8, &qword_1B1C35D58);
    v11 = OUTLINED_FUNCTION_38();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_5();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_70();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_32_2();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761BF0, &unk_1B1C35D60);
    OUTLINED_FUNCTION_28();
  }
}

uint64_t sub_1B1B04B98(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (v6 = sub_1B1C2C1C8(), result = OUTLINED_FUNCTION_45(v6), a1 + *(v8 + 72) * a2 <= a3))
  {
    sub_1B1C2C1C8();
    OUTLINED_FUNCTION_36();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_36();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1B1B04C5C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_2(a3, result);
  }

  return result;
}

char *sub_1B1B04C84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C80, &qword_1B1C35DF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1B1B04D78(uint64_t *a1, AudioFileID inAudioFile, UInt32 *a3, AudioStreamPacketDescription *a4, SInt64 inStartingPacket, UInt32 *ioNumPackets)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = a1[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v21 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1B1A94524(v7, v6);
      *a1 = xmmword_1B1C35270;
      sub_1B1A94524(0, 0xC000000000000000);
      v22 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v22 < v7)
      {
        goto LABEL_28;
      }

      if (sub_1B1C2BF08() && __OFSUB__(v7, sub_1B1C2BF38()))
      {
        goto LABEL_29;
      }

      v23 = sub_1B1C2BF58();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v26 = sub_1B1C2BEF8();

      v21 = v26;
LABEL_16:
      if (v22 < v7)
      {
        goto LABEL_24;
      }

      result = sub_1B1C2BF08();
      if (!result)
      {
        goto LABEL_31;
      }

      v27 = result;
      v28 = sub_1B1C2BF38();
      v29 = v7 - v28;
      if (__OFSUB__(v7, v28))
      {
        goto LABEL_26;
      }

      sub_1B1C2BF28();
      if (inStartingPacket < 0)
      {
        goto LABEL_27;
      }

      PacketData = AudioFileReadPacketData(inAudioFile, 0, a3, a4, inStartingPacket, ioNumPackets, (v27 + v29));

      *a1 = v7;
      a1[1] = v21 | 0x4000000000000000;
      v31 = *MEMORY[0x1E69E9840];
      return PacketData;
    case 2uLL:

      sub_1B1A94524(v7, v6);
      *&outBuffer = v7;
      *(&outBuffer + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1B1C35270;
      sub_1B1A94524(0, 0xC000000000000000);
      sub_1B1C2C1E8();
      v14 = *(&outBuffer + 1);
      v15 = *(outBuffer + 16);
      result = sub_1B1C2BF08();
      if (result)
      {
        v16 = result;
        v17 = sub_1B1C2BF38();
        v18 = __OFSUB__(v15, v17);
        v19 = v15 - v17;
        if (v18)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
        }

        else
        {
          sub_1B1C2BF28();
          if ((inStartingPacket & 0x8000000000000000) == 0)
          {
            result = AudioFileReadPacketData(inAudioFile, 0, a3, a4, inStartingPacket, ioNumPackets, (v16 + v19));
            *a1 = outBuffer;
            a1[1] = v14 | 0x8000000000000000;
LABEL_10:
            v20 = *MEMORY[0x1E69E9840];
            return result;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    case 3uLL:
      *(&outBuffer + 7) = 0;
      *&outBuffer = 0;
      if ((inStartingPacket & 0x8000000000000000) == 0)
      {
        result = AudioFileReadPacketData(inAudioFile, 0, a3, a4, inStartingPacket, ioNumPackets, &outBuffer);
        goto LABEL_10;
      }

      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    default:
      sub_1B1A94524(v7, v6);
      *&outBuffer = v7;
      WORD4(outBuffer) = v6;
      BYTE10(outBuffer) = BYTE2(v6);
      BYTE11(outBuffer) = BYTE3(v6);
      BYTE12(outBuffer) = BYTE4(v6);
      BYTE13(outBuffer) = BYTE5(v6);
      BYTE14(outBuffer) = BYTE6(v6);
      if (inStartingPacket < 0)
      {
        goto LABEL_22;
      }

      result = AudioFileReadPacketData(inAudioFile, 0, a3, a4, inStartingPacket, ioNumPackets, &outBuffer);
      v13 = DWORD2(outBuffer) | ((WORD6(outBuffer) | (BYTE14(outBuffer) << 16)) << 32);
      *a1 = outBuffer;
      a1[1] = v13;
      goto LABEL_10;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B1B051D4()
{
  result = qword_1EB761970;
  if (!qword_1EB761970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761970);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioPlaybackError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AudioPlaybackError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B1B0538C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 44))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B1B053CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of AudioData.asbd.setter(uint64_t *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v5 = *a1;
  v3 = *(a1 + 3);
  v6 = *(a1 + 1);
  v7 = v3;
  return v2(&v5);
}

uint64_t dispatch thunk of AudioPlayback.init(audioSessionId:asbd:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  v5 = *a2;
  v6 = OUTLINED_FUNCTION_8(a1, a2);
  return v7(v6);
}

uint64_t sub_1B1B05844(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of BufferedAudioPlayback.__allocating_init(audioSessionId:asbd:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 208);
  v4 = *a2;
  v5 = OUTLINED_FUNCTION_8(a1, a2);
  return v6(v5);
}

uint64_t getEnumTagSinglePayload for AudioPower(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioPower(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t dispatch thunk of AudioInterface.init(audioSessionId:asbd:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v5 = *a2;
  v6 = OUTLINED_FUNCTION_8(a1, a2);
  return v7(v6);
}

uint64_t dispatch thunk of AudioQueueInterface.__allocating_init(audioSessionId:asbd:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(v2 + 296);
  v5 = OUTLINED_FUNCTION_8(a1, a2);
  return v6(v5);
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B1B05E00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1B05E20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1B1B05E90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1B05EB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B1B05F28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1B05F48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1B1B0624C()
{
  sub_1B1C2CB58();
  sub_1B1C2CC48();
}

uint64_t sub_1B1B062A0()
{
  sub_1B1C2CB58();
  sub_1B1C2D888();
  sub_1B1C2CC48();
  v0 = sub_1B1C2D8E8();

  return v0;
}

uint64_t sub_1B1B06314()
{
  v0 = sub_1B1C2CB58();
  v2 = v1;
  if (v0 == sub_1B1C2CB58() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B1C2D7A8();
  }

  return v5 & 1;
}

uint64_t sub_1B1B06398(uint64_t a1, id *a2)
{
  v3 = sub_1B1C2CB48();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B1B06418(uint64_t a1, id *a2)
{
  result = sub_1B1C2CB38();
  *a2 = 0;
  return result;
}

uint64_t sub_1B1B06490()
{
  sub_1B1C2CB58();
  v0 = sub_1B1C2CB28();

  return v0;
}

uint64_t sub_1B1B064C8()
{
  v0 = sub_1B1C2CB58();
  v1 = MEMORY[0x1B2738290](v0);

  return v1;
}

unint64_t sub_1B1B06500()
{
  result = qword_1EB761BC0;
  if (!qword_1EB761BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761BC0);
  }

  return result;
}

unint64_t sub_1B1B06554()
{
  result = qword_1EB761BC8;
  if (!qword_1EB761BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761BC8);
  }

  return result;
}

unint64_t sub_1B1B065A8()
{
  result = qword_1EB761BD0;
  if (!qword_1EB761BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761BD0);
  }

  return result;
}

unint64_t sub_1B1B065FC()
{
  result = qword_1EB761BD8;
  if (!qword_1EB761BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761BD8);
  }

  return result;
}

unint64_t sub_1B1B06650()
{
  result = qword_1EB761BE0;
  if (!qword_1EB761BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761BE0);
  }

  return result;
}

id sub_1B1B06858(void *a1)
{
  v2 = OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_asset;
  *&v1[OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_asset] = a1;
  v3 = a1;
  v4 = sub_1B1B08AD8(v3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v11 = 0x726F74636146;
  v12 = 0xE600000000000000;
  sub_1B1C2D4B8();
  sub_1B1B29EE8(v13, v5);

  sub_1B1B08B44(v13);
  if (!v15)
  {

    sub_1B1A9937C(v14);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:

LABEL_7:
    type metadata accessor for TTSAssetFactoryTrialAsset();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v12;
  v7 = &v1[OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_factorName];
  *v7 = v11;
  v7[1] = v6;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TTSAssetFactoryTrialAsset();
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id sub_1B1B069DC()
{
  if (qword_1ED9A4EF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED9A4F00;

  return v1;
}

id sub_1B1B06A7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_factorName);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_factorName + 8);
  if ((sub_1B1C2CDA8() & 1) == 0)
  {
    if (sub_1B1C2CDA8())
    {
      v5 = sub_1B1B07000();
      v6 = qword_1ED9A9890;
      v7 = v5;
      if (v6 != -1)
      {
        OUTLINED_FUNCTION_9_0();
      }

      v8 = qword_1ED9A9818;
      sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
      v9 = v8;
      v10 = OUTLINED_FUNCTION_18_0();

      if (v10)
      {

        if (qword_1ED9A9850 != -1)
        {
          swift_once();
        }

        v3 = qword_1ED9A97E0;
        goto LABEL_5;
      }

      v11 = qword_1ED9A97B8;
      v12 = v7;
      if (v11 != -1)
      {
        OUTLINED_FUNCTION_8_0();
      }

      v13 = qword_1ED9A97C0;
      v14 = OUTLINED_FUNCTION_18_0();

      if (v14)
      {

        if (qword_1ED9A98D0 != -1)
        {
          swift_once();
        }

        v3 = qword_1ED9A98D8;
        goto LABEL_5;
      }

      v15 = qword_1ED9A9820;
      v16 = v12;
      if (v15 != -1)
      {
        OUTLINED_FUNCTION_7_2();
      }

      v17 = qword_1ED9A9828;
      v18 = OUTLINED_FUNCTION_18_0();

      if (v18)
      {

LABEL_28:
        if (qword_1ED9A9978 != -1)
        {
          swift_once();
        }

        v3 = qword_1ED9A9980;
        goto LABEL_5;
      }

      if (qword_1ED9A97A8 != -1)
      {
        OUTLINED_FUNCTION_6_3();
      }

      v19 = qword_1ED9A9898;
      v20 = OUTLINED_FUNCTION_18_0();

      if (v20)
      {
        goto LABEL_28;
      }
    }

    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    OUTLINED_FUNCTION_11_1();
    return sub_1B1AAFB2C();
  }

  if (qword_1ED9A9960 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED9A9968;
LABEL_5:

  return v3;
}

uint64_t sub_1B1B06DD8()
{
  v9 = *(v0 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_factorName);
  v10 = *(v0 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_factorName + 8);
  sub_1B1A8EDAC();
  v1 = sub_1B1C2D368();
  if (v1[2] >= 6uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B1C361C0;
    v4 = v1[14];
    v3 = v1[15];

    v5 = sub_1B1C2D398();
    v7 = v6;

    *(v2 + 32) = v5;
    *(v2 + 40) = v7;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1B1B06F3C()
{
  OUTLINED_FUNCTION_4_1(OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_factorName);
  v0 = OUTLINED_FUNCTION_10_4();
  if (v0[2] == 9)
  {
    v1 = v0[16];
    v2 = v0[17];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_1B1B07000()
{
  OUTLINED_FUNCTION_4_1(OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_factorName);
  v0 = OUTLINED_FUNCTION_10_4();
  if (v0[2] != 9)
  {

    goto LABEL_14;
  }

  v2 = v0[18];
  v1 = v0[19];

  v3 = v2 == 0x657A696C61636F76 && v1 == 0xE900000000000072;
  if (!v3 && (OUTLINED_FUNCTION_3() & 1) == 0)
  {
    v8 = v2 == 0x6D6F74737563 && v1 == 0xE600000000000000;
    if (v8 || (OUTLINED_FUNCTION_3() & 1) != 0)
    {

      if (qword_1ED9A97B8 != -1)
      {
        OUTLINED_FUNCTION_8_0();
      }

      v4 = qword_1ED9A97C0;
      goto LABEL_10;
    }

    v9 = v2 == 0x6E6F6870797267 && v1 == 0xE700000000000000;
    if (v9 || (OUTLINED_FUNCTION_3() & 1) != 0)
    {

      if (qword_1ED9A97A8 != -1)
      {
        OUTLINED_FUNCTION_6_3();
      }

      v4 = qword_1ED9A9898;
      goto LABEL_10;
    }

    v10 = v2 == 0x6C617275656ELL && v1 == 0xE600000000000000;
    if (v10 || (OUTLINED_FUNCTION_3() & 1) != 0)
    {

      if (qword_1ED9A9820 != -1)
      {
        OUTLINED_FUNCTION_7_2();
      }

      v4 = qword_1ED9A9828;
      goto LABEL_10;
    }

    v11 = v2 == 0x58416C617275656ELL && v1 == 0xE800000000000000;
    if (v11 || (OUTLINED_FUNCTION_3() & 1) != 0)
    {

      if (qword_1ED9A9698 != -1)
      {
        swift_once();
      }

      v4 = qword_1ED9A9710;
      goto LABEL_10;
    }

    v12 = v2 == 0x6C61727574616ELL && v1 == 0xE700000000000000;
    if (v12 || (OUTLINED_FUNCTION_3() & 1) != 0)
    {

      if (qword_1ED9A8D90 != -1)
      {
        swift_once();
      }

      v4 = qword_1ED9A8D98;
      goto LABEL_10;
    }

    if (v2 == 0x6C61746E6963616DLL && v1 == 0xE90000000000006BLL)
    {

LABEL_62:
      if (qword_1ED9A5280 != -1)
      {
        swift_once();
      }

      v4 = qword_1ED9A5288;
      goto LABEL_10;
    }

    v14 = OUTLINED_FUNCTION_3();

    if (v14)
    {
      goto LABEL_62;
    }

LABEL_14:
    sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
    v6 = OUTLINED_FUNCTION_11_1();
    return sub_1B1ABAA54(v6, v7);
  }

  if (qword_1ED9A9890 != -1)
  {
    OUTLINED_FUNCTION_9_0();
  }

  v4 = qword_1ED9A9818;
LABEL_10:

  return v4;
}

id sub_1B1B073E4()
{
  OUTLINED_FUNCTION_4_1(OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_factorName);
  v0 = OUTLINED_FUNCTION_10_4();
  if (v0[2] != 9)
  {

    goto LABEL_14;
  }

  v2 = v0[20];
  v1 = v0[21];

  v3 = v2 == 0x746361706D6F63 && v1 == 0xE700000000000000;
  if (!v3 && (OUTLINED_FUNCTION_3() & 1) == 0)
  {
    v8 = v2 == 0x6D75696D657270 && v1 == 0xE700000000000000;
    if (v8 || (OUTLINED_FUNCTION_3() & 1) != 0)
    {

      if (qword_1ED9A9100 != -1)
      {
        swift_once();
      }

      v4 = qword_1ED9A90A8;
      goto LABEL_10;
    }

    v9 = v2 == 0x686D75696D657270 && v1 == 0xEB00000000686769;
    if (v9 || (OUTLINED_FUNCTION_3() & 1) != 0)
    {

      if (qword_1ED9A9628 != -1)
      {
        swift_once();
      }

      v4 = qword_1ED9A9598;
      goto LABEL_10;
    }

    if (v2 == 1635018082 && v1 == 0xE400000000000000)
    {

LABEL_38:
      if (qword_1EB7615E0 != -1)
      {
        swift_once();
      }

      v4 = qword_1EB7625D8;
      goto LABEL_10;
    }

    v11 = OUTLINED_FUNCTION_3();

    if (v11)
    {
      goto LABEL_38;
    }

LABEL_14:
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v6 = OUTLINED_FUNCTION_11_1();
    return sub_1B1ABAA54(v6, v7);
  }

  if (qword_1ED9A97D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED9A9830;
LABEL_10:

  return v4;
}

uint64_t sub_1B1B076A4()
{
  result = [*(v0 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_asset) attributes];
  if (result)
  {
    v2 = result;
    sub_1B1C2CA98();

    v3 = sub_1B1C2D4B8();
    OUTLINED_FUNCTION_14_3(v3, v4, v5);

    sub_1B1B08B44(v7);
    if (v9)
    {
      if (OUTLINED_FUNCTION_13_4())
      {
        if (OUTLINED_FUNCTION_3())
        {

          return 2;
        }

        else if (OUTLINED_FUNCTION_3())
        {

          return 1;
        }

        else
        {
          v6 = OUTLINED_FUNCTION_3();

          if (v6)
          {
            return 3;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    else
    {
      sub_1B1A9937C(v8);
    }

    return 0;
  }

  return result;
}

id sub_1B1B0789C()
{
  v1 = sub_1B1C2C1C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_asset) getLocalUrl];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  sub_1B1C2C168();

  (*(v2 + 32))(v11, v9, v1);
  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  (*(v2 + 16))(v6, v11, v1);
  v14 = sub_1B1AB30DC(v6);
  (*(v2 + 8))(v11, v1);
  return v14;
}

void sub_1B1B07A90()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_asset) attributes];
  if (!v1)
  {
    v46 = 0u;
    v47 = 0u;
    goto LABEL_23;
  }

  v2 = v1;
  sub_1B1C2CA98();

  v3 = sub_1B1C2D4B8();
  OUTLINED_FUNCTION_14_3(v3, v4, v5);

  sub_1B1B08B44(v45);
  if (!*(&v47 + 1))
  {
LABEL_23:
    sub_1B1A9937C(&v46);
    return;
  }

  v6 = OUTLINED_FUNCTION_13_4();
  if ((v6 & 1) == 0)
  {
    return;
  }

  v14 = OUTLINED_FUNCTION_12_0(v6, v7, v8, v9, v10, v11, v12, v13, v44, 0x7A69537465737361, 0xE900000000000065, v45[0]);
  if (!v17)
  {

    return;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(v14, v16, 10);
    v20 = v41;
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      goto LABEL_76;
    }

    return;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    OUTLINED_FUNCTION_16_5();
    if (v22)
    {
      if (v26)
      {
        if (v26 != 1)
        {
          OUTLINED_FUNCTION_2_3();
          while (1)
          {
            OUTLINED_FUNCTION_1();
            if (!v22 & v21)
            {
              break;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v22)
            {
              break;
            }

            v20 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            OUTLINED_FUNCTION_5_0();
            if (v22)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }

LABEL_84:
      __break(1u);
      return;
    }

    if (v27 != 45)
    {
      if (v26)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1();
          if (!v22 & v21)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v22)
          {
            break;
          }

          v20 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          OUTLINED_FUNCTION_5_0();
          if (v22)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_74;
    }

    if (v26)
    {
      if (v26 != 1)
      {
        OUTLINED_FUNCTION_2_3();
        while (1)
        {
          OUTLINED_FUNCTION_1();
          if (!v22 & v21)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v22)
          {
            break;
          }

          v20 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          OUTLINED_FUNCTION_5_0();
          if (v22)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_74;
    }

    goto LABEL_82;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
    v18 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v18 = sub_1B1C2D578();
  }

  v19 = *v18;
  if (v19 == 43)
  {
    if (v15 >= 1)
    {
      if (v15 != 1)
      {
        v20 = 0;
        if (v18)
        {
          OUTLINED_FUNCTION_17_4();
          while (1)
          {
            OUTLINED_FUNCTION_1();
            if (!v22 & v21)
            {
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v22)
            {
              goto LABEL_74;
            }

            v20 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_5_0();
            if (v22)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_65;
      }

      goto LABEL_74;
    }

    goto LABEL_83;
  }

  if (v19 == 45)
  {
    if (v15 >= 1)
    {
      if (v15 != 1)
      {
        v20 = 0;
        if (v18)
        {
          OUTLINED_FUNCTION_17_4();
          while (1)
          {
            OUTLINED_FUNCTION_1();
            if (!v22 & v21)
            {
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v22)
            {
              goto LABEL_74;
            }

            v20 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_5_0();
            if (v22)
            {
              goto LABEL_75;
            }
          }
        }

LABEL_65:
        v25 = 0;
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v15)
  {
    v20 = 0;
    if (v18)
    {
      while (*v18 - 48 <= 9)
      {
        OUTLINED_FUNCTION_15_6();
        if (!v22)
        {
          break;
        }

        v20 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          break;
        }

        v18 = (v34 + 1);
        if (v35 == 1)
        {
          goto LABEL_65;
        }
      }

      goto LABEL_74;
    }

    goto LABEL_65;
  }

LABEL_74:
  v20 = 0;
  v25 = 1;
LABEL_75:
  LOBYTE(v46) = v25;
  v40 = v25;

  if ((v40 & 1) == 0)
  {
LABEL_76:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }
}

void sub_1B1B07DF0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_asset) attributes];
  if (!v1)
  {
    v41 = 0u;
    v42 = 0u;
    goto LABEL_23;
  }

  v2 = v1;
  sub_1B1C2CA98();

  v3 = sub_1B1C2D4B8();
  OUTLINED_FUNCTION_14_3(v3, v4, v5);

  sub_1B1B08B44(v40);
  if (!*(&v42 + 1))
  {
LABEL_23:
    sub_1B1A9937C(&v41);
    return;
  }

  v6 = OUTLINED_FUNCTION_13_4();
  if (v6)
  {
    v14 = OUTLINED_FUNCTION_12_0(v6, v7, v8, v9, v10, v11, v12, v13, v39, 0xD000000000000011, 0x80000001B1C494A0, v40[0]);
    if (!v17)
    {

      return;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      sub_1B1B2EFF0(v14, v16, 10);

      return;
    }

    if ((v16 & 0x2000000000000000) != 0)
    {
      OUTLINED_FUNCTION_16_5();
      if (v21)
      {
        if (v25)
        {
          if (v25 != 1)
          {
            OUTLINED_FUNCTION_2_3();
            while (1)
            {
              OUTLINED_FUNCTION_1();
              if (!v21 & v20)
              {
                break;
              }

              OUTLINED_FUNCTION_0_1();
              if (!v21 || __OFADD__(v32, v31))
              {
                break;
              }

              OUTLINED_FUNCTION_5_0();
              if (v21)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_74;
        }

        goto LABEL_82;
      }

      if (v26 != 45)
      {
        if (v25)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1();
            if (!v21 & v20)
            {
              break;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v21 || __OFADD__(v38, v37))
            {
              break;
            }

            OUTLINED_FUNCTION_5_0();
            if (v21)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }

      if (v25)
      {
        if (v25 != 1)
        {
          OUTLINED_FUNCTION_2_3();
          while (1)
          {
            OUTLINED_FUNCTION_1();
            if (!v21 & v20)
            {
              break;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v21 || __OFSUB__(v28, v27))
            {
              break;
            }

            OUTLINED_FUNCTION_5_0();
            if (v21)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }
    }

    else
    {
      if ((v14 & 0x1000000000000000) != 0)
      {
        v18 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v18 = sub_1B1C2D578();
      }

      v19 = *v18;
      if (v19 == 43)
      {
        if (v15 >= 1)
        {
          if (v15 != 1)
          {
            if (v18)
            {
              OUTLINED_FUNCTION_17_4();
              while (1)
              {
                OUTLINED_FUNCTION_1();
                if (!v21 & v20)
                {
                  goto LABEL_74;
                }

                OUTLINED_FUNCTION_0_1();
                if (!v21 || __OFADD__(v30, v29))
                {
                  goto LABEL_74;
                }

                OUTLINED_FUNCTION_5_0();
                if (v21)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_65;
          }

          goto LABEL_74;
        }

        goto LABEL_81;
      }

      if (v19 != 45)
      {
        if (v15)
        {
          if (v18)
          {
            while (*v18 - 48 <= 9)
            {
              OUTLINED_FUNCTION_15_6();
              if (!v21 || __OFADD__(v36, v35))
              {
                break;
              }

              v18 = (v33 + 1);
              if (v34 == 1)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_74;
          }

          goto LABEL_65;
        }

LABEL_74:
        v24 = 1;
        goto LABEL_75;
      }

      if (v15 >= 1)
      {
        if (v15 != 1)
        {
          if (v18)
          {
            OUTLINED_FUNCTION_17_4();
            while (1)
            {
              OUTLINED_FUNCTION_1();
              if (!v21 & v20)
              {
                goto LABEL_74;
              }

              OUTLINED_FUNCTION_0_1();
              if (!v21 || __OFSUB__(v23, v22))
              {
                goto LABEL_74;
              }

              OUTLINED_FUNCTION_5_0();
              if (v21)
              {
                goto LABEL_75;
              }
            }
          }

LABEL_65:
          v24 = 0;
LABEL_75:
          LOBYTE(v41) = v24;

          return;
        }

        goto LABEL_74;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
  }
}

id sub_1B1B0811C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t sub_1B1B0818C()
{
  sub_1B1B07DF0();
  if (v0 < 1)
  {
    return 0x6E776F6E6B6E555BLL;
  }

  v1 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v1);

  return 2119235;
}

uint64_t sub_1B1B082E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_asset);
  [v1 purgeSync];
  [v1 refreshState];
  type metadata accessor for TTSAsset();
  return sub_1B1B7693C();
}

void sub_1B1B0838C(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_asset];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v9[4] = sub_1B1B08B98;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B1B4B374;
  v9[3] = &block_descriptor_0;
  v7 = _Block_copy(v9);
  v8 = v2;
  sub_1B1A94514(a1);

  [v5 purge_];
  _Block_release(v7);
}

void sub_1B1B0848C(void *a1, uint64_t a2, void (*a3)(void *))
{
  [*(a2 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_asset) refreshState];
  type metadata accessor for TTSAsset();
  sub_1B1B7693C();
  if (a3)
  {
    if (a1)
    {
      sub_1B1C2D538();
      MEMORY[0x1B27381B0](0xD000000000000019, 0x80000001B1C49540);
      type metadata accessor for MAPurgeResult(0);
      sub_1B1C2D618();
      sub_1B1A9EC9C();
      a1 = swift_allocError();
      *v5 = 1;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0xE000000000000000;
    }

    a3(a1);
  }
}

uint64_t sub_1B1B086A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_factorName + 8);
}

id sub_1B1B086E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSAssetFactoryTrialAsset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1B08790()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B18E8]);
  v1 = sub_1B1AEA368(0xD000000000000031, 0x80000001B1C49430);
  if (v1)
  {
    v2 = v1;
    [v1 returnTypes_];
    [v2 setDoNotBlockBeforeFirstUnlock_];
    [v2 setDoNotBlockOnNetworkStatus_];
    v3 = [v2 queryMetaDataSync];
    if (v3 || (v8 = sub_1B1AEA3CC(v2)) == 0)
    {
      LOBYTE(v4) = sub_1B1C2D0B8();
      if (qword_1ED9A99B8 == -1)
      {
LABEL_4:
        v5 = qword_1ED9AA668;
        if (os_log_type_enabled(qword_1ED9AA668, v4))
        {
          v6 = swift_slowAlloc();
          *v6 = 134217984;
          *(v6 + 4) = v3;
          _os_log_impl(&dword_1B1A8A000, v5, v4, "#FactoryInstall Unable to query results, error: %ld", v6, 0xCu);
          MEMORY[0x1B2739FD0](v6, -1, -1);
        }

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v4 = v8;
      v7 = MEMORY[0x1E69E7CC0];
      v16 = MEMORY[0x1E69E7CC0];
      v9 = sub_1B1A9547C(v8);
      v10 = 0;
      while (1)
      {
        if (v9 == v10)
        {

          return v7;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1B2738A20](v10, v4);
        }

        else
        {
          if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v11 = *(v4 + 8 * v10 + 32);
        }

        v3 = v11;
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v13 = objc_allocWithZone(type metadata accessor for TTSAssetFactoryTrialAsset());
        v14 = v3;
        v3 = v13;
        ++v10;
        if (sub_1B1B06858(v14))
        {
          MEMORY[0x1B2738320]();
          if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B1C2CE98();
          }

          v3 = &v16;
          sub_1B1C2CEC8();
          v7 = v16;
          v10 = v12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  v7 = MEMORY[0x1E69E7CC0];
  sub_1B1C2C7C8();
  return v7;
}

uint64_t sub_1B1B08A7C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B1B08AD8(void *a1)
{
  v1 = [a1 attributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1C2CA98();

  return v3;
}

uint64_t sub_1B1B08BA4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v38 = sub_1B1C2C1C8();
  v5 = OUTLINED_FUNCTION_7(v38);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  v32 = v10 - v11;
  OUTLINED_FUNCTION_16_0();
  result = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = 0;
  v37 = *(a3 + 16);
  v34 = v7 + 16;
  v17 = (v7 + 8);
  v31 = (v7 + 32);
  v33 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v37 == v16)
    {

      return v33;
    }

    if (v16 >= *(a3 + 16))
    {
      break;
    }

    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = *(v7 + 72);
    v20 = a3;
    (*(v7 + 16))(v15, a3 + v18 + v19 * v16, v38);
    v21 = v35(v15);
    if (v3)
    {
      (*v17)(v15, v38);
      v28 = v33;

      return v28;
    }

    if (v21)
    {
      v30 = *v31;
      v30(v32, v15, v38);
      v22 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v22;
      if (isUniquelyReferenced_nonNull_native)
      {
        v24 = v22;
      }

      else
      {
        sub_1B1B2FB38(0, *(v22 + 16) + 1, 1);
        v24 = v39;
      }

      a3 = v20;
      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v33 = v26 + 1;
        v29 = v26;
        sub_1B1B2FB38(v25 > 1, v26 + 1, 1);
        v27 = v33;
        v26 = v29;
        a3 = v20;
        v24 = v39;
      }

      ++v16;
      *(v24 + 16) = v27;
      v33 = v24;
      result = (v30)(v24 + v18 + v26 * v19, v32, v38);
    }

    else
    {
      result = (*v17)(v15, v38);
      ++v16;
    }
  }

  __break(1u);
  return result;
}

void NSFileManager.removeItems(inDirectory:olderThan:)()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v57[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B1C2C1C8();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_1();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v53 = v1;
  v18 = sub_1B1B09220(v1, v5);
  v56[2] = v3;
  v19 = sub_1B1B08BA4(sub_1B1B098B0, v56, v18);
  v21 = *(v19 + 16);
  if (v21)
  {
    v54 = *(v9 + 16);
    v55 = v9 + 16;
    v22 = *(v9 + 80);
    v45 = v19;
    v23 = v19 + ((v22 + 32) & ~v22);
    v24 = *(v9 + 72);
    v52 = (v9 + 8);
    *&v20 = 136315138;
    v47 = v20;
    v50 = v24;
    v51 = v14;
    v46 = v17;
    do
    {
      v25 = OUTLINED_FUNCTION_13_2();
      v54(v25);
      v26 = sub_1B1C2C118();
      v57[0] = 0;
      v27 = [v53 removeItemAtURL:v26 error:{v57, v45}];

      if (v27)
      {
        v28 = *v52;
        v29 = v57[0];
        v28(v17, v6);
      }

      else
      {
        v30 = v57[0];
        OUTLINED_FUNCTION_24();
        v31 = sub_1B1C2C058();

        swift_willThrow();
        if (qword_1ED9A9288 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v32 = sub_1B1C2C8A8();
        OUTLINED_FUNCTION_12_1(v32, qword_1ED9A9120);
        (v54)(v14, v17, v6);
        v33 = sub_1B1C2C888();
        v34 = v17;
        v35 = sub_1B1C2D0B8();
        if (os_log_type_enabled(v33, v35))
        {
          v36 = OUTLINED_FUNCTION_21_0();
          v49 = OUTLINED_FUNCTION_19_0();
          v57[0] = v49;
          *v36 = v47;
          OUTLINED_FUNCTION_3_4();
          sub_1B1AADE2C(&qword_1ED9A5260, v37);
          v38 = sub_1B1C2D778();
          v40 = v39;
          v48 = v31;
          v41 = *v52;
          (*v52)(v51, v6);
          v42 = sub_1B1A930E4(v38, v40, v57);

          *(v36 + 4) = v42;
          _os_log_impl(&dword_1B1A8A000, v33, v35, "Unable to remove file %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          OUTLINED_FUNCTION_11();
          v14 = v51;
          OUTLINED_FUNCTION_11();

          v17 = v46;
          v41(v46, v6);
        }

        else
        {

          v43 = *v52;
          (*v52)(v14, v6);
          v43(v34, v6);
          v17 = v34;
        }

        v24 = v50;
      }

      v23 += v24;
      --v21;
    }

    while (v21);
  }

  v44 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B09220(void *a1, uint64_t a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B1C2C1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B1C2C118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B1C361C0;
  v11 = *MEMORY[0x1E695DAA8];
  *(v10 + 32) = *MEMORY[0x1E695DAA8];
  v31[0] = 0;
  v12 = v11;
  v13 = sub_1B1BDE408(v9, v10, 5, v31, a1);

  v14 = v31[0];
  if (v13)
  {
    v15 = sub_1B1C2CE78();
    v16 = v14;
  }

  else
  {
    v17 = v31[0];
    v18 = sub_1B1C2C058();

    swift_willThrow();
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v19 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v19, qword_1ED9A9120);
    (*(v5 + 16))(v8, a2, v4);
    v20 = sub_1B1C2C888();
    v21 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31[0] = v23;
      *v22 = 136446210;
      sub_1B1AADE2C(&qword_1ED9A5260, MEMORY[0x1E6968FB0]);
      v24 = sub_1B1C2D778();
      v26 = v25;
      (*(v5 + 8))(v8, v4);
      v27 = sub_1B1A930E4(v24, v26, v31);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1B1A8A000, v20, v21, "Unable to list content of directory %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B2739FD0](v23, -1, -1);
      MEMORY[0x1B2739FD0](v22, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v15 = MEMORY[0x1E69E7CC0];
  }

  v28 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t sub_1B1B09588()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB0, &unk_1B1C40E10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_1B1C2C428();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v15 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v16 = v15;
  sub_1B1B7037C(inited);
  sub_1B1C2C0D8();
  if (v0)
  {

    v17 = sub_1B1C2BFD8();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
    sub_1B1A90C78(v4, &qword_1EB761DB0, &unk_1B1C40E10);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  }

  else
  {

    v18 = sub_1B1C2BFD8();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v18);
    sub_1B1C2BFA8();
    (*(*(v18 - 8) + 8))(v4, v18);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v13, v8, v9);
      goto LABEL_7;
    }
  }

  sub_1B1C2C358();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    sub_1B1A90C78(v8, &qword_1EB761D88, &qword_1B1C36488);
  }

LABEL_7:
  v19 = sub_1B1C2C388();
  (*(v10 + 8))(v13, v9);
  return v19 & 1;
}

uint64_t sub_1B1B098D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  __swift_allocate_value_buffer(v0, qword_1EB772C70);
  v1 = __swift_project_value_buffer(v0, qword_1EB772C70);
  v2 = sub_1B1C2C428();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t DiagnosticService.__allocating_init(notification:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_24();
  DiagnosticService.init(notification:)(v1);
  return v0;
}

uint64_t sub_1B1B09988(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v3 + 32) = *(v1 + v4);
  }

  return result;
}

void sub_1B1B09A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  OUTLINED_FUNCTION_23(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;
  v29 = sub_1B1C2C1C8();
  v30 = OUTLINED_FUNCTION_7(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_16();
  v37 = v36 - v35;
  type metadata accessor for AudioDumpAction();
  static AudioDumpAction.DiagnosticsDir.getter(v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_1B1A90C78(v28, &unk_1EB761F00, &qword_1B1C36480);
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v38 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v38, qword_1ED9A9120);
    v39 = sub_1B1C2C888();
    v40 = sub_1B1C2D0B8();
    if (OUTLINED_FUNCTION_10_2(v40))
    {
      v41 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_15_2(v41);
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v42, v43, v44, v45, v46, 2u);
      OUTLINED_FUNCTION_9_1();
    }
  }

  else
  {
    (*(v32 + 32))(v37, v28, v29);
    if ((*(v20 + 48) & 1) == 0)
    {
      v47 = *(v20 + 40);
      v48 = objc_opt_self();
      sub_1B1C2C178();
      v49 = sub_1B1C2CB28();

      v50 = sub_1B1C2CB28();
      [v48 reportAnalytics:v47 tailspin:v49 reason:v50];
    }

    (*(v32 + 8))(v37, v29);
  }

  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B09C58()
{
  sub_1B1C2D7D8();
  OUTLINED_FUNCTION_24();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1B09CD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1B09C58();
  *a2 = result;
  return result;
}

unint64_t sub_1B1B09D00@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B1AB2390(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B1B09D2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1B09CA8();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B09D6C(uint64_t a1)
{
  v2 = sub_1B1AB223C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1B09DA8(uint64_t a1)
{
  v2 = sub_1B1AB223C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B1B09DE4(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast() && v26)
  {
    v28[0] = v25;
    v28[1] = v26;
    a3(v28);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v12 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v12, qword_1ED9A9120);
    (*(v7 + 16))(v10, a1, v6);
    v13 = a2;
    v14 = sub_1B1C2C888();
    v15 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315650;
      v18 = sub_1B1C2CB58();
      v20 = sub_1B1A930E4(v18, v19, v28);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1B1A930E4(0x676E69727453, 0xE600000000000000, v28);
      *(v16 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v27, &qword_1EB761DE0, &qword_1B1C352C0);
      v27[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v21 = sub_1B1C2CBD8();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v24 = sub_1B1A930E4(v21, v23, v28);

      *(v16 + 24) = v24;
      _os_log_impl(&dword_1B1A8A000, v14, v15, "Event '%s' expect associated object as %s, got: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v17, -1, -1);
      MEMORY[0x1B2739FD0](v16, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

void sub_1B1B0A138(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  type metadata accessor for SynthesisResource();
  if (swift_dynamicCast())
  {
    v12 = v26;
    v28 = v26;
    a3(&v28);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v13 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v13, qword_1ED9A9120);
    (*(v7 + 16))(v10, a1, v6);
    v14 = a2;
    v15 = sub_1B1C2C888();
    v16 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315650;
      v19 = sub_1B1C2CB58();
      v21 = sub_1B1A930E4(v19, v20, &v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1B1A930E4(0xD000000000000011, 0x80000001B1C49680, &v28);
      *(v17 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v27, &qword_1EB761DE0, &qword_1B1C352C0);
      v27[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v22 = sub_1B1C2CBD8();
      v24 = v23;
      (*(v7 + 8))(v10, v6);
      v25 = sub_1B1A930E4(v22, v24, &v28);

      *(v17 + 24) = v25;
      _os_log_impl(&dword_1B1A8A000, v15, v16, "Event '%s' expect associated object as %s, got: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v18, -1, -1);
      MEMORY[0x1B2739FD0](v17, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

unint64_t sub_1B1B0A494()
{
  result = qword_1ED9A4F30;
  if (!qword_1ED9A4F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB761D78, &qword_1B1C38F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A4F30);
  }

  return result;
}

unint64_t sub_1B1B0A510()
{
  result = qword_1EB761058;
  if (!qword_1EB761058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB761C50, &qword_1B1C362A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761058);
  }

  return result;
}

unint64_t sub_1B1B0A5CC()
{
  result = qword_1EB761D80;
  if (!qword_1EB761D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761D80);
  }

  return result;
}

unint64_t sub_1B1B0A624()
{
  result = qword_1ED9A5158;
  if (!qword_1ED9A5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5158);
  }

  return result;
}

unint64_t sub_1B1B0A67C()
{
  result = qword_1ED9A5160;
  if (!qword_1ED9A5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5160);
  }

  return result;
}

void sub_1B1B0A6E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1B1AA9790();
}

uint64_t sub_1B1B0A76C()
{
  sub_1B1C2CC48();
}

uint64_t sub_1B1B0A8A4()
{
  sub_1B1C2CC48();
}

uint64_t sub_1B1B0A9A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1B1C2CC48();
}

uint64_t sub_1B1B0A9F8()
{
  sub_1B1C2CC48();
}

uint64_t sub_1B1B0AAC8()
{
  sub_1B1C2CC48();
}

uint64_t static WordTimingInfo.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_15_7();
  byte_1EB761DC0 = a1;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1B1B0AC30@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB761DC0;
  return result;
}

uint64_t sub_1B1B0AC7C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB761DC0 = v1;
  return result;
}

double sub_1B1B0ACE8()
{
  v1 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B0AD40(double a1)
{
  v3 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
  result = OUTLINED_FUNCTION_19_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1B0ADF4()
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSWordTimingInfo_textRange);
  OUTLINED_FUNCTION_65();
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_1B1B0AE58()
{
  OUTLINED_FUNCTION_62();
  v3 = (v1 + OBJC_IVAR___SiriTTSWordTimingInfo_textRange);
  result = OUTLINED_FUNCTION_15_7();
  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_1B1B0AE9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  return sub_1B1B0AE58();
}

id WordTimingInfo.init()()
{
  *&v0[OBJC_IVAR___SiriTTSWordTimingInfo_startTime] = 0;
  v1 = &v0[OBJC_IVAR___SiriTTSWordTimingInfo_textRange];
  v2 = type metadata accessor for WordTimingInfo();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id WordTimingInfo.__allocating_init(startTiming:textRange:)()
{
  OUTLINED_FUNCTION_62();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_72();
  return WordTimingInfo.init(startTiming:textRange:)();
}

id WordTimingInfo.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_24();
  return WordTimingInfo.init(coder:)();
}

BOOL WordTimingInfo.isEqual(_:)()
{
  sub_1B1A91C70();
  if (!v13)
  {
    sub_1B1A90CD8(v12, &qword_1EB761DE0, &qword_1B1C352C0);
    return 0;
  }

  type metadata accessor for WordTimingInfo();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
  OUTLINED_FUNCTION_65();
  v2 = *&v11[v1];
  v3 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
  OUTLINED_FUNCTION_51_0();
  if (v2 != *(v0 + v3))
  {

    return 0;
  }

  v4 = &v11[OBJC_IVAR___SiriTTSWordTimingInfo_textRange];
  OUTLINED_FUNCTION_65();
  v5 = *v4;
  v6 = *(v4 + 1);
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSWordTimingInfo_textRange);
  OUTLINED_FUNCTION_65();
  v8 = *v4;
  v7 = *(v4 + 1);

  return v5 == v8 && v6 == v7;
}

uint64_t WordTimingInfo.hash.getter()
{
  v1 = v0;
  sub_1B1C2D8F8();
  v2 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
  OUTLINED_FUNCTION_40_0();
  v3 = *(v1 + v2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1B2738D90](*&v3);
  v4 = (v1 + OBJC_IVAR___SiriTTSWordTimingInfo_textRange);
  OUTLINED_FUNCTION_9_2();
  v5 = *v4;
  v6 = v4[1];
  MEMORY[0x1B2738D60](v5);
  MEMORY[0x1B2738D60](v6);
  return sub_1B1C2D8D8();
}

uint64_t sub_1B1B0B254()
{
  v1 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B0B2FC()
{
  v1 = OBJC_IVAR___SiriTTSAudibleContext_immediate;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B0B358(char a1)
{
  v3 = OBJC_IVAR___SiriTTSAudibleContext_immediate;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1B0B4AC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = sub_1B1B0B48C();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1B1B18B60;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1B1B0B51C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B1B18B28;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1B1A94514(v3);
  return sub_1B1AD5788(v6, v5);
}

float sub_1B1B0B61C()
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSAudibleContext_playbackVolume);
  OUTLINED_FUNCTION_65();
  return *v0;
}

uint64_t sub_1B1B0B678(float a1)
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSAudibleContext_playbackVolume);
  result = OUTLINED_FUNCTION_66_0();
  *v1 = a1;
  return result;
}

id AudibleContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static AudibleContext.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_15_7();
  byte_1EB761DC1 = a1;
  return result;
}

uint64_t sub_1B1B0B7D8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB761DC1;
  return result;
}

uint64_t sub_1B1B0B824(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB761DC1 = v1;
  return result;
}

id AudibleContext.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  v0 = OUTLINED_FUNCTION_24();
  return AudibleContext.init(coder:)(v0);
}

id sub_1B1B0B8AC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B1B0B8E4@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = AudibleRequestProtocol.audioSessionId.getter();
  *a2 = result;
  return result;
}

void AudibleRequestProtocol.audioSessionId.setter(int a1)
{
  v3 = [v1 audibleContext];
  v4 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  OUTLINED_FUNCTION_19_2();
  *&v3[v4] = a1;
}

void (*AudibleRequestProtocol.audioSessionId.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_37_2(a1, a2);
  *(v2 + 16) = AudibleRequestProtocol.audioSessionId.getter();
  return sub_1B1B0B9E0;
}

uint64_t sub_1B1B0BA1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AudibleRequestProtocol.immediate.getter(a1);
  *a2 = result & 1;
  return result;
}

void (*AudibleRequestProtocol.immediate.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = AudibleRequestProtocol.immediate.getter(v2);
  OUTLINED_FUNCTION_20_1(v3);
  return sub_1B1B0BAC8;
}

void (*AudibleRequestProtocol.siriRequestId.modify(void *a1, uint64_t a2))(void *a1, char a2)
{
  OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  *(v2 + 16) = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  *(v2 + 24) = v6;
  AudibleRequestProtocol.siriRequestId.getter(v6);
  return sub_1B1B0BBBC;
}

uint64_t sub_1B1B0BBE0(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for BaseRequest(0);
  OUTLINED_FUNCTION_107();
  if (swift_dynamicCastClass())
  {
    v3 = *a2;
    OUTLINED_FUNCTION_17_1();
    return sub_1B1A91C70();
  }

  else
  {
    sub_1B1C2C478();
    OUTLINED_FUNCTION_64_1();

    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B1B0BCAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = OUTLINED_FUNCTION_126();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_97();
  sub_1B1A91C70();
  v14 = *a2;
  return a5(v5);
}

uint64_t sub_1B1B0BD58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for BaseRequest(0);
  OUTLINED_FUNCTION_107();
  if (!swift_dynamicCastClass())
  {
    return sub_1B1A90CD8(a1, &qword_1EB761DF8, qword_1B1C40850);
  }

  v5 = *a3;
  OUTLINED_FUNCTION_67();
  swift_unknownObjectRetain();
  sub_1B1A991E4();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*AudibleRequestProtocol.siriAceViewId.modify(void *a1, uint64_t a2))(void *a1, char a2)
{
  OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  *(v2 + 16) = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  *(v2 + 24) = v6;
  AudibleRequestProtocol.siriAceViewId.getter(v6);
  return sub_1B1B0BE98;
}

void sub_1B1B0BEB0(void *a1, char a2, void (*a3)(void *))
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[1];
  if (a2)
  {
    OUTLINED_FUNCTION_72();
    sub_1B1A91C70();
    a3(v4);
    sub_1B1A90CD8(v5, &qword_1EB761DF8, qword_1B1C40850);
  }

  else
  {
    a3(a1[3]);
  }

  free(v5);

  free(v4);
}

uint64_t sub_1B1B0BF54@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = AudibleRequestProtocol.didStartSpeaking.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1B1AADFB0;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1B1B0BFC4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B1B18ACC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1B1A94514(v3);
  AudibleRequestProtocol.didStartSpeaking.setter(v6, v5, v8);
}

uint64_t AudibleRequestProtocol.didStartSpeaking.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_131(a1, a2);
  *v2 = AudibleRequestProtocol.didStartSpeaking.getter();
  v2[1] = v3;
  return OUTLINED_FUNCTION_48_1();
}

void (*AudibleRequestProtocol.playbackVolume.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = AudibleRequestProtocol.playbackVolume.getter(v2);
  OUTLINED_FUNCTION_130(v3);
  return sub_1B1B0C17C;
}

float sub_1B1B0C1C4()
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSProsodyProperties_neuralSentencePitch);
  OUTLINED_FUNCTION_65();
  return *v0;
}

uint64_t sub_1B1B0C220(float a1)
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSProsodyProperties_neuralSentencePitch);
  result = OUTLINED_FUNCTION_66_0();
  *v1 = a1;
  return result;
}

float sub_1B1B0C2D4()
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSProsodyProperties_neuralSentencePitchRange);
  OUTLINED_FUNCTION_65();
  return *v0;
}

uint64_t sub_1B1B0C330(float a1)
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSProsodyProperties_neuralSentencePitchRange);
  result = OUTLINED_FUNCTION_66_0();
  *v1 = a1;
  return result;
}

float sub_1B1B0C3E4()
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSProsodyProperties_neuralSentenceDuration);
  OUTLINED_FUNCTION_65();
  return *v0;
}

uint64_t sub_1B1B0C440(float a1)
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSProsodyProperties_neuralSentenceDuration);
  result = OUTLINED_FUNCTION_66_0();
  *v1 = a1;
  return result;
}

float sub_1B1B0C4F4()
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSProsodyProperties_neuralSentenceEnergy);
  OUTLINED_FUNCTION_65();
  return *v0;
}

uint64_t sub_1B1B0C550(float a1)
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSProsodyProperties_neuralSentenceEnergy);
  result = OUTLINED_FUNCTION_66_0();
  *v1 = a1;
  return result;
}

float sub_1B1B0C604()
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSProsodyProperties_neuralSentenceTilt);
  OUTLINED_FUNCTION_65();
  return *v0;
}

uint64_t sub_1B1B0C660(float a1)
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSProsodyProperties_neuralSentenceTilt);
  result = OUTLINED_FUNCTION_66_0();
  *v1 = a1;
  return result;
}

uint64_t static ProsodyProperties.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_15_7();
  byte_1EB761DC2 = a1;
  return result;
}

uint64_t sub_1B1B0C78C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB761DC2;
  return result;
}

uint64_t sub_1B1B0C7D8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB761DC2 = v1;
  return result;
}

id ProsodyProperties.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  v0 = OUTLINED_FUNCTION_24();
  return ProsodyProperties.init(coder:)(v0);
}

id sub_1B1B0C928()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisContext_voice;
  OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B1B0CA08(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1B0C9C8();
}

uint64_t sub_1B1B0CAA8()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisContext_privacySensitive;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B0CB50()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisContext_minimizeDeviceUsage;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B0CBAC(char a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisContext_minimizeDeviceUsage;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1B0CCB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1AD60FC(v4);
}

float sub_1B1B0CD4C()
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSSynthesisContext_rate);
  OUTLINED_FUNCTION_65();
  return *v0;
}

float sub_1B1B0CDF4()
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSSynthesisContext_pitch);
  OUTLINED_FUNCTION_65();
  return *v0;
}

uint64_t sub_1B1B0CE50(float a1)
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSSynthesisContext_pitch);
  result = OUTLINED_FUNCTION_66_0();
  *v1 = a1;
  return result;
}

float sub_1B1B0CF04()
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSSynthesisContext_volume);
  OUTLINED_FUNCTION_65();
  return *v0;
}

uint64_t sub_1B1B0CF60(float a1)
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSSynthesisContext_volume);
  result = OUTLINED_FUNCTION_66_0();
  *v1 = a1;
  return result;
}

uint64_t sub_1B1B0D064(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_7_3();
  v3 = *(v1 + v2);
}

uint64_t sub_1B1B0D118(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1B0D10C(v4);
}

uint64_t sub_1B1B0D1E4()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisContext_synthesisProfile;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B0D240(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisContext_synthesisProfile;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_1B1B0D2DC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SynthesisContext.SynthesisPriority.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B1B0D344()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisContext_synthesisPriority;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B0D3A0(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisContext_synthesisPriority;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1B0D454()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisContext_disableCompactVoice;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B0D4B0(char a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisContext_disableCompactVoice;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1B0D564()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisContext_disableThermalFallback;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B0D5C0(char a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisContext_disableThermalFallback;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1B0D7DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B0D6F4();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1B1B18B3C;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1B1B0D84C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B1B18AF4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1B1A94514(v3);
  return sub_1B1B0D7BC(v6, v5);
}

uint64_t sub_1B1B0D9F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for WordTimingInfo();
  v3 = sub_1B1C2CE78();

  v2(v3);
}

uint64_t sub_1B1B0DA60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B0D9D0();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1B1B18B40;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1B1B0DAD0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B1B18AF4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1B1A94514(v3);
  return sub_1B1AD5768(v6, v5);
}

uint64_t sub_1B1B0DBF0()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisContext_style;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B0DC4C(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisContext_style;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1B0DD00()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisContext_whisper;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B0DD5C(char a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisContext_whisper;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

id sub_1B1B0DE1C()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisContext_prosodyProperties;
  OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B1B0DEFC(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1B0DEBC();
}

uint64_t sub_1B1B0DF9C()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisContext_forceOspreyTTS;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B0DFF8(char a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisContext_forceOspreyTTS;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

id SynthesisContext.__allocating_init(text:voice:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_56_0();
  v5 = objc_allocWithZone(v3);
  v6 = OUTLINED_FUNCTION_33();
  return SynthesisContext.init(text:voice:)(v6, v7, a3);
}

uint64_t static SynthesisContext.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_15_7();
  byte_1EB761DC3 = a1;
  return result;
}

uint64_t sub_1B1B0E164@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB761DC3;
  return result;
}

uint64_t sub_1B1B0E1B0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB761DC3 = v1;
  return result;
}

uint64_t SynthesisContext.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_24();
  return SynthesisContext.init(coder:)();
}

uint64_t sub_1B1B0E270@<X0>(uint64_t a1@<X8>)
{
  result = SynthesisContext.PromptStyle.init(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t SynthesisContext.SynthesisProfile.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x656E696665646E75;
    case 2:
      return 0x6C616D726F6ELL;
    case 1:
      return 0x74736F63776F6CLL;
  }

  sub_1B1B1063C();
  return sub_1B1C2D3E8();
}

uint64_t SynthesisContext.SynthesisProfile.init(_:)()
{
  OUTLINED_FUNCTION_12_2();
  v4 = v4 && v2 == v3;
  if (v4 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    return OUTLINED_FUNCTION_101();
  }

  else
  {
    v6 = v1 == 0x74736F63776F6CLL && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_2() & 1) != 0)
    {

      return OUTLINED_FUNCTION_93();
    }

    else if (v1 == 0x6C616D726F6ELL && v0 == 0xE600000000000000)
    {

      return OUTLINED_FUNCTION_106();
    }

    else
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_121();
      if (v1)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t sub_1B1B0E414@<X0>(uint64_t a1@<X8>)
{
  result = SynthesisContext.SynthesisProfile.init(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t SynthesisContext.SynthesisPriority.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x746C7561666564;
  }

  if (a1 == 1)
  {
    return 1751607656;
  }

  sub_1B1B1063C();
  return sub_1B1C2D3E8();
}

uint64_t SynthesisContext.SynthesisPriority.init(_:)()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_108();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_2() & 1) != 0)
  {

    return OUTLINED_FUNCTION_101();
  }

  else if (v1 == 1751607656 && v0 == 0xE400000000000000)
  {

    return OUTLINED_FUNCTION_93();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_3();

    return v6 & 1;
  }
}

uint64_t sub_1B1B0E55C@<X0>(uint64_t a1@<X8>)
{
  result = SynthesisContext.SynthesisPriority.init(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B1B0E594@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.text.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B1B0E5C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return SynthesizingRequestProtocol.text.setter();
}

uint64_t SynthesizingRequestProtocol.text.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_131(a1, a2);
  *v2 = SynthesizingRequestProtocol.text.getter();
  v2[1] = v3;
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B1B0E640(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  if (a2)
  {
    v5 = a1[1];

    OUTLINED_FUNCTION_72();
    SynthesizingRequestProtocol.text.setter();
  }

  else
  {
    OUTLINED_FUNCTION_72();
    return SynthesizingRequestProtocol.text.setter();
  }
}

id sub_1B1B0E6AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.voice.getter(a1);
  *a2 = result;
  return result;
}

void sub_1B1B0E6D8(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  SynthesizingRequestProtocol.voice.setter(v3, v4);
}

uint64_t SynthesizingRequestProtocol.voice.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_76_1(a1, a2);
  *v2 = SynthesizingRequestProtocol.voice.getter(v3);
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B1B0E768@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.privacySensitive.getter(a1);
  *a2 = result & 1;
  return result;
}

void (*SynthesizingRequestProtocol.privacySensitive.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = SynthesizingRequestProtocol.privacySensitive.getter(v2);
  OUTLINED_FUNCTION_20_1(v3);
  return sub_1B1B0E800;
}

uint64_t sub_1B1B0E824@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.minimizeDeviceUsage.getter(a1);
  *a2 = result & 1;
  return result;
}

void (*SynthesizingRequestProtocol.minimizeDeviceUsage.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = SynthesizingRequestProtocol.minimizeDeviceUsage.getter(v2);
  OUTLINED_FUNCTION_20_1(v3);
  return sub_1B1B0E8D0;
}

uint64_t sub_1B1B0E8F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.contextInfo.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B0E920(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SynthesizingRequestProtocol.contextInfo.setter(v4, v5);
}

uint64_t SynthesizingRequestProtocol.contextInfo.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_76_1(a1, a2);
  *v2 = SynthesizingRequestProtocol.contextInfo.getter(v3);
  return OUTLINED_FUNCTION_48_1();
}

void (*SynthesizingRequestProtocol.rate.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = SynthesizingRequestProtocol.rate.getter(v2);
  OUTLINED_FUNCTION_130(v3);
  return sub_1B1B0EA58;
}

void (*SynthesizingRequestProtocol.pitch.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = SynthesizingRequestProtocol.pitch.getter(v2);
  OUTLINED_FUNCTION_130(v3);
  return sub_1B1B0EB24;
}

void sub_1B1B0EBB0(float a1, uint64_t a2, SEL *a3, void *a4)
{
  v7 = [v4 *a3];
  v8 = &v7[*a4];
  OUTLINED_FUNCTION_66_0();
  *v8 = a1;
}

void (*SynthesizingRequestProtocol.volume.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = SynthesizingRequestProtocol.volume.getter(v2);
  OUTLINED_FUNCTION_130(v3);
  return sub_1B1B0EC58;
}

uint64_t sub_1B1B0EC88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.customResourceURLs.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B0ECB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SynthesizingRequestProtocol.customResourceURLs.setter(v4, v5);
}

uint64_t sub_1B1B0ECEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = [v3 synthesisContext];
  v7 = *a3;
  OUTLINED_FUNCTION_19_2();
  v8 = *&v6[v7];
  *&v6[v7] = a1;
}

uint64_t SynthesizingRequestProtocol.customResourceURLs.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_76_1(a1, a2);
  *v2 = SynthesizingRequestProtocol.customResourceURLs.getter(v3);
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B1B0EDB4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

uint64_t sub_1B1B0EE28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.disableCompactVoice.getter(a1);
  *a2 = result & 1;
  return result;
}

void (*SynthesizingRequestProtocol.disableCompactVoice.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = SynthesizingRequestProtocol.disableCompactVoice.getter(v2);
  OUTLINED_FUNCTION_20_1(v3);
  return sub_1B1B0EED4;
}

uint64_t sub_1B1B0EEF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.disableThermalFallback.getter(a1);
  *a2 = result & 1;
  return result;
}

void (*SynthesizingRequestProtocol.disableThermalFallback.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = SynthesizingRequestProtocol.disableThermalFallback.getter(v2);
  OUTLINED_FUNCTION_20_1(v3);
  return sub_1B1B0EFA4;
}

uint64_t sub_1B1B0EFD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.synthesisProfile.getter(a1);
  *a2 = result;
  return result;
}

uint64_t SynthesizingRequestProtocol.synthesisProfile.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_76_1(a1, a2);
  *v2 = SynthesizingRequestProtocol.synthesisProfile.getter(v3);
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B1B0F09C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.synthesisPriority.getter(a1);
  *a2 = result;
  return result;
}

uint64_t SynthesizingRequestProtocol.synthesisPriority.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_76_1(a1, a2);
  *v2 = SynthesizingRequestProtocol.synthesisPriority.getter(v3);
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B1B0F164@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.didGenerateAudio.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1B1B18B3C;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1B1B0F1D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B1B18AF4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1B1A94514(v3);
  SynthesizingRequestProtocol.didGenerateAudio.setter(v6, v5, v8);
}

uint64_t SynthesizingRequestProtocol.didGenerateAudio.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_131(a1, a2);
  *v2 = SynthesizingRequestProtocol.didGenerateAudio.getter();
  v2[1] = v3;
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B1B0F30C(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  if (a2)
  {
    v7 = OUTLINED_FUNCTION_51();
    v14 = v8;
    v9(v7);
    v10 = OUTLINED_FUNCTION_51();
    a3(v10);
    v11 = OUTLINED_FUNCTION_51();

    return v14(v11);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_51();
    return (a3)(v13);
  }
}

uint64_t sub_1B1B0F3A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.didGenerateWordTimings.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1B1B18AA0;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1B1B0F410(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B1B18A3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1B1A94514(v3);
  SynthesizingRequestProtocol.didGenerateWordTimings.setter(v6, v5, v8);
}

uint64_t SynthesizingRequestProtocol.didGenerateWordTimings.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_131(a1, a2);
  *v2 = SynthesizingRequestProtocol.didGenerateWordTimings.getter();
  v2[1] = v3;
  return OUTLINED_FUNCTION_48_1();
}

id sub_1B1B0F554@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.prosodyProperties.getter(a1);
  *a2 = result;
  return result;
}

void sub_1B1B0F580(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  SynthesizingRequestProtocol.prosodyProperties.setter(v3, v4);
}

void sub_1B1B0F5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_4([v3 synthesisContext]);
  OUTLINED_FUNCTION_66_0();
  v6 = *&v3[a3];
  *&v3[a3] = a1;
}

uint64_t SynthesizingRequestProtocol.prosodyProperties.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_76_1(a1, a2);
  *v2 = SynthesizingRequestProtocol.prosodyProperties.getter(v3);
  return OUTLINED_FUNCTION_48_1();
}

void sub_1B1B0F674(uint64_t a1, char a2, void (*a3)(void))
{
  v5 = *a1;
  v6 = *(a1 + 16);
  if (a2)
  {
    v7 = v5;
    a3();
  }

  else
  {
    (a3)(v5);
  }
}

uint64_t sub_1B1B0F6FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.whisper.getter(a1);
  *a2 = result & 1;
  return result;
}

void (*SynthesizingRequestProtocol.whisper.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = SynthesizingRequestProtocol.whisper.getter(v2);
  OUTLINED_FUNCTION_20_1(v3);
  return sub_1B1B0F7A8;
}

uint64_t sub_1B1B0F7CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.forceOspreyTTS.getter(a1);
  *a2 = result & 1;
  return result;
}

void (*SynthesizingRequestProtocol.forceOspreyTTS.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_37_2(a1, a2);
  v3 = SynthesizingRequestProtocol.forceOspreyTTS.getter(v2);
  OUTLINED_FUNCTION_20_1(v3);
  return sub_1B1B0F878;
}

uint64_t sub_1B1B0F89C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SynthesizingRequestProtocol.style.getter(a1);
  *a2 = result;
  return result;
}

void sub_1B1B0F8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_4([v3 synthesisContext]);
  OUTLINED_FUNCTION_66_0();
  *&v3[a3] = a1;
}

uint64_t SynthesizingRequestProtocol.style.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_76_1(a1, a2);
  *v2 = SynthesizingRequestProtocol.style.getter(v3);
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B1B0F9C8(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1B0FA54(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_141(a1, a2);
  v3 = OUTLINED_FUNCTION_33();
  return v2(v3);
}

uint64_t sub_1B1B0FD20(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSBaseRequest_outputPath;
  OUTLINED_FUNCTION_67();
  sub_1B1B154F4(a1, v1 + v3);
  swift_endAccess();
  sub_1B1B0FD94();
  return sub_1B1A90CD8(a1, &unk_1EB761F00, &qword_1B1C36480);
}

uint64_t sub_1B1B0FD94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v41 - v4;
  v6 = sub_1B1C2C1C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  swift_beginAccess();
  sub_1B1A91C70();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1B1A90CD8(v5, &unk_1EB761F00, &qword_1B1C36480);
    v14 = (v1 + OBJC_IVAR___SiriTTSBaseRequest_sandboxToken);
    swift_beginAccess();
    v15 = v14[1];
    *v14 = 0;
    v14[1] = 0;
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    v17 = *MEMORY[0x1E69E9BB0];
    sub_1B1C2C178();
    v18 = *MEMORY[0x1E69E9BE0];
    sub_1B1C2CBF8();

    v19 = sandbox_extension_issue_file();

    if (v19)
    {
      v20 = MEMORY[0x1B27380E0](v19);
      if (v21)
      {
        v22 = v20;
        v23 = v21;
        v24 = (v1 + OBJC_IVAR___SiriTTSBaseRequest_sandboxToken);
        swift_beginAccess();
        v25 = v24[1];
        *v24 = v22;
        v24[1] = v23;
      }

      else
      {
        if (qword_1ED9A9288 != -1)
        {
          swift_once();
        }

        v36 = sub_1B1C2C8A8();
        __swift_project_value_buffer(v36, qword_1ED9A9120);
        v37 = sub_1B1C2C888();
        v38 = sub_1B1C2D0B8();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_1B1A8A000, v37, v38, "Unable to encode token into String", v39, 2u);
          MEMORY[0x1B2739FD0](v39, -1, -1);
        }
      }

      free(v19);
      return (*(v7 + 8))(v13, v6);
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v26 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v26, qword_1ED9A9120);
      (*(v7 + 16))(v11, v13, v6);
      v27 = sub_1B1C2C888();
      v28 = sub_1B1C2D0B8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = v42;
        *v29 = 136315138;
        sub_1B1ABB2F4(&qword_1ED9A5260, MEMORY[0x1E6968FB0]);
        v30 = sub_1B1C2D778();
        v32 = v31;
        v33 = *(v7 + 8);
        v33(v11, v6);
        v34 = sub_1B1A930E4(v30, v32, &v43);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_1B1A8A000, v27, v28, "Unable to issue sandbox extension with path %s", v29, 0xCu);
        v35 = v42;
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x1B2739FD0](v35, -1, -1);
        MEMORY[0x1B2739FD0](v29, -1, -1);

        return (v33)(v13, v6);
      }

      else
      {

        v40 = *(v7 + 8);
        v40(v11, v6);
        return (v40)(v13, v6);
      }
    }
  }
}

uint64_t sub_1B1B102BC(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_26();
  return OUTLINED_FUNCTION_65_0();
}

uint64_t sub_1B1B1030C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1B1B0FD94();
  }

  return result;
}

id sub_1B1B103E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  a3(v8);
  v11 = sub_1B1C2C478();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    v12 = sub_1B1C2C448();
    OUTLINED_FUNCTION_59_1(v11);
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_92();
    v16(v15);
  }

  return v12;
}

void sub_1B1B104EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  if (a3)
  {
    sub_1B1C2C458();
    v13 = sub_1B1C2C478();
    v14 = 0;
  }

  else
  {
    v13 = sub_1B1C2C478();
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v14, 1, v13);
  v15 = a1;
  a4(v12);
}

unint64_t sub_1B1B1063C()
{
  result = qword_1ED9A93B0;
  if (!qword_1ED9A93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A93B0);
  }

  return result;
}

uint64_t sub_1B1B10690(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_97();
  sub_1B1A91C70();
  v14 = *a2;
  return a7(v7);
}

uint64_t sub_1B1B10840(uint64_t *a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_29(*a1);
  OUTLINED_FUNCTION_65();
  v5 = *v2;
  v4 = v2[1];
  v6 = OUTLINED_FUNCTION_36();
  a2(v6);
  return OUTLINED_FUNCTION_36();
}

void sub_1B1B10890(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1B1B108F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B10820();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1B1B18A74;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1B1B10968(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B1B18A3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1B1A94514(v3);
  return sub_1B1AD6170(v6, v5);
}

id BaseRequest.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_24();
  return BaseRequest.init(coder:)();
}

uint64_t BaseRequest.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return sub_1B1B14AC8(0, type metadata accessor for BaseRequest, a1);
}

id sub_1B1B10C28()
{
  v1 = OBJC_IVAR___SiriTTSAudioRequest_audibleContext;
  OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B1B10D08(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1B10CC8();
}

id AudioRequest.__allocating_init(audio:)()
{
  OUTLINED_FUNCTION_83_0();
  v0 = OUTLINED_FUNCTION_24();
  return AudioRequest.init(audio:)(v0);
}

id AudioRequest.init(audio:)(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSAudioRequest_audibleContext;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for AudibleContext()) init];
  *&v1[OBJC_IVAR___SiriTTSAudioRequest_audio] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AudioRequest(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1B1B10E4C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___SiriTTSAudioRequest_audio);
  v4 = sub_1B1C2CB28();
  OUTLINED_FUNCTION_13_5();

  v5 = OBJC_IVAR___SiriTTSAudioRequest_audibleContext;
  OUTLINED_FUNCTION_17_1();
  v6 = *&v5[v1];
  v7 = OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_11_2(v7);

  sub_1B1A99C9C(a1);
}

id AudioRequest.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_24();
  return AudioRequest.init(coder:)();
}

id AudioRequest.init(coder:)()
{
  OUTLINED_FUNCTION_47_0();
  v1 = OBJC_IVAR___SiriTTSAudioRequest_audibleContext;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for AudibleContext()) init];
  type metadata accessor for AudioData();
  result = sub_1B1C2D1E8();
  if (result)
  {
    *(v0 + OBJC_IVAR___SiriTTSAudioRequest_audio) = result;
    OUTLINED_FUNCTION_4_2();
    result = sub_1B1C2D1E8();
    if (result)
    {
      OUTLINED_FUNCTION_19_2();
      OUTLINED_FUNCTION_143();
      return BaseRequest.init(coder:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B11070()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_105(v4, xmmword_1B1C36280);
  v12.receiver = v0;
  v12.super_class = type metadata accessor for AudioRequest(v5);
  OUTLINED_FUNCTION_128();
  v7 = objc_msgSendSuper2(&v12, v6);
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_42_3();

  v4[2].n128_u64[0] = v1;
  v4[2].n128_u64[1] = v2;
  v8 = [*&v0[OBJC_IVAR___SiriTTSAudioRequest_audio] (v3 + 1272)];
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_129();

  v4[3].n128_u64[0] = v7;
  v4[3].n128_u64[1] = v1;
  v9 = OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_1_3(&qword_1ED9A8DA8);
  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_74_2();
  return OUTLINED_FUNCTION_67_0();
}

void sub_1B1B111AC()
{
  v1 = *(v0 + OBJC_IVAR___SiriTTSAudioRequest_audibleContext);
}

void sub_1B1B112EC(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1B112AC();
}

id SynthesisRequest.__allocating_init(text:voice:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_56_0();
  v5 = objc_allocWithZone(v3);
  v6 = OUTLINED_FUNCTION_33();
  return SynthesisRequest.init(text:voice:)(v6, v7, a3);
}

id SynthesisRequest.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_24();
  return SynthesisRequest.init(coder:)();
}

void sub_1B1B1146C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_129();
  v7 = a1;
  v6 = OUTLINED_FUNCTION_51();
  a4(v6);
}

id sub_1B1B11568()
{
  v1 = OBJC_IVAR___SiriTTSPhonemeRequest_voice;
  OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B1B11648(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1B11608();
}

uint64_t sub_1B1B116E8()
{
  v1 = OBJC_IVAR___SiriTTSPhonemeRequest_phonemeSystem;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B11744(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSPhonemeRequest_phonemeSystem;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

id PhonemeRequest.__allocating_init(text:voice:phonemeSystem:)()
{
  OUTLINED_FUNCTION_102();
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_89_0());
  OUTLINED_FUNCTION_95();
  return PhonemeRequest.init(text:voice:phonemeSystem:)(v1, v2, v3, v4);
}

id PhonemeRequest.init(text:voice:phonemeSystem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___SiriTTSPhonemeRequest_text];
  *v5 = a1;
  *(v5 + 1) = a2;
  *&v4[OBJC_IVAR___SiriTTSPhonemeRequest_voice] = a3;
  *&v4[OBJC_IVAR___SiriTTSPhonemeRequest_phonemeSystem] = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for PhonemeRequest(0);
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1B1B118E8(void *a1)
{
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_33();
  sub_1B1C2CB28();
  OUTLINED_FUNCTION_119();
  v4 = sub_1B1C2CB28();
  v5 = OUTLINED_FUNCTION_63_1();
  [v5 v6];

  v7 = OBJC_IVAR___SiriTTSPhonemeRequest_voice;
  OUTLINED_FUNCTION_40_0();
  v8 = *&v7[v1];
  v9 = OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_11_2(v9);

  v10 = OBJC_IVAR___SiriTTSPhonemeRequest_phonemeSystem;
  OUTLINED_FUNCTION_17_1();
  v11 = *(v1 + v10);
  v12 = OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_25_1(v12, sel_encodeInteger_forKey_);

  sub_1B1A99C9C(a1);
}

id PhonemeRequest.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_24();
  return PhonemeRequest.init(coder:)();
}

id PhonemeRequest.init(coder:)()
{
  OUTLINED_FUNCTION_47_0();
  sub_1B1A8E474(0, &qword_1ED9A90E0, 0x1E696AEC0);
  result = OUTLINED_FUNCTION_135();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_42_3();

  v5 = (v0 + OBJC_IVAR___SiriTTSPhonemeRequest_text);
  *v5 = v1;
  v5[1] = v2;
  type metadata accessor for SynthesisVoice();
  result = OUTLINED_FUNCTION_29_0();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v0 + OBJC_IVAR___SiriTTSPhonemeRequest_voice) = result;
  v6 = OUTLINED_FUNCTION_82_0();
  v7 = OUTLINED_FUNCTION_53_1();
  v9 = [v7 v8];

  result = PreviewType.init(rawValue:)(v9);
  if (v10)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_124(result, OBJC_IVAR___SiriTTSPhonemeRequest_phonemeSystem);

  return BaseRequest.init(coder:)();
}

uint64_t sub_1B1B11B7C()
{
  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_105(v5, xmmword_1B1C36280);
  v24.receiver = v0;
  v24.super_class = type metadata accessor for PhonemeRequest(v6);
  OUTLINED_FUNCTION_128();
  v8 = objc_msgSendSuper2(&v24, v7);
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_42_3();

  v5[2].n128_u64[0] = v1;
  v5[2].n128_u64[1] = v2;
  sub_1B1C2D538();
  MEMORY[0x1B27381B0](0xD000000000000022, 0x80000001B1C49940);
  v9 = &v4[OBJC_IVAR___SiriTTSPhonemeRequest_text];
  OUTLINED_FUNCTION_26_2();
  v11 = *v9;
  v10 = *(v9 + 1);

  sub_1B1C2CC68();

  v12 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v12);

  MEMORY[0x1B27381B0](0x63696F76202C223ELL, 0xEB00000000203A65);
  v13 = OBJC_IVAR___SiriTTSPhonemeRequest_voice;
  OUTLINED_FUNCTION_40_0();
  v14 = *&v4[v13];
  v15 = [v14 (v3 + 1272)];
  v16 = sub_1B1C2CB58();
  v18 = v17;

  MEMORY[0x1B27381B0](v16, v18);

  MEMORY[0x1B27381B0](0x6D656E6F6870202CLL, 0xEB00000000203A65);
  v19 = OBJC_IVAR___SiriTTSPhonemeRequest_phonemeSystem;
  OUTLINED_FUNCTION_17_1();
  v20 = PhonemeRequest.PhonemeSystem.description.getter(*&v4[v19]);
  MEMORY[0x1B27381B0](v20);

  v5[3].n128_u64[0] = 0;
  v5[3].n128_u64[1] = 0xE000000000000000;
  v21 = OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_1_3(&qword_1ED9A8DA8);
  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_74_2();
  return OUTLINED_FUNCTION_67_0();
}

void sub_1B1B11E0C()
{
  v1 = *(v0 + OBJC_IVAR___SiriTTSPhonemeRequest_text + 8);

  v2 = *(v0 + OBJC_IVAR___SiriTTSPhonemeRequest_voice);
}

uint64_t PhonemeRequest.PhonemeSystem.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6C6C69766873616ELL;
    case 2:
      return 7366764;
    case 1:
      return 0x61706D617378;
  }

  result = sub_1B1C2D7E8();
  __break(1u);
  return result;
}

void sub_1B1B11FDC(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1B11F9C();
}

void sub_1B1B120F0(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1B120B0();
}

id SpeechRequest.__allocating_init(text:voice:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_56_0();
  v5 = objc_allocWithZone(v3);
  v6 = OUTLINED_FUNCTION_33();
  return SpeechRequest.init(text:voice:)(v6, v7, a3);
}

id SpeechRequest.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_24();
  return SpeechRequest.init(coder:)();
}

void sub_1B1B1220C()
{
  v1 = *(v0 + OBJC_IVAR___SiriTTSSpeechRequest_synthesisContext);
}

id sub_1B1B1229C()
{
  v1 = OBJC_IVAR___SiriTTSPreviewRequest_audibleContext;
  OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B1B1237C(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1B1233C();
}

id sub_1B1B12428()
{
  v1 = OBJC_IVAR___SiriTTSPreviewRequest_voice;
  OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B1B12508(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1B124C8();
}

id sub_1B1B12598(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    sub_1B1C2CB28();
    OUTLINED_FUNCTION_24();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_1B1B12614(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    sub_1B1C2CB58();
    OUTLINED_FUNCTION_129();
  }

  v7 = a1;
  v6 = OUTLINED_FUNCTION_51();
  a4(v6);
}

uint64_t sub_1B1B126A0(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_141(a1, a2);
  v3 = OUTLINED_FUNCTION_33();
  return v2(v3);
}

uint64_t sub_1B1B12744()
{
  v1 = OBJC_IVAR___SiriTTSPreviewRequest_previewType;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B127A0(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSPreviewRequest_previewType;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

id PreviewRequest.__allocating_init(voice:previewType:)()
{
  OUTLINED_FUNCTION_62();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_72();
  return PreviewRequest.init(voice:previewType:)();
}

id PreviewRequest.init(voice:previewType:)()
{
  OUTLINED_FUNCTION_62();
  v3 = OBJC_IVAR___SiriTTSPreviewRequest_audibleContext;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for AudibleContext()) init];
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSPreviewRequest_language);
  *&v1[OBJC_IVAR___SiriTTSPreviewRequest_voice] = v2;
  *&v1[OBJC_IVAR___SiriTTSPreviewRequest_previewType] = v0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PreviewRequest(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B1B12A30()
{
  if (qword_1ED9A4FC8 != -1)
  {
    OUTLINED_FUNCTION_58_2();
  }

  v1 = OBJC_IVAR___SiriTTSPreviewRequest_voice;
  OUTLINED_FUNCTION_65();
  v2 = *(v0 + v1);
  v3 = (v2 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  OUTLINED_FUNCTION_65();
  v5 = *v3;
  v4 = v3[1];
  v6 = (v2 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  OUTLINED_FUNCTION_65();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  v9 = (v0 + OBJC_IVAR___SiriTTSPreviewRequest_language);
  OUTLINED_FUNCTION_65();
  v11 = *v9;
  v10 = v9[1];
  v12 = OBJC_IVAR___SiriTTSPreviewRequest_previewType;
  OUTLINED_FUNCTION_17_1();
  v13 = *(v0 + v12);

  sub_1B1BE4550();
}

void sub_1B1B12B98(void *a1)
{
  v3 = OBJC_IVAR___SiriTTSPreviewRequest_audibleContext;
  OUTLINED_FUNCTION_65();
  v4 = *&v3[v1];
  v5 = OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_13_5();

  v6 = OBJC_IVAR___SiriTTSPreviewRequest_voice;
  OUTLINED_FUNCTION_57_0();
  v7 = *&v6[v1];
  v8 = OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_11_2(v8);

  v9 = (v1 + OBJC_IVAR___SiriTTSPreviewRequest_language);
  OUTLINED_FUNCTION_27_1();
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;

    OUTLINED_FUNCTION_51();
    sub_1B1C2CB28();
    OUTLINED_FUNCTION_104();
  }

  OUTLINED_FUNCTION_41_0();
  v12 = sub_1B1C2CB28();
  OUTLINED_FUNCTION_11_2(v12);
  swift_unknownObjectRelease();

  v13 = OBJC_IVAR___SiriTTSPreviewRequest_previewType;
  OUTLINED_FUNCTION_35_3();
  v14 = *(v1 + v13);
  v15 = OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_25_1(v15, sel_encodeInteger_forKey_);

  sub_1B1A99C9C(a1);
}

id PreviewRequest.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_24();
  return PreviewRequest.init(coder:)();
}

id PreviewRequest.init(coder:)()
{
  OUTLINED_FUNCTION_47_0();
  v1 = OBJC_IVAR___SiriTTSPreviewRequest_audibleContext;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for AudibleContext()) init];
  v2 = (v0 + OBJC_IVAR___SiriTTSPreviewRequest_language);
  *v2 = 0;
  v2[1] = 0;
  OUTLINED_FUNCTION_4_2();
  result = sub_1B1C2D1E8();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  OUTLINED_FUNCTION_66_0();
  v5 = *(v0 + v1);
  *(v0 + v1) = v4;

  type metadata accessor for SynthesisVoice();
  result = OUTLINED_FUNCTION_29_0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v0 + OBJC_IVAR___SiriTTSPreviewRequest_voice) = result;
  sub_1B1A8E474(0, &qword_1ED9A90E0, 0x1E696AEC0);
  v6 = OUTLINED_FUNCTION_39_2();
  sub_1B1C2CB48();

  OUTLINED_FUNCTION_45_2();
  v7 = v2[1];
  *v2 = 0;
  v2[1] = 0;

  v8 = OUTLINED_FUNCTION_87();
  v9 = OUTLINED_FUNCTION_53_1();
  v11 = [v9 v10];

  result = PreviewType.init(rawValue:)(v11);
  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_124(result, OBJC_IVAR___SiriTTSPreviewRequest_previewType);
    return BaseRequest.init(coder:)();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B1B12EE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_105(v4, xmmword_1B1C364D0);
  v15.receiver = v0;
  v15.super_class = type metadata accessor for PreviewRequest(v5);
  OUTLINED_FUNCTION_128();
  v7 = objc_msgSendSuper2(&v15, v6);
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_42_3();

  v4[2].n128_u64[0] = v1;
  v4[2].n128_u64[1] = v2;
  v8 = OBJC_IVAR___SiriTTSPreviewRequest_voice;
  OUTLINED_FUNCTION_51_0();
  v9 = [*&v0[v8] (v3 + 1272)];
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_42_3();

  v4[3].n128_u64[0] = v1;
  v4[3].n128_u64[1] = v2;
  v10 = OBJC_IVAR___SiriTTSPreviewRequest_previewType;
  OUTLINED_FUNCTION_65();
  v14 = *&v0[v10];
  sub_1B1C2D618();
  v4[4].n128_u64[0] = 0;
  v4[4].n128_u64[1] = 0xE000000000000000;
  v11 = OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_1_3(&qword_1ED9A8DA8);
  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_74_2();
  return OUTLINED_FUNCTION_67_0();
}

uint64_t sub_1B1B1307C()
{
  v1 = *(v0 + OBJC_IVAR___SiriTTSPreviewRequest_language + 8);
}

id sub_1B1B1317C()
{
  v1 = OBJC_IVAR___SiriTTSAudioHintRequest_audibleContext;
  OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B1B1325C(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1B1321C();
}

id sub_1B1B13308()
{
  v1 = OBJC_IVAR___SiriTTSAudioHintRequest_voice;
  OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B1B133E8(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1B133A8();
}

uint64_t sub_1B1B13484()
{
  v1 = OBJC_IVAR___SiriTTSAudioHintRequest_dialogNumber;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B134E0(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSAudioHintRequest_dialogNumber;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1B13594()
{
  v1 = OBJC_IVAR___SiriTTSAudioHintRequest_useCompactHints;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B135F0(char a1)
{
  v3 = OBJC_IVAR___SiriTTSAudioHintRequest_useCompactHints;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

id AudioHintRequest.__allocating_init(voice:dialogNumber:useCompactHints:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_56_0();
  v5 = objc_allocWithZone(v3);
  v6 = OUTLINED_FUNCTION_33();
  return AudioHintRequest.init(voice:dialogNumber:useCompactHints:)(v6, v7, a3);
}

id AudioHintRequest.init(voice:dialogNumber:useCompactHints:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_56_0();
  v7 = OBJC_IVAR___SiriTTSAudioHintRequest_audibleContext;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for AudibleContext()) init];
  *&v3[OBJC_IVAR___SiriTTSAudioHintRequest_voice] = v5;
  *&v3[OBJC_IVAR___SiriTTSAudioHintRequest_dialogNumber] = v4;
  v3[OBJC_IVAR___SiriTTSAudioHintRequest_useCompactHints] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for AudioHintRequest(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_1B1B1379C()
{
  if (qword_1ED9A4FC8 != -1)
  {
    OUTLINED_FUNCTION_58_2();
  }

  v1 = OBJC_IVAR___SiriTTSAudioHintRequest_voice;
  OUTLINED_FUNCTION_51_0();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR___SiriTTSAudioHintRequest_dialogNumber;
  OUTLINED_FUNCTION_40_0();
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR___SiriTTSAudioHintRequest_useCompactHints;
  OUTLINED_FUNCTION_17_1();
  v6 = *(v0 + v5);
  v7 = v2;
  sub_1B1BE4D58();
}

BOOL sub_1B1B1388C()
{
  v0 = OUTLINED_FUNCTION_92();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1B1B1379C();
  v8 = sub_1B1C2C1C8();
  v9 = __swift_getEnumTagSinglePayload(v7, 1, v8) != 1;
  sub_1B1A90CD8(v7, &unk_1EB761F00, &qword_1B1C36480);
  return v9;
}

void sub_1B1B13940(void *a1)
{
  v3 = OBJC_IVAR___SiriTTSAudioHintRequest_audibleContext;
  OUTLINED_FUNCTION_65();
  v4 = *&v3[v1];
  v5 = OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_13_5();

  v6 = OBJC_IVAR___SiriTTSAudioHintRequest_voice;
  OUTLINED_FUNCTION_57_0();
  v7 = *&v6[v1];
  v8 = OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_11_2(v8);

  v9 = OBJC_IVAR___SiriTTSAudioHintRequest_dialogNumber;
  OUTLINED_FUNCTION_52_0();
  v10 = *(v1 + v9);
  v11 = OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_25_1(v11, sel_encodeInteger_forKey_);

  v12 = OBJC_IVAR___SiriTTSAudioHintRequest_useCompactHints;
  OUTLINED_FUNCTION_35_3();
  v13 = *(v1 + v12);
  v14 = OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_25_1(v14, sel_encodeBool_forKey_);

  sub_1B1A99C9C(a1);
}

id AudioHintRequest.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_24();
  return AudioHintRequest.init(coder:)();
}

id AudioHintRequest.init(coder:)()
{
  OUTLINED_FUNCTION_47_0();
  v1 = OBJC_IVAR___SiriTTSAudioHintRequest_audibleContext;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for AudibleContext()) init];
  OUTLINED_FUNCTION_4_2();
  result = sub_1B1C2D1E8();
  if (result)
  {
    OUTLINED_FUNCTION_19_2();
    OUTLINED_FUNCTION_143();
    type metadata accessor for SynthesisVoice();
    result = OUTLINED_FUNCTION_29_0();
    if (result)
    {
      *(v0 + OBJC_IVAR___SiriTTSAudioHintRequest_voice) = result;
      v3 = OUTLINED_FUNCTION_86_0();
      v4 = OUTLINED_FUNCTION_53_1();
      v6 = [v4 v5];

      *(v0 + OBJC_IVAR___SiriTTSAudioHintRequest_dialogNumber) = v6;
      v7 = OUTLINED_FUNCTION_80_0();
      v8 = OUTLINED_FUNCTION_53_1();
      LOBYTE(v6) = [v8 v9];

      *(v0 + OBJC_IVAR___SiriTTSAudioHintRequest_useCompactHints) = v6;
      return BaseRequest.init(coder:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B13BF8()
{
  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_105(v5, xmmword_1B1C364E0);
  v26.receiver = v0;
  v26.super_class = type metadata accessor for AudioHintRequest(v6);
  OUTLINED_FUNCTION_128();
  v8 = objc_msgSendSuper2(&v26, v7);
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_42_3();

  v5[2].n128_u64[0] = v1;
  v5[2].n128_u64[1] = v2;
  v9 = OBJC_IVAR___SiriTTSAudioHintRequest_voice;
  OUTLINED_FUNCTION_65();
  v10 = [*&v4[v9] (v3 + 1272)];
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_42_3();

  v5[3].n128_u64[0] = v1;
  v5[3].n128_u64[1] = v2;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1B1C2D538();

  strcpy(v21, "dialogNumber: ");
  HIBYTE(v21[1]) = -18;
  v11 = OBJC_IVAR___SiriTTSAudioHintRequest_dialogNumber;
  OUTLINED_FUNCTION_57_0();
  v22 = *&v4[v11];
  v12 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v12);

  v13 = v21[1];
  v5[4].n128_u64[0] = v21[0];
  v5[4].n128_u64[1] = v13;
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1B1C2D538();

  v22 = 0xD000000000000011;
  v23 = 0x80000001B1C49970;
  v14 = OBJC_IVAR___SiriTTSAudioHintRequest_useCompactHints;
  OUTLINED_FUNCTION_17_1();
  if (v4[v14])
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v4[v14])
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x1B27381B0](v15, v16);

  v17 = v23;
  v5[5].n128_u64[0] = v22;
  v5[5].n128_u64[1] = v17;
  v18 = OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_1_3(&qword_1ED9A8DA8);
  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_74_2();
  return OUTLINED_FUNCTION_67_0();
}

void sub_1B1B13E5C()
{
  v1 = *(v0 + OBJC_IVAR___SiriTTSAudioHintRequest_voice);
}

uint64_t sub_1B1B13FAC()
{
  OUTLINED_FUNCTION_62();
  v4 = (v1 + *v3);
  OUTLINED_FUNCTION_15_7();
  v5 = v4[1];
  *v4 = v2;
  v4[1] = v0;
}

uint64_t sub_1B1B14084()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

unint64_t sub_1B1B1411C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SynthesisVoice.VoiceType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B1B141AC(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1B14260()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B142BC(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1B1436C()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
  OUTLINED_FUNCTION_7_3();
  return *(v1 + v0);
}

uint64_t sub_1B1B143C8(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
  result = OUTLINED_FUNCTION_8_2();
  *(v3 + v1) = a1;
  return result;
}

id SynthesisVoice.__allocating_init(language:name:)()
{
  OUTLINED_FUNCTION_102();
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_89_0());
  OUTLINED_FUNCTION_95();
  return SynthesisVoice.init(language:name:)();
}

BOOL sub_1B1B144A0()
{
  sub_1B1A91C70();
  if (v25)
  {
    type metadata accessor for SynthesisVoice();
    if (swift_dynamicCast())
    {
      v1 = (v0 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
      OUTLINED_FUNCTION_27_1();
      v2 = *v1;
      v3 = v1[1];
      v4 = &v23[OBJC_IVAR___SiriTTSSynthesisVoice_language];
      OUTLINED_FUNCTION_65();
      if (v2 != *v4 || v3 != *(v4 + 1))
      {
        OUTLINED_FUNCTION_92();
        if ((sub_1B1C2D7A8() & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v6 = (v0 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
      OUTLINED_FUNCTION_27_1();
      v7 = *v6;
      v8 = v6[1];
      v9 = &v23[OBJC_IVAR___SiriTTSSynthesisVoice_name];
      OUTLINED_FUNCTION_65();
      v10 = *(v9 + 1);
      if (v8)
      {
        if (!v10)
        {
          goto LABEL_21;
        }

        if (v7 != *v9 || v8 != v10)
        {
          OUTLINED_FUNCTION_92();
          if ((sub_1B1C2D7A8() & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else if (v10)
      {
LABEL_21:

        return 0;
      }

      v12 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
      OUTLINED_FUNCTION_65();
      v13 = *(v0 + v12);
      v14 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
      OUTLINED_FUNCTION_65();
      if (v13 == *&v23[v14])
      {
        v15 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
        OUTLINED_FUNCTION_65();
        v16 = *(v0 + v15);
        v17 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
        OUTLINED_FUNCTION_51_0();
        if (v16 == *&v23[v17])
        {
          v18 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
          OUTLINED_FUNCTION_40_0();
          v19 = *(v18 + v0);
          v20 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
          OUTLINED_FUNCTION_17_1();
          v21 = *(v20 + v23);

          return v19 == v21;
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    sub_1B1A90CD8(v24, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return 0;
}

uint64_t sub_1B1B146A0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1B1A90CD8(v10, &qword_1EB761DE0, &qword_1B1C352C0);
  return v8 & 1;
}

uint64_t sub_1B1B1476C()
{
  v1 = v0;
  sub_1B1C2D8F8();
  v2 = (v0 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  OUTLINED_FUNCTION_26_2();
  v4 = *v2;
  v3 = v2[1];

  sub_1B1C2CC48();

  v5 = (v1 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  OUTLINED_FUNCTION_26_2();
  if (v5[1])
  {
    v6 = *v5;
    sub_1B1C2D8A8();

    sub_1B1C2CC48();
  }

  else
  {
    sub_1B1C2D8A8();
  }

  v7 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
  OUTLINED_FUNCTION_57_0();
  MEMORY[0x1B2738D60](*(v1 + v7));
  v8 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1B2738D60](*(v1 + v8));
  v9 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
  OUTLINED_FUNCTION_44_1();
  MEMORY[0x1B2738D60](*(v9 + v1));
  return sub_1B1C2D8D8();
}

uint64_t static SynthesisVoice.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_15_7();
  byte_1EB761DC4 = a1;
  return result;
}

uint64_t sub_1B1B14930@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB761DC4;
  return result;
}

uint64_t sub_1B1B1497C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB761DC4 = v1;
  return result;
}

uint64_t SynthesisVoice.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_24();
  return SynthesisVoice.init(coder:)();
}

uint64_t SynthesisVoice.copy(with:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1B1B14AC8(a1, type metadata accessor for SynthesisVoice, a2);
}

uint64_t sub_1B1B14AC8@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v7 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v16];
  v8 = v16[0];
  if (v7)
  {
    v9 = sub_1B1C2C2B8();
    v11 = v10;

    sub_1B1A8E474(0, &qword_1ED9A4EF0, 0x1E696ACD0);
    swift_getObjectType();
    a2(a1);
    OUTLINED_FUNCTION_89_0();
    v12 = sub_1B1C2D0E8();
    if (!v12)
    {
      __break(1u);
    }

    a3[3] = a1;
    result = sub_1B1A94524(v9, v11);
    *a3 = v12;
    v14 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v15 = v8;
    sub_1B1C2C058();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1B14C78(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_1B1C2D798();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t SynthesisVoice.Footprint.init(_:)()
{
  OUTLINED_FUNCTION_12_2();
  v4 = v4 && v2 == v3;
  if (v4 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    return OUTLINED_FUNCTION_101();
  }

  else
  {
    v6 = v1 == 0x746361706D6F63 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_2() & 1) != 0)
    {

      return OUTLINED_FUNCTION_93();
    }

    else
    {
      v7 = v1 == 0x6D75696D657270 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_22_2() & 1) != 0)
      {

        return OUTLINED_FUNCTION_106();
      }

      else if (v1 == OUTLINED_FUNCTION_117() && v0 == v8)
      {

        return OUTLINED_FUNCTION_133();
      }

      else
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_121();
        if (v1)
        {
          return 3;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

uint64_t sub_1B1B14DDC@<X0>(uint64_t a1@<X8>)
{
  result = SynthesisVoice.Footprint.init(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t SynthesisVoice.VoiceType.init(_:)()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v1 == 0x657A696C61636F76 && v2 == 0xE900000000000072;
  if (v3 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    return OUTLINED_FUNCTION_93();
  }

  else
  {
    v5 = v1 == 0x6D6F74737563 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_3() & 1) != 0)
    {

      return OUTLINED_FUNCTION_106();
    }

    else
    {
      v6 = v1 == 0x6E6F6870797267 && v0 == 0xE700000000000000;
      if (v6 || (OUTLINED_FUNCTION_22_2() & 1) != 0)
      {

        return OUTLINED_FUNCTION_133();
      }

      else
      {
        v7 = v1 == 0x6C617275656ELL && v0 == 0xE600000000000000;
        if (v7 || (OUTLINED_FUNCTION_3() & 1) != 0)
        {

          return 4;
        }

        else
        {
          v8 = v1 == 0x58416C617275656ELL && v0 == 0xE800000000000000;
          if (v8 || (OUTLINED_FUNCTION_3() & 1) != 0)
          {

            return 5;
          }

          else if (v1 == 0x6C61727574616ELL && v0 == 0xE700000000000000)
          {

            return 6;
          }

          else
          {
            OUTLINED_FUNCTION_22_2();
            OUTLINED_FUNCTION_121();
            if (v1)
            {
              return 6;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B1B14FB4@<X0>(uint64_t a1@<X8>)
{
  result = SynthesisVoice.VoiceType.init(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t SynthesisVoice.VoiceGender.init(_:)()
{
  OUTLINED_FUNCTION_12_2();
  v4 = v4 && v2 == v3;
  if (v4 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    return OUTLINED_FUNCTION_101();
  }

  else
  {
    v6 = v1 == 0x656C616D6566 && v0 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_3() & 1) != 0)
    {

      return OUTLINED_FUNCTION_106();
    }

    else
    {
      v7 = v1 == 1701601645 && v0 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_3() & 1) != 0)
      {

        return OUTLINED_FUNCTION_93();
      }

      else if (v1 == 0x6C61727475656ELL && v0 == 0xE700000000000000)
      {

        return OUTLINED_FUNCTION_133();
      }

      else
      {
        OUTLINED_FUNCTION_22_2();
        OUTLINED_FUNCTION_121();
        if (v1)
        {
          return 3;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

uint64_t sub_1B1B150F4@<X0>(uint64_t a1@<X8>)
{
  result = SynthesisVoice.VoiceGender.init(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B1B151E4()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisResource_version;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t sub_1B1B15240(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisResource_version;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

id SynthesisResource.__allocating_init(language:)()
{
  OUTLINED_FUNCTION_62();
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_72();
  return SynthesisResource.init(language:)(v2, v3);
}

uint64_t static SynthesisResource.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_15_7();
  byte_1EB761DC5 = a1;
  return result;
}

uint64_t sub_1B1B153D0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB761DC5;
  return result;
}

uint64_t sub_1B1B1541C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB761DC5 = v1;
  return result;
}

uint64_t SynthesisResource.__allocating_init(coder:)()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_24();
  return SynthesisResource.init(coder:)();
}

uint64_t sub_1B1B154F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1B15588()
{
  result = qword_1EB761F60;
  if (!qword_1EB761F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761F60);
  }

  return result;
}

unint64_t sub_1B1B15624()
{
  result = qword_1EB761F78;
  if (!qword_1EB761F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761F78);
  }

  return result;
}

unint64_t sub_1B1B156C0()
{
  result = qword_1EB761F90;
  if (!qword_1EB761F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761F90);
  }

  return result;
}

unint64_t sub_1B1B1575C()
{
  result = qword_1EB761FA8;
  if (!qword_1EB761FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761FA8);
  }

  return result;
}

unint64_t sub_1B1B157B4()
{
  result = qword_1EB761FB0;
  if (!qword_1EB761FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761FB0);
  }

  return result;
}

unint64_t sub_1B1B1580C()
{
  result = qword_1EB761FB8;
  if (!qword_1EB761FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761FB8);
  }

  return result;
}

unint64_t sub_1B1B15864()
{
  result = qword_1EB761FC0;
  if (!qword_1EB761FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761FC0);
  }

  return result;
}

unint64_t sub_1B1B158BC()
{
  result = qword_1EB761FC8;
  if (!qword_1EB761FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761FC8);
  }

  return result;
}

unint64_t sub_1B1B15910()
{
  result = qword_1EB761FD0;
  if (!qword_1EB761FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761FD0);
  }

  return result;
}

unint64_t sub_1B1B159A8()
{
  result = qword_1EB761208;
  if (!qword_1EB761208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761208);
  }

  return result;
}

unint64_t sub_1B1B15A44()
{
  result = qword_1EB762000;
  if (!qword_1EB762000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762000);
  }

  return result;
}

unint64_t sub_1B1B15A9C()
{
  result = qword_1EB762008;
  if (!qword_1EB762008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762008);
  }

  return result;
}

unint64_t sub_1B1B15AF4()
{
  result = qword_1EB762010;
  if (!qword_1EB762010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762010);
  }

  return result;
}

unint64_t sub_1B1B15B4C()
{
  result = qword_1EB762018;
  if (!qword_1EB762018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762018);
  }

  return result;
}

uint64_t sub_1B1B18A3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1B1B18A74(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1B1B18AA0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1B1B18ACC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OUTLINED_FUNCTION_78()
{

  return sub_1B1C2CB28();
}

uint64_t OUTLINED_FUNCTION_80_0()
{

  return sub_1B1C2CB28();
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return sub_1B1C2CB28();
}

id OUTLINED_FUNCTION_83_0()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_111(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v3, a2, 1, v2);
}

void OUTLINED_FUNCTION_122()
{

  JUMPOUT(0x1B27381B0);
}

uint64_t OUTLINED_FUNCTION_138()
{

  return sub_1B1C2CB28();
}

uint64_t OUTLINED_FUNCTION_139()
{

  return sub_1B1C2CB28();
}

void OUTLINED_FUNCTION_142()
{

  JUMPOUT(0x1B27381B0);
}

void OUTLINED_FUNCTION_143()
{
  v4 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t OUTLINED_FUNCTION_144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + a2 + 8);
}

uint64_t sub_1B1B18D54()
{

  v0 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v0, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B1B18DB8()
{
  OUTLINED_FUNCTION_46_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
  v2 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v2, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B1B18E28()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);
}

uint64_t sub_1B1B18E8C@<X0>(uint64_t *a1@<X8>)
{
  result = CacheReadingAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B18EB4()
{
  v2 = v0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621A8, &qword_1B1C37370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621B0, &qword_1B1C37378);
  v3 = sub_1B1C2CBD8();
  v5 = v4;
  swift_beginAccess();
  v6 = *(v0 + 24);

  sub_1B1A93AEC(v3, v5, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  v7 = type metadata accessor for PreinstalledAudioStorage();
  if (swift_dynamicCast())
  {

    return v17;
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 16);

    v9 = sub_1B1A9EC94(v3, v5, v8);

    if (v9)
    {
      v9(&v18, v10);
      if (swift_dynamicCast())
      {
        v1 = v16;
        v20 = v7;
        v18 = v16;
        swift_beginAccess();

        sub_1B1A9EE20(&v18);
        swift_endAccess();
      }

      else
      {
        v18 = 0;
        v19 = 0xE000000000000000;
        sub_1B1C2D538();

        v18 = 0xD00000000000002ALL;
        v19 = 0x80000001B1C4A540;
        MEMORY[0x1B27381B0](v3, v5);

        v12 = v18;
        v13 = v19;
        sub_1B1A9EC9C();
        swift_allocError();
        *v14 = 1;
        *(v14 + 8) = v12;
        *(v14 + 16) = v13;
        swift_willThrow();
      }

      sub_1B1A949B4(v9);
    }

    else
    {
      sub_1B1C2D538();

      MEMORY[0x1B27381B0](v3, v5);

      sub_1B1A9EC9C();
      swift_allocError();
      *v11 = 1;
      *(v11 + 8) = 0xD00000000000001ELL;
      *(v11 + 16) = 0x80000001B1C4A520;
      swift_willThrow();
    }
  }

  return v1;
}

void sub_1B1B191C4()
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762158, &qword_1B1C37318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762160, &qword_1B1C37320);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_36_1();
  v1 = OUTLINED_FUNCTION_8_3();
  sub_1B1A93AEC(v1, v2, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  OUTLINED_FUNCTION_23_5();
  type metadata accessor for InlineStreamingStorage();
  if (OUTLINED_FUNCTION_6_5())
  {
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_37_3();
    v4 = OUTLINED_FUNCTION_8_3();
    sub_1B1A9EC94(v4, v5, v6);
    OUTLINED_FUNCTION_17_5();
    if (v0)
    {
      OUTLINED_FUNCTION_21_2();
      v0();
      if (OUTLINED_FUNCTION_10_6())
      {
        OUTLINED_FUNCTION_4_3();

        OUTLINED_FUNCTION_12_3(v7, v8, v9, v10, v11, v12, v13);
        swift_endAccess();
      }

      else
      {
        OUTLINED_FUNCTION_9_3();
        sub_1B1C2D538();

        OUTLINED_FUNCTION_0_3();

        sub_1B1A9EC9C();
        v16 = OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_7_4(v16, v17);
      }

      OUTLINED_FUNCTION_35_4();
    }

    else
    {
      OUTLINED_FUNCTION_9_3();
      sub_1B1C2D538();

      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_11_3();

      sub_1B1A9EC9C();
      v14 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_7_4(v14, v15);
    }
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_20_2();
}

void sub_1B1B19360()
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762138, &qword_1B1C372F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762140, &qword_1B1C37300);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_36_1();
  v1 = OUTLINED_FUNCTION_8_3();
  sub_1B1A93AEC(v1, v2, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  OUTLINED_FUNCTION_23_5();
  type metadata accessor for OspreyClient();
  if (OUTLINED_FUNCTION_6_5())
  {
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_37_3();
    v4 = OUTLINED_FUNCTION_8_3();
    sub_1B1A9EC94(v4, v5, v6);
    OUTLINED_FUNCTION_17_5();
    if (v0)
    {
      OUTLINED_FUNCTION_21_2();
      v0();
      if (OUTLINED_FUNCTION_10_6())
      {
        OUTLINED_FUNCTION_4_3();

        OUTLINED_FUNCTION_12_3(v7, v8, v9, v10, v11, v12, v13);
        swift_endAccess();
      }

      else
      {
        OUTLINED_FUNCTION_9_3();
        sub_1B1C2D538();

        OUTLINED_FUNCTION_0_3();

        sub_1B1A9EC9C();
        v16 = OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_7_4(v16, v17);
      }

      OUTLINED_FUNCTION_35_4();
    }

    else
    {
      OUTLINED_FUNCTION_9_3();
      sub_1B1C2D538();

      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_11_3();

      sub_1B1A9EC9C();
      v14 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_7_4(v14, v15);
    }
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_20_2();
}

uint64_t sub_1B1B194FC()
{
  OUTLINED_FUNCTION_18_2();
  v3 = v2;
  *&v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762118, &qword_1B1C372D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762120, &qword_1B1C372E0);
  sub_1B1C2CBD8();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_36_1();
  v4 = OUTLINED_FUNCTION_8_3();
  sub_1B1A93AEC(v4, v5, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762128, &qword_1B1C372E8);
  if (OUTLINED_FUNCTION_40_1())
  {

    return OUTLINED_FUNCTION_49_0(v7, v8, v9, v10, v11, v12, v13, v14, v43, v44, v45, v46, v47);
  }

  else
  {
    OUTLINED_FUNCTION_27_2();
    sub_1B1A90C78(&v47, &qword_1EB762130, &qword_1B1C372F0);
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_37_3();
    v16 = OUTLINED_FUNCTION_8_3();
    sub_1B1A9EC94(v16, v17, v18);
    v19 = OUTLINED_FUNCTION_45_3();
    if (v0)
    {
      v0(v49, v19);
      v20 = OUTLINED_FUNCTION_43_2();
      if (v20)
      {
        OUTLINED_FUNCTION_49_0(v20, v21, v22, v23, v24, v25, v26, v27, v43, v44, v45, v46, v47);
        v48 = v1;
        *&v47 = swift_allocObject();
        sub_1B1A94FC4(v3, v47 + 16);
        v28 = OUTLINED_FUNCTION_48_3();
        OUTLINED_FUNCTION_47_1(v28, v29, v30, v31);
        swift_endAccess();
      }

      else
      {
        OUTLINED_FUNCTION_27_2();
        sub_1B1A90C78(&v47, &qword_1EB762130, &qword_1B1C372F0);
        OUTLINED_FUNCTION_30_2();
        sub_1B1C2D538();

        OUTLINED_FUNCTION_1_4();
        *&v47 = v38;
        *(&v47 + 1) = v37;
        v39 = OUTLINED_FUNCTION_15();
        MEMORY[0x1B27381B0](v39);

        sub_1B1A9EC9C();
        v40 = OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_7_4(v40, v41);
      }

      v42 = OUTLINED_FUNCTION_13_2();
      return sub_1B1A949B4(v42);
    }

    else
    {
      OUTLINED_FUNCTION_30_2();
      sub_1B1C2D538();

      OUTLINED_FUNCTION_2();
      *&v47 = v33;
      *(&v47 + 1) = v32;
      v34 = OUTLINED_FUNCTION_15();
      MEMORY[0x1B27381B0](v34);

      sub_1B1A9EC9C();
      v35 = OUTLINED_FUNCTION_34();
      return OUTLINED_FUNCTION_7_4(v35, v36);
    }
  }
}

uint64_t _s14VoiceAttributeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14VoiceAttributeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B1B1991C()
{
  v0 = sub_1B1C2D7D8();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1B19970()
{
  v0 = sub_1B1C2D6C8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1B199CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1B1991C();
  *a2 = result;
  return result;
}

unint64_t sub_1B1B199FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B1AE3168(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1B1B19A28(void *a1@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = sub_1B1C2C208();
  v5 = v1;
  if (v1)
  {
    goto LABEL_2;
  }

  v7 = v3;
  v8 = v4;
  v9 = objc_opt_self();
  v10 = sub_1B1C2C298();
  v14 = 0;
  v11 = [v9 propertyListWithData:v10 options:0 format:0 error:&v14];

  v12 = v14;
  if (!v11)
  {
    v13 = v12;
    v5 = sub_1B1C2C058();

    swift_willThrow();
    sub_1B1A94524(v7, v8);
LABEL_2:

    goto LABEL_3;
  }

  sub_1B1C2D3F8();
  sub_1B1A94524(v7, v8);
  swift_unknownObjectRelease();
  sub_1B1A9EEE0(v15, v16);
  sub_1B1A9EEE0(v16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621F8, &unk_1B1C37480);
  if (swift_dynamicCast())
  {
    *a1 = v14;
    goto LABEL_4;
  }

LABEL_3:
  *a1 = 0;
LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B1B19BBC()
{
  result = sub_1B1C2CAB8();
  qword_1EB772D38 = result;
  return result;
}

uint64_t sub_1B1B19BF8(uint64_t a1)
{
  if (qword_1EB7614E0 != -1)
  {
    swift_once();
  }

  v2 = off_1EB7621D0;
  if (*(off_1EB7621D0 + 2))
  {
    v3 = sub_1B1A8EB10();
    if (v4)
    {
      v5 = (v2[7] + 16 * v3);
      a1 = *v5;
      v6 = v5[1];
    }
  }

  return a1;
}

uint64_t sub_1B1B19C90()
{
  v2 = v0;
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  if (qword_1ED9A9960 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v4 = qword_1ED9A9968;
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v5 = v4;
    OUTLINED_FUNCTION_16_7();
    v6 = sub_1B1C2D248();

    if (v6)
    {

      return sub_1B1C2CAB8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621E0, &qword_1B1C37470);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C373A0;
    *(inited + 32) = 2;
    v9 = sub_1B1AE25E8();
    v10 = MEMORY[0x1E69E6158];
    *(inited + 64) = MEMORY[0x1E69E6158];
    *(inited + 40) = v9;
    *(inited + 48) = v11;
    *(inited + 72) = 4;
    OUTLINED_FUNCTION_1_5();
    v13 = (*(v12 + 152))();
    *(inited + 104) = v10;
    *(inited + 80) = v13;
    *(inited + 88) = v14;
    *(inited + 112) = 5;
    OUTLINED_FUNCTION_1_5();
    v16 = (*(v15 + 160))();
    *(inited + 144) = v10;
    *(inited + 120) = v16;
    *(inited + 128) = v17;
    *(inited + 152) = 9;
    OUTLINED_FUNCTION_1_5();
    v19 = (*(v18 + 184))();
    v20 = *(v19 + 16);
    v3 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v91 = inited;
      v96 = MEMORY[0x1E69E7CC0];
      sub_1B1AC9FA8();
      v21 = v96;
      sub_1B1A8EDAC();
      v22 = (v19 + 40);
      do
      {
        v23 = *v22;
        v104.n128_u64[0] = *(v22 - 1);
        v104.n128_u64[1] = v23;
        v102 = 45;
        *&v103[0] = 0xE100000000000000;
        v98 = 95;
        v99 = 0xE100000000000000;
        OUTLINED_FUNCTION_4();
        v24 = sub_1B1C2D398();
        v26 = v25;
        v96 = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        if (v28 >= v27 >> 1)
        {
          OUTLINED_FUNCTION_19_1(v27);
          sub_1B1AC9FA8();
          v21 = v96;
        }

        *(v21 + 16) = v28 + 1;
        v29 = v21 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v22 += 2;
        --v20;
      }

      while (v20);

      inited = v91;
      v3 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    *(inited + 160) = v21;
    *(inited + 192) = 10;
    v30 = [v2 primaryLanguage];
    v31 = sub_1B1C2CB58();
    v33 = v32;

    v104.n128_u64[0] = v31;
    v104.n128_u64[1] = v33;
    v102 = 45;
    *&v103[0] = 0xE100000000000000;
    v98 = 95;
    v99 = 0xE100000000000000;
    v89 = sub_1B1A8EDAC();
    v34 = MEMORY[0x1E69E6158];
    v88 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_4();
    v35 = sub_1B1C2D398();
    v37 = v36;

    *(inited + 224) = v34;
    *(inited + 200) = v35;
    *(inited + 208) = v37;
    *(inited + 232) = 11;
    OUTLINED_FUNCTION_1_5();
    v43 = (*(v38 + 168))(v39, v40, v41, v42);
    *(inited + 264) = MEMORY[0x1E69E6530];
    *(inited + 240) = v43;
    *(inited + 272) = 14;
    OUTLINED_FUNCTION_1_5();
    v49 = (*(v44 + 136))(v45, v46, v47, v48);
    v50 = [v49 string];

    v51 = sub_1B1C2CB58();
    v53 = v52;

    *(inited + 304) = v34;
    *(inited + 280) = v51;
    *(inited + 288) = v53;
    sub_1B1AE309C();
    v107 = sub_1B1C2CAB8();
    OUTLINED_FUNCTION_1_5();
    v55 = (*(v54 + 192))();
    v56 = 0xEF656C614D726564;
    v57 = 0x6E65476563696F56;
    switch(v55)
    {
      case 1:
        break;
      case 2:
        OUTLINED_FUNCTION_20_3();
        v59 = "";
        goto LABEL_16;
      case 3:
        OUTLINED_FUNCTION_20_3();
        v57 = v60 + 1;
        break;
      default:
        OUTLINED_FUNCTION_20_3();
        v59 = v58 - 32;
LABEL_16:
        v56 = v59 | 0x8000000000000000;
        break;
    }

    v105[0].n128_u64[1] = MEMORY[0x1E69E6158];
    v104.n128_u64[0] = v57;
    v104.n128_u64[1] = v56;
    sub_1B1AE3710(&v104, 7);
    OUTLINED_FUNCTION_1_5();
    v62 = (*(v61 + 224))();
    if (v62)
    {
      v63 = v62;
      v105[0].n128_u64[1] = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
      v104.n128_u64[0] = v63;
      sub_1B1AE3710(&v104, 18);
    }

    OUTLINED_FUNCTION_1_5();
    v65 = (*(v64 + 248))();
    if (v65)
    {
      v66 = v65;
      v105[0].n128_u64[1] = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
      v104.n128_u64[0] = v66;
      sub_1B1AE3710(&v104, 19);
    }

    v67 = v107;
    v2 = *(v107 + 16);
    if (!v2)
    {
      break;
    }

    v106 = v3;
    sub_1B1AE5B70(0, v2, 0);
    v68 = v106;
    v70 = sub_1B1B60118(v67);
    v72 = v71;
    v73 = 0;
    v1 = (v67 + 64);
    v90 = v71;
    v92 = v2;
    v74 = 1;
    while ((v70 & 0x8000000000000000) == 0 && v70 < v74 << *(v67 + 32))
    {
      v75 = v70 >> 6;
      v3 = v74 << v70;
      if ((*(v1 + (v70 >> 6)) & (v74 << v70)) == 0)
      {
        goto LABEL_45;
      }

      if (*(v67 + 36) != v72)
      {
        goto LABEL_46;
      }

      v93 = v69;
      v76 = *(*(v67 + 48) + v70);
      sub_1B1A93378(*(v67 + 56) + 32 * v70, v103);
      LOBYTE(v98) = v76;
      sub_1B1A9EEE0(v103, &v99);
      sub_1B1ADFB44(&v98, &v96);
      v104.n128_u64[0] = sub_1B1AE3168(v96);
      v104.n128_u64[1] = v77;
      *(&v94[0] + 1) = v99;
      v94[1] = v100;
      v95 = v101;
      sub_1B1A9EEE0((v94 + 8), v105);
      __swift_destroy_boxed_opaque_existential_0(v97);
      v106 = v68;
      v79 = *(v68 + 16);
      v78 = *(v68 + 24);
      if (v79 >= v78 >> 1)
      {
        v87 = OUTLINED_FUNCTION_19_1(v78);
        sub_1B1AE5B70(v87, v79 + 1, 1);
        v68 = v106;
      }

      *(v68 + 16) = v79 + 1;
      OUTLINED_FUNCTION_18_3((v68 + 48 * v79), v104, v105[0], v105[1]);
      v2 = v74 << v80;
      if (v70 >= v74 << v80)
      {
        goto LABEL_47;
      }

      v81 = *(v1 + v75);
      if ((v81 & v3) == 0)
      {
        goto LABEL_48;
      }

      if (*(v67 + 36) != v72)
      {
        goto LABEL_49;
      }

      v82 = v81 & (-2 << (v70 & 0x3F));
      if (v82)
      {
        v2 = __clz(__rbit64(v82)) | v70 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v3 = v75 << 6;
        v83 = v75 + 1;
        v84 = (v67 + 72 + 8 * v75);
        while (v83 < (v2 + 63) >> 6)
        {
          v86 = *v84++;
          v85 = v86;
          v3 += 64;
          ++v83;
          if (v86)
          {
            sub_1B1B1A544(v70, v72, v93 & 1);
            v74 = 1;
            v2 = __clz(__rbit64(v85)) + v3;
            goto LABEL_40;
          }
        }

        sub_1B1B1A544(v70, v72, v93 & 1);
        v74 = 1;
      }

LABEL_40:
      v69 = 0;
      ++v73;
      v70 = v2;
      v72 = v90;
      v2 = v92;
      if (v73 == v92)
      {

        return sub_1B1ADFBB4(v68);
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    OUTLINED_FUNCTION_12_4();
  }

  v68 = MEMORY[0x1E69E7CC0];
  return sub_1B1ADFBB4(v68);
}

void *sub_1B1B1A518@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_1B1BF8280(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1B1B1A544(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B1B1A5B8()
{
  v0 = sub_1B1C2CB58();
  v2 = v1;
  if (v0 == sub_1B1C2CB58() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_6();
  }

  return v5 & 1;
}

uint64_t sub_1B1B1A654(unsigned __int8 a1, char a2)
{
  v2 = 6779757;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6779757;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x7365707974;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x7265746C6966;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x737465737361;
      break;
    case 4:
      v5 = 0x7475626972747461;
      v3 = 0xEA00000000007365;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x65696B6F6F63;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x656C646E7562;
      break;
    case 7:
      v5 = 0x656B6F5468747561;
      v3 = 0xEA0000000000736ELL;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x7974696C617571;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x7365707974;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x7265746C6966;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x737465737361;
      break;
    case 4:
      v2 = 0x7475626972747461;
      v6 = 0xEA00000000007365;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x65696B6F6F63;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v2 = 0x656C646E7562;
      break;
    case 7:
      v2 = 0x656B6F5468747561;
      v6 = 0xEA0000000000736ELL;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v2 = 0x7974696C617571;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_6();
  }

  return v8 & 1;
}

uint64_t sub_1B1B1A870(unsigned __int8 a1, char a2)
{
  v2 = 0x646573756170;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x646573756170;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v6 = 0x657472617473;
      goto LABEL_5;
    case 2:
      v5 = 0x46726F4674696177;
      v3 = 0xED00006873696E69;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v6 = 0x6570706F7473;
LABEL_5:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE700000000000000;
      v8 = 0x657472617473;
      goto LABEL_10;
    case 2:
      v2 = 0x46726F4674696177;
      v7 = 0xED00006873696E69;
      break;
    case 3:
      v7 = 0xE700000000000000;
      v8 = 0x6570706F7473;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_6();
  }

  return v10 & 1;
}

uint64_t sub_1B1B1A9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_6();
  }

  return v10 & 1;
}

uint64_t sub_1B1B1AA68(unsigned __int8 a1, char a2)
{
  v2 = 0xEC0000006E6F6973;
  v3 = 0x726556636967616DLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6F69647561;
    }

    else
    {
      v5 = 0x6E49676E696D6974;
    }

    if (v4 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEB00000000736F66;
    }
  }

  else
  {
    v5 = 0x726556636967616DLL;
    v6 = 0xEC0000006E6F6973;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6F69647561;
    }

    else
    {
      v3 = 0x6E49676E696D6974;
    }

    if (a2 == 1)
    {
      v2 = 0xE500000000000000;
    }

    else
    {
      v2 = 0xEB00000000736F66;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B1C2D7A8();
  }

  return v8 & 1;
}

BOOL sub_1B1B1AB70(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (qword_1B1C37518[v6] != qword_1B1C37518[a1]);
  return v4 != 0;
}

id TaskOperation.__allocating_init(request:workflow:delegate:audioHandler:notification:queue:)()
{
  OUTLINED_FUNCTION_4_4();
  v1 = objc_allocWithZone(v0);
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_3_7();

  return sub_1B1AA41BC(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B1B1AC30()
{
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v1 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v1, qword_1ED9A9120);
  v2 = v0;
  v3 = sub_1B1C2C888();
  v4 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1B1A8A000, v3, v4, "Cancelling task, %@", v5, 0xCu);
    sub_1B1B1AF0C(v6);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for TaskOperation();
  objc_msgSendSuper2(&v10, sel_cancel);
  v8 = *&v2[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflow];
  return sub_1B1B3D1C8();
}

id TaskOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TaskOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TaskOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B1B1AE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B1C2CB28();

  if (a4)
  {
    v8 = sub_1B1C2CA78();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1B1B1AF0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7625C0, &qword_1B1C37990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1B1B1AFA4()
{
  v52[3] = *MEMORY[0x1E69E9840];
  v0 = sub_1B1C2C0A8();
  v1 = OUTLINED_FUNCTION_7(v0);
  v50 = v2;
  v51 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B1C2C1C8();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v48 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  v25 = [v24 temporaryDirectory];

  sub_1B1C2C168();
  v26 = [v23 defaultManager];
  v27 = sub_1B1C2C118();
  v52[0] = 0;
  v28 = [v26 URLForDirectory:99 inDomain:1 appropriateForURL:v27 create:1 error:v52];

  v29 = v52[0];
  if (v28)
  {
    sub_1B1C2C168();
    v30 = v29;

    (*(v9 + 8))(v22, v6);
  }

  else
  {
    v31 = v52[0];
    v32 = sub_1B1C2C058();

    swift_willThrow();
    v17 = v22;
  }

  v33 = *(v9 + 32);
  v33(v20, v17, v6);
  v33(v22, v20, v6);
  v34 = [objc_opt_self() processInfo];
  v35 = [v34 globallyUniqueString];

  v36 = sub_1B1C2CB58();
  v38 = v37;

  v52[0] = v36;
  v52[1] = v38;
  v40 = v49;
  v39 = v50;
  v41 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x1E6968F68], v51);
  sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  (*(v39 + 8))(v40, v41);

  sub_1B1C2C098();
  v43 = v42;
  v44 = *(v9 + 8);
  v44(v14, v6);
  type metadata accessor for MappedData();
  swift_allocObject();
  v45 = OUTLINED_FUNCTION_5_4();
  sub_1B1B1B3D0(v45, v43, 0x7D000uLL);
  v44(v22, v6);
  v46 = *MEMORY[0x1E69E9840];
  return v14;
}

char *sub_1B1B1B3D0(uint64_t a1, uint64_t a2, size_t a3)
{
  v4 = v3;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0xF000000000000000;
  *(v3 + 72) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  objc_opt_self();
  OUTLINED_FUNCTION_5_4();

  v6 = [v3 defaultManager];
  OUTLINED_FUNCTION_3_3();
  v7 = sub_1B1C2CB28();
  v8 = [v6 fileExistsAtPath_];

  if ((v8 & 1) == 0)
  {
    v9 = [v3 defaultManager];
    OUTLINED_FUNCTION_3_3();
    v10 = sub_1B1C2CB28();
    [v9 createFileAtPath:v10 contents:0 attributes:0];

    *(v4 + 72) = 1;
  }

  sub_1B1AE5FC0();
  OUTLINED_FUNCTION_5_4();

  OUTLINED_FUNCTION_3_3();
  v11 = sub_1B1AE6004();
  if (v11)
  {
    v12 = v11;
    if (ftruncate([v11 fileDescriptor], a3))
    {
    }

    else
    {
      v13 = mmap(0, a3, 3, 1, [v12 fileDescriptor], 0);
      if (!v13 || (v14 = v13, v13 == sub_1B1C2C938()))
      {
        if (qword_1ED9A9288 != -1)
        {
          OUTLINED_FUNCTION_3_1();
        }

        v15 = sub_1B1C2C8A8();
        __swift_project_value_buffer(v15, qword_1ED9A9120);
        OUTLINED_FUNCTION_5_4();

        v16 = sub_1B1C2C888();
        v17 = sub_1B1C2D0B8();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v33[0] = swift_slowAlloc();
          *v18 = 136446722;
          v19 = OUTLINED_FUNCTION_3_3();
          v22 = sub_1B1A930E4(v19, v20, v21);

          *(v18 + 4) = v22;
          *(v18 + 12) = 1024;
          *(v18 + 14) = MEMORY[0x1B2737E10](v23);
          *(v18 + 18) = 2080;
          v24 = MEMORY[0x1B2737E10]();
          result = strerror(v24);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v26 = sub_1B1C2CCF8();
          v28 = sub_1B1A930E4(v26, v27, v33);

          *(v18 + 20) = v28;
          OUTLINED_FUNCTION_6_6(&dword_1B1A8A000, v29, v30, "Unable to mmap file at path: %{public}s, errno: %d, error: %s");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_11();
        }

        else
        {
        }
      }

      else
      {

        *(v4 + 40) = v14;
        *(v4 + 48) = a3;
      }
    }

    [v12 closeFile];
  }

  else
  {
  }

  if (!*(v4 + 40))
  {
    swift_beginAccess();
    v31 = *(v4 + 56);
    v32 = *(v4 + 64);
    *(v4 + 56) = xmmword_1B1C35270;
    sub_1B1AA9670(v31, v32);
  }

  return v4;
}

uint64_t sub_1B1B1B714()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  if (v1)
  {
    munmap(v1, *(v0 + 48));
  }

  if (*(v0 + 72) == 1)
  {
    v2 = [objc_opt_self() defaultManager];
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    v5 = sub_1B1C2CB28();

    v12[0] = 0;
    LODWORD(v4) = [v2 removeItemAtPath:v5 error:v12];

    if (v4)
    {
      v6 = v12[0];
    }

    else
    {
      v7 = v12[0];
      v8 = sub_1B1C2C058();

      swift_willThrow();
    }
  }

  v9 = *(v0 + 24);

  sub_1B1AA9670(*(v0 + 56), *(v0 + 64));
  v10 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t sub_1B1B1B844()
{
  sub_1B1B1B714();

  return MEMORY[0x1EEE6BDC0](v0, 73, 7);
}

uint64_t sub_1B1B1B89C(void *a1)
{
  v3 = MEMORY[0x1B27377A0](a1, v1[4]);
  v5 = v4;
  swift_beginAccess();
  v6 = v1[7];
  v7 = v1[8];
  v1[7] = v3;
  v1[8] = v5;
  sub_1B1AA9670(v6, v7);
  result = munmap(a1, v1[6]);
  v1[5] = 0;
  v1[6] = 0;
  return result;
}

char *sub_1B1B1B90C(uint64_t a1, void *a2)
{
  v5 = v2[4];
  v6 = __OFADD__(a1, v5);
  v7 = a1 + v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_36;
  }

  v8 = v2;
  v3 = a2;
  if (v2[6] >= v7)
  {
    return a2;
  }

  sub_1B1AE5FC0();
  v4 = v2[2];
  v10 = v2[3];

  v11 = sub_1B1AE6004();
  if (!v11)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v29 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v29, qword_1ED9A9120);
    v30 = sub_1B1C2C888();
    v31 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 67109378;
      *(v32 + 4) = MEMORY[0x1B2737E10]();
      *(v32 + 8) = 2080;
      v34 = MEMORY[0x1B2737E10]();
      result = strerror(v34);
      if (!result)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v35 = sub_1B1C2CCF8();
      v37 = sub_1B1A930E4(v35, v36, &v49);

      *(v32 + 10) = v37;
      _os_log_impl(&dword_1B1A8A000, v30, v31, "Unable to handle mmap file, errno: %d, error: %s", v32, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    sub_1B1B1B89C(v3);
    return 0;
  }

  v12 = v2[6];
  v6 = __OFADD__(v12, a1);
  v13 = v12 + a1;
  if (v6)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v4 = v11;
  v14 = v13 * 1.5;
  v15 = trunc(v14);
  if (v15 >= 9.22337204e18 || v15 <= -9.22337204e18)
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = v14;
  }

  if (ftruncate([v11 fileDescriptor], v17))
  {
    if (qword_1ED9A9288 == -1)
    {
LABEL_13:
      v18 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v18, qword_1ED9A9120);
      v19 = sub_1B1C2C888();
      v20 = sub_1B1C2D0B8();
      if (!os_log_type_enabled(v19, v20))
      {
LABEL_32:

        sub_1B1B1B89C(v3);
        return 0;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = 67109378;
      *(v21 + 4) = MEMORY[0x1B2737E10]();
      *(v21 + 8) = 2080;
      v23 = MEMORY[0x1B2737E10]();
      result = strerror(v23);
      if (result)
      {
        v25 = sub_1B1C2CCF8();
        v27 = sub_1B1A930E4(v25, v26, &v49);

        *(v21 + 10) = v27;
        _os_log_impl(&dword_1B1A8A000, v19, v20, "Unable to resize mapped file, errno: %d, error: %s", v21, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v22);
        OUTLINED_FUNCTION_11();
LABEL_31:
        OUTLINED_FUNCTION_11();
        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    OUTLINED_FUNCTION_3_1();
    goto LABEL_13;
  }

  v38 = mmap(0, v17, 3, 1, [v4 fileDescriptor], 0);
  if (v38)
  {
    v28 = v38;
    if (v38 != sub_1B1C2C938())
    {
      munmap(v3, v8[6]);

      v8[5] = v28;
      v8[6] = v17;
      return v28;
    }
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v39 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v39, qword_1ED9A9120);
  v19 = sub_1B1C2C888();
  v40 = sub_1B1C2D0B8();
  if (!os_log_type_enabled(v19, v40))
  {
    goto LABEL_32;
  }

  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v49 = v42;
  *v41 = 134218498;
  *(v41 + 4) = v17;
  *(v41 + 12) = 1024;
  *(v41 + 14) = MEMORY[0x1B2737E10]();
  *(v41 + 18) = 2080;
  v43 = MEMORY[0x1B2737E10]();
  result = strerror(v43);
  if (result)
  {
    v44 = sub_1B1C2CCF8();
    v46 = sub_1B1A930E4(v44, v45, &v49);

    *(v41 + 20) = v46;
    OUTLINED_FUNCTION_6_6(&dword_1B1A8A000, v47, v48, "Unable to mmap file to length: %ld, errno: %d, error: %s");
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_11();
    goto LABEL_31;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B1B1BD94(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v49 = *MEMORY[0x1E69E9840];
  if (a2 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v5 = a2 >> 62;
  v7 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = a1 >> 32;
      v11 = a1;
      goto LABEL_7;
    case 2uLL:
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
LABEL_7:
      if (v11 == v10)
      {
        goto LABEL_8;
      }

      v13 = OUTLINED_FUNCTION_33();
      sub_1B1AA64DC(v13, v14);
      goto LABEL_10;
    case 3uLL:
      goto LABEL_4;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
LABEL_4:
        v8 = OUTLINED_FUNCTION_33();
        sub_1B1AA9670(v8, v9);
LABEL_8:
        result = *(v2 + 32);
LABEL_33:
        v42 = *MEMORY[0x1E69E9840];
        return result;
      }

LABEL_10:
      v15 = *(v2 + 40);
      if (v15)
      {
        v16 = OUTLINED_FUNCTION_33();
        v17 = MEMORY[0x1B27377C0](v16);
        v18 = sub_1B1B1B90C(v17, v15);
        if (v18)
        {
          v19 = v18;
          if (v5 == 2)
          {
            v26 = *(a1 + 16);
            v27 = OUTLINED_FUNCTION_33();
            sub_1B1B1C108(v27, v28);

            v22 = sub_1B1C2BF08();
            if (v22)
            {
              v29 = sub_1B1C2BF38();
              if (__OFSUB__(v26, v29))
              {
LABEL_40:
                __break(1u);
LABEL_41:
                __break(1u);
              }

              v22 += v26 - v29;
            }

            sub_1B1C2BF28();
            v31 = *(a1 + 16);
            v30 = *(a1 + 24);
            v24 = v30 - v31;
            if (__OFSUB__(v30, v31))
            {
              goto LABEL_38;
            }

            v25 = &v19[*(v3 + 32)];
          }

          else
          {
            if (v5 != 1)
            {
              v43 = a1;
              v44 = a2;
              v45 = BYTE2(a2);
              v46 = BYTE3(a2);
              v47 = BYTE4(a2);
              v48 = BYTE5(a2);
              memcpy(&v18[*(v3 + 32)], &v43, BYTE6(a2));
              goto LABEL_29;
            }

            if (v7 > a1 >> 32)
            {
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            v20 = OUTLINED_FUNCTION_33();
            sub_1B1B1C108(v20, v21);

            v22 = sub_1B1C2BF08();
            if (v22)
            {
              v23 = sub_1B1C2BF38();
              if (__OFSUB__(v7, v23))
              {
                goto LABEL_41;
              }

              v22 += v7 - v23;
            }

            sub_1B1C2BF28();
            if (__OFSUB__(HIDWORD(a1), a1))
            {
              goto LABEL_39;
            }

            v24 = HIDWORD(a1) - a1;
            v25 = &v19[*(v3 + 32)];
          }

          memcpy(v25, v22, v24);

LABEL_29:
          v32 = OUTLINED_FUNCTION_33();
          sub_1B1AA9670(v32, v33);
LABEL_30:
          v34 = OUTLINED_FUNCTION_33();
          v35 = MEMORY[0x1B27377C0](v34);
          v36 = *(v3 + 32);
          v37 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            __break(1u);
          }

          else
          {
            *(v3 + 32) = v37;
            v38 = OUTLINED_FUNCTION_33();
            v39 = MEMORY[0x1B27377C0](v38);
            v40 = OUTLINED_FUNCTION_33();
            sub_1B1AA9670(v40, v41);
            result = v37 - v39;
            if (!__OFSUB__(v37, v39))
            {
              if (*(v3 + 32) >= result)
              {
                goto LABEL_33;
              }

              goto LABEL_36;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      result = swift_beginAccess();
      if (*(v3 + 64) >> 60 != 15)
      {
        OUTLINED_FUNCTION_33();
        sub_1B1C2C318();
        swift_endAccess();
        goto LABEL_30;
      }

      __break(1u);
      return result;
  }
}

uint64_t sub_1B1B1C0A0(uint64_t result, uint64_t a2, uint64_t a3, size_t a4, id *a5)
{
  if (result)
  {
    if (a2 - result >= a3)
    {
      return sub_1B1B7A1A0(*MEMORY[0x1E695E480], (result + a3), a4, a5);
    }

    __break(1u);
  }

  if (a3 < 1)
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B1C108(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B1AA64DC(a1, a2);
  }

  return a1;
}

uint64_t sub_1B1B1C214(uint64_t (*a1)(void, void, void, void))
{
  v3 = *v1;
  os_unfair_lock_lock((v1 + 16));
  v4 = a1(*(v1 + 24), v3[10], v3[11], v3[12]);
  sub_1B1C2CAD8();
  os_unfair_lock_unlock((v1 + 16));
  return v4;
}

void sub_1B1B1C38C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);
}

uint64_t sub_1B1B1C3C4@<X0>(uint64_t *a1@<X8>)
{
  result = SynthesisBufferingAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B1C4FC()
{
  result = sub_1B1ACB6B8(&unk_1F28BB750);
  qword_1EB772D48 = result;
  return result;
}

uint64_t sub_1B1B1C524()
{
  result = sub_1B1ACB6B8(&unk_1F28BB780);
  qword_1EB772D50 = result;
  return result;
}

uint64_t sub_1B1B1C54C()
{
  result = sub_1B1ACB6B8(&unk_1F28BB800);
  qword_1EB772D58 = result;
  return result;
}

uint64_t sub_1B1B1C574()
{
  result = sub_1B1ACB6B8(&unk_1F28BB830);
  qword_1EB772D60 = result;
  return result;
}

uint64_t sub_1B1B1C59C()
{
  if (qword_1EB7614E8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB772D48;
  v1 = qword_1EB7614F0;

  if (v1 != -1)
  {
    swift_once();
  }

  v3 = sub_1B1B1C6D4(v2, v0);
  if (qword_1EB7614F8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B1B1C6D4(v4, v3);
  if (qword_1EB761500 != -1)
  {
    swift_once();
  }

  result = sub_1B1B1C6D4(v6, v5);
  qword_1EB772D68 = result;
  return result;
}

uint64_t sub_1B1B1C6D4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1B1ACB778(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1B1B1C7D8(unint64_t a1, void *a2)
{
  v2 = a1;
  v17[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1B1C2D458();
    sub_1B1AF6328();
    sub_1B1A9C7B4();
    OUTLINED_FUNCTION_43_0();
    sub_1B1C2CF88();
    v2 = v17[2];
    v3 = v17[3];
    v4 = v17[4];
    v5 = v17[5];
    v6 = v17[6];
  }

  else
  {
    v5 = 0;
    v7 = *(a1 + 32);
    OUTLINED_FUNCTION_1_6();
    v3 = (v2 + 56);
    v4 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(v8 << v10);
    }

    else
    {
      v11 = v8;
    }

    v6 = (v11 & *(v2 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v5;
    v13 = v6;
    v14 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_1B1A9D350();
      return;
    }

    while (1)
    {
      sub_1B1B1E08C(v17, v16);

      v5 = v14;
      v6 = v15;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1B1C2D488())
      {
        sub_1B1AF6328();
        swift_dynamicCast();
        v16 = v17[0];
        v14 = v5;
        v15 = v6;
        if (v17[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = v3[v14];
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}