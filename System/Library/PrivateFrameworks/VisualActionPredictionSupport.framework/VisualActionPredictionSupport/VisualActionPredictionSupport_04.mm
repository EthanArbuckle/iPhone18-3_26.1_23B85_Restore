uint64_t sub_1D9E8F464(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D9E8F4B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t sub_1D9E8F538(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 40) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 40) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D9E8F58C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1D9E8F64C()
{
  result = qword_1ECB74200;
  if (!qword_1ECB74200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74200);
  }

  return result;
}

unint64_t sub_1D9E8F6A4()
{
  result = qword_1ECB74208;
  if (!qword_1ECB74208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74208);
  }

  return result;
}

unint64_t sub_1D9E8F6FC()
{
  result = qword_1ECB74210;
  if (!qword_1ECB74210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74210);
  }

  return result;
}

unint64_t sub_1D9E8F754()
{
  result = qword_1ECB74218;
  if (!qword_1ECB74218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74218);
  }

  return result;
}

unint64_t sub_1D9E8F7AC()
{
  result = qword_1ECB74220;
  if (!qword_1ECB74220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74220);
  }

  return result;
}

unint64_t sub_1D9E8F804()
{
  result = qword_1ECB74228;
  if (!qword_1ECB74228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74228);
  }

  return result;
}

unint64_t sub_1D9E8F85C()
{
  result = qword_1ECB74230;
  if (!qword_1ECB74230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74230);
  }

  return result;
}

unint64_t sub_1D9E8F8B4()
{
  result = qword_1ECB74238;
  if (!qword_1ECB74238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74238);
  }

  return result;
}

unint64_t sub_1D9E8F90C()
{
  result = qword_1ECB74240;
  if (!qword_1ECB74240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74240);
  }

  return result;
}

unint64_t sub_1D9E8F964()
{
  result = qword_1ECB74248;
  if (!qword_1ECB74248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74248);
  }

  return result;
}

unint64_t sub_1D9E8F9BC()
{
  result = qword_1ECB74250;
  if (!qword_1ECB74250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74250);
  }

  return result;
}

unint64_t sub_1D9E8FA14()
{
  result = qword_1ECB74258;
  if (!qword_1ECB74258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74258);
  }

  return result;
}

unint64_t sub_1D9E8FA6C()
{
  result = qword_1ECB74260;
  if (!qword_1ECB74260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74260);
  }

  return result;
}

unint64_t sub_1D9E8FAC4()
{
  result = qword_1ECB74268;
  if (!qword_1ECB74268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74268);
  }

  return result;
}

unint64_t sub_1D9E8FB1C()
{
  result = qword_1ECB74270;
  if (!qword_1ECB74270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74270);
  }

  return result;
}

uint64_t SceneDescriptor.descriptionText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t type metadata accessor for SceneDescriptor()
{
  result = qword_1ECB742D8;
  if (!qword_1ECB742D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SceneDescriptor.pixelBuffer.getter()
{
  v1 = type metadata accessor for SceneDescriptor();
  result = 0;
  v3 = *(v0 + *(v1 + 24));
  if ((~v3 & 0xF000000000000007) != 0)
  {

    if (sub_1D9E8FCD0(v3))
    {
      v4 = sub_1D9F2B06C();
      v5 = *(v4 + 48);
      v6 = *(v4 + 52);
      swift_allocObject();
      v7 = sub_1D9F2B05C();
      sub_1D9E8FEEC(v3);
      return v7;
    }

    else
    {
      sub_1D9E8FEEC(v3);
      return 0;
    }
  }

  return result;
}

NSObject *sub_1D9E8FCD0(uint64_t a1)
{
  if (a1 < 0)
  {
    v5 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = v5;
    return v5;
  }

  sub_1D9E7EDA0();
  v2 = *(a1 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_lockedState);
  os_unfair_lock_lock(v2 + 25);
  v3 = *&v2[16]._os_unfair_lock_opaque;
  v29 = *&v2[12]._os_unfair_lock_opaque;
  v30 = v3;
  v31 = *&v2[20]._os_unfair_lock_opaque;
  os_unfair_lock_opaque = v2[24]._os_unfair_lock_opaque;
  v4 = *&v2[8]._os_unfair_lock_opaque;
  v27 = *&v2[4]._os_unfair_lock_opaque;
  v28 = v4;
  memmove(__dst, &v2[4], 0x51uLL);
  if (v34 >> 62)
  {
    if (v34 >> 62 == 1)
    {
      v34 &= 0x3FFFFFFFFFFFFFFFuLL;
    }

    v21 = 0u;
    v22 = 0u;
    *&v23 = 0;
    *(&v23 + 1) = 255;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  else
  {
    v34 &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_1D9E7F4D0(__dst, v10);
    *&v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = os_unfair_lock_opaque;
    v15 = v27;
    v16 = v28;
    *(&v17 + 1) = *(&v29 + 1) & 0x3FFFFFFFFFFFFFFFLL;
    sub_1D9E51E70(&v15, v9, &qword_1ECB73F08, &qword_1D9F35B60);
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    v21 = v10[0];
    v22 = v10[1];
  }

  os_unfair_lock_unlock(v2 + 25);
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  if (BYTE8(v23) != 0xFF)
  {
    sub_1D9E7F4D0(&v15, v10);
    result = v11;
    if (!BYTE8(v11))
    {
      return result;
    }

    if (BYTE8(v11) == 1)
    {
      v8 = _s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer4fromSo11CVBufferRefaSo13OS_xpc_object_p_tAC7FailureOYKFZ(v11, v9);
      sub_1D9E51FE8(&v21, &qword_1ECB74310, &unk_1D9F37F60);
      return v8;
    }

    v9[0] = xmmword_1D9F37C60;
    sub_1D9E8EE20();
    swift_willThrowTypedImpl();
    sub_1D9E51FE8(&v21, &qword_1ECB74310, &unk_1D9F37F60);
  }

  return 0;
}

uint64_t sub_1D9E8FEEC(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t SceneDescriptor.imageFrameResourceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for SceneDescriptor() + 24));
  if ((~v3 & 0xF000000000000007) == 0 || v3 < 0)
  {
    v10 = sub_1D9F2AD7C();
    v6 = *(*(v10 - 8) + 56);
    v9 = v10;
    v7 = a1;
    v8 = 1;
  }

  else
  {
    v4 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID;
    v5 = sub_1D9F2AD7C();
    v12 = *(v5 - 8);
    (*(v12 + 16))(a1, v3 + v4, v5);
    v6 = *(v12 + 56);
    v7 = a1;
    v8 = 0;
    v9 = v5;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t SceneDescriptor.init(descriptionText:list:imageFrameResourceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v30 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v29 - v15;
  sub_1D9E51E70(a3, &v29 - v15, &qword_1ECB74278, &qword_1D9F37C70);
  v17 = sub_1D9F2AD7C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(a4, 1, v17) == 1)
  {
    sub_1D9E51FE8(a3, &qword_1ECB74278, &qword_1D9F37C70);
    v20 = 0xF000000000000007;
LABEL_5:
    v27 = v30;
    *a5 = a1;
    a5[1] = v27;
    v28 = type metadata accessor for SceneDescriptor();
    sub_1D9E902E0(v16, a5 + *(v28 + 20));
    *(a5 + *(v28 + 24)) = v20;
    return sub_1D9E51FE8(a4, &qword_1ECB76010, &unk_1D9F3A9C0);
  }

  sub_1D9E51E70(a4, v12, &qword_1ECB76010, &unk_1D9F3A9C0);
  result = (v19)(v12, 1, v17);
  if (result != 1)
  {
    v22 = type metadata accessor for ExecutionResourceRetriever();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v20 = swift_allocObject();
    v25 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_lockedState;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73EF8, &qword_1D9F35B40);
    v26 = swift_allocObject();
    *(v26 + 100) = 0;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0x8000000000000000;
    *(v26 + 64) = 0u;
    *(v26 + 80) = 0u;
    *(v20 + v25) = v26;
    *(v26 + 96) = 0;
    (*(v18 + 32))(v20 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID, v12, v17);
    sub_1D9E51FE8(a3, &qword_1ECB74278, &qword_1D9F37C70);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9E902E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SceneDescriptor.init(descriptionText:list:pixelBuffer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - v12;
  sub_1D9E51E70(a3, &v18 - v12, &qword_1ECB74278, &qword_1D9F37C70);
  sub_1D9E51FE8(a3, &qword_1ECB74278, &qword_1D9F37C70);
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74280, &qword_1D9F37C78);
    v14 = swift_allocObject();
    *(v14 + 16) = a4;
    v15 = v14 | 0x8000000000000000;
  }

  else
  {
    v15 = 0xF000000000000007;
  }

  *a5 = a1;
  a5[1] = a2;
  v16 = type metadata accessor for SceneDescriptor();
  result = sub_1D9E902E0(v13, a5 + *(v16 + 20));
  *(a5 + *(v16 + 24)) = v15;
  return result;
}

uint64_t static SceneDescriptor.defaultResolverSpecification.getter()
{
  type metadata accessor for SceneDescriptor();
  sub_1D9E91198(&qword_1ECB74288, type metadata accessor for SceneDescriptor);

  return sub_1D9F2AA0C();
}

uint64_t sub_1D9E90588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E695A5F8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D9E7ECAC;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1D9E90668(uint64_t a1)
{
  v2 = sub_1D9E91198(&qword_1ECB742B8, type metadata accessor for SceneDescriptor);

  return MEMORY[0x1EEDB3F68](a1, v2);
}

unint64_t SceneDescriptor.description.getter()
{
  v1 = sub_1D9F2AD7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74290, &unk_1D9F37C80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v29 = 0xD000000000000012;
  v30 = 0x80000001D9F48F50;
  v15 = v0[1];
  if (v15)
  {
    v16 = v5;
    v17 = v1;
    v18 = v2;
    v19 = *v0;
    v27 = 0;
    v28 = 0xE000000000000000;
    v26 = v0;
    sub_1D9F2B68C();

    v27 = 0xD000000000000016;
    v28 = 0x80000001D9F48F90;
    v20 = v19;
    v2 = v18;
    v1 = v17;
    v5 = v16;
    MEMORY[0x1DA742F90](v20, v15);
    MEMORY[0x1DA742F90](666658, 0xE300000000000000);
    MEMORY[0x1DA742F90](v27, v28);
    v0 = v26;
  }

  v21 = type metadata accessor for SceneDescriptor();
  sub_1D9E51E70(v0 + *(v21 + 20), v9, &qword_1ECB74278, &qword_1D9F37C70);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D9E51FE8(v9, &qword_1ECB74278, &qword_1D9F37C70);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v27 = 0;
    v28 = 0xE000000000000000;
    MEMORY[0x1DA742F90](0x7473696C20202020, 0xEA0000000000203ALL);
    sub_1D9F2B75C();
    MEMORY[0x1DA742F90](2604, 0xE200000000000000);
    MEMORY[0x1DA742F90](v27, v28);

    (*(v11 + 8))(v14, v10);
  }

  v22 = *(v0 + *(v21 + 24));
  if ((v22 & 0x8000000000000000) == 0)
  {
    (*(v2 + 16))(v5, v22 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID, v1);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1D9F2B68C();

    v27 = 0xD00000000000001ALL;
    v28 = 0x80000001D9F48F70;
    sub_1D9E91198(&unk_1EE0F3850, MEMORY[0x1E69695A8]);
    v23 = sub_1D9F2B9FC();
    MEMORY[0x1DA742F90](v23);

    MEMORY[0x1DA742F90](2604, 0xE200000000000000);
    MEMORY[0x1DA742F90](v27, v28);

    (*(v2 + 8))(v5, v1);
  }

  MEMORY[0x1DA742F90](125, 0xE100000000000000);
  return v29;
}

uint64_t SceneDescriptor.convertToEntity()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1D9F2AD7C();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - v9;
  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v11 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v11, qword_1EE0F1240);
  v12 = sub_1D9F2AE6C();
  v13 = sub_1D9F2B42C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1D9E71CA4(0x736544656E656353, 0xEF726F7470697263, &v36);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1D9E71CA4(0xD000000000000011, 0x80000001D9F48FB0, &v36);
    _os_log_impl(&dword_1D9E39000, v12, v13, "%s.%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v15, -1, -1);
    MEMORY[0x1DA744270](v14, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74298, &unk_1D9F3A9B0);
  v16 = sub_1D9F2A9AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB742A0, &qword_1D9F37C90);
  v17 = sub_1D9F2A9AC();
  v18 = sub_1D9F2A9AC();
  v19 = v2[1];
  v36 = *v2;
  v37 = v19;

  sub_1D9F2A98C();
  v20 = type metadata accessor for SceneDescriptor();
  sub_1D9E51E70(v2 + *(v20 + 20), v10, &qword_1ECB74278, &qword_1D9F37C70);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74290, &unk_1D9F37C80);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_1D9E51FE8(v10, &qword_1ECB74278, &qword_1D9F37C70);
    v23 = 0;
  }

  else
  {
    v23 = sub_1D9F2A9DC();
    (*(v22 + 8))(v10, v21);
  }

  v36 = v23;
  sub_1D9F2A98C();
  v24 = *(v2 + *(v20 + 24));
  if (v24 < 0)
  {
    v27 = 0;
    v29 = 0;
  }

  else
  {
    v26 = v33;
    v25 = v34;
    (*(v33 + 16))(v6, v24 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID, v34);
    v27 = sub_1D9F2AD2C();
    v29 = v28;
    (*(v26 + 8))(v6, v25);
  }

  v36 = v27;
  v37 = v29;
  sub_1D9F2A98C();

  v31 = v35;
  *v35 = v16;
  v31[1] = v17;
  v31[2] = v18;
  return result;
}

uint64_t sub_1D9E91198(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D9E91224()
{
  sub_1D9E3F9EC(319, &qword_1EE0F2358);
  if (v0 <= 0x3F)
  {
    sub_1D9E912E0();
    if (v1 <= 0x3F)
    {
      sub_1D9E3F9EC(319, &qword_1ECB742F0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9E912E0()
{
  if (!qword_1ECB742E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74290, &unk_1D9F37C80);
    v0 = sub_1D9F2B59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB742E8);
    }
  }
}

unint64_t sub_1D9E91344()
{
  result = qword_1ECB742F8;
  if (!qword_1ECB742F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74300, &qword_1D9F37EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB742F8);
  }

  return result;
}

unint64_t sub_1D9E913A8()
{
  result = qword_1ECB74308;
  if (!qword_1ECB74308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74308);
  }

  return result;
}

uint64_t sub_1D9E91408(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D9E91464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t static PredictedActionSet.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECB72AB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PredictedActionSet();
  v3 = __swift_project_value_buffer(v2, qword_1ECB74318);

  return sub_1D9E527EC(v3, a1);
}

uint64_t PredictedActionSet.init(openAction:saveAction:searchAction:auxiliaryActions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D9E917DC(a1, a5);
  v9 = type metadata accessor for PredictedActionSet();
  sub_1D9E917DC(a2, a5 + v9[5]);
  result = sub_1D9E917DC(a3, a5 + v9[6]);
  *(a5 + v9[7]) = a4;
  return result;
}

uint64_t PredictedActionSet.saveAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PredictedActionSet() + 20);

  return sub_1D9E53328(v3, a1);
}

uint64_t PredictedActionSet.searchAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PredictedActionSet() + 24);

  return sub_1D9E53328(v3, a1);
}

uint64_t PredictedActionSet.auxiliaryActions.getter()
{
  v1 = *(v0 + *(type metadata accessor for PredictedActionSet() + 28));
}

uint64_t sub_1D9E916A4()
{
  v0 = type metadata accessor for PredictedActionSet();
  __swift_allocate_value_buffer(v0, qword_1ECB74318);
  v1 = __swift_project_value_buffer(v0, qword_1ECB74318);
  v2 = type metadata accessor for PredictedAction();
  v3 = *(*(v2 - 8) + 56);
  v3(v1, 1, 1, v2);
  v3(v1 + v0[5], 1, 1, v2);
  result = (v3)(v1 + v0[6], 1, 1, v2);
  *(v1 + v0[7]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t type metadata accessor for PredictedActionSet()
{
  result = qword_1EE0F2248;
  if (!qword_1EE0F2248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9E917DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9E91850()
{
  v1 = 0x697463416E65706FLL;
  v2 = 0x6341686372616573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6974634165766173;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9E918D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E92F3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E91900(uint64_t a1)
{
  v2 = sub_1D9E92AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E9193C(uint64_t a1)
{
  v2 = sub_1D9E92AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedActionSet.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74330, &qword_1D9F37F78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E92AF8();
  sub_1D9F2BB8C();
  v19 = 0;
  type metadata accessor for PredictedAction();
  sub_1D9E92C90(&qword_1EE0F2268, type metadata accessor for PredictedAction);
  sub_1D9F2B94C();
  if (!v2)
  {
    v11 = type metadata accessor for PredictedActionSet();
    v12 = v11[5];
    v18 = 1;
    sub_1D9F2B94C();
    v13 = v11[6];
    v17 = 2;
    sub_1D9F2B94C();
    v15[1] = *(v3 + v11[7]);
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74340, &qword_1D9F37F80);
    sub_1D9E92B4C(&qword_1EE0F1180, &qword_1EE0F2268);
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PredictedActionSet.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PredictedAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v22 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  sub_1D9E53328(v2, &v22 - v17);
  v19 = *(v5 + 48);
  if (v19(v18, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9E51ED8(v18, v8);
    sub_1D9F2BB1C();
    PredictedAction.hash(into:)();
    sub_1D9E92BE8(v8, type metadata accessor for PredictedAction);
  }

  v20 = type metadata accessor for PredictedActionSet();
  sub_1D9E53328(v2 + v20[5], v16);
  if (v19(v16, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9E51ED8(v16, v8);
    sub_1D9F2BB1C();
    PredictedAction.hash(into:)();
    sub_1D9E92BE8(v8, type metadata accessor for PredictedAction);
  }

  sub_1D9E53328(v2 + v20[6], v13);
  if (v19(v13, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9E51ED8(v13, v8);
    sub_1D9F2BB1C();
    PredictedAction.hash(into:)();
    sub_1D9E92BE8(v8, type metadata accessor for PredictedAction);
  }

  return sub_1D9E4F52C(a1, *(v2 + v20[7]));
}

uint64_t PredictedActionSet.hashValue.getter()
{
  sub_1D9F2BAFC();
  PredictedActionSet.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t PredictedActionSet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v27 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74348, &qword_1D9F37F88);
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = type metadata accessor for PredictedActionSet();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E92AF8();
  v32 = v15;
  v21 = v33;
  sub_1D9F2BB7C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v7;
  v33 = v19;
  type metadata accessor for PredictedAction();
  v38 = 0;
  sub_1D9E92C90(&qword_1EE0F2260, type metadata accessor for PredictedAction);
  v22 = v29;
  v23 = v31;
  sub_1D9F2B83C();
  sub_1D9E917DC(v22, v33);
  v37 = 1;
  sub_1D9F2B83C();
  sub_1D9E917DC(v10, &v33[v16[5]]);
  v36 = 2;
  v24 = v27;
  sub_1D9F2B83C();
  v25 = v33;
  sub_1D9E917DC(v24, &v33[v16[6]]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74340, &qword_1D9F37F80);
  v35 = 3;
  sub_1D9E92B4C(&qword_1EE0F1178, &qword_1EE0F2260);
  sub_1D9F2B89C();
  (*(v30 + 8))(v32, v23);
  *(v25 + v16[7]) = v34;
  sub_1D9E527EC(v25, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9E92BE8(v25, type metadata accessor for PredictedActionSet);
}

uint64_t sub_1D9E92460()
{
  sub_1D9F2BAFC();
  PredictedActionSet.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E924A4()
{
  sub_1D9F2BAFC();
  PredictedActionSet.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport17ExecutionFollowupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v45[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74370, &qword_1D9F381B8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v48 = &v45[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v45[-v22];
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v45[-v25];
  v51 = v24;
  v27 = *(v24 + 48);
  sub_1D9E53328(a1, &v45[-v25]);
  sub_1D9E53328(a2, &v26[v27]);
  v28 = *(v5 + 48);
  if (v28(v26, 1, v4) == 1)
  {
    if (v28(&v26[v27], 1, v4) == 1)
    {
      sub_1D9E51FE8(v26, &qword_1ECB731E8, &qword_1D9F37F70);
      goto LABEL_8;
    }

LABEL_6:
    v29 = v26;
LABEL_21:
    sub_1D9E51FE8(v29, &qword_1ECB74370, &qword_1D9F381B8);
    goto LABEL_22;
  }

  sub_1D9E53328(v26, v16);
  if (v28(&v26[v27], 1, v4) == 1)
  {
    sub_1D9E92BE8(v16, type metadata accessor for PredictedAction);
    goto LABEL_6;
  }

  v47 = v12;
  v30 = v50;
  sub_1D9E51ED8(&v26[v27], v50);
  v46 = _s29VisualActionPredictionSupport09PredictedB0V2eeoiySbAC_ACtFZ_0(v16, v30);
  v31 = v30;
  v12 = v47;
  sub_1D9E92BE8(v31, type metadata accessor for PredictedAction);
  sub_1D9E92BE8(v16, type metadata accessor for PredictedAction);
  sub_1D9E51FE8(v26, &qword_1ECB731E8, &qword_1D9F37F70);
  if ((v46 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v32 = type metadata accessor for PredictedActionSet();
  v33 = v32[5];
  v34 = *(v51 + 48);
  sub_1D9E53328(a1 + v33, v23);
  sub_1D9E53328(a2 + v33, &v23[v34]);
  if (v28(v23, 1, v4) == 1)
  {
    if (v28(&v23[v34], 1, v4) != 1)
    {
LABEL_20:
      v29 = v23;
      goto LABEL_21;
    }

    sub_1D9E51FE8(v23, &qword_1ECB731E8, &qword_1D9F37F70);
LABEL_14:
    v39 = v32[6];
    v40 = *(v51 + 48);
    v23 = v48;
    sub_1D9E53328(a1 + v39, v48);
    sub_1D9E53328(a2 + v39, &v23[v40]);
    if (v28(v23, 1, v4) == 1)
    {
      if (v28(&v23[v40], 1, v4) == 1)
      {
        sub_1D9E51FE8(v23, &qword_1ECB731E8, &qword_1D9F37F70);
LABEL_25:
        v41 = sub_1D9E4BC80(*(a1 + v32[7]), *(a2 + v32[7]));
        return v41 & 1;
      }

      goto LABEL_20;
    }

    sub_1D9E53328(v23, v12);
    if (v28(&v23[v40], 1, v4) == 1)
    {
      v36 = v12;
      goto LABEL_19;
    }

    v43 = v50;
    sub_1D9E51ED8(&v23[v40], v50);
    v44 = _s29VisualActionPredictionSupport09PredictedB0V2eeoiySbAC_ACtFZ_0(v12, v43);
    sub_1D9E92BE8(v43, type metadata accessor for PredictedAction);
    sub_1D9E92BE8(v12, type metadata accessor for PredictedAction);
    sub_1D9E51FE8(v23, &qword_1ECB731E8, &qword_1D9F37F70);
    if (v44)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v35 = v49;
  sub_1D9E53328(v23, v49);
  if (v28(&v23[v34], 1, v4) == 1)
  {
    v36 = v35;
LABEL_19:
    sub_1D9E92BE8(v36, type metadata accessor for PredictedAction);
    goto LABEL_20;
  }

  v47 = v12;
  v37 = v50;
  sub_1D9E51ED8(&v23[v34], v50);
  v46 = _s29VisualActionPredictionSupport09PredictedB0V2eeoiySbAC_ACtFZ_0(v35, v37);
  v38 = v37;
  v12 = v47;
  sub_1D9E92BE8(v38, type metadata accessor for PredictedAction);
  sub_1D9E92BE8(v35, type metadata accessor for PredictedAction);
  sub_1D9E51FE8(v23, &qword_1ECB731E8, &qword_1D9F37F70);
  if (v46)
  {
    goto LABEL_14;
  }

LABEL_22:
  v41 = 0;
  return v41 & 1;
}

unint64_t sub_1D9E92AF8()
{
  result = qword_1ECB74338;
  if (!qword_1ECB74338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74338);
  }

  return result;
}

uint64_t sub_1D9E92B4C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74340, &qword_1D9F37F80);
    sub_1D9E92C90(a2, type metadata accessor for PredictedAction);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E92BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9E92C90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D9E92D00()
{
  sub_1D9E92DC4(319, &qword_1EE0F2258, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D9E92DC4(319, &qword_1EE0F2348, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9E92DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PredictedAction();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D9E92E38()
{
  result = qword_1ECB74358;
  if (!qword_1ECB74358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74358);
  }

  return result;
}

unint64_t sub_1D9E92E90()
{
  result = qword_1ECB74360;
  if (!qword_1ECB74360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74360);
  }

  return result;
}

unint64_t sub_1D9E92EE8()
{
  result = qword_1ECB74368;
  if (!qword_1ECB74368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74368);
  }

  return result;
}

uint64_t sub_1D9E92F3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463416E65706FLL && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974634165766173 && a2 == 0xEA00000000006E6FLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6341686372616573 && a2 == 0xEC0000006E6F6974 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9F48FD0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1D9E931B8()
{
  result = qword_1EE0F3360;
  if (!qword_1EE0F3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3360);
  }

  return result;
}

unint64_t sub_1D9E93210()
{
  result = qword_1ECB74378;
  if (!qword_1ECB74378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74378);
  }

  return result;
}

unint64_t sub_1D9E93264()
{
  result = qword_1EE0F3368[0];
  if (!qword_1EE0F3368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F3368);
  }

  return result;
}

unint64_t sub_1D9E932BC()
{
  result = qword_1EE0F3358;
  if (!qword_1EE0F3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3358);
  }

  return result;
}

uint64_t CalendarEvent.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CalendarEvent.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CalendarEvent.location.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CalendarEvent.location.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CalendarEvent.notes.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CalendarEvent.notes.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CalendarEvent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CalendarEvent() + 28);

  return sub_1D9E9354C(v3, a1);
}

uint64_t type metadata accessor for CalendarEvent()
{
  result = qword_1EE0F3058;
  if (!qword_1EE0F3058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9E9354C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CalendarEvent.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CalendarEvent() + 28);

  return sub_1D9E93600(a1, v3);
}

uint64_t sub_1D9E93600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CalendarEvent.schedules.getter()
{
  v1 = *(v0 + *(type metadata accessor for CalendarEvent() + 32));
}

uint64_t CalendarEvent.schedules.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CalendarEvent() + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t CalendarEvent.init(title:location:notes:url:schedules:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v17 = type metadata accessor for CalendarEvent();
  v18 = *(v17 + 28);
  v19 = sub_1D9F2AC4C();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  result = sub_1D9E93600(a7, &a9[v18]);
  *&a9[*(v17 + 32)] = a8;
  return result;
}

uint64_t sub_1D9E93854()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x7365746F6ELL;
  v4 = 7107189;
  if (v1 != 3)
  {
    v4 = 0x656C756465686373;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9E938E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E95C04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E9390C(uint64_t a1)
{
  v2 = sub_1D9E956A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E93948(uint64_t a1)
{
  v2 = sub_1D9E956A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CalendarEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74380, &qword_1D9F38438);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E956A8();
  sub_1D9F2BB8C();
  v11 = *v3;
  v12 = v3[1];
  v25 = 0;
  sub_1D9F2B90C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v24 = 1;
    sub_1D9F2B90C();
    v15 = v3[4];
    v16 = v3[5];
    v23 = 2;
    sub_1D9F2B90C();
    v17 = type metadata accessor for CalendarEvent();
    v18 = *(v17 + 28);
    v22 = 3;
    sub_1D9F2AC4C();
    sub_1D9E95DB4(&qword_1ECB74390, MEMORY[0x1E6968FB0]);
    sub_1D9F2B94C();
    v21 = *(v3 + *(v17 + 32));
    v20[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74398, &qword_1D9F38440);
    sub_1D9E956FC(&qword_1ECB743A0, &qword_1ECB743A8);
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CalendarEvent.hash(into:)()
{
  v1 = type metadata accessor for DateTimeSchedule();
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9F2AC4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - v12;
  if (v0[1])
  {
    v14 = *v0;
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
    if (v0[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D9F2BB1C();
    if (v0[5])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1D9F2BB1C();
  if (!v0[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = v0[2];
  sub_1D9F2BB1C();
  sub_1D9F2B18C();
  if (v0[5])
  {
LABEL_4:
    v16 = v0[4];
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
    goto LABEL_8;
  }

LABEL_7:
  sub_1D9F2BB1C();
LABEL_8:
  v17 = type metadata accessor for CalendarEvent();
  sub_1D9E9354C(v0 + *(v17 + 28), v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D9F2BB1C();
    sub_1D9E95DB4(&qword_1ECB731C8, MEMORY[0x1E6968FB0]);
    sub_1D9F2B0EC();
    (*(v6 + 8))(v9, v5);
  }

  v18 = *(v0 + *(v17 + 32));
  result = MEMORY[0x1DA7438F0](*(v18 + 16));
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v22 = *(v24 + 72);
    do
    {
      sub_1D9E95798(v21, v4, type metadata accessor for DateTimeSchedule);
      DateTimeSchedule.hash(into:)();
      result = sub_1D9E95800(v4, type metadata accessor for DateTimeSchedule);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t CalendarEvent.hashValue.getter()
{
  sub_1D9F2BAFC();
  CalendarEvent.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t CalendarEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB743B0, &qword_1D9F38448);
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = type metadata accessor for CalendarEvent();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 28);
  v17 = sub_1D9F2AC4C();
  v18 = *(*(v17 - 8) + 56);
  v43 = v15;
  v18(v15 + v16, 1, 1, v17);
  v20 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D9E956A8();
  v21 = v45;
  sub_1D9F2BB7C();
  if (v21)
  {
    v45 = v21;
    v22 = v16;
    v23 = v43;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v44);

    return sub_1D9E51FE8(v23 + v22, &qword_1ECB73890, &qword_1D9F38430);
  }

  v38 = v11;
  v39 = v17;
  v24 = v41;
  v51 = 0;
  v25 = sub_1D9F2B7FC();
  v22 = v16;
  v26 = v43;
  *v43 = v25;
  v26[1] = v27;
  v37 = v27;
  v50 = 1;
  v28 = v24;
  v26[2] = sub_1D9F2B7FC();
  v26[3] = v29;
  v49 = 2;
  v30 = sub_1D9F2B7FC();
  v45 = 0;
  v23 = v26;
  v26[4] = v30;
  v26[5] = v31;
  v48 = 3;
  sub_1D9E95DB4(&qword_1ECB743B8, MEMORY[0x1E6968FB0]);
  v32 = v45;
  sub_1D9F2B83C();
  v45 = v32;
  if (v32)
  {
    (*(v28 + 8))(v10, v42);
    goto LABEL_7;
  }

  sub_1D9E93600(v6, v26 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74398, &qword_1D9F38440);
  v47 = 4;
  sub_1D9E956FC(&qword_1ECB743C0, &qword_1ECB743C8);
  v33 = v28;
  v34 = v42;
  v35 = v45;
  sub_1D9F2B89C();
  (*(v33 + 8))(v10, v34);
  v45 = v35;
  if (v35)
  {
    v23 = v26;
    goto LABEL_7;
  }

  *(v26 + *(v38 + 32)) = v46;
  sub_1D9E95798(v26, v40, type metadata accessor for CalendarEvent);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_1D9E95800(v26, type metadata accessor for CalendarEvent);
}

uint64_t sub_1D9E94538()
{
  sub_1D9F2BAFC();
  CalendarEvent.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E9457C()
{
  sub_1D9F2BAFC();
  CalendarEvent.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t CalendarEvent.subentities.getter()
{
  v1 = type metadata accessor for DetectedEntity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for CalendarEvent() + 32));
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D9E9482C(0, v7, 0);
    v8 = v16;
    v9 = *(type metadata accessor for DateTimeSchedule() - 8);
    v10 = v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    do
    {
      sub_1D9E95798(v10, v5, type metadata accessor for DateTimeSchedule);
      swift_storeEnumTagMultiPayload();
      v16 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D9E9482C(v12 > 1, v13 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v13 + 1;
      sub_1D9E95860(v5, v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return v8;
}

char *sub_1D9E947AC(char *a1, int64_t a2, char a3)
{
  result = sub_1D9E948AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D9E947CC(void *a1, int64_t a2, char a3)
{
  result = sub_1D9E949B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D9E947EC(char *a1, int64_t a2, char a3)
{
  result = sub_1D9E94B00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D9E9480C(char *a1, int64_t a2, char a3)
{
  result = sub_1D9E94C04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D9E9482C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D9E94D08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D9E9484C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D9E94EE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D9E9486C(char *a1, int64_t a2, char a3)
{
  result = sub_1D9E950D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D9E9488C(char *a1, int64_t a2, char a3)
{
  result = sub_1D9E951D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D9E948AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74400, &qword_1D9F386C0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D9E949B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB743F0, &unk_1D9F386B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB743F8, &unk_1D9F454E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9E94B00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74438, &qword_1D9F455E0);
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

char *sub_1D9E94C04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74440, &unk_1D9F38700);
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

size_t sub_1D9E94D08(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74428, &qword_1D9F454F0);
  v10 = *(type metadata accessor for DetectedEntity() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DetectedEntity() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1D9E94EE0(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74418, &qword_1D9F386D8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74420, &unk_1D9F386E0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74420, &unk_1D9F386E0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D9E950D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74408, &qword_1D9F386C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D9E951D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74410, &qword_1D9F386D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t _s29VisualActionPredictionSupport13CalendarEventV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D9F2AC4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74430, &unk_1D9F386F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_1D9F2BA1C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v18)
  {
    goto LABEL_28;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (sub_1D9F2BA1C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v20)
  {
    goto LABEL_28;
  }

  v21 = a1[5];
  v22 = a2[5];
  if (v21)
  {
    if (!v22 || (a1[4] != a2[4] || v21 != v22) && (sub_1D9F2BA1C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v22)
  {
    goto LABEL_28;
  }

  v31 = type metadata accessor for CalendarEvent();
  v23 = *(v31 + 28);
  v24 = *(v13 + 48);
  sub_1D9E9354C(a1 + v23, v16);
  sub_1D9E9354C(a2 + v23, &v16[v24]);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v24], 1, v4) == 1)
    {
      sub_1D9E51FE8(v16, &qword_1ECB73890, &qword_1D9F38430);
LABEL_31:
      v26 = sub_1D9E4B13C(*(a1 + *(v31 + 32)), *(a2 + *(v31 + 32)));
      return v26 & 1;
    }

    goto LABEL_27;
  }

  sub_1D9E9354C(v16, v12);
  if (v25(&v16[v24], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_27:
    sub_1D9E51FE8(v16, &qword_1ECB74430, &unk_1D9F386F0);
    goto LABEL_28;
  }

  (*(v5 + 32))(v8, &v16[v24], v4);
  sub_1D9E95DB4(&qword_1ECB731C0, MEMORY[0x1E6968FB0]);
  v28 = sub_1D9F2B10C();
  v29 = *(v5 + 8);
  v29(v8, v4);
  v29(v12, v4);
  sub_1D9E51FE8(v16, &qword_1ECB73890, &qword_1D9F38430);
  if (v28)
  {
    goto LABEL_31;
  }

LABEL_28:
  v26 = 0;
  return v26 & 1;
}

unint64_t sub_1D9E956A8()
{
  result = qword_1ECB74388;
  if (!qword_1ECB74388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74388);
  }

  return result;
}

uint64_t sub_1D9E956FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74398, &qword_1D9F38440);
    sub_1D9E95DB4(a2, type metadata accessor for DateTimeSchedule);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E95798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9E95800(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9E95860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D9E95934()
{
  sub_1D9E95A38();
  if (v0 <= 0x3F)
  {
    sub_1D9E95A88(319, &unk_1EE0F3880, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D9E95A88(319, &qword_1EE0F2318, type metadata accessor for DateTimeSchedule, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9E95A38()
{
  if (!qword_1EE0F2358)
  {
    v0 = sub_1D9F2B59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0F2358);
    }
  }
}

void sub_1D9E95A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D9E95B00()
{
  result = qword_1ECB743D8;
  if (!qword_1ECB743D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB743D8);
  }

  return result;
}

unint64_t sub_1D9E95B58()
{
  result = qword_1ECB743E0;
  if (!qword_1ECB743E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB743E0);
  }

  return result;
}

unint64_t sub_1D9E95BB0()
{
  result = qword_1ECB743E8;
  if (!qword_1ECB743E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB743E8);
  }

  return result;
}

uint64_t sub_1D9E95C04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D9E95DB4(unint64_t *a1, void (*a2)(uint64_t))
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

void static ExecutionResourceRetrievalServiceDefinition.descriptor.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000003ELL;
  *(a1 + 8) = 0x80000001D9F48C80;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 25;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
}

void sub_1D9E95E38(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000003ELL;
  *(a1 + 8) = 0x80000001D9F48C80;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 25;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
}

uint64_t sub_1D9E95EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F736572 && a2 == 0xEB00000000734449)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9E95F3C(uint64_t a1)
{
  v2 = sub_1D9E96160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E95F78(uint64_t a1)
{
  v2 = sub_1D9E96160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExecutionResourceRetrievalServiceDefinition.ResourceRetrievalRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74448, &qword_1D9F38710);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E96160();

  sub_1D9F2BB8C();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74458, &qword_1D9F38718);
  sub_1D9E9636C(&qword_1ECB74460, &qword_1EE0F3868);
  sub_1D9F2B9AC();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9E96160()
{
  result = qword_1ECB74450;
  if (!qword_1ECB74450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74450);
  }

  return result;
}

uint64_t ExecutionResourceRetrievalServiceDefinition.ResourceRetrievalRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74468, &qword_1D9F38720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E96160();
  sub_1D9F2BB7C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74458, &qword_1D9F38718);
    sub_1D9E9636C(&qword_1ECB74470, &qword_1EE0F3860);
    sub_1D9F2B89C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E9636C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74458, &qword_1D9F38718);
    sub_1D9E963F4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E963F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D9F2AD7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E964C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F736572 && a2 == 0xEB0000000070614DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9E9654C(uint64_t a1)
{
  v2 = sub_1D9E96738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E96588(uint64_t a1)
{
  v2 = sub_1D9E96738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExecutionResourceRetrievalServiceDefinition.ResourceRetrievalResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74478, &qword_1D9F38728);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E96738();

  sub_1D9F2BB8C();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74488, &qword_1D9F38730);
  sub_1D9E9678C();
  sub_1D9F2B9AC();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9E96738()
{
  result = qword_1ECB74480;
  if (!qword_1ECB74480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74480);
  }

  return result;
}

unint64_t sub_1D9E9678C()
{
  result = qword_1ECB74490;
  if (!qword_1ECB74490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74488, &qword_1D9F38730);
    sub_1D9E963F4(&qword_1EE0F3868);
    sub_1D9E96834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74490);
  }

  return result;
}

unint64_t sub_1D9E96834()
{
  result = qword_1ECB74498;
  if (!qword_1ECB74498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74498);
  }

  return result;
}

uint64_t ExecutionResourceRetrievalServiceDefinition.ResourceRetrievalResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB744A0, &qword_1D9F38738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E96738();
  sub_1D9F2BB7C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74488, &qword_1D9F38730);
    sub_1D9E96A08();
    sub_1D9F2B89C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9E96A08()
{
  result = qword_1ECB744A8;
  if (!qword_1ECB744A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74488, &qword_1D9F38730);
    sub_1D9E963F4(&qword_1EE0F3860);
    sub_1D9E96AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744A8);
  }

  return result;
}

unint64_t sub_1D9E96AB0()
{
  result = qword_1ECB744B0;
  if (!qword_1ECB744B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744B0);
  }

  return result;
}

unint64_t sub_1D9E96B08()
{
  result = qword_1ECB744B8;
  if (!qword_1ECB744B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744B8);
  }

  return result;
}

unint64_t sub_1D9E96B88()
{
  result = qword_1ECB744C0;
  if (!qword_1ECB744C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744C0);
  }

  return result;
}

uint64_t sub_1D9E96C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D9E96C60()
{
  result = qword_1ECB744C8;
  if (!qword_1ECB744C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744C8);
  }

  return result;
}

unint64_t sub_1D9E96D38()
{
  result = qword_1ECB744D0;
  if (!qword_1ECB744D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744D0);
  }

  return result;
}

unint64_t sub_1D9E96D90()
{
  result = qword_1ECB744D8;
  if (!qword_1ECB744D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744D8);
  }

  return result;
}

unint64_t sub_1D9E96DE8()
{
  result = qword_1ECB744E0;
  if (!qword_1ECB744E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744E0);
  }

  return result;
}

unint64_t sub_1D9E96E40()
{
  result = qword_1ECB744E8;
  if (!qword_1ECB744E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744E8);
  }

  return result;
}

unint64_t sub_1D9E96E98()
{
  result = qword_1ECB744F0;
  if (!qword_1ECB744F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744F0);
  }

  return result;
}

unint64_t sub_1D9E96EF0()
{
  result = qword_1ECB744F8;
  if (!qword_1ECB744F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744F8);
  }

  return result;
}

uint64_t ServiceListener.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t ServiceListener.Callbacks.newSessionHandler.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServiceListener.Callbacks.init(newSessionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ServiceListener.__allocating_init(interfaceType:descriptor:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v4 + 48);
  v8 = *(v4 + 52);
  v9 = swift_allocObject();
  ServiceListener.init(interfaceType:descriptor:targetQueue:)(v9, a2, a3);
  return v9;
}

char *ServiceListener.init(interfaceType:descriptor:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v6 = *v3;
  v50 = sub_1D9F2B47C();
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9F2B48C();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v48 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9F2AFFC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v6[14];
  v17 = v6[11];
  v18 = v6[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(&v4[v16], 1, 2, AssociatedTypeWitness);
  v20 = *(*v4 + 120);
  sub_1D9F2AD7C();
  type metadata accessor for ServiceSession();
  sub_1D9E9C984(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
  *&v4[v20] = sub_1D9F2B07C();
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v21 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v21, qword_1EE0F2380);

  v22 = sub_1D9F2AE6C();
  v23 = sub_1D9F2B42C();

  v24 = os_log_type_enabled(v22, v23);
  v47 = v15;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v52 = v26;
    *v25 = 136315394;
    v27 = *v4;
    v28 = sub_1D9F2BBBC();
    v30 = sub_1D9E71CA4(v28, v29, &v52);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1D9E71CA4(0xD00000000000002BLL, 0x80000001D9F49070, &v52);
    _os_log_impl(&dword_1D9E39000, v22, v23, "%s.%s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v26, -1, -1);
    MEMORY[0x1DA744270](v25, -1, -1);
  }

  v31 = *(*v4 + 96);
  v32 = swift_getAssociatedTypeWitness();
  v33 = *(v32 - 8);
  (*(v33 + 16))(&v4[v31], a2, v32);
  v34 = v51;
  if (!v51)
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1D9F2B68C();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v36 = (*(AssociatedConformanceWitness + 8))(v32, AssociatedConformanceWitness);
    v38 = v37;

    v52 = v36;
    v53 = v38;
    MEMORY[0x1DA742F90](0xD000000000000011, 0x80000001D9F49050);
    v39 = v52;
    v40 = v53;
    v41 = (*(AssociatedConformanceWitness + 16))(v32, AssociatedConformanceWitness);
    v43[1] = v40;
    v44 = a2;
    v51 = v39;
    if (v41 <= 16)
    {
      if (v41 == -1)
      {
        sub_1D9F2AFDC();
        goto LABEL_19;
      }

      if (v41 == 9)
      {
        sub_1D9F2AF9C();
        goto LABEL_19;
      }
    }

    else
    {
      switch(v41)
      {
        case 17:
          sub_1D9F2AFEC();
          goto LABEL_19;
        case 25:
          sub_1D9F2AFBC();
          goto LABEL_19;
        case 33:
          sub_1D9F2AFCC();
LABEL_19:
          sub_1D9E84F4C();
          (*(v45 + 104))(v48, *MEMORY[0x1E69E8098], v46);
          v52 = MEMORY[0x1E69E7CC0];
          sub_1D9E9C984(&unk_1EE0F22D8, MEMORY[0x1E69E8030]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9E84FE0(&qword_1EE0F2300, &unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9F2B5FC();
          v34 = sub_1D9F2B4AC();
          (*(v33 + 8))(v44, v32);
          goto LABEL_20;
      }
    }

    sub_1D9F2AFAC();
    goto LABEL_19;
  }

  (*(v33 + 8))(a2, v32);
LABEL_20:
  *&v4[*(*v4 + 104)] = v34;
  return v4;
}

char *ServiceListener.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v3 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v3, qword_1EE0F2380);

  v4 = sub_1D9F2AE6C();
  v5 = sub_1D9F2B42C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21[0] = v7;
    *v6 = 136315394;
    v8 = *v1;
    v9 = sub_1D9F2BBBC();
    v11 = sub_1D9E71CA4(v9, v10, v21);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1D9E71CA4(0x74696E696564, 0xE600000000000000, v21);
    _os_log_impl(&dword_1D9E39000, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v7, -1, -1);
    MEMORY[0x1DA744270](v6, -1, -1);
  }

  v21[0] = 0;
  v21[1] = 0;
  v22 = 2;
  sub_1D9E97AAC(v21);
  v12 = *(*v1 + 96);
  v15 = v2 + 80;
  v14 = *(v2 + 80);
  v13 = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v1[v12], AssociatedTypeWitness);

  v17 = *(*v1 + 112);
  v18 = type metadata accessor for ServiceListener.State();
  (*(*(v18 - 8) + 8))(&v1[v17], v18);
  v19 = *&v1[*(*v1 + 120)];

  return v1;
}

void sub_1D9E97AAC(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v96 = &v88 - v8;
  v90 = v5;
  v91 = v4;
  v9 = type metadata accessor for ServiceListener.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v97 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v88 - v14;
  v15 = sub_1D9F2B02C();
  v93 = *(v15 - 8);
  v94 = v15;
  v16 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v92 = (&v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v21 = sub_1D9F2AE8C();
  v22 = __swift_project_value_buffer(v21, qword_1EE0F2380);

  sub_1D9E84B2C(v18, v19, v20);
  v23 = sub_1D9F2AE6C();
  v24 = sub_1D9F2B42C();

  sub_1D9E84B4C(v18, v19, v20);
  v25 = os_log_type_enabled(v23, v24);
  v99 = v6;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v89 = v9;
    v27 = v26;
    v28 = swift_slowAlloc();
    v95 = v22;
    v29 = v28;
    v102[0] = v28;
    *v27 = 136315650;
    v30 = *v2;
    v31 = sub_1D9F2BBBC();
    v88 = v10;
    v33 = sub_1D9E71CA4(v31, v32, v102);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1D9E71CA4(0x286C65636E61635FLL, 0xED0000293A726F66, v102);
    *(v27 + 22) = 2080;
    sub_1D9E84B2C(v18, v19, v20);
    v34 = sub_1D9EB922C(v18, v19, v20);
    v36 = sub_1D9E71CA4(v34, v35, v102);
    v6 = v99;

    *(v27 + 24) = v36;
    v10 = v88;
    _os_log_impl(&dword_1D9E39000, v23, v24, "%s.%s reason = %s", v27, 0x20u);
    swift_arrayDestroy();
    v37 = v29;
    v22 = v95;
    MEMORY[0x1DA744270](v37, -1, -1);
    v38 = v27;
    v9 = v89;
    MEMORY[0x1DA744270](v38, -1, -1);
  }

  if (v20 == 2 && !(v19 | v18))
  {
    goto LABEL_8;
  }

  v39 = *(v2 + *(*v2 + 104));
  v41 = v92;
  v40 = v93;
  *v92 = v39;
  v42 = v94;
  (*(v40 + 104))(v41, *MEMORY[0x1E69E8020], v94);
  v43 = v39;
  LOBYTE(v39) = sub_1D9F2B04C();
  (*(v40 + 8))(v41, v42);
  if (v39)
  {
LABEL_8:
    v44 = *(*v2 + 112);
    swift_beginAccess();
    v45 = v98;
    (*(v10 + 16))(v98, v2 + v44, v9);
    v46 = AssociatedTypeWitness;
    v47 = (*(v6 + 48))(v45, 2, AssociatedTypeWitness);
    if (!v47)
    {
      v57 = v96;
      (*(v6 + 32))(v96, v45, v46);

      v95 = v22;
      v58 = sub_1D9F2AE6C();
      v59 = sub_1D9F2B41C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v101[0] = v61;
        *v60 = 136315138;

        v62 = ServiceListener.description.getter();
        v64 = v63;

        v65 = sub_1D9E71CA4(v62, v64, v101);
        v57 = v96;

        *(v60 + 4) = v65;
        _os_log_impl(&dword_1D9E39000, v58, v59, "%s cancelling...", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        v66 = v61;
        v46 = AssociatedTypeWitness;
        MEMORY[0x1DA744270](v66, -1, -1);
        MEMORY[0x1DA744270](v60, -1, -1);
      }

      else
      {
      }

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 48))(v46, AssociatedConformanceWitness);

      v77 = sub_1D9F2AE6C();
      v78 = sub_1D9F2B41C();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v101[0] = v80;
        *v79 = 136315138;

        v81 = ServiceListener.description.getter();
        v83 = v82;

        v84 = sub_1D9E71CA4(v81, v83, v101);

        *(v79 + 4) = v84;
        _os_log_impl(&dword_1D9E39000, v77, v78, "%s cancelled.", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        v85 = v80;
        v46 = AssociatedTypeWitness;
        MEMORY[0x1DA744270](v85, -1, -1);
        MEMORY[0x1DA744270](v79, -1, -1);

        v86 = v99;
        (*(v99 + 8))(v96, v46);
      }

      else
      {

        v86 = v99;
        (*(v99 + 8))(v57, v46);
      }

      v87 = v97;
      (*(v86 + 56))(v97, 2, 2, v46);
      swift_beginAccess();
      (*(v10 + 40))(v2 + v44, v87, v9);
      goto LABEL_23;
    }

    if (v47 == 1)
    {

      v48 = sub_1D9F2AE6C();
      v49 = sub_1D9F2B41C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v101[0] = v51;
        *v50 = 136315138;

        v52 = ServiceListener.description.getter();
        v54 = v53;

        v55 = sub_1D9E71CA4(v52, v54, v101);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_1D9E39000, v48, v49, "%s cancelled without being activated.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        v56 = v51;
        v46 = AssociatedTypeWitness;
        MEMORY[0x1DA744270](v56, -1, -1);
        MEMORY[0x1DA744270](v50, -1, -1);
      }

      else
      {
      }

      v75 = v97;
      (*(v99 + 56))(v97, 2, 2, v46);
      swift_beginAccess();
      (*(v10 + 40))(v2 + v44, v75, v9);
LABEL_23:
      swift_endAccess();
      return;
    }

    v67 = sub_1D9F2AE6C();
    v68 = sub_1D9F2B42C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v101[0] = v70;
      *v69 = 136315138;

      v71 = ServiceListener.description.getter();
      v73 = v72;

      v74 = sub_1D9E71CA4(v71, v73, v101);

      *(v69 + 4) = v74;
      _os_log_impl(&dword_1D9E39000, v67, v68, "%s is already cancelled.", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x1DA744270](v70, -1, -1);
      MEMORY[0x1DA744270](v69, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ServiceListener.__deallocating_deinit()
{
  ServiceListener.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ServiceListener.activate(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D9F2AF8C();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D9F2AFFC();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  v12 = a1[1];
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v14 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v14, qword_1EE0F2380);

  v15 = sub_1D9F2AE6C();
  v16 = sub_1D9F2B42C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v4;
    aBlock[0] = v30;
    *v17 = 136315394;
    v18 = *v2;
    v29 = v16;
    v19 = sub_1D9F2BBBC();
    v21 = v13;
    v22 = sub_1D9E71CA4(v19, v20, aBlock);

    *(v17 + 4) = v22;
    v13 = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1D9E71CA4(0x6574617669746361, 0xEF293A6874697728, aBlock);
    _os_log_impl(&dword_1D9E39000, v15, v29, "%s.%s", v17, 0x16u);
    v23 = v30;
    swift_arrayDestroy();
    v4 = v31;
    MEMORY[0x1DA744270](v23, -1, -1);
    MEMORY[0x1DA744270](v17, -1, -1);
  }

  v24 = *(v2 + *(*v2 + 104));
  v25 = swift_allocObject();
  v25[2] = v2;
  v25[3] = v13;
  v25[4] = v12;
  aBlock[4] = sub_1D9E9C078;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_2;
  v26 = _Block_copy(aBlock);

  sub_1D9F2AFAC();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D9E9C984(&unk_1EE0F2368, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v11, v7, v26);
  _Block_release(v26);
  (*(v34 + 8))(v7, v4);
  (*(v32 + 8))(v11, v33);
}

void sub_1D9E98A28(uint64_t *a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v144 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v147 = &v139 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v150 = &v139 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v149 = &v139 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v152 = &v139 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v146 = &v139 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v143 = &v139 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v154 = &v139 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v148 = &v139 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v163 = *(v26 - 8);
  v27 = *(v163 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v153 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v139 - v30;
  v158 = v4;
  v32 = type metadata accessor for ServiceListener.State();
  v161 = *(v32 - 8);
  v162 = v32;
  v33 = *(v161 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v142 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v139 - v36;
  v38 = sub_1D9F2B02C();
  v159 = *(v38 - 8);
  v160 = v38;
  v39 = *(v159 + 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = (&v139 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = a1[1];
  v145 = *a1;
  v151 = v42;
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v164 = v37;
  v43 = sub_1D9F2AE8C();
  v44 = __swift_project_value_buffer(v43, qword_1EE0F2380);

  v45 = sub_1D9F2AE6C();
  v46 = sub_1D9F2B42C();

  v47 = os_log_type_enabled(v45, v46);
  v157 = v5;
  v155 = AssociatedTypeWitness;
  v156 = v7;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *&v167[0] = v141;
    *v48 = 136315394;
    v49 = *v2;
    v50 = sub_1D9F2BBBC();
    v52 = v31;
    v53 = v2;
    v54 = v26;
    v55 = sub_1D9E71CA4(v50, v51, v167);

    *(v48 + 4) = v55;
    v26 = v54;
    v2 = v53;
    v31 = v52;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_1D9E71CA4(0xD000000000000010, 0x80000001D9F490C0, v167);
    _os_log_impl(&dword_1D9E39000, v45, v46, "%s.%s", v48, 0x16u);
    v56 = v141;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v56, -1, -1);
    MEMORY[0x1DA744270](v48, -1, -1);
  }

  v57 = *(v2 + *(*v2 + 104));
  *v41 = v57;
  v59 = v159;
  v58 = v160;
  (*(v159 + 13))(v41, *MEMORY[0x1E69E8020], v160);
  v60 = v57;
  LOBYTE(v57) = sub_1D9F2B04C();
  (*(v59 + 1))(v41, v58);
  if (v57)
  {
    v160 = v60;
    v61 = *(*v2 + 112);
    swift_beginAccess();
    v62 = v164;
    (*(v161 + 16))(v164, v2 + v61, v162);
    v63 = v163;
    v64 = (*(v163 + 48))(v62, 2, v26);
    if (v64)
    {
      if (v64 == 1)
      {
        v164 = v44;
        v65 = v153;
        (*(v158 + 56))(v2 + *(*v2 + 96), v154);
        v83 = *(v63 + 32);
        v159 = v31;
        v83(v31, v65, v26);

        v84 = sub_1D9F2AE6C();
        v85 = sub_1D9F2B41C();
        v86 = os_log_type_enabled(v84, v85);
        v140 = v26;
        v141 = 0;
        if (v86)
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *&v167[0] = v88;
          *v87 = 136315138;

          v89 = ServiceListener.description.getter();
          v91 = v90;

          v92 = sub_1D9E71CA4(v89, v91, v167);

          *(v87 + 4) = v92;
          _os_log_impl(&dword_1D9E39000, v84, v85, "%s activating...", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          MEMORY[0x1DA744270](v88, -1, -1);
          MEMORY[0x1DA744270](v87, -1, -1);
        }

        else
        {
        }

        v93 = v158;
        v94 = v145;
        v95 = swift_allocObject();
        swift_weakInit();
        v96 = swift_allocObject();
        v97 = v157;
        v96[2] = v157;
        v96[3] = v93;
        v96[4] = v95;
        v98 = swift_allocObject();
        swift_weakInit();
        v99 = swift_allocObject();
        v99[2] = v97;
        v99[3] = v93;
        v99[4] = v98;
        v99[5] = v94;
        v99[6] = v151;
        swift_getAssociatedTypeWitness();
        v100 = v140;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        swift_getAssociatedConformanceWitness();
        v158 = swift_getAssociatedConformanceWitness();
        v102 = v160;
        sub_1D9E77E58(sub_1D9E9C8E0, v96, sub_1D9E9C8EC, v99, v160, v167);
        v165[0] = v167[0];
        v165[1] = v167[1];
        v166 = v168;
        v103 = *(AssociatedConformanceWitness + 40);
        v104 = v102;

        v105 = v159;
        v106 = v141;
        v107 = v146;
        v160 = AssociatedConformanceWitness;
        v103(v165, v146, v100, AssociatedConformanceWitness);
        if (v106)
        {

          v108 = v156;
          v109 = *(v156 + 32);
          v110 = v143;
          v111 = v155;
          v109(v143, v107, v155);
          v112 = v147;
          v109(v147, v110, v111);
          v113 = v144;
          (*(v108 + 16))(v144, v112, v111);

          v114 = sub_1D9F2AE6C();
          v115 = sub_1D9F2B43C();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            *&v167[0] = v164;
            *v116 = 136315394;

            v117 = ServiceListener.description.getter();
            v119 = v118;

            v120 = sub_1D9E71CA4(v117, v119, v167);

            *(v116 + 4) = v120;
            *(v116 + 12) = 2080;
            v121 = sub_1D9F2BAAC();
            v123 = v122;
            v124 = *(v108 + 8);
            v124(v113, v111);
            v125 = sub_1D9E71CA4(v121, v123, v167);

            *(v116 + 14) = v125;
            _os_log_impl(&dword_1D9E39000, v114, v115, "%s failed to activate due to error %s.", v116, 0x16u);
            v126 = v164;
            swift_arrayDestroy();
            MEMORY[0x1DA744270](v126, -1, -1);
            MEMORY[0x1DA744270](v116, -1, -1);
          }

          else
          {

            v124 = *(v108 + 8);
            v124(v113, v111);
          }

          v137 = v159;
          v138 = v140;
          v160[6](v140);
          v124(v147, v111);
          (*(v163 + 8))(v137, v138);
        }

        else
        {

          v127 = v163;
          v128 = v142;
          (*(v163 + 16))(v142, v105, v100);
          (*(v127 + 56))(v128, 0, 2, v100);
          swift_beginAccess();
          (*(v161 + 40))(v2 + v61, v128, v162);
          swift_endAccess();

          v129 = sub_1D9F2AE6C();
          v130 = sub_1D9F2B41C();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            *&v167[0] = v132;
            *v131 = 136315138;

            v133 = ServiceListener.description.getter();
            v135 = v134;

            v136 = sub_1D9E71CA4(v133, v135, v167);

            *(v131 + 4) = v136;
            _os_log_impl(&dword_1D9E39000, v129, v130, "%s activated.", v131, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v132);
            MEMORY[0x1DA744270](v132, -1, -1);
            MEMORY[0x1DA744270](v131, -1, -1);
          }

          else
          {
          }

          (*(v127 + 8))(v105, v100);
        }
      }

      else
      {

        v75 = sub_1D9F2AE6C();
        v76 = sub_1D9F2B43C();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&v167[0] = v78;
          *v77 = 136315138;

          v79 = ServiceListener.description.getter();
          v81 = v80;

          v82 = sub_1D9E71CA4(v79, v81, v167);

          *(v77 + 4) = v82;
          _os_log_impl(&dword_1D9E39000, v75, v76, "%s failed to activate because it is already cancelled.", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v78);
          MEMORY[0x1DA744270](v78, -1, -1);
          MEMORY[0x1DA744270](v77, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {

      v66 = sub_1D9F2AE6C();
      v67 = sub_1D9F2B41C();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *&v167[0] = v69;
        *v68 = 136315138;

        v70 = ServiceListener.description.getter();
        v71 = v63;
        v73 = v72;

        v74 = sub_1D9E71CA4(v70, v73, v167);
        v63 = v71;
        v62 = v164;

        *(v68 + 4) = v74;
        _os_log_impl(&dword_1D9E39000, v66, v67, "%s is already activated.", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x1DA744270](v69, -1, -1);
        MEMORY[0x1DA744270](v68, -1, -1);
      }

      else
      {
      }

      (*(v63 + 8))(v62, v26);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ServiceListener.cancel(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_1D9F2AF8C();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9F2AFFC();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v11 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v11, qword_1EE0F2380);

  v12 = sub_1D9F2AE6C();
  v13 = sub_1D9F2B42C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v8;
    v15 = v14;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v15 = 136315650;
    v16 = *v2;
    v17 = sub_1D9F2BBBC();
    v19 = sub_1D9E71CA4(v17, v18, aBlock);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1D9E71CA4(0x66286C65636E6163, 0xEC000000293A726FLL, aBlock);
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_1D9E71CA4(countAndFlagsBits, object, aBlock);
    _os_log_impl(&dword_1D9E39000, v12, v13, "%s.%s reason = %s", v15, 0x20u);
    v20 = v28;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v20, -1, -1);
    v21 = v15;
    v8 = v29;
    MEMORY[0x1DA744270](v21, -1, -1);
  }

  v22 = *(v2 + *(*v2 + 104));
  v23 = swift_allocObject();
  v23[2] = v2;
  v23[3] = countAndFlagsBits;
  v23[4] = object;
  aBlock[4] = sub_1D9E9C11C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_6_0;
  v24 = _Block_copy(aBlock);

  v25 = v30;
  sub_1D9F2AFAC();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D9E9C984(&unk_1EE0F2368, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  v26 = v33;
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v25, v26, v24);
  _Block_release(v24);
  (*(v31 + 8))(v26, v5);
  (*(v32 + 8))(v25, v8);
}

void sub_1D9E9A398(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v8 = 1;

  sub_1D9E97AAC(&v6);
  v3 = v6;
  v4 = v7;
  v5 = v8;

  sub_1D9E84B4C(v3, v4, v5);
}

uint64_t ServiceListener.messageSender(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v26 = a3;
  v6 = *v3;
  v29 = sub_1D9F2AF8C();
  v31 = *(v29 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D9F2AFFC();
  v28 = *(v30 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9F2AD7C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v4 + v6[13]);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = v6[10];
  *(v19 + 3) = v6[11];
  *(v19 + 4) = v4;
  (*(v14 + 32))(&v19[v17], v16, v13);
  v20 = &v19[v18];
  v21 = v26;
  *v20 = v25;
  *(v20 + 1) = v21;
  aBlock[4] = sub_1D9E9C128;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_12;
  v22 = _Block_copy(aBlock);

  sub_1D9F2AFAC();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1D9E9C984(&unk_1EE0F2368, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  v23 = v29;
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v12, v9, v22);
  _Block_release(v22);
  (*(v31 + 8))(v9, v23);
  (*(v28 + 8))(v12, v30);
}

uint64_t sub_1D9E9A7EC(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, _UNKNOWN **))
{
  v5 = *a1;
  v6 = *(*a1 + 120);
  swift_beginAccess();
  v7 = *(a1 + v6);
  sub_1D9F2AD7C();
  v8 = *(v5 + 80);
  v9 = *(v5 + 88);
  type metadata accessor for ServiceSession();
  sub_1D9E9C984(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
  sub_1D9F2B0BC();
  swift_endAccess();
  if (v13)
  {
    v10 = &protocol witness table for ServiceSession<A>;
  }

  else
  {
    v10 = 0;
  }

  a3(v11, v10);
}

void sub_1D9E9A934(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v10 - v5;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v7 = sub_1D9F2BA0C();
    if (v7)
    {
      v8 = v7;
      (*(v3 + 8))(v6, AssociatedTypeWitness);
    }

    else
    {
      v8 = swift_allocError();
      (*(v3 + 32))(v9, v6, AssociatedTypeWitness);
    }

    sub_1D9E9AB30(v8);
  }
}

uint64_t sub_1D9E9AB30(void *a1)
{
  v2 = v1;
  v4 = sub_1D9F2B02C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v9 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v9, qword_1EE0F2380);

  v10 = a1;
  v11 = sub_1D9F2AE6C();
  v12 = sub_1D9F2B42C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v34 = v4;
    v14 = v13;
    v33 = swift_slowAlloc();
    v36 = v33;
    *v14 = 136315650;
    v15 = *v2;
    v16 = sub_1D9F2BBBC();
    v18 = sub_1D9E71CA4(v16, v17, &v36);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1D9E71CA4(0xD000000000000010, 0x80000001D9F48D80, &v36);
    *(v14 + 22) = 2080;
    ErrorValue = swift_getErrorValue();
    v20 = *(*(v35 - 8) + 64);
    MEMORY[0x1EEE9AC00](ErrorValue);
    (*(v22 + 16))(&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = sub_1D9F2B13C();
    v25 = sub_1D9E71CA4(v23, v24, &v36);

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D9E39000, v11, v12, "%s.%s error = %s", v14, 0x20u);
    v26 = v33;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v26, -1, -1);
    v27 = v14;
    v4 = v34;
    MEMORY[0x1DA744270](v27, -1, -1);
  }

  v28 = *(v2 + *(*v2 + 104));
  *v8 = v28;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v29 = v28;
  v30 = sub_1D9F2B04C();
  result = (*(v5 + 8))(v8, v4);
  if ((v30 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9E9AEE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8[0] = a3;
    v8[1] = a4;
    sub_1D9E9AF5C(a1, v8);
  }

  return result;
}

uint64_t sub_1D9E9AF5C(uint64_t a1, void (**a2)(uint64_t))
{
  v3 = v2;
  v6 = *v3;
  v109 = sub_1D9F2AD7C();
  v107 = *(v109 - 8);
  v7 = v107[8];
  v8 = MEMORY[0x1EEE9AC00](v109);
  v97 = &v88[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v106 = &v88[-v11];
  v98 = v12;
  MEMORY[0x1EEE9AC00](v10);
  v108 = &v88[-v13];
  v14 = *(v6 + 88);
  v15 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = *(AssociatedTypeWitness - 8);
  v16 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v93 = &v88[-v17];
  v18 = sub_1D9F2B02C();
  v99 = *(v18 - 8);
  v100 = v18;
  v19 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v88[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = v15;
  v105 = v14;
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v103 = &v88[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v88[-v27];
  v29 = *a2;
  v95 = a2[1];
  v96 = v29;
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v30 = sub_1D9F2AE8C();
  v31 = __swift_project_value_buffer(v30, qword_1EE0F2380);
  v32 = *(v23 + 16);
  v101 = a1;
  v32(v28, a1, v22);

  v91 = v31;
  v33 = sub_1D9F2AE6C();
  v34 = sub_1D9F2B42C();

  v35 = os_log_type_enabled(v33, v34);
  v102 = v32;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v110[0] = v90;
    *v36 = 136315650;
    v37 = *v3;
    v38 = sub_1D9F2BBBC();
    v39 = v22;
    v41 = sub_1D9E71CA4(v38, v40, v110);
    v89 = v34;
    v42 = v41;

    *(v36 + 4) = v42;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_1D9E71CA4(0xD000000000000022, 0x80000001D9F490E0, v110);
    *(v36 + 22) = 2080;
    (v102)(v103, v28, v22);
    v43 = sub_1D9F2B13C();
    v45 = v44;
    v46 = v28;
    v47 = v39;
    (*(v23 + 8))(v46, v39);
    v48 = sub_1D9E71CA4(v43, v45, v110);

    *(v36 + 24) = v48;
    _os_log_impl(&dword_1D9E39000, v33, v89, "%s.%s incomingConnection = %s", v36, 0x20u);
    v49 = v90;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v49, -1, -1);
    MEMORY[0x1DA744270](v36, -1, -1);
  }

  else
  {

    v50 = v28;
    v47 = v22;
    (*(v23 + 8))(v50, v22);
  }

  v51 = *(v3 + *(*v3 + 104));
  *v21 = v51;
  v53 = v99;
  v52 = v100;
  (*(v99 + 104))(v21, *MEMORY[0x1E69E8020], v100);
  v54 = v51;
  LOBYTE(v51) = sub_1D9F2B04C();
  result = (*(v53 + 8))(v21, v52);
  v56 = v101;
  if (v51)
  {
    v100 = v54;
    v57 = v104;
    type metadata accessor for ServiceSession();
    v58 = v93;
    (*(v92 + 16))(v93, v3 + *(*v3 + 96), AssociatedTypeWitness);
    v59 = v103;
    (v102)(v103, v56, v47);
    v60 = sub_1D9EB9EF4(v57, v58, 0, v59);
    v61 = v108;
    v62 = v107[2];
    v63 = v109;
    (v62)(v108, v60 + qword_1EE0FF698, v109);
    (v62)(v106, v61, v63);
    v110[3] = v60;
    v64 = *(*v3 + 120);
    swift_beginAccess();
    sub_1D9E9C984(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
    sub_1D9F2B0AC();

    sub_1D9F2B0CC();
    swift_endAccess();
    v65 = v97;
    v103 = v62;
    (v62)(v97, v61, v63);

    v66 = sub_1D9F2AE6C();
    v67 = sub_1D9F2B41C();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v110[0] = v101;
      *v68 = 136315394;

      LODWORD(v99) = v67;
      v69 = ServiceListener.description.getter();
      v71 = v70;

      v72 = sub_1D9E71CA4(v69, v71, v110);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2080;
      sub_1D9E9C984(&unk_1EE0F3850, MEMORY[0x1E69695A8]);
      v73 = sub_1D9F2B9FC();
      v75 = v74;
      v76 = v107;
      v102 = v107[1];
      v102(v65, v109);
      v77 = sub_1D9E71CA4(v73, v75, v110);

      *(v68 + 14) = v77;
      _os_log_impl(&dword_1D9E39000, v66, v99, "%s added session %s.", v68, 0x16u);
      v78 = v101;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v78, -1, -1);
      MEMORY[0x1DA744270](v68, -1, -1);
    }

    else
    {

      v76 = v107;
      v102 = v107[1];
      v102(v65, v109);
    }

    v96(v60);
    v79 = swift_allocObject();
    swift_weakInit();
    v80 = v106;
    v81 = v108;
    v82 = v109;
    (v103)(v106, v108, v109);
    v83 = (*(v76 + 80) + 48) & ~*(v76 + 80);
    v84 = swift_allocObject();
    v85 = v105;
    *(v84 + 2) = v104;
    *(v84 + 3) = v85;
    v86 = v100;
    *(v84 + 4) = v100;
    *(v84 + 5) = v79;
    (v76[4])(&v84[v83], v80, v82);
    v87 = v86;

    ServiceSession.addCancellationHandler(on:_:)(v86, sub_1D9E9C8FC, v84);

    ServiceSession.activate()();

    return (v102)(v81, v82);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9E9B9CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a4;
  v8 = sub_1D9F2AD7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v16 = sub_1D9F2B02C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v20 = a2;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v21 = a2;
  LOBYTE(a2) = sub_1D9F2B04C();
  (*(v17 + 8))(v20, v16);
  if ((a2 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v20 = result;
  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v23 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v23, qword_1EE0F2380);
  v42 = *(v9 + 16);
  v42(v15, v44, v8);

  v24 = sub_1D9F2AE6C();
  v25 = sub_1D9F2B41C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40 = a6;
    v27 = v26;
    v39 = swift_slowAlloc();
    v45[0] = v39;
    *v27 = 136315394;

    v28 = ServiceListener.description.getter();
    v41 = v13;
    v30 = v29;

    v31 = sub_1D9E71CA4(v28, v30, v45);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    sub_1D9E9C984(&unk_1EE0F3850, MEMORY[0x1E69695A8]);
    v32 = sub_1D9F2B9FC();
    v34 = v33;
    (*(v9 + 8))(v15, v8);
    v35 = sub_1D9E71CA4(v32, v34, v45);
    v13 = v41;

    *(v27 + 14) = v35;
    _os_log_impl(&dword_1D9E39000, v24, v25, "%s removed session %s.", v27, 0x16u);
    v36 = v39;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v36, -1, -1);
    MEMORY[0x1DA744270](v27, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v15, v8);
  }

  v42(v13, v44, v8);
  v45[3] = 0;
  v37 = *(*v20 + 120);
  swift_beginAccess();
  type metadata accessor for ServiceSession();
  sub_1D9E9C984(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
  sub_1D9F2B0AC();
  sub_1D9F2B0CC();
  swift_endAccess();
}

uint64_t ServiceListener.description.getter()
{
  v1 = *v0;
  sub_1D9F2B68C();
  v2 = *v0;
  v3 = sub_1D9F2BBBC();

  MEMORY[0x1DA742F90](0x20656D616E207B20, 0xEA0000000000203DLL);
  v4 = *(*v0 + 96);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 8);
  v9 = swift_checkMetadataState();
  v10 = v8(v9, AssociatedConformanceWitness);
  MEMORY[0x1DA742F90](v10);

  MEMORY[0x1DA742F90](32032, 0xE200000000000000);
  return v3;
}

void sub_1D9E9C078()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D9E98A28(&v2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_2(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1D9E9C128()
{
  v1 = *(sub_1D9F2AD7C() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v0 + 32);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1D9E9A7EC(v3, v0 + v2, v5);
}

uint64_t sub_1D9E9C1BC(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = type metadata accessor for ServiceListener.State();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D9E9C310()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D9E9C36C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1D9E9C3D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 2;
  v12 = *(v9 + 64);
  if (v10 <= 1)
  {
    v11 = 0;
    if (v12 <= 3)
    {
      v14 = (~(-1 << (8 * v12)) - v10 + 2) >> (8 * v12);
      if (v14 > 0xFFFE)
      {
        v13 = 4;
      }

      else
      {
        v15 = 1;
        if (v14 >= 0xFF)
        {
          v15 = 2;
        }

        if (v14)
        {
          v13 = v15;
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

    v12 += v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v11)
  {
    v16 = 8 * v12;
    if (v12 <= 3)
    {
      v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v18))
      {
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }

      if (v18 > 0xFF)
      {
        v17 = *(a1 + v12);
        if (!*(a1 + v12))
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }

      if (v18 < 2)
      {
LABEL_33:
        if (!v11)
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    v17 = *(a1 + v12);
    if (!*(a1 + v12))
    {
      goto LABEL_33;
    }

LABEL_22:
    v19 = (v17 - 1) << v16;
    if (v12 > 3)
    {
      v19 = 0;
    }

    if (v12)
    {
      if (v12 > 3)
      {
        LODWORD(v12) = 4;
      }

      if (v12 > 2)
      {
        if (v12 == 3)
        {
          LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          LODWORD(v12) = *a1;
        }
      }

      else if (v12 == 1)
      {
        LODWORD(v12) = *a1;
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    return v11 + (v12 | v19) + 1;
  }

LABEL_34:
  if (!v10)
  {
    return 0;
  }

  v20 = (*(v9 + 48))(a1, v10, AssociatedTypeWitness);
  v21 = v20 >= 2;
  result = v20 - 2;
  if (result == 0 || !v21)
  {
    return 0;
  }

  return result;
}

void sub_1D9E9C5C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 2;
  v12 = *(v9 + 64);
  v13 = v12;
  if (v10 <= 1)
  {
    v11 = 0;
    if (v12 <= 3)
    {
      v15 = (~(-1 << (8 * v12)) - v10 + 2) >> (8 * v12);
      if (v15 > 0xFFFE)
      {
        v14 = 4;
      }

      else
      {
        v16 = 1;
        if (v15 >= 0xFF)
        {
          v16 = 2;
        }

        if (v15)
        {
          v14 = v16;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }

    v13 = v14 + v12;
  }

  v17 = a3 - v11;
  if (a3 <= v11)
  {
    v18 = 0;
    if (v11 < a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v18 = 1;
    if (v13 <= 3)
    {
      v19 = ((v17 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      v20 = HIWORD(v19);
      if (v19 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v19 >= 2)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if (v20)
      {
        v18 = 4;
      }

      else
      {
        v18 = v22;
      }
    }

    if (v11 < a2)
    {
LABEL_24:
      v23 = ~v11 + a2;
      if (v13 < 4)
      {
        v24 = (v23 >> (8 * v13)) + 1;
        if (v13)
        {
          v25 = v23 & ~(-1 << (8 * v13));
          bzero(a1, v13);
          if (v13 != 3)
          {
            if (v13 == 2)
            {
              *a1 = v25;
              if (v18 > 1)
              {
LABEL_61:
                if (v18 == 2)
                {
                  *&a1[v13] = v24;
                }

                else
                {
                  *&a1[v13] = v24;
                }

                return;
              }
            }

            else
            {
              *a1 = v23;
              if (v18 > 1)
              {
                goto LABEL_61;
              }
            }

            goto LABEL_58;
          }

          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        if (v18 > 1)
        {
          goto LABEL_61;
        }
      }

      else
      {
        bzero(a1, v13);
        *a1 = v23;
        v24 = 1;
        if (v18 > 1)
        {
          goto LABEL_61;
        }
      }

LABEL_58:
      if (v18)
      {
        a1[v13] = v24;
      }

      return;
    }
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v13] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v18)
  {
    goto LABEL_39;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (a2 + 2 <= v10)
  {
    v29 = *(v9 + 56);

    v29(a1, a2 + 2);
  }

  else
  {
    if (v12 <= 3)
    {
      v26 = ~(-1 << (8 * v12));
    }

    else
    {
      v26 = -1;
    }

    if (v12)
    {
      v27 = v26 & (a2 - v10 + 1);
      if (v12 <= 3)
      {
        v28 = v12;
      }

      else
      {
        v28 = 4;
      }

      bzero(a1, v12);
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else
        {
          *a1 = v27;
        }
      }

      else if (v28 == 1)
      {
        *a1 = v27;
      }

      else
      {
        *a1 = v27;
      }
    }
  }
}

void sub_1D9E9C8E0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1D9E9A934(a1);
}

uint64_t sub_1D9E9C8EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D9E9AEE0(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_1D9E9C8FC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_1D9F2AD7C() - 8);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1D9E9B9CC(a1, v6, v7, v8, v3, v4);
}

uint64_t sub_1D9E9C984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ServiceRole.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t ServiceRole.description.getter()
{
  if (*v0)
  {
    return 0x726576726573;
  }

  else
  {
    return 0x746E65696C63;
  }
}

unint64_t sub_1D9E9CAC0()
{
  result = qword_1ECB74500;
  if (!qword_1ECB74500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74500);
  }

  return result;
}

uint64_t sub_1D9E9CB14()
{
  if (*v0)
  {
    return 0x726576726573;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t ServiceMessageSender.sendMessage<A>(async:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D9E9CB7C, 0, 0);
}

uint64_t sub_1D9E9CB7C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v10;
  *(v3 + 40) = v9;
  *(v3 + 56) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v5 = v0;
  v5[1] = sub_1D9E9CCB8;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000013, 0x80000001D9F49110, sub_1D9E9D028, v3, AssociatedTypeWitness);
}

uint64_t sub_1D9E9CCB8()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D9E9CDF4, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D9E9CDF4()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1D9E9CE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[0] = a3;
  v20[1] = a2;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v12 = sub_1D9F2B30C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - v15;
  (*(v13 + 16))(v20 - v15, a1, v12);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  *(v18 + 4) = a6;
  *(v18 + 5) = a7;
  (*(v13 + 32))(&v18[v17], v16, v12);
  (*(a6 + 8))(v20[0], 0, sub_1D9E9D0FC, v18, a5, a7, a4, a6);
}

uint64_t sub_1D9E9D074(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v2 = sub_1D9F2B30C();
  return sub_1D9E9D1E4(a1, v2);
}

uint64_t sub_1D9E9D0FC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v7 = *(*(sub_1D9F2B30C() - 8) + 80);

  return sub_1D9E9D074(a1);
}

uint64_t sub_1D9E9D1E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_1D9F2BB5C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_1D9F2B2EC();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_1D9F2B2FC();
  }
}

VisualActionPredictionSupport::Workflow_optional __swiftcall Workflow.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D9E9D504()
{
  result = qword_1ECB74508;
  if (!qword_1ECB74508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74508);
  }

  return result;
}

unint64_t sub_1D9E9D568()
{
  result = qword_1EE0F2398[0];
  if (!qword_1EE0F2398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F2398);
  }

  return result;
}

id sub_1D9E9D5BC()
{
  result = [objc_opt_self() clientWithIdentifier_];
  qword_1EE0F1C60 = result;
  return result;
}

uint64_t (*sub_1D9E9D5FC())(void)
{
  result = sub_1D9E9D61C();
  qword_1ECB74510 = result;
  return result;
}

uint64_t (*sub_1D9E9D7D4(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void)))(void)
{
  v9 = sub_1D9F2AC4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AssetManager();
  v14 = sub_1D9E9E63C();
  if (v4)
  {
    return a4;
  }

  v43 = v10;
  v44 = a3;
  v45 = a4;
  v46 = 0;
  if (v15)
  {
    v16 = v15;
    v17 = v14;
    v18 = [objc_opt_self() defaultManager];
    v42 = v17;
    v19 = sub_1D9F2B11C();
    v20 = [v18 fileExistsAtPath_];

    if (v20)
    {
      if (qword_1EE0F12C8 != -1)
      {
        swift_once();
      }

      v21 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v21, qword_1EE0F12D0);

      v22 = sub_1D9F2AE6C();
      v23 = sub_1D9F2B45C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v47 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_1D9E71CA4(a1, a2, &v47);
        _os_log_impl(&dword_1D9E39000, v22, v23, "Asset with name: %s is on Trial. Retrieving asset from Trial path", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1DA744270](v25, -1, -1);
        MEMORY[0x1DA744270](v24, -1, -1);
      }

      v26 = v44;
      a4 = v45;
      v27 = MEMORY[0x1DA743BB0]();
      v28 = v46;
      v29 = sub_1D9E9DE9C(v42, v16, v26, a4);
      if (!v28)
      {
        a4 = v29;
      }

      objc_autoreleasePoolPop(v27);

      return a4;
    }
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass_];
  v32 = sub_1D9F2B11C();
  v33 = sub_1D9F2B11C();
  v34 = [v31 URLForResource:v32 withExtension:v33];

  if (v34)
  {
    sub_1D9F2AC1C();

    a4 = sub_1D9F2AC2C();
    v36 = v35;
    v37 = MEMORY[0x1DA743BB0]();
    v38 = v46;
    v39 = sub_1D9E9DE9C(a4, v36, v44, v45);
    if (!v38)
    {
      a4 = v39;
    }

    objc_autoreleasePoolPop(v37);

    (*(v43 + 8))(v13, v9);
  }

  else
  {
    sub_1D9E9E788();
    a4 = swift_allocError();
    swift_willThrow();
  }

  return a4;
}

uint64_t (*sub_1D9E9DC40())(void)
{
  result = sub_1D9E9DC60();
  qword_1EE0F1C50 = result;
  return result;
}

uint64_t sub_1D9E9DE3C(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_1D9E9DE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_self();
  v7 = sub_1D9F2B11C();
  v20[0] = 0;
  v8 = [v6 dictionaryWithPath:v7 error:v20];

  v9 = v20[0];
  if (v8)
  {
    v10 = sub_1D9F2B09C();
    v11 = v9;

    v12 = a3(v10);

    if (v12)
    {
      result = v12;
    }

    else
    {
      if (qword_1EE0F12C8 != -1)
      {
        swift_once();
      }

      v15 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v15, qword_1EE0F12D0);
      v16 = sub_1D9F2AE6C();
      v17 = sub_1D9F2B43C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1D9E39000, v16, v17, "Failed to cast dictionary to expected type", v18, 2u);
        MEMORY[0x1DA744270](v18, -1, -1);
      }

      result = a4(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v14 = v20[0];
    sub_1D9F2AB7C();

    result = swift_willThrow();
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D9E9E0A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74538, &unk_1D9F38F20);
    v2 = sub_1D9F2B7AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_1D9E722B0(*(a1 + 56) + 32 * v15, v28);
        *&v27 = v17;
        *(&v27 + 1) = v18;
        v25[2] = v27;
        v26[0] = v28[0];
        v26[1] = v28[1];
        v19 = v27;
        sub_1D9E3CA7C(v26, v25);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73470, &qword_1D9F2FAD8);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1D9EEA3F4(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v24;

          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1D9E9E308(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74520, &qword_1D9F38F08);
    v2 = sub_1D9F2B7AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_1D9E722B0(*(a1 + 56) + 32 * v14, v33);
        *&v32 = v16;
        *(&v32 + 1) = v17;
        v30[2] = v32;
        v31[0] = v33[0];
        v31[1] = v33[1];
        v18 = v32;
        sub_1D9E3CA7C(v31, &v25);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74528, &qword_1D9F38F10);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1D9E3CA7C(v24, v26);
        sub_1D9E3CA7C(v26, v27);
        v28 = v18;
        sub_1D9E3CA7C(v27, v29);
        v19 = v28;
        sub_1D9E3CA7C(v29, v30);
        sub_1D9E3CA7C(v30, &v28);
        result = sub_1D9EEA3F4(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1D9E3CA7C(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_1D9E3CA7C(&v28, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      memset(v24, 0, sizeof(v24));
      sub_1D9E51FE8(v24, &qword_1ECB74530, &qword_1D9F38F18);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_1D9E9E63C()
{
  if (qword_1EE0F1C58 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE0F1C60;
  v1 = sub_1D9F2B11C();
  v2 = sub_1D9F2B11C();
  v3 = [v0 levelForFactor:v1 withNamespaceName:v2];

  if (!v3)
  {
    return 0;
  }

  result = [v3 fileValue];
  if (result)
  {
    v5 = result;
    v6 = [result path];

    if (v6)
    {
      v7 = sub_1D9F2B12C();

      return v7;
    }

    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9E9E788()
{
  result = qword_1ECB74518;
  if (!qword_1ECB74518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74518);
  }

  return result;
}

unint64_t sub_1D9E9E7F0()
{
  result = qword_1ECB74540;
  if (!qword_1ECB74540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74540);
  }

  return result;
}

VisualActionPredictionSupport::Identification::Kind_optional __swiftcall Identification.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9F2B7BC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Identification.Kind.rawValue.getter()
{
  v1 = 0x72656B636F4CLL;
  if (*v0 != 1)
  {
    v1 = 0x676E696B726150;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1768319319;
  }
}

uint64_t sub_1D9E9E900(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x72656B636F4CLL;
  if (v2 != 1)
  {
    v4 = 0x676E696B726150;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1768319319;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x72656B636F4CLL;
  if (*a2 != 1)
  {
    v8 = 0x676E696B726150;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1768319319;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9F2BA1C();
  }

  return v11 & 1;
}

uint64_t sub_1D9E9E9F4()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E9EA8C()
{
  *v0;
  *v0;
  sub_1D9F2B18C();
}

uint64_t sub_1D9E9EB10()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

void sub_1D9E9EBB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x72656B636F4CLL;
  if (v2 != 1)
  {
    v5 = 0x676E696B726150;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1768319319;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Identification.accountName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Identification.accountName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Identification.accountPassword.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Identification.accountPassword.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Identification.itemNumber.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Identification.itemNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1D9E9EEB0()
{
  v1 = 1684957547;
  v2 = 0x50746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0x626D754E6D657469;
  }

  if (*v0)
  {
    v1 = 0x4E746E756F636361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9E9EF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E9FD54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E9EF64(uint64_t a1)
{
  v2 = sub_1D9E9F94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E9EFA0(uint64_t a1)
{
  v2 = sub_1D9E9F94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Identification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74548, &qword_1D9F38FF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v15[4] = *(v1 + 2);
  v15[5] = v10;
  v11 = *(v1 + 3);
  v15[2] = *(v1 + 4);
  v15[3] = v11;
  v12 = *(v1 + 5);
  v15[0] = *(v1 + 6);
  v15[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E9F94C();
  sub_1D9F2BB8C();
  v20 = v9;
  v19 = 0;
  sub_1D9E9F9A0();
  sub_1D9F2B9AC();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v18 = 1;
  sub_1D9F2B90C();
  v17 = 2;
  sub_1D9F2B90C();
  v16 = 3;
  sub_1D9F2B90C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Identification.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  *v0;
  sub_1D9F2B18C();

  if (v2)
  {
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D9F2BB1C();
    if (v6)
    {
      goto LABEL_4;
    }

    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1D9F2BB1C();
  sub_1D9F2B18C();
  if (!v6)
  {
    return sub_1D9F2BB1C();
  }

LABEL_4:
  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t Identification.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  sub_1D9F2BAFC();
  Identification.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t Identification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74560, &qword_1D9F38FF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E9F94C();
  sub_1D9F2BB7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v31 = 0;
    sub_1D9E9F9F4();
    sub_1D9F2B89C();
    v11 = v32;
    v30 = 1;
    v12 = sub_1D9F2B7FC();
    v15 = v14;
    v26 = v11;
    v27 = v12;
    v29 = 2;
    v16 = sub_1D9F2B7FC();
    v18 = v17;
    v25 = v16;
    v28 = 3;
    v19 = sub_1D9F2B7FC();
    v21 = v20;
    v22 = *(v6 + 8);
    v24 = v19;
    v22(v9, v5);
    *a2 = v26;
    *(a2 + 8) = v27;
    *(a2 + 16) = v15;
    v23 = v24;
    *(a2 + 24) = v25;
    *(a2 + 32) = v18;
    *(a2 + 40) = v23;
    *(a2 + 48) = v21;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1D9E9F67C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  sub_1D9F2BAFC();
  Identification.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E9F6E0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  sub_1D9F2BAFC();
  Identification.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport14IdentificationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  v21 = *(a1 + 5);
  v22 = *(a1 + 3);
  v24 = *(a1 + 6);
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v20 = *(a2 + 40);
  v23 = *(a2 + 48);
  v10 = 0xE600000000000000;
  v11 = 0x72656B636F4CLL;
  if (v2 != 1)
  {
    v11 = 0x676E696B726150;
    v10 = 0xE700000000000000;
  }

  if (*a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1768319319;
  }

  if (v2)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  v14 = 0xE600000000000000;
  v15 = 0x72656B636F4CLL;
  if (*a2 != 1)
  {
    v15 = 0x676E696B726150;
    v14 = 0xE700000000000000;
  }

  if (*a2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1768319319;
  }

  if (*a2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  if (v12 == v16 && v13 == v17)
  {
  }

  else
  {
    v18 = sub_1D9F2BA1C();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v6 || (v3 != v7 || v4 != v6) && (sub_1D9F2BA1C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8 || (v22 != v9 || v5 != v8) && (sub_1D9F2BA1C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v24)
  {
    if (v23 && (v21 == v20 && v24 == v23 || (sub_1D9F2BA1C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v23)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D9E9F94C()
{
  result = qword_1ECB74550;
  if (!qword_1ECB74550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74550);
  }

  return result;
}

unint64_t sub_1D9E9F9A0()
{
  result = qword_1ECB74558;
  if (!qword_1ECB74558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74558);
  }

  return result;
}

unint64_t sub_1D9E9F9F4()
{
  result = qword_1ECB74568;
  if (!qword_1ECB74568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74568);
  }

  return result;
}

unint64_t sub_1D9E9FA4C()
{
  result = qword_1ECB74570;
  if (!qword_1ECB74570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74570);
  }

  return result;
}

unint64_t sub_1D9E9FAA4()
{
  result = qword_1ECB74578;
  if (!qword_1ECB74578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74580, &qword_1D9F390A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74578);
  }

  return result;
}

unint64_t sub_1D9E9FB0C()
{
  result = qword_1ECB74588;
  if (!qword_1ECB74588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74588);
  }

  return result;
}

uint64_t sub_1D9E9FB60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D9E9FBBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1D9E9FC50()
{
  result = qword_1ECB74590;
  if (!qword_1ECB74590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74590);
  }

  return result;
}

unint64_t sub_1D9E9FCA8()
{
  result = qword_1ECB74598;
  if (!qword_1ECB74598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74598);
  }

  return result;
}

unint64_t sub_1D9E9FD00()
{
  result = qword_1ECB745A0;
  if (!qword_1ECB745A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB745A0);
  }

  return result;
}

uint64_t sub_1D9E9FD54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E746E756F636361 && a2 == 0xEB00000000656D61 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50746E756F636361 && a2 == 0xEF64726F77737361 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x626D754E6D657469 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1D9E9FECC()
{
  result = qword_1ECB745A8;
  if (!qword_1ECB745A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB745A8);
  }

  return result;
}

BOOL static TimeoutPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D9E9FFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EA0028(uint64_t a1)
{
  v2 = sub_1D9EA05E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA0064(uint64_t a1)
{
  v2 = sub_1D9EA05E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA00A0()
{
  if (*v0)
  {
    return 0x7265746661;
  }

  else
  {
    return 0x726576656ELL;
  }
}

uint64_t sub_1D9EA00CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726576656ELL && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265746661 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9EA01A0(uint64_t a1)
{
  v2 = sub_1D9EA058C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA01DC(uint64_t a1)
{
  v2 = sub_1D9EA058C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA0218(uint64_t a1)
{
  v2 = sub_1D9EA0634();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA0254(uint64_t a1)
{
  v2 = sub_1D9EA0634();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeoutPolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745B0, &qword_1D9F393E0);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745B8, &qword_1D9F393E8);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745C0, &qword_1D9F393F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA058C();
  sub_1D9F2BB8C();
  if (v16)
  {
    v27 = 0;
    sub_1D9EA0634();
    sub_1D9F2B8FC();
    (*(v22 + 8))(v9, v23);
  }

  else
  {
    v28 = 1;
    sub_1D9EA05E0();
    v19 = v24;
    sub_1D9F2B8FC();
    v20 = v26;
    sub_1D9F2B97C();
    (*(v25 + 8))(v19, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1D9EA058C()
{
  result = qword_1EE0F2FA8;
  if (!qword_1EE0F2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2FA8);
  }

  return result;
}

unint64_t sub_1D9EA05E0()
{
  result = qword_1EE0F2F90;
  if (!qword_1EE0F2F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F90);
  }

  return result;
}

unint64_t sub_1D9EA0634()
{
  result = qword_1ECB745C8;
  if (!qword_1ECB745C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB745C8);
  }

  return result;
}

uint64_t TimeoutPolicy.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x1DA7438F0](0);
  }

  v2 = *v0;
  MEMORY[0x1DA7438F0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x1DA743920](v3);
}

uint64_t TimeoutPolicy.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D9F2BAFC();
  if (v2)
  {
    MEMORY[0x1DA7438F0](0);
  }

  else
  {
    MEMORY[0x1DA7438F0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA743920](v3);
  }

  return sub_1D9F2BB4C();
}

uint64_t TimeoutPolicy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745D0, &qword_1D9F393F8);
  v39 = *(v37 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745D8, &qword_1D9F39400);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745E0, &qword_1D9F39408);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D9EA058C();
  v17 = v41;
  sub_1D9F2BB7C();
  if (!v17)
  {
    v36 = v6;
    v41 = v11;
    v18 = v40;
    v19 = sub_1D9F2B8DC();
    v20 = (2 * *(v19 + 16)) | 1;
    v44 = v19;
    v45 = v19 + 32;
    v46 = 0;
    v47 = v20;
    v21 = sub_1D9E4618C();
    v22 = v10;
    if (v21 == 2 || v46 != v47 >> 1)
    {
      v26 = sub_1D9F2B6BC();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
      *v28 = &type metadata for TimeoutPolicy;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v41 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = v21;
      if (v21)
      {
        v43 = 1;
        sub_1D9EA05E0();
        v24 = v5;
        sub_1D9F2B7DC();
        v25 = v41;
        v32 = v18;
        v33 = v37;
        sub_1D9F2B86C();
        v35 = v34;
        (*(v39 + 8))(v24, v33);
        (*(v25 + 8))(v14, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0;
        sub_1D9EA0634();
        sub_1D9F2B7DC();
        v31 = v41;
        v32 = v18;
        (*(v38 + 8))(v9, v36);
        (*(v31 + 8))(v14, v10);
        swift_unknownObjectRelease();
        v35 = 0;
      }

      *v32 = v35;
      *(v32 + 8) = (v23 & 1) == 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_1D9EA0C78()
{
  if (v0[1])
  {
    return MEMORY[0x1DA7438F0](0);
  }

  v2 = *v0;
  MEMORY[0x1DA7438F0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x1DA743920](v3);
}

uint64_t sub_1D9EA0CC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D9F2BAFC();
  if (v2)
  {
    MEMORY[0x1DA7438F0](0);
  }

  else
  {
    MEMORY[0x1DA7438F0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA743920](v3);
  }

  return sub_1D9F2BB4C();
}

BOOL sub_1D9EA0D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t TimeoutPolicy.makeWatchdogTimer(identifier:leeway:strict:qualityOfService:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4, double a5)
{
  v52 = a4;
  v51 = a3;
  v55 = a2;
  v8 = sub_1D9F2AFFC();
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D9F2B4CC();
  v56 = *(v58 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9F2AF7C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v47 - v19);
  v21 = type metadata accessor for WatchdogTimer.Configuration(0);
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  if (*(v5 + 8))
  {
    return v25;
  }

  v26 = *v5;
  v27 = type metadata accessor for WatchdogTimer(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FE0, &unk_1D9F3E4F0);
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = 0;
  *(v30 + v31) = v32;
  *(v32 + 40) = 0;
  v59 = 0xD00000000000003CLL;
  v60 = 0x80000001D9F491E0;
  result = MEMORY[0x1DA742F90](a1, v55);
  v34 = v26 * 1000000000.0;
  if (COERCE__INT64(fabs(v26 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v55 = v59;
  v49 = v8;
  v50 = v60;
  *v20 = v34;
  v35 = *MEMORY[0x1E69E7F28];
  v36 = *(v14 + 104);
  result = v36(v20, v35, v13);
  v37 = a5 * 1000000000.0;
  if (COERCE__INT64(fabs(a5 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v37 < 9.22337204e18)
  {
    v48 = v14;
    *v18 = v37;
    v36(v18, v35, v13);
    if (v51)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745E8, &qword_1D9F3E500);
      v38 = *(v56 + 72);
      v39 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1D9F2F8F0;
      sub_1D9F2B4BC();
      v59 = v40;
    }

    else
    {
      v59 = MEMORY[0x1E69E7CC0];
    }

    sub_1D9EA1330();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FF0, &unk_1D9F39410);
    sub_1D9EA1388();
    sub_1D9F2B5FC();
    v41 = v49;
    v42 = v53;
    v43 = v54;
    v47 = v30;
    if (v52 <= 16)
    {
      if (v52 == -1)
      {
        v44 = v18;
        sub_1D9F2AFDC();
        goto LABEL_23;
      }

      if (v52 == 9)
      {
        v44 = v18;
        sub_1D9F2AF9C();
        goto LABEL_23;
      }
    }

    else
    {
      switch(v52)
      {
        case 17:
          v44 = v18;
          sub_1D9F2AFEC();
          goto LABEL_23;
        case 25:
          v44 = v18;
          sub_1D9F2AFBC();
          goto LABEL_23;
        case 33:
          v44 = v18;
          sub_1D9F2AFCC();
LABEL_23:
          v45 = v50;
          *v24 = v55;
          *(v24 + 1) = v45;
          v46 = *(v48 + 32);
          v46(&v24[v21[5]], v20, v13);
          v46(&v24[v21[6]], v44, v13);
          (*(v56 + 32))(&v24[v21[7]], v57, v58);
          (*(v43 + 32))(&v24[v21[8]], v42, v41);
          v25 = v47;
          sub_1D9EA13EC(v24, v47 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration);
          return v25;
      }
    }

    v44 = v18;
    sub_1D9F2AFAC();
    goto LABEL_23;
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1D9EA1330()
{
  result = qword_1EE0F10E8;
  if (!qword_1EE0F10E8)
  {
    sub_1D9F2B4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F10E8);
  }

  return result;
}

unint64_t sub_1D9EA1388()
{
  result = qword_1EE0F1100;
  if (!qword_1EE0F1100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECB74FF0, &unk_1D9F39410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1100);
  }

  return result;
}

uint64_t sub_1D9EA13EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchdogTimer.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9EA1454()
{
  result = qword_1ECB745F0;
  if (!qword_1ECB745F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB745F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeoutPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeoutPolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D9EA14F8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9EA1514(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1D9EA1578()
{
  result = qword_1ECB745F8;
  if (!qword_1ECB745F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB745F8);
  }

  return result;
}

unint64_t sub_1D9EA15D0()
{
  result = qword_1ECB74600;
  if (!qword_1ECB74600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74600);
  }

  return result;
}

unint64_t sub_1D9EA1628()
{
  result = qword_1EE0F2F70;
  if (!qword_1EE0F2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F70);
  }

  return result;
}

unint64_t sub_1D9EA1680()
{
  result = qword_1EE0F2F78;
  if (!qword_1EE0F2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F78);
  }

  return result;
}

unint64_t sub_1D9EA16D8()
{
  result = qword_1EE0F2F80;
  if (!qword_1EE0F2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F80);
  }

  return result;
}

unint64_t sub_1D9EA1730()
{
  result = qword_1EE0F2F88;
  if (!qword_1EE0F2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F88);
  }

  return result;
}

unint64_t sub_1D9EA1788()
{
  result = qword_1EE0F2F98;
  if (!qword_1EE0F2F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F98);
  }

  return result;
}

unint64_t sub_1D9EA17E0()
{
  result = qword_1EE0F2FA0;
  if (!qword_1EE0F2FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2FA0);
  }

  return result;
}

uint64_t sub_1D9EA1834@<X0>(__CVBuffer *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v70 = *MEMORY[0x1E69E9840];
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  Width = CVPixelBufferGetWidth(v4);
  Height = CVPixelBufferGetHeight(v4);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v4);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v4);
  DataSize = CVPixelBufferGetDataSize(v4);
  IsPlanar = CVPixelBufferIsPlanar(v4);
  if (IsPlanar)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(v4);
    if ((PlaneCount & 0x8000000000000000) == 0)
    {
      v11 = PlaneCount;
      v60 = BytesPerRow;
      v61 = Height;
      v62 = Width;
      v63 = a3;
      v59 = PixelFormatType;
      if (PlaneCount)
      {
        v58 = a2;
        PixelFormatType = 0;
        v12 = MEMORY[0x1E69E7CC0];
        v67 = v4;
        while (1)
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v4, PixelFormatType);
          if (!BaseAddressOfPlane)
          {
            break;
          }

          v14 = BaseAddressOfPlane;
          v15 = v11;
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(v4, PixelFormatType);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(v4, PixelFormatType);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v4, PixelFormatType);
          v19 = HeightOfPlane * BytesPerRowOfPlane;
          if ((HeightOfPlane * BytesPerRowOfPlane) >> 64 != (HeightOfPlane * BytesPerRowOfPlane) >> 63)
          {
            __break(1u);
            goto LABEL_37;
          }

          v20 = BytesPerRowOfPlane;
          if (v19)
          {
            if (v19 <= 14)
            {
              *(&__dst + 6) = 0;
              *&__dst = 0;
              BYTE14(__dst) = HeightOfPlane * BytesPerRowOfPlane;
              memcpy(&__dst, v14, v19);
              v68 = __dst;
              v26 = v66 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
              v66 = v26;
            }

            else
            {
              v21 = sub_1D9F2AAAC();
              v22 = *(v21 + 48);
              v23 = *(v21 + 52);
              swift_allocObject();
              v24 = sub_1D9F2AA6C();
              v25 = v24;
              if (v19 >= 0x7FFFFFFF)
              {
                sub_1D9F2AC6C();
                v27 = swift_allocObject();
                *(v27 + 16) = 0;
                *(v27 + 24) = v19;
                v68 = v27;
                v26 = v25 | 0x8000000000000000;
              }

              else
              {
                v68 = v19 << 32;
                v26 = v24 | 0x4000000000000000;
              }
            }
          }

          else
          {
            v68 = 0;
            v26 = 0xC000000000000000;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_1D9F0C470(0, *(v12 + 16) + 1, 1, v12);
          }

          v29 = *(v12 + 16);
          v28 = *(v12 + 24);
          if (v29 >= v28 >> 1)
          {
            v12 = sub_1D9F0C470((v28 > 1), v29 + 1, 1, v12);
          }

          *(v12 + 16) = v29 + 1;
          v30 = (v12 + 48 * v29);
          v30[4] = PixelFormatType;
          v30[5] = WidthOfPlane;
          v30[6] = HeightOfPlane;
          v30[7] = v20;
          v4 = v67;
          v30[8] = v68;
          v30[9] = v26;
          ++PixelFormatType;
          v11 = v15;
          if (v15 == PixelFormatType)
          {
            goto LABEL_24;
          }
        }

        if (qword_1ECB72A78 != -1)
        {
          goto LABEL_39;
        }

        goto LABEL_27;
      }

      v12 = MEMORY[0x1E69E7CC0];
LABEL_24:
      v32 = 0x2000000000000000;
      LODWORD(PixelFormatType) = v59;
LABEL_25:
      *v63 = v62;
      *(v63 + 8) = v61;
      *(v63 + 16) = PixelFormatType;
      *(v63 + 24) = v60;
      *(v63 + 32) = DataSize;
      *(v63 + 40) = IsPlanar != 0;
      *(v63 + 48) = v12;
      *(v63 + 56) = v32;
      result = CVPixelBufferUnlockBaseAddress(v4, 1uLL);
      v34 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_37:
    __break(1u);
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(v4);
    if (!BaseAddress)
    {
      if (qword_1ECB72A78 != -1)
      {
        swift_once();
      }

      v45 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v45, qword_1ECB738F8);
      v46 = v4;
      v47 = sub_1D9F2AE6C();
      v48 = sub_1D9F2B43C();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = a2;
        v51 = PixelFormatType;
        PixelFormatType = swift_slowAlloc();
        *&__dst = PixelFormatType;
        *v49 = 136315138;
        type metadata accessor for CVBuffer(0);
        v52 = v46;
        v53 = sub_1D9F2B13C();
        v55 = sub_1D9E71CA4(v53, v54, &__dst);

        *(v49 + 4) = v55;
        _os_log_impl(&dword_1D9E39000, v47, v48, "Failed to get base address from pixel buffer %s.", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(PixelFormatType);
        v56 = PixelFormatType;
        LODWORD(PixelFormatType) = v51;
        a2 = v50;
        MEMORY[0x1DA744270](v56, -1, -1);
        MEMORY[0x1DA744270](v49, -1, -1);
      }

      *a2 = PixelFormatType | 0x4000000000000000;
      a2[1] = 0;
      *&__dst = PixelFormatType | 0x4000000000000000;
      *(&__dst + 1) = 0;
      goto LABEL_35;
    }

    v62 = Width;
    v63 = a3;
    v60 = BytesPerRow;
    v61 = Height;
    if ((Height * BytesPerRow) >> 64 == (Height * BytesPerRow) >> 63)
    {
      v12 = sub_1D9F1C6D8(BaseAddress, Height * BytesPerRow);
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_27:
  v35 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v35, qword_1ECB738F8);
  v36 = v4;
  v37 = sub_1D9F2AE6C();
  v38 = sub_1D9F2B43C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&__dst = v40;
    *v39 = 134218242;
    *(v39 + 4) = PixelFormatType;
    *(v39 + 12) = 2080;
    type metadata accessor for CVBuffer(0);
    v41 = v36;
    v42 = sub_1D9F2B13C();
    v44 = sub_1D9E71CA4(v42, v43, &__dst);

    *(v39 + 14) = v44;
    _os_log_impl(&dword_1D9E39000, v37, v38, "Failed to get base address of plane %ld from pixel buffer %s.", v39, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1DA744270](v40, -1, -1);
    MEMORY[0x1DA744270](v39, -1, -1);
  }

  *v58 = v59 | 0x4000000000000000;
  v58[1] = PixelFormatType;
  *&__dst = v59 | 0x4000000000000000;
  *(&__dst + 1) = PixelFormatType;
LABEL_35:
  sub_1D9E8EE20();
  swift_willThrowTypedImpl();
  result = CVPixelBufferUnlockBaseAddress(v4, 1uLL);
  v57 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9EA1E74()
{
  if (*v0)
  {
    result = 0x646E49656E616C70;
  }

  else
  {
    result = 0x726F466C65786970;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EA1EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F466C65786970 && a2 == 0xEF6570795474616DLL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E49656E616C70 && a2 == 0xEA00000000007865)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9EA1FAC(uint64_t a1)
{
  v2 = sub_1D9EA46FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA1FE8(uint64_t a1)
{
  v2 = sub_1D9EA46FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA2024(uint64_t a1)
{
  v2 = sub_1D9EA46A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA2060(uint64_t a1)
{
  v2 = sub_1D9EA46A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9EA209C()
{
  v1 = *v0;
  v2 = 0xD000000000000019;
  if (v1 != 3)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD00000000000001FLL;
  if (v1 == 1)
  {
    v3 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9EA2140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EA5C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EA2168(uint64_t a1)
{
  v2 = sub_1D9EA4654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA21A4(uint64_t a1)
{
  v2 = sub_1D9EA4654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA21E0(uint64_t a1)
{
  v2 = sub_1D9EA484C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA221C(uint64_t a1)
{
  v2 = sub_1D9EA484C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA2258(uint64_t a1)
{
  v2 = sub_1D9EA47F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA2294(uint64_t a1)
{
  v2 = sub_1D9EA47F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA22D0(uint64_t a1)
{
  v2 = sub_1D9EA4750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA230C(uint64_t a1)
{
  v2 = sub_1D9EA4750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA2348(uint64_t a1)
{
  v2 = sub_1D9EA47A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA2384(uint64_t a1)
{
  v2 = sub_1D9EA47A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageProcessing.Failure.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74608, &qword_1D9F39870);
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74610, &qword_1D9F39878);
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74618, &qword_1D9F39880);
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74620, &qword_1D9F39888);
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74628, &qword_1D9F39890);
  v44 = *(v17 - 8);
  v45 = v17;
  v18 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v42 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74630, &qword_1D9F39898);
  v42 = *(v20 - 8);
  v21 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74638, &qword_1D9F398A0);
  v57 = *(v24 - 8);
  v58 = v24;
  v25 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v42 - v26;
  v29 = *v2;
  v28 = v2[1];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA4654();
  sub_1D9F2BB8C();
  if (!(v29 >> 62))
  {
    v63 = 3;
    sub_1D9EA4750();
    v32 = v58;
    sub_1D9F2B8FC();
    v35 = v53;
    sub_1D9F2B9BC();
    (*(v52 + 8))(v13, v35);
    return (*(v57 + 8))(v27, v32);
  }

  if (v29 >> 62 == 1)
  {
    v66 = 4;
    sub_1D9EA46FC();
    v31 = v54;
    v32 = v58;
    sub_1D9F2B8FC();
    v65 = 0;
    v33 = v56;
    v34 = v59;
    sub_1D9F2B9CC();
    if (!v34)
    {
      v64 = 1;
      sub_1D9F2B99C();
    }

    (*(v55 + 8))(v31, v33);
    return (*(v57 + 8))(v27, v32);
  }

  if (v29 > 0x8000000000000001)
  {
    if (v29 ^ 0x8000000000000002 | v28)
    {
      v67 = 5;
      sub_1D9EA46A8();
      v38 = v49;
      v39 = v58;
      sub_1D9F2B8FC();
      v41 = v50;
      v40 = v51;
    }

    else
    {
      v62 = 2;
      sub_1D9EA47A4();
      v38 = v46;
      v39 = v58;
      sub_1D9F2B8FC();
      v41 = v47;
      v40 = v48;
    }
  }

  else
  {
    if (!(v29 ^ 0x8000000000000000 | v28))
    {
      v60 = 0;
      sub_1D9EA484C();
      v36 = v58;
      sub_1D9F2B8FC();
      (*(v42 + 8))(v23, v20);
      return (*(v57 + 8))(v27, v36);
    }

    v61 = 1;
    sub_1D9EA47F8();
    v38 = v43;
    v39 = v58;
    sub_1D9F2B8FC();
    v41 = v44;
    v40 = v45;
  }

  (*(v41 + 8))(v38, v40);
  return (*(v57 + 8))(v27, v39);
}

uint64_t ImageProcessing.Failure.hash(into:)()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = v0[1];
    if (v2 == 1)
    {
      MEMORY[0x1DA7438F0](4);
      sub_1D9F2BB2C();
      v4 = v3;
    }

    else if (v1 > 0x8000000000000001)
    {
      if (v1 ^ 0x8000000000000002 | v3)
      {
        v4 = 5;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = (v1 ^ 0x8000000000000000 | v3) != 0;
    }

    return MEMORY[0x1DA7438F0](v4);
  }

  else
  {
    MEMORY[0x1DA7438F0](3);
    return sub_1D9F2BB2C();
  }
}

uint64_t ImageProcessing.Failure.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      MEMORY[0x1DA7438F0](4);
      sub_1D9F2BB2C();
      v3 = v2;
    }

    else if (v1 > 0x8000000000000001)
    {
      if (v1 ^ 0x8000000000000002 | v2)
      {
        v3 = 5;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = (v1 ^ 0x8000000000000000 | v2) != 0;
    }

    MEMORY[0x1DA7438F0](v3);
  }

  else
  {
    MEMORY[0x1DA7438F0](3);
    sub_1D9F2BB2C();
  }

  return sub_1D9F2BB4C();
}

uint64_t ImageProcessing.Failure.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74678, &qword_1D9F398A8);
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v79 = &v62 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74680, &qword_1D9F398B0);
  v75 = *(v72 - 8);
  v6 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v78 = &v62 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74688, &qword_1D9F398B8);
  v71 = *(v66 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v77 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74690, &qword_1D9F398C0);
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74698, &qword_1D9F398C8);
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB746A0, &qword_1D9F398D0);
  v65 = *(v17 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB746A8, &unk_1D9F398D8);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v62 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D9EA4654();
  v28 = v81;
  sub_1D9F2BB7C();
  if (!v28)
  {
    v29 = v20;
    v62 = v17;
    v63 = v16;
    v31 = v77;
    v30 = v78;
    v81 = v22;
    v32 = v79;
    v33 = v80;
    v64 = v21;
    v34 = sub_1D9F2B8DC();
    v35 = (2 * *(v34 + 16)) | 1;
    v83 = v34;
    v84 = v34 + 32;
    v85 = 0;
    v86 = v35;
    v36 = sub_1D9E416AC();
    if (v36 == 6 || v85 != v86 >> 1)
    {
      v42 = sub_1D9F2B6BC();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
      *v44 = &type metadata for ImageProcessing.Failure;
      v46 = v64;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v81 + 8))(v25, v46);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v36 > 2u)
      {
        if (v36 == 3)
        {
          v87 = 3;
          sub_1D9EA4750();
          v52 = v64;
          sub_1D9F2B7DC();
          v53 = v81;
          v54 = v66;
          v58 = sub_1D9F2B8AC();
          (*(v71 + 8))(v31, v54);
          (*(v53 + 8))(v25, v52);
          swift_unknownObjectRelease();
          v40 = 0;
          v41 = v58;
        }

        else
        {
          v48 = v81;
          v49 = v64;
          if (v36 == 4)
          {
            v87 = 4;
            sub_1D9EA46FC();
            sub_1D9F2B7DC();
            v87 = 0;
            v50 = v72;
            v59 = sub_1D9F2B8BC();
            v87 = 1;
            v60 = sub_1D9F2B88C();
            v61 = v30;
            v40 = v60;
            (*(v75 + 8))(v61, v50);
            (*(v48 + 8))(v25, v49);
            swift_unknownObjectRelease();
            v41 = v59 | 0x4000000000000000;
            v33 = v80;
          }

          else
          {
            v87 = 5;
            sub_1D9EA46A8();
            sub_1D9F2B7DC();
            (*(v73 + 8))(v32, v74);
            (*(v48 + 8))(v25, v49);
            swift_unknownObjectRelease();
            v40 = 0;
            v41 = 0x8000000000000003;
          }
        }
      }

      else if (v36)
      {
        if (v36 == 1)
        {
          v87 = 1;
          sub_1D9EA47F8();
          v37 = v63;
          v38 = v64;
          sub_1D9F2B7DC();
          v39 = v81;
          (*(v67 + 8))(v37, v68);
          (*(v39 + 8))(v25, v38);
          swift_unknownObjectRelease();
          v40 = 0;
          v41 = 0x8000000000000001;
        }

        else
        {
          v87 = 2;
          sub_1D9EA47A4();
          v55 = v76;
          v56 = v64;
          sub_1D9F2B7DC();
          v57 = v81;
          (*(v69 + 8))(v55, v70);
          (*(v57 + 8))(v25, v56);
          swift_unknownObjectRelease();
          v40 = 0;
          v41 = 0x8000000000000002;
        }
      }

      else
      {
        v87 = 0;
        sub_1D9EA484C();
        v51 = v64;
        sub_1D9F2B7DC();
        (*(v65 + 8))(v29, v62);
        (*(v81 + 8))(v25, v51);
        swift_unknownObjectRelease();
        v40 = 0;
        v41 = 0x8000000000000000;
      }

      *v33 = v41;
      v33[1] = v40;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t sub_1D9EA3654()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = v0[1];
    if (v2 == 1)
    {
      MEMORY[0x1DA7438F0](4);
      sub_1D9F2BB2C();
      v4 = v3;
    }

    else if (v1 > 0x8000000000000001)
    {
      if (v1 ^ 0x8000000000000002 | v3)
      {
        v4 = 5;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = (v1 ^ 0x8000000000000000 | v3) != 0;
    }

    return MEMORY[0x1DA7438F0](v4);
  }

  else
  {
    MEMORY[0x1DA7438F0](3);
    return sub_1D9F2BB2C();
  }
}

uint64_t sub_1D9EA3714()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      MEMORY[0x1DA7438F0](4);
      sub_1D9F2BB2C();
      v3 = v2;
    }

    else if (v1 > 0x8000000000000001)
    {
      if (v1 ^ 0x8000000000000002 | v2)
      {
        v3 = 5;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = (v1 ^ 0x8000000000000000 | v2) != 0;
    }

    MEMORY[0x1DA7438F0](v3);
  }

  else
  {
    MEMORY[0x1DA7438F0](3);
    sub_1D9F2BB2C();
  }

  return sub_1D9F2BB4C();
}

NSObject *_s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer4fromSo11CVBufferRefaSo13OS_xpc_object_p_tAC7FailureOYKFZ(void *a1, __int128 *a2)
{
  v4 = IOSurfaceLookupFromXPCObject(a1);
  if (v4)
  {
    v5 = v4;
    v6 = _s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer8backedBySo11CVBufferRefaSo09IOSurfaceM0a_tAC7FailureOYKFZ(v4, &v11);

    if (v2)
    {
      *a2 = v11;
    }
  }

  else
  {
    if (qword_1ECB72A78 != -1)
    {
      swift_once();
    }

    v7 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v7, qword_1ECB738F8);
    v6 = sub_1D9F2AE6C();
    v8 = sub_1D9F2B43C();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D9E39000, v6, v8, "Failed to lookup for IOSurface from XPC object.", v9, 2u);
      MEMORY[0x1DA744270](v9, -1, -1);
    }

    *a2 = xmmword_1D9F39800;
    v11 = xmmword_1D9F39800;
    sub_1D9E8EE20();
    swift_willThrowTypedImpl();
  }

  return v6;
}

CVPixelBufferRef _s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer8backedBySo11CVBufferRefaSo09IOSurfaceM0a_tAC7FailureOYKFZ(__IOSurface *a1, void *a2)
{
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  pixelBufferOut[0] = 0;
  v4 = *MEMORY[0x1E695E480];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB746B0, &qword_1D9F398E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9F2F8F0;
  v6 = *MEMORY[0x1E69660D8];
  *(inited + 32) = *MEMORY[0x1E69660D8];
  v7 = v6;
  *(inited + 40) = sub_1D9EA48A0(MEMORY[0x1E69E7CC0]);
  sub_1D9EA5758(inited);
  swift_setDeallocating();
  sub_1D9EA5850(inited + 32);
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB746C0, &qword_1D9F398F8);
  sub_1D9EA58B8();
  v8 = sub_1D9F2B08C();

  v9 = CVPixelBufferCreateWithIOSurface(v4, a1, v8, pixelBufferOut);

  if (v9)
  {
    if (qword_1ECB72A78 != -1)
    {
      swift_once();
    }

    v10 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v10, qword_1ECB738F8);
    v11 = a1;
    v12 = sub_1D9F2AE6C();
    v13 = sub_1D9F2B43C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      type metadata accessor for IOSurfaceRef(0);
      v16 = v11;
      v17 = sub_1D9F2B13C();
      v19 = sub_1D9E71CA4(v17, v18, &v26);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1D9E39000, v12, v13, "Failed to create CVPixelBuffer backed by IOSurface %s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1DA744270](v15, -1, -1);
      MEMORY[0x1DA744270](v14, -1, -1);
    }

    *a2 = v9;
    a2[1] = 0;
    v26 = v9;
    v27 = 0;
    sub_1D9E8EE20();
  }

  else
  {
    result = pixelBufferOut[0];
    if (pixelBufferOut[0])
    {
      goto LABEL_9;
    }

    if (qword_1ECB72A78 != -1)
    {
      swift_once();
    }

    v22 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v22, qword_1ECB738F8);
    v23 = sub_1D9F2AE6C();
    v24 = sub_1D9F2B43C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D9E39000, v23, v24, "Unmanaged CVPixelBuffer returned from CVPixelBufferCreateWithIOSurface() is nil.", v25, 2u);
      MEMORY[0x1DA744270](v25, -1, -1);
    }

    *a2 = 0;
    a2[1] = 0;
    sub_1D9E8EE20();
    v26 = 0;
    v27 = 0;
  }

  result = swift_willThrowTypedImpl();
LABEL_9:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

IOSurfaceRef _s29VisualActionPredictionSupport15ImageProcessingO12getIOSurface7backingSo0H3RefaSo08CVBufferJ0a_tAC7FailureOYKFZ(__CVBuffer *a1, _OWORD *a2)
{
  IOSurface = CVPixelBufferGetIOSurface(a1);
  v5 = IOSurface;
  if (IOSurface)
  {
    v6 = IOSurface;
  }

  else
  {
    if (qword_1ECB72A78 != -1)
    {
      swift_once();
    }

    v7 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v7, qword_1ECB738F8);
    v8 = a1;
    v9 = sub_1D9F2AE6C();
    v10 = sub_1D9F2B43C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v18 = v12;
      *v11 = 136315138;
      type metadata accessor for CVBuffer(0);
      v13 = v8;
      v14 = sub_1D9F2B13C();
      v16 = sub_1D9E71CA4(v14, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1D9E39000, v9, v10, "Failed to get IOSurface backing CVPixelBuffer %s.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1DA744270](v12, -1, -1);
      MEMORY[0x1DA744270](v11, -1, -1);
    }

    *a2 = xmmword_1D9F39810;
    v18 = xmmword_1D9F39810;
    sub_1D9E8EE20();
    swift_willThrowTypedImpl();
  }

  return v5;
}

__IOSurface *_s29VisualActionPredictionSupport15ImageProcessingO12getXPCObject4fromSo13OS_xpc_object_pSo11CVBufferRefa_tAC7FailureOYKFZ(__CVBuffer *a1, _OWORD *a2)
{
  result = _s29VisualActionPredictionSupport15ImageProcessingO12getIOSurface7backingSo0H3RefaSo08CVBufferJ0a_tAC7FailureOYKFZ(a1, &v7);
  if (v2)
  {
    *a2 = v7;
  }

  else
  {
    v5 = result;
    XPCObject = IOSurfaceCreateXPCObject(result);

    return XPCObject;
  }

  return result;
}

void sub_1D9EA3F08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1DA744270);
  }
}

__CVBuffer *static ImageProcessing.makePixelBuffer(from:)(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v5 = CGImageGetWidth(a1);
  v6 = CGImageGetHeight(a1);
  v7 = sub_1D9EA5E70(v5, v6, 0x42475241u, 1, 1, 1);
  v8 = v7;
  if (!v1)
  {
    CVPixelBufferLockBaseAddress(v7, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v8);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v8);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v12 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);

    if (v12)
    {
      v15.origin.x = 0.0;
      v15.origin.y = 0.0;
      v15.size.width = Width;
      v15.size.height = Height;
      CGContextClearRect(v12, v15);
      sub_1D9F2B40C();

      CVPixelBufferUnlockBaseAddress(v8, 0);
    }

    else
    {
      sub_1D9E8EE20();
      swift_allocError();
      *v13 = xmmword_1D9F39820;
      swift_willThrow();
      CVPixelBufferUnlockBaseAddress(v8, 0);
    }
  }

  return v8;
}

int64_t static ImageProcessing.makeColorFilledPixelBuffer(width:height:redChannel:greenChannel:blueChannel:alphaChannel:)(size_t a1, size_t a2, char a3, char a4, char a5, char a6)
{
  v13 = sub_1D9EA5E70(a1, a2, 0x42475241u, 1, 1, 1);
  v14 = v13;
  if (v6)
  {
    return v14;
  }

  CVPixelBufferLockBaseAddress(v13, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(v14);
  if (!BaseAddress)
  {
    sub_1D9E8EE20();
    swift_allocError();
    *v26 = xmmword_1D9F39830;
    swift_willThrow();
    CVPixelBufferUnlockBaseAddress(v14, 0);

    return v14;
  }

  v17 = BaseAddress;
  result = CVPixelBufferGetBytesPerRow(v14);
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a2)
  {
LABEL_19:
    CVPixelBufferUnlockBaseAddress(v14, 0);
    return v14;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    while (!a1)
    {
LABEL_8:
      if (++v18 == a2)
      {
        goto LABEL_19;
      }
    }

    v19 = v18 * result;
    if ((v18 * result) >> 64 == (v18 * result) >> 63)
    {
      v20 = 0;
      v21 = 0x2000000000000000;
      v22 = a1;
      while (v21)
      {
        v23 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_22;
        }

        v17[v23] = a5;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_23;
        }

        v17[v23 + 1] = a4;
        if (__OFADD__(v23, 2))
        {
          goto LABEL_24;
        }

        v17[v23 + 2] = a3;
        v24 = __OFADD__(v23, 3);
        v25 = v23 + 3;
        if (v24)
        {
          goto LABEL_25;
        }

        v17[v25] = a6;
        --v21;
        v20 += 4;
        if (!--v22)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_1D9EA4260(uint64_t *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *a1;

      sub_1D9E4015C(v3, v2);
      v24 = v3;
      v25 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1D9F39840;
      sub_1D9E4015C(0, 0xC000000000000000);
      sub_1D9F2AC5C();
      v8 = v25;
      v9 = *(v24 + 16);
      v10 = *(v24 + 24);
      result = sub_1D9F2AA7C();
      if (!result)
      {
        __break(1u);
        goto LABEL_29;
      }

      v11 = result;
      v12 = sub_1D9F2AA9C();
      v13 = v9 - v12;
      if (__OFSUB__(v9, v12))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (__OFSUB__(v10, v9))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      sub_1D9F2AA8C();
      result = (v11 + v13);
      *a1 = v24;
      a1[1] = v8 | 0x8000000000000000;
    }

    else
    {
      result = &v24;
    }

LABEL_21:
    v23 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!v4)
  {
    sub_1D9E4015C(*a1, v2);
    LOWORD(v25) = v2;
    BYTE2(v25) = BYTE2(v2);
    BYTE3(v25) = BYTE3(v2);
    BYTE4(v25) = BYTE4(v2);
    BYTE5(v25) = BYTE5(v2);
    result = &v24;
    v6 = v25 | ((WORD2(v25) | (BYTE6(v2) << 16)) << 32);
LABEL_20:
    *a1 = v3;
    a1[1] = v6;
    goto LABEL_21;
  }

  v14 = v2 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1D9E4015C(v3, v2);
  *a1 = xmmword_1D9F39840;
  sub_1D9E4015C(0, 0xC000000000000000);
  v15 = v3 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v15 < v3)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (sub_1D9F2AA7C() && __OFSUB__(v3, sub_1D9F2AA9C()))
    {
LABEL_27:
      __break(1u);
    }

    v16 = sub_1D9F2AAAC();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = sub_1D9F2AA5C();

    v14 = v19;
  }

  if (v15 < v3)
  {
    goto LABEL_23;
  }

  result = sub_1D9F2AA7C();
  if (result)
  {
    v20 = result;
    v21 = sub_1D9F2AA9C();
    v22 = v3 - v21;
    if (!__OFSUB__(v3, v21))
    {
      sub_1D9F2AA8C();

      result = (v20 + v22);
      v6 = v14 | 0x4000000000000000;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

BOOL _s29VisualActionPredictionSupport15ImageProcessingO7FailureO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      return v2 == v3;
    }

    return 0;
  }

  v5 = a1[1];
  v6 = a2[1];
  if (v4 != 1)
  {
    if (v2 > 0x8000000000000001)
    {
      if (v2 ^ 0x8000000000000002 | v5)
      {
        if (v3 >> 62 == 2 && v3 == 0x8000000000000003 && !v6)
        {
          return 1;
        }
      }

      else if (v3 >> 62 == 2 && v3 == 0x8000000000000002 && !v6)
      {
        return 1;
      }
    }

    else if (v2 ^ 0x8000000000000000 | v5)
    {
      if (v3 >> 62 == 2 && v3 == 0x8000000000000001 && !v6)
      {
        return 1;
      }
    }

    else if (v3 >> 62 == 2 && v3 == 0x8000000000000000 && !v6)
    {
      return 1;
    }

    return 0;
  }

  if (v3 >> 62 != 1)
  {
    return 0;
  }

  return v2 == v3 && v5 == v6;
}

unint64_t sub_1D9EA4654()
{
  result = qword_1ECB74640;
  if (!qword_1ECB74640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74640);
  }

  return result;
}

unint64_t sub_1D9EA46A8()
{
  result = qword_1ECB74648;
  if (!qword_1ECB74648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74648);
  }

  return result;
}

unint64_t sub_1D9EA46FC()
{
  result = qword_1ECB74650;
  if (!qword_1ECB74650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74650);
  }

  return result;
}

unint64_t sub_1D9EA4750()
{
  result = qword_1ECB74658;
  if (!qword_1ECB74658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74658);
  }

  return result;
}

unint64_t sub_1D9EA47A4()
{
  result = qword_1ECB74660;
  if (!qword_1ECB74660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74660);
  }

  return result;
}

unint64_t sub_1D9EA47F8()
{
  result = qword_1ECB74668;
  if (!qword_1ECB74668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74668);
  }

  return result;
}

unint64_t sub_1D9EA484C()
{
  result = qword_1ECB74670;
  if (!qword_1ECB74670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74670);
  }

  return result;
}

unint64_t sub_1D9EA48A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74780, &qword_1D9F3A128);
    v3 = sub_1D9F2B7AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D9E51E70(v4, v13, &qword_1ECB74788, &unk_1D9F3A130);
      result = sub_1D9EEA3B0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D9E3CA7C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9EA49DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747A8, &unk_1D9F3A160);
    v3 = sub_1D9F2B7AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D9E51E70(v4, &v11, &qword_1ECB747A0, &qword_1D9F3A158);
      v5 = v11;
      result = sub_1D9EEA2FC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D9E3CA7C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

__CVBuffer *sub_1D9EA4B04(__int128 *a1)
{
  v121 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v117 = *a1;
  v118 = v1;
  v2 = a1[3];
  v119 = a1[2];
  v120 = v2;
  v116 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74798, &qword_1D9F3A150);
  inited = swift_initStackObject();
  v4 = *MEMORY[0x1E6966208];
  *(inited + 32) = *MEMORY[0x1E6966208];
  *(inited + 16) = xmmword_1D9F39850;
  v5 = MEMORY[0x1E69E6530];
  v6 = *(&v117 + 1);
  v102 = v117;
  *(inited + 40) = v117;
  v7 = *MEMORY[0x1E69660B8];
  *(inited + 64) = v5;
  *(inited + 72) = v7;
  v101 = v6;
  *(inited + 80) = v6;
  v8 = *MEMORY[0x1E6966130];
  *(inited + 104) = v5;
  *(inited + 112) = v8;
  v9 = MEMORY[0x1E69E7668];
  pixelFormatType = v118;
  *(inited + 120) = v118;
  v10 = *MEMORY[0x1E6966020];
  *(inited + 144) = v9;
  *(inited + 152) = v10;
  numberOfPlanes = *(&v118 + 1);
  *(inited + 160) = *(&v118 + 1);
  v11 = *MEMORY[0x1E69660D0];
  *(inited + 184) = v5;
  *(inited + 192) = v11;
  v12 = MEMORY[0x1E69E6370];
  v13 = 1;
  *(inited + 200) = 1;
  v14 = *MEMORY[0x1E69660D8];
  *(inited + 224) = v12;
  *(inited + 232) = v14;
  v15 = v4;
  v16 = v7;
  v17 = v8;
  v18 = v10;
  v19 = v11;
  v20 = v14;
  v21 = sub_1D9EA48A0(MEMORY[0x1E69E7CC0]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB746C0, &qword_1D9F398F8);
  v23 = MEMORY[0x1E6966100];
  *(inited + 240) = v21;
  v24 = *v23;
  *(inited + 264) = v22;
  *(inited + 272) = v24;
  *(inited + 304) = v12;
  *(inited + 280) = 1;
  v25 = v24;
  sub_1D9EA49DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747A0, &qword_1D9F3A158);
  swift_arrayDestroy();
  v26 = v120;
  if ((*(&v120 + 1) & 0x2000000000000000) == 0)
  {
    v27 = *(&v120 + 1) >> 62;
    if ((*(&v120 + 1) >> 62) <= 1)
    {
      if (!v27)
      {
        goto LABEL_49;
      }

      if (!__OFSUB__(DWORD1(v120), v120))
      {
        sub_1D9EA6B38(&v117, &v112);
        goto LABEL_49;
      }

      goto LABEL_71;
    }

    if (v27 != 2)
    {
LABEL_49:
      v56 = swift_slowAlloc();
LABEL_50:
      v74 = v56;
      sub_1D9F2ACAC();
      v75 = *MEMORY[0x1E695E480];
      type metadata accessor for CFString(0);
      sub_1D9EA58B8();
      v76 = sub_1D9F2B08C();

      v77 = CVPixelBufferCreateWithBytes(v75, v102, v101, pixelFormatType, v74, numberOfPlanes, sub_1D9EA3F08, 0, v76, &v116);

      if (v77)
      {
        MEMORY[0x1DA744270](v74, -1, -1);
        if (qword_1ECB72A78 != -1)
        {
          swift_once();
        }

        v78 = sub_1D9F2AE8C();
        v65 = __swift_project_value_buffer(v78, qword_1ECB738F8);
        sub_1D9EA6B38(&v117, &v112);
        v79 = sub_1D9F2AE6C();
        v80 = sub_1D9F2B43C();
        sub_1D9EA6B94(&v117);
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v111 = v82;
          *v81 = 136315138;
          v104 = v117;
          v106 = v118;
          v108 = v119;
          v110 = v120;
          sub_1D9EA6B38(&v117, &v112);
          v83 = ImageBuffer.description.getter();
          v85 = v84;
          v112 = v104;
          v113 = v106;
          v114 = v108;
          v115 = v110;
          sub_1D9EA6B94(&v112);
          v65 = sub_1D9E71CA4(v83, v85, &v111);

          *(v81 + 4) = v65;
          _os_log_impl(&dword_1D9E39000, v79, v80, "Failed to create CVPixelBuffer from ImageBuffer %s.", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v82);
          MEMORY[0x1DA744270](v82, -1, -1);
          MEMORY[0x1DA744270](v81, -1, -1);
        }

        sub_1D9E8EE20();
        swift_allocError();
        *v86 = v77;
        v86[1] = 0;
      }

      else
      {
        if (v116)
        {
          v65 = v116;
          sub_1D9EA6B94(&v117);

          goto LABEL_58;
        }

        MEMORY[0x1DA744270](v74, -1, -1);
        if (qword_1ECB72A78 != -1)
        {
          swift_once();
        }

        v93 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v93, qword_1ECB738F8);
        v94 = sub_1D9F2AE6C();
        v65 = sub_1D9F2B43C();
        if (os_log_type_enabled(v94, v65))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&dword_1D9E39000, v94, v65, "CVPixelBuffer returned from CVPixelBufferCreateWithBytes() is nil.", v95, 2u);
          MEMORY[0x1DA744270](v95, -1, -1);
        }

        sub_1D9E8EE20();
        swift_allocError();
        *v96 = 0;
        v96[1] = 0;
      }

      swift_willThrow();
      sub_1D9EA6B94(&v117);
      goto LABEL_57;
    }

    if (__OFSUB__(*(v120 + 24), *(v120 + 16)))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    sub_1D9EA6B38(&v117, &v112);
    v56 = swift_slowAlloc();
    if (!__OFSUB__(v26[3], v26[2]))
    {
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_28;
  }

  v28 = *(v120 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  numberOfPlanes = v28;
  if (!v28)
  {
LABEL_28:
    v43 = v13;
    v36 = v13;
    v98 = v13;
    goto LABEL_29;
  }

  sub_1D9EA6B38(&v117, &v112);
  *&v112 = v13;
  sub_1D9E9480C(0, v28, 0);
  v29 = v112;
  v30 = *(v112 + 16);
  v31 = v26 + 5;
  v32 = v28;
  do
  {
    v34 = *v31;
    v31 += 6;
    v33 = v34;
    *&v112 = v29;
    v35 = *(v29 + 24);
    if (v30 >= v35 >> 1)
    {
      sub_1D9E9480C((v35 > 1), v30 + 1, 1);
      v29 = v112;
    }

    *(v29 + 16) = v30 + 1;
    *(v29 + 8 * v30++ + 32) = v33;
    --v32;
  }

  while (v32);
  v98 = v29;
  *&v112 = v13;
  sub_1D9E9480C(0, v28, 0);
  v36 = v112;
  v37 = *(v112 + 16);
  v97 = v26;
  v38 = v26 + 6;
  v39 = v28;
  do
  {
    v41 = *v38;
    v38 += 6;
    v40 = v41;
    *&v112 = v36;
    v42 = *(v36 + 3);
    if (v37 >= v42 >> 1)
    {
      sub_1D9E9480C((v42 > 1), v37 + 1, 1);
      v36 = v112;
    }

    *(v36 + 2) = v37 + 1;
    *&v36[8 * v37++ + 32] = v40;
    --v39;
  }

  while (v39);
  *&v112 = v13;
  sub_1D9E9480C(0, v28, 0);
  v43 = v112;
  v44 = *(v112 + 16);
  v45 = v97 + 7;
  v46 = v28;
  do
  {
    v48 = *v45;
    v45 += 6;
    v47 = v48;
    *&v112 = v43;
    v49 = *(v43 + 3);
    if (v44 >= v49 >> 1)
    {
      sub_1D9E9480C((v49 > 1), v44 + 1, 1);
      v43 = v112;
    }

    *(v43 + 2) = v44 + 1;
    *&v43[8 * v44++ + 32] = v47;
    --v46;
  }

  while (v46);
  v50 = v28;
  sub_1D9E947EC(0, v28, 0);
  v51 = v97 + 9;
  do
  {
    v52 = *v51;
    *&v112 = *(v51 - 1);
    *(&v112 + 1) = v52;
    sub_1D9E400F4(v112, v52);
    v53 = sub_1D9EA4260(&v112);
    sub_1D9E4015C(v112, *(&v112 + 1));
    v55 = *(v13 + 16);
    v54 = *(v13 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_1D9E947EC((v54 > 1), v55 + 1, 1);
    }

    v51 += 6;
    *(v13 + 16) = v55 + 1;
    *(v13 + 8 * v55 + 32) = v53;
    --v50;
  }

  while (v50);
  sub_1D9EA6B94(&v117);
LABEL_29:
  type metadata accessor for CFString(0);
  sub_1D9EA58B8();
  pixelBufferAttributes = sub_1D9F2B08C();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1D9F0C694(0, *(v13 + 16), 0, v13);
  }

  v58 = MEMORY[0x1E695E480];

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v59 = v98;
  }

  else
  {
    v59 = sub_1D9F0C590(0, *(v98 + 16), 0, v98);
  }

  v60 = *v58;
  planeWidth = (v59 + 32);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1D9F0C590(0, *(v36 + 2), 0, v36);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_1D9F0C590(0, *(v43 + 2), 0, v43);
  }

  v62 = v119;

  v63 = CVPixelBufferCreateWithPlanarBytes(v60, v102, v101, pixelFormatType, 0, v62, numberOfPlanes, (v13 + 32), planeWidth, v36 + 4, v43 + 4, 0, 0, pixelBufferAttributes, &v116);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  if (v63)
  {
    if (qword_1ECB72A78 != -1)
    {
      swift_once();
    }

    v64 = sub_1D9F2AE8C();
    v65 = __swift_project_value_buffer(v64, qword_1ECB738F8);
    sub_1D9EA6B38(&v117, &v112);
    v66 = sub_1D9F2AE6C();
    v67 = sub_1D9F2B43C();
    sub_1D9EA6B94(&v117);
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v111 = v69;
      *v68 = 136315138;
      v103 = v117;
      v105 = v118;
      v107 = v119;
      v109 = v120;
      sub_1D9EA6B38(&v117, &v112);
      v70 = ImageBuffer.description.getter();
      v72 = v71;
      v112 = v103;
      v113 = v105;
      v114 = v107;
      v115 = v109;
      sub_1D9EA6B94(&v112);
      v65 = sub_1D9E71CA4(v70, v72, &v111);

      *(v68 + 4) = v65;
      _os_log_impl(&dword_1D9E39000, v66, v67, "Failed to create CVPixelBuffer from ImageBuffer %s.", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x1DA744270](v69, -1, -1);
      MEMORY[0x1DA744270](v68, -1, -1);
    }

    sub_1D9E8EE20();
    swift_allocError();
    *v73 = v63;
    v73[1] = 0;
    goto LABEL_44;
  }

  if (!v116)
  {
    if (qword_1ECB72A78 == -1)
    {
LABEL_62:
      v89 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v89, qword_1ECB738F8);
      v90 = sub_1D9F2AE6C();
      v65 = sub_1D9F2B43C();
      if (os_log_type_enabled(v90, v65))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_1D9E39000, v90, v65, "CVPixelBuffer returned from CVPixelBufferCreateWithPlanarBytes() is nil.", v91, 2u);
        MEMORY[0x1DA744270](v91, -1, -1);
      }

      sub_1D9E8EE20();
      swift_allocError();
      *v92 = 0;
      v92[1] = 0;
LABEL_44:
      swift_willThrow();
LABEL_57:

      goto LABEL_58;
    }

LABEL_72:
    swift_once();
    goto LABEL_62;
  }

  v65 = v116;

LABEL_58:
  v87 = *MEMORY[0x1E69E9840];
  return v65;
}