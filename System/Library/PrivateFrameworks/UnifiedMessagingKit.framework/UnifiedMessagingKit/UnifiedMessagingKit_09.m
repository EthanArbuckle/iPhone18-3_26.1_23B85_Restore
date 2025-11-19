unint64_t sub_27046C720()
{
  result = qword_2807D3508;
  if (!qword_2807D3508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D3508);
  }

  return result;
}

unint64_t JSONObject.dictionary.getter()
{
  sub_27046CD54();
  v1 = sub_27046C7B8(v0);

  return v1;
}

unint64_t sub_27046C7B8(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0138);
    v4 = sub_2705D7E94();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_0_36();

  v6 = 0;
  while (v1)
  {
    v7 = v6;
LABEL_10:
    OUTLINED_FUNCTION_2_31();
    v9 = v8 | (v7 << 6);
    v10 = (a1[6] + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    sub_2703D7F04(a1[7] + 32 * v9, v27);
    *&v26 = v11;
    *(&v26 + 1) = v12;
    v24[2] = v26;
    v25[0] = v27[0];
    v25[1] = v27[1];
    v13 = v26;
    sub_2703E43D4(v25, &v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    swift_dynamicCast();
    sub_2703E43D4(&v21, v23);
    sub_2703E43D4(v23, v24);
    sub_2703E43D4(v24, &v22);
    result = sub_2703D7318(v13, *(&v13 + 1));
    v14 = result;
    if (v15)
    {
      *(v4[6] + 16 * result) = v13;

      v16 = (v4[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = sub_2703E43D4(&v22, v16);
      v6 = v7;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 16 * result) = v13;
      result = sub_2703E43D4(&v22, (v4[7] + 32 * result));
      v17 = v4[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_18;
      }

      v4[2] = v19;
      v6 = v7;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v2)
    {

      return v4;
    }

    v1 = a1[v7 + 8];
    ++v6;
    if (v1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_27046CA08(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3510);
    v2 = sub_2705D7E94();
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2703D7F04(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2703E43D4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2703E43D4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2703E43D4(v31, v32);
    result = sub_2705D7CD4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_2703E43D4(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_27046CCCC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2705D7454();

  v2 = [v0 initWithDictionary_];

  return v2;
}

void sub_27046CD54()
{
  if (*(v0 + 16) == 16)
  {
    v3 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F0);
    v4 = 0;
    v5 = v3 + 64;
    v29 = sub_2705D7E74();
    v30 = v3;
    OUTLINED_FUNCTION_0_36();
    v28 = v6 + 64;
    if (v1)
    {
      while (1)
      {
        OUTLINED_FUNCTION_2_31();
LABEL_9:
        v10 = v7 | (v4 << 6);
        v11 = (*(v30 + 48) + 16 * v10);
        v12 = *v11;
        v13 = v11[1];

        v14 = OUTLINED_FUNCTION_0_14();
        sub_2703AE9FC(v14, v15, v16);
        v17 = OUTLINED_FUNCTION_0_14();
        sub_27046A8E8(v17, v18, v19, v20);
        v21 = OUTLINED_FUNCTION_0_14();
        sub_2703AE630(v21, v22, v23);
        *(v28 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        v24 = (v29[6] + 16 * v10);
        *v24 = v12;
        v24[1] = v13;
        sub_2703E43D4(&v31, (v29[7] + 32 * v10));
        v25 = v29[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          break;
        }

        v29[2] = v27;
        if (!v1)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
LABEL_4:
      v8 = v4;
      while (1)
      {
        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v4 >= v2)
        {
          return;
        }

        v9 = *(v5 + 8 * v4);
        ++v8;
        if (v9)
        {
          v7 = __clz(__rbit64(v9));
          v1 = (v9 - 1) & v9;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);

    sub_2705D7494();
  }
}

uint64_t JSONObject.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27046BE40(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9;
  }

  return result;
}

unint64_t sub_27046CFD0(uint64_t a1)
{
  *(a1 + 8) = sub_2703C3FAC();
  result = sub_2703C39C4();
  *(a1 + 16) = result;
  return result;
}

uint64_t JSONObjectEncodable<>.object.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40[4] = *MEMORY[0x277D85DE8];
  v5 = sub_2705D6524();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2705D4044();
  swift_allocObject();
  sub_2705D4034();
  sub_2705D4024();
  v13 = objc_opt_self();
  OUTLINED_FUNCTION_0_37();
  v14 = sub_2705D44A4();
  v40[0] = 0;
  v15 = [v13 JSONObjectWithData:v14 options:0 error:v40];

  if (v15)
  {
    v16 = v40[0];
    sub_2705D7C84();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0);
    if (swift_dynamicCast())
    {
      sub_27046BFF4(v39[0]);
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = OUTLINED_FUNCTION_0_37();
      sub_27046DCA4(v23, v24);

      goto LABEL_11;
    }

    v35 = OUTLINED_FUNCTION_0_37();
    sub_27046DCA4(v35, v36);
  }

  else
  {
    v31 = v40[0];
    v32 = sub_2705D4364();

    swift_willThrow();
    v33 = OUTLINED_FUNCTION_0_37();
    sub_27046DCA4(v33, v34);
  }

  if (qword_2807CE830 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  sub_2705D6574();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2705E6EB0;
  v40[3] = a1;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v40);
  (*(*(a1 - 1) + 16))(boxed_opaque_existential_1Tm, v2, a1);
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    v10 = sub_2705D7564();
    v37 = v11;
    v38 = v10;

    sub_2705D6514();
    sub_2705D6504();
    OUTLINED_FUNCTION_3_38();
    MetatypeMetadata = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_2_32(MetatypeMetadata);
    sub_2703B2934(v39, &unk_2807D4890);
    sub_2705D6504();
    v39[3] = MEMORY[0x277D837D0];
    v39[0] = v38;
    v39[1] = v37;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    OUTLINED_FUNCTION_3_38();
    v26 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_2_32(v26);
  }

  sub_2703B2934(v39, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_2705D64C4();
  sub_27047CF78(v6);

  v27 = sub_2705D7494();
  sub_27046BFF4(v27);
  v18 = v28;
  v20 = v29;
  v22 = v30;

LABEL_11:
  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v22;
  return result;
}

double sub_27046D520@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  sub_2705D4014();
  swift_allocObject();
  sub_2705D4004();
  v8 = objc_opt_self();
  *(&v21 + 1) = a2;
  LOBYTE(v22) = a3;
  sub_27046CD54();
  sub_27046C7B8(v9);

  v10 = sub_2705D7454();
  sub_2703AE630(a1, a2, a3);

  *&v21 = 0;
  v11 = [v8 dataWithJSONObject:v10 options:0 error:&v21];

  v12 = v21;
  if (v11)
  {
    v13 = sub_2705D44C4();
    v15 = v14;

    sub_27046DEA4();
    sub_2705D3FF4();
    sub_27046DCA4(v13, v15);

    v18 = v22;
    *a4 = v21;
    a4[1] = v18;
    result = *&v23;
    v20 = v24;
    a4[2] = v23;
    a4[3] = v20;
  }

  else
  {
    v16 = v12;
    v17 = sub_2705D4364();

    swift_willThrow();

    result = 0.0;
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_27046D75C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_2705D4014();
  swift_allocObject();
  sub_2705D4004();
  v8 = objc_opt_self();
  *(&__src[0] + 1) = a2;
  LOBYTE(__src[1]) = a3;
  sub_27046CD54();
  sub_27046C7B8(v9);

  v10 = sub_2705D7454();
  sub_2703AE630(a1, a2, a3);

  *&__src[0] = 0;
  v11 = [v8 dataWithJSONObject:v10 options:0 error:__src];

  v12 = *&__src[0];
  if (v11)
  {
    v13 = sub_2705D44C4();
    v15 = v14;

    sub_27046DDCC();
    sub_2705D3FF4();
    sub_27046DCA4(v13, v15);

    memcpy(a4, __src, 0x60uLL);
  }

  else
  {
    v16 = v12;
    v17 = sub_2705D4364();

    swift_willThrow();

    a4[4] = 0u;
    a4[5] = 0u;
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
  }
}

uint64_t JSONObjectDecodable<>.init(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[3] = a3;
  v26 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v6 = sub_2705D7C14();
  v25[1] = *(v6 - 8);
  v25[2] = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  sub_2705D4014();
  swift_allocObject();
  sub_2705D4004();
  v12 = objc_opt_self();
  v27[0] = v9;
  v27[1] = v10;
  v28 = v11;
  sub_27046CD54();
  sub_27046C7B8(v13);

  v14 = sub_2705D7454();
  sub_2703AE630(v9, v10, v11);

  v27[0] = 0;
  v15 = [v12 dataWithJSONObject:v14 options:0 error:v27];

  v16 = v27[0];
  if (v15)
  {
    v17 = sub_2705D44C4();
    v19 = v18;

    sub_2705D3FF4();
    sub_27046DCA4(v17, v19);

    __swift_storeEnumTagSinglePayload(v8, 0, 1, a2);
    v22 = v26;
    (*(*(a2 - 8) + 32))(v26, v8, a2);
    v23 = 0;
  }

  else
  {
    v20 = v16;
    v21 = sub_2705D4364();

    swift_willThrow();

    v23 = 1;
    v22 = v26;
  }

  return __swift_storeEnumTagSinglePayload(v22, v23, 1, a2);
}

uint64_t sub_27046DCA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_27046DDCC()
{
  result = qword_2807D3520;
  if (!qword_2807D3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3520);
  }

  return result;
}

unint64_t sub_27046DEA4()
{
  result = qword_2807D3530;
  if (!qword_2807D3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3530);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_32(uint64_t a1)
{
  *(v2 - 128) = a1;
  *(v2 - 152) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_3_38()
{
  __swift_project_boxed_opaque_existential_1((v0 - 120), *(v0 - 96));

  return swift_getDynamicType();
}

uint64_t sub_27046DF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_27046E038(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for JSServiceRequestIntent()
{
  result = qword_2807D3540;
  if (!qword_2807D3540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27046E110()
{
  sub_2703C5B08(319, &qword_2807CF1A0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2703C5B08(319, &qword_2807D3550);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_27046E1E0();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_27046E1E0()
{
  if (!qword_2807D3558)
  {
    sub_2705D4484();
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D3558);
    }
  }
}

uint64_t sub_27046E238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for JSServiceRequestIntent();
  v11 = *(v10 + 24);
  sub_2705D4484();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = (a5 + *(v10 + 28));
  *v16 = 0;
  v16[1] = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  sub_2704703B4(a4, a5 + v11);
  if (a3)
  {

    v18 = sub_2705A5474(v17);
    v20 = v19;
    v22 = v21;
    sub_2703C1634(a4, &unk_2807D4280);
  }

  else
  {
    result = sub_2703C1634(a4, &unk_2807D4280);
    v18 = 0;
    v20 = 0;
    v22 = -1;
  }

  *(a5 + 16) = v18;
  *(a5 + 24) = v20;
  *(a5 + 32) = v22;
  return result;
}

BOOL sub_27046E480(uint64_t a1, uint64_t a2)
{
  v4 = sub_2705D4484();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  OUTLINED_FUNCTION_23_0(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35D0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = *(a1 + 8);
  v20 = *(a2 + 8);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *a1 == *a2 && v19 == v20;
    if (!v21 && (sub_2705D8134() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v22 = *(a1 + 32);
  v23 = *(a2 + 32);
  if (v22 == 255)
  {
    v46 = v10;
    if (v23 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v23 == 255)
    {
      return 0;
    }

    v45 = v6;
    v46 = v10;
    v24 = *(a1 + 16);
    v43 = *(a1 + 24);
    v44 = v24;
    v26 = *(a2 + 16);
    v25 = *(a2 + 24);
    sub_2703AE9FC(v26, v25, v23);
    v27 = sub_2705A56E4(v44, v43, v22, v26, v25, v23);
    v28 = v26;
    v6 = v45;
    sub_270470288(v28, v25, v23);
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  v29 = type metadata accessor for JSServiceRequestIntent();
  v30 = *(v29 + 24);
  v31 = *(v15 + 48);
  sub_2703EE6F4(a1 + v30, v18);
  sub_2703EE6F4(a2 + v30, &v18[v31]);
  OUTLINED_FUNCTION_13_19(v18);
  if (v21)
  {
    OUTLINED_FUNCTION_13_19(&v18[v31]);
    if (v21)
    {
      sub_2703C1634(v18, &unk_2807D4280);
      goto LABEL_26;
    }

LABEL_23:
    sub_2703C1634(v18, &qword_2807D35D0);
    return 0;
  }

  sub_2703EE6F4(v18, v14);
  OUTLINED_FUNCTION_13_19(&v18[v31]);
  if (v32)
  {
    (*(v6 + 8))(v14, v4);
    goto LABEL_23;
  }

  v34 = v46;
  (*(v6 + 32))(v46, &v18[v31], v4);
  sub_27047036C(qword_2807D0658, MEMORY[0x277CC9260]);
  v35 = sub_2705D7514();
  v36 = *(v6 + 8);
  v36(v34, v4);
  v36(v14, v4);
  sub_2703C1634(v18, &unk_2807D4280);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v37 = *(v29 + 28);
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (!v39)
  {
    return !v41;
  }

  if (!v41)
  {
    return 0;
  }

  v42 = *v38 == *v40 && v39 == v41;
  return v42 || (sub_2705D8134() & 1) != 0;
}

void sub_27046E82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  OUTLINED_FUNCTION_23_0(v29);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = -1;
  v33 = type metadata accessor for JSServiceRequestIntent();
  v34 = *(v33 + 24);
  v35 = sub_2705D4484();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  v39 = (v28 + *(v33 + 28));
  *v39 = 0;
  v39[1] = 0;
  OUTLINED_FUNCTION_7_23();
  v40 = sub_2704698DC();
  if (v20)
  {

    v40 = 0;
    v41 = 0;
  }

  *v28 = v40;
  *(v28 + 8) = v41;
  sub_270469B64(7107189, 0xE300000000000000, v33, v32);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v35);
  sub_2704700B4(v32, v28 + v34);
  v42 = OUTLINED_FUNCTION_6_30();
  v43 = sub_2703C5174(v42, 0xE700000000000000, v33);
  *(v28 + 16) = sub_2705A5474(v43);
  *(v28 + 24) = v44;
  *(v28 + 32) = v45;
  v46 = sub_2704698DC();
  v48 = v47;
  sub_2705D6654();
  OUTLINED_FUNCTION_11_1();
  (*(v49 + 8))(v24);
  sub_2705D6484();
  OUTLINED_FUNCTION_11_1();
  (*(v50 + 8))(v26);
  *v39 = v46;
  v39[1] = v48;
  OUTLINED_FUNCTION_11_3();
}

void sub_27046EAE4()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v46 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  OUTLINED_FUNCTION_23_0(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = [objc_opt_self() valueWithNewObjectInContext_];
  if (!v11)
  {
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = sub_270470124();
  v14 = MEMORY[0x277D837D0];
  v45 = MEMORY[0x277D837D0];
  v43 = 0xD000000000000016;
  v44 = 0x80000002705F2AC0;
  v15 = v5;
  v16 = OUTLINED_FUNCTION_8_27();
  if (!sub_27046EDEC(v16, v17))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_2705D7B74();
  v18 = *(v0 + 8);
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = *v3;
  v45 = v14;
  v43 = v19;
  v44 = v18;
  v20 = v15;

  v21 = OUTLINED_FUNCTION_8_27();
  if (!sub_27046EDEC(v21, v22))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_2705D7B74();
LABEL_6:
  v23 = v13;
  v24 = v15;
  v25 = type metadata accessor for JSServiceRequestIntent();
  sub_2703EE6F4(v3 + *(v25 + 24), v10);
  v26 = sub_2705D4484();
  if (__swift_getEnumTagSinglePayload(v10, 1, v26) != 1)
  {
    v42 = v1;
    v28 = sub_2705D4394();
    v30 = v29;
    (*(*(v26 - 8) + 8))(v10, v26);
    v45 = MEMORY[0x277D837D0];
    v43 = v28;
    v44 = v30;
    v27 = v24;
    v31 = v24;

    v32 = OUTLINED_FUNCTION_8_27();
    if (sub_27046EDEC(v32, v33))
    {

      sub_2705D7B74();
      v2 = v42;
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_2703C1634(v10, &unk_2807D4280);
  v27 = v24;
LABEL_10:
  v34 = *(v3 + 32);
  if (v34 == 255)
  {
LABEL_15:
    v40 = MEMORY[0x277D225C8];
    v46[3] = v23;
    v46[4] = v40;
    *v46 = v12;
    goto LABEL_16;
  }

  v35 = sub_270545C30(*(v3 + 16), *(v3 + 24), v34);
  if (v2)
  {

LABEL_16:
    OUTLINED_FUNCTION_11_3();
    return;
  }

  v36 = v35;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
  v43 = v36;
  v37 = v27;
  v38 = OUTLINED_FUNCTION_8_27();
  if (sub_27046EDEC(v38, v39))
  {
    sub_2705D7B74();
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
}

id sub_27046EDEC(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = *(v3 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_2705D8124();
    (*(v6 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() valueWithObject:v9 inContext:a2];
  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_27046EFB0(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_7_23() && v4 == 0xE800000000000000;
  if (v5 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_6_30() && a2 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == 0xD000000000000011 && 0x8000000270614120 == a2;
      if (v8 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7107189 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_5_30();

        if (v10)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_27046F0C8()
{
  result = OUTLINED_FUNCTION_7_23();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_6_30();
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27046F168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27046EFB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27046F190(uint64_t a1)
{
  v2 = sub_270470168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27046F1CC(uint64_t a1)
{
  v2 = sub_270470168();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_27046F208()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v59 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v61 = v49 - v6;
  v58 = sub_2705D75C4();
  OUTLINED_FUNCTION_0();
  v56 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v55 = v10 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3588);
  OUTLINED_FUNCTION_0();
  v60 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = v49 - v13;
  v15 = type metadata accessor for JSServiceRequestIntent();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v19 = v18 - v17;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = -1;
  v20 = *(v16 + 32);
  v21 = sub_2705D4484();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  v25 = (v19 + *(v16 + 36));
  *v25 = 0;
  v25[1] = 0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_270470168();
  sub_2705D8484();
  if (v0)
  {
    v26 = v2;
  }

  else
  {
    v52 = v21;
    v54 = v20;
    v28 = v58;
    v27 = v59;
    LOBYTE(v62) = 0;
    v29 = v57;
    v30 = v14;
    v31 = sub_2705D7F54();
    v53 = v2;
    v32 = v28;
    *v19 = v31;
    *(v19 + 8) = v33;
    v34 = sub_2704701BC();
    v35 = v30;
    sub_2705D7FA4();
    v36 = *(&v62 + 1);
    v37 = v63;
    v58 = v62;
    *(v19 + 16) = v62;
    *(v19 + 24) = v36;
    v51 = v36;
    v64 = v37;
    *(v19 + 32) = v37;
    LOBYTE(v62) = 2;
    sub_2705D7F54();
    v49[1] = v34;
    v38 = v29;
    v39 = v55;
    sub_2705D75A4();
    v50 = sub_2705D7574();
    v41 = v40;

    v42 = v32;
    v43 = v41;
    (*(v56 + 8))(v39, v42);
    if (v41 >> 60 == 15)
    {
      v44 = v27;
      v45 = v61;
    }

    else
    {
      sub_2705D4014();
      swift_allocObject();
      sub_2705D4004();
      sub_2705D3FF4();
      v44 = v27;
      v45 = v61;
      sub_270470274(v50, v43);

      sub_270470288(v58, v51, v64);
      v48 = v63;
      *(v19 + 16) = v62;
      *(v19 + 32) = v48;
    }

    v46 = v60;
    v47 = v54;
    LOBYTE(v62) = 3;
    sub_2705D7F54();
    sub_2705D4454();

    (*(v46 + 8))(v35, v38);
    sub_2704700B4(v45, v19 + v47);
    sub_270470210(v19, v44);
    v26 = v53;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_270470058(v19);
  OUTLINED_FUNCTION_11_3();
}

void sub_27046F728()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v0;
  v4 = v3;
  v47 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v42 = v39 - v7;
  v8 = sub_2705D4484();
  OUTLINED_FUNCTION_0();
  v41 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v40 = v12 - v11;
  v13 = sub_2705D75C4();
  v14 = OUTLINED_FUNCTION_23_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v39[1] = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35A0);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = v39 - v21;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_270470168();
  sub_2705D84C4();
  if (*(v2 + 8))
  {
    LOBYTE(v44) = 0;
    OUTLINED_FUNCTION_9_25();
    sub_2705D8034();
    if (v1)
    {
      goto LABEL_11;
    }
  }

  v23 = *(v2 + 32);
  if (v23 != 255)
  {
    v39[0] = v8;
    v24 = *(v2 + 16);
    v25 = *(v2 + 24);
    v44 = v24;
    v45 = v25;
    v46 = v23;
    v43 = 1;
    sub_27047029C();
    OUTLINED_FUNCTION_9_25();
    sub_2705D8084();
    if (!v1)
    {
      sub_270545C30(v24, v25, v23);
      v26 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
      v27 = sub_2705D7454();

      v44 = 0;
      v28 = [v26 dataWithJSONObject:v27 options:0 error:&v44];

      v29 = v44;
      if (v28)
      {
        v30 = sub_2705D44C4();
        v32 = v31;

        sub_2705D75A4();
        v44 = sub_2705D7584();
        v45 = v33;
        v43 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35B0);
        sub_2704702F0();
        OUTLINED_FUNCTION_9_25();
        sub_2705D8084();

        sub_27046DCA4(v30, v32);
        v8 = v39[0];
        goto LABEL_8;
      }

      v34 = v29;
      sub_2705D4364();

      swift_willThrow();
    }

LABEL_11:
    (*(v19 + 8))(v22, v17);
    goto LABEL_12;
  }

LABEL_8:
  v35 = type metadata accessor for JSServiceRequestIntent();
  v36 = v42;
  sub_2703EE6F4(v2 + *(v35 + 24), v42);
  if (__swift_getEnumTagSinglePayload(v36, 1, v8) != 1)
  {
    v38 = v40;
    v37 = v41;
    (*(v41 + 32))(v40, v36, v8);
    sub_2705D4394();
    LOBYTE(v44) = 3;
    OUTLINED_FUNCTION_9_25();
    sub_2705D8034();

    (*(v37 + 8))(v38, v8);
    goto LABEL_11;
  }

  (*(v19 + 8))(v22, v17);
  sub_2703C1634(v36, &unk_2807D4280);
LABEL_12:
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_27046FC34()
{
  v1 = v0;
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_2705D7D04();
  v30 = v27;
  v31 = v28;
  v10 = type metadata accessor for JSServiceRequestIntent();
  v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35C0);
  v11 = sub_2705D75D4();
  MEMORY[0x2743A3A90](v11);

  MEMORY[0x2743A3A90](0xD000000000000013, 0x80000002706140D0);
  v12 = *(v0 + 8);
  if (v12)
  {
    v27 = *v0;
    v28 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35B0);
    v13 = sub_2705D75D4();
    v15 = v14;
  }

  else
  {
    v13 = 0x656E696665646E75;
    v15 = 0xE900000000000064;
  }

  MEMORY[0x2743A3A90](v13, v15);

  MEMORY[0x2743A3A90](0x706F202020200A29, 0xEF203A736E6F6974);
  v16 = *(v0 + 32);
  if (v16 == 255)
  {
    v18 = 0x656E696665646E75;
    v20 = 0xE900000000000064;
  }

  else
  {
    v17 = *(v0 + 24);
    v27 = *(v0 + 16);
    v28 = v17;
    v29 = v16;
    sub_2703AE9FC(v27, v17, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35C8);
    v18 = sub_2705D75D4();
    v20 = v19;
  }

  MEMORY[0x2743A3A90](v18, v20);

  MEMORY[0x2743A3A90](0x7275202020200A29, 0xEB00000000203A6CLL);
  v21 = *(v10 + 24);
  sub_2703EE6F4(v0 + v21, v9);
  v22 = sub_2705D4484();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v22);
  sub_2703C1634(v9, &unk_2807D4280);
  if (EnumTagSinglePayload != 1)
  {
    sub_2703EE6F4(v1 + v21, v7);
    v3 = sub_2705D75D4();
    v2 = v24;
  }

  MEMORY[0x2743A3A90](v3, v2);

  MEMORY[0x2743A3A90](8194601, 0xE300000000000000);
  return v30;
}

unint64_t sub_27046FFAC()
{
  result = qword_2807D3570;
  if (!qword_2807D3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3570);
  }

  return result;
}

uint64_t sub_270470000(uint64_t a1)
{
  result = sub_27047036C(&qword_2807D3578, type metadata accessor for JSServiceRequestIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_270470058(uint64_t a1)
{
  v2 = type metadata accessor for JSServiceRequestIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2704700B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_270470124()
{
  result = qword_2807D3580;
  if (!qword_2807D3580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D3580);
  }

  return result;
}

unint64_t sub_270470168()
{
  result = qword_2807D3590;
  if (!qword_2807D3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3590);
  }

  return result;
}

unint64_t sub_2704701BC()
{
  result = qword_2807D3598;
  if (!qword_2807D3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3598);
  }

  return result;
}

uint64_t sub_270470210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSServiceRequestIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270470274(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_27046DCA4(a1, a2);
  }

  return a1;
}

uint64_t sub_270470288(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2703F6F50();
  }

  return result;
}

unint64_t sub_27047029C()
{
  result = qword_2807D35A8;
  if (!qword_2807D35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D35A8);
  }

  return result;
}

unint64_t sub_2704702F0()
{
  result = qword_2807D35B8;
  if (!qword_2807D35B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D35B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D35B8);
  }

  return result;
}

uint64_t sub_27047036C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2704703B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for JSServiceRequestIntent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x2704704F0);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27047052C()
{
  result = qword_2807D35D8;
  if (!qword_2807D35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D35D8);
  }

  return result;
}

unint64_t sub_270470584()
{
  result = qword_2807D35E0;
  if (!qword_2807D35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D35E0);
  }

  return result;
}

unint64_t sub_2704705DC()
{
  result = qword_2807D35E8;
  if (!qword_2807D35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D35E8);
  }

  return result;
}

uint64_t sub_270470690()
{
  OUTLINED_FUNCTION_2_2();
  v0[255] = v1;
  v0[254] = v2;
  v0[253] = v3;
  v4 = sub_2705D7D74();
  v0[256] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v0[257] = v5;
  v0[258] = swift_task_alloc();
  v0[259] = swift_task_alloc();
  v0[260] = swift_task_alloc();
  v0[261] = swift_task_alloc();
  v6 = sub_2705D7D84();
  v0[262] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v0[263] = v7;
  v0[264] = OUTLINED_FUNCTION_16_3();
  v8 = type metadata accessor for MessageViewStyle(0);
  v0[265] = v8;
  OUTLINED_FUNCTION_23_0(v8);
  v0[266] = OUTLINED_FUNCTION_16_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35F0);
  OUTLINED_FUNCTION_23_0(v9);
  v0[267] = OUTLINED_FUNCTION_16_3();
  v10 = type metadata accessor for SourceLookupType();
  v0[268] = v10;
  OUTLINED_FUNCTION_23_0(v10);
  v0[269] = OUTLINED_FUNCTION_16_3();
  v11 = type metadata accessor for JSStyleIntentModel();
  OUTLINED_FUNCTION_23_0(v11);
  v0[270] = OUTLINED_FUNCTION_16_3();
  v12 = sub_2705D6524();
  OUTLINED_FUNCTION_23_0(v12);
  v0[271] = OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_27047086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_7();
  if (qword_2807CE838 != -1)
  {
    swift_once();
  }

  v38 = qword_28081C4F8;
  *(v12 + 2176) = qword_28081C4F8;
  *(v12 + 2184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v13 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v13);
  *(v12 + 2192) = *(v14 + 72);
  *(v12 + 2240) = *(v15 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2705E6EB0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35F8);
  *(v12 + 2200) = v17;
  *(v12 + 80) = v17;
  *(v12 + 56) = &type metadata for JSStyleIntentImplementation;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    v20 = v12 + 1944;
    v21 = sub_2705D7564();
    v23 = v22;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v24 = OUTLINED_FUNCTION_32_4((v12 + 56));
    *(v12 + 496) = swift_getMetatypeMetadata();
    *(v12 + 472) = v24;
    sub_2705D64E4();
    sub_2703C2EFC(v12 + 472, &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    *(v12 + 1968) = MEMORY[0x277D837D0];
    *(v12 + 1944) = v21;
    *(v12 + 1952) = v23;
  }

  else
  {
    v20 = v12 + 1432;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v25 = OUTLINED_FUNCTION_32_4((v12 + 56));
    *(v12 + 1456) = swift_getMetatypeMetadata();
    *(v12 + 1432) = v25;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v20, &unk_2807D4890);
  v26 = *(v12 + 2160);
  v27 = *(v12 + 2032);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v12 + 56);
  sub_2705D64C4();
  sub_27047CE48(v16);

  sub_2704732FC(v27, v26, type metadata accessor for JSStyleIntentModel);
  type metadata accessor for MessagePageJavascriptService();
  v28 = swift_task_alloc();
  *(v12 + 2208) = v28;
  *v28 = v12;
  v28[1] = sub_270470B7C;
  OUTLINED_FUNCTION_33_7();

  return MEMORY[0x28217F228](v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12);
}

uint64_t sub_270470B7C()
{
  OUTLINED_FUNCTION_2_2();
  v2 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_270470C88()
{
  OUTLINED_FUNCTION_25_12();
  v1[277] = v1[252];
  v2 = swift_allocObject();
  v1[31] = &type metadata for JSStyleIntentImplementation;
  *(v2 + 16) = xmmword_2705E6EB0;
  v1[34] = v0;
  v3 = AMSLogKey();
  v4 = MEMORY[0x277D837D0];
  if (v3)
  {
    v5 = v3;
    v6 = (v1 + 75);
    v7 = sub_2705D7564();
    v9 = v8;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v1 + 31, v1[34]);
    DynamicType = swift_getDynamicType();
    v1[82] = swift_getMetatypeMetadata();
    v1[79] = DynamicType;
    sub_2705D64E4();
    sub_2703C2EFC((v1 + 79), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v1[78] = v4;
    v1[75] = v7;
    v1[76] = v9;
  }

  else
  {
    v6 = (v1 + 35);
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v1 + 31, v1[34]);
    v11 = swift_getDynamicType();
    v1[38] = swift_getMetatypeMetadata();
    v1[35] = v11;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v6, &unk_2807D4890);
  v12 = v1[270];
  v13 = v1[268];
  v14 = v1[267];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v1 + 31));
  sub_2705D64C4();
  sub_27047CF60(v2);

  sub_270472AA4(v12, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v13) == 1)
  {
    v15 = v1[275];
    sub_2703C2EFC(v1[267], &qword_2807D35F0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2705E10F0;
    v1[42] = v15;
    v1[39] = &type metadata for JSStyleIntentImplementation;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      v19 = (v1 + 55);
      v20 = sub_2705D7564();
      v22 = v21;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v23 = OUTLINED_FUNCTION_36_6();
      v1[54] = swift_getMetatypeMetadata();
      v1[51] = v23;
      sub_2705D64E4();
      sub_2703C2EFC((v1 + 51), &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      v1[58] = MEMORY[0x277D837D0];
      v1[55] = v20;
      v1[56] = v22;
    }

    else
    {
      v19 = (v1 + 43);
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v29 = OUTLINED_FUNCTION_36_6();
      v1[46] = swift_getMetatypeMetadata();
      v1[43] = v29;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v19, &unk_2807D4890);
    v30 = v1[270];
    OUTLINED_FUNCTION_35_5();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1((v1 + 39));
    sub_2705D64C4();
    v1[50] = type metadata accessor for JSServiceRequestIntent();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1 + 47);
    sub_2704732FC(v30, boxed_opaque_existential_1Tm, type metadata accessor for JSServiceRequestIntent);
    sub_2705D6544();
    sub_2703C2EFC((v1 + 47), &unk_2807D4890);
    sub_27047CF78(v16);

    OUTLINED_FUNCTION_0_38();
    sub_27047335C(v30, v32);
    OUTLINED_FUNCTION_1_40();
    OUTLINED_FUNCTION_20_11(v33, v34, v35, v36);

    OUTLINED_FUNCTION_1_4();

    return v37();
  }

  else
  {
    sub_2704733B4(v1[267], v1[269], type metadata accessor for SourceLookupType);
    v24 = swift_task_alloc();
    v1[278] = v24;
    *v24 = v1;
    v24[1] = sub_2704711FC;
    v25 = v1[270];
    v26 = v1[269];
    v27 = v1[266];

    return sub_270472CC4(v27, v25, v26);
  }
}

uint64_t sub_2704711FC()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v5 = v4;
  *(v6 + 2232) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_270471300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_7();
  v13 = v12[270];
  v14 = v12[269];
  v15 = v12[266];
  v16 = v12[253];

  OUTLINED_FUNCTION_8_28();
  sub_27047335C(v14, v17);
  OUTLINED_FUNCTION_0_38();
  sub_27047335C(v13, v18);
  sub_2704733B4(v15, v16, type metadata accessor for MessageViewStyle);
  OUTLINED_FUNCTION_1_40();
  v30 = v19;
  __swift_storeEnumTagSinglePayload(v12[253], 0, 1, v20);

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_33_7();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_270471414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_25_12();
  v14 = swift_allocObject();
  v13[15] = &type metadata for JSStyleIntentImplementation;
  *(v14 + 16) = xmmword_2705E6EB0;
  v13[18] = v12;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    v17 = sub_2705D7564();
    v19 = v18;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v13 + 15, v13[18]);
    DynamicType = swift_getDynamicType();
    v13[26] = swift_getMetatypeMetadata();
    v13[23] = DynamicType;
    sub_2705D64E4();
    sub_2703C2EFC((v13 + 23), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v13[27] = v17;
    v21 = (v13 + 27);
    v13[30] = MEMORY[0x277D837D0];
    v13[28] = v19;
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v13 + 15, v13[18]);
    v22 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v13[19] = v22;
    v21 = (v13 + 19);
    v13[22] = MetatypeMetadata;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v21, &unk_2807D4890);
  v24 = v13[270];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v13 + 15));
  sub_2705D64C4();
  sub_27047CF78(v14);

  OUTLINED_FUNCTION_0_38();
  sub_27047335C(v24, v25);
  OUTLINED_FUNCTION_1_40();
  v40 = v26;
  OUTLINED_FUNCTION_20_11(v27, v28, v29, v30);

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_33_7();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10, a11, a12);
}

uint64_t sub_270471680()
{
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2112);
  OUTLINED_FUNCTION_8_28();
  sub_27047335C(v8, v9);
  *(v0 + 2008) = v6;
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08);
  v184 = v0;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v11 = (*(*(v0 + 2104) + 88))(*(v0 + 2112), *(v0 + 2096));
  if (v11 != *MEMORY[0x277D84160])
  {
    if (v11 == *MEMORY[0x277D84170])
    {
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_3_39();

      (*(v4 + 96))(v2, v7);
      v177 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
      v25 = OUTLINED_FUNCTION_26_10();
      v26(v25);
      v27 = OUTLINED_FUNCTION_23_12();
      OUTLINED_FUNCTION_16_14(v27, xmmword_2705E10F0);
      *(v5 + 1104) = v28;
      *(v5 + 1080) = &type metadata for JSStyleIntentImplementation;
      v29 = AMSLogKey();
      if (v29)
      {
        v30 = v29;
        v31 = v5 + 1400;
        v32 = sub_2705D7564();
        v34 = v33;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        v35 = OUTLINED_FUNCTION_2_33((v5 + 1080));
        *(v5 + 1392) = swift_getMetatypeMetadata();
        *(v5 + 1368) = v35;
        sub_2705D64E4();
        sub_2703C2EFC(v5 + 1368, &unk_2807D4890);
        OUTLINED_FUNCTION_7_24();
        *(v5 + 1424) = MEMORY[0x277D837D0];
        *(v5 + 1400) = v32;
        *(v5 + 1408) = v34;
      }

      else
      {
        v31 = v5 + 1112;
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        v95 = OUTLINED_FUNCTION_2_33((v5 + 1080));
        *(v5 + 1136) = swift_getMetatypeMetadata();
        *(v5 + 1112) = v95;
      }

      sub_2705D64E4();
      OUTLINED_FUNCTION_31_7(v31);
      v170 = *(v5 + 2176);
      v172 = *(v5 + 2184);
      v173 = (*(v5 + 2240) + 32) & ~*(v5 + 2240);
      v175 = *(v5 + 2200);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v184 + 1080);
      v96 = sub_2705D8504();
      MEMORY[0x2743A3A90](v96);

      OUTLINED_FUNCTION_14_23();
      v97 = MEMORY[0x277D837D0];
      *(v184 + 1168) = MEMORY[0x277D837D0];
      *(v184 + 1144) = 0x272065756C6156;
      *(v184 + 1152) = 0xE700000000000000;
      sub_2705D6544();
      OUTLINED_FUNCTION_31_7(v184 + 1144);
      v98 = v184;
      v99 = sub_2705D7D64();
      *(v184 + 1200) = v97;
      *(v184 + 1176) = v99;
      *(v184 + 1184) = v100;
      sub_2705D6544();
      OUTLINED_FUNCTION_31_7(v184 + 1176);
      sub_27047CF78(v27);

      v101 = swift_allocObject();
      OUTLINED_FUNCTION_15_19(v101, v102, v103, v104, v105, v106, v107, v108, v170, v172, v173, v175, v177, v178, v109);
      *(v184 + 1232) = v110;
      *(v184 + 1208) = &type metadata for JSStyleIntentImplementation;
      v111 = AMSLogKey();
      if (v111)
      {
        v112 = v111;
        v113 = v184 + 1336;
        v114 = sub_2705D7564();
        v116 = v115;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        v117 = OUTLINED_FUNCTION_2_33((v184 + 1208));
        *(v184 + 1328) = swift_getMetatypeMetadata();
        *(v184 + 1304) = v117;
        sub_2705D64E4();
        sub_2703C2EFC(v184 + 1304, &unk_2807D4890);
        OUTLINED_FUNCTION_7_24();
        *(v184 + 1360) = v97;
        *(v184 + 1336) = v114;
        *(v184 + 1344) = v116;
      }

      else
      {
        v113 = v184 + 1240;
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        v118 = OUTLINED_FUNCTION_2_33((v184 + 1208));
        *(v184 + 1264) = swift_getMetatypeMetadata();
        *(v184 + 1240) = v118;
      }

      sub_2705D64E4();
      sub_2703C2EFC(v113, &unk_2807D4890);
      v185 = *(v184 + 2160);
      v119 = *(v98 + 2072);
      v120 = *(v98 + 2056);
      v121 = *(v98 + 2048);
      OUTLINED_FUNCTION_35_5();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v98 + 1208);
      OUTLINED_FUNCTION_11_23();
      OUTLINED_FUNCTION_22_11();
      sub_2705D64C4();
      v122 = sub_2705D7D54();
      *(v98 + 1296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3600);
      *(v98 + 1272) = v122;
      sub_2705D6544();
      sub_2703C2EFC(v98 + 1272, &unk_2807D4890);
      sub_27047CF78(v101);

      (*(v120 + 8))(v119, v121);
      OUTLINED_FUNCTION_0_38();
      sub_27047335C(v185, v123);

      goto LABEL_30;
    }

    if (v11 == *MEMORY[0x277D84158])
    {
      OUTLINED_FUNCTION_28_8();
      v181 = v36;
      v37 = *(v0 + 2112);
      v38 = *(v0 + 2104);
      v39 = *(v0 + 2096);
      v40 = *(v0 + 2080);
      OUTLINED_FUNCTION_3_39();

      (*(v38 + 96))(v37, v39);
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3608) + 48);
      sub_2703B291C(v37, v0 + 16);
      (*(v5 + 32))(v40, v37 + v42, v1);
      v43 = v0;
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_2705EB880;
      v179 = v44;
      *(v0 + 1488) = v181;
      *(v0 + 1464) = &type metadata for JSStyleIntentImplementation;
      v45 = AMSLogKey();
      if (v45)
      {
        v46 = v45;
        v47 = v0 + 1784;
        v48 = sub_2705D7564();
        v50 = v49;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        v51 = OUTLINED_FUNCTION_2_33((v0 + 1464));
        *(v184 + 1776) = swift_getMetatypeMetadata();
        *(v184 + 1752) = v51;
        sub_2705D64E4();
        sub_2703C2EFC(v184 + 1752, &unk_2807D4890);
        OUTLINED_FUNCTION_7_24();
        *(v184 + 1808) = MEMORY[0x277D837D0];
        *(v184 + 1784) = v48;
        *(v184 + 1792) = v50;
      }

      else
      {
        v47 = v0 + 1496;
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        v147 = OUTLINED_FUNCTION_2_33((v0 + 1464));
        *(v184 + 1520) = swift_getMetatypeMetadata();
        *(v184 + 1496) = v147;
      }

      sub_2705D64E4();
      sub_2703C2EFC(v47, &unk_2807D4890);
      v182 = *(v184 + 2200);
      OUTLINED_FUNCTION_35_5();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v184 + 1464);
      OUTLINED_FUNCTION_4_33();
      sub_2705D64C4();
      sub_2705D7D04();
      MEMORY[0x2743A3A90](0x272079654BLL, 0xE500000000000000);
      __swift_project_boxed_opaque_existential_1((v184 + 16), *(v184 + 40));
      sub_2705D8104();
      OUTLINED_FUNCTION_14_23();
      v148 = MEMORY[0x277D837D0];
      *(v184 + 1552) = MEMORY[0x277D837D0];
      *(v184 + 1528) = 0;
      *(v184 + 1536) = 0xE000000000000000;
      sub_2705D6544();
      sub_2703C2EFC(v184 + 1528, &unk_2807D4890);
      v149 = sub_2705D7D64();
      *(v184 + 1584) = v148;
      *(v184 + 1560) = v149;
      *(v184 + 1568) = v150;
      sub_2705D6544();
      sub_2703C2EFC(v184 + 1560, &unk_2807D4890);
      sub_27047CF78(v179);

      v151 = swift_allocObject();
      *(v151 + 16) = xmmword_2705E10F0;
      *(v43 + 1616) = v182;
      *(v43 + 1592) = &type metadata for JSStyleIntentImplementation;
      v152 = AMSLogKey();
      if (v152)
      {
        v153 = v152;
        v154 = v43 + 1720;
        v155 = sub_2705D7564();
        v157 = v156;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        v158 = OUTLINED_FUNCTION_2_33((v43 + 1592));
        *(v43 + 1712) = swift_getMetatypeMetadata();
        *(v43 + 1688) = v158;
        sub_2705D64E4();
        sub_2703C2EFC(v43 + 1688, &unk_2807D4890);
        OUTLINED_FUNCTION_7_24();
        *(v43 + 1744) = MEMORY[0x277D837D0];
        *(v43 + 1720) = v155;
        *(v43 + 1728) = v157;
      }

      else
      {
        v154 = v43 + 1624;
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        v159 = OUTLINED_FUNCTION_2_33((v43 + 1592));
        *(v43 + 1648) = swift_getMetatypeMetadata();
        *(v43 + 1624) = v159;
      }

      sub_2705D64E4();
      sub_2703C2EFC(v154, &unk_2807D4890);
      v183 = *(v43 + 2160);
      v160 = *(v43 + 2080);
      v161 = *(v43 + 2056);
      v162 = *(v43 + 2048);
      OUTLINED_FUNCTION_35_5();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v43 + 1592);
      OUTLINED_FUNCTION_11_23();
      OUTLINED_FUNCTION_22_11();
      sub_2705D64C4();
      v163 = sub_2705D7D54();
      *(v43 + 1680) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3600);
      *(v43 + 1656) = v163;
      sub_2705D6544();
      sub_2703C2EFC(v43 + 1656, &unk_2807D4890);
      sub_27047CF78(v151);

      (*(v161 + 8))(v160, v162);
      OUTLINED_FUNCTION_0_38();
      sub_27047335C(v183, v164);
      __swift_destroy_boxed_opaque_existential_1(v43 + 16);

      goto LABEL_30;
    }

    if (v11 == *MEMORY[0x277D84168])
    {
      OUTLINED_FUNCTION_28_8();
      v180 = v82;
      v83 = *(v0 + 2112);
      v84 = *(v0 + 2104);
      v85 = *(v0 + 2096);
      v86 = *(v0 + 2088);
      OUTLINED_FUNCTION_3_39();

      (*(v84 + 96))(v83, v85);
      (*(v5 + 32))(v86, v83, v1);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_2705E10F0;
      *(v0 + 1840) = v180;
      *(v0 + 1816) = &type metadata for JSStyleIntentImplementation;
      v89 = AMSLogKey();
      if (v89)
      {
        v90 = v89;
        v91 = v0 + 88;
        v92 = sub_2705D7564();
        v3 = v93;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        v94 = OUTLINED_FUNCTION_2_33((v0 + 1816));
        *(v184 + 1936) = swift_getMetatypeMetadata();
        *(v184 + 1912) = v94;
        sub_2705D64E4();
        sub_2703C2EFC(v184 + 1912, &unk_2807D4890);
        OUTLINED_FUNCTION_7_24();
        *(v184 + 112) = MEMORY[0x277D837D0];
        *(v184 + 88) = v92;
        *(v184 + 96) = v3;
      }

      else
      {
        v91 = v0 + 1848;
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        v165 = OUTLINED_FUNCTION_2_33((v0 + 1816));
        *(v184 + 1872) = swift_getMetatypeMetadata();
        *(v184 + 1848) = v165;
      }

      sub_2705D64E4();
      sub_2703C2EFC(v91, &unk_2807D4890);
      v166 = *(v184 + 2160);
      v167 = *(v184 + 2088);
      OUTLINED_FUNCTION_24_14();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v184 + 1816);
      OUTLINED_FUNCTION_4_33();
      sub_2705D64C4();
      *(v184 + 1904) = v3;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v184 + 1880));
      (*(v184 + 16))(boxed_opaque_existential_1Tm, v167, v3);
      sub_2705D6544();
      sub_2703C2EFC(v184 + 1880, &unk_2807D4890);
      sub_27047CF78(v88);

      (*(v184 + 8))(v167, v3);
      v79 = v184;
      OUTLINED_FUNCTION_0_38();
      v81 = v166;
      goto LABEL_16;
    }

    (*(*(v0 + 2104) + 8))(*(v0 + 2112), *(v0 + 2096));
LABEL_26:
    v124 = *(v0 + 2200);

    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_2705E10F0;
    *(v0 + 528) = v124;
    *(v0 + 504) = &type metadata for JSStyleIntentImplementation;
    v126 = AMSLogKey();
    v127 = MEMORY[0x277D837D0];
    if (v126)
    {
      v128 = v126;
      v129 = v0 + 696;
      v130 = sub_2705D7564();
      v132 = v131;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      __swift_project_boxed_opaque_existential_1((v0 + 504), *(v0 + 528));
      DynamicType = swift_getDynamicType();
      *(v0 + 688) = swift_getMetatypeMetadata();
      *(v0 + 664) = DynamicType;
      sub_2705D64E4();
      sub_2703C2EFC(v0 + 664, &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      *(v0 + 720) = v127;
      *(v0 + 696) = v130;
      *(v0 + 704) = v132;
    }

    else
    {
      v129 = v0 + 536;
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v134 = OUTLINED_FUNCTION_32_4((v0 + 504));
      *(v0 + 560) = swift_getMetatypeMetadata();
      *(v0 + 536) = v134;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v129, &unk_2807D4890);
    v135 = *(v0 + 2232);
    OUTLINED_FUNCTION_27_7();
    v137 = *(v136 + 2160);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v0 + 504);
    OUTLINED_FUNCTION_4_33();
    sub_2705D64C4();
    swift_getErrorValue();
    v138 = sub_2705D8344();
    *(v0 + 592) = v127;
    *(v0 + 568) = v138;
    *(v0 + 576) = v139;
    sub_2705D6544();
    sub_2703C2EFC(v0 + 568, &unk_2807D4890);
    sub_27047CF78(v125);

    OUTLINED_FUNCTION_0_38();
    sub_27047335C(v137, v140);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_3_39();

  (*(v4 + 96))(v2, v7);
  v176 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
  v13 = OUTLINED_FUNCTION_26_10();
  v14(v13);
  v15 = OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_16_14(v15, xmmword_2705E10F0);
  *(v5 + 752) = v16;
  *(v5 + 728) = &type metadata for JSStyleIntentImplementation;
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    v19 = v5 + 1048;
    v20 = sub_2705D7564();
    v22 = v21;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v23 = OUTLINED_FUNCTION_2_33((v5 + 728));
    *(v5 + 1040) = swift_getMetatypeMetadata();
    *(v5 + 1016) = v23;
    sub_2705D64E4();
    sub_2703C2EFC(v5 + 1016, &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    *(v5 + 1072) = MEMORY[0x277D837D0];
    *(v5 + 1048) = v20;
    *(v5 + 1056) = v22;
  }

  else
  {
    v19 = v5 + 760;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v52 = OUTLINED_FUNCTION_2_33((v5 + 728));
    *(v5 + 784) = swift_getMetatypeMetadata();
    *(v5 + 760) = v52;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v19, &unk_2807D4890);
  v53 = *(v5 + 2240);
  v171 = *(v5 + 2184);
  OUTLINED_FUNCTION_27_7();
  v174 = v54;
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v184 + 728);
  v55 = sub_2705D8504();
  MEMORY[0x2743A3A90](v55);

  MEMORY[0x2743A3A90](0x74616D73696D2027, 0xEB000000003A6863);
  v56 = MEMORY[0x277D837D0];
  *(v184 + 816) = MEMORY[0x277D837D0];
  *(v184 + 792) = 0x272065707954;
  *(v184 + 800) = 0xE600000000000000;
  sub_2705D6544();
  OUTLINED_FUNCTION_31_7(v184 + 792);
  v57 = sub_2705D7D64();
  *(v184 + 848) = v56;
  *(v184 + 824) = v57;
  *(v184 + 832) = v58;
  sub_2705D6544();
  OUTLINED_FUNCTION_31_7(v184 + 824);
  sub_27047CF78(v15);

  v59 = swift_allocObject();
  OUTLINED_FUNCTION_15_19(v59, v60, v61, v62, v63, v64, v65, v66, v169, v171, (v53 + 32) & ~v53, v174, v176, v178, v67);
  *(v184 + 880) = v68;
  *(v184 + 856) = &type metadata for JSStyleIntentImplementation;
  v69 = AMSLogKey();
  if (v69)
  {
    v70 = v69;
    v71 = v184 + 984;
    v53 = sub_2705D7564();
    v73 = v72;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v74 = OUTLINED_FUNCTION_2_33((v184 + 856));
    *(v184 + 976) = swift_getMetatypeMetadata();
    *(v184 + 952) = v74;
    sub_2705D64E4();
    sub_2703C2EFC(v184 + 952, &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    *(v184 + 1008) = v56;
    *(v184 + 984) = v53;
    *(v184 + 992) = v73;
  }

  else
  {
    v71 = v184 + 888;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v75 = OUTLINED_FUNCTION_2_33((v184 + 856));
    *(v184 + 912) = swift_getMetatypeMetadata();
    *(v184 + 888) = v75;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v71, &unk_2807D4890);
  v76 = *(v184 + 2160);
  v77 = *(v184 + 2064);
  OUTLINED_FUNCTION_24_14();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v184 + 856);
  OUTLINED_FUNCTION_11_23();
  OUTLINED_FUNCTION_22_11();
  sub_2705D64C4();
  v78 = sub_2705D7D54();
  *(v184 + 944) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3600);
  *(v184 + 920) = v78;
  sub_2705D6544();
  sub_2703C2EFC(v184 + 920, &unk_2807D4890);
  sub_27047CF78(v59);

  (*(v184 + 8))(v77, v53);
  v79 = v184;
  OUTLINED_FUNCTION_0_38();
  v81 = v76;
LABEL_16:
  sub_27047335C(v81, v80);

LABEL_30:
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_20_11(v141, v142, v143, v144);

  OUTLINED_FUNCTION_1_4();

  return v145();
}

uint64_t sub_270472AA4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_2705D4484();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JSServiceRequestIntent();
  sub_2703EE6F4(a1 + *(v12 + 24), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2703C2EFC(v7, &unk_2807D4280);
    v13 = (a1 + *(v12 + 28));
    v14 = v13[1];
    if (v14)
    {
      *a2 = *v13;
      *(a2 + 1) = v14;
      v15 = type metadata accessor for SourceLookupType();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(a2, 0, 1, v15);
    }

    v21 = type metadata accessor for SourceLookupType();
    v19 = a2;
    v20 = 1;
  }

  else
  {
    v17 = *(v9 + 32);
    v17(v11, v7, v8);
    v17(a2, v11, v8);
    v18 = type metadata accessor for SourceLookupType();
    swift_storeEnumTagMultiPayload();
    v19 = a2;
    v20 = 0;
    v21 = v18;
  }

  return __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
}

uint64_t sub_270472CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_270472CE8, 0, 0);
}

uint64_t sub_270472CE8()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_270472D0C, v1, 0);
}

uint64_t sub_270472D0C()
{
  OUTLINED_FUNCTION_2_2();
  sub_2704A8968(*(v0 + 40));
  *(v0 + 64) = v1;
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_270472D74()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    v3 = type metadata accessor for JSEngineCore();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08);
    *v2 = v0;
    v2[1] = sub_270472EB0;
    v5 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 16, v1, v3, v4, v5);
  }

  else
  {
    sub_270473414();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    OUTLINED_FUNCTION_1_4();

    return v7();
  }
}

uint64_t sub_270472EB0()
{
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_270472FDC()
{
  v1 = v0[2];
  v0[11] = v1;
  v8 = (*(*v1 + 104) + **(*v1 + 104));
  v2 = swift_task_alloc();
  v0[12] = v2;
  v3 = type metadata accessor for JSStyleIntentModel();
  v4 = sub_270473468();
  *v2 = v0;
  v2[1] = sub_27047311C;
  v5 = v0[3];
  v6 = v0[4];

  return v8(v5, v6, v3, v4);
}

uint64_t sub_27047311C()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_270473244()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704732A0()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704732FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_27047335C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2704733B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_270473414()
{
  result = qword_2807D3610;
  if (!qword_2807D3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3610);
  }

  return result;
}

unint64_t sub_270473468()
{
  result = qword_2807D3618;
  if (!qword_2807D3618)
  {
    type metadata accessor for JSStyleIntentModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3618);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_33(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_5_35()
{

  return sub_2705D6514();
}

uint64_t OUTLINED_FUNCTION_6_31()
{

  return sub_2705D6514();
}

uint64_t OUTLINED_FUNCTION_7_24()
{

  return sub_2705D6504();
}

uint64_t OUTLINED_FUNCTION_12_20()
{

  return sub_2705D6504();
}

void OUTLINED_FUNCTION_14_23()
{

  JUMPOUT(0x2743A3A90);
}

__n128 OUTLINED_FUNCTION_15_19(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(*(v4 + 2024), 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_23_12()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_14()
{

  return sub_2705D6504();
}

uint64_t OUTLINED_FUNCTION_31_7(uint64_t a1)
{

  return sub_2703C2EFC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_32_4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return sub_2705D6504();
}

uint64_t OUTLINED_FUNCTION_36_6()
{
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v1 + 336));

  return swift_getDynamicType();
}

uint64_t sub_27047389C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSServiceRequestIntent();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2704738F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSServiceRequestIntent();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for JSStyleIntentModel()
{
  result = qword_2807D3620;
  if (!qword_2807D3620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270473990()
{
  result = type metadata accessor for JSServiceRequestIntent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2704739FC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for JSServiceRequestIntent();
  OUTLINED_FUNCTION_0_39();
  a1[4] = sub_270474124(v3, v4);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);

  return sub_270470210(v1, boxed_opaque_existential_1Tm);
}

uint64_t sub_270473A70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4974736575716572 && a2 == 0xED0000746E65746ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_270473B14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3660);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270474068();
  sub_2705D84C4();
  type metadata accessor for JSServiceRequestIntent();
  OUTLINED_FUNCTION_0_39();
  sub_270474124(v8, v9);
  sub_2705D8084();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_270473C70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for JSServiceRequestIntent();
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3648);
  OUTLINED_FUNCTION_0();
  v20 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for JSStyleIntentModel();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270474068();
  sub_2705D8484();
  if (!v2)
  {
    v14 = v19;
    OUTLINED_FUNCTION_0_39();
    sub_270474124(v15, v16);
    v17 = v21;
    sub_2705D7FA4();
    (*(v20 + 8))(v10, v6);
    sub_2704740BC(v17, v13, type metadata accessor for JSServiceRequestIntent);
    sub_2704740BC(v13, v14, type metadata accessor for JSStyleIntentModel);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_270473ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270473A70(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_270473EF8(uint64_t a1)
{
  v2 = sub_270474068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270473F34(uint64_t a1)
{
  v2 = sub_270474068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270474010(uint64_t a1)
{
  result = sub_270474124(&qword_2807D3638, type metadata accessor for JSStyleIntentModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_270474068()
{
  result = qword_2807D3650;
  if (!qword_2807D3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3650);
  }

  return result;
}

uint64_t sub_2704740BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_270474124(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for JSStyleIntentModel.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x270474208);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_270474244()
{
  result = qword_2807D3670;
  if (!qword_2807D3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3670);
  }

  return result;
}

unint64_t sub_27047429C()
{
  result = qword_2807D3678;
  if (!qword_2807D3678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3678);
  }

  return result;
}

unint64_t sub_2704742F4()
{
  result = qword_2807D3680[0];
  if (!qword_2807D3680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2807D3680);
  }

  return result;
}

uint64_t sub_270474360()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2704743B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  __swift_allocate_boxed_opaque_existential_1Tm(&v10);
  OUTLINED_FUNCTION_4_4();
  (*(v7 + 32))();
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_2703B291C(&v10, v8 + 40 * a1 + 32);
}

void sub_270474448(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v16[3] = a4;
  v16[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v16);
  OUTLINED_FUNCTION_4_4();
  (*(v10 + 16))();
  v11 = sub_2703D51F4(a1, a3[1]);
  if (v12)
  {
    sub_270474544(a1, boxed_opaque_existential_1Tm, a3, a4, a5);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v16);
    return;
  }

  v13 = v11;
  v14 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_270435E80(v14);
  v14 = isUniquelyReferenced_nonNull_native;
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v13 < v14[2])
  {
    OUTLINED_FUNCTION_1_41(isUniquelyReferenced_nonNull_native);
    *a3 = v14;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_270474544(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v37[3] = a4;
  v37[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v37);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1Tm, a2, a4);
  sub_2703BD1EC(a1, v35);
  sub_2703B4E54(v37, &v36);
  sub_2703C1DF8(v35, v27, &qword_2807D23B8);
  sub_2704E8CB4();
  v10 = *(*a3 + 16);
  sub_2704E8D58(v10);
  v11 = v33;
  v12 = v34;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x28223BE20](v13);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v16 + 16))(v15);
  sub_2704743B4(v10, v15, a3, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v32);
  v17 = *a3;
  sub_2703D7E30(v27);
  sub_2703C1DF8(v35, v27, &qword_2807D23B8);
  v18 = *(v17 + 16) - 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2703BC4CC(v18, v27, isUniquelyReferenced_nonNull_native, v20, v21, v22, v23, v24, a3[1], v27[0], v28, v29, v30, v31, v32[0], v32[1], v32[2], v33, v34, v35[0], v35[1], v35[2], v35[3], v35[4]);
  a3[1] = v26;
  sub_270474A7C(v35, &qword_2807D23B8);
  sub_2703D7E30(v27);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_27047476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v18[3] = a5;
  v18[4] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18);
  OUTLINED_FUNCTION_4_4();
  (*(v12 + 16))();
  v13 = sub_2703D5508(a1, a2, a4[1]);
  if (v14)
  {
    sub_27047487C(a1, a2, boxed_opaque_existential_1Tm, a4, a5, a6);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v18);
    return;
  }

  v15 = v13;
  v16 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_270435E80(v16);
  v16 = isUniquelyReferenced_nonNull_native;
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v15 < v16[2])
  {
    OUTLINED_FUNCTION_1_41(isUniquelyReferenced_nonNull_native);
    *a4 = v16;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_27047487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v28[3] = a5;
  v28[4] = a6;
  __swift_allocate_boxed_opaque_existential_1Tm(v28);
  OUTLINED_FUNCTION_4_4();
  (*(v9 + 16))();
  v26[0] = a1;
  v26[1] = a2;
  sub_2703B4E54(v28, &v27);
  OUTLINED_FUNCTION_2_34();

  sub_2704E8CB4();
  v10 = *(*a4 + 16);
  sub_2704E8D58(v10);
  v11 = v24;
  v12 = v25;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  sub_2704743B4(v10, v15, a4, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v17 = *a4;

  OUTLINED_FUNCTION_2_34();
  v18 = *(v17 + 16) - 1;
  v19 = v22[1];
  v20 = v22[2];
  swift_isUniquelyReferenced_nonNull_native();
  v22[0] = a4[1];
  sub_2703BCC9C(v18, v19, v20);

  a4[1] = v22[0];
  sub_270474A7C(v26, &qword_2807D3708);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_270474A7C(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_4_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t *OUTLINED_FUNCTION_1_41(uint64_t a1, ...)
{
  va_start(va, a1);

  return __swift_assign_boxed_opaque_existential_1((v1 + 40 * v2 + 32), va);
}

uint64_t OUTLINED_FUNCTION_2_34()
{

  return sub_2703C1DF8(v1 - 160, v1 - 216, v0);
}

uint64_t sub_270474B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_270474BD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LabelComponentModel()
{
  result = qword_2807D3710;
  if (!qword_2807D3710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_270474CAC()
{
  sub_2704459D4();
  if (v0 <= 0x3F)
  {
    sub_270474EE8(319, &qword_2807D0150, MEMORY[0x277CE0AE0], type metadata accessor for CodableByProxy);
    if (v1 <= 0x3F)
    {
      sub_270474EE8(319, &qword_2807D3720, MEMORY[0x277CE09E0], type metadata accessor for CodableOptionalByProxy);
      if (v2 <= 0x3F)
      {
        sub_270474EE8(319, &qword_2807D3728, MEMORY[0x277CE0F78], type metadata accessor for CodableByProxy);
        if (v3 <= 0x3F)
        {
          sub_270474EE8(319, &qword_2807D3730, MEMORY[0x277CE1378], type metadata accessor for CodableByProxy);
          if (v4 <= 0x3F)
          {
            sub_270474EE8(319, &qword_2807D3738, MEMORY[0x277CDF720], type metadata accessor for CodableByProxy);
            if (v5 <= 0x3F)
            {
              sub_2703DFCDC(319, &qword_2807CF188, &qword_2807CF190);
              if (v6 <= 0x3F)
              {
                sub_270474EE8(319, &qword_2807CFE10, &unk_288052148, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_2703DFCDC(319, &qword_2807CF320, &qword_2807CF328);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_270474EE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_270474F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_42_3();
  a23 = v27;
  a24 = v28;
  v146 = v24;
  v30 = v29;
  v32 = v31;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3AC8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  v35 = v128 - v34;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3AD0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  v144 = v37;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0000);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_21_13(v39, v128[0]);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3AD8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  v141 = v41;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0020);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22_12(v43, v128[0]);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3AE0);
  OUTLINED_FUNCTION_1_42(v44, &a15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0040);
  OUTLINED_FUNCTION_1_42(v47, &a16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3AE8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_30_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0060);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v52);
  v54 = v128 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0050);
  v56 = OUTLINED_FUNCTION_1_42(v55, &a14);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_43_3();
  MEMORY[0x28223BE20](v57);
  v59 = v128 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0030);
  v61 = OUTLINED_FUNCTION_1_42(v60, &a19);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_93_0(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0010);
  v65 = OUTLINED_FUNCTION_1_42(v64, &a21);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFFF0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_16_15();
  if (v73)
  {
    v74 = OUTLINED_FUNCTION_10_10();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(v74);
    OUTLINED_FUNCTION_14();
    (*(v76 + 16))(v35, v146, v75);
    swift_storeEnumTagMultiPayload();
    sub_2703E2638();
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_71();
    sub_2703E2A50(v77);
    OUTLINED_FUNCTION_55_1();
    sub_2705D5434();
  }

  else
  {
    v129 = v59;
    v78 = v146;
    v130 = v72;
    v128[1] = v68;
    v131 = v32;
    v148[0] = *v30;
    v148[1] = v71;
    v79 = *(v30 + 32);
    v149 = *(v30 + 16);
    *v150 = v79;
    *&v150[9] = *(v30 + 41);
    sub_270417938();
    if (v80)
    {
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF40);
      OUTLINED_FUNCTION_14();
      (*(v82 + 16))(v26, v78, v81);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      sub_2703E2998();
      OUTLINED_FUNCTION_5_36();
      OUTLINED_FUNCTION_33_2();
      sub_2703E2A50(v83);
      OUTLINED_FUNCTION_90_0();
      sub_2705D5434();
    }

    else
    {
      sub_2705D56D4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF40);
      OUTLINED_FUNCTION_14();
      (*(v85 + 16))(v54, v78, v84);
      v86 = &v54[*(v51 + 36)];
      *v86 = v148;
      OUTLINED_FUNCTION_14_10(v86);
      OUTLINED_FUNCTION_47_2();
      sub_2703FC5C0(v87, v88, v89);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      sub_2703E2998();
      OUTLINED_FUNCTION_5_36();
      sub_2703E2A50(v90);
      OUTLINED_FUNCTION_90_0();
      sub_2705D5434();
      sub_2703C2EFC(v54, &qword_2807D0060);
    }

    v91 = v129;
    sub_2703FC3D4(v25, v129, &qword_2807D0050);
    sub_270417900();
    v92 = v138;
    if (v93)
    {
      sub_2703FC5C0(v91, v136, &qword_2807D0050);
      swift_storeEnumTagMultiPayload();
      sub_270414EE0();
      sub_2703E28E0();
      v94 = v134;
      sub_2705D5434();
    }

    else
    {
      sub_2705D56E4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_94_0();
      sub_2703FC5C0(v95, v96, v97);
      OUTLINED_FUNCTION_4_34(&v35[*(v135 + 36)]);
      OUTLINED_FUNCTION_19_9();
      sub_2703FC5C0(v98, v99, v100);
      swift_storeEnumTagMultiPayload();
      sub_270414EE0();
      sub_2703E28E0();
      v94 = v134;
      sub_2705D5434();
      OUTLINED_FUNCTION_71();
      sub_2703C2EFC(v101, v102);
    }

    v103 = v145;
    sub_2703C2EFC(v91, &qword_2807D0050);
    sub_2703FC3D4(v94, v103, &qword_2807D0030);
    sub_270416214();
    if (v104)
    {
      sub_2703FC5C0(v103, v141, &qword_2807D0030);
      swift_storeEnumTagMultiPayload();
      sub_270414E54();
      sub_2703E2828();
      v105 = v137;
      sub_2705D5434();
    }

    else
    {
      sub_2705D56F4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      v106 = v132;
      sub_2703FC5C0(v103, v132, &qword_2807D0030);
      OUTLINED_FUNCTION_4_34(v106 + *(v140 + 36));
      OUTLINED_FUNCTION_19_9();
      sub_2703FC5C0(v107, v108, v109);
      swift_storeEnumTagMultiPayload();
      sub_270414E54();
      sub_2703E2828();
      v105 = v137;
      v103 = v145;
      sub_2705D5434();
      OUTLINED_FUNCTION_71();
      sub_2703C2EFC(v110, v111);
    }

    sub_2703C2EFC(v103, &qword_2807D0030);
    sub_2703FC3D4(v105, v92, &qword_2807D0010);
    sub_27041624C();
    if (v112)
    {
      sub_2703FC5C0(v92, v144, &qword_2807D0010);
      swift_storeEnumTagMultiPayload();
      sub_270414DC8();
      sub_2703E26F0();
      sub_2705D5434();
    }

    else
    {
      sub_2705D5714();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      v113 = v133;
      sub_2703FC5C0(v92, v133, &qword_2807D0010);
      OUTLINED_FUNCTION_4_34(v113 + *(v143 + 36));
      OUTLINED_FUNCTION_19_9();
      sub_2703FC5C0(v114, v115, v116);
      swift_storeEnumTagMultiPayload();
      sub_270414DC8();
      sub_2703E26F0();
      OUTLINED_FUNCTION_62_2();
      sub_2705D5434();
      OUTLINED_FUNCTION_71();
      sub_2703C2EFC(v117, v118);
    }

    sub_2703C2EFC(v92, &qword_2807D0010);
    OUTLINED_FUNCTION_38_4();
    OUTLINED_FUNCTION_28_9();
    sub_2703FC3D4(v119, v120, v121);
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v122, v123, v124);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF40);
    sub_2703E2638();
    OUTLINED_FUNCTION_5_36();
    sub_2703E2A50(v125);
    sub_2705D5434();
    v126 = OUTLINED_FUNCTION_17_15();
    sub_2703C2EFC(v126, v127);
  }

  OUTLINED_FUNCTION_41_3();
}

void sub_270475A90()
{
  OUTLINED_FUNCTION_42_3();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  memcpy(__dst, v4, sizeof(__dst));
  v9 = *(v6 + 8);
  if (v9 == 254)
  {
    memcpy(v114, v4, 0xB9uLL);
    sub_27047ADF4(v114);
    v10 = OUTLINED_FUNCTION_63_1();
    v12 = memcpy(v10, v11, 0x17BuLL);
    OUTLINED_FUNCTION_86_1(v12, v115);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1498);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1518);
    sub_27041342C();
    sub_27041388C();
  }

  else
  {
    v116[0] = *v6;
    v116[1] = v9;
    v13 = *(v6 + 32);
    v117 = *(v6 + 16);
    v118[0] = v13;
    *(v118 + 9) = *(v6 + 41);
    v14 = sub_270417938();
    if (v15)
    {
      memcpy(v115, __dst, 0xB9uLL);
      sub_27047A558(v115);
      v16 = OUTLINED_FUNCTION_50_2();
      v18 = memcpy(v16, v17, 0xEAuLL);
      OUTLINED_FUNCTION_86_1(v18, v113);
      v19 = &qword_2807D1508;
    }

    else
    {
      v20 = v14;
      sub_2705D56D4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      memcpy(v114, v4, 0xB9uLL);
      OUTLINED_FUNCTION_69_1();
      memcpy(v21, v22, 0xC0uLL);
      LOBYTE(__src[24]) = v116;
      __src[25] = v20;
      __src[26] = v1;
      __src[27] = v2;
      __src[28] = v3;
      LOBYTE(__src[29]) = v105[0];
      v23 = OUTLINED_FUNCTION_63_1();
      v25 = memcpy(v23, v24, 0xC0uLL);
      LOBYTE(v113[24]) = v116;
      v113[25] = v20;
      v113[26] = v1;
      v113[27] = v2;
      v113[28] = v3;
      LOBYTE(v113[29]) = v105[0];
      OUTLINED_FUNCTION_86_1(v25, v115);
      sub_2703FC5C0(__src, v115, &qword_2807D1508);
      sub_2703C2EFC(v113, &qword_2807D1508);
      memcpy(v115, __src, 0xE9uLL);
      sub_27047A580(v115);
      v26 = OUTLINED_FUNCTION_50_2();
      memcpy(v26, v27, 0xEAuLL);
      v19 = OUTLINED_FUNCTION_92_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1518);
    sub_270413800();
    sub_27041388C();
    sub_2705D5434();
    memcpy(v110, v111, 0xEAuLL);
    v28 = sub_270417900();
    if (v29)
    {
      memcpy(v115, v110, 0xEAuLL);
      sub_27047A564(v115);
      v30 = OUTLINED_FUNCTION_50_2();
      memcpy(v30, v31, 0x11AuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D14E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D14F8);
      sub_2704136E8();
      sub_270413774();
      OUTLINED_FUNCTION_55_1();
      sub_2705D5434();
    }

    else
    {
      v32 = v28;
      sub_2705D56E4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      memcpy(v114, v110, 0xEAuLL);
      OUTLINED_FUNCTION_69_1();
      memcpy(v33, v34, 0xF0uLL);
      LOBYTE(__src[30]) = v116;
      __src[31] = v32;
      __src[32] = v1;
      __src[33] = v2;
      __src[34] = v3;
      LOBYTE(__src[35]) = v105[0];
      v35 = OUTLINED_FUNCTION_63_1();
      memcpy(v35, v36, 0xF0uLL);
      LOBYTE(v113[30]) = v116;
      v113[31] = v32;
      v113[32] = v1;
      v113[33] = v2;
      v113[34] = v3;
      LOBYTE(v113[35]) = v105[0];
      OUTLINED_FUNCTION_80_1(v110);
      OUTLINED_FUNCTION_81_0(__src);
      OUTLINED_FUNCTION_57_1();
      sub_2703C2EFC(v37, v38);
      memcpy(v115, __src, 0x119uLL);
      sub_27047A578(v115);
      v39 = OUTLINED_FUNCTION_50_2();
      v41 = memcpy(v39, v40, 0x11AuLL);
      OUTLINED_FUNCTION_95(v41, v42, v43, v44, v45, v46, v47, v48, v105[0]);
      v49 = OUTLINED_FUNCTION_62_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v49);
      OUTLINED_FUNCTION_85_1();
      sub_2704136E8();
      sub_270413774();
      OUTLINED_FUNCTION_59_2();
      OUTLINED_FUNCTION_33_2();
      sub_2703C2EFC(v50, v51);
      OUTLINED_FUNCTION_57_1();
      sub_2703C2EFC(v52, v53);
    }

    memcpy(v108, v109, 0x11AuLL);
    v54 = sub_270416214();
    if (v55)
    {
      memcpy(v115, v108, 0x11AuLL);
      sub_27047AE00(v115);
      v56 = OUTLINED_FUNCTION_50_2();
      memcpy(v56, v57, 0x14AuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D14C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D14D8);
      sub_2704135D0();
      sub_27041365C();
      OUTLINED_FUNCTION_55_1();
      sub_2705D5434();
    }

    else
    {
      v58 = v54;
      sub_2705D56F4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      memcpy(v114, v108, 0x11AuLL);
      OUTLINED_FUNCTION_69_1();
      memcpy(v59, v60, 0x120uLL);
      LOBYTE(__src[36]) = v116;
      __src[37] = v58;
      __src[38] = v1;
      __src[39] = v2;
      __src[40] = v3;
      LOBYTE(__src[41]) = v105[0];
      v61 = OUTLINED_FUNCTION_63_1();
      memcpy(v61, v62, 0x120uLL);
      LOBYTE(v113[36]) = v116;
      v113[37] = v58;
      v113[38] = v1;
      v113[39] = v2;
      v113[40] = v3;
      LOBYTE(v113[41]) = v105[0];
      OUTLINED_FUNCTION_80_1(v108);
      OUTLINED_FUNCTION_81_0(__src);
      OUTLINED_FUNCTION_57_1();
      sub_2703C2EFC(v63, v64);
      memcpy(v115, __src, 0x149uLL);
      sub_27047AE28(v115);
      v65 = OUTLINED_FUNCTION_50_2();
      v67 = memcpy(v65, v66, 0x14AuLL);
      OUTLINED_FUNCTION_95(v67, v68, v69, v70, v71, v72, v73, v74, v105[0]);
      v75 = OUTLINED_FUNCTION_62_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v75);
      OUTLINED_FUNCTION_85_1();
      sub_2704135D0();
      sub_27041365C();
      OUTLINED_FUNCTION_59_2();
      OUTLINED_FUNCTION_33_2();
      sub_2703C2EFC(v76, v77);
      OUTLINED_FUNCTION_57_1();
      sub_2703C2EFC(v78, v79);
    }

    memcpy(v106, v107, 0x14AuLL);
    v80 = sub_27041624C();
    if (v81)
    {
      memcpy(v115, v106, 0x14AuLL);
      sub_27047AE0C(v115);
      v82 = OUTLINED_FUNCTION_50_2();
      memcpy(v82, v83, 0x17AuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D14A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D14B8);
      sub_2704134B8();
      sub_270413544();
      OUTLINED_FUNCTION_55_1();
      sub_2705D5434();
    }

    else
    {
      v84 = v80;
      sub_2705D5714();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      memcpy(v114, v106, 0x14AuLL);
      LOBYTE(__src[0]) = 0;
      memcpy(v105, v114, 0x150uLL);
      LOBYTE(v105[42]) = v116;
      v105[43] = v84;
      v105[44] = v1;
      v105[45] = v2;
      v105[46] = v3;
      LOBYTE(v105[47]) = 0;
      v85 = OUTLINED_FUNCTION_63_1();
      memcpy(v85, v86, 0x150uLL);
      LOBYTE(v113[42]) = v116;
      v113[43] = v84;
      v113[44] = v1;
      v113[45] = v2;
      v113[46] = v3;
      LOBYTE(v113[47]) = 0;
      OUTLINED_FUNCTION_80_1(v106);
      OUTLINED_FUNCTION_81_0(v105);
      OUTLINED_FUNCTION_57_1();
      sub_2703C2EFC(v87, v88);
      memcpy(v115, v105, 0x179uLL);
      sub_27047AE20(v115);
      v89 = OUTLINED_FUNCTION_50_2();
      memcpy(v89, v90, 0x17AuLL);
      sub_2703FC5C0(v105, __src, &qword_2807D14A8);
      v91 = OUTLINED_FUNCTION_62_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v91);
      OUTLINED_FUNCTION_85_1();
      sub_2704134B8();
      sub_270413544();
      OUTLINED_FUNCTION_59_2();
      OUTLINED_FUNCTION_33_2();
      sub_2703C2EFC(v92, v93);
      OUTLINED_FUNCTION_57_1();
      sub_2703C2EFC(v94, v95);
    }

    memcpy(v114, __src, 0x17AuLL);
    sub_27047AE18(v114);
    v96 = OUTLINED_FUNCTION_63_1();
    memcpy(v96, v97, 0x17BuLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1498);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1518);
    sub_27041342C();
    sub_27041388C();
    OUTLINED_FUNCTION_33_2();
  }

  sub_2705D5434();
  memcpy(v113, v115, 0x17BuLL);
  memcpy(v8, v115, 0x17BuLL);
  v98 = OUTLINED_FUNCTION_50_2();
  memcpy(v98, v99, 0x17BuLL);
  OUTLINED_FUNCTION_28_9();
  sub_2703FC5C0(v100, v101, v102);
  OUTLINED_FUNCTION_71();
  sub_2703C2EFC(v103, v104);
  OUTLINED_FUNCTION_41_3();
}

uint64_t sub_2704762F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v3, sizeof(__dst));
  v6 = a1[1];
  if (v6 == 254)
  {
    memcpy(__src, v3, 0x59uLL);
    sub_270479F98(__src);
    memcpy(v57, __src, 0x11BuLL);
    sub_2703FC5C0(v3, v59, &qword_2807D37D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37D8);
    sub_270479FA4();
    sub_27047A404();
  }

  else
  {
    v60 = *a1;
    v61 = v6;
    v7 = *(a1 + 2);
    v62 = *(a1 + 1);
    v63[0] = v7;
    *(v63 + 9) = *(a1 + 41);
    sub_270417938();
    if (v8)
    {
      memcpy(v59, __dst, 0x59uLL);
      sub_27047A540(v59);
      memcpy(__src, v59, 0x8AuLL);
      sub_2703FC5C0(v3, v57, &qword_2807D37D8);
    }

    else
    {
      v9 = sub_2705D56D4();
      sub_2705D4D34();
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      memcpy(__src, v3, 0x59uLL);
      LOBYTE(v49[0]) = 0;
      memcpy(v56, __src, 0x60uLL);
      LOBYTE(v56[12]) = v9;
      v56[13] = v11;
      v56[14] = v13;
      v56[15] = v15;
      v56[16] = v17;
      LOBYTE(v56[17]) = 0;
      memcpy(v57, __src, 0x60uLL);
      LOBYTE(v57[12]) = v9;
      v57[13] = v11;
      v57[14] = v13;
      v57[15] = v15;
      v57[16] = v17;
      LOBYTE(v57[17]) = 0;
      sub_2703FC5C0(v3, v59, &qword_2807D37D8);
      sub_2703FC5C0(v56, v59, &qword_2807D3858);
      sub_2703C2EFC(v57, &qword_2807D3858);
      memcpy(v59, v56, 0x89uLL);
      sub_27047A590(v59);
      memcpy(__src, v59, 0x8AuLL);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3858);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37D8);
    sub_27047A378();
    sub_27047A404();
    sub_2705D5434();
    memcpy(v54, v55, 0x8AuLL);
    sub_270417900();
    if (v18)
    {
      memcpy(v59, v54, 0x8AuLL);
      sub_27047A54C(v59);
      memcpy(__src, v59, 0xBAuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3838);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3848);
      sub_27047A260();
      sub_27047A2EC();
      sub_2705D5434();
    }

    else
    {
      v19 = sub_2705D56E4();
      sub_2705D4D34();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      memcpy(__src, v54, 0x8AuLL);
      LOBYTE(v49[0]) = 0;
      memcpy(v56, __src, 0x90uLL);
      LOBYTE(v56[18]) = v19;
      v56[19] = v21;
      v56[20] = v23;
      v56[21] = v25;
      v56[22] = v27;
      LOBYTE(v56[23]) = 0;
      memcpy(v57, __src, 0x90uLL);
      LOBYTE(v57[18]) = v19;
      v57[19] = v21;
      v57[20] = v23;
      v57[21] = v25;
      v57[22] = v27;
      LOBYTE(v57[23]) = 0;
      sub_2703FC5C0(v54, v59, &qword_2807D3848);
      sub_2703FC5C0(v56, v59, &qword_2807D3838);
      sub_2703C2EFC(v57, &qword_2807D3838);
      memcpy(v59, v56, 0xB9uLL);
      sub_27047A588(v59);
      memcpy(__src, v59, 0xBAuLL);
      sub_2703FC5C0(v56, v49, &qword_2807D3838);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3838);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3848);
      sub_27047A260();
      sub_27047A2EC();
      sub_2705D5434();
      sub_2703C2EFC(v54, &qword_2807D3848);
      sub_2703C2EFC(v56, &qword_2807D3838);
    }

    memcpy(v52, v53, 0xBAuLL);
    sub_270416214();
    if (v28)
    {
      memcpy(v59, v52, 0xBAuLL);
      sub_27047A558(v59);
      memcpy(__src, v59, 0xEAuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3818);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3828);
      sub_27047A148();
      sub_27047A1D4();
      sub_2705D5434();
    }

    else
    {
      v29 = sub_2705D56F4();
      sub_2705D4D34();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      memcpy(__src, v52, 0xBAuLL);
      LOBYTE(v49[0]) = 0;
      memcpy(v56, __src, 0xC0uLL);
      LOBYTE(v56[24]) = v29;
      v56[25] = v31;
      v56[26] = v33;
      v56[27] = v35;
      v56[28] = v37;
      LOBYTE(v56[29]) = 0;
      memcpy(v57, __src, 0xC0uLL);
      LOBYTE(v57[24]) = v29;
      v57[25] = v31;
      v57[26] = v33;
      v57[27] = v35;
      v57[28] = v37;
      LOBYTE(v57[29]) = 0;
      sub_2703FC5C0(v52, v59, &qword_2807D3828);
      sub_2703FC5C0(v56, v59, &qword_2807D3818);
      sub_2703C2EFC(v57, &qword_2807D3818);
      memcpy(v59, v56, 0xE9uLL);
      sub_27047A580(v59);
      memcpy(__src, v59, 0xEAuLL);
      sub_2703FC5C0(v56, v49, &qword_2807D3818);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3818);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3828);
      sub_27047A148();
      sub_27047A1D4();
      sub_2705D5434();
      sub_2703C2EFC(v52, &qword_2807D3828);
      sub_2703C2EFC(v56, &qword_2807D3818);
    }

    memcpy(v50, v51, 0xEAuLL);
    sub_27041624C();
    if (v38)
    {
      memcpy(v59, v50, 0xEAuLL);
      sub_27047A564(v59);
      memcpy(__src, v59, 0x11AuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3808);
      sub_27047A030();
      sub_27047A0BC();
      sub_2705D5434();
    }

    else
    {
      v39 = sub_2705D5714();
      sub_2705D4D34();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      memcpy(__src, v50, 0xEAuLL);
      LOBYTE(v56[0]) = 0;
      memcpy(v49, __src, 0xF0uLL);
      LOBYTE(v49[30]) = v39;
      v49[31] = v41;
      v49[32] = v43;
      v49[33] = v45;
      v49[34] = v47;
      LOBYTE(v49[35]) = 0;
      memcpy(v57, __src, 0xF0uLL);
      LOBYTE(v57[30]) = v39;
      v57[31] = v41;
      v57[32] = v43;
      v57[33] = v45;
      v57[34] = v47;
      LOBYTE(v57[35]) = 0;
      sub_2703FC5C0(v50, v59, &qword_2807D3808);
      sub_2703FC5C0(v49, v59, &qword_2807D37F8);
      sub_2703C2EFC(v57, &qword_2807D37F8);
      memcpy(v59, v49, 0x119uLL);
      sub_27047A578(v59);
      memcpy(__src, v59, 0x11AuLL);
      sub_2703FC5C0(v49, v56, &qword_2807D37F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3808);
      sub_27047A030();
      sub_27047A0BC();
      sub_2705D5434();
      sub_2703C2EFC(v50, &qword_2807D3808);
      sub_2703C2EFC(v49, &qword_2807D37F8);
    }

    memcpy(__src, v56, 0x11AuLL);
    sub_27047A570(__src);
    memcpy(v57, __src, 0x11BuLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37D8);
    sub_270479FA4();
    sub_27047A404();
  }

  sub_2705D5434();
  memcpy(v57, v59, 0x11BuLL);
  memcpy(a2, v59, 0x11BuLL);
  memcpy(__src, v59, 0x11BuLL);
  sub_2703FC5C0(v57, v56, &qword_2807D3888);
  return sub_2703C2EFC(__src, &qword_2807D3888);
}

void sub_270476D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_42_3();
  a23 = v27;
  a24 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3898);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38A0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_93_0(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38A8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38B0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38B8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_21_13(v38, v138);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38C0);
  OUTLINED_FUNCTION_1_42(v39, &a16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38C8);
  OUTLINED_FUNCTION_1_42(v42, &a17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_22_12(v44, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38D0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_30_1();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38D8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_21_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38E0);
  v49 = OUTLINED_FUNCTION_1_42(v48, &a15);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_43_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_74_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38E8);
  v52 = OUTLINED_FUNCTION_1_42(v51, &a20);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38F0);
  v56 = OUTLINED_FUNCTION_1_42(v55, &a22);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  v58 = MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_54_2(v58, v59, v60, v61, v62, v63, v64, v65, v140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38F8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_16_15();
  if (v69)
  {
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v70, v71, v72);
    OUTLINED_FUNCTION_87_1();
    v73 = OUTLINED_FUNCTION_10_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v73);
    sub_27047A628();
    sub_27047AA88();
    OUTLINED_FUNCTION_28_9();
    sub_2705D5434();
  }

  else
  {
    OUTLINED_FUNCTION_11_24(v68);
    if (v74)
    {
      v25 = &unk_2705F34B8;
      OUTLINED_FUNCTION_47_2();
      sub_2703FC5C0(v75, v76, v77);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      v78 = OUTLINED_FUNCTION_76_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v78);
      sub_27047A9FC();
      sub_27047AA88();
      OUTLINED_FUNCTION_13_20();
    }

    else
    {
      sub_2705D56D4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      v79 = OUTLINED_FUNCTION_73_0();
      sub_2703FC5C0(v79, v80, v81);
      v82 = &v25[*(v46 + 36)];
      *v82 = v30;
      OUTLINED_FUNCTION_14_10(v82);
      v26 = &unk_2705F3490;
      v83 = OUTLINED_FUNCTION_44_2();
      sub_2703FC5C0(v83, v84, v85);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3900);
      sub_27047A9FC();
      sub_27047AA88();
      OUTLINED_FUNCTION_13_20();
      v86 = OUTLINED_FUNCTION_66_1();
      sub_2703C2EFC(v86, v87);
    }

    v88 = OUTLINED_FUNCTION_46_4();
    sub_2703FC3D4(v88, v89, v90);
    sub_270417900();
    OUTLINED_FUNCTION_65_1();
    if (v91)
    {
      v92 = OUTLINED_FUNCTION_49_3();
      sub_2703FC5C0(v92, v93, v94);
      OUTLINED_FUNCTION_60_2();
      sub_27047A8E4();
      sub_27047A970();
      OUTLINED_FUNCTION_23_13();
    }

    else
    {
      sub_2705D56E4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v95, v96, v97);
      OUTLINED_FUNCTION_0_40();
      v24 = v141;
      OUTLINED_FUNCTION_28_9();
      sub_2703FC5C0(v98, v99, v100);
      OUTLINED_FUNCTION_61_2();
      sub_27047A8E4();
      sub_27047A970();
      OUTLINED_FUNCTION_26_11();
      v101 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v101, v102);
    }

    sub_2703C2EFC(v26, &qword_2807D38E0);
    v103 = OUTLINED_FUNCTION_92_0();
    sub_2703FC3D4(v103, v104, v105);
    sub_270416214();
    if (v106)
    {
      v107 = OUTLINED_FUNCTION_67_1();
      sub_2703FC5C0(v107, v108, v109);
      OUTLINED_FUNCTION_84_0();
      sub_27047A7CC();
      sub_27047A858();
      OUTLINED_FUNCTION_25_13();
    }

    else
    {
      sub_2705D56F4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v110, v111, v112);
      OUTLINED_FUNCTION_0_40();
      v113 = OUTLINED_FUNCTION_14_24();
      sub_2703FC5C0(v113, v114, v115);
      OUTLINED_FUNCTION_79_1();
      v24 = sub_27047A7CC();
      sub_27047A858();
      OUTLINED_FUNCTION_24_15();
      v116 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v116, v117);
    }

    sub_2703C2EFC(v25, &qword_2807D38E8);
    sub_2703FC3D4(v24, v142, &qword_2807D38F0);
    sub_27041624C();
    if (v118)
    {
      v119 = OUTLINED_FUNCTION_72_0();
      sub_2703FC5C0(v119, v120, v121);
      OUTLINED_FUNCTION_83_0();
      sub_27047A6B4();
      sub_27047A740();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_51_2();
    }

    else
    {
      sub_2705D5714();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v122, v123, v124);
      OUTLINED_FUNCTION_0_40();
      v125 = OUTLINED_FUNCTION_14_24();
      sub_2703FC5C0(v125, v126, v127);
      OUTLINED_FUNCTION_78_1();
      sub_27047A6B4();
      sub_27047A740();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_45_3();
      v128 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v128, v129);
    }

    OUTLINED_FUNCTION_53_1();
    sub_2703C2EFC(v142, &qword_2807D38F0);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_28_9();
    sub_2703FC3D4(v130, v131, v132);
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v133, v134, v135);
    OUTLINED_FUNCTION_82_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3900);
    sub_27047A628();
    sub_27047AA88();
    OUTLINED_FUNCTION_35_6();
    OUTLINED_FUNCTION_71();
    sub_2703C2EFC(v136, v137);
  }

  OUTLINED_FUNCTION_41_3();
}

void sub_27047759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_42_3();
  a23 = v27;
  a24 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39C8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39D0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_93_0(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39D8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39E0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39E8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_21_13(v38, v138);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39F0);
  OUTLINED_FUNCTION_1_42(v39, &a16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39F8);
  OUTLINED_FUNCTION_1_42(v42, &a17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_22_12(v44, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A00);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_30_1();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A08);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_21_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A10);
  v49 = OUTLINED_FUNCTION_1_42(v48, &a15);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_43_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_74_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A18);
  v52 = OUTLINED_FUNCTION_1_42(v51, &a20);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A20);
  v56 = OUTLINED_FUNCTION_1_42(v55, &a22);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  v58 = MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_54_2(v58, v59, v60, v61, v62, v63, v64, v65, v140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A28);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_16_15();
  if (v69)
  {
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v70, v71, v72);
    OUTLINED_FUNCTION_87_1();
    v73 = OUTLINED_FUNCTION_10_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v73);
    sub_27047AE30();
    sub_27047B290();
    OUTLINED_FUNCTION_28_9();
    sub_2705D5434();
  }

  else
  {
    OUTLINED_FUNCTION_11_24(v68);
    if (v74)
    {
      v25 = &unk_2705F35B0;
      OUTLINED_FUNCTION_47_2();
      sub_2703FC5C0(v75, v76, v77);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      v78 = OUTLINED_FUNCTION_76_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v78);
      sub_27047B204();
      sub_27047B290();
      OUTLINED_FUNCTION_13_20();
    }

    else
    {
      sub_2705D56D4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      v79 = OUTLINED_FUNCTION_73_0();
      sub_2703FC5C0(v79, v80, v81);
      v82 = &v25[*(v46 + 36)];
      *v82 = v30;
      OUTLINED_FUNCTION_14_10(v82);
      v26 = &unk_2705F3588;
      v83 = OUTLINED_FUNCTION_44_2();
      sub_2703FC5C0(v83, v84, v85);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A30);
      sub_27047B204();
      sub_27047B290();
      OUTLINED_FUNCTION_13_20();
      v86 = OUTLINED_FUNCTION_66_1();
      sub_2703C2EFC(v86, v87);
    }

    v88 = OUTLINED_FUNCTION_46_4();
    sub_2703FC3D4(v88, v89, v90);
    sub_270417900();
    OUTLINED_FUNCTION_65_1();
    if (v91)
    {
      v92 = OUTLINED_FUNCTION_49_3();
      sub_2703FC5C0(v92, v93, v94);
      OUTLINED_FUNCTION_60_2();
      sub_27047B0EC();
      sub_27047B178();
      OUTLINED_FUNCTION_23_13();
    }

    else
    {
      sub_2705D56E4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v95, v96, v97);
      OUTLINED_FUNCTION_0_40();
      v24 = v141;
      OUTLINED_FUNCTION_28_9();
      sub_2703FC5C0(v98, v99, v100);
      OUTLINED_FUNCTION_61_2();
      sub_27047B0EC();
      sub_27047B178();
      OUTLINED_FUNCTION_26_11();
      v101 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v101, v102);
    }

    sub_2703C2EFC(v26, &qword_2807D3A10);
    v103 = OUTLINED_FUNCTION_92_0();
    sub_2703FC3D4(v103, v104, v105);
    sub_270416214();
    if (v106)
    {
      v107 = OUTLINED_FUNCTION_67_1();
      sub_2703FC5C0(v107, v108, v109);
      OUTLINED_FUNCTION_84_0();
      sub_27047AFD4();
      sub_27047B060();
      OUTLINED_FUNCTION_25_13();
    }

    else
    {
      sub_2705D56F4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v110, v111, v112);
      OUTLINED_FUNCTION_0_40();
      v113 = OUTLINED_FUNCTION_14_24();
      sub_2703FC5C0(v113, v114, v115);
      OUTLINED_FUNCTION_79_1();
      v24 = sub_27047AFD4();
      sub_27047B060();
      OUTLINED_FUNCTION_24_15();
      v116 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v116, v117);
    }

    sub_2703C2EFC(v25, &qword_2807D3A18);
    sub_2703FC3D4(v24, v142, &qword_2807D3A20);
    sub_27041624C();
    if (v118)
    {
      v119 = OUTLINED_FUNCTION_72_0();
      sub_2703FC5C0(v119, v120, v121);
      OUTLINED_FUNCTION_83_0();
      sub_27047AEBC();
      sub_27047AF48();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_51_2();
    }

    else
    {
      sub_2705D5714();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v122, v123, v124);
      OUTLINED_FUNCTION_0_40();
      v125 = OUTLINED_FUNCTION_14_24();
      sub_2703FC5C0(v125, v126, v127);
      OUTLINED_FUNCTION_78_1();
      sub_27047AEBC();
      sub_27047AF48();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_45_3();
      v128 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v128, v129);
    }

    OUTLINED_FUNCTION_53_1();
    sub_2703C2EFC(v142, &qword_2807D3A20);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_28_9();
    sub_2703FC3D4(v130, v131, v132);
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v133, v134, v135);
    OUTLINED_FUNCTION_82_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A30);
    sub_27047AE30();
    sub_27047B290();
    OUTLINED_FUNCTION_35_6();
    OUTLINED_FUNCTION_71();
    sub_2703C2EFC(v136, v137);
  }

  OUTLINED_FUNCTION_41_3();
}

void sub_270477DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_42_3();
  a23 = v27;
  a24 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39A0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39A8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_93_0(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1600);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39B0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1620);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_21_13(v38, v138);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39B8);
  OUTLINED_FUNCTION_1_42(v39, &a16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1640);
  OUTLINED_FUNCTION_1_42(v42, &a17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_22_12(v44, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_30_1();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1660);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_21_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1650);
  v49 = OUTLINED_FUNCTION_1_42(v48, &a15);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_43_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_74_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1630);
  v52 = OUTLINED_FUNCTION_1_42(v51, &a20);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1610);
  v56 = OUTLINED_FUNCTION_1_42(v55, &a22);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  v58 = MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_54_2(v58, v59, v60, v61, v62, v63, v64, v65, v140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D15F0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_16_15();
  if (v69)
  {
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v70, v71, v72);
    OUTLINED_FUNCTION_87_1();
    v73 = OUTLINED_FUNCTION_10_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v73);
    sub_270413F98();
    sub_2704143F8();
    OUTLINED_FUNCTION_28_9();
    sub_2705D5434();
  }

  else
  {
    OUTLINED_FUNCTION_11_24(v68);
    if (v74)
    {
      v25 = &unk_27060AED0;
      OUTLINED_FUNCTION_47_2();
      sub_2703FC5C0(v75, v76, v77);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      v78 = OUTLINED_FUNCTION_76_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v78);
      sub_27041436C();
      sub_2704143F8();
      OUTLINED_FUNCTION_13_20();
    }

    else
    {
      sub_2705D56D4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      v79 = OUTLINED_FUNCTION_73_0();
      sub_2703FC5C0(v79, v80, v81);
      v82 = &v25[*(v46 + 36)];
      *v82 = v30;
      OUTLINED_FUNCTION_14_10(v82);
      v26 = &unk_2705E7750;
      v83 = OUTLINED_FUNCTION_44_2();
      sub_2703FC5C0(v83, v84, v85);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1670);
      sub_27041436C();
      sub_2704143F8();
      OUTLINED_FUNCTION_13_20();
      v86 = OUTLINED_FUNCTION_66_1();
      sub_2703C2EFC(v86, v87);
    }

    v88 = OUTLINED_FUNCTION_46_4();
    sub_2703FC3D4(v88, v89, v90);
    sub_270417900();
    OUTLINED_FUNCTION_65_1();
    if (v91)
    {
      v92 = OUTLINED_FUNCTION_49_3();
      sub_2703FC5C0(v92, v93, v94);
      OUTLINED_FUNCTION_60_2();
      sub_270414254();
      sub_2704142E0();
      OUTLINED_FUNCTION_23_13();
    }

    else
    {
      sub_2705D56E4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v95, v96, v97);
      OUTLINED_FUNCTION_0_40();
      v24 = v141;
      OUTLINED_FUNCTION_28_9();
      sub_2703FC5C0(v98, v99, v100);
      OUTLINED_FUNCTION_61_2();
      sub_270414254();
      sub_2704142E0();
      OUTLINED_FUNCTION_26_11();
      v101 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v101, v102);
    }

    sub_2703C2EFC(v26, &qword_2807D1650);
    v103 = OUTLINED_FUNCTION_92_0();
    sub_2703FC3D4(v103, v104, v105);
    sub_270416214();
    if (v106)
    {
      v107 = OUTLINED_FUNCTION_67_1();
      sub_2703FC5C0(v107, v108, v109);
      OUTLINED_FUNCTION_84_0();
      sub_27041413C();
      sub_2704141C8();
      OUTLINED_FUNCTION_25_13();
    }

    else
    {
      sub_2705D56F4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v110, v111, v112);
      OUTLINED_FUNCTION_0_40();
      v113 = OUTLINED_FUNCTION_14_24();
      sub_2703FC5C0(v113, v114, v115);
      OUTLINED_FUNCTION_79_1();
      v24 = sub_27041413C();
      sub_2704141C8();
      OUTLINED_FUNCTION_24_15();
      v116 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v116, v117);
    }

    sub_2703C2EFC(v25, &qword_2807D1630);
    sub_2703FC3D4(v24, v142, &qword_2807D1610);
    sub_27041624C();
    if (v118)
    {
      v119 = OUTLINED_FUNCTION_72_0();
      sub_2703FC5C0(v119, v120, v121);
      OUTLINED_FUNCTION_83_0();
      sub_270414024();
      sub_2704140B0();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_51_2();
    }

    else
    {
      sub_2705D5714();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v122, v123, v124);
      OUTLINED_FUNCTION_0_40();
      v125 = OUTLINED_FUNCTION_14_24();
      sub_2703FC5C0(v125, v126, v127);
      OUTLINED_FUNCTION_78_1();
      sub_270414024();
      sub_2704140B0();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_45_3();
      v128 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v128, v129);
    }

    OUTLINED_FUNCTION_53_1();
    sub_2703C2EFC(v142, &qword_2807D1610);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_28_9();
    sub_2703FC3D4(v130, v131, v132);
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v133, v134, v135);
    OUTLINED_FUNCTION_82_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1670);
    sub_270413F98();
    sub_2704143F8();
    OUTLINED_FUNCTION_35_6();
    OUTLINED_FUNCTION_71();
    sub_2703C2EFC(v136, v137);
  }

  OUTLINED_FUNCTION_41_3();
}

uint64_t sub_270478654@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21_2();
  type metadata accessor for LabelComponentModel();
  OUTLINED_FUNCTION_55_1();
  sub_2703FC5C0(v4, v5, v6);
  return sub_2703FC3D4(v1, a1, &qword_2807CF190);
}

double sub_270478708()
{
  v1 = type metadata accessor for LabelComponentModel();
  v2 = sub_2703FC5C0(v0 + *(v1 + 48), &v13, &qword_2807CF2D8);
  *&result = OUTLINED_FUNCTION_11_9(v2, v3, v4, v5, v6, v7, v8, v9, v12, v10, v13, v14).n128_u64[0];
  return result;
}

uint64_t sub_27047875C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1953394534 && a2 == 0xE400000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x67696557746E6F66 && a2 == 0xEA00000000007468;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x756F726765726F66 && a2 == 0xEF726F6C6F43646ELL;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000002706141D0 == a2;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001FLL && 0x80000002706141F0 == a2;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000002706137E0 == a2;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
                if (v12 || (sub_2705D8134() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6575676573 && a2 == 0xE500000000000000;
                  if (v13 || (sub_2705D8134() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_2705D8134();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_270478A74(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1953394534;
      break;
    case 2:
      result = 0x67696557746E6F66;
      break;
    case 3:
      result = 0x756F726765726F66;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x676E6964646170;
      break;
    case 8:
      result = 0x6575676573;
      break;
    case 9:
      result = 1954047348;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270478BB4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3788);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v21[-v6];
  v8 = OUTLINED_FUNCTION_45_1();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_270479814();
  sub_2705D84C4();
  LOBYTE(v22) = 0;
  v10 = OUTLINED_FUNCTION_45_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  OUTLINED_FUNCTION_32_5(&unk_2807D29C0);
  OUTLINED_FUNCTION_6_1();
  sub_2705D8084();
  if (!v1)
  {
    *&v22 = *(v0 + 40);
    v25 = 1;

    v11 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11);
    OUTLINED_FUNCTION_8_29(&unk_2807D01E0);
    OUTLINED_FUNCTION_12_21();

    v12 = *(v0 + 56);
    *&v22 = *(v0 + 48);
    BYTE8(v22) = v12;
    v25 = 2;
    v13 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13);
    OUTLINED_FUNCTION_32_5(&unk_2807D3798);
    OUTLINED_FUNCTION_12_21();
    *&v22 = *(v0 + 64);
    v25 = 3;

    v15 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15);
    OUTLINED_FUNCTION_8_29(&unk_2807D37A0);
    OUTLINED_FUNCTION_12_21();

    v22 = *(v0 + 72);
    v25 = 4;
    v16 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16);
    OUTLINED_FUNCTION_8_29(&unk_2807D37A8);
    OUTLINED_FUNCTION_12_21();
    LOBYTE(v22) = *(v0 + 88);
    v25 = 5;
    v17 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17);
    OUTLINED_FUNCTION_8_29(&unk_2807D37B0);
    OUTLINED_FUNCTION_12_21();
    v18 = type metadata accessor for LabelComponentModel();
    v25 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    sub_2703E1004();
    OUTLINED_FUNCTION_28_9();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    v19 = (v0 + *(v18 + 44));
    v20 = v19[1];
    v22 = *v19;
    v23 = v20;
    *v24 = v19[2];
    *&v24[9] = *(v19 + 41);
    v21[15] = 7;
    sub_2703E10C0();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8024();
    LOBYTE(v22) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    sub_270479868(&qword_2807CFE98);
    OUTLINED_FUNCTION_28_9();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    LOBYTE(v22) = 9;
    OUTLINED_FUNCTION_6_1();
    sub_2705D8034();
  }

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_270479000@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42[0] = a2;
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3748);
  OUTLINED_FUNCTION_0();
  v43 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_2();
  v10 = type metadata accessor for LabelComponentModel();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v11);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 5) = sub_2705D5774();
  *(v13 + 6) = 0;
  v13[56] = 1;
  *(v13 + 8) = sub_2705D5D54();
  *(v13 + 9) = sub_2705D60B4();
  *(v13 + 10) = v14;
  v13[88] = 0;
  v15 = v10[10];
  v16 = sub_2705D6A54();
  v47 = v15;
  __swift_storeEnumTagSinglePayload(&v13[v15], 1, 1, v16);
  v17 = &v13[v10[12]];
  *&v52[0] = 0;
  v50 = 0u;
  v51 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v45 = v17;
  sub_2703F92B0(&v50, v17, &unk_2807CF480);
  v18 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_270479814();
  v19 = v44;
  sub_2705D8484();
  if (v19)
  {
    v22 = v45;
    __swift_destroy_boxed_opaque_existential_1(v46);

    sub_2703C2EFC(&v13[v47], &qword_2807CF130);
    return sub_2703C2EFC(v22, &qword_2807CF2D8);
  }

  else
  {
    v44 = v6;
    v20 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20);
    LOBYTE(v48) = 0;
    OUTLINED_FUNCTION_32_5(&unk_2807D29A8);
    OUTLINED_FUNCTION_37_4();
    sub_2705D7FA4();
    v21 = v7;
    v24 = v51;
    *v13 = v50;
    *(v13 + 1) = v24;
    *(v13 + 4) = *&v52[0];
    v25 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25);
    LOBYTE(v48) = 1;
    OUTLINED_FUNCTION_7_25(&unk_2807D01C8);
    OUTLINED_FUNCTION_18_12();
    v26 = v45;
    v27 = v50;

    *(v13 + 5) = v27;
    v54 = 2;
    if ((sub_2705D7FC4() & 1) != 0 && (OUTLINED_FUNCTION_37_4(), (sub_2705D7FD4() & 1) == 0))
    {
      OUTLINED_FUNCTION_37_4();
      sub_2705D7EF4();
      sub_27044AC6C();
      v28 = v48;
      v29 = v49;
    }

    else
    {
      v28 = 0;
      v29 = 1;
    }

    *(v13 + 6) = v28;
    v13[56] = v29;
    v30 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v30);
    LOBYTE(v48) = 3;
    OUTLINED_FUNCTION_7_25(&unk_2807D3760);
    OUTLINED_FUNCTION_18_12();
    v31 = v50;

    *(v13 + 8) = v31;
    v32 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v32);
    LOBYTE(v48) = 4;
    OUTLINED_FUNCTION_7_25(&unk_2807D3770);
    OUTLINED_FUNCTION_18_12();
    *(v13 + 72) = v50;
    v33 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33);
    LOBYTE(v48) = 5;
    OUTLINED_FUNCTION_7_25(&unk_2807D3780);
    OUTLINED_FUNCTION_18_12();
    v13[88] = v50;
    LOBYTE(v50) = 6;
    sub_2703E0C88();
    v34 = v44;
    OUTLINED_FUNCTION_37_4();
    sub_2705D7FA4();
    v35 = v43;
    sub_2703F92B0(v34, &v13[v47], &qword_2807CF130);
    v54 = 7;
    sub_2703E0E1C();
    OUTLINED_FUNCTION_37_4();
    sub_2705D7F44();
    v36 = &v13[v10[11]];
    v37 = v51;
    *v36 = v50;
    *(v36 + 1) = v37;
    *(v36 + 2) = v52[0];
    *(v36 + 41) = *(v52 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    v53 = 8;
    sub_270479868(&qword_2807CFE48);
    OUTLINED_FUNCTION_37_4();
    sub_2705D7FA4();
    sub_2703F92B0(&v48, v26, &qword_2807CF2D8);
    LOBYTE(v48) = 9;
    OUTLINED_FUNCTION_37_4();
    v38 = sub_2705D7F54();
    v40 = v39;
    (*(v35 + 8))(v2, v21);
    v41 = &v13[v10[13]];
    *v41 = v38;
    v41[1] = v40;
    sub_2704798F8(v13, v42[0]);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return sub_27047995C(v13);
  }
}

uint64_t sub_2704796F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27047875C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27047971C(uint64_t a1)
{
  v2 = sub_270479814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270479758(uint64_t a1)
{
  v2 = sub_270479814();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_270479814()
{
  result = qword_2807D3750;
  if (!qword_2807D3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3750);
  }

  return result;
}

unint64_t sub_270479868(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF2D8);
    sub_2703E2A50(v4);
    OUTLINED_FUNCTION_76_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2704798F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabelComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27047995C(uint64_t a1)
{
  v2 = type metadata accessor for LabelComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for LabelComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x270479A84);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270479AC0()
{
  result = qword_2807D37B8;
  if (!qword_2807D37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D37B8);
  }

  return result;
}

unint64_t sub_270479B18()
{
  result = qword_2807D37C0;
  if (!qword_2807D37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D37C0);
  }

  return result;
}

unint64_t sub_270479B70()
{
  result = qword_2807D37C8;
  if (!qword_2807D37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D37C8);
  }

  return result;
}

void *sub_270479C24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = type metadata accessor for LabelComponentModel();
  v3 = (a1 + *(v26 + 52));
  v4 = v3[1];
  __src[0] = *v3;
  __src[1] = v4;
  sub_2703C2F54();

  sub_2705D5944();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_57_1();
  v5 = sub_2705D5914();
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_62_2();
  sub_2703CEDB0(v10, v11, v12);

  sub_2705D58E4();
  OUTLINED_FUNCTION_91_0();
  sub_2703CEDB0(v5, v7, v9 & 1);

  __src[0] = *(a1 + 64);

  OUTLINED_FUNCTION_57_1();
  v13 = sub_2705D58F4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = OUTLINED_FUNCTION_62_2();
  sub_2703CEDB0(v20, v21, v22);

  sub_2705D4E64();
  LOBYTE(__src[0]) = v17 & 1;
  LOBYTE(v4) = *(a1 + 88);
  v33[0] = v13;
  v33[1] = v15;
  v34 = v17 & 1;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v35 = v19;
  KeyPath = swift_getKeyPath();
  v40 = v4;
  v23 = (a1 + *(v26 + 44));
  v24 = v23[2];
  v31[1] = v23[1];
  v32[0] = v24;
  *(v32 + 9) = *(v23 + 41);
  v31[0] = *v23;
  sub_2704762F0(v31, __src);
  sub_2703C2EFC(v33, &qword_2807D37D8);
  return memcpy(a2, __src, 0x11BuLL);
}

unint64_t sub_270479E4C()
{
  result = qword_2807D37D0;
  if (!qword_2807D37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D37D0);
  }

  return result;
}

unint64_t sub_270479F4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_270479FA4()
{
  result = qword_2807D37E8;
  if (!qword_2807D37E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D37E0);
    sub_27047A030();
    sub_27047A0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D37E8);
  }

  return result;
}

unint64_t sub_27047A030()
{
  result = qword_2807D37F0;
  if (!qword_2807D37F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D37F8);
    sub_27047A0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D37F0);
  }

  return result;
}

unint64_t sub_27047A0BC()
{
  result = qword_2807D3800;
  if (!qword_2807D3800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3808);
    sub_27047A148();
    sub_27047A1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3800);
  }

  return result;
}

unint64_t sub_27047A148()
{
  result = qword_2807D3810;
  if (!qword_2807D3810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3818);
    sub_27047A1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3810);
  }

  return result;
}

unint64_t sub_27047A1D4()
{
  result = qword_2807D3820;
  if (!qword_2807D3820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3828);
    sub_27047A260();
    sub_27047A2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3820);
  }

  return result;
}

unint64_t sub_27047A260()
{
  result = qword_2807D3830;
  if (!qword_2807D3830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3838);
    sub_27047A2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3830);
  }

  return result;
}

unint64_t sub_27047A2EC()
{
  result = qword_2807D3840;
  if (!qword_2807D3840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3848);
    sub_27047A378();
    sub_27047A404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3840);
  }

  return result;
}

unint64_t sub_27047A378()
{
  result = qword_2807D3850;
  if (!qword_2807D3850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3858);
    sub_27047A404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3850);
  }

  return result;
}

unint64_t sub_27047A404()
{
  result = qword_2807D3860;
  if (!qword_2807D3860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D37D8);
    sub_27047A4BC();
    sub_2703E2A50(&unk_2807D3878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3860);
  }

  return result;
}

unint64_t sub_27047A4BC()
{
  result = qword_2807D3868;
  if (!qword_2807D3868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3868);
  }

  return result;
}

unint64_t sub_27047A59C()
{
  result = qword_2807D3890;
  if (!qword_2807D3890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3888);
    sub_270479FA4();
    sub_27047A404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3890);
  }

  return result;
}

unint64_t sub_27047A628()
{
  result = qword_2807D3908;
  if (!qword_2807D3908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38F8);
    sub_27047A6B4();
    sub_27047A740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3908);
  }

  return result;
}

unint64_t sub_27047A6B4()
{
  result = qword_2807D3910;
  if (!qword_2807D3910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38A8);
    sub_27047A740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3910);
  }

  return result;
}

unint64_t sub_27047A740()
{
  result = qword_2807D3918;
  if (!qword_2807D3918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38F0);
    sub_27047A7CC();
    sub_27047A858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3918);
  }

  return result;
}

unint64_t sub_27047A7CC()
{
  result = qword_2807D3920;
  if (!qword_2807D3920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38B8);
    sub_27047A858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3920);
  }

  return result;
}

unint64_t sub_27047A858()
{
  result = qword_2807D3928;
  if (!qword_2807D3928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38E8);
    sub_27047A8E4();
    sub_27047A970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3928);
  }

  return result;
}

unint64_t sub_27047A8E4()
{
  result = qword_2807D3930;
  if (!qword_2807D3930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38C8);
    sub_27047A970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3930);
  }

  return result;
}

unint64_t sub_27047A970()
{
  result = qword_2807D3938;
  if (!qword_2807D3938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38E0);
    sub_27047A9FC();
    sub_27047AA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3938);
  }

  return result;
}

unint64_t sub_27047A9FC()
{
  result = qword_2807D3940;
  if (!qword_2807D3940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38D8);
    sub_27047AA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3940);
  }

  return result;
}

unint64_t sub_27047AA88()
{
  result = qword_2807D3948;
  if (!qword_2807D3948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3900);
    sub_27047AB40();
    sub_2703E2A50(&unk_2807D0B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3948);
  }

  return result;
}

unint64_t sub_27047AB40()
{
  result = qword_2807D3950;
  if (!qword_2807D3950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3958);
    sub_27047ABF8();
    sub_2703E2A50(&qword_2807D0080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3950);
  }

  return result;
}

unint64_t sub_27047ABF8()
{
  result = qword_2807D3960;
  if (!qword_2807D3960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3968);
    sub_27047ACB0();
    sub_2703E2A50(&qword_2807D0B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3960);
  }

  return result;
}

unint64_t sub_27047ACB0()
{
  result = qword_2807D3970;
  if (!qword_2807D3970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3978);
    sub_27047AD3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3970);
  }

  return result;
}

unint64_t sub_27047AD3C()
{
  result = qword_2807D3980;
  if (!qword_2807D3980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3988);
    sub_2703E2A50(&unk_2807D3990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3980);
  }

  return result;
}

unint64_t sub_27047AE30()
{
  result = qword_2807D3A38;
  if (!qword_2807D3A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A28);
    sub_27047AEBC();
    sub_27047AF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A38);
  }

  return result;
}

unint64_t sub_27047AEBC()
{
  result = qword_2807D3A40;
  if (!qword_2807D3A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D39D8);
    sub_27047AF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A40);
  }

  return result;
}

unint64_t sub_27047AF48()
{
  result = qword_2807D3A48;
  if (!qword_2807D3A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A20);
    sub_27047AFD4();
    sub_27047B060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A48);
  }

  return result;
}

unint64_t sub_27047AFD4()
{
  result = qword_2807D3A50;
  if (!qword_2807D3A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D39E8);
    sub_27047B060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A50);
  }

  return result;
}

unint64_t sub_27047B060()
{
  result = qword_2807D3A58;
  if (!qword_2807D3A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A18);
    sub_27047B0EC();
    sub_27047B178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A58);
  }

  return result;
}

unint64_t sub_27047B0EC()
{
  result = qword_2807D3A60;
  if (!qword_2807D3A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D39F8);
    sub_27047B178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A60);
  }

  return result;
}

unint64_t sub_27047B178()
{
  result = qword_2807D3A68;
  if (!qword_2807D3A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A10);
    sub_27047B204();
    sub_27047B290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A68);
  }

  return result;
}

unint64_t sub_27047B204()
{
  result = qword_2807D3A70;
  if (!qword_2807D3A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A08);
    sub_27047B290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A70);
  }

  return result;
}

unint64_t sub_27047B290()
{
  result = qword_2807D3A78;
  if (!qword_2807D3A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A30);
    sub_27047B348();
    sub_2703E2A50(&unk_2807D3AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A78);
  }

  return result;
}

unint64_t sub_27047B348()
{
  result = qword_2807D3A80;
  if (!qword_2807D3A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A88);
    sub_27047B3D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A80);
  }

  return result;
}

unint64_t sub_27047B3D4()
{
  result = qword_2807D3A90;
  if (!qword_2807D3A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A98);
    sub_27047B460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A90);
  }

  return result;
}

unint64_t sub_27047B460()
{
  result = qword_2807D3AA0;
  if (!qword_2807D3AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3AA8);
    sub_2703E2A50(&unk_2807D3AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3AA0);
  }

  return result;
}

void OUTLINED_FUNCTION_0_40()
{
  v7 = v2 + *(v1 + 36);
  *v7 = v0;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
}

void OUTLINED_FUNCTION_4_34(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
}

unint64_t OUTLINED_FUNCTION_7_25(uint64_t a1)
{

  return sub_2703E2A50(a1);
}

unint64_t OUTLINED_FUNCTION_8_29(uint64_t a1)
{

  return sub_2703E2A50(a1);
}

uint64_t OUTLINED_FUNCTION_11_24@<X0>(uint64_t a1@<X8>)
{
  *(v7 - 384) = v6;
  *(v7 - 376) = v2;
  *(v7 - 368) = v1;
  *(v7 - 360) = v5;
  *(v7 - 392) = v4;
  *(v7 - 184) = *v3;
  *(v7 - 176) = a1;
  v9 = *(v3 + 32);
  *(v7 - 168) = *(v3 + 16);
  *(v7 - 152) = v9;
  *(v7 - 143) = *(v3 + 41);

  return sub_270417938();
}

uint64_t OUTLINED_FUNCTION_12_21()
{

  return sub_2705D8084();
}

uint64_t OUTLINED_FUNCTION_13_20()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_18_12()
{

  return sub_2705D7FA4();
}

uint64_t OUTLINED_FUNCTION_23_13()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_24_15()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return sub_2705D5434();
}

unint64_t OUTLINED_FUNCTION_32_5(uint64_t a1)
{

  return sub_2703E2A50(a1);
}

uint64_t OUTLINED_FUNCTION_35_6()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_45_3()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_59_2()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_60_2()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_61_2()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_64_1()
{

  return sub_2705D4D34();
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return sub_2705D4D34();
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_79_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_80_1(uint64_t a1)
{

  return sub_2703FC5C0(a1, &STACK[0xCC0], v1);
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t a1)
{

  return sub_2703FC5C0(a1, &STACK[0xCC0], v1);
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_85_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_86_1(uint64_t a1, uint64_t a2)
{

  return sub_2703FC5C0(v3, a2, v2);
}

uint64_t OUTLINED_FUNCTION_87_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2703FC5C0(&STACK[0x840], &a9, v9);
}

uint64_t sub_27047BCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v16 = v2[1];
  sub_27047C6BC(*v2);
  sub_27047C6BC(v4);
  sub_27047C6BC(v6);
  sub_27047C6BC(v8);
  sub_2705D60A4();
  sub_2705D4E64();
  v10 = sub_2705D60A4();
  v12 = v11;
  *&__src[0] = v3;
  *(&__src[0] + 1) = v16;
  *&__src[1] = v4;
  *(&__src[1] + 1) = v5;
  *&__src[2] = v6;
  *(&__src[2] + 1) = v7;
  *&__src[3] = v8;
  *(&__src[3] + 1) = v9;
  __src[4] = v20;
  __src[5] = v21;
  __src[6] = v22;
  *&__src[7] = v10;
  *(&__src[7] + 1) = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B10);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B18);
  memcpy((a2 + *(v14 + 36)), __src, 0x80uLL);
  v24[0] = v3;
  v24[1] = v16;
  v24[2] = v4;
  v24[3] = v5;
  v24[4] = v6;
  v24[5] = v7;
  v24[6] = v8;
  v24[7] = v9;
  v25 = v20;
  v26 = v21;
  v27 = v22;
  v28 = v10;
  v29 = v12;
  sub_27047C6CC(__src, &v19);
  return sub_27047C73C(v24);
}

char *sub_27047BE4C()
{
  type metadata accessor for LifecycleAdaptorViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = *v0;
  v3 = v0[1];
  v4 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear];
  v5 = *&v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear];
  *v4 = *v0;
  v4[1] = v3;
  sub_27047C6BC(v2);
  sub_2703B8280(v5);
  v6 = v0[2];
  v7 = v0[3];
  v8 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear];
  v9 = *&v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear];
  *v8 = v6;
  v8[1] = v7;
  sub_27047C6BC(v6);
  sub_2703B8280(v9);
  v10 = v0[4];
  v11 = v0[5];
  v12 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear];
  v13 = *&v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear];
  *v12 = v10;
  v12[1] = v11;
  sub_27047C6BC(v10);
  sub_2703B8280(v13);
  v14 = v0[6];
  v15 = v0[7];
  v16 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear];
  v17 = *&v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear];
  *v16 = v14;
  v16[1] = v15;
  sub_27047C6BC(v14);
  sub_2703B8280(v17);
  return v1;
}

uint64_t sub_27047BF34(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = (a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear);
  v6 = *(a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear);
  *v5 = *v1;
  v5[1] = v4;
  sub_27047C6BC(v3);
  sub_2703B8280(v6);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear);
  v10 = *(a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear);
  *v9 = v7;
  v9[1] = v8;
  sub_27047C6BC(v7);
  sub_2703B8280(v10);
  v11 = v1[4];
  v12 = v1[5];
  v13 = (a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear);
  v14 = *(a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear);
  *v13 = v11;
  v13[1] = v12;
  sub_27047C6BC(v11);
  sub_2703B8280(v14);
  v15 = v1[6];
  v16 = v1[7];
  v17 = (a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear);
  v18 = *(a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear);
  *v17 = v15;
  v17[1] = v16;
  sub_27047C6BC(v15);

  return sub_2703B8280(v18);
}

uint64_t sub_27047C0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27047C900();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27047C12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27047C900();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_27047C190()
{
  sub_27047C900();
  sub_2705D5634();
  __break(1u);
}

id sub_27047C2E4(char a1, SEL *a2, void *a3)
{
  v10.receiver = v3;
  v10.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v10, *a2, a1 & 1);
  v8 = *&v3[*a3];
  if (v8)
  {

    v8(v9);
    return sub_2703B8280(v8);
  }

  return result;
}

id sub_27047C3CC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v3[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear];
  *v10 = 0;
  *(v10 + 1) = 0;
  if (a2)
  {
    v11 = sub_2705D7534();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id sub_27047C508(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear];
  *v7 = 0;
  *(v7 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27047C6BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_27047C6CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27047C73C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27047C7B8()
{
  result = qword_2807D3B28;
  if (!qword_2807D3B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3B18);
    sub_2703AFBC8(&qword_2807D3B30, &qword_2807D3B10);
    sub_2703AFBC8(&qword_2807D3B38, &qword_2807D3B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3B28);
  }

  return result;
}

unint64_t sub_27047C8AC()
{
  result = qword_2807D3B40;
  if (!qword_2807D3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3B40);
  }

  return result;
}

unint64_t sub_27047C900()
{
  result = qword_2807D3B48;
  if (!qword_2807D3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3B48);
  }

  return result;
}

uint64_t sub_27047C95C()
{
  v0 = sub_2705D7144();
  __swift_allocate_value_buffer(v0, qword_28081C498);
  __swift_project_value_buffer(v0, qword_28081C498);
  return sub_2705D7154();
}

uint64_t sub_27047C9F8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2705D7144();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2705D7174();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (qword_2807CE808 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_28081C498);
  (*(v4 + 16))(v6, v8, v3);
  return sub_2705D7164();
}

uint64_t sub_27047CC44(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = *a3;
  type metadata accessor for Log();
  v6 = swift_allocObject();
  *(v6 + 16) = v8;
  *a4 = v6;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_27047CD2C()
{
  sub_27047D06C();
  result = sub_2705D7BE4();
  qword_2807D3B68 = result;
  return result;
}

uint64_t sub_27047CDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_27047D06C();
  result = sub_2705D7BE4();
  *a4 = result;
  return result;
}

uint64_t sub_27047CE60(os_log_type_t a1, os_log_t oslog)
{
  result = os_log_type_enabled(oslog, a1);
  if (result)
  {
    sub_2705D64D4();
    v3 = sub_2705D6554();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B88);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2705DC030;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_27047D0B0();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    sub_2705D4BF4();
  }

  return result;
}

uint64_t sub_27047D010()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t type metadata accessor for Log()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

unint64_t sub_27047D06C()
{
  result = qword_2807D3B80;
  if (!qword_2807D3B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D3B80);
  }

  return result;
}

unint64_t sub_27047D0B0()
{
  result = qword_2807D3B90;
  if (!qword_2807D3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3B90);
  }

  return result;
}

uint64_t sub_27047D104(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705E10F0;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  v11 = MEMORY[0x277D837D0];
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v11;
  *(inited + 80) = 0x6874646977;
  *(inited + 88) = 0xE500000000000000;
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v13 = sub_27047D5E0();
  *(inited + 96) = v12;
  *(inited + 120) = v13;
  *(inited + 128) = 0x746867696568;
  *(inited + 136) = 0xE600000000000000;
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 168) = v13;
  *(inited + 144) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
  v64 = sub_2705D7494();
  v15 = 0;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 64);
  v19 = (v16 + 63) >> 6;
  while (1)
  {
    v20 = v15;
    if (!v18)
    {
      break;
    }

LABEL_8:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v22 = (v15 << 9) | (8 * v21);
    v23 = *(*(a3 + 56) + v22);
    v24 = *(*(a3 + 48) + v22);
    v25 = v23;
    sub_27047DDF4(0);
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      v62 = sub_2705D7564();
      v63 = v30;
      v73 = MEMORY[0x277D837D0];
      *&v72 = v28;
      *(&v72 + 1) = v29;
      sub_2703E43D4(&v72, &v70);
      __swift_mutable_project_boxed_opaque_existential_1(&v70, v71);
      v59 = &v59;
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v31);
      OUTLINED_FUNCTION_4_0();
      v33 = OUTLINED_FUNCTION_9_27(v32);
      v34(v33);
      v35 = *v29;
      v36 = v29[1];
      v61 = v35;
      v37 = v64;
      LODWORD(v60) = swift_isUniquelyReferenced_nonNull_native();
      v69 = v37;
      v68 = MEMORY[0x277D837D0];
      *&v67 = v61;
      *(&v67 + 1) = v36;
      v61 = sub_2703D7318(v62, v63);
      v38 = *(v37 + 16);
      LODWORD(v64) = v39;
      v40 = (v39 & 1) == 0;
      v41 = (v38 + v40);
      if (__OFADD__(v38, v40))
      {
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8);
      if (sub_2705D7E04())
      {
        v42 = sub_2703D7318(v62, v63);
        if ((v64 & 1) != (v43 & 1))
        {
          goto LABEL_23;
        }

        v61 = v42;
        if (v64)
        {
LABEL_17:

          v64 = v69;
          v57 = (*(v69 + 56) + 32 * v61);
          __swift_destroy_boxed_opaque_existential_1(v57);
          sub_2703E43D4(&v67, v57);

          goto LABEL_18;
        }
      }

      else if (v64)
      {
        goto LABEL_17;
      }

      v64 = v69;
      __swift_mutable_project_boxed_opaque_existential_1(&v67, v68);
      v60 = &v59;
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v44);
      OUTLINED_FUNCTION_4_0();
      v46 = OUTLINED_FUNCTION_9_27(v45);
      v47(v46);
      v48 = *v41;
      v49 = v41[1];
      v66 = MEMORY[0x277D837D0];
      *&v65 = v48;
      *(&v65 + 1) = v49;
      v50 = v61;
      v51 = v64;
      *(v64 + 8 * (v61 >> 6) + 64) |= 1 << v61;
      v52 = (v51[6] + 16 * v50);
      v53 = v63;
      *v52 = v62;
      v52[1] = v53;
      sub_2703E43D4(&v65, (v51[7] + 32 * v50));

      v54 = v51[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_22;
      }

      v51[2] = v56;
      __swift_destroy_boxed_opaque_existential_1(&v67);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(&v70);
    }

    else
    {
    }
  }

  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= v19)
    {

      return v64;
    }

    v18 = *(a3 + 64 + 8 * v15);
    ++v20;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2705D82D4();
  __break(1u);
  return result;
}

unint64_t sub_27047D5E0()
{
  result = qword_2807D3BA0;
  if (!qword_2807D3BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D3BA0);
  }

  return result;
}

uint64_t sub_27047D624(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = sub_2703D7318(7107189, 0xE300000000000000);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_25(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27047D6C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  if (a2)
  {
    if (a6)
    {
      v12 = a5;
    }

    else
    {
      v12 = 6778986;
    }

    if (a6)
    {
      v13 = a6;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    if (a4)
    {
      v14 = a3;
    }

    else
    {
      v14 = 25186;
    }

    if (a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = 0xE200000000000000;
    }

    if (a8)
    {
      v16 = a7;
    }

    else
    {
      v16 = 12343;
    }

    if (a8)
    {
      v17 = a8;
    }

    else
    {
      v17 = 0xE200000000000000;
    }

    if ((*&a11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a11 <= -1.0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (a11 >= 1.84467441e19)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v35 = v15;

      result = sub_2705D80A4();
      if ((*&a10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (a10 <= -1.0)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (a10 >= 1.84467441e19)
      {
LABEL_46:
        __break(1u);
        return result;
      }

      v20 = result;
      v21 = v19;
      v22 = sub_2705D80A4();
      v34 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2705F38E0;
      *(inited + 32) = 8217467;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = v14;
      *(inited + 56) = v35;
      *(inited + 64) = 8218235;
      *(inited + 72) = 0xE300000000000000;
      *(inited + 80) = v12;
      *(inited + 88) = v13;
      *(inited + 96) = 8218747;
      *(inited + 104) = 0xE300000000000000;
      *(inited + 112) = v20;
      *(inited + 120) = v21;
      *(inited + 128) = 8221051;
      *(inited + 136) = 0xE300000000000000;
      *(inited + 144) = v16;
      *(inited + 152) = v17;
      *(inited + 160) = 8222587;
      *(inited + 168) = 0xE300000000000000;
      *(inited + 176) = v22;
      *(inited + 184) = v34;
      v25 = sub_2705D7494();
      v26 = v25 + 64;
      v27 = 1 << *(v25 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & *(v25 + 64);
      v30 = (v27 + 63) >> 6;

      v31 = 0;
      if (v29)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v32 >= v30)
        {

          sub_2705D4454();
        }

        v29 = *(v26 + 8 * v32);
        ++v31;
        if (v29)
        {
          v31 = v32;
          do
          {
LABEL_34:
            v29 &= v29 - 1;
            sub_2703C2F54();

            sub_2705D7C64();
          }

          while (v29);
          continue;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_42;
  }

  v33 = sub_2705D4484();

  return __swift_storeEnumTagSinglePayload(a9, 1, 1, v33);
}

CGColorRef sub_27047DA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_2703D7318(1684957547, 0xE400000000000000);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_25(v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v28;
  v7 = HIBYTE(v29) & 0xF;
  v8 = v28 & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v29) & 0xF;
  }

  else
  {
    v9 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return 0;
  }

  if ((v29 & 0x1000000000000000) != 0)
  {
    v11 = sub_27047F220(v28, v29, 10);

    if ((v11 & 0x100000000) != 0)
    {
      return 0;
    }

    return CGColorCreateGenericRGB((v11 >> 16) / 255.0, (v11 >> 8) / 255.0, v11 / 255.0, 1.0);
  }

  if ((v29 & 0x2000000000000000) == 0)
  {
    if ((v28 & 0x1000000000000000) != 0)
    {
      result = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_2705D7DB4();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          LODWORD(v11) = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_40();
              if (!v13 & v12)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_8_30();
              if (!v13)
              {
                goto LABEL_71;
              }

              LODWORD(v11) = v20 + v19;
              if (__CFADD__(v20, v19))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_7_26();
              if (v13)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_71;
      }

      goto LABEL_80;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        LODWORD(v11) = 0;
        if (result)
        {
          while (1)
          {
            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_71;
            }

            v24 = 10 * v11;
            if ((v24 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_71;
            }

            LODWORD(v11) = v24 + v23;
            if (__CFADD__(v24, v23))
            {
              goto LABEL_71;
            }

            result = (result + 1);
            if (!--v8)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_71:
      LODWORD(v11) = 0;
      v16 = 1;
LABEL_72:
      v27 = v16;

      if (v27)
      {
        return 0;
      }

      return CGColorCreateGenericRGB((v11 >> 16) / 255.0, (v11 >> 8) / 255.0, v11 / 255.0, 1.0);
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        LODWORD(v11) = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_40();
            if (!v13 & v12)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_8_30();
            if (!v13)
            {
              goto LABEL_71;
            }

            LODWORD(v11) = v15 - v14;
            if (v15 < v14)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_7_26();
            if (v13)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_62:
        v16 = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v28 != 43)
  {
    if (v28 != 45)
    {
      if (v7)
      {
        while (1)
        {
          OUTLINED_FUNCTION_3_40();
          if (!v13 & v12)
          {
            break;
          }

          OUTLINED_FUNCTION_8_30();
          if (!v13)
          {
            break;
          }

          LODWORD(v11) = v26 + v25;
          if (__CFADD__(v26, v25))
          {
            break;
          }

          OUTLINED_FUNCTION_7_26();
          if (v13)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (v7 != 1)
      {
        OUTLINED_FUNCTION_15_21();
        while (1)
        {
          OUTLINED_FUNCTION_3_40();
          if (!v13 & v12)
          {
            break;
          }

          OUTLINED_FUNCTION_8_30();
          if (!v13)
          {
            break;
          }

          LODWORD(v11) = v18 - v17;
          if (v18 < v17)
          {
            break;
          }

          OUTLINED_FUNCTION_7_26();
          if (v13)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_79;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      OUTLINED_FUNCTION_15_21();
      while (1)
      {
        OUTLINED_FUNCTION_3_40();
        if (!v13 & v12)
        {
          break;
        }

        OUTLINED_FUNCTION_8_30();
        if (!v13)
        {
          break;
        }

        LODWORD(v11) = v22 + v21;
        if (__CFADD__(v22, v21))
        {
          break;
        }

        OUTLINED_FUNCTION_7_26();
        if (v13)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_81:
  __break(1u);
  return result;
}

double sub_27047DD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0.0;
  if (*(a1 + 16))
  {
    v4 = sub_2703D7318(a2, a3);
    if (v5)
    {
      OUTLINED_FUNCTION_11_25(v4, v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
      if (swift_dynamicCast())
      {
        return v8;
      }
    }
  }

  return v3;
}

void sub_27047DDF4(char a1)
{
  v2 = v1;
  v4 = sub_27047F108();
  if (v4)
  {
    v5 = v4;
    v6 = sub_2705D7A34();

    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = *(v6 + 32) * 255.0;
        if (COERCE__INT64(fabs(v8)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v8 > -1.0)
          {
            if (v8 < 256.0)
            {
              if (v7 != 1)
              {
                v9 = *(v6 + 40) * 255.0;
                if (COERCE__INT64(fabs(v9)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v9 > -1.0)
                  {
                    if (v9 < 256.0)
                    {
                      if (v7 >= 3)
                      {
                        v10 = *(v6 + 48);

                        v11 = v10 * 255.0;
                        if (COERCE__INT64(fabs(v10 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                        {
                          if (v11 > -1.0)
                          {
                            if (v11 < 256.0)
                            {
                              v12 = v8;
                              v13 = v9;
                              v14 = v11;
                              if ((a1 & 1) == 0)
                              {
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B88);
                                v20 = swift_allocObject();
                                v21 = MEMORY[0x277D84B78];
                                *(v20 + 16) = xmmword_2705E10F0;
                                v22 = MEMORY[0x277D84BC0];
                                *(v20 + 56) = v21;
                                *(v20 + 64) = v22;
                                *(v20 + 32) = v12;
                                *(v20 + 96) = v21;
                                *(v20 + 104) = v22;
                                *(v20 + 72) = v13;
                                *(v20 + 136) = v21;
                                *(v20 + 144) = v22;
                                *(v20 + 112) = v14;
                                goto LABEL_22;
                              }

                              v15 = CGColorGetAlpha(v2) * 255.0;
                              if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                              {
                                if (v15 > -1.0)
                                {
                                  if (v15 < 256.0)
                                  {
                                    v16 = v15;
                                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B88);
                                    v17 = swift_allocObject();
                                    *(v17 + 16) = xmmword_2705EB880;
                                    v18 = MEMORY[0x277D84B78];
                                    v19 = MEMORY[0x277D84BC0];
                                    *(v17 + 56) = MEMORY[0x277D84B78];
                                    *(v17 + 64) = v19;
                                    *(v17 + 32) = v12;
                                    *(v17 + 96) = v18;
                                    *(v17 + 104) = v19;
                                    *(v17 + 72) = v13;
                                    *(v17 + 136) = v18;
                                    *(v17 + 144) = v19;
                                    *(v17 + 112) = v14;
                                    *(v17 + 176) = v18;
                                    *(v17 + 184) = v19;
                                    *(v17 + 152) = v16;
LABEL_22:
                                    sub_2705D7594();
                                    return;
                                  }

                                  goto LABEL_37;
                                }

LABEL_36:
                                __break(1u);
LABEL_37:
                                __break(1u);
                                return;
                              }

LABEL_35:
                              __break(1u);
                              goto LABEL_36;
                            }

LABEL_34:
                            __break(1u);
                            goto LABEL_35;
                          }

LABEL_33:
                          __break(1u);
                          goto LABEL_34;
                        }

LABEL_32:
                        __break(1u);
                        goto LABEL_33;
                      }

LABEL_31:
                      __break(1u);
                      goto LABEL_32;
                    }

LABEL_30:
                    __break(1u);
                    goto LABEL_31;
                  }

LABEL_29:
                  __break(1u);
                  goto LABEL_30;
                }

LABEL_28:
                __break(1u);
                goto LABEL_29;
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
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_25;
    }
  }
}

void *sub_27047E0B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  OUTLINED_FUNCTION_23_0(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v58 = &v53 - v4;
  sub_2705D7D74();
  OUTLINED_FUNCTION_0();
  v59 = v6;
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2E0);
  OUTLINED_FUNCTION_23_0(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = (&v53 - v12);
  v14 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v20 = v19 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v61;
  sub_2705D8454();
  if (v21)
  {
    goto LABEL_12;
  }

  v56 = v13;
  v57 = v16;
  v61 = v9;
  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  sub_27047FC94(&qword_2807D3BC0, MEMORY[0x277D21B10]);
  sub_2705D8184();
  v55 = v14;
  v22 = v56;
  sub_2705D63B4();
  v23 = sub_2705D6844();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    v54 = v20;
    sub_2703C1634(v22, &qword_2807CF2E0);
    v24 = v61;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    v13 = sub_2705D6834();
    OUTLINED_FUNCTION_4_4();
    (*(v25 + 8))(v22, v23);
    v24 = v61;
    if (v13)
    {
      OUTLINED_FUNCTION_10_23();
      sub_27047DD68(v13, v26, 0xE500000000000000);
      OUTLINED_FUNCTION_5_37();
      sub_27047DD68(v13, v27, 0xE600000000000000);
      CGSizeMake(v28, v29);
      OUTLINED_FUNCTION_13_21();
      sub_27047D624(v13);
      v62[8] = 70;
      sub_2705D80A4();
      OUTLINED_FUNCTION_17_16();
      v30 = v58;
      v31 = OUTLINED_FUNCTION_6_32();
      sub_27047D6C8(v32, v33, v34, v35, v36, v37, v38, v39, v40, v31, v41);
      v42 = v30;

      v43 = sub_2705D4484();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v43);
      v45 = a1;
      if (EnumTagSinglePayload != 1)
      {
        (*(v57 + 8))(v20, v55);
        sub_2703C1634(v42, &unk_2807D4280);
        __swift_destroy_boxed_opaque_existential_1(v62);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v13;
      }

      v54 = v20;

      sub_2703C1634(v42, &unk_2807D4280);
      v46 = v57;
      goto LABEL_10;
    }

    v54 = v20;
  }

  v45 = a1;
  v46 = v57;
LABEL_10:
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  sub_2705D8434();
  sub_2705D7D44();
  sub_2705D7D84();
  swift_allocError();
  v13 = v47;
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60) + 48);
  *v13 = &type metadata for CoreMediaArtwork;
  v50 = v59;
  v49 = v60;
  (*(v59 + 16))(v13 + v48, v24, v60);
  OUTLINED_FUNCTION_4_4();
  (*(v51 + 104))(v13);
  swift_willThrow();
  (*(v50 + 8))(v24, v49);
  (*(v46 + 8))(v54, v55);
  __swift_destroy_boxed_opaque_existential_1(v62);
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_27047E654()
{
  v0 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);

  sub_2705D6474();
  sub_2705D6434();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_27047E754(uint64_t a1, uint64_t a2)
{
  v4 = sub_2705D6654();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v17 = v16 - v15;
  (*(v13 + 16))(v16 - v15, a1, v11);
  (*(v6 + 16))(v10, a2, v4);
  v18 = sub_27047E9E0(v17, v10);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = sub_2705D7184();
    sub_27047FC94(&qword_2807CF138, MEMORY[0x277D22548]);
    swift_allocError();
    v21 = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BC8);
    v23 = MEMORY[0x277D84F90];
    *v21 = v22;
    v21[1] = v23;
    OUTLINED_FUNCTION_4_4();
    (*(v24 + 104))(v21);
    swift_willThrow();
  }

  (*(v6 + 8))(a2, v4);
  (*(v13 + 8))(a1, v11);
  return v19;
}

uint64_t sub_27047E9E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2E0);
  OUTLINED_FUNCTION_23_0(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  sub_2705D63B4();
  v12 = sub_2705D6844();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2705D6654();
    OUTLINED_FUNCTION_11_1();
    (*(v13 + 8))(a2);
    sub_2705D6484();
    OUTLINED_FUNCTION_11_1();
    (*(v14 + 8))(a1);
    v15 = &qword_2807CF2E0;
    v16 = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    v17 = sub_2705D6834();
    OUTLINED_FUNCTION_4_4();
    (*(v18 + 8))(v11, v12);
    if (!v17)
    {
      sub_2705D6654();
      OUTLINED_FUNCTION_11_1();
      (*(v37 + 8))(a2);
      sub_2705D6484();
      OUTLINED_FUNCTION_11_1();
      (*(v38 + 8))(a1);
      return v17;
    }

    OUTLINED_FUNCTION_10_23();
    sub_27047DD68(v17, v19, 0xE500000000000000);
    OUTLINED_FUNCTION_5_37();
    sub_27047DD68(v17, v20, 0xE600000000000000);
    CGSizeMake(v21, v22);
    OUTLINED_FUNCTION_13_21();
    sub_27047D624(v17);
    v40[1] = 70;
    sub_2705D80A4();
    OUTLINED_FUNCTION_17_16();
    v23 = OUTLINED_FUNCTION_6_32();
    sub_27047D6C8(v24, v25, v26, v27, v28, v29, v30, v31, v32, v23, v33);

    sub_2705D6654();
    OUTLINED_FUNCTION_11_1();
    (*(v34 + 8))(a2);
    sub_2705D6484();
    OUTLINED_FUNCTION_11_1();
    (*(v35 + 8))(a1);
    v36 = sub_2705D4484();
    if (__swift_getEnumTagSinglePayload(v7, 1, v36) != 1)
    {
      sub_2703C1634(v7, &unk_2807D4280);
      return v17;
    }

    v15 = &unk_2807D4280;
    v16 = v7;
  }

  sub_2703C1634(v16, v15);
  return 0;
}

uint64_t sub_27047ED58(uint64_t a1)
{
  OUTLINED_FUNCTION_10_23();
  sub_27047DD68(v2, v3, 0xE500000000000000);
  OUTLINED_FUNCTION_5_37();
  sub_27047DD68(a1, v4, 0xE600000000000000);

  return CGSizeMake(v5, v6);
}

CGColorRef sub_27047EDB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2705D7564();
  v5 = sub_27047DA80(v3, v4, a2);

  return v5;
}

uint64_t sub_27047EDF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_2705D6D64();
  if (v6 <= 0.0 || (sub_2705D6D64(), v7 <= 0.0))
  {
    v22 = sub_2705D4484();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v22);
  }

  else
  {
    v8 = sub_2705D6D84();
    if (v9)
    {
      sub_2705D6D64();
      OUTLINED_FUNCTION_13_21();
      v10 = sub_2705D6D94();
      v11 = sub_2705D7564();
      v13 = v12;

      v14 = sub_2705D6D74();
      v15 = sub_2705D7564();
      v17 = v16;

      v18 = sub_27047D624(a1);
      v20 = v19;
      v37 = 70;
      sub_2705D80A4();
      OUTLINED_FUNCTION_17_16();
      sub_27047D6C8(v18, v20, v11, v13, v15, v17, v21, &v37, a2, v2, v3);
    }

    else
    {
      v24 = v8;
      sub_2705D6D64();
      OUTLINED_FUNCTION_13_21();
      v25 = sub_2705D6D94();
      v26 = sub_2705D7564();
      v28 = v27;

      v29 = sub_2705D6D74();
      v30 = sub_2705D7564();
      v32 = v31;

      v33 = sub_27047D624(a1);
      v35 = v34;
      v37 = v24;
      sub_2705D80A4();
      OUTLINED_FUNCTION_17_16();
      sub_27047D6C8(v33, v35, v26, v28, v30, v32, v36, &v37, a2, v2, v3);
    }
  }
}

void *sub_27047F06C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_27047E0B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_27047F0B4(void *a1@<X8>)
{
  sub_2703C0FF0();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_27047F0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_27047E9E0(a1, a2);
  *a3 = result;
  return result;
}

CGColorRef sub_27047F108()
{
  v1 = CGColorGetColorSpace(v0);
  if (v1)
  {
    v2 = v1;
    Model = CGColorSpaceGetModel(v1);

    if (Model == kCGColorSpaceModelRGB)
    {
      return v0;
    }
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, v0, 0);

  return CopyByMatchingToColorSpace;
}

unint64_t sub_27047F198(uint64_t a1)
{
  result = sub_27047F1C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27047F1C0()
{
  result = qword_2807D3BB0;
  if (!qword_2807D3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3BB0);
  }

  return result;
}

unsigned __int8 *sub_27047F220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_2705D7734();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_27047F798();
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2705D7DB4();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_47:
            v16 = 0;
            v19 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v19 = 0;
        v16 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_129;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if ((v38 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v39 = v36 + v37;
            v22 = __CFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v21 = v17 + v18;
            v22 = v20 >= v21;
            v14 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v19 = 0;
        v16 = 0;
LABEL_129:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_129;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if ((v68 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v69 = v66 + v67;
          v22 = __CFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_128;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_129;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if ((v51 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v52 = v49 + v50;
          v22 = v51 >= v52;
          v44 = v51 - v52;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_129;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        v60 = v44 * a3;
        if ((v60 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v61 = v58 + v59;
        v22 = __CFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_127:
      v16 = 0;
      v19 = v44;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_27047F798()
{
  v0 = sub_27047F804();
  v4 = sub_27047F838(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_27047F838(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2705D7C34();
    if (!v9 || (v10 = v9, v11 = sub_27047F998(v9, 0), v12 = sub_27047FA08(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2705D7624();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2705D7624();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2705D7DB4();
LABEL_4:

  return sub_2705D7624();
}

void *sub_27047F998(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_27047FA08(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_27047FC18(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2705D76D4();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2705D7DB4();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_27047FC18(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2705D76B4();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_27047FC18(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2705D7704();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2743A3AE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_27047FC94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_25(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 + 56) + 32 * a1;

  return sub_2703D7F04(v5, va);
}

_BYTE *storeEnumTagSinglePayload for MercuryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x27047FEA8);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27047FEE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736C65646F6DLL && a2 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_5_30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_270480004(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0x736C65646F6DLL;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270480084(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C10);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270480728();
  sub_2705D84C4();
  LOBYTE(v13) = 0;
  OUTLINED_FUNCTION_5_38();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    OUTLINED_FUNCTION_5_38();
    v13 = *(v3 + 32);
    HIBYTE(v12) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BF0);
    sub_2704808BC();
    OUTLINED_FUNCTION_2_35();
    v13 = *(v3 + 40);
    HIBYTE(v12) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3498);
    sub_270480838(&qword_2807D34B8, sub_270416914);
    OUTLINED_FUNCTION_2_35();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_270480264@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA98);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270480728();
  sub_2705D8484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = OUTLINED_FUNCTION_6_33();
  v15 = v7;
  LOBYTE(v16) = 1;
  v8 = OUTLINED_FUNCTION_6_33();
  v14 = v9;
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BF0);
  sub_27048077C();
  OUTLINED_FUNCTION_1_43();
  sub_2705D7F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3498);
  sub_270480838(&qword_2807D34A0, sub_270416968);
  OUTLINED_FUNCTION_1_43();
  sub_2705D7F44();
  v10 = OUTLINED_FUNCTION_30_3();
  v11(v10);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v6;
  a2[1] = v15;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v16;
  return result;
}

uint64_t sub_270480524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27047FEE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27048054C(uint64_t a1)
{
  v2 = sub_270480728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270480588(uint64_t a1)
{
  v2 = sub_270480728();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2704805C8()
{
  result = qword_2807D3BD0;
  if (!qword_2807D3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3BD0);
  }

  return result;
}

double sub_27048061C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_270480264(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_27048067C()
{
  result = qword_2807D3BD8;
  if (!qword_2807D3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3BD8);
  }

  return result;
}

unint64_t sub_2704806D4()
{
  result = qword_2807D3BE0;
  if (!qword_2807D3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3BE0);
  }

  return result;
}

unint64_t sub_270480728()
{
  result = qword_2807D3BE8;
  if (!qword_2807D3BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3BE8);
  }

  return result;
}

unint64_t sub_27048077C()
{
  result = qword_2807D3BF8;
  if (!qword_2807D3BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3BF0);
    sub_270480978(&qword_2807D3C00, sub_2703D2C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3BF8);
  }

  return result;
}

uint64_t sub_270480838(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3498);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2704808BC()
{
  result = qword_2807D3C18;
  if (!qword_2807D3C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3BF0);
    sub_270480978(&qword_2807D3C20, sub_2703D2DD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3C18);
  }

  return result;
}

uint64_t sub_270480978(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3C08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_2705D8024();
}

uint64_t OUTLINED_FUNCTION_5_38()
{

  return sub_2705D8034();
}

uint64_t OUTLINED_FUNCTION_6_33()
{

  return sub_2705D7F54();
}

uint64_t sub_270480A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for MessagePlacementActionObject();
  v6 = v5;
  if (v4)
  {
    sub_27048171C(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, type metadata accessor for MessagePlacementActionObject);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t MessageAction.Action.hashValue.getter()
{
  v1 = *v0;
  sub_2705D83B4();
  MEMORY[0x2743A47E0](v1);
  return sub_2705D8414();
}

uint64_t MessageAction.messagePlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v1 + 40);
  *(a1 + 40) = v6;

  return sub_2703B4984(v4, v5, v6);
}

uint64_t MessageAction.message.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessageAction();
  OUTLINED_FUNCTION_2_36();
  return sub_27048171C(v1 + v3, a1, v4);
}

uint64_t type metadata accessor for MessageAction()
{
  result = qword_2807D3C50;
  if (!qword_2807D3C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageAction.action.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MessageAction();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t MessageAction.init(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  __dst[12] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v49 - v4;
  v52 = type metadata accessor for MessageViewStyle(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26();
  v51 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - v8;
  v55 = type metadata accessor for MessagePlacementActionObject();
  OUTLINED_FUNCTION_14();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v49 - v14;
  v56 = type metadata accessor for MessageAction();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26();
  v50 = v16;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = objc_opt_self();
  __dst[0] = v17;
  __dst[1] = v18;
  LOBYTE(__dst[2]) = v19;
  sub_27046CD54();
  sub_27046C7B8(v21);

  v22 = sub_2705D7454();
  sub_2703AE630(v17, v18, v19);

  __dst[0] = 0;
  v23 = [v20 dataWithJSONObject:v22 options:0 error:__dst];

  v24 = __dst[0];
  if (!v23)
  {
    v25 = v24;
    v26 = sub_2705D4364();

    swift_willThrow();
LABEL_10:
    v29 = v56;
LABEL_11:
    v30 = v57;
    v31 = 1;
    return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
  }

  sub_2705D44C4();

  sub_2705D4014();
  swift_allocObject();
  sub_2705D4004();
  sub_2704816C8();
  sub_2705D3FF4();

  if (!__dst[0])
  {
LABEL_9:
    OUTLINED_FUNCTION_5_39();
    goto LABEL_10;
  }

  if (!*(__dst[0] + 2))
  {

    goto LABEL_9;
  }

  v27 = *(__dst[0] + 6);

  sub_270480A7C(v27, v9);

  v28 = v55;
  if (__swift_getEnumTagSinglePayload(v9, 1, v55) == 1)
  {
    OUTLINED_FUNCTION_5_39();
    sub_2703C2EFC(v9, &qword_2807D3C30);
    goto LABEL_10;
  }

  v33 = v9;
  v34 = v54;
  sub_270481884(v33, v54, type metadata accessor for MessagePlacementActionObject);
  sub_27048171C(v34, v13, type metadata accessor for MessagePlacementActionObject);
  v35 = v53;
  sub_2704C07F4(v13, v53);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v52);
  v29 = v56;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_0_41();
    OUTLINED_FUNCTION_5_39();
    sub_2703C2EFC(v35, &qword_2807D3C28);
    goto LABEL_11;
  }

  v37 = v51;
  sub_270481884(v35, v51, type metadata accessor for MessageViewStyle);
  v38 = *(v28 + 28);
  memcpy(__dst, &v34[v38], 0x60uLL);
  memcpy(v64, &v34[v38], sizeof(v64));
  sub_2704B12EC(&v59);
  v39 = v60;
  if (!v60)
  {
    sub_27048177C(__dst, &v58);
    OUTLINED_FUNCTION_5_39();
    OUTLINED_FUNCTION_3_41();
    OUTLINED_FUNCTION_0_41();
    sub_270481830(__dst);
    goto LABEL_11;
  }

  v40 = v63;
  v41 = v61;
  v42 = v62;
  v43 = v50;
  *v50 = v59;
  *(v43 + 8) = v39;
  *(v43 + 16) = v41;
  *(v43 + 24) = v42;
  *(v43 + 40) = v40;
  OUTLINED_FUNCTION_2_36();
  sub_27048171C(v37, v43 + v44, v45);
  if (*v34)
  {
    v46 = sub_2705D8134();
    OUTLINED_FUNCTION_5_39();

    v47 = v46 ^ 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_39();

    v47 = 0;
  }

  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_0_41();
  *(v43 + *(v29 + 24)) = v47 & 1;
  v48 = v57;
  sub_270481884(v43, v57, type metadata accessor for MessageAction);
  v30 = v48;
  v31 = 0;
  return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
}

uint64_t static MessageAction.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 40);
  v37[0] = v5;
  v37[1] = v4;
  v37[2] = v6;
  v37[3] = v7;
  v37[4] = v8;
  v38 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v34 = *(a2 + 40);
  v35[0] = *a2;
  v35[1] = v10;
  v35[2] = v11;
  v35[3] = v12;
  v35[4] = v13;
  v36 = v34;

  v14 = OUTLINED_FUNCTION_0_14();
  sub_2703B4984(v14, v15, v16);

  sub_2703B4984(v12, v13, v34);
  LOBYTE(v10) = static MessagePlacement.== infix(_:_:)(v37, v35);

  v17 = OUTLINED_FUNCTION_0_14();
  sub_2703AF9AC(v17, v18, v19);

  v20 = OUTLINED_FUNCTION_0_14();
  sub_2703AF9AC(v20, v21, v22);
  if (v10 & 1) != 0 && ((v23 = type metadata accessor for MessageAction(), v24 = *(v23 + 20), v25 = a1 + v24, v26 = a2 + v24, v27 = *(type metadata accessor for MessageViewStyle(0) + 24), v28 = *(v25 + v27), v29 = *(v25 + v27 + 8), v30 = (v26 + v27), v28 == *v30) ? (v31 = v29 == v30[1]) : (v31 = 0), v31 || (sub_2705D8134()))
  {
    v32 = *(a1 + *(v23 + 24)) ^ *(a2 + *(v23 + 24)) ^ 1;
  }

  else
  {
    v32 = 0;
  }

  return v32 & 1;
}