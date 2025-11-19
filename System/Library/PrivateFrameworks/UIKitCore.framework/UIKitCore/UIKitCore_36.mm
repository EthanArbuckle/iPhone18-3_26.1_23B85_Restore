void sub_188ECC308()
{
  v1 = sub_188ECABC0();
  v2 = [v1 layer];

  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  if (qword_1EA92ECA0 != -1)
  {
    swift_once();
  }

  v4 = sub_18A4A7258();
  [v2 setValue:v3 forKeyPath:v4];

  v5 = *(v0 + OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_region);
  if (v5)
  {
    if (v5 != 1)
    {
      type metadata accessor for Region(0);
      sub_18A4A8768();
      __break(1u);
      return;
    }

    v6 = 20;
  }

  else
  {
    v6 = 15;
  }

  v7 = sub_188ECAC24();
  [v7 setCompositingMode_];
}

uint64_t sub_188ECC530(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_188ECC580(char *a1)
{
  v2 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
  [v2 setAutoresizingMask_];
  [a1 bounds];
  [v2 setFrame_];
  [a1 addSubview_];
  v3 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v4 = *MEMORY[0x1E6979BA0];
  v5 = sub_18A4A7258();
  [v3 setValue:v4 forKey:v5];

  v6 = sub_18A4A7258();
  [v3 setName_];

  v7 = [v2 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18A64BFB0;
  *(v8 + 56) = sub_188A34624(0, &qword_1ED48EE50);
  *(v8 + 32) = v3;
  v9 = v3;
  v10 = sub_18A4A7518();

  [v7 setFilters_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  if (qword_1EA92ECA0 != -1)
  {
    swift_once();
  }

  v12 = unk_1EA92ECB0;
  *(inited + 32) = qword_1EA92ECA8;
  *(inited + 40) = v12;

  sub_188B8AD8C(inited);
  swift_setDeallocating();
  sub_188ECC874(inited + 32);
  v13 = sub_18A4A7798();

  [v2 _setAdditionalAnimatableKeypaths_];

  return v2;
}

void sub_188ECC8C8()
{
  v1 = UIApp;
  if (UIApp)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v6[4] = sub_188ECC9BC;
    v6[5] = v2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_188A4A8F0;
    v6[3] = &block_descriptor_26_2;
    v3 = _Block_copy(v6);
    v4 = v1;
    v5 = v0;

    [v4 _performBlockAfterCATransactionCommits_];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_188ECC9E8(void *a1)
{
  v2 = OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView;
  v3 = *&v1[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView];
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v3 != a1)
  {
    if (!a1)
    {
LABEL_13:
      v12 = *&v1[v2];
      if (!v12)
      {
        return;
      }

      v13 = v12;
      [v13 setTranslatesAutoresizingMaskIntoConstraints_];
      goto LABEL_15;
    }

LABEL_9:
    v9 = a1;
    v10 = [v9 superview];
    if (v10)
    {
      v11 = v10;

      if (v11 == v1)
      {
        [v9 removeFromSuperview];
      }
    }

    goto LABEL_13;
  }

  v13 = v3;
  v4 = [v13 superview];
  if (v4)
  {
    v5 = v4;
    sub_188AF7A44();
    v6 = v1;
    v7 = sub_18A4A7C88();

    v8 = v13;
    if (v7)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = v13;
LABEL_16:
  v14 = v8;
  [v1 addSubview_];
  v8 = v14;
LABEL_17:
}

uint64_t sub_188ECCDF0(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (*result)
  {
    if (a2)
    {
      v4 = *(*result + 16);
      v5 = *(a2 + 16);
      if (v4 == v5)
      {

        v7 = sub_188EF6C40(v6, v2);

        result = swift_bridgeObjectRelease_n();
        v2 = v7;
        goto LABEL_10;
      }

      if (v5 >= v4)
      {

        goto LABEL_10;
      }
    }

    v2 = *result;
    goto LABEL_10;
  }

  if (a2)
  {
  }

LABEL_10:
  *v3 = v2;
  return result;
}

uint64_t sub_188ECCEB0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32) | (*(a2 + 36) << 32);
  v8 = *result;
  if (*result)
  {
    v10 = *(result + 8);
    v9 = *(result + 16);
    v11 = *(result + 24);
    v12 = *(result + 32);
    v13 = v12 | (*(result + 36) << 32);
    if (v4)
    {
      v23[0] = *a2;
      v23[1] = v3;
      v23[2] = v5;
      v23[3] = v6;
      v24 = v7;
      v25 = BYTE4(v7) & 1;
      v17 = v8;
      v18 = v10;
      v19 = v9;
      v20 = v11;
      v21 = v12;
      v22 = BYTE4(v13) & 1;
      sub_188F0D2E8(a2, v16);
      sub_188F0B550(v8);
      sub_18908FD40(v23);
      sub_188F0B59C(v8);

      v4 = v17;
      v3 = v18;
      v5 = v19;
      v6 = v20;
      v14 = 0x100000000;
      if (!v22)
      {
        v14 = 0;
      }

      v7 = v14 | v21;
    }

    else
    {
      v7 = v13 & 0x1FFFFFFFFLL;
      v4 = *result;
      v3 = *(result + 8);
      v5 = *(result + 16);
      v6 = *(result + 24);
    }
  }

  else if (v4)
  {
    v15 = *(a2 + 8);
    result = sub_188F0D2E8(a2, v23);
    v3 = v15;
  }

  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  *(v2 + 32) = v7;
  *(v2 + 36) = BYTE4(v7);
  return result;
}

void sub_188ECD024(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32) | (*(a2 + 36) << 32);
  v8 = *a1;
  if (*a1)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v13 = v12 | (*(a1 + 36) << 32);
    if (!v3)
    {
      v7 = v13 & 0x1FFFFFFFFLL;
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
      goto LABEL_12;
    }

    v19 = *a2;
    v20 = v4;
    v21 = v5;
    v22 = v6;
    v23 = v7;
    v24 = BYTE4(v7) & 1;
    v18 = v12;

    sub_18908FE70(&v19);
    sub_188F0B59C(v8);
    v4 = v10;
    v5 = v9;
    v6 = v11;
    v14 = v18;
    v15 = BYTE4(v13) & 1;
  }

  else
  {
    if (!v3)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v19 = *a2;
    v20 = v4;
    v21 = v5;
    v22 = v6;
    v23 = v7;
    v24 = BYTE4(v7) & 1;

    sub_18908FB80(-1.0);
    v8 = v19;
    v5 = v21;
    v14 = v23;
    v15 = v24;
  }

  v16 = v15 == 0;
  v17 = 0x100000000;
  if (v16)
  {
    v17 = 0;
  }

  v7 = v17 | v14;
LABEL_12:
  *a1 = v8;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 36) = BYTE4(v7);
}

uint64_t sub_188ECD198(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      if (a1)
      {
        v13 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v13 = [Strong layer];
      }

      v14 = v13;

      v15 = sub_18A4A7258();
      v16 = [v14 valueForKeyPath_];

      if (v16)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v28, 0, sizeof(v28));
      }

      sub_188A3F29C(v28, &v26, &qword_1EA934050);
      if (v27)
      {
        sub_188A55538(&v26, v25);
        sub_188A55598(v25, v24);
        sub_188A55598(v24, v23);
        sub_188A34624(0, &qword_1ED48EC30);
        swift_dynamicCast();
        [v22 CACornerRadiiValue];

        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        sub_188A3F5FC(v28, &qword_1EA934050);
LABEL_15:
        v17 = swift_unknownObjectWeakLoadStrong();
        v18 = swift_allocObject();
        swift_weakInit();
        v19 = swift_allocObject();
        *(v19 + 16) = v18;
        *(v19 + 24) = a1 & 1;
        *(v19 + 32) = a2;
        *(v19 + 40) = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364C0);
        swift_allocObject();

        v10 = sub_18922C784(v29, v17, sub_188F0E03C, v19);

        *(v10 + 432) = 1;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v26 = *(v4 + 48);
        *(v4 + 48) = 0x8000000000000000;
        sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v26, &unk_1EA930D18, &qword_1EA9364C0);

        *(v4 + 48) = v26;
        swift_endAccess();
        sub_188A34360(&unk_1EA930D18, &qword_1EA9364C0);
        goto LABEL_16;
      }

      sub_188A3F5FC(v28, &qword_1EA934050);
    }

    memset(v29, 0, 64);
    goto LABEL_15;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364C0);
  v10 = swift_dynamicCastClassUnconditional();
  sub_188A34360(&unk_1EA930D18, &qword_1EA9364C0);
  swift_unknownObjectRetain();
LABEL_16:
  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

uint64_t sub_188ECD5C8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(*(v3 + 48) + 16) && (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) != 0))
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940D80);
    v10 = swift_dynamicCastClassUnconditional();
    sub_188A34360(&qword_1EA930FF8, &unk_1EA940D80);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v23 = v8;
    if (!Strong)
    {
      goto LABEL_13;
    }

    v12 = Strong;
    v13 = (a1 & 1) != 0 ? -[UIView _backing_outermostLayer](Strong) : [Strong layer];
    v14 = v13;

    v15 = sub_18A4A7258();
    v16 = [v14 valueForKeyPath_];

    if (v16)
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v26[0] = v27;
    v26[1] = v28;
    if (*(&v28 + 1))
    {
      sub_188A55538(v26, &v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936368);
      swift_dynamicCast();
      v17 = v24;
    }

    else
    {
LABEL_13:
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = swift_unknownObjectWeakLoadStrong();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1 & 1;
    *(v20 + 32) = a2;
    *(v20 + 40) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940D80);
    swift_allocObject();

    v10 = sub_188C84FFC(v17, v18, sub_188F0E03C, v20);

    *(v10 + 120) = 1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26[0] = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, v26, &qword_1EA930FF8, &unk_1EA940D80);

    *(v4 + 48) = *&v26[0];
    swift_endAccess();

    sub_188A34360(&qword_1EA930FF8, &unk_1EA940D80);
    v8 = v23;
  }

  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

uint64_t sub_188ECD978(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v34 = a2;
    v35 = v8;
    v33 = a3;
    if (Strong)
    {
      v12 = Strong;
      if (a1)
      {
        v13 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v13 = [Strong layer];
      }

      v14 = v13;

      v15 = sub_18A4A7258();
      v16 = [v14 valueForKeyPath_];

      if (v16)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      sub_188A3F29C(&v45, &v40, &qword_1EA934050);
      if (v41)
      {
        sub_188A55538(&v40, v39);
        sub_188A55598(v39, v38);
        sub_188A55598(v38, v37);
        sub_188A34624(0, &qword_1EA92E860);
        swift_dynamicCast();
        sub_1890908B0(v36, v42);
        v18 = v42[0];
        v17 = v42[1];
        v19 = a1;
        v21 = v42[2];
        v20 = v42[3];
        v22 = v43;
        v23 = v44;

        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        sub_188A3F5FC(&v45, &qword_1EA934050);
        v24 = v20;
        a1 = v19;
        v25 = v21;
        v26 = 0x100000000;
        if (!v23)
        {
          v26 = 0;
        }

        v27 = v26 | v22;
        goto LABEL_17;
      }

      sub_188A3F5FC(&v45, &qword_1EA934050);
    }

    v18 = 0;
    v17 = 0;
    v25 = 0;
    v24 = 0;
    v27 = 0;
LABEL_17:
    *&v45 = v18;
    *(&v45 + 1) = v17;
    *&v46 = v25;
    *(&v46 + 1) = v24;
    v47 = v27;
    v48 = BYTE4(v27);
    v28 = swift_unknownObjectWeakLoadStrong();
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = a1 & 1;
    *(v30 + 32) = v34;
    *(v30 + 40) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364C8);
    swift_allocObject();
    sub_188F0B550(v18);

    v10 = sub_18922CB4C(&v45, v28, sub_188F0E03C, v30);

    *(v10 + 272) = 1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v39[0] = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_188A5E4B4(v10, a1 & 1, v34, v33, isUniquelyReferenced_nonNull_native, v39, &unk_1EA92EC90, &qword_1EA9364C8);

    *(v4 + 48) = *&v39[0];
    swift_endAccess();
    sub_188F0B59C(v18);
    sub_188A34360(&unk_1EA92EC90, &qword_1EA9364C8);
    v8 = v35;
    goto LABEL_18;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364C8);
  v10 = swift_dynamicCastClassUnconditional();
  sub_188A34360(&unk_1EA92EC90, &qword_1EA9364C8);
  swift_unknownObjectRetain();
LABEL_18:
  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

uint64_t sub_188ECDE44(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = 0.0;
    if (Strong)
    {
      v13 = Strong;
      if (a1)
      {
        v14 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v14 = [Strong layer];
      }

      v15 = v14;

      v16 = sub_18A4A7258();
      v17 = [v15 valueForKeyPath_];

      if (v17)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v36, 0, 32);
      }

      sub_188A3F29C(v36, &v34, &qword_1EA934050);
      if (v35)
      {
        sub_188A55538(&v34, v33);
        sub_188A55598(v33, v32);
        sub_188A55598(v32, v31);
        sub_188A34624(0, &qword_1ED48EC30);
        swift_dynamicCast();
        [v30 CGRectValue];
        v12 = v18;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        sub_188A3F5FC(v36, &qword_1EA934050);
LABEL_15:
        v25 = swift_unknownObjectWeakLoadStrong();
        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = a1 & 1;
        *(v27 + 32) = a2;
        *(v27 + 40) = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364F0);
        swift_allocObject();

        v10 = sub_18922CF7C(v25, sub_188F0E03C, v27, v12, v20, v22, v24);

        *(v10 + 272) = 1;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v34 = *(v4 + 48);
        *(v4 + 48) = 0x8000000000000000;
        sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v34, &qword_1EA92F4E8, &qword_1EA9364F0);

        *(v4 + 48) = v34;
        swift_endAccess();
        sub_188A34360(&qword_1EA92F4E8, &qword_1EA9364F0);
        goto LABEL_16;
      }

      sub_188A3F5FC(v36, &qword_1EA934050);
    }

    v20 = 0.0;
    v22 = 0.0;
    v24 = 0.0;
    goto LABEL_15;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364F0);
  v10 = swift_dynamicCastClassUnconditional();
  sub_188A34360(&qword_1EA92F4E8, &qword_1EA9364F0);
  swift_unknownObjectRetain();
LABEL_16:
  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

id sub_188ECE29C()
{
  v0[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType] = 0;
  v1 = &v0[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v0[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive] = 0;
  v0[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 0;
  v0[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_flushPresentationModifiersOverride] = 2;
  v2 = &v0[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
  *v2 = 0;
  v2[8] = 1;
  v5.receiver = v0;
  v5.super_class = _s23InProcessAnimationStateCMa();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  [v3 setDisallowInheritance_];
  return v3;
}

uint64_t sub_188ECE354(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = v9;
  v524 = a8;
  v525 = a6;
  v521 = a5;
  v522 = a7;
  v523 = a4;
  v520 = a3;
  v13 = *a9;
  v14 = *a9;
  v526 = a9;
  v15 = *(v13 + 80);
  v16 = *(v15[-1].Description + 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v505 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v505 - v21;
  if (v15 == &type metadata for UIAnimatableColorMatrix)
  {
    v36 = a1[3];
    v529 = a1[2];
    v530 = v36;
    v37 = a1[4];
    v38 = a1[1];
    v527 = *a1;
    v528 = v38;
    v39 = a2[3];
    v534 = a2[2];
    v535 = v39;
    v536 = a2[4];
    v40 = *a2;
    v533 = a2[1];
    v531 = v37;
    v532 = v40;
    v41 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v41], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v42 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = [v10 updateReason];
    v50 = v526;
    if (v42 == 3)
    {
      *&v519 = signpost_c2_entryLock_start;
      v57 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v52 = Strong, _s23InProcessAnimationStateCMa(), v53 = v10, v54 = sub_18A4A7C88(), v52, v53, (v54 & 1) == 0))
      {
        v55 = swift_unknownObjectWeakLoadStrong();
        if (v55)
        {

          v56 = swift_unknownObjectWeakLoadStrong();
          if (v56)
          {
            v56[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v57 = swift_allocObject();
      *(v57 + 16) = v10;
      v58 = v10;
      *&v519 = sub_188F0E06C;
    }

    v75 = v50[63];
    v76 = __OFADD__(v75, 1);
    v77 = v75 + 1;
    if (!v76)
    {
      LODWORD(v518) = v42 != 3;
      v50[63] = v77;
      v78 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v79 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v565, &v563);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      v81 = v530;
      *(v80 + 64) = v529;
      *(v80 + 80) = v81;
      v82 = v528;
      *(v80 + 32) = v527;
      *(v80 + 48) = v82;
      v83 = v534;
      v84 = v535;
      v85 = v532;
      *(v80 + 128) = v533;
      *(v80 + 144) = v83;
      v86 = v536;
      *(v80 + 160) = v84;
      *(v80 + 176) = v86;
      *(v80 + 96) = v531;
      *(v80 + 112) = v85;
      sub_188A5EBAC(&v563, v80 + 192);
      v87 = v521;
      v88 = v523;
      *(v80 + 232) = v520;
      *(v80 + 240) = v88;
      v89 = v49;
      v90 = v525;
      *(v80 + 248) = v87;
      *(v80 + 256) = v90;
      v91 = v10;
      v92 = v524;
      *(v80 + 264) = v522;
      *(v80 + 272) = v92;
      *(v80 + 280) = v518;
      *(v80 + 284) = v89;
      *(v80 + 288) = v44;
      *(v80 + 292) = v46;
      *(v80 + 296) = v48;
      *(v80 + 304) = v78;
      *(v80 + 312) = v79;
      *(v80 + 320) = v519;
      *(v80 + 328) = v57;
      swift_retain_n();
      v93 = v91;

      v94 = sub_188F0CBF8;
      v95 = sub_188F0CB4C;
LABEL_81:
      sub_189214A14(v94, v50, v95, v80);

LABEL_95:

      return __swift_destroy_boxed_opaque_existential_0Tm(v565);
    }

    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (v15 == &type metadata for UIAnimatableSize)
  {
    *&v20 = *a1;
    v519 = v20;
    *&v20 = *(a1 + 1);
    v516 = v20;
    *&v20 = *a2;
    v518 = v20;
    *&v20 = *(a2 + 1);
    v517 = v20;
    v59 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v59], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v60 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    LODWORD(v515) = [v10 updateReason];
    v50 = v526;
    if (v60 == 3)
    {
      v514 = signpost_c2_entryLock_start;
      v73 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v67 = swift_unknownObjectWeakLoadStrong();
      if (!v67 || (v68 = v67, _s23InProcessAnimationStateCMa(), v69 = v10, v70 = sub_18A4A7C88(), v68, v69, (v70 & 1) == 0))
      {
        v71 = swift_unknownObjectWeakLoadStrong();
        if (v71)
        {

          v72 = swift_unknownObjectWeakLoadStrong();
          if (v72)
          {
            v72[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v73 = swift_allocObject();
      *(v73 + 16) = v10;
      v74 = v10;
      v514 = sub_188F0E06C;
    }

    v115 = v50[25];
    v76 = __OFADD__(v115, 1);
    v116 = v115 + 1;
    if (!v76)
    {
      LODWORD(v513) = v60 != 3;
      v50[25] = v116;
      v117 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v118 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v565, &v563);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      *&v119 = v519;
      *(&v119 + 1) = v516;
      *&v120 = v518;
      *(&v120 + 1) = v517;
      *(v80 + 32) = v119;
      *(v80 + 48) = v120;
      sub_188A5EBAC(&v563, v80 + 64);
      v121 = v521;
      v122 = v10;
      v124 = v523;
      v123 = v524;
      *(v80 + 104) = v520;
      *(v80 + 112) = v124;
      v125 = v525;
      *(v80 + 120) = v121;
      *(v80 + 128) = v125;
      *(v80 + 136) = v522;
      *(v80 + 144) = v123;
      *(v80 + 152) = v513;
      *(v80 + 156) = v515;
      *(v80 + 160) = v62;
      *(v80 + 164) = v64;
      *(v80 + 168) = v66;
      *(v80 + 176) = v117;
      *(v80 + 184) = v118;
      *(v80 + 192) = v514;
      *(v80 + 200) = v73;
      swift_retain_n();
      v126 = v122;

      v94 = sub_188F0E044;
      v95 = sub_188F0CABC;
      goto LABEL_81;
    }

    goto LABEL_199;
  }

  if (v15 == &type metadata for UIAnimatableColorArray)
  {
    v96 = *a1;
    v97 = *a2;
    v98 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v98], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v99 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v101 = v100;
    v103 = v102;
    v105 = v104;
    LODWORD(v519) = [v10 updateReason];
    v106 = v526;
    if (v99 == 3)
    {
      *&v518 = signpost_c2_entryLock_start;
      v113 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v107 = swift_unknownObjectWeakLoadStrong();
      if (!v107 || (v108 = v107, _s23InProcessAnimationStateCMa(), v109 = v10, v110 = sub_18A4A7C88(), v108, v109, (v110 & 1) == 0))
      {
        v111 = swift_unknownObjectWeakLoadStrong();
        if (v111)
        {

          v112 = swift_unknownObjectWeakLoadStrong();
          if (v112)
          {
            v112[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v113 = swift_allocObject();
      *(v113 + 16) = v10;
      v114 = v10;
      *&v518 = sub_188F0E06C;
    }

    v147 = *(v106 + 128);
    v76 = __OFADD__(v147, 1);
    v148 = v147 + 1;
    if (!v76)
    {
      LODWORD(v517) = v99 != 3;
      *(v106 + 128) = v148;
      v149 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      LODWORD(v516) = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v565, &v563);
      v150 = swift_allocObject();
      *(v150 + 16) = v106;
      *(v150 + 24) = v10;
      *(v150 + 32) = v96;
      *(v150 + 40) = v97;
      sub_188A5EBAC(&v563, v150 + 48);
      v151 = v521;
      v152 = v10;
      v153 = v523;
      *(v150 + 88) = v520;
      *(v150 + 96) = v153;
      v154 = v525;
      *(v150 + 104) = v151;
      *(v150 + 112) = v154;
      v155 = v524;
      *(v150 + 120) = v522;
      *(v150 + 128) = v155;
      *(v150 + 136) = v517;
      *(v150 + 140) = v519;
      *(v150 + 144) = v101;
      *(v150 + 148) = v103;
      *(v150 + 152) = v105;
      *(v150 + 160) = v149;
      *(v150 + 168) = v516;
      *(v150 + 176) = v518;
      *(v150 + 184) = v113;

      swift_retain_n();
      v156 = v152;

      v157 = sub_188F0CAA0;
      v158 = sub_188F0CA10;
LABEL_94:
      sub_189214A14(v157, v106, v158, v150);

      goto LABEL_95;
    }

    goto LABEL_200;
  }

  if (v15 == &type metadata for UIAnimatableCornerRadii)
  {
    v127 = a1[1];
    v537 = *a1;
    v538 = v127;
    v128 = a1[3];
    v539 = a1[2];
    v540 = v128;
    v129 = a2[1];
    v541 = *a2;
    v542 = v129;
    v130 = a2[3];
    v543 = a2[2];
    v544 = v130;
    v131 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v131], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v132 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v134 = v133;
    v136 = v135;
    v138 = v137;
    LODWORD(v519) = [v10 updateReason];
    v50 = v526;
    if (v132 == 3)
    {
      *&v518 = signpost_c2_entryLock_start;
      v145 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v139 = swift_unknownObjectWeakLoadStrong();
      if (!v139 || (v140 = v139, _s23InProcessAnimationStateCMa(), v141 = v10, v142 = sub_18A4A7C88(), v140, v141, (v142 & 1) == 0))
      {
        v143 = swift_unknownObjectWeakLoadStrong();
        if (v143)
        {

          v144 = swift_unknownObjectWeakLoadStrong();
          if (v144)
          {
            v144[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v145 = swift_allocObject();
      *(v145 + 16) = v10;
      v146 = v10;
      *&v518 = sub_188F0E06C;
    }

    v177 = v50[55];
    v76 = __OFADD__(v177, 1);
    v178 = v177 + 1;
    if (!v76)
    {
      LODWORD(v517) = v132 != 3;
      v50[55] = v178;
      v179 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v180 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v565, &v563);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      v181 = v538;
      *(v80 + 32) = v537;
      *(v80 + 48) = v181;
      v182 = v540;
      *(v80 + 64) = v539;
      *(v80 + 80) = v182;
      v183 = v542;
      *(v80 + 96) = v541;
      *(v80 + 112) = v183;
      v184 = v544;
      *(v80 + 128) = v543;
      *(v80 + 144) = v184;
      sub_188A5EBAC(&v563, v80 + 160);
      v185 = v521;
      v186 = v10;
      v188 = v523;
      v187 = v524;
      *(v80 + 200) = v520;
      *(v80 + 208) = v188;
      v189 = v525;
      *(v80 + 216) = v185;
      *(v80 + 224) = v189;
      *(v80 + 232) = v522;
      *(v80 + 240) = v187;
      *(v80 + 248) = v517;
      *(v80 + 252) = v519;
      *(v80 + 256) = v134;
      *(v80 + 260) = v136;
      *(v80 + 264) = v138;
      *(v80 + 272) = v179;
      *(v80 + 280) = v180;
      *(v80 + 288) = v518;
      *(v80 + 296) = v145;
      swift_retain_n();
      v190 = v186;

      v94 = sub_188F0C990;
      v95 = sub_188F0C8F8;
      goto LABEL_81;
    }

LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  if (v15 == &type metadata for UIAnimatableVector)
  {
    v159 = *a1;
    v160 = *a2;
    v161 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v161], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v162 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v164 = v163;
    v166 = v165;
    v168 = v167;
    LODWORD(v519) = [v10 updateReason];
    v106 = v526;
    if (v162 == 3)
    {
      *&v518 = signpost_c2_entryLock_start;
      v175 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v169 = swift_unknownObjectWeakLoadStrong();
      if (!v169 || (v170 = v169, _s23InProcessAnimationStateCMa(), v171 = v10, v172 = sub_18A4A7C88(), v170, v171, (v172 & 1) == 0))
      {
        v173 = swift_unknownObjectWeakLoadStrong();
        if (v173)
        {

          v174 = swift_unknownObjectWeakLoadStrong();
          if (v174)
          {
            v174[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v175 = swift_allocObject();
      *(v175 + 16) = v10;
      v176 = v10;
      *&v518 = sub_188F0E06C;
    }

    v215 = *(v106 + 128);
    v76 = __OFADD__(v215, 1);
    v216 = v215 + 1;
    if (!v76)
    {
      LODWORD(v517) = v162 != 3;
      *(v106 + 128) = v216;
      *&v516 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      LODWORD(v515) = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v565, &v563);
      v150 = swift_allocObject();
      *(v150 + 16) = v106;
      *(v150 + 24) = v10;
      *(v150 + 32) = v159;
      *(v150 + 40) = v160;
      sub_188A5EBAC(&v563, v150 + 48);
      v217 = v521;
      v218 = v10;
      v219 = v523;
      *(v150 + 88) = v520;
      *(v150 + 96) = v219;
      v220 = v525;
      *(v150 + 104) = v217;
      *(v150 + 112) = v220;
      v221 = v524;
      *(v150 + 120) = v522;
      *(v150 + 128) = v221;
      *(v150 + 136) = v517;
      *(v150 + 140) = v519;
      *(v150 + 144) = v164;
      *(v150 + 148) = v166;
      *(v150 + 152) = v168;
      *(v150 + 160) = v516;
      *(v150 + 168) = v515;
      *(v150 + 176) = v518;
      *(v150 + 184) = v175;
      swift_retain_n();
      v222 = v218;

      v157 = sub_188F0E04C;
      v158 = sub_188F0C8E0;
      goto LABEL_94;
    }

LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  if (v15 == &type metadata for UIAnimatableMeshTransform)
  {
    v191 = *a1;
    *&v517 = *(a1 + 1);
    v192 = *(a1 + 3);
    *&v516 = *(a1 + 2);
    v514 = v191;
    *&v515 = v192;
    v511 = *(a1 + 36);
    v193 = *(a1 + 8);
    v194 = *a2;
    v195 = *(a2 + 1);
    v196 = *(a2 + 3);
    v513 = *(a2 + 2);
    *&v518 = v196;
    v510 = *(a2 + 36);
    v509 = *(a2 + 8);
    v197 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v197], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v198 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v200 = v199;
    v202 = v201;
    v204 = v203;
    v512 = [v10 updateReason];
    v205 = v526;
    *&v519 = v194;
    if (v198 == 3)
    {
      v214 = signpost_c2_entryLock_start;
      v212 = v195;
      v508 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v206 = swift_unknownObjectWeakLoadStrong();
      if (!v206 || (v207 = v206, _s23InProcessAnimationStateCMa(), v208 = v10, v209 = sub_18A4A7C88(), v207, v208, (v209 & 1) == 0))
      {
        v210 = swift_unknownObjectWeakLoadStrong();
        if (v210)
        {

          v211 = swift_unknownObjectWeakLoadStrong();
          if (v211)
          {
            v211[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      v212 = v195;
      [v10 _animationDidStartWithNilAnimation];
      v508 = swift_allocObject();
      *(v508 + 16) = v10;
      v213 = v10;
      v214 = sub_188F0E06C;
    }

    v242 = v525;
    v243 = *(v205 + 280);
    v76 = __OFADD__(v243, 1);
    v244 = v243 + 1;
    if (!v76)
    {
      v245 = v193 | (v511 << 32);
      v246 = v509 | (v510 << 32);
      LODWORD(v511) = v198 != 3;
      *(v205 + 280) = v244;
      v510 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      LODWORD(v509) = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v565, &v563);
      v247 = swift_allocObject();
      *(v247 + 16) = v205;
      *(v247 + 24) = v10;
      v248 = v513;
      v249 = v517;
      *(v247 + 32) = v514;
      *(v247 + 40) = v249;
      v250 = v515;
      *(v247 + 48) = v516;
      *(v247 + 56) = v250;
      v506 = v246;
      v507 = v245;
      *(v247 + 68) = BYTE4(v245);
      *(v247 + 64) = v245;
      *(v247 + 72) = v519;
      *(v247 + 80) = v212;
      v251 = v518;
      *(v247 + 88) = v248;
      *(v247 + 96) = v251;
      *(v247 + 108) = BYTE4(v246);
      *(v247 + 104) = v246;
      sub_188A5EBAC(&v563, v247 + 112);
      v252 = v521;
      v253 = v10;
      v255 = v523;
      v254 = v524;
      *(v247 + 152) = v520;
      *(v247 + 160) = v255;
      *(v247 + 168) = v252;
      *(v247 + 176) = v242;
      *(v247 + 184) = v522;
      *(v247 + 192) = v254;
      *(v247 + 200) = v511;
      *(v247 + 204) = v512;
      *(v247 + 208) = v200;
      *(v247 + 212) = v202;
      *(v247 + 216) = v204;
      *(v247 + 224) = v510;
      *(v247 + 232) = v509;
      *(v247 + 240) = v214;
      *(v247 + 248) = v508;
      swift_retain_n();
      v256 = v253;

      sub_188F0B550(v514);
      sub_188F0B550(v519);

      sub_189214A14(sub_188F0C8C4, v205, sub_188F0C82C, v247);

      goto LABEL_95;
    }

    goto LABEL_203;
  }

  if (v15 == &type metadata for UIAnimatableFloat)
  {
    v224 = *a1;
    v225 = *a2;
    v226 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v226], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v227 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v229 = v228;
    v231 = v230;
    v233 = v232;
    LODWORD(v519) = [v10 updateReason];
    v50 = v526;
    if (v227 == 3)
    {
      *&v518 = signpost_c2_entryLock_start;
      v240 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v234 = swift_unknownObjectWeakLoadStrong();
      if (!v234 || (v235 = v234, _s23InProcessAnimationStateCMa(), v236 = v10, v237 = sub_18A4A7C88(), v235, v236, (v237 & 1) == 0))
      {
        v238 = swift_unknownObjectWeakLoadStrong();
        if (v238)
        {

          v239 = swift_unknownObjectWeakLoadStrong();
          if (v239)
          {
            v239[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v240 = swift_allocObject();
      *(v240 + 16) = v10;
      v241 = v10;
      *&v518 = sub_188F0E06C;
    }

    v273 = v50[20];
    v76 = __OFADD__(v273, 1);
    v274 = v273 + 1;
    if (!v76)
    {
      LODWORD(v517) = v227 != 3;
      v50[20] = v274;
      v275 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v276 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v565, &v563);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      *(v80 + 32) = v224;
      *(v80 + 40) = v225;
      sub_188A5EBAC(&v563, v80 + 48);
      v277 = v521;
      v279 = v523;
      v278 = v524;
      *(v80 + 88) = v520;
      *(v80 + 96) = v279;
      v280 = v525;
      *(v80 + 104) = v277;
      *(v80 + 112) = v280;
      *(v80 + 120) = v522;
      *(v80 + 128) = v278;
      *(v80 + 136) = v517;
      *(v80 + 140) = v519;
      *(v80 + 144) = v229;
      *(v80 + 148) = v231;
      *(v80 + 152) = v233;
      *(v80 + 160) = v275;
      *(v80 + 168) = v276;
      *(v80 + 176) = v518;
      *(v80 + 184) = v240;
      swift_retain_n();
      v281 = v10;

      v94 = sub_188F0E048;
      v95 = sub_188F0C7A0;
      goto LABEL_81;
    }

LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  if (v15 == &type metadata for UIAnimatableNormalizedPoint)
  {
    *&v20 = *a1;
    v519 = v20;
    *&v20 = *(a1 + 1);
    v516 = v20;
    *&v20 = *a2;
    v518 = v20;
    *&v20 = *(a2 + 1);
    v517 = v20;
    v257 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v257], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v258 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v260 = v259;
    v262 = v261;
    v264 = v263;
    LODWORD(v515) = [v10 updateReason];
    v50 = v526;
    if (v258 == 3)
    {
      v514 = signpost_c2_entryLock_start;
      v271 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v265 = swift_unknownObjectWeakLoadStrong();
      if (!v265 || (v266 = v265, _s23InProcessAnimationStateCMa(), v267 = v10, v268 = sub_18A4A7C88(), v266, v267, (v268 & 1) == 0))
      {
        v269 = swift_unknownObjectWeakLoadStrong();
        if (v269)
        {

          v270 = swift_unknownObjectWeakLoadStrong();
          if (v270)
          {
            v270[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v271 = swift_allocObject();
      *(v271 + 16) = v10;
      v272 = v10;
      v514 = sub_188F0E06C;
    }

    v301 = v50[25];
    v76 = __OFADD__(v301, 1);
    v302 = v301 + 1;
    if (!v76)
    {
      LODWORD(v513) = v258 != 3;
      v50[25] = v302;
      v303 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v304 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v565, &v563);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      *&v305 = v519;
      *(&v305 + 1) = v516;
      *&v306 = v518;
      *(&v306 + 1) = v517;
      *(v80 + 32) = v305;
      *(v80 + 48) = v306;
      sub_188A5EBAC(&v563, v80 + 64);
      v307 = v521;
      v309 = v523;
      v308 = v524;
      *(v80 + 104) = v520;
      *(v80 + 112) = v309;
      v310 = v525;
      *(v80 + 120) = v307;
      *(v80 + 128) = v310;
      *(v80 + 136) = v522;
      *(v80 + 144) = v308;
      *(v80 + 152) = v513;
      *(v80 + 156) = v515;
      *(v80 + 160) = v260;
      *(v80 + 164) = v262;
      *(v80 + 168) = v264;
      *(v80 + 176) = v303;
      *(v80 + 184) = v304;
      *(v80 + 192) = v514;
      *(v80 + 200) = v271;
      swift_retain_n();
      v311 = v10;

      v94 = sub_188F0C71C;
      v95 = sub_188F0C704;
      goto LABEL_81;
    }

LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  if (v15 == &type metadata for UIAnimatableColor)
  {
    v282 = *a1;
    v518 = a1[1];
    v519 = v282;
    v283 = *a2;
    v516 = a2[1];
    v517 = v283;
    v284 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v284], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v285 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v287 = v286;
    v289 = v288;
    v291 = v290;
    v292 = [v10 updateReason];
    v50 = v526;
    LODWORD(v515) = v292;
    if (v285 == 3)
    {
      v514 = signpost_c2_entryLock_start;
      v299 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v293 = swift_unknownObjectWeakLoadStrong();
      if (!v293 || (v294 = v293, _s23InProcessAnimationStateCMa(), v295 = v10, v296 = sub_18A4A7C88(), v294, v295, (v296 & 1) == 0))
      {
        v297 = swift_unknownObjectWeakLoadStrong();
        if (v297)
        {

          v298 = swift_unknownObjectWeakLoadStrong();
          if (v298)
          {
            v298[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v299 = swift_allocObject();
      *(v299 + 16) = v10;
      v300 = v10;
      v514 = sub_188F0E06C;
    }

    v331 = v50[35];
    v76 = __OFADD__(v331, 1);
    v332 = v331 + 1;
    if (!v76)
    {
      LODWORD(v513) = v285 != 3;
      v50[35] = v332;
      v333 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v334 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v565, &v563);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      v335 = v518;
      *(v80 + 32) = v519;
      *(v80 + 48) = v335;
      v336 = v516;
      *(v80 + 64) = v517;
      *(v80 + 80) = v336;
      sub_188A5EBAC(&v563, v80 + 96);
      v337 = v521;
      v339 = v523;
      v338 = v524;
      *(v80 + 136) = v520;
      *(v80 + 144) = v339;
      v340 = v525;
      *(v80 + 152) = v337;
      *(v80 + 160) = v340;
      *(v80 + 168) = v522;
      *(v80 + 176) = v338;
      *(v80 + 184) = v513;
      *(v80 + 188) = v515;
      *(v80 + 192) = v287;
      *(v80 + 196) = v289;
      *(v80 + 200) = v291;
      *(v80 + 208) = v333;
      *(v80 + 216) = v334;
      *(v80 + 224) = v514;
      *(v80 + 232) = v299;
      swift_retain_n();
      v341 = v10;

      v94 = sub_188F0E040;
      v95 = sub_188F0C684;
      goto LABEL_81;
    }

LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  if (v15 == &type metadata for UIAnimatableScaledFloat)
  {
    v312 = *a1;
    v313 = *a2;
    v314 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v314], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v315 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v317 = v316;
    v319 = v318;
    v321 = v320;
    v322 = [v10 updateReason];
    v50 = v526;
    LODWORD(v519) = v322;
    if (v315 == 3)
    {
      *&v518 = signpost_c2_entryLock_start;
      v329 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v323 = swift_unknownObjectWeakLoadStrong();
      if (!v323 || (v324 = v323, _s23InProcessAnimationStateCMa(), v325 = v10, v326 = sub_18A4A7C88(), v324, v325, (v326 & 1) == 0))
      {
        v327 = swift_unknownObjectWeakLoadStrong();
        if (v327)
        {

          v328 = swift_unknownObjectWeakLoadStrong();
          if (v328)
          {
            v328[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v329 = swift_allocObject();
      *(v329 + 16) = v10;
      v330 = v10;
      *&v518 = sub_188F0E06C;
    }

    v361 = v50[20];
    v76 = __OFADD__(v361, 1);
    v362 = v361 + 1;
    if (!v76)
    {
      LODWORD(v517) = v315 != 3;
      v50[20] = v362;
      v363 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v364 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v565, &v563);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      *(v80 + 32) = v312;
      *(v80 + 40) = v313;
      sub_188A5EBAC(&v563, v80 + 48);
      v365 = v521;
      v367 = v523;
      v366 = v524;
      *(v80 + 88) = v520;
      *(v80 + 96) = v367;
      v368 = v525;
      *(v80 + 104) = v365;
      *(v80 + 112) = v368;
      *(v80 + 120) = v522;
      *(v80 + 128) = v366;
      *(v80 + 136) = v517;
      *(v80 + 140) = v519;
      *(v80 + 144) = v317;
      *(v80 + 148) = v319;
      *(v80 + 152) = v321;
      *(v80 + 160) = v363;
      *(v80 + 168) = v364;
      *(v80 + 176) = v518;
      *(v80 + 184) = v329;
      swift_retain_n();
      v369 = v10;

      v94 = sub_188F0C668;
      v95 = sub_188F0C650;
      goto LABEL_81;
    }

LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

  if (v15 == &type metadata for UIAnimatableRect)
  {
    v342 = *a1;
    v518 = a1[1];
    v519 = v342;
    v343 = *a2;
    v516 = a2[1];
    v517 = v343;
    v344 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v344], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v345 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v347 = v346;
    v349 = v348;
    v351 = v350;
    v352 = [v10 updateReason];
    v50 = v526;
    LODWORD(v515) = v352;
    if (v345 == 3)
    {
      v514 = signpost_c2_entryLock_start;
      v359 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v353 = swift_unknownObjectWeakLoadStrong();
      if (!v353 || (v354 = v353, _s23InProcessAnimationStateCMa(), v355 = v10, v356 = sub_18A4A7C88(), v354, v355, (v356 & 1) == 0))
      {
        v357 = swift_unknownObjectWeakLoadStrong();
        if (v357)
        {

          v358 = swift_unknownObjectWeakLoadStrong();
          if (v358)
          {
            v358[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v359 = swift_allocObject();
      *(v359 + 16) = v10;
      v360 = v10;
      v514 = sub_188F0E06C;
    }

    v388 = v50[35];
    v76 = __OFADD__(v388, 1);
    v389 = v388 + 1;
    if (!v76)
    {
      LODWORD(v513) = v345 != 3;
      v50[35] = v389;
      v390 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v391 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v565, &v563);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      v392 = v518;
      *(v80 + 32) = v519;
      *(v80 + 48) = v392;
      v393 = v516;
      *(v80 + 64) = v517;
      *(v80 + 80) = v393;
      sub_188A5EBAC(&v563, v80 + 96);
      v394 = v521;
      v396 = v523;
      v395 = v524;
      *(v80 + 136) = v520;
      *(v80 + 144) = v396;
      v397 = v525;
      *(v80 + 152) = v394;
      *(v80 + 160) = v397;
      *(v80 + 168) = v522;
      *(v80 + 176) = v395;
      *(v80 + 184) = v513;
      *(v80 + 188) = v515;
      *(v80 + 192) = v347;
      *(v80 + 196) = v349;
      *(v80 + 200) = v351;
      *(v80 + 208) = v390;
      *(v80 + 216) = v391;
      *(v80 + 224) = v514;
      *(v80 + 232) = v359;
      swift_retain_n();
      v398 = v10;

      v94 = sub_188F0E040;
      v95 = sub_188F0C5BC;
      goto LABEL_81;
    }

LABEL_208:
    __break(1u);
    goto LABEL_209;
  }

  if (v15 == &type metadata for UIAnimatableNormalizedRect)
  {
    v370 = *a1;
    v518 = a1[1];
    v519 = v370;
    v371 = *a2;
    v516 = a2[1];
    v517 = v371;
    v372 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v372], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v373 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v375 = v374;
    v377 = v376;
    v379 = v378;
    LODWORD(v515) = [v10 updateReason];
    v50 = v526;
    if (v373 == 3)
    {
      v514 = signpost_c2_entryLock_start;
      v386 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v380 = swift_unknownObjectWeakLoadStrong();
      if (!v380 || (v381 = v380, _s23InProcessAnimationStateCMa(), v382 = v10, v383 = sub_18A4A7C88(), v381, v382, (v383 & 1) == 0))
      {
        v384 = swift_unknownObjectWeakLoadStrong();
        if (v384)
        {

          v385 = swift_unknownObjectWeakLoadStrong();
          if (v385)
          {
            v385[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v386 = swift_allocObject();
      *(v386 + 16) = v10;
      v387 = v10;
      v514 = sub_188F0E06C;
    }

    v423 = v50[35];
    v76 = __OFADD__(v423, 1);
    v424 = v423 + 1;
    if (!v76)
    {
      LODWORD(v513) = v373 != 3;
      v50[35] = v424;
      v425 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v426 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v565, &v563);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      v427 = v518;
      *(v80 + 32) = v519;
      *(v80 + 48) = v427;
      v428 = v516;
      *(v80 + 64) = v517;
      *(v80 + 80) = v428;
      sub_188A5EBAC(&v563, v80 + 96);
      v429 = v521;
      v431 = v523;
      v430 = v524;
      *(v80 + 136) = v520;
      *(v80 + 144) = v431;
      v432 = v525;
      *(v80 + 152) = v429;
      *(v80 + 160) = v432;
      *(v80 + 168) = v522;
      *(v80 + 176) = v430;
      *(v80 + 184) = v513;
      *(v80 + 188) = v515;
      *(v80 + 192) = v375;
      *(v80 + 196) = v377;
      *(v80 + 200) = v379;
      *(v80 + 208) = v425;
      *(v80 + 216) = v426;
      *(v80 + 224) = v514;
      *(v80 + 232) = v386;
      swift_retain_n();
      v433 = v10;

      v94 = sub_188F0E040;
      v95 = sub_188F0C53C;
      goto LABEL_81;
    }

LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  if (v15 == &type metadata for UIAnimatableTransform)
  {
    v399 = a1[7];
    v551 = a1[6];
    v552 = v399;
    v553 = *(a1 + 128);
    v400 = a1[3];
    v547 = a1[2];
    v548 = v400;
    v401 = a1[5];
    v549 = a1[4];
    v550 = v401;
    v402 = a1[1];
    v545 = *a1;
    v546 = v402;
    v403 = a2[7];
    v560 = a2[6];
    v561 = v403;
    v562 = *(a2 + 128);
    v404 = a2[3];
    v556 = a2[2];
    v557 = v404;
    v405 = a2[5];
    v558 = a2[4];
    v559 = v405;
    v406 = a2[1];
    v554 = *a2;
    v555 = v406;
    v407 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v407], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v408 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v410 = v409;
    v412 = v411;
    v414 = v413;
    LODWORD(v518) = [v10 updateReason];
    v50 = v526;
    if (v408 == 3)
    {
      *&v519 = signpost_c2_entryLock_start;
      v421 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v415 = swift_unknownObjectWeakLoadStrong();
      if (!v415 || (v416 = v415, _s23InProcessAnimationStateCMa(), v417 = v10, v418 = sub_18A4A7C88(), v416, v417, (v418 & 1) == 0))
      {
        v419 = swift_unknownObjectWeakLoadStrong();
        if (v419)
        {

          v420 = swift_unknownObjectWeakLoadStrong();
          if (v420)
          {
            v420[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v421 = swift_allocObject();
      *(v421 + 16) = v10;
      v422 = v10;
      *&v519 = sub_188F0E06C;
    }

    v477 = v50[95];
    v76 = __OFADD__(v477, 1);
    v478 = v477 + 1;
    if (v76)
    {
      goto LABEL_211;
    }

    LODWORD(v517) = v408 != 3;
    v50[95] = v478;
    v479 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
    v480 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
    sub_188A53994(v565, &v563);
    v80 = swift_allocObject();
    v481 = v552;
    *(v80 + 128) = v551;
    *(v80 + 144) = v481;
    v482 = v548;
    *(v80 + 64) = v547;
    *(v80 + 80) = v482;
    v483 = v550;
    *(v80 + 96) = v549;
    *(v80 + 112) = v483;
    v484 = v546;
    *(v80 + 32) = v545;
    *(v80 + 48) = v484;
    v485 = v558;
    *(v80 + 248) = v559;
    v486 = v561;
    *(v80 + 264) = v560;
    *(v80 + 280) = v486;
    v487 = v554;
    *(v80 + 184) = v555;
    v488 = v557;
    *(v80 + 200) = v556;
    *(v80 + 216) = v488;
    *(v80 + 232) = v485;
    *(v80 + 16) = v50;
    *(v80 + 24) = v10;
    *(v80 + 160) = v553;
    *(v80 + 296) = v562;
    *(v80 + 168) = v487;
    sub_188A5EBAC(&v563, v80 + 304);
    v489 = v521;
    v491 = v523;
    v490 = v524;
    *(v80 + 344) = v520;
    *(v80 + 352) = v491;
    v492 = v525;
    *(v80 + 360) = v489;
    *(v80 + 368) = v492;
    *(v80 + 376) = v522;
    *(v80 + 384) = v490;
    *(v80 + 392) = v517;
    *(v80 + 396) = v518;
    *(v80 + 400) = v410;
    *(v80 + 404) = v412;
    *(v80 + 408) = v414;
    *(v80 + 416) = v479;
    *(v80 + 424) = v480;
    *(v80 + 432) = v519;
    *(v80 + 440) = v421;
    swift_retain_n();
    v493 = v10;

    v94 = sub_188F0C534;
    v95 = sub_188F0C450;
    goto LABEL_81;
  }

  if (v15 == &type metadata for UIAnimatablePoint)
  {
    *&v20 = *a1;
    v518 = v20;
    *&v20 = *(a1 + 1);
    v515 = v20;
    *&v20 = *a2;
    v517 = v20;
    *&v20 = *(a2 + 1);
    v516 = v20;
    v434 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v434], &v563, &qword_1EA935C90);
    if (!v564)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v563, v565);
    v435 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v437 = v436;
    v439 = v438;
    v441 = v440;
    v442 = [v10 updateReason];
    v50 = v526;
    LODWORD(v514) = v442;
    if (v435 == 3)
    {
      *&v519 = signpost_c2_entryLock_start;
      v449 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v443 = swift_unknownObjectWeakLoadStrong();
      if (!v443 || (v444 = v443, _s23InProcessAnimationStateCMa(), v445 = v10, v446 = sub_18A4A7C88(), v444, v445, (v446 & 1) == 0))
      {
        v447 = swift_unknownObjectWeakLoadStrong();
        if (v447)
        {

          v448 = swift_unknownObjectWeakLoadStrong();
          if (v448)
          {
            v448[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v449 = swift_allocObject();
      *(v449 + 16) = v10;
      v450 = v10;
      *&v519 = sub_188F0E06C;
    }

    v494 = v50[25];
    v76 = __OFADD__(v494, 1);
    v495 = v494 + 1;
    if (v76)
    {
      goto LABEL_212;
    }

    LODWORD(v513) = v435 != 3;
    v50[25] = v495;
    v496 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
    v497 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
    sub_188A53994(v565, &v563);
    v80 = swift_allocObject();
    *(v80 + 16) = v50;
    *(v80 + 24) = v10;
    *&v498 = v518;
    *(&v498 + 1) = v515;
    *&v499 = v517;
    *(&v499 + 1) = v516;
    *(v80 + 32) = v498;
    *(v80 + 48) = v499;
    sub_188A5EBAC(&v563, v80 + 64);
    v500 = v521;
    v502 = v523;
    v501 = v524;
    *(v80 + 104) = v520;
    *(v80 + 112) = v502;
    v503 = v525;
    *(v80 + 120) = v500;
    *(v80 + 128) = v503;
    *(v80 + 136) = v522;
    *(v80 + 144) = v501;
    *(v80 + 152) = v513;
    *(v80 + 156) = v514;
    *(v80 + 160) = v437;
    *(v80 + 164) = v439;
    *(v80 + 168) = v441;
    *(v80 + 176) = v496;
    *(v80 + 184) = v497;
    *(v80 + 192) = v519;
    *(v80 + 200) = v449;
    swift_retain_n();
    v504 = v10;

    v94 = sub_188F0E044;
    v95 = sub_188F0C438;
    goto LABEL_81;
  }

  *&v519 = v19;
  v23 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
  swift_beginAccess();
  sub_188A3F29C(&v10[v23], &v563, &qword_1EA935C90);
  if (v564)
  {
    sub_188A5EBAC(&v563, v565);
    v24 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    LODWORD(v518) = [v10 updateReason];
    if (v24 == 3)
    {
      *&v516 = signpost_c2_entryLock_start;
      *&v517 = 0;
    }

    else
    {
      LODWORD(v515) = v24;
      [v10 _incrementDidEndCount];
      *&v517 = *(*v526 + 160);
      v31 = swift_unknownObjectWeakLoadStrong();
      if (!v31 || (v513 = v31, v514 = _s23InProcessAnimationStateCMa(), *&v516 = v10, v32 = sub_18A4A7C88(), v513, v516, (v32 & 1) == 0))
      {
        v33 = swift_unknownObjectWeakLoadStrong();
        if (v33)
        {

          v34 = swift_unknownObjectWeakLoadStrong();
          if (v34)
          {
            v34[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      *&v517 = swift_allocObject();
      *(v517 + 16) = v10;
      v35 = v10;
      *&v516 = sub_188F0C304;
      v24 = v515;
    }

    v451 = *(*v526 + 176);
    v452 = *(v526 + v451);
    v76 = __OFADD__(v452, 1);
    v453 = v452 + 1;
    if (!v76)
    {
      *(v526 + v451) = v453;
      v514 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v454 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      v512 = v24 != 3;
      LODWORD(v513) = v454;
      *&v515 = type metadata accessor for InProcessAnimationManager();
      v455 = a1;
      v456 = *(v519 + 16);
      v456(v22, v455, v15);
      v456(v17, a2, v15);
      sub_188A53994(v565, &v563);
      v457 = v519;
      v458 = *(v519 + 80);
      v459 = (v458 + 48) & ~v458;
      v505 = (v16 + v458 + v459) & ~v458;
      v506 = (v16 + v505 + 7) & 0xFFFFFFFFFFFFFFF8;
      v507 = (v506 + 47) & 0xFFFFFFFFFFFFFFF8;
      v508 = (v507 + 23) & 0xFFFFFFFFFFFFFFF8;
      v509 = (v508 + 23) & 0xFFFFFFFFFFFFFFF8;
      v460 = (v509 + 27) & 0xFFFFFFFFFFFFFFF8;
      v510 = (v460 + 35) & 0xFFFFFFFFFFFFFFF8;
      v511 = (v460 + 19) & 0xFFFFFFFFFFFFFFF8;
      v461 = swift_allocObject();
      *(v461 + 2) = v15;
      v462 = v526;
      *(v461 + 3) = *(v14 + 88);
      *(v461 + 4) = v462;
      *(v461 + 5) = v10;
      v463 = *(v457 + 32);
      v463(&v461[v459], v22, v15);
      v463(&v461[v505], v17, v15);
      sub_188A5EBAC(&v563, &v461[v506]);
      v464 = &v461[v507];
      v465 = v521;
      v467 = v523;
      v466 = v524;
      *v464 = v520;
      *(v464 + 1) = v467;
      v468 = &v461[v508];
      v469 = v525;
      *v468 = v465;
      *(v468 + 1) = v469;
      v470 = &v461[v509];
      *v470 = v522;
      *(v470 + 1) = v466;
      v470[16] = v512;
      *(v470 + 5) = v518;
      v471 = &v461[v460];
      *v471 = v26;
      *(v471 + 1) = v28;
      *(v471 + 2) = v30;
      v472 = &v461[v511];
      *v472 = v514;
      v472[8] = v513;
      v473 = &v461[v510];
      v474 = v517;
      *v473 = v516;
      *(v473 + 1) = v474;
      v475 = v10;
      v476 = v526;

      sub_18920BFF0(v476, sub_188F0C30C, v461);
      goto LABEL_95;
    }

    goto LABEL_210;
  }

LABEL_213:
  sub_188A3F5FC(&v563, &qword_1EA935C90);
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t sub_188ED1150(uint64_t a1, char a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a2;
  v6 = a3;
  sub_188A32084(sub_188F0DFAC, v5);
}

uint64_t sub_188ED11D8(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, int a17, unint64_t a18, char a19, uint64_t a20, uint64_t a21)
{
  v161 = a8;
  v153 = a7;
  v146 = a6;
  v156 = a5;
  v157 = a4;
  v151 = a21;
  v149 = a20;
  v150 = a16;
  v155 = a14;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936518);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v139 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936520);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v162 = (&v139 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936528);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v152 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v148 = &v139 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v142 = &v139 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v143 = &v139 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v159 = (&v139 - v40);
  v139 = a3;
  v147 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v41 = swift_allocObject();
  v41[2] = a12;
  v41[3] = a13;
  v160 = v41;
  v41[4] = a1;
  v42 = swift_allocObject();
  v42[2] = v155;
  v42[3] = a15;
  v42[4] = a1;
  v43 = *(a2 + 32);
  swift_retain_n();
  v44 = v156;

  os_unfair_lock_lock((v43 + 24));
  v45 = *(v43 + 16);
  v144 = (v43 + 16);

  v145 = v43;
  os_unfair_lock_unlock((v43 + 24));
  v154 = v30;
  v155 = a1;
  v48 = a2;
  v163 = a2;
  v49 = v157;
  v158 = v42;
  if (!v45)
  {
    (*(v31 + 56))(v162, 1, 1, v30);
    v79 = v49[2];
    v80 = v49[3];
    v81 = *v49;
    v176 = v49[1];
    v177 = v79;
    v82 = v49[4];
    v178 = v80;
    v179 = v82;
    v83 = v44[3];
    v172 = v44[2];
    v173 = v83;
    v174 = v44[4];
    v175 = v81;
    v84 = v44[1];
    v170 = *v44;
    v171 = v84;
    v85 = v146[3];
    v86 = v146[4];
    __swift_project_boxed_opaque_existential_0(v146, v85);
    swift_beginAccess();
    v87 = *(v48 + 397);
    v88 = *(v86 + 16);
    v89 = sub_188C5268C();
    v90 = v87;
    v91 = v162;
    v88(&v165, v90, v162, &v175, &v170, &type metadata for UIAnimatableColorMatrix, v89, v85, v86);
    v92 = sub_188A33550();
    swift_beginAccess();
    v182 = v177;
    v183 = v178;
    v180 = v175;
    v181 = v176;
    v186 = v171;
    v187 = v172;
    v188 = v173;
    v189 = v174;
    v184 = v179;
    v185 = v170;
    v73 = v159;
    sub_188C54CAC(v91, &v165, v147, &v180, &v185, v159, v92);
    swift_endAccess();
    sub_188AAFF20(&v165);
    sub_188A3F5FC(v91, &qword_1EA936520);
    v78 = v152;
    goto LABEL_11;
  }

  v50 = v31;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v52 = v156;
    v51 = v157;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v46, v47);
      os_unfair_lock_lock((v45[2] + 16));
      signpost_c2_entryLock_start(v53, v54);
      v55 = *(*v45 + 104);
      swift_beginAccess();
      v56 = v143;
      sub_188A3F29C(v45 + v55, v143, &qword_1EA936528);
      v57 = v56;
      v58 = v162;
      sub_188A3F29C(v57, v162, &qword_1EA936528);
      (v50[7])(v58, 0, 1, v154);
      v59 = v51[2];
      v60 = v51[3];
      v61 = *v51;
      v176 = v51[1];
      v177 = v59;
      v62 = v51[4];
      v178 = v60;
      v179 = v62;
      v63 = v52[3];
      v172 = v52[2];
      v173 = v63;
      v174 = v52[4];
      v175 = v61;
      v64 = v52[1];
      v170 = *v52;
      v171 = v64;
      v65 = v146[3];
      v66 = v146[4];
      __swift_project_boxed_opaque_existential_0(v146, v65);
      v67 = v163;
      swift_beginAccess();
      v68 = *(v67 + 397);
      v69 = *(v66 + 16);
      v70 = sub_188C5268C();
      v69(&v165, v68, v162, &v175, &v170, &type metadata for UIAnimatableColorMatrix, v70, v65, v66);
      v71 = v155;
      v72 = sub_188A33550();
      swift_beginAccess();
      v182 = v177;
      v183 = v178;
      v180 = v175;
      v181 = v176;
      v186 = v171;
      v187 = v172;
      v188 = v173;
      v189 = v174;
      v184 = v179;
      v185 = v170;
      v73 = v159;
      v74 = v162;
      sub_188C54CAC(v162, &v165, v147, &v180, &v185, v159, v72);
      swift_endAccess();
      sub_188AAFF20(&v165);
      sub_188A3F5FC(v74, &qword_1EA936520);
      v75 = *v45;
      v76 = v45 + *(*v45 + 112);
      v77 = *v76;
      if (*v76)
      {
        *v76 = 0;
        *(v76 + 1) = 0;
        v77(v71, 0);
        sub_188A55B8C(v77);
        v75 = *v45;
      }

      v78 = v152;
      *(v45 + *(v75 + 120)) = 1;
      sub_188A3F5FC(v143, &qword_1EA936528);
      os_unfair_lock_unlock((v45[2] + 16));
    }

    else
    {
      v93 = *(*v45 + 104);
      swift_beginAccess();
      v94 = v45 + v93;
      v95 = v142;
      sub_188A3F29C(v94, v142, &qword_1EA936528);
      v96 = v95;
      v97 = v162;
      sub_188A3F29C(v96, v162, &qword_1EA936528);
      (v50[7])(v97, 0, 1, v154);
      v98 = v51[2];
      v99 = v51[3];
      v100 = *v51;
      v176 = v51[1];
      v177 = v98;
      v101 = v51[4];
      v178 = v99;
      v179 = v101;
      v102 = v52[3];
      v172 = v52[2];
      v173 = v102;
      v174 = v52[4];
      v175 = v100;
      v103 = v52[1];
      v170 = *v52;
      v171 = v103;
      v104 = v146[3];
      v105 = v146[4];
      __swift_project_boxed_opaque_existential_0(v146, v104);
      v106 = v163;
      swift_beginAccess();
      v107 = *(v106 + 397);
      v108 = *(v105 + 16);
      v109 = sub_188C5268C();
      v108(&v165, v107, v162, &v175, &v170, &type metadata for UIAnimatableColorMatrix, v109, v104, v105);
      v110 = v155;
      v111 = sub_188A33550();
      swift_beginAccess();
      v182 = v177;
      v183 = v178;
      v180 = v175;
      v181 = v176;
      v186 = v171;
      v187 = v172;
      v188 = v173;
      v189 = v174;
      v184 = v179;
      v185 = v170;
      v73 = v159;
      v112 = v162;
      sub_188C54CAC(v162, &v165, v147, &v180, &v185, v159, v111);
      swift_endAccess();
      sub_188AAFF20(&v165);
      sub_188A3F5FC(v112, &qword_1EA936520);
      v113 = v45 + *(*v45 + 112);
      v114 = *v113;
      if (*v113)
      {
        *v113 = 0;
        *(v113 + 1) = 0;
        v114(v110, 0);
        sub_188A55B8C(v114);
      }

      sub_188A3F5FC(v142, &qword_1EA936528);
      *(v45 + *(*v45 + 120)) = 1;

      v78 = v152;
    }

LABEL_11:
    v115 = v148;
    sub_188A3F29C(v73, v148, &qword_1EA936528);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936530);
    swift_allocObject();
    v116 = v151;

    v117 = sub_188AA785C(v115, v149, v116, &qword_1EA936528);

    if (v150)
    {
      swift_unknownObjectWeakAssign();
    }

    v118 = v163;
    swift_beginAccess();
    if (*(v118 + 212))
    {
      if (a19)
      {
        goto LABEL_18;
      }

      sub_188C564AC(v156, v157, &v175);
      v119 = vdupq_n_s64(a18);
      v165 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v119, vcvtq_f64_f32(*v175.f32))), vmulq_f64(v119, vcvt_hight_f64_f32(v175)));
      v166 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v119, vcvtq_f64_f32(*v176.f32))), vmulq_f64(v119, vcvt_hight_f64_f32(v176)));
      v167 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v119, vcvtq_f64_f32(*v177.f32))), vmulq_f64(v119, vcvt_hight_f64_f32(v177)));
      v168 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v119, vcvtq_f64_f32(*v178.f32))), vmulq_f64(v119, vcvt_hight_f64_f32(v178)));
      v169 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v119, vcvtq_f64_f32(*v179.f32))), vmulq_f64(v119, vcvt_hight_f64_f32(v179)));
    }

    else
    {
      v120 = *(v118 + 164);
      v166 = *(v118 + 148);
      v167 = v120;
      v121 = *(v118 + 196);
      v168 = *(v118 + 180);
      v169 = v121;
      v165 = *(v118 + 132);
    }

    sub_188EFEB08(&v165);
LABEL_18:
    v122 = swift_allocObject();
    v164 = 1;
    *(v122 + 16) = 0u;
    *(v122 + 32) = 0u;
    *(v122 + 48) = 0u;
    *(v122 + 64) = 0u;
    *(v122 + 80) = 0u;
    *(v122 + 96) = 1;
    v123 = *(v118 + 496);
    sub_188A3F29C(v73, v78, &qword_1EA936528);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v124 = v78;
      v125 = v140;
      sub_188A3F704(v124, v140, &qword_1EA936518);
      v126 = *(v125 + *(v141 + 64));
      sub_188A3F5FC(v125, &qword_1EA936518);
      v127 = (v126 == 2) | v126;
    }

    else
    {
      v127 = 0;
    }

    v128 = swift_allocObject();
    v129 = v153;
    v128[2] = v117;
    v128[3] = v129;
    v130 = v160;
    v128[4] = v161;
    v128[5] = v118;
    v131 = v155;
    v128[6] = v122;
    v128[7] = v131;
    v128[8] = sub_188F0CC00;
    v128[9] = v130;
    v132 = v158;
    v128[10] = sub_188F0CC70;
    v128[11] = v132;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v133 = swift_allocObject();
    *(v133 + 16) = a9;
    *(v133 + 20) = a10;
    *(v133 + 24) = a11;
    *(v133 + 28) = a17;
    *(v133 + 32) = v123;
    *(v133 + 33) = v127 & 1;
    *(v133 + 40) = sub_188F0CCA0;
    *(v133 + 48) = v128;
    v162 = *(v131 + 280);
    v134 = swift_allocObject();
    *(v134 + 16) = v131;
    *(v134 + 24) = v133;
    v135 = swift_allocObject();
    *(v135 + 16) = sub_188AA7334;
    *(v135 + 24) = v134;
    v172.i64[0] = sub_188A4B574;
    v172.i64[1] = v135;
    v170.i64[0] = MEMORY[0x1E69E9820];
    v170.i64[1] = 1107296256;
    v171.i64[0] = sub_188A4A968;
    v171.i64[1] = &block_descriptor_21;
    v50 = v117;
    v45 = _Block_copy(&v170);
    swift_retain_n();

    dispatch_sync(v162, v45);
    _Block_release(v45);
    LOBYTE(v132) = swift_isEscapingClosureAtFileLocation();

    if ((v132 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v136);
  *(&v139 - 2) = v50;
  v137 = v145;
  os_unfair_lock_lock(v145 + 6);
  sub_188F0E024(v144);
  os_unfair_lock_unlock(v137 + 6);

  sub_188A3F5FC(v159, &qword_1EA936528);
}

uint64_t sub_188ED205C(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float a13, float a14, float a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, double a21, char a22, uint64_t a23, uint64_t a24)
{
  v140 = a6;
  v137 = a5;
  v130 = a4;
  v135 = a24;
  v133 = a23;
  v134 = a19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936560);
  MEMORY[0x1EEE9AC00](v125);
  v124 = v123 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367D8);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = (v123 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936568);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v136 = v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v132 = v123 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v126 = v123 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v127 = v123 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v143 = v123 - v49;
  v123[1] = a3;
  v131 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v50 = swift_allocObject();
  v50[2] = a7;
  v50[3] = a8;
  v51 = a1;
  v139 = v50;
  v50[4] = a1;
  v52 = swift_allocObject();
  v52[2] = a17;
  v52[3] = a18;
  v138 = v52;
  v52[4] = a1;
  v53 = *(isEscapingClosureAtFileLocation + 32);
  swift_retain_n();

  os_unfair_lock_lock((v53 + 24));
  v54 = *(v53 + 16);
  v128 = (v53 + 16);

  v129 = v53;
  os_unfair_lock_unlock((v53 + 24));
  v144 = isEscapingClosureAtFileLocation;
  v142 = v51;
  v141 = v39;
  if (!v54)
  {
    v40[7](v38, 1, 1, v39);
    v145[0] = a9;
    v145[1] = a10;
    v149 = a11;
    v150 = a12;
    v78 = v130[3];
    v79 = v130[4];
    __swift_project_boxed_opaque_existential_0(v130, v78);
    swift_beginAccess();
    v80 = *(isEscapingClosureAtFileLocation + 153);
    v81 = *(v79 + 16);
    v82 = sub_188C52734();
    v81(aBlock, v80, v38, v145, &v149, &type metadata for UIAnimatableSize, v82, v78, v79);
    v83 = sub_188A33550();
    swift_beginAccess();
    v84.n128_f64[0] = a9;
    v85.n128_f64[0] = a10;
    v86.n128_f64[0] = a11;
    v87.n128_f64[0] = a12;
    v74 = v143;
    sub_188AAFF74(v38, aBlock, v131, &qword_1EA936568, &unk_18A650D18, &qword_1EA9367D8, &qword_1EA936560, v143, v84, v85, v86, v87, v83, &unk_18A650D10, sub_188EF7514, sub_188C52788, &type metadata for UIAnimatableSize, sub_188EF4E14);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v38, &qword_1EA9367D8);
    goto LABEL_12;
  }

  v57 = v130;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v58 = v38;
    v59 = v57;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v55, v56);
      os_unfair_lock_lock((v54[2] + 16));
      signpost_c2_entryLock_start(v60, v61);
      v62 = *(*v54 + 104);
      swift_beginAccess();
      v63 = v127;
      sub_188A3F29C(v54 + v62, v127, &qword_1EA936568);
      sub_188A3F29C(v63, v58, &qword_1EA936568);
      v40[7](v58, 0, 1, v141);
      v149 = a9;
      v150 = a10;
      v146 = a11;
      v147 = a12;
      v64 = v58;
      v65 = v59[4];
      __swift_project_boxed_opaque_existential_0(v59, v59[3]);
      swift_beginAccess();
      v66 = *(isEscapingClosureAtFileLocation + 153);
      v67 = *(v65 + 16);
      sub_188C52734();
      v67(aBlock, v66, v64, &v149, &v146);
      isEscapingClosureAtFileLocation = v144;
      v68 = v142;
      v69 = sub_188A33550();
      swift_beginAccess();
      v70.n128_f64[0] = a9;
      v71.n128_f64[0] = a10;
      v72.n128_f64[0] = a11;
      v73.n128_f64[0] = a12;
      v74 = v143;
      sub_188AAFF74(v64, aBlock, v131, &qword_1EA936568, &unk_18A650D18, &qword_1EA9367D8, &qword_1EA936560, v143, v70, v71, v72, v73, v69, &unk_18A650D10, sub_188EF7514, sub_188C52788, &type metadata for UIAnimatableSize, sub_188EF4E14);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v64, &qword_1EA9367D8);
      v75 = *v54;
      v76 = v54 + *(*v54 + 112);
      v77 = *v76;
      if (*v76)
      {
        *v76 = 0;
        *(v76 + 1) = 0;
        v77(v68, 0);
        sub_188A55B8C(v77);
        v75 = *v54;
      }

      *(v54 + *(v75 + 120)) = 1;
      sub_188A3F5FC(v127, &qword_1EA936568);
      os_unfair_lock_unlock((v54[2] + 16));
    }

    else
    {
      v88 = *(*v54 + 104);
      swift_beginAccess();
      v89 = v54 + v88;
      v90 = v126;
      sub_188A3F29C(v89, v126, &qword_1EA936568);
      sub_188A3F29C(v90, v58, &qword_1EA936568);
      v40[7](v58, 0, 1, v141);
      v149 = a9;
      v150 = a10;
      v146 = a11;
      v147 = a12;
      v91 = v57[4];
      __swift_project_boxed_opaque_existential_0(v57, v57[3]);
      swift_beginAccess();
      v92 = *(v144 + 153);
      v93 = *(v91 + 16);
      sub_188C52734();
      isEscapingClosureAtFileLocation = v144;
      v93(aBlock, v92, v58, &v149, &v146);
      v94 = v142;
      v95 = sub_188A33550();
      swift_beginAccess();
      v96.n128_f64[0] = a9;
      v97.n128_f64[0] = a10;
      v98.n128_f64[0] = a11;
      v99.n128_f64[0] = a12;
      v74 = v143;
      sub_188AAFF74(v58, aBlock, v131, &qword_1EA936568, &unk_18A650D18, &qword_1EA9367D8, &qword_1EA936560, v143, v96, v97, v98, v99, v95, &unk_18A650D10, sub_188EF7514, sub_188C52788, &type metadata for UIAnimatableSize, sub_188EF4E14);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v58, &qword_1EA9367D8);
      v100 = v54 + *(*v54 + 112);
      v101 = *v100;
      if (*v100)
      {
        *v100 = 0;
        *(v100 + 1) = 0;
        v101(v94, 0);
        sub_188A55B8C(v101);
      }

      sub_188A3F5FC(v126, &qword_1EA936568);
      *(v54 + *(*v54 + 120)) = 1;
    }

LABEL_12:
    v102 = v132;
    sub_188A3F29C(v74, v132, &qword_1EA936568);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367E0);
    swift_allocObject();
    v103 = v135;

    v104 = sub_188AA785C(v102, v133, v103, &qword_1EA936568);

    if (v134)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(isEscapingClosureAtFileLocation + 88))
    {
      if (a22)
      {
        goto LABEL_19;
      }

      v105 = (a11 - a9) * a21;
      v106 = (a12 - a10) * a21;
    }

    else
    {
      v105 = *(isEscapingClosureAtFileLocation + 72);
      v106 = *(isEscapingClosureAtFileLocation + 80);
    }

    sub_188EFF9E0(&qword_1EA936568, v105, v106);
LABEL_19:
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    *(v107 + 24) = 0;
    *(v107 + 32) = 1;
    v108 = *(isEscapingClosureAtFileLocation + 192);
    v109 = v136;
    sub_188A3F29C(v74, v136, &qword_1EA936568);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v110 = v124;
      sub_188A3F704(v109, v124, &qword_1EA936560);
      v111 = *(v110 + *(v125 + 64));
      sub_188A3F5FC(v110, &qword_1EA936560);
      v112 = (v111 == 2) | v111;
    }

    else
    {
      v112 = 0;
    }

    v113 = swift_allocObject();
    v114 = v137;
    v113[2] = v104;
    v113[3] = v114;
    v115 = v144;
    v113[4] = v140;
    v113[5] = v115;
    v141 = v104;
    v116 = v142;
    v113[6] = v107;
    v113[7] = v116;
    v117 = v107;
    v118 = v139;
    v113[8] = sub_188F0E0C0;
    v113[9] = v118;
    v119 = v138;
    v113[10] = sub_188F0E0D0;
    v113[11] = v119;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v38 = swift_allocObject();
    v38[4] = a13;
    v38[5] = a14;
    v38[6] = a15;
    *(v38 + 7) = a20;
    *(v38 + 32) = v108;
    *(v38 + 33) = v112 & 1;
    *(v38 + 5) = sub_188F0D510;
    *(v38 + 6) = v113;
    v137 = *(v116 + 280);
    v57 = swift_allocObject();
    v57[2] = v116;
    v57[3] = v38;
    v54 = swift_allocObject();
    v54[2] = sub_188F0E074;
    v54[3] = v57;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_894;
    v40 = _Block_copy(aBlock);
    swift_retain_n();

    v144 = v117;

    dispatch_sync(v137, v40);
    _Block_release(v40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v120);
  v121 = v129;
  os_unfair_lock_lock(v129 + 6);
  sub_188F0E024(v128);
  os_unfair_lock_unlock(v121 + 6);

  sub_188A3F5FC(v143, &qword_1EA936568);
}

uint64_t sub_188ED2FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, int a22, double a23, char a24, uint64_t a25, uint64_t a26)
{
  v144 = a8;
  v134 = a7;
  v127 = a6;
  v143 = a5;
  v140 = a4;
  v132 = a26;
  v130 = a25;
  v131 = a21;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936590);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v118 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367E8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v137 = &v118 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936598);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v133 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v129 = &v118 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v123 = &v118 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v124 = &v118 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v118 - v40;
  v120 = a3;
  LODWORD(a3) = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v42 = swift_allocObject();
  v42[2] = a17;
  v42[3] = a18;
  v136 = v42;
  v42[4] = a1;
  v43 = swift_allocObject();
  v43[2] = a19;
  v43[3] = a20;
  v43[4] = a1;
  v44 = a2;
  v45 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v45 + 24));
  v46 = *(v45 + 16);
  v125 = (v45 + 16);

  v126 = v45;
  os_unfair_lock_unlock((v45 + 24));
  v138 = v41;
  v135 = v43;
  v142 = v44;
  v141 = v30;
  v139 = a1;
  v128 = a3;
  if (!v46)
  {
    v75 = v137;
    (*(v31 + 56))(v137, 1, 1, v30);
    v145[0] = v140;
    v149 = v143;
    v76 = v127[3];
    v77 = v127[4];
    v127 = __swift_project_boxed_opaque_existential_0(v127, v76);
    v60 = v44;
    swift_beginAccess();
    v78 = *(v44 + 96);
    v79 = *(v77 + 16);
    v80 = sub_188CD24A4();
    v79(aBlock, v78, v75, v145, &v149, &type metadata for UIAnimatableColorArray, v80, v76, v77);
    v81 = sub_188A33550();
    swift_beginAccess();
    v67 = v143;
    sub_188CD0040(*&v75, aBlock, v128, v140, v41, v81);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v75, &qword_1EA9367E8);
    v70 = v41;
    v74 = v133;
    goto LABEL_11;
  }

  v119 = v31;
  v49 = v127;
  v50 = v137;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v51 = v49;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v47, v48);
      os_unfair_lock_lock((v46[2] + 16));
      signpost_c2_entryLock_start(v52, v53);
      v54 = *(*v46 + 104);
      swift_beginAccess();
      v55 = v124;
      sub_188A3F29C(v46 + v54, v124, &qword_1EA936598);
      sub_188A3F29C(v55, v50, &qword_1EA936598);
      (*(v119 + 56))(v50, 0, 1, v141);
      v56 = v140;
      v149 = v140;
      v57 = v143;
      v146[0] = v143;
      v58 = v49[3];
      v59 = v49[4];
      __swift_project_boxed_opaque_existential_0(v49, v58);
      v60 = v142;
      swift_beginAccess();
      v61 = *(v60 + 96);
      v62 = *(v59 + 16);
      v63 = sub_188CD24A4();
      v64 = v61;
      v65 = v137;
      v66 = v58;
      v67 = v57;
      v62(aBlock, v64, v137, &v149, v146, &type metadata for UIAnimatableColorArray, v63, v66, v59);
      v68 = v139;
      v69 = sub_188A33550();
      swift_beginAccess();
      v70 = v138;
      sub_188CD0040(*&v65, aBlock, v128, v56, v138, v69);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v65, &qword_1EA9367E8);
      v71 = *v46;
      v72 = v46 + *(*v46 + 112);
      v73 = *v72;
      if (*v72)
      {
        *v72 = 0;
        *(v72 + 1) = 0;
        v73(v68, 0);
        sub_188A55B8C(v73);
        v71 = *v46;
      }

      v74 = v133;
      *(v46 + *(v71 + 120)) = 1;
      sub_188A3F5FC(v124, &qword_1EA936598);
      os_unfair_lock_unlock((v46[2] + 16));
    }

    else
    {
      v82 = *(*v46 + 104);
      swift_beginAccess();
      v83 = v123;
      sub_188A3F29C(v46 + v82, v123, &qword_1EA936598);
      sub_188A3F29C(v83, v50, &qword_1EA936598);
      (*(v119 + 56))(v50, 0, 1, v141);
      v84 = v50;
      v85 = v140;
      v149 = v140;
      v146[0] = v143;
      v86 = v49[3];
      v87 = v49[4];
      __swift_project_boxed_opaque_existential_0(v51, v51[3]);
      v88 = v142;
      swift_beginAccess();
      v89 = *(v88 + 96);
      v90 = *(v87 + 16);
      v91 = sub_188CD24A4();
      v90(aBlock, v89, v84, &v149, v146, &type metadata for UIAnimatableColorArray, v91, v86, v87);
      v60 = v88;
      v92 = v139;
      v93 = sub_188A33550();
      swift_beginAccess();
      v70 = v138;
      sub_188CD0040(*&v84, aBlock, v128, v85, v138, v93);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v84, &qword_1EA9367E8);
      v94 = v46 + *(*v46 + 112);
      v95 = *v94;
      if (*v94)
      {
        *v94 = 0;
        *(v94 + 1) = 0;
        v95(v92, 0);
        sub_188A55B8C(v95);
      }

      sub_188A3F5FC(v123, &qword_1EA936598);
      *(v46 + *(*v46 + 120)) = 1;

      v74 = v133;
      v67 = v143;
    }

LABEL_11:
    v96 = v129;
    sub_188A3F29C(v70, v129, &qword_1EA936598);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367F0);
    swift_allocObject();
    v97 = v132;

    v98 = sub_188AA785C(v96, v130, v97, &qword_1EA936598);

    if (v131)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(v60 + 56) == 1)
    {
      v99 = v67;
      v100 = v98;
      if ((a24 & 1) == 0)
      {
        aBlock[0] = sub_188CD18C0(v99, v140);

        sub_188CD1B20(a23);

        sub_188EFED30(v101);
      }
    }

    else
    {

      v100 = v98;
      sub_188EFED30(v102);
    }

    v103 = swift_allocObject();
    *(v103 + 16) = 1;
    v104 = *(v60 + 120);
    sub_188A3F29C(v70, v74, &qword_1EA936598);
    v105 = v60;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v106 = v121;
      sub_188A3F704(v74, v121, &qword_1EA936590);
      v107 = *(v106 + *(v122 + 64));
      sub_188A3F5FC(v106, &qword_1EA936590);
      v108 = (v107 == 2) | v107;
    }

    else
    {
      sub_188A3F5FC(v74, &qword_1EA936598);
      v108 = 0;
    }

    v109 = swift_allocObject();
    v110 = v134;
    v109[2] = v100;
    v109[3] = v110;
    v109[4] = v144;
    v109[5] = v105;
    v109[6] = v103;
    v111 = v139;
    v109[7] = v139;
    v109[8] = sub_188F0D540;
    v109[9] = v136;
    v109[10] = sub_188F0E0D0;
    v109[11] = v135;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v112 = swift_allocObject();
    *(v112 + 16) = a9;
    *(v112 + 20) = a10;
    *(v112 + 24) = a11;
    *(v112 + 28) = a22;
    *(v112 + 32) = v104;
    *(v112 + 33) = v108 & 1;
    *(v112 + 40) = sub_188F0D58C;
    *(v112 + 48) = v109;
    v143 = *(v111 + 280);
    v113 = swift_allocObject();
    *(v113 + 16) = v111;
    *(v113 + 24) = v112;
    v46 = swift_allocObject();
    v46[2] = sub_188F0E074;
    v46[3] = v113;
    aBlock[4] = sub_188E3FE50;
    v148 = v46;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_934;
    v49 = _Block_copy(aBlock);
    v50 = v148;
    swift_retain_n();

    dispatch_sync(v143, v49);
    _Block_release(v49);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v115);
  *(&v118 - 2) = v100;
  v116 = v126;
  os_unfair_lock_lock(v126 + 6);
  sub_188AAFEC0(v125);
  os_unfair_lock_unlock(v116 + 6);

  sub_188A3F5FC(v138, &qword_1EA936598);
}

uint64_t sub_188ED3EC4(void *a1, uint64_t a2, uint64_t a3, float64x2_t *a4, NSObject *a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, int a22, double a23, char a24, uint64_t a25, uint64_t a26)
{
  v153 = a1;
  v154 = a8;
  v144 = a7;
  v137 = a6;
  v149 = a4;
  v150 = a5;
  v142 = a26;
  v140 = a25;
  v141 = a21;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365C0);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v129 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936800);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v146 = &v129 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365C8);
  v136 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v143 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v139 = &v129 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v132 = &v129 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v133 = &v129 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v129 - v39);
  v129 = a3;
  v138 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v41 = swift_allocObject();
  v41[2] = a17;
  v41[3] = a18;
  v145 = v41;
  v41[4] = a1;
  v42 = swift_allocObject();
  v42[2] = a19;
  v42[3] = a20;
  v42[4] = a1;
  v43 = a2;
  v44 = *(a2 + 32);
  v45 = v150;
  swift_retain_n();

  os_unfair_lock_lock((v44 + 24));
  v46 = *(v44 + 16);
  v134 = (v44 + 16);

  v135 = v44;
  os_unfair_lock_unlock((v44 + 24));
  v151 = v40;
  v152 = v42;
  v49 = v149;
  v147 = v43;
  v148 = v30;
  if (!v46)
  {
    v75 = v146;
    (*(v136 + 56))();
    v76 = v49[1];
    v164 = *v49;
    v165 = v76;
    v77 = v49[3];
    v166 = v49[2];
    v167 = v77;
    v78 = *&v45[2].isa;
    v160 = *&v45->isa;
    v161 = v78;
    v79 = *&v45[6].isa;
    v162 = *&v45[4].isa;
    v163 = v79;
    v80 = v137[3];
    v81 = v137[4];
    __swift_project_boxed_opaque_existential_0(v137, v80);
    swift_beginAccess();
    v82 = *(v43 + 345);
    v83 = *(v81 + 16);
    v84 = sub_188D85AE4();
    v85 = v82;
    v86 = v75;
    v83(&v156, v85, v75, &v164, &v160, &type metadata for UIAnimatableCornerRadii, v84, v80, v81);
    v87 = sub_188A33550();
    swift_beginAccess();
    v168 = v164;
    v169 = v165;
    v170 = v166;
    v171 = v167;
    v172 = v160;
    v173 = v161;
    v174 = v162;
    v175 = v163;
    v70 = v151;
    sub_188EF9F2C(v86, &v156, v138, &v168, &v172, v151, v87);
    swift_endAccess();
    sub_188AAFF20(&v156);
    sub_188A3F5FC(v86, &qword_1EA936800);
    goto LABEL_11;
  }

  v50 = v146;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v51 = v149;
    v52 = v150;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v47, v48);
      os_unfair_lock_lock((v46[2] + 16));
      signpost_c2_entryLock_start(v53, v54);
      v55 = *(*v46 + 104);
      swift_beginAccess();
      v56 = v46 + v55;
      v57 = v133;
      sub_188A3F29C(v56, v133, &qword_1EA9365C8);
      sub_188A3F29C(v57, v50, &qword_1EA9365C8);
      (*(v136 + 56))(v50, 0, 1, v148);
      v58 = v51[1];
      v164 = *v51;
      v165 = v58;
      v59 = v51[3];
      v166 = v51[2];
      v167 = v59;
      v60 = *&v52[2].isa;
      v160 = *&v52->isa;
      v161 = v60;
      v61 = *&v52[6].isa;
      v162 = *&v52[4].isa;
      v163 = v61;
      v62 = v137[3];
      v63 = v137[4];
      __swift_project_boxed_opaque_existential_0(v137, v62);
      v43 = v147;
      swift_beginAccess();
      v64 = *(v43 + 345);
      v65 = *(v63 + 16);
      v66 = sub_188D85AE4();
      v67 = v146;
      v65(&v156, v64, v146, &v164, &v160, &type metadata for UIAnimatableCornerRadii, v66, v62, v63);
      v68 = v153;
      v69 = sub_188A33550();
      swift_beginAccess();
      v168 = v164;
      v169 = v165;
      v170 = v166;
      v171 = v167;
      v172 = v160;
      v173 = v161;
      v174 = v162;
      v175 = v163;
      v70 = v151;
      sub_188EF9F2C(v67, &v156, v138, &v168, &v172, v151, v69);
      swift_endAccess();
      sub_188AAFF20(&v156);
      sub_188A3F5FC(v67, &qword_1EA936800);
      v71 = *v46;
      v72 = v46 + *(*v46 + 112);
      v73 = *v72;
      if (*v72)
      {
        *v72 = 0;
        *(v72 + 1) = 0;
        v73(v68, 0);
        sub_188A55B8C(v73);
        v71 = *v46;
      }

      v74 = v143;
      *(v46 + *(v71 + 120)) = 1;
      sub_188A3F5FC(v133, &qword_1EA9365C8);
      os_unfair_lock_unlock((v46[2] + 16));
    }

    else
    {
      v88 = *(*v46 + 104);
      swift_beginAccess();
      v89 = v132;
      sub_188A3F29C(v46 + v88, v132, &qword_1EA9365C8);
      sub_188A3F29C(v89, v50, &qword_1EA9365C8);
      (*(v136 + 56))(v50, 0, 1, v148);
      v90 = v51[1];
      v164 = *v51;
      v165 = v90;
      v91 = v51[3];
      v166 = v51[2];
      v167 = v91;
      v92 = *&v52[2].isa;
      v160 = *&v52->isa;
      v161 = v92;
      v93 = *&v52[6].isa;
      v162 = *&v52[4].isa;
      v163 = v93;
      v94 = v137[3];
      v95 = v137[4];
      __swift_project_boxed_opaque_existential_0(v137, v94);
      v43 = v147;
      swift_beginAccess();
      v96 = *(v43 + 345);
      v97 = *(v95 + 16);
      v98 = sub_188D85AE4();
      v99 = v146;
      v97(&v156, v96, v146, &v164, &v160, &type metadata for UIAnimatableCornerRadii, v98, v94, v95);
      v100 = v153;
      v101 = sub_188A33550();
      swift_beginAccess();
      v168 = v164;
      v169 = v165;
      v170 = v166;
      v171 = v167;
      v172 = v160;
      v173 = v161;
      v174 = v162;
      v175 = v163;
      v70 = v151;
      sub_188EF9F2C(v99, &v156, v138, &v168, &v172, v151, v101);
      swift_endAccess();
      sub_188AAFF20(&v156);
      sub_188A3F5FC(v99, &qword_1EA936800);
      v102 = v46 + *(*v46 + 112);
      v103 = *v102;
      if (*v102)
      {
        *v102 = 0;
        *(v102 + 1) = 0;
        v103(v100, 0);
        sub_188A55B8C(v103);
      }

      sub_188A3F5FC(v132, &qword_1EA9365C8);
      *(v46 + *(*v46 + 120)) = 1;

LABEL_11:
      v74 = v143;
    }

    v104 = v139;
    sub_188A3F29C(v70, v139, &qword_1EA9365C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936808);
    swift_allocObject();
    v105 = v142;

    v106 = sub_188AA785C(v104, v140, v105, &qword_1EA9365C8);

    if (v141)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(v43 + 184))
    {
      if (a24)
      {
        goto LABEL_19;
      }

      v107 = vmulq_n_f64(vsubq_f64(*&v150[2].isa, v149[1]), a23);
      v156 = vmulq_n_f64(vsubq_f64(*&v150->isa, *v149), a23);
      v157 = v107;
      v108 = vmulq_n_f64(vsubq_f64(*&v150[4].isa, v149[2]), a23);
      v109 = vmulq_n_f64(vsubq_f64(*&v150[6].isa, v149[3]), a23);
    }

    else
    {
      v110 = *(v43 + 136);
      v156 = *(v43 + 120);
      v157 = v110;
      v108 = *(v43 + 152);
      v109 = *(v43 + 168);
    }

    v158 = v108;
    v159 = v109;
    sub_188EFF040(&v156);
LABEL_19:
    LODWORD(v150) = a22;
    v111 = swift_allocObject();
    v155 = 1;
    *(v111 + 16) = 0u;
    *(v111 + 32) = 0u;
    *(v111 + 48) = 0u;
    *(v111 + 64) = 0u;
    *(v111 + 80) = 1;
    v112 = *(v43 + 432);
    sub_188A3F29C(v70, v74, &qword_1EA9365C8);
    v113 = v43;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v114 = v130;
      sub_188A3F704(v74, v130, &qword_1EA9365C0);
      v115 = *(v114 + *(v131 + 64));
      sub_188A3F5FC(v114, &qword_1EA9365C0);
      v116 = (v115 == 2) | v115;
    }

    else
    {
      v116 = 0;
    }

    v117 = swift_allocObject();
    v118 = v106;
    v119 = v144;
    v120 = v145;
    v117[2] = v106;
    v117[3] = v119;
    v117[4] = v154;
    v117[5] = v113;
    v121 = v152;
    v122 = v153;
    v117[6] = v111;
    v117[7] = v122;
    v117[8] = sub_188F0D7D0;
    v117[9] = v120;
    v117[10] = sub_188F0E0D0;
    v117[11] = v121;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v123 = swift_allocObject();
    *(v123 + 16) = a9;
    *(v123 + 20) = a10;
    *(v123 + 24) = a11;
    *(v123 + 28) = v150;
    *(v123 + 32) = v112;
    *(v123 + 33) = v116 & 1;
    *(v123 + 40) = sub_188F0D830;
    *(v123 + 48) = v117;
    v150 = v122[35];
    v124 = swift_allocObject();
    *(v124 + 16) = v122;
    *(v124 + 24) = v123;
    v125 = swift_allocObject();
    *(v125 + 16) = sub_188F0E074;
    *(v125 + 24) = v124;
    *&v166.f64[0] = sub_188E3FE50;
    *&v166.f64[1] = v125;
    *&v164.f64[0] = MEMORY[0x1E69E9820];
    *&v164.f64[1] = 1107296256;
    *&v165.f64[0] = sub_188A4A968;
    *&v165.f64[1] = &block_descriptor_974;
    v50 = _Block_copy(&v164);
    v46 = v120;
    swift_retain_n();
    v153 = v118;

    dispatch_sync(v150, v50);
    _Block_release(v50);
    LOBYTE(v120) = swift_isEscapingClosureAtFileLocation();

    if ((v120 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v126);
  *(&v129 - 2) = v153;
  v127 = v135;
  os_unfair_lock_lock(v135 + 6);
  sub_188F0E024(v134);
  os_unfair_lock_unlock(v127 + 6);

  sub_188A3F5FC(v151, &qword_1EA9365C8);
}

uint64_t sub_188ED4C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, int a22, double a23, char a24, uint64_t a25, uint64_t a26)
{
  v145 = a8;
  v135 = a7;
  v128 = a6;
  v144 = a5;
  v139 = a4;
  v133 = a26;
  v131 = a25;
  v132 = a21;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F0);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v119 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936810);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v138 = &v119 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F8);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v134 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v130 = &v119 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v124 = &v119 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v125 = &v119 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v119 - v40;
  v121 = a3;
  LODWORD(a3) = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v42 = swift_allocObject();
  v42[2] = a17;
  v42[3] = a18;
  v137 = v42;
  v42[4] = a1;
  v43 = swift_allocObject();
  v43[2] = a19;
  v43[3] = a20;
  v43[4] = a1;
  v44 = a2;
  v45 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v45 + 24));
  v46 = *(v45 + 16);
  v126 = (v45 + 16);

  v127 = v45;
  os_unfair_lock_unlock((v45 + 24));
  v140 = v41;
  v136 = v43;
  v143 = v44;
  v142 = v30;
  v141 = a1;
  v129 = a3;
  if (!v46)
  {
    v75 = v138;
    (*(v31 + 56))(v138, 1, 1, v30);
    v146[0] = v139;
    v150 = v144;
    v76 = v128[3];
    v77 = v128[4];
    v128 = __swift_project_boxed_opaque_existential_0(v128, v76);
    v60 = v44;
    swift_beginAccess();
    v78 = *(v44 + 96);
    v79 = *(v77 + 16);
    v80 = sub_188D75420();
    v79(aBlock, v78, v75, v146, &v150, &type metadata for UIAnimatableVector, v80, v76, v77);
    v81 = sub_188A33550();
    swift_beginAccess();
    v67 = v144;
    sub_188D86100(v75, aBlock, v129, v139, v144, v41, v81);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v75, &qword_1EA936810);
    v70 = v41;
    v74 = v134;
    goto LABEL_11;
  }

  v120 = v31;
  v49 = v128;
  v50 = v138;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v51 = v49;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v47, v48);
      os_unfair_lock_lock((v46[2] + 16));
      signpost_c2_entryLock_start(v52, v53);
      v54 = *(*v46 + 104);
      swift_beginAccess();
      v55 = v125;
      sub_188A3F29C(v46 + v54, v125, &qword_1EA9365F8);
      sub_188A3F29C(v55, v50, &qword_1EA9365F8);
      (*(v120 + 56))(v50, 0, 1, v142);
      v56 = v139;
      v150 = v139;
      v57 = v144;
      v147[0] = v144;
      v58 = v49[3];
      v59 = v49[4];
      __swift_project_boxed_opaque_existential_0(v49, v58);
      v60 = v143;
      swift_beginAccess();
      v61 = *(v60 + 96);
      v62 = *(v59 + 16);
      v63 = sub_188D75420();
      v64 = v61;
      v65 = v138;
      v66 = v58;
      v67 = v57;
      v62(aBlock, v64, v138, &v150, v147, &type metadata for UIAnimatableVector, v63, v66, v59);
      v68 = v141;
      v69 = sub_188A33550();
      swift_beginAccess();
      v70 = v140;
      sub_188D86100(v65, aBlock, v129, v56, v57, v140, v69);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v65, &qword_1EA936810);
      v71 = *v46;
      v72 = v46 + *(*v46 + 112);
      v73 = *v72;
      if (*v72)
      {
        *v72 = 0;
        *(v72 + 1) = 0;
        v73(v68, 0);
        sub_188A55B8C(v73);
        v71 = *v46;
      }

      v74 = v134;
      *(v46 + *(v71 + 120)) = 1;
      sub_188A3F5FC(v125, &qword_1EA9365F8);
      os_unfair_lock_unlock((v46[2] + 16));
    }

    else
    {
      v82 = *(*v46 + 104);
      swift_beginAccess();
      v83 = v124;
      sub_188A3F29C(v46 + v82, v124, &qword_1EA9365F8);
      sub_188A3F29C(v83, v50, &qword_1EA9365F8);
      (*(v120 + 56))(v50, 0, 1, v142);
      v84 = v50;
      v85 = v139;
      v150 = v139;
      v147[0] = v144;
      v86 = v49[3];
      v87 = v49[4];
      __swift_project_boxed_opaque_existential_0(v51, v51[3]);
      v88 = v143;
      swift_beginAccess();
      v89 = *(v88 + 96);
      v90 = *(v87 + 16);
      v91 = sub_188D75420();
      v90(aBlock, v89, v84, &v150, v147, &type metadata for UIAnimatableVector, v91, v86, v87);
      v60 = v88;
      v92 = v141;
      v93 = sub_188A33550();
      swift_beginAccess();
      v70 = v140;
      sub_188D86100(v84, aBlock, v129, v85, v144, v140, v93);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v84, &qword_1EA936810);
      v94 = v46 + *(*v46 + 112);
      v95 = *v94;
      if (*v94)
      {
        *v94 = 0;
        *(v94 + 1) = 0;
        v95(v92, 0);
        sub_188A55B8C(v95);
      }

      sub_188A3F5FC(v124, &qword_1EA9365F8);
      *(v46 + *(*v46 + 120)) = 1;

      v74 = v134;
      v67 = v144;
    }

LABEL_11:
    v96 = v130;
    sub_188A3F29C(v70, v130, &qword_1EA9365F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936818);
    swift_allocObject();
    v97 = v133;

    v98 = sub_188AA785C(v96, v131, v97, &qword_1EA9365F8);

    if (v132)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(v60 + 56))
    {

      v100 = v98;
      sub_188EFF23C(v99);
    }

    else
    {
      v101 = v67;
      v100 = v98;
      if ((a24 & 1) == 0)
      {
        sub_188D7EBC0(v101, v139);
        aBlock[0] = v102;

        sub_188D85638(a23);

        sub_188EFF23C(v103);
      }
    }

    v104 = swift_allocObject();
    *(v104 + 16) = 0;
    v105 = *(v60 + 120);
    sub_188A3F29C(v70, v74, &qword_1EA9365F8);
    v106 = v60;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v107 = v122;
      sub_188A3F704(v74, v122, &qword_1EA9365F0);
      v108 = *(v107 + *(v123 + 64));
      sub_188A3F5FC(v107, &qword_1EA9365F0);
      v109 = (v108 == 2) | v108;
    }

    else
    {
      sub_188A3F5FC(v74, &qword_1EA9365F8);
      v109 = 0;
    }

    v110 = swift_allocObject();
    v111 = v135;
    v110[2] = v100;
    v110[3] = v111;
    v110[4] = v145;
    v110[5] = v106;
    v110[6] = v104;
    v112 = v141;
    v110[7] = v141;
    v110[8] = sub_188F0D540;
    v110[9] = v137;
    v110[10] = sub_188F0E0D0;
    v110[11] = v136;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v113 = swift_allocObject();
    *(v113 + 16) = a9;
    *(v113 + 20) = a10;
    *(v113 + 24) = a11;
    *(v113 + 28) = a22;
    *(v113 + 32) = v105;
    *(v113 + 33) = v109 & 1;
    *(v113 + 40) = sub_188F0D8C4;
    *(v113 + 48) = v110;
    v144 = *(v112 + 280);
    v114 = swift_allocObject();
    *(v114 + 16) = v112;
    *(v114 + 24) = v113;
    v46 = swift_allocObject();
    v46[2] = sub_188F0E074;
    v46[3] = v114;
    aBlock[4] = sub_188E3FE50;
    v149 = v46;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1014;
    v49 = _Block_copy(aBlock);
    v50 = v149;
    swift_retain_n();

    dispatch_sync(v144, v49);
    _Block_release(v49);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v116);
  *(&v119 - 2) = v100;
  v117 = v127;
  os_unfair_lock_lock(v127 + 6);
  sub_188F0E024(v126);
  os_unfair_lock_unlock(v117 + 6);

  sub_188A3F5FC(v140, &qword_1EA9365F8);
}

uint64_t sub_188ED5B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __int128 *a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, os_unfair_lock_s *a19, uint64_t a20, unsigned __int8 a21, int a22, double a23, char a24, uint64_t a25, uint64_t a26)
{
  v148 = a8;
  v149 = a4;
  v144 = a7;
  v136 = a6;
  v142 = a5;
  v141 = a26;
  v139 = a25;
  v140 = a21;
  v135 = a19;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936620);
  MEMORY[0x1EEE9AC00](v131);
  v130 = v129 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936828);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = (v129 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936628);
  isa = v31[-1].isa;
  MEMORY[0x1EEE9AC00](v31);
  v143 = v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v138 = v129 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v132 = v129 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v133 = (v129 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v150 = (v129 - v41);
  v129[1] = a3;
  v137 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v42 = swift_allocObject();
  v42[2] = a17;
  v42[3] = a18;
  v145 = v42;
  v42[4] = a1;
  v43 = swift_allocObject();
  v43[2] = v135;
  v43[3] = a20;
  v43[4] = a1;
  v151 = a2;
  v44 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v44 + 24));
  v45 = *(v44 + 16);
  v134 = (v44 + 16);

  v135 = v44;
  os_unfair_lock_unlock((v44 + 24));
  v146 = v31;
  v147 = v43;
  if (!v45)
  {
    (*(isa + 7))(v30, 1, 1, v31);
    v63 = v149;
    v70 = *(v149 + 1);
    v158 = *v149;
    *v159 = v70;
    *&v159[13] = *(v149 + 29);
    v55 = v142;
    v71 = *(v142 + 1);
    v156 = *v142;
    *v157 = v71;
    *&v157[13] = *(v142 + 29);
    v72 = v136[3];
    v73 = v136[4];
    v136 = __swift_project_boxed_opaque_existential_0(v136, v72);
    v74 = v151;
    swift_beginAccess();
    v75 = *(v74 + 221);
    v133 = *(v73 + 16);
    v76 = sub_188E95028();
    (v133)(&v152, v75, v30, &v158, &v156, &type metadata for UIAnimatableMeshTransform, v76, v72, v73);
    v77 = v150;
    v78 = sub_188A33550();
    swift_beginAccess();
    v66 = v77;
    sub_188EFB164(v30, &v152, v137, v63, v55, v77, v78);
    swift_endAccess();
    sub_188AAFF20(&v152);
    sub_188A3F5FC(v30, &qword_1EA936828);
    v64 = a1;
    goto LABEL_12;
  }

  v129[0] = a1;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v48 = v30;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v46, v47);
      os_unfair_lock_lock((v45[2] + 16));
      signpost_c2_entryLock_start(v49, v50);
      v51 = *(*v45 + 104);
      swift_beginAccess();
      v52 = v133;
      sub_188A3F29C(v45 + v51, v133, &qword_1EA936628);
      sub_188A3F29C(v52, v30, &qword_1EA936628);
      (*(isa + 7))(v30, 0, 1, v146);
      v53 = v149;
      v54 = *(v149 + 1);
      v158 = *v149;
      *v159 = v54;
      *&v159[13] = *(v149 + 29);
      v55 = v142;
      v56 = *(v142 + 1);
      v156 = *v142;
      *v157 = v56;
      *&v157[13] = *(v142 + 29);
      v57 = v136[3];
      v58 = v136[4];
      v136 = __swift_project_boxed_opaque_existential_0(v136, v57);
      v59 = v151;
      swift_beginAccess();
      v60 = *(v59 + 221);
      v61 = *(v58 + 16);
      v62 = sub_188E95028();
      v61(&v152, v60, v48, &v158, &v156, &type metadata for UIAnimatableMeshTransform, v62, v57, v58);
      v63 = v53;
      v64 = v129[0];
      v65 = sub_188A33550();
      swift_beginAccess();
      v66 = v150;
      sub_188EFB164(v48, &v152, v137, v53, v55, v150, v65);
      swift_endAccess();
      sub_188AAFF20(&v152);
      sub_188A3F5FC(v48, &qword_1EA936828);
      v67 = *v45;
      v68 = v45 + *(*v45 + 112);
      v69 = *v68;
      if (*v68)
      {
        *v68 = 0;
        *(v68 + 1) = 0;
        v69(v64, 0);
        sub_188A55B8C(v69);
        v67 = *v45;
      }

      *(v45 + *(v67 + 120)) = 1;
      sub_188A3F5FC(v133, &qword_1EA936628);
      os_unfair_lock_unlock((v45[2] + 16));
    }

    else
    {
      v79 = *(*v45 + 104);
      swift_beginAccess();
      v80 = v132;
      sub_188A3F29C(v45 + v79, v132, &qword_1EA936628);
      sub_188A3F29C(v80, v48, &qword_1EA936628);
      (*(isa + 7))(v48, 0, 1, v146);
      v81 = v149;
      v82 = *(v149 + 1);
      v158 = *v149;
      *v159 = v82;
      *&v159[13] = *(v149 + 29);
      v83 = v151;
      v84 = v142;
      v85 = *(v142 + 1);
      v156 = *v142;
      *v157 = v85;
      *&v157[13] = *(v142 + 29);
      v86 = v136[3];
      v87 = v136[4];
      v136 = __swift_project_boxed_opaque_existential_0(v136, v86);
      swift_beginAccess();
      v88 = *(v83 + 221);
      v133 = *(v87 + 16);
      v89 = sub_188E95028();
      v90 = v87;
      v55 = v84;
      v63 = v81;
      (v133)(&v152, v88, v48, &v158, &v156, &type metadata for UIAnimatableMeshTransform, v89, v86, v90);
      v64 = v129[0];
      v91 = sub_188A33550();
      swift_beginAccess();
      v66 = v150;
      sub_188EFB164(v48, &v152, v137, v81, v55, v150, v91);
      swift_endAccess();
      sub_188AAFF20(&v152);
      sub_188A3F5FC(v48, &qword_1EA936828);
      v92 = v45 + *(*v45 + 112);
      v93 = *v92;
      if (*v92)
      {
        *v92 = 0;
        *(v92 + 1) = 0;
        v93(v64, 0);
        sub_188A55B8C(v93);
      }

      sub_188A3F5FC(v132, &qword_1EA936628);
      *(v45 + *(*v45 + 120)) = 1;
    }

LABEL_12:
    v94 = v138;
    sub_188A3F29C(v66, v138, &qword_1EA936628);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936830);
    swift_allocObject();
    v95 = v141;

    v96 = sub_188AA785C(v94, v139, v95, &qword_1EA936628);

    if (v140)
    {
      swift_unknownObjectWeakAssign();
    }

    v97 = v151;
    swift_beginAccess();
    v98 = *(v97 + 88);
    v149 = v96;
    if (v98 == 1)
    {
      if ((a24 & 1) == 0)
      {
        sub_1890905D8(v55, v63, &v156);
        v99 = *(&v156 + 1);
        v100 = *&v157[8];
        v101 = *v157;
        v102 = *&v157[16] | (v157[20] << 32);
        if (v156)
        {
          v152 = v156;
          v153 = *v157;
          LODWORD(v154) = *&v157[16];
          BYTE4(v154) = BYTE4(v102) & 1;

          sub_18908FB80(a23);
          v99 = *(&v152 + 1);
          v103 = v152;
          v100 = *(&v153 + 1);
          v101 = v153;
          v104 = 0x100000000;
          if (!BYTE4(v154))
          {
            v104 = 0;
          }

          v102 = v104 | v154;
        }

        else
        {
          v103 = 0;
        }

        *&v158 = v103;
        *(&v158 + 1) = v99;
        *v159 = v101;
        *&v159[8] = v100;
        *&v159[16] = v102;
        v159[20] = BYTE4(v102);
        sub_188F0B550(v103);
        sub_188EFF54C(&v158);
        sub_188F0B59C(v103);
        sub_188F0D344(&v156);
        v66 = v150;
      }
    }

    else
    {
      v105 = *(v151 + 124);
      v106 = *(v151 + 120);
      v107 = *(v151 + 104);
      v108 = *(v151 + 112);
      v109 = *(v151 + 96);
      *&v158 = v98;
      *(&v158 + 1) = v109;
      *v159 = v107;
      *&v159[8] = v108;
      v159[20] = v105;
      *&v159[16] = v106;
      sub_188F0B550(v98);
      sub_188EFF54C(&v158);
    }

    v110 = v64;
    LODWORD(v142) = a22;
    v30 = swift_allocObject();
    v30[2] = 1;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    *(v30 + 45) = 0;
    v111 = *(v151 + 272);
    v112 = v66;
    v113 = v143;
    sub_188A3F29C(v112, v143, &qword_1EA936628);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v114 = v151;
      v115 = v130;
      sub_188A3F704(v113, v130, &qword_1EA936620);
      v116 = *(v115 + *(v131 + 64));
      sub_188A3F5FC(v115, &qword_1EA936620);
      v117 = (v116 == 2) | v116;
    }

    else
    {
      v114 = v151;
      sub_188A3F5FC(v113, &qword_1EA936628);
      v117 = 0;
    }

    v118 = swift_allocObject();
    v119 = v144;
    v120 = v145;
    v118[2] = v149;
    v118[3] = v119;
    v121 = v147;
    v118[4] = v148;
    v118[5] = v114;
    v118[6] = v30;
    v118[7] = v110;
    v118[8] = sub_188F0D93C;
    v118[9] = v120;
    v118[10] = sub_188F0E0D0;
    v118[11] = v121;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v122 = swift_allocObject();
    *(v122 + 16) = a9;
    *(v122 + 20) = a10;
    *(v122 + 24) = a11;
    *(v122 + 28) = v142;
    *(v122 + 32) = v111;
    *(v122 + 33) = v117 & 1;
    *(v122 + 40) = sub_188F0D948;
    *(v122 + 48) = v118;
    v146 = *(v110 + 280);
    v123 = swift_allocObject();
    *(v123 + 16) = v110;
    *(v123 + 24) = v122;
    v124 = swift_allocObject();
    *(v124 + 16) = sub_188F0E074;
    *(v124 + 24) = v123;
    v154 = sub_188E3FE50;
    v155 = v124;
    *&v152 = MEMORY[0x1E69E9820];
    *(&v152 + 1) = 1107296256;
    *&v153 = sub_188A4A968;
    *(&v153 + 1) = &block_descriptor_1054;
    v125 = _Block_copy(&v152);
    isa = v155;
    v45 = v120;
    swift_retain_n();

    dispatch_sync(v146, v125);
    _Block_release(v125);
    LOBYTE(v120) = swift_isEscapingClosureAtFileLocation();

    if ((v120 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v126);
  v129[-2] = v149;
  v127 = v135;
  os_unfair_lock_lock(v135 + 6);
  sub_188F0E024(v134);
  os_unfair_lock_unlock(v127 + 6);

  sub_188A3F5FC(v150, &qword_1EA936628);
}

uint64_t sub_188ED69D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8, double a9, double a10, float a11, float a12, float a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, double a21, char a22, uint64_t a23, char *a24)
{
  v129 = a7;
  v130 = a6;
  v127 = a5;
  v121 = a4;
  v125 = a24;
  v123 = a23;
  v124 = a19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936658);
  MEMORY[0x1EEE9AC00](v116);
  v115 = v114 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936858);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = v114 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936660);
  isa = v33[-1].isa;
  MEMORY[0x1EEE9AC00](v33);
  v126 = v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v122 = v114 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v117 = v114 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v118 = v114 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v114 - v43;
  v114[1] = a3;
  LODWORD(a3) = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v46 = swift_allocObject();
  *(v46 + 2) = v129;
  *(v46 + 3) = a8;
  v129 = v46;
  *(v46 + 4) = a1;
  v47 = swift_allocObject();
  v47[2] = a17;
  v47[3] = a18;
  v128 = v47;
  v47[4] = a1;
  v48 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v48 + 24));
  v49 = *(v48 + 16);
  v119 = (v48 + 16);

  v120 = v48;
  os_unfair_lock_unlock((v48 + 24));
  v131 = v44;
  v133 = a2;
  v132 = v33;
  if (!v49)
  {
    (*(isa + 7))(v32, 1, 1, v33);
    v134[0] = a9;
    v137 = a10;
    v73 = v121[3];
    v74 = v121[4];
    __swift_project_boxed_opaque_existential_0(v121, v73);
    LODWORD(v121) = a3;
    swift_beginAccess();
    v75 = *(a2 + 121);
    v76 = *(v74 + 16);
    v77 = sub_188A6D678();
    v76(aBlock, v75, v32, v134, &v137, &type metadata for UIAnimatableFloat, v77, v73, v74);
    v78 = sub_188A33550();
    swift_beginAccess();
    sub_188EFD030(v32, aBlock, v121, v44, a9, a10, v78);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v32, &qword_1EA936858);
    v72 = a1;
    v71 = v126;
    v67 = v44;
    goto LABEL_11;
  }

  v52 = v121;
  v114[0] = a1;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v53 = a3;
    v54 = v52;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v50, v51);
      os_unfair_lock_lock((v49[2] + 16));
      signpost_c2_entryLock_start(v55, v56);
      v57 = *(*v49 + 104);
      swift_beginAccess();
      v58 = v118;
      sub_188A3F29C(v49 + v57, v118, &qword_1EA936660);
      sub_188A3F29C(v58, v32, &qword_1EA936660);
      (*(isa + 7))(v32, 0, 1, v132);
      v137 = a9;
      v135[0] = a10;
      v59 = v54[3];
      v60 = v54[4];
      __swift_project_boxed_opaque_existential_0(v54, v59);
      v61 = v133;
      swift_beginAccess();
      v62 = *(v61 + 121);
      v63 = *(v60 + 16);
      v64 = sub_188A6D678();
      v63(aBlock, v62, v32, &v137, v135, &type metadata for UIAnimatableFloat, v64, v59, v60);
      v65 = v114[0];
      v66 = sub_188A33550();
      swift_beginAccess();
      v67 = v131;
      sub_188EFD030(v32, aBlock, v53, v131, a9, a10, v66);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v32, &qword_1EA936858);
      v68 = *v49;
      v69 = v49 + *(*v49 + 112);
      v70 = *v69;
      if (*v69)
      {
        *v69 = 0;
        *(v69 + 1) = 0;
        v70(v65, 0);
        sub_188A55B8C(v70);
        v68 = *v49;
      }

      v71 = v126;
      v72 = v65;
      *(v49 + *(v68 + 120)) = 1;
      sub_188A3F5FC(v118, &qword_1EA936660);
      os_unfair_lock_unlock((v49[2] + 16));
    }

    else
    {
      v79 = *(*v49 + 104);
      swift_beginAccess();
      v80 = v117;
      sub_188A3F29C(v49 + v79, v117, &qword_1EA936660);
      sub_188A3F29C(v80, v32, &qword_1EA936660);
      (*(isa + 7))(v32, 0, 1, v132);
      v137 = a9;
      v135[0] = a10;
      v81 = v52[3];
      v82 = v54[4];
      __swift_project_boxed_opaque_existential_0(v54, v54[3]);
      v83 = v133;
      swift_beginAccess();
      v84 = v32;
      v85 = *(v83 + 121);
      v86 = *(v82 + 16);
      v87 = sub_188A6D678();
      v86(aBlock, v85, v84, &v137, v135, &type metadata for UIAnimatableFloat, v87, v81, v82);
      v88 = v114[0];
      v89 = sub_188A33550();
      swift_beginAccess();
      v67 = v131;
      sub_188EFD030(v84, aBlock, v53, v131, a9, a10, v89);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v84, &qword_1EA936858);
      v90 = v49 + *(*v49 + 112);
      v91 = *v90;
      if (*v90)
      {
        *v90 = 0;
        *(v90 + 1) = 0;
        v91(v88, 0);
        sub_188A55B8C(v91);
      }

      v72 = v88;
      sub_188A3F5FC(v117, &qword_1EA936660);
      *(v49 + *(*v49 + 120)) = 1;

      v71 = v126;
    }

LABEL_11:
    v92 = v122;
    sub_188A3F29C(v67, v122, &qword_1EA936660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936860);
    swift_allocObject();
    v93 = v125;

    v94 = sub_188AA785C(v92, v123, v93, &qword_1EA936660);

    if (v124)
    {
      swift_unknownObjectWeakAssign();
    }

    v95 = v133;
    swift_beginAccess();
    v96 = v72;
    if (*(v95 + 72))
    {
      if (a22)
      {
        goto LABEL_18;
      }

      v97 = (a10 - a9) * a21;
    }

    else
    {
      v97 = *(v95 + 64);
    }

    sub_188D4DBD0(&qword_1EA936660, v97);
LABEL_18:
    v98 = v94;
    LODWORD(v126) = a20;
    v99 = swift_allocObject();
    *(v99 + 16) = 0;
    v100 = v99;
    *(v99 + 24) = 1;
    v124 = *(v95 + 152);
    sub_188A3F29C(v67, v71, &qword_1EA936660);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v101 = v115;
      sub_188A3F704(v71, v115, &qword_1EA936658);
      v102 = *(v101 + *(v116 + 64));
      sub_188A3F5FC(v101, &qword_1EA936658);
      v103 = (v102 == 2) | v102;
    }

    else
    {
      v103 = 0;
    }

    v104 = swift_allocObject();
    v105 = v127;
    v104[2] = v94;
    v104[3] = v105;
    v106 = v133;
    v104[4] = v130;
    v104[5] = v106;
    v125 = v100;
    v104[6] = v100;
    v104[7] = v96;
    v107 = v129;
    v104[8] = sub_188F0E0C4;
    v104[9] = v107;
    v108 = v128;
    v104[10] = sub_188F0E0D0;
    v104[11] = v108;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    a3 = swift_allocObject();
    *(a3 + 16) = a11;
    *(a3 + 20) = a12;
    *(a3 + 24) = a13;
    *(a3 + 28) = v126;
    *(a3 + 32) = v124;
    *(a3 + 33) = v103 & 1;
    *(a3 + 40) = sub_188F0D9AC;
    *(a3 + 48) = v104;
    v132 = *(v96 + 280);
    v109 = swift_allocObject();
    *(v109 + 16) = v96;
    *(v109 + 24) = a3;
    v49 = swift_allocObject();
    v49[2] = sub_188F0E074;
    v49[3] = v109;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1094;
    v52 = _Block_copy(aBlock);
    swift_retain_n();
    v110 = v98;

    v32 = v125;
    isa = v107;

    dispatch_sync(v132, v52);
    _Block_release(v52);
    LOBYTE(v107) = swift_isEscapingClosureAtFileLocation();

    if ((v107 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v111);
  v114[-2] = v110;
  v112 = v120;
  os_unfair_lock_lock(v120 + 6);
  sub_188F0E024(v119);
  os_unfair_lock_unlock(v112 + 6);

  sub_188A3F5FC(v131, &qword_1EA936660);
}

uint64_t sub_188ED77F4(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float a13, float a14, float a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, double a21, char a22, uint64_t a23, uint64_t a24)
{
  v140 = a6;
  v137 = a5;
  v130 = a4;
  v135 = a24;
  v133 = a23;
  v134 = a19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936688);
  MEMORY[0x1EEE9AC00](v125);
  v124 = v123 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936868);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = (v123 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936690);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v136 = v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v132 = v123 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v126 = v123 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v127 = v123 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v143 = v123 - v49;
  v123[1] = a3;
  v131 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v50 = swift_allocObject();
  v50[2] = a7;
  v50[3] = a8;
  v51 = a1;
  v139 = v50;
  v50[4] = a1;
  v52 = swift_allocObject();
  v52[2] = a17;
  v52[3] = a18;
  v138 = v52;
  v52[4] = a1;
  v53 = *(isEscapingClosureAtFileLocation + 32);
  swift_retain_n();

  os_unfair_lock_lock((v53 + 24));
  v54 = *(v53 + 16);
  v128 = (v53 + 16);

  v129 = v53;
  os_unfair_lock_unlock((v53 + 24));
  v144 = isEscapingClosureAtFileLocation;
  v142 = v51;
  v141 = v39;
  if (!v54)
  {
    v40[7](v38, 1, 1, v39);
    v145[0] = a9;
    v145[1] = a10;
    v149 = a11;
    v150 = a12;
    v78 = v130[3];
    v79 = v130[4];
    __swift_project_boxed_opaque_existential_0(v130, v78);
    swift_beginAccess();
    v80 = *(isEscapingClosureAtFileLocation + 153);
    v81 = *(v79 + 16);
    v82 = sub_188D246D4();
    v81(aBlock, v80, v38, v145, &v149, &type metadata for UIAnimatableNormalizedPoint, v82, v78, v79);
    v83 = sub_188A33550();
    swift_beginAccess();
    v84.n128_f64[0] = a9;
    v85.n128_f64[0] = a10;
    v86.n128_f64[0] = a11;
    v87.n128_f64[0] = a12;
    v74 = v143;
    sub_188AAFF74(v38, aBlock, v131, &qword_1EA936690, &unk_18A650E10, &qword_1EA936868, &qword_1EA936688, v143, v84, v85, v86, v87, v83, &unk_18A650E08, sub_188EF86C0, sub_188D247CC, &type metadata for UIAnimatableNormalizedPoint, sub_188EF5D08);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v38, &qword_1EA936868);
    goto LABEL_12;
  }

  v57 = v130;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v58 = v38;
    v59 = v57;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v55, v56);
      os_unfair_lock_lock((v54[2] + 16));
      signpost_c2_entryLock_start(v60, v61);
      v62 = *(*v54 + 104);
      swift_beginAccess();
      v63 = v127;
      sub_188A3F29C(v54 + v62, v127, &qword_1EA936690);
      sub_188A3F29C(v63, v58, &qword_1EA936690);
      v40[7](v58, 0, 1, v141);
      v149 = a9;
      v150 = a10;
      v146 = a11;
      v147 = a12;
      v64 = v58;
      v65 = v59[4];
      __swift_project_boxed_opaque_existential_0(v59, v59[3]);
      swift_beginAccess();
      v66 = *(isEscapingClosureAtFileLocation + 153);
      v67 = *(v65 + 16);
      sub_188D246D4();
      v67(aBlock, v66, v64, &v149, &v146);
      isEscapingClosureAtFileLocation = v144;
      v68 = v142;
      v69 = sub_188A33550();
      swift_beginAccess();
      v70.n128_f64[0] = a9;
      v71.n128_f64[0] = a10;
      v72.n128_f64[0] = a11;
      v73.n128_f64[0] = a12;
      v74 = v143;
      sub_188AAFF74(v64, aBlock, v131, &qword_1EA936690, &unk_18A650E10, &qword_1EA936868, &qword_1EA936688, v143, v70, v71, v72, v73, v69, &unk_18A650E08, sub_188EF86C0, sub_188D247CC, &type metadata for UIAnimatableNormalizedPoint, sub_188EF5D08);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v64, &qword_1EA936868);
      v75 = *v54;
      v76 = v54 + *(*v54 + 112);
      v77 = *v76;
      if (*v76)
      {
        *v76 = 0;
        *(v76 + 1) = 0;
        v77(v68, 0);
        sub_188A55B8C(v77);
        v75 = *v54;
      }

      *(v54 + *(v75 + 120)) = 1;
      sub_188A3F5FC(v127, &qword_1EA936690);
      os_unfair_lock_unlock((v54[2] + 16));
    }

    else
    {
      v88 = *(*v54 + 104);
      swift_beginAccess();
      v89 = v54 + v88;
      v90 = v126;
      sub_188A3F29C(v89, v126, &qword_1EA936690);
      sub_188A3F29C(v90, v58, &qword_1EA936690);
      v40[7](v58, 0, 1, v141);
      v149 = a9;
      v150 = a10;
      v146 = a11;
      v147 = a12;
      v91 = v57[4];
      __swift_project_boxed_opaque_existential_0(v57, v57[3]);
      swift_beginAccess();
      v92 = *(v144 + 153);
      v93 = *(v91 + 16);
      sub_188D246D4();
      isEscapingClosureAtFileLocation = v144;
      v93(aBlock, v92, v58, &v149, &v146);
      v94 = v142;
      v95 = sub_188A33550();
      swift_beginAccess();
      v96.n128_f64[0] = a9;
      v97.n128_f64[0] = a10;
      v98.n128_f64[0] = a11;
      v99.n128_f64[0] = a12;
      v74 = v143;
      sub_188AAFF74(v58, aBlock, v131, &qword_1EA936690, &unk_18A650E10, &qword_1EA936868, &qword_1EA936688, v143, v96, v97, v98, v99, v95, &unk_18A650E08, sub_188EF86C0, sub_188D247CC, &type metadata for UIAnimatableNormalizedPoint, sub_188EF5D08);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v58, &qword_1EA936868);
      v100 = v54 + *(*v54 + 112);
      v101 = *v100;
      if (*v100)
      {
        *v100 = 0;
        *(v100 + 1) = 0;
        v101(v94, 0);
        sub_188A55B8C(v101);
      }

      sub_188A3F5FC(v126, &qword_1EA936690);
      *(v54 + *(*v54 + 120)) = 1;
    }

LABEL_12:
    v102 = v132;
    sub_188A3F29C(v74, v132, &qword_1EA936690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936870);
    swift_allocObject();
    v103 = v135;

    v104 = sub_188AA785C(v102, v133, v103, &qword_1EA936690);

    if (v134)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(isEscapingClosureAtFileLocation + 88))
    {
      if (a22)
      {
        goto LABEL_19;
      }

      v105 = (a11 - a9) * a21;
      v106 = (a12 - a10) * a21;
    }

    else
    {
      v105 = *(isEscapingClosureAtFileLocation + 72);
      v106 = *(isEscapingClosureAtFileLocation + 80);
    }

    sub_188EFF9E0(&qword_1EA936690, v105, v106);
LABEL_19:
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    *(v107 + 24) = 0;
    *(v107 + 32) = 1;
    v108 = *(isEscapingClosureAtFileLocation + 192);
    v109 = v136;
    sub_188A3F29C(v74, v136, &qword_1EA936690);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v110 = v124;
      sub_188A3F704(v109, v124, &qword_1EA936688);
      v111 = *(v110 + *(v125 + 64));
      sub_188A3F5FC(v110, &qword_1EA936688);
      v112 = (v111 == 2) | v111;
    }

    else
    {
      v112 = 0;
    }

    v113 = swift_allocObject();
    v114 = v137;
    v113[2] = v104;
    v113[3] = v114;
    v115 = v144;
    v113[4] = v140;
    v113[5] = v115;
    v141 = v104;
    v116 = v142;
    v113[6] = v107;
    v113[7] = v116;
    v117 = v107;
    v118 = v139;
    v113[8] = sub_188F0D9DC;
    v113[9] = v118;
    v119 = v138;
    v113[10] = sub_188F0E0D0;
    v113[11] = v119;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v38 = swift_allocObject();
    v38[4] = a13;
    v38[5] = a14;
    v38[6] = a15;
    *(v38 + 7) = a20;
    *(v38 + 32) = v108;
    *(v38 + 33) = v112 & 1;
    *(v38 + 5) = sub_188F0D9E0;
    *(v38 + 6) = v113;
    v137 = *(v116 + 280);
    v57 = swift_allocObject();
    v57[2] = v116;
    v57[3] = v38;
    v54 = swift_allocObject();
    v54[2] = sub_188F0E074;
    v54[3] = v57;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1132;
    v40 = _Block_copy(aBlock);
    swift_retain_n();

    v144 = v117;

    dispatch_sync(v137, v40);
    _Block_release(v40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v120);
  v121 = v129;
  os_unfair_lock_lock(v129 + 6);
  sub_188F0E024(v128);
  os_unfair_lock_unlock(v121 + 6);

  sub_188A3F5FC(v143, &qword_1EA936690);
}

uint64_t sub_188ED8790(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, int a21, int a22, int a23, double a24, char a25, uint64_t a26, uint64_t a27)
{
  v194 = a6;
  v188 = a5;
  v181 = a4;
  v185 = a27;
  v183 = a26;
  v184 = a19;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366B8);
  MEMORY[0x1EEE9AC00](v175);
  v174 = v173 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936878);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = v173 - v41;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366C0);
  isa = v193[-1].isa;
  MEMORY[0x1EEE9AC00](v193);
  v187 = v173 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v182 = v173 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v176 = v173 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v177 = v173 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = (v173 - v52);
  v173[1] = a3;
  LODWORD(a3) = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v55 = swift_allocObject();
  v55[2] = a7;
  v55[3] = a8;
  v190 = v55;
  v55[4] = a1;
  v56 = swift_allocObject();
  v56[2] = a17;
  v56[3] = a18;
  v189 = v56;
  v56[4] = a1;
  v57 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v57 + 24));
  v58 = *(v57 + 16);
  v179 = (v57 + 16);

  v180 = v57;
  os_unfair_lock_unlock((v57 + 24));
  v192 = a1;
  v191 = v53;
  v186 = a9;
  if (!v58)
  {
    (*(isa + 7))(v42, 1, 1, v193);
    v201 = a9;
    v202 = a10;
    v203 = a11;
    v204 = a12;
    v197 = a13;
    v198 = a14;
    v199 = a15;
    v200 = a16;
    v96 = a2;
    LODWORD(v178) = a3;
    v97 = v181[3];
    v98 = v181[4];
    __swift_project_boxed_opaque_existential_0(v181, v97);
    swift_beginAccess();
    v99 = *(a2 + 217);
    v100 = *(v98 + 16);
    v101 = sub_188C520C4();
    v100(aBlock, v99, v42, &v201, &v197, &type metadata for UIAnimatableColor, v101, v97, v98);
    v102 = a10;
    v103 = a13;
    v104 = a11;
    v105 = a14;
    v106 = a12;
    v107 = a15;
    v108 = a16;
    v109 = sub_188A33550();
    swift_beginAccess();
    v171 = v109;
    a16 = v108;
    a15 = v107;
    a12 = v106;
    a14 = v105;
    a11 = v104;
    a13 = v103;
    a10 = v102;
    a9 = v186;
    v110.n128_f64[0] = v186;
    v111.n128_f64[0] = a10;
    v112.n128_f64[0] = a11;
    v113.n128_f64[0] = a12;
    v114.n128_f64[0] = a13;
    v115.n128_f64[0] = a14;
    v116.n128_f64[0] = a15;
    v117.n128_f64[0] = a16;
    sub_188C51044(v42, aBlock, v178, v53, v110, v111, v112, v113, v114, v115, v116, v117, v171);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v42, &qword_1EA936878);
    goto LABEL_12;
  }

  v61 = v181;
  v178 = a2;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v62 = a3;
    v63 = v42;
    v64 = v61;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v59, v60);
      os_unfair_lock_lock((v58[2] + 16));
      signpost_c2_entryLock_start(v65, v66);
      v67 = *(*v58 + 104);
      swift_beginAccess();
      v68 = v177;
      sub_188A3F29C(v58 + v67, v177, &qword_1EA9366C0);
      sub_188A3F29C(v68, v42, &qword_1EA9366C0);
      (*(isa + 7))(v42, 0, 1, v193);
      v201 = a9;
      v202 = a10;
      v203 = a11;
      v204 = a12;
      v197 = a13;
      v198 = a14;
      v199 = a15;
      v200 = a16;
      v69 = v64[3];
      v70 = v64[4];
      __swift_project_boxed_opaque_existential_0(v64, v69);
      v71 = v42;
      v72 = v178;
      swift_beginAccess();
      v73 = *(v72 + 217);
      v74 = *(v70 + 16);
      v75 = sub_188C520C4();
      v74(aBlock, v73, v71, &v201, &v197, &type metadata for UIAnimatableColor, v75, v69, v70);
      v76 = v192;
      v77 = a10;
      v78 = a13;
      v79 = a11;
      v80 = a14;
      v81 = a12;
      v82 = a15;
      v83 = a16;
      v84 = sub_188A33550();
      swift_beginAccess();
      v170 = v84;
      a16 = v83;
      a15 = v82;
      a12 = v81;
      a14 = v80;
      a11 = v79;
      a13 = v78;
      a10 = v77;
      a9 = v186;
      v53 = v191;
      v85.n128_f64[0] = v186;
      v86.n128_f64[0] = a10;
      v87.n128_f64[0] = a11;
      v88.n128_f64[0] = a12;
      v89.n128_f64[0] = a13;
      v90.n128_f64[0] = a14;
      v91.n128_f64[0] = a15;
      v92.n128_f64[0] = a16;
      sub_188C51044(v71, aBlock, v62, v191, v85, v86, v87, v88, v89, v90, v91, v92, v170);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v71, &qword_1EA936878);
      v93 = *v58;
      v94 = v58 + *(*v58 + 112);
      v95 = *v94;
      if (*v94)
      {
        *v94 = 0;
        *(v94 + 1) = 0;
        v95(v76, 0);
        sub_188A55B8C(v95);
        v93 = *v58;
      }

      *(v58 + *(v93 + 120)) = 1;
      sub_188A3F5FC(v177, &qword_1EA9366C0);
      os_unfair_lock_unlock((v58[2] + 16));
    }

    else
    {
      v118 = *(*v58 + 104);
      swift_beginAccess();
      v119 = v176;
      sub_188A3F29C(v58 + v118, v176, &qword_1EA9366C0);
      sub_188A3F29C(v119, v63, &qword_1EA9366C0);
      (*(isa + 7))(v63, 0, 1, v193);
      v201 = a9;
      v202 = a10;
      v203 = a11;
      v204 = a12;
      v197 = a13;
      v198 = a14;
      v199 = a15;
      v200 = a16;
      v120 = v61[3];
      v121 = v64[4];
      __swift_project_boxed_opaque_existential_0(v64, v64[3]);
      v122 = v63;
      v123 = v178;
      swift_beginAccess();
      v124 = *(v123 + 217);
      v125 = *(v121 + 16);
      v126 = sub_188C520C4();
      v125(aBlock, v124, v122, &v201, &v197, &type metadata for UIAnimatableColor, v126, v120, v121);
      v127 = v192;
      v128 = a10;
      v129 = a13;
      v130 = a11;
      v131 = a14;
      v132 = a12;
      v133 = a15;
      v134 = a16;
      v135 = sub_188A33550();
      swift_beginAccess();
      v172 = v135;
      a16 = v134;
      a15 = v133;
      a12 = v132;
      a14 = v131;
      a11 = v130;
      a13 = v129;
      a10 = v128;
      a9 = v186;
      v53 = v191;
      v136.n128_f64[0] = v186;
      v137.n128_f64[0] = a10;
      v138.n128_f64[0] = a11;
      v139.n128_f64[0] = a12;
      v140.n128_f64[0] = a13;
      v141.n128_f64[0] = a14;
      v142.n128_f64[0] = a15;
      v143.n128_f64[0] = a16;
      sub_188C51044(v122, aBlock, v62, v191, v136, v137, v138, v139, v140, v141, v142, v143, v172);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v122, &qword_1EA936878);
      v144 = v58 + *(*v58 + 112);
      v145 = *v144;
      if (*v144)
      {
        *v144 = 0;
        *(v144 + 1) = 0;
        v145(v127, 0);
        sub_188A55B8C(v145);
      }

      sub_188A3F5FC(v176, &qword_1EA9366C0);
      *(v58 + *(*v58 + 120)) = 1;
    }

    v96 = v178;
LABEL_12:
    v146 = v182;
    sub_188A3F29C(v53, v182, &qword_1EA9366C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936880);
    swift_allocObject();
    v147 = v185;

    v148 = sub_188AA785C(v146, v183, v147, &qword_1EA9366C0);

    if (v184)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    v149 = v187;
    if (*(v96 + 120))
    {
      if (a25)
      {
        goto LABEL_19;
      }

      v150 = (a13 - a9) * a24;
      v151 = (a14 - a10) * a24;
      v152 = (a15 - a11) * a24;
      v153 = (a16 - a12) * a24;
    }

    else
    {
      v152 = *(v96 + 104);
      v153 = *(v96 + 112);
      v150 = *(v96 + 88);
      v151 = *(v96 + 96);
    }

    sub_188EFFBBC(&qword_1EA9366C0, v150, v151, v152, v153);
LABEL_19:
    LODWORD(a15) = a22;
    LODWORD(a16) = a23;
    LODWORD(a12) = a21;
    v154 = swift_allocObject();
    *(v154 + 16) = 0u;
    *(v154 + 32) = 0u;
    *(v154 + 48) = 1;
    v155 = *(v96 + 272);
    sub_188A3F29C(v53, v149, &qword_1EA9366C0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v156 = v149;
      v157 = v174;
      sub_188A3F704(v156, v174, &qword_1EA9366B8);
      v158 = *(v157 + *(v175 + 64));
      sub_188A3F5FC(v157, &qword_1EA9366B8);
      v159 = (v158 == 2) | v158;
    }

    else
    {
      v159 = 0;
    }

    v160 = swift_allocObject();
    v161 = v188;
    v160[2] = v148;
    v160[3] = v161;
    v160[4] = v194;
    v160[5] = v96;
    v162 = v192;
    v160[6] = v154;
    v160[7] = v162;
    v61 = v190;
    v160[8] = sub_188F0DA30;
    v160[9] = v61;
    v188 = v148;
    v163 = v189;
    v160[10] = sub_188F0E0D0;
    v160[11] = v163;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v164 = v154;
    v165 = swift_allocObject();
    *(v165 + 16) = a21;
    *(v165 + 20) = a22;
    *(v165 + 24) = a23;
    *(v165 + 28) = a20;
    *(v165 + 32) = v155;
    *(v165 + 33) = v159 & 1;
    *(v165 + 40) = sub_188F0DA80;
    *(v165 + 48) = v160;
    v193 = *(v162 + 280);
    a3 = swift_allocObject();
    *(a3 + 16) = v162;
    *(a3 + 24) = v165;
    v58 = swift_allocObject();
    v58[2] = sub_188F0E074;
    v58[3] = a3;
    aBlock[4] = sub_188E3FE50;
    v196 = v58;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1172;
    v166 = _Block_copy(aBlock);
    v42 = v196;
    swift_retain_n();

    isa = v61;

    v194 = v164;

    dispatch_sync(v193, v166);
    _Block_release(v166);
    LOBYTE(v164) = swift_isEscapingClosureAtFileLocation();

    if ((v164 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v167);
  v168 = v180;
  os_unfair_lock_lock(v180 + 6);
  sub_188F0E024(v179);
  os_unfair_lock_unlock(v168 + 6);

  sub_188A3F5FC(v191, &qword_1EA9366C0);
}

uint64_t sub_188ED96F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8, double a9, double a10, float a11, float a12, float a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, double a21, char a22, uint64_t a23, char *a24)
{
  v129 = a7;
  v130 = a6;
  v127 = a5;
  v121 = a4;
  v125 = a24;
  v123 = a23;
  v124 = a19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366E8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = v114 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936888);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = v114 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366F0);
  isa = v33[-1].isa;
  MEMORY[0x1EEE9AC00](v33);
  v126 = v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v122 = v114 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v117 = v114 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v118 = v114 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v114 - v43;
  v114[1] = a3;
  LODWORD(a3) = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v46 = swift_allocObject();
  *(v46 + 2) = v129;
  *(v46 + 3) = a8;
  v129 = v46;
  *(v46 + 4) = a1;
  v47 = swift_allocObject();
  v47[2] = a17;
  v47[3] = a18;
  v128 = v47;
  v47[4] = a1;
  v48 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v48 + 24));
  v49 = *(v48 + 16);
  v119 = (v48 + 16);

  v120 = v48;
  os_unfair_lock_unlock((v48 + 24));
  v131 = v44;
  v133 = a2;
  v132 = v33;
  if (!v49)
  {
    (*(isa + 7))(v32, 1, 1, v33);
    v134[0] = a9;
    v137 = a10;
    v73 = v121[3];
    v74 = v121[4];
    __swift_project_boxed_opaque_existential_0(v121, v73);
    LODWORD(v121) = a3;
    swift_beginAccess();
    v75 = *(a2 + 121);
    v76 = *(v74 + 16);
    v77 = sub_188A919BC();
    v76(aBlock, v75, v32, v134, &v137, &type metadata for UIAnimatableScaledFloat, v77, v73, v74);
    v78 = sub_188A33550();
    swift_beginAccess();
    sub_188EFDD9C(v32, aBlock, v121, v44, a9, a10, v78);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v32, &qword_1EA936888);
    v72 = a1;
    v71 = v126;
    v67 = v44;
    goto LABEL_11;
  }

  v52 = v121;
  v114[0] = a1;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v53 = a3;
    v54 = v52;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v50, v51);
      os_unfair_lock_lock((v49[2] + 16));
      signpost_c2_entryLock_start(v55, v56);
      v57 = *(*v49 + 104);
      swift_beginAccess();
      v58 = v118;
      sub_188A3F29C(v49 + v57, v118, &qword_1EA9366F0);
      sub_188A3F29C(v58, v32, &qword_1EA9366F0);
      (*(isa + 7))(v32, 0, 1, v132);
      v137 = a9;
      v135[0] = a10;
      v59 = v54[3];
      v60 = v54[4];
      __swift_project_boxed_opaque_existential_0(v54, v59);
      v61 = v133;
      swift_beginAccess();
      v62 = *(v61 + 121);
      v63 = *(v60 + 16);
      v64 = sub_188A919BC();
      v63(aBlock, v62, v32, &v137, v135, &type metadata for UIAnimatableScaledFloat, v64, v59, v60);
      v65 = v114[0];
      v66 = sub_188A33550();
      swift_beginAccess();
      v67 = v131;
      sub_188EFDD9C(v32, aBlock, v53, v131, a9, a10, v66);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v32, &qword_1EA936888);
      v68 = *v49;
      v69 = v49 + *(*v49 + 112);
      v70 = *v69;
      if (*v69)
      {
        *v69 = 0;
        *(v69 + 1) = 0;
        v70(v65, 0);
        sub_188A55B8C(v70);
        v68 = *v49;
      }

      v71 = v126;
      v72 = v65;
      *(v49 + *(v68 + 120)) = 1;
      sub_188A3F5FC(v118, &qword_1EA9366F0);
      os_unfair_lock_unlock((v49[2] + 16));
    }

    else
    {
      v79 = *(*v49 + 104);
      swift_beginAccess();
      v80 = v117;
      sub_188A3F29C(v49 + v79, v117, &qword_1EA9366F0);
      sub_188A3F29C(v80, v32, &qword_1EA9366F0);
      (*(isa + 7))(v32, 0, 1, v132);
      v137 = a9;
      v135[0] = a10;
      v81 = v52[3];
      v82 = v54[4];
      __swift_project_boxed_opaque_existential_0(v54, v54[3]);
      v83 = v133;
      swift_beginAccess();
      v84 = v32;
      v85 = *(v83 + 121);
      v86 = *(v82 + 16);
      v87 = sub_188A919BC();
      v86(aBlock, v85, v84, &v137, v135, &type metadata for UIAnimatableScaledFloat, v87, v81, v82);
      v88 = v114[0];
      v89 = sub_188A33550();
      swift_beginAccess();
      v67 = v131;
      sub_188EFDD9C(v84, aBlock, v53, v131, a9, a10, v89);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v84, &qword_1EA936888);
      v90 = v49 + *(*v49 + 112);
      v91 = *v90;
      if (*v90)
      {
        *v90 = 0;
        *(v90 + 1) = 0;
        v91(v88, 0);
        sub_188A55B8C(v91);
      }

      v72 = v88;
      sub_188A3F5FC(v117, &qword_1EA9366F0);
      *(v49 + *(*v49 + 120)) = 1;

      v71 = v126;
    }

LABEL_11:
    v92 = v122;
    sub_188A3F29C(v67, v122, &qword_1EA9366F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936890);
    swift_allocObject();
    v93 = v125;

    v94 = sub_188AA785C(v92, v123, v93, &qword_1EA9366F0);

    if (v124)
    {
      swift_unknownObjectWeakAssign();
    }

    v95 = v133;
    swift_beginAccess();
    v96 = v72;
    if (*(v95 + 72))
    {
      if (a22)
      {
        goto LABEL_18;
      }

      v97 = (a10 - a9) * a21;
    }

    else
    {
      v97 = *(v95 + 64);
    }

    sub_188D4DBD0(&qword_1EA9366F0, v97);
LABEL_18:
    v98 = v94;
    LODWORD(v126) = a20;
    v99 = swift_allocObject();
    *(v99 + 16) = 0;
    v100 = v99;
    *(v99 + 24) = 1;
    v124 = *(v95 + 152);
    sub_188A3F29C(v67, v71, &qword_1EA9366F0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v101 = v115;
      sub_188A3F704(v71, v115, &qword_1EA9366E8);
      v102 = *(v101 + *(v116 + 64));
      sub_188A3F5FC(v101, &qword_1EA9366E8);
      v103 = (v102 == 2) | v102;
    }

    else
    {
      v103 = 0;
    }

    v104 = swift_allocObject();
    v105 = v127;
    v104[2] = v94;
    v104[3] = v105;
    v106 = v133;
    v104[4] = v130;
    v104[5] = v106;
    v125 = v100;
    v104[6] = v100;
    v104[7] = v96;
    v107 = v129;
    v104[8] = sub_188F0DAFC;
    v104[9] = v107;
    v108 = v128;
    v104[10] = sub_188F0E0D0;
    v104[11] = v108;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    a3 = swift_allocObject();
    *(a3 + 16) = a11;
    *(a3 + 20) = a12;
    *(a3 + 24) = a13;
    *(a3 + 28) = v126;
    *(a3 + 32) = v124;
    *(a3 + 33) = v103 & 1;
    *(a3 + 40) = sub_188F0DB4C;
    *(a3 + 48) = v104;
    v132 = *(v96 + 280);
    v109 = swift_allocObject();
    *(v109 + 16) = v96;
    *(v109 + 24) = a3;
    v49 = swift_allocObject();
    v49[2] = sub_188F0E074;
    v49[3] = v109;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1210;
    v52 = _Block_copy(aBlock);
    swift_retain_n();
    v110 = v98;

    v32 = v125;
    isa = v107;

    dispatch_sync(v132, v52);
    _Block_release(v52);
    LOBYTE(v107) = swift_isEscapingClosureAtFileLocation();

    if ((v107 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v111);
  v114[-2] = v110;
  v112 = v120;
  os_unfair_lock_lock(v120 + 6);
  sub_188F0E024(v119);
  os_unfair_lock_unlock(v112 + 6);

  sub_188A3F5FC(v131, &qword_1EA9366F0);
}

uint64_t sub_188EDA510(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, int a21, int a22, int a23, double a24, char a25, uint64_t a26, uint64_t a27)
{
  v184 = a6;
  v181 = a5;
  v173 = a4;
  v178 = a27;
  v176 = a26;
  v177 = a19;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936718);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v166 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936898);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v166 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936720);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v180 = &v166 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v175 = &v166 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v169 = &v166 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v170 = &v166 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v187 = (&v166 - v54);
  v166 = a3;
  v174 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v55 = swift_allocObject();
  v55[2] = a7;
  v55[3] = a8;
  v56 = a1;
  v183 = v55;
  v55[4] = a1;
  v57 = swift_allocObject();
  v57[2] = a17;
  v57[3] = a18;
  v182 = v57;
  v57[4] = a1;
  v58 = *(isEscapingClosureAtFileLocation + 32);
  swift_retain_n();

  os_unfair_lock_lock((v58 + 24));
  v59 = *(v58 + 16);
  v171 = (v58 + 16);

  v172 = v58;
  os_unfair_lock_unlock((v58 + 24));
  v188 = isEscapingClosureAtFileLocation;
  v186 = v56;
  v185 = v44;
  v179 = a9;
  if (!v59)
  {
    v45[7](v43, 1, 1, v44);
    v194 = a9;
    v195 = a10;
    v196 = a11;
    v197 = a12;
    v190 = a13;
    v191 = a14;
    v192 = a15;
    v193 = a16;
    v94 = v173[3];
    v95 = v173[4];
    __swift_project_boxed_opaque_existential_0(v173, v94);
    swift_beginAccess();
    v96 = *(isEscapingClosureAtFileLocation + 217);
    v97 = *(v95 + 16);
    v98 = sub_188A5ED24();
    v97(aBlock, v96, v43, &v194, &v190, &type metadata for UIAnimatableRect, v98, v94, v95);
    v99 = a10;
    v100 = a13;
    v101 = a11;
    v102 = a14;
    v103 = a12;
    v104 = a15;
    v105 = a16;
    v106 = sub_188A33550();
    swift_beginAccess();
    v164 = v106;
    a16 = v105;
    a15 = v104;
    a12 = v103;
    a14 = v102;
    a11 = v101;
    a13 = v100;
    a10 = v99;
    a9 = v179;
    v107.n128_f64[0] = v179;
    v108.n128_f64[0] = a10;
    v109.n128_f64[0] = a11;
    v110.n128_f64[0] = a12;
    v111.n128_f64[0] = a13;
    v112.n128_f64[0] = a14;
    v113.n128_f64[0] = a15;
    v114.n128_f64[0] = a16;
    v90 = v187;
    sub_188AAEEC4(v43, aBlock, v174, &qword_1EA936720, &unk_18A650E88, &qword_1EA936898, &qword_1EA936718, v187, v107, v108, v109, v110, v111, v112, v113, v114, v164, &unk_18A650E80, sub_188EF8C94, sub_188CE5E80, &type metadata for UIAnimatableRect, sub_188EF61CC);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v43, &qword_1EA936898);
    goto LABEL_12;
  }

  v62 = v173;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v63 = v43;
    v64 = v62;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v60, v61);
      os_unfair_lock_lock((v59[2] + 16));
      signpost_c2_entryLock_start(v65, v66);
      v67 = *(*v59 + 104);
      swift_beginAccess();
      v68 = v170;
      sub_188A3F29C(v59 + v67, v170, &qword_1EA936720);
      sub_188A3F29C(v68, v63, &qword_1EA936720);
      v45[7](v63, 0, 1, v185);
      v194 = a9;
      v195 = a10;
      v196 = a11;
      v197 = a12;
      v190 = a13;
      v191 = a14;
      v192 = a15;
      v193 = a16;
      v69 = v63;
      v70 = v64[4];
      __swift_project_boxed_opaque_existential_0(v64, v64[3]);
      swift_beginAccess();
      v71 = *(isEscapingClosureAtFileLocation + 217);
      v72 = *(v70 + 16);
      sub_188A5ED24();
      v72(aBlock, v71, v69, &v194, &v190);
      isEscapingClosureAtFileLocation = v188;
      v73 = v186;
      v74 = a10;
      v75 = a13;
      v76 = a11;
      v77 = a14;
      v78 = a12;
      v79 = a15;
      v80 = a16;
      v81 = sub_188A33550();
      swift_beginAccess();
      v163 = v81;
      a16 = v80;
      a15 = v79;
      a12 = v78;
      a14 = v77;
      a11 = v76;
      a13 = v75;
      a10 = v74;
      a9 = v179;
      v82.n128_f64[0] = v179;
      v83.n128_f64[0] = a10;
      v84.n128_f64[0] = a11;
      v85.n128_f64[0] = a12;
      v86.n128_f64[0] = a13;
      v87.n128_f64[0] = a14;
      v88.n128_f64[0] = a15;
      v89.n128_f64[0] = a16;
      v90 = v187;
      sub_188AAEEC4(v69, aBlock, v174, &qword_1EA936720, &unk_18A650E88, &qword_1EA936898, &qword_1EA936718, v187, v82, v83, v84, v85, v86, v87, v88, v89, v163, &unk_18A650E80, sub_188EF8C94, sub_188CE5E80, &type metadata for UIAnimatableRect, sub_188EF61CC);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v69, &qword_1EA936898);
      v91 = *v59;
      v92 = v59 + *(*v59 + 112);
      v93 = *v92;
      if (*v92)
      {
        *v92 = 0;
        *(v92 + 1) = 0;
        v93(v73, 0);
        sub_188A55B8C(v93);
        v91 = *v59;
      }

      *(v59 + *(v91 + 120)) = 1;
      sub_188A3F5FC(v170, &qword_1EA936720);
      os_unfair_lock_unlock((v59[2] + 16));
    }

    else
    {
      v115 = *(*v59 + 104);
      swift_beginAccess();
      v116 = v59 + v115;
      v117 = v169;
      sub_188A3F29C(v116, v169, &qword_1EA936720);
      sub_188A3F29C(v117, v63, &qword_1EA936720);
      v45[7](v63, 0, 1, v185);
      v194 = a9;
      v195 = a10;
      v196 = a11;
      v197 = a12;
      v190 = a13;
      v191 = a14;
      v192 = a15;
      v193 = a16;
      v118 = v62[4];
      __swift_project_boxed_opaque_existential_0(v62, v62[3]);
      swift_beginAccess();
      v119 = *(v188 + 217);
      v120 = *(v118 + 16);
      sub_188A5ED24();
      isEscapingClosureAtFileLocation = v188;
      v120(aBlock, v119, v63, &v194, &v190);
      v121 = v186;
      v122 = a10;
      v123 = a13;
      v124 = a11;
      v125 = a14;
      v126 = a12;
      v127 = a15;
      v128 = a16;
      v129 = sub_188A33550();
      swift_beginAccess();
      v165 = v129;
      a16 = v128;
      a15 = v127;
      a12 = v126;
      a14 = v125;
      a11 = v124;
      a13 = v123;
      a10 = v122;
      a9 = v179;
      v130.n128_f64[0] = v179;
      v131.n128_f64[0] = a10;
      v132.n128_f64[0] = a11;
      v133.n128_f64[0] = a12;
      v134.n128_f64[0] = a13;
      v135.n128_f64[0] = a14;
      v136.n128_f64[0] = a15;
      v137.n128_f64[0] = a16;
      v90 = v187;
      sub_188AAEEC4(v63, aBlock, v174, &qword_1EA936720, &unk_18A650E88, &qword_1EA936898, &qword_1EA936718, v187, v130, v131, v132, v133, v134, v135, v136, v137, v165, &unk_18A650E80, sub_188EF8C94, sub_188CE5E80, &type metadata for UIAnimatableRect, sub_188EF61CC);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v63, &qword_1EA936898);
      v138 = v59 + *(*v59 + 112);
      v139 = *v138;
      if (*v138)
      {
        *v138 = 0;
        *(v138 + 1) = 0;
        v139(v121, 0);
        sub_188A55B8C(v139);
      }

      sub_188A3F5FC(v169, &qword_1EA936720);
      *(v59 + *(*v59 + 120)) = 1;
    }

LABEL_12:
    v140 = v175;
    sub_188A3F29C(v90, v175, &qword_1EA936720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368A0);
    swift_allocObject();
    v141 = v178;

    v142 = sub_188AA785C(v140, v176, v141, &qword_1EA936720);

    if (v177)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(isEscapingClosureAtFileLocation + 120))
    {
      if (a25)
      {
        goto LABEL_19;
      }

      v143 = (a13 - a9) * a24;
      v144 = (a14 - a10) * a24;
      v145 = (a15 - a11) * a24;
      v146 = (a16 - a12) * a24;
    }

    else
    {
      v145 = *(isEscapingClosureAtFileLocation + 104);
      v146 = *(isEscapingClosureAtFileLocation + 112);
      v143 = *(isEscapingClosureAtFileLocation + 88);
      v144 = *(isEscapingClosureAtFileLocation + 96);
    }

    sub_188EFFBBC(&qword_1EA936720, v143, v144, v145, v146);
LABEL_19:
    LODWORD(a15) = a22;
    LODWORD(a16) = a23;
    LODWORD(a12) = a21;
    v147 = swift_allocObject();
    *(v147 + 16) = 0u;
    *(v147 + 32) = 0u;
    *(v147 + 48) = 1;
    v148 = *(isEscapingClosureAtFileLocation + 272);
    v149 = v180;
    sub_188A3F29C(v90, v180, &qword_1EA936720);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v150 = v167;
      sub_188A3F704(v149, v167, &qword_1EA936718);
      v151 = *(v150 + *(v168 + 64));
      sub_188A3F5FC(v150, &qword_1EA936718);
      v152 = (v151 == 2) | v151;
    }

    else
    {
      v152 = 0;
    }

    v153 = swift_allocObject();
    v154 = v181;
    v153[2] = v142;
    v153[3] = v154;
    v155 = v188;
    v153[4] = v184;
    v153[5] = v155;
    v185 = v142;
    v156 = v186;
    v153[6] = v147;
    v153[7] = v156;
    v157 = v147;
    v158 = v183;
    v153[8] = sub_188F0E0C8;
    v153[9] = v158;
    v159 = v182;
    v153[10] = sub_188F0E0D0;
    v153[11] = v159;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v43 = swift_allocObject();
    *(v43 + 4) = a21;
    *(v43 + 5) = a22;
    *(v43 + 6) = a23;
    *(v43 + 7) = a20;
    v43[32] = v148;
    v43[33] = v152 & 1;
    *(v43 + 5) = sub_188F0DBE0;
    *(v43 + 6) = v153;
    v181 = *(v156 + 280);
    v62 = swift_allocObject();
    v62[2] = v156;
    v62[3] = v43;
    v59 = swift_allocObject();
    v59[2] = sub_188F0E074;
    v59[3] = v62;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1248;
    v45 = _Block_copy(aBlock);
    swift_retain_n();

    v188 = v157;

    dispatch_sync(v181, v45);
    _Block_release(v45);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v160);
  v161 = v172;
  os_unfair_lock_lock(v172 + 6);
  sub_188F0E024(v171);
  os_unfair_lock_unlock(v161 + 6);

  sub_188A3F5FC(v187, &qword_1EA936720);
}

uint64_t sub_188EDB5DC(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, int a21, int a22, int a23, double a24, char a25, uint64_t a26, uint64_t a27)
{
  v184 = a6;
  v181 = a5;
  v173 = a4;
  v178 = a27;
  v176 = a26;
  v177 = a19;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936748);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v166 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368A8);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v166 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936750);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v180 = &v166 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v175 = &v166 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v169 = &v166 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v170 = &v166 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v187 = (&v166 - v54);
  v166 = a3;
  v174 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v55 = swift_allocObject();
  v55[2] = a7;
  v55[3] = a8;
  v56 = a1;
  v183 = v55;
  v55[4] = a1;
  v57 = swift_allocObject();
  v57[2] = a17;
  v57[3] = a18;
  v182 = v57;
  v57[4] = a1;
  v58 = *(isEscapingClosureAtFileLocation + 32);
  swift_retain_n();

  os_unfair_lock_lock((v58 + 24));
  v59 = *(v58 + 16);
  v171 = (v58 + 16);

  v172 = v58;
  os_unfair_lock_unlock((v58 + 24));
  v188 = isEscapingClosureAtFileLocation;
  v186 = v56;
  v185 = v44;
  v179 = a9;
  if (!v59)
  {
    v45[7](v43, 1, 1, v44);
    v194 = a9;
    v195 = a10;
    v196 = a11;
    v197 = a12;
    v190 = a13;
    v191 = a14;
    v192 = a15;
    v193 = a16;
    v94 = v173[3];
    v95 = v173[4];
    __swift_project_boxed_opaque_existential_0(v173, v94);
    swift_beginAccess();
    v96 = *(isEscapingClosureAtFileLocation + 217);
    v97 = *(v95 + 16);
    v98 = sub_188E9507C();
    v97(aBlock, v96, v43, &v194, &v190, &type metadata for UIAnimatableNormalizedRect, v98, v94, v95);
    v99 = a10;
    v100 = a13;
    v101 = a11;
    v102 = a14;
    v103 = a12;
    v104 = a15;
    v105 = a16;
    v106 = sub_188A33550();
    swift_beginAccess();
    v164 = v106;
    a16 = v105;
    a15 = v104;
    a12 = v103;
    a14 = v102;
    a11 = v101;
    a13 = v100;
    a10 = v99;
    a9 = v179;
    v107.n128_f64[0] = v179;
    v108.n128_f64[0] = a10;
    v109.n128_f64[0] = a11;
    v110.n128_f64[0] = a12;
    v111.n128_f64[0] = a13;
    v112.n128_f64[0] = a14;
    v113.n128_f64[0] = a15;
    v114.n128_f64[0] = a16;
    v90 = v187;
    sub_188AAEEC4(v43, aBlock, v174, &qword_1EA936750, &unk_18A650EB0, &qword_1EA9368A8, &qword_1EA936748, v187, v107, v108, v109, v110, v111, v112, v113, v114, v164, &unk_18A650EA8, sub_188EF8FA4, sub_188F0D468, &type metadata for UIAnimatableNormalizedRect, sub_188EF643C);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v43, &qword_1EA9368A8);
    goto LABEL_12;
  }

  v62 = v173;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v63 = v43;
    v64 = v62;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v60, v61);
      os_unfair_lock_lock((v59[2] + 16));
      signpost_c2_entryLock_start(v65, v66);
      v67 = *(*v59 + 104);
      swift_beginAccess();
      v68 = v170;
      sub_188A3F29C(v59 + v67, v170, &qword_1EA936750);
      sub_188A3F29C(v68, v63, &qword_1EA936750);
      v45[7](v63, 0, 1, v185);
      v194 = a9;
      v195 = a10;
      v196 = a11;
      v197 = a12;
      v190 = a13;
      v191 = a14;
      v192 = a15;
      v193 = a16;
      v69 = v63;
      v70 = v64[4];
      __swift_project_boxed_opaque_existential_0(v64, v64[3]);
      swift_beginAccess();
      v71 = *(isEscapingClosureAtFileLocation + 217);
      v72 = *(v70 + 16);
      sub_188E9507C();
      v72(aBlock, v71, v69, &v194, &v190);
      isEscapingClosureAtFileLocation = v188;
      v73 = v186;
      v74 = a10;
      v75 = a13;
      v76 = a11;
      v77 = a14;
      v78 = a12;
      v79 = a15;
      v80 = a16;
      v81 = sub_188A33550();
      swift_beginAccess();
      v163 = v81;
      a16 = v80;
      a15 = v79;
      a12 = v78;
      a14 = v77;
      a11 = v76;
      a13 = v75;
      a10 = v74;
      a9 = v179;
      v82.n128_f64[0] = v179;
      v83.n128_f64[0] = a10;
      v84.n128_f64[0] = a11;
      v85.n128_f64[0] = a12;
      v86.n128_f64[0] = a13;
      v87.n128_f64[0] = a14;
      v88.n128_f64[0] = a15;
      v89.n128_f64[0] = a16;
      v90 = v187;
      sub_188AAEEC4(v69, aBlock, v174, &qword_1EA936750, &unk_18A650EB0, &qword_1EA9368A8, &qword_1EA936748, v187, v82, v83, v84, v85, v86, v87, v88, v89, v163, &unk_18A650EA8, sub_188EF8FA4, sub_188F0D468, &type metadata for UIAnimatableNormalizedRect, sub_188EF643C);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v69, &qword_1EA9368A8);
      v91 = *v59;
      v92 = v59 + *(*v59 + 112);
      v93 = *v92;
      if (*v92)
      {
        *v92 = 0;
        *(v92 + 1) = 0;
        v93(v73, 0);
        sub_188A55B8C(v93);
        v91 = *v59;
      }

      *(v59 + *(v91 + 120)) = 1;
      sub_188A3F5FC(v170, &qword_1EA936750);
      os_unfair_lock_unlock((v59[2] + 16));
    }

    else
    {
      v115 = *(*v59 + 104);
      swift_beginAccess();
      v116 = v59 + v115;
      v117 = v169;
      sub_188A3F29C(v116, v169, &qword_1EA936750);
      sub_188A3F29C(v117, v63, &qword_1EA936750);
      v45[7](v63, 0, 1, v185);
      v194 = a9;
      v195 = a10;
      v196 = a11;
      v197 = a12;
      v190 = a13;
      v191 = a14;
      v192 = a15;
      v193 = a16;
      v118 = v62[4];
      __swift_project_boxed_opaque_existential_0(v62, v62[3]);
      swift_beginAccess();
      v119 = *(v188 + 217);
      v120 = *(v118 + 16);
      sub_188E9507C();
      isEscapingClosureAtFileLocation = v188;
      v120(aBlock, v119, v63, &v194, &v190);
      v121 = v186;
      v122 = a10;
      v123 = a13;
      v124 = a11;
      v125 = a14;
      v126 = a12;
      v127 = a15;
      v128 = a16;
      v129 = sub_188A33550();
      swift_beginAccess();
      v165 = v129;
      a16 = v128;
      a15 = v127;
      a12 = v126;
      a14 = v125;
      a11 = v124;
      a13 = v123;
      a10 = v122;
      a9 = v179;
      v130.n128_f64[0] = v179;
      v131.n128_f64[0] = a10;
      v132.n128_f64[0] = a11;
      v133.n128_f64[0] = a12;
      v134.n128_f64[0] = a13;
      v135.n128_f64[0] = a14;
      v136.n128_f64[0] = a15;
      v137.n128_f64[0] = a16;
      v90 = v187;
      sub_188AAEEC4(v63, aBlock, v174, &qword_1EA936750, &unk_18A650EB0, &qword_1EA9368A8, &qword_1EA936748, v187, v130, v131, v132, v133, v134, v135, v136, v137, v165, &unk_18A650EA8, sub_188EF8FA4, sub_188F0D468, &type metadata for UIAnimatableNormalizedRect, sub_188EF643C);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v63, &qword_1EA9368A8);
      v138 = v59 + *(*v59 + 112);
      v139 = *v138;
      if (*v138)
      {
        *v138 = 0;
        *(v138 + 1) = 0;
        v139(v121, 0);
        sub_188A55B8C(v139);
      }

      sub_188A3F5FC(v169, &qword_1EA936750);
      *(v59 + *(*v59 + 120)) = 1;
    }

LABEL_12:
    v140 = v175;
    sub_188A3F29C(v90, v175, &qword_1EA936750);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368B0);
    swift_allocObject();
    v141 = v178;

    v142 = sub_188AA785C(v140, v176, v141, &qword_1EA936750);

    if (v177)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(isEscapingClosureAtFileLocation + 120))
    {
      if (a25)
      {
        goto LABEL_19;
      }

      v143 = (a13 - a9) * a24;
      v144 = (a14 - a10) * a24;
      v145 = (a15 - a11) * a24;
      v146 = (a16 - a12) * a24;
    }

    else
    {
      v145 = *(isEscapingClosureAtFileLocation + 104);
      v146 = *(isEscapingClosureAtFileLocation + 112);
      v143 = *(isEscapingClosureAtFileLocation + 88);
      v144 = *(isEscapingClosureAtFileLocation + 96);
    }

    sub_188EFFBBC(&qword_1EA936750, v143, v144, v145, v146);
LABEL_19:
    LODWORD(a15) = a22;
    LODWORD(a16) = a23;
    LODWORD(a12) = a21;
    v147 = swift_allocObject();
    *(v147 + 16) = 0u;
    *(v147 + 32) = 0u;
    *(v147 + 48) = 1;
    v148 = *(isEscapingClosureAtFileLocation + 272);
    v149 = v180;
    sub_188A3F29C(v90, v180, &qword_1EA936750);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v150 = v167;
      sub_188A3F704(v149, v167, &qword_1EA936748);
      v151 = *(v150 + *(v168 + 64));
      sub_188A3F5FC(v150, &qword_1EA936748);
      v152 = (v151 == 2) | v151;
    }

    else
    {
      v152 = 0;
    }

    v153 = swift_allocObject();
    v154 = v181;
    v153[2] = v142;
    v153[3] = v154;
    v155 = v188;
    v153[4] = v184;
    v153[5] = v155;
    v185 = v142;
    v156 = v186;
    v153[6] = v147;
    v153[7] = v156;
    v157 = v147;
    v158 = v183;
    v153[8] = sub_188F0DBF8;
    v153[9] = v158;
    v159 = v182;
    v153[10] = sub_188F0E0D0;
    v153[11] = v159;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v43 = swift_allocObject();
    *(v43 + 4) = a21;
    *(v43 + 5) = a22;
    *(v43 + 6) = a23;
    *(v43 + 7) = a20;
    v43[32] = v148;
    v43[33] = v152 & 1;
    *(v43 + 5) = sub_188F0DBFC;
    *(v43 + 6) = v153;
    v181 = *(v156 + 280);
    v62 = swift_allocObject();
    v62[2] = v156;
    v62[3] = v43;
    v59 = swift_allocObject();
    v59[2] = sub_188F0E074;
    v59[3] = v62;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1286;
    v45 = _Block_copy(aBlock);
    swift_retain_n();

    v188 = v157;

    dispatch_sync(v181, v45);
    _Block_release(v45);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v160);
  v161 = v172;
  os_unfair_lock_lock(v172 + 6);
  sub_188F0E024(v171);
  os_unfair_lock_unlock(v161 + 6);

  sub_188A3F5FC(v187, &qword_1EA936750);
}

uint64_t sub_188EDC6A8(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, int a22, double a23, char a24, uint64_t a25, uint64_t a26)
{
  v197 = a8;
  v198 = a5;
  v191 = a7;
  v183 = a6;
  v199 = a4;
  v189 = a26;
  v187 = a25;
  v188 = a21;
  v200 = a19;
  v27 = v204;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936778);
  MEMORY[0x1EEE9AC00](v177);
  v176 = v175 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368B8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v184 = v175 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936780);
  v182 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v190 = v175 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v186 = v175 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v178 = v175 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v179 = v175 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v175 - v40;
  v175[1] = a3;
  v185 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v42 = swift_allocObject();
  v42[2] = a17;
  v42[3] = a18;
  v195 = v42;
  v42[4] = a1;
  v43 = swift_allocObject();
  v43[2] = v200;
  v43[3] = a20;
  v43[4] = a1;
  v44 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v44 + 24));
  v45 = *(v44 + 16);
  v180 = (v44 + 16);

  v181 = v44;
  v46 = (v44 + 24);
  v47 = a2;
  v48 = v199;
  os_unfair_lock_unlock(v46);
  v196 = a1;
  v51 = v45;
  v52 = v198;
  v200 = v47;
  v193 = v31;
  v194 = v41;
  v192 = v43;
  if (!v51)
  {
    v92 = v184;
    (*(v182 + 56))();
    v93 = *&v48[14].isa;
    v222 = *&v48[12].isa;
    v223 = v93;
    isa = v48[16].isa;
    v94 = *&v48[6].isa;
    v218 = *&v48[4].isa;
    v219 = v94;
    v95 = *&v48[10].isa;
    v220 = *&v48[8].isa;
    v221 = v95;
    v96 = *&v48[2].isa;
    v216 = *&v48->isa;
    v217 = v96;
    v97 = *(v52 + 112);
    v213 = *(v52 + 96);
    v214 = v97;
    v215 = *(v52 + 128);
    v98 = *(v52 + 48);
    v209 = *(v52 + 32);
    v210 = v98;
    v99 = *(v52 + 80);
    v211 = *(v52 + 64);
    v212 = v99;
    v100 = *(v52 + 16);
    v207 = *v52;
    v208 = v100;
    v101 = v183[3];
    v102 = v183[4];
    __swift_project_boxed_opaque_existential_0(v183, v101);
    swift_beginAccess();
    v103 = *(v47 + 601);
    v104 = *(v102 + 16);
    v105 = sub_188A91E48();
    v106 = v92;
    v104(v205, v103, v92, &v216, &v207, &type metadata for UIAnimatableTransform, v105, v101, v102);
    v91 = v200;
    sub_188A33550();
    swift_beginAccess();
    v231 = v222;
    v232 = v223;
    v233 = isa;
    v227 = v218;
    v228 = v219;
    v229 = v220;
    v230 = v221;
    v225 = v216;
    v226 = v217;
    v240 = v213;
    v241 = v214;
    v242 = v215;
    v236 = v209;
    v237 = v210;
    v238 = v211;
    v239 = v212;
    v234 = v207;
    v235 = v208;
    v86 = v194;
    sub_188AB1454(v106);
    swift_endAccess();
    sub_188AAFF20(v205);
    sub_188A3F5FC(v106, &qword_1EA9368B8);
    goto LABEL_11;
  }

  v54 = v183;
  v53 = v184;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v55 = v193;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v49, v50);
      os_unfair_lock_lock((v51[2] + 16));
      signpost_c2_entryLock_start(v56, v57);
      v58 = *(*v51 + 104);
      swift_beginAccess();
      v59 = v51 + v58;
      v60 = v179;
      sub_188A3F29C(v59, v179, &qword_1EA936780);
      sub_188A3F29C(v60, v53, &qword_1EA936780);
      (*(v182 + 56))(v53, 0, 1, v55);
      v61 = v198;
      v62 = v199;
      v63 = *&v199[14].isa;
      v27[35] = *&v199[12].isa;
      v27[36] = v63;
      isa = v62[16].isa;
      v64 = *&v62[6].isa;
      v27[31] = *&v62[4].isa;
      v27[32] = v64;
      v65 = *&v62[10].isa;
      v27[33] = *&v62[8].isa;
      v27[34] = v65;
      v66 = *&v62[2].isa;
      v27[29] = *&v62->isa;
      v27[30] = v66;
      v67 = *(v61 + 112);
      v27[26] = *(v61 + 96);
      v27[27] = v67;
      v215 = *(v61 + 128);
      v68 = *(v61 + 48);
      v27[22] = *(v61 + 32);
      v27[23] = v68;
      v69 = *(v61 + 80);
      v27[24] = *(v61 + 64);
      v27[25] = v69;
      v70 = *(v61 + 16);
      v27[20] = *v61;
      v27[21] = v70;
      v71 = v54[3];
      v72 = v54[4];
      v183 = __swift_project_boxed_opaque_existential_0(v54, v71);
      v73 = v200;
      swift_beginAccess();
      v74 = *(v73 + 601);
      v75 = *(v72 + 16);
      v76 = sub_188A91E48();
      v75(v205, v74, v53, &v216, &v207, &type metadata for UIAnimatableTransform, v76, v71, v72);
      v77 = v196;
      sub_188A33550();
      swift_beginAccess();
      v78 = v27[36];
      v27[44] = v27[35];
      v27[45] = v78;
      v233 = isa;
      v79 = v27[32];
      v27[40] = v27[31];
      v27[41] = v79;
      v80 = v27[34];
      v27[42] = v27[33];
      v27[43] = v80;
      v81 = v27[30];
      v27[38] = v27[29];
      v27[39] = v81;
      v82 = v27[27];
      v27[53] = v27[26];
      v27[54] = v82;
      v242 = v215;
      v83 = v27[23];
      v27[49] = v27[22];
      v27[50] = v83;
      v84 = v27[25];
      v27[51] = v27[24];
      v27[52] = v84;
      v85 = v27[21];
      v27[47] = v27[20];
      v27[48] = v85;
      v86 = v194;
      sub_188AB1454(v53);
      swift_endAccess();
      sub_188AAFF20(v205);
      sub_188A3F5FC(v53, &qword_1EA9368B8);
      v87 = *v51;
      v88 = v51 + *(*v51 + 112);
      v89 = *v88;
      if (*v88)
      {
        *v88 = 0;
        *(v88 + 1) = 0;
        v89(v77, 0);
        sub_188A55B8C(v89);
        v87 = *v51;
      }

      v90 = v190;
      *(v51 + *(v87 + 120)) = 1;
      sub_188A3F5FC(v179, &qword_1EA936780);
      os_unfair_lock_unlock((v51[2] + 16));

      v91 = v200;
    }

    else
    {
      v107 = *(*v51 + 104);
      swift_beginAccess();
      v108 = v51 + v107;
      v109 = v178;
      sub_188A3F29C(v108, v178, &qword_1EA936780);
      sub_188A3F29C(v109, v53, &qword_1EA936780);
      (*(v182 + 56))(v53, 0, 1, v55);
      v110 = v198;
      v111 = v199;
      v112 = *&v199[14].isa;
      v27[35] = *&v199[12].isa;
      v27[36] = v112;
      isa = v111[16].isa;
      v113 = *&v111[6].isa;
      v27[31] = *&v111[4].isa;
      v27[32] = v113;
      v114 = *&v111[10].isa;
      v27[33] = *&v111[8].isa;
      v27[34] = v114;
      v115 = *&v111[2].isa;
      v27[29] = *&v111->isa;
      v27[30] = v115;
      v116 = *(v110 + 112);
      v27[26] = *(v110 + 96);
      v27[27] = v116;
      v215 = *(v110 + 128);
      v117 = *(v110 + 48);
      v27[22] = *(v110 + 32);
      v27[23] = v117;
      v118 = *(v110 + 80);
      v27[24] = *(v110 + 64);
      v27[25] = v118;
      v119 = *(v110 + 16);
      v27[20] = *v110;
      v27[21] = v119;
      v120 = v54[3];
      v121 = v54[4];
      v183 = __swift_project_boxed_opaque_existential_0(v54, v120);
      v122 = v200;
      swift_beginAccess();
      v123 = *(v122 + 601);
      v124 = *(v121 + 16);
      v125 = sub_188A91E48();
      v124(v205, v123, v53, &v216, &v207, &type metadata for UIAnimatableTransform, v125, v120, v121);
      v126 = v196;
      sub_188A33550();
      swift_beginAccess();
      v127 = v27[36];
      v27[44] = v27[35];
      v27[45] = v127;
      v233 = isa;
      v128 = v27[32];
      v27[40] = v27[31];
      v27[41] = v128;
      v129 = v27[34];
      v27[42] = v27[33];
      v27[43] = v129;
      v130 = v27[30];
      v27[38] = v27[29];
      v27[39] = v130;
      v131 = v27[27];
      v27[53] = v27[26];
      v27[54] = v131;
      v242 = v215;
      v132 = v27[23];
      v27[49] = v27[22];
      v27[50] = v132;
      v133 = v27[25];
      v27[51] = v27[24];
      v27[52] = v133;
      v134 = v27[21];
      v27[47] = v27[20];
      v27[48] = v134;
      v86 = v194;
      sub_188AB1454(v53);
      swift_endAccess();
      sub_188AAFF20(v205);
      sub_188A3F5FC(v53, &qword_1EA9368B8);
      v135 = v51 + *(*v51 + 112);
      v136 = *v135;
      if (*v135)
      {
        *v135 = 0;
        *(v135 + 1) = 0;
        v136(v126, 0);
        sub_188A55B8C(v136);
      }

      sub_188A3F5FC(v178, &qword_1EA936780);
      *(v51 + *(*v51 + 120)) = 1;

      v91 = v200;
LABEL_11:
      v90 = v190;
    }

    v137 = v186;
    sub_188A3F29C(v86, v186, &qword_1EA936780);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368C0);
    swift_allocObject();
    v138 = v189;

    v139 = sub_188AA785C(v137, v187, v138, &qword_1EA936780);

    if (v188)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    v140 = *(v91 + 264);
    v141 = v140;
    v142 = *(v91 + 280);
    v143 = *(v91 + 296);
    v27[16] = v142;
    v27[17] = v143;
    v206 = *(v91 + 312);
    v144 = *(v91 + 200);
    v145 = *(v91 + 232);
    v27[12] = *(v91 + 216);
    v27[13] = v145;
    v27[14] = *(v91 + 248);
    v27[15] = v140;
    v27[10] = *(v91 + 184);
    v27[11] = v144;
    v146 = *(v91 + 296);
    v27[26] = v142;
    v27[27] = v146;
    v215 = *(v91 + 312);
    v147 = *(v91 + 200);
    v148 = *(v91 + 232);
    v27[22] = *(v91 + 216);
    v27[23] = v148;
    v27[24] = *(v91 + 248);
    v27[25] = v141;
    v27[20] = *(v91 + 184);
    v27[21] = v147;
    if (sub_188AB3700(&v207) == 1)
    {
      if (a24)
      {
        goto LABEL_19;
      }

      sub_188AAA46C(v198, v199, v201);
      sub_188AB3714(a23);
      v153 = v201;
    }

    else
    {
      v149 = v27[17];
      v27[35] = v27[16];
      v27[36] = v149;
      isa = v206;
      v150 = v27[13];
      v27[31] = v27[12];
      v27[32] = v150;
      v151 = v27[15];
      v27[33] = v27[14];
      v27[34] = v151;
      v152 = v27[11];
      v153 = &v216;
      v27[29] = v27[10];
      v27[30] = v152;
    }

    sub_188EFFDD0(v153);
LABEL_19:
    v154 = swift_allocObject();
    sub_188AA24A8(v204);
    v155 = v27[7];
    *(v154 + 112) = v27[6];
    *(v154 + 128) = v155;
    *(v154 + 144) = v204[128];
    v156 = v27[3];
    *(v154 + 48) = v27[2];
    *(v154 + 64) = v156;
    v157 = v27[5];
    *(v154 + 80) = v27[4];
    *(v154 + 96) = v157;
    v158 = v27[1];
    *(v154 + 16) = *v27;
    *(v154 + 32) = v158;
    v159 = *(v91 + 752);
    sub_188A3F29C(v86, v90, &qword_1EA936780);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v160 = v90;
      v161 = v176;
      sub_188A3F704(v160, v176, &qword_1EA936778);
      v162 = *(v161 + *(v177 + 64));
      sub_188A3F5FC(v161, &qword_1EA936778);
      v163 = (v162 == 2) | v162;
    }

    else
    {
      v163 = 0;
    }

    v164 = swift_allocObject();
    v165 = v191;
    v166 = v192;
    v164[2] = v139;
    v164[3] = v165;
    v167 = v196;
    v168 = v200;
    v164[4] = v197;
    v164[5] = v168;
    v164[6] = v154;
    v164[7] = v167;
    v169 = v195;
    v164[8] = sub_188F0DC4C;
    v164[9] = v169;
    v164[10] = sub_188F0E0D0;
    v164[11] = v166;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v53 = swift_allocObject();
    *(v53 + 16) = a9;
    *(v53 + 20) = a10;
    *(v53 + 24) = a11;
    *(v53 + 28) = a22;
    *(v53 + 32) = v159;
    *(v53 + 33) = v163 & 1;
    *(v53 + 40) = sub_188F0DCDC;
    *(v53 + 48) = v164;
    v199 = *(v167 + 280);
    v170 = swift_allocObject();
    *(v170 + 16) = v167;
    *(v170 + 24) = v53;
    v171 = swift_allocObject();
    *(v171 + 16) = sub_188F0E074;
    *(v171 + 24) = v170;
    v202[4] = sub_188E3FE50;
    v203 = v171;
    v202[0] = MEMORY[0x1E69E9820];
    v202[1] = 1107296256;
    v202[2] = sub_188A4A968;
    v202[3] = &block_descriptor_1326;
    v54 = _Block_copy(v202);
    v27 = v203;
    swift_retain_n();
    v198 = v139;

    v51 = v195;

    dispatch_sync(v199, v54);
    _Block_release(v54);
    LOBYTE(v167) = swift_isEscapingClosureAtFileLocation();

    if ((v167 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v172);
  v175[-2] = v198;
  v173 = v181;
  os_unfair_lock_lock(v181 + 6);
  sub_188F0E024(v180);
  os_unfair_lock_unlock(v173 + 6);

  sub_188A3F5FC(v194, &qword_1EA936780);
}

uint64_t sub_188EDD634(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float a13, float a14, float a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, double a21, char a22, uint64_t a23, uint64_t a24)
{
  v140 = a6;
  v137 = a5;
  v130 = a4;
  v135 = a24;
  v133 = a23;
  v134 = a19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367A8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = v123 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368C8);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = (v123 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367B0);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v136 = v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v132 = v123 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v126 = v123 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v127 = v123 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v143 = v123 - v49;
  v123[1] = a3;
  v131 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v50 = swift_allocObject();
  v50[2] = a7;
  v50[3] = a8;
  v51 = a1;
  v139 = v50;
  v50[4] = a1;
  v52 = swift_allocObject();
  v52[2] = a17;
  v52[3] = a18;
  v138 = v52;
  v52[4] = a1;
  v53 = *(isEscapingClosureAtFileLocation + 32);
  swift_retain_n();

  os_unfair_lock_lock((v53 + 24));
  v54 = *(v53 + 16);
  v128 = (v53 + 16);

  v129 = v53;
  os_unfair_lock_unlock((v53 + 24));
  v144 = isEscapingClosureAtFileLocation;
  v142 = v51;
  v141 = v39;
  if (!v54)
  {
    v40[7](v38, 1, 1, v39);
    v145[0] = a9;
    v145[1] = a10;
    v149 = a11;
    v150 = a12;
    v78 = v130[3];
    v79 = v130[4];
    __swift_project_boxed_opaque_existential_0(v130, v78);
    swift_beginAccess();
    v80 = *(isEscapingClosureAtFileLocation + 153);
    v81 = *(v79 + 16);
    v82 = sub_188A5FEE8();
    v81(aBlock, v80, v38, v145, &v149, &type metadata for UIAnimatablePoint, v82, v78, v79);
    v83 = sub_188A33550();
    swift_beginAccess();
    v84.n128_f64[0] = a9;
    v85.n128_f64[0] = a10;
    v86.n128_f64[0] = a11;
    v87.n128_f64[0] = a12;
    v74 = v143;
    sub_188AAFF74(v38, aBlock, v131, &qword_1EA9367B0, &unk_18A650F00, &qword_1EA9368C8, &qword_1EA9367A8, v143, v84, v85, v86, v87, v83, &unk_18A650EF8, sub_188EF96B0, sub_188CE5A78, &type metadata for UIAnimatablePoint, sub_188EF69DC);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v38, &qword_1EA9368C8);
    goto LABEL_12;
  }

  v57 = v130;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v58 = v38;
    v59 = v57;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start(v55, v56);
      os_unfair_lock_lock((v54[2] + 16));
      signpost_c2_entryLock_start(v60, v61);
      v62 = *(*v54 + 104);
      swift_beginAccess();
      v63 = v127;
      sub_188A3F29C(v54 + v62, v127, &qword_1EA9367B0);
      sub_188A3F29C(v63, v58, &qword_1EA9367B0);
      v40[7](v58, 0, 1, v141);
      v149 = a9;
      v150 = a10;
      v146 = a11;
      v147 = a12;
      v64 = v58;
      v65 = v59[4];
      __swift_project_boxed_opaque_existential_0(v59, v59[3]);
      swift_beginAccess();
      v66 = *(isEscapingClosureAtFileLocation + 153);
      v67 = *(v65 + 16);
      sub_188A5FEE8();
      v67(aBlock, v66, v64, &v149, &v146);
      isEscapingClosureAtFileLocation = v144;
      v68 = v142;
      v69 = sub_188A33550();
      swift_beginAccess();
      v70.n128_f64[0] = a9;
      v71.n128_f64[0] = a10;
      v72.n128_f64[0] = a11;
      v73.n128_f64[0] = a12;
      v74 = v143;
      sub_188AAFF74(v64, aBlock, v131, &qword_1EA9367B0, &unk_18A650F00, &qword_1EA9368C8, &qword_1EA9367A8, v143, v70, v71, v72, v73, v69, &unk_18A650EF8, sub_188EF96B0, sub_188CE5A78, &type metadata for UIAnimatablePoint, sub_188EF69DC);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v64, &qword_1EA9368C8);
      v75 = *v54;
      v76 = v54 + *(*v54 + 112);
      v77 = *v76;
      if (*v76)
      {
        *v76 = 0;
        *(v76 + 1) = 0;
        v77(v68, 0);
        sub_188A55B8C(v77);
        v75 = *v54;
      }

      *(v54 + *(v75 + 120)) = 1;
      sub_188A3F5FC(v127, &qword_1EA9367B0);
      os_unfair_lock_unlock((v54[2] + 16));
    }

    else
    {
      v88 = *(*v54 + 104);
      swift_beginAccess();
      v89 = v54 + v88;
      v90 = v126;
      sub_188A3F29C(v89, v126, &qword_1EA9367B0);
      sub_188A3F29C(v90, v58, &qword_1EA9367B0);
      v40[7](v58, 0, 1, v141);
      v149 = a9;
      v150 = a10;
      v146 = a11;
      v147 = a12;
      v91 = v57[4];
      __swift_project_boxed_opaque_existential_0(v57, v57[3]);
      swift_beginAccess();
      v92 = *(v144 + 153);
      v93 = *(v91 + 16);
      sub_188A5FEE8();
      isEscapingClosureAtFileLocation = v144;
      v93(aBlock, v92, v58, &v149, &v146);
      v94 = v142;
      v95 = sub_188A33550();
      swift_beginAccess();
      v96.n128_f64[0] = a9;
      v97.n128_f64[0] = a10;
      v98.n128_f64[0] = a11;
      v99.n128_f64[0] = a12;
      v74 = v143;
      sub_188AAFF74(v58, aBlock, v131, &qword_1EA9367B0, &unk_18A650F00, &qword_1EA9368C8, &qword_1EA9367A8, v143, v96, v97, v98, v99, v95, &unk_18A650EF8, sub_188EF96B0, sub_188CE5A78, &type metadata for UIAnimatablePoint, sub_188EF69DC);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v58, &qword_1EA9368C8);
      v100 = v54 + *(*v54 + 112);
      v101 = *v100;
      if (*v100)
      {
        *v100 = 0;
        *(v100 + 1) = 0;
        v101(v94, 0);
        sub_188A55B8C(v101);
      }

      sub_188A3F5FC(v126, &qword_1EA9367B0);
      *(v54 + *(*v54 + 120)) = 1;
    }

LABEL_12:
    v102 = v132;
    sub_188A3F29C(v74, v132, &qword_1EA9367B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368D0);
    swift_allocObject();
    v103 = v135;

    v104 = sub_188AA785C(v102, v133, v103, &qword_1EA9367B0);

    if (v134)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(isEscapingClosureAtFileLocation + 88))
    {
      if (a22)
      {
        goto LABEL_19;
      }

      v105 = (a11 - a9) * a21;
      v106 = (a12 - a10) * a21;
    }

    else
    {
      v105 = *(isEscapingClosureAtFileLocation + 72);
      v106 = *(isEscapingClosureAtFileLocation + 80);
    }

    sub_188EFF9E0(&qword_1EA9367B0, v105, v106);
LABEL_19:
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    *(v107 + 24) = 0;
    *(v107 + 32) = 1;
    v108 = *(isEscapingClosureAtFileLocation + 192);
    v109 = v136;
    sub_188A3F29C(v74, v136, &qword_1EA9367B0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v110 = v124;
      sub_188A3F704(v109, v124, &qword_1EA9367A8);
      v111 = *(v110 + *(v125 + 64));
      sub_188A3F5FC(v110, &qword_1EA9367A8);
      v112 = (v111 == 2) | v111;
    }

    else
    {
      v112 = 0;
    }

    v113 = swift_allocObject();
    v114 = v137;
    v113[2] = v104;
    v113[3] = v114;
    v115 = v144;
    v113[4] = v140;
    v113[5] = v115;
    v141 = v104;
    v116 = v142;
    v113[6] = v107;
    v113[7] = v116;
    v117 = v107;
    v118 = v139;
    v113[8] = sub_188F0E0C0;
    v113[9] = v118;
    v119 = v138;
    v113[10] = sub_188F0E0D0;
    v113[11] = v119;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v38 = swift_allocObject();
    v38[4] = a13;
    v38[5] = a14;
    v38[6] = a15;
    *(v38 + 7) = a20;
    *(v38 + 32) = v108;
    *(v38 + 33) = v112 & 1;
    *(v38 + 5) = sub_188F0DE64;
    *(v38 + 6) = v113;
    v137 = *(v116 + 280);
    v57 = swift_allocObject();
    v57[2] = v116;
    v57[3] = v38;
    v54 = swift_allocObject();
    v54[2] = sub_188F0E074;
    v54[3] = v57;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1364;
    v40 = _Block_copy(aBlock);
    swift_retain_n();

    v144 = v117;

    dispatch_sync(v137, v40);
    _Block_release(v40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v120);
  v121 = v129;
  os_unfair_lock_lock(v129 + 6);
  sub_188F0E024(v128);
  os_unfair_lock_unlock(v121 + 6);

  sub_188A3F5FC(v143, &qword_1EA9367B0);
}

uint64_t sub_188EDE5D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, int a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21)
{
  v26 = *a2;
  v30 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v27 = swift_allocObject();
  v27[2] = *(v26 + 80);
  v27[3] = *(v26 + 88);
  v27[4] = a12;
  v27[5] = a13;
  v27[6] = a1;
  v28 = swift_allocObject();
  v28[2] = a14;
  v28[3] = a15;
  v28[4] = a1;
  swift_retain_n();

  sub_189096CB0(a3, a1, a4, a5, v30, a6, a7, a8, a9, a10, a11, sub_188F0DF7C, v27, sub_188F0E0D0, v28, a16, a17, a18, a19 & 1, a20, a21);
}

void sub_188EDE7AC(void *a1, int a2, void (*a3)(void, void, void, void, void, void, void, void, void, void), uint64_t a4, id *a5, double *a6, double *a7, char a8, ValueMetadata *a9, uint64_t a10)
{
  v11 = v10;
  v633 = a5;
  v634 = a3;
  v635 = a4;
  LODWORD(v631) = a2;
  v632 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v626 - v17;
  if (a9 == &type metadata for UIAnimatableColorMatrix)
  {
    v34 = *(a6 + 3);
    v647 = *(a6 + 2);
    v648 = v34;
    v649 = *(a6 + 4);
    v35 = *(a6 + 1);
    v645 = *a6;
    v646 = v35;
    v36 = *(a7 + 3);
    v638 = *(a7 + 2);
    v639 = v36;
    v640 = *(a7 + 4);
    v37 = *(a7 + 1);
    v636 = *a7;
    v637 = v37;
    if ((a8 & 1) == 0)
    {
      v38 = *(a7 + 3);
      v656 = *(a7 + 2);
      v657 = v38;
      v658 = *(a7 + 4);
      v39 = *(a7 + 1);
      v654 = *a7;
      v655 = v39;
      v40 = *(a6 + 3);
      v668 = *(a6 + 2);
      v669 = v40;
      v670 = *(a6 + 4);
      v41 = *(a6 + 1);
      v666 = *a6;
      v667 = v41;
      if (sub_188F7BDB0(&v654, 0.01))
      {
        return;
      }
    }

    v42 = v11;
    [v11 preferredFrameRateRange];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v633;
    v50 = [(UIView *)v633 __swiftAnimationInfo];
    v51 = v635;
    if (!v50)
    {
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v53 = v49;
      v54 = sub_188A5DF40(v53, sub_188ABE008, v52);

      v55 = v53;
      v51 = v635;
      [(UIView *)v55 set__swiftAnimationInfo:v54];
    }

    v56 = v631 & 1;
    v57 = v634;
    v58 = sub_188C53068(v631 & 1, v634, v51);
    v630 = v59;
    v631 = v58;

    v60 = [v632 context];
    if (v60)
    {

      v632 = 0;
      v61 = sub_188AB3830;
    }

    else
    {
      v113 = swift_allocObject();
      *(v113 + 16) = 1;
      v114 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v115 = swift_allocObject();
      v115[2] = v113;
      v115[3] = v114;
      v632 = v115;
      v61 = sub_188F0E070;
    }

    v629 = v61;
    v116 = v42[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v117 = sub_188AA977C;
    if (v57 == 0xD000000000000020 && 0x800000018A689070 == v51 || (v118 = sub_18A4A86C8(), v117 = sub_188AA977C, (v118 & 1) != 0) || (v117 = sub_188D39390, v57 == 0xD000000000000021) && 0x800000018A6890A0 == v51)
    {
      v119 = v117;
    }

    else if (sub_18A4A86C8())
    {
      v119 = sub_188D39390;
    }

    else
    {
      v119 = 0;
    }

    ObjectType = swift_getObjectType();
    v120 = swift_allocObject();
    *(v120 + 16) = v119;
    *(v120 + 24) = 0;
    *(v120 + 32) = v49;
    *(v120 + 40) = v44;
    *(v120 + 44) = v46;
    *(v120 + 48) = v48;
    *(v120 + 52) = v116 == 2;
    *(v120 + 56) = v56;
    v121 = v635;
    *(v120 + 64) = v57;
    *(v120 + 72) = v121;
    v122 = swift_allocObject();
    *(v122 + 16) = v49;
    *(v122 + 24) = v56;
    *(v122 + 32) = v57;
    *(v122 + 40) = v121;
    v123 = v49;
    v124 = v630;
    v125 = *(v630 + 200);
    v126 = v123;
    swift_bridgeObjectRetain_n();
    v127 = v126;
    sub_188A52E38(v119);
    v125(&v645, &v636, v629, v632, sub_188F0B54C, v120, sub_188F0E0BC, v122, ObjectType, v124);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatableSize)
  {
    v63 = *a6;
    v62 = a6[1];
    v65 = *a7;
    v64 = a7[1];
    *&v666 = *a6;
    *(&v666 + 1) = v62;
    *&v654 = v65;
    *(&v654 + 1) = v64;
    if ((a8 & 1) == 0)
    {
      objc_opt_self();
      v66 = +[UIScreen _mainScreen];
      [v66 scale];
      v68 = v67;

      v69 = vabdd_f64(v62, v64);
      if (vabdd_f64(v63, v65) <= 1.0 / v68 && v69 <= 1.0 / v68)
      {
        return;
      }
    }

    v71 = v11;
    [v11 preferredFrameRateRange];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = v633;
    v79 = [(UIView *)v633 __swiftAnimationInfo];
    v80 = v635;
    if (!v79)
    {
      v81 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v82 = v78;
      v83 = sub_188A5DF40(v82, sub_188ABE008, v81);

      v84 = v82;
      v80 = v635;
      [(UIView *)v84 set__swiftAnimationInfo:v83];
    }

    v85 = v631 & 1;
    v86 = v634;
    v87 = sub_188C527DC(v631 & 1, v634, v80);
    v630 = v88;
    v631 = v87;

    v89 = [v632 context];
    if (v89)
    {

      v632 = 0;
      v90 = sub_188AB3830;
    }

    else
    {
      v161 = swift_allocObject();
      *(v161 + 16) = 1;
      v162 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v163 = swift_allocObject();
      v163[2] = v161;
      v163[3] = v162;
      v632 = v163;
      v90 = sub_188F0E070;
    }

    v629 = v90;
    v164 = v71[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v165 = sub_188AA977C;
    if (v86 == 0xD000000000000020 && 0x800000018A689070 == v80 || (v166 = sub_18A4A86C8(), v165 = sub_188AA977C, (v166 & 1) != 0) || (v165 = sub_188D39390, v86 == 0xD000000000000021) && 0x800000018A6890A0 == v80)
    {
      v119 = v165;
    }

    else if (sub_18A4A86C8())
    {
      v119 = sub_188D39390;
    }

    else
    {
      v119 = 0;
    }

    ObjectType = swift_getObjectType();
    v167 = swift_allocObject();
    *(v167 + 16) = v119;
    *(v167 + 24) = 0;
    *(v167 + 32) = v78;
    *(v167 + 40) = v73;
    *(v167 + 44) = v75;
    *(v167 + 48) = v77;
    *(v167 + 52) = v164 == 2;
    *(v167 + 56) = v85;
    v168 = v635;
    *(v167 + 64) = v86;
    *(v167 + 72) = v168;
    v169 = swift_allocObject();
    *(v169 + 16) = v78;
    *(v169 + 24) = v85;
    *(v169 + 32) = v86;
    *(v169 + 40) = v168;
    v170 = v78;
    v171 = v630;
    v172 = *(v630 + 200);
    v173 = v170;
    swift_bridgeObjectRetain_n();
    v174 = v173;
    sub_188A52E38(v119);
    v172(&v666, &v654, v629, v632, sub_188F0B540, v167, sub_188F0E0BC, v169, ObjectType, v171);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatableColorArray)
  {
    v91 = *a6;
    v92 = *a7;
    *&v666 = *a6;
    *&v654 = v92;
    if ((a8 & 1) == 0 && sub_189149EF0(v92, v91, 0.01))
    {
      return;
    }

    v93 = v11;
    [v11 preferredFrameRateRange];
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v100 = v633;
    v101 = [(UIView *)v633 __swiftAnimationInfo];
    v102 = v635;
    if (!v101)
    {
      v103 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v104 = v100;
      v105 = sub_188A5DF40(v104, sub_188ABE008, v103);

      v106 = v104;
      v102 = v635;
      [(UIView *)v106 set__swiftAnimationInfo:v105];
    }

    v107 = v631 & 1;
    v108 = v634;
    v109 = sub_188CCF924(v631 & 1, v634, v102);
    v630 = v110;
    v631 = v109;

    v111 = [v632 context];
    if (v111)
    {

      v632 = 0;
      v112 = sub_188AB3830;
    }

    else
    {
      v197 = swift_allocObject();
      *(v197 + 16) = 1;
      v198 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v199 = swift_allocObject();
      v199[2] = v197;
      v199[3] = v198;
      v632 = v199;
      v112 = sub_188F0E070;
    }

    v629 = v112;
    v200 = v93[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v201 = sub_188AA977C;
    if (v108 == 0xD000000000000020 && 0x800000018A689070 == v102 || (v202 = sub_18A4A86C8(), v201 = sub_188AA977C, (v202 & 1) != 0) || (v201 = sub_188D39390, v108 == 0xD000000000000021) && 0x800000018A6890A0 == v102)
    {
      v119 = v201;
    }

    else if (sub_18A4A86C8())
    {
      v119 = sub_188D39390;
    }

    else
    {
      v119 = 0;
    }

    ObjectType = swift_getObjectType();
    v203 = swift_allocObject();
    *(v203 + 16) = v119;
    *(v203 + 24) = 0;
    *(v203 + 32) = v100;
    *(v203 + 40) = v95;
    *(v203 + 44) = v97;
    *(v203 + 48) = v99;
    *(v203 + 52) = v200 == 2;
    *(v203 + 56) = v107;
    v204 = v635;
    *(v203 + 64) = v108;
    *(v203 + 72) = v204;
    v205 = swift_allocObject();
    *(v205 + 16) = v100;
    *(v205 + 24) = v107;
    *(v205 + 32) = v108;
    *(v205 + 40) = v204;
    v206 = v100;
    v207 = v630;
    v208 = *(v630 + 200);
    v209 = v206;
    swift_bridgeObjectRetain_n();
    v210 = v209;
    sub_188A52E38(v119);
    v208(&v666, &v654, v629, v632, sub_188F0B528, v203, sub_188F0E0BC, v205, ObjectType, v207);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatableCornerRadii)
  {
    v129 = *a6;
    v128 = a6[1];
    v131 = a6[2];
    v130 = a6[3];
    v133 = a6[4];
    v132 = a6[5];
    v135 = a6[6];
    v134 = a6[7];
    v137 = *a7;
    v136 = a7[1];
    v139 = a7[2];
    v138 = a7[3];
    v141 = a7[4];
    v140 = a7[5];
    v143 = a7[6];
    v142 = a7[7];
    *&v666 = *a6;
    *(&v666 + 1) = v128;
    *&v667 = v131;
    *(&v667 + 1) = v130;
    *&v668 = v133;
    *(&v668 + 1) = v132;
    *&v669 = v135;
    *(&v669 + 1) = v134;
    *&v654 = v137;
    *(&v654 + 1) = v136;
    *&v655 = v139;
    *(&v655 + 1) = v138;
    *&v656 = v141;
    *(&v656 + 1) = v140;
    *&v657 = v143;
    *(&v657 + 1) = v142;
    if ((a8 & 1) != 0 || vabdd_f64(v129, v137) > 0.001 || vabdd_f64(v128, v136) > 0.001 || vabdd_f64(v131, v139) > 0.001 || vabdd_f64(v130, v138) > 0.001 || vabdd_f64(v133, v141) > 0.001 || vabdd_f64(v132, v140) > 0.001 || vabdd_f64(v135, v143) > 0.001 || vabdd_f64(v134, v142) > 0.001)
    {
      v144 = v11;
      [v11 preferredFrameRateRange];
      v146 = v145;
      v148 = v147;
      v150 = v149;
      v151 = v633;
      if (![(UIView *)v633 __swiftAnimationInfo])
      {
        v152 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v153 = v151;
        v154 = sub_188A5DF40(v153, sub_188ABE008, v152);

        [(UIView *)v153 set__swiftAnimationInfo:v154];
      }

      v155 = v631 & 1;
      v156 = v634;
      sub_188ECD198(v631 & 1, v634, v635);
      v631 = v157;

      v158 = [v632 context];
      if (v158)
      {

        v159 = 0;
        v160 = sub_188AB3830;
      }

      else
      {
        v238 = swift_allocObject();
        *(v238 + 16) = 1;
        v239 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v159 = swift_allocObject();
        v159[2] = v238;
        v159[3] = v239;
        v160 = sub_188F0E070;
      }

      v630 = v160;
      v240 = v144[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      v241 = sub_188AA977C;
      v632 = v159;
      if (v156 == 0xD000000000000020 && 0x800000018A689070 == v635 || (v242 = sub_18A4A86C8(), v241 = sub_188AA977C, (v242 & 1) != 0) || (v241 = sub_188D39390, v156 == 0xD000000000000021) && 0x800000018A6890A0 == v635)
      {
        v243 = v241;
        v244 = v635;
      }

      else
      {
        v244 = v635;
        if (sub_18A4A86C8())
        {
          v243 = sub_188D39390;
        }

        else
        {
          v243 = 0;
        }
      }

      v635 = swift_getObjectType();
      v245 = swift_allocObject();
      *(v245 + 16) = v243;
      *(v245 + 24) = 0;
      *(v245 + 32) = v151;
      *(v245 + 40) = v146;
      *(v245 + 44) = v148;
      *(v245 + 48) = v150;
      *(v245 + 52) = v240 == 2;
      *(v245 + 56) = v155;
      v246 = v634;
      *(v245 + 64) = v634;
      *(v245 + 72) = v244;
      v247 = swift_allocObject();
      *(v247 + 16) = v151;
      *(v247 + 24) = v155;
      *(v247 + 32) = v246;
      *(v247 + 40) = v244;
      v248 = v631;
      v249 = v151;
      v250 = *(v631 + 200);
      v251 = v249;
      swift_bridgeObjectRetain_n();
      v252 = v251;
      sub_188A52E38(v243);
      v250(&v666, &v654, v630, v632, sub_188F0B524, v245, sub_188F0E0BC, v247, v635, v248);
      sub_188A55B8C(v243);

      swift_unknownObjectRelease();

      goto LABEL_87;
    }

    return;
  }

  if (a9 == &type metadata for UIAnimatableVector)
  {
    v175 = *a6;
    v176 = *a7;
    *&v666 = *a6;
    *&v654 = v176;
    if (a8 & 1) == 0 && (sub_188BD69E4(v176, v175, 0.001))
    {
      return;
    }

    v177 = v11;
    [v11 preferredFrameRateRange];
    v179 = v178;
    v181 = v180;
    v183 = v182;
    v184 = v633;
    v185 = [(UIView *)v633 __swiftAnimationInfo];
    v186 = v635;
    if (!v185)
    {
      v187 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v188 = v184;
      v189 = sub_188A5DF40(v188, sub_188ABE008, v187);

      v190 = v188;
      v186 = v635;
      [(UIView *)v190 set__swiftAnimationInfo:v189];
    }

    v191 = v631 & 1;
    v192 = v634;
    v193 = sub_188ECD5C8(v631 & 1, v634, v186);
    v630 = v194;
    v631 = v193;

    v195 = [v632 context];
    if (v195)
    {

      v632 = 0;
      v196 = sub_188AB3830;
    }

    else
    {
      v277 = swift_allocObject();
      *(v277 + 16) = 1;
      v278 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v279 = swift_allocObject();
      v279[2] = v277;
      v279[3] = v278;
      v632 = v279;
      v196 = sub_188F0E070;
    }

    v629 = v196;
    v280 = v177[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v281 = sub_188AA977C;
    if (v192 == 0xD000000000000020 && 0x800000018A689070 == v186 || (v282 = sub_18A4A86C8(), v281 = sub_188AA977C, (v282 & 1) != 0) || (v281 = sub_188D39390, v192 == 0xD000000000000021) && 0x800000018A6890A0 == v186)
    {
      v119 = v281;
    }

    else if (sub_18A4A86C8())
    {
      v119 = sub_188D39390;
    }

    else
    {
      v119 = 0;
    }

    ObjectType = swift_getObjectType();
    v283 = swift_allocObject();
    *(v283 + 16) = v119;
    *(v283 + 24) = 0;
    *(v283 + 32) = v184;
    *(v283 + 40) = v179;
    *(v283 + 44) = v181;
    *(v283 + 48) = v183;
    *(v283 + 52) = v280 == 2;
    *(v283 + 56) = v191;
    v284 = v635;
    *(v283 + 64) = v192;
    *(v283 + 72) = v284;
    v285 = swift_allocObject();
    v286 = v192;
    v287 = v285;
    *(v285 + 16) = v184;
    *(v285 + 24) = v191;
    *(v285 + 32) = v286;
    *(v285 + 40) = v284;
    v288 = v630;
    v289 = v184;
    v290 = *(v630 + 200);
    v291 = v289;
    swift_bridgeObjectRetain_n();
    v292 = v291;
    sub_188A52E38(v119);
    v290(&v666, &v654, v629, v632, sub_188F0B50C, v283, sub_188F0E0BC, v287, ObjectType, v288);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatableMeshTransform)
  {
    v211 = *(a6 + 8);
    v212 = *(a6 + 36);
    v213 = *(a7 + 8);
    v214 = *(a7 + 36);
    v215 = *a6;
    v216 = *(a6 + 1);
    v666 = *a6;
    v667 = v216;
    BYTE4(v668) = v212;
    LODWORD(v668) = v211;
    v217 = *a7;
    v218 = *(a7 + 1);
    v654 = *a7;
    v655 = v218;
    BYTE4(v656) = v214;
    LODWORD(v656) = v213;
    v219 = v633;
    v220 = v634;
    v221 = v635;
    v222 = v11;
    if (a8)
    {
      goto LABEL_90;
    }

    v276 = v217;
    if (v215)
    {
      if (v217)
      {
        if (sub_189090B30(v217, v215, 0.00000001))
        {
          return;
        }

        goto LABEL_90;
      }

      v276 = v215;
    }

    else if (!v217)
    {
      return;
    }

    if (sub_189090ADC(v276, 0.00000001))
    {
      return;
    }

LABEL_90:
    [v11 preferredFrameRateRange];
    v224 = v223;
    v226 = v225;
    v228 = v227;
    if (![(UIView *)v219 __swiftAnimationInfo])
    {
      v229 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v230 = v219;
      v231 = sub_188A5DF40(v230, sub_188ABE008, v229);

      v221 = v635;
      [(UIView *)v230 set__swiftAnimationInfo:v231];
    }

    v232 = v631 & 1;
    sub_188ECD978(v631 & 1, v220, v221);
    v234 = v233;

    v235 = [v632 context];
    if (v235)
    {

      v236 = 0;
      v237 = sub_188AB3830;
    }

    else
    {
      v318 = swift_allocObject();
      *(v318 + 16) = 1;
      v319 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v236 = swift_allocObject();
      v236[2] = v318;
      v236[3] = v319;
      v237 = sub_188F0E070;
    }

    v320 = v222[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v631 = v237;
    v632 = v236;
    if (v220 == 0xD000000000000020 && 0x800000018A689070 == v221 || (sub_18A4A86C8() & 1) != 0)
    {
      v119 = sub_188AA977C;
      v321 = v232;
    }

    else
    {
      v321 = v232;
      if (v220 != 0xD000000000000021 || 0x800000018A6890A0 != v221)
      {
        v322 = v234;
        if (sub_18A4A86C8())
        {
          v119 = sub_188D39390;
        }

        else
        {
          v119 = 0;
        }

        goto LABEL_145;
      }

      v119 = sub_188D39390;
    }

    v322 = v234;
LABEL_145:
    v630 = swift_getObjectType();
    v323 = swift_allocObject();
    *(v323 + 16) = v119;
    *(v323 + 24) = 0;
    v324 = v633;
    *(v323 + 32) = v633;
    *(v323 + 40) = v224;
    *(v323 + 44) = v226;
    *(v323 + 48) = v228;
    *(v323 + 52) = v320 == 2;
    v325 = v321;
    *(v323 + 56) = v321;
    v326 = v635;
    *(v323 + 64) = v220;
    *(v323 + 72) = v326;
    v327 = swift_allocObject();
    v328 = v220;
    v329 = v327;
    *(v327 + 16) = v324;
    *(v327 + 24) = v325;
    *(v327 + 32) = v328;
    *(v327 + 40) = v326;
    v330 = v324;
    v331 = *(v322 + 200);
    v332 = v330;
    swift_bridgeObjectRetain_n();
    v333 = v332;
    sub_188A52E38(v119);
    v624 = v322;
    v622 = v630;
    v334 = sub_188F0B508;
LABEL_146:
    v331(&v666, &v654, v631, v632, v334, v323, sub_188F0E0BC, v329, v622, v624);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatableFloat)
  {
    v253 = *a6;
    v254 = *a7;
    *&v666 = *a6;
    *&v654 = v254;
    if ((a8 & 1) == 0 && vabdd_f64(v253, v254) <= 0.001)
    {
      return;
    }

    v255 = v11;
    [v11 preferredFrameRateRange];
    v257 = v256;
    v259 = v258;
    v261 = v260;
    v262 = v633;
    v263 = [(UIView *)v633 __swiftAnimationInfo];
    v264 = v635;
    if (!v263)
    {
      v265 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v266 = v262;
      v267 = sub_188A5DF40(v266, sub_188ABE008, v265);

      v268 = v266;
      v264 = v635;
      [(UIView *)v268 set__swiftAnimationInfo:v267];
    }

    v269 = v631 & 1;
    v270 = v634;
    v631 = sub_188A6D6CC(v631 & 1, v634, v264);
    v272 = v271;

    v273 = [v632 context];
    if (v273)
    {

      v274 = 0;
      v275 = sub_188AB3830;
    }

    else
    {
      v364 = swift_allocObject();
      *(v364 + 16) = 1;
      v365 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v274 = swift_allocObject();
      v274[2] = v364;
      v274[3] = v365;
      v275 = sub_188F0E070;
    }

    v366 = v255[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v632 = v274;
    v630 = v275;
    if (v270 == 0xD000000000000020 && 0x800000018A689070 == v264 || (sub_18A4A86C8() & 1) != 0)
    {
      v119 = sub_188AA977C;
      v367 = v269;
    }

    else
    {
      v367 = v269;
      if (v270 != 0xD000000000000021 || 0x800000018A6890A0 != v264)
      {
        v368 = v272;
        if (sub_18A4A86C8())
        {
          v119 = sub_188D39390;
        }

        else
        {
          v119 = 0;
        }

        goto LABEL_167;
      }

      v119 = sub_188D39390;
    }

    v368 = v272;
LABEL_167:
    v629 = swift_getObjectType();
    v369 = swift_allocObject();
    *(v369 + 16) = v119;
    *(v369 + 24) = 0;
    *(v369 + 32) = v262;
    *(v369 + 40) = v257;
    *(v369 + 44) = v259;
    *(v369 + 48) = v261;
    *(v369 + 52) = v366 == 2;
    v370 = v367;
    *(v369 + 56) = v367;
    v371 = v635;
    *(v369 + 64) = v270;
    *(v369 + 72) = v371;
    v372 = swift_allocObject();
    v373 = v270;
    v374 = v372;
    *(v372 + 16) = v262;
    *(v372 + 24) = v370;
    *(v372 + 32) = v373;
    *(v372 + 40) = v371;
    v375 = v262;
    v376 = *(v368 + 200);
    v377 = v375;
    swift_bridgeObjectRetain_n();
    v378 = v377;
    sub_188A52E38(v119);
    v625 = v368;
    v623 = v629;
    v379 = sub_188F0DFF8;
LABEL_213:
    v376(&v666, &v654, v630, v632, v379, v369, sub_188F0E0BC, v374, v623, v625);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatableNormalizedPoint)
  {
    v294 = *a6;
    v293 = a6[1];
    v296 = *a7;
    v295 = a7[1];
    *&v666 = *a6;
    *(&v666 + 1) = v293;
    *&v654 = v296;
    *(&v654 + 1) = v295;
    if ((a8 & 1) == 0 && vabdd_f64(v294, v296) <= 0.001 && vabdd_f64(v293, v295) <= 0.001)
    {
      return;
    }

    v297 = v11;
    [v11 preferredFrameRateRange];
    v299 = v298;
    v301 = v300;
    v303 = v302;
    v304 = v633;
    v305 = [(UIView *)v633 __swiftAnimationInfo];
    v306 = v635;
    if (!v305)
    {
      v307 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v308 = v304;
      v309 = sub_188A5DF40(v308, sub_188ABE008, v307);

      v310 = v308;
      v306 = v635;
      [(UIView *)v310 set__swiftAnimationInfo:v309];
    }

    v311 = v631 & 1;
    v312 = v634;
    v631 = sub_188D248D0(v631 & 1, v634, v306);
    v314 = v313;

    v315 = [v632 context];
    if (v315)
    {

      v316 = 0;
      v317 = sub_188AB3830;
    }

    else
    {
      v400 = swift_allocObject();
      *(v400 + 16) = 1;
      v401 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v316 = swift_allocObject();
      v316[2] = v400;
      v316[3] = v401;
      v317 = sub_188F0E070;
    }

    v402 = v297[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v632 = v316;
    v630 = v317;
    if (v312 == 0xD000000000000020 && 0x800000018A689070 == v306 || (sub_18A4A86C8() & 1) != 0)
    {
      v119 = sub_188AA977C;
      v403 = v311;
    }

    else
    {
      v403 = v311;
      if (v312 != 0xD000000000000021 || 0x800000018A6890A0 != v306)
      {
        v404 = v314;
        if (sub_18A4A86C8())
        {
          v119 = sub_188D39390;
        }

        else
        {
          v119 = 0;
        }

        goto LABEL_185;
      }

      v119 = sub_188D39390;
    }

    v404 = v314;
LABEL_185:
    v629 = swift_getObjectType();
    v369 = swift_allocObject();
    *(v369 + 16) = v119;
    *(v369 + 24) = 0;
    *(v369 + 32) = v304;
    *(v369 + 40) = v299;
    *(v369 + 44) = v301;
    *(v369 + 48) = v303;
    *(v369 + 52) = v402 == 2;
    v405 = v403;
    *(v369 + 56) = v403;
    v406 = v635;
    *(v369 + 64) = v312;
    *(v369 + 72) = v406;
    v407 = swift_allocObject();
    v408 = v312;
    v374 = v407;
    *(v407 + 16) = v304;
    *(v407 + 24) = v405;
    *(v407 + 32) = v408;
    *(v407 + 40) = v406;
    v409 = v304;
    v376 = *(v404 + 200);
    v410 = v409;
    swift_bridgeObjectRetain_n();
    v411 = v410;
    sub_188A52E38(v119);
    v625 = v404;
    v623 = v629;
    v379 = sub_188F0B4FC;
    goto LABEL_213;
  }

  if (a9 == &type metadata for UIAnimatableColor)
  {
    v336 = *a6;
    v335 = a6[1];
    v338 = a6[2];
    v337 = a6[3];
    v340 = *a7;
    v339 = a7[1];
    v342 = a7[2];
    v341 = a7[3];
    *&v666 = *a6;
    *(&v666 + 1) = v335;
    *&v667 = v338;
    *(&v667 + 1) = v337;
    *&v654 = v340;
    *(&v654 + 1) = v339;
    *&v655 = v342;
    *(&v655 + 1) = v341;
    if ((a8 & 1) == 0 && vabdd_f64(v336, v340) <= 0.01 && vabdd_f64(v335, v339) <= 0.01 && vabdd_f64(v338, v342) <= 0.01 && vabdd_f64(v337, v341) <= 0.01)
    {
      return;
    }

    v343 = v11;
    [v11 preferredFrameRateRange];
    v345 = v344;
    v347 = v346;
    v349 = v348;
    v350 = v633;
    v351 = [(UIView *)v633 __swiftAnimationInfo];
    v352 = v635;
    if (!v351)
    {
      v353 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v354 = v350;
      v355 = sub_188A5DF40(v354, sub_188ABE008, v353);

      v356 = v354;
      v352 = v635;
      [(UIView *)v356 set__swiftAnimationInfo:v355];
    }

    v357 = v631 & 1;
    v358 = v634;
    v631 = sub_188C52214(v631 & 1, v634, v352);
    v360 = v359;

    v361 = [v632 context];
    if (v361)
    {

      v362 = 0;
      v363 = sub_188AB3830;
    }

    else
    {
      v439 = swift_allocObject();
      *(v439 + 16) = 1;
      v440 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v362 = swift_allocObject();
      v362[2] = v439;
      v362[3] = v440;
      v363 = sub_188F0E070;
    }

    v441 = v343[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v632 = v362;
    v630 = v363;
    if (v358 == 0xD000000000000020 && 0x800000018A689070 == v352 || (sub_18A4A86C8() & 1) != 0)
    {
      v119 = sub_188AA977C;
      v442 = v357;
    }

    else
    {
      v442 = v357;
      if (v358 != 0xD000000000000021 || 0x800000018A6890A0 != v352)
      {
        v443 = v360;
        if (sub_18A4A86C8())
        {
          v119 = sub_188D39390;
        }

        else
        {
          v119 = 0;
        }

        goto LABEL_212;
      }

      v119 = sub_188D39390;
    }

    v443 = v360;
LABEL_212:
    v629 = swift_getObjectType();
    v369 = swift_allocObject();
    *(v369 + 16) = v119;
    *(v369 + 24) = 0;
    *(v369 + 32) = v350;
    *(v369 + 40) = v345;
    *(v369 + 44) = v347;
    *(v369 + 48) = v349;
    *(v369 + 52) = v441 == 2;
    v444 = v442;
    *(v369 + 56) = v442;
    v445 = v635;
    *(v369 + 64) = v358;
    *(v369 + 72) = v445;
    v446 = swift_allocObject();
    v447 = v358;
    v374 = v446;
    *(v446 + 16) = v350;
    *(v446 + 24) = v444;
    *(v446 + 32) = v447;
    *(v446 + 40) = v445;
    v448 = v350;
    v376 = *(v443 + 200);
    v449 = v448;
    swift_bridgeObjectRetain_n();
    v450 = v449;
    sub_188A52E38(v119);
    v625 = v443;
    v623 = v629;
    v379 = sub_188F0B4F8;
    goto LABEL_213;
  }

  if (a9 == &type metadata for UIAnimatableScaledFloat)
  {
    v380 = *a6;
    v381 = *a7;
    *&v666 = *a6;
    *&v654 = v381;
    v382 = v633;
    v383 = v634;
    v384 = v635;
    v385 = v11;
    if ((a8 & 1) == 0)
    {
      if (qword_1EA931200 != -1)
      {
        swift_once();
      }

      if (vabdd_f64(v380, v381) <= *&qword_1EA994F30)
      {
        return;
      }
    }

    [v11 preferredFrameRateRange];
    v387 = v386;
    v389 = v388;
    v391 = v390;
    if (![(UIView *)v382 __swiftAnimationInfo])
    {
      v392 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v393 = v382;
      v394 = sub_188A5DF40(v393, sub_188ABE008, v392);

      v384 = v635;
      [(UIView *)v393 set__swiftAnimationInfo:v394];
    }

    LODWORD(v631) = v631 & 1;
    sub_188A91A10(v631, v383, v384);
    v396 = v395;

    v397 = [v632 context];
    if (v397)
    {

      v398 = 0;
      v399 = sub_188AB3830;
    }

    else
    {
      v480 = swift_allocObject();
      *(v480 + 16) = 1;
      v481 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v398 = swift_allocObject();
      v398[2] = v480;
      v398[3] = v481;
      v399 = sub_188F0E070;
    }

    v630 = v399;
    v482 = v385[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v483 = sub_188AA977C;
    v632 = v398;
    if (v383 == 0xD000000000000020 && 0x800000018A689070 == v384 || (v484 = sub_18A4A86C8(), v483 = sub_188AA977C, (v484 & 1) != 0) || (v483 = sub_188D39390, v383 == 0xD000000000000021) && 0x800000018A6890A0 == v384)
    {
      v119 = v483;
    }

    else if (sub_18A4A86C8())
    {
      v119 = sub_188D39390;
    }

    else
    {
      v119 = 0;
    }

    v629 = swift_getObjectType();
    v485 = swift_allocObject();
    *(v485 + 16) = v119;
    *(v485 + 24) = 0;
    *(v485 + 32) = v382;
    *(v485 + 40) = v387;
    *(v485 + 44) = v389;
    *(v485 + 48) = v391;
    *(v485 + 52) = v482 == 2;
    v486 = v631;
    *(v485 + 56) = v631;
    v487 = v635;
    *(v485 + 64) = v383;
    *(v485 + 72) = v487;
    v488 = swift_allocObject();
    v489 = v383;
    v490 = v488;
    *(v488 + 16) = v382;
    *(v488 + 24) = v486;
    *(v488 + 32) = v489;
    *(v488 + 40) = v487;
    v491 = v382;
    v492 = *(v396 + 200);
    v493 = v491;
    swift_bridgeObjectRetain_n();
    v494 = v493;
    sub_188A52E38(v119);
    v492(&v666, &v654, v630, v632, sub_188F0B4F4, v485, sub_188F0E0BC, v490, v629, v396);
LABEL_86:
    sub_188A55B8C(v119);

    swift_unknownObjectRelease();

LABEL_87:

    return;
  }

  if (a9 == &type metadata for UIAnimatableRect)
  {
    v413 = *a6;
    v412 = a6[1];
    v415 = a6[2];
    v414 = a6[3];
    v416 = *a7;
    v417 = a7[1];
    v418 = a7[2];
    v419 = a7[3];
    *&v666 = *a6;
    *(&v666 + 1) = v412;
    *&v667 = v415;
    *(&v667 + 1) = v414;
    *&v654 = v416;
    *(&v654 + 1) = v417;
    *&v655 = v418;
    *(&v655 + 1) = v419;
    v420 = v633;
    v421 = v634;
    v422 = v635;
    v423 = v11;
    if ((a8 & 1) == 0)
    {
      if (qword_1ED48C638 != -1)
      {
        v629 = *&v416;
        v630 = *&v418;
        ObjectType = *&v412;
        swift_once();
        v412 = *&ObjectType;
        v416 = *&v629;
        v418 = *&v630;
      }

      if (vabdd_f64(v413, v416) <= *&xmmword_1ED4A3470 && vabdd_f64(v412, v417) <= *&xmmword_1ED4A3470 && vabdd_f64(v415, v418) <= *(&xmmword_1ED4A3470 + 1) && vabdd_f64(v414, v419) <= *(&xmmword_1ED4A3470 + 1))
      {
        return;
      }
    }

    [v11 preferredFrameRateRange];
    v425 = v424;
    v427 = v426;
    v429 = v428;
    if (![(UIView *)v420 __swiftAnimationInfo])
    {
      v430 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v431 = v420;
      v432 = sub_188A5DF40(v431, sub_188ABE008, v430);

      v422 = v635;
      [(UIView *)v431 set__swiftAnimationInfo:v432];
    }

    v433 = v631 & 1;
    sub_188A5EF10(v631 & 1, v421, v422);
    v435 = v434;

    v436 = [v632 context];
    if (v436)
    {

      v437 = 0;
      v438 = sub_188AB3830;
    }

    else
    {
      v527 = swift_allocObject();
      *(v527 + 16) = 1;
      v528 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v437 = swift_allocObject();
      v437[2] = v527;
      v437[3] = v528;
      v438 = sub_188F0E070;
    }

    v529 = v423[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v631 = v438;
    v632 = v437;
    if (v421 == 0xD000000000000020 && 0x800000018A689070 == v422 || (sub_18A4A86C8() & 1) != 0)
    {
      v119 = sub_188AA977C;
      v530 = v433;
    }

    else
    {
      v530 = v433;
      if (v421 != 0xD000000000000021 || 0x800000018A6890A0 != v422)
      {
        v531 = v435;
        if (sub_18A4A86C8())
        {
          v119 = sub_188D39390;
        }

        else
        {
          v119 = 0;
        }

        goto LABEL_255;
      }

      v119 = sub_188D39390;
    }

    v531 = v435;
LABEL_255:
    v630 = swift_getObjectType();
    v323 = swift_allocObject();
    *(v323 + 16) = v119;
    *(v323 + 24) = 0;
    v532 = v633;
    *(v323 + 32) = v633;
    *(v323 + 40) = v425;
    *(v323 + 44) = v427;
    *(v323 + 48) = v429;
    *(v323 + 52) = v529 == 2;
    v533 = v530;
    *(v323 + 56) = v530;
    v534 = v635;
    *(v323 + 64) = v421;
    *(v323 + 72) = v534;
    v535 = swift_allocObject();
    v536 = v421;
    v329 = v535;
    *(v535 + 16) = v532;
    *(v535 + 24) = v533;
    *(v535 + 32) = v536;
    *(v535 + 40) = v534;
    v537 = v532;
    v331 = *(v531 + 200);
    v538 = v537;
    swift_bridgeObjectRetain_n();
    v539 = v538;
    sub_188A52E38(v119);
    v624 = v531;
    v622 = v630;
    v334 = sub_188F0DFFC;
    goto LABEL_146;
  }

  if (a9 == &type metadata for UIAnimatableNormalizedRect)
  {
    v452 = *a6;
    v451 = a6[1];
    v454 = a6[2];
    v453 = a6[3];
    v456 = *a7;
    v455 = a7[1];
    v458 = a7[2];
    v457 = a7[3];
    *&v666 = *a6;
    *(&v666 + 1) = v451;
    *&v667 = v454;
    *(&v667 + 1) = v453;
    *&v654 = v456;
    *(&v654 + 1) = v455;
    *&v655 = v458;
    *(&v655 + 1) = v457;
    if ((a8 & 1) == 0 && vabdd_f64(v452, v456) <= 0.001 && vabdd_f64(v451, v455) <= 0.001 && vabdd_f64(v454, v458) <= 0.001 && vabdd_f64(v453, v457) <= 0.001)
    {
      return;
    }

    v459 = v11;
    [v11 preferredFrameRateRange];
    v461 = v460;
    v463 = v462;
    v465 = v464;
    v466 = v633;
    v467 = [(UIView *)v633 __swiftAnimationInfo];
    v469 = v634;
    v468 = v635;
    if (!v467)
    {
      v470 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v471 = v466;
      v472 = sub_188A5DF40(v471, sub_188ABE008, v470);

      v473 = v471;
      v468 = v635;
      [(UIView *)v473 set__swiftAnimationInfo:v472];
    }

    v474 = v631 & 1;
    v631 = sub_188ECDE44(v631 & 1, v469, v468);
    v476 = v475;

    v477 = [v632 context];
    if (v477)
    {

      v478 = 0;
      v479 = sub_188AB3830;
    }

    else
    {
      v563 = swift_allocObject();
      *(v563 + 16) = 1;
      v564 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v478 = swift_allocObject();
      v478[2] = v563;
      v478[3] = v564;
      v479 = sub_188F0E070;
    }

    v565 = v459[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v632 = v478;
    v630 = v479;
    if (v469 == 0xD000000000000020 && 0x800000018A689070 == v468 || (sub_18A4A86C8() & 1) != 0)
    {
      v119 = sub_188AA977C;
      v566 = v474;
    }

    else
    {
      v566 = v474;
      if (v469 != 0xD000000000000021 || 0x800000018A6890A0 != v468)
      {
        v567 = v476;
        if (sub_18A4A86C8())
        {
          v119 = sub_188D39390;
        }

        else
        {
          v119 = 0;
        }

        goto LABEL_277;
      }

      v119 = sub_188D39390;
    }

    v567 = v476;
LABEL_277:
    v629 = swift_getObjectType();
    v369 = swift_allocObject();
    *(v369 + 16) = v119;
    *(v369 + 24) = 0;
    *(v369 + 32) = v466;
    *(v369 + 40) = v461;
    *(v369 + 44) = v463;
    *(v369 + 48) = v465;
    *(v369 + 52) = v565 == 2;
    v568 = v566;
    *(v369 + 56) = v566;
    v569 = v635;
    *(v369 + 64) = v469;
    *(v369 + 72) = v569;
    v570 = swift_allocObject();
    v571 = v469;
    v374 = v570;
    *(v570 + 16) = v466;
    *(v570 + 24) = v568;
    *(v570 + 32) = v571;
    *(v570 + 40) = v569;
    v572 = v466;
    v376 = *(v567 + 200);
    v573 = v572;
    swift_bridgeObjectRetain_n();
    v574 = v573;
    sub_188A52E38(v119);
    v625 = v567;
    v623 = v629;
    v379 = sub_188F0B4F0;
    goto LABEL_213;
  }

  if (a9 == &type metadata for UIAnimatableTransform)
  {
    v495 = *(a6 + 7);
    v651 = *(a6 + 6);
    v652 = v495;
    v653 = *(a6 + 128);
    v496 = *(a6 + 3);
    v647 = *(a6 + 2);
    v648 = v496;
    v497 = *(a6 + 5);
    v649 = *(a6 + 4);
    v650 = v497;
    v498 = *(a6 + 1);
    v645 = *a6;
    v646 = v498;
    v499 = *(a7 + 7);
    v642 = *(a7 + 6);
    v643 = v499;
    v644 = *(a7 + 128);
    v500 = *(a7 + 3);
    v638 = *(a7 + 2);
    v639 = v500;
    v501 = *(a7 + 5);
    v640 = *(a7 + 4);
    v641 = v501;
    v502 = *(a7 + 1);
    v636 = *a7;
    v637 = v502;
    if ((a8 & 1) == 0)
    {
      objc_opt_self();
      v503 = +[UIScreen _mainScreen];
      [v503 scale];
      v505 = v504;

      v660 = v642;
      v661 = v643;
      v662 = v644;
      v656 = v638;
      v657 = v639;
      v658 = v640;
      v659 = v641;
      v654 = v636;
      v655 = v637;
      v663 = xmmword_18A650B70;
      v664 = 1.0 / v505;
      v665 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
      v672 = v651;
      v673 = v652;
      v674 = v653;
      v668 = v647;
      v669 = v648;
      v670 = v649;
      v671 = v650;
      v666 = v645;
      v667 = v646;
      if (sub_189179CE0(&v654, &v663))
      {
        return;
      }
    }

    v506 = v11;
    [v11 preferredFrameRateRange];
    v508 = v507;
    v510 = v509;
    v512 = v511;
    v513 = v633;
    v514 = [(UIView *)v633 __swiftAnimationInfo];
    v515 = v635;
    if (!v514)
    {
      v516 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v517 = v513;
      v518 = sub_188A5DF40(v517, sub_188ABE008, v516);

      v519 = v517;
      v515 = v635;
      [(UIView *)v519 set__swiftAnimationInfo:v518];
    }

    v520 = v631 & 1;
    v521 = v634;
    v631 = sub_188A92230(v631 & 1, v634, v515);
    v523 = v522;

    v524 = [v632 context];
    if (v524)
    {

      v525 = 0;
      v526 = sub_188AB3830;
    }

    else
    {
      v594 = swift_allocObject();
      *(v594 + 16) = 1;
      v595 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v525 = swift_allocObject();
      v525[2] = v594;
      v525[3] = v595;
      v526 = sub_188F0E070;
    }

    v596 = v506[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v632 = v525;
    v630 = v526;
    if (v521 == 0xD000000000000020 && 0x800000018A689070 == v515 || (sub_18A4A86C8() & 1) != 0)
    {
      v119 = sub_188AA977C;
      v597 = v520;
    }

    else
    {
      v597 = v520;
      if (v521 != 0xD000000000000021 || 0x800000018A6890A0 != v515)
      {
        v598 = v523;
        if (sub_18A4A86C8())
        {
          v119 = sub_188D39390;
        }

        else
        {
          v119 = 0;
        }

        goto LABEL_301;
      }

      v119 = sub_188D39390;
    }

    v598 = v523;
LABEL_301:
    v629 = swift_getObjectType();
    v599 = swift_allocObject();
    *(v599 + 16) = v119;
    *(v599 + 24) = 0;
    *(v599 + 32) = v513;
    *(v599 + 40) = v508;
    *(v599 + 44) = v510;
    *(v599 + 48) = v512;
    *(v599 + 52) = v596 == 2;
    v600 = v597;
    *(v599 + 56) = v597;
    v601 = v635;
    *(v599 + 64) = v521;
    *(v599 + 72) = v601;
    v602 = swift_allocObject();
    v603 = v521;
    v604 = v602;
    *(v602 + 16) = v513;
    *(v602 + 24) = v600;
    *(v602 + 32) = v603;
    *(v602 + 40) = v601;
    v605 = v513;
    v606 = *(v598 + 200);
    v607 = v605;
    swift_bridgeObjectRetain_n();
    v608 = v607;
    sub_188A52E38(v119);
    v606(&v645, &v636, v630, v632, sub_188F0B4EC, v599, sub_188F0E0BC, v604, v629, v598);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatablePoint)
  {
    v541 = *a6;
    v540 = a6[1];
    v543 = *a7;
    v542 = a7[1];
    *&v666 = *a6;
    *(&v666 + 1) = v540;
    *&v654 = v543;
    *(&v654 + 1) = v542;
    v544 = v633;
    v545 = v634;
    v546 = v635;
    v547 = v11;
    if ((a8 & 1) == 0)
    {
      if (qword_1ED48D080 != -1)
      {
        swift_once();
      }

      if (vabdd_f64(v541, v543) <= *&qword_1ED4A3498 && vabdd_f64(v540, v542) <= *&qword_1ED4A3498)
      {
        return;
      }
    }

    [v11 preferredFrameRateRange];
    v549 = v548;
    v551 = v550;
    v553 = v552;
    if (![(UIView *)v544 __swiftAnimationInfo])
    {
      v554 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v555 = v544;
      v556 = sub_188A5DF40(v555, sub_188ABE008, v554);

      v546 = v635;
      [(UIView *)v555 set__swiftAnimationInfo:v556];
    }

    v557 = v631 & 1;
    sub_188A5FF74(v631 & 1, v545, v546);
    v559 = v558;

    v560 = [v632 context];
    if (v560)
    {

      v561 = 0;
      v562 = sub_188AB3830;
    }

    else
    {
      v609 = swift_allocObject();
      *(v609 + 16) = 1;
      v610 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v561 = swift_allocObject();
      v561[2] = v609;
      v561[3] = v610;
      v562 = sub_188F0E070;
    }

    v611 = v547[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v631 = v562;
    v632 = v561;
    if (v545 == 0xD000000000000020 && 0x800000018A689070 == v546 || (sub_18A4A86C8() & 1) != 0)
    {
      v119 = sub_188AA977C;
      v612 = v557;
    }

    else
    {
      v612 = v557;
      if (v545 != 0xD000000000000021 || 0x800000018A6890A0 != v546)
      {
        v613 = v559;
        if (sub_18A4A86C8())
        {
          v119 = sub_188D39390;
        }

        else
        {
          v119 = 0;
        }

        goto LABEL_308;
      }

      v119 = sub_188D39390;
    }

    v613 = v559;
LABEL_308:
    v630 = swift_getObjectType();
    v323 = swift_allocObject();
    *(v323 + 16) = v119;
    *(v323 + 24) = 0;
    v614 = v633;
    *(v323 + 32) = v633;
    *(v323 + 40) = v549;
    *(v323 + 44) = v551;
    *(v323 + 48) = v553;
    *(v323 + 52) = v611 == 2;
    v615 = v612;
    *(v323 + 56) = v612;
    v616 = v635;
    *(v323 + 64) = v545;
    *(v323 + 72) = v616;
    v617 = swift_allocObject();
    v618 = v545;
    v329 = v617;
    *(v617 + 16) = v614;
    *(v617 + 24) = v615;
    *(v617 + 32) = v618;
    *(v617 + 40) = v616;
    v619 = v614;
    v331 = *(v613 + 200);
    v620 = v619;
    swift_bridgeObjectRetain_n();
    v621 = v620;
    sub_188A52E38(v119);
    v624 = v613;
    v622 = v630;
    v334 = sub_188F0E000;
    goto LABEL_146;
  }

  if ((a8 & 1) != 0 || ((*(a10 + 24))(a9, a10), v19 = (*(a10 + 48))(a7, v18, a9, a10), (*(v16 + 8))(v18, AssociatedTypeWitness), (v19 & 1) == 0))
  {
    [v11 preferredFrameRateRange];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    if (![(UIView *)v633 __swiftAnimationInfo])
    {
      v26 = swift_allocObject();
      v27 = v633;
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v28 = v27;
      v29 = sub_188A5DF40(v28, sub_188ABE008, v26);

      [(UIView *)v28 set__swiftAnimationInfo:v29];
    }

    LODWORD(v629) = v631 & 1;
    v631 = sub_188D48B28(v629, v634, v635, a9, a9, a10);
    v31 = v30;

    v32 = [v632 context];
    if (v32)
    {

      v632 = 0;
      v33 = sub_188AB3830;
    }

    else
    {
      v575 = swift_allocObject();
      *(v575 + 16) = 1;
      v576 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v577 = swift_allocObject();
      v577[2] = v575;
      v577[3] = v576;
      v632 = v577;
      v33 = sub_188F0E070;
    }

    ObjectType = v33;
    v578 = v11[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v579 = sub_188AA977C;
    v630 = v31;
    if (v634 == 0xD000000000000020 && 0x800000018A689070 == v635 || (v580 = v634, v581 = sub_18A4A86C8(), v579 = sub_188AA977C, (v581 & 1) != 0) || (v579 = sub_188D39390, v580 == 0xD000000000000021) && 0x800000018A6890A0 == v635)
    {
      v582 = v579;
    }

    else if (sub_18A4A86C8())
    {
      v582 = sub_188D39390;
    }

    else
    {
      v582 = 0;
    }

    v626 = v582;
    v583 = v578 == 2;
    v627 = swift_getObjectType();
    v584 = swift_allocObject();
    *(v584 + 16) = a9;
    *(v584 + 24) = a10;
    *(v584 + 32) = v582;
    *(v584 + 40) = 0;
    v585 = v633;
    *(v584 + 48) = v633;
    *(v584 + 56) = v21;
    *(v584 + 60) = v23;
    *(v584 + 64) = v25;
    *(v584 + 68) = v583;
    v586 = v629;
    *(v584 + 72) = v629;
    v587 = v634;
    v588 = v635;
    *(v584 + 80) = v634;
    *(v584 + 88) = v588;
    v589 = swift_allocObject();
    *(v589 + 16) = v585;
    *(v589 + 24) = v586;
    *(v589 + 32) = v587;
    *(v589 + 40) = v588;
    v590 = v630;
    v634 = *(v630 + 200);
    v591 = v585;
    swift_bridgeObjectRetain_n();
    v592 = v591;
    v593 = v626;
    sub_188A52E38(v626);
    v634(a6, a7, ObjectType, v632, sub_188F0B4A4, v584, sub_188F0E0BC, v589, v627, v590);
    sub_188A55B8C(v593);

    swift_unknownObjectRelease();

    goto LABEL_87;
  }
}

void *sub_188EE24E4(double a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7, uint64_t a8, char a9, char a10, id *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  (*(a14 + 80))(v22, a13, a14);
  if (a6)
  {
    a6(v22);
  }

  sub_188A55598(v22, v21);
  result = (*(a14 + 88))(v20, v22, a13, a14);
  if ((LODWORD(a2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 9.2234e18)
  {
    sub_188AAC950(v21, v20, a2, a9 & 1, a10 & 1, a11, a12, a5);
    sub_188A3F5FC(v20, &qword_1EA934050);
    sub_188A3F5FC(v21, &qword_1EA934050);
    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_188EE2660()
{
  v2.receiver = v0;
  v2.super_class = _s23InProcessAnimationStateCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_188EE26A8()
{
  result = qword_1EA9364A0;
  if (!qword_1EA9364A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9364A0);
  }

  return result;
}

double sub_188EE26FC(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3 < 0)
  {
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v4 = *(a1 + 48);
    if (*(a1 + 24) & a2)
    {
      v4 = 0.0;
    }

    if (v3 & a2)
    {
      v6 = 0.0;
    }
  }

  v7 = 6.28318531 / v4 * (6.28318531 / v4);
  v8 = sqrt(v7);
  *(v2 + 56) = v7;
  *(v2 + 64) = v8 + v8;
  *(v2 + 193) = v4 == 0.0;
  v9 = 6.28318531 / v6 * (6.28318531 / v6);
  v10 = sqrt(v9);
  *(v2 + 88) = v9;
  *(v2 + 96) = v10 + v10;
  *(v2 + 194) = v6 == 0.0;
  v11 = 6.28318531 / v5 * (6.28318531 / v5);
  v12 = sqrt(v11);
  *(v2 + 176) = v11;
  *(v2 + 184) = v12 + v12;
  *(v2 + 195) = v5 == 0.0;
  v13 = *a1;
  v14 = *(a1 + 8);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v15 = *a1;
    *(v2 + 32) = v13;
    v16 = 40;
    v17 = v14;
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 24);
  v15 = 6.28318531 / v13 * (6.28318531 / v13);
  v21 = sqrt(v15);
  v17 = (v21 + v21) * v14;
  *(v2 + 32) = v15;
  *(v2 + 40) = v17;
  *(v2 + 48) = v14;
  *(v2 + 80) = v13;
  if (v20)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v2 = v18;
    if (v3)
    {
LABEL_10:
      if (v4 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v16 = 16;
  v14 = v19;
LABEL_17:
  *(v2 + v16) = v14;
  if (v4 == 0.0)
  {
LABEL_11:
    *v2 = *(v2 + 48);
    *(v2 + 8) = 0;
  }

LABEL_12:
  if (v6 == 0.0)
  {
    *(v2 + 16) = *(v2 + 80);
    *(v2 + 24) = 0;
  }

  result = v17 / v15;
  *(v2 + 200) = v17 / v15;
  return result;
}

double sub_188EE284C(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3 < 0)
  {
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v4 = *(a1 + 48);
    if (*(a1 + 24) & a2)
    {
      v4 = 0.0;
    }

    if (v3 & a2)
    {
      v6 = 0.0;
    }
  }

  v7 = 6.28318531 / v4 * (6.28318531 / v4);
  v8 = sqrt(v7);
  *(v2 + 56) = v7;
  *(v2 + 64) = v8 + v8;
  *(v2 + 169) = v4 == 0.0;
  v9 = 6.28318531 / v6 * (6.28318531 / v6);
  v10 = sqrt(v9);
  *(v2 + 88) = v9;
  *(v2 + 96) = v10 + v10;
  *(v2 + 170) = v6 == 0.0;
  v11 = 6.28318531 / v5 * (6.28318531 / v5);
  v12 = sqrt(v11);
  *(v2 + 152) = v11;
  *(v2 + 160) = v12 + v12;
  *(v2 + 171) = v5 == 0.0;
  v13 = *a1;
  v14 = *(a1 + 8);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v15 = *a1;
    *(v2 + 32) = v13;
    v16 = 40;
    v17 = v14;
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 24);
  v15 = 6.28318531 / v13 * (6.28318531 / v13);
  v21 = sqrt(v15);
  v17 = (v21 + v21) * v14;
  *(v2 + 32) = v15;
  *(v2 + 40) = v17;
  *(v2 + 48) = v14;
  *(v2 + 80) = v13;
  if (v20)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v2 = v18;
    if (v3)
    {
LABEL_10:
      if (v4 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v16 = 16;
  v14 = v19;
LABEL_17:
  *(v2 + v16) = v14;
  if (v4 == 0.0)
  {
LABEL_11:
    *v2 = *(v2 + 48);
    *(v2 + 8) = 0;
  }

LABEL_12:
  if (v6 == 0.0)
  {
    *(v2 + 16) = *(v2 + 80);
    *(v2 + 24) = 0;
  }

  result = v17 / v15;
  *(v2 + 176) = v17 / v15;
  return result;
}