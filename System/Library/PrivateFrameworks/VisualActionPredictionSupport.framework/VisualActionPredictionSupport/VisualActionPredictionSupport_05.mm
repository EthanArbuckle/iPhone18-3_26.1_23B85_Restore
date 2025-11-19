unint64_t sub_1D9EA5758(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74778, &qword_1D9F3A120);
    v3 = sub_1D9F2B7AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D9EEA2FC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1D9EA5850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB746B8, &qword_1D9F398F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9EA58B8()
{
  result = qword_1ECB72B70;
  if (!qword_1ECB72B70)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72B70);
  }

  return result;
}

unint64_t sub_1D9EA5910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74538, &unk_1D9F38F20);
    v3 = sub_1D9F2B7AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D9EEA3F4(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9EA5A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74520, &qword_1D9F38F08);
    v3 = sub_1D9F2B7AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D9E51E70(v4, &v13, &qword_1ECB74790, &unk_1D9F3A140);
      v5 = v13;
      v6 = v14;
      result = sub_1D9EEA3F4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D9E3CA7C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1D9EA5B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74770, &qword_1D9F3A118);
    v3 = sub_1D9F2B7AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D9E51E70(v4, &v13, &qword_1ECB74760, &qword_1D9F3A108);
      v5 = v13;
      v6 = v14;
      result = sub_1D9EEA3F4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D9E3CA7C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1D9EA5C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001BLL && 0x80000001D9F49220 == a2;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9F49240 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D9F49260 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D9F49280 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9F492A0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9F492C0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

CVPixelBufferRef sub_1D9EA5E70(size_t a1, size_t a2, OSType a3, char a4, char a5, char a6)
{
  v63 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74758, &qword_1D9F3A100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9F39860;
  v11 = *MEMORY[0x1E6966208];
  *(inited + 32) = sub_1D9F2B12C();
  v12 = MEMORY[0x1E69E6530];
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = v13;
  *(inited + 48) = a1;
  v14 = *MEMORY[0x1E69660B8];
  *(inited + 80) = sub_1D9F2B12C();
  *(inited + 88) = v15;
  *(inited + 120) = v12;
  *(inited + 96) = a2;
  v16 = *MEMORY[0x1E6966130];
  *(inited + 128) = sub_1D9F2B12C();
  *(inited + 136) = v17;
  *(inited + 168) = MEMORY[0x1E69E7668];
  *(inited + 144) = a3;
  sub_1D9EA5B44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74760, &qword_1D9F3A108);
  swift_arrayDestroy();
  if (a4)
  {
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_1D9F39860;
    v19 = *MEMORY[0x1E696D130];
    *(v18 + 32) = sub_1D9F2B12C();
    *(v18 + 72) = v12;
    *(v18 + 40) = v20;
    *(v18 + 48) = a1;
    v21 = *MEMORY[0x1E696CF58];
    *(v18 + 80) = sub_1D9F2B12C();
    *(v18 + 88) = v22;
    *(v18 + 120) = v12;
    *(v18 + 96) = a2;
    v23 = *MEMORY[0x1E696CFC0];
    *(v18 + 128) = sub_1D9F2B12C();
    *(v18 + 136) = v24;
    *(v18 + 168) = MEMORY[0x1E69E7668];
    *(v18 + 144) = a3;
    v25 = sub_1D9EA5B44(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
    v26 = *MEMORY[0x1E69660D8];
    v27 = sub_1D9F2B12C();
    v29 = v28;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74768, &qword_1D9F3A110);
    pixelBufferOut[0] = v25;
    sub_1D9E3CA7C(pixelBufferOut, v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D9EAFF24(v60, v27, v29, isUniquelyReferenced_nonNull_native);
  }

  v31 = MEMORY[0x1E69E6370];
  if (a5)
  {
    v32 = *MEMORY[0x1E6966100];
    v33 = sub_1D9F2B12C();
    v35 = v34;
    v62 = v31;
    LOBYTE(pixelBufferOut[0]) = 1;
    sub_1D9E3CA7C(pixelBufferOut, v60);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D9EAFF24(v60, v33, v35, v36);
  }

  if (a6)
  {
    v37 = *MEMORY[0x1E6966030];
    v38 = sub_1D9F2B12C();
    v40 = v39;
    v62 = v31;
    LOBYTE(pixelBufferOut[0]) = 1;
    sub_1D9E3CA7C(pixelBufferOut, v60);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D9EAFF24(v60, v38, v40, v41);

    v42 = *MEMORY[0x1E6966028];
    v43 = sub_1D9F2B12C();
    v45 = v44;
    v62 = v31;
    LOBYTE(pixelBufferOut[0]) = 1;
    sub_1D9E3CA7C(pixelBufferOut, v60);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D9EAFF24(v60, v43, v45, v46);
  }

  pixelBufferOut[0] = 0;
  v47 = *MEMORY[0x1E695E480];
  v48 = sub_1D9F2B08C();

  v49 = CVPixelBufferCreate(v47, a1, a2, a3, v48, pixelBufferOut);

  v50 = pixelBufferOut[0];
  if (v49 || !pixelBufferOut[0])
  {
    if (qword_1ECB72A78 != -1)
    {
      swift_once();
    }

    v51 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v51, qword_1ECB738F8);
    v52 = sub_1D9F2AE6C();
    v53 = sub_1D9F2B43C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 67109120;
      *(v54 + 4) = v49;
      _os_log_impl(&dword_1D9E39000, v52, v53, "Failed to create pixel buffer %d", v54, 8u);
      MEMORY[0x1DA744270](v54, -1, -1);
    }

    sub_1D9E8EE20();
    swift_allocError();
    *v55 = v49;
    v55[1] = 0;
    swift_willThrow();
  }

  v56 = *MEMORY[0x1E69E9840];
  return v50;
}

unint64_t sub_1D9EA639C()
{
  result = qword_1ECB746C8;
  if (!qword_1ECB746C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageProcessing.Failure(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageProcessing.Failure(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = (v3 >> 2) << 32;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9EA6494(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

unint64_t *sub_1D9EA64BC(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
    result[1] = 0;
  }

  return result;
}

unint64_t sub_1D9EA6564()
{
  result = qword_1ECB746D0;
  if (!qword_1ECB746D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746D0);
  }

  return result;
}

unint64_t sub_1D9EA65BC()
{
  result = qword_1ECB746D8;
  if (!qword_1ECB746D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746D8);
  }

  return result;
}

unint64_t sub_1D9EA6614()
{
  result = qword_1ECB746E0;
  if (!qword_1ECB746E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746E0);
  }

  return result;
}

unint64_t sub_1D9EA666C()
{
  result = qword_1ECB746E8;
  if (!qword_1ECB746E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746E8);
  }

  return result;
}

unint64_t sub_1D9EA66C4()
{
  result = qword_1ECB746F0;
  if (!qword_1ECB746F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746F0);
  }

  return result;
}

unint64_t sub_1D9EA671C()
{
  result = qword_1ECB746F8;
  if (!qword_1ECB746F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746F8);
  }

  return result;
}

unint64_t sub_1D9EA6774()
{
  result = qword_1ECB74700;
  if (!qword_1ECB74700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74700);
  }

  return result;
}

unint64_t sub_1D9EA67CC()
{
  result = qword_1ECB74708;
  if (!qword_1ECB74708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74708);
  }

  return result;
}

unint64_t sub_1D9EA6824()
{
  result = qword_1ECB74710;
  if (!qword_1ECB74710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74710);
  }

  return result;
}

unint64_t sub_1D9EA687C()
{
  result = qword_1ECB74718;
  if (!qword_1ECB74718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74718);
  }

  return result;
}

unint64_t sub_1D9EA68D4()
{
  result = qword_1ECB74720;
  if (!qword_1ECB74720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74720);
  }

  return result;
}

unint64_t sub_1D9EA692C()
{
  result = qword_1ECB74728;
  if (!qword_1ECB74728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74728);
  }

  return result;
}

unint64_t sub_1D9EA6984()
{
  result = qword_1ECB74730;
  if (!qword_1ECB74730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74730);
  }

  return result;
}

unint64_t sub_1D9EA69DC()
{
  result = qword_1ECB74738;
  if (!qword_1ECB74738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74738);
  }

  return result;
}

unint64_t sub_1D9EA6A34()
{
  result = qword_1ECB74740;
  if (!qword_1ECB74740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74740);
  }

  return result;
}

unint64_t sub_1D9EA6A8C()
{
  result = qword_1ECB74748;
  if (!qword_1ECB74748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74748);
  }

  return result;
}

unint64_t sub_1D9EA6AE4()
{
  result = qword_1ECB74750;
  if (!qword_1ECB74750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74750);
  }

  return result;
}

uint64_t Album.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Album.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Album.artistName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Album.artistName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Album.adamID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Album.adamID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall Album.init(title:artistName:adamID:)(VisualActionPredictionSupport::Album *__return_ptr retstr, Swift::String title, Swift::String artistName, Swift::String adamID)
{
  retstr->title = title;
  retstr->artistName = artistName;
  retstr->adamID = adamID;
}

uint64_t static Album.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D9F2BA1C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1D9F2BA1C();
}

uint64_t sub_1D9EA6E88()
{
  v1 = 0x614E747369747261;
  if (*v0 != 1)
  {
    v1 = 0x44496D616461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1D9EA6EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EA76B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EA6F08(uint64_t a1)
{
  v2 = sub_1D9EA7144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA6F44(uint64_t a1)
{
  v2 = sub_1D9EA7144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Album.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747B0, &qword_1D9F3A170);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA7144();
  sub_1D9F2BB8C();
  v18 = 0;
  v13 = v15[5];
  sub_1D9F2B95C();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1D9F2B95C();
  v16 = 2;
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9EA7144()
{
  result = qword_1ECB747B8;
  if (!qword_1ECB747B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB747B8);
  }

  return result;
}

uint64_t Album.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1D9F2B18C();
  sub_1D9F2B18C();

  return sub_1D9F2B18C();
}

uint64_t Album.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t Album.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747C0, &qword_1D9F3A178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA7144();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1D9F2B84C();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1D9F2B84C();
  v23 = v14;
  v25 = 2;
  v15 = sub_1D9F2B84C();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9EA7534()
{
  result = qword_1ECB747C8;
  if (!qword_1ECB747C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB747C8);
  }

  return result;
}

unint64_t sub_1D9EA75AC()
{
  result = qword_1ECB747D0;
  if (!qword_1ECB747D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB747D0);
  }

  return result;
}

unint64_t sub_1D9EA7604()
{
  result = qword_1ECB747D8;
  if (!qword_1ECB747D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB747D8);
  }

  return result;
}

unint64_t sub_1D9EA765C()
{
  result = qword_1ECB747E0;
  if (!qword_1ECB747E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB747E0);
  }

  return result;
}

uint64_t sub_1D9EA76B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MapsPointOfInterest.mapItemIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MapsPointOfInterest.mapItemIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

VisualActionPredictionSupport::MapsPointOfInterest __swiftcall MapsPointOfInterest.init()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

VisualActionPredictionSupport::MapsPointOfInterest __swiftcall MapsPointOfInterest.init(mapItemIdentifier:)(Swift::String mapItemIdentifier)
{
  object = mapItemIdentifier._object;
  countAndFlagsBits = mapItemIdentifier._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.mapItemIdentifier.value._object = v6;
  result.mapItemIdentifier.value._countAndFlagsBits = v5;
  return result;
}

uint64_t static MapsPointOfInterest.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1D9F2BA1C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D9EA790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D9F492E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D9EA79A0(uint64_t a1)
{
  v2 = sub_1D9EA7B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA79DC(uint64_t a1)
{
  v2 = sub_1D9EA7B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsPointOfInterest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747E8, &qword_1D9F3A3D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA7B54();
  sub_1D9F2BB8C();
  sub_1D9F2B90C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9EA7B54()
{
  result = qword_1ECB747F0;
  if (!qword_1ECB747F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB747F0);
  }

  return result;
}

uint64_t MapsPointOfInterest.hash(into:)()
{
  if (!v0[1])
  {
    return sub_1D9F2BB1C();
  }

  v1 = *v0;
  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t MapsPointOfInterest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  if (v2)
  {
    sub_1D9F2B18C();
  }

  return sub_1D9F2BB4C();
}

uint64_t MapsPointOfInterest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747F8, &qword_1D9F3A3D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA7B54();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v11 = sub_1D9F2B7FC();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EA7E1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747E8, &qword_1D9F3A3D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA7B54();
  sub_1D9F2BB8C();
  sub_1D9F2B90C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D9EA7F58()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  if (v2)
  {
    sub_1D9F2B18C();
  }

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EA7FC8()
{
  if (!v0[1])
  {
    return sub_1D9F2BB1C();
  }

  v1 = *v0;
  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t sub_1D9EA8040()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  if (v2)
  {
    sub_1D9F2B18C();
  }

  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EA80B0()
{
  result = qword_1ECB74800;
  if (!qword_1ECB74800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74800);
  }

  return result;
}

uint64_t sub_1D9EA8104(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1D9F2BA1C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D9EA8184()
{
  result = qword_1ECB74808;
  if (!qword_1ECB74808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74808);
  }

  return result;
}

unint64_t sub_1D9EA81DC()
{
  result = qword_1ECB74810;
  if (!qword_1ECB74810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74810);
  }

  return result;
}

unint64_t sub_1D9EA8234()
{
  result = qword_1ECB74818;
  if (!qword_1ECB74818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74818);
  }

  return result;
}

uint64_t PhysicalValue.unit.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PhysicalValue.unit.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

VisualActionPredictionSupport::PhysicalValue __swiftcall PhysicalValue.init(value:unit:)(Swift::Double value, Swift::String unit)
{
  *v2 = value;
  *(v2 + 8) = unit;
  result.unit = unit;
  result.value = value;
  return result;
}

uint64_t static PhysicalValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C();
  }
}

uint64_t sub_1D9EA8394()
{
  if (*v0)
  {
    result = 1953066613;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EA83C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
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

uint64_t sub_1D9EA849C(uint64_t a1)
{
  v2 = sub_1D9EA86B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA84D8(uint64_t a1)
{
  v2 = sub_1D9EA86B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhysicalValue.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74820, &qword_1D9F3A620);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[2];
  v13 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA86B0();
  sub_1D9F2BB8C();
  v15 = 0;
  sub_1D9F2B97C();
  if (!v2)
  {
    v14 = 1;
    sub_1D9F2B95C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D9EA86B0()
{
  result = qword_1ECB74828;
  if (!qword_1ECB74828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74828);
  }

  return result;
}

uint64_t PhysicalValue.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA743920](*&v1);

  return sub_1D9F2B18C();
}

uint64_t PhysicalValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D9F2BAFC();
  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  MEMORY[0x1DA743920](*&v4);
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t PhysicalValue.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74830, &qword_1D9F3A628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA86B0();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v17[15] = 0;
    sub_1D9F2B86C();
    v12 = v11;
    v17[14] = 1;
    v14 = sub_1D9F2B84C();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EA89C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA743920](*&v1);

  return sub_1D9F2B18C();
}

uint64_t sub_1D9EA8A2C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D9F2BAFC();
  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  MEMORY[0x1DA743920](*&v4);
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EA8AA4()
{
  result = qword_1ECB74838;
  if (!qword_1ECB74838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74838);
  }

  return result;
}

uint64_t sub_1D9EA8AF8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C();
  }
}

unint64_t sub_1D9EA8B64()
{
  result = qword_1ECB74840;
  if (!qword_1ECB74840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74840);
  }

  return result;
}

unint64_t sub_1D9EA8BBC()
{
  result = qword_1ECB74848;
  if (!qword_1ECB74848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74848);
  }

  return result;
}

unint64_t sub_1D9EA8C14()
{
  result = qword_1ECB74850;
  if (!qword_1ECB74850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74850);
  }

  return result;
}

VisualActionPredictionSupport::ExecutionType_optional __swiftcall ExecutionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D9EA8D40()
{
  result = qword_1ECB74858;
  if (!qword_1ECB74858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74858);
  }

  return result;
}

unint64_t sub_1D9EA8DA4()
{
  result = qword_1ECB74860;
  if (!qword_1ECB74860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74860);
  }

  return result;
}

uint64_t SceneDescriptorEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74298, &unk_1D9F3A9B0);
  *a1 = sub_1D9F2A9AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB742A0, &qword_1D9F37C90);
  a1[1] = sub_1D9F2A9AC();
  result = sub_1D9F2A9AC();
  a1[2] = result;
  return result;
}

uint64_t SceneDescriptorEntity.descriptionText.getter()
{
  v1 = *v0;
  sub_1D9F2A97C();
  return v3;
}

uint64_t sub_1D9EA8F78(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];

  sub_1D9F2A98C();
}

uint64_t (*SceneDescriptorEntity.descriptionText.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1D9F2A96C();
  return sub_1D9EA9064;
}

uint64_t SceneDescriptorEntity.textList.getter()
{
  v1 = *(v0 + 8);
  sub_1D9F2A97C();
  return v3;
}

uint64_t sub_1D9EA90C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;

  sub_1D9F2A98C();
}

uint64_t (*SceneDescriptorEntity.textList.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1D9F2A96C();
  return sub_1D9EAA620;
}

uint64_t SceneDescriptorEntity.imageFrameResourceIDString.getter()
{
  v1 = *(v0 + 16);
  sub_1D9F2A97C();
  return v3;
}

uint64_t sub_1D9EA9204(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];

  sub_1D9F2A98C();
}

uint64_t (*SceneDescriptorEntity.imageFrameResourceIDString.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_1D9F2A96C();
  return sub_1D9EAA620;
}

void sub_1D9EA92F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1D9EA9360@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74298, &unk_1D9F3A9B0);
  *a1 = sub_1D9F2A9AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB742A0, &qword_1D9F37C90);
  a1[1] = sub_1D9F2A9AC();
  result = sub_1D9F2A9AC();
  a1[2] = result;
  return result;
}

uint64_t sub_1D9EA93D8(uint64_t a1)
{
  v2 = sub_1D9EAA4B0();

  return MEMORY[0x1EEDB29C8](a1, v2);
}

uint64_t sub_1D9EA9424()
{
  sub_1D9EAA4B0();

  return sub_1D9F2A93C();
}

uint64_t sub_1D9EA94A8(uint64_t a1)
{
  v2 = sub_1D9EAA07C();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1D9EA94F4(uint64_t a1)
{
  v2 = sub_1D9E913A8();

  return MEMORY[0x1EEDB4080](a1, v2);
}

uint64_t sub_1D9EA9540(uint64_t a1)
{
  v2 = sub_1D9EAA32C();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t SceneDescriptorEntity.convertToSystemIntentValue()@<X0>(uint64_t *a1@<X8>)
{
  v85 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v81 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v89 = v78 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v78 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v78 - v11;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74420, &unk_1D9F386E0);
  v13 = *(v92 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v16 = v78 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73898, &qword_1D9F32250);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v86 = v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v90 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v78 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v84 = v78 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v78 - v29;
  v32 = *v1;
  v31 = v1[1];
  v33 = v1[2];
  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v34 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v34, qword_1EE0F1240);

  v35 = sub_1D9F2AE6C();
  v36 = sub_1D9F2B42C();
  v37 = v33;
  v38 = v36;
  v83 = v37;

  v87 = v32;

  v39 = os_log_type_enabled(v35, v38);
  v91 = v30;
  v88 = v26;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v82 = v10;
    v41 = v12;
    v42 = v40;
    v43 = swift_slowAlloc();
    v94 = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_1D9E71CA4(0xD000000000000015, 0x80000001D9F3A9C0, &v94);
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_1D9E71CA4(0xD00000000000001CLL, 0x80000001D9F49360, &v94);
    _os_log_impl(&dword_1D9E39000, v35, v38, "%s.%s", v42, 0x16u);
    swift_arrayDestroy();
    v44 = v43;
    v30 = v91;
    MEMORY[0x1DA744270](v44, -1, -1);
    v45 = v42;
    v12 = v41;
    v10 = v82;
    MEMORY[0x1DA744270](v45, -1, -1);
  }

  sub_1D9F2A97C();
  v46 = v94;
  v47 = v89;
  if (v94)
  {
    v48 = sub_1D9F2ABDC();
    (*(*(v48 - 8) + 56))(v86, 1, 1, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74868, &unk_1D9F3A9D0);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74870, &qword_1D9F452B0) - 8);
    v50 = *(v49 + 72);
    v80 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1D9F2F8F0;
    v52 = *(v46 + 16);
    if (v52)
    {
      v78[0] = v51;
      v82 = v10;
      v79 = v12;
      v93 = MEMORY[0x1E69E7CC0];
      sub_1D9E9484C(0, v52, 0);
      v53 = v93;
      sub_1D9EAA024();
      v78[1] = v46;
      v54 = (v46 + 40);
      do
      {
        v55 = *v54;
        v94 = *(v54 - 1);
        v95 = v55;

        sub_1D9F2A95C();
        v93 = v53;
        v57 = *(v53 + 16);
        v56 = *(v53 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1D9E9484C(v56 > 1, v57 + 1, 1);
          v53 = v93;
        }

        *(v53 + 16) = v57 + 1;
        (*(v13 + 32))(v53 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v57, v16, v92);
        v54 += 2;
        --v52;
      }

      while (v52);

      v58 = v85;
      v12 = v79;
      v30 = v91;
      v10 = v82;
    }

    else
    {

      v58 = v85;
    }

    sub_1D9EAA024();
    sub_1D9F2A9BC();
    v60 = v84;
    sub_1D9F2A9CC();
    v59 = 0;
    v47 = v89;
  }

  else
  {
    v59 = 1;
    v60 = v84;
    v58 = v85;
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74290, &unk_1D9F37C80);
  (*(*(v61 - 8) + 56))(v60, v59, 1, v61);
  sub_1D9E68C38(v60, v30, &qword_1ECB74278, &qword_1D9F37C70);
  sub_1D9F2A97C();
  if (v95)
  {
    sub_1D9F2AD1C();
  }

  else
  {
    v62 = sub_1D9F2AD7C();
    (*(*(v62 - 8) + 56))(v10, 1, 1, v62);
  }

  sub_1D9E68C38(v10, v12, &qword_1ECB76010, &unk_1D9F3A9C0);
  sub_1D9F2A97C();
  v63 = v95;
  v92 = v94;
  v64 = v91;
  v65 = v88;
  sub_1D9E51E70(v91, v88, &qword_1ECB74278, &qword_1D9F37C70);
  sub_1D9E51E70(v12, v47, &qword_1ECB76010, &unk_1D9F3A9C0);
  sub_1D9E51E70(v65, v90, &qword_1ECB74278, &qword_1D9F37C70);
  v66 = sub_1D9F2AD7C();
  v67 = *(v66 - 8);
  v68 = *(v67 + 48);
  if (v68(v47, 1, v66) == 1)
  {
    sub_1D9E51FE8(v65, &qword_1ECB74278, &qword_1D9F37C70);
    sub_1D9E51FE8(v12, &qword_1ECB76010, &unk_1D9F3A9C0);
    sub_1D9E51FE8(v64, &qword_1ECB74278, &qword_1D9F37C70);
    v69 = 0xF000000000000007;
LABEL_22:
    *v58 = v92;
    v58[1] = v63;
    v77 = type metadata accessor for SceneDescriptor();
    sub_1D9E68C38(v90, v58 + *(v77 + 20), &qword_1ECB74278, &qword_1D9F37C70);
    *(v58 + *(v77 + 24)) = v69;
    return sub_1D9E51FE8(v47, &qword_1ECB76010, &unk_1D9F3A9C0);
  }

  v70 = v81;
  sub_1D9E51E70(v47, v81, &qword_1ECB76010, &unk_1D9F3A9C0);
  result = (v68)(v70, 1, v66);
  if (result != 1)
  {
    v72 = type metadata accessor for ExecutionResourceRetriever();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    v69 = swift_allocObject();
    v75 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_lockedState;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73EF8, &qword_1D9F35B40);
    v76 = swift_allocObject();
    *(v76 + 100) = 0;
    *(v76 + 16) = 0u;
    *(v76 + 32) = 0u;
    *(v76 + 48) = 0;
    *(v76 + 56) = 0x8000000000000000;
    *(v76 + 64) = 0u;
    *(v76 + 80) = 0u;
    *(v69 + v75) = v76;
    *(v76 + 96) = 0;
    (*(v67 + 32))(v69 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID, v70, v66);
    sub_1D9E51FE8(v88, &qword_1ECB74278, &qword_1D9F37C70);
    sub_1D9E51FE8(v12, &qword_1ECB76010, &unk_1D9F3A9C0);
    sub_1D9E51FE8(v91, &qword_1ECB74278, &qword_1D9F37C70);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9EA9FD8(uint64_t a1)
{
  v2 = sub_1D9E913A8();

  return MEMORY[0x1EEDB4088](a1, v2);
}

unint64_t sub_1D9EAA024()
{
  result = qword_1ECB74878;
  if (!qword_1ECB74878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74878);
  }

  return result;
}

unint64_t sub_1D9EAA07C()
{
  result = qword_1ECB74880;
  if (!qword_1ECB74880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74880);
  }

  return result;
}

unint64_t sub_1D9EAA0D4()
{
  result = qword_1ECB74888;
  if (!qword_1ECB74888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74888);
  }

  return result;
}

unint64_t sub_1D9EAA12C()
{
  result = qword_1ECB74890;
  if (!qword_1ECB74890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74890);
  }

  return result;
}

unint64_t sub_1D9EAA184()
{
  result = qword_1ECB74898;
  if (!qword_1ECB74898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74898);
  }

  return result;
}

unint64_t sub_1D9EAA22C()
{
  result = qword_1ECB748B0;
  if (!qword_1ECB748B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748B0);
  }

  return result;
}

unint64_t sub_1D9EAA280()
{
  result = qword_1ECB748B8;
  if (!qword_1ECB748B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748B8);
  }

  return result;
}

unint64_t sub_1D9EAA2D4()
{
  result = qword_1ECB748C0;
  if (!qword_1ECB748C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748C0);
  }

  return result;
}

unint64_t sub_1D9EAA32C()
{
  result = qword_1ECB748C8;
  if (!qword_1ECB748C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748C8);
  }

  return result;
}

uint64_t sub_1D9EAA40C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1D9EAA458()
{
  result = qword_1ECB748E0;
  if (!qword_1ECB748E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748E0);
  }

  return result;
}

unint64_t sub_1D9EAA4B0()
{
  result = qword_1ECB748E8;
  if (!qword_1ECB748E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748E8);
  }

  return result;
}

unint64_t sub_1D9EAA508()
{
  result = qword_1ECB748F0;
  if (!qword_1ECB748F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748F0);
  }

  return result;
}

uint64_t sub_1D9EAA5D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CurrencyAmount.currency.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CurrencyAmount.currency.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

VisualActionPredictionSupport::CurrencyAmount __swiftcall CurrencyAmount.init(currency:amount:)(Swift::String currency, Swift::Double amount)
{
  *v2 = currency;
  *(v2 + 16) = amount;
  result.currency = currency;
  result.amount = amount;
  return result;
}

BOOL static CurrencyAmount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1D9F2BA1C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1D9EAA750()
{
  if (*v0)
  {
    result = 0x746E756F6D61;
  }

  else
  {
    result = 0x79636E6572727563;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EAA788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79636E6572727563 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000)
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

uint64_t sub_1D9EAA860(uint64_t a1)
{
  v2 = sub_1D9EAAA70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EAA89C(uint64_t a1)
{
  v2 = sub_1D9EAAA70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrencyAmount.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74900, &qword_1D9F3AD20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EAAA70();
  sub_1D9F2BB8C();
  v16 = 0;
  v12 = v14;
  sub_1D9F2B95C();
  if (!v12)
  {
    v15 = 1;
    sub_1D9F2B97C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9EAAA70()
{
  result = qword_1ECB74908;
  if (!qword_1ECB74908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74908);
  }

  return result;
}

uint64_t CurrencyAmount.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_1D9F2B18C();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  return MEMORY[0x1DA743920](*&v4);
}

uint64_t CurrencyAmount.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x1DA743920](*&v4);
  return sub_1D9F2BB4C();
}

uint64_t CurrencyAmount.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74910, &qword_1D9F3AD28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EAAA70();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18[15] = 0;
  v11 = sub_1D9F2B84C();
  v13 = v12;
  v14 = v11;
  v18[14] = 1;
  sub_1D9F2B86C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EAADA4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_1D9F2B18C();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  return MEMORY[0x1DA743920](*&v4);
}

uint64_t sub_1D9EAADF0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x1DA743920](*&v4);
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EAAE68()
{
  result = qword_1ECB74918;
  if (!qword_1ECB74918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74918);
  }

  return result;
}

BOOL sub_1D9EAAEBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1D9F2BA1C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1D9EAAF1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D9EAAF64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9EAAFC8()
{
  result = qword_1ECB74920;
  if (!qword_1ECB74920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74920);
  }

  return result;
}

unint64_t sub_1D9EAB020()
{
  result = qword_1ECB74928;
  if (!qword_1ECB74928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74928);
  }

  return result;
}

unint64_t sub_1D9EAB078()
{
  result = qword_1ECB74930;
  if (!qword_1ECB74930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74930);
  }

  return result;
}

VisualActionPredictionSupport::FeatureConfiguration __swiftcall FeatureConfiguration.init(isSaveActionEnabled:includesInternalApps:isSessionLogEnabled:usesToolKitForOpenAction:)(Swift::Bool_optional isSaveActionEnabled, Swift::Bool_optional includesInternalApps, Swift::Bool_optional isSessionLogEnabled, Swift::Bool_optional usesToolKitForOpenAction)
{
  v8 = v4;
  if (isSaveActionEnabled.value == 2)
  {
    *&isSaveActionEnabled.value = sub_1D9EABC28(0xD000000000000011, 0x80000001D9F49380, 0xD00000000000002CLL, 0x80000001D9F479F0, 0);
  }

  value = isSaveActionEnabled.value;
  if (includesInternalApps.value == 2)
  {
    *&isSaveActionEnabled.value = sub_1D9EABC28(0xD000000000000014, 0x80000001D9F493A0, 0xD00000000000002CLL, 0x80000001D9F479F0, 0);
    includesInternalApps.value = isSaveActionEnabled.value;
  }

  if (isSessionLogEnabled.value == 2)
  {
    *&isSaveActionEnabled.value = sub_1D9EABC28(0xD000000000000011, 0x80000001D9F493C0, 0xD00000000000002CLL, 0x80000001D9F479F0, 0);
    isSessionLogEnabled.value = isSaveActionEnabled.value;
  }

  if (usesToolKitForOpenAction.value == 2)
  {
    *&isSaveActionEnabled.value = sub_1D9EABC28(0xD000000000000015, 0x80000001D9F493E0, 0xD00000000000002CLL, 0x80000001D9F479F0, 0);
    usesToolKitForOpenAction.value = isSaveActionEnabled.value;
  }

  *v8 = value;
  v8[1] = includesInternalApps.value;
  v8[2] = isSessionLogEnabled.value;
  v8[3] = usesToolKitForOpenAction.value;
  result.isSaveActionEnabled = isSaveActionEnabled.value;
  return result;
}

unint64_t sub_1D9EAB254()
{
  v1 = 0xD000000000000013;
  v2 = 0xD000000000000018;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EAB2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EAC0CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EAB2E8(uint64_t a1)
{
  v2 = sub_1D9EABE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EAB324(uint64_t a1)
{
  v2 = sub_1D9EABE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74938, &qword_1D9F3AF70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v13[6] = v1[1];
  v10 = v1[2];
  v13[2] = v1[3];
  v13[3] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EABE58();
  sub_1D9F2BB8C();
  v17 = 0;
  sub_1D9F2B96C();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 1;
  sub_1D9F2B96C();
  v15 = 2;
  sub_1D9F2B96C();
  v14 = 3;
  sub_1D9F2B96C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t FeatureConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB1C();
}

uint64_t FeatureConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB4C();
}

uint64_t FeatureConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74948, &qword_1D9F3AF78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EABE58();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v22 = 0;
    v11 = sub_1D9F2B85C();
    v21 = 1;
    v12 = sub_1D9F2B85C();
    v20 = 2;
    v18 = sub_1D9F2B85C();
    v19 = 3;
    v14 = sub_1D9F2B85C();
    v17 = v11 & 1;
    v15 = v18 & 1;
    (*(v6 + 8))(v9, v5);
    *a2 = v17;
    a2[1] = v12 & 1;
    a2[2] = v15;
    a2[3] = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EAB87C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB4C();
}

unint64_t FeatureConfiguration.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v13 = v0[3];
  sub_1D9F2B68C();

  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1DA742F90](v4, v5);

  MEMORY[0x1DA742F90](2604, 0xE200000000000000);
  MEMORY[0x1DA742F90](0xD000000000000019, 0x80000001D9F49420);

  sub_1D9F2B68C();

  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1DA742F90](v6, v7);

  MEMORY[0x1DA742F90](10, 0xE100000000000000);
  MEMORY[0x1DA742F90](0xD00000000000001ALL, 0x80000001D9F49440);

  sub_1D9F2B68C();

  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1DA742F90](v8, v9);

  MEMORY[0x1DA742F90](10, 0xE100000000000000);
  MEMORY[0x1DA742F90](0xD000000000000019, 0x80000001D9F49460);

  sub_1D9F2B68C();

  if (v13)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v13)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1DA742F90](v10, v11);

  MEMORY[0x1DA742F90](10, 0xE100000000000000);
  MEMORY[0x1DA742F90](0xD00000000000001ELL, 0x80000001D9F49480);

  MEMORY[0x1DA742F90](41, 0xE100000000000000);
  return 0xD000000000000016;
}

void *sub_1D9EABB90(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1D9EABBB0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

BOOL sub_1D9EABC28(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, BOOL a5)
{
  v21[1] = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v10 = sub_1D9F2B11C();
  v11 = sub_1D9F2B11C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v10, v11, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    a5 = AppBooleanValue != 0;
  }

  else
  {
    if (qword_1EE0F12A0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v13, qword_1EE0F12A8);

    v14 = sub_1D9F2AE6C();
    v15 = sub_1D9F2B42C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_1D9E71CA4(a1, a2, v21);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D9E71CA4(a3, a4, v21);
      *(v16 + 22) = 1024;
      *(v16 + 24) = a5;
      _os_log_impl(&dword_1D9E39000, v14, v15, "User defaults key '%s' does not exist or has invalid format in domain '%s'. Using default value '%{BOOL}d'.", v16, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v17, -1, -1);
      MEMORY[0x1DA744270](v16, -1, -1);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return a5;
}

unint64_t sub_1D9EABE58()
{
  result = qword_1ECB74940;
  if (!qword_1ECB74940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74940);
  }

  return result;
}

unint64_t sub_1D9EABEB0()
{
  result = qword_1ECB74950;
  if (!qword_1ECB74950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74950);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D9EABFC8()
{
  result = qword_1ECB74958;
  if (!qword_1ECB74958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74958);
  }

  return result;
}

unint64_t sub_1D9EAC020()
{
  result = qword_1ECB74960;
  if (!qword_1ECB74960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74960);
  }

  return result;
}

unint64_t sub_1D9EAC078()
{
  result = qword_1ECB74968[0];
  if (!qword_1ECB74968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECB74968);
  }

  return result;
}

uint64_t sub_1D9EAC0CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001D9F494A0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9F48BE0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9F494C0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D9F494E0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D9EAC23C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1DA744500]();
  if (v4 != sub_1D9F2AEDC())
  {
    result = sub_1D9F2AF3C();
    if (v4 != result)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      v6 = -1;
LABEL_7:
      *(a2 + 16) = v6;
      return result;
    }
  }

  v7 = sub_1D9F2AF6C();
  v8 = xpc_equal(a1, v7);
  result = swift_unknownObjectRelease();
  if (v8 || (v9 = sub_1D9F2AF5C(), v10 = xpc_equal(a1, v9), result = swift_unknownObjectRelease(), v10))
  {
    *a2 = xmmword_1D9F3B1E0;
    v6 = 5;
    goto LABEL_7;
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;

  return swift_unknownObjectRetain();
}

uint64_t sub_1D9EAC320(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = sub_1D9F2AF2C();
  v7 = MEMORY[0x1DA744500](a2);
  if (v7 != v6)
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9F2F8F0;
    *(v9 + 32) = v6;
    v31 = v8;
    v32 = v9;
    v33 = 1;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 16) = 1;
    goto LABEL_16;
  }

  v31 = sub_1D9F2AD5C();
  v32 = v11;
  v12 = xpc_uuid_create(&v31);
  xpc_dictionary_set_value(a2, "uuid", v12);
  swift_unknownObjectRelease();
  v13 = type metadata accessor for ServiceEnvelope();
  v14 = a1 + v13[5];
  sub_1D9F2ACCC();
  v16 = v15 * 1000000000.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (v16 >= 9.22337204e18)
  {
    goto LABEL_19;
  }

  v17 = xpc_date_create(v16);
  xpc_dictionary_set_value(a2, "date", v17);
  swift_unknownObjectRelease();
  v18 = xpc_uint64_create(*(a1 + v13[6]));
  xpc_dictionary_set_value(a2, "attr", v18);
  swift_unknownObjectRelease();
  v19 = (a1 + v13[7]);
  if (v19[1])
  {
    v20 = *v19;
    v21 = sub_1D9F2B15C();
    v22 = xpc_string_create((v21 + 32));
  }

  else
  {
    v22 = 0;
  }

  xpc_dictionary_set_value(a2, "type", v22);
  swift_unknownObjectRelease();
  v23 = (a1 + v13[8]);
  v24 = v23[1];
  if (v24 >> 60 == 15)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1D9F1C29C(*v23, v24);
  }

  xpc_dictionary_set_value(a2, "data", v25);
  result = swift_unknownObjectRelease();
  v26 = v13[9];
  v27 = *(a1 + v26);
  if (v27)
  {
    v28 = *(a1 + v26);
    v29 = swift_unknownObjectRetain();
    if (xpc_dictionary_get_count(v29))
    {
      xpc_dictionary_set_value(a2, "oolv", v27);
    }

    result = swift_unknownObjectRelease();
  }

LABEL_16:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9EAC5DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = sub_1D9F2AD0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9F2AD7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9F2AF2C();
  v46 = a1;
  v16 = MEMORY[0x1DA744500](a1);
  if (v16 == v15)
  {
    v40 = v9;
    v21 = v41;
    v20 = v42;
    v22 = v11;
    v23 = v46;
    result = sub_1D9EAC9D4(v46, 1684632949, 0xE400000000000000, &v44);
    if (v20)
    {
      v24 = v45;
      *a2 = v44;
      *(a2 + 16) = v24;
    }

    else
    {
      sub_1D9EACB44(v23, 1702125924, 0xE400000000000000, &v44);
      v25 = sub_1D9EACD44(v23, 1920234593, 0xE400000000000000, &v44);
      v26 = v10;
      v27 = v22;
      v42 = v25;
      v29 = v5;
      v28 = sub_1D9EACEDC(v46, 1701869940, 0xE400000000000000, &v44);
      v31 = v30;
      v39 = v28;
      sub_1D9EAD0C0(v46, &v44, v43);
      v37 = v43[0];
      v38 = v43[1];
      v32 = sub_1D9EAD204(v46, 1986817903, 0xE400000000000000, &v44);
      (*(v27 + 32))(v21, v14, v26);
      v33 = type metadata accessor for ServiceEnvelope();
      result = (*(v6 + 32))(v21 + v33[5], v40, v29);
      *(v21 + v33[6]) = v42;
      v34 = (v21 + v33[7]);
      *v34 = v39;
      v34[1] = v31;
      v35 = (v21 + v33[8]);
      v36 = v38;
      *v35 = v37;
      v35[1] = v36;
      *(v21 + v33[9]) = v32;
    }
  }

  else
  {
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D9F2F8F0;
    *(v18 + 32) = v15;
    *&v44 = v17;
    *(&v44 + 1) = v18;
    v45 = 1;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
    *a2 = v17;
    *(a2 + 8) = v18;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_1D9EAC9D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1D9F2AF2C();
  v10 = MEMORY[0x1DA744500](a1);
  if (v10 == v9)
  {
    v14 = sub_1D9F2B15C();
    v15 = xpc_dictionary_get_value(a1, (v14 + 32));

    if (v15)
    {
      result = sub_1D9EE9DD8(v15, &v17);
      if (v4)
      {
        v16 = v18;
        *a4 = v17;
        *(a4 + 16) = v16;
      }
    }

    else
    {
      *a4 = a2;
      *(a4 + 8) = a3;
      *(a4 + 16) = 2;
      sub_1D9E56B78();

      return swift_willThrowTypedImpl();
    }
  }

  else
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D9F2F8F0;
    *(v12 + 32) = v9;
    *&v17 = v11;
    *(&v17 + 1) = v12;
    v18 = 1;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
    *a4 = v11;
    *(a4 + 8) = v12;
    *(a4 + 16) = 1;
  }

  return result;
}

uint64_t sub_1D9EACB44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9F2AF2C();
  v9 = MEMORY[0x1DA744500](a1);
  if (v9 != v8)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D9F2F8F0;
    *(v11 + 32) = v8;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
    *a4 = v10;
LABEL_3:
    *(a4 + 8) = v11;
    *(a4 + 16) = 1;
    return result;
  }

  v13 = sub_1D9F2B15C();
  v14 = xpc_dictionary_get_value(a1, (v13 + 32));

  if (v14)
  {
    v15 = sub_1D9F2AEBC();
    v16 = MEMORY[0x1DA744500](v14);
    if (v16 != v15)
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D9F2F8F0;
      *(v11 + 32) = v15;
      sub_1D9E56B78();
      swift_willThrowTypedImpl();
      result = swift_unknownObjectRelease();
      *a4 = v17;
      goto LABEL_3;
    }

    xpc_date_get_value(v14);
    sub_1D9F2ACBC();
    return swift_unknownObjectRelease();
  }

  else
  {
    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 16) = 2;
    sub_1D9E56B78();

    return swift_willThrowTypedImpl();
  }
}

uint64_t sub_1D9EACD44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1D9F2AF2C();
  v10 = MEMORY[0x1DA744500](a1);
  if (v10 == v9)
  {
    v14 = sub_1D9F2B15C();
    v15 = xpc_dictionary_get_value(a1, (v14 + 32));

    if (v15)
    {
      result = off_1F556A1F8(v15, &v17, &v19);
      if (v4)
      {
        v16 = v18;
        *a4 = v17;
        *(a4 + 16) = v16;
      }

      else
      {
        return v19;
      }
    }

    else
    {
      *a4 = a2;
      *(a4 + 8) = a3;
      *(a4 + 16) = 2;
      *&v17 = a2;
      *(&v17 + 1) = a3;
      v18 = 2;
      sub_1D9E56B78();

      return swift_willThrowTypedImpl();
    }
  }

  else
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D9F2F8F0;
    *(v12 + 32) = v9;
    *&v17 = v11;
    *(&v17 + 1) = v12;
    v18 = 1;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
    *a4 = v11;
    *(a4 + 8) = v12;
    *(a4 + 16) = 1;
  }

  return result;
}

uint64_t sub_1D9EACEDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D9F2AF2C();
  v7 = MEMORY[0x1DA744500](a1);
  if (v7 == v6)
  {
    v11 = sub_1D9F2B15C();
    v12 = xpc_dictionary_get_value(a1, (v11 + 32));

    if (!v12)
    {
      return 0;
    }

    v13 = sub_1D9F2AEFC();
    v14 = MEMORY[0x1DA744500](v12);
    if (v14 == v13)
    {
      xpc_string_get_string_ptr(v12);
      xpc_string_get_length(v12);
      a4 = sub_1D9F2B17C();
      swift_unknownObjectRelease();
      return a4;
    }

    v8 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9F2F8F0;
    *(v9 + 32) = v13;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9F2F8F0;
    *(v9 + 32) = v6;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = 1;
  return a4;
}

uint64_t sub_1D9EAD0C0@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = sub_1D9F2AF2C();
  v8 = MEMORY[0x1DA744500](a1);
  if (v8 == v7)
  {
    v13 = sub_1D9F2B15C();
    v14 = xpc_dictionary_get_value(a1, (v13 + 32));

    if (!v14)
    {
      *a3 = xmmword_1D9F334C0;
      return result;
    }

    result = sub_1D9F1C470(v14, &v16);
    if (!v3)
    {
      *a3 = result;
      *(a3 + 8) = v15;
      return result;
    }

    v9 = v16;
    v10 = v17;
    v11 = v18;
  }

  else
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D9F2F8F0;
    *(v10 + 32) = v7;
    v16 = v9;
    v17 = v10;
    v11 = 1;
    v18 = 1;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_1D9EAD204(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D9F2AF2C();
  v8 = MEMORY[0x1DA744500](a1);
  if (v8 == v7)
  {
    v12 = sub_1D9F2B15C();
    v13 = xpc_dictionary_get_value(a1, (v12 + 32));

    if (v13)
    {
      result = off_1F5567E40(v13, &v15, &v17);
      if (v4)
      {
        v14 = v16;
        *a4 = v15;
        *(a4 + 16) = v14;
      }

      else
      {
        return v17;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D9F2F8F0;
    *(v10 + 32) = v7;
    *&v15 = v9;
    *(&v15 + 1) = v10;
    v16 = 1;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
    *a4 = v9;
    *(a4 + 8) = v10;
    *(a4 + 16) = 1;
  }

  return result;
}

uint64_t LabeledContent.label.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t LabeledContent.label.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*LabeledContent.label.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t LabeledContent.init(_:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (a5 + *(type metadata accessor for LabeledContent() + 28));
  result = (*(*(a4 - 8) + 32))(a5, a1, a4);
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1D9EAD538(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D9EAD638(char a1)
{
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](a1 & 1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EAD680(char a1)
{
  if (a1)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_1D9EAD6E4(uint64_t a1, uint64_t a2)
{
  sub_1D9F2BAFC();
  v4 = *(a2 + 16);
  sub_1D9EAD610(v6, *v2);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EAD73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1D9EAD538(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1D9EAD768@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1D9EAE498();
  *a2 = result;
  return result;
}

uint64_t sub_1D9EAD794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9EAD7E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t LabeledContent<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = a4;
  v18[0] = a2;
  v5 = *(a2 + 16);
  type metadata accessor for LabeledContent.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1D9F2B9EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v18[1];
  sub_1D9F2BB8C();
  v20 = 0;
  v13 = v18[3];
  sub_1D9F2B9AC();
  if (!v13)
  {
    v14 = (v12 + *(v18[0] + 28));
    v15 = *v14;
    v16 = v14[1];
    v19 = 1;
    sub_1D9F2B90C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t LabeledContent<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v30 = a4;
  v32 = *(a2 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LabeledContent.CodingKeys();
  swift_getWitnessTable();
  v33 = sub_1D9F2B8EC();
  v31 = *(v33 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v29 - v9;
  v11 = type metadata accessor for LabeledContent();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v36;
  sub_1D9F2BB7C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v11;
  v17 = v31;
  v18 = v32;
  v38 = 0;
  v19 = v33;
  sub_1D9F2B89C();
  (*(v18 + 32))(v14, v35, a2);
  v37 = 1;
  v20 = sub_1D9F2B7FC();
  v21 = v36;
  v22 = &v14[*(v36 + 28)];
  v35 = v14;
  v23 = *(v17 + 8);
  v25 = v24;
  v23(v10, v19);
  *v22 = v20;
  v22[1] = v25;
  v26 = v29;
  v27 = v35;
  (*(v29 + 16))(v30, v35, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v26 + 8))(v27, v21);
}

uint64_t static LabeledContent<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1D9F2B10C())
  {
    v4 = *(type metadata accessor for LabeledContent() + 28);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_1D9F2BA1C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D9EADE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static LabeledContent<A>.== infix(_:_:)(a1, a2);
}

uint64_t LabeledContent<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1D9F2B0EC();
  v5 = (v2 + *(a2 + 28));
  if (!v5[1])
  {
    return sub_1D9F2BB1C();
  }

  v6 = *v5;
  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t LabeledContent<A>.hashValue.getter(uint64_t a1)
{
  sub_1D9F2BAFC();
  LabeledContent<A>.hash(into:)(v3, a1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EADF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D9F2BAFC();
  LabeledContent<A>.hash(into:)(v6, a2);
  return sub_1D9F2BB4C();
}

uint64_t LabeledContent<A>.stringRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a1 + 28));
  v4 = v3[1];
  if (!v4)
  {
    return (*(a2 + 8))(*(a1 + 16));
  }

  v5 = *v3;
  v7 = (*(a2 + 8))(*(a1 + 16));
  MEMORY[0x1DA742F90](10272, 0xE200000000000000);
  MEMORY[0x1DA742F90](v5, v4);
  MEMORY[0x1DA742F90](41, 0xE100000000000000);
  return v7;
}

void sub_1D9EAE0B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1D9E95A38();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9EAE13C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1D9EAE280(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      v18[1] = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t CancellationReason.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    sub_1D9F2B68C();

    v5[0] = 0xD000000000000014;
    v5[1] = 0x80000001D9F49520;
    swift_getErrorValue();
    v3 = sub_1D9F2BAAC();
    MEMORY[0x1DA742F90](v3);

    return v5[0];
  }

  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    sub_1D9F2B68C();

    strcpy(v5, "Request for ");
    HIWORD(v5[1]) = -4864;
    MEMORY[0x1DA742F90](v1, v2);
    MEMORY[0x1DA742F90](34, 0xE100000000000000);
    return v5[0];
  }

  return 0x61636F6C6C616544;
}

uint64_t sub_1D9EAE614(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1D9E3CA7C(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_1D9EAFD4C(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_1D9F2B77C();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_1D9EB0914(a1);
    sub_1D9EAEEFC(a2, v10);
    v8 = sub_1D9F2B77C();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_1D9EB0914(v10);
  }

  return result;
}

uint64_t sub_1D9EAE710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1D9EB0074(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1D9EEA3F4(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1D9EB0750();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1D9EAFB9C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1D9EAE818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 40))(a4, a5);
  v13 = v12;
  sub_1D9EAE924(v11, a4, a5);
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;

  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v5;
  sub_1D9EB0074(sub_1D9EB08D0, v14, v11, v13, isUniquelyReferenced_nonNull_native);

  *v5 = v18;
  return result;
}

uint64_t sub_1D9EAE924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 40))(a2, a3);
  v6 = v5;
  if (*(*v3 + 16) && (v7 = v4, sub_1D9EEA3F4(v4, v5), (v8 & 1) != 0))
  {

    return sub_1D9EAE710(0, 0, v7, v6);
  }

  else
  {
  }
}

uint64_t sub_1D9EAE9D0(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(char *, uint64_t (*)(uint64_t a1), void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v30 = a4;
  v31 = a1;
  v11 = type metadata accessor for ServiceEnvelope();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v27 = *(a6 - 8);
  v14 = *(v27 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  v20 = *a2;
  v21 = a2[1];
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;

  v28 = a7;
  sub_1D9E3FDA4(a3, a6, a7, v17);
  v23 = v27;
  (*(v27 + 32))(v19, v17, a6);
  v24 = swift_allocObject();
  v25 = v28;
  v24[2] = a6;
  v24[3] = v25;
  v24[4] = sub_1D9EB08E0;
  v24[5] = v22;
  v30(v19, sub_1D9EB0908, v24);

  return (*(v23 + 8))(v19, a6);
}

uint64_t sub_1D9EAEC5C(uint64_t a1, void (*a2)(char *))
{
  v3 = type metadata accessor for ServiceEnvelope();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1D9E3F498(AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  a2(v6);
  return sub_1D9E72374(v6);
}

uint64_t sub_1D9EAED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + *(type metadata accessor for ServiceEnvelope() + 28));
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = *(a4 + 16);
    v12 = v8[1];

    if (v11)
    {
      v13 = sub_1D9EEA3F4(v10, v9);
      if (v14)
      {
        v15 = v13;

        v16 = *(a4 + 56) + 16 * v15;
        v18 = *v16;
        v17 = *(v16 + 8);
        v19 = swift_allocObject();
        *(v19 + 16) = a2;
        *(v19 + 24) = a3;
        v20 = swift_allocObject();
        *(v20 + 16) = sub_1D9EB097C;
        *(v20 + 24) = v19;
        v24[0] = sub_1D9EB097C;
        v24[1] = v20;

        v18(a1, v24);
      }
    }

    v22 = 96;
  }

  else
  {
    v22 = 0x80;
    v10 = 3;
  }

  sub_1D9E3F7D8();
  swift_allocError();
  *v23 = v10;
  *(v23 + 8) = v9;
  *(v23 + 16) = v22;
  return swift_willThrow();
}

double sub_1D9EAEEFC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1D9EEA200(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D9EB0328();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_1D9F2B77C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_1D9E3CA7C((*(v11 + 56) + 32 * v8), a2);
    sub_1D9EAF8E8(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D9EAEFD8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D9F2B77C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB749F8, &unk_1D9F3B620);
  v43 = a2;
  result = sub_1D9F2B79C();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_1D9E3CA7C((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_1D9E722B0(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_1D9F2B0DC();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_1D9E3CA7C(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1D9EAF378(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74770, &qword_1D9F3A118);
  v36 = a2;
  result = sub_1D9F2B79C();
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
        sub_1D9E3CA7C(v25, v37);
      }

      else
      {
        sub_1D9E722B0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
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
      result = sub_1D9E3CA7C(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1D9EAF630(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB749F0, &unk_1D9F3B610);
  v36 = a2;
  result = sub_1D9F2B79C();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1D9EAF8E8(int64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2B77C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1D9F2B61C();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_1D9F2B0DC();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D9EAFB9C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D9F2B61C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1D9F2BAFC();

      sub_1D9F2B18C();
      v13 = sub_1D9F2BB4C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1D9EAFD4C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D9F2B77C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D9EEA200(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1D9EB0328();
      goto LABEL_7;
    }

    sub_1D9EAEFD8(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_1D9EEA200(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1D9EB01FC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1D9F2BA6C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return sub_1D9E3CA7C(a1, v22);
}

_OWORD *sub_1D9EAFF24(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D9EEA3F4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D9EB05AC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D9EAF378(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D9EEA3F4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D9F2BA6C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1D9E3CA7C(a1, v23);
  }

  else
  {
    sub_1D9EB02BC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1D9EB0074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D9EEA3F4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D9EAF630(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1D9EEA3F4(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1D9F2BA6C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D9EB0750();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

_OWORD *sub_1D9EB01FC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D9F2B77C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1D9E3CA7C(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1D9EB02BC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D9E3CA7C(a4, (a5[7] + 32 * a1));
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

void *sub_1D9EB0328()
{
  v1 = v0;
  v27 = sub_1D9F2B77C();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB749F8, &unk_1D9F3B620);
  v4 = *v0;
  v5 = sub_1D9F2B78C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_1D9E722B0(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_1D9E3CA7C(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
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

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1D9EB05AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74770, &qword_1D9F3A118);
  v2 = *v0;
  v3 = sub_1D9F2B78C();
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
        sub_1D9E722B0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D9E3CA7C(v25, (*(v4 + 56) + v22));
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

void *sub_1D9EB0750()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB749F0, &unk_1D9F3B610);
  v2 = *v0;
  v3 = sub_1D9F2B78C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

uint64_t sub_1D9EB08E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D9EB0908(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1D9EAEC5C(a1, *(v1 + 32));
}

uint64_t sub_1D9EB0914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74530, &qword_1D9F38F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9EB097C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t ObjectEmbedding.modelName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ObjectEmbedding.modelVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall ObjectEmbedding.init(modelName:modelVersion:features:)(VisualActionPredictionSupport::ObjectEmbedding *__return_ptr retstr, Swift::String modelName, Swift::String modelVersion, Swift::OpaquePointer features)
{
  retstr->modelName = modelName;
  retstr->modelVersion = modelVersion;
  retstr->features = features;
}

{
  retstr->modelName = modelName;
  retstr->modelVersion = modelVersion;
  v5 = sub_1D9EB1448(features._rawValue);

  retstr->features._rawValue = v5;
}

uint64_t static ObjectEmbedding.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D9E4AEA8(v3, v7);
}

uint64_t sub_1D9EB0B24()
{
  v1 = 0x7265566C65646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x7365727574616566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E6C65646F6DLL;
  }
}

uint64_t sub_1D9EB0B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EB1894(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EB0BB4(uint64_t a1)
{
  v2 = sub_1D9EB15C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB0BF0(uint64_t a1)
{
  v2 = sub_1D9EB15C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ObjectEmbedding.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A00, &unk_1D9F3B630);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v10;
  v16 = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB15C4();
  sub_1D9F2BB8C();
  v23 = 0;
  v12 = v19;
  sub_1D9F2B95C();
  if (!v12)
  {
    v14 = v16;
    v22 = 1;
    sub_1D9F2B95C();
    v20 = v14;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734D8, &unk_1D9F2FB10);
    sub_1D9EB1618(&qword_1EE0F1110);
    sub_1D9F2B9AC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ObjectEmbedding.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1D9F2B18C();
  sub_1D9F2B18C();

  return sub_1D9E4F8D0(a1, v7);
}

uint64_t ObjectEmbedding.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9E4F8D0(v7, v5);
  return sub_1D9F2BB4C();
}

uint64_t ObjectEmbedding.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A08, &qword_1D9F3B640);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB15C4();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v11 = sub_1D9F2B84C();
  v13 = v12;
  v20 = v11;
  v23 = 1;
  v18 = sub_1D9F2B84C();
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734D8, &unk_1D9F2FB10);
  v22 = 2;
  sub_1D9EB1618(&qword_1EE0F1108);
  sub_1D9F2B89C();
  (*(v6 + 8))(v9, v5);
  v15 = v21;
  *a2 = v20;
  a2[1] = v13;
  v16 = v19;
  a2[2] = v18;
  a2[3] = v16;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EB1230()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9E4F8D0(v7, v5);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EB12B0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1D9F2B18C();
  sub_1D9F2B18C();

  return sub_1D9E4F8D0(a1, v7);
}

uint64_t sub_1D9EB1310()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9E4F8D0(v7, v5);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EB138C(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D9E4AEA8(v3, v7);
}

uint64_t sub_1D9EB1448(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D9E9488C(0, v1, 0);
    v4 = v21;
    v5 = (a1 + 32);
    v6 = *(v21 + 16);
    do
    {
      v7 = *v5;
      v8 = *(v21 + 24);
      v9 = v6 + 1;
      if (v6 >= v8 >> 1)
      {
        sub_1D9E9488C((v8 > 1), v6 + 1, 1);
      }

      *(v21 + 16) = v9;
      *(v21 + 2 * v6 + 32) = v7;
      ++v5;
      ++v6;
      --v1;
    }

    while (v1);
  }

  else
  {
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v9)
    {
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_13;
    }

    v4 = MEMORY[0x1E69E7CC0];
  }

  sub_1D9E9486C(0, v9, 0);
  v10 = v2;
  v11 = *(v2 + 16);
  v12 = 32;
  do
  {
    _H8 = *(v4 + v12);
    v14 = *(v10 + 24);
    if (v11 >= v14 >> 1)
    {
      sub_1D9E9486C((v14 > 1), v11 + 1, 1);
    }

    __asm { FCVT            S0, H8 }

    *(v10 + 16) = v11 + 1;
    *(v10 + 4 * v11 + 32) = _S0;
    v12 += 2;
    ++v11;
    --v9;
  }

  while (v9);
LABEL_13:

  return v10;
}

unint64_t sub_1D9EB15C4()
{
  result = qword_1EE0F2B68[0];
  if (!qword_1EE0F2B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F2B68);
  }

  return result;
}

uint64_t sub_1D9EB1618(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734D8, &unk_1D9F2FB10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EB1688()
{
  result = qword_1ECB74A10;
  if (!qword_1ECB74A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A10);
  }

  return result;
}

uint64_t sub_1D9EB16DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D9EB1724(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1D9EB1790()
{
  result = qword_1ECB74A18;
  if (!qword_1ECB74A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A18);
  }

  return result;
}

unint64_t sub_1D9EB17E8()
{
  result = qword_1EE0F2B58;
  if (!qword_1EE0F2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2B58);
  }

  return result;
}

unint64_t sub_1D9EB1840()
{
  result = qword_1EE0F2B60;
  if (!qword_1EE0F2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2B60);
  }

  return result;
}

uint64_t sub_1D9EB1894(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t TimeoutError.reason.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TimeoutError.localizedDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2B68C();

  strcpy(v4, "TimeoutError: ");
  MEMORY[0x1DA742F90](v1, v2);
  return v4[0];
}

uint64_t static TimeoutError.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C();
  }
}

uint64_t sub_1D9EB1AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
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

uint64_t sub_1D9EB1B3C(uint64_t a1)
{
  v2 = sub_1D9EB1CF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB1B78(uint64_t a1)
{
  v2 = sub_1D9EB1CF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeoutError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A20, &qword_1D9F3B890);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB1CF0();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9EB1CF0()
{
  result = qword_1ECB74A28;
  if (!qword_1ECB74A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A28);
  }

  return result;
}

uint64_t TimeoutError.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D9F2B18C();
}

uint64_t TimeoutError.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t TimeoutError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A30, &qword_1D9F3B898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB1CF0();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v11 = sub_1D9F2B84C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EB1F24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A20, &qword_1D9F3B890);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB1CF0();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D9EB2060()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EB20AC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D9F2B18C();
}

uint64_t sub_1D9EB20B4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EB2100()
{
  result = qword_1ECB74A38;
  if (!qword_1ECB74A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A38);
  }

  return result;
}

uint64_t sub_1D9EB2154(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C();
  }
}

unint64_t sub_1D9EB21A8()
{
  result = qword_1ECB74A40;
  if (!qword_1ECB74A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A40);
  }

  return result;
}

unint64_t sub_1D9EB2200()
{
  result = qword_1ECB74A48;
  if (!qword_1ECB74A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A48);
  }

  return result;
}

unint64_t sub_1D9EB2258()
{
  result = qword_1ECB74A50;
  if (!qword_1ECB74A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A50);
  }

  return result;
}

uint64_t sub_1D9EB22E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PredictionResult.visualContextID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9F2AD7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PredictionResult.clientContextID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PredictionResult() + 20);

  return sub_1D9EB2434(v3, a1);
}

uint64_t type metadata accessor for PredictionResult()
{
  result = qword_1EE0F3330;
  if (!qword_1EE0F3330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9EB2434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PredictionResult.rankedActions.getter()
{
  v1 = *(v0 + *(type metadata accessor for PredictionResult() + 24));
}

uint64_t PredictionResult.init(visualContextID:clientContextID:rankedActions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D9F2AD7C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for PredictionResult();
  result = sub_1D9EB256C(a2, a4 + *(v9 + 20));
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t sub_1D9EB256C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EB25E0()
{
  v1 = 0x6F43746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x634164656B6E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F436C6175736976;
  }
}

uint64_t sub_1D9EB2650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EB3E18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EB2678(uint64_t a1)
{
  v2 = sub_1D9EB3980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB26B4(uint64_t a1)
{
  v2 = sub_1D9EB3980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictionResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A58, &unk_1D9F3BBD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB3980();
  sub_1D9F2BB8C();
  v17 = 0;
  sub_1D9F2AD7C();
  sub_1D9EB3F48(&qword_1EE0F3868, MEMORY[0x1E69695A8]);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v11 = type metadata accessor for PredictionResult();
    v12 = *(v11 + 20);
    v16 = 1;
    sub_1D9F2B94C();
    v14[1] = *(v3 + *(v11 + 24));
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74340, &qword_1D9F37F80);
    sub_1D9EB39D4(&qword_1EE0F1180, &qword_1EE0F2268);
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PredictionResult.hash(into:)(uint64_t a1)
{
  v3 = sub_1D9F2AD7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  sub_1D9EB3F48(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
  sub_1D9F2B0EC();
  v12 = type metadata accessor for PredictionResult();
  sub_1D9EB2434(v1 + *(v12 + 20), v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    sub_1D9F2BB1C();
    sub_1D9F2B0EC();
    (*(v4 + 8))(v7, v3);
  }

  return sub_1D9E4F52C(a1, *(v1 + *(v12 + 24)));
}

uint64_t PredictionResult.hashValue.getter()
{
  v1 = sub_1D9F2AD7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13[-v8 - 8];
  sub_1D9F2BAFC();
  sub_1D9EB3F48(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
  sub_1D9F2B0EC();
  v10 = type metadata accessor for PredictionResult();
  sub_1D9EB2434(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D9F2BB1C();
    sub_1D9F2B0EC();
    (*(v2 + 8))(v5, v1);
  }

  sub_1D9E4F52C(v13, *(v0 + *(v10 + 24)));
  return sub_1D9F2BB4C();
}

uint64_t PredictionResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_1D9F2AD7C();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A60, &qword_1D9F3BBE8);
  v28 = *(v30 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v23 - v11;
  v13 = type metadata accessor for PredictionResult();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB3980();
  v29 = v12;
  v18 = v31;
  sub_1D9F2BB7C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a1;
  v24 = v13;
  v19 = v26;
  v35 = 0;
  sub_1D9EB3F48(&qword_1EE0F3860, MEMORY[0x1E69695A8]);
  v20 = v27;
  sub_1D9F2B89C();
  (*(v19 + 32))(v16, v20, v7);
  v34 = 1;
  sub_1D9F2B83C();
  v21 = v24;
  sub_1D9EB256C(v6, &v16[*(v24 + 20)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74340, &qword_1D9F37F80);
  v33 = 2;
  sub_1D9EB39D4(&qword_1EE0F1178, &qword_1EE0F2260);
  sub_1D9F2B89C();
  (*(v28 + 8))(v29, v30);
  *&v16[*(v21 + 24)] = v32;
  sub_1D9EB3A70(v16, v25);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_1D9EB3AD4(v16);
}

uint64_t sub_1D9EB3224(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9F2AD7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - v12;
  sub_1D9EB3F48(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
  sub_1D9F2B0EC();
  sub_1D9EB2434(v2 + *(a2 + 20), v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D9F2BB1C();
    sub_1D9F2B0EC();
    (*(v6 + 8))(v9, v5);
  }

  return sub_1D9E4F52C(a1, *(v2 + *(a2 + 24)));
}

uint64_t sub_1D9EB342C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15[-v11 - 8];
  sub_1D9F2BAFC();
  sub_1D9EB3F48(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
  sub_1D9F2B0EC();
  sub_1D9EB2434(v2 + *(a2 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D9F2BB1C();
    sub_1D9F2B0EC();
    (*(v5 + 8))(v8, v4);
  }

  sub_1D9E4F52C(v15, *(v2 + *(a2 + 24)));
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport0C6ResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A78, &qword_1D9F3BE18);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  if ((sub_1D9F2AD3C() & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = type metadata accessor for PredictionResult();
  v17 = *(v25 + 20);
  v18 = *(v13 + 48);
  sub_1D9EB2434(a1 + v17, v16);
  sub_1D9EB2434(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1D9E51FE8(v16, &qword_1ECB76010, &unk_1D9F3A9C0);
LABEL_11:
      v20 = sub_1D9E4BC80(*(a1 + *(v25 + 24)), *(a2 + *(v25 + 24)));
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_1D9EB2434(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1D9E51FE8(v16, &qword_1ECB74A78, &qword_1D9F3BE18);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1D9EB3F48(&qword_1ECB731E0, MEMORY[0x1E69695A8]);
  v22 = sub_1D9F2B10C();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_1D9E51FE8(v16, &qword_1ECB76010, &unk_1D9F3A9C0);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_1D9EB3980()
{
  result = qword_1EE0F3350;
  if (!qword_1EE0F3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3350);
  }

  return result;
}

uint64_t sub_1D9EB39D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74340, &qword_1D9F37F80);
    sub_1D9EB3F48(a2, type metadata accessor for PredictedAction);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9EB3A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictionResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EB3AD4(uint64_t a1)
{
  v2 = type metadata accessor for PredictionResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D9EB3BA0()
{
  sub_1D9F2AD7C();
  if (v0 <= 0x3F)
  {
    sub_1D9EB3C9C(319, &qword_1EE0F3848, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D9EB3C9C(319, &qword_1EE0F2348, type metadata accessor for PredictedAction, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9EB3C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D9EB3D14()
{
  result = qword_1ECB74A70;
  if (!qword_1ECB74A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A70);
  }

  return result;
}

unint64_t sub_1D9EB3D6C()
{
  result = qword_1EE0F3340;
  if (!qword_1EE0F3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3340);
  }

  return result;
}

unint64_t sub_1D9EB3DC4()
{
  result = qword_1EE0F3348;
  if (!qword_1EE0F3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3348);
  }

  return result;
}

uint64_t sub_1D9EB3E18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436C6175736976 && a2 == 0xEF4449747865746ELL;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xEF4449747865746ELL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x634164656B6E6172 && a2 == 0xED0000736E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D9EB3F48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9EB3F90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007473694C20;
  v3 = 0x676E6970706F6853;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6569646572676E49;
    }

    else
    {
      v5 = 0x676E6970706F6853;
    }

    if (v4)
    {
      v6 = 0xEB0000000073746ELL;
    }

    else
    {
      v6 = 0xED00007473694C20;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x6F44206F54;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 1970169165;
    }

    else
    {
      v5 = 0x726568744FLL;
    }

    if (v4 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F44206F54;
  v9 = 0xE400000000000000;
  v10 = 1970169165;
  if (a2 != 3)
  {
    v10 = 0x726568744FLL;
    v9 = 0xE500000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x6569646572676E49;
    v2 = 0xEB0000000073746ELL;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D9F2BA1C();
  }

  return v13 & 1;
}

VisualActionPredictionSupport::List::Category_optional __swiftcall List.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9F2B7BC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t List.Category.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676E6970706F6853;
  v3 = 0x6F44206F54;
  v4 = 1970169165;
  if (v1 != 3)
  {
    v4 = 0x726568744FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6569646572676E49;
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

void sub_1D9EB422C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007473694C20;
  v4 = 0x676E6970706F6853;
  v5 = 0xE500000000000000;
  v6 = 0x6F44206F54;
  v7 = 0xE400000000000000;
  v8 = 1970169165;
  if (v2 != 3)
  {
    v8 = 0x726568744FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6569646572676E49;
    v3 = 0xEB0000000073746ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D9EB4390()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EB4478()
{
  *v0;
  *v0;
  *v0;
  sub_1D9F2B18C();
}

uint64_t sub_1D9EB454C()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t List.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t List.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t List.Item.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static List.Item.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C();
  }
}

uint64_t sub_1D9EB4768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
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

uint64_t sub_1D9EB47F0(uint64_t a1)
{
  v2 = sub_1D9EB49A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB482C(uint64_t a1)
{
  v2 = sub_1D9EB49A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t List.Item.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A80, &qword_1D9F3BE20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB49A4();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9EB49A4()
{
  result = qword_1ECB74A88;
  if (!qword_1ECB74A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A88);
  }

  return result;
}

uint64_t List.Item.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D9F2B18C();
}

uint64_t List.Item.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t List.Item.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A90, &qword_1D9F3BE28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB49A4();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v11 = sub_1D9F2B84C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EB4BD8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A80, &qword_1D9F3BE20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB49A4();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t List.items.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1D9EB4D80()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x736D657469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_1D9EB4DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EB5C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EB4DFC(uint64_t a1)
{
  v2 = sub_1D9EB5694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB4E38(uint64_t a1)
{
  v2 = sub_1D9EB5694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t List.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A98, &qword_1D9F3BE30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14[1] = *(v1 + 2);
  v14[2] = v10;
  v14[0] = *(v1 + 3);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB5694();
  sub_1D9F2BB8C();
  v18 = v9;
  v17 = 0;
  sub_1D9EB56E8();
  sub_1D9F2B9AC();
  if (!v2)
  {
    v13 = v14[0];
    v16 = 1;
    sub_1D9F2B90C();
    v14[3] = v13;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74AB0, &qword_1D9F3BE38);
    sub_1D9EB57E4(&qword_1ECB74AB8, sub_1D9EB573C);
    sub_1D9F2B9AC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t List.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *v0;
  *v0;
  sub_1D9F2B18C();

  sub_1D9F2BB1C();
  if (v2)
  {
    sub_1D9F2B18C();
  }

  result = MEMORY[0x1DA7438F0](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_1D9F2B18C();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t List.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 3);
  sub_1D9F2BAFC();
  List.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t List.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74AC8, &qword_1D9F3BE40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB5694();
  sub_1D9F2BB7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v21 = 0;
    sub_1D9EB5790();
    sub_1D9F2B89C();
    v11 = v22;
    v20 = 1;
    v12 = sub_1D9F2B7FC();
    v15 = v14;
    v18[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74AB0, &qword_1D9F3BE38);
    v19 = 2;
    sub_1D9EB57E4(&qword_1ECB74AD8, sub_1D9EB585C);
    sub_1D9F2B89C();
    (*(v6 + 8))(v9, v5);
    v16 = v18[0];
    v17 = v18[1];
    *a2 = v11;
    *(a2 + 8) = v16;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1D9EB5524()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 3);
  sub_1D9F2BAFC();
  List.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EB5584()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 3);
  sub_1D9F2BAFC();
  List.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport4ListV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_1D9EB3F90(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (v5 && (v3 == v6 && v2 == v5 || (sub_1D9F2BA1C() & 1) != 0))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_7:

  return sub_1D9E49670(v4, v7);
}

unint64_t sub_1D9EB5694()
{
  result = qword_1ECB74AA0;
  if (!qword_1ECB74AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AA0);
  }

  return result;
}

unint64_t sub_1D9EB56E8()
{
  result = qword_1ECB74AA8;
  if (!qword_1ECB74AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AA8);
  }

  return result;
}

unint64_t sub_1D9EB573C()
{
  result = qword_1ECB74AC0;
  if (!qword_1ECB74AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AC0);
  }

  return result;
}

unint64_t sub_1D9EB5790()
{
  result = qword_1ECB74AD0;
  if (!qword_1ECB74AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AD0);
  }

  return result;
}

uint64_t sub_1D9EB57E4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74AB0, &qword_1D9F3BE38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EB585C()
{
  result = qword_1ECB74AE0;
  if (!qword_1ECB74AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AE0);
  }

  return result;
}

unint64_t sub_1D9EB58B4()
{
  result = qword_1ECB74AE8;
  if (!qword_1ECB74AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74AF0, &qword_1D9F3BEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AE8);
  }

  return result;
}

unint64_t sub_1D9EB591C()
{
  result = qword_1ECB74AF8;
  if (!qword_1ECB74AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AF8);
  }

  return result;
}

unint64_t sub_1D9EB5974()
{
  result = qword_1ECB74B00;
  if (!qword_1ECB74B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B00);
  }

  return result;
}

unint64_t sub_1D9EB59CC()
{
  result = qword_1ECB74B08;
  if (!qword_1ECB74B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B08);
  }

  return result;
}

unint64_t sub_1D9EB5A74()
{
  result = qword_1ECB74B10;
  if (!qword_1ECB74B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B10);
  }

  return result;
}

unint64_t sub_1D9EB5ACC()
{
  result = qword_1ECB74B18;
  if (!qword_1ECB74B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B18);
  }

  return result;
}

unint64_t sub_1D9EB5B24()
{
  result = qword_1ECB74B20;
  if (!qword_1ECB74B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B20);
  }

  return result;
}

unint64_t sub_1D9EB5B7C()
{
  result = qword_1ECB74B28;
  if (!qword_1ECB74B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B28);
  }

  return result;
}

unint64_t sub_1D9EB5BD4()
{
  result = qword_1ECB74B30;
  if (!qword_1ECB74B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B30);
  }

  return result;
}

unint64_t sub_1D9EB5C2C()
{
  result = qword_1ECB74B38;
  if (!qword_1ECB74B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B38);
  }

  return result;
}

uint64_t sub_1D9EB5C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1D9EB5D90()
{
  result = qword_1ECB74B40;
  if (!qword_1ECB74B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B40);
  }

  return result;
}

uint64_t FlightNumber.flightNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FlightNumber.flightNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FlightNumber.airline.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FlightNumber.airline.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

VisualActionPredictionSupport::FlightNumber __swiftcall FlightNumber.init(flightNumber:airline:)(Swift::String flightNumber, Swift::String airline)
{
  *v2 = flightNumber;
  v2[1] = airline;
  result.airline = airline;
  result.flightNumber = flightNumber;
  return result;
}

uint64_t static FlightNumber.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D9F2BA1C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D9F2BA1C();
    }
  }

  return result;
}

uint64_t sub_1D9EB5FB8()
{
  if (*v0)
  {
    result = 0x656E696C726961;
  }

  else
  {
    result = 0x754E746867696C66;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EB5FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x754E746867696C66 && a2 == 0xEC0000007265626DLL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E696C726961 && a2 == 0xE700000000000000)
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

uint64_t sub_1D9EB60DC(uint64_t a1)
{
  v2 = sub_1D9EB62E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB6118(uint64_t a1)
{
  v2 = sub_1D9EB62E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlightNumber.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74B48, &qword_1D9F3C400);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB62E8();
  sub_1D9F2BB8C();
  v16 = 0;
  v12 = v14[3];
  sub_1D9F2B95C();
  if (!v12)
  {
    v15 = 1;
    sub_1D9F2B95C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9EB62E8()
{
  result = qword_1ECB74B50;
  if (!qword_1ECB74B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B50);
  }

  return result;
}

uint64_t FlightNumber.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D9F2B18C();

  return sub_1D9F2B18C();
}

uint64_t FlightNumber.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t FlightNumber.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74B58, &qword_1D9F3C408);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB62E8();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1D9F2B84C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1D9F2B84C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EB6624()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EB668C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D9F2B18C();

  return sub_1D9F2B18C();
}

uint64_t sub_1D9EB66DC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EB6744()
{
  result = qword_1ECB74B60;
  if (!qword_1ECB74B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B60);
  }

  return result;
}

uint64_t sub_1D9EB6798(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D9F2BA1C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D9F2BA1C();
    }
  }

  return result;
}

unint64_t sub_1D9EB6860()
{
  result = qword_1ECB74B68;
  if (!qword_1ECB74B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B68);
  }

  return result;
}

unint64_t sub_1D9EB68B8()
{
  result = qword_1ECB74B70;
  if (!qword_1ECB74B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B70);
  }

  return result;
}

unint64_t sub_1D9EB6910()
{
  result = qword_1ECB74B78;
  if (!qword_1ECB74B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B78);
  }

  return result;
}

uint64_t sub_1D9EB69BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6172466567616D69 && a2 == 0xEA0000000000656DLL)
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

uint64_t sub_1D9EB6A4C(uint64_t a1)
{
  v2 = sub_1D9EB6DA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB6A88(uint64_t a1)
{
  v2 = sub_1D9EB6DA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EB6AC4(uint64_t a1)
{
  v2 = sub_1D9EB6DFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB6B00(uint64_t a1)
{
  v2 = sub_1D9EB6DFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Resource.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74B80, &qword_1D9F3C680);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74B88, &qword_1D9F3C688);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-v12];
  v23 = *v2;
  v14 = *(v2 + 2);
  v22 = *(v2 + 6);
  v21 = *(v2 + 4);
  v20 = *(v2 + 40);
  v24 = *(v2 + 80);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB6DA8();
  sub_1D9F2BB8C();
  sub_1D9EB6DFC();
  sub_1D9F2B8FC();
  v27 = v23;
  v28 = v14;
  v29 = v22;
  v30 = v21;
  v31 = v20;
  v16 = v2[4];
  v32 = v2[3];
  v33 = v16;
  v34 = v24;
  sub_1D9E58CD4();
  v17 = v25;
  sub_1D9F2B9AC();
  (*(v26 + 8))(v8, v17);
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_1D9EB6DA8()
{
  result = qword_1ECB74B90;
  if (!qword_1ECB74B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B90);
  }

  return result;
}

unint64_t sub_1D9EB6DFC()
{
  result = qword_1ECB74B98;
  if (!qword_1ECB74B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B98);
  }

  return result;
}

uint64_t Resource.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BA0, &qword_1D9F3C690);
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BA8, &unk_1D9F3C698);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB6DA8();
  sub_1D9F2BB7C();
  if (v2)
  {
    goto LABEL_6;
  }

  v25 = a1;
  v13 = v40;
  v14 = v27;
  v15 = sub_1D9F2B8DC();
  v16 = (2 * *(v15 + 16)) | 1;
  v36 = v15;
  v37 = v15 + 32;
  v38 = 0;
  v39 = v16;
  v17 = v11;
  if (sub_1D9E416E0() || v38 != v39 >> 1)
  {
    v18 = sub_1D9F2B6BC();
    swift_allocError();
    v20 = v19;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
    *v20 = &type metadata for Resource;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
    swift_willThrow();
    (*(v14 + 8))(v17, v8);
    swift_unknownObjectRelease();
    a1 = v25;
LABEL_6:
    v23 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  sub_1D9EB6DFC();
  sub_1D9F2B7DC();
  sub_1D9E59364();
  sub_1D9F2B89C();
  (*(v13 + 8))(v7, v4);
  (*(v14 + 8))(v11, v8);
  swift_unknownObjectRelease();
  v28[2] = v32;
  v28[3] = v33;
  v28[4] = v34;
  v29 = v35;
  v28[0] = v30;
  v28[1] = v31;
  sub_1D9E7F4D0(v28, v26);
  v23 = v25;
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1D9EB7274(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9EB72BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D9EB734C()
{
  result = qword_1ECB74BB0;
  if (!qword_1ECB74BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74BB0);
  }

  return result;
}

unint64_t sub_1D9EB73A4()
{
  result = qword_1ECB74BB8;
  if (!qword_1ECB74BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74BB8);
  }

  return result;
}

unint64_t sub_1D9EB73FC()
{
  result = qword_1ECB74BC0;
  if (!qword_1ECB74BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74BC0);
  }

  return result;
}

unint64_t sub_1D9EB7454()
{
  result = qword_1ECB74BC8;
  if (!qword_1ECB74BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74BC8);
  }

  return result;
}

unint64_t sub_1D9EB74AC()
{
  result = qword_1ECB74BD0;
  if (!qword_1ECB74BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74BD0);
  }

  return result;
}

unint64_t sub_1D9EB7504()
{
  result = qword_1ECB74BD8;
  if (!qword_1ECB74BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74BD8);
  }

  return result;
}

uint64_t BundleRankingResult.RankedBundle.clientContextId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9F2AD7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for BundleRankingResult.RankedBundle()
{
  result = qword_1EE0F29D8;
  if (!qword_1EE0F29D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BundleRankingResult.RankedBundle.init(clientContextId:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1D9F2AD7C();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for BundleRankingResult.RankedBundle();
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_1D9EB76FC()
{
  if (*v0)
  {
    result = 0x65726F6373;
  }

  else
  {
    result = 0x6F43746E65696C63;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EB7740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43746E65696C63 && a2 == 0xEF6449747865746ELL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
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

uint64_t sub_1D9EB7820(uint64_t a1)
{
  v2 = sub_1D9EB7A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB785C(uint64_t a1)
{
  v2 = sub_1D9EB7A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleRankingResult.RankedBundle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BE0, &qword_1D9F3CA20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB7A50();
  sub_1D9F2BB8C();
  v13[15] = 0;
  sub_1D9F2AD7C();
  sub_1D9EB8468(&qword_1EE0F3868, MEMORY[0x1E69695A8]);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for BundleRankingResult.RankedBundle() + 20));
    v13[14] = 1;
    sub_1D9F2B97C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9EB7A50()
{
  result = qword_1EE0F29F8;
  if (!qword_1EE0F29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F29F8);
  }

  return result;
}

uint64_t BundleRankingResult.RankedBundle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = sub_1D9F2AD7C();
  v24 = *(v26 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BE8, &qword_1D9F3CA28);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v21 - v8;
  v10 = type metadata accessor for BundleRankingResult.RankedBundle();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB7A50();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v13;
  v15 = v24;
  v29 = 0;
  sub_1D9EB8468(&qword_1EE0F3860, MEMORY[0x1E69695A8]);
  v16 = v26;
  sub_1D9F2B89C();
  v17 = v22;
  (*(v15 + 32))(v22, v6, v16);
  v28 = 1;
  sub_1D9F2B86C();
  v19 = v18;
  (*(v25 + 8))(v9, v27);
  *(v17 + *(v10 + 20)) = v19;
  sub_1D9EB7DE8(v17, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9EB7E4C(v17);
}

uint64_t sub_1D9EB7DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleRankingResult.RankedBundle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EB7E4C(uint64_t a1)
{
  v2 = type metadata accessor for BundleRankingResult.RankedBundle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9EB7F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x754264656B6E6172 && a2 == 0xED000073656C646ELL)
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

uint64_t sub_1D9EB7F9C(uint64_t a1)
{
  v2 = sub_1D9EB81C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB7FD8(uint64_t a1)
{
  v2 = sub_1D9EB81C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleRankingResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BF0, &qword_1D9F3CA30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB81C0();

  sub_1D9F2BB8C();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BF8, &qword_1D9F3CA38);
  sub_1D9EB83CC(&qword_1EE0F1138, qword_1EE0F1648);
  sub_1D9F2B9AC();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9EB81C0()
{
  result = qword_1EE0F2950[0];
  if (!qword_1EE0F2950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F2950);
  }

  return result;
}

uint64_t BundleRankingResult.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C00, &qword_1D9F3CA40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB81C0();
  sub_1D9F2BB7C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BF8, &qword_1D9F3CA38);
    sub_1D9EB83CC(&qword_1EE0F1130, &qword_1EE0F1640);
    sub_1D9F2B89C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EB83CC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74BF8, &qword_1D9F3CA38);
    sub_1D9EB8468(a2, type metadata accessor for BundleRankingResult.RankedBundle);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9EB8468(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9EB8518()
{
  result = sub_1D9F2AD7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D9EB85B0()
{
  result = qword_1ECB74C08;
  if (!qword_1ECB74C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C08);
  }

  return result;
}

unint64_t sub_1D9EB8608()
{
  result = qword_1ECB74C10;
  if (!qword_1ECB74C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C10);
  }

  return result;
}

unint64_t sub_1D9EB8660()
{
  result = qword_1EE0F2940;
  if (!qword_1EE0F2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2940);
  }

  return result;
}

unint64_t sub_1D9EB86B8()
{
  result = qword_1EE0F2948;
  if (!qword_1EE0F2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2948);
  }

  return result;
}

unint64_t sub_1D9EB8710()
{
  result = qword_1EE0F29E8;
  if (!qword_1EE0F29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F29E8);
  }

  return result;
}

unint64_t sub_1D9EB8768()
{
  result = qword_1EE0F29F0;
  if (!qword_1EE0F29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F29F0);
  }

  return result;
}

void ExecutionOptions.limit.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void ExecutionOptions.timeoutPolicy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t ExecutionOptions.init(limit:timeoutPolicy:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  return result;
}

uint64_t sub_1D9EB880C()
{
  if (*v0)
  {
    result = 0x5074756F656D6974;
  }

  else
  {
    result = 0x74696D696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EB8850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74696D696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5074756F656D6974 && a2 == 0xED00007963696C6FLL)
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

uint64_t sub_1D9EB8930(uint64_t a1)
{
  v2 = sub_1D9EB9008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB896C(uint64_t a1)
{
  v2 = sub_1D9EB9008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExecutionOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C18, &unk_1D9F3CD80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v13[0] = v1[2];
  v16 = *(v1 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB9008();
  sub_1D9F2BB8C();
  v14 = v8;
  v15 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB739B0, &qword_1D9F32938);
  sub_1D9E6B720(qword_1EE0F1460);
  v11 = v13[1];
  sub_1D9F2B9AC();
  if (!v11)
  {
    v14 = v13[0];
    v15 = v16;
    v17 = 1;
    sub_1D9E6B678();
    sub_1D9F2B9AC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExecutionOptions.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (v0[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *v0;
    MEMORY[0x1DA7438F0](1);
  }

  MEMORY[0x1DA7438F0](v3);
  if (v2)
  {
    return MEMORY[0x1DA7438F0](0);
  }

  MEMORY[0x1DA7438F0](1);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1DA743920](v5);
}

uint64_t ExecutionOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1D9F2BAFC();
  v5 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1DA7438F0](1);
    v5 = v1;
  }

  MEMORY[0x1DA7438F0](v5);
  if (v4)
  {
    MEMORY[0x1DA7438F0](0);
  }

  else
  {
    MEMORY[0x1DA7438F0](1);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1DA743920](v6);
  }

  return sub_1D9F2BB4C();
}

uint64_t ExecutionOptions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C28, &qword_1D9F3CD90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB9008();
  sub_1D9F2BB7C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB739B0, &qword_1D9F32938);
    v18 = 0;
    sub_1D9E6B720(&qword_1EE0F1458);
    sub_1D9F2B89C();
    v11 = v16;
    v12 = v17;
    v18 = 1;
    sub_1D9E6B7C4();
    sub_1D9F2B89C();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    v14 = v17;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EB8F00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1D9F2BAFC();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1DA7438F0](1);
  }

  MEMORY[0x1DA7438F0](v1);
  if (v4)
  {
    MEMORY[0x1DA7438F0](0);
  }

  else
  {
    MEMORY[0x1DA7438F0](1);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1DA743920](v5);
  }

  return sub_1D9F2BB4C();
}

BOOL _s29VisualActionPredictionSupport16ExecutionOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

unint64_t sub_1D9EB9008()
{
  result = qword_1ECB74C20;
  if (!qword_1ECB74C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C20);
  }

  return result;
}

unint64_t sub_1D9EB9060()
{
  result = qword_1ECB74C30;
  if (!qword_1ECB74C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C30);
  }

  return result;
}

uint64_t sub_1D9EB90B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9EB90D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_1D9EB9128()
{
  result = qword_1ECB74C38;
  if (!qword_1ECB74C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C38);
  }

  return result;
}

unint64_t sub_1D9EB9180()
{
  result = qword_1ECB74C40;
  if (!qword_1ECB74C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C40);
  }

  return result;
}

unint64_t sub_1D9EB91D8()
{
  result = qword_1ECB74C48;
  if (!qword_1ECB74C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C48);
  }

  return result;
}

uint64_t sub_1D9EB922C(void *a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1D9F2B68C();

    v10[0] = 0xD000000000000014;
    v10[1] = 0x80000001D9F49520;
    swift_getErrorValue();
    v8 = sub_1D9F2BAAC();
    MEMORY[0x1DA742F90](v8);

    v5 = a1;
    v6 = a2;
    v7 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_1D9F2B68C();

    strcpy(v10, "Request for ");
    HIWORD(v10[1]) = -4864;
    MEMORY[0x1DA742F90](a1, a2);
    MEMORY[0x1DA742F90](34, 0xE100000000000000);
    v5 = a1;
    v6 = a2;
    v7 = 1;
LABEL_5:
    sub_1D9E84B4C(v5, v6, v7);
    return v10[0];
  }

  return 0x61636F6C6C616544;
}

Swift::Void __swiftcall ServiceSession.activate()()
{
  v1 = v0;
  v2 = sub_1D9F2AF8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9F2AFFC();
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v10 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v10, qword_1EE0F2380);

  v11 = sub_1D9F2AE6C();
  v12 = sub_1D9F2B42C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315394;
    v15 = *v1;
    v16 = sub_1D9F2BBBC();
    v18 = sub_1D9E71CA4(v16, v17, aBlock);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1D9E71CA4(0x6574617669746361, 0xEA00000000002928, aBlock);
    _os_log_impl(&dword_1D9E39000, v11, v12, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v14, -1, -1);
    MEMORY[0x1DA744270](v13, -1, -1);
  }

  v19 = *(v1 + *(*v1 + 120));
  aBlock[4] = sub_1D9EBC12C;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_3;
  v20 = _Block_copy(aBlock);

  v21 = v24;
  sub_1D9F2AFAC();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  v22 = v27;
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v21, v22, v20);
  _Block_release(v20);
  (*(v3 + 8))(v22, v2);
  (*(v26 + 8))(v21, v25);
}

uint64_t ServiceSession.sendMessage<A>(sync:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v5 = v4;
  v55 = a1;
  v58 = *v4;
  v8 = v58;
  v9 = *(a2 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](a1);
  v54 = v11;
  v56 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v47 = AssociatedTypeWitness;
  v13 = sub_1D9F2BB5C();
  v14 = sub_1D9F2B59C();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v50 = &v45[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45[-v18];
  if (*(v5 + *(v8 + 152)) != 1)
  {
    goto LABEL_6;
  }

  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v20 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v20, qword_1EE0F2380);

    v21 = sub_1D9F2AE6C();
    v22 = sub_1D9F2B42C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v49 = v21;
      v24 = v23;
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v24 = 136315650;
      v25 = *v5;
      v26 = sub_1D9F2BBBC();
      v46 = v22;
      v28 = v9;
      v29 = sub_1D9E71CA4(v26, v27, aBlock);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1D9E71CA4(0xD000000000000012, 0x80000001D9F48CE0, aBlock);
      *(v24 + 22) = 2080;
      v30 = (*(a3 + 40))(a2, a3);
      v32 = sub_1D9E71CA4(v30, v31, aBlock);

      *(v24 + 24) = v32;
      v9 = v28;
      v33 = v49;
      _os_log_impl(&dword_1D9E39000, v49, v46, "%s.%s messageType = %s", v24, 0x20u);
      v34 = v53;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v34, -1, -1);
      MEMORY[0x1DA744270](v24, -1, -1);
    }

    else
    {
    }

LABEL_6:
    v49 = *(v13 - 8);
    (v49[7].isa)(v19, 1, 1, v13);
    v53 = *(v5 + *(*v5 + 120));
    v35 = v56;
    (v9[2])(v56, v55, a2);
    v36 = (*(v9 + 80) + 64) & ~*(v9 + 80);
    v37 = swift_allocObject();
    v38 = v58;
    *(v37 + 2) = *(v58 + 80);
    *(v37 + 3) = a2;
    *(v37 + 4) = *(v38 + 88);
    *(v37 + 5) = a3;
    *(v37 + 6) = v19;
    *(v37 + 7) = v5;
    (v9[4])(&v37[v36], v35, a2);
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1D9EC6150;
    *(v39 + 24) = v37;
    aBlock[4] = sub_1D9EC6194;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D9EC1C80;
    aBlock[3] = &block_descriptor_6_1;
    v9 = _Block_copy(aBlock);

    dispatch_sync(v53, v9);
    _Block_release(v9);
    LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

    if ((v36 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v40 = v50;
  v41 = v51;
  v42 = v52;
  (*(v51 + 16))(v50, v19, v52);
  result = (v49[6].isa)(v40, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = *v40;
      swift_willThrow();
    }

    else
    {
      (*(*(v47 - 8) + 32))(v48, v40);
    }

    (*(v41 + 8))(v19, v42);
  }

  return result;
}

uint64_t sub_1D9EB9EB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1D9EB9EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(v5 + 48);
  v10 = *(v5 + 52);
  v11 = swift_allocObject();
  sub_1D9EBA3A0(v11, a2, a3, a4);
  return v11;
}

uint64_t ServiceSession.addCancellationHandler(on:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9F2AF8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9F2AFFC();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v3 + *(*v3 + 120));
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_1D9EC61BC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_12_0;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_1D9F2AFAC();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

uint64_t ServiceSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EE0FF698;
  v4 = sub_1D9F2AD7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ServiceSession.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t *sub_1D9EBA3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v5;
  v10 = sub_1D9F2B47C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v49 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9F2B48C();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v48 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9F2AFFC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v50 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F2A93C();
  *(v5 + *(*v5 + 136)) = MEMORY[0x1E69E7CC8];
  *(v5 + *(*v5 + 144)) = MEMORY[0x1E69E7CC0];
  v19 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v20 = sub_1D9F2B11C();
  v21 = [v19 initWithSuiteName_];

  if (v21)
  {
    v22 = sub_1D9F2B11C();
    v23 = [v21 BOOLForKey_];
  }

  else
  {
    v23 = 0;
  }

  *(v5 + *(*v5 + 152)) = v23;
  *(v5 + qword_1EE0FF690) = 1;
  v24 = *(*v5 + 112);
  v27 = v9 + 80;
  v25 = *(v9 + 80);
  v26 = *(v27 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  (*(v29 + 16))(v5 + v24, a2, AssociatedTypeWitness);
  if (!a3)
  {
    v43[4] = v10;
    v45 = a4;
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_1D9F2B68C();
    v30 = a2;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v34 = v33;

    v51 = v32;
    v52 = v34;
    MEMORY[0x1DA742F90](0xD000000000000017, 0x80000001D9F495F0);
    v35 = v51;
    v36 = v52;
    v37 = *(AssociatedConformanceWitness + 16);
    v44 = v30;
    v38 = v37(AssociatedTypeWitness, AssociatedConformanceWitness);
    v43[2] = v36;
    v43[3] = v35;
    if (v38 <= 16)
    {
      if (v38 == -1)
      {
        sub_1D9F2AFDC();
        goto LABEL_18;
      }

      if (v38 == 9)
      {
        sub_1D9F2AF9C();
        goto LABEL_18;
      }
    }

    else
    {
      switch(v38)
      {
        case 17:
          sub_1D9F2AFEC();
          goto LABEL_18;
        case 25:
          sub_1D9F2AFBC();
          goto LABEL_18;
        case 33:
          sub_1D9F2AFCC();
LABEL_18:
          v43[1] = sub_1D9E84F4C();
          (*(v46 + 104))(v48, *MEMORY[0x1E69E8098], v47);
          v51 = MEMORY[0x1E69E7CC0];
          sub_1D9EC6994(&unk_1EE0F22D8, MEMORY[0x1E69E8030]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9E84FE0(&qword_1EE0F2300, &unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9F2B5FC();
          a3 = sub_1D9F2B4AC();
          (*(v29 + 8))(v44, AssociatedTypeWitness);
          a4 = v45;
          goto LABEL_19;
      }
    }

    sub_1D9F2AFAC();
    goto LABEL_18;
  }

  (*(v29 + 8))(a2, AssociatedTypeWitness);
LABEL_19:
  *(v5 + *(*v5 + 120)) = a3;
  v39 = *(*v5 + 128);
  v40 = swift_getAssociatedTypeWitness();
  v41 = *(v40 - 8);
  (*(v41 + 32))(v5 + v39, a4, v40);
  (*(v41 + 56))(v5 + v39, 0, 1, v40);
  type metadata accessor for ServiceSession.State();
  swift_storeEnumTagMultiPayload();
  return v5;
}

uint64_t sub_1D9EBA9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v4 + 48);
  v8 = *(v4 + 52);
  v9 = swift_allocObject();
  sub_1D9EBAA50(v9, a2, a3);
  return v9;
}

uint64_t *sub_1D9EBAA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v8 = sub_1D9F2B47C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D9F2B48C();
  v11 = *(v39 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9F2AFFC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v42 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F2A93C();
  *(v4 + *(*v4 + 136)) = MEMORY[0x1E69E7CC8];
  *(v4 + *(*v4 + 144)) = MEMORY[0x1E69E7CC0];
  v17 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v18 = sub_1D9F2B11C();
  v19 = [v17 initWithSuiteName_];

  if (v19)
  {
    v20 = sub_1D9F2B11C();
    v21 = [v19 BOOLForKey_];
  }

  else
  {
    v21 = 0;
  }

  *(v4 + *(*v4 + 152)) = v21;
  *(v4 + qword_1EE0FF690) = 0;
  v22 = *(*v4 + 112);
  v24 = *(v7 + 80);
  v23 = *(v7 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  (*(v26 + 16))(v4 + v22, a2, AssociatedTypeWitness);
  if (!a3)
  {
    v37[4] = v8;
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1D9F2B68C();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v28 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v38 = a2;
    v30 = v29;

    v43 = v28;
    v44 = v30;
    MEMORY[0x1DA742F90](0xD000000000000017, 0x80000001D9F48DA0);
    v31 = v43;
    v32 = v44;
    v33 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v37[2] = v32;
    v37[3] = v31;
    if (v33 <= 16)
    {
      if (v33 == -1)
      {
        sub_1D9F2AFDC();
        goto LABEL_18;
      }

      if (v33 == 9)
      {
        sub_1D9F2AF9C();
        goto LABEL_18;
      }
    }

    else
    {
      switch(v33)
      {
        case 17:
          sub_1D9F2AFEC();
          goto LABEL_18;
        case 25:
          sub_1D9F2AFBC();
          goto LABEL_18;
        case 33:
          sub_1D9F2AFCC();
LABEL_18:
          v37[1] = sub_1D9E84F4C();
          (*(v11 + 104))(v40, *MEMORY[0x1E69E8098], v39);
          v43 = MEMORY[0x1E69E7CC0];
          sub_1D9EC6994(&unk_1EE0F22D8, MEMORY[0x1E69E8030]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9E84FE0(&qword_1EE0F2300, &unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9F2B5FC();
          a3 = sub_1D9F2B4AC();
          (*(v26 + 8))(v38, AssociatedTypeWitness);
          goto LABEL_19;
      }
    }

    sub_1D9F2AFAC();
    goto LABEL_18;
  }

  (*(v26 + 8))(a2, AssociatedTypeWitness);
LABEL_19:
  *(v4 + *(*v4 + 120)) = a3;
  v34 = *(*v4 + 128);
  v35 = swift_getAssociatedTypeWitness();
  (*(*(v35 - 8) + 56))(v4 + v34, 1, 1, v35);
  type metadata accessor for ServiceSession.State();
  swift_storeEnumTagMultiPayload();
  return v4;
}