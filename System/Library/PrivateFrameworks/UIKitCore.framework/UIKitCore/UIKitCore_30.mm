uint64_t sub_188E59F5C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_188E59FCC()
{
  result = qword_1EA930E18;
  if (!qword_1EA930E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930E18);
  }

  return result;
}

id sub_188E5A020()
{
  v0 = sub_18A4A5FA8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [result prototypeSettingsEnabled];

    sub_18A4A4BB8();
    if (v3)
    {
      type metadata accessor for NavigationBarPlatterContainer.Settings();
      sub_18A4A4B68();
      sub_18A4A4C68();
    }

    else
    {
      sub_18A4A5F78();
      sub_18A4A4BA8();
      sub_18A4A4B88();
      sub_18A4A4BD8();
      sub_18A4A4BC8();
      type metadata accessor for NavigationBarPlatterContainer.Settings();
      sub_18A4A4B68();
      sub_18A4A5F78();
      sub_18A4A4AC8();
      sub_18A4A5F78();
      sub_18A4A4B58();
      sub_18A4A4B08();
      sub_18A4A5F78();
      sub_18A4A4B28();
      sub_18A4A4AE8();
      sub_18A4A5F78();
      sub_18A4A4B38();
      sub_18A4A4C68();
      sub_18A4A5F78();
      sub_18A4A4C38();
      sub_18A4A4BF8();
      sub_18A4A5F78();
      sub_18A4A4C58();
      sub_18A4A4C18();
    }

    type metadata accessor for NavigationBarPlatterContainer.Settings();
    return sub_18A4A4A78();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188E5A288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_18A4A8268();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_188E5A388, 0, 0);
}

uint64_t sub_188E5A388()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_18A4A8278();
  v5 = sub_188E5C52C(&qword_1EA930D30, MEMORY[0x1E69E8820]);
  sub_18A4A87B8();
  sub_188E5C52C(&unk_1EA930D38, MEMORY[0x1E69E87E8]);
  sub_18A4A8288();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_188E5A518;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_188E5A518()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_188E5A6D4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_188E5A6D4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_188E5A740(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_188E5B1EC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_188E5A80C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_188C48500;

  return sub_188E596C8(v7, a1, v4, v5, v6, v8, v9, v10);
}

id sub_188E5A8EC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platters] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platterViews] = v4;
  v5 = OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_disappearingPlatterViews;
  *&v1[v5] = sub_188E8D430(v4);
  *&v1[OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_assistant] = a1;
  v28.receiver = v1;
  v28.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 _glassMonochromaticTreatment];
  v11 = [(UIView *)v9 _traitOverrides];
  v12 = [(_UITraitOverrides *)v11 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  inited = swift_initStackObject();
  *(inited + 16) = v12;
  v24[0] = inited;
  sub_188AED3F4(v10);
  v14 = [(UIView *)v9 _traitOverrides];
  v15 = *(v24[0] + 16);

  [(_UITraitOverrides *)v14 _replaceWithOverrides:v15];

  v16 = [v9 traitCollection];
  v17 = [v16 userInterfaceIdiom];

  if (v17 == 5)
  {
    v18 = [(UIView *)v9 _traitOverrides];
    v19 = [(_UITraitOverrides *)v18 _swiftImplCopy];

    v20 = swift_initStackObject();
    *(v20 + 16) = v19;
    v24[0] = v20;
    sub_18914E51C(3);
    v21 = [(UIView *)v9 _traitOverrides];
    v22 = *(v24[0] + 16);

    [(_UITraitOverrides *)v21 _replaceWithOverrides:v22];
  }

  v26 = &type metadata for _GlassGroup;
  v27 = &protocol witness table for _GlassGroup;
  LOWORD(v24[0]) = 256;
  v24[1] = 0;
  v25 = 1;
  UIView._background.setter(v24);

  return v9;
}

uint64_t sub_188E5AB60(void *a1)
{
  v2 = sub_18A4A5FA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35[-1] - v7;
  v9 = sub_18A4A4BE8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v10 + 16))(v12, v15, v9);
  sub_188E5C34C(v15);
  v16 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v16);
  v17 = *(v3 + 8);
  v17(v5, v2);
  sub_18A4A5F78();
  (*(v10 + 8))(v12, v9);
  v18 = sub_188C449C0(v8, v44);
  (v17)(v8, v2, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  sub_188C3DF9C(v44, v43);
  sub_188C3DF9C(v44, v41);
  v20 = swift_allocObject();
  v21 = v41[3];
  *(v20 + 48) = v41[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = v42[0];
  *(v20 + 89) = *(v42 + 9);
  v22 = v41[1];
  *(v20 + 16) = v41[0];
  *(v20 + 32) = v22;
  *(v20 + 112) = signpost_c2_entryLock_start;
  *(v20 + 120) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  v24[3] = 0;
  v24[4] = 0;
  v24[2] = v23;
  v34 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_188E5C524;
  *(v25 + 24) = v19;
  *&v38 = sub_188E3FE50;
  *(&v38 + 1) = v25;
  *&v36 = MEMORY[0x1E69E9820];
  *(&v36 + 1) = 1107296256;
  *&v37 = sub_188A4A968;
  *(&v37 + 1) = &block_descriptor_414;
  v26 = _Block_copy(&v36);
  v27 = a1;

  sub_188C3DFF8(v43, &v36);
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 56) = v38;
  *(v28 + 72) = v29;
  *(v28 + 88) = v40[0];
  *(v28 + 97) = *(v40 + 9);
  v30 = v37;
  *(v28 + 24) = v36;
  *(v28 + 16) = v23;
  *(v28 + 40) = v30;
  *(v28 + 113) = 0;
  *(v28 + 120) = sub_188E5C7FC;
  *(v28 + 128) = v20;
  v35[4] = sub_188E5C800;
  v35[5] = v28;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 1107296256;
  v35[2] = sub_188A4A8F0;
  v35[3] = &block_descriptor_421;
  v31 = _Block_copy(v35);

  *&v38 = sub_188E5C82C;
  *(&v38 + 1) = v24;
  *&v36 = MEMORY[0x1E69E9820];
  *(&v36 + 1) = 1107296256;
  *&v37 = sub_188ABD010;
  *(&v37 + 1) = &block_descriptor_424;
  v32 = _Block_copy(&v36);

  [v34 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v32);
  _Block_release(v31);
  _Block_release(v26);

  sub_188C3E234(v43);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if ((v31 & 1) == 0)
  {
    return sub_188AAFF20(v44);
  }

  __break(1u);
  return result;
}

void sub_188E5B1D4(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

void sub_188E5B1EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v23 = a4;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    sub_188C46270(*(a3 + 56) + 40 * v14, v22);
    v16 = v15;
    v17 = v23();
    sub_188C4D06C(v22);

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_18914CAF4(a1, a2, v21, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_188E5B358(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_188E5A740(v9, v6, v4, a2);
      MEMORY[0x18CFEA5B0](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_188E5B1EC(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

uint64_t sub_188E5B4D8(char a1, void *a2)
{
  v37 = a2;
  v3 = sub_18A4A5FA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = sub_18A4A4BE8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v11 + 16))(v13, v16, v10);
  sub_188E5C34C(v16);
  v17 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v17);
  v18 = *(v4 + 8);
  v18(v6, v3);
  sub_18A4A5F78();
  (*(v11 + 8))(v13, v10);
  v19 = sub_188C449C0(v9, v48);
  (v18)(v9, v3, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = v37;
  *(v20 + 24) = v37;
  sub_188C3DF9C(v48, v47);
  sub_188C3DF9C(v48, v45);
  v22 = swift_allocObject();
  v23 = v45[3];
  *(v22 + 48) = v45[2];
  *(v22 + 64) = v23;
  *(v22 + 80) = v46[0];
  *(v22 + 89) = *(v46 + 9);
  v24 = v45[1];
  *(v22 + 16) = v45[0];
  *(v22 + 32) = v24;
  *(v22 + 112) = signpost_c2_entryLock_start;
  *(v22 + 120) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  v26[3] = 0;
  v26[4] = 0;
  v26[2] = v25;
  v38 = objc_opt_self();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_188E5C410;
  *(v27 + 24) = v20;
  *&v42 = sub_188E3FE50;
  *(&v42 + 1) = v27;
  *&v40 = MEMORY[0x1E69E9820];
  *(&v40 + 1) = 1107296256;
  *&v41 = sub_188A4A968;
  *(&v41 + 1) = &block_descriptor_266;
  v28 = _Block_copy(&v40);
  v29 = v21;

  sub_188C3DFF8(v47, &v40);
  v30 = swift_allocObject();
  v31 = v43;
  *(v30 + 56) = v42;
  *(v30 + 72) = v31;
  *(v30 + 88) = v44[0];
  *(v30 + 97) = *(v44 + 9);
  v32 = v41;
  *(v30 + 24) = v40;
  *(v30 + 16) = v25;
  *(v30 + 40) = v32;
  *(v30 + 113) = 0;
  *(v30 + 120) = sub_188E5C7FC;
  *(v30 + 128) = v22;
  v39[4] = sub_188E5C800;
  v39[5] = v30;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 1107296256;
  v39[2] = sub_188A4A8F0;
  v39[3] = &block_descriptor_273;
  v33 = _Block_copy(v39);

  *&v42 = sub_188E5C82C;
  *(&v42 + 1) = v26;
  *&v40 = MEMORY[0x1E69E9820];
  *(&v40 + 1) = 1107296256;
  *&v41 = sub_188ABD010;
  *(&v41 + 1) = &block_descriptor_276;
  v34 = _Block_copy(&v40);

  [v38 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v34);
  _Block_release(v33);
  _Block_release(v28);

  sub_188C3E234(v47);

  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if ((v33 & 1) == 0)
  {
    return sub_188AAFF20(v48);
  }

  __break(1u);
  return result;
}

uint64_t sub_188E5BAC0(void *a1, void *a2, uint64_t a3)
{
  v41 = a3;
  v42 = a2;
  v40 = a1;
  v4 = sub_18A4A5FA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = sub_18A4A4BE8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v12 + 16))(v14, v17, v11);
  sub_188E5C34C(v17);
  v18 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v18);
  v19 = *(v5 + 8);
  v19(v7, v4);
  sub_18A4A5F78();
  (*(v12 + 8))(v14, v11);
  v20 = sub_188C449C0(v10, v53);
  (v19)(v10, v4, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  v22 = v21;
  v43 = v21;
  v23 = swift_allocObject();
  v24 = v41;
  *(v23 + 16) = v42;
  *(v23 + 24) = v24;
  sub_188C3DF9C(v53, v52);
  sub_188C3DF9C(v53, v50);
  v25 = swift_allocObject();
  v26 = v50[3];
  *(v25 + 48) = v50[2];
  *(v25 + 64) = v26;
  *(v25 + 80) = v51[0];
  *(v25 + 89) = *(v51 + 9);
  v27 = v50[1];
  *(v25 + 16) = v50[0];
  *(v25 + 32) = v27;
  *(v25 + 112) = signpost_c2_entryLock_start;
  *(v25 + 120) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = sub_188E5C7F8;
  v29[4] = v23;
  v42 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_188E5C7F0;
  *(v30 + 24) = v22;
  *&v47 = sub_188E3FE50;
  *(&v47 + 1) = v30;
  *&v45 = MEMORY[0x1E69E9820];
  *(&v45 + 1) = 1107296256;
  *&v46 = sub_188A4A968;
  *(&v46 + 1) = &block_descriptor_299;
  v31 = _Block_copy(&v45);
  v32 = v40;

  sub_188C3DFF8(v52, &v45);
  v33 = swift_allocObject();
  v34 = v48;
  *(v33 + 56) = v47;
  *(v33 + 72) = v34;
  *(v33 + 88) = v49[0];
  *(v33 + 97) = *(v49 + 9);
  v35 = v46;
  *(v33 + 24) = v45;
  *(v33 + 16) = v28;
  *(v33 + 40) = v35;
  *(v33 + 113) = 0;
  *(v33 + 120) = sub_188E5C7FC;
  *(v33 + 128) = v25;
  v44[4] = sub_188E5C800;
  v44[5] = v33;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 1107296256;
  v44[2] = sub_188A4A8F0;
  v44[3] = &block_descriptor_306;
  v36 = _Block_copy(v44);

  *&v47 = sub_188E5C82C;
  *(&v47 + 1) = v29;
  *&v45 = MEMORY[0x1E69E9820];
  *(&v45 + 1) = 1107296256;
  *&v46 = sub_188ABD010;
  *(&v46 + 1) = &block_descriptor_309;
  v37 = _Block_copy(&v45);

  [v42 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v37);
  _Block_release(v36);
  _Block_release(v31);

  sub_188C3E234(v52);

  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    return sub_188AAFF20(v53);
  }

  __break(1u);
  return result;
}

uint64_t sub_188E5C158(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_188C482B4;

  return sub_188E596C8(v7, a1, v4, v5, v6, v8, v9, v10);
}

uint64_t type metadata accessor for NavigationBarPlatterContainer.Settings()
{
  result = qword_1ED48C620;
  if (!qword_1ED48C620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188E5C34C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_190Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 128);

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

void sub_188E5C410()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v2 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase);
  *(v2 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = v3;
  sub_189186104(v4);
}

uint64_t objectdestroy_33Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_188E5C4B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase);
  *(v1 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = 0;
  sub_189186104(v2);
}

void sub_188E5C4E8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase);
  *(v1 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = 2;
  sub_189186104(v2);
}

uint64_t sub_188E5C52C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_188E5C574()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    sub_188E57F98(*(v0 + 24), v0 + 32, *(v0 + 17));
  }
}

uint64_t objectdestroy_108Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 72);
  }

  if (*(v0 + 136))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 112);
  }

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t objectdestroy_65Tm()
{

  v1 = *(v0 + 112);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 64);
  }

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_188E5C6C4()
{
  result = sub_18A4A4BE8();
  if (v1 <= 0x3F)
  {
    result = sub_18A4A4A88();
    if (v2 <= 0x3F)
    {
      result = sub_18A4A4B78();
      if (v3 <= 0x3F)
      {
        result = sub_18A4A4C78();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

id sub_188E5C8A8()
{
  v1 = 0uLL;
  memset(&v14[6], 0, 72);
  v2 = &v0[OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data];
  v3 = MEMORY[0x1E69E7CC8];
  *v2 = MEMORY[0x1E69E7CC8];
  *(v2 + 8) = UIEdgeInsetsZero;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  *(v2 + 7) = v4;
  *(v2 + 8) = 0;
  *(v2 + 36) = 1;
  v5 = *&v14[16];
  *(v2 + 74) = *v14;
  v6 = *&v14[32];
  v7 = *&v14[48];
  *(v2 + 136) = *&v14[62];
  *(v2 + 122) = v7;
  *(v2 + 106) = v6;
  *(v2 + 90) = v5;
  *(v2 + 19) = 0;
  *(v2 + 20) = v4;
  *(v2 + 21) = 0;
  *(v2 + 22) = 0;
  v8 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  if (qword_1EA930918 != -1)
  {
    swift_once();
    v1 = 0uLL;
  }

  v9 = &v0[v8];
  v10 = qword_1EA994EC8;
  *v9 = v3;
  *(v9 + 1) = 1;
  *(v9 + 1) = v1;
  *(v9 + 2) = v1;
  *(v9 + 6) = 0;
  *(v9 + 7) = v10;
  *(v9 + 8) = v10;
  *(v9 + 9) = 1;
  *(v9 + 10) = v4;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v13.receiver = v0;
  v13.super_class = _UISplitViewControllerAdaptivePanelLayout;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v11 prepareLayout];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v11;
}

double sub_188E5CC18(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 216 * v5 + 8);
  }

  else
  {
    v7 = MEMORY[0x1E695F050];
  }

  v8 = *v7;
  swift_endAccess();
  return v8;
}

double sub_188E5CE10(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 216 * v5 + 40);
  }

  else
  {
    v7 = &UIEdgeInsetsZero;
  }

  top = v7->top;
  swift_endAccess();
  return top;
}

double sub_188E5CEE8(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 216 * v5 + 136);
  }

  else
  {
    v7 = &UIEdgeInsetsZero;
  }

  top = v7->top;
  swift_endAccess();
  return top;
}

uint64_t sub_188E5CFC0(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 216 * v5);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

BOOL sub_188E5D188(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  if (*(v3 + 73) != 1)
  {
    return 0;
  }

  swift_beginAccess();
  v4 = *v3;
  if (!*(v4 + 16))
  {
    goto LABEL_9;
  }

  v5 = sub_188B85570(a1);
  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(*(v4 + 56) + 160 * v5 + 112);
  swift_endAccess();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16) || (v10 = sub_188B85570(a1), (v11 & 1) == 0))
  {
LABEL_9:
    swift_endAccess();
    return 0;
  }

  v12 = *(*(v9 + 56) + 216 * v10 + 208);
  swift_endAccess();
  return v12 == 2;
}

double sub_188E5D2CC(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 216 * v5 + 176);
  }

  else
  {
    v7 = MEMORY[0x1E695F050];
  }

  v8 = *v7;
  swift_endAccess();
  return v8;
}

uint64_t sub_188E5D3F4(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 216 * v5 + 208);
    swift_endAccess();
    if (_UISplitViewControllerAdaptiveColumnVisibilityIsVisible(v7))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_188E5D4D0(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 216 * v5 + 208);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

uint64_t sub_188E5D610(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = v2;
  v7 = v2 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
  swift_beginAccess();
  v8 = *v7;
  if (!*(*v7 + 16) || (v9 = sub_188B85570(a1), (v10 & 1) == 0) || (v11 = *(v8 + 56) + 160 * v9, v13 = *(v11 + 128), v12 = *(v11 + 136), swift_endAccess(), swift_beginAccess(), v14 = *v7, !*(*v7 + 16)) || (v15 = sub_188B85570(a2), (v16 & 1) == 0))
  {
    swift_endAccess();
    return 0;
  }

  v17 = *(*(v14 + 56) + 160 * v15 + 128);
  swift_endAccess();
  if (v13 >= v17)
  {
    return 0;
  }

  v18 = *(v7 + 80);
  v19 = *(v7 + 88);
  v50 = *(v7 + 96);
  if (v12 == *(v7 + 152))
  {
    v18 = a1;
  }

  else
  {
    v19 = a1;
  }

  v49[0] = v18;
  v49[1] = v19;
  v51 = v12;
  v52 = 1;
  *v53 = *(v7 + 121);
  *&v53[15] = *(v7 + 136);
  v20 = *(v7 + 16);
  v22 = *(v7 + 32);
  v21 = *(v7 + 40);
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  v24 = *(v7 + 160);
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v21 - v20 - v22;

    while (1)
    {
      v33 = *(v24 + 16);
      if (v25 > v33)
      {
        break;
      }

      result = sub_188E61A88(*(v24 + 8 * v25-- + 24), 0, v4, v23, v49, 1, v26);
      if (!v25)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_36:
    v43 = *(v27 + 56);
    if (*(v43 + (v29 << 8) + 248) == 1)
    {
      do
      {
        if (!v32)
        {
          while (1)
          {
            v44 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_51;
            }

            if (v44 >= v31)
            {
              goto LABEL_50;
            }

            v32 = *(v33 + 8 * v44);
            ++v30;
            if (v32)
            {
              v30 = v44;
              goto LABEL_43;
            }
          }
        }

        v44 = v30;
LABEL_43:
        v45 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v46 = v45 | (v44 << 6);
        v47 = *(v28 + 8 * v46);
      }

      while (v47 != a1 && v47 != a2);
      if (*(v43 + (v46 << 8) + 248) != 1)
      {
        goto LABEL_50;
      }

      return 1;
    }

    goto LABEL_50;
  }

LABEL_16:
  swift_beginAccess();
  v34 = *(v23 + 16);

  v35 = *(v34 + 16);
  if (!v35)
  {
LABEL_50:

    return 0;
  }

  v36 = 0;
  result = -1;
  while (v36 < *(v34 + 16))
  {
    v30 = 0;
    v27 = *(v34 + 32 + 56 * v36++);
    v33 = v27 + 64;
    v37 = 1 << *(v27 + 32);
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v32 = v38 & *(v27 + 64);
    v31 = (v37 + 63) >> 6;
    while (v32)
    {
LABEL_26:
      v39 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v29 = v39 | (v30 << 6);
      v28 = *(v27 + 48);
      v40 = *(v28 + 8 * v29);
      if (v40 == a1 || v40 == a2)
      {
        goto LABEL_36;
      }
    }

    while (1)
    {
      v42 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if (v42 >= v31)
      {
        break;
      }

      v32 = *(v33 + 8 * v42);
      ++v30;
      if (v32)
      {
        v30 = v42;
        goto LABEL_26;
      }
    }

    if (v36 == v35)
    {
      goto LABEL_50;
    }
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_188E5DC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v5 = 64;
  if (*(v4 + 48) == a3)
  {
    v5 = 56;
  }

  return *(v4 + v5);
}

void *sub_188E5DCE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v58 = a1[1];
  v59 = *a1;
  v8 = a1[4];
  v9 = *(a1 + 40);
  v10 = a1[7];
  v11 = a1[8];
  v12 = (v3 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution);
  swift_beginAccess();
  v13 = *v12;
  if (!*(*v12 + 16) || (v14 = sub_188B85570(a2), (v15 & 1) == 0))
  {
    result = swift_endAccess();
    goto LABEL_10;
  }

  v56 = v10;
  v57 = v11;
  v16 = (*(v13 + 56) + 216 * v14);
  v55 = v16[10];
  v51 = v16[15];
  v17 = v16[26];
  swift_endAccess();
  v54 = v12[6];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = [result hasAppeared];
    result = swift_unknownObjectRelease();
    if ((v19 & 1) == 0)
    {
      v8 = v55;
      v21 = v58;
      v20 = v59;
      if (v55 == v54)
      {
        v20 = a2;
      }

      else
      {
        v21 = a2;
      }

      v10 = v56;
      v11 = v57;
      if (v55 == v54)
      {
        v10 = 2;
      }

      else
      {
        v11 = 2;
      }

      v9 = 1;
      goto LABEL_11;
    }
  }

  if (v17 == 2)
  {
LABEL_8:
    v10 = v56;
    v11 = v57;
LABEL_10:
    v21 = v58;
    v20 = v59;
    goto LABEL_11;
  }

  if (v17 == 1)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v23 = v4 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
  swift_beginAccess();
  v24 = *(v23 + 160);
  v11 = v57;
  if (*(v24 + 16))
  {
    v50 = *(v24 + 32) == a2;
  }

  else
  {
    v50 = 0;
  }

  v25 = v51;
  v26 = *v12 + 64;
  v27 = 1 << *(*v12 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(*v12 + 64);
  v30 = (v27 + 63) >> 6;

  v31 = 0;
  v32 = &unk_1EA930000;
  v33 = &unk_1EA930000;
  v34 = v55;
  v35 = v50;
LABEL_25:
  v36 = a2;
  while (v29)
  {
LABEL_31:
    v38 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v39 = v38 | (v31 << 6);
    v40 = (result[7] + 216 * v39);
    if (v40[10] == v34)
    {
      v41 = 1;
    }

    else
    {
      v41 = v35;
    }

    if (v41)
    {
      v42 = v40[26];
      v43 = v40[15];
      if (v42 && v43 == v25)
      {
        a2 = *(result[6] + 8 * v39);
        if (a2)
        {
          if (a2 == 1)
          {
            v45 = 2;
          }

          else
          {
            if (v32[292] != -1)
            {
              v48 = v36;
              v52 = result;
              v46 = v32;
              swift_once();
              v36 = v48;
              v33 = &unk_1EA930000;
              v32 = v46;
              result = v52;
              v35 = v50;
              v34 = v55;
            }

            if (v33[293] == a2)
            {
              v45 = 3;
            }

            else
            {
              v45 = 4 * (a2 == 2);
            }
          }
        }

        else
        {
          v45 = 1;
        }

        if (v36)
        {
          if (v36 == 1)
          {
            if (v45 <= 2)
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v32[292] != -1)
            {
              v49 = v36;
              v53 = result;
              swift_once();
              v36 = v49;
              v33 = &unk_1EA930000;
              v32 = &unk_1EA930000;
              result = v53;
              v35 = v50;
              v34 = v55;
            }

            if (v33[293] == v36)
            {
              if (v45 <= 3)
              {
                goto LABEL_25;
              }
            }

            else if (v36 == 2 || !v45)
            {
              goto LABEL_25;
            }
          }
        }

        else if (v45 <= 1)
        {
          goto LABEL_25;
        }
      }
    }
  }

  while (1)
  {
    v37 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      return result;
    }

    if (v37 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v37);
    ++v31;
    if (v29)
    {
      v31 = v37;
      goto LABEL_31;
    }
  }

  v8 = v34;
  v47 = v36;

  v21 = v58;
  v20 = v59;
  if (v8 == v54)
  {
    v20 = v47;
  }

  else
  {
    v21 = v47;
  }

  v10 = v56;
  if (v8 == v54)
  {
    v10 = 1;
  }

  else
  {
    v11 = 1;
  }

  v9 = 1;
LABEL_11:
  v22 = *(a1 + 1);
  *&v60 = *(a1 + 41);
  *(&v60 + 7) = a1[6];
  *a3 = v20;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = *(&v60 + 7);
  *(a3 + 56) = v10;
  *(a3 + 41) = v60;
  *(a3 + 64) = v11;
  return result;
}

__n128 sub_188E5E100@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = &v3[OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution];
  swift_beginAccess();
  v13 = *v12;
  if (!*(*v12 + 16) || (v14 = sub_188B85570(a2), (v15 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_12;
  }

  v16 = *(v13 + 56) + 216 * v14;
  v24 = *(v16 + 208);
  v25 = *(v16 + 80);
  swift_endAccess();
  v17 = &v4[OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data];
  swift_beginAccess();
  v18 = *(v17 + 20);
  if (!*(v18 + 16) || *(v18 + 32) != a2)
  {
    v19 = *(v12 + 6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_8;
    }

    if ([Strong hasAppeared])
    {
      swift_unknownObjectRelease();
LABEL_8:
      if (v24)
      {
        if (v25 == v19)
        {
          v8 = [v4 splitViewControllerColumnDisplayedAfterSplitViewControllerColumn_];
          v10 = 1;
        }

        else
        {
          v9 = [v4 splitViewControllerColumnDisplayedBeforeSplitViewControllerColumn_];
          v11 = 1;
        }
      }

      goto LABEL_12;
    }

    if (v25 == v19)
    {
      v8 = [v4 splitViewControllerColumnDisplayedAfterSplitViewControllerColumn_];
      v10 = 1;
    }

    else
    {
      v9 = [v4 splitViewControllerColumnDisplayedBeforeSplitViewControllerColumn_];
      v11 = 1;
    }

    swift_unknownObjectRelease();
  }

LABEL_12:
  v21 = *(a1 + 48);
  v23 = *(a1 + 16);
  result = *(a1 + 32);
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v23;
  *(a3 + 32) = result;
  *(a3 + 48) = v21;
  *(a3 + 56) = v10;
  *(a3 + 64) = v11;
  return result;
}

double sub_188E5E300@<D0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(_OWORD *__return_ptr, _OWORD *, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 64);
  v11 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v11;
  v24 = v8;
  v25 = v9;
  v26 = *(a2 + 48);
  v27 = v10;
  v12 = a1;
  a4(v18, v23, a3);
  v13 = v19;
  LOBYTE(a3) = v20;
  v14 = v22;

  result = *v18;
  v16 = v18[1];
  v17 = v21;
  *a5 = v18[0];
  *(a5 + 16) = v16;
  *(a5 + 32) = v13;
  *(a5 + 40) = a3 & 1;
  *(a5 + 48) = v17;
  *(a5 + 64) = v14;
  return result;
}

uint64_t sub_188E5E3B8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v4 = *v3;
  if (!*(*v3 + 16) || (v5 = sub_188B85570(a1), (v6 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_7;
  }

  v7 = *(*(v4 + 56) + 160 * v5 + 32);
  result = swift_endAccess();
  if (v7 <= 0)
  {
LABEL_7:
    if (qword_1EA930918 != -1)
    {
      swift_once();
    }

    v10 = &qword_1EA994EC8;
    return *v10;
  }

  v9 = v3[7];
  if (v7 <= *(v9 + 16))
  {
    v10 = (v9 + 8 * v7 + 24);
    return *v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_188E5E4E0(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v4 = *v3;
  if (!*(*v3 + 16) || (v5 = sub_188B85570(a1), (v6 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_7;
  }

  v7 = *(*(v4 + 56) + 160 * v5 + 32);
  result = swift_endAccess();
  v9 = v3[7];
  v10 = *(v9 + 16);
  if (v7 >= (v10 - 1))
  {
LABEL_7:
    if (qword_1EA930918 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EA994EC8;
    return *v11;
  }

  if (v7 + 1 < v10)
  {
    v11 = (v9 + 8 * (v7 + 1) + 32);
    return *v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_188E5E610(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 216 * v5 + 80);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

uint64_t sub_188E5E6C0()
{
  v4 = v0;
  [v0 validateData];
  v5 = &v0[OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data];
  swift_beginAccess();
  v6 = *(v5 + 8);
  v85[2] = *(v5 + 7);
  v85[3] = v6;
  v86 = *(v5 + 18);
  v7 = *(v5 + 6);
  v85[0] = *(v5 + 5);
  v85[1] = v7;
  v8 = *(v5 + 2);
  v10 = *(v5 + 4);
  v9 = *(v5 + 5);
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v51 = v5;
  v12 = *(v5 + 20);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v9 - v8 - v10;

    do
    {
      if (v13 > *(v12 + 16))
      {
        __break(1u);
LABEL_28:
        v22 = v52;
        goto LABEL_30;
      }

      sub_188E61A88(*(v12 + 8 * v13-- + 24), 0, v4, v11, v85, 1, v14);
    }

    while (v13);
  }

  swift_beginAccess();
  v2 = *(v11 + 16);

  sub_188E5ECC4();
  v14 = v15;
  v9 = v16;
  v10 = v17;
  v3 = v18;
  if (qword_1EA930918 != -1)
  {
LABEL_41:
    swift_once();
  }

  v19 = qword_1EA994EC8;
  v20 = *(v2 + 16);

  v50 = v19;
  if (!v20)
  {
    v22 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    v56 = 1;
    v54 = v19;
    goto LABEL_30;
  }

  v21 = 0;
  v22 = 0;
  v23 = v2 + 80;
  v1 = MEMORY[0x1E69E7CC0];
  v55 = v2;
  v56 = 1;
  v54 = v19;
  v49 = v2 + 80;
  while (2)
  {
    v52 = v22;
    v24 = (v23 + 56 * v21);
    v22 = v21;
    while (1)
    {
      if (v22 >= v20)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v2 = *(v24 - 5);
      v26 = *(v24 - 2);
      v25 = *(v24 - 1);
      v27 = *v24;
      v29 = *(v24 - 4);
      v28 = *(v24 - 3);
      v84[0] = *(v24 - 6);
      v84[1] = v2;
      v84[2] = v29;
      v84[3] = v28;
      v84[4] = v26;
      v57 = v25;
      v84[5] = v25;
      v84[6] = v27;

      v30 = sub_188E673AC(v84);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_188E4B664(0, v1[2] + 1, 1, v1);
        v1 = result;
      }

      v33 = v1[2];
      v32 = v1[3];
      v34 = v1;
      if (v33 >= v32 >> 1)
      {
        result = sub_188E4B664((v32 > 1), v33 + 1, 1, v1);
        v34 = result;
      }

      v34[2] = v33 + 1;
      v1 = v34;
      v34[v33 + 4] = v30;
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      v35 = v57;
      if ((v57 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_22:
      ++v22;

      v2 = v55;
      v20 = *(v55 + 16);
      v24 += 7;
      if (v22 == v20)
      {
        goto LABEL_28;
      }
    }

    v35 = v57;
    if (v26 >= *(v2 + 16))
    {
      goto LABEL_40;
    }

    v52 = v22;
    v54 = *(v2 + 8 * v26 + 32);
    v36 = v56;
    if (v22)
    {
      v36 = 2;
    }

    v56 = v36;
    if ((v57 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    if (v35 >= *(v29 + 16))
    {
      __break(1u);
    }

    else
    {
      v21 = v22 + 1;
      v50 = *(v29 + 8 * v35 + 32);

      v2 = v55;
      v20 = *(v55 + 16);
      v23 = v49;
      if (v20 - 1 != v22)
      {
        continue;
      }

LABEL_30:

      v53 = sub_188E5F05C(v54, v56);
      v78 = 0;
      v79 = 0;
      v77 = v2;
      sub_1890795C4(&v66);
      v73 = v66;
      v74 = v67;
      v75 = v68;
      v76 = v69;
      v37 = *(&v66 + 1);
      if (*(&v66 + 1))
      {
        v38 = MEMORY[0x1E69E7CC8];
        do
        {
          v81 = v74;
          v82 = v75;
          v80 = v37;
          v83 = v76;
          if (v73 == v22)
          {
            v39 = 2;
          }

          else
          {
            v39 = 1;
          }

          v40 = sub_188E5F0EC(&v80, v39);
          sub_188A3F5FC(&v73, &qword_1EA9347E8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v66 = v38;
          sub_188E679A4(v40, sub_188E67058, 0, isUniquelyReferenced_nonNull_native, &v66);

          v38 = v66;
          sub_1890795C4(&v66);
          v73 = v66;
          v74 = v67;
          v75 = v68;
          v76 = v69;
          v37 = *(&v66 + 1);
        }

        while (*(&v66 + 1));
      }

      else
      {
        v38 = MEMORY[0x1E69E7CC8];
      }

      v42 = *(v51 + 19);

      *&v58 = v38;
      *(&v58 + 1) = v53;
      *&v59 = v14;
      *(&v59 + 1) = v9;
      *&v60 = v10;
      *(&v60 + 1) = v3;
      *&v61 = v42;
      *(&v61 + 1) = v54;
      *&v62 = v50;
      *(&v62 + 1) = v56;
      v63 = v1;
      v43 = v4 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
      swift_beginAccess();
      v44 = *(v43 + 32);
      v45 = *(v43 + 64);
      v64[3] = *(v43 + 48);
      v64[4] = v45;
      v46 = *(v43 + 16);
      v64[0] = *v43;
      v65 = *(v43 + 80);
      v64[1] = v46;
      v64[2] = v44;
      v47 = v61;
      *(v43 + 32) = v60;
      *(v43 + 48) = v47;
      *(v43 + 64) = v62;
      *(v43 + 80) = v63;
      v48 = v59;
      *v43 = v58;
      *(v43 + 16) = v48;
      sub_188E67EE4(&v58, &v66);
      sub_188E67F1C(v64);
      *&v66 = v38;
      *(&v66 + 1) = v53;
      *&v67 = v14;
      *(&v67 + 1) = v9;
      *&v68 = v10;
      *(&v68 + 1) = v3;
      *&v69 = v42;
      *(&v69 + 1) = v54;
      v70 = v50;
      v71 = v56;
      v72 = v1;
      return sub_188E67F1C(&v66);
    }

    return result;
  }
}

uint64_t sub_188E5ECC4()
{
  v1 = (v0 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v2 = *v1;
  v3 = 1 << *(*v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & v2[8];
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0.0;
  v9 = 0.0;
  while (v5)
  {
LABEL_9:
    v11 = __clz(__rbit64(v5)) | (v7 << 6);
    v12 = *(v2[6] + 8 * v11);
    v13 = v2[7] + 160 * v11;
    v14 = *(v13 + 88);
    v15 = *(v13 + 136);
    sub_188E62B84(v12, v25, 1.79769313e308, 1.79769313e308);
    v16 = v1[19];
    v17 = v15 != v16 && v14 == 0;
    if (v17 || (v8 = v8 + v30 + v26 + v27 + v28 + v29 + v32, v18 = v1 + 10, v15 != v16))
    {
      v18 = v1 + 11;
    }

    v19 = *v18;
    if (qword_1EA930918 != -1)
    {
      swift_once();
    }

    v5 &= v5 - 1;
    if (v19 == qword_1EA994EC8)
    {
      v20 = v1[20];
      if (*(v20 + 16))
      {
        v21 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v22 = 2;
          if (v19)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (qword_1EA930920 != -1)
          {
            swift_once();
          }

          if (qword_1EA930928 == v12)
          {
            v22 = 3;
            if (v19)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v22 = 4 * (v12 == 2);
            if (v19)
            {
LABEL_30:
              if (v19 == 1)
              {
                v23 = 2;
              }

              else
              {
                if (qword_1EA930920 != -1)
                {
                  swift_once();
                }

                v23 = 4 * (v19 == 2);
                if (qword_1EA930928 == v19)
                {
                  v23 = 3;
                }
              }

              goto LABEL_39;
            }
          }
        }
      }

      else
      {
        v22 = 1;
        if (v19)
        {
          goto LABEL_30;
        }
      }

      v23 = 1;
LABEL_39:
      v21 = v22 >= v23;
      v20 = v1[20];
      if (*(v20 + 16))
      {
LABEL_40:
        if (v21 || v12 == *(v20 + 32))
        {
LABEL_44:
          if (v31 > v30)
          {
            goto LABEL_48;
          }

          v9 = v9 + v31 + v30 + v26 + v27 + v28 + v29 + v32 - v30;
        }
      }

      else if (v22 >= v23)
      {
        goto LABEL_44;
      }
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
    }

    v5 = v2[v10 + 8];
    ++v7;
    if (v5)
    {
      v7 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_48:
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t sub_188E5F05C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    v5 = a2 == 2;
  }

  else
  {
    if (a1)
    {
      return 1;
    }

    v4 = v2 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
    swift_beginAccess();
    if (*(v4 + 176) == 2)
    {
      v5 = a2 == 2;
      v6 = 4;
      goto LABEL_9;
    }

    v5 = a2 == 2;
  }

  v6 = 2;
LABEL_9:
  if (v5)
  {
    return v6 + 1;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_188E5F0EC(uint64_t a1, uint64_t a2)
{
  v461 = 0.0;
  v462 = 0.0;
  v463 = 0.0;
  v464 = 0.0;
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  v8 = *a1;
  v466 = *(a1 + 8);
  v7 = v466;
  *(v4 + 48) = v6;
  v367 = v4;
  *(v4 + 64) = *(a1 + 48);
  v384 = v2;
  v9 = v2 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
  v10 = *(v7 + 16);
  v326 = a1;
  sub_188E67F9C(a1, &v522);
  v389 = v9;
  swift_beginAccess();
  swift_beginAccess();
  v324 = v10;
  v322 = v7;
  if (v10)
  {
    v11 = 0;
    v327 = v7 + 32;
    v330 = -1;
    v393 = -1;
    v406 = 0.0;
    v410 = 0.0;
    v12 = -1;
    v13 = -1;
    while (1)
    {
      v35 = *(v327 + 8 * v11);
      if (!*(*&v8 + 16))
      {
        goto LABEL_319;
      }

      v36 = sub_188B85570(*(v327 + 8 * v11));
      if ((v37 & 1) == 0)
      {
        goto LABEL_319;
      }

      v38 = *(*&v8 + 56) + (v36 << 8);
      v39 = *v38;
      v40 = *(v38 + 16);
      v41 = *(v38 + 24);
      v436 = *(v38 + 40);
      v440 = *(v38 + 32);
      v431 = *(v38 + 48);
      v422 = *(v38 + 8);
      v427 = *(v38 + 56);
      v42 = *(v38 + 64);
      v401 = *(v38 + 72);
      v43 = *(v38 + 80);
      v44 = *(v38 + 88);
      v459[0] = *(v38 + 89);
      *(v459 + 3) = *(v38 + 92);
      v45 = *(v38 + 96);
      v453 = *(v38 + 104);
      v454 = *(v38 + 120);
      v46 = *(v38 + 248);
      v47 = v393;
      if ((v46 & 1) == 0)
      {
        break;
      }

      if (v330 < 0)
      {
        if (v44)
        {
          v330 = v11;
          if (v393 < 0)
          {
LABEL_20:
            v48 = 1;
          }

          else
          {
            v48 = 1;
            v330 = v11;
          }

          goto LABEL_23;
        }

        if ((v393 & 0x8000000000000000) == 0)
        {
          v48 = 0;
LABEL_23:
          v13 = v393;
          v49 = v11;
          if (v12 < 0)
          {
            goto LABEL_26;
          }

LABEL_24:
          v13 = v47;
LABEL_25:
          v49 = v12;
          goto LABEL_26;
        }
      }

      else
      {
        if ((v393 & 0x8000000000000000) == 0)
        {
          v48 = v44;
          goto LABEL_23;
        }

        if (v44)
        {
          goto LABEL_20;
        }
      }

      v48 = 0;
      v47 = v11;
      v13 = v11;
      v49 = v11;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_26:
      v396 = *(v38 + 128);
      v341 = *(v38 + 144);
      v345 = *(v38 + 136);
      v335 = *(v38 + 160);
      v338 = *(v38 + 152);
      v354 = *(v38 + 176);
      v356 = *(v38 + 168);
      v348 = *(v38 + 192);
      v351 = *(v38 + 184);
      v368 = *(v38 + 224);
      v371 = *(v38 + 216);
      v361 = *(v38 + 240);
      v364 = *(v38 + 232);
      v444 = v41;
      v447 = v40;
      v390 = v49;
      v393 = v47;
      v381 = v43;
      v378 = v45;
      v374 = *(v38 + 208);
      v358 = *(v38 + 200);
      v328 = v48;
      if (*(v389 + 72))
      {
        if (v11 == v330)
        {
          v50 = 1;
          if (v11 != v49)
          {
            v53 = 5;
            v51 = 7;
            goto LABEL_43;
          }

          v51 = 7;
          v52 = 7;
          goto LABEL_42;
        }

        v50 = 0;
        if (v11 == v47)
        {
          v51 = 7;
        }

        else
        {
          v51 = 5;
        }

        v13 = v47;
        v52 = 7;
      }

      else
      {
        if (v11 == v330)
        {
          v50 = 1;
          if (v11 != v49)
          {
            v53 = 5;
            v51 = 13;
            goto LABEL_43;
          }

          v51 = 13;
          v52 = 13;
LABEL_42:
          v53 = v52;
          goto LABEL_43;
        }

        v50 = 0;
        if (v11 == v47)
        {
          v51 = 13;
        }

        else
        {
          v51 = 5;
        }

        v13 = v47;
        v52 = 13;
      }

      v53 = 5;
      if (v11 == v49)
      {
        goto LABEL_42;
      }

LABEL_43:
      v332 = v53;
      v54 = UIEdgeInsetsReplace(v51, 0.0, 0.0, 0.0, 0.0, *(v389 + 8));
      v56 = v55;
      v58 = v57;
      v60 = v59;
      swift_getKeyPath();
      v62 = v444;
      v61 = v447;
      v385 = v39;
      if (v39 == 0.0 && v422 == 0.0 && v447 == 0.0 && v444 == 0.0)
      {
        v63 = UIEdgeInsetsAdd(v51, v440, v436, v431, v427, v54);
        v67 = v39;
        v68 = v422;
        v415 = v447;
        v418 = 0.0;
        v69 = v410;
      }

      else
      {
        v70 = v44;
        v71 = v42;
        v72 = v51 & v401;
        if (v46)
        {
          v73 = UIEdgeInsetsMin(15, v39, v422, v447, v444, v54);
          UIEdgeInsetsReplace(v72, 0.0, 0.0, 0.0, 0.0, v73);
          v62 = v444;
          v61 = v447;
          v406 = v406 + v74 + v75;
        }

        v76 = UIEdgeInsetsMax(v72, v39, v422, v61, v62, v54);
        v80 = UIEdgeInsetsSubtract(v72 & v71, v76, v77, v78, v79, v39);
        v81 = v72 & v71;
        v42 = v71;
        v85 = UIEdgeInsetsMax(v81, v80, v82, v83, v84, v39);
        v89 = UIEdgeInsetsAdd(15, v85, v86, v87, v88, v440);
        v68 = v90;
        v91 = v56;
        v67 = v89;
        v415 = v92;
        v418 = v93;
        v94 = UIEdgeInsetsSubtract(v51, v54, v91, v58, v60, v89);
        v63 = UIEdgeInsetsMax(v51, v94, v95, v96, v97, 0.0);
        v69 = v410;
        v44 = v70;
      }

      *&v491 = v63;
      *(&v491 + 1) = v64;
      v492 = v65;
      v493 = v66;
      if ((v46 & 1) == 0)
      {
        goto LABEL_62;
      }

      if (v328)
      {
        v69 = v69 + v396 + v66 + v378 + v68 + v418 + v64;
LABEL_62:
        if (v50 && (v67 != 0.0 || v68 != 0.0 || v415 != 0.0 || v418 != 0.0))
        {
          v411 = v69;
LABEL_75:
          v98 = v381;
          v99 = v374;
LABEL_76:
          v102 = UIEdgeInsetsAdd(v51, v461, v462, v463, v464, v67);
          v104 = v103;
          v106 = v105;
          v108 = v107;
          swift_beginAccess();
          v461 = v102;
          v462 = v104;
          v463 = v106;
          v464 = v108;
          v109 = swift_modifyAtWritableKeyPath();
          *v110 = *v110 + 50.0;
          v109(&v467, 0);
          swift_endAccess();
          v100 = 0.0;
          v69 = v411;
          v101 = v358;
          goto LABEL_4;
        }

        v100 = 0.0;
LABEL_68:
        v98 = v381;
        v99 = v374;
        v101 = v358;
        if (v11 == v13)
        {
LABEL_69:
          v100 = v461;
          if (v461 == 0.0 && v462 == 0.0 && v463 == 0.0 && v464 == 0.0)
          {
            v100 = 0.0;
          }

          else
          {
            v461 = 0.0;
            v462 = 0.0;
            v463 = 0.0;
            v464 = 0.0;
          }

          goto LABEL_4;
        }

        goto LABEL_4;
      }

      if (v69 <= 0.0)
      {
        goto LABEL_62;
      }

      v467 = v440;
      v468 = *&v436;
      v469 = v431;
      v470 = v427;

      swift_getAtKeyPath();

      v467 = v69 + v460;
      swift_setAtWritableKeyPath();
      if (!v50)
      {
        v100 = 0.0;
        v69 = 0.0;
        goto LABEL_68;
      }

      if (v67 != 0.0 || v68 != 0.0)
      {
        v411 = 0.0;
        goto LABEL_75;
      }

      v411 = 0.0;
      v98 = v381;
      v99 = v374;
      if (v415 != 0.0 || v418 != 0.0)
      {
        goto LABEL_76;
      }

      v100 = 0.0;
      v69 = 0.0;
      v101 = v358;
      if (v11 == v13)
      {
        goto LABEL_69;
      }

LABEL_4:
      v14 = v406;
      v15 = v406 >= 0.0;
      v16 = --v10 == 0;
      v17 = v378 + v406;
      if (!v15 || !v16)
      {
        v17 = v378;
      }

      v377 = v17;
      if (v15 && v16)
      {
        v14 = 0.0;
      }

      v406 = v14;
      v410 = v69;
      v18 = v100;
      v19 = UIEdgeInsetsMax(15, v345, v341, v338, v335, *&v491);
      v340 = v20;
      v344 = v19;
      v334 = v22;
      v337 = v21;
      v23 = UIEdgeInsetsMax(15, v356, v354, v351, v348, v67);
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = UIEdgeInsetsMax(15, v371, v368, v364, v361, v18);
      *&v522 = v385;
      *(&v522 + 1) = v422;
      v523 = v447;
      v524 = v444;
      v525 = v440;
      v526 = v436;
      v527 = v431;
      v528 = v427;
      v529 = v42;
      v530 = v401;
      v531 = v98;
      v532 = v44;
      *v533 = v459[0];
      *&v533[3] = *(v459 + 3);
      v536 = v454;
      v535 = v453;
      v534 = v377;
      v537 = v396;
      v538 = v344;
      v539 = v340;
      v540 = v337;
      v541 = v334;
      v542 = v23;
      v543 = v25;
      v544 = v27;
      v545 = v29;
      v546 = v332 | v101;
      v547 = v99;
      v548 = v30;
      v549 = v31;
      v550 = v32;
      v551 = v33;
      v552 = v46;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v460 = *(v367 + 16);
      sub_188E9E278(&v522, v35, isUniquelyReferenced_nonNull_native);
      v8 = v460;
      *(v367 + 16) = v460;
      swift_endAccess();

      ++v11;
      v12 = v390;
      if (!v10)
      {
        goto LABEL_83;
      }
    }

    v48 = v44;
    goto LABEL_25;
  }

LABEL_83:
  v465 = *(v326 + 16);
  swift_beginAccess();
  v461 = 0.0;
  v462 = 0.0;
  v463 = 0.0;
  v464 = 0.0;
  v111 = *(v465 + 16);

  swift_beginAccess();
  v325 = v465;
  v321 = v111;
  if (v111)
  {
    v112 = 0;
    v329 = v465 + 32;
    v333 = -1;
    v336 = -1;
    v419 = 0.0;
    v423 = 0.0;
    v113 = -1;
    while (1)
    {
      v35 = *(v329 + 8 * v112);
      if (!*(*&v8 + 16) || (v135 = sub_188B85570(*(v329 + 8 * v112)), (v136 & 1) == 0))
      {
        v467 = 0.0;
        v468 = 0xE000000000000000;
        sub_18A4A80E8();
        MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
        *&v453 = v35;
        type metadata accessor for Column(0);
        sub_18A4A82D8();
        MEMORY[0x18CFE22D0](41, 0xE100000000000000);
        goto LABEL_317;
      }

      v137 = *(*&v8 + 56) + (v135 << 8);
      v139 = *v137;
      v138 = *(v137 + 8);
      v141 = *(v137 + 16);
      v140 = *(v137 + 24);
      v445 = *(v137 + 40);
      v448 = *(v137 + 32);
      v437 = *(v137 + 56);
      v441 = *(v137 + 48);
      v142 = *(v137 + 64);
      v143 = *(v137 + 72);
      v144 = *(v137 + 80);
      v145 = *(v137 + 88);
      *v451 = *(v137 + 89);
      *&v451[3] = *(v137 + 92);
      v146 = *(v137 + 96);
      v457 = *(v137 + 104);
      v458 = *(v137 + 120);
      v147 = *(v137 + 248);
      if (v147)
      {
        break;
      }

      v148 = v145;
LABEL_107:
      v149 = v113;
LABEL_108:
      v412 = *(v137 + 128);
      v407 = v149;
      v391 = v144;
      v387 = v146;
      v382 = *(v137 + 208);
      v375 = *(v137 + 224);
      v379 = *(v137 + 216);
      v369 = *(v137 + 240);
      v372 = *(v137 + 232);
      v365 = *(v137 + 200);
      v359 = *(v137 + 176);
      v362 = *(v137 + 168);
      v355 = *(v137 + 192);
      v357 = *(v137 + 184);
      v350 = *(v137 + 144);
      v353 = *(v137 + 136);
      v343 = *(v137 + 160);
      v347 = *(v137 + 152);
      v331 = v148;
      if (*(v389 + 72))
      {
        if (v112 == v333)
        {
          v150 = 1;
          if (v112 != v149)
          {
            v153 = 5;
            v151 = 13;
            goto LABEL_127;
          }

          v151 = 13;
          v152 = 13;
LABEL_124:
          v153 = v152;
          goto LABEL_127;
        }

        v150 = 0;
        if (v112 == v336)
        {
          v151 = 13;
        }

        else
        {
          v151 = 5;
        }

        v153 = 5;
        v152 = 13;
        if (v112 == v149)
        {
          goto LABEL_124;
        }
      }

      else if (v112 == v333)
      {
        v150 = 1;
        if (v112 == v149)
        {
          v151 = 7;
          v153 = 7;
        }

        else
        {
          v153 = 5;
          v151 = 7;
        }
      }

      else
      {
        v150 = 0;
        if (v112 == v336)
        {
          v151 = 7;
        }

        else
        {
          v151 = 5;
        }

        v153 = 5;
        v152 = 7;
        if (v112 == v149)
        {
          goto LABEL_124;
        }
      }

LABEL_127:
      v339 = v153;
      v154 = UIEdgeInsetsReplace(v151, 0.0, 0.0, 0.0, 0.0, *(v389 + 8));
      v156 = v155;
      v158 = v157;
      v432 = v159;
      swift_getKeyPath();
      v399 = v138;
      v402 = v139;
      v394 = v140;
      v397 = v141;
      if (v139 == 0.0 && v138 == 0.0 && v141 == 0.0 && v140 == 0.0)
      {
        v160 = UIEdgeInsetsAdd(v151, v448, v445, v441, v437, v154);
        v164 = v139;
        v165 = v138;
        v428 = v141;
        v433 = 0.0;
      }

      else
      {
        v166 = v145;
        v167 = v142;
        v168 = v151 & v143;
        if (v147)
        {
          v169 = UIEdgeInsetsMin(15, v139, v138, v141, v140, v154);
          UIEdgeInsetsReplace(v151 & v143, 0.0, 0.0, 0.0, 0.0, v169);
          v419 = v419 + v170 + v171;
        }

        v172 = v154;
        v173 = UIEdgeInsetsMax(v151 & v143, v139, v138, v141, v140, v154);
        v177 = UIEdgeInsetsSubtract(v168 & v167, v173, v174, v175, v176, v139);
        v178 = v168 & v167;
        v142 = v167;
        v182 = UIEdgeInsetsMax(v178, v177, v179, v180, v181, v139);
        v186 = UIEdgeInsetsAdd(15, v182, v183, v184, v185, v448);
        v188 = v187;
        v190 = v189;
        v191 = v156;
        v192 = v432;
        v165 = v188;
        v164 = v186;
        v428 = v193;
        v433 = v190;
        v194 = UIEdgeInsetsSubtract(v151, v172, v191, v158, v192, v186);
        v160 = UIEdgeInsetsMax(v151, v194, v195, v196, v197, 0.0);
        v145 = v166;
      }

      v467 = v160;
      v468 = *&v161;
      v469 = v162;
      v470 = v163;
      if ((v147 & 1) == 0)
      {
        v198 = v423;
LABEL_139:
        if (v150 && (v164 != 0.0 || v165 != 0.0 || v428 != 0.0 || v433 != 0.0))
        {
          goto LABEL_159;
        }

        v199 = 0.0;
        goto LABEL_145;
      }

      if (v331)
      {
        v198 = v423 + v412 + v163 + v387 + v165 + v433 + v161;
        goto LABEL_139;
      }

      v198 = v423;
      if (v423 <= 0.0)
      {
        goto LABEL_139;
      }

      *&v453 = v448;
      *(&v453 + 1) = v445;
      v454 = v441;
      v455 = v437;

      swift_getAtKeyPath();

      *&v453 = v423 + v456;
      swift_setAtWritableKeyPath();
      if (!v150)
      {
        v199 = 0.0;
        v198 = 0.0;
LABEL_145:
        v200 = v391;
        v201 = v382;
        if (v112 == v336)
        {
          goto LABEL_146;
        }

        goto LABEL_86;
      }

      if (v164 != 0.0 || v165 != 0.0)
      {
        v198 = 0.0;
LABEL_159:
        v424 = v198;
        v200 = v391;
        v201 = v382;
LABEL_160:
        v202 = UIEdgeInsetsAdd(v151, v461, v462, v463, v464, v164);
        v204 = v203;
        v206 = v205;
        v208 = v207;
        swift_beginAccess();
        v461 = v202;
        v462 = v204;
        v463 = v206;
        v464 = v208;
        v209 = swift_modifyAtWritableKeyPath();
        *v210 = *v210 + 50.0;
        v209(&v453, 0);
        swift_endAccess();
        v199 = 0.0;
        v198 = v424;
        goto LABEL_86;
      }

      v424 = 0.0;
      v200 = v391;
      v201 = v382;
      if (v428 != 0.0 || v433 != 0.0)
      {
        goto LABEL_160;
      }

      v199 = 0.0;
      v198 = 0.0;
      if (v112 == v336)
      {
LABEL_146:
        v199 = v461;
        if (v461 == 0.0 && v462 == 0.0 && v463 == 0.0 && v464 == 0.0)
        {
          v199 = 0.0;
        }

        else
        {
          v461 = 0.0;
          v462 = 0.0;
          v463 = 0.0;
          v464 = 0.0;
        }
      }

LABEL_86:
      v423 = v198;
      v114 = v419;
      v115 = v419 >= 0.0;
      v116 = --v111 == 0;
      v117 = v387 + v419;
      if (!v115 || !v116)
      {
        v117 = v387;
      }

      v386 = v117;
      if (v115 && v116)
      {
        v114 = 0.0;
      }

      v419 = v114;
      v118 = v199;
      v119 = UIEdgeInsetsMax(15, v353, v350, v347, v343, v467);
      v349 = v120;
      v352 = v119;
      v342 = v122;
      v346 = v121;
      v123 = UIEdgeInsetsMax(15, v362, v359, v357, v355, v164);
      v125 = v124;
      v127 = v126;
      v129 = v128;
      v130 = UIEdgeInsetsMax(15, v379, v375, v372, v369, v118);
      *&v491 = v402;
      *(&v491 + 1) = v399;
      v492 = v397;
      v493 = v394;
      v494 = v448;
      v495 = v445;
      v496 = v441;
      v497 = v437;
      v498 = v142;
      v499 = v143;
      v500 = v200;
      v501 = v145;
      *v502 = *v451;
      *&v502[3] = *&v451[3];
      v505 = v458;
      v504 = v457;
      v503 = v386;
      v506 = v412;
      v507 = v352;
      v508 = v349;
      v509 = v346;
      v510 = v342;
      v511 = v123;
      v512 = v125;
      v513 = v127;
      v514 = v129;
      v515 = v339 | v365;
      v516 = v201;
      v517 = v130;
      v518 = v131;
      v519 = v132;
      v520 = v133;
      v521 = v147;
      swift_beginAccess();
      v134 = swift_isUniquelyReferenced_nonNull_native();
      v456 = *(v367 + 16);
      sub_188E9E278(&v491, v35, v134);
      v8 = v456;
      *(v367 + 16) = v456;
      swift_endAccess();

      ++v112;
      v113 = v407;
      if (!v111)
      {
        goto LABEL_163;
      }
    }

    if (v333 < 0)
    {
      if (v145)
      {
        v333 = v112;
        if ((v336 & 0x8000000000000000) == 0)
        {
          v148 = 1;
          v333 = v112;
          goto LABEL_106;
        }

        goto LABEL_102;
      }

      if ((v336 & 0x8000000000000000) == 0)
      {
        v148 = 0;
        goto LABEL_106;
      }
    }

    else
    {
      if ((v336 & 0x8000000000000000) == 0)
      {
        v148 = v145;
        goto LABEL_106;
      }

      if (v145)
      {
LABEL_102:
        v148 = 1;
        goto LABEL_106;
      }
    }

    v148 = 0;
    v336 = v112;
LABEL_106:
    v149 = v112;
    if (v113 < 0)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

LABEL_163:
  sub_188A3F5FC(&v465, &qword_1EA934300);
  v211 = swift_allocObject();
  *(v211 + 16) = 0;
  v388 = (v211 + 16);
  v366 = swift_allocObject();
  *(v366 + 16) = 0;
  v370 = (v366 + 16);
  v212 = swift_allocObject();
  *(v212 + 16) = MEMORY[0x1E69E7CC8];
  v446 = (v212 + 16);
  v213 = v389;
  swift_beginAccess();
  v214 = 0.0;
  if ((*(v389 + 72) & 1) == 0)
  {
    v214 = *(v389 + 40);
  }

  v449 = v214;
  v35 = *(v326 + 32);
  swift_beginAccess();
  *v388 = v449;
  swift_beginAccess();
  *v370 = v449;
  v360 = v35;
  if (v35 >= 0)
  {
    v215 = v35;
  }

  else
  {
    v215 = v324;
  }

  if (v324 < v215)
  {
    goto LABEL_311;
  }

  v363 = v212;
  v383 = *(v326 + 48);
  v216 = v215 & 0x7FFFFFFFFFFFFFFFLL;

  v376 = v8;
  v380 = v211;
  if (v216)
  {
    v373 = v322 + 24;
    v392 = v449;
    do
    {
      v218 = *(v373 + 8 * v216);
      if (!*(*&v8 + 16))
      {
        goto LABEL_316;
      }

      v219 = *(v213 + 72);
      v220 = sub_188B85570(*(v373 + 8 * v216));
      if ((v221 & 1) == 0)
      {
        goto LABEL_316;
      }

      v222 = *(*&v8 + 56) + (v220 << 8);
      v223 = *(v222 + 96);
      v224 = *(v222 + 128);
      v225 = *(v222 + 144);
      v227 = *(v222 + 160);
      v226 = *(v222 + 168);
      v228 = *(v222 + 176);
      v229 = *(v222 + 184);
      v230 = *(v222 + 192);
      v231 = *(v222 + 208);
      v35 = *(v213 + 72);
      v232 = v226 != 0.0;
      if (v228 != 0.0)
      {
        v232 = 1;
      }

      v233 = v392;
      if (v229 != 0.0)
      {
        v232 = 1;
      }

      if (*(v222 + 88))
      {
        v233 = v449;
      }

      if (v230 != 0.0)
      {
        v232 = 1;
      }

      v234 = v223 + v225 + v227;
      v235 = v233 - v228 - v234 - v230;
      v236 = v233 - v224;
      if (*(v213 + 72))
      {
        v235 = v235 - v224;
      }

      else
      {
        v236 = v235 - v224;
      }

      v237 = v233 + v228;
      v238 = v234 + v233 + v228 + v230;
      if ((v35 & 1) == 0)
      {
        v238 = v233;
        v237 = v233 + v224 + v228;
      }

      v239 = -1.0;
      if ((v219 & 1) == 0)
      {
        v239 = 1.0;
        v236 = v238;
        v235 = v237;
      }

      if (v231 + 0x4000000000000000 < 0)
      {
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:

        goto LABEL_293;
      }

      v408 = v235;
      v416 = *(v222 + 80);
      v240 = *(v222 + 104);
      v403 = *(v222 + 136);
      v413 = *(v222 + 152);
      v241 = *(v222 + 200);
      v420 = *(v222 + 112);
      v425 = *(v222 + 216);
      v429 = *(v222 + 224);
      v434 = *(v222 + 232);
      v438 = *(v222 + 240);
      v442 = v236;
      v242 = 2 * v231;
      v243 = v449 + (v224 + v234 + v228 + v230) * v239;
      if (*(v222 + 88))
      {
        v242 |= 1uLL;
      }

      else
      {
        *v370 = v243;
        v392 = v449 + (v224 + v234 + v228 + v230) * v239;
      }

      v400 = *(v213 + 48);
      *v388 = v243;
      v449 = v449 + (v224 + v234 + v228 + v230) * v239;
      if (v218)
      {
        if (qword_1EA930920 != -1)
        {
          v262 = v241;
          swift_once();
          v241 = v262;
        }

        if (qword_1EA930928 == v218)
        {
          v244 = &qword_1EA994EC0;
          if (qword_1EA930888 != -1)
          {
            v245 = v241;
            swift_once();
            v241 = v245;
            v244 = &qword_1EA994EC0;
          }

LABEL_203:
          v246 = *v244;
          goto LABEL_205;
        }
      }

      else if (v232)
      {
        v244 = &qword_1EA994EB8;
        if (qword_1EA930880 != -1)
        {
          v263 = v241;
          swift_once();
          v241 = v263;
          v244 = &qword_1EA994EB8;
        }

        goto LABEL_203;
      }

      v246 = 0;
LABEL_205:
      v395 = sub_188E636B4(v218, v241);
      v398 = v247;
      if (qword_1EA930880 != -1)
      {
        swift_once();
      }

      if (v246 == qword_1EA994EB8)
      {
        v248 = -1;
      }

      else
      {
        if (v246 == 1)
        {
          goto LABEL_213;
        }

        if (qword_1EA930888 != -1)
        {
          swift_once();
        }

        if (v246 == qword_1EA994EC0)
        {
LABEL_213:
          if (v35)
          {
            v248 = 5;
          }

          else
          {
            v248 = 10;
          }
        }

        else
        {
          v248 = 0;
        }
      }

      if (v383 + v223 < v240)
      {
        v240 = v383 + v223;
      }

      swift_beginAccess();
      v211 = swift_isUniquelyReferenced_nonNull_native();
      v249 = *v446;
      *&v35 = COERCE_DOUBLE(sub_188B85570(v218));
      v251 = v249[2];
      v252 = (v250 & 1) == 0;
      v253 = v251 + v252;
      if (__OFADD__(v251, v252))
      {
        goto LABEL_290;
      }

      v254 = v250;
      if (v249[3] >= v253)
      {
        if ((v211 & 1) == 0)
        {
          sub_188FA1728();
        }
      }

      else
      {
        sub_1890BB7D4(v253, v211);
        *&v255 = COERCE_DOUBLE(sub_188B85570(v218));
        if ((v254 & 1) != (v256 & 1))
        {
          goto LABEL_318;
        }

        v35 = v255;
      }

      v211 = v380;
      v257 = v400 - v226 - v229;
      if (v254)
      {
        v217 = v249[7] + 216 * v35;
        *v217 = v246;
        *(v217 + 8) = v408;
        *(v217 + 16) = v226;
        *(v217 + 24) = v234;
        *(v217 + 32) = v257;
        *(v217 + 40) = v403;
        *(v217 + 48) = v225;
        *(v217 + 56) = v413;
        *(v217 + 64) = v227;
        *(v217 + 72) = 0;
        *(v217 + 80) = v416;
        *(v217 + 88) = v242;
        *(v217 + 96) = v248;
        *(v217 + 104) = v240;
        *(v217 + 112) = v420;
        *(v217 + 120) = v231;
        *(v217 + 128) = v395;
        *(v217 + 136) = v425;
        *(v217 + 144) = v429;
        *(v217 + 152) = v434;
        *(v217 + 160) = v438;
        *(v217 + 168) = v398;
        *(v217 + 176) = v442;
        *(v217 + 184) = v226;
        *(v217 + 192) = v224;
        *(v217 + 200) = v257;
        *(v217 + 208) = 0;
      }

      else
      {
        v249[(v35 >> 6) + 8] |= 1 << v35;
        *(v249[6] + 8 * v35) = v218;
        v258 = v249[7] + 216 * v35;
        *v258 = v246;
        *(v258 + 8) = v408;
        *(v258 + 16) = v226;
        *(v258 + 24) = v234;
        *(v258 + 32) = v257;
        *(v258 + 40) = v403;
        *(v258 + 48) = v225;
        *(v258 + 56) = v413;
        *(v258 + 64) = v227;
        *(v258 + 72) = 0;
        *(v258 + 80) = v416;
        *(v258 + 88) = v242;
        *(v258 + 96) = v248;
        *(v258 + 104) = v240;
        *(v258 + 112) = v420;
        *(v258 + 120) = v231;
        *(v258 + 128) = v395;
        *(v258 + 136) = v425;
        *(v258 + 144) = v429;
        *(v258 + 152) = v434;
        *(v258 + 160) = v438;
        *(v258 + 168) = v398;
        *(v258 + 176) = v442;
        *(v258 + 184) = v226;
        *(v258 + 192) = v224;
        *(v258 + 200) = v257;
        *(v258 + 208) = 0;
        v259 = v249[2];
        v260 = __OFADD__(v259, 1);
        v261 = v259 + 1;
        if (v260)
        {
          goto LABEL_291;
        }

        v249[2] = v261;
      }

      --v216;
      *v446 = v249;
      swift_endAccess();
      v213 = v389;
      v8 = v376;
    }

    while (v216);
  }

  sub_188A3F5FC(&v466, &qword_1EA934300);
  v264 = 0.0;
  if ((*(v213 + 72) & 1) == 0)
  {
    v264 = *(v213 + 40);
  }

  *v388 = v264;
  *v370 = v264;
  v218 = v326;
  v265 = v324;
  v266 = v360;
  if (v360 < 0)
  {
    goto LABEL_292;
  }

  v450 = v264;
  if (v324 < v360)
  {
    goto LABEL_313;
  }

  if (v360 != v324)
  {
    v268 = v267 + 32;
    *&v35 = 2.0;
    if (a2 == 1)
    {
      v269 = 1.0;
    }

    else
    {
      v269 = 0.0;
    }

    v409 = v269;
    v414 = v450;
    do
    {
      if (v266 >= v265)
      {
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        v467 = 0.0;
        v468 = 0xE000000000000000;
        sub_18A4A80E8();
        MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
        type metadata accessor for Column(0);
        sub_18A4A82D8();
        MEMORY[0x18CFE22D0](41, 0xE100000000000000);
        goto LABEL_317;
      }

      v274 = *(v268 + 8 * v266);
      if (!*(*&v8 + 16) || (v275 = v266, v276 = *(v389 + 72), v277 = sub_188B85570(v274), (v278 & 1) == 0))
      {
        sub_18A4A80E8();
        MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
        type metadata accessor for Column(0);
        sub_18A4A82D8();
        MEMORY[0x18CFE22D0](41, 0xE100000000000000);
        while (1)
        {
LABEL_317:
          sub_18A4A8398();
          __break(1u);
LABEL_318:
          type metadata accessor for Column(0);
          sub_18A4A87A8();
          __break(1u);
LABEL_319:
          *&v491 = 0;
          *(&v491 + 1) = 0xE000000000000000;
          sub_18A4A80E8();
          MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
          v467 = *&v35;
          type metadata accessor for Column(0);
          sub_18A4A82D8();
          MEMORY[0x18CFE22D0](41, 0xE100000000000000);
        }
      }

      v279 = *(*&v8 + 56) + (v277 << 8);
      v280 = *(v279 + 96);
      v281 = *(v279 + 128);
      v283 = *(v279 + 160);
      v282 = *(v279 + 168);
      v284 = *(v279 + 176);
      v285 = *(v279 + 184);
      v286 = *(v279 + 192);
      v287 = *(v279 + 208);
      v288 = *(v389 + 72);
      v289 = v282 != 0.0;
      if (v284 != 0.0)
      {
        v289 = 1;
      }

      if (v285 != 0.0)
      {
        v289 = 1;
      }

      v290 = v414;
      if (*(v279 + 88))
      {
        v290 = v450;
      }

      if (v286 != 0.0)
      {
        v289 = 1;
      }

      v443 = *(v279 + 144);
      v291 = v280 + *(v279 + 144) + v283;
      v292 = v290 - v284 - v291 - v286;
      v293 = v290 - v281;
      if (*(v389 + 72))
      {
        v292 = v292 - v281;
      }

      else
      {
        v293 = v292 - v281;
      }

      v294 = v290 + v284;
      v295 = v291 + v290 + v284 + v286;
      if ((v288 & 1) == 0)
      {
        v295 = v290;
        v294 = v290 + v281 + v284;
      }

      v296 = 1.0;
      if (v276)
      {
        v297 = v295;
      }

      else
      {
        v296 = -1.0;
        v297 = v293;
      }

      if (v276)
      {
        v298 = v294;
      }

      else
      {
        v298 = v292;
      }

      if (v287 + 0x4000000000000000 < 0)
      {
        goto LABEL_310;
      }

      v299 = *(v279 + 80);
      v439 = *(v279 + 112);
      v421 = *(v279 + 104);
      v426 = *(v279 + 136);
      v300 = *(v279 + 200);
      v430 = *(v279 + 232);
      v435 = *(v279 + 216);
      v301 = 2 * v287;
      v302 = v450 + (v281 + v291 + v284 + v286) * v296;
      if (*(v279 + 88))
      {
        v301 |= 1uLL;
      }

      else
      {
        *v370 = v302;
        v414 = v450 + (v281 + v291 + v284 + v286) * v296;
      }

      v417 = *(v389 + 48);
      *v388 = v302;
      v450 = v450 + (v281 + v291 + v284 + v286) * v296;
      if (v274)
      {
        if (qword_1EA930920 != -1)
        {
          v309 = v300;
          swift_once();
          v300 = v309;
        }

        if (qword_1EA930928 != v274)
        {
LABEL_277:
          v305 = 0.0;
          goto LABEL_278;
        }

        v303 = &qword_1EA994EC0;
        if (qword_1EA930888 != -1)
        {
          v304 = v300;
          swift_once();
          v300 = v304;
          v303 = &qword_1EA994EC0;
        }
      }

      else
      {
        if (!v289)
        {
          goto LABEL_277;
        }

        v303 = &qword_1EA994EB8;
        if (qword_1EA930880 != -1)
        {
          v311 = v300;
          swift_once();
          v300 = v311;
          v303 = &qword_1EA994EB8;
        }
      }

      v305 = *v303;
LABEL_278:
      v306 = sub_188E636B4(v274, v300);
      if (qword_1EA930880 != -1)
      {
        v404 = v306;
        v308 = v307;
        swift_once();
        v306 = v404;
        v307 = v308;
      }

      if (*&v305 == qword_1EA994EB8)
      {
        v270 = -1;
      }

      else
      {
        if (*&v305 == 1)
        {
          goto LABEL_285;
        }

        if (qword_1EA930888 != -1)
        {
          v405 = v306;
          v310 = v307;
          swift_once();
          v306 = v405;
          v307 = v310;
        }

        if (*&v305 == qword_1EA994EC0)
        {
LABEL_285:
          v270 = 10;
          if (v288)
          {
            v270 = 5;
          }
        }

        else
        {
          v270 = 0;
        }
      }

      v271 = v275 + 1;
      v467 = v305;
      v266 = v271;
      v272 = v383 + v280;
      v468 = *&v298;
      v469 = v282;
      if (v383 + v280 >= v421)
      {
        v272 = v421;
      }

      v470 = v291;
      v471 = v417 - v282 - v285;
      v473 = v443;
      v472 = v426;
      v474 = v283;
      v475 = v409;
      v476 = v299;
      v477 = v301;
      v478 = v270;
      v479 = v272;
      v480 = v439;
      v481 = v287;
      v482 = v306;
      v483 = v435;
      v484 = v430;
      v485 = v307;
      v486 = v297;
      v487 = v282;
      v488 = v281;
      v489 = v471;
      v490 = a2;
      swift_beginAccess();
      v273 = swift_isUniquelyReferenced_nonNull_native();
      v452 = *v446;
      sub_188E9E3CC(&v467, v274, v273);
      *v446 = v452;
      swift_endAccess();
      v265 = v324;
      v218 = v326;
      v8 = v376;
      v211 = v380;
    }

    while (v324 != v271);
  }

LABEL_293:
  sub_188A3F5FC(&v466, &qword_1EA934300);
  v312 = *(v218 + 40);
  sub_188E62FE0(0, v211, v384, v366);
  if (v312 >= 0)
  {
    v313 = v312;
  }

  else
  {
    v313 = v321;
  }

  if (v321 < v313)
  {
    goto LABEL_312;
  }

  v314 = v313 & 0x7FFFFFFFFFFFFFFFLL;
  v315 = v325;
  if ((v313 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {

    do
    {
      sub_188E630A4(*(v325 + 24 + 8 * v314--), 0, 0, *(v389 + 72), v367, v384, v211, v366, v363);
    }

    while (v314);
    sub_188A3F5FC(&v465, &qword_1EA934300);
    v315 = v325;
  }

  sub_188E62FE0(0, v211, v384, v366);
  v35 = a2;
  if ((v312 & 0x8000000000000000) == 0)
  {
    if (v321 < v312)
    {
      goto LABEL_314;
    }

    if (v321 != v312)
    {
      v316 = v321 - v312;
      if (v321 <= v312)
      {
        goto LABEL_315;
      }

      v317 = (v315 + 8 * v312 + 32);
      do
      {
        v318 = *v317++;
        sub_188E630A4(v318, 0, a2, (*(v389 + 72) & 1) == 0, v367, v384, v211, v366, v363);
        --v316;
      }

      while (v316);
      sub_188A3F5FC(&v465, &qword_1EA934300);
    }
  }

  swift_beginAccess();
  v319 = *(v363 + 16);

  return v319;
}

uint64_t sub_188E613E4(uint64_t result, double *a2, double a3)
{
  v4 = *a2;
  if (!*(*a2 + 16))
  {
    return result;
  }

  v7 = result;
  result = sub_188B85570(result);
  if ((v8 & 1) == 0)
  {
    return result;
  }

  v9 = *(v4 + 56) + (result << 8);
  if (*(v9 + 248) != 1)
  {
    return result;
  }

  if (a3 <= 0.0)
  {
    goto LABEL_28;
  }

  v10 = *(v9 + 112);
  if (*(v9 + 96) - v10 <= a3)
  {
    a3 = *(v9 + 96) - v10;
  }

  if (a3 < 0.0)
  {
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *a2;
  v13 = sub_188B85570(v7);
  v14 = v65[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
LABEL_26:
    sub_188FA1534();
    goto LABEL_13;
  }

  v3 = v12;
  if (v65[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

  sub_1890BB4C0(v16, isUniquelyReferenced_nonNull_native);
  v17 = sub_188B85570(v7);
  if ((v3 & 1) != (v18 & 1))
  {
LABEL_29:
    type metadata accessor for Column(0);
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

  v13 = v17;
LABEL_13:
  if (v3)
  {
    memmove(&__dst, (v65[7] + (v13 << 8)), 0xF9uLL);
    signpost_c2_entryLock_start(v19, v20);
  }

  else
  {
    sub_188E67FD4(&__dst);
  }

  v61 = v68;
  v62 = v69;
  v63 = v70;
  v64 = v71;
  v59 = __dst;
  v60 = v67;
  v21 = *v72;
  v53 = *&v72[72];
  v54 = *&v72[88];
  v51 = *&v72[40];
  v52 = *&v72[56];
  v58 = v72[152];
  v56 = *&v72[120];
  v57 = *&v72[136];
  v55 = *&v72[104];
  v49 = *&v72[8];
  v50 = *&v72[24];
  v37[2] = v68;
  v37[3] = v69;
  v37[4] = v70;
  v37[5] = v71;
  v37[0] = __dst;
  v37[1] = v67;
  v38 = *v72;
  v39 = *&v72[8];
  v40 = *&v72[24];
  v44 = *&v72[88];
  v43 = *&v72[72];
  v42 = *&v72[56];
  v41 = *&v72[40];
  v48 = v72[152];
  v47 = *&v72[136];
  v46 = *&v72[120];
  v45 = *&v72[104];
  if (sub_188E036AC(v37) == 1)
  {
    __break(1u);
LABEL_28:
    sub_18A4A8398();
    __break(1u);
    goto LABEL_29;
  }

  v25[2] = v61;
  v25[3] = v62;
  v25[4] = v63;
  v25[5] = v64;
  v25[0] = v59;
  v25[1] = v60;
  v35 = v57;
  v34 = v56;
  v33 = v55;
  v32 = v54;
  v31 = v53;
  v30 = v52;
  v29 = v51;
  v27 = v49;
  v22 = v21 - a3;
  v36 = v58;
  v28 = v50;
  v26 = v22;
  result = sub_188E036AC(v25);
  if (result == 1)
  {
    v23 = v65;
    if (v3)
    {
      result = sub_188F9CD1C(v13, v65);
    }
  }

  else
  {
    v68 = v61;
    v69 = v62;
    v70 = v63;
    v71 = v64;
    __dst = v59;
    v67 = v60;
    *&v72[104] = v55;
    *&v72[120] = v56;
    *&v72[136] = v57;
    *&v72[40] = v51;
    *&v72[56] = v52;
    *&v72[72] = v53;
    *&v72[88] = v54;
    *&v72[8] = v49;
    v72[152] = v58;
    *&v72[24] = v50;
    *v72 = v22;
    v23 = v65;
    if (v3)
    {
      v24 = (v65[7] + (v13 << 8));
      v24[12] = *&v72[96];
      v24[13] = *&v72[112];
      v24[14] = *&v72[128];
      *(v24 + 233) = *&v72[137];
      v24[8] = *&v72[32];
      v24[9] = *&v72[48];
      v24[10] = *&v72[64];
      v24[11] = *&v72[80];
      v24[4] = v70;
      v24[5] = v71;
      v24[6] = *v72;
      v24[7] = *&v72[16];
      *v24 = __dst;
      v24[1] = v67;
      v24[2] = v68;
      v24[3] = v69;
    }

    else
    {
      result = sub_188F157B4(v13, v7, &__dst, v65);
    }
  }

  *a2 = v23;
  a2[6] = a3 + a2[6];
  return result;
}

uint64_t sub_188E6184C(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  if (!*(*a2 + 16))
  {
    return result;
  }

  v5 = result;
  result = sub_188B85570(result);
  if ((v6 & 1) == 0)
  {
    return result;
  }

  v7 = *(v3 + 56) + (result << 8);
  if (*(v7 + 248) == 1)
  {
    v8 = a2[3];
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
      __break(1u);
LABEL_23:
      sub_188FA1534();
      v20 = v28;
      goto LABEL_8;
    }

    v11 = *(v7 + 8);
    v12 = *(v7 + 24);
    v13 = *(v7 + 40);
    v14 = *(v7 + 56);
    v15 = *(v7 + 96);
    v16 = *(v7 + 128);
    a2[3] = v10;
    *(a2 + 6) = v16 + v14 + v13 + v12 + v11 + v15 + *(a2 + 6);
  }

  v17 = sub_188B85570(v5);
  if ((v18 & 1) == 0)
  {
    goto LABEL_9;
  }

  v2 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a2;
  v28 = *a2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_23;
  }

LABEL_8:
  sub_188F9CD1C(v2, v20);
  *a2 = v20;
LABEL_9:
  v21 = a2[1];
  if (!*(v21 + 16) || *(v21 + 32) != v5)
  {
    v25 = a2[2];
    if (!*(v25 + 16) || *(v25 + 32) != v5)
    {
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000067, 0x800000018A68C5A0);
      type metadata accessor for Column(0);
      sub_18A4A82D8();
      MEMORY[0x18CFE22D0](41, 0xE100000000000000);
      result = sub_18A4A8398();
      __break(1u);
      return result;
    }

    result = sub_189013C9C(0, 1);
    v26 = a2[5];
    v23 = v26 < 1;
    v27 = v26 - 1;
    if (v23)
    {
      if (*(a2[2] + 16))
      {
        return result;
      }

      v27 = -1;
    }

    a2[5] = v27;
    return result;
  }

  result = sub_189013C9C(0, 1);
  v22 = a2[4];
  v23 = v22 < 1;
  v24 = v22 - 1;
  if (!v23)
  {
LABEL_12:
    a2[4] = v24;
    return result;
  }

  if (!*(a2[1] + 16))
  {
    v24 = -1;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_188E61A88(uint64_t a1, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v17 = (a3 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v18 = *v17;
  if (!*(*v17 + 16))
  {
    goto LABEL_192;
  }

  v19 = sub_188B85570(a1);
  if ((v20 & 1) == 0)
  {
    goto LABEL_192;
  }

  v21 = *(v18 + 56) + 160 * v19;
  v22 = *(v21 + 88);
  v135 = *(v21 + 136);
  swift_endAccess();
  v23 = a4;
  swift_beginAccess();
  v24 = *(a4 + 16);
  LODWORD(v128) = v22;
  if (*(v24 + 16) <= a2)
  {
    v25 = v17;
    v8 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v29 = -1;
    v27 = MEMORY[0x1E69E7CC8];
    v11 = MEMORY[0x1E69E7CC0];
    v9 = -1;
    v12 = a7;
  }

  else
  {
    if (a2 < 0)
    {
      __break(1u);
      goto LABEL_182;
    }

    v25 = v17;
    v26 = v24 + 56 * a2;
    v27 = *(v26 + 32);
    v28 = *(v26 + 40);
    v11 = *(v26 + 48);
    v8 = *(v26 + 56);
    v29 = *(v26 + 64);
    v9 = *(v26 + 72);
    v12 = *(v26 + 80);
  }

  *&v180 = v27;
  v129 = v28;
  *(&v180 + 1) = v28;
  *&v181 = v11;
  *(&v181 + 1) = v8;
  *&v182 = v29;
  *(&v182 + 1) = v9;
  v183 = v12;
  sub_188E62B84(a1, &v184, a7, 1.79769313e308);
  v176 = v186;
  v177 = v187;
  v178 = v188;
  v179 = v189;
  v174 = v184;
  v175 = v185;
  v13 = v190;
  v167 = v191;
  v168 = v192;
  v173 = v197;
  v171 = v195;
  v172 = v196;
  v169 = v193;
  v170 = v194;
  v165 = v198;
  v166 = v199;
  v30 = v25[20];
  if (*(v30 + 16))
  {
    v131 = *(v30 + 32) == a1;
  }

  else
  {
    v131 = 0;
  }

  LOBYTE(v10) = v200;
  v127 = v25;
  v130 = v25[19];
  v31 = 64;
  if (v135 == v130)
  {
    v31 = 56;
  }

  v17 = *(a5 + 8 * (v135 != v130));
  if (v135 == v130)
  {
    v9 = v29;
  }

  v32 = *(a5 + v31);
  if (qword_1EA930918 != -1)
  {
LABEL_180:
    v122 = v32;
    swift_once();
    v32 = v122;
  }

  v23 = qword_1EA994EC8;
  v7 = a1;
  if (v17 != qword_1EA994EC8)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (qword_1EA930920 != -1)
        {
          goto LABEL_186;
        }

        goto LABEL_25;
      }

      v34 = a2;
      v35 = 1;
      v36 = 2;
      if (v17)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v34 = a2;
      v35 = 0;
      v36 = 1;
      if (v17)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_23;
  }

  v33 = 0;
  while (1)
  {
    v38 = *(&v192 + 1) + *(&v187 + 1) + *(&v186 + 1) + v13 + *(&v184 + 1) + *(&v185 + 1);
    if (v38 > a7)
    {
      if (a2)
      {
LABEL_47:
        v39 = v10;
        v40 = v131;
        if (v131)
        {
          v45 = v129;
          v46 = 0;
          v10 = a4;
          v41 = v130;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_49;
          }

LABEL_61:
          v45 = sub_188B9DE3C(0, *(v45 + 2) + 1, 1, v45);
          goto LABEL_49;
        }

        v42 = v135;
        v41 = v130;
      }

      else
      {
LABEL_36:
        v39 = v10;
        v40 = v131;
        v41 = v130;
        if (v131)
        {
          goto LABEL_76;
        }

        v42 = v135;
      }

      v10 = a4;
      if (v42 != v41)
      {
        goto LABEL_161;
      }

      v45 = v129;
      v46 = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_49;
    }

    if (v128)
    {
      if (a2)
      {
        v43 = *(a5 + 40);
        v17 = v127;
LABEL_44:
        if ((v33 & v43) != 1)
        {
          goto LABEL_47;
        }

        v128 = v7;
        if (v135 != *(a5 + 32))
        {
          goto LABEL_72;
        }

LABEL_46:
        v44 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_91;
      }

      v128 = v7;
      v51 = v17 == v23 || v32 == 2;
      v52 = v51 || v33;
      if (*(a5 + 48) == 2)
      {
        v44 = 1;
      }

      else
      {
        v44 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v17 = v127;
      if (!v52)
      {
LABEL_72:
        v39 = v10;
        v41 = v130;
        v40 = v131;
        v53 = v135 == v130 || v131;
        v7 = v128;
        if ((v53 & 1) == 0)
        {
          v10 = a4;
          goto LABEL_161;
        }

LABEL_76:
        v45 = v129;
        v46 = 0;
        v10 = a4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }
    }

    else
    {
      if (a2)
      {
        v17 = v127;
        if (v9 < 0)
        {
          goto LABEL_47;
        }

        v43 = *(a5 + 40);
        goto LABEL_44;
      }

      if (*(a5 + 48) != 2)
      {
        if (v17 == v23)
        {
          v17 = v127;
          if (v9 < 0)
          {
            goto LABEL_36;
          }

          v128 = v7;
        }

        else
        {
          v17 = v127;
          if (v9 < 0)
          {
            goto LABEL_36;
          }

          v128 = v7;
          if (v32 != 2 && !v33)
          {
            goto LABEL_72;
          }
        }

        goto LABEL_46;
      }

      if (v17 == v23)
      {
        v17 = v127;
        if (v9 < 0)
        {
          goto LABEL_36;
        }

        v128 = v7;
      }

      else
      {
        v17 = v127;
        if (v9 < 0)
        {
          goto LABEL_36;
        }

        v128 = v7;
        if (v32 != 2 && !v33)
        {
          goto LABEL_72;
        }
      }

      v44 = 1;
    }

LABEL_91:
    v54 = v8 < v44;
    if (v12 < v38 || v8 >= v44)
    {
      v56 = 0;
      v57 = 0;
      v58 = __OFADD__(a2, 1);
      LODWORD(v127) = v58;
LABEL_99:
      while (2)
      {
        if (!v54)
        {
          goto LABEL_109;
        }

        v59 = v17[20];
        if (*(v59 + 16) > v56)
        {
          sub_188E613E4(*(v59 + 8 * v56++ + 32), &v180, v38 - v12);
          v12 = v183;
          v8 = *(&v181 + 1);
          v54 = *(&v181 + 1) < v44;
          goto LABEL_102;
        }

        if (v57 & 1 | (v8 > 1))
        {
LABEL_109:
          if (a2 == a6)
          {
            break;
          }

          v234 = v180;
          v235 = v181;
          v236 = v182;
          v237 = v183;
          v61 = sub_188E62E4C();
          sub_188E6184C(v61, &v180);
          if (v127)
          {
            goto LABEL_188;
          }

          sub_188E61A88(v61, a2 + 1, a3, a4, a5, a6, a7);
          v62 = v180;
          v8 = v180 + 64;
          v63 = 1 << *(v180 + 32);
          if (v63 < 64)
          {
            v64 = ~(-1 << v63);
          }

          else
          {
            v64 = -1;
          }

          v65 = v64 & *(v180 + 64);
          v9 = (v63 + 63) >> 6;
          v12 = v183;

          a1 = 0;
          v11 = v62;
          while (1)
          {
            while (1)
            {
LABEL_115:
              if (!v65)
              {
                while (2)
                {
                  v67 = a1 + 1;
                  if (__OFADD__(a1, 1))
                  {
                    __break(1u);
                    goto LABEL_180;
                  }

                  if (v67 < v9)
                  {
                    v66 = *(v8 + 8 * v67);
                    ++a1;
                    if (v66)
                    {
                      a1 = v67;
                      goto LABEL_121;
                    }

                    continue;
                  }

                  break;
                }

                *&v180 = v11;
                v183 = v12;

                v57 = 0;
                v56 = 0;
                v8 = *(&v181 + 1);
                v54 = *(&v181 + 1) < v44;
                if (v12 >= v38 && *(&v181 + 1) < v44)
                {
                  goto LABEL_148;
                }

                goto LABEL_99;
              }

              v66 = v65;
LABEL_121:
              v65 = (v66 - 1) & v66;
              if (*(v11 + 2))
              {
                v129 = *(*(v62 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v66)))));
                LOBYTE(v10) = (v66 - 1) & v66;
                v68 = sub_188B85570(v129);
                if (v69)
                {
                  v70 = *(v11 + 7) + (v68 << 8);
                  if (*(v70 + 248) == 1)
                  {
                    break;
                  }
                }
              }
            }

            v71 = *(v70 + 120) - *(v70 + 96);
            if (v71 < 0.0)
            {
              goto LABEL_193;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v164 = v11;
            v73 = sub_188B85570(v129);
            v74 = *(v11 + 2);
            v75 = (v72 & 1) == 0;
            v76 = v74 + v75;
            if (__OFADD__(v74, v75))
            {
              goto LABEL_189;
            }

            v125 = v72;
            if (*(v11 + 3) >= v76)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                if ((v72 & 1) == 0)
                {
                  goto LABEL_129;
                }
              }

              else
              {
                v11 = v73;
                sub_188FA1534();
                v73 = v11;
                if ((v125 & 1) == 0)
                {
                  goto LABEL_129;
                }
              }
            }

            else
            {
              sub_1890BB4C0(v76, isUniquelyReferenced_nonNull_native);
              v77 = sub_188B85570(v129);
              if ((v125 & 1) != (v78 & 1))
              {
                goto LABEL_194;
              }

              v73 = v77;
              if ((v125 & 1) == 0)
              {
LABEL_129:
                v10 = v73;
                sub_188E67FD4(&__dst);
                goto LABEL_133;
              }
            }

            v10 = v73;
            memmove(&__dst, (*(v164 + 7) + (v73 << 8)), 0xF9uLL);
            signpost_c2_entryLock_start(v79, v80);
LABEL_133:
            v160 = v219;
            v161 = v220;
            v162 = v221;
            v163 = v222;
            v158 = __dst;
            v159 = v218;
            v81 = v223;
            v152 = v228;
            v153 = v229;
            v150 = v226;
            v151 = v227;
            v157 = v233;
            v155 = v231;
            v156 = v232;
            v154 = v230;
            v148 = v224;
            v149 = v225;
            if (sub_188E036AC(&__dst) == 1)
            {
              goto LABEL_191;
            }

            v82 = v71 + v81;
            v136[2] = v160;
            v136[3] = v161;
            v136[4] = v162;
            v136[5] = v163;
            v136[0] = v158;
            v136[1] = v159;
            v137 = v82;
            v138 = v148;
            v139 = v149;
            v143 = v153;
            v142 = v152;
            v141 = v151;
            v140 = v150;
            v147 = v157;
            v146 = v156;
            v145 = v155;
            v144 = v154;
            v83 = sub_188E036AC(v136);
            v11 = v164;
            if (v83 == 1)
            {
              if (v125)
              {
                sub_188F9CD1C(v10, v164);
                v12 = v12 - v71;
                goto LABEL_115;
              }
            }

            else
            {
              if (v125)
              {
                v84 = *(v164 + 7) + (v10 << 8);
                v85 = v161;
                *(v84 + 32) = v160;
                *(v84 + 48) = v85;
                v86 = v163;
                *(v84 + 64) = v162;
                *(v84 + 80) = v86;
                v87 = v159;
                *v84 = v158;
                *(v84 + 16) = v87;
                *(v84 + 96) = v82;
                v88 = v149;
                *(v84 + 104) = v148;
                *(v84 + 120) = v88;
                v89 = v150;
                v90 = v151;
                v91 = v152;
                *(v84 + 184) = v153;
                *(v84 + 168) = v91;
                *(v84 + 152) = v90;
                *(v84 + 136) = v89;
                v92 = v154;
                v93 = v155;
                v94 = v156;
                *(v84 + 248) = v157;
                *(v84 + 232) = v94;
                *(v84 + 216) = v93;
                *(v84 + 200) = v92;
                v12 = v12 - v71;
                goto LABEL_115;
              }

              *&v164[8 * (v10 >> 6) + 64] |= 1 << v10;
              *(*(v11 + 6) + 8 * v10) = v129;
              v95 = v161;
              v96 = *(v11 + 7) + (v10 << 8);
              *(v96 + 32) = v160;
              *(v96 + 48) = v95;
              v97 = v163;
              *(v96 + 64) = v162;
              *(v96 + 80) = v97;
              v98 = v159;
              *v96 = v158;
              *(v96 + 16) = v98;
              *(v96 + 96) = v82;
              v99 = v149;
              *(v96 + 104) = v148;
              *(v96 + 120) = v99;
              v100 = v150;
              v101 = v151;
              v102 = v152;
              *(v96 + 184) = v153;
              *(v96 + 168) = v102;
              *(v96 + 152) = v101;
              *(v96 + 136) = v100;
              v103 = v154;
              v104 = v155;
              v105 = v156;
              *(v96 + 248) = v157;
              *(v96 + 232) = v105;
              *(v96 + 216) = v104;
              *(v96 + 200) = v103;
              v106 = *(v11 + 2);
              v107 = __OFADD__(v106, 1);
              v108 = v106 + 1;
              if (v107)
              {
                goto LABEL_190;
              }

              *(v11 + 2) = v108;
            }

            v12 = v12 - v71;
          }
        }

        sub_188E62B84(v128, &v201, a7, v12);
        v13 = v207;
        v176 = v203;
        v177 = v204;
        v178 = v205;
        v179 = v206;
        v174 = v201;
        v175 = v202;
        v171 = v212;
        v172 = v213;
        v173 = v214;
        v167 = v208;
        v168 = v209;
        v169 = v210;
        v170 = v211;
        v165 = v215;
        v166 = v216;
        v38 = *(&v209 + 1) + *(&v204 + 1) + *(&v203 + 1) + *(&v202 + 1) + v207 + *(&v201 + 1);
        v54 = v8 < v44;
        v57 = 1;
LABEL_102:
        if (v12 < v38 || v8 >= v44)
        {
          continue;
        }

        break;
      }
    }

LABEL_148:
    if (__OFADD__(v8, 1))
    {
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
      swift_endAccess();
      *&__dst = 0;
      *(&__dst + 1) = 0xE000000000000000;
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000057, 0x800000018A68C410);
      *&v201 = a1;
      type metadata accessor for Column(0);
      sub_18A4A82D8();
      MEMORY[0x18CFE22D0](41, 0xE100000000000000);
      while (1)
      {
LABEL_193:
        sub_18A4A8398();
        __break(1u);
LABEL_194:
        *&v180 = v11;
        v183 = v12;
        type metadata accessor for Column(0);
        sub_18A4A87A8();
        __break(1u);
      }
    }

    *(&v181 + 1) = v8 + 1;
    if (v38 >= v12)
    {
      v109 = v12;
    }

    else
    {
      v109 = v38;
    }

    v110 = v12 - v109;
    v183 = v110;
    v10 = a4;
    v7 = v128;
    v40 = v131;
    v41 = v130;
    if (v131)
    {
      if (v110 > 0.0)
      {
        v13 = v13 + v110;
      }
    }

    else if (v135 != v130)
    {
      v39 = 1;
      v11 = v181;
      if ((*(&v182 + 1) & 0x8000000000000000) == 0)
      {
        goto LABEL_161;
      }

      goto LABEL_57;
    }

    v45 = *(&v180 + 1);
    if ((v182 & 0x8000000000000000) != 0)
    {
      *&v182 = *(*(&v180 + 1) + 16);
    }

    v39 = 1;
    v46 = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_49:
    v48 = *(v45 + 2);
    v47 = *(v45 + 3);
    if (v48 >= v47 >> 1)
    {
      v45 = sub_188B9DE3C((v47 > 1), v48 + 1, 1, v45);
    }

    *(v45 + 2) = v48 + 1;
    *&v45[8 * v48 + 32] = v7;
    *(&v180 + 1) = v45;
    v49 = v135 != v41 || v40;
    if (v49 == 1)
    {
      v11 = v181;
      if (!v46 || (*(&v182 + 1) & 0x8000000000000000) == 0)
      {
        goto LABEL_161;
      }

LABEL_57:
      *(&v182 + 1) = *(v11 + 2);
LABEL_161:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_188B9DE3C(0, *(v11 + 2) + 1, 1, v11);
      }

      v112 = *(v11 + 2);
      v111 = *(v11 + 3);
      if (v112 >= v111 >> 1)
      {
        v11 = sub_188B9DE3C((v111 > 1), v112 + 1, 1, v11);
      }

      *(v11 + 2) = v112 + 1;
      *&v11[8 * v112 + 32] = v7;
      *&v181 = v11;
    }

    v219 = v176;
    v220 = v177;
    v221 = v178;
    v222 = v179;
    __dst = v174;
    v218 = v175;
    v223 = v13;
    v224 = v167;
    v225 = v168;
    v226 = v169;
    v229 = v172;
    v228 = v171;
    v227 = v170;
    *&v230 = v173;
    *(&v230 + 1) = a2;
    v232 = v166;
    v231 = v165;
    v233 = v39;
    v113 = v180;
    v114 = swift_isUniquelyReferenced_nonNull_native();
    *&v136[0] = v113;
    sub_188E9E278(&__dst, v7, v114);
    v22 = *&v136[0];
    *&v180 = *&v136[0];
    swift_beginAccess();
    v8 = *(v10 + 16);
    v9 = *(v8 + 16);
    v17 = *(&v180 + 1);
    v23 = *(&v181 + 1);
    v7 = v181;
    a1 = *(&v182 + 1);
    v11 = v182;
    a7 = v183;
    if (v9 <= a2)
    {
      break;
    }

    swift_beginAccess();

    v115 = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 16) = v8;
    if ((v115 & 1) == 0)
    {
LABEL_182:
      v8 = sub_189212AFC(v8);
      *(v10 + 16) = v8;
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_169;
      }

LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    if (a2 < 0)
    {
      goto LABEL_183;
    }

LABEL_169:
    if (*(v8 + 16) > a2)
    {
      v116 = v8 + 56 * a2;
      *(v116 + 32) = v22;
      *(v116 + 40) = v17;
      *(v116 + 48) = v7;
      *(v116 + 56) = v23;
      *(v116 + 64) = v11;
      *(v116 + 72) = a1;
      *(v116 + 80) = a7;
      *(v10 + 16) = v8;
      swift_endAccess();

      goto LABEL_175;
    }

    __break(1u);
LABEL_186:
    v123 = v32;
    swift_once();
    v32 = v123;
LABEL_25:
    v34 = a2;
    if (qword_1EA930928 == v7)
    {
      v35 = v7;
      v36 = 3;
      if (!v17)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v35 = v7;
      v36 = 4 * (v7 == 2);
      if (!v17)
      {
LABEL_23:
        v37 = 1;
        goto LABEL_33;
      }
    }

LABEL_20:
    if (v17 == 1)
    {
      v37 = 2;
    }

    else
    {
      if (qword_1EA930920 != -1)
      {
        a1 = v32;
        swift_once();
        v32 = a1;
      }

      if (qword_1EA930928 == v17)
      {
        v37 = 3;
      }

      else
      {
        v37 = 4 * (v17 == 2);
      }
    }

LABEL_33:
    v33 = v36 >= v37;
    v7 = v35;
    a2 = v34;
  }

  swift_beginAccess();

  v117 = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 16) = v8;
  if ((v117 & 1) == 0)
  {
LABEL_184:
    v8 = sub_188E4B53C(0, v9 + 1, 1, v8);
    *(v10 + 16) = v8;
  }

  v119 = *(v8 + 16);
  v118 = *(v8 + 24);
  if (v119 >= v118 >> 1)
  {
    v8 = sub_188E4B53C((v118 > 1), v119 + 1, 1, v8);
  }

  *(v8 + 16) = v119 + 1;
  v120 = v8 + 56 * v119;
  *(v120 + 32) = v22;
  *(v120 + 40) = v17;
  *(v120 + 48) = v7;
  *(v120 + 56) = v23;
  *(v120 + 64) = v11;
  *(v120 + 72) = a1;
  *(v120 + 80) = a7;
  *(v10 + 16) = v8;
  swift_endAccess();
LABEL_175:
}

void sub_188E62B84(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = (v4 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v9 = *v8;
  if (*(*v8 + 16) && (v10 = sub_188B85570(a1), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 160 * v10;
    v13 = *(v12 + 8);
    v39 = *v12;
    v40 = a4;
    v14 = *(v12 + 24);
    v38 = *(v12 + 16);
    v15 = *(v12 + 40);
    v16 = *(v12 + 48);
    v34 = *(v12 + 64);
    v35 = *(v12 + 56);
    v17 = *(v12 + 80);
    v36 = *(v12 + 72);
    v18 = *(v12 + 104);
    v33 = *(v12 + 96);
    v19 = *(v12 + 112);
    v20 = *(v12 + 120);
    v21 = *(v12 + 136);
    v22 = *(v12 + 144);
    v23 = *(v12 + 152);
    swift_endAccess();
    v24 = 0.0;
    if (v19 == 1 && (v22 & 1) == 0)
    {
      v24 = v8[21];
    }

    if (v23 == -3.40282347e38)
    {
      v23 = v20;
    }

    v32 = v13;
    v25 = v14 + v13 + v34 + v17 + v24;
    if (v18 > 0.0)
    {
      v26 = v18;
    }

    else
    {
      v26 = 0.0;
    }

    v27 = _UIClamp(v26, a3 - v25);
    v28 = v33;
    if (v33 <= 0.0)
    {
      v28 = 0.0;
    }

    v29 = _UIClamp(v28, a3 - v25);
    if (v23 > v27)
    {
      v30 = v23;
    }

    else
    {
      v30 = v27;
    }

    if (v29 < v30)
    {
      v30 = v29;
    }

    v31 = v40 - v25;
    if (v40 - v25 >= v30)
    {
      v31 = v30;
    }

    *a2 = v35;
    *(a2 + 8) = v34;
    if (v31 <= v27)
    {
      v31 = v27;
    }

    *(a2 + 16) = v36;
    *(a2 + 24) = v17;
    *(a2 + 32) = v39;
    *(a2 + 40) = v32;
    *(a2 + 48) = v38;
    *(a2 + 56) = v14;
    *(a2 + 64) = v15;
    *(a2 + 72) = v16;
    *(a2 + 80) = v21;
    *(a2 + 88) = v22;
    *(a2 + 96) = v31;
    *(a2 + 104) = v29;
    *(a2 + 112) = v27;
    *(a2 + 120) = v30;
    *(a2 + 128) = v24;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
  }

  else
  {
    swift_endAccess();
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000057, 0x800000018A68C410);
    type metadata accessor for Column(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    sub_18A4A8398();
    __break(1u);
  }
}

uint64_t sub_188E62E4C()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16))
  {
    result = *(v1 + 32);
    v3 = *(v0 + 16);
    if (!*(v3 + 16))
    {
      return result;
    }

    v4 = *(v3 + 32);
    if (result)
    {
      if (result == 1)
      {
        v5 = 2;
        if (!v4)
        {
LABEL_23:
          if (v5)
          {
            return 0;
          }

          return result;
        }
      }

      else
      {
        if (qword_1EA930920 != -1)
        {
          v10 = result;
          swift_once();
          result = v10;
        }

        if (qword_1EA930928 == result)
        {
          v5 = 3;
        }

        else
        {
          v5 = 4 * (result == 2);
        }

        if (!v4)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v5 = 1;
      if (!v4)
      {
        goto LABEL_23;
      }
    }

    if (v4 == 1)
    {
      if (v5 > 1)
      {
        return 1;
      }
    }

    else
    {
      if (qword_1EA930920 != -1)
      {
        v11 = result;
        swift_once();
        result = v11;
      }

      if (v5 < 4 && v4 == 2)
      {
        v8 = result;
      }

      else
      {
        v8 = v4;
      }

      if (v5 >= 3)
      {
        v9 = v4;
      }

      else
      {
        v9 = result;
      }

      if (qword_1EA930928 == v4)
      {
        return v9;
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {
    v6 = *(v0 + 16);
    if (*(v6 + 16))
    {
      return *(v6 + 32);
    }

    else
    {
      if (qword_1EA930918 != -1)
      {
        swift_once();
      }

      return qword_1EA994EC8;
    }
  }

  return result;
}

uint64_t sub_188E62FE0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
  if (a1)
  {
    swift_beginAccess();
    v7 = 0;
    if (*(v6 + 72))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  swift_beginAccess();
  v7 = 0;
  if (*(v6 + 72) == 1)
  {
LABEL_5:
    v7 = *(v6 + 40);
  }

LABEL_6:
  swift_beginAccess();
  *(a2 + 16) = v7;
  result = swift_beginAccess();
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_188E630A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  v16 = *(a5 + 16);
  if (!*(v16 + 16) || (v17 = sub_188B85570(a1), (v18 & 1) == 0))
  {
    swift_endAccess();
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
    type metadata accessor for Column(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    result = sub_18A4A8398();
    __break(1u);
    return result;
  }

  v19 = *(v16 + 56) + (v17 << 8);
  v20 = *(v19 + 80);
  v21 = a7 + 16;
  v22 = (a8 + 16);
  v23 = *(v19 + 88);
  v24 = *(v19 + 96);
  v25 = *(v19 + 112);
  v26 = *(v19 + 128);
  v67 = *(v19 + 136);
  v27 = *(v19 + 144);
  v64 = *(v19 + 104);
  v65 = *(v19 + 152);
  v28 = *(v19 + 168);
  v71 = *(v19 + 160);
  v30 = *(v19 + 176);
  v29 = *(v19 + 184);
  v31 = *(v19 + 192);
  v63 = *(v19 + 200);
  v72 = *(v19 + 208);
  v68 = *(v19 + 232);
  v69 = *(v19 + 216);
  swift_endAccess();
  v32 = a6 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
  swift_beginAccess();
  v33 = *(v32 + 72) ^ a2;
  if (v28 == 0.0 && v30 == 0.0 && v29 == 0.0)
  {
    v59 = v31 != 0.0;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v59 = 1;
    if (v23)
    {
LABEL_11:
      swift_beginAccess();
      v36 = v21;
      goto LABEL_14;
    }
  }

  swift_beginAccess();
  v36 = v22;
LABEL_14:
  v37 = *v36;
  v66 = v27;
  v38 = v24 + v27 + v71;
  v39 = *v36 - v30 - v38 - v31;
  v40 = *v36 - v26;
  if (v33)
  {
    v40 = v39 - v26;
  }

  else
  {
    v39 = v39 - v26;
  }

  v41 = v30 + v26 + v37;
  v42 = v31 + v38 + v30 + v37;
  if (v33)
  {
    v42 = *v36;
  }

  else
  {
    v41 = v30 + v37;
  }

  if (a4)
  {
    v43 = 1.0;
  }

  else
  {
    v43 = -1.0;
  }

  if (a4)
  {
    v44 = v42;
  }

  else
  {
    v44 = v40;
  }

  if (a4)
  {
    v39 = v41;
  }

  if (v72 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v60 = v39;
  v61 = v44;
  v62 = v25;
  v25 = *(v32 + 48);
  v45 = (v26 + v38 + v30 + v31) * v43;
  a4 = 2 * v72;
  if (v23)
  {
    swift_beginAccess();
    *v21 = v45 + *v21;
    a4 |= 1uLL;
    if (a1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    swift_beginAccess();
    v47 = v45 + *v21;
    *v21 = v47;
    swift_beginAccess();
    *v22 = v47;
    if (a1)
    {
LABEL_31:
      if (qword_1EA930920 != -1)
      {
        swift_once();
      }

      if (qword_1EA930928 == a1)
      {
        if (qword_1EA930888 != -1)
        {
          swift_once();
        }

        v46 = &qword_1EA994EC0;
LABEL_42:
        v22 = *v46;
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  if (v59)
  {
    if (qword_1EA930880 != -1)
    {
      swift_once();
    }

    v46 = &qword_1EA994EB8;
    goto LABEL_42;
  }

LABEL_43:
  v22 = 0;
LABEL_44:
  v21 = a9;
  a6 = sub_188E636B4(a1, v63);
  v23 = v48;
  if (qword_1EA930880 != -1)
  {
LABEL_63:
    swift_once();
  }

  if (v22 == qword_1EA994EB8)
  {
    v49 = a5;
    v50 = a1;
    v51 = a4;
    v52 = v20;
    v53 = -1;
  }

  else
  {
    if (v22 == 1)
    {
      goto LABEL_51;
    }

    if (qword_1EA930888 != -1)
    {
      swift_once();
    }

    if (v22 == qword_1EA994EC0)
    {
LABEL_51:
      v49 = a5;
      v50 = a1;
      v51 = a4;
      v52 = v20;
      if (v33)
      {
        v53 = 10;
      }

      else
      {
        v53 = 5;
      }
    }

    else
    {
      v49 = a5;
      v50 = a1;
      v51 = a4;
      v52 = v20;
      v53 = 0;
    }
  }

  if (a3 == 1)
  {
    v54 = 1.0;
  }

  else
  {
    v54 = 0.0;
  }

  v55 = v25 - v28 - v29;
  swift_beginAccess();
  if (v24 + *(v49 + 64) >= v64)
  {
    v56 = v64;
  }

  else
  {
    v56 = v24 + *(v49 + 64);
  }

  v74[0] = v22;
  *&v74[1] = v60;
  *&v74[2] = v28;
  *&v74[3] = v38;
  *&v74[4] = v55;
  v74[5] = v67;
  *&v74[6] = v66;
  v74[7] = v65;
  *&v74[8] = v71;
  *&v74[9] = v54;
  v74[10] = v52;
  v74[11] = v51;
  v74[12] = v53;
  *&v74[13] = v56;
  *&v74[14] = v62;
  v74[15] = v72;
  v74[16] = a6;
  v76 = v68;
  v75 = v69;
  v77 = v23;
  v78 = v61;
  v79 = v28;
  v80 = v26;
  v81 = v55;
  v82 = a3;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(v21 + 16);
  *(v21 + 16) = 0x8000000000000000;
  sub_188E9E3CC(v74, v50, isUniquelyReferenced_nonNull_native);
  *(v21 + 16) = v73;
  return swift_endAccess();
}

uint64_t sub_188E636B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v6 = *v5;
  if (!*(*v5 + 16) || (v7 = sub_188B85570(a1), (v8 & 1) == 0))
  {
    swift_endAccess();
    return 0;
  }

  v9 = *(*(v6 + 56) + 160 * v7 + 32);
  swift_endAccess();
  if (v5[9])
  {
    if (v9 < 1)
    {
      if ((a2 & 2) == 0)
      {
        result = 0;
        if ((a2 & 8) == 0)
        {
          return result;
        }

        goto LABEL_39;
      }

      v11 = 8;
      goto LABEL_30;
    }

    v10 = 2;
    v11 = 8;
  }

  else
  {
    if (v9 <= 0)
    {
      if ((a2 & 8) == 0)
      {
        result = 0;
        if ((a2 & 2) == 0)
        {
          return result;
        }

        goto LABEL_39;
      }

      v11 = 2;
      goto LABEL_30;
    }

    v10 = 8;
    v11 = 2;
  }

  result = swift_beginAccess();
  v13 = v5[7];
  if ((v9 - 1) >= *(v13 + 16))
  {
    __break(1u);
    goto LABEL_59;
  }

  v14 = *v5;
  if (!*(*v5 + 16))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  result = sub_188B85570(*(v13 + 8 * (v9 - 1) + 32));
  if ((v15 & 1) == 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v16 = *(*(v14 + 56) + 160 * result + 88);
  swift_endAccess();
  if ((v16 & 1) == 0)
  {
    if ((v10 & a2) == 0)
    {
      goto LABEL_38;
    }

LABEL_30:
    v18 = v5[20];
    if (*(v18 + 16) && *(v18 + 32) == a1)
    {
      result = 16;
      if (!v9)
      {
        goto LABEL_38;
      }
    }

    else
    {
      result = 17;
      if (!v9)
      {
LABEL_38:
        result = 0;
        if ((v11 & a2) == 0)
        {
          return result;
        }

        goto LABEL_39;
      }
    }

LABEL_35:
    if ((v11 & a2) == 0)
    {
      return result;
    }

    goto LABEL_39;
  }

  if (a1 != 2)
  {
    if ((v10 & a2) == 0)
    {
      goto LABEL_38;
    }

LABEL_27:
    result = 17;
    goto LABEL_35;
  }

  v17 = v10 & a2;
  if (v5[22] != 2)
  {
    if (!v17)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  if (v17)
  {
    result = 21;
    goto LABEL_35;
  }

  result = 4;
  if ((v11 & a2) == 0)
  {
    return result;
  }

LABEL_39:
  v19 = v5[7];
  v20 = *(v19 + 16);
  if (v9 < (v20 - 1))
  {
    if (v9 + 1 < v20)
    {
      v21 = result;
      v22 = *(v19 + 8 * (v9 + 1) + 32);
      result = swift_beginAccess();
      v23 = *v5;
      if (*(*v5 + 16))
      {
        result = sub_188B85570(v22);
        if (v24)
        {
          v25 = *(*(v23 + 56) + 160 * result + 88);
          swift_endAccess();
          result = v21;
          goto LABEL_45;
        }

LABEL_63:
        __break(1u);
        return result;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v25 = 0;
LABEL_45:
  v26 = v5[20];
  if (*(v26 + 16))
  {
    v27 = v25 == 0;
  }

  else
  {
    v27 = 0;
  }

  if (!v27)
  {
    v28 = v5[7];
    goto LABEL_53;
  }

  v29 = *(v26 + 32);
  v28 = v5[7];
  if (v29 != a1)
  {
LABEL_53:
    if (v9 == *(v28 + 16) - 1)
    {
      result |= 2uLL;
      return result | 0x20;
    }

    return result;
  }

  if (v9 == *(v28 + 16) - 1)
  {
    return result | 0x20;
  }

  return result;
}

uint64_t sub_188E639CC()
{
  v2 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_121:
    *&__dst = 0;
    *(&__dst + 1) = 0xE000000000000000;
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD00000000000005BLL, 0x800000018A68C260);
    *&v186 = v2;
    sub_18A4A82D8();
    sub_18A4A8398();
    __break(1u);

    __break(1u);
    return result;
  }

  p_dst = Strong;
  v5 = [Strong traitCollection];
  [v5 displayScale];
  v7 = v6;

  [p_dst containerInsets];
  v153 = v9;
  v154 = v8;
  v151 = v11;
  v152 = v10;
  [p_dst containerSize];
  v176 = v7;
  v156 = UISizeRoundToScale(v12, v13, v7);
  v150 = v14;
  v15 = [p_dst primaryEdge];
  v16 = [p_dst isRTL];
  v17 = v15 == 0;
  v162 = v15;
  v158 = v17;
  if (!v16)
  {
    v17 = v15;
  }

  v159 = v17;
  v18 = [p_dst visualStyle];
  v149 = [v18 allowsColumnResize];

  v19 = [p_dst visualStyle];
  v20 = [v19 showsSeparators];

  v155 = 0;
  if (v20)
  {
    v21 = [p_dst visualStyle];
    [v21 separatorWidth];
    v155 = v22;
  }

  v175 = [p_dst style];
  v214 = MEMORY[0x1E69E7CC8];
  [p_dst preferredColumns];
  v212 = v191;
  v213 = *v192;
  v210 = v193;
  v211 = __dst;
  v23 = [p_dst visualStyle];
  v148 = [v23 splitBehaviorForPreferredSplitBehavior_];

  if (qword_1EA9308F8 != -1)
  {
    goto LABEL_117;
  }

LABEL_7:
  v24 = off_1EA930908;
  v25 = *(off_1EA930908 + 2);
  v160 = v2;
  v161 = p_dst;
  if (!v25)
  {
    v105 = MEMORY[0x1E69E7CC8];
    v26 = MEMORY[0x1E69E7CC0];
    v106 = *(MEMORY[0x1E69E7CC8] + 16);
    if (v106)
    {
      goto LABEL_85;
    }

LABEL_88:

    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_89;
  }

  v172 = MEMORY[0x1E69E7CC8];
  v26 = MEMORY[0x1E69E7CC0];
  v27 = 32;
  v28 = &_OBJC_LABEL_PROTOCOL____UIRemoteViewController_ViewControllerOperatorInterface;
  v157 = v24;
  do
  {
    v29 = *&v24[v27];
    if ([v2 v28[186]])
    {
      v30 = [p_dst columnForSplitViewControllerColumn_];
      if ([(_UISplitViewControllerAdaptiveColumn *)v30 preferredWidth]== -3.40282347e38)
      {
        v31 = &selRef_verticalMenuCornerRadius;
        if ([(_UISplitViewControllerAdaptiveColumn *)v30 preferredWidthFraction]== -3.40282347e38)
        {
          v32 = [p_dst visualStyle];
          [v32 preferredWidthForColumn_];
          v34 = v33;
        }

        else
        {
          v34 = v156 * [(_UISplitViewControllerAdaptiveColumn *)v30 preferredWidthFraction];
        }
      }

      else
      {
        v34 = [(_UISplitViewControllerAdaptiveColumn *)v30 preferredWidth];
        v31 = &selRef_verticalMenuCornerRadius;
      }

      if ([(_UISplitViewControllerAdaptiveColumn *)v30 maximumWidth]== -3.40282347e38)
      {
        v35 = [p_dst v31[253]];
        [v35 maximumWidthForColumn_];
        v37 = v36;

        if (v34 > v37)
        {
          v38 = v34;
        }

        else
        {
          v38 = v37;
        }
      }

      else
      {
        v38 = [(_UISplitViewControllerAdaptiveColumn *)v30 maximumWidth];
      }

      v168 = v34;
      if ([(_UISplitViewControllerAdaptiveColumn *)v30 minimumWidth]== -3.40282347e38)
      {
        v39 = [p_dst v31[253]];
        [v39 minimumWidthForColumn_];
        v41 = v40;

        if (v41 >= v34)
        {
          v42 = v34;
        }

        else
        {
          v42 = v41;
        }
      }

      else
      {
        v42 = [(_UISplitViewControllerAdaptiveColumn *)v30 minimumWidth];
      }

      v170 = v26;
      if (v42 >= v38)
      {
        v43 = v38;
      }

      else
      {
        v43 = v42;
      }

      if (qword_1EA930920 != -1)
      {
        swift_once();
      }

      v163 = qword_1EA930928;
      if (v29 == qword_1EA930928)
      {
        v44 = v158;
      }

      else
      {
        v44 = v162;
      }

      v45 = !v159 ^ (v44 == v162);
      v46 = [p_dst v31[253]];
      [v46 frameInsetsForColumn_];

      _UIEdgeInsetsFromDirectionalEdgeInsets();
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v55 = [p_dst v31[253]];
      v56 = p_dst;
      v57 = [v55 edgesExtendingIntoUnsafeAreaForColumn_];

      v58 = _UIRectEdgeFromDirectionalRectEdge(v57, v45);
      v59 = [(_UISplitViewControllerAdaptiveColumn *)v30 absoluteInsets];
      if (v45)
      {
        v63 = v60;
      }

      else
      {
        v63 = v62;
      }

      if (v45)
      {
        v60 = v62;
      }

      v64 = (*&v59 & 0xFFFFFFFFFFFFFLL) == 0 || (~*&v59 & 0x7FF0000000000000) != 0;
      v65 = !v64;
      if (v64)
      {
        v66 = v59;
      }

      else
      {
        v66 = v48;
      }

      v67 = 14;
      if (v65)
      {
        v67 = 15;
      }

      v68 = (v60 & 0xFFFFFFFFFFFFFLL) == 0 || (~v60 & 0x7FF0000000000000) != 0;
      if (v68)
      {
        v69 = v60;
      }

      else
      {
        v69 = v50;
      }

      v166 = v69;
      v167 = v66;
      if (v68)
      {
        v67 &= 0xDu;
      }

      v70 = (v61 & 0xFFFFFFFFFFFFFLL) == 0 || (~v61 & 0x7FF0000000000000) != 0;
      if (v70)
      {
        v71 = v61;
      }

      else
      {
        v71 = v52;
      }

      if (v70)
      {
        v67 &= 0xBu;
      }

      v72 = (v63 & 0xFFFFFFFFFFFFFLL) == 0 || (~v63 & 0x7FF0000000000000) != 0;
      if (v72)
      {
        v73 = v63;
      }

      else
      {
        v73 = v54;
      }

      v164 = v73;
      v165 = v71;
      v74 = v31;
      if (v72)
      {
        v75 = v67 & 7;
      }

      else
      {
        v75 = v67;
      }

      [v56 additionalContainerContentInsetsForSplitViewControllerColumn_];
      v77 = v76;
      v78 = [_UISplitViewControllerAdaptiveColumn additionalSafeAreaInsets];
      v82 = UIEdgeInsetsAdd(15, v78, v79, v80, v81, v77);
      v84 = v83;
      v86 = v85;
      v88 = v87;
      v89 = [(_UISplitViewControllerAdaptiveColumn *)v30 hasContentViewController];
      v173 = *(v172 + 16) != 0;
      v90 = [v56 v74 + 2936];
      v91 = [v90 canDisplayAdjacentColumnBeneathColumn_];

      v92 = [(_UISplitViewControllerAdaptiveColumn *)v30 specifiedWidth];
      UIRoundToScale(v43, v176);
      v94 = v93;
      UIRoundToScale(v38, v176);
      v96 = v95;
      UIRoundToScale(v168, v176);
      v98 = v97;
      if (v29)
      {
        if (v29 == 1)
        {
          v99 = 2;
        }

        else if (v29 == v163)
        {
          v99 = 3;
        }

        else
        {
          v99 = 4 * (v29 == 2);
        }
      }

      else
      {
        v99 = 1;
      }

      UIRoundToScale(v92, v176);
      *&v215 = v82;
      *(&v215 + 1) = v84;
      v216 = v86;
      v217 = v88;
      v218 = 0;
      v219 = v75 & v58;
      v220 = v75;
      v221 = v167;
      v222 = v166;
      v223 = v165;
      v224 = v164;
      v225 = v89;
      v226 = v96;
      v227 = v94;
      v228 = v173;
      v229 = v98;
      v230 = v99;
      v231 = v44;
      v232 = v91;
      v233 = v100;
      v101 = v214;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&__dst = v101;
      sub_188E9E51C(&v215, v29, isUniquelyReferenced_nonNull_native);
      v172 = __dst;
      v214 = __dst;
      v26 = v170;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_188B9DE3C(0, *(v170 + 2) + 1, 1, v170);
      }

      v2 = v160;
      v24 = v157;
      v104 = *(v26 + 2);
      v103 = *(v26 + 3);
      if (v104 >= v103 >> 1)
      {
        v26 = sub_188B9DE3C((v103 > 1), v104 + 1, 1, v26);
      }

      *(v26 + 2) = v104 + 1;
      *&v26[8 * v104 + 32] = v29;
      p_dst = v161;
      v28 = &_OBJC_LABEL_PROTOCOL____UIRemoteViewController_ViewControllerOperatorInterface;
    }

    v27 += 8;
    --v25;
  }

  while (v25);

  v105 = v172;
  v106 = *(v172 + 16);
  if (!v106)
  {
    goto LABEL_88;
  }

LABEL_85:
  v1 = sub_1890BA2BC(v106, 0);
  v2 = sub_1890B9DC0(&__dst, v1 + 4, v106, v105);
  swift_bridgeObjectRetain_n();
  sub_188E036A4();
  if (v2 != v106)
  {
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    v214 = v1;
    type metadata accessor for Column(0);
    sub_18A4A87A8();
    __break(1u);
    goto LABEL_121;
  }

LABEL_89:
  *&__dst = v1;
  sub_188E6529C(&__dst, &v214, v162);

  v107 = __dst;
  v108 = *(__dst + 16);
  if (v108)
  {
    v109 = 0;
    v171 = v26;
    v174 = __dst + 32;
    v1 = v214;
    p_dst = &__dst;
    v2 = &v186;
    v169 = v108 - 1;
    while (1)
    {
      v110 = *(v174 + 8 * v109);
      v111 = swift_isUniquelyReferenced_nonNull_native();
      *&v178 = v1;
      v113 = sub_188B85570(v110);
      v114 = v1[2];
      v115 = (v112 & 1) == 0;
      v116 = v114 + v115;
      if (__OFADD__(v114, v115))
      {
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        swift_once();
        goto LABEL_7;
      }

      v117 = v112;
      if (v1[3] >= v116)
      {
        if (v111)
        {
          if ((v112 & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          sub_188FA190C();
          if ((v117 & 1) == 0)
          {
            goto LABEL_100;
          }
        }
      }

      else
      {
        sub_1890BBAE0(v116, v111);
        v118 = sub_188B85570(v110);
        if ((v117 & 1) != (v119 & 1))
        {
          goto LABEL_120;
        }

        v113 = v118;
        if ((v117 & 1) == 0)
        {
LABEL_100:
          sub_188E67E20(&__dst);
          goto LABEL_101;
        }
      }

      memmove(&__dst, (*(v178 + 56) + 160 * v113), 0xA0uLL);
      signpost_c2_entryLock_start(v120, v121);
LABEL_101:
      v208 = __dst;
      v209 = v191;
      v204 = *&v194[32];
      v205 = *&v194[48];
      v206 = v195;
      v207 = v196;
      v200 = *&v192[8];
      v201 = v193;
      v202 = *v194;
      v203 = *&v194[16];
      if (sub_188E036AC(&__dst) == 1)
      {
        goto LABEL_119;
      }

      v186 = v208;
      v187 = v209;
      *(&v188[4] + 8) = v204;
      *(&v188[5] + 8) = v205;
      *(&v188[6] + 8) = v206;
      *(v188 + 8) = v200;
      *(&v188[1] + 8) = v201;
      *(&v188[2] + 8) = v202;
      *(&v188[7] + 1) = v207;
      *(&v188[3] + 8) = v203;
      *&v188[0] = v109;
      v1 = v178;
      if (sub_188E036AC(&v186) == 1)
      {
        if (v117)
        {
          sub_188F9CEBC(v113, v178);
        }
      }

      else if (v117)
      {
        v122 = *(v178 + 56) + 160 * v113;
        v123 = v209;
        *v122 = v208;
        *(v122 + 16) = v123;
        v124 = v205;
        *(v122 + 104) = v204;
        *(v122 + 120) = v124;
        *(v122 + 136) = v206;
        v125 = v201;
        *(v122 + 40) = v200;
        *(v122 + 56) = v125;
        v126 = v203;
        *(v122 + 72) = v202;
        *(v122 + 32) = v109;
        *(v122 + 152) = v207;
        *(v122 + 88) = v126;
      }

      else
      {
        *(v178 + 8 * (v113 >> 6) + 64) |= 1 << v113;
        *(v1[6] + 8 * v113) = v110;
        v127 = v1[7] + 160 * v113;
        v128 = v209;
        *v127 = v208;
        *(v127 + 16) = v128;
        v129 = v201;
        *(v127 + 40) = v200;
        *(v127 + 56) = v129;
        v130 = v203;
        *(v127 + 72) = v202;
        *(v127 + 88) = v130;
        v131 = v205;
        *(v127 + 136) = v206;
        v132 = v204;
        *(v127 + 120) = v131;
        *(v127 + 32) = v109;
        *(v127 + 152) = v207;
        *(v127 + 104) = v132;
        v133 = v1[2];
        v134 = __OFADD__(v133, 1);
        v135 = v133 + 1;
        if (v134)
        {
          goto LABEL_116;
        }

        v1[2] = v135;
      }

      if (v169 == v109)
      {
        goto LABEL_112;
      }

      if (++v109 >= *(v107 + 16))
      {
        __break(1u);
LABEL_112:
        v214 = v1;
        v26 = v171;
        goto LABEL_114;
      }
    }
  }

  v1 = v214;
LABEL_114:
  swift_unknownObjectRelease();

  swift_bridgeObjectRelease_n();

  *&v177[6] = v211;
  *&v177[22] = v212;
  *&v177[38] = v213;
  *&v178 = v1;
  *(&v178 + 1) = v154;
  *&v179 = v153;
  *(&v179 + 1) = v152;
  *&v180 = v151;
  *(&v180 + 1) = v156;
  *&v181 = v150;
  *(&v181 + 1) = v107;
  *v182 = v176;
  v182[8] = !v159;
  v182[9] = v149;
  *&v182[56] = *(&v213 + 1);
  *&v182[42] = *&v177[32];
  *&v182[26] = *&v177[16];
  *&v182[10] = *v177;
  *v183 = v148;
  *&v183[8] = v210;
  *&v183[24] = v162;
  *&v184 = v26;
  *(&v184 + 1) = v155;
  v136 = v160 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
  v185 = v175;
  swift_beginAccess();
  v137 = *(v136 + 9);
  v188[6] = *(v136 + 8);
  v188[7] = v137;
  v188[8] = *(v136 + 10);
  v189 = *(v136 + 22);
  v138 = *(v136 + 5);
  v188[2] = *(v136 + 4);
  v188[3] = v138;
  v139 = *(v136 + 7);
  v188[4] = *(v136 + 6);
  v188[5] = v139;
  v140 = *(v136 + 1);
  v186 = *v136;
  v187 = v140;
  v141 = *(v136 + 3);
  v188[0] = *(v136 + 2);
  v188[1] = v141;
  v142 = *&v183[16];
  *(v136 + 8) = *v183;
  *(v136 + 9) = v142;
  *(v136 + 10) = v184;
  *(v136 + 22) = v185;
  v143 = *&v182[16];
  *(v136 + 4) = *v182;
  *(v136 + 5) = v143;
  v144 = *&v182[48];
  *(v136 + 6) = *&v182[32];
  *(v136 + 7) = v144;
  v145 = v179;
  *v136 = v178;
  *(v136 + 1) = v145;
  v146 = v181;
  *(v136 + 2) = v180;
  *(v136 + 3) = v146;
  sub_188E67E44(&v178, &__dst);
  sub_188E67E7C(&v186);
  *&__dst = v1;
  *(&__dst + 1) = v154;
  *&v191 = v153;
  *(&v191 + 1) = v152;
  *v192 = v151;
  *&v192[8] = v156;
  *&v192[16] = v150;
  *&v193 = v107;
  *(&v193 + 1) = v176;
  v194[0] = !v159;
  v194[1] = v149;
  *&v194[2] = *v177;
  *&v194[18] = *&v177[16];
  *&v194[34] = *&v177[32];
  *&v194[48] = *&v177[46];
  *&v194[56] = v148;
  v195 = v210;
  v196 = v162;
  v197 = v26;
  v198 = v155;
  v199 = v175;
  sub_188E67E7C(&__dst);
}

uint64_t sub_188E64930(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  if (*(*a3 + 16) && (v9 = sub_188B85570(*a1), (v10 & 1) != 0))
  {
    memmove(&__dst, (*(v8 + 56) + 160 * v9), 0xA0uLL);
    signpost_c2_entryLock_start(v11, v12);
  }

  else
  {
    sub_188E67E20(&v44);
    v60 = v50;
    v61 = v51;
    v62 = v52;
    v63 = v53;
    v56 = v46;
    v57 = v47;
    v58 = v48;
    v59 = v49;
    __dst = v44;
    v55 = v45;
  }

  v50 = v60;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v49 = v59;
  v44 = __dst;
  v45 = v55;
  if (sub_188E036AC(&v44) == 1)
  {
    goto LABEL_58;
  }

  v13 = *(&v62 + 1);
  v14 = *a3;
  if (*(*a3 + 16) && (v15 = sub_188B85570(v7), (v16 & 1) != 0))
  {
    memmove(&v34, (*(v14 + 56) + 160 * v15), 0xA0uLL);
    signpost_c2_entryLock_start(v17, v18);
  }

  else
  {
    sub_188E67E20(&v24);
    v40 = v30;
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v34 = v24;
    v35 = v25;
  }

  v30 = v40;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v24 = v34;
  v25 = v35;
  if (sub_188E036AC(&v24) == 1)
  {
LABEL_58:
    result = sub_18A4A8398();
    __break(1u);
  }

  else if (v13 != a4 || v13 == *(&v42 + 1))
  {
    if (*(&v42 + 1) != a4 || v13 == *(&v42 + 1))
    {
      if (v13 == a4)
      {
        if (v6)
        {
          if (v6 == 1)
          {
            v21 = 2;
          }

          else
          {
            if (qword_1EA930920 != -1)
            {
              swift_once();
            }

            if (qword_1EA930928 == v6)
            {
              v21 = 3;
            }

            else
            {
              v21 = 4 * (v6 == 2);
            }
          }
        }

        else
        {
          v21 = 1;
        }

        if (v7)
        {
          if (v7 == 1)
          {
            v23 = 2;
          }

          else
          {
            if (qword_1EA930920 != -1)
            {
              swift_once();
            }

            if (qword_1EA930928 == v7)
            {
              v23 = 3;
            }

            else
            {
              v23 = 4 * (v7 == 2);
            }
          }
        }

        else
        {
          v23 = 1;
        }

        v22 = v21 >= v23;
      }

      else
      {
        if (v6)
        {
          if (v6 == 1)
          {
            v20 = 2;
          }

          else
          {
            if (qword_1EA930920 != -1)
            {
              swift_once();
            }

            if (qword_1EA930928 == v6)
            {
              v20 = 3;
            }

            else
            {
              v20 = 4 * (v6 == 2);
            }
          }
        }

        else
        {
          v20 = 1;
        }

        if (v7)
        {
          if (v7 == 1)
          {
            v22 = v20 <= 2;
          }

          else
          {
            if (qword_1EA930920 != -1)
            {
              swift_once();
            }

            if (qword_1EA930928 == v7)
            {
              v22 = v20 <= 3;
            }

            else
            {
              v22 = 4 * (v7 == 2) >= v20;
            }
          }
        }

        else
        {
          v22 = v20 <= 1;
        }
      }

      return !v22;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return result;
}

void __swiftcall _UISplitViewControllerAdaptivePanelLayout.init()(_UISplitViewControllerAdaptivePanelLayout *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for _UISplitViewControllerAdaptivePanelLayout()
{
  result = qword_1EA9347D8;
  if (!qword_1EA9347D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9347D8);
  }

  return result;
}

uint64_t sub_188E65058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9347E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64C6E0;
  *(inited + 32) = xmmword_18A64C520;
  *(inited + 48) = 2;
  if (qword_1EA930920 != -1)
  {
    swift_once();
  }

  *(inited + 56) = qword_1EA930928;
  v1 = sub_188FBFCE8(inited);
  result = swift_setDeallocating();
  off_1EA9308F0 = v1;
  return result;
}

uint64_t sub_188E65110()
{
  if (qword_1EA9308E0 != -1)
  {
    swift_once();
  }

  v0 = off_1EA9308F0;
  v1 = *(off_1EA9308F0 + 2);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_1890BA2BC(*(off_1EA9308F0 + 2), 0);
  v3 = sub_1890B9CC0(&v5, v2 + 4, v1, v0);

  sub_188E036A4();
  if (v3 != v1)
  {
    __break(1u);
LABEL_6:
    v2 = MEMORY[0x1E69E7CC0];
  }

  v5 = v2;
  result = sub_188E65230(&v5);
  off_1EA930908 = v5;
  return result;
}

uint64_t sub_188E65230(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18917F074(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_188E65424(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_188E6529C(char **a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1;
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_18917F074(v7);
  }

  v8 = *(v7 + 2);
  v9 = (v7 + 32);
  v24[0] = (v7 + 32);
  v24[1] = v8;
  result = sub_18A4A85F8();
  if (result >= v8)
  {
    if (v8 >= 2)
    {
      v14 = -1;
      v15 = 1;
      v16 = v7 + 32;
      v22 = v6;
      while (2)
      {
        v17 = *&v16[8 * v15];
        v18 = v14;
        v19 = v9;
        do
        {
          v23[0] = v17;
          v25 = *v19;
          result = sub_188E64930(v23, &v25, a2, a3);
          if (v3)
          {
            v6 = v22;
            goto LABEL_18;
          }

          if ((result & 1) == 0)
          {
            break;
          }

          v20 = *v19;
          v17 = v19[1];
          *v19 = v17;
          v19[1] = v20;
          --v19;
        }

        while (!__CFADD__(v18++, 1));
        ++v15;
        ++v9;
        --v14;
        v16 = v7 + 32;
        v6 = v22;
        if (v15 != v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v11 = result;
    v12 = (v8 >> 1);
    if (v8 >= 2)
    {
      type metadata accessor for Column(0);
      v13 = sub_18A4A75D8();
      *(v13 + 16) = v12;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v23[0] = (v13 + 32);
    v23[1] = v12;
    sub_188E65F74(v23, &v25, v24, v11, a2, a3);
    *(v13 + 16) = 0;
  }

LABEL_18:
  *v6 = v7;
  return result;
}

uint64_t sub_188E65424(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_18A4A85F8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Column(0);
        v5 = sub_18A4A75D8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_188E656D4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_188E65520(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_188E65520(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (v7)
      {
        if (v7 == 1)
        {
          v11 = 2;
          if (v10 == 1)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (qword_1EA930920 != -1)
          {
            v16 = a2;
            v14 = a3;
            result = swift_once();
            a2 = v16;
            a3 = v14;
          }

          if (qword_1EA930928 == v7)
          {
            v11 = 3;
          }

          else
          {
            v11 = 4 * (v7 == 2);
          }

          if (v10 == 1)
          {
LABEL_20:
            if (v11 <= 2)
            {
              goto LABEL_4;
            }

            goto LABEL_29;
          }
        }
      }

      else
      {
        v11 = 1;
        if (v10 == 1)
        {
          goto LABEL_20;
        }
      }

      if (v10)
      {
        if (qword_1EA930920 != -1)
        {
          v17 = a2;
          v15 = a3;
          result = swift_once();
          a2 = v17;
          a3 = v15;
        }

        if (qword_1EA930928 == v10)
        {
          if (v11 <= 3)
          {
            goto LABEL_4;
          }
        }

        else if (v10 == 2 || !v11)
        {
LABEL_4:
          ++a3;
          v5 += 8;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v11 <= 1)
      {
        goto LABEL_4;
      }

LABEL_29:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v12 = *v9;
      v7 = v9[1];
      *v9 = v7;
      v9[1] = v12;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_188E656D4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v101 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_161:
    v8 = *v101;
    if (!*v101)
    {
      goto LABEL_200;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v6;
    if (result)
    {
LABEL_163:
      v88 = v9 + 16;
      v89 = *(v9 + 2);
      if (v89 >= 2)
      {
        while (*a3)
        {
          v90 = &v9[16 * v89];
          v91 = *v90;
          v92 = &v88[2 * v89];
          v93 = v92[1];
          sub_188E6697C((*a3 + 8 * *v90), (*a3 + 8 * *v92), (*a3 + 8 * v93), v8);
          if (v5)
          {
          }

          if (v93 < v91)
          {
            goto LABEL_186;
          }

          if (v89 - 2 >= *v88)
          {
            goto LABEL_187;
          }

          *v90 = v91;
          *(v90 + 1) = v93;
          v94 = *v88 - v89;
          if (*v88 < v89)
          {
            goto LABEL_188;
          }

          v89 = *v88 - 1;
          result = memmove(v92, v92 + 2, 16 * v94);
          *v88 = v89;
          if (v89 <= 1)
          {
          }
        }

        goto LABEL_198;
      }
    }

LABEL_194:
    result = sub_18917EF5C(v9);
    v9 = result;
    goto LABEL_163;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &unk_1EA930000;
  v11 = &unk_1EA930000;
  while (2)
  {
    v12 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_70;
    }

    v13 = *a3;
    v14 = *(*a3 + 8 * v8);
    v15 = *(*a3 + 8 * v12);
    if (v14)
    {
      if (v14 == 1)
      {
        v5 = 2;
        if (v15)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (v10[292] != -1)
        {
          result = swift_once();
          v11 = &unk_1EA930000;
          v10 = &unk_1EA930000;
        }

        if (v11[293] == v14)
        {
          v5 = 3;
        }

        else
        {
          v5 = 4 * (v14 == 2);
        }

        if (v15)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v5 = 1;
      if (v15)
      {
LABEL_8:
        if (v15 == 1)
        {
          v16 = 2;
        }

        else
        {
          if (v10[292] != -1)
          {
            result = swift_once();
            v11 = &unk_1EA930000;
            v10 = &unk_1EA930000;
          }

          if (v11[293] == v15)
          {
            v16 = 3;
          }

          else
          {
            v16 = 4 * (v15 == 2);
          }
        }

        goto LABEL_24;
      }
    }

    v16 = 1;
LABEL_24:
    v8 = v12 + 2;
    if (v12 + 2 >= v7)
    {
      goto LABEL_60;
    }

    v98 = v12;
    v17 = (v13 + 8 * v12 + 16);
    do
    {
      v22 = *(v17 - 1);
      v21 = *v17;
      if (*v17)
      {
        if (v21 == 1)
        {
          v23 = 2;
          if (v22 == 1)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v10[292] != -1)
          {
            result = swift_once();
            v11 = &unk_1EA930000;
            v10 = &unk_1EA930000;
          }

          if (v11[293] == v21)
          {
            v23 = 3;
          }

          else
          {
            v23 = 4 * (v21 == 2);
          }

          if (v22 == 1)
          {
LABEL_26:
            v18 = v16 < v5;
            v19 = v23 >= 3;
            goto LABEL_27;
          }
        }
      }

      else
      {
        v23 = 1;
        if (v22 == 1)
        {
          goto LABEL_26;
        }
      }

      if (!v22)
      {
        v18 = v16 < v5;
        v19 = v23 >= 2;
        goto LABEL_27;
      }

      if (v10[292] != -1)
      {
        result = swift_once();
        v11 = &unk_1EA930000;
        v10 = &unk_1EA930000;
      }

      if (v11[293] == v22)
      {
        v18 = v16 < v5;
        v19 = v23 >= 4;
LABEL_27:
        v20 = !v19;
        if (((v18 ^ v20) & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_31;
      }

      v25 = v22 == 2 || v23 == 0;
      if ((((v16 < v5) ^ v25) & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_31:
      ++v17;
      ++v8;
    }

    while (v7 != v8);
    v8 = v7;
LABEL_59:
    v12 = v98;
LABEL_60:
    if (v16 < v5)
    {
      if (v8 < v12)
      {
        goto LABEL_191;
      }

      if (v12 < v8)
      {
        v26 = v8 - 1;
        v27 = v12;
        do
        {
          if (v27 != v26)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_197;
            }

            v28 = *(v30 + 8 * v27);
            *(v30 + 8 * v27) = *(v30 + 8 * v26);
            *(v30 + 8 * v26) = v28;
          }
        }

        while (++v27 < v26--);
      }
    }

LABEL_70:
    v31 = a3[1];
    if (v8 >= v31)
    {
      goto LABEL_110;
    }

    if (__OFSUB__(v8, v12))
    {
      goto LABEL_190;
    }

    if (v8 - v12 >= a4)
    {
      goto LABEL_110;
    }

    if (__OFADD__(v12, a4))
    {
      goto LABEL_192;
    }

    if (v12 + a4 >= v31)
    {
      v32 = a3[1];
    }

    else
    {
      v32 = (v12 + a4);
    }

    if (v32 < v12)
    {
LABEL_193:
      __break(1u);
      goto LABEL_194;
    }

    if (v8 == v32)
    {
LABEL_110:
      if (v8 < v12)
      {
        goto LABEL_189;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_188E4B688(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v43 = *(v9 + 2);
      v42 = *(v9 + 3);
      v5 = v43 + 1;
      v10 = &unk_1EA930000;
      v11 = &unk_1EA930000;
      if (v43 >= v42 >> 1)
      {
        result = sub_188E4B688((v42 > 1), v43 + 1, 1, v9);
        v11 = &unk_1EA930000;
        v10 = &unk_1EA930000;
        v9 = result;
      }

      *(v9 + 2) = v5;
      v44 = &v9[16 * v43];
      *(v44 + 4) = v12;
      *(v44 + 5) = v8;
      v45 = *v101;
      if (!*v101)
      {
        goto LABEL_199;
      }

      if (!v43)
      {
LABEL_3:
        v7 = a3[1];
        if (v8 >= v7)
        {
          goto LABEL_161;
        }

        continue;
      }

      while (1)
      {
        v46 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v47 = *(v9 + 4);
          v48 = *(v9 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_130:
          if (v50)
          {
            goto LABEL_177;
          }

          v63 = &v9[16 * v5];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_180;
          }

          v69 = &v9[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_183;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_184;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v5 - 2;
            }

            goto LABEL_151;
          }

          goto LABEL_144;
        }

        v73 = &v9[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_144:
        if (v68)
        {
          goto LABEL_179;
        }

        v76 = &v9[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_182;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_151:
        v84 = v46 - 1;
        if (v46 - 1 >= v5)
        {
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
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
          goto LABEL_193;
        }

        if (!*a3)
        {
          goto LABEL_196;
        }

        v85 = *&v9[16 * v84 + 32];
        v86 = *&v9[16 * v46 + 40];
        sub_188E6697C((*a3 + 8 * v85), (*a3 + 8 * *&v9[16 * v46 + 32]), (*a3 + 8 * v86), v45);
        if (v6)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_173;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_18917EF5C(v9);
        }

        if (v84 >= *(v9 + 2))
        {
          goto LABEL_174;
        }

        v87 = &v9[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_18917EED0(v46);
        v5 = *(v9 + 2);
        v10 = &unk_1EA930000;
        v11 = &unk_1EA930000;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v9[16 * v5 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_175;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_176;
      }

      v58 = &v9[16 * v5];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_178;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_181;
      }

      if (v62 >= v54)
      {
        v80 = &v9[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_185;
        }

        if (v49 < v83)
        {
          v46 = v5 - 2;
        }

        goto LABEL_151;
      }

      goto LABEL_130;
    }

    break;
  }

  v33 = *a3;
  v34 = v12;
  v35 = *a3 + 8 * v8 - 8;
  v97 = v6;
  v99 = v34;
  v36 = v34 - v8;
  while (2)
  {
    v37 = *(v33 + 8 * v8);
    v38 = v36;
    v5 = v35;
LABEL_82:
    v39 = *v5;
    if (!v37)
    {
      v40 = 1;
      if (v39 != 1)
      {
        goto LABEL_85;
      }

      goto LABEL_89;
    }

    if (v37 != 1)
    {
      if (v10[292] != -1)
      {
        v95 = v32;
        result = swift_once();
        v32 = v95;
        v11 = &unk_1EA930000;
        v10 = &unk_1EA930000;
      }

      if (v11[293] == v37)
      {
        v40 = 3;
      }

      else
      {
        v40 = 4 * (v37 == 2);
      }

      if (v39 != 1)
      {
        goto LABEL_85;
      }

      goto LABEL_89;
    }

    v40 = 2;
    if (v39 == 1)
    {
LABEL_89:
      if (v40 <= 2)
      {
        goto LABEL_80;
      }

      break;
    }

LABEL_85:
    if (v39)
    {
      if (v10[292] != -1)
      {
        v96 = v32;
        result = swift_once();
        v32 = v96;
        v11 = &unk_1EA930000;
        v10 = &unk_1EA930000;
      }

      if (v11[293] != v39)
      {
        if (v39 != 2 && v40)
        {
          break;
        }

LABEL_80:
        ++v8;
        v35 += 8;
        --v36;
        if (v8 == v32)
        {
          v8 = v32;
          v6 = v97;
          v12 = v99;
          goto LABEL_110;
        }

        continue;
      }

      if (v40 <= 3)
      {
        goto LABEL_80;
      }
    }

    else if (v40 <= 1)
    {
      goto LABEL_80;
    }

    break;
  }

  if (v33)
  {
    v41 = *v5;
    v37 = *(v5 + 8);
    *v5 = v37;
    *(v5 + 8) = v41;
    v5 -= 8;
    v19 = __CFADD__(v38++, 1);
    if (v19)
    {
      goto LABEL_80;
    }

    goto LABEL_82;
  }

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
  return result;
}

uint64_t sub_188E65F74(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = a1;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_150:
    v20 = *v10;
    if (*v10)
    {
      v7 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_152;
    }

    goto LABEL_189;
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v101 = a4;
  while (1)
  {
    v14 = v12 + 1;
    v102 = v12;
    if (v12 + 1 >= v11)
    {
      v20 = v10;
    }

    else
    {
      v15 = *a3;
      *&__dst = *(*a3 + 8 * v14);
      *&v129 = *(v15 + 8 * v12);
      v16 = sub_188E64930(&__dst, &v129, a5, a6);
      if (v6)
      {
      }

      v17 = v16;
      v18 = v13;
      v19 = v12 + 2;
      v7 = (v15 + 8 * v12 + 16);
      v20 = v10;
      while (v11 != v19)
      {
        *&__dst = *v7;
        *&v129 = *(v7 - 1);
        ++v19;
        v7 += 8;
        if ((v17 ^ sub_188E64930(&__dst, &v129, a5, a6)))
        {
          v11 = v19 - 1;
          break;
        }
      }

      v13 = v18;
      if (v17)
      {
        v21 = v102;
        if (v11 < v102)
        {
          goto LABEL_183;
        }

        a4 = v101;
        if (v102 < v11)
        {
          v22 = v11 - 1;
          do
          {
            if (v21 != v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_187;
              }

              v25 = *(v24 + 8 * v21);
              *(v24 + 8 * v21) = *(v24 + 8 * v22);
              *(v24 + 8 * v22) = v25;
            }
          }

          while (++v21 < v22--);
        }

        v14 = v11;
      }

      else
      {
        v14 = v11;
        a4 = v101;
      }
    }

    v26 = a3[1];
    if (v14 >= v26)
    {
      goto LABEL_97;
    }

    if (__OFSUB__(v14, v102))
    {
      goto LABEL_179;
    }

    if (v14 - v102 >= a4)
    {
LABEL_97:
      v28 = v102;
      goto LABEL_98;
    }

    v27 = v102 + a4;
    if (__OFADD__(v102, a4))
    {
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
      result = sub_18A4A8398();
      __break(1u);
      return result;
    }

    v28 = v102;
    if (v27 >= v26)
    {
      v27 = a3[1];
    }

    if (v27 < v102)
    {
      goto LABEL_182;
    }

    if (v14 != v27)
    {
      v99 = v13;
      v29 = *a3;
      v30 = (*a3 + 8 * v14 - 8);
      v31 = v102 - v14 + 1;
      v103 = v27;
      while (1)
      {
        v105 = v30;
        v106 = v14;
        v104 = v31;
        while (1)
        {
          v33 = v30->i64[0];
          v32 = v30->i64[1];
          v34 = *a5;
          if (*(*a5 + 16) && (v35 = sub_188B85570(v30->i64[1]), (v36 & 1) != 0))
          {
            memmove(&__dst, (*(v34 + 56) + 160 * v35), 0xA0uLL);
            signpost_c2_entryLock_start(v37, v38);
          }

          else
          {
            sub_188E67E20(&v129);
            v145 = v135;
            v146 = v136;
            v147 = v137;
            v148 = v138;
            v141 = v131;
            v142 = v132;
            v143 = v133;
            v144 = v134;
            __dst = v129;
            v140 = v130;
          }

          v135 = v145;
          v136 = v146;
          v137 = v147;
          v138 = v148;
          v131 = v141;
          v132 = v142;
          v133 = v143;
          v134 = v144;
          v129 = __dst;
          v130 = v140;
          if (sub_188E036AC(&v129) == 1)
          {
            goto LABEL_190;
          }

          v7 = *(&v147 + 1);
          v39 = *a5;
          if (*(*a5 + 16) && (v40 = sub_188B85570(v33), (v41 & 1) != 0))
          {
            memmove(&v119, (*(v39 + 56) + 160 * v40), 0xA0uLL);
            signpost_c2_entryLock_start(v42, v43);
          }

          else
          {
            sub_188E67E20(&v109);
            v125 = v115;
            v126 = v116;
            v127 = v117;
            v128 = v118;
            v121 = v111;
            v122 = v112;
            v123 = v113;
            v124 = v114;
            v119 = v109;
            v120 = v110;
          }

          v115 = v125;
          v116 = v126;
          v117 = v127;
          v118 = v128;
          v111 = v121;
          v112 = v122;
          v113 = v123;
          v114 = v124;
          v109 = v119;
          v110 = v120;
          if (sub_188E036AC(&v109) == 1)
          {
            goto LABEL_190;
          }

          if (v7 != a6 || v7 == *(&v127 + 1))
          {
            if (*(&v127 + 1) == a6 && v7 != *(&v127 + 1))
            {
              break;
            }

            if (v7 == a6)
            {
              if (v32)
              {
                if (v32 == 1)
                {
                  v45 = 2;
                  if (!v33)
                  {
                    goto LABEL_88;
                  }
                }

                else
                {
                  if (qword_1EA930920 != -1)
                  {
                    swift_once();
                  }

                  if (qword_1EA930928 == v32)
                  {
                    v45 = 3;
                    if (!v33)
                    {
                      goto LABEL_88;
                    }
                  }

                  else
                  {
                    v45 = 4 * (v32 == 2);
                    if (!v33)
                    {
LABEL_88:
                      if (v45)
                      {
                        break;
                      }

                      goto LABEL_93;
                    }
                  }
                }
              }

              else
              {
                v45 = 1;
                if (!v33)
                {
                  goto LABEL_88;
                }
              }

              if (v33 == 1)
              {
                if (v45 >= 2)
                {
                  break;
                }
              }

              else
              {
                if (qword_1EA930920 != -1)
                {
                  swift_once();
                }

                if (qword_1EA930928 == v33)
                {
                  if (v45 >= 3)
                  {
                    break;
                  }
                }

                else if (v45 >= 4 * (v33 == 2))
                {
                  break;
                }
              }
            }

            else
            {
              if (v32)
              {
                if (v32 == 1)
                {
                  v44 = 2;
                  if (!v33)
                  {
                    goto LABEL_85;
                  }
                }

                else
                {
                  if (qword_1EA930920 != -1)
                  {
                    swift_once();
                  }

                  if (qword_1EA930928 == v32)
                  {
                    v44 = 3;
                    if (!v33)
                    {
                      goto LABEL_85;
                    }
                  }

                  else
                  {
                    v44 = 4 * (v32 == 2);
                    if (!v33)
                    {
LABEL_85:
                      if (v44 <= 1)
                      {
                        break;
                      }

                      goto LABEL_93;
                    }
                  }
                }
              }

              else
              {
                v44 = 1;
                if (!v33)
                {
                  goto LABEL_85;
                }
              }

              if (v33 == 1)
              {
                if (v44 <= 2)
                {
                  break;
                }
              }

              else
              {
                if (qword_1EA930920 != -1)
                {
                  swift_once();
                }

                if (qword_1EA930928 == v33)
                {
                  if (v44 <= 3)
                  {
                    break;
                  }
                }

                else if (4 * (v33 == 2) >= v44)
                {
                  break;
                }
              }
            }
          }

LABEL_93:
          if (!v29)
          {
            goto LABEL_184;
          }

          *v30 = vextq_s8(*v30, *v30, 8uLL);
          if (!v31)
          {
            break;
          }

          v30 = (v30 - 8);
          ++v31;
        }

        v14 = v106 + 1;
        v30 = &v105->u64[1];
        v31 = v104 - 1;
        if (v106 + 1 == v103)
        {
          v14 = v103;
          v13 = v99;
          v20 = a1;
          goto LABEL_97;
        }
      }
    }

LABEL_98:
    if (v14 < v28)
    {
      goto LABEL_178;
    }

    v7 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_188E4B688(0, *(v13 + 16) + 1, 1, v13);
    }

    v47 = *(v7 + 2);
    v46 = *(v7 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v13 = sub_188E4B688((v46 > 1), v47 + 1, 1, v7);
    }

    else
    {
      v13 = v7;
    }

    *(v13 + 16) = v48;
    v49 = v13 + 16 * v47;
    *(v49 + 32) = v28;
    *(v49 + 40) = v14;
    v107 = v14;
    v50 = *v20;
    if (!*v20)
    {
      goto LABEL_188;
    }

    if (v47)
    {
      break;
    }

LABEL_3:
    v12 = v107;
    v11 = a3[1];
    v10 = a1;
    a4 = v101;
    if (v107 >= v11)
    {
      goto LABEL_150;
    }
  }

  while (1)
  {
    v51 = v48 - 1;
    if (v48 >= 4)
    {
      v56 = v13 + 32 + 16 * v48;
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_165;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_166;
      }

      v63 = (v13 + 16 * v48);
      v65 = *v63;
      v64 = v63[1];
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_168;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_171;
      }

      if (v67 >= v59)
      {
        v85 = (v13 + 32 + 16 * v51);
        v87 = *v85;
        v86 = v85[1];
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_177;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_139;
      }

      goto LABEL_118;
    }

    if (v48 == 3)
    {
      v52 = *(v13 + 32);
      v53 = *(v13 + 40);
      v62 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      v55 = v62;
LABEL_118:
      if (v55)
      {
        goto LABEL_167;
      }

      v68 = (v13 + 16 * v48);
      v70 = *v68;
      v69 = v68[1];
      v71 = __OFSUB__(v69, v70);
      v72 = v69 - v70;
      v73 = v71;
      if (v71)
      {
        goto LABEL_170;
      }

      v74 = (v13 + 32 + 16 * v51);
      v76 = *v74;
      v75 = v74[1];
      v62 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v62)
      {
        goto LABEL_173;
      }

      if (__OFADD__(v72, v77))
      {
        goto LABEL_174;
      }

      if (v72 + v77 >= v54)
      {
        if (v54 < v77)
        {
          v51 = v48 - 2;
        }

        goto LABEL_139;
      }

      goto LABEL_132;
    }

    v78 = (v13 + 16 * v48);
    v80 = *v78;
    v79 = v78[1];
    v62 = __OFSUB__(v79, v80);
    v72 = v79 - v80;
    v73 = v62;
LABEL_132:
    if (v73)
    {
      goto LABEL_169;
    }

    v81 = v13 + 16 * v51;
    v83 = *(v81 + 32);
    v82 = *(v81 + 40);
    v62 = __OFSUB__(v82, v83);
    v84 = v82 - v83;
    if (v62)
    {
      goto LABEL_172;
    }

    if (v84 < v72)
    {
      goto LABEL_3;
    }

LABEL_139:
    v89 = v51 - 1;
    if (v51 - 1 >= v48)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_185;
    }

    v20 = v13;
    v90 = *(v13 + 32 + 16 * v89);
    v91 = *(v13 + 32 + 16 * v51);
    v13 = *(v13 + 32 + 16 * v51 + 8);
    sub_188E66D90((*a3 + 8 * v90), (*a3 + 8 * v91), (*a3 + 8 * v13), v50, a5, a6);
    if (v6)
    {
    }

    if (v13 < v90)
    {
      goto LABEL_163;
    }

    v7 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_18917EF5C(v20);
    }

    if (v89 >= v20[2])
    {
      goto LABEL_164;
    }

    v92 = &v20[2 * v89];
    v92[4] = v90;
    v92[5] = v13;
    v149 = v20;
    sub_18917EED0(v51);
    v13 = v149;
    v48 = *(v149 + 16);
    if (v48 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  v13 = sub_18917EF5C(v13);
LABEL_152:
  v149 = v13;
  v93 = *(v13 + 16);
  if (v93 >= 2)
  {
    while (*a3)
    {
      v94 = *(v13 + 16 * v93);
      v95 = v13;
      v96 = *(v13 + 16 * (v93 - 1) + 32);
      v13 = *(v13 + 16 * (v93 - 1) + 40);
      sub_188E66D90((*a3 + 8 * v94), (*a3 + 8 * v96), (*a3 + 8 * v13), v20, a5, a6);
      if (v7)
      {
      }

      if (v13 < v94)
      {
        goto LABEL_175;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_18917EF5C(v95);
      }

      if (v93 - 2 >= *(v95 + 2))
      {
        goto LABEL_176;
      }

      v97 = &v95[16 * v93];
      *v97 = v94;
      *(v97 + 1) = v13;
      v149 = v95;
      sub_18917EED0(v93 - 1);
      v13 = v149;
      v93 = *(v149 + 16);
      if (v93 <= 1)
      {
      }
    }

    goto LABEL_186;
  }
}

uint64_t sub_188E6697C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_83;
    }

    while (1)
    {
      v15 = *v6;
      v16 = *v4;
      if (*v6)
      {
        if (v15 == 1)
        {
          v17 = 2;
          if (v16 == 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (qword_1EA930920 != -1)
          {
            swift_once();
          }

          if (qword_1EA930928 == v15)
          {
            v17 = 3;
          }

          else
          {
            v17 = 4 * (v15 == 2);
          }

          if (v16 == 1)
          {
LABEL_18:
            if (v17 <= 2)
            {
              goto LABEL_37;
            }

            goto LABEL_34;
          }
        }
      }

      else
      {
        v17 = 1;
        if (v16 == 1)
        {
          goto LABEL_18;
        }
      }

      if (v16)
      {
        if (qword_1EA930920 != -1)
        {
          swift_once();
        }

        if (qword_1EA930928 == v16)
        {
          if (v17 <= 3)
          {
            goto LABEL_37;
          }
        }

        else if (v16 == 2 || !v17)
        {
LABEL_37:
          v18 = v4;
          v19 = v7 == v4;
          v4 += 8;
          if (v19)
          {
            goto LABEL_39;
          }

LABEL_38:
          *v7 = *v18;
          goto LABEL_39;
        }
      }

      else if (v17 <= 1)
      {
        goto LABEL_37;
      }

LABEL_34:
      v18 = v6;
      v19 = v7 == v6;
      v6 += 8;
      if (!v19)
      {
        goto LABEL_38;
      }

LABEL_39:
      v7 += 8;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_83;
      }
    }
  }

  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    v20 = &unk_1EA930000;
    v21 = &unk_1EA930000;
    while (1)
    {
      v22 = v6 - 8;
      v5 -= 8;
      v23 = v14;
      while (1)
      {
        v25 = *(v23 - 1);
        v23 -= 8;
        v24 = v25;
        v26 = *v22;
        if (v25)
        {
          if (v24 == 1)
          {
            v27 = 2;
            if (v26 == 1)
            {
              goto LABEL_57;
            }
          }

          else
          {
            if (v20[292] != -1)
            {
              swift_once();
              v21 = &unk_1EA930000;
              v20 = &unk_1EA930000;
            }

            if (v21[293] == v24)
            {
              v27 = 3;
            }

            else
            {
              v27 = 4 * (v24 == 2);
            }

            if (v26 == 1)
            {
LABEL_57:
              if (v27 > 2)
              {
                goto LABEL_75;
              }

              goto LABEL_73;
            }
          }
        }

        else
        {
          v27 = 1;
          if (v26 == 1)
          {
            goto LABEL_57;
          }
        }

        if (!v26)
        {
          if (v27 > 1)
          {
            goto LABEL_75;
          }

          goto LABEL_73;
        }

        if (v20[292] != -1)
        {
          swift_once();
          v21 = &unk_1EA930000;
          v20 = &unk_1EA930000;
        }

        if (v21[293] != v26)
        {
          break;
        }

        if (v27 > 3)
        {
          goto LABEL_75;
        }

LABEL_73:
        if (v5 + 8 != v14)
        {
          *v5 = *v23;
        }

        v5 -= 8;
        v14 = v23;
        if (v23 <= v4)
        {
          v14 = v23;
          goto LABEL_83;
        }
      }

      if (v26 == 2 || !v27)
      {
        goto LABEL_73;
      }

LABEL_75:
      if (v5 + 8 != v6)
      {
        *v5 = *v22;
      }

      if (v14 > v4)
      {
        v6 -= 8;
        if (v22 > v7)
        {
          continue;
        }
      }

      v6 = v22;
      break;
    }
  }

LABEL_83:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_188E66D90(uint64_t *__src, uint64_t *a2, uint64_t *a3, uint64_t *__dst, uint64_t *a5, uint64_t a6)
{
  v8 = __dst;
  v9 = a3;
  v10 = a2;
  v11 = __src;
  v12 = a2 - __src;
  v13 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v13 = a2 - __src;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v14 < v16 >> 3)
  {
    if (__dst != __src || &__src[v14] <= __dst)
    {
      memmove(__dst, __src, 8 * v14);
    }

    v18 = (v8 + 8 * v14);
    if (v12 < 8)
    {
LABEL_10:
      v10 = v11;
LABEL_47:
      v29 = v18 - v8 + 7;
      if ((v18 - v8) >= 0)
      {
        v29 = v18 - v8;
      }

      goto LABEL_49;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_10;
      }

      v36 = *v10;
      v35 = *v8;
      v21 = sub_188E64930(&v36, &v35, a5, a6);
      if (v6)
      {
        v30 = v18 - v8 + 7;
        if ((v18 - v8) >= 0)
        {
          v30 = v18 - v8;
        }

        if (v11 < v8 || v11 >= v8 + (v30 & 0xFFFFFFFFFFFFFFF8) || v11 != v8)
        {
          v31 = 8 * (v30 >> 3);
          v32 = v11;
          goto LABEL_53;
        }

        return 1;
      }

      if (v21)
      {
        break;
      }

      v19 = v8;
      v20 = v11 == v8;
      v8 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v11;
      if (v8 >= v18)
      {
        goto LABEL_10;
      }
    }

    v19 = v10;
    v20 = v11 == v10++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v11 = *v19;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v17] <= __dst)
  {
    memmove(__dst, a2, 8 * v17);
  }

  v18 = (v8 + 8 * v17);
  if (v15 < 8 || v10 <= v11)
  {
    goto LABEL_47;
  }

  v22 = -v8;
LABEL_26:
  v23 = v10 - 1;
  v24 = v18 + v22;
  --v9;
  v25 = v18;
  while (1)
  {
    v26 = *--v25;
    v36 = v26;
    v35 = *v23;
    v27 = sub_188E64930(&v36, &v35, a5, a6);
    if (v6)
    {
      break;
    }

    v28 = v9 + 1;
    if (v27)
    {
      if (v28 != v10)
      {
        *v9 = *v23;
      }

      if (v18 <= v8 || (--v10, v22 = -v8, v23 <= v11))
      {
        v10 = v23;
        goto LABEL_47;
      }

      goto LABEL_26;
    }

    if (v28 != v18)
    {
      *v9 = *v25;
    }

    v24 -= 8;
    --v9;
    v18 = v25;
    if (v25 <= v8)
    {
      v18 = v25;
      goto LABEL_47;
    }
  }

  if (v24 >= 0)
  {
    v29 = v24;
  }

  else
  {
    v29 = v24 + 7;
  }

LABEL_49:
  if (v10 < v8 || v10 >= v8 + (v29 & 0xFFFFFFFFFFFFFFF8) || v10 != v8)
  {
    v31 = 8 * (v29 >> 3);
    v32 = v10;
LABEL_53:
    memmove(v32, v8, v31);
  }

  return 1;
}

__n128 sub_188E67058@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 168) = *(a1 + 21);
  *(a2 + 184) = *(a1 + 23);
  *(a2 + 200) = *(a1 + 25);
  *(a2 + 216) = a1[27];
  *(a2 + 104) = *(a1 + 13);
  *(a2 + 120) = *(a1 + 15);
  *(a2 + 136) = *(a1 + 17);
  *(a2 + 152) = *(a1 + 19);
  *(a2 + 40) = *(a1 + 5);
  *(a2 + 56) = *(a1 + 7);
  *(a2 + 72) = *(a1 + 9);
  *(a2 + 88) = *(a1 + 11);
  *(a2 + 8) = *(a1 + 1);
  result = *(a1 + 3);
  *(a2 + 24) = result;
  *a2 = v2;
  return result;
}

uint64_t sub_188E670D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = (a2 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v6 = v5[19];
  if (a1 <= 2)
  {
    if (a1 != 1 && (a1 != 2 || !v6))
    {
      goto LABEL_10;
    }

LABEL_12:

    v7 = sub_188EA320C(v8);
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

LABEL_10:
    v7 = v5[7];
    goto LABEL_11;
  }

  if (a1 != 4)
  {
    goto LABEL_10;
  }

  v7 = v5[20];
LABEL_11:

LABEL_13:
  v9 = 0;
  v13 = 0;
  v10 = *(v7 + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    if (v9 >= *(v7 + 16))
    {
      __break(1u);
    }

    v11 = v9 + 1;
    (*(a3 + 16))(a3, *(v7 + 8 * v9 + 32), &v13);
    v9 = v11;
  }

  while (v13 != 1);
}

uint64_t sub_188E67218(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  result = *(v4 + 80);
  v20 = *(result + 16);
  if (v20)
  {
    v6 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
    v19 = result + 32;

    v7 = 0;
    v18 = result;
    while (v7 < *(result + 16))
    {
      v8 = *(v19 + 8 * v7);
      v9 = *(v8 + 16);
      if (v9)
      {

        for (i = 0; i != v9; ++i)
        {
          v11 = *(v8 + 8 * i + 32);
          (*(a2 + 16))(a2, v11, 0);
        }

        v12 = 32;
        do
        {
          v13 = *(v8 + v12);
          swift_beginAccess();
          v14 = *(a1 + v6);
          if (*(v14 + 16) && (v15 = sub_188B85570(v13), (v16 & 1) != 0))
          {
            v17 = *(*(v14 + 56) + 160 * v15 + 112);
            swift_endAccess();
            if (v17 == 1)
            {
              (*(a2 + 16))(a2, v13, 1);
            }
          }

          else
          {
            swift_endAccess();
          }

          v12 += 8;
          --v9;
        }

        while (v9);

        result = v18;
      }

      if (++v7 == v20)
      {
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_188E673AC(void *a1)
{
  v44 = MEMORY[0x1E69E7CD0];
  v2 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v3 = a1[1];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    swift_beginAccess();
    v6 = v2;
    do
    {
      --v4;
      v7 = *(v5 + 8 * v4);
      v8 = v44;
      if (*(v44 + 16) && (sub_18A4A8888(), MEMORY[0x18CFE37E0](v7), v9 = sub_18A4A88E8(), v10 = -1 << *(v8 + 32), v11 = v9 & ~v10, ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
      {
        v12 = ~v10;
        while (*(*(v8 + 48) + 8 * v11) != v7)
        {
          v11 = (v11 + 1) & v12;
          if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v13 = *a1;
        if (!*(*a1 + 16) || (v14 = sub_188B85570(v7), (v15 & 1) == 0))
        {
          v40 = 0;
          v41 = 0xE000000000000000;
          sub_18A4A80E8();
          MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
          v39[0] = v7;
          type metadata accessor for Column(0);
          goto LABEL_48;
        }

        if (*(*(v13 + 56) + (v14 << 8) + 88) == 1)
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_188B9DE3C(0, *(v2 + 2) + 1, 1, v2);
          }

          v17 = *(v2 + 2);
          v16 = *(v2 + 3);
          if (v17 >= v16 >> 1)
          {
            v2 = sub_188B9DE3C((v16 > 1), v17 + 1, 1, v2);
          }

          *(v2 + 2) = v17 + 1;
          *&v2[8 * v17 + 32] = v7;
          v43 = v2;
        }

        else
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_188B9DE3C(0, *(v6 + 2) + 1, 1, v6);
          }

          v19 = *(v6 + 2);
          v18 = *(v6 + 3);
          if (v19 >= v18 >> 1)
          {
            v6 = sub_188B9DE3C((v18 > 1), v19 + 1, 1, v6);
          }

          *(v6 + 2) = v19 + 1;
          *&v6[8 * v19 + 32] = v7;
          v42 = v6;
        }

        swift_endAccess();
        swift_beginAccess();
        sub_188CC38D8(v39, v7);
        swift_endAccess();
      }
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v20 = a1[2];
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + 32;
    swift_beginAccess();
    for (i = 0; i != v21; ++i)
    {
      v7 = *(v22 + 8 * i);
      v24 = v44;
      if (*(v44 + 16) && (sub_18A4A8888(), MEMORY[0x18CFE37E0](v7), v25 = sub_18A4A88E8(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
      {
        v28 = ~v26;
        while (*(*(v24 + 48) + 8 * v27) != v7)
        {
          v27 = (v27 + 1) & v28;
          if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
LABEL_34:
        v29 = *a1;
        if (!*(*a1 + 16) || (v30 = sub_188B85570(v7), (v31 & 1) == 0))
        {
          while (1)
          {
            v40 = 0;
            v41 = 0xE000000000000000;
            sub_18A4A80E8();
            MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
            v38 = v7;
            type metadata accessor for Column(0);
LABEL_48:
            sub_18A4A82D8();
            MEMORY[0x18CFE22D0](41, 0xE100000000000000);
            sub_18A4A8398();
            __break(1u);
          }
        }

        if (*(*(v29 + 56) + (v30 << 8) + 88) == 1)
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_188B9DE3C(0, *(v2 + 2) + 1, 1, v2);
          }

          v33 = *(v2 + 2);
          v32 = *(v2 + 3);
          if (v33 >= v32 >> 1)
          {
            v2 = sub_188B9DE3C((v32 > 1), v33 + 1, 1, v2);
          }

          *(v2 + 2) = v33 + 1;
          *&v2[8 * v33 + 32] = v7;
          v43 = v2;
        }

        else
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_188B9DE3C(0, *(v6 + 2) + 1, 1, v6);
          }

          v35 = *(v6 + 2);
          v34 = *(v6 + 3);
          if (v35 >= v34 >> 1)
          {
            v6 = sub_188B9DE3C((v34 > 1), v35 + 1, 1, v6);
          }

          *(v6 + 2) = v35 + 1;
          *&v6[8 * v35 + 32] = v7;
          v42 = v6;
        }

        swift_endAccess();
        swift_beginAccess();
        sub_188CC38D8(&v38, v7);
        swift_endAccess();
      }
    }
  }

  v40 = v6;

  sub_18920B87C(v36);

  return v40;
}