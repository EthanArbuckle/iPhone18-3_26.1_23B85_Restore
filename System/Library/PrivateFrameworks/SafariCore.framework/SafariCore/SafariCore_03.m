uint64_t sub_1B85374C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = a8;
  *(v9 + 80) = v8;
  *(v9 + 96) = v16;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = *(*(type metadata accessor for WBSKeychainPasskey() - 8) + 64) + 15;
  *(v9 + 88) = swift_task_alloc();
  type metadata accessor for WBSPasskeyStore();
  sub_1B8536618(&qword_1EBA8A790, v11, type metadata accessor for WBSPasskeyStore);
  v13 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B85375BC, v13, v12);
}

uint64_t sub_1B85375BC()
{
  v35 = v0;
  if (*(v0 + 72))
  {
    v32 = *(v0 + 64);
    v1 = *(v0 + 72);
  }

  else
  {
    v32 = sub_1B8565DA8();
    v1 = v2;
  }

  v31 = *(v0 + 80);
  v30 = *(v0 + 96);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v28 = *(v0 + 40);
  v29 = *(v0 + 88);
  v27 = *(v0 + 32);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *MEMORY[0x1E697AD38];
  v8 = sub_1B8565DA8();
  v10 = v9;

  v33 = sub_1B8525F40(MEMORY[0x1E69E7CC0]);
  v34[0] = 0;

  WBSKeychainPasskey.Metadata.subscript.setter(v6, v5, v34);
  v11 = sub_1B8565D68();
  v12 = objc_opt_self();
  v13 = [v12 cborWithUTF8String_];

  v14 = sub_1B8525C44(v13);
  v34[0] = 1;
  sub_1B852550C(v4, v3);
  WBSKeychainPasskey.Metadata.subscript.setter(v4, v3, v34);
  v15 = sub_1B8565D68();
  v16 = [v12 cborWithUTF8String_];

  v17 = sub_1B8525C44(v16);
  v18 = sub_1B8565D68();
  v19 = [v12 cborWithUTF8String_];

  v20 = sub_1B8525C44(v19);
  sub_1B8532F84(v27, v28, &v33, v32, v1, v30, 0, 0, v29, v8, v10);

  v21 = *(v0 + 88);
  v23 = *(v21 + 40);
  v22 = *(v21 + 48);
  v24 = v21;
  sub_1B852550C(v23, v22);
  sub_1B85260A0(v24, type metadata accessor for WBSKeychainPasskey);

  v25 = *(v0 + 8);

  return v25(v23, v22);
}

uint64_t sub_1B85378F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = a8;
  *(v9 + 80) = v8;
  *(v9 + 97) = v17;
  *(v9 + 96) = v16;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = *(*(type metadata accessor for WBSKeychainPasskey() - 8) + 64) + 15;
  *(v9 + 88) = swift_task_alloc();
  type metadata accessor for WBSPasskeyStore();
  sub_1B8536618(&qword_1EBA8A790, v11, type metadata accessor for WBSPasskeyStore);
  v13 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B85379F8, v13, v12);
}

uint64_t sub_1B85379F8()
{
  v36 = v0;
  if (*(v0 + 72))
  {
    v33 = *(v0 + 64);
    v1 = *(v0 + 72);
  }

  else
  {
    v33 = sub_1B8565DA8();
    v1 = v2;
  }

  v32 = *(v0 + 80);
  v30 = *(v0 + 96);
  v31 = *(v0 + 97);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v28 = *(v0 + 40);
  v29 = *(v0 + 88);
  v27 = *(v0 + 32);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *MEMORY[0x1E697AD38];
  v8 = sub_1B8565DA8();
  v10 = v9;

  v34 = sub_1B8525F40(MEMORY[0x1E69E7CC0]);
  v35[0] = 0;

  WBSKeychainPasskey.Metadata.subscript.setter(v6, v5, v35);
  v11 = sub_1B8565D68();
  v12 = objc_opt_self();
  v13 = [v12 cborWithUTF8String_];

  v14 = sub_1B8525C44(v13);
  v35[0] = 1;
  sub_1B852550C(v4, v3);
  WBSKeychainPasskey.Metadata.subscript.setter(v4, v3, v35);
  v15 = sub_1B8565D68();
  v16 = [v12 cborWithUTF8String_];

  v17 = sub_1B8525C44(v16);
  v18 = sub_1B8565D68();
  v19 = [v12 cborWithUTF8String_];

  v20 = sub_1B8525C44(v19);
  sub_1B8532F84(v27, v28, &v34, v33, v1, v30, 0, v31, v29, v8, v10);

  v21 = *(v0 + 88);
  v23 = *(v21 + 40);
  v22 = *(v21 + 48);
  v24 = v21;
  sub_1B852550C(v23, v22);
  sub_1B85260A0(v24, type metadata accessor for WBSKeychainPasskey);

  v25 = *(v0 + 8);

  return v25(v23, v22);
}

uint64_t sub_1B8537D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(type metadata accessor for WBSKeychainPasskey() - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  type metadata accessor for WBSPasskeyStore();
  sub_1B8536618(&qword_1EBA8A790, v9, type metadata accessor for WBSPasskeyStore);
  v11 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B8537E1C, v11, v10);
}

uint64_t sub_1B8537E1C()
{
  v34 = v0;
  v30 = v0[9];
  v31 = v0[8];
  v2 = v0[6];
  v1 = v0[7];
  v28 = v0[4];
  v29 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v27 = sub_1B8565DA8();
  v6 = v5;
  v7 = *MEMORY[0x1E697AD38];
  v8 = sub_1B8565DA8();
  v10 = v9;
  v32 = sub_1B8525F40(MEMORY[0x1E69E7CC0]);
  v33[0] = 0;

  WBSKeychainPasskey.Metadata.subscript.setter(v4, v3, v33);
  v11 = sub_1B8565D68();
  v12 = objc_opt_self();
  v13 = [v12 cborWithUTF8String_];

  v14 = sub_1B8525C44(v13);
  v33[0] = 1;
  sub_1B852550C(v2, v1);
  WBSKeychainPasskey.Metadata.subscript.setter(v2, v1, v33);
  v15 = sub_1B8565D68();
  v16 = [v12 cborWithUTF8String_];

  v17 = sub_1B8525C44(v16);
  v18 = sub_1B8565D68();
  v19 = [v12 cborWithUTF8String_];

  v20 = sub_1B8525C44(v19);
  sub_1B8532F84(v28, v29, &v32, v27, v6, 0, 1, 0, v30, v8, v10);

  v21 = v0[9];
  v23 = *(v21 + 40);
  v22 = *(v21 + 48);
  v24 = v21;
  sub_1B852550C(v23, v22);
  sub_1B85260A0(v24, type metadata accessor for WBSKeychainPasskey);

  v25 = v0[1];

  return v25(v23, v22);
}

uint64_t sub_1B8538128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B85381CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B851F31C;

  return sub_1B853426C(v2, v3, v4, v6, v5);
}

uint64_t sub_1B8538294(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B851F914;

  return sub_1B8534E94(a1, v5);
}

uint64_t sub_1B853834C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B851F31C;

  return sub_1B8534E94(a1, v5);
}

uint64_t sub_1B8538404()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B851F914;

  return sub_1B8532C40(v2, v3, v4, v5, v7, v6);
}

void sub_1B85384D8()
{
  v2 = *(v0 + 24);
  v12 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 57);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1B851F914;

  JUMPOUT(0x1B8532810);
}

uint64_t objectdestroy_53Tm()
{
  _Block_release(*(v0 + 64));
  v1 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void sub_1B853863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  v14 = *(v9 + 40);
  v15 = *(v9 + 48);
  v16 = *(v9 + 56);
  v18 = *(v9 + 64);
  v17 = *(v9 + 72);
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_1B851F914;

  sub_1B8532164(v11, v12, v13, v14, v15, v16, v18, v17, a9);
}

uint64_t sub_1B8538758(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1B8566198();
  if (!v26)
  {
    return sub_1B8566048();
  }

  v48 = v26;
  v52 = sub_1B8566528();
  v39 = sub_1B8566538();
  sub_1B85664E8();
  result = sub_1B8566188();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1B85661C8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1B8566518();
      result = sub_1B85661A8();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.appendIfExists(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_1B8566298();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, v3) == 1)
  {
    return (*(v5 + 8))(v9, v4);
  }

  (*(v10 + 32))(v16, v9, v3);
  (*(v10 + 16))(v14, v16, v3);
  sub_1B8566098();
  return (*(v10 + 8))(v16, v3);
}

uint64_t Array.mapConcurrently<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8538DB8, 0, 0);
}

uint64_t sub_1B8538DB8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1B85660C8();
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = *(v0 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  v8 = *(MEMORY[0x1E69E88A0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1B8538EEC;

  return MEMORY[0x1EEE6DD58](v0 + 16, TupleTypeMetadata2, v5, 0, 0, &unk_1B8574B80, v6, TupleTypeMetadata2);
}

uint64_t sub_1B8538EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1B8539024;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1B8539008;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8539024()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1B8539088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v9 = *(a7 - 8);
  v7[18] = v9;
  v10 = *(v9 + 64) + 15;
  v7[19] = swift_task_alloc();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[20] = TupleTypeMetadata2;
  v12 = sub_1B8566298();
  v7[21] = v12;
  v13 = *(v12 - 8);
  v7[22] = v13;
  v14 = *(v13 + 64) + 15;
  v7[23] = swift_task_alloc();
  v15 = *(TupleTypeMetadata2 - 8);
  v7[24] = v15;
  v7[25] = *(v15 + 64);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v16 = *(a6 - 8);
  v7[30] = v16;
  v7[31] = *(v16 + 64);
  v7[32] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410) - 8) + 64) + 15;
  v7[33] = swift_task_alloc();
  v7[34] = swift_getTupleTypeMetadata2();
  v18 = sub_1B8566298();
  v7[35] = v18;
  v19 = *(v18 - 8);
  v7[36] = v19;
  v20 = *(v19 + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B853937C, 0, 0);
}

uint64_t sub_1B853937C()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[16];
  v0[6] = v0[13];
  v5 = sub_1B85660C8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CBF1F0](v5, WitnessTable);
  v0[7] = v0[5];
  sub_1B85665E8();
  sub_1B85665B8();
  v30 = (v1 + 32);
  sub_1B85665D8();
  while (1)
  {
    v8 = v0[37];
    v7 = v0[38];
    v10 = v0[34];
    v9 = v0[35];
    sub_1B85665C8();
    (*v30)(v7, v8, v9);
    if ((*(*(v2 - 8) + 48))(v7, 1, v10) == 1)
    {
      break;
    }

    v11 = v0[38];
    v12 = v0[32];
    v13 = v0[33];
    v14 = v0[15];
    v33 = v0[14];
    v34 = v0[20];
    v35 = v0[12];
    v31 = v0[31];
    v32 = *v11;
    v15 = *(v2 + 48);
    v16 = sub_1B8566108();
    v36 = *(v0 + 8);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    v17 = *(v3 + 32);
    v17(v12, &v11[v15], v36);
    v18 = (*(v3 + 80) + 72) & ~*(v3 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v36;
    *(v19 + 48) = v32;
    *(v19 + 56) = v33;
    *(v19 + 64) = v14;
    v17((v19 + v18), v12, v36);

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8A6F0, &qword_1B8574540);
    v20 = sub_1B8566128();
    sub_1B853A14C(v13, &unk_1B8574B90, v19, v20);
    sub_1B853B060(v13);
  }

  v21 = v0[20];
  v22 = v0[2];

  v0[8] = sub_1B8566048();
  v23 = v0[20];
  v24 = *(MEMORY[0x1E69E8708] + 4);
  v25 = swift_task_alloc();
  v0[39] = v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8A6F0, &qword_1B8574540);
  v26 = sub_1B8566128();
  *v25 = v0;
  v25[1] = sub_1B8539714;
  v27 = v0[23];
  v28 = v0[12];

  return MEMORY[0x1EEE6DAC8](v27, 0, 0, v26);
}

uint64_t sub_1B8539714()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);

    v5 = sub_1B8539D48;
  }

  else
  {
    v5 = sub_1B8539830;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B8539830()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[40];
    v6 = v0[16];
    v5 = v0[17];
    (*(v0[22] + 8))(v1, v0[21]);
    v7 = v0[8];
    v0[9] = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    v2 = sub_1B85660C8();

    WitnessTable = swift_getWitnessTable();
    v11 = sub_1B8538758(sub_1B853AF24, v8, v2, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

    v55 = v11;
    if (sub_1B8566088())
    {
      v12 = 0;
      v13 = v0[26];
      v51 = v13;
      v53 = v0[24];
      v14 = v0[18];
      v49 = *(v0[20] + 48);
      v47 = v0[25];
      do
      {
        v1 = v0[20];
        v3 = sub_1B8566068();
        sub_1B8566018();
        if (v3)
        {
          (*(v0[24] + 16))(v0[26], v7 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v12, v0[20]);
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v20 = v0[20];
          v21 = sub_1B8566458();
          if (v47 != 8)
          {
            __break(1u);
            return MEMORY[0x1EEE6DAC8](v21, v22, v23, v24);
          }

          v25 = v0[26];
          v26 = v0[24];
          v27 = v0[20];
          v0[10] = v21;
          v1 = v21;
          (*(v26 + 16))(v25, v0 + 10, v27);
          swift_unknownObjectRelease();
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }
        }

        v16 = v0[19];
        v17 = v0[17];
        v2 = *v0[26];
        (*(v0[18] + 32))(v16, v51 + v49, v17);
        sub_1B85660C8();
        sub_1B8566038();
        v11 = v55;
        sub_1B853AAF0(v2, v55);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v19 = v55 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v19 = v55;
        }

        (*(v14 + 40))(v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v2, v16, v17);
        ++v12;
      }

      while (v15 != sub_1B8566088());
    }

    v39 = v0[37];
    v38 = v0[38];
    v41 = v0[32];
    v40 = v0[33];
    v43 = v0[28];
    v42 = v0[29];
    v48 = v0[27];
    v50 = v0[26];
    v52 = v0[23];
    v54 = v0[19];
    v44 = v0[11];

    *v44 = v11;

    v45 = v0[1];

    return v45();
  }

  else
  {
LABEL_14:
    v29 = v0[28];
    v28 = v0[29];
    v30 = v0[27];
    v31 = v0[17];
    v32 = v0[18];
    (*(v2 + 32))(v28, v1, v3);
    (*(v2 + 16))(v29, v28, v3);
    v33 = *(v3 + 48);
    *v30 = *v29;
    (*(v32 + 32))(&v30[v33], &v29[v33], v31);
    sub_1B85660C8();
    sub_1B8566098();
    (*(v2 + 8))(v28, v3);
    v34 = v0[20];
    v35 = *(MEMORY[0x1E69E8708] + 4);
    v36 = swift_task_alloc();
    v0[39] = v36;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8A6F0, &qword_1B8574540);
    v24 = sub_1B8566128();
    *v36 = v0;
    v36[1] = sub_1B8539714;
    v21 = v0[23];
    v37 = v0[12];
    v22 = 0;
    v23 = 0;

    return MEMORY[0x1EEE6DAC8](v21, v22, v23, v24);
  }
}

uint64_t sub_1B8539D48()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[23];
  v10 = v0[19];

  v11 = v0[1];
  v12 = v0[40];

  return v11();
}

uint64_t sub_1B8539E28(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B851F914;

  return sub_1B8539088(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_1B8539F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8539F30, 0, 0);
}

uint64_t sub_1B8539F30()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  *v4 = v2;
  v11 = (v3 + *v3);
  v6 = v3[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1B853A058;
  v9 = v0[5];
  v8 = v0[6];

  return v11(&v4[v5], v8);
}

uint64_t sub_1B853A058()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B853A14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v23 - v11;
  sub_1B853B0C8(a1, v23 - v11);
  v13 = sub_1B8566108();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B853B060(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_1B85660E8();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B85660F8();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_1B853A320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, TupleTypeMetadata2);
  return (*(*(a2 - 8) + 32))(a3, &v9[*(TupleTypeMetadata2 + 48)], a2);
}

uint64_t Array.elementClosestInIndex<A>(to:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1B85660C8();
  swift_getWitnessTable();
  result = sub_1B85661B8();
  if (v7)
  {
    goto LABEL_2;
  }

  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else if (!__OFADD__(v6, 1))
  {
    if (v6 + 1 < sub_1B8566088() || ((v6 - 1) & 0x8000000000000000) == 0)
    {
      sub_1B85660D8();
      v5 = 0;
      return (*(*(a1 - 8) + 56))(a2, v5, 1, a1);
    }

LABEL_2:
    v5 = 1;
    return (*(*(a1 - 8) + 56))(a2, v5, 1, a1);
  }

  __break(1u);
  return result;
}

uint64_t Array.stablePartition(by:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v23 = a2;
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v25 = &v19 - v12;
  v13 = sub_1B8565CA8();
  v27 = v13;
  v26[1] = sub_1B8565CA8();
  if (sub_1B8566088())
  {
    v14 = 0;
    v24 = (v6 + 16);
    v19 = v7;
    v20 = (v6 + 32);
    while (1)
    {
      v15 = sub_1B8566068();
      sub_1B8566018();
      if (v15)
      {
        v16 = *(v6 + 16);
        v16(v25, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, a4);
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1B8566458();
        if (v19 != 8)
        {
          __break(1u);
          return result;
        }

        v26[0] = result;
        v16 = *v24;
        (*v24)(v25, v26, a4);
        swift_unknownObjectRelease();
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_10:
          __break(1u);
          return v27;
        }
      }

      (*v20)(v11, v25, a4);
      v22(v11);
      v16(v21, v11, a4);
      sub_1B85660C8();
      sub_1B8566098();
      (*(v6 + 8))(v11, a4);
      ++v14;
      if (v17 == sub_1B8566088())
      {
        return v27;
      }
    }
  }

  return v13;
}

uint64_t Array<A>.removingDuplicates()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1B8566088() < 2)
  {
  }

  else
  {
    v6 = sub_1B8566048();
    if (sub_1B8566088())
    {
      sub_1B853AB44(v6, a2, a3);
    }

    MEMORY[0x1EEE9AC00](v7);
    sub_1B85660C8();

    swift_getWitnessTable();
    a1 = sub_1B85664B8();
  }

  return a1;
}

BOOL sub_1B853A97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v13 = *v12;

  v14 = sub_1B8566168();

  if ((v14 & 1) == 0)
  {
    (*(v5 + 16))(v9, a1, a3);
    sub_1B8566178();
    sub_1B8566148();
    (*(v5 + 8))(v11, a3);
  }

  return (v14 & 1) == 0;
}

uint64_t sub_1B853AAF0(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B853AB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v53 = &v41 - v12;
  v42 = v13;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  if (sub_1B8566088())
  {
    sub_1B85663F8();
    v16 = sub_1B85663E8();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v46 = sub_1B8566088();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_1B8566068();
    sub_1B8566018();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1B8566458();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_1B8565CF8();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_1B8565D58();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B853AF44(uint64_t a1)
{
  v3 = v1[5];
  v4 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B851F31C;

  return sub_1B8539F00(a1, v5, v6, v7, v8, v9, v1 + v4);
}

uint64_t sub_1B853B060(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B853B0C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall Data.bind(to:at:)(WBSSQLiteStatement *to, Swift::Int at)
{
  v4 = sub_1B85659A8();
  [(WBSSQLiteStatement *)to bindData:v4 atParameterIndex:at];
}

Swift::Void __swiftcall Int.bind(to:at:)(WBSSQLiteStatement *to, Swift::Int at)
{
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    [WBSSQLiteStatement bindInt:sel_bindInt_atParameterIndex_ atParameterIndex:?];
    return;
  }

  __break(1u);
}

id sub_1B853B228(id result)
{
  if (*v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (*v1 <= 0x7FFFFFFF)
  {
    return [result bindInt_atParameterIndex_];
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall String.bind(to:at:)(WBSSQLiteStatement *to, Swift::Int at)
{
  v4 = sub_1B8565D68();
  [(WBSSQLiteStatement *)to bindString:v4 atParameterIndex:at];
}

void sub_1B853B2E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v10 = a5(*v6, v6[1]);
  [a1 *a6];
}

void WBSSQLiteDatabase.performTransaction(_:)(void (*a1)(void))
{
  WBSSQLiteDatabase.executeQuery(_:_:)(0xD000000000000011, 0x80000001B858E550, MEMORY[0x1E69E7CC0]);
  if (!v1)
  {
    a1();
    WBSSQLiteDatabase.executeQuery(_:_:)(0xD000000000000012, 0x80000001B858E590, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1B853B45C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A958, &qword_1B8574C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B853B4CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A958, &qword_1B8574C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B853B534(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

Swift::String_optional __swiftcall WBSSavedAccount.stableIDString()()
{
  v0 = sub_1B8565DF8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  WBSSavedAccount.stableID.getter(v14);
  v2 = WBSSavedAccount.StableID.encode()();
  v12[4] = v14[4];
  v12[5] = v14[5];
  v13 = v15;
  v12[0] = v14[0];
  v12[1] = v14[1];
  v12[2] = v14[2];
  v12[3] = v14[3];
  v3 = v2;
  v5 = v4;
  sub_1B853BAE0(v12);
  sub_1B8565DE8();
  v6 = sub_1B8565DC8();
  v8 = v7;
  sub_1B851D53C(v3, v5);
  v9 = v8;
  v10 = v6;
  result.value._object = v9;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t WBSSavedAccount.stableID.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 user];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = sub_1B8565DA8();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 && (v9 = [v1 user]) != 0)
  {
    v10 = v9;
    v11 = sub_1B8565DA8();
    v52 = v12;
    v53 = v11;
  }

  else
  {
LABEL_7:
    v52 = 0;
    v53 = 0;
  }

  v13 = [v1 sites];
  if (v13 && (v14 = v13, v15 = sub_1B8566008(), v14, v16 = *(v15 + 16), , v16) && (v17 = [v1 sites]) != 0)
  {
    v18 = v17;
    v51 = sub_1B8566008();
  }

  else
  {
    v51 = 0;
  }

  v19 = [v1 passkeyCredentialID];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1B8565DA8();
    v49 = v22;
    v50 = v21;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v23 = [v1 passkeyRelyingPartyID];
  if (v23)
  {
    v24 = v23;
    v47 = sub_1B8565DA8();
    v26 = v25;
  }

  else
  {
    v47 = 0;
    v26 = 0;
  }

  v27 = [v1 sharedGroupID];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1B8565DA8();
    v31 = v30;

    if (v29 == sub_1B8565DA8() && v31 == v32)
    {
    }

    else
    {
      v33 = sub_1B8566758();

      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  v29 = 0;
  v31 = 0;
LABEL_26:
  v34 = [v1 signInWithAppleAccount];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 clientID];
    v37 = sub_1B8565DA8();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = [v1 signInWithAppleAccount];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 userID];
    v43 = sub_1B8565DA8();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  *a1 = v53;
  a1[1] = v52;
  a1[2] = v51;

  a1[3] = v50;
  a1[4] = v49;

  a1[5] = v48;
  a1[6] = v26;

  a1[7] = v29;
  a1[8] = v31;

  a1[9] = v37;
  a1[10] = v39;

  a1[11] = v43;
  a1[12] = v45;
  return result;
}

void sub_1B853BA7C(SEL *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [v2 *a1];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B8565DA8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

id WBSSavedAccount.sharedGroupID.getter@<X0>(uint64_t *a1@<X8>)
{
  result = [v1 sharedGroupID];
  if (!result)
  {
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_1B8565DA8();
  v7 = v6;

  if (v5 == sub_1B8565DA8() && v7 == v8)
  {

LABEL_9:

LABEL_10:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  v10 = sub_1B8566758();

  if (v10)
  {
    goto LABEL_9;
  }

  *a1 = v5;
  a1[1] = v7;
  return result;
}

void sub_1B853BC04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 < 0 || a1 >= a3)
  {
    __break(1u);
    goto LABEL_12;
  }

  a3 = a1 * a4;
  a5 = (a1 * a4) >> 64;
  if (a5 != (a1 * a4) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  a5 = (a1 + 1) * a4;
  if (((a1 + 1) * a4) >> 64 != a5 >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a5 < a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a3 < 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(a2 + 16);
  if (v5 < a3 || v5 < a5)
  {
    goto LABEL_16;
  }

  if (v5 == a5 - a3)
  {

    return;
  }

LABEL_17:
  sub_1B853F47C(a2, a2 + 32, a3, (2 * a5) | 1);
}

uint64_t sub_1B853BD18(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B853C2B0(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

_OWORD *WBSSavedAccountSearchMatch.__allocating_init(score:matchingType:matchingRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_score] = a1;
  *&v9[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingType] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A918, &qword_1B8574C20);
  result = swift_allocObject();
  result[1] = xmmword_1B85740E0;
  if (__OFADD__(a3, a4))
  {
    __break(1u);
  }

  else
  {
    *(result + 4) = a3;
    *(result + 5) = a3 + a4;
    *&v9[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingRanges] = result;
    v11.receiver = v9;
    v11.super_class = v4;
    return objc_msgSendSuper2(&v11, sel_init);
  }

  return result;
}

_OWORD *WBSSavedAccountSearchMatch.init(score:matchingType:matchingRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_score] = a1;
  *&v4[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingType] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A918, &qword_1B8574C20);
  result = swift_allocObject();
  result[1] = xmmword_1B85740E0;
  if (__OFADD__(a3, a4))
  {
    __break(1u);
  }

  else
  {
    *(result + 4) = a3;
    *(result + 5) = a3 + a4;
    *&v4[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingRanges] = result;
    v8.receiver = v4;
    v8.super_class = type metadata accessor for WBSSavedAccountSearchMatch();
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

id WBSSavedAccountSearchMatch.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WBSSavedAccountSearchMatch.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WBSSavedAccountSearchMatch();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WBSSavedAccountMatchingType.debugDescription.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0x4565746176697270;
      }

      if (a1 == 7)
      {
        return 0x614D786966657270;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      return 0x4E65636976726573;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 1919251317;
      }

      if (a1 == 1)
      {
        return 0x6E69616D6F64;
      }

LABEL_18:
      v2 = sub_1B8566728();
      MEMORY[0x1B8CBF120](v2);

      MEMORY[0x1B8CBF120](41, 0xE100000000000000);
      return 0x286E776F6E6B6E75;
    }

    if (a1 == 2)
    {
      return 0x7365746F6ELL;
    }

    else
    {
      return 0x69546D6F74737563;
    }
  }
}

unint64_t sub_1B853C2D8(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B853FB2C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1B8566438();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1B8566498() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

uint64_t sub_1B853C428()
{
  v39 = sub_1B8566858();
  v0 = *(v39 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A928, &qword_1B8574B48);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B85740E0;
  *(v3 + 32) = 0;
  v4 = sub_1B85493A8(&unk_1F3060F28);
  swift_arrayDestroy();
  result = sub_1B8565E78();
  if (result < 1)
  {
    goto LABEL_54;
  }

  if (result == 1)
  {
LABEL_51:

    return v3;
  }

  v6 = result;
  v37 = (v0 + 8);
  v40 = v4;
  v41 = v4 + 56;
  v7 = 1;
  while (v7 != v6)
  {
    sub_1B8565EA8();
    result = sub_1B8565F58();
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v9 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {
      goto LABEL_53;
    }

    v10 = result;
    v11 = v8;
    if ((v8 & 0x1000000000000000) != 0)
    {
      v16 = sub_1B8565E38();
    }

    else
    {
      if ((v8 & 0x2000000000000000) != 0)
      {
        v13 = result;
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v12 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v12 = sub_1B8566498();
        }

        v13 = *v12;
      }

      v14 = v13;
      v15 = (__clz(~v13) - 24) << 16;
      if (v14 < 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 65541;
      }
    }

    v17 = 4 * v9;
    if (4 * v9 == v16 >> 14)
    {
      result = sub_1B853C2D8(v10, v11);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_55;
      }

      v18 = v38;
      sub_1B8566868();
      v19 = sub_1B8566838();
      (*v37)(v18, v39);
      if (v19)
      {
        goto LABEL_45;
      }
    }

    if ((sub_1B8565D28() & 1) == 0)
    {

      v20 = v40;
      goto LABEL_29;
    }

    v20 = v40;
    if ((v11 & 0x1000000000000000) != 0)
    {
      if (v17 != sub_1B8565E38() >> 14)
      {
        goto LABEL_42;
      }
    }

    else if (v17 != ((4 * sub_1B8566428()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_42;
    }

    result = sub_1B853C2D8(v10, v11);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_56;
    }

    v32 = v38;
    sub_1B8566868();
    v33 = sub_1B8566848();
    (*v37)(v32, v39);
    if (v33)
    {
      goto LABEL_45;
    }

LABEL_42:
    if ((sub_1B8565D28() & 1) == 0)
    {
      goto LABEL_45;
    }

    v34 = sub_1B8565D18();

    if ((v34 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_29:
    sub_1B8565EA8();
    v21 = sub_1B8565F58();
    v23 = v22;
    if (*(v20 + 16))
    {
      v24 = v21;
      v25 = *(v20 + 40);
      sub_1B85667D8();
      sub_1B8565D38();
      v26 = sub_1B8566808();
      v27 = -1 << *(v20 + 32);
      v28 = v26 & ~v27;
      if ((*(v41 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(v20 + 48) + 16 * v28);
          v31 = *v30 == v24 && v30[1] == v23;
          if (v31 || (sub_1B8566758() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v41 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

LABEL_45:

LABEL_46:
        v36 = *(v3 + 16);
        v35 = *(v3 + 24);
        if (v36 >= v35 >> 1)
        {
          result = sub_1B853525C((v35 > 1), v36 + 1, 1, v3);
          v3 = result;
        }

        *(v3 + 16) = v36 + 1;
        *(v3 + 8 * v36 + 32) = v7;
        goto LABEL_6;
      }
    }

LABEL_5:

LABEL_6:
    if (++v7 == v6)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void sub_1B853C8B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = __OFSUB__(a1, 1);
  v10 = a1 - 1;
  if (v9)
  {
LABEL_47:
    __break(1u);
  }

  else
  {
    sub_1B853BC04(v10, a2, a3, a4, a8);
    v14 = v13;
    v15 = 0;
    v16 = *(v13 + 16);
    v17 = v13 + 40;
    v18 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v19 = (v17 + 16 * v15);
    while (v16 != v15)
    {
      if (v15 >= *(v14 + 16))
      {
        goto LABEL_46;
      }

      ++v15;
      v20 = *v19;
      v19 += 16;
      if ((v20 & 1) == 0)
      {
        v21 = *(v19 - 3);
        v40 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B8535360(0, *(v18 + 2) + 1, 1, v18);
        }

        v23 = *(v18 + 2);
        v22 = *(v18 + 3);
        if (v23 >= v22 >> 1)
        {
          v18 = sub_1B8535360((v22 > 1), v23 + 1, 1, v18);
        }

        *(v18 + 2) = v23 + 1;
        v24 = &v18[16 * v23];
        *(v24 + 4) = v15 - 1;
        *(v24 + 5) = v21;
        v17 = v40;
        goto LABEL_3;
      }
    }

    v25 = *(v18 + 2);
    if (!v25)
    {

      return;
    }

    v26 = *(v18 + 4);
    v27 = v25 - 1;
    if (v27)
    {
      v28 = *(v18 + 5);
      v29 = (v18 + 56);
      do
      {
        if (v28 < *v29)
        {
          v26 = *(v29 - 1);
        }

        if (v28 <= *v29)
        {
          v28 = *v29;
        }

        v29 += 2;
        --v27;
      }

      while (v27);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A928, &qword_1B8574B48);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B85740E0;
    *(v30 + 32) = v26;
    v31 = a1 - 1;
    if (a1 >= 1)
    {
      v32 = v30;
      if (a1 == 1)
      {
LABEL_37:
        sub_1B853BD18(v32);
        return;
      }

      v33 = *(a5 + 16);
      while (v31 + 1 <= a1)
      {
        if (v31 >= a6)
        {
          goto LABEL_39;
        }

        if (v26 < 0)
        {
          goto LABEL_40;
        }

        if (v26 >= a7)
        {
          goto LABEL_41;
        }

        v34 = v31 * a7;
        if ((v31 * a7) >> 64 != (v31 * a7) >> 63)
        {
          goto LABEL_42;
        }

        v9 = __OFADD__(v34, v26);
        v35 = v34 + v26;
        if (v9)
        {
          goto LABEL_43;
        }

        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v35 >= v33)
        {
          goto LABEL_45;
        }

        v36 = a5 + 32 + 16 * v35;
        if ((*(v36 + 8) & 1) == 0)
        {
          v26 = *v36;
          v38 = *(v32 + 2);
          v37 = *(v32 + 3);
          if (v38 >= v37 >> 1)
          {
            v32 = sub_1B853525C((v37 > 1), v38 + 1, 1, v32);
          }

          *(v32 + 2) = v38 + 1;
          *&v32[8 * v38 + 32] = v26;
        }

        if (!--v31)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
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
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  __break(1u);
}

char *sub_1B853CB3C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a1 + 4;
  v2 = a1[4];
  if (v1 != 1)
  {
    v10 = a1 + 5;
    v4 = MEMORY[0x1E69E7CC0];
    v11 = a1[2];
    while (v11)
    {
      v13 = *(v10 - 1);
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_24;
      }

      v15 = *v10;
      if (*v10 != v14)
      {
        if (v14 < v2)
        {
          goto LABEL_25;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1B8535374(0, *(v4 + 2) + 1, 1, v4);
        }

        v17 = *(v4 + 2);
        v16 = *(v4 + 3);
        if (v17 >= v16 >> 1)
        {
          v4 = sub_1B8535374((v16 > 1), v17 + 1, 1, v4);
        }

        *(v4 + 2) = v17 + 1;
        v12 = &v4[16 * v17];
        *(v12 + 4) = v2;
        *(v12 + 5) = v14;
        v2 = v15;
      }

      ++v10;
      if (--v11 == 1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v5 = v3[v1 - 1];
  v1 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v1 < v2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_28:
    v4 = sub_1B8535374(0, *(v4 + 2) + 1, 1, v4);
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1B8535374((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[16 * v7];
  *(v8 + 4) = v2;
  *(v8 + 5) = v1;
  return v4;
}

uint64_t _sSo15WBSSavedAccountC10SafariCoreE16fuzzyMatchString_4with12matchingTypeAC0ab6SearchF0CSgSS_SSSo0ab8MatchingJ0VtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = sub_1B8565E18();
  v10 = v9;
  v139 = a3;
  v140 = a4;
  v145 = 32;
  v146 = 0xE100000000000000;
  v143 = 0;
  v144 = 0xE000000000000000;
  v116 = sub_1B852675C();
  v115 = MEMORY[0x1E69E6158];
  sub_1B85662B8();
  v11 = sub_1B8565E18();
  v13 = v12;

  if ((v13 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = sub_1B8565E78();
  if (sub_1B8565E78() < v15)
  {
    goto LABEL_6;
  }

  v126 = sub_1B853C428();
  v17 = sub_1B8565E78();
  result = sub_1B8565E78();
  v18 = v17 * result;
  v131 = v17;
  v133 = result;
  if ((v17 * result) >> 64 != (v17 * result) >> 63)
  {
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  if (v18 < 0)
  {
LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A978, &qword_1B8574C90);
    v19 = sub_1B8566058();
    v20 = v19;
    *(v19 + 16) = v18;
    v21 = 32;
    v22 = v18;
    do
    {
      v23 = v19 + v21;
      *v23 = 0;
      *(v23 + 8) = 1;
      v21 += 16;
      --v22;
    }

    while (v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A978, &qword_1B8574C90);
    v24 = sub_1B8566058();
    v25 = v24;
    *(v24 + 16) = v18;
    v26 = 32;
    do
    {
      v27 = v24 + v26;
      *v27 = 0;
      *(v27 + 8) = 1;
      v26 += 16;
      --v18;
    }

    while (v18);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
  }

  v117 = a5;
  v139 = v11;
  v140 = v13;
  v141 = 0;
  v142 = v14;
  result = sub_1B8565ED8();
  v137 = result;
  v132 = v8;
  v123 = v25;
  v134 = v28;
  if (!v28)
  {
    v35 = v131;
    goto LABEL_138;
  }

  v29 = 0;
  v30 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v30 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v31 = 7;
  if (((v10 >> 60) & ((v8 & 0x800000000000000) == 0)) != 0)
  {
    v31 = 11;
  }

  v32 = 4 * v30;
  v122 = v25 + 32;
  v33 = -v133;
  v125 = v133 & ~(v133 >> 63);
  v118 = v31 | (v30 << 16);
  v34 = 40 - 16 * v133;
  v121 = v34;
  v35 = v131;
  v128 = v32;
LABEL_23:
  v36 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    goto LABEL_206;
  }

  v135 = v29;
  if (v29)
  {
    sub_1B853BC04(v29 - 1, v20, v35, v133, v34);
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = 0;
      v40 = (v37 + 40);
      while (*v40 == 1)
      {
        ++v39;
        v40 += 16;
        if (v38 == v39)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
LABEL_29:
      v39 = -1;
    }

    v41 = v20;

    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_207;
    }
  }

  else
  {
    v41 = v20;
    v42 = 0;
    if (__OFADD__(-1, 1))
    {
      goto LABEL_207;
    }
  }

  if (v42 < 0)
  {
    goto LABEL_208;
  }

  v119 = v36;

  result = sub_1B8565E98();
  if (v43)
  {
    v44 = v118;
  }

  else
  {
    v44 = result;
  }

  v45 = v44 >> 14;
  if (v32 < v44 >> 14)
  {
    goto LABEL_209;
  }

  if (v45 == v32)
  {
    goto LABEL_162;
  }

  v46 = 0;
  if (v43)
  {
    v47 = 0;
  }

  else
  {
    v47 = v42;
  }

  v49 = v135 < 1 || v135 > v35;
  v120 = v49;
  v129 = v44 >> 14;
  v130 = (v135 - 1) * v133;
  v127 = v135 * v133;
  v50 = v44 >> 14;
  v20 = v41;
  while (1)
  {
    v124 = v46;
    v136 = v20 + 40;
    v51 = v47;
    while (1)
    {
      if (v50 < v45 || v50 >= v32)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
        goto LABEL_204;
      }

      v52 = v47;
      v53 = v20;
      v54 = v132;
      v55 = sub_1B8565F58();
      v57 = v56;
      result = sub_1B8565E88();
      v47 = (v47 + 1);
      if (__OFADD__(v52, 1))
      {
        goto LABEL_179;
      }

      v58 = result;
      if (v137 == v55 && v134 == v57)
      {
        break;
      }

      v59 = sub_1B8566758();

      v20 = v53;
      v35 = v131;
      if (v59)
      {
        goto LABEL_58;
      }

LABEL_92:
      v50 = v58 >> 14;
      v51 = (v51 + 1);
      v32 = v128;
      v45 = v129;
      if (v58 >> 14 == v128)
      {

        v25 = v123;
        if ((v124 & 1) == 0)
        {
          goto LABEL_163;
        }

LABEL_135:
        result = sub_1B8565ED8();
        v137 = result;
        v33 += v133;
        v34 = 16 * v133;
        v121 += 16 * v133;
        v29 = v119;
        v134 = v86;
        if (!v86)
        {
LABEL_138:

          sub_1B853C8B4(v35, v20, v35, v133, v25, v35, v133, v87);
          if (!v88)
          {

            goto LABEL_6;
          }

          v52 = v88;
          result = v35 - 1;
          if (!__OFSUB__(v35, 1))
          {
            sub_1B853BC04(result, v20, v35, v133, v89);
            v91 = *(v90 + 16);
            if (v91)
            {
              v92 = (v90 + 40);
              v54 = MEMORY[0x1E69E7CC0];
              do
              {
                if ((*v92 & 1) == 0)
                {
                  v93 = *(v92 - 1);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v54 = sub_1B853525C(0, *(v54 + 2) + 1, 1, v54);
                  }

                  v95 = *(v54 + 2);
                  v94 = *(v54 + 3);
                  if (v95 >= v94 >> 1)
                  {
                    v54 = sub_1B853525C((v94 > 1), v95 + 1, 1, v54);
                  }

                  *(v54 + 2) = v95 + 1;
                  *&v54[8 * v95 + 32] = v93;
                }

                v92 += 16;
                --v91;
              }

              while (v91);
            }

            else
            {
              v54 = MEMORY[0x1E69E7CC0];
            }

            v73 = *(v54 + 2);
            if (v73)
            {
              v35 = *(v54 + 4);
              v76 = v73 - 1;
              if (v73 == 1)
              {
                v96 = v117;
                goto LABEL_171;
              }

LABEL_158:
              v96 = v117;
              if (v73 >= 5)
              {
                v97 = v76 & 0xFFFFFFFFFFFFFFFCLL | 1;
                v98 = vdupq_n_s64(v35);
                v99 = (v54 + 56);
                v100 = v76 & 0xFFFFFFFFFFFFFFFCLL;
                v101 = v98;
                do
                {
                  v98 = vbslq_s8(vcgtq_s64(v98, v99[-1]), v98, v99[-1]);
                  v101 = vbslq_s8(vcgtq_s64(v101, *v99), v101, *v99);
                  v99 += 2;
                  v100 -= 4;
                }

                while (v100);
                v102 = vbslq_s8(vcgtq_s64(v98, v101), v98, v101);
                v103 = vextq_s8(v102, v102, 8uLL).u64[0];
                v35 = vbsl_s8(vcgtd_s64(v102.i64[0], v103), *v102.i8, v103);
                if (v76 != (v76 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_167;
                }
              }

              else
              {
                v97 = 1;
LABEL_167:
                v104 = v73 - v97;
                v105 = &v54[8 * v97 + 32];
                do
                {
                  v107 = *v105++;
                  v106 = v107;
                  if (v35 <= v107)
                  {
                    v35 = v106;
                  }

                  --v104;
                }

                while (v104);
              }

LABEL_171:

              v108 = sub_1B8565E78();

              if (v35 != v108 || (v62 = __OFADD__(v35, 1), ++v35, !v62))
              {
                if (v96 > 5)
                {
                  v109 = 0;
                }

                else
                {
                  v109 = qword_1B8574C98[v96];
                }

                v62 = __OFADD__(v35, v109);
                v110 = v35 + v109;
                if (!v62)
                {
                  v111 = sub_1B853CB3C(v52);

                  v112 = type metadata accessor for WBSSavedAccountSearchMatch();
                  v113 = objc_allocWithZone(v112);
                  *&v113[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_score] = v110;
                  *&v113[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingType] = v96;
                  *&v113[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingRanges] = v111;
                  v138.receiver = v113;
                  v138.super_class = v112;
                  v114 = objc_msgSendSuper2(&v138, sel_init, v115, v116, v116, v116);

                  return v114;
                }

LABEL_213:
                __break(1u);
              }

              __break(1u);
              return result;
            }

LABEL_6:

            goto LABEL_7;
          }

LABEL_212:
          __break(1u);
          goto LABEL_213;
        }

        goto LABEL_23;
      }
    }

    v20 = v53;
    v35 = v131;
LABEL_58:
    v60 = v135;
    if (v135)
    {
      v61 = v52 - 1;
      if (__OFSUB__(v52, 1))
      {
        goto LABEL_190;
      }

      if (v61 < 0 || v61 >= v133 || v135 > v35)
      {
        goto LABEL_191;
      }

      if (((v135 - 1) * v133) >> 64 != ((v135 - 1) * v133) >> 63)
      {
        goto LABEL_192;
      }

      v62 = __OFADD__(v130, v61);
      v63 = v130 + v61;
      if (v62)
      {
        goto LABEL_193;
      }

      if ((v63 & 0x8000000000000000) != 0)
      {
        goto LABEL_194;
      }

      if (v63 >= *(v20 + 16))
      {
        goto LABEL_195;
      }

      if (*(v136 + 16 * v63) != 1)
      {
        goto LABEL_95;
      }
    }

    v64 = 0;
    v65 = *(v126 + 16);
    do
    {
      if (v65 == v64)
      {
        if (v135)
        {
          if (v52 < 0)
          {
            goto LABEL_203;
          }

          if (v52)
          {
            v67 = 0;
            while (1)
            {
              v60 = v135;
              if (v135 > v35)
              {
                goto LABEL_180;
              }

              if (v67 == v125)
              {
                goto LABEL_181;
              }

              if (((v135 - 1) * v133) >> 64 != ((v135 - 1) * v133) >> 63)
              {
                goto LABEL_182;
              }

              if (v33 < 0)
              {
                goto LABEL_183;
              }

              if ((v130 + v67) >= *(v20 + 16))
              {
                goto LABEL_184;
              }

              if (*(v136 + 16 * (v130 + v67)) != 1)
              {
                if (!v65)
                {
                  goto LABEL_95;
                }

                v68 = (v126 + 32);
                v69 = *(v126 + 16);
                while (1)
                {
                  v71 = *v68++;
                  v70 = v71;
                  if (v67 < v71 && v52 >= v70)
                  {
                    break;
                  }

                  if (!--v69)
                  {
                    goto LABEL_95;
                  }
                }
              }

              if (++v67 == v52)
              {
                goto LABEL_92;
              }
            }
          }
        }

        goto LABEL_92;
      }

      v66 = *(v126 + 32 + 8 * v64++);
    }

    while (v66 != v52);
    if (!v135)
    {
      if (v52 < 0 || v52 >= v133 || v35 <= 0)
      {
        goto LABEL_185;
      }

      if ((v135 * v133) >> 64 != (v135 * v133) >> 63)
      {
        goto LABEL_186;
      }

      v81 = 1;
      goto LABEL_126;
    }

LABEL_95:
    if (v52 < 0)
    {
      goto LABEL_196;
    }

    if (v52)
    {
      break;
    }

    v73 = 0;
    v76 = 0x8000000000000000;
    v77 = 1;
LABEL_112:
    v81 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      goto LABEL_197;
    }

    if (v60 >= v35 || v52 >= v133)
    {
      goto LABEL_198;
    }

    if ((v135 * v133) >> 64 != (v135 * v133) >> 63)
    {
      goto LABEL_199;
    }

    v82 = v127 + v52;
    if (__OFADD__(v127, v52))
    {
      goto LABEL_200;
    }

    if ((v82 & 0x8000000000000000) != 0)
    {
      goto LABEL_201;
    }

    if (v82 >= *(v123 + 16))
    {
      goto LABEL_202;
    }

    v83 = v122 + 16 * v82;
    *v83 = v73;
    *(v83 + 8) = v77 & 1;
    if ((v52 | v60) < 0)
    {
      goto LABEL_185;
    }

LABEL_126:
    v62 = __OFADD__(v127, v52);
    v84 = v127 + v52;
    if (v62)
    {
      goto LABEL_187;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v32 = v128;
      v45 = v129;
      if ((v84 & 0x8000000000000000) != 0)
      {
        goto LABEL_188;
      }
    }

    else
    {
      result = sub_1B853C2C4(v20);
      v20 = result;
      v32 = v128;
      v45 = v129;
      if ((v84 & 0x8000000000000000) != 0)
      {
        goto LABEL_188;
      }
    }

    if (v84 >= *(v20 + 16))
    {
      goto LABEL_189;
    }

    v85 = v20 + 16 * v84;
    *(v85 + 32) = v81;
    *(v85 + 40) = 0;
    v50 = v58 >> 14;
    v46 = 1;
    if (v58 >> 14 == v32)
    {

      v25 = v123;
      goto LABEL_135;
    }
  }

  if (v120)
  {
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

  if (((v135 - 1) * v133) >> 64 != ((v135 - 1) * v133) >> 63)
  {
    goto LABEL_205;
  }

  v73 = 0;
  v74 = 0;
  v75 = (v20 + v121);
  v76 = 0x8000000000000000;
  v77 = 1;
  while (1)
  {
    if (v125 == v74)
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    if (v33 < 0)
    {
      goto LABEL_156;
    }

    if (v33 + v74 >= *(v20 + 16))
    {
      goto LABEL_157;
    }

    if ((*v75 & 1) == 0)
    {
      break;
    }

LABEL_100:
    v75 += 16;
    ++v74;
    v51 = (v51 - 1);
    if (!v51)
    {
      goto LABEL_112;
    }
  }

  v78 = v51 - 1;
  if (!__OFSUB__(v51, 1))
  {
    v79 = *(v75 - 1);
    v62 = __OFSUB__(v79, v78);
    v80 = v79 - v78;
    if (v62)
    {
      goto LABEL_161;
    }

    if (v76 < v80)
    {
      v73 = v74;
    }

    v77 &= v76 >= v80;
    if (v76 < v80)
    {
      v76 = v80;
    }

    goto LABEL_100;
  }

  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:

LABEL_163:

LABEL_7:

  return 0;
}

void __swiftcall UI_STRING_PLURAL_VAR(_:_:_:_:)(SafariCore::WBSLocalizedPluralVariable *__return_ptr retstr, SafariCore::WBSLocalizedStringLiteral a2, SafariCore::WBSLocalizedStringLiteral a3, SafariCore::WBSLocalizedStringLiteral a4, SafariCore::WBSLocalizedStringLiteral a5)
{
  v5 = *a2.stringValue._countAndFlagsBits;
  a2.stringValue._countAndFlagsBits = *(a2.stringValue._countAndFlagsBits + 8);
  v6 = *a2.stringValue._object;
  v7 = *(a2.stringValue._object + 1);
  v8 = *a3.stringValue._countAndFlagsBits;
  v9 = *(a3.stringValue._countAndFlagsBits + 8);
  v10 = *a3.stringValue._object;
  v11 = *(a3.stringValue._object + 1);
  retstr->name._countAndFlagsBits = v5;
  retstr->name._object = a2.stringValue._countAndFlagsBits;
  retstr->type._countAndFlagsBits = v6;
  retstr->type._object = v7;
  retstr->oneFormatString._countAndFlagsBits = v8;
  retstr->oneFormatString._object = v9;
  retstr->otherFormatString._countAndFlagsBits = v10;
  retstr->otherFormatString._object = v11;
}

unint64_t sub_1B853D90C()
{
  result = qword_1EBA8A980;
  if (!qword_1EBA8A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A980);
  }

  return result;
}

unint64_t sub_1B853D970()
{
  result = qword_1EBA8A988;
  if (!qword_1EBA8A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A988);
  }

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

uint64_t sub_1B853D9F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B853DA38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B853DAA8(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v32 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v47 = MEMORY[0x1E69E7CC0];
    v33 = a2 >> 62;
    sub_1B8535CCC(0, v5 & ~(v5 >> 63), 0);
    v9 = v33;
    if (v33)
    {
      if (v33 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v34 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v47;
    v31 = &v35 + v10;
    do
    {
      if (v11 >= v5)
      {
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
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v34 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1B8565888();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1B85658A8();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v35 = a1;
          v36 = BYTE2(a1);
          v37 = BYTE3(a1);
          v38 = v32;
          v39 = BYTE5(a1);
          v40 = BYTE6(a1);
          v41 = HIBYTE(a1);
          v42 = a2;
          v43 = BYTE2(a2);
          v44 = BYTE3(a2);
          v45 = BYTE4(a2);
          v46 = BYTE5(a2);
          v20 = v31[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1B8565888();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1B85658A8();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v33;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A540, &qword_1B8574108);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B85740E0;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1B8565DD8();
      v47 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v30 = v22;
        v27 = v23;
        sub_1B8535CCC((v24 > 1), v25 + 1, 1);
        v9 = v33;
        v23 = v27;
        v22 = v30;
        v8 = v47;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

LABEL_39:
  v28 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t Data.init(base64URLEncoded:)()
{
  sub_1B852675C();
  sub_1B85662B8();

  sub_1B85662B8();

  v0 = sub_1B8565E78();
  v1 = v0 & 3;
  if (v0 <= 0)
  {
    v1 = -(-v0 & 3);
  }

  if (v1 >= 1)
  {
    v2 = sub_1B8565F48();
    v4 = v3;

    MEMORY[0x1B8CBF120](v2, v4);
  }

  v5 = sub_1B8565978();

  return v5;
}

uint64_t sub_1B853DFB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1B8535CEC(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1B8535CEC((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v8;
  }

  return result;
}

size_t Data.init(randomWithLength:)(size_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      v2 = sub_1B8566058();
      *(v2 + 16) = v1;
      bzero((v2 + 32), v1);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    if (SecRandomCopyBytes(0, v1, (v2 + 32)))
    {

      return 0;
    }

    else
    {
      v3 = sub_1B8540950(v2);

      return v3;
    }
  }

  return result;
}

Swift::String __swiftcall Data.hexString()()
{
  sub_1B853DAA8(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA8A700, &qword_1B8574550);
  sub_1B8540A4C(&qword_1EBA8A998, &unk_1EBA8A700, &qword_1B8574550);
  v2 = sub_1B8565D48();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t Data.init(hexString:)(uint64_t a1, uint64_t a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v4 = sub_1B8565868();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8565848();

  v9 = sub_1B8565E78();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B85403F8(v9, 0);

    v12 = sub_1B8540330(&v94, v11 + 4, v10, a1, a2);

    if (v12 != v10)
    {
      goto LABEL_203;
    }
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1B853EE70(&unk_1F3060FB8, v11);
  v15 = swift_arrayDestroy();
  if (v14)
  {
    v13 = v11[2];
    if (v13)
    {
LABEL_204:
      if (v13 >= 2)
      {
        v83 = 2;
      }

      else
      {
        v83 = v13;
      }

      sub_1B853F54C(v11, (v11 + 4), v83, (2 * v13) | 1);
      v85 = v84;

      v11 = v85;
    }
  }

  MEMORY[0x1EEE9AC00](v15);
  v86[-2] = v8;
  v16 = sub_1B853DFB0(sub_1B8540A2C, &v86[-4], v11);
  v17 = v16;
  v18 = v16[2];
  if (v18)
  {
    v98 = xmmword_1B8574E30;
    v92 = v16;
    v88 = v5;
    v89 = v4;
    v86[1] = a2;
    v87 = v8;
    if ((v18 & 1) == 0)
    {
      v19 = v18;
      v5 = 0;
LABEL_98:
      v48 = v17 + 4;
      v90 = &v94 + 1;
      v91 = xmmword_1B85740F0;
      v11 = &qword_1EBA8A9A0;
      v4 = &qword_1B8574E40;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9B0, &unk_1B8576970);
        v49 = swift_allocObject();
        *(v49 + 16) = v91;
        v50 = v17[2];
        if (v5 >= v50)
        {
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:

          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
          goto LABEL_204;
        }

        v51 = &v48[2 * v5];
        v53 = *v51;
        v52 = v51[1];
        *(v49 + 32) = v53;
        *(v49 + 40) = v52;
        if (v5 + 1 >= v50)
        {
          goto LABEL_197;
        }

        v54 = &v48[2 * v5 + 2];
        v55 = v54[1];
        *(v49 + 48) = *v54;
        *(v49 + 56) = v55;
        v94 = v49;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9B8, &qword_1B8574E48);
        sub_1B8540A4C(&qword_1EBA8A9C0, &qword_1EBA8A9B8, &qword_1B8574E48);
        v56 = sub_1B8565F68();
        v58 = HIBYTE(v57) & 0xF;
        v13 = v56 & 0xFFFFFFFFFFFFLL;
        if ((v57 & 0x2000000000000000) != 0)
        {
          v59 = HIBYTE(v57) & 0xF;
        }

        else
        {
          v59 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (!v59)
        {
          goto LABEL_198;
        }

        if ((v57 & 0x1000000000000000) != 0)
        {
          LOWORD(v62) = sub_1B853FD5C(v56, v57, 16);

          if ((v62 & 0x100) != 0)
          {
            goto LABEL_216;
          }

          goto LABEL_189;
        }

        if ((v57 & 0x2000000000000000) != 0)
        {
          v94 = v56;
          v95 = v57 & 0xFFFFFFFFFFFFFFLL;
          v13 = v56;
          if (v56 == 43)
          {
            if (!v58)
            {
              goto LABEL_199;
            }

            v13 = v58 - 1;
            if (v58 != 1)
            {
              LOBYTE(v62) = 0;
              v72 = v90;
              while (1)
              {
                v73 = *v72;
                v74 = v73 - 48;
                if ((v73 - 48) >= 0xA)
                {
                  if ((v73 - 65) < 6)
                  {
                    v74 = v73 - 55;
                  }

                  else
                  {
                    if ((v73 - 97) > 5)
                    {
                      break;
                    }

                    v74 = v73 - 87;
                  }
                }

                if (v62 > 0xFu)
                {
                  break;
                }

                LOBYTE(v62) = v74 + 16 * v62;
                ++v72;
                if (!--v13)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v56 == 45)
          {
            if (!v58)
            {
              goto LABEL_202;
            }

            v13 = v58 - 1;
            if (v58 != 1)
            {
              LOBYTE(v62) = 0;
              v66 = v90;
              while (1)
              {
                v67 = *v66;
                v68 = v67 - 48;
                if ((v67 - 48) >= 0xA)
                {
                  if ((v67 - 65) < 6)
                  {
                    v68 = v67 - 55;
                  }

                  else
                  {
                    if ((v67 - 97) > 5)
                    {
                      break;
                    }

                    v68 = v67 - 87;
                  }
                }

                if (v62 > 0xFu)
                {
                  break;
                }

                v62 = 16 * (v62 & 0xF) - v68;
                if ((v62 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v66;
                if (!--v13)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v58)
          {
            LOBYTE(v62) = 0;
            v77 = &v94;
            while (1)
            {
              v78 = *v77;
              v79 = v78 - 48;
              if ((v78 - 48) >= 0xA)
              {
                if ((v78 - 65) < 6)
                {
                  v79 = v78 - 55;
                }

                else
                {
                  if ((v78 - 97) > 5)
                  {
                    break;
                  }

                  v79 = v78 - 87;
                }
              }

              if (v62 > 0xFu)
              {
                break;
              }

              LOBYTE(v62) = v79 + 16 * v62;
              v77 = (v77 + 1);
              if (!--v58)
              {
                LOBYTE(v13) = 0;
                goto LABEL_188;
              }
            }
          }
        }

        else
        {
          if ((v56 & 0x1000000000000000) != 0)
          {
            v60 = ((v57 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v60 = sub_1B8566498();
            v13 = v82;
          }

          v61 = *v60;
          if (v61 == 43)
          {
            if (v13 < 1)
            {
              goto LABEL_200;
            }

            if (--v13)
            {
              if (!v60)
              {
                goto LABEL_176;
              }

              LOBYTE(v62) = 0;
              v69 = v60 + 1;
              while (1)
              {
                v70 = *v69;
                v71 = v70 - 48;
                if ((v70 - 48) >= 0xA)
                {
                  if ((v70 - 65) < 6)
                  {
                    v71 = v70 - 55;
                  }

                  else
                  {
                    if ((v70 - 97) > 5)
                    {
                      break;
                    }

                    v71 = v70 - 87;
                  }
                }

                if (v62 > 0xFu)
                {
                  break;
                }

                LOBYTE(v62) = v71 + 16 * v62;
                ++v69;
                if (!--v13)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v61 == 45)
          {
            if (v13 < 1)
            {
              goto LABEL_201;
            }

            if (--v13)
            {
              if (!v60)
              {
                goto LABEL_176;
              }

              LOBYTE(v62) = 0;
              v63 = v60 + 1;
              while (1)
              {
                v64 = *v63;
                v65 = v64 - 48;
                if ((v64 - 48) >= 0xA)
                {
                  if ((v64 - 65) < 6)
                  {
                    v65 = v64 - 55;
                  }

                  else
                  {
                    if ((v64 - 97) > 5)
                    {
                      break;
                    }

                    v65 = v64 - 87;
                  }
                }

                if (v62 > 0xFu)
                {
                  break;
                }

                v62 = 16 * (v62 & 0xF) - v65;
                if ((v62 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v63;
                if (!--v13)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v13)
          {
            if (!v60)
            {
LABEL_176:
              LOBYTE(v62) = 0;
              LOBYTE(v13) = 0;
              goto LABEL_188;
            }

            LOBYTE(v62) = 0;
            while (1)
            {
              v75 = *v60;
              v76 = v75 - 48;
              if ((v75 - 48) >= 0xA)
              {
                if ((v75 - 65) < 6)
                {
                  v76 = v75 - 55;
                }

                else
                {
                  if ((v75 - 97) > 5)
                  {
                    break;
                  }

                  v76 = v75 - 87;
                }
              }

              if (v62 > 0xFu)
              {
                break;
              }

              LOBYTE(v62) = v76 + 16 * v62;
              ++v60;
              if (!--v13)
              {
                goto LABEL_188;
              }
            }
          }
        }

        LOBYTE(v62) = 0;
        LOBYTE(v13) = 1;
LABEL_188:
        v93 = v13;
        v80 = v13;

        if (v80)
        {
          goto LABEL_216;
        }

LABEL_189:
        v81 = *(&v98 + 1) >> 62;
        if ((*(&v98 + 1) >> 62) <= 1)
        {
          if (v81)
          {
            v8 = v98 >> 32;
          }

          else
          {
            v8 = BYTE14(v98);
          }
        }

        else if (v81 == 2)
        {
          v8 = *(v98 + 24);
        }

        else
        {
          v8 = 0;
        }

        v5 += 2;
        a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9A0, &qword_1B8574E40);
        v96 = a2;
        v97 = sub_1B8540A4C(&qword_1EBA8A9A8, &qword_1EBA8A9A0, &qword_1B8574E40);
        LOBYTE(v94) = v62;
        v93 = *__swift_project_boxed_opaque_existential_0(&v94, a2);
        sub_1B8565998();
        __swift_destroy_boxed_opaque_existential_0(&v94);
        v17 = v92;
        if (v5 >= v19)
        {
          goto LABEL_96;
        }
      }
    }

    v21 = v16[4];
    v22 = v16[5];
    v23 = HIBYTE(v22) & 0xF;
    v24 = v21 & 0xFFFFFFFFFFFFLL;
    if ((v22 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v22) & 0xF;
    }

    else
    {
      v25 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      if ((v22 & 0x1000000000000000) == 0)
      {
        if ((v22 & 0x2000000000000000) != 0)
        {
          v94 = v16[4];
          v95 = v22 & 0xFFFFFFFFFFFFFFLL;
          if (v21 != 43)
          {
            if (v21 != 45)
            {
              if (!v23)
              {
                goto LABEL_93;
              }

              LOBYTE(v21) = 0;
              v42 = &v94;
              while (1)
              {
                v43 = *v42;
                v44 = v43 - 48;
                if ((v43 - 48) >= 0xA)
                {
                  if ((v43 - 65) < 6)
                  {
                    v44 = v43 - 55;
                  }

                  else
                  {
                    if ((v43 - 97) > 5)
                    {
                      goto LABEL_93;
                    }

                    v44 = v43 - 87;
                  }
                }

                if (v21 > 0xFu)
                {
                  goto LABEL_93;
                }

                LOBYTE(v21) = v44 + 16 * v21;
                v42 = (v42 + 1);
                if (!--v23)
                {
                  goto LABEL_94;
                }
              }
            }

            if (v23)
            {
              if (!--v23)
              {
                goto LABEL_93;
              }

              LOBYTE(v21) = 0;
              v31 = &v94 + 1;
              while (1)
              {
                v32 = *v31;
                v33 = v32 - 48;
                if ((v32 - 48) >= 0xA)
                {
                  if ((v32 - 65) < 6)
                  {
                    v33 = v32 - 55;
                  }

                  else
                  {
                    if ((v32 - 97) > 5)
                    {
                      goto LABEL_93;
                    }

                    v33 = v32 - 87;
                  }
                }

                if (v21 > 0xFu)
                {
                  goto LABEL_93;
                }

                LODWORD(v21) = 16 * (v21 & 0xF) - v33;
                if ((v21 & 0xFFFFFF00) != 0)
                {
                  goto LABEL_93;
                }

                ++v31;
                if (!--v23)
                {
                  goto LABEL_94;
                }
              }
            }

            goto LABEL_213;
          }

          if (v23)
          {
            if (!--v23)
            {
              goto LABEL_93;
            }

            LOBYTE(v21) = 0;
            v37 = &v94 + 1;
            while (1)
            {
              v38 = *v37;
              v39 = v38 - 48;
              if ((v38 - 48) >= 0xA)
              {
                if ((v38 - 65) < 6)
                {
                  v39 = v38 - 55;
                }

                else
                {
                  if ((v38 - 97) > 5)
                  {
                    goto LABEL_93;
                  }

                  v39 = v38 - 87;
                }
              }

              if (v21 > 0xFu)
              {
                goto LABEL_93;
              }

              LOBYTE(v21) = v39 + 16 * v21;
              ++v37;
              if (!--v23)
              {
                goto LABEL_94;
              }
            }
          }

LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
        }

        if ((v21 & 0x1000000000000000) == 0)
        {
          goto LABEL_211;
        }

        for (i = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1B8566498())
        {
          v27 = *i;
          if (v27 == 43)
          {
            if (v24 < 1)
            {
              goto LABEL_214;
            }

            v23 = v24 - 1;
            if (v24 != 1)
            {
              if (!i)
              {
                goto LABEL_82;
              }

              LOBYTE(v21) = 0;
              v34 = i + 1;
              while (1)
              {
                v35 = *v34;
                v36 = v35 - 48;
                if ((v35 - 48) >= 0xA)
                {
                  if ((v35 - 65) < 6)
                  {
                    v36 = v35 - 55;
                  }

                  else
                  {
                    if ((v35 - 97) > 5)
                    {
                      break;
                    }

                    v36 = v35 - 87;
                  }
                }

                if (v21 > 0xFu)
                {
                  break;
                }

                LOBYTE(v21) = v36 + 16 * v21;
                ++v34;
                if (!--v23)
                {
                  goto LABEL_94;
                }
              }
            }
          }

          else if (v27 == 45)
          {
            if (v24 < 1)
            {
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
              goto LABEL_215;
            }

            v23 = v24 - 1;
            if (v24 != 1)
            {
              if (!i)
              {
                goto LABEL_82;
              }

              LOBYTE(v21) = 0;
              v28 = i + 1;
              while (1)
              {
                v29 = *v28;
                v30 = v29 - 48;
                if ((v29 - 48) >= 0xA)
                {
                  if ((v29 - 65) < 6)
                  {
                    v30 = v29 - 55;
                  }

                  else
                  {
                    if ((v29 - 97) > 5)
                    {
                      break;
                    }

                    v30 = v29 - 87;
                  }
                }

                if (v21 > 0xFu)
                {
                  break;
                }

                LODWORD(v21) = 16 * (v21 & 0xF) - v30;
                if ((v21 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v28;
                if (!--v23)
                {
                  goto LABEL_94;
                }
              }
            }
          }

          else if (v24)
          {
            if (!i)
            {
LABEL_82:
              LOBYTE(v21) = 0;
              LOBYTE(v23) = 0;
              goto LABEL_94;
            }

            LOBYTE(v21) = 0;
            while (1)
            {
              v40 = *i;
              v41 = v40 - 48;
              if ((v40 - 48) >= 0xA)
              {
                if ((v40 - 65) < 6)
                {
                  v41 = v40 - 55;
                }

                else
                {
                  if ((v40 - 97) > 5)
                  {
                    break;
                  }

                  v41 = v40 - 87;
                }
              }

              if (v21 > 0xFu)
              {
                break;
              }

              LOBYTE(v21) = v41 + 16 * v21;
              ++i;
              if (!--v24)
              {
                LOBYTE(v23) = 0;
                goto LABEL_94;
              }
            }
          }

LABEL_93:
          LOBYTE(v21) = 0;
          LOBYTE(v23) = 1;
LABEL_94:
          v93 = v23;
          if ((v23 & 1) == 0)
          {
            goto LABEL_95;
          }

LABEL_210:
          __break(1u);
LABEL_211:
          ;
        }
      }
    }

    else
    {
      __break(1u);
    }

    LOWORD(v21) = sub_1B853FD5C(v21, v22, 16);

    if ((v21 & 0x100) != 0)
    {
      goto LABEL_210;
    }

LABEL_95:
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9A0, &qword_1B8574E40);
    v96 = v45;
    v97 = sub_1B8540A4C(&qword_1EBA8A9A8, &qword_1EBA8A9A0, &qword_1B8574E40);
    LOBYTE(v94) = v21;
    v93 = *__swift_project_boxed_opaque_existential_0(&v94, v45);
    v5 = 1;
    sub_1B8565998();
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v19 = v18;
    v17 = v92;
    if (v18 != 1)
    {
      goto LABEL_98;
    }

LABEL_96:

    v20 = v98;
    v5 = v88;
    v4 = v89;
    v8 = v87;
  }

  else
  {

    v20 = 0;
  }

  (*(v5 + 8))(v8, v4);
  v46 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t sub_1B853EE70(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 40);
    v6 = (result + 40);
    do
    {
      v7 = *(v2 + 16);
      v8 = v4 == v7;
      if (v4 == v7)
      {
        return v8;
      }

      if (v4 >= v7)
      {
        __break(1u);
        goto LABEL_18;
      }

      result = *(v5 - 1);
      if (result != *(v6 - 1) || *v5 != *v6)
      {
        result = sub_1B8566758();
        if ((result & 1) == 0)
        {
          return v8;
        }
      }

      ++v4;
      v5 += 2;
      v6 += 2;
    }

    while (v3 != v4);
  }

  v10 = *(v2 + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1B853EF2C(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *a1;
  }

  v4 = 7;
  if (((v2 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  if (sub_1B854047C(0xFuLL, v4 | (v3 << 16), v1, v2) != 1)
  {
    return 0;
  }

  result = sub_1B853EFC8(v1, v2);
  if ((result & 0x100000000) == 0)
  {
    return sub_1B8565858() & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B853EFC8(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B853FB2C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_1B8566438();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1B8566498();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

Swift::String __swiftcall Data.base64URLEncodedString(includePadding:)(Swift::Bool includePadding)
{
  sub_1B85659B8();
  sub_1B852675C();
  sub_1B85662B8();

  v2 = sub_1B85662B8();
  v4 = v3;

  if (!includePadding)
  {
    v2 = sub_1B85662B8();
    v6 = v5;

    v4 = v6;
  }

  v7 = v2;
  v8 = v4;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

void *Data.compressed(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1B853F328(a1, a2, a3, &selRef_compressedDataUsingAlgorithm_error_);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *Data.decompressed(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1B853F328(a1, a2, a3, &selRef_decompressedDataUsingAlgorithm_error_);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B853F328(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B85659A8();
  v12[0] = 0;
  v7 = [v6 *a4];

  v8 = v12[0];
  if (v7)
  {
    v9 = sub_1B85659D8();
  }

  else
  {
    v9 = v8;
    sub_1B85658D8();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void *sub_1B853F408(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A878, &qword_1B8574768);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1B853F47C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A920, &qword_1B8574B40);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1B853F54C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9B0, &unk_1B8576970);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1B853F624()
{
  v0 = sub_1B8565F88();
  v4 = sub_1B853F6A4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1B853F6A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B8565E58();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1B85662A8();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1B853F408(v9, 0);
  v12 = sub_1B853F7FC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1B8565E58();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1B8566498();
LABEL_4:

  return sub_1B8565E58();
}

unint64_t sub_1B853F7FC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1B853FA1C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B8565F18();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B8566498();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1B853FA1C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1B8565EF8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B853FA1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B8565F28();
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
    v5 = MEMORY[0x1B8CBF160](15, a1 >> 16);
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

_BYTE *sub_1B853FA98@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1B8540798(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1B85408D4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1B8540850(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_1B853FB2C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B853FBC4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B853FC38(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B853FBC4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B853FA1C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B853FC38(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1B8566498();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unsigned __int8 *sub_1B853FD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_1B8565F78();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B853F624();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B8566498();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1B8540330(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_1B8565ED8();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1B85403F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9B0, &unk_1B8576970);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_1B854047C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_1B854068C(a1, a3, a4);
  v8 = sub_1B854068C(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1B8565E38();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_1B8566498();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1B8565E48();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_1B8566498();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_1B854068C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B8540724(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B853FC38(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B8540724(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B853FA1C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8540798(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B8540850(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1B85658B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1B8565878();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B85408D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1B85658B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1B8565878();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B8565988();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1B8540950(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9C8, &qword_1B8574E50);
  v10 = sub_1B8540A4C(&qword_1EBA8A9D0, &qword_1EBA8A9C8, &qword_1B8574E50);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1B853FA98(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_1B8540A4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_1B8540B14@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  sub_1B8565FA8();
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *a1 = result;
  return result;
}

unint64_t sub_1B8540B80()
{
  result = qword_1EBA8A9D8;
  if (!qword_1EBA8A9D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA8A9D8);
  }

  return result;
}

uint64_t sub_1B8540C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8566298();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v18 - v14;
  (*(v8 + 16))(v11, a1, a2);
  sub_1B8565FB8();
  v16 = *(a3 - 8);
  result = (*(v16 + 48))(v15, 1, a3);
  if (result != 1)
  {
    return (*(v16 + 32))(a4, v15, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8540DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[5];
  v5 = v2[6];
  return sub_1B8540C34(a1, v2[3], v2[4], a2);
}

uint64_t Dictionary<>.safari_dict(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9E0, &qword_1B8574E58);
  sub_1B8540E74(v0, &v2);
  return v2;
}

uint64_t sub_1B8540E74@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_1B8565CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6F8, &qword_1B8574548);
  v4 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v4 ^ 1u, 1, a1);
}

uint64_t Dictionary<>.safari_array<A>(for:)()
{
  v0 = sub_1B85660C8();
  sub_1B8540E74(v0, &v2);
  return v2;
}

id WBSPasswordManagerTestOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WBSPasswordManagerTestOptions.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WBSPasswordManagerTestOptions();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WBSPasswordManagerTestOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WBSPasswordManagerTestOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B854109C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8541118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B85411EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  sub_1B854109C(a1, &v15 - v10);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  sub_1B8541118(v11, v12 + v13);
  return swift_endAccess();
}

uint64_t sub_1B85412B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B854109C(v2 + v4, a2);
}

uint64_t sub_1B8541318(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1B8541118(a1, v2 + v4);
  return swift_endAccess();
}

id WBSWebsitePasskeyAvailabilityInfo.__allocating_init(supportsPasskeys:enrollURL:manageURL:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL;
  v10 = sub_1B8565938();
  v11 = *(*(v10 - 8) + 56);
  v11(&v8[v9], 1, 1, v10);
  v12 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL;
  v11(&v8[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL], 1, 1, v10);
  v8[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_supportsPasskeys] = a1;
  swift_beginAccess();
  sub_1B854167C(a2, &v8[v9]);
  swift_endAccess();
  swift_beginAccess();
  sub_1B854167C(a3, &v8[v12]);
  swift_endAccess();
  v15.receiver = v8;
  v15.super_class = v4;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_1B85416EC(a3);
  sub_1B85416EC(a2);
  return v13;
}

id WBSWebsitePasskeyAvailabilityInfo.init(supportsPasskeys:enrollURL:manageURL:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL;
  v8 = sub_1B8565938();
  v9 = *(*(v8 - 8) + 56);
  v9(&v3[v7], 1, 1, v8);
  v10 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL;
  v9(&v3[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL], 1, 1, v8);
  v3[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_supportsPasskeys] = a1;
  swift_beginAccess();
  sub_1B854167C(a2, &v3[v7]);
  swift_endAccess();
  swift_beginAccess();
  sub_1B854167C(a3, &v3[v10]);
  swift_endAccess();
  v13.receiver = v3;
  v13.super_class = type metadata accessor for WBSWebsitePasskeyAvailabilityInfo();
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_1B85416EC(a3);
  sub_1B85416EC(a2);
  return v11;
}

uint64_t sub_1B854167C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B85416EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for WBSWebsitePasskeyAvailabilityInfo()
{
  result = qword_1EBA8A9F0;
  if (!qword_1EBA8A9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id WBSWebsitePasskeyAvailabilityInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WBSWebsitePasskeyAvailabilityInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WBSWebsitePasskeyAvailabilityInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1B854109C(v4 + v5, a3);
}

void sub_1B8541B98()
{
  sub_1B8541D98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B8541D98()
{
  if (!qword_1EBA8AA00)
  {
    sub_1B8565938();
    v0 = sub_1B8566298();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA8AA00);
    }
  }
}

Swift::String __swiftcall Error.loggerDescription()()
{
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  (*(v2 + 16))(v5, v6, v1);
  v7 = sub_1B8566738();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, v1);
  }

  v10 = sub_1B85658C8();

  v11 = [v10 safari_privacyPreservingDescription];
  v12 = sub_1B8565DA8();
  v14 = v13;

  MEMORY[0x1B8CBF120](v12, v14);

  v15 = v18;
  v16 = v19;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t WBSShareablePasskey.init(relyingParty:metadata:privateKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v7 = *a3;
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = v7;
  v8 = type metadata accessor for WBSShareablePasskey();
  v9 = v8[6];
  v10 = sub_1B8565C48();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&a5[v9], a4, v10);
  v12 = *MEMORY[0x1E697AD70];
  result = sub_1B8565DA8();
  v15 = HIBYTE(v14) & 0xF;
  v16 = result & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v17 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    goto LABEL_65;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
    goto LABEL_66;
  }

  if ((v14 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B8566498();
      v16 = v40;
    }

    v18 = *result;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        if (--v16)
        {
          v19 = 0;
          if (result)
          {
            v26 = (result + 1);
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                goto LABEL_61;
              }

              v28 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_61;
              }

              v19 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                goto LABEL_61;
              }

              ++v26;
              if (!--v16)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v18 != 45)
    {
      if (v16)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v32 = *result - 48;
            if (v32 > 9)
            {
              goto LABEL_61;
            }

            v33 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_61;
            }

            v19 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v19 = 0;
      LOBYTE(v16) = 1;
LABEL_62:
      v42 = v16;
      v37 = v16;

      if ((v37 & 1) == 0)
      {
LABEL_63:
        result = (*(v11 + 8))(a4, v10);
        *&a5[v8[7]] = v19;
        *&a5[v8[8]] = 256;
        return result;
      }

      do
      {
LABEL_65:
        __break(1u);
LABEL_66:
        v42 = 0;
        v19 = sub_1B85437C4(result, v14, 10);
        v39 = v38;
      }

      while ((v39 & 1) != 0);
      goto LABEL_63;
    }

    if (v16 >= 1)
    {
      if (--v16)
      {
        v19 = 0;
        if (result)
        {
          v20 = (result + 1);
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_61;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_61;
            }

            ++v20;
            if (!--v16)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v16) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v41[0] = result;
  v41[1] = v14 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v15)
      {
        v19 = 0;
        v34 = v41;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v15)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v15)
    {
      v16 = v15 - 1;
      if (v15 != 1)
      {
        v19 = 0;
        v23 = v41 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v16)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v15)
  {
    v16 = v15 - 1;
    if (v15 != 1)
    {
      v19 = 0;
      v29 = v41 + 1;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          break;
        }

        ++v29;
        if (!--v16)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for WBSShareablePasskey()
{
  result = qword_1EBA8AA48;
  if (!qword_1EBA8AA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WBSShareablePasskey.exportedData()()
{
  v0 = sub_1B8565AA8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B8565A98();
  type metadata accessor for WBSShareablePasskey();
  sub_1B8543DF0(&qword_1EBA8A948, type metadata accessor for WBSShareablePasskey);
  v3 = sub_1B8565A88();

  return v3;
}

uint64_t sub_1B854246C()
{
  v1 = *v0;
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

uint64_t sub_1B8542534()
{
  *v0;
  *v0;
  *v0;
  sub_1B8565D38();
}

uint64_t sub_1B85425E8()
{
  v1 = *v0;
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

uint64_t sub_1B85426AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B8544540();
  *a2 = result;
  return result;
}

void sub_1B85426DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 28786;
  v5 = 0xE400000000000000;
  v6 = 1986622064;
  v7 = 0x657A69735F79656BLL;
  if (v2 != 3)
  {
    v7 = 0x657079745F79656BLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 6775156;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1B8542760()
{
  v1 = *v0;
  v2 = 28786;
  v3 = 1986622064;
  v4 = 0x657A69735F79656BLL;
  if (v1 != 3)
  {
    v4 = 0x657079745F79656BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6775156;
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

uint64_t sub_1B85427E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B8544540();
  *a1 = result;
  return result;
}

uint64_t sub_1B8542820(uint64_t a1)
{
  v2 = sub_1B8543D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B854285C(uint64_t a1)
{
  v2 = sub_1B8543D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WBSShareablePasskey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AA08, &qword_1B8574EF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B8543D50();
  sub_1B8566828();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v31) = 0;
  sub_1B85666E8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v30 = v6;
  v14 = sub_1B8565AD8();
  v29 = &v27;
  v28 = *(v14 - 8);
  v15 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[2];
  sub_1B8543DA4();
  sub_1B8543DF0(&qword_1ED9856C0, sub_1B8543DA4);

  v19 = sub_1B8565CB8();
  v20 = [objc_opt_self() cborWithDictionary_];

  sub_1B8565AB8();

  LOBYTE(v31) = 1;
  sub_1B8544124(&qword_1EBA8AA18);
  sub_1B8566708();
  (*(v28 + 8))(v17, v14);
  v21 = type metadata accessor for WBSShareablePasskey();
  v22 = v21[6];
  v31 = MEMORY[0x1B8CBEE80]();
  v32 = v23;
  v33 = 2;
  sub_1B8543E38();
  sub_1B8566708();
  sub_1B851D53C(v31, v32);
  v24 = v30;
  v25 = *(v3 + v21[7]);
  LOBYTE(v31) = 4;
  sub_1B85666F8();
  v26 = *(v3 + v21[8]);
  LOBYTE(v31) = 3;
  sub_1B85666F8();
  return (*(v24 + 8))(v9, v5);
}

uint64_t static P256.Signing.PrivateKey.== infix(_:_:)()
{
  v0 = sub_1B8565C18();
  v2 = v1;
  v3 = sub_1B8565C18();
  v5 = v4;
  v6 = sub_1B8543E8C(v0, v2, v3, v4);
  sub_1B851D53C(v3, v5);
  sub_1B851D53C(v0, v2);
  return v6 & 1;
}

uint64_t WBSShareablePasskey.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v3 = sub_1B8565C48();
  v69 = *(v3 - 8);
  v4 = *(v69 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AA28, &qword_1B8574EF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v16);
  sub_1B8543D50();
  v17 = v71;
  sub_1B8566818();
  if (!v17)
  {
    v67 = v7;
    v68 = v9;
    v71 = v11;
    LOBYTE(v74) = 0;
    v18 = sub_1B8566698();
    v20 = v19;
    v64 = v18;
    v21 = sub_1B8565AD8();
    v65 = &v53;
    v22 = *(v21 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x1EEE9AC00](v21);
    LOBYTE(v74) = 1;
    sub_1B8544124(&qword_1EBA8AA30);
    v66 = v10;
    sub_1B85666B8();
    v62 = v21;
    v63 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    LOBYTE(v73) = 2;
    sub_1B8544168();
    sub_1B85666B8();
    v24 = v74;
    v25 = v75;
    LOBYTE(v74) = 3;
    v60 = sub_1B85666A8();
    v61 = v24;
    LOBYTE(v74) = 4;
    v27 = sub_1B85666A8();
    v58 = v25;
    v56 = v27;
    v57 = &v53;
    MEMORY[0x1EEE9AC00](v27);
    v28 = v22;
    v29 = *(v22 + 16);
    v30 = v62;
    v29(&v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v63, v62);
    v59 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = sub_1B8565AC8();
    v32 = [v31 dictionary];

    if (v32)
    {
      v54 = v20;
      sub_1B8543DA4();
      sub_1B8543DF0(&qword_1ED9856C0, sub_1B8543DA4);
      v53 = sub_1B8565CC8();

      v33 = *(v28 + 8);
      v55 = v28 + 8;
      (v33)(v59, v30);
      v74 = v56;
      v34 = sub_1B8566728();
      v36 = v35;
      v37 = *MEMORY[0x1E697AD70];
      if (v34 == sub_1B8565DA8() && v36 == v38)
      {

        v39 = v70;
      }

      else
      {
        v42 = sub_1B8566758();

        v39 = v70;
        if ((v42 & 1) == 0)
        {

          v76 = 4;
          v74 = 0;
          v75 = 0xE000000000000000;
          sub_1B8566448();

          v74 = 0xD000000000000014;
          v75 = 0x80000001B858E820;
          v73 = v56;
          v49 = sub_1B8566728();
          MEMORY[0x1B8CBF120](v49);

          v41 = v66;
          sub_1B8566488();
          swift_allocError();
          sub_1B85441BC();
          sub_1B8566478();

          swift_willThrow();
          sub_1B851D53C(v61, v58);
          (v33)(v63, v30);
          goto LABEL_14;
        }
      }

      v70 = v33;
      if (v60 == 256)
      {
        v60 = v14;
        v43 = v61;
        v44 = v58;
        v74 = v61;
        v75 = v58;
        sub_1B852550C(v61, v58);
        v45 = v68;
        sub_1B8565C38();
        v46 = v71;
        v74 = v53;
        v50 = v45;
        v51 = v69;
        v52 = v67;
        (*(v69 + 16))(v67, v50, v3);
        WBSShareablePasskey.init(relyingParty:metadata:privateKey:)(v64, v54, &v74, v52, v39);
        sub_1B851D53C(v43, v44);
        (*(v51 + 8))(v68, v3);
        (v70)(v63, v30);
        (*(v46 + 8))(v60, v66);
        return __swift_destroy_boxed_opaque_existential_0(v72);
      }

      v47 = v60;

      v76 = 3;
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_1B8566448();

      v74 = 0xD000000000000014;
      v75 = 0x80000001B858E840;
      v73 = v47;
      v48 = sub_1B8566728();
      MEMORY[0x1B8CBF120](v48);

      v41 = v66;
      sub_1B8566488();
      swift_allocError();
      sub_1B85441BC();
      sub_1B8566478();

      swift_willThrow();
      sub_1B851D53C(v61, v58);
      (v70)(v63, v30);
    }

    else
    {

      v40 = *(v28 + 8);
      v40(v59, v30);
      LOBYTE(v74) = 1;
      v41 = v66;
      sub_1B8566488();
      swift_allocError();
      sub_1B85441BC();
      sub_1B8566478();
      swift_willThrow();
      sub_1B851D53C(v61, v58);
      v40(v63, v30);
    }

LABEL_14:
    (*(v71 + 8))(v14, v41);
  }

  return __swift_destroy_boxed_opaque_existential_0(v72);
}

uint64_t sub_1B8543740()
{
  v0 = sub_1B8565C18();
  v2 = v1;
  v3 = sub_1B8565C18();
  v5 = v4;
  v6 = sub_1B8543E8C(v0, v2, v3, v4);
  sub_1B851D53C(v3, v5);
  sub_1B851D53C(v0, v2);
  return v6 & 1;
}

unsigned __int8 *sub_1B85437C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B8565F78();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B853F624();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B8566498();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
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

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
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

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_1B8543D50()
{
  result = qword_1EBA8AA10;
  if (!qword_1EBA8AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA10);
  }

  return result;
}

unint64_t sub_1B8543DA4()
{
  result = qword_1ED9856B8;
  if (!qword_1ED9856B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9856B8);
  }

  return result;
}

uint64_t sub_1B8543DF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8543E38()
{
  result = qword_1EBA8AA20;
  if (!qword_1EBA8AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA20);
  }

  return result;
}

uint64_t sub_1B8543E8C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1B852550C(a3, a4);
          return sub_1B8534838(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s10SafariCore19WBSShareablePasskeyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B8566758() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];

  sub_1B8553AB4(v5, v6);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for WBSShareablePasskey();
  v10 = v9[6];
  v11 = sub_1B8565C18();
  v13 = v12;
  v14 = sub_1B8565C18();
  v16 = v15;
  v17 = sub_1B8543E8C(v11, v13, v14, v15);
  sub_1B851D53C(v14, v16);
  sub_1B851D53C(v11, v13);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  return *(a1 + v9[7]) == *(a2 + v9[7]) && *(a1 + v9[8]) == *(a2 + v9[8]);
}

uint64_t sub_1B8544124(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B8565AD8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8544168()
{
  result = qword_1EBA8AA38;
  if (!qword_1EBA8AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA38);
  }

  return result;
}

unint64_t sub_1B85441BC()
{
  result = qword_1EBA8AA40;
  if (!qword_1EBA8AA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8AA28, &qword_1B8574EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA40);
  }

  return result;
}

uint64_t sub_1B8544248()
{
  result = sub_1B8565C48();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WBSShareablePasskey.AirDropCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WBSShareablePasskey.AirDropCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B854443C()
{
  result = qword_1EBA8AA58;
  if (!qword_1EBA8AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA58);
  }

  return result;
}

unint64_t sub_1B8544494()
{
  result = qword_1EBA8AA60;
  if (!qword_1EBA8AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA60);
  }

  return result;
}

unint64_t sub_1B85444EC()
{
  result = qword_1EBA8AA68;
  if (!qword_1EBA8AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA68);
  }

  return result;
}

uint64_t sub_1B8544540()
{
  v0 = sub_1B8566658();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t WBSWebsitePasskeyEndpointsServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1B85667D8();
  MEMORY[0x1B8CBFA40](v1);
  return sub_1B8566808();
}

uint64_t sub_1B8544628()
{
  v1 = *v0;
  sub_1B85667D8();
  MEMORY[0x1B8CBFA40](v1);
  return sub_1B8566808();
}

uint64_t sub_1B854469C()
{
  v1 = *v0;
  sub_1B85667D8();
  MEMORY[0x1B8CBFA40](v1);
  return sub_1B8566808();
}

void sub_1B85446E0()
{
  v0 = [objc_opt_self() safari_ephemeralSessionConfiguration];
  v1 = sub_1B8565D68();
  [v0 set:v1 sourceApplicationSecondaryIdentifier:?];

  qword_1EBA8AA70 = v0;
}

id static WBSWebsitePasskeyEndpointsService.privateRelayURLSessionConfiguration.getter()
{
  if (qword_1EBA8A528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EBA8AA70;

  return v0;
}

void static WBSWebsitePasskeyEndpointsService.privateRelayURLSessionConfiguration.setter(uint64_t a1)
{
  if (qword_1EBA8A528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EBA8AA70;
  qword_1EBA8AA70 = a1;
}

uint64_t (*static WBSWebsitePasskeyEndpointsService.privateRelayURLSessionConfiguration.modify())()
{
  if (qword_1EBA8A528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1B85448EC@<X0>(void *a1@<X8>)
{
  if (qword_1EBA8A528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EBA8AA70;
  *a1 = qword_1EBA8AA70;

  return v2;
}

void sub_1B8544978(id *a1)
{
  v1 = qword_1EBA8A528;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EBA8AA70;
  qword_1EBA8AA70 = v2;
}

uint64_t WBSWebsitePasskeyEndpointsService.__allocating_init(urlSessionConfiguration:maximumURLLength:maximumPayloadSize:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

uint64_t WBSWebsitePasskeyEndpointsService.init(urlSessionConfiguration:maximumURLLength:maximumPayloadSize:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_1B8544A6C(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AA78, &qword_1B8575148);
  v3[25] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v6 = sub_1B8565798();
  v3[29] = v6;
  v7 = *(v6 - 8);
  v3[30] = v7;
  v8 = *(v7 + 64) + 15;
  v3[31] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v10 = sub_1B8565938();
  v3[35] = v10;
  v11 = *(v10 - 8);
  v3[36] = v11;
  v12 = *(v11 + 64) + 15;
  v3[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8544C30, 0, 0);
}

uint64_t sub_1B8544C30()
{
  v34 = v0;
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[22];
  v5 = v0[23];
  sub_1B8546234(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B8456588(v0[34], &qword_1EBA8A550, &qword_1B8574120);
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v6 = v0[23];
    v7 = sub_1B8565B78();
    __swift_project_value_buffer(v7, qword_1ED985C68);

    v8 = sub_1B8565B48();
    v9 = sub_1B8566208();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[22];
      v10 = v0[23];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1B8525560(v11, v10, &v33);
      _os_log_impl(&dword_1B8447000, v8, v9, "Invalid URL for domain: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B8CC1710](v13, -1, -1);
      MEMORY[0x1B8CC1710](v12, -1, -1);
    }

    sub_1B8546D88();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v15 = v0[37];
    v17 = v0[33];
    v16 = v0[34];
    v19 = v0[31];
    v18 = v0[32];
    v21 = v0[27];
    v20 = v0[28];
    v22 = v0[26];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[31];
    v26 = v0[24];
    (*(v0[36] + 32))(v0[37], v0[34], v0[35]);
    v0[38] = [objc_opt_self() sessionWithConfiguration_];
    v27 = objc_allocWithZone(MEMORY[0x1E695AC18]);
    v28 = sub_1B85658F8();
    v29 = [v27 initWithURL_];
    v0[39] = v29;

    [v29 setTimeoutInterval_];
    [v29 _setPrivacyProxyStrictFailClosed_];
    sub_1B8565788();
    v30 = *(MEMORY[0x1E6969EC0] + 4);
    v31 = swift_task_alloc();
    v0[40] = v31;
    *v31 = v0;
    v31[1] = sub_1B8544FD0;
    v32 = v0[31];

    return MEMORY[0x1EEDC6260](v32, 0);
  }
}

uint64_t sub_1B8544FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 320);
  v8 = *v4;
  v6[41] = a1;
  v6[42] = a2;
  v6[43] = a3;
  v6[44] = v3;

  (*(v5[30] + 8))(v5[31], v5[29]);
  if (v3)
  {
    v9 = sub_1B8545FA4;
  }

  else
  {
    v9 = sub_1B8545144;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B8545144()
{
  v150 = v0;
  v1 = *(v0 + 344);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 184);
    v15 = sub_1B8565B78();
    __swift_project_value_buffer(v15, qword_1ED985C68);

    v16 = sub_1B8565B48();
    v17 = sub_1B8566218();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 176);
      v18 = *(v0 + 184);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v149[0] = v21;
      *v20 = 136642819;
      *(v20 + 4) = sub_1B8525560(v19, v18, v149);
      _os_log_impl(&dword_1B8447000, v16, v17, "Non-HTTP response for domain: %{sensitive}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B8CC1710](v21, -1, -1);
      MEMORY[0x1B8CC1710](v20, -1, -1);
    }

    v22 = *(v0 + 336);
    v23 = *(v0 + 344);
    v24 = *(v0 + 328);
    v25 = *(v0 + 312);
    sub_1B8546D88();
    v26 = swift_allocError();
    *v27 = 1;
    swift_willThrow();
    goto LABEL_24;
  }

  v3 = v2;
  v4 = *(v0 + 344);
  if ([v3 statusCode] != 200)
  {
    if ([v3 statusCode] != 404)
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v81 = *(v0 + 344);
      v82 = *(v0 + 184);
      v83 = sub_1B8565B78();
      __swift_project_value_buffer(v83, qword_1ED985C68);
      v84 = v81;

      v85 = sub_1B8565B48();
      v86 = sub_1B8566218();

      v87 = os_log_type_enabled(v85, v86);
      v89 = *(v0 + 336);
      v88 = *(v0 + 344);
      v90 = *(v0 + 328);
      v91 = *(v0 + 312);
      if (v87)
      {
        v144 = *(v0 + 328);
        v148 = *(v0 + 312);
        v93 = *(v0 + 176);
        v92 = *(v0 + 184);
        v141 = *(v0 + 336);
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v149[0] = v95;
        *v94 = 136643075;
        *(v94 + 4) = sub_1B8525560(v93, v92, v149);
        *(v94 + 12) = 2048;
        *(v94 + 14) = [v3 statusCode];

        _os_log_impl(&dword_1B8447000, v85, v86, "Domain %{sensitive}s returned HTTP status code: %ld", v94, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x1B8CC1710](v95, -1, -1);
        MEMORY[0x1B8CC1710](v94, -1, -1);

        sub_1B8546D88();
        v26 = swift_allocError();
        *v96 = 1;
        swift_willThrow();

        sub_1B851D53C(v144, v141);
      }

      else
      {

        sub_1B8546D88();
        v26 = swift_allocError();
        *v97 = 1;
        swift_willThrow();

        sub_1B851D53C(v90, v89);
      }

      goto LABEL_25;
    }

    v131 = *(v0 + 344);
    v134 = *(v0 + 328);
    v146 = *(v0 + 312);
    v28 = *(v0 + 280);
    v29 = *(v0 + 288);
    v137 = *(v0 + 336);
    v30 = *(v0 + 256);
    v31 = *(v0 + 264);

    v32 = *(v29 + 56);
    v32(v31, 1, 1, v28);
    v32(v30, 1, 1, v28);
    v33 = type metadata accessor for WBSWebsitePasskeyAvailabilityInfo();
    v34 = objc_allocWithZone(v33);
    v35 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL;
    v32(&v34[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL], 1, 1, v28);
    v36 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL;
    v32(&v34[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL], 1, 1, v28);
    v34[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_supportsPasskeys] = 0;
    swift_beginAccess();
    sub_1B854167C(v31, &v34[v35]);
    swift_endAccess();
    swift_beginAccess();
    sub_1B854167C(v30, &v34[v36]);
    swift_endAccess();
    *(v0 + 112) = v34;
    *(v0 + 120) = v33;
    v143 = objc_msgSendSuper2((v0 + 112), sel_init);
    sub_1B851D53C(v134, v137);

    v37 = (v0 + 256);
    v147 = *(v0 + 264);
    goto LABEL_15;
  }

  v5 = sub_1B8565D68();
  v6 = [v3 valueForHTTPHeaderField_];

  if (!v6)
  {
    goto LABEL_18;
  }

  sub_1B8565DA8();

  v7 = sub_1B8565E18();
  v9 = v8;

  *(v0 + 128) = v7;
  *(v0 + 136) = v9;
  *(v0 + 144) = 0xD000000000000010;
  *(v0 + 152) = 0x80000001B858E860;
  sub_1B852675C();
  LOBYTE(v7) = sub_1B85662C8();

  if ((v7 & 1) == 0)
  {
LABEL_18:
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 184);
    v47 = sub_1B8565B78();
    __swift_project_value_buffer(v47, qword_1ED985C68);

    v48 = sub_1B8565B48();
    v49 = sub_1B8566218();

    if (os_log_type_enabled(v48, v49))
    {
      v51 = *(v0 + 176);
      v50 = *(v0 + 184);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v149[0] = v53;
      *v52 = 136642819;
      *(v52 + 4) = sub_1B8525560(v51, v50, v149);
      _os_log_impl(&dword_1B8447000, v48, v49, "Domain %{sensitive}s returned response of invalid content type.", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x1B8CC1710](v53, -1, -1);
      MEMORY[0x1B8CC1710](v52, -1, -1);
    }

    v22 = *(v0 + 336);
    v23 = *(v0 + 344);
    v24 = *(v0 + 328);
    v25 = *(v0 + 312);
    sub_1B8546D88();
    v26 = swift_allocError();
    v55 = 1;
    goto LABEL_23;
  }

  v11 = *(v0 + 336);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v13 = 0;
      goto LABEL_44;
    }

    v98 = *(*(v0 + 328) + 16);
    v99 = *(*(v0 + 328) + 24);
    v100 = __OFSUB__(v99, v98);
    v13 = v99 - v98;
    if (!v100)
    {
      goto LABEL_44;
    }

    __break(1u);
LABEL_41:
    v101 = *(v0 + 328);
    v102 = *(v0 + 332);
    v100 = __OFSUB__(v102, v101);
    LODWORD(v13) = v102 - v101;
    if (v100)
    {
      __break(1u);
      return result;
    }

    v13 = v13;
    goto LABEL_44;
  }

  if (v12)
  {
    goto LABEL_41;
  }

  v13 = BYTE6(v11);
LABEL_44:
  if (*(*(v0 + 192) + 32) < v13)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v103 = *(v0 + 184);
    v104 = sub_1B8565B78();
    __swift_project_value_buffer(v104, qword_1ED985C68);

    v105 = sub_1B8565B48();
    v106 = sub_1B8566218();

    if (os_log_type_enabled(v105, v106))
    {
      v108 = *(v0 + 176);
      v107 = *(v0 + 184);
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v149[0] = v110;
      *v109 = 136642819;
      *(v109 + 4) = sub_1B8525560(v108, v107, v149);
      _os_log_impl(&dword_1B8447000, v105, v106, "Domain %{sensitive}s returned payload size exceed client set limit.", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v110);
      MEMORY[0x1B8CC1710](v110, -1, -1);
      MEMORY[0x1B8CC1710](v109, -1, -1);
    }

    v22 = *(v0 + 336);
    v23 = *(v0 + 344);
    v24 = *(v0 + 328);
    v25 = *(v0 + 312);
    sub_1B8546D88();
    v26 = swift_allocError();
    v55 = 2;
LABEL_23:
    *v54 = v55;
    swift_willThrow();

LABEL_24:
    sub_1B851D53C(v24, v22);

LABEL_25:
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 184);
    v57 = sub_1B8565B78();
    __swift_project_value_buffer(v57, qword_1ED985C68);

    v58 = v26;
    v59 = sub_1B8565B48();
    v60 = sub_1B8566218();

    if (os_log_type_enabled(v59, v60))
    {
      v62 = *(v0 + 176);
      v61 = *(v0 + 184);
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v149[0] = v65;
      *v63 = 136643075;
      *(v63 + 4) = sub_1B8525560(v62, v61, v149);
      *(v63 + 12) = 2112;
      v66 = v26;
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 14) = v67;
      *v64 = v67;
      _os_log_impl(&dword_1B8447000, v59, v60, "Error checking passkey support for domain %{sensitive}s: %@", v63, 0x16u);
      sub_1B8456588(v64, &qword_1EBA8A8A0, &qword_1B85747C0);
      MEMORY[0x1B8CC1710](v64, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x1B8CC1710](v65, -1, -1);
      MEMORY[0x1B8CC1710](v63, -1, -1);
    }

    v69 = *(v0 + 296);
    v68 = *(v0 + 304);
    v70 = *(v0 + 280);
    v71 = *(v0 + 288);
    swift_willThrow();
    [v68 finishTasksAndInvalidate];

    (*(v71 + 8))(v69, v70);
    v72 = *(v0 + 296);
    v74 = *(v0 + 264);
    v73 = *(v0 + 272);
    v76 = *(v0 + 248);
    v75 = *(v0 + 256);
    v78 = *(v0 + 216);
    v77 = *(v0 + 224);
    v79 = *(v0 + 208);

    v80 = *(v0 + 8);

    return v80();
  }

  v111 = *(v0 + 352);
  v112 = *(v0 + 328);
  v113 = *(v0 + 200);
  sub_1B85463F8(*(v0 + 224), (*(v0 + 224) + *(v113 + 48)));
  v26 = v111;
  v114 = *(v0 + 336);
  v115 = *(v0 + 344);
  v116 = *(v0 + 328);
  v117 = *(v0 + 312);
  if (v26)
  {

    sub_1B851D53C(v116, v114);
    goto LABEL_25;
  }

  v142 = *(v0 + 312);
  v37 = (v0 + 208);
  v118 = *(v0 + 208);
  v136 = *(v0 + 328);
  v119 = *(v0 + 280);
  v120 = *(v0 + 288);
  v121 = *(v0 + 216);
  v122 = *(v0 + 224);
  v129 = v121;
  v130 = v118;
  v139 = v122;
  sub_1B8546DDC(v122, v121);
  v147 = v121 + *(v113 + 48);
  sub_1B8546DDC(v122, v118);
  v123 = *(v113 + 48);
  v145 = type metadata accessor for WBSWebsitePasskeyAvailabilityInfo();
  v124 = objc_allocWithZone(v145);
  v133 = v114;
  v125 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL;
  v126 = *(v120 + 56);
  v126(&v124[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL], 1, 1, v119);
  v127 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL;
  v126(&v124[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL], 1, 1, v119);
  v124[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_supportsPasskeys] = 1;
  swift_beginAccess();
  sub_1B854167C(v129, &v124[v125]);
  swift_endAccess();
  swift_beginAccess();
  sub_1B854167C(v130 + v123, &v124[v127]);
  swift_endAccess();
  *(v0 + 160) = v124;
  *(v0 + 168) = v145;
  v143 = objc_msgSendSuper2((v0 + 160), sel_init);
  sub_1B851D53C(v136, v133);

  sub_1B8456588(v139, &qword_1EBA8AA78, &qword_1B8575148);
  sub_1B8456588(v130 + v123, &qword_1EBA8A550, &qword_1B8574120);
  sub_1B8456588(v129, &qword_1EBA8A550, &qword_1B8574120);
  v128 = *(v0 + 264);
LABEL_15:
  v38 = *v37;
  v40 = *(v0 + 296);
  v39 = *(v0 + 304);
  v42 = *(v0 + 280);
  v41 = *(v0 + 288);
  v43 = *(v0 + 272);
  v44 = *(v0 + 256);
  v132 = *(v0 + 248);
  v135 = *(v0 + 224);
  v138 = *(v0 + 216);
  v140 = *(v0 + 208);
  sub_1B8456588(v38, &qword_1EBA8A550, &qword_1B8574120);
  sub_1B8456588(v147, &qword_1EBA8A550, &qword_1B8574120);
  [v39 finishTasksAndInvalidate];

  (*(v41 + 8))(v40, v42);

  v45 = *(v0 + 8);

  return v45(v143);
}

uint64_t sub_1B8545FA4()
{
  v29 = v0;

  v1 = *(v0 + 352);
  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 184);
  v3 = sub_1B8565B78();
  __swift_project_value_buffer(v3, qword_1ED985C68);

  v4 = v1;
  v5 = sub_1B8565B48();
  v6 = sub_1B8566218();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v9 = 136643075;
    *(v9 + 4) = sub_1B8525560(v8, v7, &v28);
    *(v9 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1B8447000, v5, v6, "Error checking passkey support for domain %{sensitive}s: %@", v9, 0x16u);
    sub_1B8456588(v10, &qword_1EBA8A8A0, &qword_1B85747C0);
    MEMORY[0x1B8CC1710](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B8CC1710](v11, -1, -1);
    MEMORY[0x1B8CC1710](v9, -1, -1);
  }

  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v16 = *(v0 + 280);
  v17 = *(v0 + 288);
  swift_willThrow();
  [v14 finishTasksAndInvalidate];

  (*(v17 + 8))(v15, v16);
  v18 = *(v0 + 296);
  v20 = *(v0 + 264);
  v19 = *(v0 + 272);
  v22 = *(v0 + 248);
  v21 = *(v0 + 256);
  v24 = *(v0 + 216);
  v23 = *(v0 + 224);
  v25 = *(v0 + 208);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1B8546234@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_1B8565D68();
  v7 = [v6 safari_bestURLForUserTypedString];

  if (v7)
  {
    v8 = [v7 safari_wellKnownPasskeyEndpointsURL];

    if (v8)
    {
      sub_1B8565908();

      v9 = sub_1B8565938();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = sub_1B8565938();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return sub_1B85473EC(v5, a1);
  }

  else
  {
    v10 = sub_1B8565938();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t sub_1B85463F8(char *a1, char *a2)
{
  v5 = sub_1B85657C8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1B85657B8();
  sub_1B8547398();
  sub_1B85657A8();

  if (!v2)
  {
    if (v11)
    {

      sub_1B85465A0(a1);

      if (v12)
      {
LABEL_4:

        sub_1B85465A0(a2);
        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
      v9 = sub_1B8565938();
      (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
      if (v12)
      {
        goto LABEL_4;
      }
    }

    v10 = sub_1B8565938();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  return result;
}

uint64_t sub_1B85465A0@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_1B8565938();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 24) < sub_1B8565E78())
  {
    goto LABEL_11;
  }

  sub_1B8565928();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v12 = *(v8 + 32);
    v12(v11, v6, v7);
    sub_1B8565918();
    if (v13)
    {
      v14 = sub_1B8565E18();
      v16 = v15;

      if (v14 == 0x7370747468 && v16 == 0xE500000000000000)
      {
      }

      else
      {
        v18 = sub_1B8566758();

        if ((v18 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v12(a1, v11, v7);
      v19 = 0;
      return (*(v8 + 56))(a1, v19, 1, v7);
    }

LABEL_10:
    (*(v8 + 8))(v11, v7);
    goto LABEL_11;
  }

  sub_1B8456588(v6, &qword_1EBA8A550, &qword_1B8574120);
LABEL_11:
  v19 = 1;
  return (*(v8 + 56))(a1, v19, 1, v7);
}

uint64_t WBSWebsitePasskeyEndpointsService.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B8546860(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AAA8, &qword_1B85753A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B854770C();
  sub_1B8566828();
  v16 = 0;
  sub_1B85666C8();
  if (!v5)
  {
    v15 = 1;
    sub_1B85666C8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B85469F4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B8546A9C;

  return sub_1B8544A6C(a1, a2);
}

uint64_t sub_1B8546A9C(uint64_t a1)
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

uint64_t sub_1B8546BB4()
{
  if (*v0)
  {
    return 0x6567616E616DLL;
  }

  else
  {
    return 0x6C6C6F726E65;
  }
}

uint64_t sub_1B8546BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6C6F726E65 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B8566758() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567616E616DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8566758();

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

uint64_t sub_1B8546CC0(uint64_t a1)
{
  v2 = sub_1B854770C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8546CFC(uint64_t a1)
{
  v2 = sub_1B854770C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8546D38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B8547528(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1B8546D88()
{
  result = qword_1EBA8AA80;
  if (!qword_1EBA8AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA80);
  }

  return result;
}

uint64_t sub_1B8546DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AA78, &qword_1B8575148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B8546E50()
{
  result = qword_1EBA8AA88;
  if (!qword_1EBA8AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA88);
  }

  return result;
}

uint64_t dispatch thunk of WBSWebsitePasskeyEndpointsServiceProviding.checkPasskeySupport(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B85479B8;

  return v13(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for WBSWebsitePasskeyEndpointsServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WBSWebsitePasskeyEndpointsServiceError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}