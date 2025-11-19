uint64_t GeocodeManager.deinit()
{
  swift_unknownObjectRelease();

  sub_1C9470AFC(v0 + 64, &qword_1EC3A7B08);

  return v0;
}

uint64_t GeocodeManager.__deallocating_deinit()
{
  GeocodeManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1C9656A98()
{
  result = qword_1EDB7CE88;
  if (!qword_1EDB7CE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC3A6390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CE88);
  }

  return result;
}

uint64_t sub_1C9656D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LocationDisplayContextReader.__allocating_init(keyValueStoreProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C94924FC(a1, v2 + 16);
  return v2;
}

uint64_t sub_1C9656E68()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B30);
  *v1 = v0;
  v1[1] = sub_1C9656F4C;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD00000000000001FLL, 0x80000001C96D6E90, sub_1C96571CC, v3, v2);
}

uint64_t sub_1C9656F4C()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C965703C, 0, 0);
}

uint64_t sub_1C9657054(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = a2[5];
  v9 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v8);
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  (*(v9 + 8))(sub_1C9657D9C, v11, v8, v9);
}

uint64_t sub_1C96571D4(void *a1, uint64_t a2)
{
  v54 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6788);
  MEMORY[0x1EEE9AC00](v57);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6790);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = &v50 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
  v12 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v14 = &v50 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6798);
  v52 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v50 - v17;
  v19 = type metadata accessor for SyncedData();
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v22 + 8))(&v61, 0x61446465636E7973, 0xEA00000000006174, MEMORY[0x1E6969080], v21, v22);
  v24 = v61;
  v23 = v62;
  if (v62 >> 60 != 15)
  {
    sub_1C94B05C8(v61, v62);
    sub_1C94874C0(v24, v23);
    sub_1C9630DDC();
    sub_1C96A6D24();
    v50 = v24;
    v51 = v23;
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
    v30 = v18;
    v31 = v53;
    sub_1C95739FC(v30, v53);
    (*(v12 + 16))(v14, v31 + *(v19 + 20), v55);
    sub_1C9469CB4(&qword_1EC3A67B8, &qword_1EC3A60B0);
    sub_1C96A71F4();
    v55 = sub_1C9469CB4(&qword_1EC3A67C0, &qword_1EC3A6798);
    v32 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v33 = v56;
      v34 = v57;
      sub_1C96A7944();
      if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
      {
        (*(v52 + 8))(v59, v58);
        v61 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B38);
        sub_1C96A7394();
        v49 = v50;
        v48 = v51;
        sub_1C9485BFC(v50, v51);
        sub_1C9485BFC(v49, v48);
        return sub_1C9657EF8(v53, type metadata accessor for SyncedData);
      }

      v35 = v60;
      sub_1C9657E18(v33, v60);
      sub_1C9657E88(v35, v7);

      v36 = *(v34 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
      sub_1C96A66E4();
      v38 = v61;
      v37 = v62;
      sub_1C9657EF8(&v7[v36], type metadata accessor for SyncedLocationDisplayContext);
      sub_1C9657E88(v35, v4);

      v23 = &v4[*(v34 + 48)];
      type metadata accessor for SyncedLocationDisplayContext();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
      sub_1C96A66E4();
      sub_1C9657EF8(v23, type metadata accessor for SyncedLocationDisplayContext);
      v24 = v61;
      swift_isUniquelyReferenced_nonNull_native();
      v61 = v32;
      v39 = sub_1C9476F90(v38, v37);
      if (__OFADD__(v32[2], (v40 & 1) == 0))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v41 = v39;
      v23 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B40);
      if (sub_1C96A7B84())
      {
        v42 = sub_1C9476F90(v38, v37);
        if ((v23 & 1) != (v43 & 1))
        {
          result = sub_1C96A7E44();
          __break(1u);
          return result;
        }

        v41 = v42;
      }

      if (v23)
      {

        v32 = v61;
        *(v61[7] + v41) = v24;
        sub_1C9557AB8(v60, &qword_1EC3A6788);
      }

      else
      {
        v32 = v61;
        v61[(v41 >> 6) + 8] |= 1 << v41;
        v44 = (v32[6] + 16 * v41);
        *v44 = v38;
        v44[1] = v37;
        *(v32[7] + v41) = v24;
        sub_1C9557AB8(v60, &qword_1EC3A6788);
        v45 = v32[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_18;
        }

        v32[2] = v47;
      }
    }
  }

  if (qword_1EDB7FDC8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v25 = sub_1C96A6154();
  __swift_project_value_buffer(v25, qword_1EDB7FDD0);
  v26 = sub_1C96A6134();
  v27 = sub_1C96A7684();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1C945E000, v26, v27, "There is no serializedData in synced data key", v28, 2u);
    MEMORY[0x1CCA8E3D0](v28, -1, -1);
  }

  v61 = sub_1C96A6F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B38);
  sub_1C96A7394();
  return sub_1C9485BFC(v24, v23);
}

uint64_t LocationDisplayContextReader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1C9657BA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C9630818;

  return LocationDisplayContextReader.fetchDisplayContextByLocation()();
}

uint64_t dispatch thunk of LocationDisplayContextReaderType.fetchDisplayContextByLocation()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C9630818;

  return v7(a1, a2);
}

uint64_t sub_1C9657D9C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B38) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C96571D4(a1, v4);
}

uint64_t sub_1C9657E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9657E88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9657EF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_36();
  (*(v3 + 8))(a1);
  return a1;
}

void *LocationDataModel.init(location:)@<X0>(char *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x48uLL);
  v4 = type metadata accessor for LocationDataModel();
  v5 = v4[5];
  v6 = type metadata accessor for Location();
  v7 = v6[5];
  v8 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v9 + 16))(&a2[v5], &__src[v7], v8);
  __swift_storeEnumTagSinglePayload(&a2[v5], 0, 1, v8);
  sub_1C95087DC(__dst, v34);
  v10 = sub_1C96A4D74();
  v32 = v11;
  v33 = v10;
  sub_1C94709F4(&__src[v6[6]], &a2[v4[7]], &unk_1EC3A5430);
  v12 = &__src[v6[7]];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = &__src[v6[8]];
  v16 = *(v15 + 1);
  v31 = *v15;
  v17 = v6[10];
  v18 = &__src[v6[9]];
  v20 = *v18;
  v19 = *(v18 + 1);
  v21 = *&__src[v17];
  v22 = *&__src[v17 + 8];
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C948EA9C(__src, type metadata accessor for Location);
  v23 = v4[12];
  v24 = sub_1C96A4A54();
  __swift_storeEnumTagSinglePayload(&a2[v23], 1, 1, v24);
  result = memcpy(a2, __dst, 0x48uLL);
  v26 = &a2[v4[6]];
  *v26 = v33;
  v26[1] = v32;
  v27 = &a2[v4[8]];
  *v27 = v13;
  *(v27 + 1) = v14;
  v28 = &a2[v4[9]];
  *v28 = v31;
  *(v28 + 1) = v16;
  v29 = &a2[v4[10]];
  *v29 = v20;
  *(v29 + 1) = v19;
  v30 = &a2[v4[11]];
  *v30 = v21;
  *(v30 + 1) = v22;
  return result;
}

uint64_t LocationDataModel.init(identifier:timeZone:timeZoneIdentifier:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:createdAt:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  memcpy(a9, __src, 0x48uLL);
  v21 = type metadata accessor for LocationDataModel();
  sub_1C949E110(a2, &a9[v21[5]], &unk_1EC3A5F60);
  v22 = &a9[v21[6]];
  *v22 = a3;
  *(v22 + 1) = a4;
  sub_1C949E110(a5, &a9[v21[7]], &unk_1EC3A5430);
  v23 = &a9[v21[8]];
  *v23 = a6;
  *(v23 + 1) = a7;
  v24 = &a9[v21[9]];
  *v24 = a8;
  *(v24 + 1) = a10;
  v25 = &a9[v21[10]];
  *v25 = a11;
  *(v25 + 1) = a12;
  v26 = &a9[v21[11]];
  *v26 = a13;
  *(v26 + 1) = a14;
  return sub_1C949E110(a15, &a9[v21[12]], &unk_1EC3A5430);
}

uint64_t LocationDataModel.identifier.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_11();
  memcpy(v1, v2, 0x48uLL);
  return sub_1C95087DC(__dst, &v4);
}

uint64_t LocationDataModel.timeZoneIdentifier.getter()
{
  type metadata accessor for LocationDataModel();
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t LocationDataModel.searchTitle.getter()
{
  type metadata accessor for LocationDataModel();
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t LocationDataModel.searchSubtitle.getter()
{
  type metadata accessor for LocationDataModel();
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t LocationDataModel.preciseName.getter()
{
  type metadata accessor for LocationDataModel();
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t LocationDataModel.secondaryName.getter()
{
  type metadata accessor for LocationDataModel();
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t sub_1C9658488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C96CC210 == a2;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726665527473616CLL && a2 == 0xEF65746144687365;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6954686372616573 && a2 == 0xEB00000000656C74;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7553686372616573 && a2 == 0xEE00656C74697462;
            if (v10 || (sub_1C96A7DE4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4E65736963657270 && a2 == 0xEB00000000656D61;
              if (v11 || (sub_1C96A7DE4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7261646E6F636573 && a2 == 0xED0000656D614E79;
                if (v12 || (sub_1C96A7DE4() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C96A7DE4();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1C9658784(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656E6F5A656D6974;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x726665527473616CLL;
      break;
    case 4:
      result = 0x6954686372616573;
      break;
    case 5:
      result = 0x7553686372616573;
      break;
    case 6:
      result = 0x4E65736963657270;
      break;
    case 7:
      result = 0x7261646E6F636573;
      break;
    case 8:
      result = 0x4164657461657263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C96588CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9658488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C96588F4(uint64_t a1)
{
  v2 = sub_1C96594E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9658930(uint64_t a1)
{
  v2 = sub_1C96594E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static LocationDataModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v12 = OUTLINED_FUNCTION_7(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v125 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v127 = &v121 - v16;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A61F8);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v126 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v121 - v21;
  v22 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v130 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v28);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v121 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B48);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v121 - v34;
  v37 = *(a1 + 32);
  v36 = *(a1 + 40);
  v39 = *(a2 + 32);
  v38 = *(a2 + 40);
  v40 = *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
  if (v40)
  {
    if (v37 != v39 || v36 != v38)
    {
      return 0;
    }

LABEL_16:
    v123 = v10;
    v124 = v6;
    v121 = v4;
    v122 = type metadata accessor for LocationDataModel();
    v45 = *(v32 + 48);
    OUTLINED_FUNCTION_22_24();
    sub_1C94709F4(v46, v47, v48);
    OUTLINED_FUNCTION_22_24();
    sub_1C94709F4(v49, v50, v51);
    OUTLINED_FUNCTION_25_1(v35);
    if (v40)
    {
      OUTLINED_FUNCTION_25_1(&v35[v45]);
      if (v40)
      {
        sub_1C9470AFC(v35, &unk_1EC3A5F60);
        goto LABEL_29;
      }
    }

    else
    {
      sub_1C94709F4(v35, v31, &unk_1EC3A5F60);
      OUTLINED_FUNCTION_25_1(&v35[v45]);
      if (!v52)
      {
        v55 = v130;
        (*(v130 + 32))(v27, &v35[v45], v22);
        OUTLINED_FUNCTION_1_76();
        sub_1C948E7D0(v56, v57);
        v58 = sub_1C96A6F94();
        v59 = *(v55 + 8);
        v59(v27, v22);
        v59(v31, v22);
        sub_1C9470AFC(v35, &unk_1EC3A5F60);
        if ((v58 & 1) == 0)
        {
          return 0;
        }

LABEL_29:
        v60 = v122;
        OUTLINED_FUNCTION_4_63();
        if (v63)
        {
          v65 = v123;
          v64 = v124;
          if (!v61)
          {
            return 0;
          }

          OUTLINED_FUNCTION_22(v62);
          v68 = v40 && v66 == v67;
          if (!v68 && (sub_1C96A7DE4() & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v65 = v123;
          v64 = v124;
          if (v61)
          {
            return 0;
          }
        }

        v69 = *(v60 + 28);
        v70 = v128;
        v71 = *(v129 + 48);
        OUTLINED_FUNCTION_45();
        sub_1C94709F4(v72, v73, v74);
        v75 = v70;
        sub_1C94709F4(a2 + v69, v70 + v71, &unk_1EC3A5430);
        v76 = v121;
        if (__swift_getEnumTagSinglePayload(v70, 1, v121) == 1)
        {
          OUTLINED_FUNCTION_6_0(v70 + v71);
          if (!v40)
          {
            goto LABEL_45;
          }

          sub_1C9470AFC(v70, &unk_1EC3A5430);
        }

        else
        {
          v77 = v70;
          v78 = v127;
          sub_1C94709F4(v77, v127, &unk_1EC3A5430);
          OUTLINED_FUNCTION_6_0(v75 + v71);
          if (v40)
          {
            (*(v64 + 8))(v78, v76);
LABEL_45:
            v53 = &qword_1EC3A61F8;
            v54 = v75;
            goto LABEL_25;
          }

          (*(v64 + 32))(v65, v75 + v71, v76);
          OUTLINED_FUNCTION_0_103();
          sub_1C948E7D0(v79, v80);
          LODWORD(v130) = sub_1C96A6F94();
          v81 = *(v64 + 8);
          v81(v65, v76);
          v81(v78, v76);
          sub_1C9470AFC(v75, &unk_1EC3A5430);
          if ((v130 & 1) == 0)
          {
            return 0;
          }
        }

        OUTLINED_FUNCTION_4_63();
        if (v84)
        {
          if (!v82)
          {
            return 0;
          }

          OUTLINED_FUNCTION_22(v83);
          v87 = v40 && v85 == v86;
          if (!v87 && (sub_1C96A7DE4() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v82)
        {
          return 0;
        }

        OUTLINED_FUNCTION_4_63();
        if (v90)
        {
          if (!v88)
          {
            return 0;
          }

          OUTLINED_FUNCTION_22(v89);
          v93 = v40 && v91 == v92;
          if (!v93 && (sub_1C96A7DE4() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v88)
        {
          return 0;
        }

        OUTLINED_FUNCTION_4_63();
        if (v96)
        {
          if (!v94)
          {
            return 0;
          }

          OUTLINED_FUNCTION_22(v95);
          v99 = v40 && v97 == v98;
          if (!v99 && (sub_1C96A7DE4() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v94)
        {
          return 0;
        }

        OUTLINED_FUNCTION_4_63();
        if (v102)
        {
          if (!v100)
          {
            return 0;
          }

          OUTLINED_FUNCTION_22(v101);
          v105 = v40 && v103 == v104;
          if (!v105 && (sub_1C96A7DE4() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v100)
        {
          return 0;
        }

        v106 = *(v129 + 48);
        v107 = v126;
        OUTLINED_FUNCTION_45();
        sub_1C94709F4(v108, v109, v110);
        v111 = v121;
        OUTLINED_FUNCTION_45();
        sub_1C94709F4(v112, v113, v114);
        OUTLINED_FUNCTION_6_0(v107);
        if (v40)
        {
          OUTLINED_FUNCTION_6_0(v107 + v106);
          if (v40)
          {
            sub_1C9470AFC(v107, &unk_1EC3A5430);
            return 1;
          }
        }

        else
        {
          v115 = v125;
          sub_1C94709F4(v107, v125, &unk_1EC3A5430);
          OUTLINED_FUNCTION_6_0(v107 + v106);
          if (!v116)
          {
            (*(v64 + 32))(v65, v107 + v106, v111);
            OUTLINED_FUNCTION_0_103();
            sub_1C948E7D0(v117, v118);
            v119 = sub_1C96A6F94();
            v120 = *(v64 + 8);
            v120(v65, v111);
            v120(v115, v111);
            sub_1C9470AFC(v107, &unk_1EC3A5430);
            return (v119 & 1) != 0;
          }

          (*(v64 + 8))(v115, v111);
        }

        v53 = &qword_1EC3A61F8;
        v54 = v107;
        goto LABEL_25;
      }

      (*(v130 + 8))(v31, v22);
    }

    v53 = &qword_1EC3A7B48;
    v54 = v35;
LABEL_25:
    sub_1C9470AFC(v54, v53);
    return 0;
  }

  v41 = sub_1C96A7DE4();
  result = 0;
  if ((v41 & 1) != 0 && v37 == v39 && v36 == v38)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t LocationDataModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B58);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C96594E4();
  sub_1C96A7F54();
  memcpy(__dst, v3, 0x48uLL);
  memcpy(__src, v3, sizeof(__src));
  v21 = 0;
  sub_1C95087DC(__dst, v17);
  sub_1C96485EC();
  OUTLINED_FUNCTION_0_0();
  sub_1C96A7D74();
  if (v2)
  {
    memcpy(v17, __src, sizeof(v17));
    sub_1C953AEDC(v17);
  }

  else
  {
    memcpy(v17, __src, sizeof(v17));
    sub_1C953AEDC(v17);
    v11 = type metadata accessor for LocationDataModel();
    v20 = 1;
    sub_1C96A4DF4();
    OUTLINED_FUNCTION_1_76();
    sub_1C948E7D0(v12, v13);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D14();
    OUTLINED_FUNCTION_16_34(v11[6]);
    OUTLINED_FUNCTION_5_52(2);
    v20 = 3;
    sub_1C96A4A54();
    OUTLINED_FUNCTION_0_103();
    sub_1C948E7D0(v14, v15);
    OUTLINED_FUNCTION_22_24();
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D14();
    OUTLINED_FUNCTION_16_34(v11[8]);
    OUTLINED_FUNCTION_5_52(4);
    OUTLINED_FUNCTION_16_34(v11[9]);
    OUTLINED_FUNCTION_5_52(5);
    OUTLINED_FUNCTION_16_34(v11[10]);
    OUTLINED_FUNCTION_5_52(6);
    OUTLINED_FUNCTION_16_34(v11[11]);
    OUTLINED_FUNCTION_5_52(7);
    v20 = 8;
    OUTLINED_FUNCTION_22_24();
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D14();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C96594E4()
{
  result = qword_1EC3A7B60;
  if (!qword_1EC3A7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7B60);
  }

  return result;
}

uint64_t LocationDataModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v11);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B68);
  OUTLINED_FUNCTION_1();
  v47 = v16;
  v48 = v15;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v17);
  v51 = type metadata accessor for LocationDataModel();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v21 = (v20 - v19);
  v22 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1C96594E4();
  v23 = v50;
  sub_1C96A7F44();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  v50 = v10;
  v54 = 0;
  sub_1C9648640();
  sub_1C96A7CB4();
  memcpy(v21, __dst, 0x48uLL);
  sub_1C96A4DF4();
  v53 = 1;
  OUTLINED_FUNCTION_1_76();
  sub_1C948E7D0(v24, v25);
  sub_1C96A7C74();
  v26 = v51;
  sub_1C949E110(v14, v21 + v51[5], &unk_1EC3A5F60);
  OUTLINED_FUNCTION_8_45(2);
  v27 = sub_1C96A7C44();
  OUTLINED_FUNCTION_17_34(v27, v28, v26[6]);
  sub_1C96A4A54();
  v53 = 3;
  OUTLINED_FUNCTION_0_103();
  v31 = sub_1C948E7D0(v29, v30);
  v32 = v50;
  sub_1C96A7C74();
  v45 = v31;
  sub_1C949E110(v32, v21 + v51[7], &unk_1EC3A5430);
  OUTLINED_FUNCTION_8_45(4);
  v33 = sub_1C96A7C44();
  v34 = v51;
  OUTLINED_FUNCTION_17_34(v33, v35, v51[8]);
  OUTLINED_FUNCTION_8_45(5);
  v36 = sub_1C96A7C44();
  OUTLINED_FUNCTION_17_34(v36, v37, v34[9]);
  OUTLINED_FUNCTION_8_45(6);
  v38 = sub_1C96A7C44();
  OUTLINED_FUNCTION_17_34(v38, v39, v34[10]);
  OUTLINED_FUNCTION_8_45(7);
  v40 = sub_1C96A7C44();
  OUTLINED_FUNCTION_17_34(v40, v41, v51[11]);
  v53 = 8;
  sub_1C96A7C74();
  v42 = OUTLINED_FUNCTION_2_70();
  v43(v42);
  sub_1C949E110(v7, v21 + v51[12], &unk_1EC3A5430);
  sub_1C95086AC(v21, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  return sub_1C948EA9C(v21, type metadata accessor for LocationDataModel);
}

uint64_t sub_1C9659C80()
{
  sub_1C9659D88(319, &qword_1EDB7FD48, MEMORY[0x1E6969BC0]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C9461318();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1C9659D88(319, &qword_1EDB80050, MEMORY[0x1E6969530]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1C9659D88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C96A7934();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LocationDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9659EBC()
{
  result = qword_1EC3A7B70;
  if (!qword_1EC3A7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7B70);
  }

  return result;
}

unint64_t sub_1C9659F14()
{
  result = qword_1EC3A7B78;
  if (!qword_1EC3A7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7B78);
  }

  return result;
}

unint64_t sub_1C9659F6C()
{
  result = qword_1EC3A7B80;
  if (!qword_1EC3A7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7B80);
  }

  return result;
}

uint64_t dispatch thunk of WeatherIntentHandlerType.handleIntent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C94B9278;

  return v9(a1, a2, a3);
}

uint64_t sub_1C965A0FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4CC0);
  v3 = *(type metadata accessor for SavedLocation() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C96AA1C0;
  sub_1C96A4D64();
  v6 = sub_1C96A4DF4();
  result = __swift_getEnumTagSinglePayload(v2, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C95447DC(0x6C756F6553, 0xE500000000000000, v2, v5 + v4, 35.9078, 127.7669);
    result = swift_storeEnumTagMultiPayload();
    qword_1EC3A7B88 = v5;
  }

  return result;
}

uint64_t StubPPTSavedSingleLocationManager.savedLocations.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1C965A35C()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  if (qword_1EC3A4838 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC3A7B88;
  swift_beginAccess();
  *(v0 + 16) = v1;
  sub_1C96A53C4();

  return v0;
}

uint64_t StubPPTSavedSingleLocationManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C965A4F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B9278;

  return StubPPTSavedSingleLocationManager.addLocationWithChecks(_:locationDisplayContext:)();
}

uint64_t sub_1C965A580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B9278;

  return StubPPTSavedSingleLocationManager.removeLocation(by:)();
}

uint64_t sub_1C965A60C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C95EE080;

  return StubPPTSavedSingleLocationManager.updateSavedLocationTimeZones(_:)();
}

uint64_t sub_1C965A698()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C95EE080;

  return StubPPTSavedSingleLocationManager.reloadFromLocalStorage()();
}

uint64_t StubAutomationSavedLocationsManager.savedLocations.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1C965A80C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SavedLocation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  AutomationDataService.savedLocationsData.getter(v19);
  v9 = v19[0];
  v10 = *(v19[0] + 16);
  if (v10)
  {
    v17[1] = a1;
    v17[2] = v2 + 16;
    v18 = v2;
    v20 = v8;
    sub_1C9522D68();
    v11 = v20;
    v12 = *(type metadata accessor for Location() - 8);
    v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    do
    {
      sub_1C9489760(v13, v7);
      swift_storeEnumTagMultiPayload();
      v20 = v11;
      v15 = *(v11 + 16);
      if (v15 >= *(v11 + 24) >> 1)
      {
        sub_1C9522D68();
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_1C965ADA8(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15);
      v13 += v14;
      --v10;
    }

    while (v10);

    v2 = v18;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  *(v2 + 16) = v11;

  return v2;
}

uint64_t StubAutomationSavedLocationsManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C965AB3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B9278;

  return StubAutomationSavedLocationsManager.addLocationWithChecks(_:locationDisplayContext:)();
}

uint64_t sub_1C965ABC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C95EE080;

  return StubAutomationSavedLocationsManager.removeLocation(by:)();
}

uint64_t sub_1C965AC54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B9278;

  return StubAutomationSavedLocationsManager.updateSavedLocationTimeZones(_:)();
}

uint64_t sub_1C965ACE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C95EE080;

  return StubAutomationSavedLocationsManager.reloadFromLocalStorage()();
}

uint64_t sub_1C965ADA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C965AE44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AutomationDataService();
  result = sub_1C96A5264();
  if (result)
  {
    v4 = result;
    type metadata accessor for AutomationWeatherDataManager();
    swift_allocObject();
    v5 = sub_1C957D21C(v4);
    result = sub_1C94AF5F4(&qword_1EDB7A958, type metadata accessor for AutomationWeatherDataManager);
    *a2 = v5;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppConfigurationManagerType.fetchAppConfig()(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C96A5154();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  (*(v6 + 104))(v9 - v8, *MEMORY[0x1E69D63C8], v4);
  v11 = (*(a2 + 16))(v10, a1, a2);
  (*(v6 + 8))(v10, v4);
  return v11;
}

uint64_t AppConfigurationManager.__allocating_init(appConfigurationService:appConfigurationStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  AppConfigurationManager.init(appConfigurationService:appConfigurationStore:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1C965B08C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AppConfigurationManager.fetchAppConfig(cachePolicy:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v207 = v2;
  v209 = v4;
  v205 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v186 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24();
  v185 = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_51_0();
  v204 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_24();
  v187 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v183 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_1();
  v184 = v17;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_1();
  v208 = v19;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_1();
  v198 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_51_0();
  v190 = v23;
  OUTLINED_FUNCTION_15_4();
  v24 = type metadata accessor for LocationsConfiguration();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_24();
  v199 = v26;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_51_0();
  v191 = v28;
  OUTLINED_FUNCTION_15_4();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v196 = v30;
  v197 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14();
  v194 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F0);
  v34 = OUTLINED_FUNCTION_7(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_24();
  v200 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_51_0();
  v210 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v39 = OUTLINED_FUNCTION_7(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_24();
  v193 = v40;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_51_0();
  v203 = v42;
  OUTLINED_FUNCTION_15_4();
  v43 = type metadata accessor for AppConfiguration();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_24();
  v189 = v45;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_18_1();
  v206 = v47;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_51_0();
  v192 = v49;
  OUTLINED_FUNCTION_15_4();
  v50 = sub_1C96A5154();
  OUTLINED_FUNCTION_1();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_14();
  v56 = v55 - v54;
  if (qword_1EDB7CFF0 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  v57 = sub_1C96A6154();
  v58 = __swift_project_value_buffer(v57, qword_1EDB7CFF8);
  v195 = a1;
  OUTLINED_FUNCTION_40_10();
  v59();
  v202 = v58;
  v60 = sub_1C96A6134();
  v61 = sub_1C96A76A4();
  v62 = os_log_type_enabled(v60, v61);
  v201 = v24;
  v188 = v15;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v183 = v43;
    v64 = v63;
    v65 = COERCE_DOUBLE(swift_slowAlloc());
    __src.refresh.currentLocation.minimum = v65;
    *v64 = 136446210;
    sub_1C946F950(&qword_1EDB7D0A0, MEMORY[0x1E69D63E8]);
    v66 = sub_1C96A7DB4();
    v68 = v67;
    (*(v52 + 8))(v56, v50);
    v69 = sub_1C9484164(v66, v68, &__src);

    *(v64 + 4) = v69;
    _os_log_impl(&dword_1C945E000, v60, v61, "About to fetch AppConfiguration with cache policy: %{public}s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(*&v65);
    OUTLINED_FUNCTION_26();
    v43 = v183;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    (*(v52 + 8))(v56, v50);
  }

  v71 = v205;
  v70 = v206;
  v72 = v204;
  v73 = v208;
  if (qword_1EDB7FCB8 != -1)
  {
    OUTLINED_FUNCTION_29_14();
  }

  OUTLINED_FUNCTION_24_21();
  sub_1C946F950(v74, v75);
  sub_1C96A4E44();
  if (LOBYTE(__src.refresh.currentLocation.minimum) != 1)
  {
    if (!sub_1C94830F4())
    {
      v122 = sub_1C96A6134();
      v123 = sub_1C96A76A4();
      if (os_log_type_enabled(v122, v123))
      {
        *OUTLINED_FUNCTION_29() = 0;
        OUTLINED_FUNCTION_48_10(&dword_1C945E000, v124, v125, "AppConfiguration is not cached ... fetching it from server ...");
        OUTLINED_FUNCTION_26();
      }

      sub_1C96A5784();
      v126 = sub_1C96A55A4();
      sub_1C96A5634();

      v127 = sub_1C96A55A4();
      v128 = sub_1C96A56F4();

      return v128;
    }

    AppConfigurationManager.appConfiguration.getter(v189);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A58);
    swift_allocObject();
    return sub_1C96A56A4();
  }

  v76 = sub_1C96A6134();
  v77 = sub_1C96A76A4();
  if (os_log_type_enabled(v76, v77))
  {
    *OUTLINED_FUNCTION_29() = 0;
    OUTLINED_FUNCTION_48_10(&dword_1C945E000, v78, v79, "The forceDefault override in ON.  Returning canned defaults");
    OUTLINED_FUNCTION_26();
  }

  v80 = v203;
  v81 = OUTLINED_FUNCTION_94();
  v82 = v197;
  __swift_storeEnumTagSinglePayload(v81, v83, 1, v197);
  OUTLINED_FUNCTION_3();
  v84 = v201;
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v201);
  v88 = v80;
  v89 = v193;
  sub_1C9470A40(v88, v193, &unk_1EC3A5430);
  v90 = OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_23_1(v90, v91, v82);
  if (v92)
  {
    v98 = v194;
    sub_1C96A4954();
    v93 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_1(v93, v94, v82);
    v95 = v89;
    v97 = v196;
    if (!v92)
    {
      sub_1C9470AFC(v95, &unk_1EC3A5430);
    }
  }

  else
  {
    v96 = v89;
    v97 = v196;
    v98 = v194;
    (*(v196 + 32))(v194, v96, v82);
  }

  (*(v97 + 32))(v70, v98, v82);
  *(v70 + v43[5]) = 0x40F5180000000000;
  *(v70 + v43[6]) = 3;
  *(v70 + v43[7]) = 0x411A5E0000000000;
  *(v70 + v43[8]) = 0x40BF400000000000;
  *(v70 + v43[9]) = 0x40BF400000000000;
  *(v70 + v43[10]) = 0x40F5180000000000;
  v99 = v70 + v43[11];
  *v99 = 0;
  *(v99 + 8) = 0x3F847AE147AE147BLL;
  *(v99 + 16) = 15;
  *(v99 + 24) = 0x41C2CC0300000000;
  if (qword_1EDB7BF10 != -1)
  {
    OUTLINED_FUNCTION_4_5();
  }

  OUTLINED_FUNCTION_27_17();
  *(v70 + v43[12]) = qword_1EDB7BF18;
  *(v70 + v43[13]) = 257;
  v100 = (v70 + v43[14]);
  *v100 = &unk_1F48FACF0;
  v100[1] = 0x3FF0000000000000;
  v100[2] = 0;
  v100[3] = 0;
  v101 = qword_1EDB7D890;
  sub_1C96A53C4();
  v102 = v72;
  if (v101 != -1)
  {
    OUTLINED_FUNCTION_10_42();
  }

  *(v70 + v43[15]) = qword_1EDB7D898;
  v103 = v200;
  sub_1C9470A40(v210, v200, &qword_1EC3A62F0);
  v104 = OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_23_1(v104, v105, v84);
  if (!v92)
  {
    OUTLINED_FUNCTION_0_104();
    v129 = v103;
    v130 = v191;
    sub_1C9482980(v129, v191, v131);
    sub_1C96A53C4();
LABEL_39:
    OUTLINED_FUNCTION_0_104();
    sub_1C9482980(v130, v70 + v149, v150);
    if (qword_1EDB7EF18 != -1)
    {
      OUTLINED_FUNCTION_9_41();
    }

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_17_35(v70 + v43[17]);
    OUTLINED_FUNCTION_16_35(v151, xmmword_1C96B4F60);
    *(v152 + 48) = xmmword_1C96B4F70;
    *(v152 + 64) = xmmword_1C96B4F80;
    OUTLINED_FUNCTION_12_37(v152, xmmword_1C96B4F90, xmmword_1C96B4F80, xmmword_1C96B4FA0);
    *(v153 + 144) = xmmword_1C96B4FB0;
    v154 = MEMORY[0x1E69E7CC0];
    *(v70 + v43[18]) = MEMORY[0x1E69E7CC0];
    v216 = 1;
    v155 = v70 + v43[19];
    *v155 = 0;
    *(v155 + 8) = v154;
    *(v155 + 16) = 0;
    *(v155 + 18) = 1;
    *(v155 + 24) = xmmword_1C96AA490;
    *(v155 + 40) = 1;
    *(v155 + 48) = v154;
    *(v155 + 56) = &unk_1F48FCFC0;
    v156 = v70 + v43[20];
    *v156 = 1;
    *(v156 + 2) = 1;
    sub_1C96A4EE4();
    sub_1C96A53C4();
    sub_1C96A4EC4();
    if (qword_1EDB7FD00 != -1)
    {
      OUTLINED_FUNCTION_8_46();
    }

    sub_1C96A4EB4();

    OUTLINED_FUNCTION_34_12();
    v157 = OUTLINED_FUNCTION_20_29(0x80000001C96CC960);
    v158[4] = xmmword_1C96B4FC0;
    v158[5] = xmmword_1C96B4FD0;
    v158[6] = xmmword_1C96AC0B0;
    v159 = v70 + v43[23];
    *v159 = v157;
    *(v159 + 16) = xmmword_1C96B4FE0;
    *(v159 + 32) = xmmword_1C96B4FF0;
    *(v159 + 48) = xmmword_1C96B5000;
    *(v159 + 64) = xmmword_1C96B5010;
    *(v159 + 80) = xmmword_1C96B5020;
    OUTLINED_FUNCTION_41_13(xmmword_1C96B5030, xmmword_1C96B5040);
    *&v160 = OUTLINED_FUNCTION_47_6();
    *v161 = v160;
    *(v161 + 16) = xmmword_1C96B5050;
    *(v161 + 32) = vdupq_n_s64(0x4143C68000000000uLL);
    *(v161 + 48) = 10;
    *(v161 + 56) = 1;
    v162 = v70 + v43[24];
    *v162 = v160;
    *(v162 + 16) = v160;
    *(v162 + 32) = v163;
    OUTLINED_FUNCTION_46_5(v164);
    *(v165 + 32) = 1;
    v166 = sub_1C947660C();
    v167 = (v70 + v43[26]);
    *v167 = v166;
    v167[1] = v168;
    if (qword_1EDB7D638 != -1)
    {
      OUTLINED_FUNCTION_7_47();
    }

    *(v70 + v43[27]) = qword_1EDB7D640;
    v169 = (v70 + v43[29]);
    *v169 = xmmword_1C96B5060;
    v169[1] = xmmword_1C96B5070;
    v170 = (v70 + v43[30]);
    *v170 = 0;
    v170[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_30_15((v70 + v43[31]), xmmword_1C96B5080, xmmword_1C96B5090);
    *(v171 + 42) = v212;
    *(v171 + 46) = v213;
    *(v171 + 48) = xmmword_1C96B50A0;
    v214 = 1;
    v217.value = 0.0;
    memset(&v211, 0, 80);
    v211.is_nil = 1;
    v217.is_nil = 0;
    WidgetConfiguration.init(refresh:useBackgroundReverseGeocodingPriority:timelineReloadDebouncingInterval:)(&__src, &v211, 2, v217);
    memcpy((v70 + v43[32]), &__src, 0x60uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F8);
    v172 = swift_allocObject();
    *(v172 + 16) = xmmword_1C96AA1C0;
    sub_1C96A53C4();
    v173 = sub_1C96A4B54();
    if (v173[2])
    {
      v175 = v173[4];
      v174 = v173[5];
      sub_1C96A53C4();
    }

    else
    {
      v174 = 0xE500000000000000;
      v175 = 0x53552D6E65;
    }

    v176 = sub_1C947660C();
    *(v172 + 32) = v175;
    *(v172 + 40) = v174;
    *(v172 + 48) = v176;
    *(v172 + 56) = v177;
    *(v70 + v43[33]) = v172;
    v178 = sub_1C96A4B54();
    if (v178[2])
    {
      v179 = v178[4];
      v180 = v178[5];
      sub_1C96A53C4();
    }

    else
    {
      v180 = 0xE500000000000000;
      v179 = 0x53552D6E65;
    }

    v181 = (v70 + v43[34]);
    *v181 = v179;
    v181[1] = v180;
    *(v70 + v43[35]) = v154;
    sub_1C9470AFC(v210, &qword_1EC3A62F0);
    sub_1C9470AFC(v203, &unk_1EC3A5430);
    *(v70 + v43[36]) = v154;
    OUTLINED_FUNCTION_2_71();
    sub_1C9482980(v70, v192, v182);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A58);
    swift_allocObject();
    return sub_1C96A56A4();
  }

  v106 = v190;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v71);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v71);
  v113 = v199;
  *v199 = xmmword_1C96B4F40;
  v113[1] = xmmword_1C96B4F50;
  sub_1C9470A40(v106, v73, &qword_1EC3A4A70);
  if (__swift_getEnumTagSinglePayload(v73, 1, v71) == 1)
  {
    sub_1C96A53C4();
    v114 = v184;
    OUTLINED_FUNCTION_33_12();
    v115 = OUTLINED_FUNCTION_94();
    result = OUTLINED_FUNCTION_23_1(v115, v116, v71);
    if (v92)
    {
      __break(1u);
      goto LABEL_55;
    }

    v118 = *(v186 + 32);
    v118(v102, v114, v71);
    v119 = v208;
    v120 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_23_1(v120, v121, v71);
    if (!v92)
    {
      sub_1C9470AFC(v119, &qword_1EC3A4A70);
    }
  }

  else
  {
    v118 = *(v186 + 32);
    v118(v102, v73, v71);
    sub_1C96A53C4();
  }

  v118(v199 + *(v84 + 32), v102, v71);
  v132 = v198;
  v133 = v188;
  sub_1C9470A40(v198, v188, &qword_1EC3A4A70);
  v134 = OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_23_1(v134, v135, v71);
  if (!v92)
  {
    OUTLINED_FUNCTION_36_9(v132);
    OUTLINED_FUNCTION_36_9(v190);
    v141 = v185;
    v118(v185, v133, v71);
LABEL_37:
    v142 = v201;
    v143 = v199;
    v118(v199 + *(v201 + 36), v141, v71);
    *(v143 + *(v142 + 40)) = 1;
    OUTLINED_FUNCTION_0_104();
    v144 = v143;
    v130 = v191;
    sub_1C9482980(v144, v191, v145);
    v146 = v200;
    v147 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_1(v147, v148, v142);
    if (!v92)
    {
      sub_1C9470AFC(v146, &qword_1EC3A62F0);
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_33_12();
  v136 = OUTLINED_FUNCTION_94();
  result = OUTLINED_FUNCTION_23_1(v136, v137, v71);
  if (!v92)
  {
    v141 = &qword_1EC3A4A70;
    OUTLINED_FUNCTION_36_9(v198);
    OUTLINED_FUNCTION_36_9(v190);
    v138 = OUTLINED_FUNCTION_39_10();
    (v118)(v138);
    v139 = OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_23_1(v139, v140, v71);
    if (!v92)
    {
      sub_1C9470AFC(v133, &qword_1EC3A4A70);
    }

    goto LABEL_37;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1C965C21C()
{
  v131 = *v0;
  v132 = v0;
  v119 = sub_1C96A4764();
  v117 = *(v119 - 8);
  v1 = MEMORY[0x1EEE9AC00](v119);
  v116 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v112 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v115 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v118 = &v112 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v112 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v112 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v127 = &v112 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v112 - v17;
  v130 = type metadata accessor for LocationsConfiguration();
  v18 = MEMORY[0x1EEE9AC00](v130);
  v128 = (&v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v121 = &v112 - v20;
  v21 = sub_1C96A4A54();
  v125 = *(v21 - 8);
  v126 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v112 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v123 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v129 = &v112 - v32;
  v33 = type metadata accessor for AppConfiguration();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v122 = &v112 - v37;
  if (qword_1EDB7CFF0 != -1)
  {
    swift_once();
  }

  v124 = v23;
  v38 = sub_1C96A6154();
  __swift_project_value_buffer(v38, qword_1EDB7CFF8);
  v39 = sub_1C96A6134();
  v40 = sub_1C96A76A4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v113 = v14;
    v42 = v41;
    *v41 = 0;
    _os_log_impl(&dword_1C945E000, v39, v40, "About to fetch AppConfiguration from server", v41, 2u);
    v14 = v113;
    MEMORY[0x1CCA8E3D0](v42, -1, -1);
  }

  if (qword_1EDB7FCB8 != -1)
  {
    swift_once();
  }

  sub_1C946F950(&qword_1EDB7DFC0, type metadata accessor for AppConfigurationManager);
  sub_1C96A4E44();
  if (LOBYTE(__src.refresh.currentLocation.minimum) != 1)
  {
    sub_1C96A5784();
    sub_1C96A5654();

    v57 = sub_1C96A55A4();
    sub_1C96A5674();

    v58 = sub_1C96A56C4();

    return v58;
  }

  v132 = v4;
  v43 = sub_1C96A6134();
  v44 = sub_1C96A76A4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = v14;
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1C945E000, v43, v44, "The forceDefault override in ON.  Returning canned defaults", v46, 2u);
    v47 = v46;
    v14 = v45;
    MEMORY[0x1CCA8E3D0](v47, -1, -1);
  }

  v48 = v129;
  v49 = v126;
  __swift_storeEnumTagSinglePayload(v129, 1, 1, v126);
  v50 = v130;
  __swift_storeEnumTagSinglePayload(v133, 1, 1, v130);
  v51 = v123;
  sub_1C9470A40(v48, v123, &unk_1EC3A5430);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v49);
  v53 = v124;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C96A4954();
    v54 = __swift_getEnumTagSinglePayload(v51, 1, v49) == 1;
    v55 = v51;
    v56 = v125;
    if (!v54)
    {
      sub_1C9470AFC(v55, &unk_1EC3A5430);
    }
  }

  else
  {
    v59 = v51;
    v56 = v125;
    (*(v125 + 32))(v124, v59, v49);
  }

  (*(v56 + 32))(v36, v53, v49);
  *&v36[v33[5]] = 0x40F5180000000000;
  *&v36[v33[6]] = 3;
  *&v36[v33[7]] = 0x411A5E0000000000;
  *&v36[v33[8]] = 0x40BF400000000000;
  *&v36[v33[9]] = 0x40BF400000000000;
  *&v36[v33[10]] = 0x40F5180000000000;
  v60 = &v36[v33[11]];
  *v60 = 0;
  *(v60 + 1) = 0x3F847AE147AE147BLL;
  *(v60 + 2) = 15;
  *(v60 + 3) = 0x41C2CC0300000000;
  if (qword_1EDB7BF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&v36[v33[12]] = qword_1EDB7BF18;
  *&v36[v33[13]] = 257;
  v61 = &v36[v33[14]];
  *v61 = &unk_1F48FACF0;
  *(v61 + 1) = 0x3FF0000000000000;
  *(v61 + 2) = 0;
  *(v61 + 3) = 0;
  v62 = qword_1EDB7D890;
  sub_1C96A53C4();
  if (v62 != -1)
  {
    swift_once();
  }

  *&v36[v33[15]] = qword_1EDB7D898;
  sub_1C9470A40(v133, v27, &qword_1EC3A62F0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v50) != 1)
  {
    v72 = v121;
    sub_1C9482980(v27, v121, type metadata accessor for LocationsConfiguration);
    sub_1C96A53C4();
LABEL_34:
    sub_1C9482980(v72, &v36[v33[16]], type metadata accessor for LocationsConfiguration);
    if (qword_1EDB7EF18 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v83 = &v36[v33[17]];
    *v83 = off_1EDB7EF20;
    *(v83 + 4) = 514;
    v83[10] = 2;
    *(v83 + 1) = xmmword_1C96B4F60;
    *(v83 + 4) = 0xC0F5180000000000;
    *(v83 + 20) = 0;
    *(v83 + 3) = xmmword_1C96B4F70;
    *(v83 + 4) = xmmword_1C96B4F80;
    *(v83 + 5) = xmmword_1C96B4F90;
    *(v83 + 6) = xmmword_1C96B4FA0;
    *(v83 + 7) = xmmword_1C96B4F80;
    *(v83 + 16) = 0x401C000000000000;
    v83[136] = 0;
    *(v83 + 137) = 33686018;
    *(v83 + 9) = xmmword_1C96B4FB0;
    v84 = MEMORY[0x1E69E7CC0];
    *&v36[v33[18]] = MEMORY[0x1E69E7CC0];
    v139 = 1;
    v85 = &v36[v33[19]];
    *v85 = 0;
    *(v85 + 1) = v84;
    *(v85 + 8) = 0;
    v85[18] = 1;
    *(v85 + 24) = xmmword_1C96AA490;
    v85[40] = 1;
    *(v85 + 6) = v84;
    *(v85 + 7) = &unk_1F48FD038;
    v86 = &v36[v33[20]];
    *v86 = 1;
    v86[2] = 1;
    sub_1C96A4EE4();
    sub_1C96A53C4();
    sub_1C96A4EC4();
    if (qword_1EDB7FD00 != -1)
    {
      swift_once();
    }

    sub_1C96A4EB4();

    v87 = 0xD000000000000068;
    if (LOBYTE(__src.refresh.currentLocation.minimum))
    {
      v88 = 0x80000001C96CC990;
    }

    else
    {
      v87 = 0;
      v88 = 0;
    }

    v89 = &v36[v33[21]];
    v90 = vdupq_n_s64(0x408C200000000000uLL);
    *v89 = v90;
    *(v89 + 2) = 0x40A5180000000000;
    *(v89 + 3) = 0xD000000000000022;
    *(v89 + 4) = 0x80000001C96CC960;
    *(v89 + 5) = v87;
    *(v89 + 6) = v88;
    *(v89 + 7) = 50;
    *(v89 + 4) = xmmword_1C96B4FC0;
    *(v89 + 5) = xmmword_1C96B4FD0;
    *(v89 + 6) = xmmword_1C96AC0B0;
    v91 = &v36[v33[23]];
    *v91 = v90;
    *(v91 + 1) = xmmword_1C96B4FE0;
    *(v91 + 2) = xmmword_1C96B4FF0;
    *(v91 + 3) = xmmword_1C96B5000;
    *(v91 + 4) = xmmword_1C96B5010;
    *(v91 + 5) = xmmword_1C96B5020;
    *(v91 + 6) = xmmword_1C96B5030;
    *(v91 + 7) = xmmword_1C96B5040;
    *(v91 + 16) = 0x3FE999999999999ALL;
    v92 = &v36[v33[22]];
    v93 = vdupq_n_s64(0x3FC999999999999AuLL);
    *v92 = v93;
    *(v92 + 1) = xmmword_1C96B5050;
    *(v92 + 2) = vdupq_n_s64(0x4143C68000000000uLL);
    *(v92 + 6) = 10;
    *(v92 + 28) = 1;
    v94 = &v36[v33[24]];
    *v94 = v93;
    v94[1] = v93;
    v94[2].i64[0] = 0x3FC999999999999ALL;
    v95 = &v36[v33[25]];
    *v95 = 0xD000000000000022;
    *(v95 + 1) = 0x80000001C96CC960;
    *(v95 + 2) = 0xD000000000000035;
    *(v95 + 3) = 0x80000001C96D2630;
    v95[32] = 1;
    v96 = sub_1C947660C();
    v97 = &v36[v33[26]];
    *v97 = v96;
    v97[1] = v98;
    if (qword_1EDB7D638 != -1)
    {
      swift_once();
    }

    *&v36[v33[27]] = qword_1EDB7D640;
    v99 = &v36[v33[29]];
    *v99 = xmmword_1C96B5060;
    *(v99 + 1) = xmmword_1C96B5070;
    v100 = &v36[v33[30]];
    *v100 = 0;
    *(v100 + 1) = 0xE000000000000000;
    v101 = &v36[v33[31]];
    *v101 = xmmword_1C96B5080;
    *(v101 + 1) = xmmword_1C96B5090;
    *(v101 + 4) = 0x404E000000000000;
    *(v101 + 20) = 0;
    *(v101 + 42) = v135;
    *(v101 + 23) = v136;
    *(v101 + 3) = xmmword_1C96B50A0;
    v137 = 1;
    v140.value = 0.0;
    memset(&v134, 0, 80);
    v134.is_nil = 1;
    v140.is_nil = 0;
    WidgetConfiguration.init(refresh:useBackgroundReverseGeocodingPriority:timelineReloadDebouncingInterval:)(&__src, &v134, 2, v140);
    memcpy(&v36[v33[32]], &__src, 0x60uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F8);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_1C96AA1C0;
    sub_1C96A53C4();
    v103 = sub_1C96A4B54();
    if (v103[2])
    {
      v105 = v103[4];
      v104 = v103[5];
      sub_1C96A53C4();
    }

    else
    {
      v104 = 0xE500000000000000;
      v105 = 0x53552D6E65;
    }

    v106 = sub_1C947660C();
    *(v102 + 32) = v105;
    *(v102 + 40) = v104;
    *(v102 + 48) = v106;
    *(v102 + 56) = v107;
    *&v36[v33[33]] = v102;
    v108 = sub_1C96A4B54();
    if (v108[2])
    {
      v110 = v108[4];
      v109 = v108[5];
      sub_1C96A53C4();
    }

    else
    {
      v109 = 0xE500000000000000;
      v110 = 0x53552D6E65;
    }

    v111 = &v36[v33[34]];
    *v111 = v110;
    v111[1] = v109;
    *&v36[v33[35]] = v84;
    sub_1C9470AFC(v133, &qword_1EC3A62F0);
    sub_1C9470AFC(v48, &unk_1EC3A5430);
    *&v36[v33[36]] = v84;
    sub_1C9482980(v36, v122, type metadata accessor for AppConfiguration);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A58);
    swift_allocObject();
    return sub_1C96A56A4();
  }

  v131 = v27;
  v63 = v119;
  v64 = v120;
  __swift_storeEnumTagSinglePayload(v120, 1, 1, v119);
  __swift_storeEnumTagSinglePayload(v127, 1, 1, v63);
  v65 = v128;
  *v128 = xmmword_1C96B4F40;
  v65[1] = xmmword_1C96B4F50;
  sub_1C9470A40(v64, v14, &qword_1EC3A4A70);
  if (__swift_getEnumTagSinglePayload(v14, 1, v63) == 1)
  {
    sub_1C96A53C4();
    v66 = v114;
    sub_1C96A4754();
    result = __swift_getEnumTagSinglePayload(v66, 1, v63);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_52;
    }

    v68 = *(v117 + 32);
    v68(v132, v66, v63);
    v69 = __swift_getEnumTagSinglePayload(v14, 1, v63);
    v70 = v127;
    if (v69 != 1)
    {
      sub_1C9470AFC(v14, &qword_1EC3A4A70);
    }

    v71 = v132;
  }

  else
  {
    v68 = *(v117 + 32);
    v71 = v132;
    v68(v132, v14, v63);
    sub_1C96A53C4();
    v70 = v127;
  }

  v68((v128 + *(v130 + 32)), v71, v63);
  v73 = v118;
  sub_1C9470A40(v70, v118, &qword_1EC3A4A70);
  if (__swift_getEnumTagSinglePayload(v73, 1, v63) != 1)
  {
    sub_1C9470AFC(v70, &qword_1EC3A4A70);
    v75 = v119;
    sub_1C9470AFC(v120, &qword_1EC3A4A70);
    v76 = v116;
    v68(v116, v73, v75);
    v79 = v129;
LABEL_32:
    v80 = v130;
    v81 = v128;
    v68((v128 + *(v130 + 36)), v76, v75);
    *(v81 + *(v80 + 40)) = 1;
    v72 = v121;
    sub_1C9482980(v81, v121, type metadata accessor for LocationsConfiguration);
    v82 = v131;
    v48 = v79;
    if (__swift_getEnumTagSinglePayload(v131, 1, v80) != 1)
    {
      sub_1C9470AFC(v82, &qword_1EC3A62F0);
    }

    goto LABEL_34;
  }

  v74 = v115;
  sub_1C96A4754();
  result = __swift_getEnumTagSinglePayload(v74, 1, v63);
  if (result != 1)
  {
    v75 = v63;
    sub_1C9470AFC(v127, &qword_1EC3A4A70);
    sub_1C9470AFC(v120, &qword_1EC3A4A70);
    v76 = v116;
    v68(v116, v115, v75);
    v77 = v118;
    v78 = __swift_getEnumTagSinglePayload(v118, 1, v75);
    v79 = v129;
    if (v78 != 1)
    {
      sub_1C9470AFC(v77, &qword_1EC3A4A70);
    }

    goto LABEL_32;
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1C965D48C(uint64_t a1)
{
  v2 = type metadata accessor for AppConfiguration();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C94840A4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A58);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C965D53C()
{
  v0 = type metadata accessor for AppConfiguration();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB7CFF0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C96A6154();
  __swift_project_value_buffer(v3, qword_1EDB7CFF8);
  sub_1C96A3D04();
  v4 = sub_1C96A6134();
  v5 = sub_1C96A76A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    AppConfigurationManager.appConfiguration.getter(v2);
    v8 = sub_1C96A70C4();
    v10 = sub_1C9484164(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C945E000, v4, v5, "Encountered an error fetching app config... returning the existing one. AppConfiguration=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
    MEMORY[0x1CCA8E3D0](v6, -1, -1);
  }

  AppConfigurationManager.appConfiguration.getter(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A58);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C965D738(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationService + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t sub_1C965D794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A50E4();
  v8 = OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfig;
  swift_beginAccess();
  sub_1C965E72C(a1, a2 + v8);
  swift_endAccess();
  sub_1C96A50F4();
  v9 = *(a2 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore + 24);
  v10 = *(a2 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore), v9);
  (*(v10 + 32))(a1, v9, v10);
  if (qword_1EDB7CFF0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C96A6154();
  __swift_project_value_buffer(v11, qword_1EDB7CFF8);
  v12 = sub_1C96A6134();
  v13 = sub_1C96A76A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C945E000, v12, v13, "Successfully fetched AppConfiguration from server", v14, 2u);
    MEMORY[0x1CCA8E3D0](v14, -1, -1);
  }

  sub_1C94840A4(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1C9482980(v7, v16 + v15, type metadata accessor for AppConfiguration);
  sub_1C965DA90(sub_1C965E790, v16);

  sub_1C94840A4(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A58);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C965DA90(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v18 = sub_1C96A6564();
  v3 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C96A65E4();
  v6 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A50E4();
  v9 = OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_observers;
  swift_beginAccess();
  v26 = v2;
  v10 = *(v2 + v9);
  sub_1C96A53C4();
  sub_1C96A50F4();
  result = sub_1C946D04C(v10);
  v29 = v10;
  v30 = result;
  v12 = 0;
  v22 = OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_notifyQueue;
  v27 = v10 & 0xFFFFFFFFFFFFFF8;
  v28 = v10 & 0xC000000000000001;
  v21 = v33;
  v20 = (v3 + 8);
  v19 = (v6 + 8);
  while (1)
  {
    if (v30 == v12)
    {
    }

    if (v28)
    {
      result = MEMORY[0x1CCA8D440](v12, v29);
      v13 = result;
    }

    else
    {
      if (v12 >= *(v27 + 16))
      {
        goto LABEL_11;
      }

      v13 = *(v29 + 8 * v12 + 32);
      result = sub_1C96A3D04();
    }

    if (__OFADD__(v12, 1))
    {
      break;
    }

    v14 = swift_allocObject();
    v15 = v25;
    v14[2] = v24;
    v14[3] = v15;
    v14[4] = v13;
    v33[2] = sub_1C965E80C;
    v33[3] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v33[0] = sub_1C946FCF8;
    v33[1] = &block_descriptor_15_2;
    v16 = _Block_copy(aBlock);
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A6594();
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C946F950(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
    sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370);
    v17 = v18;
    sub_1C96A79E4();
    MEMORY[0x1CCA8D100](0, v8, v5, v16);
    _Block_release(v16);

    (*v20)(v5, v17);
    (*v19)(v8, v23);

    ++v12;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void sub_1C965DE90(void *a1)
{
  if (qword_1EDB7CFF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7CFF8);
  v3 = a1;
  oslog = sub_1C96A6134();
  v4 = sub_1C96A7684();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v8 = sub_1C96A70A4();
    v10 = sub_1C9484164(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1C945E000, oslog, v4, "Failed to fetch AppConfiguration from server with error: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1CCA8E3D0](v6, -1, -1);
    MEMORY[0x1CCA8E3D0](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C965E058()
{
  if (qword_1EDB7CFF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB7CFF8);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C945E000, v1, v2, "Time just expired. Now fetching appConfig from server", v3, 2u);
    MEMORY[0x1CCA8E3D0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C965C21C();
  }

  return result;
}

uint64_t AppConfigurationManager.removeObserver(_:)(uint64_t a1)
{
  v2 = v1;
  sub_1C96A50E4();
  v4 = OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_observers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = sub_1C965E39C((v2 + v4), a1);
  v6 = sub_1C946D04C();
  if (v6 < v5)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1C953AA8C(v5, v6);
    swift_endAccess();
    return sub_1C96A50F4();
  }

  return result;
}

uint64_t AppConfigurationManager.deinit()
{
  sub_1C9484108(v0 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfig);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t AppConfigurationManager.__deallocating_deinit()
{
  AppConfigurationManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C965E39C(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_1C946D04C();
  result = swift_unknownObjectRetain();
  v7 = 0;
  while (1)
  {
    if (v5 == v7)
    {
LABEL_50:
      swift_unknownObjectRelease();
      v7 = sub_1C946D04C();
LABEL_51:
      swift_unknownObjectRelease();
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCA8D440](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      sub_1C96A3D04();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      swift_unknownObjectRelease();
      if (v9 == a2)
      {
        break;
      }
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

    result = swift_unknownObjectRelease();
    v10 = __OFADD__(v7++, 1);
    if (v10)
    {
      goto LABEL_56;
    }
  }

  swift_unknownObjectRelease();

  v11 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    while (1)
    {
      result = v4 >> 62 ? sub_1C96A7BB4() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 == result)
      {
        goto LABEL_51;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA8D440](v11, v4);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        sub_1C96A3D04();
      }

      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12 && (v13 = v12, swift_unknownObjectRelease(), v13 == a2))
      {
      }

      else
      {
        v14 = swift_unknownObjectWeakLoadStrong();

        if (v14)
        {
          result = swift_unknownObjectRelease();
          if (v7 != v11)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x1CCA8D440](v7, v4);
              v16 = MEMORY[0x1CCA8D440](v11, v4);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_59;
              }

              v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v17)
              {
                goto LABEL_60;
              }

              if (v11 >= v17)
              {
                goto LABEL_61;
              }

              v15 = *(v4 + 32 + 8 * v7);
              v16 = *(v4 + 32 + 8 * v11);
              sub_1C96A3D04();
              sub_1C96A3D04();
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = sub_1C964B858(v4);
              v18 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v18) = 0;
            }

            v19 = v4 & 0xFFFFFFFFFFFFFF8;
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v16;

            if ((v4 & 0x8000000000000000) != 0 || v18)
            {
              result = sub_1C964B858(v4);
              v4 = result;
              v19 = result & 0xFFFFFFFFFFFFFF8;
              if ((v11 & 0x8000000000000000) != 0)
              {
LABEL_49:
                __break(1u);
                goto LABEL_50;
              }
            }

            else if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_49;
            }

            if (v11 >= *(v19 + 16))
            {
              goto LABEL_58;
            }

            *(v19 + 8 * v11 + 32) = v15;

            *a1 = v4;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_57;
          }
        }
      }

      v10 = __OFADD__(v11++, 1);
      if (v10)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1C965E72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C965E790(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppConfiguration();
  OUTLINED_FUNCTION_7(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1C965DA3C(a1, a2, v7);
}

uint64_t NotificationConfigurationManager.__allocating_init(appConfigurationManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  NotificationConfigurationManager.init(appConfigurationManager:)(a1);
  return v2;
}

uint64_t NotificationConfigurationManager.init(appConfigurationManager:)(__int128 *a1)
{
  v3 = sub_1C96A5404();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C96A53F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7BA8);
  swift_allocObject();
  *(v1 + 56) = sub_1C96A5314();
  sub_1C94670AC(a1, v1 + 16);
  return v1;
}

uint64_t sub_1C965E9C0()
{
  type metadata accessor for AppConfiguration();
  sub_1C96A5784();
  v0 = sub_1C96A55A4();
  v1 = sub_1C96A5634();

  return v1;
}

uint64_t sub_1C965EA5C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v1);
  return AppConfigurationManagerType.fetchAppConfig()(v1, v2);
}

uint64_t sub_1C965EAAC()
{
  type metadata accessor for AppConfiguration();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7BB0);
  swift_allocObject();
  sub_1C96A53C4();
  return sub_1C96A56A4();
}

uint64_t NotificationConfigurationManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return v0;
}

uint64_t NotificationConfigurationManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1C965EC2C()
{
  v0 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C96A45A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C96A45C4();
  __swift_allocate_value_buffer(v6, qword_1EC3A7BB8);
  __swift_project_value_buffer(v6, qword_1EC3A7BB8);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EDB94A40);
  (*(v2 + 16))(v4, v7, v1);
  sub_1C96A4BC4();
  return sub_1C96A45D4();
}

uint64_t (*static SetPressureUnitIntent.title.modify())()
{
  if (qword_1EC3A4840 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A45C4();
  __swift_project_value_buffer(v0, qword_1EC3A7BB8);
  OUTLINED_FUNCTION_19_1();
  return j_j__swift_endAccess;
}

uint64_t sub_1C965EF38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9600FDC(&qword_1EC3A4840, MEMORY[0x1E6968E10], qword_1EC3A7BB8);
  swift_beginAccess();
  v3 = sub_1C96A45C4();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C965EFE8(uint64_t a1)
{
  v2 = sub_1C9600FDC(&qword_1EC3A4840, MEMORY[0x1E6968E10], qword_1EC3A7BB8);
  swift_beginAccess();
  v3 = sub_1C96A45C4();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C965F0A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3E34();
  __swift_allocate_value_buffer(v10, qword_1EC3A7BD0);
  __swift_project_value_buffer(v10, qword_1EC3A7BD0);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3E54();
}

uint64_t (*static SetPressureUnitIntent.description.modify())()
{
  if (qword_1EC3A4848 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A3E34();
  __swift_project_value_buffer(v0, qword_1EC3A7BD0);
  OUTLINED_FUNCTION_19_1();
  return j__swift_endAccess;
}

uint64_t sub_1C965F478@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9600FDC(&qword_1EC3A4848, MEMORY[0x1E695A200], qword_1EC3A7BD0);
  swift_beginAccess();
  v3 = sub_1C96A3E34();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C965F528(uint64_t a1)
{
  v2 = sub_1C9600FDC(&qword_1EC3A4848, MEMORY[0x1E695A200], qword_1EC3A7BD0);
  swift_beginAccess();
  v3 = sub_1C96A3E34();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C965F5E0()
{
  v0 = sub_1C96A3B84();
  __swift_allocate_value_buffer(v0, qword_1EC3A7BE8);
  __swift_project_value_buffer(v0, qword_1EC3A7BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C00);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A3B74();
  sub_1C95E0D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C50);
  sub_1C9469CB4(&qword_1EC3A6C58, &qword_1EC3A6C50);
  return sub_1C96A79E4();
}

uint64_t static SetPressureUnitIntent.supportedModes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4850 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A3B84();
  __swift_project_value_buffer(v2, qword_1EC3A7BE8);
  OUTLINED_FUNCTION_8_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t static SetPressureUnitIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7C00);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7C08);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C965F97C();
  sub_1C96A3F44();
  sub_1C96A3F34();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7C18);
  sub_1C96A3F24();

  sub_1C96A3F34();
  sub_1C96A3F54();
  return sub_1C96A3F14();
}

unint64_t sub_1C965F97C()
{
  result = qword_1EC3A7C10;
  if (!qword_1EC3A7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C10);
  }

  return result;
}

uint64_t SetPressureUnitIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v36 = sub_1C96A3F64();
  OUTLINED_FUNCTION_1();
  v34 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v35 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B40);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1C96A4C14();
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v16 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  v23 = sub_1C96A6FF4();
  v24 = OUTLINED_FUNCTION_7(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v25 = sub_1C96A45C4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7C20);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v16, qword_1EDB94A40);
  v28 = *(v18 + 16);
  v28(v22, v27, v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_2_7();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v28(v22, v27, v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_2_7();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  v38 = 5;
  v29 = sub_1C96A3B94();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v29);
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v29);
  (*(v34 + 104))(v35, *MEMORY[0x1E695A500], v36);
  sub_1C9662508();
  *v37 = sub_1C96A3C94();
  return sub_1C954DDE0();
}

uint64_t SetPressureUnitIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C965FE40, 0, 0);
}

uint64_t sub_1C965FE40()
{
  v5 = v0;
  sub_1C96A3C64();
  v1 = *(v0 + 32);
  if (qword_1EDB80318 != -1)
  {
    swift_once();
  }

  v4 = v1;
  UnitManager.setPreferredPressureUnit(_:)(&v4);
  sub_1C9488854();
  static NSUserDefaults.postSettingsUpdatedNotification()();
  static WidgetUtilities.reloadWidget(reason:)(0xD000000000000037, 0x80000001C96D7120);
  sub_1C96A3BB4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C965FF3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B9278;

  return SetPressureUnitIntent.perform()(a1);
}

uint64_t sub_1C965FFD8(uint64_t a1)
{
  v2 = sub_1C965F97C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1C9660014()
{
  sub_1C96A3E14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  SetPressureUnitIntent.init()(&v7);
  sub_1C965F97C();
  sub_1C96A3E24();
  sub_1C96A3E04();
  v2 = OUTLINED_FUNCTION_17_2();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v0;
  v5 = sub_1C96A3DF4();

  return v5;
}

uint64_t sub_1C9660158(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7CC8);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7CD0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C965F97C();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  v41 = sub_1C9662850();
  v44 = a1;
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v40 = sub_1C96A3D34();
  v42 = *(v43 + 8);
  v43 += 8;
  v5 = v45;
  v42(v3, v45);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v39 = sub_1C96A3D34();
  v42(v3, v5);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v38 = sub_1C96A3D34();
  v42(v3, v45);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v37 = sub_1C96A3D34();
  v6 = v45;
  v42(v3, v45);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v36 = sub_1C96A3D34();
  v7 = v6;
  v8 = v42;
  v42(v3, v7);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v35 = sub_1C96A3D34();
  v8(v3, v45);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v34 = sub_1C96A3D34();
  v9 = v45;
  v8(v3, v45);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v33 = sub_1C96A3D34();
  v10 = v9;
  v11 = v42;
  v42(v3, v10);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v32 = sub_1C96A3D34();
  v12 = v45;
  v11(v3, v45);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v31 = sub_1C96A3D34();
  v42(v3, v12);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v30 = sub_1C96A3D34();
  v42(v3, v45);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v29 = sub_1C96A3D34();
  v13 = v42;
  v42(v3, v45);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v28 = sub_1C96A3D34();
  v14 = v45;
  v13(v3, v45);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v27 = sub_1C96A3D34();
  v15 = v42;
  v42(v3, v14);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v16 = sub_1C96A3D34();
  v15(v3, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7CD8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C96C36C0;
  v18 = v39;
  *(v17 + 32) = v40;
  *(v17 + 40) = v18;
  v19 = v37;
  *(v17 + 48) = v38;
  *(v17 + 56) = v19;
  v20 = v35;
  *(v17 + 64) = v36;
  *(v17 + 72) = v20;
  v21 = v33;
  *(v17 + 80) = v34;
  *(v17 + 88) = v21;
  v22 = v31;
  *(v17 + 96) = v32;
  *(v17 + 104) = v22;
  v23 = v29;
  *(v17 + 112) = v30;
  *(v17 + 120) = v23;
  v24 = v27;
  *(v17 + 128) = v28;
  *(v17 + 136) = v24;
  *(v17 + 144) = v16;
  v25 = sub_1C96A3D24();

  return v25;
}

uint64_t sub_1C9660FCC()
{
  v0 = sub_1C96A3D94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1C9662850();
  sub_1C96A3D04();

  sub_1C965F97C();
  sub_1C96A3D84();
  v4 = sub_1C96A3D74();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C96AA1C0;
  *(v5 + 32) = v4;
  v6 = sub_1C96A3D64();

  return v6;
}

uint64_t sub_1C966113C()
{
  v0 = sub_1C96A3D54();
  v1 = sub_1C96A3D54();
  v2 = sub_1C96A3D54();
  v3 = sub_1C96A3D54();
  v4 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C96B20F0;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1C96A3D44();

  return v6;
}

uint64_t sub_1C966125C()
{
  sub_1C96A3CF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  sub_1C965F97C();
  sub_1C96A3CE4();
  sub_1C96A3CD4();
  v2 = OUTLINED_FUNCTION_17_2();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v0;
  v5 = sub_1C96A3CC4();

  return v5;
}

uint64_t sub_1C9661384()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3FD4();
  __swift_allocate_value_buffer(v10, qword_1EC3C3DF8);
  __swift_project_value_buffer(v10, qword_1EC3C3DF8);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3FC4();
}

uint64_t sub_1C9661664()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5700);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v65 = v48 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = v48 - v3;
  v4 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1C96A45A4();
  v6 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1C96A45C4();
  v12 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7CB8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7CC0);
  v16 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v63 = *(*(v15 - 8) + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C96B20F0;
  v51 = v17;
  v64 = v15;
  v50 = *(v15 + 48);
  v62 = v17 + v16;
  *(v17 + v16) = 0;
  v18 = v11;
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v19 = v68;
  v20 = __swift_project_value_buffer(v68, qword_1EDB94A40);
  v21 = v6 + 16;
  v54 = *(v6 + 16);
  v54(v8, v20, v19);
  sub_1C96A4BC4();
  v66 = v14;
  sub_1C96A45D4();
  v22 = v56;
  __swift_storeEnumTagSinglePayload(v56, 1, 1, v69);
  v58 = sub_1C96A3E84();
  __swift_storeEnumTagSinglePayload(v65, 1, 1, v58);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5998);
  v59 = *(v12 + 72);
  v60 = v23;
  v57 = *(v12 + 80);
  v24 = v19;
  v55 = (v57 + 32) & ~v57;
  v25 = swift_allocObject();
  v61 = xmmword_1C96AA1C0;
  *(v25 + 16) = xmmword_1C96AA1C0;
  v26 = v18;
  sub_1C96A6FA4();
  v27 = v54;
  v54(v8, v20, v24);
  sub_1C96A4BC4();
  v28 = v26;
  sub_1C96A45D4();
  v29 = v62;
  sub_1C96A3E94();
  v52 = v21;
  v49 = (v29 + v63);
  v50 = *(v64 + 48);
  *v49 = 1;
  sub_1C96A6FA4();
  v30 = v27;
  v27(v8, v20, v68);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v69);
  v31 = v65;
  __swift_storeEnumTagSinglePayload(v65, 1, 1, v58);
  *(swift_allocObject() + 16) = v61;
  sub_1C96A6FA4();
  v32 = v20;
  v53 = v20;
  v33 = v68;
  v30(v8, v20, v68);
  sub_1C96A4BC4();
  v34 = v28;
  sub_1C96A45D4();
  v35 = v56;
  sub_1C96A3E94();
  v49 = (v62 + 2 * v63);
  v50 = *(v64 + 48);
  *v49 = 2;
  sub_1C96A6FA4();
  v30(v8, v32, v33);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v69);
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v58);
  *(swift_allocObject() + 16) = v61;
  sub_1C96A6FA4();
  v36 = v53;
  v37 = v68;
  v54(v8, v53, v68);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A3E94();
  v49 = (v62 + 3 * v63);
  v50 = *(v64 + 48);
  *v49 = 3;
  sub_1C96A6FA4();
  v38 = v8;
  v39 = v8;
  v40 = v54;
  v54(v38, v36, v37);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v69);
  v41 = v65;
  __swift_storeEnumTagSinglePayload(v65, 1, 1, v58);
  *(swift_allocObject() + 16) = v61;
  v48[1] = v34;
  sub_1C96A6FA4();
  v42 = v68;
  v40(v39, v53, v68);
  sub_1C96A4BC4();
  v43 = v39;
  sub_1C96A45D4();
  v44 = v56;
  sub_1C96A3E94();
  v45 = *(v64 + 48);
  v63 = v62 + 4 * v63;
  v64 = v45;
  *v63 = 4;
  sub_1C96A6FA4();
  v46 = v53;
  v40(v43, v53, v42);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v69);
  __swift_storeEnumTagSinglePayload(v41, 1, 1, v58);
  *(swift_allocObject() + 16) = v61;
  sub_1C96A6FA4();
  v40(v43, v46, v42);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A3E94();
  sub_1C96A3EB4();
  sub_1C9662A00();
  result = sub_1C96A6F04();
  qword_1EC3C3E10 = result;
  return result;
}

uint64_t sub_1C966221C()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C9662268(char a1)
{
  result = 1918984813;
  switch(a1)
  {
    case 1:
      result = 1732800105;
      break;
    case 2:
      result = 1732799853;
      break;
    case 3:
      result = 6377576;
      break;
    case 4:
      result = 6377579;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9662300@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C966221C();
  *a1 = result;
  return result;
}

uint64_t sub_1C9662330@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9662268(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C966235C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4858 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A3FD4();
  v3 = __swift_project_value_buffer(v2, qword_1EC3C3DF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C9662404(uint64_t a1)
{
  v2 = sub_1C9662508();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C9662450()
{
  if (qword_1EC3A4860 != -1)
  {
    swift_once();
  }

  return sub_1C96A53C4();
}

uint64_t sub_1C96624AC(uint64_t a1)
{
  v2 = sub_1C96628A8();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1C9662508()
{
  result = qword_1EC3A7C28;
  if (!qword_1EC3A7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C28);
  }

  return result;
}

unint64_t sub_1C9662560()
{
  result = qword_1EC3A7C30;
  if (!qword_1EC3A7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C30);
  }

  return result;
}

unint64_t sub_1C96625B8()
{
  result = qword_1EC3A7C38;
  if (!qword_1EC3A7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C38);
  }

  return result;
}

unint64_t sub_1C9662648()
{
  result = qword_1EC3A7C40;
  if (!qword_1EC3A7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C40);
  }

  return result;
}

unint64_t sub_1C96626A0()
{
  result = qword_1EC3A7C48;
  if (!qword_1EC3A7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C48);
  }

  return result;
}

unint64_t sub_1C96626F8()
{
  result = qword_1EC3A7C50;
  if (!qword_1EC3A7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C50);
  }

  return result;
}

unint64_t sub_1C9662750()
{
  result = qword_1EC3A7C58;
  if (!qword_1EC3A7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C58);
  }

  return result;
}

unint64_t sub_1C96627A8()
{
  result = qword_1EC3A7C60;
  if (!qword_1EC3A7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C60);
  }

  return result;
}

unint64_t sub_1C96627FC()
{
  result = qword_1EC3A7C68;
  if (!qword_1EC3A7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C68);
  }

  return result;
}

unint64_t sub_1C9662850()
{
  result = qword_1EC3A7C70;
  if (!qword_1EC3A7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C70);
  }

  return result;
}

unint64_t sub_1C96628A8()
{
  result = qword_1EC3A7C78;
  if (!qword_1EC3A7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C78);
  }

  return result;
}

unint64_t sub_1C9662950()
{
  result = qword_1EC3A7C80;
  if (!qword_1EC3A7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C80);
  }

  return result;
}

unint64_t sub_1C96629A8()
{
  result = qword_1EC3A7C88;
  if (!qword_1EC3A7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C88);
  }

  return result;
}

unint64_t sub_1C9662A00()
{
  result = qword_1EC3A7C90;
  if (!qword_1EC3A7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7C90);
  }

  return result;
}

_BYTE *sub_1C9662AB0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

WeatherCore::WeatherDataConfiguration __swiftcall WeatherDataConfiguration.init(intervalBetweenUpdates:extendedRefreshHintInterval:offlineDataFreshnessInterval:currentLocationCertaintyRadius:)(Swift::Double_optional intervalBetweenUpdates, Swift::Double_optional extendedRefreshHintInterval, Swift::Double_optional offlineDataFreshnessInterval, Swift::Double_optional currentLocationCertaintyRadius)
{
  v9 = *&intervalBetweenUpdates.is_nil;
  if (extendedRefreshHintInterval.is_nil)
  {
    v9 = 600.0;
  }

  v10 = *&offlineDataFreshnessInterval.is_nil;
  if (currentLocationCertaintyRadius.is_nil)
  {
    v10 = 3.0;
  }

  v11 = v4;
  if (v5)
  {
    v11 = 64800.0;
  }

  v12 = v6;
  *v8 = v9;
  v8[1] = v10;
  if (v7)
  {
    v13 = 5000.0;
  }

  else
  {
    v13 = v6;
  }

  v8[2] = v11;
  v8[3] = v13;
  result.currentLocationCertaintyRadius = v12;
  result.offlineDataFreshnessInterval = v11;
  result.extendedRefreshHintInterval = v10;
  result.intervalBetweenUpdates = v13;
  return result;
}

uint64_t WeatherDataConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7CE8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947BD80();
  sub_1C96A7F54();
  v10[15] = 0;
  OUTLINED_FUNCTION_1_20();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_1_20();
    v10[13] = 2;
    OUTLINED_FUNCTION_1_20();
    v10[12] = 3;
    OUTLINED_FUNCTION_1_20();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C9662DE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E9318();
  *a1 = result;
  return result;
}

unint64_t sub_1C9662E14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C948BB54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9662E40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E9318();
  *a1 = result;
  return result;
}

uint64_t sub_1C9662E68(uint64_t a1)
{
  v2 = sub_1C947BD80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9662EA4(uint64_t a1)
{
  v2 = sub_1C947BD80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C9662F00()
{
  result = qword_1EC3A7CF0;
  if (!qword_1EC3A7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7CF0);
  }

  return result;
}

void __swiftcall ProviderAttributionConfiguration.init(featureAvailabilityURL:mapDataLearnMoreURL:hideLocationViewDataProviderLogos:)(WeatherCore::ProviderAttributionConfiguration *__return_ptr retstr, Swift::String_optional featureAvailabilityURL, Swift::String_optional mapDataLearnMoreURL, Swift::Bool_optional hideLocationViewDataProviderLogos)
{
  object = 0x80000001C96CC960;
  if (featureAvailabilityURL.value._object)
  {
    countAndFlagsBits = featureAvailabilityURL.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0xD000000000000022;
  }

  if (featureAvailabilityURL.value._object)
  {
    object = featureAvailabilityURL.value._object;
  }

  v6 = 0x80000001C96D2630;
  v7 = 0xD000000000000035;
  if (mapDataLearnMoreURL.value._object)
  {
    v7 = mapDataLearnMoreURL.value._countAndFlagsBits;
    v6 = mapDataLearnMoreURL.value._object;
  }

  retstr->featureAvailabilityURL._countAndFlagsBits = countAndFlagsBits;
  retstr->featureAvailabilityURL._object = object;
  retstr->mapDataLearnMoreURL._countAndFlagsBits = v7;
  retstr->mapDataLearnMoreURL._object = v6;
  retstr->hideLocationViewDataProviderLogos = hideLocationViewDataProviderLogos.value == 2 || hideLocationViewDataProviderLogos.value;
}

uint64_t static ProviderAttributionConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_1C96A7DE4()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1C96A7DE4()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t ProviderAttributionConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D00);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v12[1] = *(v1 + 24);
  v12[2] = v9;
  v13 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C94817D4();
  sub_1C96A7F54();
  v16 = 0;
  v10 = v12[3];
  sub_1C96A7D24();
  if (!v10)
  {
    v15 = 1;
    sub_1C96A7D24();
    v14 = 2;
    sub_1C96A7D34();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C9663220@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E9364();
  *a1 = result;
  return result;
}

unint64_t sub_1C9663250@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C9481830(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C966327C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E9364();
  *a1 = result;
  return result;
}

uint64_t sub_1C96632A4(uint64_t a1)
{
  v2 = sub_1C94817D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C96632E0(uint64_t a1)
{
  v2 = sub_1C94817D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9663338(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

unint64_t sub_1C966337C()
{
  result = qword_1EC3A7D08;
  if (!qword_1EC3A7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7D08);
  }

  return result;
}

uint64_t CLPlacemarkFromStringResolver.resolve(from:context:)(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D10);
  v2[16] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D18);
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D20);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9663540, 0, 0);
}

uint64_t sub_1C9663540()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D28);
  sub_1C96A6034();
  sub_1C96A6044();
  v1 = v0[16];
  v2 = v0[17];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_1C9663888(v0[16]);
LABEL_3:
    v3 = 0;
    goto LABEL_4;
  }

  (*(v0[18] + 32))(v0[19], v1, v2);
  swift_getKeyPath();
  sub_1C96A6054();

  v20 = sub_1C96A7554();
  v7 = v6;
  swift_getKeyPath();
  sub_1C96A6054();

  v19 = sub_1C96A7554();
  v9 = v8;
  swift_getKeyPath();
  sub_1C96A6054();

  if (v0[13])
  {
    v18 = MEMORY[0x1CCA8CAC0](v0[10], v0[11], v0[12], v0[13]);
    v11 = v10;
  }

  else
  {
    v18 = 0;
    v11 = 0;
  }

  v13 = v0[21];
  v12 = v0[22];
  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[17];
  v17 = v0[18];
  if (v7 & 1) != 0 || (v9)
  {

    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);
    goto LABEL_3;
  }

  sub_1C956AE80();
  v3 = sub_1C9550094([objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*&v20 longitude:*&v19], v18, v11, 0);
  (*(v17 + 8))(v15, v16);
  (*(v13 + 8))(v12, v14);
LABEL_4:

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1C9663888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9663934(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v4 = *a2;
  v3 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1C96639D0;

  return CLPlacemarkFromStringResolver.resolve(from:context:)(v4, v3);
}

uint64_t sub_1C96639D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_1C9663B30()
{
  result = qword_1EC3A7D30;
  if (!qword_1EC3A7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7D30);
  }

  return result;
}

unint64_t sub_1C9663B8C()
{
  result = qword_1EC3A5BC8;
  if (!qword_1EC3A5BC8)
  {
    sub_1C956AE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5BC8);
  }

  return result;
}

unint64_t sub_1C9663BE8()
{
  result = qword_1EC3A7D38;
  if (!qword_1EC3A7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7D38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CLPlacemarkFromStringResolver(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C9663D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128);
  swift_allocObject();
  return sub_1C96A56A4();
}

void *sub_1C9663E30@<X0>(void *a1@<X8>)
{
  v28 = a1;
  v1 = sub_1C96A6404();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v25 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C96A6464();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C96A63F4();
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A64E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1C96A61E4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1C96A64D4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C96A64F4();
  if (qword_1EDB7BF28 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_1EDB7BF30);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  sub_1C96A61D4();
  *v11 = 32;
  (*(v9 + 104))(v11, *MEMORY[0x1E69D6298], v8);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6248], v21);
  (*(v22 + 104))(v24, *MEMORY[0x1E69D6270], v23);
  (*(v26 + 104))(v25, *MEMORY[0x1E69D6260], v27);
  v29 = 1;
  v18 = sub_1C96A6444();
  type metadata accessor for CurrentLocationStore();
  swift_allocObject();
  result = CurrentLocationStore.init(database:)(v18);
  *v28 = result;
  return result;
}

uint64_t sub_1C96642AC(uint64_t a1)
{
  v2 = sub_1C96A5174();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C9469B6C(a1, v5);
  v3 = swift_allocObject();
  sub_1C94670AC(v5, v3 + 16);
  *&v5[0] = MEMORY[0x1E69E7CC0];
  sub_1C946F998(&qword_1EDB7D098, MEMORY[0x1E69D6420]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350);
  sub_1C9469CB4(&qword_1EDB7CE98, &unk_1EC3A5350);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5360);
  swift_allocObject();
  return sub_1C96A5424();
}

uint64_t sub_1C9664454@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5488);
  result = sub_1C96A5274();
  if (v5)
  {
    return sub_1C94670AC(&v4, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C96644D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5048);
  result = sub_1C96A5274();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D68);
  result = sub_1C96A5274();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5070);
  result = sub_1C96A5274();
  if (v6[3])
  {
    v5 = type metadata accessor for GeocodeManager();
    swift_allocObject();
    result = GeocodeManager.init(service:store:appConfigurationManager:queue:)(v9, v10, v7, v8, v6, 0);
    a2[3] = v5;
    a2[4] = &protocol witness table for GeocodeManager;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C966465C@<X0>(uint64_t a1@<X8>)
{
  v22[0] = a1;
  v1 = sub_1C96A6404();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v28 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C96A6464();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v27 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C96A63F4();
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C96A64E4();
  v8 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1C96A61E4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1C96A64D4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = sub_1C96A64F4();
  if (qword_1EDB7FAB8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_1EDB7FAC0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  sub_1C96A61D4();
  *v10 = 32;
  (*(v8 + 104))(v10, *MEMORY[0x1E69D6298], v23);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6248], v24);
  (*(v25 + 104))(v27, *MEMORY[0x1E69D6270], v26);
  (*(v29 + 104))(v28, *MEMORY[0x1E69D6260], v30);
  v32 = 1;
  v17 = v31;
  result = sub_1C96A6444();
  if (!v17)
  {
    v19 = result;
    v20 = type metadata accessor for GeocodeStore();
    swift_allocObject();
    result = GeocodeStore.init(database:)(v19);
    v21 = v22[0];
    *(v22[0] + 24) = v20;
    v21[4] = &protocol witness table for GeocodeStore;
    *v21 = result;
  }

  return result;
}

uint64_t sub_1C9664AF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DA8);
  result = sub_1C96A5274();
  if (!v24[3])
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (qword_1EDB80350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EDB80358;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5038);
  v6 = v5;
  result = sub_1C96A5274();
  if (!v23)
  {
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D78);
  result = sub_1C96A5274();
  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E10);
  result = sub_1C96A5274();
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D88);
  result = sub_1C96A5274();
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D90);
  result = sub_1C96A5274();
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E68);
  result = sub_1C96A5274();
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1C94670AC(&v11, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D70);
  result = sub_1C96A5274();
  if (v9)
  {
    sub_1C94670AC(&v8, v10);
    v7 = type metadata accessor for SavedLocationsManager();
    result = sub_1C96683EC(v24, v6, v22, v20, v18, v16, v14, v13, v10, 0, 0, objc_allocWithZone(v7));
    a2[3] = v7;
    a2[4] = &protocol witness table for SavedLocationsManager;
    *a2 = result;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1C9664E3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AutomationDataService();
  result = sub_1C96A5264();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for StubAutomationSavedLocationsManager();
    swift_allocObject();
    result = sub_1C965A80C(v4);
    a2[3] = v5;
    a2[4] = &protocol witness table for StubAutomationSavedLocationsManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9664ED0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D88);
  result = sub_1C96A5274();
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DA8);
  result = sub_1C96A5274();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D78);
  result = sub_1C96A5274();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DE0);
  result = sub_1C96A5274();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5040);
  result = sub_1C96A5274();
  if (v7)
  {
    v5 = type metadata accessor for SavedLocationsCoherenceMigrator();
    swift_allocObject();
    result = sub_1C960D038(&v14, &v12, &v10, &v8, &v6);
    a2[3] = v5;
    a2[4] = &off_1F4907800;
    *a2 = result;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1C96650B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1C96A4764();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = type metadata accessor for CoherenceContextProvider();
  swift_allocObject();
  result = sub_1C9492B20(1, v4, 0);
  a1[3] = v6;
  a1[4] = &off_1F4908FD8;
  *a1 = result;
  return result;
}

uint64_t sub_1C9665188@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C96A5254();
  if (v16[0] != 2 && (v16[0] & 1) != 0)
  {
    v4 = type metadata accessor for StubCoherenceDataManager();
    swift_allocObject();
    result = sub_1C964027C();
    v6 = result;
    v7 = &off_1F49093E0;
LABEL_7:
    a2[3] = v4;
    a2[4] = v7;
    *a2 = v6;
    return result;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D98);
  result = sub_1C96A5274();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E10);
    result = sub_1C96A5274();
    if (v15)
    {
      v4 = type metadata accessor for CoherenceDataManager();
      v8 = v17;
      v9 = v18;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      MEMORY[0x1EEE9AC00](v10);
      v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v12);
      v6 = sub_1C95D08A0(v12, &v14, v4, v8, v9);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
      v7 = &protocol witness table for CoherenceDataManager;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C96653B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() currentNotificationCenter];
  v3 = type metadata accessor for NotificationAuthorizationManager();
  swift_allocObject();
  result = sub_1C94AE59C(v2);
  a1[3] = v3;
  a1[4] = &protocol witness table for NotificationAuthorizationManager;
  *a1 = result;
  return result;
}

uint64_t sub_1C9665474@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DB8);
  result = sub_1C96A5274();
  if (!v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DC8);
  result = sub_1C96A5274();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DD0);
  result = sub_1C96A5274();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5190);
  result = sub_1C96A5274();
  if (v7)
  {
    v5 = type metadata accessor for PredictedLocationsFeatureStateManager();
    swift_allocObject();
    result = sub_1C957E744(&v12, &v10, &v8, &v6);
    a2[3] = v5;
    a2[4] = &off_1F4902FB8;
    *a2 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C966560C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946B5D0(0, &unk_1EDB7CD50);
  result = sub_1C96A5264();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for NotificationAuthorizationStatusProvider();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F4902920;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C96656A4(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = sub_1C9493F34(v4);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (v5 == 0xD000000000000012 && v6 == 0x80000001C96CE5D0)
  {
  }

  else
  {
    v8 = sub_1C96A7DE4();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5488);
      sub_1C96A5274();
      if (v13)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D48);
        sub_1C96A5274();
        if (v12)
        {
          v9 = type metadata accessor for LocationManager();
          LocationManager.__allocating_init(geocodeManager:locationCacheManager:)();
LABEL_14:
          a2[3] = v9;
          a2[4] = &protocol witness table for LocationManager;
          *a2 = v10;
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5360);
  if (!sub_1C96A5264())
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D48);
  sub_1C96A5274();
  if (v13)
  {
    v9 = type metadata accessor for LocationManager();
    v11 = objc_allocWithZone(v9);
    LocationManager.init(geocodeManager:locationCacheManager:)();
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1C9665920@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E50);
  result = sub_1C96A5274();
  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5198);
  result = sub_1C96A5274();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (qword_1EDB80350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EDB80358;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E58);
  v6 = v5;
  result = sub_1C96A5274();
  if (v8[3])
  {
    v7 = sub_1C94AC22C(v11, v9, v6, v8, 1);

    result = type metadata accessor for NotificationSubscriptionManager();
    a2[3] = result;
    a2[4] = &protocol witness table for NotificationSubscriptionManager;
    *a2 = v7;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C9665AD4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946B5D0(0, &qword_1EDB7CD98);
  result = sub_1C96A5264();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SavedLocationsReconciler();
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = 0;
    a2[3] = v5;
    a2[4] = &protocol witness table for SavedLocationsReconciler;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9665B70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5070);
  result = sub_1C96A5274();
  if (v7)
  {
    v4 = type metadata accessor for AppConfigurationSettingsProvider();
    v5 = swift_allocObject();
    sub_1C94670AC(&v6, v5 + 16);
    a2[3] = v4;
    result = sub_1C946F998(qword_1EDB78850, type metadata accessor for AppConfigurationSettingsProvider);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9665C4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DF8);
  result = sub_1C96A5274();
  v4 = v14;
  if (v14)
  {
    v5 = type metadata accessor for UnitSetupManager();
    v6 = v15;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    MEMORY[0x1EEE9AC00](v7);
    v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v10 + 16))(v9);
    v11 = sub_1C95F6464(v9, v5, v4, v6);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
    a2[3] = v5;
    a2[4] = &protocol witness table for UnitSetupManager;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C9665DA4@<X0>(void *a1@<X8>)
{
  sub_1C96A4FD4();
  sub_1C96A4FB4();
  sub_1C96A4F84();

  sub_1C96A4FB4();
  sub_1C96A4F84();

  v2 = type metadata accessor for NanoPreferencesSynchronizer();
  swift_allocObject();
  result = NanoPreferencesSynchronizer.init(domain:container:appGroupContainer:)();
  a1[3] = v2;
  a1[4] = &protocol witness table for NanoPreferencesSynchronizer;
  *a1 = result;
  return result;
}

uint64_t sub_1C9665E80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D88);
  result = sub_1C96A5274();
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D80);
  result = sub_1C96A5274();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E38);
  result = sub_1C96A5274();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E20);
  result = sub_1C96A5274();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E18);
  result = sub_1C96A5274();
  if (v7)
  {
    v5 = type metadata accessor for LocationEntityManager();
    swift_allocObject();
    result = sub_1C9576C78(&v14, &v12, &v10, &v8, &v6);
    a2[3] = v5;
    a2[4] = &off_1F4902CB8;
    *a2 = result;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1C966609C()
{
  v0 = sub_1C96A5174();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C946F998(&qword_1EDB7D098, MEMORY[0x1E69D6420]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350);
  sub_1C9469CB4(&qword_1EDB7CE98, &unk_1EC3A5350);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E08);
  swift_allocObject();
  return sub_1C96A5424();
}

uint64_t sub_1C9666208@<X0>(void *a1@<X8>)
{
  v2 = sub_1C96A6494();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  sub_1C96A4E14();
  sub_1C96A4E04();
  sub_1C96A4EB4();

  if (v13[15] == 1)
  {
    sub_1C96A6484();
  }

  else
  {
    sub_1C96A6474();
  }

  (*(v3 + 16))(v6, v8, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  type metadata accessor for NotificationStore();
  swift_allocObject();
  v11 = NotificationStore.init(database:)(sub_1C9669E8C, v10);
  result = (*(v3 + 8))(v8, v2);
  *a1 = v11;
  return result;
}

void *sub_1C9666434()
{
  v0 = sub_1C96A6494();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  sub_1C96A4E14();
  sub_1C96A4E04();
  sub_1C96A4EB4();

  if (v11[15] == 1)
  {
    sub_1C96A6484();
  }

  else
  {
    sub_1C96A6474();
  }

  (*(v1 + 16))(v4, v6, v0);
  v7 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v8 = swift_allocObject();
  (*(v1 + 32))(v8 + v7, v4, v0);
  type metadata accessor for NotificationStore();
  swift_allocObject();
  v9 = NotificationStore.init(database:)(sub_1C9669CF0, v8);
  (*(v1 + 8))(v6, v0);
  return v9;
}

uint64_t sub_1C9666654(uint64_t a1)
{
  v54 = a1;
  sub_1C96A64E4();
  OUTLINED_FUNCTION_1();
  v55 = v2;
  v56 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_37_0();
  v50 = v3;
  OUTLINED_FUNCTION_15_4();
  v53 = sub_1C96A6464();
  OUTLINED_FUNCTION_1();
  v43 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37_0();
  v52 = v6;
  OUTLINED_FUNCTION_15_4();
  v51 = sub_1C96A6494();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_37_0();
  v49 = v10;
  OUTLINED_FUNCTION_15_4();
  v44 = sub_1C96A63F4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_37_0();
  v47 = v14;
  OUTLINED_FUNCTION_15_4();
  v15 = sub_1C96A6404();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_37_0();
  v57 = v19;
  OUTLINED_FUNCTION_15_4();
  v20 = sub_1C96A61E4();
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_37_0();
  v22 = v21;
  OUTLINED_FUNCTION_15_4();
  v23 = sub_1C96A64D4();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_37_0();
  v28 = v27;
  OUTLINED_FUNCTION_15_4();
  v48 = sub_1C96A6434();
  OUTLINED_FUNCTION_1();
  v45 = v29;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v42 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v46 = v42 - v34;
  if (qword_1EDB7C350 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v23, qword_1EDB7C358);
  v36 = *(v25 + 16);
  v42[1] = v28;
  v36(v28, v35, v23);
  v42[0] = v22;
  sub_1C96A61D4();
  (*(v17 + 104))(v57, *MEMORY[0x1E69D6268], v15);
  (*(v12 + 104))(v47, *MEMORY[0x1E69D6248], v44);
  (*(v8 + 16))(v49, v54, v51);
  (*(v43 + 104))(v52, *MEMORY[0x1E69D6270], v53);
  v37 = v55;
  v38 = v56;
  v39 = *(v55 + 104);
  v40 = v50;
  v39(v50, *MEMORY[0x1E69D62A0], v56);
  v58 = 0;
  sub_1C96A6424();
  *v40 = 32;
  v39(v40, *MEMORY[0x1E69D6298], v38);
  sub_1C96A6414();
  (*(v37 + 8))(v40, v38);
  (*(v45 + 8))(v33, v48);
  sub_1C96A64F4();
  swift_allocObject();
  return sub_1C96A6454();
}

uint64_t sub_1C9666B98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946B5D0(0, &qword_1EDB7CD98);
  result = sub_1C96A5264();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5488);
    result = sub_1C96A5274();
    if (v8)
    {
      v6 = type metadata accessor for DefaultLocationManager();
      swift_allocObject();
      result = DefaultLocationManager.init(defaultCityManager:geocodeManager:)(v5, v7);
      a2[3] = v6;
      a2[4] = &protocol witness table for DefaultLocationManager;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1C9666C98()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1C9493F34(v0);
  if (v2)
  {
    if (v1 == 0xD000000000000012 && v2 == 0x80000001C96CE5D0)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1C96A7DE4();
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(WCDefaultCityManager);

  return [v5 initDeferLoading_];
}

uint64_t sub_1C9666D5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DA8);
  result = sub_1C96A5274();
  if (v7)
  {
    v4 = type metadata accessor for LocationDisplayContextManager();
    v5 = swift_allocObject();
    result = sub_1C94670AC(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &protocol witness table for LocationDisplayContextManager;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9666E08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E40);
  result = sub_1C96A5274();
  if (v7)
  {
    v4 = type metadata accessor for WeatherLocationCoalescenceManager();
    v5 = swift_allocObject();
    result = sub_1C94670AC(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &protocol witness table for WeatherLocationCoalescenceManager;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9666EB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DD0);
  result = sub_1C96A5274();
  if (v6)
  {
    v4 = type metadata accessor for CoreRoutineDataManager();
    swift_allocObject();
    result = CoreRoutineDataManager.init(locationManager:)(v5);
    a2[3] = v4;
    a2[4] = &protocol witness table for CoreRoutineDataManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9666F5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StubCoreRoutineDataManager();
  swift_allocObject();
  result = StubCoreRoutineDataManager.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for StubCoreRoutineDataManager;
  *a1 = result;
  return result;
}

uint64_t sub_1C9666FD4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E28);
  result = sub_1C96A5274();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5488);
  result = sub_1C96A5274();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E30);
  result = sub_1C96A5274();
  if (v7)
  {
    v5 = type metadata accessor for LocationsOfInterestDataSource();
    swift_allocObject();
    result = sub_1C94B9940(&v10, &v8, &v6);
    a2[3] = v5;
    a2[4] = &protocol witness table for LocationsOfInterestDataSource;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C9667120@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5070);
  result = sub_1C96A5274();
  if (v8)
  {
    type metadata accessor for AppConfigurationLocationCoalescenceOptionsProvider();
    v4 = swift_allocObject();
    sub_1C94670AC(&v7, v4 + 16);
    v5 = type metadata accessor for LocationCoalescenceProvider();
    v6 = swift_allocObject();
    result = sub_1C9492418(1, v4, v6);
    a2[3] = v5;
    a2[4] = &protocol witness table for LocationCoalescenceProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C96671F0()
{
  v0 = sub_1C96A57B4();
  v13 = *(v0 - 8);
  v14 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C96A5594();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C946B5D0(0, &unk_1EDB7CD50);
  sub_1C96A5474();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E48);
  sub_1C96A5484();
  v7 = *MEMORY[0x1E69D6AD0];
  v8 = *(v4 + 104);
  v8(v6, v7, v3);
  sub_1C96A5064();

  v9 = *(v4 + 8);
  v9(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E50);
  sub_1C96A5484();
  v8(v6, v7, v3);
  sub_1C96A5064();

  v9(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5198);
  sub_1C96A5484();
  v8(v6, v7, v3);
  sub_1C96A5064();

  v9(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E58);
  sub_1C96A5484();
  v8(v6, v7, v3);
  sub_1C96A5064();

  v9(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E60);
  sub_1C96A5484();
  v8(v6, v7, v3);
  sub_1C96A5064();

  v9(v6, v3);
  type metadata accessor for LocationMetadataStore();
  sub_1C96A5474();
  v8(v6, v7, v3);
  sub_1C96A5064();

  v9(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E68);
  sub_1C96A5484();
  v8(v6, v7, v3);
  sub_1C96A5064();

  v9(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E70);
  sub_1C96A5484();
  v8(v6, v7, v3);
  sub_1C96A5064();

  v9(v6, v3);
  sub_1C96A5484();
  v11 = v13;
  v10 = v14;
  (*(v13 + 104))(v2, *MEMORY[0x1E69D6BF0], v14);
  sub_1C96A5034();

  return (*(v11 + 8))(v2, v10);
}

uint64_t sub_1C96678A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LocationMetadataStore();
  result = sub_1C96A5264();
  if (result)
  {
    *a2 = result;
    a2[1] = &protocol witness table for LocationMetadataStore;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9667908@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E08);
  result = sub_1C96A5264();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for LegacyNotificationSubscriptionManager();
    result = swift_allocObject();
    v6 = MEMORY[0x1E69E7CC0];
    *(result + 16) = v4;
    *(result + 24) = v6;
    a2[3] = v5;
    a2[4] = &protocol witness table for LegacyNotificationSubscriptionManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C96679A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E08);
  result = sub_1C96A5264();
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  if (qword_1EDB80350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_1EDB80358;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D88);
  v7 = v6;
  result = sub_1C96A5274();
  if (!v18)
  {
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E10);
  result = sub_1C96A5274();
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DD0);
  result = sub_1C96A5274();
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (qword_1EDB7B9F0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDB7B9F8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E58);
  result = sub_1C96A5274();
  if (v12)
  {
    v9 = type metadata accessor for KeyValueStoreNotificationSubscriptionManager();
    v10 = swift_allocObject();
    v10[6] = sub_1C946B5D0(0, &qword_1EDB80340);
    v10[7] = &protocol witness table for NSUserDefaults;
    v10[3] = v7;
    v10[27] = type metadata accessor for LocationsOfInterestManager();
    v10[28] = &protocol witness table for LocationsOfInterestManager;
    v10[24] = v8;
    v10[8] = MEMORY[0x1E69E7CC0];
    v10[2] = v5;
    sub_1C94670AC(&v17, (v10 + 9));
    sub_1C94670AC(&v15, (v10 + 14));
    sub_1C94670AC(&v13, (v10 + 19));
    sub_1C94670AC(&v11, (v10 + 29));
    a2[3] = v9;
    a2[4] = &off_1F490CFB0;
    *a2 = v10;
    return sub_1C96A3D04();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C9667C9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E60);
  result = sub_1C96A5274();
  if (v12)
  {
    if (qword_1EDB80350 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_1EDB80358;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    MEMORY[0x1EEE9AC00](v5);
    v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 22);
    (*(v8 + 16))(v7);
    v9 = sub_1C94AA778(*v7, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    result = type metadata accessor for HashSaltProvider();
    a2[3] = result;
    a2[4] = &protocol witness table for HashSaltProvider;
    *a2 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9667E40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C96A4764();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9 - 8];
  v11 = WDWeatherLibraryDirectory();
  sub_1C96A4734();

  sub_1C96A4704();
  (*(v5 + 8))(v8, v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5088);
  result = sub_1C96A5254();
  if (v16)
  {
    v13 = type metadata accessor for DataProtectionInformationManager();
    swift_allocObject();
    result = sub_1C94A91A4(v10, v15);
    a2[3] = v13;
    a2[4] = &off_1F4906618;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C9668010()
{
  GeocodeManagerGetCurrentCountryCode()();
  type metadata accessor for LocationMetadataStore();
  swift_allocObject();
  LocationMetadataStore.init(database:configuredCountryCode:)();
}

uint64_t sub_1C9668078()
{
  if (qword_1EDB7CF48 != -1)
  {
    swift_once();
  }

  return sub_1C96A3D04();
}

uint64_t sub_1C96680D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EDB80350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_1EDB80358;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E70);
  v5 = v4;
  result = sub_1C96A5274();
  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DF8);
  result = sub_1C96A5274();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5088);
  result = sub_1C96A5254();
  if (v8[3])
  {
    v7 = sub_1C96697F0(v5, v11, v9, 0, v8);

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E78);
    result = sub_1C9469CB4(qword_1EDB79DA0, &qword_1EC3A7E78);
    a2[4] = result;
    *a2 = v7;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C966830C(void *a1)
{
  v2 = type metadata accessor for AppConfiguration();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapsExperiments();
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 8))(v5, v6);
  sub_1C9484590(v4);
  return sub_1C948CD4C(v4, type metadata accessor for AppConfiguration);
}

char *sub_1C96683EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12)
{
  v123 = a8;
  v124 = a7;
  v125 = a6;
  v126 = a5;
  v127 = a4;
  v128 = a3;
  v129 = a1;
  v122 = a9;
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v134 = &v116 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v146 = &v116 - v16;
  v148 = sub_1C96A4DF4();
  v136 = *(v148 - 8);
  v17 = MEMORY[0x1EEE9AC00](v148);
  v133 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v132 = &v116 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v153 = &v116 - v21;
  v152 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v152);
  v131 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for LocationDataModel();
  v135 = *(v149 - 8);
  v23 = MEMORY[0x1EEE9AC00](v149);
  v147 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v151 = &v116 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v145 = &v116 - v27;
  v144 = type metadata accessor for SavedLocation();
  v143 = *(v144 - 8);
  v28 = MEMORY[0x1EEE9AC00](v144);
  v142 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v141 = &v116 - v30;
  v140 = sub_1C96A7754();
  v31 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  *&v139 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v138 = sub_1C96A7724();
  MEMORY[0x1EEE9AC00](v138);
  v33 = sub_1C96A65E4();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v34 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v158[3] = sub_1C946B5D0(0, &qword_1EDB80340);
  v158[4] = &protocol witness table for NSUserDefaults;
  v158[0] = a2;
  v35 = MEMORY[0x1E69E7CC0];
  *&a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_savedLocations] = MEMORY[0x1E69E7CC0];
  *&a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModels] = 0;
  *&a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_observers] = v35;
  v36 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_observersLock;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *&a12[v36] = sub_1C96A5124();
  v37 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_notifyQueue;
  v137 = sub_1C946B5D0(0, &qword_1EDB7CDB0);
  sub_1C96A6594();
  *__dst = v35;
  sub_1C946F998(&qword_1EDB7CDC0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68);
  sub_1C9469CB4(&qword_1EDB7CE50, &qword_1EC3A4A68);
  sub_1C96A79E4();
  (*(v31 + 104))(v139, *MEMORY[0x1E69E8090], v140);
  *&a12[v37] = sub_1C96A7784();
  a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager____lazy_storage___forceMigrateToCoherence] = 2;
  *&a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_nanoSyncTask] = 0;
  sub_1C9469B6C(v129, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager]);
  sub_1C9469B6C(v158, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_localKeyValueStore]);
  sub_1C9469B6C(v128, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider]);
  sub_1C9469B6C(v127, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModelFactory]);
  sub_1C9469B6C(v126, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_defaultLocationManager]);
  sub_1C9469B6C(v125, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_savedLocationsReader]);
  sub_1C9469B6C(v124, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceMigrator]);
  v38 = v123;
  v39 = &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_nanoSyncManager];
  if (*(v123 + 24))
  {
    sub_1C9469B6C(v123, v39);
  }

  else
  {
    v40 = *(v123 + 16);
    *v39 = *v123;
    *(v39 + 16) = v40;
    *(v39 + 32) = *(v38 + 32);
  }

  sub_1C9470A40(v122, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationMetadataManager], &unk_1EC3A6100);
  v157.receiver = a12;
  v157.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v157, sel_init);
  v121 = sub_1C95804C8();
  v42 = v153;
  v43 = v152;
  v44 = v147;
  if (qword_1EDB7AA38 != -1)
  {
    swift_once();
  }

  sub_1C946F998(&qword_1EDB796D8, type metadata accessor for SavedLocationsManager);
  sub_1C96A4E44();
  if (__dst[0] == 1)
  {
    v45 = v129[3];
    v46 = v129[4];
    __swift_project_boxed_opaque_existential_1(v129, v45);
    (*(v46 + 56))(v45, v46);
    __dst[0] = 0;
    sub_1C946F998(&qword_1EDB796D0, type metadata accessor for SavedLocationsManager);
    sub_1C96A4FE4();
    if (qword_1EDB7D010 != -1)
    {
      swift_once();
    }

    v47 = sub_1C96A6154();
    __swift_project_value_buffer(v47, qword_1EDB7D018);
    v48 = sub_1C96A6134();
    v49 = sub_1C96A76A4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1C945E000, v48, v49, "Just force removed the local Coherence container (device now considered not migrated at this point).", v50, 2u);
      MEMORY[0x1CCA8E3D0](v50, -1, -1);
    }

    v44 = v147;
  }

  v120 = a11;
  v119 = a10;
  sub_1C9580770();
  v52 = v51;
  if (v51 >= 2)
  {
    v118 = v41;
    v53 = *(v51 + 16);
    if (v53)
    {
      v156 = MEMORY[0x1E69E7CC0];
      sub_1C96A53C4();
      sub_1C9522D68();
      ObjectType = v156;
      v54 = (*(v135 + 80) + 32) & ~*(v135 + 80);
      v117 = v52;
      v55 = v52 + v54;
      v130 = (v136 + 32);
      v140 = *(v135 + 72);
      v56 = v149;
      do
      {
        v57 = v43;
        v58 = v145;
        sub_1C95086AC(v55, v145);
        v59 = v58;
        v60 = v151;
        sub_1C9669DEC(v59, v151, type metadata accessor for LocationDataModel);
        sub_1C95086AC(v60, v44);
        v61 = v146;
        sub_1C9470A40(&v44[v56[5]], v146, &unk_1EC3A5F60);
        v62 = v148;
        if (__swift_getEnumTagSinglePayload(v61, 1, v148) == 1)
        {
          sub_1C948CD4C(v44, type metadata accessor for LocationDataModel);
          sub_1C9470AFC(v61, &unk_1EC3A5F60);
          v63 = v42;
          v64 = 1;
          v43 = v57;
          v65 = v57;
        }

        else
        {
          *&v139 = v53;
          v66 = *v130;
          v67 = v132;
          (*v130)(v132, v61, v62);
          memcpy(__dst, v44, sizeof(__dst));
          v68 = v133;
          v66(v133, v67, v62);
          v69 = sub_1C96A4A54();
          v70 = v134;
          __swift_storeEnumTagSinglePayload(v134, 1, 1, v69);
          v71 = v56[9];
          v72 = &v44[v56[8]];
          v73 = v72[1];
          v137 = *v72;
          v74 = &v44[v71];
          *&v138 = *&v44[v71];
          v75 = v56;
          v76 = *(v74 + 1);
          v77 = v75[10];
          v78 = v75[11];
          v79 = &v44[v77];
          v80 = *(v79 + 1);
          v135 = *v79;
          v81 = *&v44[v78 + 8];
          v136 = *&v44[v78];
          sub_1C95087DC(__dst, v154);
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C948CD4C(v44, type metadata accessor for LocationDataModel);
          *&v153[v152[11]] = 0;
          memcpy(v153, __dst, 0x48uLL);
          v66(&v153[v152[5]], v68, v148);
          v53 = v139;
          v42 = v153;
          v82 = v70;
          v43 = v152;
          sub_1C948E818(v82, &v153[v152[6]]);
          v83 = &v42[v43[7]];
          *v83 = v137;
          v83[1] = v73;
          v84 = &v42[v43[8]];
          *v84 = v138;
          *(v84 + 1) = v76;
          v85 = &v42[v43[9]];
          *v85 = v135;
          *(v85 + 1) = v80;
          v86 = &v42[v43[10]];
          *v86 = v136;
          *(v86 + 1) = v81;
          v63 = v42;
          v64 = 0;
          v65 = v43;
        }

        __swift_storeEnumTagSinglePayload(v63, v64, 1, v65);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v43);
        v88 = v142;
        if (EnumTagSinglePayload == 1)
        {
          sub_1C9470AFC(v42, &qword_1EC3A5450);
          v89 = v151;
          memcpy(__dst, v151, sizeof(__dst));
          v90 = &v151[*(v149 + 32)];
          v91 = *(v90 + 1);
          v92 = &v151[*(v149 + 36)];
          v93 = *(v92 + 1);
          *&v94 = *v92;
          v139 = v94;
          *&v94 = *v90;
          v138 = v94;
          sub_1C95087DC(__dst, v154);
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C948CD4C(v89, type metadata accessor for LocationDataModel);
          memcpy(v88, __dst, 0x48uLL);
          *&v95 = v138;
          *(&v95 + 1) = v91;
          *&v96 = v139;
          *(&v96 + 1) = v93;
          *(v88 + 88) = v96;
          *(v88 + 72) = v95;
        }

        else
        {
          sub_1C948CD4C(v151, type metadata accessor for LocationDataModel);
          v97 = v131;
          sub_1C9669DEC(v42, v131, type metadata accessor for Location);
          sub_1C9669DEC(v97, v88, type metadata accessor for Location);
        }

        swift_storeEnumTagMultiPayload();
        v98 = v141;
        sub_1C9669DEC(v88, v141, type metadata accessor for SavedLocation);
        v99 = ObjectType;
        v156 = ObjectType;
        v100 = *(ObjectType + 2);
        v56 = v149;
        if (v100 >= *(ObjectType + 3) >> 1)
        {
          sub_1C9522D68();
          v56 = v149;
          v99 = v156;
        }

        *(v99 + 2) = v100 + 1;
        v101 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        ObjectType = v99;
        sub_1C9669DEC(v98, v99 + v101 + *(v143 + 72) * v100, type metadata accessor for SavedLocation);
        v55 += v140;
        --v53;
        v44 = v147;
      }

      while (v53);
      v52 = v117;
      sub_1C959228C(v117);
    }

    else
    {
      ObjectType = MEMORY[0x1E69E7CC0];
    }

    v102 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_savedLocations;
    v41 = v118;
    swift_beginAccess();
    *&v41[v102] = ObjectType;
  }

  MEMORY[0x1EEE9AC00](v51);
  *(&v116 - 2) = v52;
  *(&v116 - 1) = v41;
  v103 = v41;
  sub_1C96A5784();
  sub_1C959228C(v52);
  v104 = swift_allocObject();
  *(v104 + 16) = v103;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_1C9593888;
  *(v105 + 24) = v104;
  v106 = v103;
  v107 = sub_1C96A55A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51A8);
  sub_1C96A5634();

  sub_1C9469B6C(v158, __dst);
  v108 = swift_allocObject();
  *(v108 + 16) = v106;
  *(v108 + 24) = v121 & 1;
  sub_1C94670AC(__dst, v108 + 32);
  v109 = v106;
  v110 = sub_1C96A55A4();
  sub_1C96A5634();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v111 = sub_1C96A55A4();
  sub_1C96A5634();

  v112 = swift_allocObject();
  v113 = v119;
  v112[2] = v109;
  v112[3] = v113;
  v112[4] = v120;
  sub_1C9592FD8(v113);
  v114 = sub_1C96A55A4();
  sub_1C96A56B4();

  sub_1C94E1D90(v113);
  sub_1C9470AFC(v122, &unk_1EC3A6100);
  if (*(v123 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v124);
  __swift_destroy_boxed_opaque_existential_1Tm(v125);
  __swift_destroy_boxed_opaque_existential_1Tm(v126);
  __swift_destroy_boxed_opaque_existential_1Tm(v127);
  __swift_destroy_boxed_opaque_existential_1Tm(v128);
  __swift_destroy_boxed_opaque_existential_1Tm(v158);
  __swift_destroy_boxed_opaque_existential_1Tm(v129);
  return v109;
}

uint64_t sub_1C96697F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v29 = a4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D00);
  v9 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v25 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60C8);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D08);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - v15;
  v44[3] = sub_1C946B5D0(0, &qword_1EDB80340);
  v44[4] = &protocol witness table for NSUserDefaults;
  v44[0] = a1;
  v25 = 0x80000001C96D3DC0;
  sub_1C9469B6C(v44, v43);
  v32 = a2;
  sub_1C9469B6C(a2, v42);
  v31 = a3;
  sub_1C9469B6C(a3, v41);
  v30 = a5;
  sub_1C9469B6C(a5, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E78);
  v17 = swift_allocObject();
  sub_1C95F59D0(v40, v38);
  *(v17 + 136) = 0;
  v18 = *(*v17 + 168);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D10);
  __swift_storeEnumTagSinglePayload(v17 + v18, 1, 1, v19);
  *(v17 + *(*v17 + 176)) = 0;
  *(v17 + 16) = 0xD000000000000024;
  *(v17 + 24) = 0x80000001C96D3DF0;
  sub_1C9469B6C(v42, v17 + 32);
  sub_1C9469B6C(v41, v17 + 72);
  sub_1C9469B6C(v43, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC3A6D18);
  v20 = swift_allocObject();
  v35 = &type metadata for CoherenceContextProviderAdapter;
  v36 = &off_1F4906E50;
  v21 = swift_allocObject();
  *&v34 = v21;
  v22 = v38[1];
  *(v21 + 16) = v38[0];
  *(v21 + 32) = v22;
  *(v21 + 48) = v39;
  swift_defaultActor_initialize();
  v20[14] = 0x7461446863746177;
  v20[15] = 0xE900000000000061;
  v20[16] = 0x746144656E6F6870;
  v20[17] = 0xE900000000000061;
  sub_1C94670AC(v37, (v20 + 18));
  sub_1C94670AC(&v34, (v20 + 23));
  *(v17 + 112) = v20;
  *(v17 + 120) = 0xD000000000000024;
  *(v17 + 128) = v25;
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v19);
  v33 = v16;
  type metadata accessor for SyncedData();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8650], v27);
  sub_1C96A7494();
  (*(v26 + 32))(v17 + *(*v17 + 160), v13, v28);
  v23 = *(*v17 + 168);
  swift_beginAccess();
  sub_1C95F2258(v16, v17 + v23);
  swift_endAccess();
  if (v29)
  {
    sub_1C95EE778();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  sub_1C95F5A08(v40);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  sub_1C9470AFC(v16, &qword_1EC3A6D08);
  return v17;
}

uint64_t objectdestroy_6Tm()
{
  sub_1C96A6494();
  OUTLINED_FUNCTION_6();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C9669DEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C9669EA4()
{
  v0 = sub_1C948EFC4();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  return v0;
}

uint64_t sub_1C9669EDC()
{
  v0 = sub_1C9669EA4();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

void sub_1C9669F0C()
{
  v1 = v0;
  if (qword_1EDB7A130 != -1)
  {
    swift_once();
  }

  if (byte_1EDB7A138 == 1)
  {
    if (qword_1EDB77E58 != -1)
    {
      swift_once();
    }

    v2 = sub_1C96A6154();
    __swift_project_value_buffer(v2, qword_1EDB77E60);
    v3 = sub_1C96A6134();
    v4 = sub_1C96A76A4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C945E000, v3, v4, "Start sync to watch", v5, 2u);
      MEMORY[0x1CCA8E3D0](v5, -1, -1);
    }

    v6 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C96AA1C0;
    v8 = v1[3];
    *(inited + 32) = v1[2];
    *(inited + 40) = v8;
    sub_1C96A53C4();
    sub_1C94A3510();
    (*(v6 + 8))();

    v9 = sub_1C96A6134();
    v10 = sub_1C96A76A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C945E000, v9, v10, "Sync to watch completed", v11, 2u);
      MEMORY[0x1CCA8E3D0](v11, -1, -1);
    }
  }

  else
  {
    if (qword_1EDB77E58 != -1)
    {
      swift_once();
    }

    v12 = sub_1C96A6154();
    __swift_project_value_buffer(v12, qword_1EDB77E60);
    oslog = sub_1C96A6134();
    v13 = sub_1C96A76A4();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C945E000, oslog, v13, "Sync to watch failed due to not pair", v14, 2u);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
    }
  }
}

uint64_t sub_1C966A210(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1C966A264(v6, a2, v2, v4, v5);
}

uint64_t sub_1C966A264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v13, a2, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

void sub_1C966A374(uint64_t a1, void (*a2)(void))
{
  if (qword_1EDB80080 != -1)
  {
    swift_once();
  }

  v3 = sub_1C96A6154();
  __swift_project_value_buffer(v3, qword_1EDB80088);
  v4 = sub_1C96A6134();
  v5 = sub_1C96A76A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C945E000, v4, v5, "Units will change, posting notification", v6, 2u);
    MEMORY[0x1CCA8E3D0](v6, -1, -1);
  }

  sub_1C966A32C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();

  v8 = sub_1C96A6134();
  v9 = sub_1C96A76A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C945E000, v8, v9, "Units have changed, posting notification", v10, 2u);
    MEMORY[0x1CCA8E3D0](v10, -1, -1);
  }

  sub_1C966A350();
  if (a2)
  {
    a2();
  }
}

uint64_t sub_1C966A5D4()
{
  v41 = v0;
  v1 = *(v0 + 16);
  sub_1C96A50E4();
  v2 = *(v1 + 84);
  v3 = *(v1 + 85);
  v4 = *(v1 + 80);
  sub_1C9484F64(&v40);
  v5 = v40;
  v6 = BYTE1(v40);
  v7 = BYTE2(v40);
  LOBYTE(v1) = BYTE3(v40);
  v8 = BYTE4(v40);
  v9 = BYTE5(v40);
  sub_1C96A50F4();
  v37 = v4;
  v10 = v1;
  v38 = v2;
  v39 = v3;
  v11 = v8;
  v12 = v5;
  LOBYTE(v40) = v5;
  BYTE1(v40) = v6;
  BYTE2(v40) = v7;
  BYTE3(v40) = v1;
  BYTE4(v40) = v11;
  BYTE5(v40) = v9;
  if (sub_1C948822C(&v37, &v40))
  {
    if (qword_1EDB80080 != -1)
    {
      OUTLINED_FUNCTION_0_79();
    }

    v13 = sub_1C96A6154();
    __swift_project_value_buffer(v13, qword_1EDB80088);
    v14 = sub_1C96A6134();
    v15 = sub_1C96A76A4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C945E000, v14, v15, "SyncedUnitProvider: No new units in store", v16, 2u);
      OUTLINED_FUNCTION_26();
    }

    v17 = *(v36 + 8);

    return v17();
  }

  else
  {
    if (qword_1EDB80080 != -1)
    {
      OUTLINED_FUNCTION_0_79();
    }

    v19 = sub_1C96A6154();
    __swift_project_value_buffer(v19, qword_1EDB80088);
    v20 = sub_1C96A6134();
    v21 = sub_1C96A76A4();
    if (os_log_type_enabled(v20, v21))
    {
      swift_slowAlloc();
      v35 = OUTLINED_FUNCTION_7_49();
      v40 = v35;
      *v5 = 136446210;
      *(v36 + 40) = v5;
      *(v36 + 41) = v6;
      *(v36 + 42) = v7;
      *(v36 + 43) = v10;
      *(v36 + 44) = v11;
      *(v36 + 45) = v9;
      sub_1C9485C68();
      v22 = sub_1C96A7DB4();
      v24 = v9;
      v25 = v7;
      v26 = v6;
      v27 = v12;
      v28 = v11;
      v29 = sub_1C9484164(v22, v23, &v40);

      *(buf + 4) = v29;
      v11 = v28;
      v12 = v27;
      v6 = v26;
      v7 = v25;
      _os_log_impl(&dword_1C945E000, v20, v21, "SyncedUnitProvider: New units found in local storage. configuration=%{public}s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      v24 = v9;
    }

    v30 = *(v36 + 16);
    v31 = swift_task_alloc();
    *(v36 + 24) = v31;
    *(v31 + 16) = v30;
    *(v31 + 24) = v12;
    *(v31 + 25) = v6;
    *(v31 + 26) = v7;
    *(v31 + 27) = v10;
    *(v31 + 28) = v11;
    *(v31 + 29) = v24;
    v32 = swift_task_alloc();
    *(v36 + 32) = v32;
    *v32 = v36;
    v32[1] = sub_1C966A9A4;
    v33 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v32, 0, 0, 0xD000000000000019, 0x80000001C96D7800, sub_1C966ADF8, v31, v33);
  }
}

uint64_t sub_1C966A9A4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](OUTLINED_FUNCTION_0_17, 0, 0);
}

uint64_t sub_1C966AAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v14 = WORD2(a3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E90);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  sub_1C966A374(&v13, sub_1C966AE24);
}

uint64_t sub_1C966AC4C(uint64_t result, uint64_t a2)
{
  *(result + 80) = a2;
  *(result + 82) = BYTE2(a2);
  *(result + 83) = BYTE3(a2);
  *(result + 84) = BYTE4(a2);
  *(result + 85) = BYTE5(a2) & 1;
  return result;
}

uint64_t sub_1C966AC7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C966AD0C;

  return sub_1C966A5B4();
}

uint64_t sub_1C966AD0C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C966AE24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E90);

  return sub_1C966AC10();
}

uint64_t sub_1C966AEBC()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = (v9 - v8);
  *v10 = 0xD000000000000017;
  v10[1] = 0x80000001C96CEEC0;
  (*(v11 + 104))(v9 - v8, *MEMORY[0x1E69D6E98]);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7CC18 = result;
  return result;
}

uint64_t sub_1C966B0B4()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A7EA0 = result;
  return result;
}

uint64_t sub_1C966B2DC()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7440);
  v10[1] = 1;
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7ED8);
  *(swift_allocObject() + 16) = xmmword_1C96AB910;
  v10[0] = 1;
  sub_1C96A4F44();
  v10[0] = 2;
  sub_1C96A4F44();
  v10[0] = 3;
  sub_1C96A4F44();
  result = sub_1C96A4F54();
  qword_1EC3A7EA8 = result;
  return result;
}

uint64_t sub_1C966B62C()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7A998 = result;
  return result;
}

uint64_t sub_1C966B854()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5F20);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A7EB0 = result;
  return result;
}

uint64_t sub_1C966BA80()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7A9F8 = result;
  return result;
}

uint64_t sub_1C966BCA8()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[1] = 300;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7440);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7AA10 = result;
  return result;
}

uint64_t sub_1C966BED4()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[1] = 0x3FECCCCCCCCCCCCDLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7EC8);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7A9E8 = result;
  return result;
}

uint64_t sub_1C966C108()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A7EB8 = result;
  return result;
}

uint64_t sub_1C966C334()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A7EC0 = result;
  return result;
}

uint64_t sub_1C966C560()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7A9B8 = result;
  return result;
}

uint64_t sub_1C966C788()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[1] = 300;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7440);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7A9D0 = result;
  return result;
}

uint64_t sub_1C966C9B4()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[1] = 0x3FECCCCCCCCCCCCDLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7EC8);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7A9A8 = result;
  return result;
}

_BYTE *sub_1C966CC0C(_BYTE *result, int a2, int a3)
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

uint64_t LocationDisplayContextManager.__allocating_init(coherenceDataManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C94924FC(a1, v2 + 16);
  return v2;
}

uint64_t LocationDisplayContextManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1C966CD74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C966CDF8(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C966CE80()
{
  sub_1C94FB1A8(v0 + 16);
  OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t HashSaltProvider.salt.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_113();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

void HashSaltProvider.isSaltAvailable(completion:)(void (*a1)(uint64_t, void), uint64_t a2)
{
  sub_1C96A50E4();
  swift_beginAccess();
  v5 = v2[14];
  sub_1C96A53C4();
  sub_1C96A50F4();
  if (v5)
  {

    v6 = 1;
  }

  else
  {
    if (sub_1C94ABF18())
    {
      v7 = *__swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
      sub_1C96A3D04();
      sub_1C95E2F64(v7, a1, a2);
      return;
    }

    v6 = 0;
  }

  a1(v6, 0);
}

uint64_t HashSaltProvider.removeObserver(_:)(uint64_t a1)
{
  sub_1C96A50E4();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v3 = sub_1C953A244((v1 + 80), a1);
  v4 = sub_1C946D04C();
  if (v4 < v3)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1C953AAB8(v3, v4);
    swift_endAccess();
    return sub_1C96A50F4();
  }

  return result;
}

Swift::String __swiftcall HashSaltProvider.generateSalt()()
{
  v1 = v0;
  v2 = sub_1C96A4A94();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  sub_1C96A50E4();
  OUTLINED_FUNCTION_113();
  v9 = v0[14];
  if (v9)
  {
    v10 = v0[13];
    v11 = qword_1EDB7ABF8;
    sub_1C96A53C4();
    if (v11 != -1)
    {
      OUTLINED_FUNCTION_0_76();
    }

    v12 = sub_1C96A6154();
    __swift_project_value_buffer(v12, qword_1EDB7AC00);
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C945E000, v13, v14, "Skip generating salt due to existing one found.", v15, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {
    v32[0] = 0x5F544C4153;
    v32[1] = 0xE500000000000000;
    sub_1C96A4A84();
    v16 = sub_1C96A4A64();
    v18 = v17;
    (*(v4 + 8))(v8, v2);
    MEMORY[0x1CCA8CB00](v16, v18);

    v10 = 0x5F544C4153;
    v9 = 0xE500000000000000;
    v20 = v0[11];
    v19 = v0[12];
    v21 = qword_1EDB7ABF8;
    sub_1C96A53C4();
    sub_1C96A53C4();
    if (v21 != -1)
    {
      OUTLINED_FUNCTION_0_76();
    }

    v22 = sub_1C96A6154();
    __swift_project_value_buffer(v22, qword_1EDB7AC00);
    sub_1C96A53C4();
    v23 = sub_1C96A6134();
    v24 = sub_1C96A76A4();

    if (os_log_type_enabled(v23, v24))
    {
      v31 = v20;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v25 = 141558275;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      sub_1C96A53C4();
      v27 = sub_1C9484164(0x5F544C4153, 0xE500000000000000, v32);

      *(v25 + 14) = v27;
      _os_log_impl(&dword_1C945E000, v23, v24, "Generate a new salt %{private,mask.hash}s.", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_26();
      v20 = v31;
      OUTLINED_FUNCTION_26();
    }

    __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    sub_1C96A50E4();
    sub_1C95E2B70(v20, v19, 0x5F544C4153, 0xE500000000000000);
    sub_1C96A50F4();

    v1[13] = 0x5F544C4153;
    v1[14] = 0xE500000000000000;
    sub_1C96A53C4();
  }

  sub_1C96A50F4();
  v28 = v10;
  v29 = v9;
  result._object = v29;
  result._countAndFlagsBits = v28;
  return result;
}

uint64_t HashSaltProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return v0;
}

uint64_t HashSaltProvider.__deallocating_deinit()
{
  HashSaltProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

void sub_1C966D588()
{
  v1 = sub_1C96A6564();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_113();
  if (v0[14] || (sub_1C94ABEC0(), !v21))
  {
    if (qword_1EDB7ABF8 != -1)
    {
      OUTLINED_FUNCTION_0_76();
    }

    v15 = sub_1C96A6154();
    __swift_project_value_buffer(v15, qword_1EDB7AC00);
    v16 = sub_1C96A6134();
    v17 = sub_1C96A7684();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C945E000, v16, v17, "No salt found in HashSaltProvider", v18, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {
    v22 = v19;
    v23 = v20;

    sub_1C96A50E4();
    swift_beginAccess();
    v28 = v3;
    v24 = v0[10];
    v0[13] = v22;
    v0[14] = v23;
    sub_1C96A53C4();

    sub_1C96A50F4();
    v25 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_54();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    aBlock[4] = sub_1C966DA94;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C946FCF8;
    aBlock[3] = &block_descriptor_21;
    v27 = _Block_copy(aBlock);
    sub_1C96A3D04();
    sub_1C96A6594();
    sub_1C94D19D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
    sub_1C94D1A34();
    sub_1C96A79E4();
    MEMORY[0x1CCA8D100](0, v14, v7, v27);
    _Block_release(v27);
    (*(v28 + 8))(v7, v1);
    (*(v10 + 8))(v14, v8);
  }
}

uint64_t sub_1C966D914(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    result = sub_1C946D04C();
    v5 = result;
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1CCA8D440](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        result = sub_1C96A3D04();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1C966CDF8(v4);
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t GeocodeManager.reverseGeocode(coordinate:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C966DAC4, 0, 0);
}

uint64_t sub_1C966DAC4()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = type metadata accessor for Location();
  *v5 = v0;
  v5[1] = sub_1C966DBD0;
  v7 = v0[2];

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD00000000000001BLL, 0x80000001C96D5F50, sub_1C966DFCC, v4, v6);
}

uint64_t sub_1C966DBD0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C966DD0C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1C966DD0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C966DD70(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v21 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  type metadata accessor for Location();
  sub_1C96A5784();
  v20 = *(v9 + 16);
  v20(v11, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  v19 = *(v9 + 32);
  v19(v13 + v12, v11, v8);
  v14 = sub_1C96A55A4();
  v18 = sub_1C96A5644();

  v20(v11, v21, v8);
  v15 = swift_allocObject();
  v19(v15 + v12, v11, v8);
  v16 = sub_1C96A55A4();
  sub_1C96A5674();
}

uint64_t sub_1C966E00C(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C9489760(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BF0);
  return sub_1C96A7394();
}

uint64_t sub_1C966E13C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t NotificationSubscription.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for NotificationSubscription(0);
  v4 = *(v1 + *(result + 24));
  v5 = *(v1 + *(result + 28));
  v6 = v4 & 1;
  if (v5)
  {
    v7 = v4 & 1 | 2;
  }

  else
  {
    v7 = v4 & 1;
  }

  if (v5 == 2)
  {
    v7 = v6;
  }

  *a1 = v7;
  return result;
}

uint64_t NotificationSubscription.init(location:locationOverride:precipitation:severe:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v83 = a3;
  v80 = a2;
  v82 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v7);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v73 - v9;
  v10 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v89 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v88 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v16 = OUTLINED_FUNCTION_7(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v73 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  v25 = OUTLINED_FUNCTION_7(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v87 = &v73 - v30;
  v31 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_2();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v73 - v35;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v37);
  v39 = (&v73 - v38);
  OUTLINED_FUNCTION_1_78();
  v81 = a1;
  sub_1C9489B58();
  v40 = *(v39 + 48) == 1;
  v84 = a4;
  if (v40)
  {
  }

  else
  {
    v41 = sub_1C96A7DE4();

    if ((v41 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v42 = v87;
  sub_1C96A4DB4();
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v10);
  v43 = sub_1C96A4A54();
  v85 = v23;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v43);
  v44 = *(v39 + v31[11]);
  v45 = v44;
  if (!v44)
  {
    v45 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v39 + 4) longitude:*(v39 + 5)];
  }

  v76 = v45;
  memcpy(__dst, v39, sizeof(__dst));
  sub_1C955FEC0();
  OUTLINED_FUNCTION_23_1(v28, 1, v10);
  v77 = v10;
  if (v40)
  {
    (*(v89 + 16))(v88, v39 + v31[5], v10);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v10);
    v47 = v44;
    v49 = v86;
    sub_1C95087DC(__dst, v90);
    if (EnumTagSinglePayload != 1)
    {
      sub_1C9470AFC(v28, &unk_1EC3A5F60);
    }
  }

  else
  {
    (*(v89 + 32))(v88, v28, v10);
    v48 = v44;
    sub_1C95087DC(__dst, v90);
    v49 = v86;
  }

  sub_1C955FEC0();
  OUTLINED_FUNCTION_23_1(v19, 1, v43);
  if (v40)
  {
    sub_1C955FEC0();
    OUTLINED_FUNCTION_23_1(v19, 1, v43);
    if (!v40)
    {
      sub_1C9470AFC(v19, &unk_1EC3A5430);
    }
  }

  else
  {
    (*(*(v43 - 8) + 32))(v49, v19, v43);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v43);
  }

  v50 = v31[8];
  v51 = (v39 + v31[7]);
  v52 = v51[1];
  v74 = *v51;
  v53 = *(v39 + v50 + 8);
  v75 = *(v39 + v50);
  v54 = v31[10];
  v55 = (v39 + v31[9]);
  v57 = *v55;
  v56 = v55[1];
  v58 = *(v39 + v54);
  v59 = *(v39 + v54 + 8);
  v60 = v31[11];
  *&v36[v60] = 0;
  memcpy(v36, __dst, 0x48uLL);
  (*(v89 + 32))(&v36[v31[5]], v88, v77);
  sub_1C949E15C();
  v61 = &v36[v31[7]];
  *v61 = v74;
  *(v61 + 1) = v52;
  v62 = &v36[v31[8]];
  *v62 = v75;
  *(v62 + 1) = v53;
  v63 = &v36[v31[9]];
  *v63 = v57;
  *(v63 + 1) = v56;
  v64 = &v36[v31[10]];
  *v64 = v58;
  *(v64 + 1) = v59;
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C9470AFC(v85, &unk_1EC3A5430);
  sub_1C9470AFC(v87, &unk_1EC3A5F60);
  OUTLINED_FUNCTION_2_73();
  sub_1C948EAF4(v39, v65);
  *&v36[v60] = v76;
  sub_1C949A840();
  sub_1C949A840();
LABEL_16:
  v66 = v39[1];
  v67 = v82;
  *v82 = *v39;
  v67[1] = v66;
  OUTLINED_FUNCTION_1_78();
  v68 = v78;
  sub_1C9489B58();
  v69 = v80;
  v70 = v79;
  sub_1C955FEC0();
  v71 = type metadata accessor for NotificationSubscription(0);
  sub_1C96A53C4();
  NotificationSubscription.Location.init(location:locationOverride:)(v68, v70);
  sub_1C9470AFC(v69, &qword_1EC3A5450);
  sub_1C948EAF4(v81, type metadata accessor for Location);
  result = sub_1C948EAF4(v39, type metadata accessor for Location);
  *(v67 + *(v71 + 24)) = v83;
  *(v67 + *(v71 + 28)) = v84;
  return result;
}

void __swiftcall KeyValueStoreNotificationSubscription.with(hashedLocationId:hashedLocationOverrideId:precipitation:severe:)(WeatherCore::KeyValueStoreNotificationSubscription *__return_ptr retstr, Swift::String_optional hashedLocationId, Swift::String_optional hashedLocationOverrideId, Swift::Bool_optional precipitation, Swift::Bool_optional severe)
{
  object = hashedLocationOverrideId.value._object;
  countAndFlagsBits = hashedLocationOverrideId.value._countAndFlagsBits;
  v10 = hashedLocationId.value._countAndFlagsBits;
  v21 = *(v5 + 16);
  v12 = *(v5 + 32);
  v13 = *(v5 + 33);
  if (hashedLocationId.value._object)
  {
    v14 = hashedLocationId.value._object;
  }

  else
  {
    v10 = *v5;
    v14 = *(v5 + 8);
    v15 = *(v5 + 33);
    sub_1C96A53C4();
    v13 = v15;
  }

  v16 = object;
  if (!object)
  {
    v17 = v13;
    v18 = sub_1C96A53C4();
    v13 = v17;
    countAndFlagsBits = v21;
    v16 = v18;
  }

  if (precipitation.value == 2)
  {
    value = v12;
  }

  else
  {
    value = precipitation.value;
  }

  retstr->hashedLocationId._countAndFlagsBits = v10;
  retstr->hashedLocationId._object = v14;
  if (severe.value == 2)
  {
    v20 = v13;
  }

  else
  {
    v20 = severe.value;
  }

  retstr->hashedLocationOverrideId._countAndFlagsBits = countAndFlagsBits;
  retstr->hashedLocationOverrideId._object = v16;
  retstr->precipitation.value = value;
  retstr->severe.value = v20;
  sub_1C96A53C4();

  sub_1C96A53C4();
}

uint64_t static KeyValueStoreNotificationSubscription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  v10 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v10 && (sub_1C96A7DE4() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v6 || v3 != v7)
  {
    OUTLINED_FUNCTION_11();
    if ((sub_1C96A7DE4() & 1) == 0)
    {
      return 0;
    }
  }

  if (v4 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }

LABEL_16:
    if (v5 == 2)
    {
      if (v9 != 2)
      {
        return 0;
      }
    }

    else if (v9 == 2 || ((v9 ^ v5) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v8 != 2 && ((v8 ^ v4) & 1) == 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1C966ECD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C96D7D60 == a2;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001C96D7D80 == a2;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x657265766573 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C96A7DE4();

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

unint64_t sub_1C966EE3C(char a1)
{
  result = 0x7469706963657270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      return result;
    case 3:
      result = 0x657265766573;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C966EEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C966ECD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C966EF04(uint64_t a1)
{
  v2 = sub_1C966F660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C966EF40(uint64_t a1)
{
  v2 = sub_1C966F660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KeyValueStoreNotificationSubscription.encode(to:)()
{
  OUTLINED_FUNCTION_119();
  v15 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7EE0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = v10;
  v12[1] = *(v0 + 33);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C966F660();
  sub_1C96A7F54();
  v11 = v15;
  sub_1C96A7D24();
  if (!v11)
  {
    OUTLINED_FUNCTION_19_30();
    sub_1C96A7D24();
    OUTLINED_FUNCTION_28_21();
    sub_1C96A7CF4();
    OUTLINED_FUNCTION_26_17();
    sub_1C96A7CF4();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_118();
}

uint64_t KeyValueStoreNotificationSubscription.hash(into:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 33);
  sub_1C96A7144();
  sub_1C96A7144();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_13_22();
  }

  sub_1C96A7F04();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_13_22();
  }

  return sub_1C96A7F04();
}

uint64_t KeyValueStoreNotificationSubscription.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 33);
  sub_1C96A7EE4();
  sub_1C96A7144();
  sub_1C96A7144();
  if (v1 != 2)
  {
    sub_1C96A7F04();
  }

  sub_1C96A7F04();
  if (v2 != 2)
  {
    sub_1C96A7F04();
  }

  sub_1C96A7F04();
  return sub_1C96A7F24();
}

void KeyValueStoreNotificationSubscription.init(from:)()
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7EF0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C966F660();
  sub_1C96A7F44();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_17_36();
    v6 = sub_1C96A7C84();
    v14 = v7;
    OUTLINED_FUNCTION_19_30();
    OUTLINED_FUNCTION_17_36();
    v12 = sub_1C96A7C84();
    v13 = v8;
    OUTLINED_FUNCTION_28_21();
    v15 = sub_1C96A7C54();
    OUTLINED_FUNCTION_26_17();
    OUTLINED_FUNCTION_17_36();
    v9 = sub_1C96A7C54();
    v10 = OUTLINED_FUNCTION_3_30();
    v11(v10);
    *v4 = v6;
    *(v4 + 8) = v14;
    *(v4 + 16) = v12;
    *(v4 + 24) = v13;
    *(v4 + 32) = v15;
    *(v4 + 33) = v9;
    sub_1C96A53C4();
    sub_1C96A53C4();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  OUTLINED_FUNCTION_118();
}

uint64_t sub_1C966F4CC()
{
  sub_1C96A7EE4();
  KeyValueStoreNotificationSubscription.hash(into:)();
  return sub_1C96A7F24();
}

unint64_t sub_1C966F660()
{
  result = qword_1EC3A7EE8;
  if (!qword_1EC3A7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7EE8);
  }

  return result;
}

WeatherCore::NotificationSubscription::Kind sub_1C966F6DC@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = NotificationSubscription.Kind.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C966F71C@<X0>(uint64_t *a1@<X8>)
{
  result = NotificationSubscription.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static NotificationSubscription.Location.current.getter()
{
  if (qword_1EDB7ADF0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Location();
  __swift_project_value_buffer(v0, qword_1EDB7ADF8);
  type metadata accessor for NotificationSubscription.Location(0);
  sub_1C9489B58();
  return sub_1C9489B58();
}

uint64_t NotificationSubscription.Location.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  v21 = type metadata accessor for NotificationSubscription.Location(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14();
  LocationModel.location.getter();
  OUTLINED_FUNCTION_23_1(v15, 1, v16);
  if (v26)
  {
    OUTLINED_FUNCTION_12_39();
    sub_1C9470AFC(v15, &qword_1EC3A5450);
    v23 = 1;
    v24 = v31;
  }

  else
  {
    OUTLINED_FUNCTION_0_106();
    sub_1C949A840();
    LocationModel.locationOfInterest.getter();
    OUTLINED_FUNCTION_12_39();
    v25 = type metadata accessor for LocationOfInterest();
    OUTLINED_FUNCTION_23_1(v4, 1, v25);
    if (v26)
    {
      sub_1C9470AFC(v4, &qword_1EC3A5930);
      v27 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_1_78();
      sub_1C9489B58();
      sub_1C948EAF4(v4, type metadata accessor for LocationOfInterest);
      v27 = 0;
    }

    v24 = v31;
    __swift_storeEnumTagSinglePayload(v12, v27, 1, v16);
    OUTLINED_FUNCTION_1_78();
    sub_1C9489B58();
    sub_1C949E15C();
    OUTLINED_FUNCTION_23_1(v9, 1, v16);
    if (v26)
    {
      OUTLINED_FUNCTION_0_106();
      sub_1C949A840();
      OUTLINED_FUNCTION_23_1(v9, 1, v16);
      if (!v26)
      {
        sub_1C9470AFC(v9, &qword_1EC3A5450);
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_73();
      sub_1C948EAF4(v20, v28);
      OUTLINED_FUNCTION_0_106();
      sub_1C949A840();
    }

    OUTLINED_FUNCTION_0_106();
    sub_1C949A840();
    OUTLINED_FUNCTION_8_47();
    sub_1C949A840();
    v23 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v24, v23, 1, v21);
}

uint64_t sub_1C966FC40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C96D3170 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C96A7DE4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C966FD10(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_1C966FD4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x657265766573 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C96A7DE4();

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

uint64_t sub_1C966FEB0(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461636F6CLL;
      break;
    case 2:
      result = 0x7469706963657270;
      break;
    case 3:
      result = 0x657265766573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C966FF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C966FC40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C966FF70(uint64_t a1)
{
  v2 = sub_1C9670C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C966FFAC(uint64_t a1)
{
  v2 = sub_1C9670C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C966FFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C966FD4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9670018(uint64_t a1)
{
  v2 = sub_1C9670648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9670054(uint64_t a1)
{
  v2 = sub_1C9670648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static NotificationSubscription.== infix(_:_:)()
{
  OUTLINED_FUNCTION_40_2();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (v3 || (v4 = sub_1C96A7DE4(), result = 0, (v4 & 1) != 0))
  {
    v6 = type metadata accessor for NotificationSubscription(0);
    v7 = *(v6 + 24);
    v8 = *(v6 + 28);
    v9 = *(v1 + v7);
    v10 = *(v1 + v8);
    v11 = v9 & 1;
    if (v10)
    {
      v12 = v9 & 1 | 2;
    }

    else
    {
      v12 = v9 & 1;
    }

    if (v10 == 2)
    {
      v12 = v11;
    }

    v13 = *(v0 + v7);
    v14 = *(v0 + v8);
    v15 = v13 & 1;
    if (v14)
    {
      v16 = v13 & 1 | 2;
    }

    else
    {
      v16 = v13 & 1;
    }

    if (v14 == 2)
    {
      v16 = v15;
    }

    return v12 == v16;
  }

  return result;
}

uint64_t NotificationSubscription.hash(into:)()
{
  sub_1C96A7144();
  v1 = type metadata accessor for NotificationSubscription(0);
  v2 = (v0 + v1[5]);
  memcpy(__dst, v2, sizeof(__dst));
  Location.Identifier.hash(into:)();
  OUTLINED_FUNCTION_20_30();
  memcpy(__dst, &v2[v3], sizeof(__dst));
  Location.Identifier.hash(into:)();
  if (*(v0 + v1[6]) != 2)
  {
    OUTLINED_FUNCTION_13_22();
  }

  sub_1C96A7F04();
  if (*(v0 + v1[7]) != 2)
  {
    OUTLINED_FUNCTION_13_22();
  }

  return sub_1C96A7F04();
}

uint64_t NotificationSubscription.hashValue.getter()
{
  sub_1C96A7EE4();
  NotificationSubscription.hash(into:)();
  return sub_1C96A7F24();
}

uint64_t sub_1C967026C()
{
  sub_1C96A7EE4();
  NotificationSubscription.hash(into:)();
  return sub_1C96A7F24();
}

uint64_t static NotificationSubscription.Location.== infix(_:_:)()
{
  OUTLINED_FUNCTION_40_2();
  if ((static Location.== infix(_:_:)(v2, v3) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_20_30();

  return static Location.== infix(_:_:)(v1 + v4, v0 + v4);
}

uint64_t NotificationSubscription.Location.hash(into:)()
{
  memcpy(__dst, v0, sizeof(__dst));
  Location.Identifier.hash(into:)();
  OUTLINED_FUNCTION_20_30();
  memcpy(__dst, &v0[v1], sizeof(__dst));
  return Location.Identifier.hash(into:)();
}

uint64_t NotificationSubscription.Location.hashValue.getter()
{
  sub_1C96A7EE4();
  memcpy(v3, v0, sizeof(v3));
  Location.Identifier.hash(into:)();
  OUTLINED_FUNCTION_20_30();
  memcpy(v3, &v0[v1], sizeof(v3));
  Location.Identifier.hash(into:)();
  return sub_1C96A7F24();
}

uint64_t sub_1C96703EC(uint64_t a1, uint64_t a2)
{
  sub_1C96A7EE4();
  memcpy(v5, v2, sizeof(v5));
  Location.Identifier.hash(into:)();
  memcpy(v5, &v2[*(a2 + 20)], sizeof(v5));
  Location.Identifier.hash(into:)();
  return sub_1C96A7F24();
}

uint64_t NotificationSubscription.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7EF8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9670648();
  sub_1C96A7F54();
  v12[15] = 0;
  OUTLINED_FUNCTION_24_0();
  sub_1C96A7D24();
  if (!v1)
  {
    type metadata accessor for NotificationSubscription(0);
    OUTLINED_FUNCTION_19_30();
    type metadata accessor for NotificationSubscription.Location(0);
    OUTLINED_FUNCTION_10_44();
    sub_1C96709AC(v9, v10);
    OUTLINED_FUNCTION_24_0();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_28_21();
    OUTLINED_FUNCTION_24_0();
    sub_1C96A7CF4();
    OUTLINED_FUNCTION_26_17();
    OUTLINED_FUNCTION_24_0();
    sub_1C96A7CF4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C9670648()
{
  result = qword_1EC3A7F00;
  if (!qword_1EC3A7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F00);
  }

  return result;
}

void NotificationSubscription.init(from:)()
{
  OUTLINED_FUNCTION_119();
  v22 = v0;
  v2 = v1;
  v21[1] = v3;
  type metadata accessor for NotificationSubscription.Location(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v21[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7F10);
  OUTLINED_FUNCTION_1();
  v21[2] = v5;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = (v12 - v11);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C9670648();
  v21[3] = v8;
  v14 = v22;
  sub_1C96A7F44();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    *v13 = sub_1C96A7C84();
    v13[1] = v15;
    v22 = v15;
    OUTLINED_FUNCTION_19_30();
    OUTLINED_FUNCTION_10_44();
    sub_1C96709AC(v16, v17);
    sub_1C96A7CB4();
    OUTLINED_FUNCTION_8_47();
    sub_1C949A840();
    OUTLINED_FUNCTION_28_21();
    *(v13 + *(v9 + 24)) = sub_1C96A7C54();
    OUTLINED_FUNCTION_26_17();
    v18 = sub_1C96A7C54();
    v19 = OUTLINED_FUNCTION_27_18();
    v20(v19);
    *(v13 + *(v9 + 28)) = v18;
    sub_1C9489B58();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_1C948EAF4(v13, type metadata accessor for NotificationSubscription);
  }

  OUTLINED_FUNCTION_118();
}

uint64_t sub_1C96709AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NotificationSubscription.Location.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7F20);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9670C50();
  sub_1C96A7F54();
  v12[15] = 0;
  type metadata accessor for Location();
  OUTLINED_FUNCTION_9_43();
  sub_1C96709AC(v9, v10);
  OUTLINED_FUNCTION_22_25();
  if (!v1)
  {
    type metadata accessor for NotificationSubscription.Location(0);
    v12[14] = 1;
    OUTLINED_FUNCTION_22_25();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C9670C50()
{
  result = qword_1EC3A7F28;
  if (!qword_1EC3A7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F28);
  }

  return result;
}

void NotificationSubscription.Location.init(from:)()
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  v22 = v3;
  v26 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  v24 = v20 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7F30);
  OUTLINED_FUNCTION_1();
  v23 = v7;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for NotificationSubscription.Location(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C9670C50();
  sub_1C96A7F44();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    v20[1] = v9;
    v21 = v13;
    OUTLINED_FUNCTION_9_43();
    sub_1C96709AC(v14, v15);
    sub_1C96A7CB4();
    OUTLINED_FUNCTION_0_106();
    sub_1C949A840();
    OUTLINED_FUNCTION_19_30();
    sub_1C96A7CB4();
    v16 = OUTLINED_FUNCTION_29_15();
    v17(v16);
    v18 = v21;
    OUTLINED_FUNCTION_0_106();
    sub_1C949A840();
    sub_1C9489B58();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_7_50();
    sub_1C948EAF4(v18, v19);
  }

  OUTLINED_FUNCTION_118();
}

unint64_t NotificationSubscription.Kind.description.getter()
{
  result = 1701736270;
  switch(*v0)
  {
    case 0:
      return result;
    case 1:
      result = 0x7469706963657250;
      break;
    case 2:
      result = 0x657265766553;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

unint64_t sub_1C9671040()
{
  result = qword_1EC3A7F38;
  if (!qword_1EC3A7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F38);
  }

  return result;
}

unint64_t sub_1C9671098()
{
  result = qword_1EC3A7F40;
  if (!qword_1EC3A7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F40);
  }

  return result;
}

unint64_t sub_1C96710F0()
{
  result = qword_1EC3A7F48;
  if (!qword_1EC3A7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F48);
  }

  return result;
}

unint64_t sub_1C9671144()
{
  result = qword_1EDB795E8[0];
  if (!qword_1EDB795E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB795E8);
  }

  return result;
}

unint64_t sub_1C967119C()
{
  result = qword_1EDB795E0;
  if (!qword_1EDB795E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB795E0);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C9671298(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1C96712D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationSubscription.Location.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C9671468(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9671548()
{
  result = qword_1EC3A7F60;
  if (!qword_1EC3A7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F60);
  }

  return result;
}

unint64_t sub_1C96715A0()
{
  result = qword_1EC3A7F68;
  if (!qword_1EC3A7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F68);
  }

  return result;
}

unint64_t sub_1C96715F8()
{
  result = qword_1EC3A7F70;
  if (!qword_1EC3A7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F70);
  }

  return result;
}

unint64_t sub_1C9671650()
{
  result = qword_1EC3A7F78;
  if (!qword_1EC3A7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F78);
  }

  return result;
}

unint64_t sub_1C96716A8()
{
  result = qword_1EC3A7F80;
  if (!qword_1EC3A7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F80);
  }

  return result;
}

unint64_t sub_1C9671700()
{
  result = qword_1EC3A7F88;
  if (!qword_1EC3A7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F88);
  }

  return result;
}

unint64_t sub_1C9671758()
{
  result = qword_1EC3A7F90;
  if (!qword_1EC3A7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F90);
  }

  return result;
}

unint64_t sub_1C96717B0()
{
  result = qword_1EC3A7F98;
  if (!qword_1EC3A7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7F98);
  }

  return result;
}

unint64_t sub_1C9671808()
{
  result = qword_1EC3A7FA0;
  if (!qword_1EC3A7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7FA0);
  }

  return result;
}

uint64_t LegacyNotificationSubscriptionManager.__allocating_init(notificationStore:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t LegacyNotificationSubscriptionManager.init(notificationStore:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t LegacyNotificationSubscriptionManager.deinit()
{

  return v0;
}

uint64_t LegacyNotificationSubscriptionManager.__deallocating_deinit()
{
  LegacyNotificationSubscriptionManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void LegacyNotificationSubscriptionManager.removeObserver(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  sub_1C96A53C4();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v4 + 32 + 16 * v6);
  while (1)
  {
    if (v5 == v6)
    {

      *(v2 + 24) = v7;

      return;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    ++v6;
    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if (v10 != a1)
    {
      v11 = *(v9 - 1);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C9522C18();
      }

      v12 = *(v7 + 16);
      if (v12 >= *(v7 + 24) >> 1)
      {
        sub_1C9522C18();
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t LegacyNotificationSubscriptionManager.subscribe(to:for:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v0;
  v4 = v3;
  v1[45] = v5;
  v1[46] = v2;
  v1[47] = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48);
  OUTLINED_FUNCTION_7(v6);
  v1[48] = OUTLINED_FUNCTION_19_12();
  v1[49] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v7);
  v1[50] = OUTLINED_FUNCTION_19_12();
  v1[51] = swift_task_alloc();
  v8 = type metadata accessor for Location();
  v1[52] = v8;
  OUTLINED_FUNCTION_7(v8);
  v1[53] = OUTLINED_FUNCTION_19_12();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v9 = type metadata accessor for NotificationSubscription(0);
  v1[56] = v9;
  OUTLINED_FUNCTION_7(v9);
  v1[57] = OUTLINED_FUNCTION_12_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  OUTLINED_FUNCTION_7(v10);
  v1[58] = OUTLINED_FUNCTION_19_12();
  v1[59] = swift_task_alloc();
  v11 = type metadata accessor for NotificationSubscription.Location(0);
  v1[60] = v11;
  OUTLINED_FUNCTION_7(v11);
  v12 = OUTLINED_FUNCTION_12_4();
  v13 = *v4;
  v1[61] = v12;
  v1[62] = v13;
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C9671C50()
{
  OUTLINED_FUNCTION_49();
  v34 = v0;
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7AC90);
  v3 = OUTLINED_FUNCTION_11();
  sub_1C9677780(v3, v4, v5);
  v6 = sub_1C96A6134();
  v7 = sub_1C96A7684();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[62];
    OUTLINED_FUNCTION_15_0();
    v9 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v9 = 136446723;
    if (v8 > 3)
    {
      v10 = OUTLINED_FUNCTION_17_37();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_24_23();
      switch(v11)
      {
        case 1:
          v10 = OUTLINED_FUNCTION_10_45();
          break;
        case 2:
          v10 = OUTLINED_FUNCTION_23_24();
          break;
        case 3:
          v10 = OUTLINED_FUNCTION_22_26();
          break;
        default:
          break;
      }
    }

    v14 = v0[61];
    v15 = sub_1C9484164(v10, v1, &v33);

    *(v9 + 4) = v15;
    OUTLINED_FUNCTION_12_40();
    v16 = *v14;
    v17 = v14[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_8_48();
    sub_1C96776E0(v14, v18);
    v19 = sub_1C9484164(v16, v17, &v33);

    *(v9 + 24) = v19;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v20, v21, v22, v23, v9, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0](v24);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0](v25);
  }

  else
  {
    v12 = v0[61];

    OUTLINED_FUNCTION_8_48();
    sub_1C96776E0(v12, v13);
  }

  v26 = v0[45];
  v0[63] = *v26;
  v0[64] = v26[1];
  v0[65] = sub_1C96A5E34();
  sub_1C96A5E24();
  OUTLINED_FUNCTION_2_74();
  sub_1C9677698(v27, v28);
  sub_1C96A7374();
  v29 = OUTLINED_FUNCTION_4_16();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_1C9671EEC()
{
  v1 = *(v0 + 472);

  OUTLINED_FUNCTION_13_43();
  *(v0 + 528) = v1;
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C9671F88()
{
  v53 = v0;
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[56];
  sub_1C96A5444();
  v4 = objc_autoreleasePoolPush();
  sub_1C9470AA0(v1, v2, &qword_1EC3A58D0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C9470AFC(v0[58], &qword_1EC3A58D0);
  }

  else
  {
    v5 = v0[62];
    v6 = v0[57];
    v7 = v0[56];
    OUTLINED_FUNCTION_7_51();
    sub_1C949A898(v8, v6, v9);
    v10 = *(v7 + 28);
    v11 = *(v6 + *(v7 + 24));
    v12 = *(v6 + v10);
    OUTLINED_FUNCTION_1_79();
    sub_1C96776E0(v6, v13);
    v14 = v11 & 1;
    v15 = v14 | 2;
    if ((v12 & 1) == 0)
    {
      v15 = v11 & 1;
    }

    if (v12 != 2)
    {
      v14 = v15;
    }

    if (v14 == v5)
    {
      goto LABEL_8;
    }
  }

  v50 = v4;
  v26 = v0[62];
  v28 = v0[59];
  v27 = v0[60];
  v30 = v0[54];
  v29 = v0[55];
  v31 = v0[51];
  v32 = v0[52];
  v33 = v0[50];
  v34 = v0[45];
  sub_1C967295C(v26, v28);
  sub_1C9672A6C(v26, v28);
  sub_1C9677780(v34, v29, type metadata accessor for Location);
  sub_1C9677780(v34 + *(v27 + 20), v31, type metadata accessor for Location);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
  sub_1C9677780(v29, v30, type metadata accessor for Location);
  sub_1C9677698(&qword_1EDB7D0B8, type metadata accessor for Location);
  sub_1C9677698(&qword_1EDB7ADD8, type metadata accessor for Location);
  sub_1C96A53C4();
  sub_1C96A6284();
  sub_1C9470AA0(v31, v33, &qword_1EC3A5450);
  if (__swift_getEnumTagSinglePayload(v33, 1, v32) == 1)
  {
    v35 = v0[52];
    v36 = v0[50];
    sub_1C9677780(v0[55], v0[53], type metadata accessor for Location);
    if (__swift_getEnumTagSinglePayload(v36, 1, v35) != 1)
    {
      sub_1C9470AFC(v0[50], &qword_1EC3A5450);
    }
  }

  else
  {
    sub_1C949A898(v0[50], v0[53], type metadata accessor for Location);
  }

  v37 = v0[66];
  v38 = v0[55];
  v39 = v0[51];
  sub_1C96A6284();
  OUTLINED_FUNCTION_11();
  sub_1C95BBA28();
  sub_1C9470AFC(v39, &qword_1EC3A5450);
  sub_1C96776E0(v38, type metadata accessor for Location);
  v41 = __src[0];
  v40 = __src[1];
  v42 = __src[2];
  v43 = __src[3];
  v44 = __src[4];
  v45 = __src[5];
  v51 = __src[6];
  NotificationStore.subscriptions.getter();
  if (v37)
  {

    v46 = v0[59];
    objc_autoreleasePoolPop(v50);
    sub_1C96A5434();

    sub_1C9470AFC(v46, &qword_1EC3A58D0);
    OUTLINED_FUNCTION_20_31();

    OUTLINED_FUNCTION_17();
    goto LABEL_21;
  }

  sub_1C96A6304();

  v0[29] = __src[0];
  v0[30] = v40;
  v0[31] = v42;
  v0[32] = v43;
  v0[33] = v44;
  v0[34] = v45;
  v0[35] = v51;
  sub_1C96A62A4();

  __src[0] = v41;
  __src[1] = v40;
  __src[2] = v42;
  __src[3] = v43;
  __src[4] = v44;
  __src[5] = v45;
  __src[6] = v51;
  sub_1C9672B7C(__src);

  v4 = v50;
LABEL_8:
  v16 = v0[46];
  objc_autoreleasePoolPop(v4);
  swift_beginAccess();
  v17 = *(v16 + 24);
  v18 = *(v17 + 16);
  if (v18)
  {
    memcpy(v0 + 2, v0[45], 0x48uLL);
    sub_1C96A53C4();
    v19 = v18 - 1;
    for (i = (v17 + 40); ; i += 2)
    {
      v21 = v0[46];
      v22 = v0[47];
      v23 = *i;
      ObjectType = swift_getObjectType();
      v0[39] = v22;
      v0[40] = &protocol witness table for LegacyNotificationSubscriptionManager;
      v0[36] = v21;
      OUTLINED_FUNCTION_28_0(__src);
      v25 = *(v23 + 8);
      swift_unknownObjectRetain();
      sub_1C96A3D04();
      sub_1C95087DC((v0 + 2), (v0 + 20));
      v25(v0 + 36, __src, ObjectType, v23);
      swift_unknownObjectRelease();
      memcpy(v0 + 11, __src, 0x48uLL);
      sub_1C953AEDC((v0 + 11));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 36));
      if (!v19)
      {
        break;
      }

      --v19;
    }
  }

  v48 = v0[59];
  sub_1C96A5434();

  sub_1C9470AFC(v48, &qword_1EC3A58D0);

  OUTLINED_FUNCTION_17();
LABEL_21:

  return v47();
}