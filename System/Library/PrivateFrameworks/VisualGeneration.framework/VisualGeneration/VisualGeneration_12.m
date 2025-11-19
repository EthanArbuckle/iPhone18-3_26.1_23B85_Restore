uint64_t sub_19A3E2A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  v9 = sub_19A572F9C();
  v10 = MEMORY[0x19A900970](v9);
  v12 = v11;

  v13 = sub_19A572DCC();
  LOBYTE(a6) = sub_19A41F91C(v13, v14, a6);

  if (a6)
  {
  }

  else
  {
    v15 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_19A31CE20(0, *(v15 + 2) + 1, 1, v15);
      *a7 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_19A31CE20((v17 > 1), v18 + 1, 1, v15);
      *a7 = v15;
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[16 * v18];
    *(v19 + 4) = v10;
    *(v19 + 5) = v12;
  }

  return 1;
}

uint64_t sub_19A3E2BA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19A3E2C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_19A57102C();
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for EntityExtractor.NamedEntity.EntityData(0);
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Concept(0);
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = a1;
    v38[1] = v4;
    v55 = MEMORY[0x1E69E7CC0];
    v19 = v41;
    v44 = v16;
    sub_19A322740(0, v16, 0);
    v20 = 0;
    v43 = v18 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v53 = a4 + 56;
    v54 = (v19 + 16);
    v51 = v55;
    v52 = (v19 + 8);
    v42 = *(v49 + 72);
    v48 = v15;
    v39 = a2;
    v40 = a3;
    do
    {
      v49 = v20;
      sub_19A3E3C64(v43 + v42 * v20, v50, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
      if (*(a4 + 16))
      {
        sub_19A3E3F34(&qword_1EAF9FD60, MEMORY[0x1E69695A8]);
        v21 = sub_19A572B3C();
        v22 = -1 << *(a4 + 32);
        v23 = v21 & ~v22;
        if ((*(v53 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = a4;
          v25 = ~v22;
          v26 = *(v41 + 72);
          v27 = *(v41 + 16);
          do
          {
            v27(v11, *(v24 + 48) + v26 * v23, v9);
            sub_19A3E3F34(&qword_1EAF9FFB8, MEMORY[0x1E69695A8]);
            v28 = sub_19A572C2C();
            (*v52)(v11, v9);
            if (v28)
            {
              break;
            }

            v23 = (v23 + 1) & v25;
          }

          while (((*(v53 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
          v29 = v28 ^ 1;
          a4 = v24;
          a2 = v39;
          a3 = v40;
        }

        else
        {
          v29 = 1;
        }

        v15 = v48;
      }

      else
      {
        v29 = 1;
      }

      *v15 = a2;
      v15[1] = a3;
      v30 = v15 + *(type metadata accessor for NamedEntityData(0) + 20);
      v31 = v50;
      (*v54)(v30, v50, v9);
      v32 = *(v31 + *(v47 + 20));

      sub_19A3E3E40(v31, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
      v33 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      v30[*(v33 + 20)] = v32;
      v15 = v48;
      v30[*(v33 + 24)] = v29 & 1;
      (*(*(v33 - 8) + 56))(v30, 0, 1, v33);
      swift_storeEnumTagMultiPayload();
      v34 = v51;
      v55 = v51;
      v36 = *(v51 + 16);
      v35 = *(v51 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_19A322740(v35 > 1, v36 + 1, 1);
        v34 = v55;
      }

      v20 = v49 + 1;
      *(v34 + 16) = v36 + 1;
      v37 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v51 = v34;
      sub_19A3E3DD8(v15, v34 + v37 + *(v45 + 72) * v36, type metadata accessor for Concept);
    }

    while (v20 != v44);
    return v51;
  }

  return result;
}

char *sub_19A3E3138(unint64_t a1)
{
  v2 = sub_19A57231C();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  v6 = __swift_project_value_buffer(v5, qword_1ED82BD30);
  sub_19A57234C();
  v7 = sub_19A5722EC();
  v20[1] = v20;
  v8 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v6, v5);
  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = sub_19A57234C();
  v13 = sub_19A57361C();
  v14 = v4;
  v15 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v12, v13, v15, "checkEntityUUIDsAvailability", "", v11, 2u);
  v16 = v20[0];
  sub_19A3E1FE8(a1, &v23);
  if (v16)
  {
  }

  else
  {
    v17 = sub_19A57360C();
    v18 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v12, v17, v18, "checkEntityUUIDsAvailability", "", v11, 2u);

    v14 = v23;
    MEMORY[0x19A902C50](v11, -1, -1);
  }

  (*(v8 + 8))(v10, v5);
  (*(v21 + 8))(v4, v22);
  return v14;
}

uint64_t sub_19A3E3434(uint64_t a1, uint64_t (*a2)(unint64_t, void, void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFE0);
    v7 = a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5;
    if (a2(v7, *(v7 + *(v6 + 48)), *(v7 + *(v6 + 48) + 8)))
    {
      break;
    }

    if (v2 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_19A3E3548(uint64_t *a1, uint64_t (*a2)(unint64_t, void, void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFE0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *a1;
  v17 = v46;
  result = sub_19A3E3434(*a1, a2);
  if (!v17)
  {
    v41 = a3;
    v20 = v16;
    v37 = v13;
    v34 = 0;
    if (v19)
    {
      return *(v16 + 16);
    }

    v35 = a1;
    v36 = v10;
    v40 = v6;
    v45 = result;
    v21 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v20;
      v24 = v20 + 2;
      v23 = v20[2];
      if (v21 == v23)
      {
        return v45;
      }

      v38 = a2;
      v39 = v7;
      while (v21 < v23)
      {
        v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v46 = v22;
        v42 = v25;
        v26 = *(v7 + 72);
        v43 = v22 + v25;
        v44 = v26 * v21;
        sub_19A33546C(v22 + v25 + v26 * v21, v15, &qword_1EAF9FFE0);
        v27 = a2(v15, *&v15[*(v40 + 48)], *&v15[*(v40 + 48) + 8]);
        result = sub_19A2F3FA0(v15, &qword_1EAF9FFE0);
        if (v27)
        {
          a2 = v38;
          v7 = v39;
          v22 = v46;
        }

        else
        {
          v28 = v45;
          if (v21 == v45)
          {
            a2 = v38;
            v7 = v39;
            v22 = v46;
          }

          else
          {
            if ((v45 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v29 = *v24;
            if (v45 >= v29)
            {
              goto LABEL_25;
            }

            v30 = v26 * v45;
            v31 = v43;
            result = sub_19A33546C(&v43[v26 * v45], v37, &qword_1EAF9FFE0);
            if (v21 >= v29)
            {
              goto LABEL_26;
            }

            v32 = v36;
            sub_19A33546C(&v31[v44], v36, &qword_1EAF9FFE0);
            v22 = v46;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_19A32E604(v22);
            }

            v7 = v39;
            v33 = v22 + v42;
            result = sub_19A3E3898(v32, v22 + v42 + v30);
            if (v21 >= v22[2])
            {
              goto LABEL_27;
            }

            result = sub_19A3E3898(v37, &v33[v44]);
            *v35 = v22;
            a2 = v38;
            v28 = v45;
          }

          v45 = v28 + 1;
        }

        ++v21;
        v24 = v22 + 2;
        v23 = v22[2];
        if (v21 == v23)
        {
          return v45;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19A3E3898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19A3E39A4(void *a1)
{
  v20 = sub_19A57231C();
  v19 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v4 = sub_19A57236C();
  v5 = __swift_project_value_buffer(v4, qword_1ED82BD30);
  sub_19A57234C();
  v6 = sub_19A5722EC();
  v18[2] = v18;
  v7 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v5, v4);
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_19A57234C();
  v12 = sub_19A57361C();
  v13 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v11, v12, v13, "checkPersonIDs", "", v10, 2u);
  v14 = v18[1];
  sub_19A3E1588(a1);
  if (v14)
  {
  }

  else
  {
    v15 = sub_19A57360C();
    v16 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v11, v15, v16, "checkPersonIDs", "", v10, 2u);

    MEMORY[0x19A902C50](v10, -1, -1);
  }

  (*(v7 + 8))(v9, v4);
  return (*(v19 + 8))(v3, v20);
}

uint64_t sub_19A3E3C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A3E3CDC()
{
  result = qword_1EAFA10B8;
  if (!qword_1EAFA10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA10B8);
  }

  return result;
}

unint64_t sub_19A3E3D30()
{
  result = qword_1EAF9F188;
  if (!qword_1EAF9F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F188);
  }

  return result;
}

unint64_t sub_19A3E3D84()
{
  result = qword_1EAF9EC78;
  if (!qword_1EAF9EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EC78);
  }

  return result;
}

uint64_t sub_19A3E3DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A3E3E40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A3E3EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A3E3F34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A3E3FA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19A3E3FF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_19A3E40B8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  if (swift_dynamicCast())
  {

    *a2 = v6;
    *(a2 + 8) = v7;
    return;
  }

  if (swift_dynamicCast())
  {
    *a2 = v6;
    if (v7 > 1u)
    {
      if (v7 == 2)
      {
        v5 = 3;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      if (!v7)
      {
        *(a2 + 8) = 0;
        return;
      }

      v5 = 2;
    }
  }

  else
  {
    *a2 = 0;
    v5 = -1;
  }

  *(a2 + 8) = v5;
}

uint64_t PromptError.errorDescription.getter()
{
  v1 = sub_19A570D4C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - v6;
  v8 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = *v0;
  if (*(v0 + 8) <= 1u)
  {
    if (*(v0 + 8))
    {
      sub_19A572C8C();
      sub_19A572C7C();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
      v32 = v12;
      v13 = sub_19A2F12E4(&qword_1EAFA10E0, &qword_1EAFA0318);
      v33 = v13;
      v31[0] = v11;
      v26 = __swift_project_boxed_opaque_existential_1(v31, v12);
      MEMORY[0x1EEE9AC00](v26);
      v15 = &v28 - 6;
      *(&v28 - 4) = v12;
      *(&v28 - 3) = v13;
      *(&v28 - 2) = sub_19A475C90;
      *(&v28 - 1) = 0;

      v17 = MEMORY[0x1E69E6158];
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_19A3E3EA0;
    }

    else
    {
      sub_19A572C8C();
      sub_19A572C7C();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10E8);
      v32 = v12;
      v13 = sub_19A2F12E4(&qword_1EAFA10F0, &qword_1EAFA10E8);
      v33 = v13;
      v31[0] = v11;
      v14 = __swift_project_boxed_opaque_existential_1(v31, v12);
      MEMORY[0x1EEE9AC00](v14);
      v15 = &v28 - 6;
      *(&v28 - 4) = v12;
      *(&v28 - 3) = v13;
      *(&v28 - 2) = sub_19A475C90;
      *(&v28 - 1) = 0;

      v17 = MEMORY[0x1E69E6158];
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_19A3E40A0;
    }

    goto LABEL_10;
  }

  if (*(v0 + 8) != 2)
  {
    sub_19A572C8C();
    sub_19A572C7C();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10C0);
    v32 = v12;
    v13 = sub_19A2F12E4(&qword_1EAFA10C8, &qword_1EAFA10C0);
    v33 = v13;
    v31[0] = v11;
    v27 = __swift_project_boxed_opaque_existential_1(v31, v12);
    MEMORY[0x1EEE9AC00](v27);
    v15 = &v28 - 6;
    *(&v28 - 4) = v12;
    *(&v28 - 3) = v13;
    *(&v28 - 2) = sub_19A475C90;
    *(&v28 - 1) = 0;

    v17 = MEMORY[0x1E69E6158];
    v18 = MEMORY[0x1E69E73E0];
    v19 = MEMORY[0x1E69E7410];
    v20 = sub_19A3E40A0;
LABEL_10:
    v29 = sub_19A3E4928(v20, v15, v12, v17, v18, v13, v19, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
    sub_19A572BEC();

    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    sub_19A572C6C();

    sub_19A572C7C();
    sub_19A572CAC();
    sub_19A5710EC();
    return sub_19A572D7C();
  }

  sub_19A570D2C();
  (*(v2 + 16))(v5, v7, v1);
  v21 = sub_19A572D8C();
  v31[0] = v21;
  v31[1] = v22;
  v23 = sub_19A475CC8(v11);
  if (v24)
  {
    v29 = 8250;
    v30 = 0xE200000000000000;
    MEMORY[0x19A900A50](v23);

    MEMORY[0x19A900A50](v29, v30);

    v21 = v31[0];
  }

  (*(v2 + 8))(v7, v1);
  return v21;
}

uint64_t sub_19A3E485C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, void *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  *a3 = a2(v10);
  a3[1] = v8;
  return __swift_destroy_boxed_opaque_existential_0Tm(v10);
}

uint64_t sub_19A3E4928(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v42 - v18;
  v19 = sub_19A57378C();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_19A572FBC();
  v63 = sub_19A573A9C();
  v58 = sub_19A573AAC();
  sub_19A573A4C();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_19A572FAC();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_19A5737DC();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_19A573A8C();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_19A5737DC();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_19A573A8C();
      sub_19A5737DC();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_19A3E501C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10E8);
  v8[3] = v2;
  v3 = sub_19A2F12E4(&qword_1EAFA10F0, &qword_1EAFA10E8);
  v8[4] = v3;
  v8[0] = a1;
  __swift_project_boxed_opaque_existential_1(v8, v2);
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = sub_19A475C90;
  v7[5] = 0;

  v7[7] = sub_19A3E4928(sub_19A3E40A0, v7, v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
  v5 = sub_19A572BEC();

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_19A3E51D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10F8);
  v8[3] = v2;
  v3 = sub_19A2F12E4(&qword_1EAFA1100, &qword_1EAFA10F8);
  v8[4] = v3;
  v8[0] = a1;
  __swift_project_boxed_opaque_existential_1(v8, v2);
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = sub_19A475C90;
  v7[5] = 0;

  v7[7] = sub_19A3E4928(sub_19A3E40A0, v7, v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
  v5 = sub_19A572BEC();

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_19A3E5364(uint64_t a1, _OWORD *a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v5 = sub_19A57102C();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v6 = a2[1];
  *(v3 + 88) = *a2;
  *(v3 + 104) = v6;

  return MEMORY[0x1EEE6DFA0](sub_19A3E5440, 0, 0);
}

uint64_t sub_19A3E5440()
{
  v59 = v0;
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 64) + 16);
  v2(*(v0 + 80), &v1[OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask_id], *(v0 + 56));
  v55.n128_u64[0] = 0x206B736154;
  v55.n128_u64[1] = 0xE500000000000000;
  sub_19A36BC14(&qword_1ED8252D8);
  v3 = sub_19A573EDC();
  MEMORY[0x19A900A50](v3);

  MEMORY[0x19A900A50](58, 0xE100000000000000);
  *(v0 + 120) = 0x206B736154;
  *(v0 + 128) = 0xE500000000000000;
  v4 = *(v1 + 2);
  *(v0 + 136) = v4;
  v5 = *(v1 + 3);
  *(v0 + 144) = v5;
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = &v1[OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__assignmentOptions];
  v9 = *&v8[*(type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0) + 32)];

  v46 = v5;
  v47 = v4;
  sub_19A439A00(v4, v5, v7, v6, v9, &v55);
  v10 = v55.n128_u64[1];
  v54 = v55.n128_u64[0];
  *(v0 + 152) = v55.n128_u64[1];
  v50 = v57;
  v51 = v56;
  v49 = v58;

  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v11 = sub_19A5723FC();
  *(v0 + 160) = __swift_project_value_buffer(v11, qword_1EAFCA1E8);

  v12 = sub_19A5723DC();
  v13 = sub_19A57356C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v55.n128_u64[0] = v15;
    *v14 = 136446467;
    *(v14 + 4) = sub_19A31F114(0x206B736154, 0xE500000000000000, &v55);
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_19A31F114(v47, v46, &v55);
    _os_log_impl(&dword_19A2DE000, v12, v13, "%{public}s assigning prompt %{private}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v15, -1, -1);
    MEMORY[0x19A902C50](v14, -1, -1);
  }

  v16 = *(v0 + 88);
  if (v16 >= 2)
  {
    v17 = *(v0 + 48);
    v55.n128_u64[0] = v54;
    v55.n128_u64[1] = v10;
    LOBYTE(v56) = 0;

    v16(v17, &v55);
    sub_19A3B865C(v55.n128_u64[0], v55.n128_u64[1], v56);
  }

  v18 = sub_19A57231C();
  *(v0 + 168) = v18;
  v45 = *(v18 - 8);
  *(v0 + 176) = v45;
  *(v0 + 184) = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v52 = v10;
  v20 = *(v0 + 72);
  v19 = *(v0 + 80);
  v21 = *(v0 + 56);
  v22 = sub_19A57236C();
  __swift_project_value_buffer(v22, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v2(v20, v19, v21);

  v23 = sub_19A57234C();
  v24 = sub_19A57361C();

  v25 = sub_19A57376C();
  v27 = *(v0 + 64);
  v26 = *(v0 + 72);
  v28 = *(v0 + 56);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v55.n128_u64[0] = v30;
    *v29 = 136446467;
    v44 = v24;
    v31 = sub_19A573EDC();
    v33 = v32;
    v34 = *(v27 + 8);
    v34(v26, v28);
    v35 = sub_19A31F114(v31, v33, &v55);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2081;
    *(v29 + 14) = sub_19A31F114(v47, v46, &v55);
    v36 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v23, v44, v36, "promptAssignmentTask", "%{public}s %{private}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v30, -1, -1);
    MEMORY[0x19A902C50](v29, -1, -1);
  }

  else
  {

    v34 = *(v27 + 8);
    v34(v26, v28);
  }

  *(v0 + 192) = v34;
  v37 = *(v0 + 48);
  swift_task_alloc();
  v53 = *(v0 + 88);
  v48 = *(v0 + 104);
  (*(v45 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  *(v0 + 200) = sub_19A5723AC();

  v38 = swift_task_alloc();
  *(v0 + 208) = v38;
  *(v38 + 16) = v37;
  *(v38 + 40) = v48;
  *(v38 + 24) = v53;
  *(v38 + 56) = 0x206B736154;
  *(v38 + 64) = 0xE500000000000000;
  *(v38 + 72) = v54;
  *(v38 + 80) = v52;
  *(v38 + 88) = v51;
  *(v38 + 96) = v50;
  *(v38 + 104) = v49;
  v39 = swift_task_alloc();
  *(v0 + 216) = v39;
  *(v39 + 16) = 0x206B736154;
  *(v39 + 24) = 0xE500000000000000;
  v40 = swift_task_alloc();
  *(v0 + 224) = v40;
  v41 = type metadata accessor for DefinitionSession();
  *v40 = v0;
  v40[1] = sub_19A3E5B14;
  v42 = *(v0 + 40);

  return MEMORY[0x1EEE6DE18](v42, &unk_19A581668, v38, sub_19A3E7BBC, v39, 0, 0, v41);
}

uint64_t sub_19A3E5B14()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_19A3E5D50;
  }

  else
  {

    v2 = sub_19A3E5C58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3E5C58()
{
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[10];
  v6 = v0[7];
  sub_19A3E65AC("promptAssignmentTask", 20, 2);

  (*(v3 + 8))(v2, v4);
  v1(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_19A3E5D50()
{
  v56 = v0;
  v1 = *(v0 + 232);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);

  sub_19A3E65AC("promptAssignmentTask", 20, 2);

  (*(v3 + 8))(v2, v4);

  *(v0 + 32) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 232);
  if (v6)
  {

    v8 = *(v0 + 16);
    v9 = *(v0 + 24);

    sub_19A3B870C(v8, v9);
    v10 = sub_19A5723DC();
    v11 = sub_19A57355C();

    sub_19A3B8740(v8, v9);
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 128);
    if (v12)
    {
      v14 = *(v0 + 120);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v53 = v17;
      *v15 = 136446466;
      v18 = sub_19A31F114(v14, v13, &v53);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      sub_19A3B8774();
      swift_allocError();
      *v19 = v8;
      *(v19 + 8) = v9;
      sub_19A3B870C(v8, v9);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v20;
      *v16 = v20;
      _os_log_impl(&dword_19A2DE000, v10, v11, "%{public}s prompt rejected - %@", v15, 0x16u);
      sub_19A3B86A4(v16);
      MEMORY[0x19A902C50](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x19A902C50](v17, -1, -1);
      MEMORY[0x19A902C50](v15, -1, -1);
    }

    else
    {
    }

    v34 = *(v0 + 88);
    if (v34 >= 2)
    {
      v35 = *(v0 + 48);
      if (v9)
      {
        sub_19A3B8774();
        v36 = swift_allocError();
        *v37 = v8;
        *(v37 + 8) = v9;
        v53 = v36;
        v54 = 0;
        v55 = 3;
        v38 = v8;
        v39 = v9;
      }

      else
      {
        v53 = v8;
        v54 = 0;
        v55 = 2;
        v38 = v8;
        v39 = 0;
      }

      sub_19A3B870C(v38, v39);
      sub_19A2E0A50(v34);
      v34(v35, &v53);
      sub_19A2E0A60(v34);
      sub_19A3B865C(v53, v54, v55);
    }

    v46 = *(v0 + 192);
    v47 = *(v0 + 80);
    v48 = *(v0 + 56);
    sub_19A3B8774();
    swift_allocError();
    *v49 = v8;
    *(v49 + 8) = v9;
    swift_willThrow();
    v46(v47, v48);
  }

  else
  {

    v21 = v7;
    v22 = sub_19A5723DC();
    v23 = sub_19A57355C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 232);
      v25 = *(v0 + 136);
      v52 = *(v0 + 144);
      v26 = *(v0 + 120);
      v27 = *(v0 + 128);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v53 = v30;
      *v28 = 136446723;
      v31 = sub_19A31F114(v26, v27, &v53);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2081;
      *(v28 + 14) = sub_19A31F114(v25, v52, &v53);
      *(v28 + 22) = 2112;
      v32 = v24;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 24) = v33;
      *v29 = v33;
      _os_log_impl(&dword_19A2DE000, v22, v23, "%{public}s prompt %{private}s rejected - %@", v28, 0x20u);
      sub_19A3B86A4(v29);
      MEMORY[0x19A902C50](v29, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v30, -1, -1);
      MEMORY[0x19A902C50](v28, -1, -1);
    }

    else
    {
    }

    v40 = *(v0 + 88);
    if (v40 >= 2)
    {
      v41 = *(v0 + 48);
      v53 = *(v0 + 232);
      v54 = 0;
      v55 = 3;
      v42 = v53;
      v40(v41, &v53);
      sub_19A3B865C(v53, v54, v55);
    }

    v43 = *(v0 + 192);
    v44 = *(v0 + 80);
    v45 = *(v0 + 56);
    swift_willThrow();
    v43(v44, v45);
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t GenerativePlayground.PromptAssignmentTask.prompt.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GenerativePlayground.PromptAssignmentTask.clientProvidedPrompt.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t GenerativePlayground.PromptAssignmentTask.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask_id;
  v4 = sub_19A57102C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenerativePlayground.PromptAssignmentTask.isCancelled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__sendableCanceller), v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

Swift::Void __swiftcall GenerativePlayground.PromptAssignmentTask.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__sendableCanceller), v1);
  (*(v2 + 16))(v1, v2);
}

unint64_t GenerativePlayground.PromptAssignmentTask.description.getter()
{
  sub_19A57395C();

  sub_19A57102C();
  sub_19A36BC14(&qword_1ED8252D8);
  v1 = sub_19A573EDC();
  MEMORY[0x19A900A50](v1);

  MEMORY[0x19A900A50](2238496, 0xE300000000000000);
  MEMORY[0x19A900A50](*(v0 + 16), *(v0 + 24));
  MEMORY[0x19A900A50](10530, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t sub_19A3E65AC(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A3E6894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 80) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 112) = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3E6950, 0, 0);
}

uint64_t sub_19A3E6950()
{
  sub_19A433244();
  v1 = *(v0 + 48);
  if (*(v0 + 32) == 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
  }

  else
  {
    sub_19A2E0A50(*(v0 + 48));
    v1 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = *(v0 + 32);
    v2 = v1;
  }

  v23 = *(v0 + 56);
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  v20 = *(v0 + 120);
  v24 = *(v0 + 112);
  v25 = *(v0 + 184);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);
  v22 = *(v0 + 16);
  v9 = swift_allocObject();
  *(v0 + 144) = v9;
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v4;
  v9[5] = v7;
  v9[6] = v1;
  v9[7] = v23;
  v9[8] = v8;
  v21 = v8 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__assignmentOptions;
  sub_19A3E7CD4(v8 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__assignmentOptions, v20, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  sub_19A2E0A50(v2);

  sub_19A3A6BDC(v4, v7, v1);

  *(v0 + 152) = sub_19A3E7BD8(v20);
  sub_19A3E7CD4(v8 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__definitionSession, v22, type metadata accessor for DefinitionSession);
  v10 = v24[6];
  v11 = v21 + v24[17];
  v12 = *v11;
  v13 = *(v11 + 8);
  *(v0 + 160) = *(v21 + v24[8]);

  v14 = swift_task_alloc();
  *(v0 + 168) = v14;
  *v14 = v0;
  v14[1] = sub_19A3E6C10;
  v15 = *(v0 + 96);
  v16 = *(v0 + 104);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);

  return sub_19A4BB3CC(v18, v17, v15, v16, v25 & 1, v21 + v10, v12, v13);
}

uint64_t sub_19A3E6C10()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {

    sub_19A2E0A60(v3);
    v4 = sub_19A3E7028;
  }

  else
  {
    sub_19A2E0A60(v3);

    v4 = sub_19A3E6D98;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A3E6D98()
{
  v21 = v0;
  v1 = v0[4];
  if (v1 >= 2 && (v0[19] & 8) == 0)
  {
    v3 = v0[3];
    v18 = 0;
    v19 = 0;
    v20 = 5;
    v1(v3, &v18);
  }

  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1EAFCA1E8);

  v5 = sub_19A5723DC();
  v6 = sub_19A57356C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446467;
    *(v10 + 4) = sub_19A31F114(v8, v7, &v18);
    *(v10 + 12) = 2081;
    *(v10 + 14) = sub_19A31F114(*(v9 + 16), *(v9 + 24), &v18);
    _os_log_impl(&dword_19A2DE000, v5, v6, "%{public}s accepted prompt %{private}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v11, -1, -1);
    MEMORY[0x19A902C50](v10, -1, -1);
  }

  v12 = v0[4];
  v13 = v0[16];
  if (v12 == 1 || !v1)
  {

    sub_19A2E0A60(v13);
  }

  else
  {
    v14 = v0[11];
    v15 = v0[3];
    v18 = v0[10];
    v19 = v14;
    v20 = 4;

    v12(v15, &v18);

    sub_19A2E0A60(v13);
    sub_19A3B865C(v18, v19, v20);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_19A3E7028()
{
  v1 = v0[16];
  v2 = v0[2];

  sub_19A2E0A60(v1);
  sub_19A3E7D3C(v2, type metadata accessor for DefinitionSession);

  v3 = v0[1];

  return v3();
}

void sub_19A3E70CC(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = type metadata accessor for Concept(0);
  v14 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v17 = sub_19A5723FC();
  __swift_project_value_buffer(v17, qword_1EAFCA1E8);

  v18 = sub_19A5723DC();
  v19 = sub_19A57356C();

  if (os_log_type_enabled(v18, v19))
  {
    v43 = v14;
    v45 = v19;
    v20 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v20 = 136446466;
    *(v20 + 4) = sub_19A31F114(a2, a3, &v48);
    *(v20 + 12) = 2080;
    v21 = a1[2];
    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v37 = v20;
      v38 = v18;
      v40 = a8;
      v41 = a5;
      v42 = a4;
      v47 = MEMORY[0x1E69E7CC0];
      sub_19A322580(0, v21, 0);
      v22 = v47;
      v23 = *(v43 + 80);
      v39 = a1;
      v24 = a1 + ((v23 + 32) & ~v23);
      v25 = *(v43 + 72);
      do
      {
        sub_19A3E7CD4(v24, v16, type metadata accessor for Concept);
        v49 = 0;
        v50 = 0xE000000000000000;
        sub_19A573ACC();
        v26 = v49;
        v27 = v50;
        sub_19A3E7D3C(v16, type metadata accessor for Concept);
        v47 = v22;
        v29 = v22[2];
        v28 = v22[3];
        if (v29 >= v28 >> 1)
        {
          sub_19A322580((v28 > 1), v29 + 1, 1);
          v22 = v47;
        }

        v22[2] = v29 + 1;
        v30 = &v22[2 * v29];
        v30[4] = v26;
        v30[5] = v27;
        v24 += v25;
        --v21;
      }

      while (v21);
      a4 = v42;
      a1 = v39;
      a8 = v40;
      v20 = v37;
      v18 = v38;
    }

    v49 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    sub_19A331C2C();
    v31 = sub_19A572BEC();
    v33 = v32;

    v34 = sub_19A31F114(v31, v33, &v48);

    *(v20 + 14) = v34;
    _os_log_impl(&dword_19A2DE000, v18, v45, "%{public}s prompt concepts %s", v20, 0x16u);
    v35 = v44;
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v35, -1, -1);
    MEMORY[0x19A902C50](v20, -1, -1);
  }

  if (a4 >= 2)
  {
    v49 = a1;
    v50 = 0;
    v51 = 1;

    a4(a8, &v49);
    sub_19A3B865C(v49, v50, v51);
  }
}

void sub_19A3E74A0(uint64_t a1, unint64_t a2)
{
  if (qword_1EAF9F200 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1EAFCA1D0);

  oslog = sub_19A5723DC();
  v5 = sub_19A57356C();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_19A31F114(a1, a2, &v9);
    _os_log_impl(&dword_19A2DE000, oslog, v5, "%{public}s cancellation requested", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }
}

uint64_t GenerativePlayground.PromptAssignmentTask.deinit()
{

  v1 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_19A3E7D3C(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__sendableCanceller);
  sub_19A3E7D3C(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__assignmentOptions, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  return v0;
}

uint64_t GenerativePlayground.PromptAssignmentTask.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_19A3E7D3C(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__sendableCanceller);
  sub_19A3E7D3C(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__assignmentOptions, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);

  return swift_deallocClassInstance();
}

uint64_t sub_19A3E77C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask_id;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A3E7840()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3) & 1;
}

uint64_t sub_19A3E78A4()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t type metadata accessor for GenerativePlayground.PromptAssignmentTask()
{
  result = qword_1EAF9F560;
  if (!qword_1EAF9F560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A3E797C()
{
  result = sub_19A57102C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DefinitionSession();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(319);
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_19A3E7AAC(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A2F759C;

  return sub_19A3E6894(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_19A3E7BD8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  v5 = a1;
  v6 = a1[*(v4 + 36)];
  v7 = a1[*(v4 + 28)];
  if (v2 == 1)
  {
    v8 = v6 == 0;
    if (v3)
    {
      if (v6)
      {
        v9 = 15;
      }

      else
      {
        v9 = 11;
      }

      v10 = 3;
      if (!v8)
      {
        v10 = 7;
      }

      if (v7)
      {
        goto LABEL_26;
      }

LABEL_25:
      v9 = v10;
      goto LABEL_26;
    }

    if (v6)
    {
      v9 = 13;
    }

    else
    {
      v9 = 9;
    }

    v10 = 5;
    if (v8)
    {
      v10 = 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v11 = v6 == 0;
    if (v3)
    {
      if (v6)
      {
        v9 = 14;
      }

      else
      {
        v9 = 10;
      }

      v10 = 2;
      if (!v11)
      {
        v10 = 6;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v6)
      {
        v9 = 12;
      }

      else
      {
        v9 = 8;
      }

      v10 = 4;
      if (v11)
      {
        v10 = 0;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  sub_19A3E7D3C(v5, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  return v9;
}

uint64_t sub_19A3E7CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A3E7D3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A3E7D9C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  type metadata accessor for ImageProvenance();
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3E7E30, 0, 0);
}

uint64_t sub_19A3E7E30()
{
  v22 = v0;
  if (*(*(v0 + 24) + 16) && *(*(v0 + 32) + 16))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = type metadata accessor for GeneratedImage();
    sub_19A3EA5B4(v1 + *(v3 + 20), v2, type metadata accessor for ImageProvenance);
    v4 = *v1;
    *(v0 + 56) = *v1;
    v5 = *(v1 + 8);
    v6 = v4;
    if (v5)
    {
      if (v5 == 1)
      {
        [v6 extent];
        sub_19A39AAB4(v21, v7, v8);
        Width = v21[0];
        v9 = v21[1];
LABEL_12:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1108);
        v18 = swift_task_alloc();
        *(v0 + 64) = v18;
        v19 = *(v0 + 40);
        *(v18 + 16) = *(v0 + 24);
        *(v18 + 32) = Width;
        *(v18 + 40) = v9;
        *(v18 + 48) = v4;
        *(v18 + 56) = v5;
        *(v18 + 64) = vextq_s8(v19, v19, 8uLL);
        v20 = swift_task_alloc();
        *(v0 + 72) = v20;
        *v20 = v0;
        v20[1] = sub_19A3E8070;
        v24 = v17;

        return MEMORY[0x1EEE6DD58](v0 + 16, v17, v17, 0, 0, &unk_19A581688, v18, v17);
      }

      v16 = v6;
      Width = CVPixelBufferGetWidth(v6);
      Height = CVPixelBufferGetHeight(v16);
    }

    else
    {
      v14 = v6;
      Width = CGImageGetWidth(v6);
      Height = CGImageGetHeight(v14);
    }

    v9 = Height;
    goto LABEL_12;
  }

  v11 = sub_19A330944(MEMORY[0x1E69E7CC0]);

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_19A3E8070()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_19A3E821C;
  }

  else
  {

    v2 = sub_19A3E818C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3E818C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);
  sub_19A38B94C(v1, type metadata accessor for ImageProvenance);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_19A3E821C()
{
  v1 = *(v0 + 48);

  sub_19A38B94C(v1, type metadata accessor for ImageProvenance);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A3E82B0(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  *(v4 + 88) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_19A3E82DC, 0, 0);
}

uint64_t sub_19A3E82DC()
{
  v2 = v0[11];
  v1 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE38);
  inited = swift_initStackObject();
  v0[13] = inited;
  *(inited + 16) = xmmword_19A576E10;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_19A3E83B0;
  v5 = v0[9];

  return sub_19A3E7D9C(inited, v5);
}

uint64_t sub_19A3E83B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_19A3E8670;
  }

  else
  {
    swift_setDeallocating();
    v4 = sub_19A3E84CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A3E84CC()
{
  v21 = v0;
  if (*(v0[15] + 16))
  {
    v1 = sub_19A31FCD8(v0[11], v0[12]);
    if (v2)
    {
      v3 = v1;
      v4 = v0[8];
      v5 = *(v0[15] + 56);
      v6 = type metadata accessor for GeneratedImage();
      sub_19A3EA5B4(v5 + *(*(v6 - 8) + 72) * v3, v4, type metadata accessor for GeneratedImage);

      v7 = v0[1];
      goto LABEL_11;
    }
  }

  v8 = v0[10];

  v9 = *v8;
  if (!*(v8 + 8))
  {
    v14 = v9;
    Width = CGImageGetWidth(v14);
    Height = CGImageGetHeight(v14);
LABEL_9:
    v12 = Height;

    goto LABEL_10;
  }

  if (*(v8 + 8) != 1)
  {
    v14 = v9;
    Width = CVPixelBufferGetWidth(v14);
    Height = CVPixelBufferGetHeight(v14);
    goto LABEL_9;
  }

  [v9 extent];
  sub_19A39AAB4(v20, v10, v11);
  Width = v20[0];
  v12 = v20[1];
LABEL_10:
  v17 = v0[11];
  v16 = v0[12];
  sub_19A394160();
  swift_allocError();
  *v18 = Width;
  *(v18 + 8) = v12;
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  *(v18 + 32) = 1;
  swift_willThrow();
  v7 = v0[1];
LABEL_11:

  return v7();
}

uint64_t sub_19A3E8670()
{
  swift_setDeallocating();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A3E86D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 232) = v14;
  *(v8 + 240) = v15;
  *(v8 + 392) = a8;
  *(v8 + 216) = a6;
  *(v8 + 224) = a7;
  *(v8 + 200) = a4;
  *(v8 + 208) = a5;
  *(v8 + 184) = a2;
  *(v8 + 192) = a3;
  *(v8 + 176) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1110);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1118);
  *(v8 + 264) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1120);
  *(v8 + 272) = v9;
  *(v8 + 280) = *(v9 - 8);
  *(v8 + 288) = swift_task_alloc();
  v10 = *(type metadata accessor for GeneratedImage() - 8);
  *(v8 + 296) = v10;
  *(v8 + 304) = *(v10 + 64);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  v11 = *(type metadata accessor for ImageProvenance() - 8);
  *(v8 + 328) = v11;
  *(v8 + 336) = *(v11 + 64);
  *(v8 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3E8948, 0, 0);
}

uint64_t sub_19A3E8948()
{
  v78 = v0;
  v1 = v0;
  v2 = v0[25];

  v4 = sub_19A421CF8(v3);

  v10 = *(v2 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v0[25] + 32;
    v69 = v1[37];
    v70 = v1[41];
    v67 = v1 + 12;
    v68 = v1[28];
    v72 = v10;
    v73 = v1;
    v71 = v12;
    do
    {
      v13 = v12 + 40 * v11;
      v14 = v11;
      while (1)
      {
        if (v14 >= v10)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          return MEMORY[0x1EEE6DAD8](v5, v6, v7, v8, v9);
        }

        if (__OFADD__(v14, 1))
        {
          goto LABEL_42;
        }

        sub_19A2F3EF0(v13, (v1 + 2));
        v15 = *(v4 + 16);
        if (!v15)
        {
          __swift_destroy_boxed_opaque_existential_0Tm((v1 + 2));
          goto LABEL_38;
        }

        v74 = v13;
        v76 = v14 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE38);
        v16 = swift_allocObject();
        v17 = _swift_stdlib_malloc_size(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 17;
        }

        *(v16 + 16) = v15;
        *(v16 + 24) = 2 * (v18 >> 4);
        v19 = sub_19A32EA2C(v77, (v16 + 32), v15, v4);
        v20 = v4;

        v5 = sub_19A3355AC();
        if (v19 != v15)
        {
          goto LABEL_43;
        }

        v77[0] = v16;
        sub_19A348CF8(v77);
        v1 = v73;
        v22 = v73[26];
        v21 = v73[27];
        v23 = v77[0];
        v24 = v73[5];
        v25 = v73[6];
        __swift_project_boxed_opaque_existential_1(v73 + 2, v24);
        v77[0] = v22;
        v77[1] = v21;
        v26 = (*(v25 + 24))(v77, v23, v24, v25);

        v27 = *(v26 + 16);
        if (v27)
        {
          break;
        }

        v5 = __swift_destroy_boxed_opaque_existential_0Tm((v73 + 2));
        v13 = v74 + 40;
        ++v14;
        v10 = v72;
        v4 = v20;
        if (v76 == v72)
        {
          goto LABEL_38;
        }
      }

      v66 = v26;
      if (*(v20 + 2))
      {
        for (i = 0; i != v27; ++i)
        {
          v30 = (v26 + 32 + 16 * i);
          v31 = *v30;
          v32 = v30[1];
          sub_19A5740BC();
          MEMORY[0x19A901C40](v31);
          MEMORY[0x19A901C40](v32);
          v33 = sub_19A57410C();
          v34 = -1 << v20[32];
          v35 = v33 & ~v34;
          if ((*&v20[((v35 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v35))
          {
            v36 = ~v34;
            while (1)
            {
              v37 = (*(v20 + 6) + 16 * v35);
              v39 = *v37;
              v38 = v37[1];
              if (v39 == v31 && v38 == v32)
              {
                break;
              }

              v35 = (v35 + 1) & v36;
              if (((*&v20[((v35 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v35) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v77[0] = v20;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_19A326B7C();
            }

            sub_19A421904(v35);
            v20 = v77[0];
          }

LABEL_18:
          ;
        }
      }

      v75 = v20;
      v41 = v73[44];
      v42 = v73[45];
      v43 = v73[43];
      v44 = v73[42];
      v45 = v73[40];
      v46 = v73[30];
      v65 = *(v73 + 392);
      v47 = v73[29];
      v64 = v73[28];
      v48 = sub_19A5731CC();
      v49 = *(v48 - 8);
      (*(v49 + 56))(v42, 1, 1, v48);
      sub_19A2F3EF0((v73 + 2), (v73 + 7));
      sub_19A3EA5B4(v47, v43, type metadata accessor for ImageProvenance);
      sub_19A3EA5B4(v46, v45, type metadata accessor for GeneratedImage);
      v50 = (*(v70 + 80) + 96) & ~*(v70 + 80);
      v51 = (v44 + *(v69 + 80) + v50) & ~*(v69 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      sub_19A2EA460((v73 + 7), v52 + 32);
      *(v52 + 72) = v64;
      *(v52 + 80) = v65;
      *(v52 + 88) = v66;
      sub_19A3EA6F0(v43, v52 + v50, type metadata accessor for ImageProvenance);
      sub_19A3EA6F0(v45, v52 + v51, type metadata accessor for GeneratedImage);
      sub_19A34EA3C(v42, v41);
      LODWORD(v50) = (*(v49 + 48))(v41, 1, v48);
      v53 = v68;
      v54 = v73[44];
      if (v50 == 1)
      {
        sub_19A2F3FA0(v73[44], &qword_1EAF9FD98);
      }

      else
      {
        sub_19A5731BC();
        (*(v49 + 8))(v54, v48);
      }

      v12 = v71;
      if (*(v52 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v55 = sub_19A57314C();
        v57 = v56;
        swift_unknownObjectRelease();
      }

      else
      {
        v55 = 0;
        v57 = 0;
      }

      v1 = v73;
      v4 = v75;
      v58 = *v73[23];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1108);
      v59 = (v57 | v55);
      if (v57 | v55)
      {
        v59 = v67;
        *v67 = 0;
        v67[1] = 0;
        v73[14] = v55;
        v73[15] = v57;
      }

      v60 = v73[45];
      v73[16] = 1;
      v73[17] = v59;
      v73[18] = v58;
      swift_task_create();

      sub_19A2F3FA0(v60, &qword_1EAF9FD98);
      v5 = __swift_destroy_boxed_opaque_existential_0Tm((v73 + 2));
      v10 = v72;
      v11 = v76;
    }

    while (v76 != v72);
  }

LABEL_38:
  v1[46] = v4;
  v61 = sub_19A330944(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  sub_19A57326C();
  v1[47] = v61;
  v62 = swift_task_alloc();
  v1[48] = v62;
  *v62 = v1;
  v62[1] = sub_19A3E90C4;
  v8 = v1[34];
  v5 = (v1 + 19);
  v9 = v1 + 20;
  v6 = 0;
  v7 = 0;

  return MEMORY[0x1EEE6DAD8](v5, v6, v7, v8, v9);
}

uint64_t sub_19A3E90C4()
{

  if (v0)
  {

    v1 = sub_19A3E9900;
  }

  else
  {
    v1 = sub_19A3E91DC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_19A3E91DC()
{
  v1 = v0[19];
  v2 = v0[47];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[21] = v2;
    v63 = v1 + 64;
    v4 = -1;
    v5 = -1 << *(v1 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v1;
    v7 = v4 & *(v1 + 64);
    v62 = (63 - v5) >> 6;
    v8 = v0[47];
    v64 = v6;

    for (i = 0; ; i = v20)
    {
      v65 = isUniquelyReferenced_nonNull_native;
      if (!v7)
      {
        if (v62 <= i + 1)
        {
          v19 = i + 1;
        }

        else
        {
          v19 = v62;
        }

        v20 = v19 - 1;
        while (1)
        {
          v18 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v18 >= v62)
          {
            v56 = v0[32];
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1128);
            (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
            v7 = 0;
            goto LABEL_17;
          }

          v7 = *(v63 + 8 * v18);
          ++i;
          if (v7)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v9, v10, v11, v12, v13);
      }

      v18 = i;
LABEL_16:
      v21 = v0[40];
      v22 = v0[32];
      v23 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v24 = v23 | (v18 << 6);
      v25 = (*(v64 + 48) + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      sub_19A3EA5B4(*(v64 + 56) + *(v0[37] + 72) * v24, v21, type metadata accessor for GeneratedImage);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1128);
      v29 = *(v28 + 48);
      *v22 = v27;
      v22[1] = v26;
      sub_19A3EA6F0(v21, v22 + v29, type metadata accessor for GeneratedImage);
      (*(*(v28 - 8) + 56))(v22, 0, 1, v28);
      v20 = v18;
LABEL_17:
      v30 = v0[31];
      sub_19A3EA61C(v0[32], v30);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1128);
      v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
      v33 = v0[33];
      if (v32 == 1)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00B8);
        (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
      }

      else
      {
        v35 = v0[31];
        v36 = *(v31 + 48);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00B8);
        v38 = *(v37 + 48);
        *v33 = *v35;
        sub_19A3EA5B4(v35 + v36, v33 + v38, type metadata accessor for GeneratedImage);
        sub_19A2F3FA0(v35, &qword_1EAFA1128);
        (*(*(v37 - 8) + 56))(v33, 0, 1, v37);
      }

      v39 = v0[33];
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00B8);
      if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
      {

        v0[47] = v8;
        v58 = swift_task_alloc();
        v0[48] = v58;
        *v58 = v0;
        v58[1] = sub_19A3E90C4;
        v12 = v0[34];
        v13 = v0 + 20;
        v9 = (v0 + 19);
        v10 = 0;
        v11 = 0;

        return MEMORY[0x1EEE6DAD8](v9, v10, v11, v12, v13);
      }

      v41 = *(v40 + 48);
      v43 = *v39;
      v42 = v39[1];
      sub_19A3EA6F0(v39 + v41, v0[39], type metadata accessor for GeneratedImage);
      v44 = sub_19A31FCD8(v43, v42);
      v45 = v8[2];
      v46 = (v10 & 1) == 0;
      v9 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_41;
      }

      v47 = v10;
      if (v8[3] >= v9)
      {
        if ((v65 & 1) == 0)
        {
          sub_19A32D2D8();
        }
      }

      else
      {
        sub_19A32B07C(v9, v65 & 1);
        v48 = sub_19A31FCD8(v43, v42);
        if ((v47 & 1) != (v49 & 1))
        {

          return sub_19A57404C();
        }

        v44 = v48;
      }

      v8 = v0[21];
      if (v47)
      {
        v16 = v0[39];
        v15 = v0[40];
        v17 = *(v0[37] + 72) * v44;
        sub_19A3EA5B4(v8[7] + v17, v15, type metadata accessor for GeneratedImage);
        sub_19A38B94C(v16, type metadata accessor for GeneratedImage);
        v9 = sub_19A3EA68C(v15, v8[7] + v17);
      }

      else
      {
        v50 = v0[39];
        v51 = v0[37];
        v8[(v44 >> 6) + 8] |= 1 << v44;
        v52 = (v8[6] + 16 * v44);
        *v52 = v43;
        v52[1] = v42;
        v9 = sub_19A3EA6F0(v50, v8[7] + *(v51 + 72) * v44, type metadata accessor for GeneratedImage);
        v53 = v8[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_42;
        }

        v8[2] = v55;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }
  }

  v59 = v0[22];
  (*(v0[35] + 8))(v0[36], v0[34]);

  *v59 = v2;

  v60 = v0[1];

  return v60();
}

uint64_t sub_19A3E9900()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19A3E99FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a8;
  *(v8 + 88) = v12;
  *(v8 + 25) = a6;
  *(v8 + 64) = a5;
  *(v8 + 72) = a7;
  *(v8 + 48) = a1;
  *(v8 + 56) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1130);
  *(v8 + 96) = swift_task_alloc();
  v9 = type metadata accessor for GeneratedImage();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3E9B08, 0, 0);
}

uint64_t sub_19A3E9B08()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 16) = v3;
  *(v0 + 24) = v1;
  v9 = (*(v5 + 40) + **(v5 + 40));
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_19A3E9C54;
  v7 = *(v0 + 72);

  return v9(v0 + 16, v7, v4, v5);
}

uint64_t sub_19A3E9C54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_19A3EA450;
  }

  else
  {
    v4 = sub_19A3E9D68;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A3E9D68()
{
  v81 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v63 = v0[13];
  v64 = v0[15];
  result = sub_19A330944(MEMORY[0x1E69E7CC0]);
  v4 = 0;
  v5 = v1 + 64;
  v65 = v1;
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  v77 = result;
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 64);
  v9 = (63 - v7) >> 6;
  v60 = (v2 + 56);
  v61 = v9;
  v62 = v1 + 64;
  while (v8)
  {
LABEL_12:
    v16 = (v4 << 10) | (16 * __clz(__rbit64(v8)));
    v17 = (*(v65 + 48) + v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v65 + 56) + v16;
    v21 = *v20;
    v70 = *(v20 + 8);
    v22 = sub_19A57231C();
    v75 = *(v22 - 8);
    v76 = v22;
    v23 = swift_task_alloc();
    v24 = qword_1ED824BA8;
    v71 = v21;
    v25 = v21;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = sub_19A57236C();
    __swift_project_value_buffer(v26, qword_1ED82BD30);
    sub_19A57234C();
    sub_19A5722EC();
    v27 = sub_19A57234C();
    v28 = sub_19A57361C();
    v68 = v18;
    v69 = v19;
    if (sub_19A57376C())
    {
      v66 = v28;
      v29 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v78 = v73;
      *v29 = 136446210;
      v0[4] = v19;
      v79 = sub_19A573EDC();
      v80 = v30;
      MEMORY[0x19A900A50](2127904, 0xE300000000000000);
      v0[5] = v18;
      v31 = sub_19A573EDC();
      MEMORY[0x19A900A50](v31);

      v32 = sub_19A31F114(v79, v80, &v78);

      *(v29 + 4) = v32;
      v33 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v27, v66, v33, "ScaleImageTask", "%{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      MEMORY[0x19A902C50](v73, -1, -1);
      MEMORY[0x19A902C50](v29, -1, -1);
    }

    v34 = v0[15];
    v35 = v0[12];
    v67 = v0[13];
    v37 = v0[10];
    v36 = v0[11];
    swift_task_alloc();
    v74 = v23;
    (*(v75 + 16))();
    sub_19A5723BC();
    swift_allocObject();
    sub_19A5723AC();

    sub_19A3EA5B4(v37, v34 + v63[5], type metadata accessor for ImageProvenance);
    v38 = *(v36 + v63[6]);
    v39 = (v36 + v63[8]);
    v40 = *v39;
    v41 = v39[1];
    v42 = (v36 + v63[9]);
    v43 = *v42;
    v44 = v42[1];
    v45 = (v36 + v63[7]);
    LOBYTE(v42) = *(v45 + 16);
    v46 = v63[10];
    v47 = *v45;
    *(v34 + v46) = 3;
    *v34 = v71;
    *(v64 + 8) = v70;
    *(v34 + v63[6]) = v38;
    v48 = v34 + v63[7];
    *v48 = v47;
    v48[16] = v42;
    v49 = (v34 + v63[8]);
    *v49 = v40;
    v49[1] = v41;
    v50 = (v34 + v63[9]);
    *v50 = v43;
    v50[1] = v44;
    *(v34 + v46) = 3;
    sub_19A3EA5B4(v34, v35, type metadata accessor for GeneratedImage);
    (*v60)(v35, 0, 1, v67);

    sub_19A49FBB0(v35, v69, v68);
    v51 = sub_19A57234C();
    v52 = swift_task_alloc();
    sub_19A57239C();
    v53 = sub_19A57360C();
    if (sub_19A57376C())
    {
      v72 = v53;
      v54 = sub_19A57237C();
      v55 = *(v54 - 8);
      v56 = swift_task_alloc();

      sub_19A5723CC();

      v57 = (*(v55 + 88))(v56, v54);
      if (!MEMORY[0x1E69E93E0] || (v10 = "[Error] Interval already ended", v57 != *MEMORY[0x1E69E93E0]))
      {
        (*(v55 + 8))(v56, v54);
        v10 = "";
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v51, v72, v12, "ScaleImageTask", v10, v11, 2u);
      MEMORY[0x19A902C50](v11, -1, -1);
    }

    v8 &= v8 - 1;
    v13 = v0[15];

    v14 = *(v75 + 8);
    v14(v52, v76);
    sub_19A38B94C(v13, type metadata accessor for GeneratedImage);
    v14(v74, v76);

    v9 = v61;
    v5 = v62;
  }

  while (1)
  {
    v15 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v15);
    ++v4;
    if (v8)
    {
      v4 = v15;
      goto LABEL_12;
    }
  }

  v58 = v0[6];

  *v58 = v77;

  v59 = v0[1];

  return v59();
}

uint64_t sub_19A3EA450()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A3EA4C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_19A33558C;

  return sub_19A3E86D4(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_19A3EA5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A3EA61C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A3EA68C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImage();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A3EA6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A3EA758(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ImageProvenance() - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  type metadata accessor for GeneratedImage();
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_19A2F759C;

  return sub_19A3E99FC(a1, v7, v8, v1 + 32, v9, v11, v10, v1 + v6);
}

uint64_t dispatch thunk of GenderDirectiveSpecifying.genderDirective.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A31845C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of GenderDirectiveSpecifying.specifyGenderDirective(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A2F759C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of GenderDirectiveSpecifying.dropGenderDirective()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A2F759C;

  return v7(a1, a2);
}

uint64_t sub_19A3EAC34(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, int *a5)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = a3[1];
  v14 = (a5 + *a5);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_19A33558C;

  return v14(a1, v8, v9, v10, v11, a4);
}

uint64_t sub_19A3EAD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v12 = (a7 + *a7);
  v10 = swift_task_alloc();
  v7[6] = v10;
  *v10 = v7;
  v10[1] = sub_19A3005D0;

  return (v12)(a1, v7 + 2, v7 + 4, a6);
}

uint64_t sub_19A3EAE8C(uint64_t a1)
{
  v1[8] = a1;
  v1[9] = type metadata accessor for DefinitionSession();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3EAF24, a1, 0);
}

uint64_t sub_19A3EAF24()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[11] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v2 + v3, v1, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3EAFD4, 0, 0);
}

uint64_t sub_19A3EAFD4()
{
  v1 = *(*(v0[10] + *(v0[9] + 80)) + 16);
  v0[12] = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A3EB054, v1, 0);
}

uint64_t sub_19A3EB054()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 96) + 112);
  [v2 preheat];

  return MEMORY[0x1EEE6DFA0](sub_19A3EB0E8, v1, 0);
}

uint64_t sub_19A3EB0E8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  swift_beginAccess();
  sub_19A331CD0(v2, v3 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v2, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3EB1B0(uint64_t a1)
{
  v1[8] = a1;
  v1[9] = type metadata accessor for DefinitionSession();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3EB248, a1, 0);
}

uint64_t sub_19A3EB248()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[11] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v2 + v3, v1, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3EB2F8, 0, 0);
}

uint64_t sub_19A3EB2F8()
{
  v1 = *(*(v0[10] + *(v0[9] + 80)) + 16);
  v0[12] = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A3EB378, v1, 0);
}

uint64_t sub_19A3EB378()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 96) + 112);
  [v2 cooldown];

  return MEMORY[0x1EEE6DFA0](sub_19A402BC0, v1, 0);
}

uint64_t sub_19A3EB40C()
{
  swift_beginAccess();

  sub_19A4011CC(v1);
  swift_endAccess();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v6 = v0[8];
    v11 = v0[7];
    v5 = v11;
    v12 = v6;
    v7 = MEMORY[0x1EEE9AC00](v4);
    MEMORY[0x1EEE9AC00](v7);

    os_unfair_lock_lock(v5 + 4);
    sub_19A402BA4(&v10);
    os_unfair_lock_unlock(v5 + 4);
    v8 = v10;

    if (v8)
    {
      sub_19A57322C();
    }
  }
}

uint64_t sub_19A3EB594()
{
  swift_beginAccess();

  sub_19A4011CC(v1);
  swift_endAccess();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v6 = v0[8];
    v11 = v0[7];
    v5 = v11;
    v12 = v6;
    v7 = MEMORY[0x1EEE9AC00](v4);
    MEMORY[0x1EEE9AC00](v7);

    os_unfair_lock_lock(v5 + 4);
    sub_19A402A50(&v10);
    os_unfair_lock_unlock(v5 + 4);
    v8 = v10;

    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      sub_19A57322C();
    }
  }
}

uint64_t KeyboardEmojiGenerator.__allocating_init()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];
  v2 = sub_19A572CFC();
  v4 = v3;

  LODWORD(v1) = [v0 processIdentifier];
  v5 = getuid();

  v7[0] = v2;
  v7[1] = v4;
  v8 = v1;
  v9 = v5;
  return _s16VisualGeneration22KeyboardEmojiGeneratorC6clientAcA14ClientIdentityV_tcfC_0(v7);
}

uint64_t sub_19A3EB7F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DefinitionSession();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00F8);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(v1 + 96) = v13;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v14 = sub_19A5723FC();
  __swift_project_value_buffer(v14, qword_1ED82BCF0);
  sub_19A4017A8(a1, v12, type metadata accessor for DefinitionSession);
  sub_19A4017A8(a1, v10, type metadata accessor for DefinitionSession);
  v15 = sub_19A5723DC();
  v16 = sub_19A57356C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v49 = v4;
    v18 = v17;
    v46 = swift_slowAlloc();
    v50 = v46;
    *v18 = 136315394;
    v19 = &v12[*(v49 + 20)];
    v20 = *(v19 + 1);
    *&v51 = *v19;
    *(&v51 + 1) = v20;
    *&v52 = *(v19 + 2);

    v21 = sub_19A572DAC();
    v47 = v7;
    v48 = a1;
    v22 = v21;
    v24 = v23;
    sub_19A401930(v12, type metadata accessor for DefinitionSession);
    v25 = sub_19A31F114(v22, v24, &v50);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = *(v49 + 88);
    v27 = &v10[v26 + *(type metadata accessor for GenerationRecipe(0) + 20)];
    v28 = *v27;
    v29 = v27[1];

    sub_19A401930(v10, type metadata accessor for DefinitionSession);
    v30 = v28;
    a1 = v48;
    v31 = sub_19A31F114(v30, v29, &v50);
    v7 = v47;

    *(v18 + 14) = v31;
    _os_log_impl(&dword_19A2DE000, v15, v16, "Creating generator for %s targeting %s", v18, 0x16u);
    v32 = v46;
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v32, -1, -1);
    v33 = v18;
    v4 = v49;
    MEMORY[0x19A902C50](v33, -1, -1);
  }

  else
  {

    sub_19A401930(v10, type metadata accessor for DefinitionSession);
    sub_19A401930(v12, type metadata accessor for DefinitionSession);
  }

  v34 = *(v2 + 96);

  os_unfair_lock_lock((v34 + 24));
  type metadata accessor for AppleDiffusionResourceFactory(0);
  v35 = static AppleDiffusionResourceFactory.shared(reset:)(0);

  *(v34 + 16) = v35;
  os_unfair_lock_unlock((v34 + 24));

  v36 = *(*(sub_19A44F978() + 16) + 16);
  os_unfair_lock_lock((v36 + 24));
  v37 = *(v36 + 16);

  os_unfair_lock_unlock((v36 + 24));

  *(v2 + 40) = v37;
  v38 = a1 + *(v4 + 88);
  v39 = (v38 + *(type metadata accessor for GenerationRecipe(0) + 20));
  v40 = *v39;
  v41 = v39[1];
  *(v2 + 24) = *v39;
  *(v2 + 32) = v41;
  type metadata accessor for ImageGenerator();

  sub_19A34F314(v40, v41, &v51);
  v42 = v52;
  *(v2 + 48) = v51;
  *(v2 + 64) = v42;
  *(v2 + 80) = v53;
  *(v2 + 16) = sub_19A401320(a1);
  sub_19A4017A8(a1, v7, type metadata accessor for DefinitionSession);
  type metadata accessor for DefinitionSessionAccessor();
  v43 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_19A401D48(v7, v43 + OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession, type metadata accessor for DefinitionSession);
  sub_19A401930(a1, type metadata accessor for DefinitionSession);
  *(v2 + 88) = v43;
  return v2;
}

uint64_t KeyboardEmojiGenerator.hasRequiredResources.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3EBE14, 0, 0);
}

uint64_t sub_19A3EBE14()
{
  v1 = *(*(v0 + 40) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3EBE38, v1, 0);
}

uint64_t sub_19A3EBE38()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3EBEE0, 0, 0);
}

uint64_t sub_19A3EBEE0()
{
  v1 = v0[7];
  v2 = *(v0[6] + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2);
  sub_19A34F6F4(*v3, v3[1]);
  sub_19A401930(v0[7], type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(1);
}

uint64_t KeyboardEmojiGenerator.directableDemographicCategories.getter@<X0>(_DWORD *a1@<X8>)
{
  sub_19A33546C(v1 + 48, &v6, &qword_1EAF9FDA8);
  if (v7)
  {
    sub_19A2EA460(&v6, v8);
    v4 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(*(v3 + 16) + 8))(v4);
    return __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    result = sub_19A2F3FA0(&v6, &qword_1EAF9FDA8);
    *a1 = 0;
  }

  return result;
}

uint64_t sub_19A3EC060(int *a1)
{
  v2 = *a1;
  sub_19A33546C(v1 + 48, &v11, &qword_1EAF9FDA8);
  if (v12)
  {
    sub_19A2EA460(&v11, v13);
    v4 = v14;
    v3 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(*(v3 + 16) + 8))(&v11, v4);
    if ((v2 & ~v11) != 0)
    {
      v5 = v11 & ~v2;
      sub_19A3353AC();
      swift_allocError();
      *v6 = v5;
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    sub_19A2F3FA0(&v11, &qword_1EAF9FDA8);
    v9 = *(v1 + 24);
    v8 = *(v1 + 32);
    sub_19A2F1130();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 3;
    swift_willThrow();
  }
}

uint64_t sub_19A3EC1BC(int a1)
{
  v2 = v1;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1ED82BCF0);
  v5 = sub_19A5723DC();
  v6 = sub_19A57356C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136446210;
    v9 = sub_19A572DAC();
    v11 = sub_19A31F114(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_19A2DE000, v5, v6, "Assigning directive %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    v12 = v8;
    v2 = v1;
    MEMORY[0x19A902C50](v12, -1, -1);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  LODWORD(v25) = a1;
  result = sub_19A3EC060(&v25);
  if (v2)
  {
    v14 = v2;
    v15 = sub_19A5723DC();
    v16 = sub_19A57355C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136446466;
      v19 = sub_19A572DAC();
      v21 = sub_19A31F114(v19, v20, &v25);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v22 = sub_19A57405C();
      v24 = sub_19A31F114(v22, v23, &v25);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_19A2DE000, v15, v16, "Failed to assign directive %{public}s - %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v18, -1, -1);
      MEMORY[0x19A902C50](v17, -1, -1);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_19A3EC4B8(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v8 = sub_19A5723FC();
  __swift_project_value_buffer(v8, qword_1ED82BCF0);

  v9 = sub_19A5723DC();
  v10 = sub_19A57356C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136446210;
    v29 = a2;
    v30 = a3;

    v13 = sub_19A572DAC();
    v15 = sub_19A31F114(v13, v14, &v31);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_19A2DE000, v9, v10, "Assigning directive %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    v16 = v12;
    v4 = v3;
    MEMORY[0x19A902C50](v16, -1, -1);
    MEMORY[0x19A902C50](v11, -1, -1);
  }

  LODWORD(v29) = a1;
  result = sub_19A3EC060(&v29);
  if (v4)
  {

    v18 = v4;
    v19 = sub_19A5723DC();
    v20 = sub_19A57355C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136446466;
      v29 = a2;
      v30 = a3;

      v23 = sub_19A572DAC();
      v25 = sub_19A31F114(v23, v24, &v31);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_19A57405C();
      v28 = sub_19A31F114(v26, v27, &v31);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_19A2DE000, v19, v20, "Failed to assign directive %{public}s - %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v22, -1, -1);
      MEMORY[0x19A902C50](v21, -1, -1);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t KeyboardEmojiGenerator.genderDirective.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3EC87C, 0, 0);
}

uint64_t sub_19A3EC87C()
{
  v1 = *(*(v0 + 40) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3EC8A0, v1, 0);
}

uint64_t sub_19A3EC8A0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3EC948, 0, 0);
}

uint64_t sub_19A3EC948()
{
  v1 = v0[7];
  v2 = *(v0[6] + 88);
  v3 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v2 + 1);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t KeyboardEmojiGenerator.specifyGenderDirective(_:)(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A2F759C;

  return sub_19A3ECA7C(a1);
}

uint64_t sub_19A3ECA7C(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 104) = a1;
  *(v2 + 72) = type metadata accessor for DefinitionSession();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3ECB14, 0, 0);
}

uint64_t sub_19A3ECB14()
{
  sub_19A3EC1BC(1);
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 88) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A3ECBE4, v1, 0);
}

uint64_t sub_19A3ECBE4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 96) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v2 + v5, v1, type metadata accessor for DefinitionSession);
  v6 = *(v3 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v6 + 1) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A3ECCBC, v2, 0);
}

uint64_t sub_19A3ECCBC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t KeyboardEmojiGenerator.dropGenderDirective()()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3ECE1C, 0, 0);
}

uint64_t sub_19A3ECE1C()
{
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3ECE40, v1, 0);
}

uint64_t sub_19A3ECE40()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v2 + v4, v1, type metadata accessor for DefinitionSession);
  v5 = *(v3 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v5 + 1) = 3;

  return MEMORY[0x1EEE6DFA0](sub_19A3ECF10, v2, 0);
}

uint64_t sub_19A3ECF10()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t KeyboardEmojiGenerator.skinToneDirective.getter(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for DefinitionSession();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3ED06C, 0, 0);
}

uint64_t sub_19A3ED06C()
{
  v1 = *(*(v0 + 48) + 88);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3ED090, v1, 0);
}

uint64_t sub_19A3ED090()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3ED138, 0, 0);
}

uint64_t sub_19A3ED138()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[7] + 88);
  *v2 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v3 + 2);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t KeyboardEmojiGenerator.specifySkinToneDirective(_:)(_BYTE *a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = type metadata accessor for DefinitionSession();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 104) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_19A3ED284, 0, 0);
}

uint64_t sub_19A3ED284()
{
  sub_19A3EC1BC(2);
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 88) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A3ED354, v1, 0);
}

uint64_t sub_19A3ED354()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  v4 = *(v0 + 72);
  v5 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 96) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v2 + v5, v1, type metadata accessor for DefinitionSession);
  v6 = *(v4 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v6 + 2) = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A402BC4, v2, 0);
}

uint64_t KeyboardEmojiGenerator.dropSkinToneDirective()()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3ED4C0, 0, 0);
}

uint64_t sub_19A3ED4C0()
{
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3ED4E4, v1, 0);
}

uint64_t sub_19A3ED4E4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v2 + v4, v1, type metadata accessor for DefinitionSession);
  v5 = *(v3 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v5 + 2) = 10;

  return MEMORY[0x1EEE6DFA0](sub_19A402BC8, v2, 0);
}

uint64_t KeyboardEmojiGenerator.personDescriptionDirective.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3ED648, 0, 0);
}

uint64_t sub_19A3ED648()
{
  v1 = *(*(v0 + 40) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3ED66C, v1, 0);
}

uint64_t sub_19A3ED66C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3ED714, 0, 0);
}

uint64_t sub_19A3ED714()
{
  v1 = v0[7];
  v2 = *(v0[6] + 88);
  v3 = v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v2;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);

  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t KeyboardEmojiGenerator.specifyPersonDescriptionDirective(_:analysisLocales:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A3ED7EC, 0, 0);
}

uint64_t sub_19A3ED7EC()
{
  sub_19A3EC4B8(4, v0[2], v0[3]);
  v1 = *(v0[5] + 88);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_19A3005D0;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_19A300EF0(v5, v3, v4, v1);
}

uint64_t KeyboardEmojiGenerator.dropPersonDescriptionDirective()()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3ED990, 0, 0);
}

uint64_t sub_19A3ED990()
{
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3ED9B4, v1, 0);
}

uint64_t sub_19A3ED9B4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3EDA60, 0, 0);
}

uint64_t sub_19A3EDA60()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = *(v0[9] + 88);
  v4 = v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v3;

  *(v4 + 8) = 0;
  *(v4 + 16) = 0;

  return MEMORY[0x1EEE6DFA0](sub_19A402BC8, v2, 0);
}

uint64_t KeyboardEmojiGenerator.discreteRequestIdentifier.getter(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for DefinitionSession();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3EDB88, 0, 0);
}

uint64_t sub_19A3EDB88()
{
  v1 = *(*(v0 + 48) + 88);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3EDBAC, v1, 0);
}

uint64_t sub_19A3EDBAC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3EDC54, 0, 0);
}

uint64_t sub_19A3EDC54()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[7] + 88);
  v4 = v1 + *(type metadata accessor for GenerationRecipe(0) + 72);
  v5 = sub_19A57102C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v4 + v3, v5);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);
  (*(v6 + 56))(v2, 0, 1, v5);

  v7 = v0[1];

  return v7();
}

uint64_t KeyboardEmojiGenerator.definitionSession.getter(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3EDD90, 0, 0);
}

uint64_t sub_19A3EDD90()
{
  v1 = *(*(v0 + 48) + 88);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3EDDB4, v1, 0);
}

uint64_t sub_19A3EDDB4()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);
  v4 = v0[1];

  return v4();
}

uint64_t KeyboardEmojiGenerator.currentGenerationState.getter(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for DefinitionSession();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3EDF24, 0, 0);
}

uint64_t sub_19A3EDF24()
{
  v1 = *(*(v0 + 48) + 88);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3EDF48, v1, 0);
}

uint64_t sub_19A3EDF48()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3EDFF0, 0, 0);
}

uint64_t sub_19A3EDFF0()
{
  v1 = v0[9];
  v15 = v0[8];
  v2 = v0[7];
  v3 = v0[5];
  v4 = sub_19A57102C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v2, 1, 1, v4);
  v7 = type metadata accessor for GenerationState();
  v8 = v7[5];
  v6(v3 + v8, 1, 1, v4);
  (*(v5 + 16))(v3, v1, v4);
  sub_19A3315F4(v2, v3 + v8);
  v9 = (v1 + *(v15 + 20));
  v10 = *v9;
  v11 = v9[1];
  v12 = (v3 + v7[6]);
  *v12 = v10;
  v12[1] = v11;
  sub_19A4017A8(v1 + *(v15 + 88), v3 + v7[7], type metadata accessor for GenerationRecipe);

  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v13 = v0[1];

  return v13();
}

uint64_t KeyboardEmojiGenerator.apply(generationState:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for DefinitionSession();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3EE230, 0, 0);
}

uint64_t sub_19A3EE230()
{
  v1 = *(*(v0 + 72) + 88);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3EE254, v1, 0);
}

uint64_t sub_19A3EE254()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[13] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3EE300, 0, 0);
}

uint64_t sub_19A3EE300()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = type metadata accessor for GenerationState();
  sub_19A331CD0(v4 + *(v5 + 28), v1 + *(v3 + 88), type metadata accessor for GenerationRecipe);

  return MEMORY[0x1EEE6DFA0](sub_19A3EE3A4, v2, 0);
}

uint64_t sub_19A3EE3A4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3EE490()
{
  v1 = *(*(v0 + 16) + 88);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_19A3EE53C;

  return sub_19A3EAE8C(v1);
}

uint64_t sub_19A3EE53C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_19A3EE650()
{
  v1 = *(*(v0 + 16) + 88);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_19A402BBC;

  return sub_19A3EB1B0(v1);
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.personalizationUUID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0) + 24);

  return sub_19A3315F4(a1, v3);
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.performLanguageCheck.setter(char a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.languageAnalysisParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0) + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.languageAnalysisParameters.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = v1 + *(type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0) + 32);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.reportSinglePersonAmbiguities.setter(char a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.performPromptRewrite.setter(char a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.initialPromptReuseCount.setter(uint64_t a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.rewrittenPromptReuseCount.setter(uint64_t a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.maxRewriteAttemptsForPersonalization.setter(uint64_t a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.maxRewriteAttemptsForNonPersonalization.setter(uint64_t a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.promptRewriteStrategy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.promptRewriteStrategy.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.promptRewriteSeed.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  v6 = v2 + *(result + 64);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.personalizationObservationID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  v6 = v2 + *(result + 68);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentOptions.init()@<X0>(char *a1@<X8>)
{
  *a1 = 257;
  v2 = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  v3 = v2[6];
  v4 = sub_19A57102C();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  a1[v2[7]] = 1;
  a1[v2[9]] = 1;
  a1[v2[10]] = 0;
  *&a1[v2[11]] = 1;
  *&a1[v2[12]] = 1;
  *&a1[v2[13]] = 4;
  *&a1[v2[14]] = 4;
  a1[v2[15]] = 3;
  v5 = &a1[v2[16]];
  *v5 = 0;
  v5[8] = 1;
  v6 = &a1[v2[17]];
  *v6 = 0;
  v6[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
  v7 = *(sub_19A57112C() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19A576E10;
  result = sub_19A474D68(v9 + v8);
  v11 = &a1[v2[8]];
  *v11 = v9;
  *(v11 + 1) = 5;
  *(v11 + 4) = 1064514355;
  return result;
}

uint64_t sub_19A3EF120@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A33478C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_19A2E0A50(v3);
}

uint64_t sub_19A3EF1A0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A334754;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentInteractable.eventsHandler.getter()
{
  v1 = *v0;
  sub_19A2E0A50(*v0);
  return v1;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentInteractable.eventsHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_19A2E0A60(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_19A3EF2C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_19A578A80;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_19A2E0A50(v3);
}

uint64_t sub_19A3EF348(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_19A582290;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentInteractable.ambiguityResolver.getter()
{
  v1 = *(v0 + 16);
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentInteractable.ambiguityResolver.setter(uint64_t a1, uint64_t a2)
{
  result = sub_19A2E0A60(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double KeyboardEmojiGenerator.DescriptionAssignmentInteractable.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t KeyboardEmojiGenerator.assignEmojiDescription(_:options:interactable:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for DefinitionSession();
  *(v5 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1148);
  *(v5 + 56) = swift_task_alloc();
  v7 = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  *(v5 + 64) = v7;
  *(v5 + 72) = *(v7 - 8);
  *(v5 + 80) = swift_task_alloc();
  v8 = a4[1];
  *(v5 + 88) = *a4;
  *(v5 + 104) = v8;

  return MEMORY[0x1EEE6DFA0](sub_19A3EF5B4, 0, 0);
}

uint64_t sub_19A3EF5B4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  sub_19A33546C(*(v0 + 32), v3, &qword_1EAFA1148);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 80);
  if (v5 == 1)
  {
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    *v6 = 257;
    v9 = v7[6];
    v10 = sub_19A57102C();
    (*(*(v10 - 8) + 56))(&v6[v9], 1, 1, v10);
    v6[v7[7]] = 1;
    v6[v7[9]] = 1;
    v6[v7[10]] = 0;
    *&v6[v7[11]] = 1;
    *&v6[v7[12]] = 1;
    *&v6[v7[13]] = 4;
    *&v6[v7[14]] = 4;
    v6[v7[15]] = 3;
    v11 = &v6[v7[16]];
    *v11 = 0;
    v11[8] = 1;
    v12 = &v6[v7[17]];
    *v12 = 0;
    v12[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
    v13 = *(sub_19A57112C() - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_19A576E10;
    sub_19A474D68(v15 + v14);
    v16 = &v6[v7[8]];
    *v16 = v15;
    *(v16 + 1) = 5;
    *(v16 + 4) = 1064514355;
    if (v4(v8, 1, v7) != 1)
    {
      sub_19A2F3FA0(*(v0 + 56), &qword_1EAFA1148);
    }
  }

  else
  {
    sub_19A401D48(*(v0 + 56), *(v0 + 80), type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  }

  v17 = *(v0 + 80);
  v19 = *(v0 + 16);
  v18 = *(v0 + 24);
  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  v21 = *(v0 + 104);
  v22 = *(v0 + 88);
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0xE000000000000000;
  *(v20 + 48) = v17;
  *(v20 + 56) = v22;
  *(v20 + 72) = v21;
  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_19A3EF8CC;
  v24 = *(v0 + 48);

  return sub_19A379EE8(v24, &unk_19A581840, v20);
}

uint64_t sub_19A3EF8CC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_19A3EFAA8;
  }

  else
  {
    sub_19A401930(*(v2 + 48), type metadata accessor for DefinitionSession);

    v3 = sub_19A3EFA08;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A3EFA08()
{
  sub_19A401930(*(v0 + 80), type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A3EFAA8()
{
  v1 = *(v0 + 80);

  sub_19A401930(v1, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A3EFB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  *(v8 + 176) = swift_task_alloc();
  v9 = type metadata accessor for DefinitionSession();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3EFC5C, 0, 0);
}

uint64_t sub_19A3EFC5C()
{
  v1 = *(v0 + 96);
  v2 = *(*(v0 + 184) + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2);
  sub_19A34F6F4(*v3, v3[1]);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  v15 = *(v0 + 160);
  v16 = *(v0 + 144);
  sub_19A4017A8(*(v0 + 96), v4, type metadata accessor for DefinitionSession);
  sub_19A4017A8(v7, v5, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  *(v0 + 40) = &type metadata for CurrentTaskCanceller;
  *(v0 + 48) = &off_1F0DAF620;
  type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentTask();
  v11 = swift_allocObject();
  *(v0 + 208) = v11;
  sub_19A57101C();
  sub_19A401D48(v4, v11 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
  sub_19A2EA460((v0 + 16), v11 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__sendableCanceller);
  v11[2] = v10;
  v11[3] = v8;
  v11[4] = v9;
  v11[5] = v6;
  sub_19A401D48(v5, v11 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__assignmentOptions, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  *(v0 + 72) = v15;
  *(v0 + 56) = v16;

  v12 = swift_task_alloc();
  *(v0 + 216) = v12;
  *v12 = v0;
  v12[1] = sub_19A2F6F8C;
  v13 = *(v0 + 88);

  return sub_19A3B6158(v13, (v0 + 56));
}

uint64_t KeyboardEmojiGenerator.assignedEmojiDescription.getter()
{
  *(v1 + 40) = v0;
  type metadata accessor for DefinitionSession();
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3EFF50, 0, 0);
}

uint64_t sub_19A3EFF50()
{
  v1 = *(*(v0 + 40) + 88);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3EFF74, v1, 0);
}

uint64_t sub_19A3EFF74()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F001C, 0, 0);
}

uint64_t sub_19A3F001C()
{
  v1 = *(v0 + 48);
  v2 = sub_19A4B9374();
  v4 = v3;
  sub_19A401930(v1, type metadata accessor for DefinitionSession);
  if (v4)
  {
  }

  else
  {
    v2 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

Swift::Void __swiftcall KeyboardEmojiGenerator.dropEmojiDescriptionAssignment()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v5 = sub_19A5723FC();
  __swift_project_value_buffer(v5, qword_1ED82BCF0);
  v6 = sub_19A5723DC();
  v7 = sub_19A57355C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_19A31F114(0xD000000000000020, 0x800000019A598CD0, &v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDA0);
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  *(v10 + 24) = 0;

  v11 = dispatch_semaphore_create(0);
  v12 = sub_19A5731CC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = &unk_19A581860;
  v13[6] = v1;
  v13[7] = v10;
  v14 = v11;

  sub_19A307070(0, 0, v4, &unk_19A577120, v13);

  sub_19A57366C();
  if (*(v10 + 16))
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_19A3F038C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  type metadata accessor for DefinitionSession();
  *(v2 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F041C, 0, 0);
}

uint64_t sub_19A3F041C()
{
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F0440, v1, 0);
}

uint64_t sub_19A3F0440()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[11] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F04EC, 0, 0);
}

uint64_t sub_19A3F04EC()
{
  v1 = *(v0 + 80);
  sub_19A4B958C();

  return MEMORY[0x1EEE6DFA0](sub_19A3F0554, v1, 0);
}

uint64_t sub_19A3F0554()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t KeyboardEmojiGenerator.dropEmojiDescriptionAssignment()()
{
  *(v1 + 64) = v0;
  type metadata accessor for DefinitionSession();
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F06AC, 0, 0);
}

uint64_t sub_19A3F06AC()
{
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F06D0, v1, 0);
}

uint64_t sub_19A3F06D0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[11] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F077C, 0, 0);
}

uint64_t sub_19A3F077C()
{
  v1 = *(v0 + 80);
  sub_19A4B958C();

  return MEMORY[0x1EEE6DFA0](sub_19A402BCC, v1, 0);
}

uint64_t sub_19A3F07E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  type metadata accessor for DefinitionSession();
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F087C, 0, 0);
}

uint64_t sub_19A3F087C()
{
  v1 = *(*(v0 + 104) + 88);
  *(v0 + 120) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F08A0, v1, 0);
}

uint64_t sub_19A3F08A0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[16] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_19A3F098C;
  v5 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];

  return sub_19A3F0BE0(v5, v6, v10, v8, v9, v7);
}

uint64_t sub_19A3F098C()
{
  v2 = *v1;

  v3 = *(v2 + 120);
  if (v0)
  {

    v4 = sub_19A3F0B8C;
  }

  else
  {
    v4 = sub_19A3F0AC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_19A3F0AC4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3F0BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v6[8] = swift_task_alloc();
  v6[9] = _s17AssignmentOptionsVMa();
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F0CB4, 0, 0);
}

uint64_t sub_19A3F0CB4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v41 = v3;
  v49 = v0[7];
  v50 = v0[6];
  v4 = v0[3];
  v47 = v0[5];
  v48 = v0[4];
  v46 = v0[2];
  v43 = *v4;
  v42 = v4[1];
  v5 = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  sub_19A33546C(&v4[v5[6]], v3, &qword_1EAF9FD80);
  v6 = &v4[v5[8]];
  v30 = *v6;
  v40 = *(v6 + 1);
  v7 = *(v6 + 4);
  v38 = v4[v5[9]];
  v39 = v4[v5[7]];
  v37 = v4[v5[10]];
  v35 = *&v4[v5[12]];
  v36 = *&v4[v5[11]];
  v33 = *&v4[v5[14]];
  v34 = *&v4[v5[13]];
  v8 = &v4[v5[17]];
  v32 = *v8;
  v31 = v8[8];
  v29 = v4[v5[15]];
  v9 = &v4[v5[16]];
  v28 = *v9;
  v27 = v9[8];
  v10 = v1[6];
  v45 = sub_19A57102C();
  v44 = *(*(v45 - 8) + 56);
  v44(&v2[v10], 1, 1, v45);
  v11 = v1[7];
  v25 = v1[10];
  v26 = v1[9];
  v23 = v1[12];
  v24 = v1[11];
  v12 = v1[13];
  v22 = v1[14];
  v13 = v1[16];
  v14 = &v2[v1[15]];
  v2[v13] = 3;
  v15 = &v2[v1[17]];
  *&v2[v1[18]] = 5;
  *v2 = v43;
  v2[1] = v42;

  sub_19A3315F4(v41, &v2[v10]);
  v2[v11] = v39;
  v16 = &v2[v1[8]];
  *v16 = v30;
  *(v16 + 1) = v40;
  *(v16 + 4) = v7;
  v2[v26] = v38;
  v2[v25] = v37;
  *&v2[v24] = v36;
  *&v2[v23] = v35;
  *&v2[v12] = v34;
  *&v2[v22] = v33;
  *v14 = v32;
  v14[8] = v31;
  v2[v13] = v29;
  *v15 = v28;
  v15[8] = v27;
  sub_19A4B9828(v2);
  sub_19A401930(v2, _s17AssignmentOptionsVMa);
  v17 = type metadata accessor for DefinitionSession();
  v18 = (v46 + *(v17 + 32));

  v18[1] = v48;
  v18[2] = v47;
  sub_19A436024();

  v18[3] = v50;
  v18[4] = v49;
  sub_19A436024();
  v19 = *(v17 + 28);
  sub_19A2F3FA0(v46 + v19, &qword_1EAF9FD80);
  v44((v46 + v19), 1, 1, v45);
  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  v20[1] = sub_19A2F8470;

  return sub_19A4C4EB0();
}

uint64_t KeyboardEmojiGenerator.findPersonIndications()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for GenerationRecipe(0);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for DefinitionSession();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F1104, 0, 0);
}

uint64_t sub_19A3F1104()
{
  v1 = *(*(v0 + 48) + 88);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F1128, v1, 0);
}

uint64_t sub_19A3F1128()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F11D0, 0, 0);
}

uint64_t sub_19A3F11D0()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  sub_19A4017A8(v1 + *(v0[9] + 88), v2, type metadata accessor for GenerationRecipe);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);
  v5 = (v2 + *(v3 + 104));
  v7 = *v5;
  v6 = v5[1];
  v8 = v5[2];
  v9 = v5[3];

  sub_19A401930(v2, type metadata accessor for GenerationRecipe);
  *v4 = v7;
  v4[1] = v6;
  v4[2] = v8;
  v4[3] = v9;

  v10 = v0[1];

  return v10();
}

uint64_t KeyboardEmojiGenerator.conditioningImage.getter(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for DefinitionSession();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F1380, 0, 0);
}

uint64_t sub_19A3F1380()
{
  v1 = *(*(v0 + 48) + 88);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F13A4, v1, 0);
}

uint64_t sub_19A3F13A4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F144C, 0, 0);
}

uint64_t sub_19A3F144C()
{
  v1 = v0[8];
  v2 = *(v1 + *(v0[7] + 52));
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = v3;
  }

  else
  {
    v3 = 0;
    v4 = -1;
  }

  v6 = v0[5];
  *v6 = v3;
  *(v6 + 8) = v4;
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v7 = v0[1];

  return v7();
}

uint64_t KeyboardEmojiGenerator.conditioningImageFaces.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F15A8, 0, 0);
}

uint64_t sub_19A3F15A8()
{
  v1 = *(*(v0 + 40) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F15CC, v1, 0);
}

uint64_t sub_19A3F15CC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F1674, 0, 0);
}

uint64_t sub_19A3F1674()
{
  v1 = *(v0 + 56);
  v2 = sub_19A39D424();
  sub_19A401930(v1, type metadata accessor for DefinitionSession);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_19A322840(0, v3, 0);
      v4 = v17;
      v5 = *(v17 + 16);
      v6 = 32 * v5;
      v7 = (v2 + 48);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;
        v10 = *(v17 + 24);
        v11 = v5 + 1;
        if (v5 >= v10 >> 1)
        {
          v15 = *v7;
          v16 = *(v7 - 1);
          sub_19A322840((v10 > 1), v5 + 1, 1);
          v9 = v15;
          v8 = v16;
        }

        *(v17 + 16) = v11;
        v12 = v17 + v6;
        *(v12 + 32) = v8;
        *(v12 + 48) = v9;
        v6 += 32;
        v7 += 3;
        v5 = v11;
        --v3;
      }

      while (v3);
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *(v0 + 8);

  return v13(v4);
}

uint64_t KeyboardEmojiGenerator.recommendedConditioningImageDimensions.getter@<X0>(uint64_t a1@<X8>)
{
  sub_19A33546C(v1 + 48, v8, &qword_1EAF9FDA8);
  v3 = v9;
  if (!v9)
  {
    result = sub_19A2F3FA0(v8, &qword_1EAF9FDA8);
    goto LABEL_5;
  }

  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v4 + 56))(&v11, v3, v4);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v8);
  if (v12)
  {
LABEL_5:
    v7 = 0uLL;
    v6 = 1;
    goto LABEL_6;
  }

  v6 = 0;
  v7 = v11;
LABEL_6:
  *a1 = v7;
  *(a1 + 16) = v6;
  return result;
}

uint64_t KeyboardEmojiGenerator.assign(conditioningImage:options:eventsHandler:)(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = *a2;
  *(v4 + 16) = *a1;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  v9 = swift_task_alloc();
  *(v4 + 32) = v9;
  *v9 = v4;
  v9[1] = sub_19A2FB2A0;

  return sub_19A3F19F0((v4 + 16), (v4 + 25), a3, a4);
}

uint64_t sub_19A3F19F0(uint64_t *a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 104) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB0);
  *(v5 + 128) = swift_task_alloc();
  v8 = type metadata accessor for DefinitionSession();
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a1;
  *(v5 + 168) = v9;
  *(v5 + 176) = v10;
  *(v5 + 234) = *(a1 + 8);
  *(v5 + 232) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_19A3F1B28, 0, 0);
}

uint64_t sub_19A3F1B28()
{
  v1 = *(*(v0 + 120) + 88);
  *(v0 + 184) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F1B4C, v1, 0);
}

uint64_t sub_19A3F1B4C()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[24] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F1BFC, 0, 0);
}

uint64_t sub_19A3F1BFC()
{
  v1 = *(v0 + 160);
  v2 = *(*(v0 + 136) + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2);
  sub_19A34F6F4(*v3, v3[1]);
  v4 = *(v0 + 232);
  v5 = *(v0 + 234);
  v6 = *(v0 + 176);
  v7 = *(v0 + 152);
  if (v4 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = HIBYTE(v4) & 1;
  }

  v9 = (*(v0 + 232) == 2) | v4;
  sub_19A4017A8(*(v0 + 160), *(v0 + 152), type metadata accessor for DefinitionSession);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0040);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_19A576E10;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  type metadata accessor for KeyboardEmojiGenerator.ConditioningImageAssignmentTask();
  v11 = swift_allocObject();
  *(v0 + 200) = v11;
  *(v0 + 40) = &type metadata for CurrentTaskCanceller;
  *(v0 + 48) = &off_1F0DAF620;
  v12 = v6;
  sub_19A57101C();
  sub_19A401D48(v7, v11 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
  *(v11 + 16) = v10;
  sub_19A2EA460((v0 + 16), v11 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__sendableCanceller);
  v13 = (v11 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__options);
  *v13 = v9 & 1;
  v13[1] = v8;
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_19A3F1E64;
  v15 = *(v0 + 128);
  v16 = *(v0 + 104);
  v17 = *(v0 + 112);

  return sub_19A49C95C(v15, v16, v17);
}

uint64_t sub_19A3F1E64()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_19A3F218C;
  }

  else
  {
    v2 = sub_19A3F1F78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3F1F78()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];

  sub_19A401930(v2, type metadata accessor for DefinitionSession);
  (*(v4 + 56))(v5, 0, 1, v3);

  return MEMORY[0x1EEE6DFA0](sub_19A3F203C, v1, 0);
}

uint64_t sub_19A3F203C()
{
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_19A2F3FA0(v1, &qword_1EAF9FDB0);
  }

  else
  {
    v3 = v0[23];
    v2 = v0[24];
    v4 = v0[21];
    sub_19A401D48(v1, v4, type metadata accessor for DefinitionSession);
    swift_beginAccess();
    sub_19A331CD0(v4, v3 + v2, type metadata accessor for DefinitionSession);
    swift_endAccess();
    sub_19A401930(v4, type metadata accessor for DefinitionSession);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A3F218C()
{

  v0[28] = v0[27];
  v1 = v0[23];
  sub_19A401930(v0[20], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FBC24, v1, 0);
}

uint64_t sub_19A3F221C(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB0);
  *(v5 + 136) = swift_task_alloc();
  v7 = type metadata accessor for DefinitionSession();
  *(v5 + 144) = v7;
  *(v5 + 152) = *(v7 - 8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 232) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_19A3F233C, 0, 0);
}

uint64_t sub_19A3F233C()
{
  v1 = *(*(v0 + 128) + 88);
  *(v0 + 184) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F2360, v1, 0);
}

uint64_t sub_19A3F2360()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[24] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F2410, 0, 0);
}

uint64_t sub_19A3F2410()
{
  v1 = *(v0 + 168);
  v2 = *(*(v0 + 144) + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2);
  sub_19A34F6F4(*v3, v3[1]);
  v4 = *(v0 + 232);
  v5 = *(v0 + 160);
  v6 = *(v0 + 104);
  if (v4 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = HIBYTE(v4) & 1;
  }

  v8 = (*(v0 + 232) == 2) | v4;
  sub_19A4017A8(*(v0 + 168), *(v0 + 160), type metadata accessor for DefinitionSession);
  type metadata accessor for KeyboardEmojiGenerator.ConditioningImageAssignmentTask();
  v9 = swift_allocObject();
  *(v0 + 200) = v9;
  *(v0 + 40) = &type metadata for CurrentTaskCanceller;
  *(v0 + 48) = &off_1F0DAF620;
  sub_19A57101C();
  sub_19A401D48(v5, v9 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
  *(v9 + 16) = v6;
  sub_19A2EA460((v0 + 16), v9 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__sendableCanceller);
  v10 = (v9 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__options);
  *v10 = v8 & 1;
  v10[1] = v7;

  v11 = swift_task_alloc();
  *(v0 + 208) = v11;
  *v11 = v0;
  v11[1] = sub_19A3F2638;
  v12 = *(v0 + 136);
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);

  return sub_19A49C95C(v12, v13, v14);
}

uint64_t sub_19A3F2638()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_19A3F2960;
  }

  else
  {
    v2 = sub_19A3F274C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3F274C()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];

  sub_19A401930(v2, type metadata accessor for DefinitionSession);
  (*(v4 + 56))(v5, 0, 1, v3);

  return MEMORY[0x1EEE6DFA0](sub_19A3F2810, v1, 0);
}

uint64_t sub_19A3F2810()
{
  v1 = v0[17];
  if ((*(v0[19] + 48))(v1, 1, v0[18]) == 1)
  {
    sub_19A2F3FA0(v1, &qword_1EAF9FDB0);
  }

  else
  {
    v3 = v0[23];
    v2 = v0[24];
    v4 = v0[22];
    sub_19A401D48(v1, v4, type metadata accessor for DefinitionSession);
    swift_beginAccess();
    sub_19A331CD0(v4, v3 + v2, type metadata accessor for DefinitionSession);
    swift_endAccess();
    sub_19A401930(v4, type metadata accessor for DefinitionSession);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A3F2960()
{

  v0[28] = v0[27];
  v1 = v0[23];
  sub_19A401930(v0[21], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F29F0, v1, 0);
}

uint64_t sub_19A3F29F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KeyboardEmojiGenerator.dropConditioningImageAssignment()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A2F759C;

  return sub_19A3F2B08();
}

uint64_t sub_19A3F2B08()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F2B9C, 0, 0);
}

uint64_t sub_19A3F2B9C()
{
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F2BC0, v1, 0);
}

uint64_t sub_19A3F2BC0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F2C6C, 0, 0);
}

uint64_t sub_19A3F2C6C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v2 + *(v3 + 88);
  v5 = *(type metadata accessor for GenerationRecipe(0) + 100);

  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + v5) = MEMORY[0x1E69E7CC0];
  v7 = *(v3 + 52);

  *(v2 + v7) = v6;
  sub_19A4C64E0();

  return MEMORY[0x1EEE6DFA0](sub_19A402BC8, v1, 0);
}

int64x2_t sub_19A3F2D20()
{
  result = vdupq_n_s64(0x180uLL);
  xmmword_1EAFA1138 = result;
  return result;
}

void KeyboardEmojiGenerator.defaultEmojiDimensions.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    *a1 = *(v2 + 32);
  }

  else
  {
    __break(1u);
  }
}

uint64_t KeyboardEmojiGenerator.generationSeed.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00]();
  v3 = &v12 - v2;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1ED82BCF0);
  sub_19A4B3BEC(0x69746172656E6567, 0xEE00646565536E6FLL, 0xD000000000000016, 0x800000019A596130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDF0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 256;
  *(v5 + 32) = 0;

  v6 = dispatch_semaphore_create(0);
  v7 = sub_19A5731CC();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = &unk_19A5818B0;
  v8[6] = v1;
  v8[7] = v5;
  v9 = v6;

  sub_19A307070(0, 0, v3, &unk_19A5818C0, v8);

  result = sub_19A57366C();
  if (*(v5 + 25))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v5 + 16);

    return v11;
  }

  return result;
}

void KeyboardEmojiGenerator.generationSeed.setter(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00]();
  v6 = &v14 - v5;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v7 = sub_19A5723FC();
  __swift_project_value_buffer(v7, qword_1ED82BCF0);
  sub_19A4B3BEC(0x69746172656E6567, 0xEE00646565536E6FLL, 0xD000000000000017, 0x800000019A596150);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDA0);
  v9 = swift_allocObject();
  *(v9 + 16) = 1;
  *(v9 + 24) = 0;

  v10 = dispatch_semaphore_create(0);
  v11 = sub_19A5731CC();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = &unk_19A5818D0;
  v12[6] = v8;
  v12[7] = v9;
  v13 = v10;

  sub_19A307070(0, 0, v6, &unk_19A5818D8, v12);

  sub_19A57366C();
  if (*(v9 + 16))
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_19A3F31E4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = type metadata accessor for DefinitionSession();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F3278, 0, 0);
}

uint64_t sub_19A3F3278()
{
  v1 = *(*(v0 + 48) + 88);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F329C, v1, 0);
}

uint64_t sub_19A3F329C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F3344, 0, 0);
}

uint64_t sub_19A3F3344()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[7] + 88);
  v4 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 28) + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);
  *v2 = v5;
  *(v2 + 8) = v6;

  v7 = v0[1];

  return v7();
}

uint64_t KeyboardEmojiGenerator.assignedGenerationSeed.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F348C, 0, 0);
}

uint64_t sub_19A3F348C()
{
  v1 = *(*(v0 + 40) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F34B0, v1, 0);
}

uint64_t sub_19A3F34B0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F3558, 0, 0);
}

uint64_t sub_19A3F3558()
{
  v1 = v0[7];
  v2 = *(v0[6] + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 28) + v2);
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_19A3F3608(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 80) = type metadata accessor for DefinitionSession();
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F36A0, 0, 0);
}

uint64_t sub_19A3F36A0()
{
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F36C4, v1, 0);
}

uint64_t sub_19A3F36C4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 112);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 104) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v2 + v6, v1, type metadata accessor for DefinitionSession);
  v7 = *(v4 + 88);
  v8 = v1 + *(type metadata accessor for GenerationRecipe(0) + 28) + v7;
  *v8 = v5;
  *(v8 + 8) = v3 & 1;

  return MEMORY[0x1EEE6DFA0](sub_19A3F37A4, v2, 0);
}

uint64_t sub_19A3F37A4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t KeyboardEmojiGenerator.assign(generationSeed:)(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = type metadata accessor for DefinitionSession();
  *(v3 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F3904, 0, 0);
}

uint64_t sub_19A3F3904()
{
  v1 = *(*(v0 + 72) + 88);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F3928, v1, 0);
}

uint64_t sub_19A3F3928()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 112);
  v5 = *(v0 + 64);
  v6 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 104) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v2 + v6, v1, type metadata accessor for DefinitionSession);
  v7 = *(v3 + 88);
  v8 = v1 + *(type metadata accessor for GenerationRecipe(0) + 28) + v7;
  *v8 = v5;
  *(v8 + 8) = v4 & 1;

  return MEMORY[0x1EEE6DFA0](sub_19A402BD0, v2, 0);
}

void (*KeyboardEmojiGenerator.generationSeed.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = KeyboardEmojiGenerator.generationSeed.getter();
  *(a1 + 8) = v3 & 1;
  return sub_19A3F3A5C;
}

uint64_t KeyboardEmojiGenerator.setImageVariations(repeatedGenerationSeed:generationSeeds:scribbleStrengths:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 128) = a2;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  *(v5 + 96) = type metadata accessor for DefinitionSession();
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F3B28, 0, 0);
}

uint64_t sub_19A3F3B28()
{
  v1 = *(*(v0 + 88) + 88);
  *(v0 + 112) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F3B4C, v1, 0);
}

uint64_t sub_19A3F3B4C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[15] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F3BF8, 0, 0);
}

uint64_t sub_19A3F3BF8()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 128);
  v7 = *(v0 + 64);
  type metadata accessor for ImageVariations();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6 & 1;
  *(v8 + 48) = v5;
  *(v8 + 56) = v4;
  v9 = *(v3 + 24);

  *(v2 + v9) = v8;

  return MEMORY[0x1EEE6DFA0](sub_19A3F3CD4, v1, 0);
}

uint64_t sub_19A3F3CD4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

VisualGeneration::KeyboardEmojiGenerator::Scaler_optional __swiftcall KeyboardEmojiGenerator.Scaler.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void KeyboardEmojiGenerator.GenerationOptions.init()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
}

uint64_t KeyboardEmojiGenerator.GenerationOptions.strikeSizes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.GenerationOptions.lcmScale.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t KeyboardEmojiGenerator.GenerationOptions.engineeredPromptLanguageAnalysisParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v2;
}

uint64_t KeyboardEmojiGenerator.GenerationOptions.engineeredPromptLanguageAnalysisParameters.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

uint64_t KeyboardEmojiGenerator.GeneratedEmoji.representations.getter()
{
  v1 = type metadata accessor for GeneratedImage();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_19A322860(0, v6, 0);
    v7 = v18;
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_19A4017A8(v8, v4, type metadata accessor for GeneratedImage);
      v10 = *v4;
      v11 = v4[8];
      v12 = *v4;
      sub_19A401930(v4, type metadata accessor for GeneratedImage);
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_19A322860((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t KeyboardEmojiGenerator.GeneratedEmoji.promptAfterRewrites.getter()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v2 = type metadata accessor for GeneratedImage();
  v3 = *(v1 + *(v2 + 32) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)));

  return v3;
}

uint64_t KeyboardEmojiGenerator.GeneratedEmoji.promptAfterAssembly.getter()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v2 = type metadata accessor for GeneratedImage();
  v3 = *(v1 + *(v2 + 36) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)));

  return v3;
}

BOOL sub_19A3F42C0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    if (v5 == 1)
    {
      [v4 extent];
      sub_19A39AAB4(v25, v6, v7);
      Width = v25[0];
      v9 = v25[1];
      goto LABEL_7;
    }

    v10 = v4;
    Width = CVPixelBufferGetWidth(v10);
    Height = CVPixelBufferGetHeight(v10);
  }

  else
  {
    v10 = v4;
    Width = CGImageGetWidth(v10);
    Height = CGImageGetHeight(v10);
  }

  v9 = Height;

LABEL_7:
  v12 = *a2;
  if (*(a2 + 8))
  {
    if (*(a2 + 8) == 1)
    {
      [v12 extent];
      sub_19A39AAB4(v24, v13, v14);
      v15 = v24[0];
      v16 = v24[1];
      goto LABEL_13;
    }

    v17 = v12;
    v15 = CVPixelBufferGetWidth(v17);
    v18 = CVPixelBufferGetHeight(v17);
  }

  else
  {
    v17 = v12;
    v15 = CGImageGetWidth(v17);
    v18 = CGImageGetHeight(v17);
  }

  v16 = v18;

LABEL_13:
  if (v16 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v16;
  }

  if (v9 >= Width)
  {
    v20 = Width;
  }

  else
  {
    v20 = v9;
  }

  if (v19 < v20)
  {
    return 1;
  }

  if (v20 < v19)
  {
    return 0;
  }

  if (v16 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v16;
  }

  if (v9 <= Width)
  {
    v23 = Width;
  }

  else
  {
    v23 = v9;
  }

  return v22 < v23;
}

uint64_t KeyboardEmojiGenerator.generatedEmoji(options:eventsHandler:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a3;
  v7 = sub_19A57102C();
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  v8 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v8;
  *(v5 + 48) = a2[2];
  *(v5 + 61) = *(a2 + 45);

  return MEMORY[0x1EEE6DFA0](sub_19A3F4514, 0, 0);
}

uint64_t sub_19A3F4514()
{
  sub_19A57101C();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_19A3F45BC;
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);

  return sub_19A3F47D0(v4, (v0 + 16), v2, v5, v3);
}

uint64_t sub_19A3F45BC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_19A3F4750;
  }

  else
  {
    v2 = sub_19A3F46D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3F46D0()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19A3F4750()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19A3F47D0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 440) = a5;
  *(v6 + 448) = v5;
  *(v6 + 424) = a3;
  *(v6 + 432) = a4;
  *(v6 + 408) = a1;
  *(v6 + 416) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = type metadata accessor for GenerationState();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = type metadata accessor for DefinitionSession();
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  v8 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v8;
  *(v6 + 48) = a2[2];
  *(v6 + 61) = *(a2 + 45);

  return MEMORY[0x1EEE6DFA0](sub_19A3F4964, 0, 0);
}

uint64_t sub_19A3F4964()
{
  v1 = *(v0 + 32);
  if (v1 == 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v1 = 0;
    v5 = 0;
    v6 = 1;
    *(v0 + 584) = 1;
    v7 = 0uLL;
    v8 = 1;
    v9 = 1;
    v10 = 1;
  }

  else
  {
    v11 = *(v0 + 416);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v5 = *(v0 + 25);
    v12 = *(v11 + 14);
    *(v0 + 84) = *(v11 + 10);
    *(v0 + 88) = v12;
    v4 = *(v0 + 40);
    LOBYTE(v12) = *(v11 + 27);
    *(v0 + 90) = *(v11 + 25);
    *(v0 + 92) = v12;
    v3 = *(v0 + 44);
    v6 = *(v0 + 48);
    v13 = *(v11 + 36);
    *(v0 + 77) = *(v11 + 33);
    *(v0 + 80) = v13;
    v7 = *(v0 + 56);
    v2 = *(v0 + 72);
    v8 = *(v0 + 76);
    *(v0 + 584) = v6;
  }

  *(v0 + 96) = v10;
  *(v0 + 104) = v9;
  *(v0 + 105) = v5;
  v14 = *(v0 + 80);
  *(v0 + 106) = *(v0 + 84);
  *(v0 + 110) = *(v0 + 88);
  *(v0 + 112) = v1;
  *(v0 + 120) = v4;
  *(v0 + 121) = *(v0 + 90);
  *(v0 + 123) = *(v0 + 92);
  *(v0 + 124) = v3;
  *(v0 + 128) = v6;
  v15 = *(v0 + 77);
  *(v0 + 132) = v14;
  *(v0 + 129) = v15;
  *(v0 + 136) = v7;
  *(v0 + 152) = v2;
  *(v0 + 156) = v8;
  v16 = *(v0 + 96);
  v17 = *(v0 + 112);
  v18 = *(v0 + 128);
  *(v0 + 205) = *(v0 + 141);
  *(v0 + 176) = v17;
  *(v0 + 192) = v18;
  *(v0 + 160) = v16;
  sub_19A33546C(v0 + 16, v0 + 224, &qword_1EAFA1198);
  v19 = swift_task_alloc();
  *(v0 + 544) = v19;
  *v19 = v0;
  v19[1] = sub_19A3F4B20;
  v20 = *(v0 + 536);

  return sub_19A3F5898(v20, v0 + 160);
}

uint64_t sub_19A3F4B20()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_19A3F5454;
  }

  else
  {
    v2 = sub_19A3F4C34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3F4C34()
{
  v1 = *(v0 + 528);
  v56 = *(v0 + 520);
  v58 = *(v0 + 536);
  v2 = *(v0 + 512);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  v5 = *(v0 + 424);
  sub_19A4017A8(v58, v1, type metadata accessor for DefinitionSession);
  v6 = sub_19A57102C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v60 = v3;
  v8(v3, v5, v6);
  v62 = v7;
  v9 = *(v7 + 56);
  v9(v3, 0, 1, v6);
  v10 = *(v4 + 20);
  v50 = v9;
  v9(v2 + v10, 1, 1, v6);
  v11 = v4;
  v64 = v6;
  v8(v2, v1, v6);
  sub_19A3315F4(v60, v2 + v10);
  v12 = (v1 + v56[5]);
  v13 = *v12;
  v14 = v12[1];
  v15 = (v2 + *(v11 + 24));
  *v15 = v13;
  v15[1] = v14;
  v61 = v11;
  sub_19A4017A8(v1 + v56[22], v2 + *(v11 + 28), type metadata accessor for GenerationRecipe);

  sub_19A401930(v1, type metadata accessor for DefinitionSession);
  v16 = v58 + v56[9];
  v17 = *(v16 + *(_s17AssignmentOptionsVMa() + 32));
  v18 = *(v17 + 16);
  v19 = sub_19A57112C();
  v20 = *(v19 - 8);
  if (v18)
  {
    (*(*(v19 - 8) + 16))(*(v0 + 464), v17 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)), v19);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = *(v0 + 536);
  v54 = *(v0 + 520);
  v24 = *(v0 + 504);
  v23 = *(v0 + 512);
  v25 = *(v0 + 496);
  v26 = *(v0 + 464);
  v27 = *(v0 + 448);
  v51 = *(v0 + 456);
  v52 = *(v0 + 472);
  (*(v20 + 56))(v26, v21, 1, v19);
  v28 = (v22 + v56[5]);
  v29 = v28[1];
  v57 = *v28;
  v30 = v28[2];
  sub_19A4017A8(v23, v24, type metadata accessor for GenerationState);
  v59 = v29;

  sub_19A4BABB8(v0 + 288);
  v31 = *(v22 + *(v54 + 60));
  v32 = *(v27 + 40);
  *(v0 + 352) = &type metadata for CurrentTaskCanceller;
  *(v0 + 360) = &off_1F0DAF620;
  v53 = v31;
  v55 = v32;

  v33 = sub_19A4CB924();
  sub_19A33546C(v26, v51, &qword_1EAF9FDC8);
  type metadata accessor for KeyboardEmojiGenerator.GenerationTask();
  v34 = swift_allocObject();
  *(v0 + 560) = v34;
  sub_19A4017A8(v24, v25, type metadata accessor for GenerationState);
  v35 = *(v61 + 20);
  sub_19A33546C(v25 + v35, v52, &qword_1EAF9FD80);
  LODWORD(v24) = (*(v62 + 48))(v52, 1, v64);
  v63 = v33;

  sub_19A2F3FA0(v52, &qword_1EAF9FD80);
  if (v24 == 1)
  {
    v36 = *(v0 + 480);
    sub_19A57101C();
    v50(v36, 0, 1, v64);
    sub_19A3315F4(v36, v25 + v35);
  }

  v37 = *(v0 + 496);
  v38 = *(v0 + 504);
  v39 = *(v0 + 448);
  v40 = *(v0 + 456);
  sub_19A302D80(v0 + 288, (v0 + 368));
  sub_19A4017A8(v37, v34 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__initialGenerationState, type metadata accessor for GenerationState);
  v41 = (v34 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__client);
  *v41 = v57;
  v41[1] = v59;
  v41[2] = v30;
  *(v34 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__mediaAnalysisService) = v53;
  *(v34 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__visionSession) = v55;
  v42 = (v34 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__generationOptions);
  v43 = *(v0 + 112);
  *v42 = *(v0 + 96);
  v42[1] = v43;
  v42[2] = *(v0 + 128);
  *(v42 + 45) = *(v0 + 141);
  sub_19A2F3EF0(v0 + 368, v34 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__recipePreparer);
  sub_19A2F3EF0(v0 + 328, v34 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller);
  v44 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 368);
  sub_19A2F3FA0(v0 + 288, &qword_1EAF9FDE0);
  sub_19A401930(v38, type metadata accessor for GenerationState);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 328);
  *(v34 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__strikeSizes) = v44;
  *(v34 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__imageChecker) = v63;
  sub_19A401CA8(v40, v34 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__generativeModelsLocale);
  sub_19A401930(v37, type metadata accessor for GenerationState);
  v45 = swift_task_alloc();
  *(v0 + 568) = v45;
  *v45 = v0;
  v45[1] = sub_19A3F520C;
  v46 = *(v0 + 432);
  v47 = *(v0 + 440);
  v48 = *(v0 + 408);

  return sub_19A35C640(v48, v46, v47, v39);
}

uint64_t sub_19A3F520C()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_19A3F5534;
  }

  else
  {
    v2 = sub_19A3F5320;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3F5320()
{
  v1 = v0[67];
  v2 = v0[64];
  v3 = v0[58];

  sub_19A2F3FA0(v3, &qword_1EAF9FDC8);
  sub_19A401930(v2, type metadata accessor for GenerationState);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3F5454()
{
  sub_19A402B30(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A3F5534()
{
  v1 = v0[67];
  v2 = v0[64];
  v3 = v0[58];

  sub_19A2F3FA0(v3, &qword_1EAF9FDC8);
  sub_19A401930(v2, type metadata accessor for GenerationState);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t KeyboardEmojiGenerator.generatedEmoji(options:generationID:eventsHandler:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v10;
  *(v5 + 48) = a2[2];
  *(v5 + 61) = *(a2 + 45);
  v11 = swift_task_alloc();
  *(v5 + 80) = v11;
  *v11 = v5;
  v11[1] = sub_19A3F574C;

  return sub_19A3F47D0(a1, (v5 + 16), a3, a4, a5);
}

uint64_t sub_19A3F574C()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A3F5880, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A3F5898(uint64_t a1, uint64_t a2)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  *(v3 + 148) = *(a2 + 9);
  *(v3 + 144) = *(a2 + 28);
  *(v3 + 149) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_19A3F58D0, 0, 0);
}

uint64_t sub_19A3F58D0()
{
  v1 = *(*(v0 + 128) + 88);
  *(v0 + 136) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F58F4, v1, 0);
}

uint64_t sub_19A3F58F4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F59A0, 0, 0);
}

uint64_t sub_19A3F59A0()
{
  v1 = *(v0 + 149);
  v2 = *(v0 + 144);
  v3 = *(v0 + 148);
  v4 = *(v0 + 120);
  v5 = v4 + *(type metadata accessor for DefinitionSession() + 88);
  v6 = type metadata accessor for GenerationRecipe(0);
  v7 = v5 + v6[5];
  *(v7 + 40) = 1;
  *(v7 + 51) = v3;
  v8 = v5 + v6[12];
  *v8 = v2;
  *(v8 + 4) = v1;
  v9 = v6[6];
  if ((sub_19A4D4414(*(v5 + v9), &unk_1F0DA8828) & 1) == 0)
  {
    v10 = (v5 + v6[30]);
    sub_19A331DC8(*v10, v10[1], v10[2]);
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 1;
    v10[4] = 0;
    v10[3] = 0;
    *(v10 + 37) = 0;
    sub_19A4340A4(&unk_1F0DA8828);

    *(v5 + v9) = &unk_1F0DA8828;
    sub_19A4C64E0();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t KeyboardEmojiGenerator.EmojiGenerationSession.options.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v8[0] = v1[3];
  v3 = v8[0];
  *(v8 + 13) = *(v1 + 61);
  v4 = *(v8 + 13);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 45) = v4;
  return sub_19A401C50(v7, &v6);
}

uint64_t KeyboardEmojiGenerator.EmojiGenerationSession.eventStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession_eventStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1150);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t KeyboardEmojiGenerator.EmojiGenerationSession.prompt.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession_prompt);

  return v1;
}

uint64_t KeyboardEmojiGenerator.EmojiGenerationSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__generationID;
  v4 = sub_19A57102C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t KeyboardEmojiGenerator.EmojiGenerationSession.isCancelled.getter()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);

  v2 = sub_19A5723DC();
  v3 = sub_19A57354C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v12 = sub_19A5741FC();
    v13 = v6;
    MEMORY[0x19A900A50](32, 0xE100000000000000);
    sub_19A57102C();
    sub_19A36BC14(&qword_1ED8252D8);
    v7 = sub_19A573EDC();
    MEMORY[0x19A900A50](v7);

    v8 = sub_19A31F114(v12, v13, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_19A2DE000, v2, v3, "%s checking cancellation", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x19A902C50](v5, -1, -1);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__sendableCanceller + 24);
  v10 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__sendableCanceller), v9);
  return (*(v10 + 8))(v9, v10) & 1;
}

Swift::Void __swiftcall KeyboardEmojiGenerator.EmojiGenerationSession.cancel()()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);

  v2 = sub_19A5723DC();
  v3 = sub_19A57354C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    v11 = sub_19A5741FC();
    v12 = v6;
    MEMORY[0x19A900A50](32, 0xE100000000000000);
    sub_19A57102C();
    sub_19A36BC14(&qword_1ED8252D8);
    v7 = sub_19A573EDC();
    MEMORY[0x19A900A50](v7);

    v8 = sub_19A31F114(v11, v12, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_19A2DE000, v2, v3, "cancelling %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x19A902C50](v5, -1, -1);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__sendableCanceller + 24);
  v10 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__sendableCanceller), v9);
  (*(v10 + 16))(v9, v10);
}

uint64_t KeyboardEmojiGenerator.EmojiGenerationSession.description.getter()
{
  v2 = sub_19A5741FC();
  MEMORY[0x19A900A50](32, 0xE100000000000000);
  sub_19A57102C();
  sub_19A36BC14(&qword_1ED8252D8);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return v2;
}

uint64_t sub_19A3F655C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[0] = a6;
  v26[1] = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1180);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v26 - v18;
  v20 = *(a2 + 16);
  v26[4] = a3;
  v26[5] = a4;
  os_unfair_lock_lock(v20 + 20);
  sub_19A334E58(&v20[4]);
  os_unfair_lock_unlock(v20 + 20);
  (*(v16 + 16))(v19, a1, v15);
  v21 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v22 = swift_allocObject();
  (*(v16 + 32))(v22 + v21, v19, v15);
  *(v22 + ((v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v23 = sub_19A5731CC();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v26[0];
  v24[5] = sub_19A4028A4;
  v24[6] = v22;

  sub_19A4A016C(0, 0, v14, &unk_19A5822D0, v24);

  sub_19A5732AC();

  sub_19A3EB594();
}

void sub_19A3F6824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0148);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1190);
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v63 - v12;
  v14 = sub_19A57102C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for KeyboardEmojiGenerator.GenerationEvent(0);
  v18 = MEMORY[0x1EEE9AC00](v69);
  v70 = (&v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v63 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v63 - v23;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v25 = sub_19A5723FC();
  v26 = __swift_project_value_buffer(v25, qword_1ED82BCF0);
  v74 = a2;
  sub_19A4017A8(a2, v24, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);

  v67 = v26;
  v27 = sub_19A5723DC();
  v28 = sub_19A57356C();

  if (os_log_type_enabled(v27, v28))
  {
    v64 = v28;
    v65 = a3;
    v29 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v75 = v63;
    *v29 = 136315394;
    v30 = a1 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__initialGenerationState;
    v31 = type metadata accessor for GenerationState();
    sub_19A33546C(v30 + *(v31 + 20), v13, &qword_1EAF9FD80);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      __break(1u);
      return;
    }

    (*(v15 + 32))(v17, v13, v14);
    sub_19A36BC14(&qword_1ED8252D8);
    v32 = sub_19A573EDC();
    v34 = v33;
    (*(v15 + 8))(v17, v14);
    v35 = sub_19A31F114(v32, v34, &v75);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    sub_19A4017A8(v24, v22, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
    v36 = sub_19A572DAC();
    v38 = v37;
    sub_19A401930(v24, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
    v39 = sub_19A31F114(v36, v38, &v75);

    *(v29 + 14) = v39;
    _os_log_impl(&dword_19A2DE000, v27, v64, "%s event: %s", v29, 0x16u);
    v40 = v63;
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v40, -1, -1);
    MEMORY[0x19A902C50](v29, -1, -1);
  }

  else
  {

    sub_19A401930(v24, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
  }

  v41 = v74;
  sub_19A4017A8(v74, v22, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1180);
  v42 = v71;
  sub_19A5732BC();
  (*(v72 + 8))(v42, v73);
  v43 = v70;
  sub_19A4017A8(v41, v70, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v45 = *v43;
    v46 = sub_19A4B1174(*v43);
    v75 = v46;
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
    v48 = type metadata accessor for GeneratorError(0);
    v49 = v68;
    v50 = swift_dynamicCast();
    v51 = *(*(v48 - 8) + 56);
    if (v50)
    {
      v51(v49, 0, 1, v48);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v52 = *v49;

        v53 = sub_19A5723DC();
        v54 = sub_19A57355C();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v75 = v74;
          *v55 = 136446210;
          v56 = MEMORY[0x19A900C10](v52, &type metadata for GeneratorError.VersionTriple);
          v58 = v57;

          v59 = sub_19A31F114(v56, v58, &v75);

          *(v55 + 4) = v59;
          _os_log_impl(&dword_19A2DE000, v53, v54, "Attempting to reset generator state due to model catalog asset mismatch: %{public}s", v55, 0xCu);
          v60 = v74;
          __swift_destroy_boxed_opaque_existential_0Tm(v74);
          MEMORY[0x19A902C50](v60, -1, -1);
          MEMORY[0x19A902C50](v55, -1, -1);
        }

        else
        {
        }

        v61 = *(v66 + 96);
        os_unfair_lock_lock((v61 + 24));
        type metadata accessor for AppleDiffusionResourceFactory(0);
        v62 = static AppleDiffusionResourceFactory.shared(reset:)(1);

        *(v61 + 16) = v62;
        os_unfair_lock_unlock((v61 + 24));
      }

      else
      {
        sub_19A401930(v49, type metadata accessor for GeneratorError);
      }
    }

    else
    {
      v51(v49, 1, 1, v48);
      sub_19A2F3FA0(v49, &qword_1EAFA0148);
    }

    v75 = v46;
    sub_19A5732CC();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_19A401930(v43, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
    v75 = 0;
    sub_19A5732CC();
  }

  else
  {
    sub_19A401930(v43, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
  }
}

uint64_t sub_19A3F71D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v6[5] = swift_task_alloc();
  v7 = sub_19A57102C();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F72D4, 0, 0);
}

uint64_t sub_19A3F72D4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[2] + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__initialGenerationState;
  v5 = type metadata accessor for GenerationState();
  sub_19A33546C(v4 + *(v5 + 20), v3, &qword_1EAF9FD80);
  v6 = (*(v2 + 48))(v3, 1, v1);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = v0[8];
    v15 = v0[4];
    v19 = *(v0 + 1);
    (*(v0[7] + 32))(v14, v0[5], v0[6]);
    v16 = swift_task_alloc();
    v0[9] = v16;
    *(v16 + 16) = v14;
    *(v16 + 24) = v19;
    *(v16 + 40) = v15;
    v17 = swift_task_alloc();
    v0[10] = v17;
    *(v17 + 16) = v14;
    *(v17 + 24) = v19;
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_19A3F7484;
    v7 = &unk_19A5822E8;
    v9 = sub_19A402B28;
    v13 = MEMORY[0x1E69E7CA8] + 8;
    v8 = v16;
    v10 = v17;
    v11 = 0;
    v12 = 0;
  }

  return MEMORY[0x1EEE6DE18](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_19A3F7484()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_19A3F7630;
  }

  else
  {

    v2 = sub_19A3F75A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3F75A8()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19A3F7630()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3F76DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v6 = sub_19A57102C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F77B8, 0, 0);
}

uint64_t sub_19A3F77B8()
{
  v25 = v0;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  v5 = sub_19A5723FC();
  v0[12] = __swift_project_value_buffer(v5, qword_1ED82BCF0);
  v6 = *(v3 + 16);
  v0[13] = v6;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_19A5723DC();
  v8 = sub_19A57356C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v12 = v0[7];
  v11 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 136315138;
    sub_19A36BC14(&qword_1ED8252D8);
    v14 = sub_19A573EDC();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_19A31F114(v14, v16, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_19A2DE000, v7, v8, "KeyboardEmojiGenerator %s Task starting", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x19A902C50](v23, -1, -1);
    MEMORY[0x19A902C50](v13, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[15] = v17;
  v19 = v0[5];
  v20 = v0[6];
  v21 = swift_task_alloc();
  v0[16] = v21;
  *v21 = v0;
  v21[1] = sub_19A3F7A3C;

  return sub_19A35C640((v0 + 2), v19, v20, 0);
}

uint64_t sub_19A3F7A3C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_19A3F7D48;
  }

  else
  {

    v2 = sub_19A3F7B58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3F7B58()
{
  v17 = v0;
  (*(v0 + 104))(*(v0 + 80), *(v0 + 24), *(v0 + 56));
  v1 = sub_19A5723DC();
  v2 = sub_19A57356C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 120);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  if (v3)
  {
    v15 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_19A36BC14(&qword_1ED8252D8);
    v9 = sub_19A573EDC();
    v11 = v10;
    v15(v5, v6);
    v12 = sub_19A31F114(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_19A2DE000, v1, v2, "KeyboardEmojiGenerator %s Task complete", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x19A902C50](v8, -1, -1);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_19A3F7D48()
{
  v24 = v0;
  v1 = *(v0 + 136);
  (*(v0 + 104))(*(v0 + 72), *(v0 + 24), *(v0 + 56));
  v2 = v1;
  v3 = sub_19A5723DC();
  v4 = sub_19A57356C();

  if (os_log_type_enabled(v3, v4))
  {
    v21 = *(v0 + 120);
    v22 = *(v0 + 136);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v7 = 136315394;
    sub_19A36BC14(&qword_1ED8252D8);
    v10 = sub_19A573EDC();
    v12 = v11;
    v21(v5, v6);
    v13 = sub_19A31F114(v10, v12, &v23);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v22;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_19A2DE000, v3, v4, "KeyboardEmojiGenerator %s Task threw %@", v7, 0x16u);
    sub_19A2F3FA0(v8, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 120);
    v17 = *(v0 + 72);
    v18 = *(v0 + 56);

    v16(v17, v18);
  }

  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_19A3F7FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A57102C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v8 = sub_19A5723FC();
  __swift_project_value_buffer(v8, qword_1ED82BCF0);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_19A5723DC();
  v10 = sub_19A57356C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = a2;
    v30 = v12;
    v13 = v12;
    *v11 = 136315138;
    sub_19A36BC14(&qword_1ED8252D8);
    v14 = sub_19A573EDC();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_19A31F114(v14, v16, &v30);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_19A2DE000, v9, v10, "KeyboardEmojiGenerator task running %s was cancelled", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v18 = v13;
    a2 = v29;
    MEMORY[0x19A902C50](v18, -1, -1);
    MEMORY[0x19A902C50](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v19 = sub_19A5723DC();
  v20 = sub_19A57354C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136446210;
    v23 = KeyboardEmojiGenerator.GenerationTask.description.getter();
    v25 = sub_19A31F114(v23, v24, &v30);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_19A2DE000, v19, v20, "cancelling %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x19A902C50](v22, -1, -1);
    MEMORY[0x19A902C50](v21, -1, -1);
  }

  v26 = *(a2 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller + 24);
  v27 = *(a2 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller), v26);
  return (*(v27 + 16))(v26, v27);
}

void sub_19A3F833C(uint64_t a1)
{
  v2 = sub_19A57317C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1188);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v21 - v8);
  (*(v7 + 16))(v21 - v8, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x1E69E8758])
  {
    (*(v7 + 96))(v9, v6);
    v11 = *v9;
    if (*v9)
    {
      v21[1] = *v9;
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      if (swift_dynamicCast())
      {
        (*(v3 + 8))(v5, v2);
        if (qword_1ED824050 != -1)
        {
          swift_once();
        }

        v13 = sub_19A5723FC();
        __swift_project_value_buffer(v13, qword_1ED82BCF0);
        v14 = sub_19A5723DC();
        v15 = sub_19A57356C();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_19A2DE000, v14, v15, "EmojiGenerationSession terminated.", v16, 2u);
          MEMORY[0x19A902C50](v16, -1, -1);
        }

        sub_19A57322C();
      }
    }
  }

  else if (v10 == *MEMORY[0x1E69E8760])
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v17 = sub_19A5723FC();
    __swift_project_value_buffer(v17, qword_1ED82BCF0);
    v18 = sub_19A5723DC();
    v19 = sub_19A57356C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_19A2DE000, v18, v19, "EmojiGenerationSession terminated.", v20, 2u);
      MEMORY[0x19A902C50](v20, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
    sub_19A57322C();
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t KeyboardEmojiGenerator.EmojiGenerationSession.deinit()
{

  v1 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession_eventStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1150);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__sendableCanceller);
  v3 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__generationID;
  v4 = sub_19A57102C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t KeyboardEmojiGenerator.EmojiGenerationSession.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession_eventStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1150);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__sendableCanceller);
  v3 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__generationID;
  v4 = sub_19A57102C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_19A3F893C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__generationID;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A3F8A04()
{
  v2 = sub_19A5741FC();
  MEMORY[0x19A900A50](32, 0xE100000000000000);
  sub_19A57102C();
  sub_19A36BC14(&qword_1ED8252D8);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return v2;
}

uint64_t KeyboardEmojiGenerator.generateEmoji(options:generationID:)(__int128 *a1, uint64_t a2)
{
  *(v3 + 472) = a2;
  *(v3 + 480) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1158);
  *(v3 + 488) = v5;
  *(v3 + 496) = *(v5 - 8);
  *(v3 + 504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FC98);
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  v6 = type metadata accessor for GenerationState();
  *(v3 + 552) = v6;
  *(v3 + 560) = *(v6 - 8);
  *(v3 + 568) = swift_task_alloc();
  *(v3 + 576) = swift_task_alloc();
  *(v3 + 584) = swift_task_alloc();
  *(v3 + 592) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  *(v3 + 624) = swift_task_alloc();
  v7 = sub_19A57102C();
  *(v3 + 632) = v7;
  *(v3 + 640) = *(v7 - 8);
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();
  *(v3 + 664) = type metadata accessor for DefinitionSession();
  *(v3 + 672) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v3 + 680) = v8;
  v9 = *a1;
  v10 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v10;
  v11 = a1[2];
  *(v3 + 48) = v11;
  v12 = *(a1 + 45);
  *(v3 + 61) = v12;
  *(v3 + 80) = v9;
  *(v3 + 96) = v10;
  *(v3 + 112) = v11;
  *(v3 + 125) = v12;
  v13 = swift_task_alloc();
  *(v3 + 688) = v13;
  *v13 = v3;
  v13[1] = sub_19A3F8E20;

  return sub_19A3F5898(v8, v3 + 80);
}

uint64_t sub_19A3F8E20()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_19A3F9C4C;
  }

  else
  {
    v2 = sub_19A3F8F34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_19A3F8F34()
{
  v121 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  sub_19A33546C(*(v0 + 472), v3, &qword_1EAF9FD80);
  v4 = *(v1 + 48);
  v115 = v4;
  if (v4(v3, 1, v2) == 1)
  {
    v5 = *(v0 + 632);
    v6 = *(v0 + 624);
    sub_19A57101C();
    if (v4(v6, 1, v5) != 1)
    {
      sub_19A2F3FA0(*(v0 + 624), &qword_1EAF9FD80);
    }
  }

  else
  {
    (*(*(v0 + 640) + 32))(*(v0 + 656), *(v0 + 624), *(v0 + 632));
  }

  v112 = *(v0 + 680);
  v7 = *(v0 + 672);
  v118 = *(v0 + 664);
  v8 = *(v0 + 656);
  v9 = *(v0 + 640);
  v10 = *(v0 + 632);
  v11 = *(v0 + 616);
  v12 = *(v0 + 592);
  v13 = *(v0 + 552);
  sub_19A4017A8(v112, v7, type metadata accessor for DefinitionSession);
  v116 = *(v9 + 16);
  v116(v11, v8, v10);
  v14 = *(v9 + 56);
  v14(v11, 0, 1, v10);
  v15 = v13[5];
  v101 = v14;
  v14(v12 + v15, 1, 1, v10);
  v116(v12, v7, v10);
  sub_19A3315F4(v11, v12 + v15);
  v16 = (v7 + v118[5]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (v12 + v13[6]);
  *v19 = v17;
  v19[1] = v18;
  v117 = v13;
  sub_19A4017A8(v7 + v118[22], v12 + v13[7], type metadata accessor for GenerationRecipe);

  sub_19A401930(v7, type metadata accessor for DefinitionSession);
  v20 = v112 + v118[9];
  v21 = *(v20 + *(_s17AssignmentOptionsVMa() + 32));
  v22 = *(v21 + 16);
  v23 = sub_19A57112C();
  v24 = *(v23 - 8);
  if (v22)
  {
    (*(*(v23 - 8) + 16))(*(v0 + 544), v21 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)), v23);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = *(v0 + 680);
  v27 = *(v0 + 664);
  v28 = *(v0 + 592);
  v29 = *(v0 + 584);
  v30 = *(v0 + 560);
  v113 = *(v0 + 552);
  v31 = *(v0 + 544);
  v108 = *(v0 + 536);
  v110 = *(v0 + 520);
  v32 = *(v0 + 480);
  (*(v24 + 56))(v31, v25, 1, v23);
  v33 = (v26 + v118[5]);
  v34 = v33[1];
  v107 = *v33;
  v35 = v33[2];
  sub_19A4017A8(v28, v29, type metadata accessor for GenerationState);
  v106 = v34;

  sub_19A4BABB8(v0 + 272);
  v36 = (v26 + v27[10]);
  v102 = v36[1];
  v103 = *v36;
  v105 = *(v32 + 40);
  v104 = *(v26 + v27[15]);
  v37 = sub_19A4CB924();
  v38 = v26 + v27[8];
  v40 = *(v38 + 40);
  v39 = *(v38 + 48);
  sub_19A33546C(v31, v108, &qword_1EAF9FDC8);
  v41 = *(v26 + v27[6]);
  type metadata accessor for KeyboardEmojiGenerator.EmojiGenerationSession(0);
  v42 = swift_allocObject();
  v43 = *(v0 + 32);
  v42[1] = *(v0 + 16);
  v42[2] = v43;
  v42[3] = *(v0 + 48);
  *(v42 + 61) = *(v0 + 61);
  v44 = (v42 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession_prompt);
  *v44 = v40;
  v44[1] = v39;
  v45 = type metadata accessor for StatefulCanceller();
  v46 = swift_allocObject();
  v119 = v37;

  sub_19A401C50(v0 + 16, v0 + 144);
  *(v46 + 16) = 0;
  *(v0 + 336) = v45;
  *(v0 + 344) = &off_1F0DAF608;
  *(v0 + 312) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1160);
  v48 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDD8);
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v48 + 56) = v49;
  *(v48 + 64) = 0;
  sub_19A2EA460((v0 + 312), v48 + 16);
  v50 = (v42 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__sendableCanceller);
  v50[3] = v47;
  v50[4] = &off_1F0DAF5F0;
  *v50 = v48;
  v51 = *(v30 + 56);
  v51(v110, 1, 1, v113);
  if (v41)
  {
    v52 = *(v0 + 696);

    os_unfair_lock_lock((v41 + 16));
    sub_19A38BF98((v41 + 24), v41, v120);
    os_unfair_lock_unlock((v41 + 16));
    if (v52)
    {
      return;
    }

    v53 = *(v0 + 584);
    v54 = *(v0 + 552);
    v55 = *(v0 + 520);
    v56 = v120[0];
    sub_19A2F3FA0(v55, &qword_1EAF9FC98);
    sub_19A4017A8(v53, v55, type metadata accessor for GenerationState);
    v51(v55, 0, 1, v54);
    v57 = v117[7];
    v58 = v55 + *(type metadata accessor for GenerationRecipe(0) + 28) + v57;
    *v58 = v56;
    *(v58 + 8) = 0;
  }

  else
  {
  }

  v59 = *(v0 + 560);
  v60 = *(v0 + 552);
  v61 = *(v0 + 512);
  sub_19A33546C(*(v0 + 520), v61, &qword_1EAF9FC98);
  v62 = *(v59 + 48);
  if (v62(v61, 1, v60) == 1)
  {
    v63 = *(v0 + 552);
    v64 = *(v0 + 512);
    sub_19A4017A8(*(v0 + 584), *(v0 + 576), type metadata accessor for GenerationState);
    if (v62(v64, 1, v63) != 1)
    {
      sub_19A2F3FA0(*(v0 + 512), &qword_1EAF9FC98);
    }
  }

  else
  {
    sub_19A401D48(*(v0 + 512), *(v0 + 576), type metadata accessor for GenerationState);
  }

  v65 = *(v0 + 632);
  v66 = *(v0 + 608);
  v67 = *(v0 + 576);
  v68 = *(v0 + 568);
  v69 = *(v0 + 536);
  v70 = *(v0 + 528);
  sub_19A33546C(v0 + 272, v0 + 352, &qword_1EAF9FDE0);
  *(v0 + 416) = v47;
  *(v0 + 424) = &off_1F0DAF5F0;
  *(v0 + 392) = v48;
  sub_19A33546C(v69, v70, &qword_1EAF9FDC8);
  type metadata accessor for KeyboardEmojiGenerator.GenerationTask();
  v71 = swift_allocObject();
  sub_19A4017A8(v67, v68, type metadata accessor for GenerationState);
  v72 = v117[5];
  sub_19A33546C(v68 + v72, v66, &qword_1EAF9FD80);
  LODWORD(v65) = v115(v66, 1, v65);
  v114 = v104;

  v111 = v48;

  sub_19A2F3FA0(v66, &qword_1EAF9FD80);
  if (v65 == 1)
  {
    v73 = *(v0 + 632);
    v74 = *(v0 + 616);
    sub_19A57101C();
    v101(v74, 0, 1, v73);
    sub_19A3315F4(v74, v68 + v72);
  }

  v109 = v42;
  v75 = *(v0 + 632);
  v76 = *(v0 + 600);
  v77 = *(v0 + 576);
  v78 = *(v0 + 568);
  v79 = *(v0 + 528);
  sub_19A302D80(v0 + 352, (v0 + 432));
  sub_19A4017A8(v78, v71 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__initialGenerationState, type metadata accessor for GenerationState);
  v80 = (v71 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__client);
  *v80 = v107;
  v80[1] = v106;
  v80[2] = v35;
  *(v71 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__mediaAnalysisService) = v114;
  *(v71 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__visionSession) = v105;
  v81 = (v71 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__generationOptions);
  v82 = *(v0 + 32);
  *v81 = *(v0 + 16);
  v81[1] = v82;
  v81[2] = *(v0 + 48);
  *(v81 + 45) = *(v0 + 61);
  sub_19A2F3EF0(v0 + 432, v71 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__recipePreparer);
  sub_19A2F3EF0(v0 + 392, v71 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller);
  v83 = *(v0 + 32);
  sub_19A401C50(v0 + 16, v0 + 208);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 432);
  sub_19A2F3FA0(v0 + 352, &qword_1EAF9FDE0);
  sub_19A401930(v77, type metadata accessor for GenerationState);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 392);
  *(v71 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__strikeSizes) = v83;
  *(v71 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__imageChecker) = v119;
  sub_19A401CA8(v79, v71 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__generativeModelsLocale);
  sub_19A401930(v78, type metadata accessor for GenerationState);
  sub_19A33546C(v71 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__initialGenerationState + v117[5], v76, &qword_1EAF9FD80);
  if (v115(v76, 1, v75) == 1)
  {
    __break(1u);
  }

  else
  {
    v98 = *(v0 + 656);
    v84 = *(v0 + 648);
    v85 = *(v0 + 632);
    v100 = *(v0 + 680);
    v99 = *(v0 + 592);
    v94 = *(v0 + 640);
    v95 = *(v0 + 584);
    v96 = *(v0 + 544);
    v93 = *(v0 + 536);
    v97 = *(v0 + 520);
    v86 = *(v0 + 504);
    v87 = *(v0 + 496);
    v92 = *(v0 + 488);
    v88 = *(v0 + 480);
    v89 = *(v94 + 32);
    v89(v84);
    (v89)(v109 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator22EmojiGenerationSession__generationID, v84, v85);
    v90 = swift_task_alloc();
    v90[2] = v119;
    v90[3] = v103;
    v90[4] = v102;
    v90[5] = v88;
    v90[6] = v71;
    v90[7] = v111;
    type metadata accessor for KeyboardEmojiGenerator.GenerationEvent(0);
    (*(v87 + 104))(v86, *MEMORY[0x1E69E8790], v92);
    sub_19A5732EC();

    sub_19A2F3FA0(v93, &qword_1EAF9FDC8);
    sub_19A2F3FA0(v0 + 272, &qword_1EAF9FDE0);
    sub_19A401930(v95, type metadata accessor for GenerationState);
    sub_19A2F3FA0(v96, &qword_1EAF9FDC8);
    (*(v94 + 8))(v98, v85);

    sub_19A2F3FA0(v97, &qword_1EAF9FC98);
    sub_19A401930(v99, type metadata accessor for GenerationState);
    sub_19A401930(v100, type metadata accessor for DefinitionSession);

    v91 = *(v0 + 8);

    v91(v109);
  }
}

uint64_t sub_19A3F9C4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A3F9DA8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for DefinitionSession();
  v2[8] = swift_task_alloc();
  v2[9] = _s17AssignmentOptionsVMa();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3F9E6C, 0, 0);
}

uint64_t sub_19A3F9E6C()
{
  v1 = *(*(v0 + 48) + 88);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3F9E90, v1, 0);
}

uint64_t sub_19A3F9E90()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3F9F3C, 0, 0);
}

uint64_t sub_19A3F9F3C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  sub_19A4017A8(v3 + *(v0[7] + 36), v1, _s17AssignmentOptionsVMa);
  sub_19A401930(v3, type metadata accessor for DefinitionSession);
  KeyboardEmojiGenerator.DescriptionAssignmentOptions.init()(v4);
  *v4 = *v1;
  v4[1] = v1[1];
  v5 = v2[6];
  v6 = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  sub_19A334DE8(&v1[v5], &v4[v6[6]]);
  v4[v6[7]] = v1[v2[7]];
  v7 = &v1[v2[8]];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 4);
  v11 = &v4[v6[8]];

  *v11 = v8;
  *(v11 + 1) = v9;
  *(v11 + 4) = v10;
  v4[v6[9]] = v1[v2[9]];
  v4[v6[10]] = v1[v2[10]];
  *&v4[v6[11]] = *&v1[v2[11]];
  *&v4[v6[12]] = *&v1[v2[12]];
  *&v4[v6[13]] = *&v1[v2[13]];
  *&v4[v6[14]] = *&v1[v2[14]];
  v4[v6[15]] = v1[v2[16]];
  v12 = &v1[v2[15]];
  v13 = *v12;
  v14 = v12[8];
  sub_19A401930(v1, _s17AssignmentOptionsVMa);
  v15 = &v4[v6[17]];
  *v15 = v13;
  v15[8] = v14;

  v16 = v0[1];

  return v16();
}

uint64_t KeyboardEmojiGenerator.rewriteConfiguration(generationSeed:)(uint64_t a1, char a2)
{
  *(v3 + 329) = a2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v2;
  *(v3 + 352) = type metadata accessor for GenerationRecipe(0);
  *(v3 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB0);
  *(v3 + 368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  v4 = type metadata accessor for DefinitionSession();
  *(v3 + 416) = v4;
  *(v3 + 424) = *(v4 - 8);
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3FA308, 0, 0);
}

uint64_t sub_19A3FA308()
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A57236C();
  __swift_project_value_buffer(v1, qword_1ED82BD30);
  v2 = sub_19A57231C();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v5 = sub_19A57234C();
  v6 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v6, v8, "KeyboardEmojiGenerator.rewriteConfiguration", "", v7, 2u);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v9 = *(v0 + 329);

  swift_task_alloc();
  (*(v3 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  *(v0 + 464) = sub_19A5723AC();
  (*(v3 + 8))(v4, v2);

  if (v9)
  {
    v10 = swift_task_alloc();
    *(v0 + 488) = v10;
    *v10 = v0;
    v10[1] = sub_19A3FA790;
    v11 = *(v0 + 408);

    return sub_19A3F9DA8(v11);
  }

  else
  {
    v13 = *(*(v0 + 344) + 88);
    *(v0 + 472) = v13;

    return MEMORY[0x1EEE6DFA0](sub_19A3FA5B4, v13, 0);
  }
}

uint64_t sub_19A3FA5B4()
{
  v1 = v0[59];
  v2 = v0[57];
  v3 = v0[52];
  v4 = v0[44];
  v5 = v0[42];
  v6 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[60] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v6, v2, type metadata accessor for DefinitionSession);
  v7 = v2 + *(v3 + 88) + *(v4 + 28);
  *v7 = v5;
  *(v7 + 8) = 0;

  return MEMORY[0x1EEE6DFA0](sub_19A3FA690, v1, 0);
}

uint64_t sub_19A3FA690()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[57];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);
  v4 = swift_task_alloc();
  v0[61] = v4;
  *v4 = v0;
  v4[1] = sub_19A3FA790;
  v5 = v0[51];

  return sub_19A3F9DA8(v5);
}

uint64_t sub_19A3FA790()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3FA88C, 0, 0);
}

uint64_t sub_19A3FA88C()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  *(v1 + *(v2 + 36)) = 1;
  v4 = *(v2 + 24);
  *(v0 + 332) = v4;
  sub_19A33546C(v1 + v4, v3, &qword_1EAF9FD80);
  v5 = sub_19A57102C();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_19A2F3FA0(v3, &qword_1EAF9FD80);
  if (v6 == 1)
  {
    v7 = *(*(v0 + 344) + 88);
    *(v0 + 496) = v7;
    v8 = sub_19A3FAC94;
LABEL_12:

    return MEMORY[0x1EEE6DFA0](v8, v7, 0);
  }

  v9 = *(*(v0 + 408) + *(*(v0 + 392) + 60));
  if (v9 <= 1)
  {
    v10 = sub_19A573F1C();

    if (v10)
    {
      goto LABEL_7;
    }
  }

  else if (v9 == 2)
  {
    swift_bridgeObjectRelease_n();
LABEL_7:
    v11 = 1;
    v12 = 52;
    goto LABEL_9;
  }

  v11 = 0;
  v12 = 56;
LABEL_9:
  *(v0 + 330) = v11;
  v13 = *(*(v0 + 408) + *(*(v0 + 392) + v12));
  *(v0 + 504) = v13;
  if (v13 < 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  if (v13)
  {
    v14 = *(v0 + 344);
    *(v0 + 512) = 0u;
    v7 = *(v14 + 88);
    *(v0 + 528) = v7;
    v8 = sub_19A3FB0EC;
    goto LABEL_12;
  }

  if (qword_1EAF9F200 != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v15 = sub_19A5723FC();
  __swift_project_value_buffer(v15, qword_1EAFCA1D0);
  v16 = sub_19A5723DC();
  v17 = sub_19A57355C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 504);
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v18;
    _os_log_impl(&dword_19A2DE000, v16, v17, "rewriteConfiguration exhausted all %ld attempts without finding suitable rewrite.", v19, 0xCu);
    MEMORY[0x19A902C50](v19, -1, -1);
  }

  sub_19A401930(*(v0 + 408), type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  sub_19A2E0A60(0);
  sub_19A2E0A60(&unk_19A57D978);
  sub_19A3FCD34("KeyboardEmojiGenerator.rewriteConfiguration", 43, 2);

  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t sub_19A3FAC94()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 456);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FAD40, 0, 0);
}

uint64_t sub_19A3FAD40()
{
  v1 = *(v0 + 332);
  v2 = *(v0 + 456);
  v3 = *(v0 + 408);
  v4 = *(v0 + 376);
  sub_19A33546C(v2 + *(*(v0 + 416) + 28), v4, &qword_1EAF9FD80);
  sub_19A401930(v2, type metadata accessor for DefinitionSession);
  sub_19A3315F4(v4, v3 + v1);
  v5 = *(*(v0 + 408) + *(*(v0 + 392) + 60));
  if (v5 <= 1)
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  else if (v5 == 2)
  {
    swift_bridgeObjectRelease_n();
LABEL_5:
    v7 = 1;
    v8 = 52;
    goto LABEL_7;
  }

  v7 = 0;
  v8 = 56;
LABEL_7:
  *(v0 + 330) = v7;
  v9 = *(*(v0 + 408) + *(*(v0 + 392) + v8));
  *(v0 + 504) = v9;
  if (v9 < 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_13;
  }

  if (v9)
  {
    v10 = *(v0 + 344);
    *(v0 + 512) = 0u;
    v11 = *(v10 + 88);
    *(v0 + 528) = v11;

    return MEMORY[0x1EEE6DFA0](sub_19A3FB0EC, v11, 0);
  }

  if (qword_1EAF9F200 != -1)
  {
    goto LABEL_19;
  }

LABEL_13:
  v12 = sub_19A5723FC();
  __swift_project_value_buffer(v12, qword_1EAFCA1D0);
  v13 = sub_19A5723DC();
  v14 = sub_19A57355C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 504);
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v15;
    _os_log_impl(&dword_19A2DE000, v13, v14, "rewriteConfiguration exhausted all %ld attempts without finding suitable rewrite.", v16, 0xCu);
    MEMORY[0x19A902C50](v16, -1, -1);
  }

  sub_19A401930(*(v0 + 408), type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  sub_19A2E0A60(0);
  sub_19A2E0A60(&unk_19A57D978);
  sub_19A3FCD34("KeyboardEmojiGenerator.rewriteConfiguration", 43, 2);

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_19A3FB0EC()
{
  v1 = v0[66];
  v2 = v0[57];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[67] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);
  v4 = swift_task_alloc();
  v0[68] = v4;
  *v4 = v0;
  v4[1] = sub_19A3FB1CC;

  return sub_19A4BA7AC();
}

uint64_t sub_19A3FB1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[15] = v3;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = a3;
  v6 = v4[66];
  v5[69] = a2;
  v5[70] = a3;

  return MEMORY[0x1EEE6DFA0](sub_19A3FB2EC, v6, 0);
}

uint64_t sub_19A3FB2EC()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[57];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FB3B8, 0, 0);
}

uint64_t sub_19A3FB3B8()
{
  v22 = v0;
  v1 = v0[70];
  if (v1)
  {
    v2 = v0[16];
    v0[71] = v2;
    v3 = qword_1EAF9F200;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_19A5723FC();
    v0[72] = __swift_project_value_buffer(v4, qword_1EAFCA1D0);

    v5 = sub_19A5723DC();
    v6 = sub_19A57356C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[69];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315395;
      if (v2)
      {
        v10 = 0x6C616E696769726FLL;
      }

      else
      {
        v10 = 0x722074706D6F7270;
      }

      if (v2)
      {
        v11 = 0xEF74706D6F727020;
      }

      else
      {
        v11 = 0xEE00657469727765;
      }

      v12 = sub_19A31F114(v10, v11, &v21);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2081;

      v13 = sub_19A31F114(v7, v1, &v21);

      *(v8 + 14) = v13;

      _os_log_impl(&dword_19A2DE000, v5, v6, "rewriteConfiguration assigning %s: %{private}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v9, -1, -1);
      MEMORY[0x19A902C50](v8, -1, -1);
    }

    else
    {
    }

    v20 = v0[66];

    return MEMORY[0x1EEE6DFA0](sub_19A3FB7D8, v20, 0);
  }

  else
  {
    if (qword_1EAF9F200 != -1)
    {
      swift_once();
    }

    v14 = sub_19A5723FC();
    __swift_project_value_buffer(v14, qword_1EAFCA1D0);
    v15 = sub_19A5723DC();
    v16 = sub_19A57355C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_19A2DE000, v15, v16, "rewriteConfiguration failed in getting prompt rewrite.", v17, 2u);
      MEMORY[0x19A902C50](v17, -1, -1);
    }

    sub_19A401930(v0[51], type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
    sub_19A2E0A60(0);
    sub_19A2E0A60(&unk_19A57D978);
    sub_19A3FCD34("KeyboardEmojiGenerator.rewriteConfiguration", 43, 2);

    v18 = v0[1];

    return v18(0);
  }
}

uint64_t sub_19A3FB7D8()
{
  sub_19A4017A8(v0[66] + v0[67], v0[57], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FB860, 0, 0);
}

uint64_t sub_19A3FB860()
{
  v1 = *(v0 + 528);
  sub_19A4B958C();

  return MEMORY[0x1EEE6DFA0](sub_19A3FB8CC, v1, 0);
}

uint64_t sub_19A3FB8CC()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[57];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FB998, 0, 0);
}

uint64_t sub_19A3FB998()
{
  v1 = *(v0 + 528);
  sub_19A2E0A50(0);
  sub_19A2E0A50(&unk_19A57D978);

  return MEMORY[0x1EEE6DFA0](sub_19A3FBA24, v1, 0);
}

uint64_t sub_19A3FBA24()
{
  sub_19A4017A8(v0[66] + v0[67], v0[55], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FBAAC, 0, 0);
}

uint64_t sub_19A3FBAAC()
{
  v1 = *(v0 + 512);
  v2 = (*(v0 + 440) + *(*(v0 + 416) + 88) + *(*(v0 + 352) + 20));
  sub_19A34F6F4(*v2, v2[1]);
  if (v1)
  {
    *(v0 + 608) = v1;
    v3 = *(v0 + 528);
    sub_19A401930(*(v0 + 440), type metadata accessor for DefinitionSession);

    return MEMORY[0x1EEE6DFA0](sub_19A3FC13C, v3, 0);
  }

  else
  {
    v4 = *(v0 + 560);
    v5 = *(v0 + 552);
    v6 = *(v0 + 456);
    v8 = *(v0 + 400);
    v7 = *(v0 + 408);
    sub_19A4017A8(*(v0 + 440), v6, type metadata accessor for DefinitionSession);
    sub_19A4017A8(v7, v8, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
    *(v0 + 40) = &type metadata for CurrentTaskCanceller;
    *(v0 + 48) = &off_1F0DAF620;
    type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentTask();
    v9 = swift_allocObject();
    *(v0 + 584) = v9;
    sub_19A57101C();
    sub_19A401D48(v6, v9 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
    sub_19A2EA460((v0 + 16), v9 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__sendableCanceller);
    v9[2] = v5;
    v9[3] = v4;
    v9[4] = 0;
    v9[5] = 0xE000000000000000;
    sub_19A401D48(v8, v9 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__assignmentOptions, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = &unk_19A57D978;
    *(v0 + 80) = 0;

    v10 = swift_task_alloc();
    *(v0 + 592) = v10;
    *v10 = v0;
    v10[1] = sub_19A3FBD18;
    v11 = *(v0 + 368);

    return sub_19A3B6158(v11, (v0 + 56));
  }
}

uint64_t sub_19A3FBD18()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_19A3FC020;
  }

  else
  {
    v2 = sub_19A3FBE2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3FBE2C()
{
  v1 = v0[66];
  v2 = v0[55];
  v3 = v0[52];
  v4 = v0[53];
  v5 = v0[46];

  (*(v4 + 56))(v5, 0, 1, v3);
  sub_19A401930(v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FBEF0, v1, 0);
}

uint64_t sub_19A3FBEF0()
{
  v1 = v0[46];
  if ((*(v0[53] + 48))(v1, 1, v0[52]) == 1)
  {
    sub_19A2F3FA0(v1, &qword_1EAF9FDB0);
  }

  else
  {
    v2 = v0[67];
    v3 = v0[66];
    v4 = v0[56];
    sub_19A401D48(v1, v4, type metadata accessor for DefinitionSession);
    swift_beginAccess();
    sub_19A331CD0(v4, v3 + v2, type metadata accessor for DefinitionSession);
    swift_endAccess();
    sub_19A401930(v4, type metadata accessor for DefinitionSession);
  }

  return MEMORY[0x1EEE6DFA0](sub_19A3FC618, 0, 0);
}

uint64_t sub_19A3FC020()
{
  v1 = *(v0 + 600);
  v2 = v1;
  sub_19A3E40B8(v1, v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 600);
  if (v3 == 255)
  {
    swift_willThrow();

    v6 = *(v0 + 600);
  }

  else
  {
    v5 = *(v0 + 320);
    sub_19A331E10();
    v6 = swift_allocError();
    *v7 = v5;
    *(v7 + 8) = v3;
    swift_willThrow();
  }

  *(v0 + 608) = v6;
  v8 = *(v0 + 528);
  sub_19A401930(*(v0 + 440), type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FC13C, v8, 0);
}

uint64_t sub_19A3FC158()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 330);
  sub_19A2E0A60(0);
  sub_19A2E0A60(&unk_19A57D978);

  v3 = *(v0 + 608);
  if (v2 & 1) != 0 || (v1)
  {
    v14 = *(v0 + 408);
    swift_willThrow();
    sub_19A401930(v14, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
    sub_19A2E0A60(0);
    sub_19A2E0A60(&unk_19A57D978);
    sub_19A3FCD34("KeyboardEmojiGenerator.rewriteConfiguration", 43, 2);

    v15 = *(v0 + 8);
LABEL_13:

    return v15(0);
  }

  v4 = v3;
  v5 = sub_19A5723DC();
  v6 = sub_19A57355C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 608);
  if (v7)
  {
    v9 = *(v0 + 520) + 1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 134218242;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_19A2DE000, v5, v6, "Error during rewriteConfiguration assignment attempt %ld: %@", v10, 0x16u);
    sub_19A2F3FA0(v11, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v11, -1, -1);
    MEMORY[0x19A902C50](v10, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 520) + 1;
  if (v16 == *(v0 + 504))
  {
    if (qword_1EAF9F200 != -1)
    {
      swift_once();
    }

    v17 = sub_19A5723FC();
    __swift_project_value_buffer(v17, qword_1EAFCA1D0);
    v18 = sub_19A5723DC();
    v19 = sub_19A57355C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 504);
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v20;
      _os_log_impl(&dword_19A2DE000, v18, v19, "rewriteConfiguration exhausted all %ld attempts without finding suitable rewrite.", v21, 0xCu);
      MEMORY[0x19A902C50](v21, -1, -1);
    }

    sub_19A401930(*(v0 + 408), type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
    sub_19A2E0A60(0);
    sub_19A2E0A60(&unk_19A57D978);
    sub_19A3FCD34("KeyboardEmojiGenerator.rewriteConfiguration", 43, 2);

    v15 = *(v0 + 8);
    goto LABEL_13;
  }

  *(v0 + 520) = v16;
  *(v0 + 512) = 0;
  v23 = *(*(v0 + 344) + 88);
  *(v0 + 528) = v23;

  return MEMORY[0x1EEE6DFA0](sub_19A3FB0EC, v23, 0);
}

uint64_t sub_19A3FC618()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 330);
  sub_19A2E0A60(0);
  sub_19A2E0A60(&unk_19A57D978);
  if (v2 & 1) != 0 || (v1)
  {

    sub_19A401930(*(v0 + 408), type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
    sub_19A2E0A60(0);
    sub_19A2E0A60(&unk_19A57D978);
    sub_19A3FCD34("KeyboardEmojiGenerator.rewriteConfiguration", 43, 2);

    v4 = *(v0 + 8);

    return v4(1);
  }

  else
  {
    v3 = *(v0 + 528);

    return MEMORY[0x1EEE6DFA0](sub_19A3FC7F0, v3, 0);
  }
}

uint64_t sub_19A3FC7F0()
{
  sub_19A4017A8(v0[66] + v0[67], v0[54], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FC878, 0, 0);
}

uint64_t sub_19A3FC878()
{
  v34 = v0;
  v1 = v0[44];
  v2 = v0[45];
  sub_19A4017A8(v0[54] + *(v0[52] + 88), v2, type metadata accessor for GenerationRecipe);
  v3 = (v2 + *(v1 + 104));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  sub_19A401930(v2, type metadata accessor for GenerationRecipe);
  v0[11] = v5;
  v0[12] = v4;
  v0[13] = v6;
  v0[14] = v7;
  v8 = PersonIndications.spans.getter();

  v9 = *(v8 + 16);

  if (!v9)
  {
    sub_19A401930(v0[54], type metadata accessor for DefinitionSession);

LABEL_12:
    sub_19A401930(v0[51], type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
    sub_19A2E0A60(0);
    sub_19A2E0A60(&unk_19A57D978);
    sub_19A3FCD34("KeyboardEmojiGenerator.rewriteConfiguration", 43, 2);

    v28 = v0[1];

    return v28(v9 == 0);
  }

  v10 = sub_19A5723DC();
  v11 = sub_19A57356C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[70];
  if (v12)
  {
    v14 = v0[69];
    v15 = v0[63];
    v32 = v0[54];
    v16 = v0[65] + 1;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136381187;
    v19 = sub_19A31F114(v14, v13, &v33);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v16;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v15;
    _os_log_impl(&dword_19A2DE000, v10, v11, "Prompt rewrite '%{private}s' contains people hallucinations after full assignment, trying with another one. Attempt %ld/%ld", v17, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x19A902C50](v18, -1, -1);
    MEMORY[0x19A902C50](v17, -1, -1);

    v20 = v32;
  }

  else
  {
    v21 = v0[54];

    v20 = v21;
  }

  sub_19A401930(v20, type metadata accessor for DefinitionSession);
  v22 = v0[65] + 1;
  if (v22 == v0[63])
  {
    if (qword_1EAF9F200 != -1)
    {
      swift_once();
    }

    v23 = sub_19A5723FC();
    __swift_project_value_buffer(v23, qword_1EAFCA1D0);
    v24 = sub_19A5723DC();
    v25 = sub_19A57355C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[63];
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v26;
      _os_log_impl(&dword_19A2DE000, v24, v25, "rewriteConfiguration exhausted all %ld attempts without finding suitable rewrite.", v27, 0xCu);
      MEMORY[0x19A902C50](v27, -1, -1);
    }

    goto LABEL_12;
  }

  v30 = v0[75];
  v0[65] = v22;
  v0[64] = v30;
  v31 = *(v0[43] + 88);
  v0[66] = v31;

  return MEMORY[0x1EEE6DFA0](sub_19A3FB0EC, v31, 0);
}

uint64_t sub_19A3FCD34(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t KeyboardEmojiGenerator.DetectedLanguageInfo.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A57112C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t KeyboardEmojiGenerator.detectLanguages(in:constraints:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = *(type metadata accessor for KeyboardEmojiGenerator.DetectedLanguageInfo(0) - 8);
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for DefinitionSession();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3FD174, 0, 0);
}

uint64_t sub_19A3FD174()
{
  v1 = *(*(v0 + 88) + 88);
  *(v0 + 128) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FD198, v1, 0);
}

uint64_t sub_19A3FD198()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[17] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_19A3FD28C;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];

  return sub_19A3C3A48(v7, v5, v6, 1);
}

uint64_t sub_19A3FD28C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {
    v6 = sub_19A3FD63C;
  }

  else
  {
    v6 = sub_19A3FD3C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_19A3FD3C0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FD488, 0, 0);
}

uint64_t sub_19A3FD488()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v15 = MEMORY[0x1E69E7CC0];
    sub_19A322880(0, v2, 0);
    v4 = v15;
    v14 = sub_19A57112C();
    v5 = *(v14 - 8);
    v6 = *(v5 + 16);
    v7 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v5 + 72);
    do
    {
      v6(v0[13], v7, v14);
      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_19A322880(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[13];
      *(v15 + 16) = v10 + 1;
      sub_19A401D48(v11, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, type metadata accessor for KeyboardEmojiGenerator.DetectedLanguageInfo);
      v7 += v8;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v12 = v0[1];

  return v12(v4);
}

uint64_t sub_19A3FD63C()
{
  sub_19A401930(*(v0 + 120), type metadata accessor for DefinitionSession);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KeyboardEmojiGenerator.checkLexiconValidity(of:locales:allowlist:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for DefinitionSession();
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3FD7A0, 0, 0);
}

uint64_t sub_19A3FD7A0()
{
  v1 = *(*(v0 + 96) + 88);
  *(v0 + 128) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FD7C4, v1, 0);
}

uint64_t sub_19A3FD7C4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[17] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FD870, 0, 0);
}

uint64_t sub_19A3FD870()
{
  v1 = v0[10];
  v2 = *(v0[15] + *(v0[14] + 80));
  v0[18] = v2;
  v3 = *(v2 + 16);
  v0[19] = v3;
  v4 = *(v1 + 16);
  v5 = sub_19A57112C();
  v6 = *(v5 - 8);
  if (v4)
  {
    (*(*(v5 - 8) + 16))(v0[13], v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  (*(v6 + 56))(v0[13], v7, 1, v5);

  return MEMORY[0x1EEE6DFA0](sub_19A3FD98C, v3, 0);
}

uint64_t sub_19A3FD98C()
{
  v1 = v0[13];
  v0[20] = sub_19A3B3414(v0[8], v0[9], v1);
  v0[21] = v2;
  sub_19A2F3FA0(v1, &qword_1EAF9FDC8);

  return MEMORY[0x1EEE6DFA0](sub_19A3FDA1C, 0, 0);
}

uint64_t sub_19A3FDA1C()
{
  v13 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(*(v0 + 144) + 24);
    v7 = *(v6 + 16);
    v8 = swift_task_alloc();
    v8[2] = v6;
    v8[3] = v5;
    v8[4] = v2;
    v8[5] = v1;
    v8[6] = v4;
    os_unfair_lock_lock((v7 + 24));
    sub_19A332280((v7 + 16), v12);
    *(v0 + 176) = 0;
    os_unfair_lock_unlock((v7 + 24));

    v9 = v12[0];
  }

  else
  {

    v9 = 1;
  }

  *(v0 + 184) = v9;
  v10 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_19A3FDBF0, v10, 0);
}

uint64_t sub_19A3FDB5C()
{
  sub_19A401930(*(v0 + 120), type metadata accessor for DefinitionSession);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_19A3FDBF0()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  v4 = *(v0 + 8);
  v5 = *(v0 + 184);

  return v4(v5);
}

uint64_t KeyboardEmojiGenerator.deinit()
{

  sub_19A2F3FA0(v0 + 48, &qword_1EAF9FDA8);

  return v0;
}

uint64_t KeyboardEmojiGenerator.__deallocating_deinit()
{

  sub_19A2F3FA0(v0 + 48, &qword_1EAF9FDA8);

  return swift_deallocClassInstance();
}

uint64_t sub_19A3FDD94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A31845C;

  return KeyboardEmojiGenerator.hasRequiredResources.getter();
}

uint64_t sub_19A3FDE24()
{
  v1[5] = type metadata accessor for DefinitionSession();
  v2 = swift_task_alloc();
  v3 = *v0;
  v1[6] = v2;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A3FDEB8, 0, 0);
}

uint64_t sub_19A3FDEB8()
{
  v1 = *(*(v0 + 56) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FDEDC, v1, 0);
}

uint64_t sub_19A3FDEDC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FDF88, 0, 0);
}

uint64_t sub_19A3FDF88()
{
  v1 = v0[6];
  v2 = *(v0[5] + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 28) + v2);
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_19A3FE038(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = type metadata accessor for DefinitionSession();
  v4 = swift_task_alloc();
  v5 = *v2;
  *(v3 + 80) = v4;
  *(v3 + 88) = v5;

  return MEMORY[0x1EEE6DFA0](sub_19A3FE0D4, 0, 0);
}

uint64_t sub_19A3FE0D4()
{
  v1 = *(*(v0 + 88) + 88);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FE0F8, v1, 0);
}

uint64_t sub_19A3FE0F8()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 112);
  v5 = *(v0 + 64);
  v6 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 104) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v6, v2, type metadata accessor for DefinitionSession);
  v7 = *(v3 + 88);
  v8 = v2 + *(type metadata accessor for GenerationRecipe(0) + 28) + v7;
  *v8 = v5;
  *(v8 + 8) = v4 & 1;

  return MEMORY[0x1EEE6DFA0](sub_19A3FE1DC, v1, 0);
}

uint64_t sub_19A3FE1DC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3FE2C8()
{
  v1[5] = type metadata accessor for DefinitionSession();
  v2 = swift_task_alloc();
  v3 = *v0;
  v1[6] = v2;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A3FE35C, 0, 0);
}

uint64_t sub_19A3FE35C()
{
  v1 = *(*(v0 + 56) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FE380, v1, 0);
}

uint64_t sub_19A3FE380()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FE42C, 0, 0);
}

uint64_t sub_19A3FE42C()
{
  v1 = v0[6];
  v2 = *(v0[5] + 88);
  v3 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v2 + 1);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_19A3FE4CC(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A33558C;

  return sub_19A3ECA7C(a1);
}

uint64_t sub_19A3FE564()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return KeyboardEmojiGenerator.dropGenderDirective()();
}

uint64_t sub_19A3FE5F4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = type metadata accessor for DefinitionSession();
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[7] = v3;
  v2[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A3FE68C, 0, 0);
}

uint64_t sub_19A3FE68C()
{
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FE6B0, v1, 0);
}

uint64_t sub_19A3FE6B0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FE75C, 0, 0);
}

uint64_t sub_19A3FE75C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = *(v0[6] + 88);
  *v2 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v3 + 2);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3FE808(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A33558C;

  return KeyboardEmojiGenerator.specifySkinToneDirective(_:)(a1);
}

uint64_t sub_19A3FE8A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return KeyboardEmojiGenerator.dropSkinToneDirective()();
}

uint64_t sub_19A3FE930()
{
  v1[5] = type metadata accessor for DefinitionSession();
  v2 = swift_task_alloc();
  v3 = *v0;
  v1[6] = v2;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A3FE9C4, 0, 0);
}

uint64_t sub_19A3FE9C4()
{
  v1 = *(*(v0 + 56) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FE9E8, v1, 0);
}

uint64_t sub_19A3FE9E8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FEA94, 0, 0);
}

uint64_t sub_19A3FEA94()
{
  v1 = v0[6];
  v2 = *(v0[5] + 88);
  v3 = v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v2;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);

  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_19A3FEB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v4[5] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_19A3FEB74, 0, 0);
}

uint64_t sub_19A3FEB74()
{
  sub_19A3EC4B8(4, v0[2], v0[3]);
  v1 = *(v0[5] + 88);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_19A335590;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_19A300EF0(v5, v3, v4, v1);
}

uint64_t sub_19A3FEC84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return KeyboardEmojiGenerator.dropPersonDescriptionDirective()();
}

uint64_t sub_19A3FED14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A33558C;

  return KeyboardEmojiGenerator.currentGenerationState.getter(a1);
}

uint64_t sub_19A3FEDB0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = type metadata accessor for DefinitionSession();
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[10] = v3;
  v2[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A3FEE48, 0, 0);
}

uint64_t sub_19A3FEE48()
{
  v1 = *(*(v0 + 88) + 88);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FEE6C, v1, 0);
}

uint64_t sub_19A3FEE6C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[13] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FEF1C, 0, 0);
}

uint64_t sub_19A3FEF1C()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = type metadata accessor for GenerationState();
  sub_19A331CD0(v4 + *(v5 + 28), v2 + *(v3 + 88), type metadata accessor for GenerationRecipe);

  return MEMORY[0x1EEE6DFA0](sub_19A3FEFC0, v1, 0);
}

uint64_t sub_19A3FEFC0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3FF0B0()
{
  v1 = *(*(v0 + 16) + 88);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_19A402BBC;

  return sub_19A3EAE8C(v1);
}

uint64_t KeyboardEmojiGenerator.couldCurrentModelSetGenerate(images:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for GeneratedImage();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3FF240, 0, 0);
}

uint64_t sub_19A3FF240()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[5];
    v20 = v0[4];
    v21 = MEMORY[0x1E69E7CC0];
    sub_19A322780(0, v2, 0);
    v3 = v21;
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v19 = *(v4 + 72);
    v6 = v2;
    do
    {
      v7 = v0[6];
      sub_19A4017A8(v5, v7, type metadata accessor for GeneratedImage);
      v8 = v7 + *(v20 + 20);
      v9 = *(v8 + *(type metadata accessor for ImageProvenance() + 28));

      sub_19A401930(v7, type metadata accessor for GeneratedImage);
      v11 = *(v21 + 16);
      v10 = *(v21 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_19A322780((v10 > 1), v11 + 1, 1);
      }

      *(v21 + 16) = v11 + 1;
      *(v21 + 8 * v11 + 32) = v9;
      v5 += v19;
      --v6;
    }

    while (v6);
  }

  v12 = *(v0[3] + 96);
  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));
  if (v13)
  {

    v14 = AppleDiffusionResourceFactory.areModelResourcesCurrent(_:)(v3);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
    if (v2)
    {
      v22 = MEMORY[0x1E69E7CC0];
      sub_19A322760(0, v2, 0);
      v14 = v22;
      v15 = *(v22 + 16);
      do
      {
        v16 = *(v22 + 24);
        if (v15 >= v16 >> 1)
        {
          sub_19A322760((v16 > 1), v15 + 1, 1);
        }

        *(v22 + 16) = v15 + 1;
        *(v22 + v15++ + 32) = 1;
        --v2;
      }

      while (v2);
    }
  }

  v17 = v0[1];

  return v17(v14);
}

uint64_t KeyboardEmojiGenerator.couldCurrentModelSetGenerate(imagesSpecifications:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FF4E0, 0, 0);
}

uint64_t sub_19A3FF4E0()
{
  v1 = *(v0[3] + 96);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  v3 = v0[2];
  if (v2)
  {

    v4 = sub_19A31A2EC(v3);
    v5 = AppleDiffusionResourceFactory.areModelResourcesCurrent(_:)(v4);
  }

  else
  {
    v6 = *(v3 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v11 = MEMORY[0x1E69E7CC0];
      sub_19A322760(0, v6, 0);
      v5 = v11;
      v7 = *(v11 + 16);
      do
      {
        v8 = *(v11 + 24);
        if (v7 >= v8 >> 1)
        {
          sub_19A322760((v8 > 1), v7 + 1, 1);
        }

        *(v11 + 16) = v7 + 1;
        *(v11 + v7++ + 32) = 1;
        --v6;
      }

      while (v6);
    }
  }

  v9 = v0[1];

  return v9(v5);
}