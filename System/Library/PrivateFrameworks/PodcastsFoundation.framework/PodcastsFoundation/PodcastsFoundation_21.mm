uint64_t XCTestCombineValidator.awaitFailure()(uint64_t a1)
{
  v48 = a1;
  v2 = v1;
  v58 = *v1;
  v3 = *(v58 + 88);
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v48 - v5;
  v57 = *(v6 + 96);
  v7 = sub_1D91777CC();
  v8 = sub_1D91791BC();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - v10;
  v56 = v7;
  v54 = *(v7 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v48 - v16;
  v17 = &qword_1ECAB6CC0;
  v18 = &unk_1D9195030;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v48 - v21;
  v23 = sub_1D9177EDC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D088B4(&v2[qword_1ECAFBB58], v22, &qword_1ECAB6CC0, &unk_1D9195030);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1D8D08A50(v22, &qword_1ECAB6CC0, &unk_1D9195030);
    __break(1u);
  }

  else
  {
    (*(v24 + 32))(v27, v22, v23);
    v28 = *&v2[*(*v2 + 160)];

    sub_1D8F21FA4();
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      v38 = *(v58 + 80);
      v35 = type metadata accessor for XCTestCombineValidator.Errors();
      swift_getWitnessTable();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_6:
      (*(v24 + 8))(v27, v23);
      return v35;
    }

    v31 = &v2[*(*v2 + 136)];
    v32 = v31[1];
    if (v32)
    {
      v33 = *v31;
      v34 = *(v58 + 80);
      v35 = type metadata accessor for XCTestCombineValidator.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v36 = v33;
      v36[1] = v32;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v37 = *(v24 + 8);

      v37(v27, v23);
      return v35;
    }

    v40 = *(*v2 + 128);
    swift_beginAccess();
    v18 = v52;
    v17 = v53;
    (*(v52 + 16))(v11, &v2[v40], v53);
    v41 = v54;
    if ((*(v54 + 48))(v11, 1, v56) != 1)
    {
      v42 = v55;
      v43 = v56;
      (*(v41 + 32))(v55, v11, v56);
      v44 = v50;
      (*(v41 + 16))(v50, v42, v43);
      v45 = v51;
      if ((*(v51 + 48))(v44, 1, v3) != 1)
      {
        v47 = v49;
        (*(v45 + 32))();
        (*(v45 + 16))(v48, v47, v3);
        v35 = XCTestCombineValidator.currentValues.getter();
        (*(v45 + 8))(v49, v3);
        (*(v41 + 8))(v55, v56);
        (*(v24 + 8))(v27, v23);
        return v35;
      }

      v46 = *(v58 + 80);
      v35 = type metadata accessor for XCTestCombineValidator.Errors();
      swift_getWitnessTable();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v41 + 8))(v42, v56);
      goto LABEL_6;
    }
  }

  result = v18[1](v11, v17);
  __break(1u);
  return result;
}

uint64_t XCTestCombineValidator.awaitInput()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v63 = *v2;
  v4 = v63[11];
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v51 - v6;
  v62 = *(v7 + 96);
  v8 = sub_1D91777CC();
  v9 = sub_1D91791BC();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  v60 = v8;
  v61 = *(v8 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v51 - v17;
  v18 = &qword_1ECAB6CC0;
  v19 = &unk_1D9195030;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v51 - v22;
  v24 = sub_1D9177EDC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D088B4(&v3[qword_1ECAFBB58], v23, &qword_1ECAB6CC0, &unk_1D9195030);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    goto LABEL_17;
  }

  (*(v25 + 32))(v28, v23, v24);
  v29 = *&v3[*(*v3 + 168)];

  sub_1D8F21FA4();
  v31 = v30;

  if (v31)
  {
    v32 = &v3[*(*v3 + 136)];
    v33 = v32[1];
    if (v33)
    {
      v34 = *v32;
      v35 = v63[10];
      type metadata accessor for XCTestCombineValidator.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v36 = v34;
      v36[1] = v33;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v37 = *(v25 + 8);

      return v37(v28, v24);
    }

    v51 = *(*v3 + 176);
    v52 = *&v3[v51];
    XCTestCombineValidator.currentValues.getter();
    v18 = v63[10];
    v19 = sub_1D91786AC();

    if (v52 == v19)
    {
      v63 = v18;
      v40 = *(*v3 + 128);
      swift_beginAccess();
      v18 = v56;
      v19 = v57;
      (*(v56 + 16))(v12, &v3[v40], v57);
      v42 = v60;
      v41 = v61;
      if ((*(v61 + 48))(v12, 1, v60) != 1)
      {
        v43 = v59;
        (*(v41 + 32))();
        v44 = v54;
        (*(v41 + 16))(v54, v43, v42);
        v45 = v55;
        if ((*(v55 + 48))(v44, 1, v4) == 1)
        {
          type metadata accessor for XCTestCombineValidator.Errors();
          swift_getWitnessTable();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v61 + 8))(v43, v42);
        }

        else
        {
          v49 = v53;
          (*(v45 + 32))();
          type metadata accessor for XCTestCombineValidator.Errors();
          swift_getWitnessTable();
          swift_allocError();
          (*(v45 + 16))(v50, v49, v4);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v45 + 8))(v49, v4);
          (*(v61 + 8))(v59, v60);
        }

        return (*(v25 + 8))(v28, v24);
      }

LABEL_18:
      result = (v18[1])(v12, v19);
      __break(1u);
      return result;
    }

    v46 = v51;
    v12 = *&v3[v51];
    XCTestCombineValidator.currentValues.getter();
    sub_1D917872C();

    XCTestCombineValidator.currentValues.getter();
    v47 = *&v3[v46];

    v48 = __OFADD__(v47, 1);
    v23 = (v47 + 1);
    if (!v48)
    {
      result = (*(v25 + 8))(v28, v24);
      *&v3[v46] = v23;
      return result;
    }

    __break(1u);
LABEL_17:
    sub_1D8D08A50(v23, &qword_1ECAB6CC0, &unk_1D9195030);
    __break(1u);
    goto LABEL_18;
  }

  v39 = v63[10];
  type metadata accessor for XCTestCombineValidator.Errors();
  swift_getWitnessTable();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (*(v25 + 8))(v28, v24);
}

uint64_t XCTestCombineValidator.awaitInput(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = (*(*(*(*v3 + 80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  result = sub_1D917866C();
  v11 = result;
  if (a1 >= 1)
  {
    v9 = a1 + 1;
    while (1)
    {
      XCTestCombineValidator.awaitInput()(result, v7);
      if (v2)
      {
        break;
      }

      sub_1D91786FC();
      result = sub_1D91786BC();
      if (--v9 <= 1)
      {
        return v11;
      }
    }
  }

  return result;
}

void XCTestCombineValidator.receive(subscription:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + *(*v1 + 184));
  os_unfair_lock_lock(v4 + 4);
  v5 = *(*v1 + 144);
  swift_beginAccess();
  sub_1D8D088B4(v1 + v5, &v18, qword_1ECAB6CD0, &unk_1D9195040);
  v6 = v20;
  sub_1D8D08A50(&v18, qword_1ECAB6CD0, &unk_1D9195040);
  if (v6)
  {
    os_unfair_lock_unlock(v4 + 4);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD000000000000022, 0x80000001D91CD300);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6138, &qword_1D9192158);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](39, 0xE100000000000000);
    v7 = v19;
    v8 = (v1 + *(*v1 + 136));
    v9 = v8[1];
    *v8 = v18;
    v8[1] = v7;

    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = *(v10 + 8);
    sub_1D91777BC();
    return;
  }

  sub_1D8CFD9D8(a1, &v18);
  swift_beginAccess();
  sub_1D8F26884(&v18, v1 + v5);
  swift_endAccess();
  v12 = *(*v1 + 152);
  swift_beginAccess();
  v13 = *(v1 + v12);
  sub_1D91777FC();
  if (sub_1D91777DC())
  {
    os_unfair_lock_unlock(v4 + 4);
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D91777FC();
  }

  else
  {
    v15 = *(v2 + v12);
    sub_1D91777FC();
    if ((sub_1D91777DC() & 1) == 0)
    {
      if (v15 < 0)
      {
        __break(1u);
        return;
      }

      if (!v15)
      {
        os_unfair_lock_unlock(v4 + 4);
        return;
      }
    }

    v16 = *(v2 + v12);
    os_unfair_lock_unlock(v4 + 4);
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  }

  sub_1D917782C();
}

void XCTestCombineValidator.receive(_:)(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v44 - v6;
  v7 = sub_1D9176E3C();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[10];
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = v3[11];
  v17 = v3[12];
  v18 = sub_1D91777CC();
  v19 = sub_1D91791BC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v44 - v22;
  v24 = *&v2[v3[23]];
  os_unfair_lock_lock(v24 + 4);
  v25 = *(*v2 + 128);
  swift_beginAccess();
  (*(v20 + 16))(v23, &v2[v25], v19);
  LODWORD(v25) = (*(*(v18 - 8) + 48))(v23, 1, v18);
  (*(v20 + 8))(v23, v19);
  if (v25 != 1)
  {
    os_unfair_lock_unlock(v24 + 4);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD000000000000010, 0x80000001D91CD330);
    sub_1D9179A8C();
    MEMORY[0x1DA7298F0](0xD000000000000022, 0x80000001D91CD350);
    v41 = v51;
    v42 = &v2[*(*v2 + 136)];
    v43 = *(v42 + 1);
    *v42 = v50;
    *(v42 + 1) = v41;

LABEL_12:
    sub_1D91777EC();
    return;
  }

  v26 = v24;
  (*(v11 + 16))(v15, v49, v10);
  swift_beginAccess();
  sub_1D91786FC();
  sub_1D91786BC();
  swift_endAccess();
  v27 = v45;
  sub_1D9176E2C();
  v28 = qword_1ECAB6CC8;
  v29 = *&v2[qword_1ECAB6CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v2[v28] = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_1D8ECC990(0, v29[2] + 1, 1, v29);
    *&v2[v28] = v29;
  }

  v31 = v26;
  v33 = v29[2];
  v32 = v29[3];
  if (v33 >= v32 >> 1)
  {
    v29 = sub_1D8ECC990(v32 > 1, v33 + 1, 1, v29);
  }

  v29[2] = v33 + 1;
  (*(v46 + 32))(v29 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v33, v27, v47);
  *&v2[v28] = v29;
  os_unfair_lock_unlock(v31 + 4);
  v34 = v48;
  sub_1D8D088B4(&v2[qword_1ECAFBB58], v48, &qword_1ECAB6CC0, &unk_1D9195030);
  v35 = sub_1D9177EDC();
  v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
  sub_1D8D08A50(v34, &qword_1ECAB6CC0, &unk_1D9195030);
  if (v36 == 1)
  {
    goto LABEL_12;
  }

  v37 = *&v2[*(*v2 + 168)];
  v38 = *(v37 + 16);

  os_unfair_lock_lock(v38 + 4);
  v39 = *(v37 + 24);
  v40 = v39 - 1;
  if (!__OFSUB__(v39, 1))
  {
    *(v37 + 24) = v40;
    os_unfair_lock_unlock((*(v37 + 16) + 16));
    if (!v40)
    {
      CFRunLoopSourceSignal(*(v37 + 40));
      CFRunLoopWakeUp(*(v37 + 32));
    }

    goto LABEL_12;
  }

  __break(1u);
}

void XCTestCombineValidator.receive(completion:)(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v32 - v6;
  v7 = v3[11];
  v8 = v3[12];
  v9 = sub_1D91777CC();
  v10 = sub_1D91791BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = *(v1 + v3[23]);
  os_unfair_lock_lock(v18 + 4);
  v19 = *(*v1 + 128);
  swift_beginAccess();
  (*(v11 + 16))(v17, v1 + v19, v10);
  v20 = *(v9 - 8);
  LODWORD(v3) = (*(v20 + 48))(v17, 1, v9);
  (*(v11 + 8))(v17, v10);
  if (v3 == 1)
  {
    (*(v20 + 16))(v14, v34, v9);
    (*(v20 + 56))(v14, 0, 1, v9);
    swift_beginAccess();
    (*(v11 + 40))(v2 + v19, v14, v10);
    swift_endAccess();
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v21 = *(*v2 + 144);
    swift_beginAccess();
    sub_1D8F26884(v35, v2 + v21);
    swift_endAccess();
    os_unfair_lock_unlock(v18 + 4);
    v22 = v33;
    sub_1D8D088B4(v2 + qword_1ECAFBB58, v33, &qword_1ECAB6CC0, &unk_1D9195030);
    v23 = sub_1D9177EDC();
    v24 = (*(*(v23 - 8) + 48))(v22, 1, v23);
    sub_1D8D08A50(v22, &qword_1ECAB6CC0, &unk_1D9195030);
    if (v24 != 1)
    {
      v25 = *(v2 + *(*v2 + 160));
      v26 = *(v25 + 16);

      os_unfair_lock_lock(v26 + 4);
      v27 = *(v25 + 24);
      v28 = v27 - 1;
      if (__OFSUB__(v27, 1))
      {
        __break(1u);
      }

      else
      {
        *(v25 + 24) = v28;
        os_unfair_lock_unlock((*(v25 + 16) + 16));
        if (!v28)
        {
          CFRunLoopSourceSignal(*(v25 + 40));
          CFRunLoopWakeUp(*(v25 + 32));
        }
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(v18 + 4);
    *&v35[0] = 0;
    *(&v35[0] + 1) = 0xE000000000000000;
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD000000000000015, 0x80000001D91CD380);
    sub_1D9179A8C();
    MEMORY[0x1DA7298F0](0xD000000000000022, 0x80000001D91CD350);
    v29 = *(&v35[0] + 1);
    v30 = (v2 + *(*v2 + 136));
    v31 = v30[1];
    *v30 = *&v35[0];
    v30[1] = v29;
  }
}

void XCTestCombineValidator.request(_:)(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 184));
  os_unfair_lock_lock(v3 + 4);
  v4 = *(*v1 + 144);
  swift_beginAccess();
  sub_1D8D088B4(v1 + v4, &v9, qword_1ECAB6CD0, &unk_1D9195040);
  if (v10)
  {
    sub_1D8D6BCE0(&v9, v11);
    os_unfair_lock_unlock(v3 + 4);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1D917782C();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    return;
  }

  sub_1D8D08A50(&v9, qword_1ECAB6CD0, &unk_1D9195040);
  v5 = *(*v1 + 152);
  swift_beginAccess();
  v6 = *(v1 + v5);
  sub_1D91777FC();
  if (sub_1D91777DC())
  {
    goto LABEL_12;
  }

  sub_1D91777FC();
  v7 = sub_1D91777DC();
  v8 = sub_1D91777FC();
  if ((v7 & 1) == 0)
  {
    if ((sub_1D91777DC() & 1) == 0)
    {
      if ((v6 | a1) < 0)
      {
        __break(1u);
        goto LABEL_15;
      }

      v8 = v6 + a1;
      if (!__OFADD__(v6, a1))
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    v8 = sub_1D91777FC();
  }

LABEL_11:
  *(v1 + v5) = v8;
LABEL_12:
  swift_endAccess();
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1D8F298FC(uint64_t a1)
{
  sub_1D8F29A44();
  if (v3 <= 0x3F)
  {
    v8 = *(v2 - 8) + 64;
    v4 = *(a1 + 88);
    v5 = *(a1 + 96);
    sub_1D91777CC();
    v6 = sub_1D91791BC();
    if (v7 <= 0x3F)
    {
      v9 = *(v6 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_1D8F29A44()
{
  if (!qword_1ECAB6D58[0])
  {
    sub_1D9177EDC();
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, qword_1ECAB6D58);
    }
  }
}

uint64_t sub_1D8F29A9C(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8F29B08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_27;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1D8F29C48(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t CombinedTrace.emit(event:context:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*v5 + 16);
  if (v6)
  {
    v11 = result;
    v12 = *v5 + 32;
    do
    {
      sub_1D8CFD9D8(v12, v15);
      v13 = v16;
      v14 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v14 + 16))(v11, a2, a3, a4, a5, v13, v14);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v12 += 40;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1D8F29EFC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 2);
    if (v4 >= v10)
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_14;
    }

    v12 = *&v1[v3 + 32];
    v11 = *&v1[v3 + 40];
    v14 = *&v1[i - 8];
    v13 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D915C374(v1);
    }

    v15 = &v1[v3];
    v16 = *&v1[v3 + 40];
    *(v15 + 4) = v14;
    *(v15 + 5) = v13;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    v9 = *&v1[i];
    *(v8 - 1) = v12;
    *v8 = v11;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t EmitLifecycle.name.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

uint64_t EmitLifecycle.context.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t EmitLifecycle.LifecycleEmitting.__allocating_init(subscriber:trace:name:context:definesInterval:verbose:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v11 = sub_1D8D71D38(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*(*(v9 + 88) - 8) + 8))(a1);
  return v11;
}

uint64_t sub_1D8F2A174(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D917752C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return sub_1D8F2A240(v8);
}

uint64_t sub_1D8F2A240(uint64_t a1)
{
  v3 = qword_1EDCDE880;
  swift_beginAccess();
  v4 = sub_1D917752C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t EmitLifecycle.LifecycleEmitting.name.getter()
{
  v1 = (v0 + *(*v0 + 136));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t EmitLifecycle.LifecycleEmitting.context.getter()
{
  v1 = (v0 + *(*v0 + 144));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1D8F2A464(uint64_t a1)
{
  sub_1D917946C();

  v2 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v2);

  MEMORY[0x1DA7298F0](0x6275506D756E202CLL, 0xED0000203A74754FLL);
  v3 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v3);

  MEMORY[0x1DA7298F0](0x646E616D6564202CLL, 0xEA0000000000203ALL);
  v4 = MEMORY[0x1DA729BD0](a1, MEMORY[0x1E695BEC8]);
  MEMORY[0x1DA7298F0](v4);

  MEMORY[0x1DA7298F0](32032, 0xE200000000000000);
  return 0x6275536D756E207BLL;
}

uint64_t sub_1D8F2A5BC(void *a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  return sub_1D8F2A464(*v1);
}

uint64_t EmitLifecycle.LifecycleEmitting.init(subscriber:trace:name:context:definesInterval:verbose:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v11 = *v9;
  v12 = sub_1D8D6F57C(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*(*(v11 + 88) - 8) + 8))(a1);
  return v12;
}

uint64_t sub_1D8F2A65C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D8ECCEC8(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_1D8ECCEC8((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 8 * v7 + 32) = a2;
  *a1 = v4;
  return result;
}

uint64_t sub_1D8F2A708(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_1D917752C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  if (*(a2 + *(*a2 + 152)) == 1)
  {
    v13 = (a2 + *(v12 + 128));
    v14 = v13[4];
    v37 = v13[3];
    v36 = __swift_project_boxed_opaque_existential_1(v13, v37);
    v15 = (a2 + *(*a2 + 136));
    v40 = a3;
    v17 = *v15;
    v16 = v15[1];
    v38 = v3;
    v18 = *(v15 + 16);
    v41 = sub_1D917949C();
    v42 = v19;
    v39 = a1;
    MEMORY[0x1DA7298F0](10272, 0xE200000000000000);
    sub_1D8DB1938(v11);
    v20 = sub_1D917750C();
    (*(v8 + 8))(v11, v7);
    v43 = v20;
    v21 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v21);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    v22 = v16;
    a3 = v40;
    (*(v14 + 24))(&v41, v17, v22, v18, v41, v42, v37, v14);
    a1 = v39;

    sub_1D8DB61B8(&v41, a1 + 40);
  }

  else if (*(a2 + *(v12 + 160)) == 1)
  {
    v23 = (a2 + *(v12 + 128));
    v24 = v23[3];
    v25 = v23[4];
    v38 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v26 = a2 + *(*a2 + 136);
    v27 = *v26;
    v36 = *(v26 + 8);
    v37 = v27;
    v35 = *(v26 + 16);
    v41 = 0;
    v42 = 0xE000000000000000;
    v39 = a1;
    sub_1D917946C();
    v28 = (a2 + *(*a2 + 144));
    v40 = a3;
    v30 = *v28;
    v29 = v28[1];

    v41 = v30;
    v42 = v29;
    MEMORY[0x1DA7298F0](0xD000000000000017, 0x80000001D91CD4C0);
    sub_1D8DB1938(v11);
    v31 = sub_1D917750C();
    (*(v8 + 8))(v11, v7);
    v43 = v31;
    v32 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v32);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    (*(v25 + 16))(v37, v36, v35, v41, v42, v24, v25);
    a1 = v39;
    a3 = v40;
  }

  sub_1D8D08A50(a1, qword_1ECAB6CD0, &unk_1D9195040);
  return sub_1D8CFD9D8(a3, a1);
}

uint64_t sub_1D8F2AADC()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = *(*v0 + 96);
  v5[0] = *(*v0 + 80);
  v5[1] = v2;
  type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata();
  OSAllocatedUnfairLock.current.getter(v1, v5);
  v3 = *(v0 + *(*v0 + 176));
  os_unfair_lock_lock(v3 + 24);
  sub_1D8F2B048(&v3[4]);
  os_unfair_lock_unlock(v3 + 24);
}

double sub_1D8F2ABC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = sub_1D917752C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D088B4(a1 + 40, &v36, &unk_1ECAB6E00, &qword_1D91952E0);
  if (!v38)
  {
    sub_1D8D08A50(&v36, &unk_1ECAB6E00, &qword_1D91952E0);
    v21 = (a2 + *(*a2 + 128));
    v22 = v21[4];
    v34 = v21[3];
    v32 = v22;
    v33 = __swift_project_boxed_opaque_existential_1(v21, v34);
    v23 = (a2 + *(*a2 + 136));
    v24 = *v23;
    v30 = v23[1];
    v31 = v24;
    v29 = *(v23 + 16);
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    v28 = a5;
    sub_1D917946C();
    v35 = v39;
    MEMORY[0x1DA7298F0](*(a2 + *(*a2 + 144)), *(a2 + *(*a2 + 144) + 8));
    MEMORY[0x1DA7298F0](0x454C4C45434E4143, 0xEC00000028202044);
    sub_1D8DB1938(v15);
    v25 = sub_1D917750C();
    (*(v12 + 8))(v15, v11);
    *&v39 = v25;
    v26 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v26);

    MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
    *&v36 = a3;
    *(&v36 + 1) = a4;
    v37 = v28;
    v27 = *(v10 + 96);
    v39 = *(v10 + 80);
    v40 = v27;
    type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata();
    swift_getWitnessTable();
    sub_1D9179A9C();
    (*(v32 + 16))(v31, v30, v29, v35, *(&v35 + 1), v34);

    if (!*(a1 + 24))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1D8D6BCE0(&v36, &v39);
  v16 = *(&v40 + 1);
  v17 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  (*(v17 + 8))(0x4C45434E4143, 0xE600000000000000, v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  if (*(a1 + 24))
  {
LABEL_3:
    sub_1D8CFD9D8(a1, &v39);
    v18 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    v19 = *(v18 + 8);
    sub_1D91777BC();
    __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  }

LABEL_4:
  sub_1D8D08A50(a1, qword_1ECAB6CD0, &unk_1D9195040);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  sub_1D8D08A50(a1 + 40, &unk_1ECAB6E00, &qword_1D91952E0);
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1D8F2AFD8(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1D8F2A65C(a1, v1[6]);
}

uint64_t sub_1D8F2B014(uint64_t result)
{
  v1 = *(result + 8);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(result + 8) = v3;
  }

  return result;
}

uint64_t sub_1D8F2B068(uint64_t result)
{
  v1 = *(result + 16);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v3;
  }

  return result;
}

uint64_t sub_1D8F2B080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D8F2B0A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 18;
  v9 = (a2 - v7 + 0xFFFF) >> 16;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v8), !*(a1 + v8)))
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1D8F2B208(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          v18[1] = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 18);
  if (v10 <= 3)
  {
    v16 = HIWORD(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_1D8F2B554()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t LoggerTrace.init(logger:level:identifier:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a3;
  *(a5 + 1) = a4;
  v8 = type metadata accessor for LoggerTrace(0);
  v9 = *(v8 + 20);
  v10 = sub_1D917744C();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a1, v10);
  a5[*(v8 + 24)] = a2;
  return result;
}

uint64_t LoggerTrace.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LoggerTrace.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LoggerTrace.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoggerTrace(0) + 20);
  v4 = sub_1D917744C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D8F2B748(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LoggerTrace(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D785B8(v2, v8);
  v9 = (v2 + *(type metadata accessor for LoggerTrace.LogInterval(0) + 20));
  if (a2)
  {
    v10 = v9[1];
    v14 = *v9;
    v15 = v10;

    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
    MEMORY[0x1DA7298F0](a1, a2);
    v11 = v14;
    v12 = v15;
  }

  else
  {
    v11 = *v9;
    v12 = v9[1];
  }

  LoggerTrace.emit(event:context:)("END INTERVAL", 12, 2, v11, v12);

  return sub_1D8DB01E0(v8);
}

uint64_t sub_1D8F2B8CC()
{
  result = type metadata accessor for LoggerTrace(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8F2B940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8F2B988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SignpostTrace.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D917739C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SignpostTrace.signpostID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignpostTrace(0) + 20);
  v4 = sub_1D917734C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SignpostTrace.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SignpostTrace(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SignpostTrace.start(interval:context:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v28 = a4;
  v13 = sub_1D917734C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D917739C();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v7, v20);
  v24 = type metadata accessor for SignpostTrace(0);
  (*(v14 + 16))(v17, v7 + *(v24 + 20), v13);
  a6[3] = type metadata accessor for SignpostTrace.Interval(0);
  a6[4] = &protocol witness table for SignpostTrace.Interval;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6);

  return SignpostTrace.Interval.init(starting:domain:identifier:with:)(a1, a2, a3, v22, v17, v28, a5, boxed_opaque_existential_0);
}

uint64_t SignpostTrace.Interval.name.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return result;
}

uint64_t SignpostTrace.Interval.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignpostTrace.Interval(0) + 24);
  v4 = sub_1D917739C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SignpostTrace.Interval.init(name:domain:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *a6 = a5;
  v8 = *(type metadata accessor for SignpostTrace.Interval(0) + 24);
  v9 = sub_1D917739C();
  v10 = *(*(v9 - 8) + 32);

  return v10(a6 + v8, a4, v9);
}

uint64_t sub_1D8F2BE00@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Traceable.traced(on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v23 = a3;
  v9 = sub_1D9176EAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v24[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 - 8) + 16))(a4, v5, a2, v12);
  v15 = type metadata accessor for LoggerTrace(0);
  v24[3] = v15;
  v24[4] = &protocol witness table for LoggerTrace;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  v17 = *(v15 + 20);
  v18 = sub_1D917744C();
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_0 + v17, a1, v18);
  LOBYTE(v17) = sub_1D9178CDC();
  sub_1D9176E9C();
  v19 = sub_1D9176E5C();
  v21 = v20;
  (*(v10 + 8))(v14, v9);
  *boxed_opaque_existential_0 = v19;
  boxed_opaque_existential_0[1] = v21;
  *(boxed_opaque_existential_0 + *(v15 + 24)) = v17;
  return (*(v23 + 16))(v24, a2);
}

void AnyCancellable.store<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_1D8D056BC(sub_1D8F2C158, v3, a1);
}

uint64_t sub_1D8F2C158()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D917784C();
}

void AnyCancellable.store(in:)(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 6);
  sub_1D8F2C1E0();

  os_unfair_lock_unlock(a1 + 6);
}

uint64_t sub_1D8F2C2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v67 = a7;
  v68 = a8;
  v69 = a1;
  v70 = a2;
  v77 = a21;
  v75 = a4;
  v76 = a15;
  v78 = a10;
  v79 = a5;
  v73 = a3;
  v74 = a9;
  v71 = a14;
  v72 = a20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v26 = *(TupleTypeMetadata3 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v65 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v80 = &v62 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v62 - v32;
  v35.n128_f64[0] = MEMORY[0x1EEE9AC00](v34);
  v37 = &v62 - v36;
  v38 = *(AssociatedTypeWitness - 8);
  v39 = *(v38 + 16);
  v64 = AssociatedTypeWitness;
  v39(&v62 - v36, a6, AssociatedTypeWitness, v35);
  v40 = *(TupleTypeMetadata3 + 48);
  v62 = v23;
  v41 = *(v23 - 8);
  (*(v41 + 16))(&v37[v40], v67, v23);
  v42 = *(TupleTypeMetadata3 + 64);
  v63 = v24;
  v43 = *(v24 - 8);
  (*(v43 + 16))(&v37[v42], v68, v24);
  v44 = *(v26 + 16);
  v66 = v33;
  v44(v33, v37, TupleTypeMetadata3);
  v45 = *(TupleTypeMetadata3 + 48);
  v67 = *(TupleTypeMetadata3 + 64);
  v68 = v45;
  (*(v38 + 32))(v69, v33, AssociatedTypeWitness);
  v46 = v80;
  v44(v80, v37, TupleTypeMetadata3);
  v47 = *(TupleTypeMetadata3 + 48);
  v69 = *(TupleTypeMetadata3 + 64);
  v48 = v62;
  (*(v41 + 32))(v70, &v46[v47], v62);
  v49 = v65;
  (*(v26 + 32))(v65, v37, TupleTypeMetadata3);
  v50 = *(TupleTypeMetadata3 + 48);
  v51 = v63;
  (*(v43 + 32))(v73, &v49[*(TupleTypeMetadata3 + 64)], v63);
  v52 = swift_getAssociatedTypeWitness();
  (*(*(v52 - 8) + 16))(v75, v74, v52);
  v53 = swift_getAssociatedTypeWitness();
  (*(*(v53 - 8) + 16))(v79, v78, v53);
  v54 = *(v41 + 8);
  v55 = v48;
  v54(&v49[v50], v48);
  v56 = *(v38 + 8);
  v57 = v64;
  v56(v49, v64);
  v58 = *(v43 + 8);
  v59 = v80;
  v58(&v80[v69], v51);
  v56(v59, v57);
  v60 = v66;
  v58(&v66[v67], v51);
  return (v54)(&v60[v68], v55);
}

uint64_t sub_1D8F2C810@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v6 = *(TupleTypeMetadata3 + 48);
  v12 = *(TupleTypeMetadata3 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v7 = swift_getTupleTypeMetadata3();
  v8 = a1 + *(v7 + 48);
  v9 = a1 + *(v7 + 64);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a3, a3 + TupleTypeMetadata[12], a3 + TupleTypeMetadata[16], a3 + TupleTypeMetadata[20], a3 + TupleTypeMetadata[24], a1, a1 + v6, a1 + v12, v8, v9);
}

uint64_t sub_1D8F2C9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 120);
  v13 = *(v2 + 104);
  v11 = *(v2 + 72);
  v12 = *(v2 + 88);
  v10 = *(v2 + 56);
  return sub_1D8F2C810(a1, *(v2 + 112), a2);
}

uint64_t Publishers.PFCombineLatest6.init(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v16 = type metadata accessor for Publishers.PFCombineLatest6();
  (*(*(a8 - 8) + 32))(a9 + v16[29], a2, a8);
  (*(*(a10 - 8) + 32))(a9 + v16[30], a3, a10);
  (*(*(a11 - 8) + 32))(a9 + v16[31], a4, a11);
  (*(*(a12 - 8) + 32))(a9 + v16[32], a5, a12);
  return (*(*(a13 - 8) + 32))(a9 + v16[33], a6, a13);
}

uint64_t Publishers.PFCombineLatest6.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a4;
  v91 = a3;
  v93 = a1;
  v101 = *(a2 + 16);
  v78 = v101;
  v104 = v101;
  v68[1] = *(&v101 + 1);
  v94 = *(a2 + 32);
  AssociatedTypeWitness = v94;
  v100 = *(a2 + 64);
  v82 = v100;
  v106 = v100;
  v81 = *(&v100 + 1);
  v107 = *(a2 + 80);
  *&v99 = v107;
  v98 = sub_1D917753C();
  v5 = *(a2 + 40);
  v103 = *(a2 + 48);
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  *v96 = v103;
  v84 = v6;
  v102 = v7;
  v108 = v7;
  v95 = *(&v7 + 1);
  v97 = sub_1D917755C();
  *&v104 = swift_getAssociatedTypeWitness();
  v8 = *(&v101 + 1);
  *(&v104 + 1) = swift_getAssociatedTypeWitness();
  v9 = v94;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v5;
  v74 = v5;
  *&v106 = swift_getAssociatedTypeWitness();
  v11 = v103;
  *(&v106 + 1) = swift_getAssociatedTypeWitness();
  v107 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = v97;
  v86 = swift_getWitnessTable();
  v88 = sub_1D917768C();
  v89 = *(v88 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v83 = v68 - v14;
  v79 = *(*(&v103 + 1) - 8);
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v77 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(v11 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v75 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(v10 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v72 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v12 - 8);
  v24 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v95 = v68 - v26;
  v27 = *(v9 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v69 = v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v8;
  v32 = *(v8 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v78;
  v38 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v98 - 8);
  v42 = v71;
  v43 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v68[0] = v68 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = v68 - v48;
  v51 = v85;
  (*(v50 + 16))(v41, v85, v37, v47);
  (*(v32 + 16))(v36, v51 + *(a2 + 116), v31);
  v52 = v94;
  (*(v27 + 16))(v69, v51 + *(a2 + 120), v94);
  v70 = v49;
  sub_1D917754C();
  v53 = v98;
  (*(v42 + 16))(v68[0], v49, v98);
  v54 = v74;
  (*(v73 + 16))(v72, v51 + *(a2 + 124), v74);
  (*(v76 + 16))(v75, v51 + *(a2 + 128), *v96);
  (*(v79 + 16))(v77, v51 + *(a2 + 132), *&v96[8]);
  v55 = v84;
  v56 = v54;
  sub_1D917756C();
  v57 = swift_allocObject();
  *&v58 = v52;
  *(&v58 + 1) = v56;
  *&v96[8] = v58;
  *(v57 + 32) = v58;
  *(v57 + 16) = v101;
  *(v57 + 48) = v103;
  v59 = v91;
  *(v57 + 64) = v91;
  *&v58 = v99;
  *(&v58 + 1) = v55;
  v99 = v58;
  *(v57 + 88) = v58;
  *(v57 + 72) = v100;
  *(v57 + 104) = v102;
  v60 = v92;
  *(v57 + 120) = v92;
  v61 = swift_allocObject();
  v62 = v103;
  *(v61 + 16) = v101;
  *(v61 + 32) = *&v96[8];
  *(v61 + 48) = v62;
  *(v61 + 64) = v59;
  *(v61 + 72) = v100;
  *(v61 + 104) = v102;
  *(v61 + 88) = v99;
  *(v61 + 120) = v60;
  *(v61 + 128) = sub_1D8F2DD1C;
  *(v61 + 136) = v57;
  v63 = v83;
  v64 = v97;
  v65 = v95;
  sub_1D9177B9C();

  v66 = v88;
  sub_1D917767C();
  (*(v89 + 8))(v63, v66);
  (*(v80 + 8))(v65, v64);
  return (*(v71 + 8))(v70, v53);
}

uint64_t sub_1D8F2D7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v73 = a8;
  v74 = a1;
  v75 = a2;
  v87 = a12;
  v88 = a6;
  v82 = a4;
  v83 = a11;
  v85 = a25;
  v86 = a5;
  v84 = a18;
  v80 = a17;
  v81 = a24;
  v78 = a3;
  v79 = a10;
  v72 = a9;
  v76 = a16;
  v77 = a23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v30 = *(TupleTypeMetadata3 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v69 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v68 = &v66 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v66 - v36;
  v39.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v41 = &v66 - v40;
  v42 = AssociatedTypeWitness;
  v43 = *(AssociatedTypeWitness - 8);
  v44 = *(v43 + 16);
  v70 = v42;
  v44(&v66 - v40, a7, v42, v39);
  v45 = *(TupleTypeMetadata3 + 48);
  v66 = v27;
  v46 = *(v27 - 8);
  (*(v46 + 16))(&v41[v45], v73, v27);
  v47 = *(TupleTypeMetadata3 + 64);
  v67 = v28;
  v48 = *(v28 - 8);
  (*(v48 + 16))(&v41[v47], v72, v28);
  v49 = *(v30 + 16);
  v71 = v37;
  v49(v37, v41, TupleTypeMetadata3);
  v50 = *(TupleTypeMetadata3 + 48);
  v72 = *(TupleTypeMetadata3 + 64);
  v73 = v50;
  (*(v43 + 32))(v74, v37, v42);
  v51 = v68;
  v49(v68, v41, TupleTypeMetadata3);
  v52 = *(TupleTypeMetadata3 + 48);
  v74 = *(TupleTypeMetadata3 + 64);
  v53 = v66;
  (*(v46 + 32))(v75, &v51[v52], v66);
  v54 = v69;
  (*(v30 + 32))(v69, v41, TupleTypeMetadata3);
  v75 = *(TupleTypeMetadata3 + 48);
  v55 = v67;
  (*(v48 + 32))(v78, &v54[*(TupleTypeMetadata3 + 64)], v67);
  v56 = swift_getAssociatedTypeWitness();
  (*(*(v56 - 8) + 16))(v82, v79, v56);
  v57 = swift_getAssociatedTypeWitness();
  (*(*(v57 - 8) + 16))(v86, v83, v57);
  v58 = swift_getAssociatedTypeWitness();
  (*(*(v58 - 8) + 16))(v88, v87, v58);
  v59 = *(v46 + 8);
  v60 = v53;
  v59(&v54[v75], v53);
  v61 = *(v43 + 8);
  v62 = v70;
  v61(v54, v70);
  v63 = *(v48 + 8);
  v63(&v51[v74], v55);
  v61(v51, v62);
  v64 = v71;
  v63(&v71[v72], v55);
  return (v59)(&v64[v73], v60);
}

uint64_t sub_1D8F2DD6C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = a1 + *(TupleTypeMetadata3 + 64);
  v13 = *(TupleTypeMetadata3 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v7 = a1 + TupleTypeMetadata[12];
  v8 = a1 + TupleTypeMetadata[16];
  v9 = a1 + TupleTypeMetadata[20];
  v10 = swift_getTupleTypeMetadata();
  return a2(a3, a3 + v10[12], a3 + v10[16], a3 + v10[20], a3 + v10[24], a3 + v10[28], a1, a1 + v13, v12, v7, v8, v9);
}

uint64_t sub_1D8F2DF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 136);
  v14 = *(v2 + 120);
  v12 = *(v2 + 88);
  v13 = *(v2 + 104);
  v10 = *(v2 + 56);
  v11 = *(v2 + 72);
  return sub_1D8F2DD6C(a1, *(v2 + 128), a2);
}

uint64_t Publishers.PFCombineLatest7.init(_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v17 = type metadata accessor for Publishers.PFCombineLatest7();
  (*(*(a10 - 8) + 32))(a9 + v17[33], a2, a10);
  (*(*(a11 - 8) + 32))(a9 + v17[34], a3, a11);
  (*(*(a12 - 8) + 32))(a9 + v17[35], a4, a12);
  (*(*(a13 - 8) + 32))(a9 + v17[36], a5, a13);
  (*(*(a14 - 8) + 32))(a9 + v17[37], a6, a14);
  return (*(*(a15 - 8) + 32))(a9 + v17[38], a7, a15);
}

uint64_t Publishers.PFCombineLatest7.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v108 = a4;
  v107 = a3;
  v109 = a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v126 = *(a2 + 88);
  v127 = v7;
  v125 = v11;
  v128 = v6;
  AssociatedTypeWitness = v6;
  v130 = v5;
  v131 = v7;
  v121 = v5;
  v132 = v8;
  v133 = v9;
  v118 = v9;
  v119 = v8;
  v134 = v10;
  v135 = v126;
  v117 = v10;
  v136 = v11;
  v12 = sub_1D917755C();
  v13 = *(a2 + 56);
  v120 = *(a2 + 48);
  v122 = v13;
  v123 = *(a2 + 64);
  v124 = v12;
  v113 = MEMORY[0x1E695BC78];
  WitnessTable = swift_getWitnessTable();
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  v99 = *(a2 + 104);
  v136 = v15;
  v116 = v14;
  v115 = v15;
  v114 = sub_1D917755C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v130 = swift_getAssociatedTypeWitness();
  v16 = v127;
  v131 = swift_getAssociatedTypeWitness();
  v17 = v119;
  v132 = swift_getAssociatedTypeWitness();
  v18 = v120;
  v133 = swift_getAssociatedTypeWitness();
  v134 = swift_getAssociatedTypeWitness();
  v135 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = v114;
  v102 = swift_getWitnessTable();
  v104 = sub_1D917768C();
  v105 = *(v104 - 8);
  v20 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v100 = &v90 - v21;
  v97 = *(v123 - 8);
  v22 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(v13 - 8);
  v25 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = *(v18 - 8);
  v28 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v92 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(v19 - 8);
  v31 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v113 = &v90 - v33;
  v90 = *(v17 - 8);
  v34 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v91 = &v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v16 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v90 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v121;
  v43 = *(v121 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v90 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v90 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = *(v124 - 8);
  v52 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v110 = &v90 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v55);
  v111 = &v90 - v57;
  v59 = v101;
  (*(v58 + 16))(v51, v101, v56);
  (*(v43 + 16))(v47, v59 + *(a2 + 132), v42);
  (*(v37 + 16))(v41, v59 + *(a2 + 136), v127);
  (*(v90 + 16))(v91, v59 + *(a2 + 140), v119);
  v60 = v111;
  sub_1D917756C();
  (*(v112 + 16))(v110, v60, v124);
  v61 = v120;
  (*(v93 + 16))(v92, v59 + *(a2 + 144), v120);
  v62 = v122;
  (*(v95 + 16))(v94, v59 + *(a2 + 148), v122);
  v63 = v59 + *(a2 + 152);
  v64 = v123;
  (*(v97 + 16))(v96, v63, v123);
  v65 = v115;
  v66 = v116;
  v67 = v99;
  v68 = v61;
  v69 = v62;
  v70 = v64;
  sub_1D917756C();
  v71 = swift_allocObject();
  v72 = v121;
  v71[2] = v128;
  v71[3] = v72;
  v73 = v126;
  v74 = v119;
  v71[4] = v127;
  v71[5] = v74;
  v71[6] = v68;
  v71[7] = v69;
  v75 = v107;
  v71[8] = v70;
  v71[9] = v75;
  v77 = v117;
  v76 = v118;
  v71[10] = v118;
  v71[11] = v77;
  v78 = v125;
  v71[12] = v73;
  v71[13] = v78;
  v71[14] = v67;
  v71[15] = v66;
  v71[16] = v65;
  v79 = v108;
  v71[17] = v108;
  v80 = swift_allocObject();
  v81 = v121;
  v80[2] = v128;
  v80[3] = v81;
  v80[4] = v127;
  v80[5] = v74;
  v83 = v122;
  v82 = v123;
  v80[6] = v120;
  v80[7] = v83;
  v80[8] = v82;
  v80[9] = v75;
  v80[10] = v76;
  v80[11] = v77;
  v80[12] = v73;
  v80[13] = v78;
  v84 = v116;
  v80[14] = v67;
  v80[15] = v84;
  v80[16] = v115;
  v80[17] = v79;
  v80[18] = sub_1D8F2F6E0;
  v80[19] = v71;
  v85 = v100;
  v86 = v114;
  v87 = v113;
  sub_1D9177B9C();

  v88 = v104;
  sub_1D917767C();
  (*(v105 + 8))(v85, v88);
  (*(v98 + 8))(v87, v86);
  return (*(v112 + 8))(v111, v124);
}

uint64_t sub_1D8F2EE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t), void (*a7)(char *, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v118 = a8;
  v111 = a7;
  v109 = a6;
  v105 = a5;
  v101 = a4;
  v98 = a3;
  v97 = a2;
  v96 = a1;
  v107 = a21;
  v108 = a29;
  v110 = a14;
  v106 = a13;
  v104 = a28;
  v100 = a27;
  v103 = a20;
  v99 = a19;
  v102 = a12;
  v95 = a11;
  v94 = a10;
  v92 = a9;
  v91 = a26;
  v88 = a25;
  v90 = a18;
  v87 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v120 = swift_getAssociatedTypeWitness();
  v121 = swift_getAssociatedTypeWitness();
  v122 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v89 = *(TupleTypeMetadata - 1);
  v30 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v93 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v113 = &v86 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v112 = &v86 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v114 = &v86 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v86 - v39;
  v41 = swift_getAssociatedTypeWitness();
  v42 = *(v41 - 8);
  v115 = v41;
  v116 = v42;
  (*(v42 + 16))(v40, v118, v41);
  v43 = TupleTypeMetadata[12];
  v44 = swift_getAssociatedTypeWitness();
  v45 = *(v44 - 8);
  v117 = v44;
  v118 = v45;
  (*(v45 + 16))(&v40[v43], v92, v44);
  v46 = TupleTypeMetadata[16];
  v47 = swift_getAssociatedTypeWitness();
  v48 = *(v47 - 8);
  v49 = &v40[v46];
  v50 = v47;
  (*(v48 + 16))(v49, v94);
  v51 = TupleTypeMetadata[20];
  v52 = swift_getAssociatedTypeWitness();
  v53 = *(v52 - 8);
  v88 = v53;
  v54 = *(v53 + 16);
  v87 = v52;
  v54(&v40[v51], v95, v52);
  v55 = v89;
  v56 = *(v89 + 16);
  v57 = v114;
  v56(v114, v40, TupleTypeMetadata);
  v95 = TupleTypeMetadata[12];
  v94 = TupleTypeMetadata[16];
  v92 = TupleTypeMetadata[20];
  (*(v116 + 32))(v96, v57, v115);
  v58 = v112;
  v56(v112, v40, TupleTypeMetadata);
  v59 = TupleTypeMetadata[12];
  v96 = TupleTypeMetadata[16];
  v91 = TupleTypeMetadata[20];
  (*(v118 + 32))(v97, &v58[v59], v117);
  v60 = v113;
  v56(v113, v40, TupleTypeMetadata);
  v97 = TupleTypeMetadata[12];
  v61 = TupleTypeMetadata[16];
  v90 = TupleTypeMetadata[20];
  v62 = *(v48 + 32);
  v86 = v50;
  v62(v98, &v60[v61], v50);
  v63 = v93;
  (*(v55 + 32))(v93, v40, TupleTypeMetadata);
  v64 = TupleTypeMetadata[12];
  v65 = TupleTypeMetadata[16];
  (*(v53 + 32))(v101, &v63[TupleTypeMetadata[20]], v52);
  v66 = swift_getAssociatedTypeWitness();
  (*(*(v66 - 8) + 16))(v105, v102, v66);
  v67 = swift_getAssociatedTypeWitness();
  (*(*(v67 - 8) + 16))(v109, v106, v67);
  v68 = swift_getAssociatedTypeWitness();
  (*(*(v68 - 8) + 16))(v111, v110, v68);
  v69 = *(v48 + 8);
  v110 = v48 + 8;
  v111 = v69;
  v69(&v63[v65], v50);
  v70 = v117;
  v72 = v118 + 8;
  v71 = *(v118 + 8);
  v71(&v63[v64], v117);
  v73 = v71;
  v109 = v71;
  v118 = v72;
  v74 = v115;
  v75 = *(v116 + 8);
  v75(v63, v115);
  v76 = *(v88 + 8);
  v77 = v113;
  v78 = v87;
  v76(&v113[v90], v87);
  v73(&v77[v97], v70);
  v79 = v77;
  v80 = v74;
  v75(v79, v74);
  v81 = v112;
  v76(&v112[v91], v78);
  v82 = v86;
  v83 = v111;
  v111(&v81[v96], v86);
  v75(v81, v80);
  v84 = v114;
  v76(&v114[v92], v78);
  v83(&v84[v94], v82);
  return v109(&v84[v95], v117);
}

uint64_t sub_1D8F2F738@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v14 = a1 + TupleTypeMetadata[12];
  v13 = a1 + TupleTypeMetadata[16];
  v12 = a1 + TupleTypeMetadata[20];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v6 = swift_getTupleTypeMetadata();
  v7 = a1 + v6[12];
  v8 = a1 + v6[16];
  v9 = a1 + v6[20];
  v10 = swift_getTupleTypeMetadata();
  return a2(a3, a3 + v10[12], a3 + v10[16], a3 + v10[20], a3 + v10[24], a3 + v10[28], a3 + v10[32], a1, v14, v13, v12, v7, v8, v9);
}

uint64_t sub_1D8F2F9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 152);
  v15 = *(v2 + 136);
  v13 = *(v2 + 104);
  v14 = *(v2 + 120);
  v11 = *(v2 + 72);
  v12 = *(v2 + 88);
  v10 = *(v2 + 56);
  return sub_1D8F2F738(a1, *(v2 + 144), a2);
}

uint64_t Publishers.PFCombineLatest8.init(_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v18 = type metadata accessor for Publishers.PFCombineLatest8();
  (*(*(a11 - 8) + 32))(a9 + v18[37], a2, a11);
  (*(*(a12 - 8) + 32))(a9 + v18[38], a3, a12);
  (*(*(a13 - 8) + 32))(a9 + v18[39], a4, a13);
  (*(*(a14 - 8) + 32))(a9 + v18[40], a5, a14);
  (*(*(a15 - 8) + 32))(a9 + v18[41], a6, a15);
  (*(*(a16 - 8) + 32))(a9 + v18[42], a7, a16);
  return (*(*(a17 - 8) + 32))(a9 + v18[43], a8, a17);
}

uint64_t Publishers.PFCombineLatest8.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v127 = a4;
  v126 = a3;
  v128 = a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 40);
  v148 = *(a2 + 32);
  v149 = v5;
  v8 = *(a2 + 48);
  v145 = v7;
  v146 = v8;
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  v11 = *(a2 + 96);
  v12 = *(a2 + 104);
  v143 = *(a2 + 112);
  AssociatedTypeWitness = v6;
  v151 = v5;
  v147 = v6;
  v152 = v148;
  v153 = v7;
  v154 = v8;
  v155 = v9;
  v138 = v9;
  v156 = v10;
  v157 = v11;
  v137 = v10;
  v136 = v11;
  v158 = v12;
  v159 = v143;
  v135 = v12;
  v13 = type metadata accessor for Publishers.PFCombineLatest5();
  v14 = *(a2 + 64);
  v139 = *(a2 + 56);
  v140 = v14;
  v141 = *(a2 + 72);
  v142 = v13;
  WitnessTable = swift_getWitnessTable();
  v15 = *(a2 + 120);
  v16 = *(a2 + 128);
  v144 = *(a2 + 136);
  v134 = v15;
  v133 = v16;
  v132 = sub_1D917755C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v151 = swift_getAssociatedTypeWitness();
  v152 = swift_getAssociatedTypeWitness();
  v17 = v145;
  v153 = swift_getAssociatedTypeWitness();
  v18 = v146;
  v154 = swift_getAssociatedTypeWitness();
  v19 = v139;
  v155 = swift_getAssociatedTypeWitness();
  v156 = swift_getAssociatedTypeWitness();
  v157 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = v132;
  v121 = swift_getWitnessTable();
  v123 = sub_1D917768C();
  v124 = *(v123 - 8);
  v21 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v119 = &v107 - v22;
  v116 = *(v141 - 8);
  v23 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v117 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(v14 - 8);
  v26 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v114 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(v19 - 8);
  v29 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v112 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = *(v20 - 8);
  v32 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v131 = &v107 - v34;
  v111 = *(v18 - 8);
  v35 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v110 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v17 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v109 = &v107 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v148;
  v43 = *(v148 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v107 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v149;
  v49 = *(v149 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v107 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v107 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = *(v142 - 8);
  v58 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v108 = &v107 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v61);
  v129 = &v107 - v63;
  v65 = v120;
  (*(v64 + 16))(v57, v120, v62);
  (*(v49 + 16))(v53, v65 + *(a2 + 148), v48);
  (*(v43 + 16))(v47, v65 + *(a2 + 152), v42);
  v66 = v109;
  v67 = v145;
  (*(v38 + 16))(v109, v65 + *(a2 + 156), v145);
  v68 = v110;
  v69 = v146;
  (*(v111 + 16))(v110, v65 + *(a2 + 160), v146);
  v106 = v69;
  v70 = v129;
  Publishers.PFCombineLatest5.init(_:_:_:_:_:)(v57, v53, v47, v66, v68, v147, v149, v42, v129, v67, v106);
  (*(v130 + 16))(v108, v70, v142);
  v71 = v139;
  (*(v113 + 16))(v112, v65 + *(a2 + 164), v139);
  v72 = v65 + *(a2 + 168);
  v73 = v65;
  v74 = v140;
  (*(v115 + 16))(v114, v72, v140);
  v75 = v73 + *(a2 + 172);
  v76 = v141;
  (*(v116 + 16))(v117, v75, v141);
  v77 = v144;
  v78 = v133;
  sub_1D917756C();
  v79 = swift_allocObject();
  v81 = v148;
  v80 = v149;
  v79[2] = v147;
  v79[3] = v80;
  v83 = v145;
  v82 = v146;
  v79[4] = v81;
  v79[5] = v83;
  v79[6] = v82;
  v79[7] = v71;
  v79[8] = v74;
  v79[9] = v76;
  v84 = v126;
  v85 = v138;
  v79[10] = v126;
  v79[11] = v85;
  v86 = v137;
  v87 = v136;
  v79[12] = v137;
  v79[13] = v87;
  v88 = v135;
  v89 = v143;
  v79[14] = v135;
  v79[15] = v89;
  v90 = v134;
  v79[16] = v134;
  v79[17] = v78;
  v91 = v127;
  v79[18] = v77;
  v79[19] = v91;
  v92 = swift_allocObject();
  v94 = v148;
  v93 = v149;
  v92[2] = v147;
  v92[3] = v93;
  v95 = v145;
  v96 = v146;
  v92[4] = v94;
  v92[5] = v95;
  v97 = v139;
  v98 = v140;
  v92[6] = v96;
  v92[7] = v97;
  v99 = v141;
  v92[8] = v98;
  v92[9] = v99;
  v92[10] = v84;
  v92[11] = v85;
  v92[12] = v86;
  v92[13] = v87;
  v92[14] = v88;
  v92[15] = v89;
  v100 = v133;
  v92[16] = v90;
  v92[17] = v100;
  v92[18] = v144;
  v92[19] = v91;
  v92[20] = sub_1D8F315B0;
  v92[21] = v79;
  v101 = v119;
  v102 = v132;
  v103 = v131;
  sub_1D9177B9C();

  v104 = v123;
  sub_1D917767C();
  (*(v124 + 8))(v101, v104);
  (*(v118 + 8))(v103, v102);
  return (*(v130 + 8))(v129, v142);
}

uint64_t sub_1D8F30A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t), void (*a8)(char *, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(char *, uint64_t), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void (*a33)(char *, uint64_t))
{
  v124 = a8;
  v121 = a7;
  v117 = a6;
  v113 = a5;
  v110 = a4;
  v109 = a3;
  v108 = a2;
  v107 = a1;
  v123 = a16;
  v118 = a15;
  v120 = a33;
  v116 = a32;
  v119 = a24;
  v115 = a23;
  v114 = a14;
  v106 = a13;
  v132 = a12;
  v133 = a11;
  v134 = a9;
  v135 = a10;
  v112 = a31;
  v122 = a30;
  v111 = a22;
  v105 = a21;
  v125 = a29;
  v104 = a20;
  v126 = a18;
  v127 = a27;
  v136 = a26;
  v129 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v138 = swift_getAssociatedTypeWitness();
  v139 = swift_getAssociatedTypeWitness();
  v140 = swift_getAssociatedTypeWitness();
  v141 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v98 = *(TupleTypeMetadata - 1);
  v34 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v102 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v101 = &v93 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v128 = &v93 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v130 = &v93 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v131 = &v93 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v93 - v45;
  v136 = swift_getAssociatedTypeWitness();
  v129 = *(v136 - 8);
  (*(v129 + 16))(v46, v134, v136);
  v47 = TupleTypeMetadata[12];
  v48 = swift_getAssociatedTypeWitness();
  v49 = *(v48 - 8);
  v134 = v49;
  v50 = *(v49 + 16);
  v51 = &v46[v47];
  v52 = v48;
  v127 = v48;
  v50(v51, v135);
  v53 = TupleTypeMetadata[16];
  v126 = swift_getAssociatedTypeWitness();
  v54 = *(v126 - 8);
  v135 = v54;
  (*(v54 + 16))(&v46[v53], v133, v126);
  v55 = TupleTypeMetadata[20];
  v125 = swift_getAssociatedTypeWitness();
  v133 = *(v125 - 8);
  (*(v133 + 16))(&v46[v55], v132, v125);
  v56 = TupleTypeMetadata[24];
  v57 = swift_getAssociatedTypeWitness();
  v132 = *(v57 - 8);
  (*(v132 + 16))(&v46[v56], v106, v57);
  v58 = v98;
  v59 = *(v98 + 16);
  v60 = v131;
  v59(v131, v46, TupleTypeMetadata);
  v106 = TupleTypeMetadata[12];
  v105 = TupleTypeMetadata[16];
  v104 = TupleTypeMetadata[20];
  v103 = TupleTypeMetadata[24];
  (*(v129 + 32))(v107, v60, v136);
  v61 = v130;
  v59(v130, v46, TupleTypeMetadata);
  v62 = TupleTypeMetadata[12];
  v107 = TupleTypeMetadata[16];
  v100 = TupleTypeMetadata[20];
  v99 = TupleTypeMetadata[24];
  (*(v49 + 32))(v108, &v61[v62], v52);
  v63 = v128;
  v59(v128, v46, TupleTypeMetadata);
  v108 = TupleTypeMetadata[12];
  v64 = TupleTypeMetadata[16];
  v97 = TupleTypeMetadata[20];
  v96 = TupleTypeMetadata[24];
  v65 = v126;
  (*(v54 + 32))(v109, &v63[v64], v126);
  v66 = v101;
  v59(v101, v46, TupleTypeMetadata);
  v109 = TupleTypeMetadata[12];
  v95 = TupleTypeMetadata[16];
  v67 = TupleTypeMetadata[20];
  v94 = TupleTypeMetadata[24];
  v68 = v133;
  v69 = v125;
  (*(v133 + 32))(v110, &v66[v67], v125);
  v70 = v102;
  (*(v58 + 32))(v102, v46, TupleTypeMetadata);
  v110 = TupleTypeMetadata[12];
  v98 = TupleTypeMetadata[16];
  v71 = TupleTypeMetadata[20];
  v72 = TupleTypeMetadata[24];
  v73 = v132;
  (*(v132 + 32))(v113, &v70[v72], v57);
  v74 = swift_getAssociatedTypeWitness();
  (*(*(v74 - 8) + 16))(v117, v114, v74);
  v75 = swift_getAssociatedTypeWitness();
  (*(*(v75 - 8) + 16))(v121, v118, v75);
  v76 = swift_getAssociatedTypeWitness();
  (*(*(v76 - 8) + 16))(v124, v123, v76);
  v77 = *(v68 + 8);
  v133 = v68 + 8;
  v121 = v77;
  v77(&v70[v71], v69);
  v123 = *(v135 + 8);
  v135 += 8;
  v123(&v70[v98], v65);
  v78 = v134 + 8;
  v124 = *(v134 + 8);
  v79 = v127;
  v124(&v70[v110], v127);
  v129 = *(v129 + 8);
  v80 = v70;
  v81 = v136;
  (v129)(v80, v136);
  v120 = *(v73 + 8);
  v122 = v57;
  v120(&v66[v94], v57);
  v132 = v73 + 8;
  v123(&v66[v95], v65);
  v82 = v124;
  v124(&v66[v109], v79);
  v134 = v78;
  v83 = v129;
  (v129)(v66, v81);
  v84 = v128;
  v85 = v120;
  v120(&v128[v96], v57);
  v86 = v125;
  v87 = v121;
  v121(&v84[v97], v125);
  v82(&v84[v108], v79);
  v83(v84, v136);
  v88 = v130;
  v85(&v130[v99], v122);
  v87(&v88[v100], v86);
  v89 = v126;
  v90 = v123;
  v123(&v88[v107], v126);
  (v129)(v88, v136);
  v91 = v131;
  v85(&v131[v103], v122);
  v87(&v91[v104], v86);
  v90(&v91[v105], v89);
  return (v124)(&v91[v106], v127);
}

uint64_t sub_1D8F31618@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v15 = a1 + TupleTypeMetadata[12];
  v14 = a1 + TupleTypeMetadata[16];
  v13 = a1 + TupleTypeMetadata[20];
  v12 = a1 + TupleTypeMetadata[24];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v6 = swift_getTupleTypeMetadata();
  v7 = a1 + v6[12];
  v8 = a1 + v6[16];
  v9 = a1 + v6[20];
  v10 = swift_getTupleTypeMetadata();
  return a2(a3, a3 + v10[12], a3 + v10[16], a3 + v10[20], a3 + v10[24], a3 + v10[28], a3 + v10[32], a3 + v10[36], a1, v15, v14, v13, v12, v7, v8, v9);
}

uint64_t sub_1D8F318D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 168);
  v16 = *(v2 + 152);
  v14 = *(v2 + 120);
  v15 = *(v2 + 136);
  v12 = *(v2 + 88);
  v13 = *(v2 + 104);
  v10 = *(v2 + 56);
  v11 = *(v2 + 72);
  return sub_1D8F31618(a1, *(v2 + 160), a2);
}

uint64_t sub_1D8F31930(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D8F31950(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D8F31970(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D8F319A4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v42 = *(a3[2] - 8);
  v4 = *(v42 + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v42 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3[6] - 8);
  v16 = *(v15 + 84);
  v17 = *(v5 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(*(a3[4] - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  if (v16 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(*(a3[2] - 8) + 64) + v17;
  v25 = *(*(v8 - 8) + 64) + v22;
  v26 = a2 - v23;
  if (a2 > v23)
  {
    v27 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
    v28 = 8 * v27;
    if (v27 <= 3)
    {
      v30 = ((v26 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v30))
      {
        v29 = *(a1 + v27);
        if (!v29)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 > 0xFF)
      {
        v29 = *(a1 + v27);
        if (!*(a1 + v27))
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 < 2)
      {
LABEL_36:
        if (v23)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    v29 = *(a1 + v27);
    if (!*(a1 + v27))
    {
      goto LABEL_36;
    }

LABEL_23:
    v31 = (v29 - 1) << v28;
    if (v27 > 3)
    {
      v31 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v32 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
      }

      else
      {
        v32 = 4;
      }

      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v33 = *a1;
        }
      }

      else if (v32 == 1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a1;
      }
    }

    else
    {
      v33 = 0;
    }

    return v23 + (v33 | v31) + 1;
  }

LABEL_37:
  if (v4 == v23)
  {
    v34 = *(v42 + 48);

    return v34();
  }

  v36 = (a1 + v24) & ~v17;
  if (v6 == v23)
  {
    v37 = *(v5 + 48);
    v38 = *(v5 + 84);
    v39 = a3[3];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v10 == v23)
  {
    v37 = *(v9 + 48);
    v38 = *(v9 + 84);
    v39 = a3[4];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v13 == v23)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = a3[5];

    return v37(v36, v38, v39);
  }

  v40 = *(v15 + 48);
  v41 = (v25 + v36) & ~v22;

  return v40(v41, v16);
}

char *sub_1D8F31E44(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v42 = a4[3];
  v43 = *(a4[2] - 8);
  v5 = *(v43 + 84);
  v6 = *(v42 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v43 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a4[5];
  v41 = a4[4];
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4[6] - 8);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v6 + 80);
  v19 = *(*(v42 - 8) + 64);
  v20 = *(v10 + 80);
  v21 = *(*(v41 - 8) + 64);
  v22 = *(v13 + 80);
  v23 = *(*(v9 - 8) + 64);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  v26 = v23 + v24;
  v27 = ((v23 + v24 + ((v21 + v22 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20)) & ~v22)) & ~v24) + *(*(a4[6] - 8) + 64);
  v28 = a3 >= v25;
  v29 = a3 - v25;
  if (v29 != 0 && v28)
  {
    if (v27 <= 3)
    {
      v34 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v34))
      {
        v30 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v30 = v35;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if (v25 < a2)
  {
    v31 = ~v25 + a2;
    if (v27 < 4)
    {
      v33 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v36 = v31 & ~(-1 << (8 * v27));
        v37 = result;
        bzero(result, v27);
        result = v37;
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v37 = v36;
            if (v30 > 1)
            {
LABEL_60:
              if (v30 == 2)
              {
                *&result[v27] = v33;
              }

              else
              {
                *&result[v27] = v33;
              }

              return result;
            }
          }

          else
          {
            *v37 = v31;
            if (v30 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v37 = v36;
        v37[2] = BYTE2(v36);
      }

      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v32 = result;
      bzero(result, v27);
      result = v32;
      *v32 = v31;
      v33 = 1;
      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v30)
    {
      result[v27] = v33;
    }

    return result;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&result[v27] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    }

    *&result[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!v30)
  {
    goto LABEL_39;
  }

  result[v27] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_40:
  if (v5 == v25)
  {
    v38 = *(v43 + 56);

    return v38();
  }

  else
  {
    v39 = &result[v17 + v18] & ~v18;
    if (v7 == v25)
    {
      v40 = *(v6 + 56);
    }

    else
    {
      v39 = (v39 + v19 + v20) & ~v20;
      if (v11 == v25)
      {
        v40 = *(v10 + 56);
      }

      else
      {
        v39 = (v39 + v21 + v22) & ~v22;
        if (v14 == v25)
        {
          v40 = *(v13 + 56);
        }

        else
        {
          v40 = *(v16 + 56);
          v39 = (v26 + v39) & ~v24;
        }
      }
    }

    return v40(v39);
  }
}

uint64_t sub_1D8F32364(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v13 = a1[7];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D8F32460(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v61 = a3[3];
  v62 = v4;
  v5 = *(v4 + 84);
  v6 = *(v61 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a3[5];
  v59 = v9;
  v60 = a3[4];
  v10 = *(v60 - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v15 = a3[6];
  v14 = a3[7];
  v57 = v14;
  v58 = v15;
  v16 = *(v15 - 8);
  if (v13 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = *(v15 - 8);
  v19 = *(v16 + 84);
  if (v19 <= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = *(v16 + 84);
  }

  v21 = *(v14 - 8);
  v22 = *(v21 + 84);
  v23 = *(v4 + 64);
  v24 = *(v6 + 80);
  v25 = *(*(v61 - 8) + 64);
  v26 = *(v10 + 80);
  v27 = *(*(v60 - 8) + 64);
  v28 = *(v12 + 80);
  v29 = *(*(v9 - 8) + 64);
  v30 = *(v16 + 80);
  v31 = *(v16 + 64);
  v32 = *(v21 + 80);
  v33 = *(v21 + 64);
  if (v22 <= v20)
  {
    v34 = v20;
  }

  else
  {
    v34 = *(v21 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v35 = *(*(v60 - 8) + 64);
  v36 = v23 + v24;
  v37 = v29 + v30;
  v38 = v31 + v32;
  v39 = a2 - v34;
  if (a2 > v34)
  {
    v40 = (v38 + ((v37 + ((v27 + v28 + ((v25 + v26 + (v36 & ~v24)) & ~v26)) & ~v28)) & ~v30)) & ~v32;
    v41 = v40 + v33;
    v42 = 8 * (v40 + v33);
    if (v41 <= 3)
    {
      v44 = ((v39 + ~(-1 << v42)) >> v42) + 1;
      if (HIWORD(v44))
      {
        v43 = *(a1 + v41);
        if (!v43)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v44 > 0xFF)
      {
        v43 = *(a1 + v41);
        if (!*(a1 + v41))
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v44 < 2)
      {
LABEL_38:
        if (v34)
        {
          goto LABEL_39;
        }

        return 0;
      }
    }

    v43 = *(a1 + v41);
    if (!*(a1 + v41))
    {
      goto LABEL_38;
    }

LABEL_25:
    v45 = (v43 - 1) << v42;
    if (v41 > 3)
    {
      v45 = 0;
    }

    if (v41)
    {
      if (v41 <= 3)
      {
        v46 = v41;
      }

      else
      {
        v46 = 4;
      }

      if (v46 > 2)
      {
        if (v46 == 3)
        {
          v47 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v47 = *a1;
        }
      }

      else if (v46 == 1)
      {
        v47 = *a1;
      }

      else
      {
        v47 = *a1;
      }
    }

    else
    {
      v47 = 0;
    }

    return v34 + (v47 | v45) + 1;
  }

LABEL_39:
  if (v5 == v34)
  {
    v48 = *(v62 + 48);

    return v48(a1);
  }

  v50 = (a1 + v36) & ~v24;
  if (v7 == v34)
  {
    v51 = *(v6 + 48);
    v52 = (a1 + v36) & ~v24;
    v53 = *(v6 + 84);
    v54 = v61;

    return v51(v52, v53, v54);
  }

  if (v11 == v34)
  {
    v51 = *(v10 + 48);
    v52 = (v50 + v25 + v26) & ~v26;
    v53 = *(v10 + 84);
    v54 = v60;

    return v51(v52, v53, v54);
  }

  v52 = (((v50 + v25 + v26) & ~v26) + v27 + v28) & ~v28;
  if (v13 == v34)
  {
    v51 = *(v12 + 48);
    v53 = *(v12 + 84);
    v54 = v59;

    return v51(v52, v53, v54);
  }

  v52 = (v37 + v52) & ~v30;
  if (v19 == v34)
  {
    v51 = *(v18 + 48);
    v53 = v19;
    v54 = v58;

    return v51(v52, v53, v54);
  }

  v55 = *(v21 + 48);
  v56 = (v38 + v52) & ~v32;

  return v55(v56, v22, v57);
}

unsigned int *sub_1D8F329C4(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v55 = v6;
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = a4[5];
  v53 = a4[4];
  v13 = *(v53 - 8);
  v54 = *(v13 + 84);
  if (v54 > v11)
  {
    v11 = *(v13 + 84);
  }

  v51 = a4[5];
  v14 = *(v12 - 8);
  v52 = *(v14 + 84);
  if (v52 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v50 = a4[6];
  v16 = *(v50 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(a4[7] - 8);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v13 + 80);
  v24 = *(*(v53 - 8) + 64);
  v25 = *(v14 + 80);
  v26 = *(*(v12 - 8) + 64);
  v27 = *(v16 + 80);
  v28 = *(*(v50 - 8) + 64);
  v29 = *(v19 + 80);
  v30 = v26 + v27;
  v31 = v28 + v29;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v19 + 64);
  if (*(v19 + 84) <= v18)
  {
    v33 = v18;
  }

  else
  {
    v33 = *(v19 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  if (v33 < a2)
  {
    v35 = ~v33 + a2;
    if (v32 >= 4)
    {
      v36 = result;
      bzero(result, v32);
      result = v36;
      *v36 = v35;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_22;
      }

      goto LABEL_59;
    }

    v37 = (v35 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v35 & ~(-1 << (8 * v32));
      v41 = result;
      bzero(result, v32);
      result = v41;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *v41 = v40;
          if (v34 > 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *v41 = v35;
          if (v34 > 1)
          {
LABEL_22:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_59:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *v41 = v40;
      *(v41 + 2) = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(result + v32) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v32) = 0;
  }

  else if (v34)
  {
    *(result + v32) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v33)
  {
    v42 = v55;
LABEL_45:
    v43 = *(v42 + 56);
LABEL_48:

    return v43();
  }

  v44 = (result + v20 + v21) & ~v21;
  if (v10 == v33)
  {
    v43 = *(v9 + 56);
    goto LABEL_48;
  }

  v45 = (v44 + v22 + v23) & ~v23;
  if (v54 == v33)
  {
    v42 = v13;
    goto LABEL_45;
  }

  v46 = (v45 + v24 + v25) & ~v25;
  if (v52 == v33)
  {
    v47 = *(v14 + 56);

    return v47(v46);
  }

  v46 = (v30 + v46) & ~v27;
  if (v17 == v33)
  {
    v47 = *(v16 + 56);

    return v47(v46);
  }

  v48 = *(v19 + 56);
  v49 = (v31 + v46) & ~v29;

  return v48(v49);
}

uint64_t sub_1D8F32F44(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v13 = a1[7];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              v15 = a1[8];
              result = swift_checkMetadataState();
              if (v16 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D8F3305C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v55 = a3[2];
  v54 = a3[3];
  v5 = *(*(v55 - 8) + 84);
  v6 = *(v54 - 8);
  v7 = *(v6 + 84);
  v8 = a3[5];
  v52 = a3[4];
  v9 = *(v52 - 8);
  if (v7 <= v5)
  {
    v10 = *(*(v55 - 8) + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v52 - 8);
  v53 = *(v9 + 84);
  if (v53 > v10)
  {
    v10 = *(v9 + 84);
  }

  v50 = a3[5];
  v51 = *(*(v8 - 8) + 84);
  if (v51 > v10)
  {
    v10 = *(*(v8 - 8) + 84);
  }

  v12 = *(a3[6] - 8);
  if (*(v12 + 84) <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v49 = a3[7];
  v14 = *(v49 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v48 = a3[8];
  v17 = *(v48 - 8);
  v18 = *(v6 + 80);
  v56 = *(*(v54 - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(v8 - 8);
  v21 = *(v9 + 64);
  v22 = *(v20 + 80);
  v23 = *(v12 + 80);
  v24 = *(v14 + 80);
  v25 = *(v17 + 80);
  if (*(v17 + 84) <= v16)
  {
    v26 = v16;
  }

  else
  {
    v26 = *(v17 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v27 = *(*(v55 - 8) + 64) + v18;
  v28 = *(v20 + 64) + v23;
  v29 = *(v12 + 64) + v24;
  v30 = *(*(v49 - 8) + 64) + v25;
  v31 = a2 >= v26;
  v32 = a2 - v26;
  if (v32 == 0 || !v31)
  {
    goto LABEL_42;
  }

  v33 = ((v30 + ((v29 + ((v28 + ((v21 + v22 + ((v56 + v19 + (v27 & ~v18)) & ~v19)) & ~v22)) & ~v23)) & ~v24)) & ~v25) + *(*(v48 - 8) + 64);
  v34 = 8 * v33;
  if (v33 > 3)
  {
    goto LABEL_21;
  }

  v36 = ((v32 + ~(-1 << v34)) >> v34) + 1;
  if (HIWORD(v36))
  {
    v35 = *(a1 + v33);
    if (!v35)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v36 > 0xFF)
  {
    v35 = *(a1 + v33);
    if (!*(a1 + v33))
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v36 >= 2)
  {
LABEL_21:
    v35 = *(a1 + v33);
    if (!*(a1 + v33))
    {
      goto LABEL_41;
    }

LABEL_28:
    v37 = (v35 - 1) << v34;
    if (v33 > 3)
    {
      v37 = 0;
    }

    if (v33)
    {
      if (v33 <= 3)
      {
        v38 = ((v30 + ((v29 + ((v28 + ((v21 + v22 + ((v56 + v19 + (v27 & ~v18)) & ~v19)) & ~v22)) & ~v23)) & ~v24)) & ~v25) + *(*(v48 - 8) + 64);
      }

      else
      {
        v38 = 4;
      }

      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v39 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v39 = *a1;
        }
      }

      else if (v38 == 1)
      {
        v39 = *a1;
      }

      else
      {
        v39 = *a1;
      }
    }

    else
    {
      v39 = 0;
    }

    return v26 + (v39 | v37) + 1;
  }

LABEL_41:
  if (!v26)
  {
    return 0;
  }

LABEL_42:
  if (v5 == v26)
  {
    v41 = *(v55 - 8);
    v40 = v55;
LABEL_44:
    v42 = *(v41 + 48);
    goto LABEL_48;
  }

  if (v7 == v26)
  {
    v40 = v54;
    v42 = *(*(v54 - 8) + 48);
    a1 = ((a1 + v27) & ~v18);
    v5 = v7;
LABEL_48:

    return v42(a1, v5, v40);
  }

  a1 = ((((a1 + v27) & ~v18) + v56 + v19) & ~v19);
  v5 = v53;
  if (v53 == v26)
  {
    v41 = *(v52 - 8);
    v40 = v52;
    goto LABEL_44;
  }

  v44 = (a1 + v21 + v22) & ~v22;
  if (v51 == v26)
  {
    v45 = *(v20 + 48);

    return v45(v44);
  }

  else
  {
    v46 = (v28 + v44) & ~v23;
    if (*(v12 + 84) != v26)
    {
      a1 = ((v29 + v46) & ~v24);
      if (v15 == v26)
      {
        v42 = *(v14 + 48);
        v5 = *(v14 + 84);
        v40 = v49;
      }

      else
      {
        v42 = *(v17 + 48);
        a1 = ((a1 + v30) & ~v25);
        v5 = *(v17 + 84);
        v40 = v48;
      }

      return v42(a1, v5, v40);
    }

    v47 = *(v12 + 48);

    return v47(v46);
  }
}

uint64_t sub_1D8F33640(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v52 = *(a4[2] - 8);
  v4 = *(v52 + 84);
  v5 = *(a4[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v52 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a4[5];
  v9 = *(a4[4] - 8);
  v50 = *(v9 + 84);
  if (v50 > v7)
  {
    v7 = *(v9 + 84);
  }

  v47 = a4[5];
  v10 = *(v8 - 8);
  v48 = *(v10 + 84);
  if (v48 > v7)
  {
    v7 = *(v10 + 84);
  }

  v11 = a4[7];
  v12 = *(a4[6] - 8);
  v45 = *(v12 + 84);
  if (v45 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(a4[8] - 8);
  v18 = *(*(a4[2] - 8) + 64);
  v51 = *(a4[3] - 8);
  v19 = *(v5 + 80);
  v20 = *(v51 + 64);
  v49 = *(a4[4] - 8);
  v21 = *(v9 + 80);
  v22 = *(v49 + 64);
  v46 = *(v8 - 8);
  v23 = *(v10 + 80);
  v24 = *(v46 + 64);
  v25 = *(v12 + 80);
  v26 = *(*(a4[6] - 8) + 64);
  v27 = *(v14 + 80);
  v28 = *(*(v11 - 8) + 64);
  v29 = *(v17 + 80);
  v30 = v18 + v19;
  v31 = v26 + v27;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v17 + 64);
  if (*(v17 + 84) <= v16)
  {
    v33 = v16;
  }

  else
  {
    v33 = *(v17 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  result = a1;
  if (v33 < a2)
  {
    v36 = ~v33 + a2;
    if (v32 >= 4)
    {
      bzero(a1, v32);
      result = a1;
      *a1 = v36;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_24;
      }

      goto LABEL_57;
    }

    v37 = (v36 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v36 & ~(-1 << (8 * v32));
      bzero(a1, v32);
      result = a1;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *a1 = v40;
          if (v34 > 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *a1 = v36;
          if (v34 > 1)
          {
LABEL_24:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_57:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *a1 = v40;
      a1[2] = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_45;
    }

    *&a1[v32] = 0;
  }

  else if (v34)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return result;
  }

LABEL_45:
  if (v4 == v33)
  {
    v41 = *(v52 + 56);
    goto LABEL_65;
  }

  if (v6 == v33)
  {
    v41 = *(v51 + 56);
    result = &a1[v30] & ~v19;
    goto LABEL_65;
  }

  result = ((&a1[v30] & ~v19) + v20 + v21) & ~v21;
  if (v50 == v33)
  {
    v42 = v49;
LABEL_64:
    v41 = *(v42 + 56);
LABEL_65:

    return v41(result);
  }

  result = (result + v22 + v23) & ~v23;
  if (v48 == v33)
  {
    v42 = v46;
    goto LABEL_64;
  }

  v43 = (v24 + v25 + result) & ~v25;
  if (v45 != v33)
  {
    result = (v31 + v43) & ~v27;
    if (v15 == v33)
    {
      v41 = *(v14 + 56);
    }

    else
    {
      v41 = *(v17 + 56);
      result = (v28 + v29 + result) & ~v29;
    }

    return v41(result);
  }

  v44 = *(v12 + 56);

  return v44(v43);
}

uint64_t sub_1D8F33C6C(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v13 = a1[7];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              v15 = a1[8];
              result = swift_checkMetadataState();
              if (v16 <= 0x3F)
              {
                v17 = a1[9];
                result = swift_checkMetadataState();
                if (v18 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D8F33DA0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v57 = a3[2];
  v56 = *(v57 - 8);
  v5 = *(v56 + 84);
  v54 = a3[3];
  v6 = *(v54 - 8);
  v7 = *(v6 + 84);
  v55 = v7;
  if (v7 <= v5)
  {
    v7 = *(v56 + 84);
  }

  v52 = a3[4];
  v8 = *(v52 - 8);
  v9 = *(v8 + 84);
  v53 = v9;
  if (v9 <= v7)
  {
    v9 = v7;
  }

  v10 = a3[6];
  v50 = a3[5];
  v11 = *(v50 - 8);
  v51 = *(v11 + 84);
  if (v51 > v9)
  {
    v9 = *(v11 + 84);
  }

  v49 = a3[6];
  v12 = *(v10 - 8);
  if (*(v12 + 84) > v9)
  {
    v9 = *(v12 + 84);
  }

  v48 = a3[7];
  v13 = *(v48 - 8);
  v46 = a3[8];
  v14 = *(v46 - 8);
  if (*(v13 + 84) <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v47 = *(v14 + 84);
  if (v47 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v44 = a3[9];
  v17 = *(v44 - 8);
  v18 = *(v6 + 80);
  v59 = *(*(v54 - 8) + 64);
  v19 = *(v8 + 80);
  v58 = *(*(v52 - 8) + 64);
  v20 = *(v11 + 80);
  v21 = *(v12 + 80);
  v22 = *(v13 + 80);
  v45 = *(v46 - 8);
  v23 = *(v14 + 80);
  v24 = *(v14 + 64);
  v25 = *(v17 + 80);
  if (*(v17 + 84) <= v16)
  {
    v26 = v16;
  }

  else
  {
    v26 = *(v17 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v27 = *(*(v57 - 8) + 64) + v18;
  v28 = *(*(v50 - 8) + 64) + v21;
  v29 = *(*(v10 - 8) + 64) + v22;
  v30 = *(*(v48 - 8) + 64) + v23;
  v31 = v24 + v25;
  if (a2 <= v26)
  {
    goto LABEL_40;
  }

  v32 = ((v31 + ((v30 + ((v29 + ((v28 + ((v58 + v20 + ((v59 + v19 + (v27 & ~v18)) & ~v19)) & ~v20)) & ~v21)) & ~v22)) & ~v23)) & ~v25) + *(*(v44 - 8) + 64);
  v33 = 8 * v32;
  if (v32 <= 3)
  {
    v35 = ((a2 - v26 + ~(-1 << v33)) >> v33) + 1;
    if (HIWORD(v35))
    {
      v34 = *(a1 + v32);
      if (!v34)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v35 > 0xFF)
    {
      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v35 < 2)
    {
LABEL_39:
      if (v26)
      {
LABEL_40:
        if (v5 == v26)
        {
          v37 = v57;
          v38 = *(v56 + 48);
          v39 = *(v56 + 84);
          goto LABEL_49;
        }

        a1 = ((a1 + v27) & ~v18);
        v39 = v55;
        if (v55 == v26)
        {
          v37 = v54;
          v38 = *(*(v54 - 8) + 48);
          goto LABEL_49;
        }

        v39 = v53;
        if (v53 == v26)
        {
          v37 = v52;
          v38 = *(*(v52 - 8) + 48);
          a1 = ((a1 + v59 + v19) & ~v19);
          goto LABEL_49;
        }

        v41 = *(*(v52 - 8) + 64);
        a1 = ((((a1 + v59 + v19) & ~v19) + v58 + v20) & ~v20);
        v39 = v51;
        if (v51 == v26)
        {
          v38 = *(*(v50 - 8) + 48);
          v37 = v50;
          goto LABEL_49;
        }

        v42 = (a1 + v28) & ~v21;
        if (*(v12 + 84) == v26)
        {
          v43 = *(v12 + 48);
        }

        else
        {
          v42 = (v29 + v42) & ~v22;
          if (*(v13 + 84) != v26)
          {
            a1 = ((v30 + v42) & ~v23);
            v39 = v47;
            if (v47 != v26)
            {
              v38 = *(v17 + 48);
              a1 = ((a1 + v31) & ~v25);
              v39 = *(v17 + 84);
              v37 = v44;

              return v38(a1, v39, v37);
            }

            v37 = v46;
            v38 = *(*(v46 - 8) + 48);
LABEL_49:

            return v38(a1, v39, v37);
          }

          v43 = *(v13 + 48);
        }

        return v43(v42);
      }

      return 0;
    }
  }

  v34 = *(a1 + v32);
  if (!*(a1 + v32))
  {
    goto LABEL_39;
  }

LABEL_28:
  v36 = (v34 - 1) << v33;
  if (v32 > 3)
  {
    v36 = 0;
  }

  if (v32)
  {
    if (v32 > 3)
    {
      LODWORD(v32) = 4;
    }

    if (v32 > 2)
    {
      if (v32 == 3)
      {
        LODWORD(v32) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v32) = *a1;
      }
    }

    else if (v32 == 1)
    {
      LODWORD(v32) = *a1;
    }

    else
    {
      LODWORD(v32) = *a1;
    }
  }

  return v26 + (v32 | v36) + 1;
}

uint64_t sub_1D8F343F8(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[2] - 8);
  v57 = v4;
  v5 = *(v4 + 84);
  v6 = *(a4[3] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[4] - 8);
  v56 = v7;
  if (v7 <= v5)
  {
    v7 = *(v4 + 84);
  }

  v9 = *(v8 + 84);
  v54 = v9;
  if (v9 <= v7)
  {
    v9 = v7;
  }

  v10 = *(a4[5] - 8);
  v52 = *(v10 + 84);
  if (v52 > v9)
  {
    v9 = *(v10 + 84);
  }

  v11 = a4[7];
  v12 = *(a4[6] - 8);
  v13 = v12;
  v51 = *(v12 + 84);
  if (v51 > v9)
  {
    v9 = *(v12 + 84);
  }

  v48 = a4[7];
  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  v49 = v15;
  if (v15 <= v9)
  {
    v15 = v9;
  }

  v16 = *(a4[8] - 8);
  v47 = *(v16 + 84);
  if (v47 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = *(v16 + 84);
  }

  v18 = *(a4[9] - 8);
  v19 = *(v4 + 64);
  v55 = v6;
  v20 = *(v6 + 80);
  v21 = *(v6 + 64);
  v53 = *(a4[4] - 8);
  v22 = *(v8 + 80);
  v23 = *(v8 + 64);
  v50 = v10;
  v24 = *(v10 + 80);
  v25 = v23;
  v26 = *(v10 + 64);
  v27 = *(v12 + 80);
  v28 = *(v12 + 64);
  v29 = *(v14 + 80);
  v30 = *(*(v11 - 8) + 64);
  v31 = *(v16 + 80);
  v32 = *(v16 + 64);
  v33 = *(v18 + 80);
  v34 = v19 + v20;
  v35 = v26 + v27;
  v36 = v32 + v33;
  v37 = ((v32 + v33 + ((v30 + v31 + ((v28 + v29 + ((v26 + v27 + ((v25 + v24 + ((v21 + v22 + ((v19 + v20) & ~v20)) & ~v22)) & ~v24)) & ~v27)) & ~v29)) & ~v31)) & ~v33) + *(v18 + 64);
  if (*(v18 + 84) <= v17)
  {
    v38 = v17;
  }

  else
  {
    v38 = *(v18 + 84);
  }

  if (a3 > v38)
  {
    if (v37 <= 3)
    {
      v43 = ((a3 - v38 + ~(-1 << (8 * v37))) >> (8 * v37)) + 1;
      if (HIWORD(v43))
      {
        v39 = 4;
      }

      else
      {
        if (v43 < 0x100)
        {
          v44 = 1;
        }

        else
        {
          v44 = 2;
        }

        if (v43 >= 2)
        {
          v39 = v44;
        }

        else
        {
          v39 = 0;
        }
      }
    }

    else
    {
      v39 = 1;
    }
  }

  else
  {
    v39 = 0;
  }

  result = a1;
  if (v38 >= a2)
  {
    if (v39 > 1)
    {
      if (v39 != 2)
      {
        *&a1[v37] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_44;
      }

      *&a1[v37] = 0;
    }

    else if (v39)
    {
      a1[v37] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_44;
    }

    if (!a2)
    {
      return result;
    }

LABEL_44:
    if (v5 == v38)
    {
      v46 = *(v57 + 56);
    }

    else
    {
      result = &a1[v34] & ~v20;
      if (v56 == v38)
      {
        v46 = *(v55 + 56);
      }

      else if (v54 == v38)
      {
        v46 = *(v53 + 56);
        result = (result + v21 + v22) & ~v22;
      }

      else
      {
        result = (((result + v21 + v22) & ~v22) + v25 + v24) & ~v24;
        if (v52 != v38)
        {
          result = (v35 + result) & ~v27;
          if (v51 == v38)
          {
            v46 = *(v13 + 56);
          }

          else
          {
            result = (v28 + v29 + result) & ~v29;
            if (v49 == v38)
            {
              v46 = *(v14 + 56);
            }

            else
            {
              result = (v30 + v31 + result) & ~v31;
              if (v47 == v38)
              {
                v46 = *(v16 + 56);
              }

              else
              {
                v46 = *(v18 + 56);
                result = (v36 + result) & ~v33;
              }
            }
          }

          return v46(result);
        }

        v46 = *(v50 + 56);
      }
    }

    return v46(result);
  }

  v41 = ~v38 + a2;
  if (v37 >= 4)
  {
    bzero(a1, v37);
    result = a1;
    *a1 = v41;
    v42 = 1;
    if (v39 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v42 = (v41 >> (8 * v37)) + 1;
  if (!v37)
  {
LABEL_54:
    if (v39 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v45 = v41 & ~(-1 << (8 * v37));
  bzero(a1, v37);
  result = a1;
  if (v37 == 3)
  {
    *a1 = v45;
    a1[2] = BYTE2(v45);
    goto LABEL_54;
  }

  if (v37 == 2)
  {
    *a1 = v45;
    if (v39 > 1)
    {
LABEL_58:
      if (v39 == 2)
      {
        *(result + v37) = v42;
      }

      else
      {
        *(result + v37) = v42;
      }

      return result;
    }
  }

  else
  {
    *a1 = v41;
    if (v39 > 1)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v39)
  {
    *(result + v37) = v42;
  }

  return result;
}

uint64_t Subscribers.Completion.failure()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    (*(v9 + 32))(a2, v6, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

uint64_t sub_1D8F34C68()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v0);
  return sub_1D9179E1C();
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation11ConduitListOyxq_G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1D8F34CCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D8F34D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D8F34D58(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D8F34DFC(uint64_t result, void *a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      v4 = v2;
      v11 = *v2;
      v10 = result;
      v6 = a2[2];
      v5 = a2[3];
      v7 = a2[4];
      type metadata accessor for ConduitBase();

      swift_getWitnessTable();
      sub_1D9178B4C();
      sub_1D9178B2C();

      v8 = sub_1D9178B0C();
      if (v8 == 1)
      {
        swift_getWitnessTable();
        result = sub_1D9178BDC();
        if (v10)
        {
          sub_1D8D54860(v3, 1);

          *v2 = v10;
          *(v2 + 8) = 0;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v9 = v8;
        result = sub_1D8D54860(v3, 1);
        if (v9)
        {
          *v4 = v11;
          *(v4 + 8) = 1;
        }

        else
        {

          *v4 = 0;
          *(v4 + 8) = 2;
        }
      }
    }
  }

  else if (v3 == result)
  {
    result = sub_1D8D54860(*v2, 0);
    *v2 = 0;
    *(v2 + 8) = 2;
  }

  return result;
}

uint64_t sub_1D8F34FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = a4;
  v6[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v8 = sub_1D9179EAC();
  v6[4] = v8;
  v9 = *(v8 - 8);
  v6[5] = v9;
  v10 = *(v9 + 64) + 15;
  v6[6] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[7] = v11;
  v15 = (a6 + *a6);
  v12 = a6[1];
  v13 = swift_task_alloc();
  v6[8] = v13;
  *v13 = v6;
  v13[1] = sub_1D8F35134;

  return v15(v11);
}

uint64_t sub_1D8F35134()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D8F35300;
  }

  else
  {
    v3 = sub_1D8F35248;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8F35248()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  swift_storeEnumTagMultiPayload();
  v5(v1);
  (*(v3 + 8))(v1, v2);
  v7 = v0[6];
  v6 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D8F35300()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v7 = v1;
  v6(v2);

  (*(v3 + 8))(v2, v5);
  v9 = v0[6];
  v8 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D8F353D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D8D58924;

  return sub_1D8F34FA0(a1, v4, v5, v7, v8, v9);
}

uint64_t sub_1D8F354AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 32))(a2, a1, AssociatedTypeWitness);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_1D8F35580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1D8F354AC(a1, a2);
}

uint64_t sub_1D8F35588(uint64_t a1, uint64_t (*a2)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return a2(v8);
}

uint64_t sub_1D8F35684(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1D8F35588(a1, *(v1 + 32));
}

uint64_t Publisher.nullifyFirstIf<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a1;
  v37 = a3;
  v44 = a2;
  v7 = sub_1D91791BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v35 - v10;
  v12 = *(v7 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v35 - v15;
  v17 = sub_1D917769C();
  v41 = *(v17 - 8);
  v18 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v35 - v19;
  WitnessTable = swift_getWitnessTable();
  v35[1] = v7;
  v21 = sub_1D917768C();
  v22 = *(v21 - 8);
  v39 = v21;
  v40 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v36 = v35 - v25;
  (*(*(a4 - 8) + 56))(v16, 1, 1, a4, v24);
  v26 = *(TupleTypeMetadata2 + 48);
  *v11 = 0;
  (*(v12 + 32))(&v11[v26], v16, v7);
  v27 = swift_allocObject();
  v28 = v37;
  v27[2] = v37;
  v27[3] = a4;
  v27[4] = a5;
  sub_1D9177BBC();

  (*(v42 + 8))(v11, TupleTypeMetadata2);
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = a4;
  v30 = v43;
  v29[4] = a5;
  v29[5] = v30;
  v29[6] = v44;

  v31 = v36;
  sub_1D9177B9C();

  (*(v41 + 8))(v20, v17);
  v32 = v39;
  swift_getWitnessTable();
  v33 = sub_1D9177B1C();
  (*(v40 + 8))(v31, v32);
  return v33;
}

uint64_t sub_1D8F35AC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D91791BC();
  v7 = __OFADD__(*a1, 1);
  v8 = *a1 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = *(swift_getTupleTypeMetadata2() + 48);
    *a3 = v8;
    v11 = *(*(v9 - 8) + 16);

    return v11(a3 + v10, a2, v9);
  }

  return result;
}

uint64_t sub_1D8F35B78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  return sub_1D8F35AC4(a1, a2, a3);
}

uint64_t sub_1D8F35B84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v31 = a3;
  v32 = a2;
  v34 = a5;
  v33 = *(a4 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D91791BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v31 - v13;
  v15 = *(v10 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - v22;
  (*(v24 + 16))(v14, a1, TupleTypeMetadata2, v21);
  v25 = *v14;
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = *(v15 + 32);
  v27(v23, &v14[v26], v10);
  if (v25 == 1)
  {
    (*(v15 + 16))(v19, v23, v10);
    if ((*(v33 + 48))(v19, 1, a4) == 1)
    {
      (*(v15 + 8))(v19, v10);
    }

    else
    {
      v28 = v33;
      (*(v33 + 32))(v9, v19, a4);
      v29 = v32(v9);
      (*(v28 + 8))(v9, a4);
      if (v29)
      {
        (*(v15 + 8))(v23, v10);
        return (*(v33 + 56))(v34, 1, 1, a4);
      }
    }
  }

  return (v27)(v34, v23, v10);
}

uint64_t sub_1D8F35EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_1D8F35B84(a1, *(v2 + 40), *(v2 + 48), *(v2 + 24), a2);
}

uint64_t *PaginatedPublisher.transformPublisherPart<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = v16;
  v24[1] = v17;
  v24[2] = v18;
  v24[3] = v19;
  v20 = type metadata accessor for AnyPaginatedPublisherTransformed();
  (*(v11 + 16))(v15, v4, a3);
  a1(v4);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  return sub_1D8F36E1C(v15, v9);
}

uint64_t *sub_1D8F36048(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1D8F36E1C(a1, a2);
}

uint64_t *PaginatedPublisher.paginatedBufferedMulticast()(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[3] = a2;
  v3 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1D917781C();
  swift_getWitnessTable();
  return PaginatedPublisher.transformPublisherPart<A>(_:)(sub_1D8F361A4, v6, a1, v4);
}

uint64_t sub_1D8F361A4@<X0>(uint64_t *a1@<X8>)
{
  result = Publisher.bufferedMulticast()(*(v1 + 16), *(*(v1 + 24) + 8));
  *a1 = result;
  return result;
}

uint64_t *PaginatedPublisher.paginatedMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a1;
  v9[6] = a2;
  v6 = *(a5 + 8);
  v7 = sub_1D917768C();
  swift_getWitnessTable();
  return PaginatedPublisher.transformPublisherPart<A>(_:)(sub_1D8F36280, v9, a3, v7);
}

uint64_t sub_1D8F36280()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[4] + 8);
  return sub_1D9177B9C();
}

uint64_t *PaginatedPublisher.paginatedPrepend(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v4 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  sub_1D91786FC();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  v7[6] = sub_1D917774C();
  v7[7] = a2;
  v7[8] = swift_getWitnessTable();
  v7[9] = v4;
  v5 = sub_1D91775CC();
  swift_getWitnessTable();
  return PaginatedPublisher.transformPublisherPart<A>(_:)(sub_1D8F364D8, v7, a2, v5);
}

uint64_t sub_1D8F3642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  sub_1D91786FC();
  swift_getWitnessTable();
  return sub_1D9177CDC();
}

uint64_t *PaginatedPublisher.paginatedPrint(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v6 = *(a5 + 8);
  v7 = sub_1D91776CC();
  swift_getWitnessTable();
  return PaginatedPublisher.transformPublisherPart<A>(_:)(sub_1D8F36580, v9, a4, v7);
}

uint64_t sub_1D8F36580()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[3] + 8);
  return sub_1D9177C1C();
}

uint64_t *PaginatedPublisher.paginatedSectionMap<A, B, C>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = a8;
  v16[8] = a1;
  v16[9] = a2;
  sub_1D91786FC();
  v17 = type metadata accessor for FRPOutput();

  v18 = PaginatedPublisher.paginatedMap<A>(_:)(sub_1D8F36760, v16, a3, v17, a7);

  return v18;
}

uint64_t sub_1D8F36698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = a1[2];
  type metadata accessor for FRPSectionInfo();
  sub_1D91786FC();
  v3 = type metadata accessor for FRPOutput();
  v4 = sub_1D91786FC();
  return FRPOutput.map<A>(_:)(sub_1D8F38158, v3, v4, a2);
}

uint64_t sub_1D8F36760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[8];
  v9 = v2[9];
  v11 = v2[7];
  return sub_1D8F36698(a1, a2);
}

uint64_t sub_1D8F36794@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v16[11] = *a1;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v16[7] = a10;
  v16[8] = a2;
  v16[9] = a3;
  type metadata accessor for FRPSectionInfo();
  v12 = sub_1D91786FC();
  WitnessTable = swift_getWitnessTable();
  result = sub_1D8D175AC(sub_1D8F3818C, v16, v12, a7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);
  *a9 = result;
  return result;
}

uint64_t *PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  v13 = type metadata accessor for FRPOutput();

  v14 = PaginatedPublisher.paginatedMap<A>(_:)(sub_1D8F36928, v12, a3, v13, a6);

  return v14;
}

uint64_t sub_1D8F36928@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v5 = *(v1 + 32);
  v8 = *(v1 + 48);
  v3 = type metadata accessor for FRPOutput();
  return FRPOutput.map<A>(_:)(sub_1D8F38130, v3, v5, a1);
}

void *Publisher<>.paginatedSwitchToLatest()()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for SwitchToLatestPaginatedPublisher();
  swift_allocObject();
  return sub_1D8F37C1C();
}

uint64_t sub_1D8F36C60()
{
  v1 = *(*(*v0 + 152) + 16);
  v2 = *(*v0 + 144);
  v3 = v0 + *(*v0 + 160);
  return v1(v2) & 1;
}

uint64_t sub_1D8F36CD8()
{
  v1 = *(*(*v0 + 152) + 24);
  v2 = *(*v0 + 144);
  v3 = v0 + *(*v0 + 160);
  return v1(v2) & 1;
}

uint64_t sub_1D8F36D50()
{
  v1 = *(*(*v0 + 152) + 32);
  v2 = *(*v0 + 144);
  v3 = v0 + *(*v0 + 160);
  return v1(v2);
}

uint64_t *sub_1D8F36E1C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  (*(*(*(*v2 + 144) - 8) + 32))(v2 + *(*v2 + 176), a1);
  (*(*(*(v4 + 152) - 8) + 32))(v2 + *(*v2 + 184), a2);
  return v2;
}

uint64_t sub_1D8F36EFC()
{
  v1 = *(*(*v0 + 160) + 16);
  v2 = *(*v0 + 144);
  v3 = v0 + *(*v0 + 176);
  return v1(v2) & 1;
}

uint64_t sub_1D8F36F74()
{
  v1 = *(*(*v0 + 160) + 24);
  v2 = *(*v0 + 144);
  v3 = v0 + *(*v0 + 176);
  return v1(v2) & 1;
}

uint64_t sub_1D8F36FEC()
{
  v1 = *(*(*v0 + 160) + 32);
  v2 = *(*v0 + 144);
  v3 = v0 + *(*v0 + 176);
  return v1(v2);
}

uint64_t sub_1D8F37060()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 168);
  v3 = v0 + *(*v0 + 184);
  return sub_1D9177AFC();
}

uint64_t sub_1D8F370C4()
{
  v1 = *v0;
  (*(*(*(*v0 + 144) - 8) + 8))(v0 + *(*v0 + 176));
  v2 = *(*(*(v1 + 152) - 8) + 8);
  v3 = v0 + *(*v0 + 184);

  return v2(v3);
}

uint64_t *sub_1D8F37198()
{
  v1 = *v0;
  (*(*(*(*v0 + 144) - 8) + 8))(v0 + *(*v0 + 176));
  (*(*(*(v1 + 152) - 8) + 8))(v0 + *(*v0 + 184));
  return v0;
}

uint64_t sub_1D8F37264()
{
  v0 = *sub_1D8F37198();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F372B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - v6;
  v8 = sub_1D91791BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = v1[3];
  sub_1D917791C();
  if ((*(v4 + 48))(v12, 1, v3))
  {
    (*(v9 + 8))(v12, v8);
    v14 = 0;
  }

  else
  {
    (*(v4 + 16))(v7, v12, v3);
    (*(v9 + 8))(v12, v8);
    v14 = (*(*(v2 + 168) + 16))(v3);
    (*(v4 + 8))(v7, v3);
  }

  return v14 & 1;
}

uint64_t sub_1D8F374D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - v6;
  v8 = sub_1D91791BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = v1[3];
  sub_1D917791C();
  if ((*(v4 + 48))(v12, 1, v3))
  {
    (*(v9 + 8))(v12, v8);
    v14 = 0;
  }

  else
  {
    (*(v4 + 16))(v7, v12, v3);
    (*(v9 + 8))(v12, v8);
    v14 = (*(*(v2 + 168) + 24))(v3);
    (*(v4 + 8))(v7, v3);
  }

  return v14 & 1;
}

uint64_t sub_1D8F376F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - v6;
  v8 = sub_1D91791BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = v1[3];
  sub_1D917791C();
  if ((*(v4 + 48))(v12, 1, v3))
  {
    return (*(v9 + 8))(v12, v8);
  }

  (*(v4 + 16))(v7, v12, v3);
  (*(v9 + 8))(v12, v8);
  (*(*(v2 + 168) + 32))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D8F3790C()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 144);
  swift_getAssociatedTypeWitness();
  v5 = *(*(v1 + 168) + 8);
  swift_getAssociatedConformanceWitness();
  v6 = sub_1D917761C();
  sub_1D917781C();
  swift_getWitnessTable();
  v13[0] = v6;
  v13[1] = sub_1D917768C();
  v13[2] = swift_getWitnessTable();
  v13[3] = swift_getWitnessTable();
  v7 = sub_1D917763C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v13 - v10;
  v13[0] = v0[2];
  sub_1D9177B0C();
  sub_1D917762C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D8F37B70()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
}

void *sub_1D8F37BA8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_1D8F37BD8()
{
  sub_1D8F37BA8();

  return swift_deallocClassInstance();
}

void *sub_1D8F37C1C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 152);
  v4 = sub_1D91791BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  sub_1D917793C();
  (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
  v1[3] = sub_1D917794C();
  v8 = Publisher.bufferedMulticast()(*(v2 + 144), *(v2 + 160));
  v1[2] = v8;
  v14[1] = v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_1D917781C();

  WitnessTable = swift_getWitnessTable();
  v14[0] = Publisher.makeOptional.getter(v9, WitnessTable);
  v11 = v1[3];
  sub_1D917781C();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = sub_1D9177D4C();

  v1[4] = v12;
  return v1;
}

uint64_t sub_1D8F37EAC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8F37EE8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8F38008(uint64_t a1)
{
  v2 = *(a1 + 144);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 152);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D8F38130()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_1D8F3818C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1();
}

uint64_t Publisher.asResult()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D9179EAC();
  v4 = sub_1D917768C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D9177B9C();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1D91779FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D9177BDC();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D8F3840C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D9179EAC();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8F38510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1D8F3840C(a1, a2);
}

uint64_t sub_1D8F38518(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1D9179EAC();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v8 - v6, a1, AssociatedTypeWitness, v5);
  swift_storeEnumTagMultiPayload();
  return sub_1D9177A0C();
}

uint64_t sub_1D8F3866C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D8F38518(a1);
}

uint64_t sub_1D8F386A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E75D8];
  v3 = sub_1D9179E5C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t RepublishingValueSubject.value.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1D8F3924C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*RepublishingValueSubject.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  RepublishingValueSubject.value.getter(v9);
  return sub_1D8F388A4;
}

void sub_1D8F388A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_1D8F3924C(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1D8F3924C((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D8F38980(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1D8D5DA18(a1, a2);
}

uint64_t sub_1D8F389CC()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 200);
  v4 = v1[22];
  v5 = sub_1D91791BC();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  v6 = *&v0[*(*v0 + 216)];

  v7 = *(*v0 + 248);
  v8 = v1[21];
  v9 = v1[23];
  swift_getAssociatedConformanceWitness();
  sub_1D91777CC();
  v10 = sub_1D91791BC();
  v11 = *(*(v10 - 8) + 8);

  return v11(&v0[v7], v10);
}

void sub_1D8F38B34()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = sub_1D91791BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  v11 = *&v0[*(v1 + 216)];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v0 + 200);
  swift_beginAccess();
  (*(v4 + 16))(v10, &v0[v12], v3);
  v13 = *(v2 - 8);
  LODWORD(v1) = (*(v13 + 48))(v10, 1, v2);
  (*(v4 + 8))(v10, v3);
  if (v1 == 1)
  {
    os_unfair_lock_unlock(v11 + 4);
  }

  else
  {
    (*(v13 + 56))(v7, 1, 1, v2);
    swift_beginAccess();
    (*(v4 + 40))(&v0[v12], v7, v3);
    swift_endAccess();
    v14 = *(v0 + 2);
    *(v0 + 2) = 0;
    os_unfair_lock_unlock(v11 + 4);
    if (v14)
    {

      sub_1D8DB34BC(v0);
    }
  }
}

void sub_1D8F38DA0(uint64_t a1@<X8>)
{
  v26 = *v1;
  v2 = v26;
  v27 = a1;
  v25 = sub_1D9179E5C();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CB8, qword_1D9194EF8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  os_unfair_lock_lock((*(v1 + v2[27]) + 16));
  v28 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D9195F30;
  *(v11 + 32) = 0x746E65726170;
  *(v11 + 40) = 0xE600000000000000;
  v12 = v1[2];
  v13 = v2[20];
  v14 = v2[21];
  v15 = v2[23];
  v16 = v2[22];
  swift_getAssociatedConformanceWitness();
  type metadata accessor for RepublishingValueSubject();
  v17 = sub_1D91791BC();
  *(v11 + 48) = v12;
  *(v11 + 72) = v17;
  *(v11 + 80) = 0x657274736E776F64;
  *(v11 + 88) = 0xEA00000000006D61;
  v18 = *(*v1 + 200);
  swift_beginAccess();
  v19 = sub_1D91791BC();
  *(v11 + 120) = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 96));
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v1 + v18, v19);
  *(v11 + 128) = 0x646E616D6564;
  *(v11 + 136) = 0xE600000000000000;
  v21 = *(*v1 + 208);
  swift_beginAccess();
  v22 = MEMORY[0x1E695BEC8];
  *(v11 + 144) = *(v1 + v21);
  *(v11 + 168) = v22;
  *(v11 + 176) = 0x6465646E616D6564;
  *(v11 + 184) = 0xE800000000000000;
  v23 = MEMORY[0x1E69E6370];
  *(v11 + 192) = *(v1 + *(*v1 + 240));
  *(v11 + 216) = v23;
  *(v11 + 224) = 0x7463656A627573;
  *(v11 + 264) = v17;
  *(v11 + 232) = 0xE700000000000000;
  *(v11 + 240) = v12;
  v24 = sub_1D9179E4C();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v25);
  swift_retain_n();

  sub_1D9179E8C();
  os_unfair_lock_unlock((*(v1 + *(*v1 + 216)) + 16));
}

void sub_1D8F391C8(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = 0xD000000000000013;
  a1[1] = 0x80000001D91CD680;
}

void sub_1D8F3924C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  os_unfair_lock_lock(v4 + 4);
  v5 = *(*v1 + 136);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(&v1[v5], a1);
  swift_endAccess();
  os_unfair_lock_unlock(v4 + 4);
  RepublishingValueSubject.send(_:)(a1);
}

uint64_t RetriggerableDeferred.init(createPublisher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v27 = a3;
  v28 = a4;
  v32 = a5;
  v33 = a2;
  v29 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6EB0, &qword_1D9196130);
  v6 = sub_1D9177A8C();
  v30 = sub_1D8F39640();
  v7 = sub_1D917768C();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  WitnessTable = swift_getWitnessTable();
  v26 = WitnessTable;
  v25 = swift_getWitnessTable();
  v34 = v6;
  v35 = v7;
  v36 = WitnessTable;
  v37 = v25;
  v12 = sub_1D917763C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  v34 = 0;
  v17 = *(v5 + 48);
  v18 = *(v5 + 52);
  swift_allocObject();
  v19 = sub_1D917795C();
  v34 = v19;
  v20 = swift_allocObject();
  v21 = v28;
  v20[2] = v27;
  v20[3] = v21;
  v20[4] = v29;
  v20[5] = v33;
  v20[6] = v19;

  sub_1D9177B9C();

  MEMORY[0x1DA729340](v7, v25, v26);
  (*(v31 + 8))(v10, v7);
  swift_getWitnessTable();
  v22 = sub_1D9177B1C();

  result = (*(v13 + 8))(v16, v12);
  *v32 = v22;
  return result;
}

unint64_t sub_1D8F39640()
{
  result = qword_1EDCD0B20;
  if (!qword_1EDCD0B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6EB0, &qword_1D9196130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD0B20);
  }

  return result;
}

uint64_t sub_1D8F396A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;

  return sub_1D9177A7C();
}

uint64_t sub_1D8F39768(void (*a1)(uint64_t (*)(), uint64_t))
{
  v2 = swift_allocObject();
  swift_weakInit();

  a1(sub_1D8F39908, v2);
}

uint64_t sub_1D8F39800()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D917790C();
  }

  return result;
}

uint64_t RetriggerableDeferred.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x1E69E73E0];

  return MEMORY[0x1EEDB5BC8](a1, v8, AssociatedTypeWitness, v12, a3, a4);
}

uint64_t sub_1D8F398F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  return sub_1D8F39768(*(v0 + 32));
}

uint64_t sub_1D8F39910(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1D8F39958@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_1D91791BC();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_1D8F39A04(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_1D91791BC();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

void sub_1D8F39AB8()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v4 = sub_1D91791BC();
  v5 = sub_1D8F39B58;
  v6 = v0;
  sub_1D8D056BC(sub_1D8D12F54, v3, v1);
}

char *SubscriptionSubject.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_1D8F3A2F8(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v9;
}

char *SubscriptionSubject.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D8F3A2F8(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t sub_1D8F39C74(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8F3A0C4(a1);
  }

  return result;
}

char *SubscriptionSubject.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (*(v0 + 3))
  {

    sub_1D917785C();
  }

  v3 = *(v0 + 2);

  v4 = *(v0 + 3);

  v5 = *(v0 + 4);

  v6 = *(*v0 + 128);
  v7 = *(v2 + 80);
  v8 = sub_1D91791BC();
  (*(*(v8 - 8) + 8))(&v1[v6], v8);
  return v1;
}

uint64_t SubscriptionSubject.__deallocating_deinit()
{
  SubscriptionSubject.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1D8F39E04(void (*a1)(char *), uint64_t a2)
{
  v18[0] = a2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = sub_1D91791BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  v16 = v2[2];
  os_unfair_lock_lock(v16 + 4);
  sub_1D8F39958(v10);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v17 = swift_allocObject();
    v17[2] = v5;
    v17[3] = *(v4 + 88);
    v17[4] = *(v4 + 96);
    v17[5] = a1;
    v17[6] = v18[0];
    v18[4] = sub_1D8F3A4E8;
    v18[5] = v17;
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_1D91786FC();

    sub_1D91786BC();
    swift_endAccess();
    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    (*(v11 + 32))(v15, v10, v5);
    os_unfair_lock_unlock(v16 + 4);
    a1(v15);
    (*(v11 + 8))(v15, v5);
  }
}

uint64_t sub_1D8F3A0C4(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1D91791BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20[-v6];
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(v3 - 8);
  (*(v9 + 16))(v7, a1, v3);
  (*(v9 + 56))(v7, 0, 1, v3);
  sub_1D8F39A04(v7);
  swift_beginAccess();
  v10 = v1[4];
  swift_getFunctionTypeMetadata1();

  v11 = sub_1D917866C();
  swift_beginAccess();
  v12 = v1[4];
  v1[4] = v11;

  os_unfair_lock_unlock(v8 + 4);
  if (!sub_1D91786AC())
  {
  }

  v13 = 0;
  for (i = (v10 + 40); ; i += 2)
  {
    v15 = sub_1D917868C();
    result = sub_1D917862C();
    if ((v15 & 1) == 0)
    {
      break;
    }

    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_8;
    }

    v19 = *(i - 1);
    v18 = *i;

    v19(a1);

    ++v13;
    if (v17 == sub_1D91786AC())
    {
    }
  }

  result = sub_1D91794BC();
  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

char *sub_1D8F3A2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v4 + 2) = v8;
  *(v4 + 3) = 0;
  v9 = *(v7 + 80);
  swift_getFunctionTypeMetadata1();
  *(v4 + 4) = sub_1D9177FFC();
  (*(*(v9 - 8) + 56))(&v4[*(*v4 + 128)], 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v9;
  v11 = *(v7 + 88);
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = a3;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v11;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = v12;

  v14 = sub_1D9177BCC();

  v15 = *(v4 + 3);
  *(v4 + 3) = v14;

  return v4;
}

uint64_t sub_1D8F3A4E8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_1D8F3A510(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1D91791BC();
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

uint64_t sub_1D8F3A658(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1D8F39C74(a1);
}

uint64_t sub_1D8F3A6B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7070, &qword_1D91964D8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7078, &qword_1D91964E0);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F08, &qword_1D9196390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7080, &qword_1D91964E8);
  sub_1D8CF48EC(&qword_1ECAB7088, &qword_1ECAB6F08, &qword_1D9196390);
  sub_1D9177B9C();
  v19 = xmmword_1D918F800;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7090, &qword_1D91964F0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB7098, &qword_1ECAB7070, &qword_1D91964D8);
  sub_1D8CF48EC(&qword_1ECAB70A0, &qword_1ECAB7090, &qword_1D91964F0);
  v12 = sub_1D9177D2C();

  (*(v1 + 8))(v4, v0);
  *&v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70A8, &qword_1D91964F8);
  sub_1D8CF48EC(&qword_1ECAB70B0, &qword_1ECAB70A8, &qword_1D91964F8);
  v13 = sub_1D917796C();

  *&v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70B8, &qword_1D9196500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  sub_1D8CF48EC(&qword_1ECAB70C0, &qword_1ECAB70B8, &qword_1D9196500);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB70C8, &qword_1ECAB7078, &qword_1D91964E0);
  v14 = v18;
  v15 = sub_1D9177B1C();
  (*(v5 + 8))(v8, v14);
  return v15;
}

uint64_t sub_1D8F3AACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7048, &qword_1D91964B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7050, &qword_1D91964B8);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F40, &qword_1D91963A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
  sub_1D8CF48EC(&qword_1ECAB0908, &qword_1ECAB6F40, &qword_1D91963A8);
  sub_1D9177B9C();
  v19 = 0;
  v20 = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7058, &qword_1D91964C0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB0780, &qword_1ECAB7048, &qword_1D91964B0);
  sub_1D8CF48EC(&qword_1ECAB02F0, &qword_1ECAB7058, &qword_1D91964C0);
  v12 = sub_1D9177D2C();

  (*(v1 + 8))(v4, v0);
  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7060, &qword_1D91964C8);
  sub_1D8CF48EC(&qword_1ECAB04C8, &qword_1ECAB7060, &qword_1D91964C8);
  v13 = sub_1D917796C();

  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7068, &qword_1D91964D0);
  sub_1D8CF48EC(&qword_1ECAB0AB8, &qword_1ECAB7068, &qword_1D91964D0);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B40, &qword_1ECAB7050, &qword_1D91964B8);
  v14 = v18;
  v15 = sub_1D9177B1C();
  (*(v5 + 8))(v8, v14);
  return v15;
}

uint64_t NSUserDefaults.codablePublisher<A>(forKey:decoding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a1;
  v30 = a7;
  v28 = a5;
  v12 = sub_1D91791BC();
  sub_1D917781C();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1D91775AC();
  v32 = *(v13 - 8);
  v14 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v18 = v29;
  v19 = v30;
  v17[4] = a6;
  v17[5] = v19;
  v17[6] = v7;
  v17[7] = v18;
  v17[8] = a2;
  v34 = v19;
  v20 = v7;

  v21 = swift_getWitnessTable();
  v22 = NSUserDefaults.queryPublisher<A>(_:)(sub_1D8F3C0A0, v17, v12, v21);

  v33 = v22;
  v23 = swift_allocObject();
  v24 = v28;
  v23[2] = a4;
  v23[3] = v24;
  v23[4] = a6;
  v23[5] = v19;
  sub_1D9177B2C();

  swift_getWitnessTable();
  v25 = sub_1D9177B1C();
  (*(v32 + 8))(v16, v13);
  return v25;
}

uint64_t NSUserDefaults.stringPublisher(forKey:)(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v47 - v7;
  v9 = sub_1D9178FBC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EB8, &qword_1D9196340);
  v15 = *(v14 - 8);
  v51 = v14;
  v52 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EF8, &qword_1D9196380);
  v56 = *(v58 - 8);
  v19 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v48 = &v47 - v20;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F00, &qword_1D9196388);
  v57 = *(v59 - 8);
  v21 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v54 = &v47 - v22;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F08, &qword_1D9196390);
  v53 = *(v55 - 8);
  v23 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v25 = &v47 - v24;
  v26 = swift_allocObject();
  v26[2] = v2;
  v26[3] = a1;
  v49 = a2;
  v26[4] = a2;
  v27 = objc_opt_self();

  v47 = v2;
  v28 = [v27 defaultCenter];
  v29 = *MEMORY[0x1E696AA70];
  sub_1D9178FCC();

  sub_1D8CFD888();
  v30 = sub_1D9178E1C();
  v60 = v30;
  v31 = sub_1D9178DBC();
  (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
  sub_1D8D11A5C(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
  sub_1D8D11A5C(&qword_1EDCD0980, sub_1D8CFD888);
  sub_1D9177CEC();
  sub_1D8D2210C(v8);

  (*(v10 + 8))(v13, v9);
  v32 = v48;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1D8F3C0D8;
  *(v33 + 24) = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  sub_1D8CF48EC(&qword_1EDCD0BC8, &qword_1ECAB6EB8, &qword_1D9196340);
  v34 = v51;
  sub_1D9177B9C();

  (*(v52 + 8))(v18, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44F0, &qword_1D9189F90);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D9189080;
  v36 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v37 = [v47 stringForKey_];

  if (v37)
  {
    v38 = sub_1D917820C();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  *(v35 + 32) = v38;
  *(v35 + 40) = v40;
  sub_1D8CF48EC(&qword_1ECAB6F10, &qword_1ECAB6EF8, &qword_1D9196380);
  v41 = v54;
  v42 = v58;
  sub_1D9177CCC();

  (*(v56 + 8))(v32, v42);
  sub_1D8CF48EC(&qword_1ECAB6F18, &qword_1ECAB6F00, &qword_1D9196388);
  sub_1D8F3C124();
  v43 = v59;
  sub_1D9177D6C();
  (*(v57 + 8))(v41, v43);
  v44 = sub_1D8F3A6B0();
  (*(v53 + 8))(v25, v55);
  v60 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F28, &qword_1D91B9FC0);
  sub_1D8CF48EC(&qword_1EDCD0B98, &qword_1ECAB6F28, &qword_1D91B9FC0);
  v45 = sub_1D9177B1C();

  return v45;
}

void sub_1D8F3B8D0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [a1 stringForKey_];

  if (v5)
  {
    v6 = sub_1D917820C();
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

uint64_t NSUserDefaults.timestampPublisher(forKey:)(void *a1, void *a2)
{
  v44[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v44 - v7;
  v9 = sub_1D9178FBC();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EB8, &qword_1D9196340);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v44 - v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F30, &qword_1D9196398);
  v53 = *(v50 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v20 = v44 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F38, &qword_1D91963A0);
  v54 = *(v52 - 8);
  v21 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v46 = v44 - v22;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F40, &qword_1D91963A8);
  v49 = *(v51 - 8);
  v23 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v25 = v44 - v24;
  v26 = swift_allocObject();
  v26[2] = v2;
  v26[3] = a1;
  v44[1] = a2;
  v26[4] = a2;
  v27 = objc_opt_self();

  v44[0] = v2;
  v28 = [v27 defaultCenter];
  v29 = *MEMORY[0x1E696AA70];
  sub_1D9178FCC();

  sub_1D8CFD888();
  v30 = sub_1D9178E1C();
  v55 = v30;
  v31 = sub_1D9178DBC();
  (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
  sub_1D8D11A5C(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
  sub_1D8D11A5C(&qword_1EDCD0980, sub_1D8CFD888);
  sub_1D9177CEC();
  sub_1D8D2210C(v8);

  (*(v45 + 8))(v12, v9);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1D8F3C1A0;
  *(v32 + 24) = v26;
  sub_1D8CF48EC(&qword_1EDCD0BC8, &qword_1ECAB6EB8, &qword_1D9196340);

  v33 = v47;
  sub_1D9177B9C();

  (*(v48 + 8))(v17, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB640, &qword_1D9192060);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D9189080;
  v35 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v44[0] doubleForKey_];
  v37 = v36;

  *(v34 + 32) = v37;
  sub_1D8CF48EC(&qword_1ECAB0718, &qword_1ECAB6F30, &qword_1D9196398);
  v38 = v46;
  v39 = v50;
  sub_1D9177CCC();

  (*(v53 + 8))(v20, v39);
  sub_1D8CF48EC(&qword_1ECAB0AA0, &qword_1ECAB6F38, &qword_1D91963A0);
  v40 = v52;
  sub_1D9177D6C();
  (*(v54 + 8))(v38, v40);
  v41 = sub_1D8F3AACC();
  (*(v49 + 8))(v25, v51);
  v55 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F48, &qword_1D91963B0);
  sub_1D8CF48EC(&qword_1ECAB0358, &qword_1ECAB6F48, &qword_1D91963B0);
  v42 = sub_1D9177B1C();

  return v42;
}

uint64_t sub_1D8F3C0A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[2];
  v7 = v1[6];
  return NSUserDefaults.codable<A>(_:for:)(v4, v5, v6, a1);
}

void sub_1D8F3C0D8(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1D8F3B8D0(*(v1 + 16), a1);
}

double sub_1D8F3C0E4@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(&v6);
  result = *&v6;
  *a1 = v6;
  return result;
}

unint64_t sub_1D8F3C124()
{
  result = qword_1ECAB6F20;
  if (!qword_1ECAB6F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB5900, &unk_1D9191B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6F20);
  }

  return result;
}

void sub_1D8F3C1A0(void *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v4 doubleForKey_];
  v8 = v7;

  *a1 = v8;
}

uint64_t sub_1D8F3C200@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D8F3C20C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_1D8F3C278(v3, v2);
}

double sub_1D8F3C21C@<D0>(double *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(&v6);
  result = v6;
  *a1 = v6;
  return result;
}

uint64_t sub_1D8F3C25C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_1D8F3C278(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1D8F3C290(uint64_t a1, char a2)
{
  v3 = a1;
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1D917935C();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (v4)
  {
    v48 = MEMORY[0x1E69E7CC0];
    sub_1D8D9AF48(0, v4 & ~(v4 >> 63), 0);
    v5 = v48;
    if (v42)
    {
      v6 = sub_1D917930C();
    }

    else
    {
      v8 = -1 << *(v3 + 32);
      v6 = sub_1D91792DC();
      v7 = *(v3 + 36);
    }

    v45 = v6;
    v46 = v7;
    v47 = v42 != 0;
    if ((v4 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v38 = v3 + 56;
      v36 = v2;
      v37 = v3 + 64;
      v39 = v4;
      v40 = v3;
      while (v9 < v4)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_38;
        }

        v12 = v45;
        v13 = v47;
        v43 = v46;
        sub_1D8D9B074(v45, v46, v47, v3);
        v15 = v14;
        v16 = [v14 entity];
        v17 = [v16 name];

        if (v17)
        {
          v18 = sub_1D917820C();
          v20 = v19;
        }

        else
        {
          v18 = 0;
          v20 = 0xE000000000000000;
        }

        v21 = [v15 objectID];

        v22 = v5;
        v48 = v5;
        v23 = *(v5 + 16);
        v24 = *(v22 + 24);
        if (v23 >= v24 >> 1)
        {
          sub_1D8D9AF48((v24 > 1), v23 + 1, 1);
          v22 = v48;
        }

        *(v22 + 16) = v23 + 1;
        v25 = v22 + 32 * v23;
        *(v25 + 32) = a2;
        *(v25 + 40) = v18;
        *(v25 + 48) = v20;
        *(v25 + 56) = v21;
        if (v42)
        {
          v3 = v40;
          if (!v13)
          {
            goto LABEL_43;
          }

          v5 = v22;
          if (sub_1D917932C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v4 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71D8, &qword_1D91967E0);
          v10 = sub_1D9178AFC();
          sub_1D91793AC();
          v10(v44, 0);
          if (v9 == v39)
          {
LABEL_35:
            sub_1D8D9B144(v45, v46, v47);
            return;
          }
        }

        else
        {
          v3 = v40;
          if (v13)
          {
            goto LABEL_44;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v26 = 1 << *(v40 + 32);
          if (v12 >= v26)
          {
            goto LABEL_39;
          }

          v5 = v22;
          v27 = v12 >> 6;
          v28 = *(v38 + 8 * (v12 >> 6));
          if (((v28 >> v12) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(v40 + 36) != v43)
          {
            goto LABEL_41;
          }

          v29 = v28 & (-2 << (v12 & 0x3F));
          if (v29)
          {
            v26 = __clz(__rbit64(v29)) | v12 & 0x7FFFFFFFFFFFFFC0;
            v4 = v39;
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v37 + 8 * v27);
            v4 = v39;
            while (v31 < (v26 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                sub_1D8D9B144(v12, v43, 0);
                v26 = __clz(__rbit64(v33)) + v30;
                goto LABEL_34;
              }
            }

            sub_1D8D9B144(v12, v43, 0);
          }

LABEL_34:
          v35 = *(v40 + 36);
          v45 = v26;
          v46 = v35;
          v47 = 0;
          if (v9 == v4)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

void DatabasePropertyPublisher.init(objectsToObserve:entitiesToObserve:notificationCenter:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71B8, &qword_1D91965F0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = a3;
  a4[3] = sub_1D91778DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71C0, &unk_1D91965F8);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = MEMORY[0x1E69E7CD0];
  a4[4] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;

  *(v11 + 16) = 0;
  a4[5] = v11;
}

void sub_1D8F3C754(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  os_unfair_lock_lock(v3 + 6);
  sub_1D8F3D0C0(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
  v4 = *(a2 + 40);
  os_unfair_lock_lock((v4 + 24));
  sub_1D8F3D0D8((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
}

void sub_1D8F3C7D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 6);
  sub_1D8F3D088(&v2[4]);
  os_unfair_lock_unlock(v2 + 6);
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  sub_1D8F3D0A4((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_1D8F3C84C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  v5 = *(v4 + 16);

  if (!v5)
  {
    if (*a1)
    {
      return sub_1D917785C();
    }
  }

  return result;
}

void sub_1D8F3C8B8(uint64_t a1)
{
  v3 = *(*(sub_1D9176EAC() - 8) + 80);

  sub_1D8F3C754(a1, v1 + 16);
}

void sub_1D8F3C92C()
{
  v1 = *(*(sub_1D9176EAC() - 8) + 80);

  sub_1D8F3C7D0(v0 + 16);
}

uint64_t sub_1D8F3C990(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - v5;
  sub_1D910EDB8(a2, &v8 - v5);
  return sub_1D8D798AC(v6);
}

uint64_t DatabaseEntityChangeType.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t DatabaseEntityChange.entityName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

unint64_t *sub_1D8F3CAF8(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1D8D461A0(a4, &v10);
    sub_1D8F3CBA4(v7, a2, a3, a4);
    v9 = v8;

    sub_1D8D9AE34(a4);
    sub_1D8D9AE34(a4);
    return v9;
  }

  return result;
}

void sub_1D8F3CBA4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v46 = 0;
  v6 = 0;
  v47 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v48 = (v7 + 63) >> 6;
  while (v9)
  {
    v10 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v13 = v10 | (v6 << 6);
    v14 = *(*(v5 + 48) + 8 * v13);
    v15 = [v14 entity];
    v16 = [v15 name];

    if (!v16)
    {
      goto LABEL_25;
    }

    v53 = v14;
    v51 = v13;
    v17 = v9;
    v18 = v4[1];
    v19 = sub_1D917820C();
    v21 = v20;

    if (*(v18 + 16))
    {
      v22 = *(v18 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v23 = sub_1D9179E1C();
      v24 = -1 << *(v18 + 32);
      v25 = v23 & ~v24;
      if ((*(v18 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = ~v24;
        while (1)
        {
          v27 = (*(v18 + 48) + 16 * v25);
          v28 = *v27 == v19 && v27[1] == v21;
          if (v28 || (sub_1D9179ACC() & 1) != 0)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v18 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v4 = a4;
        v5 = a3;
        v9 = v17;
        v13 = v51;
        v14 = v53;
LABEL_25:
        v29 = v4;
        v30 = *v4;
        if (v30)
        {
          v31 = [v14 objectID];
          if ((v30 & 0xC000000000000001) != 0)
          {
            v32 = v31;
            v33 = sub_1D917939C();

            v4 = v29;
            if (v33)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v34 = v31;
            v54 = v14;
            if (*(v30 + 16))
            {
              v52 = v13;
              v43 = v9;
              sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
              v35 = *(v30 + 40);
              v14 = v34;
              v36 = sub_1D917913C();
              v37 = -1 << *(v30 + 32);
              v38 = v36 & ~v37;
              if ((*(v30 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
              {
                v39 = ~v37;
                while (1)
                {
                  v40 = *(*(v30 + 48) + 8 * v38);
                  v41 = sub_1D917914C();

                  if (v41)
                  {
                    break;
                  }

                  v38 = (v38 + 1) & v39;
                  if (((*(v30 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
                  {
                    goto LABEL_34;
                  }
                }

                v4 = a4;
                v5 = a3;
                v9 = v43;
                v13 = v52;
                goto LABEL_38;
              }

LABEL_34:

              v4 = a4;
              v5 = a3;
              v9 = v43;
            }

            else
            {

              v4 = v29;
            }
          }
        }

        else
        {
          v4 = v29;
LABEL_38:

LABEL_39:
          *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          if (__OFADD__(v46++, 1))
          {
            __break(1u);
LABEL_42:

            sub_1D8D9ADFC(a1, a2, v46, v5);
            return;
          }
        }
      }

      else
      {
LABEL_22:

        v4 = a4;
        v5 = a3;
        v9 = v17;
      }
    }

    else
    {

      v9 = v17;
    }
  }

  v11 = v6;
  while (1)
  {
    v6 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v6 >= v48)
    {
      goto LABEL_42;
    }

    v12 = *(v47 + 8 * v6);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v9 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_1D8F3CF9C()
{
  result = qword_1ECAB71D0;
  if (!qword_1ECAB71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB71D0);
  }

  return result;
}

uint64_t sub_1D8F3D000(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8F3D048(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id NSFetchRequest<>.init(episodeListSettings:)(__int128 *a1)
{
  v2 = a1[3];
  v14[2] = a1[2];
  v14[3] = v2;
  v15[0] = a1[4];
  *(v15 + 13) = *(a1 + 77);
  v3 = a1[1];
  v14[0] = *a1;
  v14[1] = v3;
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEntityName_];
  v11 = a1[2];
  v12 = a1[3];
  *v13 = a1[4];
  *&v13[13] = *(a1 + 77);
  v9 = *a1;
  v10 = a1[1];
  v5 = v4;
  v6 = EpisodeListSettings.predicate.getter();
  [v5 setPredicate_];

  EpisodeSortType.descriptors.getter(SBYTE1(v15[0]));
  sub_1D8D28BC8();
  v7 = sub_1D91785DC();
  sub_1D8F3D204(v14);

  [v5 setSortDescriptors_];

  return v5;
}

uint64_t static NSManagedObject.predicateForObjects(with:)(uint64_t a1)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189080;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E8, qword_1D91BE010);
  *(v2 + 64) = sub_1D8F3D318();
  *(v2 + 32) = a1;

  return sub_1D9178C8C();
}

unint64_t sub_1D8F3D318()
{
  result = qword_1ECAAFED0;
  if (!qword_1ECAAFED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB71E8, qword_1D91BE010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFED0);
  }

  return result;
}

id sub_1D8F3D37C()
{
  sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  v0 = sub_1D91785FC();
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E8, qword_1D91BE010);
  *(v1 + 64) = sub_1D8F3D318();
  *(v1 + 32) = v0;
  v2 = sub_1D9178C8C();

  return v2;
}

uint64_t static Array.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_1D91786FC();
  return sub_1D91786BC();
}

uint64_t sub_1D8F3D590(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 16);
  if (sub_1D917811C() & 1) != 0 || (sub_1D917812C())
  {
    return 0;
  }

  a3();
  sub_1D917967C();
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  sub_1D917946C();
  v11 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v11);

  MEMORY[0x1DA7298F0](0xD00000000000001ELL, 0x80000001D91CD6D0);
  MEMORY[0x1DA7298F0](a5, a6);
  MEMORY[0x1DA7298F0](0xD00000000000002ELL, 0x80000001D91CD6F0);
  result = sub_1D91796DC();
  __break(1u);
  return result;
}

unint64_t sub_1D8F3D710()
{
  result = qword_1ECAB71F0;
  if (!qword_1ECAB71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB71F0);
  }

  return result;
}

id static NSBundle.podcastsFoundation.getter()
{
  if (qword_1ECAAFC78 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAAFC80;

  return v1;
}

double CGSize.init(width:proportionalTo:)(double result, double a2)
{
  if (result <= 0.0)
  {
    return a2;
  }

  return result;
}

uint64_t Data.init(contentsOf:options:)(uint64_t a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D91774AC();
  sub_1D9176AEC();

  v7 = sub_1D9176C3C();
  v8 = sub_1D91774DC();
  (*(*(v8 - 8) + 8))(a1, v8);
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t Data.write(to:options:)()
{
  v0 = sub_1D9176C2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D91774AC();
  sub_1D9176AEC();

  sub_1D9176CAC();
  return (*(v1 + 8))(v4, v0);
}

Swift::String __swiftcall Date.verboseDisplayString()()
{
  v0 = sub_1D8F3DA9C(&selRef_verboseDisplayString);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.verboseDisplayStringWithoutTime()()
{
  v0 = sub_1D8F3DA9C(&selRef_verboseDisplayStringWithoutTime);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.lessVerboseDisplayStringWithoutTime()()
{
  v0 = sub_1D8F3DA9C(&selRef_lessVerboseDisplayStringWithoutTime);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.verboseDisplayStringWithoutTimeAndCurrentYear()()
{
  v0 = sub_1D8F3DA9C(&selRef_verboseDisplayStringWithoutTimeAndCurrentYear);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.lessVerboseDisplayStringWithoutTimeAndCurrentYear()()
{
  v0 = sub_1D8F3DA9C(&selRef_lessVerboseDisplayStringWithoutTimeAndCurrentYear);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1D8F3DA9C(SEL *a1)
{
  v2 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  v3 = [v2 *a1];

  v4 = sub_1D917820C();
  return v4;
}

uint64_t Date.yearString.getter()
{
  v0 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  v1 = [v0 yearString];

  v2 = sub_1D917820C();
  return v2;
}

uint64_t sub_1D8F3DB88()
{
  v10 = sub_1D9178E0C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D8CFD888();
  sub_1D9177E5C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1ECAAFD90 = result;
  return result;
}

uint64_t sub_1D8F3DDD8()
{
  v10 = sub_1D9178E0C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D8CFD888();
  sub_1D9177E5C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1ECAB71F8 = result;
  return result;
}

uint64_t sub_1D8F3E04C()
{
  v10 = sub_1D9178E0C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D8CFD888();
  sub_1D9177E5C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1ECAB7200 = result;
  return result;
}

uint64_t sub_1D8F3E2C0()
{
  v10 = sub_1D9178E0C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D8CFD888();
  sub_1D9177E6C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1EDCD5B40 = result;
  return result;
}

id SharedDispatchQueues.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharedDispatchQueues.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedDispatchQueues();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SharedDispatchQueues.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedDispatchQueues();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8F3E638(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6D888](a1, a2, WitnessTable);
}

uint64_t sub_1D8F3E698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6DAB0](a1, a2, WitnessTable, a3);
}

uint64_t static OS_dispatch_source.memoryPressurePublisher()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7210, &qword_1D91968D8);
  v32 = *(v0 - 8);
  v33 = v0;
  v1 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v31 = &v28 - v2;
  v3 = sub_1D9177E0C();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D9177E9C();
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9178ECC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9178EBC();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7218, qword_1D91968E0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1D917795C();
  sub_1D8F3EC50();
  sub_1D9178EAC();
  if (qword_1EDCD09A8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D9178EDC();
  (*(v12 + 8))(v15, v11);
  swift_getObjectType();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v19;
  aBlock[4] = sub_1D8F3EDD8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_35;
  v23 = _Block_copy(aBlock);

  sub_1D9177E4C();
  sub_1D8CF4D08();
  sub_1D9178EFC();
  _Block_release(v23);
  (*(v29 + 8))(v6, v30);
  (*(v7 + 8))(v10, v28);

  sub_1D9178F3C();
  aBlock[0] = v19;
  *(swift_allocObject() + 16) = v20;
  sub_1D8CF48EC(&qword_1ECAB7288, &unk_1ECAB7218, qword_1D91968E0);
  swift_unknownObjectRetain_n();
  v24 = v31;
  sub_1D9177B3C();
  swift_unknownObjectRelease();

  sub_1D8CF48EC(&qword_1ECAB7290, &qword_1ECAB7210, &qword_1D91968D8);
  v25 = v33;
  v26 = sub_1D9177B1C();
  swift_unknownObjectRelease();

  (*(v32 + 8))(v24, v25);
  return v26;
}

unint64_t sub_1D8F3EC50()
{
  result = qword_1EDCD76E0;
  if (!qword_1EDCD76E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD76E0);
  }

  return result;
}

uint64_t sub_1D8F3EC9C()
{
  v0 = sub_1D9178ECC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if (sub_1D9178EEC())
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1D91790CC();
      sub_1D917790C();
      swift_unknownObjectRelease();
      return (*(v1 + 8))(v4, v0);
    }
  }

  return result;
}

uint64_t sub_1D8F3EDD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D8F3EC9C();
}

uint64_t sub_1D8F3EDE4()
{
  swift_getObjectType();
  result = sub_1D9178EEC();
  if ((result & 1) == 0)
  {
    return sub_1D9178F2C();
  }

  return result;
}

uint64_t static NSFileManager.homeDirectoryPath(forUser:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v4 = NSHomeDirectoryForUser(v3);

    if (v4)
    {
      v5 = sub_1D917820C();
      v7 = v6;

      MEMORY[0x1DA728AB0](v5, v7);
      v8 = sub_1D91774DC();
      (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    }

    v19 = sub_1D91774DC();
    v15 = *(*(v19 - 8) + 56);
    v16 = v19;
    v17 = a2;
    v18 = 1;
  }

  else
  {
    v10 = NSHomeDirectory();
    v11 = sub_1D917820C();
    v13 = v12;

    MEMORY[0x1DA728AB0](v11, v13);
    v14 = sub_1D91774DC();
    v15 = *(*(v14 - 8) + 56);
    v16 = v14;
    v17 = a2;
    v18 = 0;
  }

  return v15(v17, v18, 1, v16);
}

void sub_1D8F3EFE0(uint64_t (*a1)(void))
{
  v1 = a1();
  sub_1D917820C();

  JUMPOUT(0x1DA728AB0);
}

uint64_t static NSFileManager.uniqueTemporaryDirectoryPath.getter()
{
  v0 = sub_1D9176EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D91774DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = NSTemporaryDirectory();
  v8 = sub_1D917820C();
  v10 = v9;

  MEMORY[0x1DA728AB0](v8, v10);
  sub_1D9176E9C();
  sub_1D9176E5C();
  (*(v1 + 8))(v4, v0);
  return sub_1D91774BC();
}

id NSFileManager.directoryExists(at:)()
{
  v1 = swift_slowAlloc();
  sub_1D91774AC();
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v3 = [v0 fileExistsAtPath:v2 isDirectory:v1];

  if (v3)
  {
    v3 = *v1;
  }

  MEMORY[0x1DA72CB90](v1, -1, -1);
  return v3;
}

uint64_t NSFileManager.fileExists(at:)()
{
  v1 = swift_slowAlloc();
  sub_1D91774AC();
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v3 = [v0 fileExistsAtPath:v2 isDirectory:v1];

  if (v3)
  {
    LOBYTE(v3) = *v1 ^ 1;
  }

  MEMORY[0x1DA72CB90](v1, -1, -1);
  return v3 & 1;
}

id sub_1D8F3F310(uint64_t a1, SEL *a2)
{
  sub_1D91774AC();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v5 = [v2 *a2];

  return v5;
}

id NSFileManager.contentsOfDirectory(at:)(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  sub_1D91774AC();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v14[0] = 0;
  v5 = [v2 contentsOfDirectoryAtPath:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1D91785FC();
    v8 = v6;

    MEMORY[0x1EEE9AC00](v9);
    v13[2] = a1;
    v10 = sub_1D8E7EB44(sub_1D8F3F5C4, v13, v7);
  }

  else
  {
    v10 = v14[0];
    sub_1D9176A6C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1D8F3F4D0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1D91774DC();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v9 = *a1;
  v8 = a1[1];
  (*(v10 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);

  return sub_1D91774BC();
}

uint64_t NSFileManager.DirectoryContentsIterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D91774DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v1)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_9:
    sub_1D8D64450(&v14);
    goto LABEL_10;
  }

  if ([*v1 nextObject])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v10 = 1;
    return (*(v4 + 56))(a1, v10, 1, v3);
  }

  v9 = type metadata accessor for NSFileManager.DirectoryContentsIterator(0);
  (*(v4 + 16))(v8, v1 + *(v9 + 20), v3);
  sub_1D91774BC();
  v10 = 0;
  return (*(v4 + 56))(a1, v10, 1, v3);
}

uint64_t sub_1D8F3F7E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1D91774DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void NSFileManager.DirectoryContents.makeIterator()(char *a1@<X8>)
{
  v3 = *(type metadata accessor for NSFileManager.DirectoryContents(0) + 20);
  v4 = *(type metadata accessor for NSFileManager.DirectoryContentsIterator(0) + 20);
  v5 = sub_1D91774DC();
  (*(*(v5 - 8) + 16))(&a1[v4], v1 + v3, v5);
  v6 = *v1;
  sub_1D91774AC();
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v8 = [v6 enumeratorAtPath_];

  *a1 = v8;
}

uint64_t sub_1D8F3F950@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 20);
  v6 = *(type metadata accessor for NSFileManager.DirectoryContentsIterator(0) + 20);
  v7 = sub_1D91774DC();
  (*(*(v7 - 8) + 16))(&a2[v6], v3 + v5, v7);
  v8 = *v3;
  sub_1D91774AC();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v10 = [v8 enumeratorAtPath_];

  *a2 = v10;
  return sub_1D8F40AB8(v3, type metadata accessor for NSFileManager.DirectoryContents);
}

uint64_t sub_1D8F3FA44()
{
  v1 = sub_1D8F4056C(v0);
  sub_1D8F40AB8(v0, type metadata accessor for NSFileManager.DirectoryContents);
  return v1;
}

id NSFileManager.directoryContents(at:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = swift_slowAlloc();
  sub_1D91774AC();
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6 = [v14 fileExistsAtPath:v5 isDirectory:v4];

  if (v6)
  {
    v7 = *v4;
    MEMORY[0x1DA72CB90](v4, -1, -1);
    if (v7 == 1)
    {
      v8 = type metadata accessor for NSFileManager.DirectoryContents(0);
      v9 = *(v8 + 20);
      v10 = sub_1D91774DC();
      (*(*(v10 - 8) + 16))(&a2[v9], a1, v10);
      *a2 = v14;
      (*(*(v8 - 8) + 56))(a2, 0, 1, v8);

      return v14;
    }
  }

  else
  {
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }

  v12 = type metadata accessor for NSFileManager.DirectoryContents(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, 1, 1, v12);
}

id NSFileManager.createDirectory(at:withIntermediateDirectories:attributes:)(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v12[1] = *MEMORY[0x1E69E9840];
  sub_1D91774AC();
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  if (a3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1D8F40354(&qword_1ECAAFD58, type metadata accessor for FileAttributeKey);
    a3 = sub_1D917802C();
  }

  v12[0] = 0;
  v8 = [v4 createDirectoryAtPath:v7 withIntermediateDirectories:a2 & 1 attributes:a3 error:v12];

  if (v8)
  {
    result = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_1D9176A6C();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

id NSFileManager.createFile(at:contents:attributes:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  sub_1D91774AC();
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  if (a3 >> 60 == 15)
  {
    v9 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  if (a4)
  {
LABEL_5:
    type metadata accessor for FileAttributeKey(0);
    sub_1D8F40354(&qword_1ECAAFD58, type metadata accessor for FileAttributeKey);
    a4 = sub_1D917802C();
  }

LABEL_6:
  v10 = [v5 createFileAtPath:v8 contents:v9 attributes:a4];

  return v10;
}

id NSFileManager.removeItem(at:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  sub_1D91774AC();
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6[0] = 0;
  v2 = [v0 removeItemAtPath:v1 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1D9176A6C();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id NSFileManager.copyItem(at:to:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D8F400FC(a1, a2, &selRef_copyItemAtPath_toPath_error_);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id NSFileManager.moveItem(at:to:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D8F400FC(a1, a2, &selRef_moveItemAtPath_toPath_error_);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id NSFileManager.createHardLink(at:to:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D8F400FC(a1, a2, &selRef_linkItemAtPath_toPath_error_);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id NSFileManager.createSymbolicLink(at:to:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D8F400FC(a1, a2, &selRef_createSymbolicLinkAtPath_withDestinationPath_error_);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1D8F400FC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  sub_1D91774AC();
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  sub_1D91774AC();
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v10[0] = 0;
  LODWORD(a3) = [v3 *a3];

  if (a3)
  {
    result = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1D9176A6C();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NSFileManager.destinationOfSymbolicLink(at:)()
{
  v11[1] = *MEMORY[0x1E69E9840];
  sub_1D91774AC();
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v11[0] = 0;
  v2 = [v0 destinationOfSymbolicLinkAtPath:v1 error:v11];

  v3 = v11[0];
  if (v2)
  {
    v4 = sub_1D917820C();
    v6 = v5;
    v7 = v3;

    result = MEMORY[0x1DA728AB0](v4, v6);
  }

  else
  {
    v9 = v11[0];
    sub_1D9176A6C();

    result = swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8F40354(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D8F403C4()
{
  sub_1D8F40448();
  if (v0 <= 0x3F)
  {
    sub_1D91774DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8F40448()
{
  if (!qword_1ECAB72B0)
  {
    sub_1D8CF2154(255, &qword_1ECAB72B8, 0x1E696ABA8);
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB72B0);
    }
  }
}

uint64_t sub_1D8F404D8()
{
  result = sub_1D8CF2154(319, &qword_1EDCD0A10, 0x1E696AC08);
  if (v1 <= 0x3F)
  {
    result = sub_1D91774DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8F4056C(uint64_t a1)
{
  v2 = sub_1D91774DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v53 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v53 - v10;
  v11 = type metadata accessor for NSFileManager.DirectoryContents(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for NSFileManager.DirectoryContentsIterator(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v3 + 80);
  sub_1D8F40A54(a1, v15);
  v22 = *(v12 + 28);
  v23 = *(v17 + 28);
  v24 = *(v3 + 16);
  v57 = v3 + 16;
  v58 = v23;
  v56 = v24;
  v24(&v20[v23], v15 + v22, v2);
  v25 = *v15;
  sub_1D91774AC();
  v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v27 = [v25 enumeratorAtPath_];

  v60 = v20;
  *v20 = v27;
  sub_1D8F40AB8(v15, type metadata accessor for NSFileManager.DirectoryContents);
  v59 = v27;
  v28 = 0;
  if (v27)
  {
    v53 = v21;
    v29 = MEMORY[0x1E69E7CC0];
    v55 = (v21 + 32) & ~v21;
    v30 = MEMORY[0x1E69E7CC0] + v55;
    v61 = (v3 + 32);
    v31 = v54;
    while (1)
    {
      if ([v59 nextObject])
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v63 = 0u;
        v64 = 0u;
      }

      v65 = v63;
      v66 = v64;
      if (!*(&v64 + 1))
      {
        break;
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_32;
      }

      v56(v6, &v60[v58], v2);
      sub_1D91774BC();
      v32 = *v61;
      result = (*v61)(v62, v31, v2);
      if (v28)
      {
        v34 = v29;
        v35 = __OFSUB__(v28--, 1);
        if (v35)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v36 = v29[3];
        if (((v36 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_37;
        }

        v37 = v6;
        v38 = v36 & 0xFFFFFFFFFFFFFFFELL;
        if (v38 <= 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46F0, &qword_1D918A110);
        v40 = v3;
        v41 = *(v3 + 72);
        v42 = v55;
        v34 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v34);
        if (!v41)
        {
          goto LABEL_38;
        }

        v43 = result - v42;
        if (result - v42 == 0x8000000000000000 && v41 == -1)
        {
          goto LABEL_39;
        }

        v45 = v43 / v41;
        v34[2] = v39;
        v34[3] = 2 * (v43 / v41);
        v46 = v34 + v42;
        v47 = v29[3] >> 1;
        v48 = v47 * v41;
        if (v29[2])
        {
          if (v34 < v29 || v46 >= v29 + v55 + v48)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v34 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29[2] = 0;
        }

        v30 = &v46[v48];
        v49 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - v47;

        v3 = v40;
        v6 = v37;
        v31 = v54;
        v35 = __OFSUB__(v49, 1);
        v28 = v49 - 1;
        if (v35)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      v32(v30, v62, v2);
      v30 += *(v3 + 72);
      v29 = v34;
    }
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
    v29 = MEMORY[0x1E69E7CC0];
  }

  sub_1D8D64450(&v65);
LABEL_32:
  result = sub_1D8F40AB8(v60, type metadata accessor for NSFileManager.DirectoryContentsIterator);
  v50 = v29[3];
  if (v50 < 2)
  {
    return v29;
  }

  v51 = v50 >> 1;
  v35 = __OFSUB__(v51, v28);
  v52 = v51 - v28;
  if (!v35)
  {
    v29[2] = v52;
    return v29;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D8F40A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSFileManager.DirectoryContents(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8F40AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8F40B18()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1D8F40CA8;
  }

  else
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 48);

    v4 = sub_1D8F40C40;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8F40C40()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_1D8F40CA8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4(0);
}

uint64_t sub_1D8F40D24()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D8F40E58()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1D8F40FA8()
{
  if (!sub_1D9179A7C())
  {
    swift_allocError();
  }

  v1 = v0[9];
  v2 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8F41078()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_1D8CF8188(&unk_1ECAAFD00, MEMORY[0x1E6969EF8]);
  v1 = *(MEMORY[0x1E69E85B0] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1D8D7B788;
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  return MEMORY[0x1EEE6D8D0](v4, 0, 0);
}

uint64_t sub_1D8F41170()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D8F41224()
{
  if (!sub_1D9179A7C())
  {
    swift_allocError();
  }

  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8F412E0()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1D8F414DC;
  }

  else
  {
    v3 = sub_1D8F413F4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8F413F4()
{
  v1 = v0[16];

  sub_1D8CF48EC(&qword_1ECAAFE98, &qword_1ECAB72D8, &qword_1D9196A58);
  v2 = *(MEMORY[0x1E69E85B0] + 4);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1D8D60E3C;
  v4 = v0[14];
  v5 = v0[12];

  return MEMORY[0x1EEE6D8D0](v0 + 2, 0, 0);
}

uint64_t sub_1D8F414DC()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  (*(v3 + 8))(v2, v4);
  v5 = v0[18];
  v6 = v0[14];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D8F4157C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_1D8F417C8;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_1D8F41698;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D8F41698()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (sub_1D91789BC())
    {
      if (v2)
      {
        swift_willThrow();
      }

      v4 = *(v0 + 8);

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = *(MEMORY[0x1E69E8708] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB72D0, &qword_1D9196A50);
  *v7 = v0;
  v7[1] = sub_1D8F4157C;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 96, v11, v9, v8);
}

uint64_t sub_1D8F417C8()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  v2 = v0[7];
  v3 = v0[8];
  if (sub_1D91789BC())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[9] = v1;
    v6 = *(MEMORY[0x1E69E8708] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB72D0, &qword_1D9196A50);
    *v7 = v0;
    v7[1] = sub_1D8F4157C;
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v11, v9, v8);
  }
}

uint64_t DownloadableURLOptions.urlRawString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString + 8);

  return v1;
}

uint64_t DownloadableURLOptions.url.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString + 8);
  return sub_1D9176BFC();
}

uint64_t DownloadableURLOptions.nonAppInitiated.getter()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DownloadableURLOptions.nonAppInitiated.setter(char a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DownloadableURLOptions.__allocating_init(_:nonAppInitiated:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  sub_1D9176ACC();
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v7 = [v5 init:v6 nonAppInitiated:a2 & 1];

  v8 = sub_1D9176C2C();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id DownloadableURLOptions.init(_:nonAppInitiated:)(uint64_t a1, char a2)
{
  v3 = v2;
  sub_1D9176ACC();
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v7 = [v3 init:v6 nonAppInitiated:a2 & 1];

  v8 = sub_1D9176C2C();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}