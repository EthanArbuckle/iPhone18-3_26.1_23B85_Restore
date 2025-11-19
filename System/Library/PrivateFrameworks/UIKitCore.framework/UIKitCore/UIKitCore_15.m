uint64_t sub_188C1979C(uint64_t a1)
{

  v4 = sub_188B28038(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }
}

uint64_t sub_188C198F8()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_188C19934(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E20);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_18A4A8878();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_188C19C30(uint64_t a1, char a2)
{
  v5 = sub_18A4A4A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *&v2[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model];
  if (a2)
  {
    if (*(v10 + 24) == 1)
    {
      v11 = v7;
      MEMORY[0x1EEE9AC00](v7);
      *&v38[-16] = v2;
      *&v38[-8] = a1;
      aBlock = 0;
      sub_18A4A6C78();
      sub_18A4A4488();
      v12 = sub_18A4A4478();
      if (v12)
      {

        v12 = sub_18A4A4458();
        if ((v12 & 1) == 0)
        {
          sub_188FB7728();
          sub_188FB7A3C(v9);
          v12 = (*(v6 + 8))(v9, v11);
        }
      }

      MEMORY[0x1EEE9AC00](v12);
      *&v38[-16] = sub_1890A7910;
      *&v38[-8] = &v38[-32];
      sub_18A4A4D58();
    }

    else
    {
      v16 = v2;
      swift_getKeyPath();
      aBlock = v10;
      sub_188AF0C98();
      sub_18A4A2C08();

      v18 = sub_188B28038(v17, a1);

      if ((v18 & 1) == 0)
      {

        sub_188C1979C(v19);
        sub_188AEFC0C();
      }

      v20 = [*&v2[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_hostingView] viewWithTag_];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 snapshotViewAfterScreenUpdates_];
        if (v22)
        {
          v23 = v22;
          v24 = objc_opt_self();
          v25 = swift_allocObject();
          v25[2] = v23;
          v25[3] = v16;
          v25[4] = v21;
          v26 = swift_allocObject();
          *(v26 + 16) = sub_1890A78B8;
          *(v26 + 24) = v25;
          v43 = sub_188E3FE50;
          v44 = v26;
          aBlock = MEMORY[0x1E69E9820];
          v40 = 1107296256;
          v41 = sub_188A4A968;
          v42 = &block_descriptor_48_3;
          v27 = _Block_copy(&aBlock);
          v28 = v23;
          v29 = v16;
          v30 = v21;

          [v24 performWithoutAnimation_];
          _Block_release(v27);
          LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

          if (v27)
          {
            __break(1u);
          }

          else
          {
            v31 = swift_allocObject();
            *(v31 + 16) = v30;
            *(v31 + 24) = v28;
            v43 = sub_1890A78C4;
            v44 = v31;
            aBlock = MEMORY[0x1E69E9820];
            v40 = 1107296256;
            v41 = sub_188A4A8F0;
            v42 = &block_descriptor_54_2;
            v32 = _Block_copy(&aBlock);
            v33 = v28;
            v34 = v30;

            v35 = swift_allocObject();
            *(v35 + 16) = v33;
            v43 = sub_18902C28C;
            v44 = v35;
            aBlock = MEMORY[0x1E69E9820];
            v40 = 1107296256;
            v41 = sub_188ABD010;
            v42 = &block_descriptor_60_1;
            v36 = _Block_copy(&aBlock);
            v37 = v33;

            [v24 animateWithDuration:2 delay:v32 options:v36 animations:0.2 completion:0.0];
            _Block_release(v36);
            _Block_release(v32);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    swift_getKeyPath();
    aBlock = v10;
    sub_188AF0C98();
    sub_18A4A2C08();

    v14 = sub_188B28038(v13, a1);

    if ((v14 & 1) == 0)
    {

      sub_188C1979C(v15);
      sub_188AEFC0C();
    }
  }
}

uint64_t sub_188C1A1F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188C1A240()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188C1A280()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188C1A378(void *a1, uint64_t a2, void *a3)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v8 = [a1 _bottomPalette];
  v50 = v8;
  if (a2 == 6)
  {
    v9 = [a1 _topPalette];
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = v8;
    if (!v9)
    {
LABEL_6:
      v9 = [objc_allocWithZone(_UINavigationBarPalette) init];
    }
  }

  sub_188A34624(0, &qword_1EA9304E0);
  v10 = &selRef_soundReactiveCursorEnabled;
  if (sub_18A4A7C88())
  {
    goto LABEL_30;
  }

  v11 = [a3 superview];
  v12 = [v3 navigationBar];
  v13 = v12;
  if (v11)
  {
    sub_188A34624(0, &qword_1ED48F680);
    v14 = sub_18A4A7C88();

    if (v14)
    {
      [a3 removeFromSuperview];
    }
  }

  else
  {
  }

  v15 = [v4 stack];
  v10 = &selRef_soundReactiveCursorEnabled;
  v16 = [v15 state];

  if (v16)
  {
    v17 = [v4 stack];
    v18 = [v17 topItem];

    if (v18)
    {
      sub_188A34624(0, &unk_1ED48CFF8);
      v19 = a1;
      v20 = sub_18A4A7C88();

      v10 = &selRef_soundReactiveCursorEnabled;
      if (v20)
      {
        goto LABEL_30;
      }
    }

    v21 = [v4 stack];
    v22 = [v21 backItem];

    if (v22)
    {
      sub_188A34624(0, &unk_1ED48CFF8);
      v23 = a1;
      v24 = sub_18A4A7C88();

      v10 = &selRef_soundReactiveCursorEnabled;
      if (v24)
      {
        goto LABEL_30;
      }
    }
  }

  v25 = [a1 _stackEntry];
  v26 = v25;
  if (a2 == 6)
  {
    if (!v25)
    {
      goto LABEL_30;
    }

    v27 = v25;
    v28 = [(_UINavigationBarItemStackEntry *)v27 _typedStorage];
    v29 = sub_18901F250();

    if (v29)
    {
      v30 = v9;
      sub_188B3A7F0(v9);
    }

    v31 = v27;
    v32 = [(_UINavigationBarItemStackEntry *)v31 _typedStorage];
    v33 = sub_18901F25C();

    v10 = &selRef_soundReactiveCursorEnabled;
    if (!v33)
    {
      goto LABEL_29;
    }

    v34 = v9;
    sub_188B3A7F0(v9);
    goto LABEL_28;
  }

  if (!v25)
  {
    goto LABEL_30;
  }

  v35 = v25;
  v36 = [(_UINavigationBarItemStackEntry *)v35 _typedStorage];
  v37 = sub_18901F250();

  if (v37)
  {
    sub_188B39DEC([a1 _bottomPalette]);
  }

  v38 = v35;
  v39 = [(_UINavigationBarItemStackEntry *)v38 _typedStorage];
  v40 = sub_18901F25C();

  v10 = &selRef_soundReactiveCursorEnabled;
  if (v40)
  {
    sub_188B39DEC([a1 _bottomPalette]);
LABEL_28:
  }

LABEL_29:

LABEL_30:
  v41 = [v4 stack];
  v42 = [v41 v10[353]];

  if (!v42)
  {
    v43 = [v4 stack];
    v44 = [v43 topItem];

    if (v44)
    {
      sub_188A34624(0, &unk_1ED48CFF8);
      v45 = a1;
      v46 = sub_18A4A7C88();

      if (v46)
      {
        v47 = [v4 navigationBar];
        [v47 invalidateIntrinsicContentSize];

        v48 = [v4 navigationBar];
        [v48 setNeedsLayout];

        v49 = [v4 navigationBar];
        [v49 _sendNavigationBarResize];

        v9 = v50;
        v50 = v49;
      }
    }
  }
}

id sub_188C1B354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 32))(a3, a4);
  v6 = sub_18A4A7258();

  (*(a4 + 24))(a3, a4);
  v7 = sub_18A4A7258();

  v8 = *(a4 + 16);
  v19[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v19);
  v8(a3, a4);
  sub_188A55598(v19, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v17[0] = v17[2];
  v17[1] = v18;
  v9 = *(&v18 + 1);
  sub_188A3F5FC(v17, &qword_1EA934050);
  if (v9)
  {
    v10 = sub_18A4A86A8();
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  v12 = (*(a4 + 40))(a3, a4);
  v13 = (*(a4 + 48))(a3, a4);
  v14 = [v11 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v14;
}

BOOL static UITraitDefinition._defaultValueRepresentsUnspecified.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v9[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v9);
  v4(a1, a2);
  sub_188A55598(v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v7[0] = v7[2];
  v7[1] = v8;
  v5 = *(&v8 + 1) == 0;
  sub_188A3F5FC(v7, &qword_1EA934050);
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return v5;
}

uint64_t dispatch thunk of UIMutableTraits.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 16))();
}

{
  return (*(a6 + 184))();
}

{
  return (*(a6 + 136))();
}

{
  return (*(a6 + 208))();
}

{
  return (*(a6 + 232))();
}

{
  return (*(a6 + 256))();
}

{
  return (*(a6 + 280))();
}

uint64_t sub_188C1B6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17[3] = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(AssociatedTypeWitness - 8) + 16))();
  sub_188A55598(v17, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v15[0] = v15[2];
  v15[1] = v16;
  v8 = *(&v16 + 1);
  sub_188A3F5FC(v15, &qword_1EA934050);
  if (v8)
  {
    v9 = sub_18A4A86A8();
  }

  else
  {
    v9 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(*v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = [(_UITraitOverrides *)*(*v4 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;

    *v4 = v12;
  }

  v13 = v11;
  [v13 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t UICollectionView._appIntentsDataSourcePayloadProvider.setter(uint64_t a1)
{
  sub_188A3F29C(a1, v12, &unk_1EA93C160);
  v3 = v13;
  if (v13)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_18A4A86A8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v9 = 0;
  }

  [v1 _setInternalAppIntentsDataSourcePayloadProvider_];
  swift_unknownObjectRelease();
  return sub_188A3F5FC(a1, &unk_1EA93C160);
}

BOOL sub_188C1CAD8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  v4 = sub_18A4A88E8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_188C1CCAC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188C1CCEC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (!a1)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = a1;
  v15 = a2;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_188C577F0;
  v13 = &block_descriptor_114_1;
  v7 = _Block_copy(&v10);

  if (v6)
  {
LABEL_3:
    v14 = v6;
    v15 = a4;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_188C577F0;
    v13 = &block_descriptor_111_2;
    v6 = _Block_copy(&v10);
  }

LABEL_4:
  v8 = [v4 animateAlongsideTransitionInView:0 animation:v7 completion:v6];
  _Block_release(v6);
  _Block_release(v7);
  return v8;
}

uint64_t sub_188C1CF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  if ((*(v4 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_hasStarted) & 1) == 0)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v11 = OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_transitionCoordinatorAnimations;
    swift_beginAccess();
    v12 = *(v4 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_188C1D1D4(0, v12[2] + 1, 1, v12);
      *(v4 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_188C1D1D4((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_188AA92CC;
    v16[5] = v10;
    *(v4 + v11) = v12;
    swift_endAccess();
LABEL_10:
    v7 = 1;
    if (!a3)
    {
      return v7;
    }

    goto LABEL_11;
  }

  v7 = 0;
  if (!a3)
  {
    return v7;
  }

LABEL_11:
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_transitionCoordinatorCompletions;
  swift_beginAccess();
  v19 = *(v4 + v18);

  v20 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v18) = v19;
  if ((v20 & 1) == 0)
  {
    v19 = sub_188C1D1D4(0, v19[2] + 1, 1, v19);
    *(v4 + v18) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_188C1D1D4((v21 > 1), v22 + 1, 1, v19);
  }

  v19[2] = v22 + 1;
  v23 = &v19[2 * v22];
  v23[4] = sub_188AA727C;
  v23[5] = v17;
  *(v4 + v18) = v19;
  swift_endAccess();
  return v7;
}

uint64_t sub_188C1D198()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL sub_188C1D1F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarSections);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_19;
    }

    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      while (1)
      {

        v3 = 0;
        while (1)
        {
          v4 = v2 != v3;
          if (v2 == v3)
          {
LABEL_16:

            return v4;
          }

          if ((v1 & 0xC000000000000001) != 0)
          {
            v5 = sub_188E49D3C(v3, v1);
          }

          else
          {
            if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v5 = *(v1 + 8 * v3 + 32);
          }

          v6 = v5;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          v7 = [v5 groups];
          sub_188A34624(0, &qword_1ED48C698);
          v8 = sub_18A4A7548();

          v9 = sub_188EBB20C(v8);

          if (v9 >> 62)
          {
            v10 = sub_18A4A7F68();
          }

          else
          {
            v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v3;
          if (v10 >= 1)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        if (sub_18A4A7F68() < 1)
        {
          break;
        }

        v2 = sub_18A4A7F68();
      }
    }
  }

  return 0;
}

uint64_t _UINavigationBarBackButtonShowsContextMenu()
{
  if (qword_1ED49BF78 != -1)
  {
    dispatch_once(&qword_1ED49BF78, &__block_literal_global_79);
  }

  return byte_1ED49BF62;
}

id sub_188C1D4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v17 - v8;
  v18 = objc_opt_self();
  (*(a4 + 32))(a3, a4);
  v10 = sub_18A4A7258();

  (*(a4 + 24))(a3, a4);
  v11 = sub_18A4A7258();

  (*(a4 + 16))(a3, a4);
  sub_18A4A74E8();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  v12 = v20;
  v13 = (*(a4 + 40))(a3, a4);
  LOBYTE(AssociatedTypeWitness) = (*(a4 + 48))(a3, a4);
  v14 = (*(a4 + 56))(a3, a4);
  v15 = [v18 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v15;
}

uint64_t dispatch thunk of UIMutableTraits.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 376))();
}

{
  return (*(a7 + 304))();
}

{
  return (*(a7 + 328))();
}

{
  return (*(a7 + 352))();
}

uint64_t UITraitOverrides.remove(_:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(*v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = [(_UITraitOverrides *)*(*v2 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;

    *v2 = v7;
  }

  v8 = v6;
  v9 = sub_188A85BF0(a1, 0, 0, a1, a2);
  [(_UITraitOverrides *)v8 _removeTraitToken:v9];

  return swift_unknownObjectRelease();
}

double _UIConvertRectFromOrientationToOrientation(uint64_t a1, uint64_t a2, double result, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 != a2)
  {
    v10[8] = v8;
    v10[9] = v9;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___UIConvertRectFromOrientationToOrientation_block_invoke;
    v10[3] = &__block_descriptor_64_e30__CGPoint_dd_24__0_CGPoint_dd_8l;
    *&v10[4] = a7;
    *&v10[5] = a8;
    v10[6] = a1;
    v10[7] = a2;
    return _UIRectTransformByTransformingCorners(v10, result, a4, a5, a6);
  }

  return result;
}

uint64_t _UIWindowCompareWindowsUsingLevel(void *a1, void *a2)
{
  v3 = a2;
  [a1 level];
  v5 = v4;
  [v3 level];
  v7 = v6;

  if (v7 <= v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v7 < v5)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

void InsertWindow(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = GetRotationFollowingWindows();
  [v2 compact];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      v6 += v5;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v12 + 1) + 8 * v8);
        if (v10)
        {
          v11 = [v10 priorityLevel];
          if (v11 < [v1 priorityLevel])
          {
            v6 = v9;
            goto LABEL_13;
          }
        }

        ++v9;
        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_13:

  [v3 insertPointer:v1 atIndex:v6];
}

id _UIInputLayoutItemLogger()
{
  if (qword_1ED4990A8 != -1)
  {
    dispatch_once(&qword_1ED4990A8, &__block_literal_global_684);
  }

  v1 = qword_1ED4990A0;

  return v1;
}

void sub_188C20E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __GetRotationFollowingWindows_block_invoke()
{
  v0 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v1 = _MergedGlobals_1124;
  _MergedGlobals_1124 = v0;

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [v4 addObserverForName:0x1EFB921F0 object:0 queue:0 usingBlock:&__block_literal_global_275];
  v3 = qword_1ED49E3D8;
  qword_1ED49E3D8 = v2;
}

id _UITrackingElementWindowControllerLogger()
{
  if (qword_1ED496108 != -1)
  {
    dispatch_once(&qword_1ED496108, &__block_literal_global_844);
  }

  v1 = _MergedGlobals_26;

  return v1;
}

uint64_t UIKeyboardInputModeSoftwareOnly(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"emoji"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"dictation"))
  {
    v2 = 1;
  }

  else
  {
    v3 = TIInputModeGetVariant();
    v2 = [v3 isEqualToString:@"HWR"];
  }

  return v2;
}

id UIKeyboardGetDefaultHardwareKeyboardForInputMode(void *a1)
{
  v1 = a1;
  if (UIKeyboardInputModeSoftwareOnly(v1))
  {
    v2 = 0;
  }

  else
  {
    v3 = UIKeyboardGetSupportedHardwareKeyboardsForInputMode(v1);
    v2 = [v3 firstObject];
  }

  return v2;
}

id UIKeyboardGetComponentsFromLanguageIdentifier(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 UTF8String];
  uloc_addLikelySubtags();
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];

  v3 = v2;
  v4 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v2];

  return v4;
}

void __TIGetRemoteEmojiValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"RemoteEmoji" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

void __TIGetNewKeyboardNotificationOrderValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"NewKeyboardNotificationOrder" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void __TIGetUsesLocalKeyboardValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"UsesLocalKeyboard" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

void __TIGetVerticalScrollingInEmojiKeyboardValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"VerticalScrollingInEmojiKeyboard" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void __TIGetEnableMetronomeValue_block_invoke()
{
  v1 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v0 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  [v1 _configureKey:@"EnableMetronome" domain:@"com.apple.keyboard" defaultValue:v0];
}

void __TIGetEnableMetronomeValue_block_invoke_0()
{
  v1 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v0 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  [v1 _configureKey:@"EnableMetronome" domain:@"com.apple.keyboard" defaultValue:v0];
}

void __KeyboardArbiterClientLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "KeyboardArbiterClientLog");
  v1 = _MergedGlobals_1023;
  _MergedGlobals_1023 = v0;
}

void __KeyboardArbiterClientLog_block_invoke_0()
{
  v0 = os_log_create("com.apple.UIKit", "KeyboardArbiterClientLog");
  v1 = qword_1ED49DAA8;
  qword_1ED49DAA8 = v0;
}

void __KeyboardArbiterClientLog_block_invoke_1()
{
  v0 = os_log_create("com.apple.UIKit", "KeyboardArbiterClientLog");
  v1 = qword_1ED4997E8;
  qword_1ED4997E8 = v0;
}

void __KeyboardArbiterClientLog_block_invoke_2()
{
  v0 = os_log_create("com.apple.UIKit", "KeyboardArbiterClientLog");
  v1 = _MergedGlobals_1211;
  _MergedGlobals_1211 = v0;
}

void __KeyboardArbiterClientLog_block_invoke_3()
{
  v0 = os_log_create("com.apple.UIKit", "KeyboardArbiterClientLog");
  v1 = qword_1ED49C208;
  qword_1ED49C208 = v0;
}

void *sub_188C253E0()
{
  type metadata accessor for _UIListMetrics();
  swift_allocObject();
  result = sub_188C25440();
  qword_1ED4A3490 = result;
  return result;
}

void *sub_188C25440()
{
  v1 = MEMORY[0x1E69E7CC8];
  v0[8] = MEMORY[0x1E69E7CC8];
  v0[9] = v1;
  v2 = [objc_allocWithZone(_UIListMetricsTemporaryConstants) init];
  v6 = sub_188A34624(0, &unk_1ED48C8E8);
  v7 = &off_1EFAF9880;
  *&v5 = v2;
  type metadata accessor for CoreListMetrics();
  v3 = swift_allocObject();
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  sub_188A5EBAC(&v5, v3 + 16);
  v0[2] = v3;
  v0[6] = &type metadata for _UIListMetrics.SettingsProvider;
  v0[7] = &off_1EFAD6E58;
  return v0;
}

unint64_t sub_188C2550C(unint64_t result)
{
  if (result >= 5)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000038, 0x800000018A69C070);
    type metadata accessor for _UIListStyle(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_188C256C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_188C271B0(a1, v11);
  v3 = __swift_project_boxed_opaque_existential_0(v11, v11[3]);
  v4 = 1 << sub_188C26B20(*v3, *(v3 + 8));
  if ((v4 & 0x4E) != 0)
  {
    sub_188C257E0(v11);
    result = dyld_program_sdk_at_least();
    if (result)
    {
      v6 = 14;
    }

    else
    {
      v6 = 0x3FE8F8F8F8F8F8F9;
    }

    if (result)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0x3FE8F8F8F8F8F8F9;
    }

    if (result)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0x3FE999999999999ALL;
    }

    v9 = 0x3FF0000000000000;
    if (result)
    {
      v9 = 0;
    }
  }

  else
  {
    if ((v4 & 0x11) != 0)
    {
      sub_188C257E0(v11);
    }

    else
    {
      v10 = v12;
      sub_188C257E0(v11);
      if ((v10 - 1) < 2)
      {
        result = 0;
        v9 = 0x3FB999999999999ALL;
        v6 = 0x3FF0000000000000;
        v7 = 0x3FF0000000000000;
        v8 = 0x3FF0000000000000;
        goto LABEL_17;
      }
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    result = 1;
    v6 = 14;
  }

LABEL_17:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  return result;
}

__n128 sub_188C25834@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = &type metadata for _UIListMetrics.SeparatorProvider;
  v20 = &off_1EFAD6E30;
  v4 = swift_allocObject();
  v18[0] = v4;
  sub_188C271B0(a1, v4 + 16);
  v5 = __swift_project_boxed_opaque_existential_0((v4 + 16), *(v4 + 40));
  if ((sub_188C26B20(*v5, *(v5 + 8)) & 0xFE) == 4)
  {
    v6 = &type metadata for _UIListMetrics.SeparatorProvider;
LABEL_3:
    v7 = __swift_project_boxed_opaque_existential_0(v18, v6);
LABEL_7:
    sub_188C256C4(v7, v21);
    v16 = v21[1];
    v17 = v21[0];
    v9 = v22;
    goto LABEL_8;
  }

  v8 = *(v4 + 56);
  v7 = __swift_project_boxed_opaque_existential_0(v18, &type metadata for _UIListMetrics.SeparatorProvider);
  if (v8 != 4)
  {
    goto LABEL_7;
  }

  if (!sub_188C705A4())
  {
    v6 = v19;
    goto LABEL_3;
  }

  v9 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v16 = xmmword_18A65A250;
  v17 = _Q0;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  result = v16;
  *a2 = v17;
  *(a2 + 16) = v16;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_188C25950()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

id sub_188C25990()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v3 = *(v0 + 16) | *(v0 + 8);
    if (!(v3 | *&v1 | v2))
    {
      v7 = [objc_opt_self() labelColor];
      goto LABEL_20;
    }

    v4 = v3 | v2;
    if (*&v1 == 1 && v4 == 0)
    {
      v7 = [objc_opt_self() secondaryLabelColor];
      goto LABEL_20;
    }

    if (*&v1 == 2 && v4 == 0)
    {
      v7 = [objc_opt_self() tertiaryLabelColor];
      goto LABEL_20;
    }

    if (*&v1 == 3 && !v4)
    {
      v7 = [objc_opt_self() systemBackgroundColor];
      goto LABEL_20;
    }

    if (*&v1 == 4 && !v4)
    {
      v7 = [objc_opt_self() secondarySystemBackgroundColor];
      goto LABEL_20;
    }

    if (*&v1 == 5 && !v4)
    {
      v7 = [objc_opt_self() systemGroupedBackgroundColor];
      goto LABEL_20;
    }

    if (*&v1 == 6 && !v4)
    {
      result = [objc_opt_self() tableBackgroundColor];
      if (result)
      {
        return result;
      }

      __break(1u);
    }

    if (*&v1 == 7 && !v4)
    {
      result = [objc_opt_self() tableCellPlainBackgroundColor];
      if (result)
      {
        return result;
      }

      __break(1u);
    }

    if (*&v1 != 8 || v4)
    {
      if (*&v1 != 9 || v4)
      {
        if (*&v1 != 10 || v4)
        {
          if (*&v1 != 11 || v4)
          {
            if (*&v1 != 12 || v4)
            {
              if (*&v1 != 13 || v4)
              {
                if (*&v1 != 14 || v4)
                {
                  if (*&v1 != 15 || v4)
                  {
                    if (*&v1 != 16 || v4)
                    {
                      if (*&v1 != 17 || v4)
                      {
                        if (*&v1 != 18 || v4)
                        {
                          if (*&v1 != 19 || v4)
                          {
                            if (*&v1 != 20 || v4)
                            {
                              if (*&v1 != 21 || v4)
                              {
                                if (*&v1 != 22 || v4)
                                {
                                  if (*&v1 != 23 || v4)
                                  {
                                    v7 = [objc_opt_self() systemGray2Color];
                                  }

                                  else
                                  {
                                    v7 = [objc_opt_self() systemGrayColor];
                                  }

                                  goto LABEL_20;
                                }

                                v14 = [objc_opt_self() blackColor];
                                v15 = [v14 colorWithAlphaComponent_];
                              }

                              else
                              {
                                v14 = [objc_opt_self() whiteColor];
                                v15 = [v14 colorWithAlphaComponent_];
                              }
                            }

                            else
                            {
                              v14 = [objc_opt_self() whiteColor];
                              v15 = [v14 colorWithAlphaComponent_];
                            }
                          }

                          else
                          {
                            v14 = [objc_opt_self() whiteColor];
                            v15 = [v14 colorWithAlphaComponent_];
                          }

                          v16 = v15;

                          return v16;
                        }

                        v7 = [objc_opt_self() whiteColor];
                      }

                      else
                      {
                        v7 = [objc_opt_self() _swipedSidebarCellBackgroundColor];
                      }
                    }

                    else
                    {
                      v7 = [objc_opt_self() _sidebarBackgroundColor];
                    }
                  }

                  else
                  {
                    v7 = [objc_opt_self() tintColor];
                  }
                }

                else
                {
                  v7 = [objc_opt_self() separatorColor];
                }
              }

              else
              {
                v7 = [objc_opt_self() clearColor];
              }
            }

            else
            {
              v7 = [objc_opt_self() quaternarySystemFillColor];
            }
          }

          else
          {
            v7 = [objc_opt_self() secondarySystemFillColor];
          }
        }

        else
        {
          v7 = [objc_opt_self() tableCellGroupedSelectedBackgroundColor];
        }
      }

      else
      {
        v7 = [objc_opt_self() tableCellPlainSelectedBackgroundColor];
      }

LABEL_20:

      return v7;
    }

    result = [objc_opt_self() tableCellGroupedBackgroundColor];
    if (!result)
    {
      __break(1u);
    }
  }

  else
  {
    v8 = *v0;
    v9 = *(v0 + 8);
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    v12 = objc_allocWithZone(UIColor);

    return [v12 initWithRed:v8 green:v9 blue:v10 alpha:v11];
  }

  return result;
}

unint64_t sub_188C25F38(float64x2_t *a1, uint64_t a2)
{
  v4 = v2 + 64;
  v5 = -1 << *(v2 + 32);
  result = a2 & ~v5;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = *a1;
    v8 = a1[1];
    v9 = a1->f64[0];
    v10 = *&a1[1].f64[0] | *&a1->f64[1] | *&a1[1].f64[1];
    v11 = v10 | *&a1->f64[0];
    v12 = *&a1->f64[0] - 1;
    v13 = *&a1->f64[0] == 1;
    v14 = v12 < 0x17;
    v15 = v12 < 0x16;
    v16 = v12 < 0x15;
    v17 = v12 < 0x14;
    v18 = v12 < 0x13;
    v19 = v12 < 0x12;
    v20 = v12 < 0x11;
    v21 = v12 < 0x10;
    if (v10)
    {
      v22 = 0;
    }

    else
    {
      v22 = v14;
    }

    if (v10)
    {
      v23 = 0;
    }

    else
    {
      v23 = v15;
    }

    if (v10)
    {
      v24 = 0;
    }

    else
    {
      v24 = *&a1->f64[0] == 23;
    }

    v70 = v24;
    if (v10)
    {
      v25 = 0;
    }

    else
    {
      v25 = v16;
    }

    if (v10)
    {
      v26 = 0;
    }

    else
    {
      v26 = *&a1->f64[0] == 22;
    }

    v71 = v26;
    if (v10)
    {
      v27 = 0;
    }

    else
    {
      v27 = v17;
    }

    if (v10)
    {
      v28 = 0;
    }

    else
    {
      v28 = *&a1->f64[0] == 21;
    }

    if (v10)
    {
      v29 = 0;
    }

    else
    {
      v29 = v18;
    }

    if (v10)
    {
      v30 = 0;
    }

    else
    {
      v30 = *&a1->f64[0] == 20;
    }

    v72 = v28;
    v73 = v30;
    if (v10)
    {
      v31 = 0;
    }

    else
    {
      v31 = v19;
    }

    if (v10)
    {
      v32 = 0;
    }

    else
    {
      v32 = *&a1->f64[0] == 19;
    }

    if (v10)
    {
      v33 = 0;
    }

    else
    {
      v33 = v20;
    }

    if (v10)
    {
      v34 = 0;
    }

    else
    {
      v34 = *&a1->f64[0] == 18;
    }

    v74 = v32;
    v75 = v34;
    if (v10)
    {
      v35 = 0;
    }

    else
    {
      v35 = v21;
    }

    if (v10)
    {
      v36 = 0;
    }

    else
    {
      v36 = *&a1->f64[0] == 17;
    }

    v76 = v36;
    v77 = *&v9 == 16;
    v78 = *&v9 == 15;
    v79 = *&v9 == 14;
    v80 = *&v9 == 13;
    v81 = *&v9 == 12;
    v82 = *&v9 == 11;
    v83 = *&v9 == 10;
    v37 = *&v9 == 9;
    v38 = *&v9 == 8;
    v39 = *&v9 == 7;
    v40 = *&v9 == 6;
    v41 = *&v9 == 5;
    v42 = *&v9 == 4;
    v43 = *&v9 == 3;
    v61 = *&v9 == 2;
    v44 = LOBYTE(a1[2].f64[0]);
    v45 = v44 ^ 1 | (v11 == 0);
    v46 = v45 | v22;
    v47 = v45 | v23;
    v48 = v45 | v25;
    v49 = v45 | v27;
    v50 = v45 | v29;
    v51 = v45 | v31;
    v52 = v45 | v33;
    v53 = v45 | v35;
    v54 = ~v5;
    v55 = *(v2 + 48);
    v56 = v61;
    do
    {
      v57 = v55 + 40 * result;
      v59 = *v57;
      v58 = *(v57 + 16);
      if (*(v57 + 32) == 1)
      {
        if (*&v58.f64[0] | *&v59.f64[1] | *&v59.f64[0] | *&v58.f64[1])
        {
          v60 = *&v58.f64[0] | *&v59.f64[1] | *&v58.f64[1];
          v61 = *&v59.f64[0] == 1 && v60 == 0;
          v62 = v13;
          if (v61 || (*&v59.f64[0] == 2 ? (v63 = v60 == 0) : (v63 = 0), (v62 = v56, v63) || (*&v59.f64[0] == 3 ? (v64 = v60 == 0) : (v64 = 0), (v62 = v43, v64) || (*&v59.f64[0] == 4 ? (v65 = v60 == 0) : (v65 = 0), (v62 = v42, v65) || (*&v59.f64[0] == 5 ? (v66 = v60 == 0) : (v66 = 0), (v62 = v41, v66) || (*&v59.f64[0] == 6 ? (v67 = v60 == 0) : (v67 = 0), (v62 = v40, v67) || (*&v59.f64[0] == 7 ? (v68 = v60 == 0) : (v68 = 0), (v62 = v39, v68) || (*&v59.f64[0] == 8 ? (v69 = v60 == 0) : (v69 = 0), (v62 = v38, v69) || *&v59.f64[0] == 9 && (v62 = v37, !v60) || *&v59.f64[0] == 10 && (v62 = v83, !v60) || *&v59.f64[0] == 11 && (v62 = v82, !v60) || *&v59.f64[0] == 12 && (v62 = v81, !v60) || *&v59.f64[0] == 13 && (v62 = v80, !v60) || *&v59.f64[0] == 14 && (v62 = v79, !v60) || *&v59.f64[0] == 15 && (v62 = v78, !v60) || *&v59.f64[0] == 16 && (v62 = v77, !v60)))))))))
          {
            if (v62 && !v10 && (v44 & 1) != 0)
            {
              return result;
            }
          }

          else if (*&v59.f64[0] != 17 || v60)
          {
            if (*&v59.f64[0] != 18 || v60)
            {
              if (*&v59.f64[0] != 19 || v60)
              {
                if (*&v59.f64[0] != 20 || v60)
                {
                  if (*&v59.f64[0] != 21 || v60)
                  {
                    if (*&v59.f64[0] != 22 || v60)
                    {
                      if (*&v59.f64[0] != 23 || v60)
                      {
                        if ((v46 & 1) == 0)
                        {
                          return result;
                        }
                      }

                      else if ((v47 & 1) == 0 && v70)
                      {
                        return result;
                      }
                    }

                    else if ((v48 & 1) == 0 && v71)
                    {
                      return result;
                    }
                  }

                  else if ((v49 & 1) == 0 && v72)
                  {
                    return result;
                  }
                }

                else if ((v50 & 1) == 0 && v73)
                {
                  return result;
                }
              }

              else if ((v51 & 1) == 0 && v74)
              {
                return result;
              }
            }

            else if ((v52 & 1) == 0 && v75)
            {
              return result;
            }
          }

          else if ((v53 & 1) == 0 && v76)
          {
            return result;
          }
        }

        else if ((v44 & 1) != 0 && !v11)
        {
          return result;
        }
      }

      else if (v44 & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v59, v7), vceqq_f64(v58, v8)))))
      {
        return result;
      }

      result = (result + 1) & v54;
    }

    while (((*(v4 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_188C263D4()
{
  result = qword_1ED48C938[0];
  if (!qword_1ED48C938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED48C938);
  }

  return result;
}

unint64_t sub_188C26428(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

double sub_188C264C0(uint64_t a1)
{
  v14 = &type metadata for _UIListMetrics.SectionProvider;
  v15 = &off_1EFAD6DE0;
  v2 = swift_allocObject();
  v13[0] = v2;
  sub_188C2A1B4(a1, v2 + 16);
  v3 = 0.0;
  if ((*(__swift_project_boxed_opaque_existential_0(v13, &type metadata for _UIListMetrics.SectionProvider) + 41) & 1) == 0)
  {
    if ((__swift_project_boxed_opaque_existential_0(v13, v14)[12] & 4) != 0)
    {
      v6 = *(v2 + 104);
      if (v6 <= 2)
      {
        v3 = 20.0;
        if (v6 - 1 < 2)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      if (v6 != 3)
      {
        goto LABEL_25;
      }

      v11 = __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
      if (sub_188C26B20(*v11, *(v11 + 8)) == 5)
      {
        v3 = 20.0;
      }

      else
      {
        v3 = 10.0;
      }
    }

    else
    {
      v4 = __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
      v5 = sub_188C26B20(*v4, *(v4 + 8));
      if (v5 <= 3)
      {
        if (v5 - 1 >= 3)
        {
          v3 = 17.5;
          goto LABEL_26;
        }

LABEL_14:
        v10 = *(v2 + 104);
        if (v10 > 2)
        {
          v3 = 10.0;
          if (v10 == 3)
          {
            goto LABEL_26;
          }
        }

        else if (v10 - 1 < 2)
        {
          v8 = *(__swift_project_boxed_opaque_existential_0(v13, v14) + 144) == 0;
          v9 = 17.5;
LABEL_17:
          if (v8)
          {
            v3 = v9;
          }

          else
          {
            v3 = 6.0;
          }

          goto LABEL_26;
        }

LABEL_25:
        v3 = 0.0;
        goto LABEL_26;
      }

      if (v5 == 4)
      {
        if (*(v2 + 104) - 1 >= 2)
        {
          v3 = 0.0;
        }

        else
        {
          v3 = 7.0;
        }
      }

      else
      {
        if (v5 != 5)
        {
          goto LABEL_14;
        }

        v7 = *(v2 + 104);
        if (v7 <= 2)
        {
          if (v7 - 1 >= 2)
          {
            v3 = 16.0;
            goto LABEL_26;
          }

          v8 = *(__swift_project_boxed_opaque_existential_0(v13, v14) + 144) == 0;
          v9 = 12.0;
          goto LABEL_17;
        }

        if (v7 == 3)
        {
          v3 = 12.0;
        }
      }
    }
  }

LABEL_26:
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v3;
}

id sub_188C26734()
{
  result = [objc_allocWithZone(_UIListMetrics) init];
  qword_1ED48CC40 = result;
  return result;
}

uint64_t sub_188C2678C(unint64_t a1, void *a2)
{
  v32 = &_s26CoreListMetricsEnvironmentVN;
  v33 = &off_1EFAF9A80;
  v30 = a2;
  v31 = 7;
  v4 = a2;
  LOBYTE(a1) = sub_188C2550C(a1);
  sub_188A53994(v2 + 24, &v35);
  v34 = a1;
  v5 = *(v2 + 16);
  v25 = &type metadata for _UIListMetrics.ListProvider;
  v26 = &off_1EFAD6E70;
  v24[0] = swift_allocObject();
  sub_188C255E0(&v30, v24[0] + 16);
  sub_188C26A24(v5 + 56, &v21);
  if (v22)
  {
    sub_188A5EBAC(&v21, v27);
    v6 = v29;
    v7 = __swift_project_boxed_opaque_existential_0(v27, v28);
    v8 = MEMORY[0x1EEE9AC00](v7);
    (*(v6 + 48))(&v21, v24, sub_188FE1C94, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {
    sub_188C26A94(&v21);
    v9 = v25;
    v10 = v26;
    __swift_project_boxed_opaque_existential_0(v24, v25);
    (v10[1])(v27, v9, v10);
    v11 = __swift_project_boxed_opaque_existential_0(v27, v28);
    if (sub_188C26B20(*v11, *(v11 + 8)) == 5)
    {
      v12 = v25;
      v13 = v26;
      __swift_project_boxed_opaque_existential_0(v24, v25);
      v14 = (v13[2])(v12, v13) == 0;
    }

    else
    {
      v14 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v15 = v25;
    v16 = v26;
    v17 = __swift_project_boxed_opaque_existential_0(v24, v25);
    v18 = sub_188C26D5C(v17, v15, v16);
    v22 = &_s13ListBehaviorsVN;
    v23 = &off_1EFADA628;
    *&v21 = v14;
    BYTE8(v21) = v18;
  }

  sub_188A5EBAC(&v21, v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  v19 = *__swift_project_boxed_opaque_existential_0(v27, v28);
  sub_188C26F30(&v30);
  __swift_project_boxed_opaque_existential_0(v27, v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return 2 * (v19 & 1);
}

uint64_t sub_188C26A24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188C26A94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_188C26B20(void *a1, uint64_t a2)
{
  if (a2 == 7)
  {
    v2 = a1;
    v3 = [a1 userInterfaceIdiom];
    if (v3 == -1)
    {
      if (dyld_program_sdk_at_least())
      {
        goto LABEL_11;
      }

      objc_opt_self();
      v4 = +[UIScreen _mainScreen];
      v5 = [v4 traitCollection];

      v6 = [v5 userInterfaceIdiom];
      v3 = v6;
    }

    if (v3 >= 9 || ((0x17Fu >> v3) & 1) == 0)
    {
      v2 = v3;
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD00000000000003CLL, 0x800000018A6B4520);
      type metadata accessor for UIUserInterfaceIdiom(0);
      sub_18A4A82D8();
      MEMORY[0x18CFE22D0](41, 0xE100000000000000);
      while (1)
      {
        sub_18A4A8398();
        __break(1u);
LABEL_11:
        sub_18A4A80E8();
        MEMORY[0x18CFE22D0](0xD00000000000004CLL, 0x800000018A6B45C0);
        v2 = [v2 description];
        v8 = sub_18A4A7288();
        v10 = v9;

        MEMORY[0x18CFE22D0](v8, v10);
      }
    }

    return byte_18A676E85[v3];
  }

  return a2;
}

uint64_t sub_188C26D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  if (((*(a3 + 16))(a2, a3) - 1) < 3u)
  {
LABEL_2:
    v9 = 0;
    goto LABEL_3;
  }

  (*(a3 + 8))(v14, a2, a3);
  v11 = __swift_project_boxed_opaque_existential_0(v14, v14[3]);
  v12 = sub_188C26B20(*v11, *(v11 + 8));
  if ((v12 - 1) < 2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    v9 = 3;
    if ((_UIFloatingBarEnabled() & 1) == 0)
    {
      if (dyld_program_sdk_at_least())
      {
        v9 = 1;
      }

      else
      {
        v9 = 3;
      }
    }
  }

  else
  {
    if (v12 != 3)
    {
      if (v12 != 4)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        v9 = 3;
        goto LABEL_3;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      goto LABEL_2;
    }

    if (dyld_program_sdk_at_least())
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

LABEL_3:
  (*(v5 + 8))(v8, a2);
  return v9;
}

uint64_t sub_188C26F60(unint64_t a1, void *a2)
{
  v3 = v2;
  v26 = &_s26CoreListMetricsEnvironmentVN;
  v27 = &off_1EFAF9A80;
  v24 = a2;
  v25 = 7;
  v5 = a2;
  LOBYTE(a1) = sub_188C2550C(a1);
  sub_188A53994(v3 + 24, &v29);
  v28 = a1;
  v6 = *(v3 + 16);
  *(&v19 + 1) = &type metadata for _UIListMetrics.SeparatorProvider;
  v20 = &off_1EFAD6E30;
  *&v18.f64[0] = swift_allocObject();
  sub_188C271B0(&v24, *&v18.f64[0] + 16);
  sub_188C26A24(v6 + 56, &v15);
  if (*(&v16 + 1))
  {
    sub_188A5EBAC(&v15, v21);
    v7 = v23;
    v8 = __swift_project_boxed_opaque_existential_0(v21, v22);
    v9 = MEMORY[0x1EEE9AC00](v8);
    (*(v7 + 32))(&v15, &v18, sub_188FE1D0C, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  else
  {
    sub_188C26A94(&v15);
    sub_188C2720C(&v18, &v15);
  }

  sub_188A5EBAC(&v15, v21);
  __swift_destroy_boxed_opaque_existential_0Tm(&v18);
  v10 = qword_18A65AAB8[*__swift_project_boxed_opaque_existential_0(v21, v22)];
  v11 = __swift_project_boxed_opaque_existential_0(v21, v22);
  v18 = *(v11 + 1);
  v19 = *(v11 + 3);
  LOBYTE(v20) = *(v11 + 40);
  sub_188C2744C(&v18);
  v12 = __swift_project_boxed_opaque_existential_0(v21, v22);
  v13 = *(v12 + 4);
  v15 = *(v12 + 3);
  v16 = v13;
  v17 = *(v12 + 80);
  sub_188C2744C(&v15);
  sub_188C257E0(&v24);
  __swift_project_boxed_opaque_existential_0(v21, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return v10;
}

double sub_188C2720C@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_188C271B0(v4, v18);
  v5 = __swift_project_boxed_opaque_existential_0(v18, v18[3]);
  if (sub_188C26B20(*v5, *(v5 + 8)) == 5)
  {
    v6 = v19;
    sub_188C257E0(v18);
    if ((v6 - 1) < 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    sub_188C257E0(v18);
    v7 = 0;
  }

  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_188C256C4(v8, v20);
  v9 = v21;
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_188C25834(v10, v22);
  v11 = v23;
  v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v13 = sub_188C27364(v12) & 1;
  a2[3] = &_s16SeparatorMetricsVN;
  a2[4] = &off_1EFAD5CA0;
  v14 = swift_allocObject();
  *a2 = v14;
  *(v14 + 16) = v7;
  v15 = v20[0];
  *(v14 + 40) = v20[1];
  *(v14 + 24) = v15;
  *(v14 + 56) = v9;
  result = *v22;
  v17 = v22[1];
  *(v14 + 64) = v22[0];
  *(v14 + 80) = v17;
  *(v14 + 96) = v11;
  *(v14 + 97) = v13;
  return result;
}

uint64_t sub_188C27364(uint64_t a1)
{
  sub_188C271B0(a1, v6);
  v1 = __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v2 = sub_188C26B20(*v1, *(v1 + 8));
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      sub_188C257E0(v6);
      return 0;
    }

    if (v2 == 5)
    {
      v4 = v7;
      sub_188C257E0(v6);
      return (v4 - 1) < 2;
    }

LABEL_8:
    sub_188C257E0(v6);
    return 1;
  }

  if (v2 - 1 < 2)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    v5 = v7;
    sub_188C257E0(v6);
    if (v5 == 3)
    {
      return 0;
    }

    else
    {
      return dyld_program_sdk_at_least();
    }
  }

  else
  {
    sub_188C257E0(v6);
    return _UISolariumEnabled();
  }
}

id sub_188C2744C(float64x2_t *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  if (*(v4 + 16) && (v5 = sub_188C27678(a1), (v6 & 1) != 0))
  {
    v11 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();

    return v11;
  }

  else
  {
    swift_endAccess();
    v8 = sub_188C25990();
    swift_beginAccess();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + 64);
    *(v2 + 64) = 0x8000000000000000;
    sub_188C27558(v9, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 64) = v12;
    swift_endAccess();
    return v9;
  }
}

void sub_188C27558(uint64_t a1, float64x2_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188C27678(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA512C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_188C27954(v14, a3 & 1);
    v9 = sub_188C27678(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {

    sub_188C26428(v9, a2, a1, v19);
  }
}

unint64_t sub_188C27678(float64x2_t *a1)
{
  sub_18A4A8888();
  sub_188C276E4();
  v2 = sub_18A4A88E8();

  return sub_188C25F38(a1, v2);
}

uint64_t sub_188C276E4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (v0[4])
  {
    if (v4 | v2 | v1 | v3)
    {
      v5 = v4 | v2 | v3;
      if (v1 == 1 && v5 == 0)
      {
        v8 = 1;
      }

      else if (v1 == 2 && v5 == 0)
      {
        v8 = 2;
      }

      else if (v1 != 3 || v5)
      {
        if (v1 != 4 || v5)
        {
          if (v1 != 5 || v5)
          {
            if (v1 != 6 || v5)
            {
              if (v1 != 7 || v5)
              {
                if (v1 != 8 || v5)
                {
                  if (v1 != 9 || v5)
                  {
                    if (v1 != 10 || v5)
                    {
                      if (v1 != 11 || v5)
                      {
                        if (v1 != 12 || v5)
                        {
                          if (v1 != 13 || v5)
                          {
                            if (v1 != 14 || v5)
                            {
                              if (v1 != 15 || v5)
                              {
                                if (v1 != 16 || v5)
                                {
                                  if (v1 != 17 || v5)
                                  {
                                    if (v1 != 18 || v5)
                                    {
                                      if (v1 != 19 || v5)
                                      {
                                        if (v1 != 20 || v5)
                                        {
                                          if (v1 != 21 || v5)
                                          {
                                            if (v1 != 22 || v5)
                                            {
                                              if (v1 != 23 || v5)
                                              {
                                                v8 = 24;
                                              }

                                              else
                                              {
                                                v8 = 23;
                                              }
                                            }

                                            else
                                            {
                                              v8 = 22;
                                            }
                                          }

                                          else
                                          {
                                            v8 = 21;
                                          }
                                        }

                                        else
                                        {
                                          v8 = 20;
                                        }
                                      }

                                      else
                                      {
                                        v8 = 19;
                                      }
                                    }

                                    else
                                    {
                                      v8 = 18;
                                    }
                                  }

                                  else
                                  {
                                    v8 = 17;
                                  }
                                }

                                else
                                {
                                  v8 = 16;
                                }
                              }

                              else
                              {
                                v8 = 15;
                              }
                            }

                            else
                            {
                              v8 = 14;
                            }
                          }

                          else
                          {
                            v8 = 13;
                          }
                        }

                        else
                        {
                          v8 = 12;
                        }
                      }

                      else
                      {
                        v8 = 11;
                      }
                    }

                    else
                    {
                      v8 = 10;
                    }
                  }

                  else
                  {
                    v8 = 9;
                  }
                }

                else
                {
                  v8 = 8;
                }
              }

              else
              {
                v8 = 7;
              }
            }

            else
            {
              v8 = 6;
            }
          }

          else
          {
            v8 = 5;
          }
        }

        else
        {
          v8 = 4;
        }
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 0;
    }

    return MEMORY[0x18CFE37E0](v8);
  }

  else
  {
    MEMORY[0x18CFE37E0](25);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v1;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x18CFE3810](v9);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x18CFE3810](v10);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x18CFE3810](v11);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v3;
    }

    else
    {
      v12 = 0;
    }

    return MEMORY[0x18CFE3810](v12);
  }
}

uint64_t sub_188C27954(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D10);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 40 * v20;
      v22 = *v21;
      v23 = *(v21 + 16);
      v24 = *(v21 + 32);
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v36 = *(v21 + 16);
        v37 = *v21;
        v26 = v25;
        v23 = v36;
        v22 = v37;
      }

      v38 = v22;
      v39 = v23;
      sub_18A4A8888();
      sub_188C276E4();
      result = sub_18A4A88E8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v38;
      *(v16 + 16) = v39;
      *(v16 + 32) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *_UIInternalContainerClassArrayForContainerClassArray(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = _UIAppearanceInternalContainerClassForContainer(*(*(&v9 + 1) + 8 * v6));
        if (v7)
        {
          [v2 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return v2;
}

double sub_188C28350(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = &type metadata for _UIListMetrics.SectionProvider;
  v68 = &off_1EFAD6DE0;
  v6 = swift_allocObject();
  v66[0] = v6;
  sub_188C2A1B4(a1, v6 + 16);
  v7 = __swift_project_boxed_opaque_existential_0((v6 + 16), *(v6 + 40));
  v8 = sub_188C26B20(*v7, *(v7 + 8));
  v9 = 0.0;
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      goto LABEL_23;
    }

    if (v8 == 5)
    {
      v17 = *(v6 + 104);
      v18 = __swift_project_boxed_opaque_existential_0(v66, &type metadata for _UIListMetrics.SectionProvider);
      v19 = __swift_project_boxed_opaque_existential_0(v18 + 6, v18[9]);
      v20 = v19[9];
      v22 = v19[10];
      v21 = v19[11];
      *&v63 = v19[8];
      *(&v63 + 1) = v20;
      *&v64 = v22;
      *(&v64 + 1) = v21;
      swift_getAtKeyPath();
      v23 = v65;
      v24 = __swift_project_boxed_opaque_existential_0(v66, v67);
      if (v17 == 3)
      {
        v25 = 12.0;
      }

      else
      {
        v25 = 24.0;
      }

      goto LABEL_20;
    }
  }

  else if (v8 - 1 >= 2)
  {
    if (!v8)
    {
      v10 = __swift_project_boxed_opaque_existential_0(v66, &type metadata for _UIListMetrics.SectionProvider);
      v11 = sub_189084718(a2, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B628);
      *&v63 = a2;
      v65 = COERCE_DOUBLE(swift_getKeyPath());
      sub_18A4A7248();

      KeyPath = swift_getKeyPath();
      v13 = __swift_project_boxed_opaque_existential_0(v66, v67);
      v14 = sub_189084718(KeyPath, v13);

      v15 = __swift_project_boxed_opaque_existential_0(v66, v67);
      v16 = floor((*(__swift_project_boxed_opaque_existential_0(v15 + 6, v15[9]) + 16) - v11 - v14 + -520.0) * 0.25);
      if (v16 < 0.0)
      {
        v16 = 0.0;
      }

      v9 = v11 + v16;
      goto LABEL_23;
    }

    v32 = *(v6 + 104);
    if (v32 < 2)
    {
      goto LABEL_23;
    }

    if (v32 - 3 < 2)
    {
      v33 = __swift_project_boxed_opaque_existential_0(v66, &type metadata for _UIListMetrics.SectionProvider);
      v34 = __swift_project_boxed_opaque_existential_0(v33 + 6, v33[9]);
      v35 = *(v34 + 5);
      v63 = *(v34 + 4);
      v64 = v35;
      swift_getAtKeyPath();
      v9 = v65;
      if (dyld_program_sdk_at_least())
      {
        v36 = a3[5];
        v37 = a3[6];
        v38 = __swift_project_boxed_opaque_existential_0(a3 + 2, v36);
        v39 = *(v36 - 8);
        v40 = MEMORY[0x1EEE9AC00](v38);
        v42 = &v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v39 + 16))(v42, v40);
        v43 = (*(v37 + 40))(v36, v37);
        (*(v39 + 8))(v42, v36);
        v44 = a3[5];
        v45 = a3[6];
        v46 = __swift_project_boxed_opaque_existential_0(a3 + 2, v44);
        v47 = *(v44 - 8);
        v48 = MEMORY[0x1EEE9AC00](v46);
        v50 = &v63 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v47 + 16))(v50, v48);
        v51 = (*(v45 + 16))(v44, v45);
        (*(v47 + 8))(v50, v44);
        v52 = v43 - v51;
        v53 = __swift_project_boxed_opaque_existential_0(v66, v67);
        v54 = __swift_project_boxed_opaque_existential_0(v53 + 6, v53[9]);
        v55 = *(v54 + 7);
        v63 = *(v54 + 6);
        v64 = v55;
        swift_getAtKeyPath();
        v56 = v65;
        if (v52 > v65)
        {
          v56 = v52;
        }

        v9 = v9 + v56;
      }

      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (*(v6 + 104) - 2 > 2)
  {
    goto LABEL_23;
  }

LABEL_12:
  v26 = __swift_project_boxed_opaque_existential_0(v66, &type metadata for _UIListMetrics.SectionProvider);
  v27 = __swift_project_boxed_opaque_existential_0(v26 + 6, v26[9]);
  v28 = *(v27 + 5);
  v63 = *(v27 + 4);
  v64 = v28;
  swift_getAtKeyPath();
  v23 = v65;
  v29 = __swift_project_boxed_opaque_existential_0(v66, v67);
  v30 = __swift_project_boxed_opaque_existential_0(v29 + 6, v29[9]);
  v31 = v30[1];
  v63 = *v30;
  v64 = v31;
  swift_getAtKeyPath();
  v24 = __swift_project_boxed_opaque_existential_0(v66, v67);
  v25 = v65;
LABEL_20:
  v57 = sub_188C2A668(v24, v25);
  v58 = __swift_project_boxed_opaque_existential_0(v66, v67);
  v59 = __swift_project_boxed_opaque_existential_0(v58 + 6, v58[9]);
  v60 = *(v59 + 7);
  v63 = *(v59 + 6);
  v64 = v60;
  swift_getAtKeyPath();
  v61 = v65;
  if (v57 > v65)
  {
    v61 = v57;
  }

  v9 = v23 + v61;
LABEL_23:
  __swift_destroy_boxed_opaque_existential_0Tm(v66);
  return v9;
}

uint64_t sub_188C2890C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33[-1] - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33[-1] - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33[-1] - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33[-1] - v17;
  v33[3] = &type metadata for _UIListMetrics.SectionProvider;
  v33[4] = &off_1EFAD6DC0;
  v19 = swift_allocObject();
  v33[0] = v19;
  sub_188C2A1B4(a1, v19 + 16);
  v20 = __swift_project_boxed_opaque_existential_0(v33, &type metadata for _UIListMetrics.SectionProvider);
  v21 = __swift_project_boxed_opaque_existential_0((v19 + 16), *(v19 + 40));
  v22 = sub_188C26B20(*v21, *(v21 + 8));
  if (v22 >= 3)
  {
    if (v22 - 4 >= 3)
    {
      v23 = *(v19 + 104);
      if (v23 <= 2)
      {
        if (v23 - 1 < 2)
        {
          __swift_project_boxed_opaque_existential_0(v20, v20[3]);
          sub_188E1B6FC(v6);
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
          v15 = v6;
          if (!(*(*(v24 - 8) + 48))(v6, 2, v24))
          {
            goto LABEL_18;
          }

          goto LABEL_10;
        }

LABEL_17:
        __swift_project_boxed_opaque_existential_0(v20, v20[3]);
        sub_188E1B6FC(v9);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
        v15 = v9;
        if (!(*(*(v30 - 8) + 48))(v9, 2, v30))
        {
          goto LABEL_18;
        }

LABEL_15:
        v27 = 6;
        goto LABEL_20;
      }

      if (v23 != 3)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v27 = 13;
    goto LABEL_20;
  }

  v25 = *(v19 + 104);
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      __swift_project_boxed_opaque_existential_0(v20, v20[3]);
      sub_188E1B6FC(v18);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
      v15 = v18;
      if ((*(*(v28 - 8) + 48))(v18, 2, v28))
      {
        v27 = 16;
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_14:
    __swift_project_boxed_opaque_existential_0(v20, v20[3]);
    sub_188E1B6FC(v15);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
    if ((*(*(v29 - 8) + 48))(v15, 2, v29))
    {
      goto LABEL_15;
    }

LABEL_18:
    sub_188AD77B4(v15);
    goto LABEL_19;
  }

  if (v25 - 1 >= 2)
  {
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_0(v20, v20[3]);
  sub_188E1B6FC(v12);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
  v15 = v12;
  if (!(*(*(v26 - 8) + 48))(v12, 2, v26))
  {
    goto LABEL_18;
  }

LABEL_10:
  v27 = 5;
LABEL_20:
  result = __swift_destroy_boxed_opaque_existential_0Tm(v33);
  *a2 = v27;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return result;
}

uint64_t sub_188C28D20(uint64_t a1, void *a2)
{
  sub_188C2A1B4(a1, v14);
  v3 = __swift_project_boxed_opaque_existential_0(v14, v14[3]);
  v4 = sub_188C26B20(*v3, *(v3 + 8));
  if (v4 > 3 || v4 - 1 < 2)
  {
    return sub_188C26480(v14);
  }

  if (!v4)
  {
    sub_188C26480(v14);
    return _UISolariumEnabled();
  }

  if (v15 - 3 >= 2)
  {
    return sub_188C26480(v14);
  }

  v6 = a2[5];
  v7 = a2[6];
  v8 = __swift_project_boxed_opaque_existential_0(a2 + 2, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  (*(v7 + 32))(v6, v7);
  (*(v9 + 8))(v12, v6);
  return sub_188C26480(v14);
}

double sub_188C28F0C(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = &type metadata for _UIListMetrics.SectionProvider;
  v36 = &off_1EFAD6DE0;
  v5 = swift_allocObject();
  v34[0] = v5;
  sub_188C2A1B4(a1, v5 + 16);
  v6 = __swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40));
  v7 = sub_188C26B20(*v6, *(v6 + 8));
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      v8 = 20.0;
      if (*(v5 + 104) - 1 < 2)
      {
        if (dyld_program_sdk_at_least())
        {
          v8 = 30.0;
        }

        else
        {
          v8 = 20.0;
        }
      }

      goto LABEL_26;
    }

    if (v7 == 5)
    {
      v8 = 20.0;
      if (*(v5 + 104) != 3)
      {
        goto LABEL_26;
      }

      v17 = xmmword_18A661BA0;
      v18 = xmmword_18A661BB0;
LABEL_25:
      v32 = v17;
      v33 = v18;
      swift_getAtKeyPath();
      v8 = v31;
      goto LABEL_26;
    }
  }

  else if (v7 - 1 >= 2)
  {
    v8 = 12.0;
    if (!v7)
    {
      goto LABEL_26;
    }

    v9 = *(v5 + 104);
    if (v9 >= 2)
    {
      if (v9 - 3 < 2)
      {
        v10 = a3[5];
        v11 = a3[6];
        v12 = __swift_project_boxed_opaque_existential_0(a3 + 2, v10);
        v13 = *(v10 - 8);
        v14 = MEMORY[0x1EEE9AC00](v12);
        v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v13 + 16))(v16, v14);
        v8 = (*(v11 + 16))(v10, v11);
        (*(v13 + 8))(v16, v10);
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v19 = *(v5 + 104);
  if (v19 <= 2)
  {
    if (v19 >= 2)
    {
LABEL_24:
      v27 = __swift_project_boxed_opaque_existential_0(v34, &type metadata for _UIListMetrics.SectionProvider);
      v28 = __swift_project_boxed_opaque_existential_0(v27 + 6, v27[9]);
      v17 = *v28;
      v18 = v28[1];
      goto LABEL_25;
    }

LABEL_13:
    v20 = __swift_project_boxed_opaque_existential_0(v34, &type metadata for _UIListMetrics.SectionProvider);
    v21 = __swift_project_boxed_opaque_existential_0(v20 + 6, v20[9]);
    v22 = v21[1];
    v32 = *v21;
    v33 = v22;
    swift_getAtKeyPath();
    v23 = __swift_project_boxed_opaque_existential_0(v34, v35);
    v8 = sub_188C2A668(v23, v31);
    v24 = __swift_project_boxed_opaque_existential_0(v34, v35);
    v25 = __swift_project_boxed_opaque_existential_0(v24 + 6, v24[9]);
    v26 = *(v25 + 7);
    v32 = *(v25 + 6);
    v33 = v26;
    swift_getAtKeyPath();
    if (v8 <= v31)
    {
      v8 = v31;
    }

    goto LABEL_26;
  }

  v8 = 8.0;
  if (v19 == 3)
  {
    if (_UISolariumEnabled())
    {
      v8 = 16.0;
    }

    else
    {
      v8 = 8.0;
    }
  }

LABEL_26:
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  return v8;
}

double sub_188C29238(uint64_t a1, double a2)
{
  v17 = &type metadata for _UIListMetrics.SectionProvider;
  v18 = &off_1EFAD6DE0;
  v4 = swift_allocObject();
  v16[0] = v4;
  sub_188C2A1B4(a1, v4 + 16);
  v5 = __swift_project_boxed_opaque_existential_0((v4 + 16), *(v4 + 40));
  v6 = 0.0;
  if ((sub_188C26B20(*v5, *(v5 + 8)) - 1) <= 2u)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v16, &type metadata for _UIListMetrics.SectionProvider);
    v8 = *(__swift_project_boxed_opaque_existential_0(v7 + 6, v7[9]) + 15);
    v9 = *(v4 + 104);
    v10 = _UISolariumEnabled();
    if (v9 > 1)
    {
      if (v10)
      {
        if (v8 < a2)
        {
          v6 = a2;
        }

        else
        {
          v6 = v8;
        }
      }
    }

    else if (v10)
    {
      v11 = __swift_project_boxed_opaque_existential_0(v16, v17);
      v12 = *(__swift_project_boxed_opaque_existential_0(v11 + 6, v11[9]) + 11);
      if (v8 < a2)
      {
        v13 = a2;
      }

      else
      {
        v13 = v8;
      }

      v6 = v13 + v12;
    }

    else if (v8 > 0.0)
    {
      v14 = __swift_project_boxed_opaque_existential_0(v16, v17);
      v6 = v8 + *(__swift_project_boxed_opaque_existential_0(v14 + 6, v14[9]) + 11);
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return v6;
}

double sub_188C2948C(uint64_t a1)
{
  v37 = &type metadata for _UIListMetrics.SectionProvider;
  v38 = &off_1EFAD6DE0;
  v2 = swift_allocObject();
  v36[0] = v2;
  sub_188C2A1B4(a1, v2 + 16);
  if (*(__swift_project_boxed_opaque_existential_0(v36, &type metadata for _UIListMetrics.SectionProvider) + 40) == 1)
  {
    v3 = __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
    v4 = sub_188C26B20(*v3, *(v3 + 8));
    v5 = 0.0;
    if (v4 > 3)
    {
      if (v4 != 4)
      {
        if (v4 == 5)
        {
          if ((__swift_project_boxed_opaque_existential_0(v36, v37)[12] & 1) == 0)
          {
            if (*(v2 + 104) == 3)
            {
              v5 = 0.0;
            }

            else
            {
              v5 = 24.0;
            }
          }
        }

        else
        {
          v27 = v37;
          v28 = __swift_project_boxed_opaque_existential_0(v36, v37);
          Description = v27[-1].Description;
          v30 = MEMORY[0x1EEE9AC00](v28);
          v32 = &v36[-1] - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
          Description[2](v32, v30);
          v33 = sub_188C9BAF4(v32);
          (Description[1])(v32, v27);
          if (v33 == 1)
          {
            v5 = 22.0;
          }

          else
          {
            v5 = 0.0;
          }
        }
      }
    }

    else
    {
      if (v4 - 1 < 2)
      {
        v6 = v37;
        v7 = __swift_project_boxed_opaque_existential_0(v36, v37);
        v8 = v6[-1].Description;
        v9 = MEMORY[0x1EEE9AC00](v7);
        v11 = &v36[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
        v8[2](v11, v9);
        v12 = sub_188C9BAF4(v11);
        (v8[1])(v11, v6);
        if (v12 <= 1u)
        {
          v5 = 22.0;
          if (v12)
          {
            goto LABEL_47;
          }

          goto LABEL_39;
        }

        if (v12 == 2)
        {
LABEL_39:
          v5 = 0.0;
          goto LABEL_47;
        }

        v17 = _UIFloatingBarEnabled() == 0;
        v18 = 0.0;
        v19 = 22.0;
        goto LABEL_44;
      }

      if (v4)
      {
        v20 = v37;
        v21 = __swift_project_boxed_opaque_existential_0(v36, v37);
        v22 = v20[-1].Description;
        v23 = MEMORY[0x1EEE9AC00](v21);
        v25 = &v36[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22[2](v25, v23);
        v26 = sub_188C9BAF4(v25);
        (v22[1])(v25, v20);
        if (v26 == 1)
        {
          v5 = 28.0;
        }

        else
        {
          v5 = 0.0;
        }
      }
    }
  }

  else
  {
    if ((__swift_project_boxed_opaque_existential_0(v36, v37)[12] & 1) == 0 || !dyld_program_sdk_at_least())
    {
      v14 = __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
      v15 = sub_188C26B20(*v14, *(v14 + 8));
      if (v15 > 3)
      {
        if (v15 == 4)
        {
          if (*(v2 + 104) - 1 >= 2)
          {
            v5 = 0.0;
          }

          else
          {
            v5 = 7.0;
          }

          goto LABEL_47;
        }

        if (v15 == 5)
        {
          v16 = *(v2 + 104);
          if (v16 > 2)
          {
            v5 = 12.0;
            if (v16 == 3)
            {
              goto LABEL_47;
            }
          }

          else if (v16 - 1 < 2)
          {
            v17 = *(__swift_project_boxed_opaque_existential_0(v36, v37) + 144) == 0;
            v18 = 12.0;
            v19 = 6.0;
LABEL_44:
            if (v17)
            {
              v5 = v18;
            }

            else
            {
              v5 = v19;
            }

            goto LABEL_47;
          }

          v5 = 24.0;
          goto LABEL_47;
        }
      }

      else if (v15 - 1 >= 3)
      {
        if (*(v2 + 104) - 1 >= 2)
        {
          v5 = 0.0;
        }

        else
        {
          v5 = 28.0;
        }

        goto LABEL_47;
      }

      v5 = 0.0;
      if (*(v2 + 104) - 1 > 1)
      {
        goto LABEL_47;
      }

      v17 = *(__swift_project_boxed_opaque_existential_0(v36, v37) + 144) == 0;
      v18 = 17.5;
      v19 = 6.0;
      goto LABEL_44;
    }

    v13 = __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
    v5 = 0.0;
    if (sub_188C26B20(*v13, *(v13 + 8)) != 5)
    {
      if (*(v2 + 104) - 1 >= 2)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = 35.0;
      }
    }
  }

LABEL_47:
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  return v5;
}

double sub_188C299D8(uint64_t a1, double a2)
{
  v13 = &type metadata for _UIListMetrics.SectionProvider;
  v14 = &off_1EFAD6DE0;
  v4 = swift_allocObject();
  v12[0] = v4;
  sub_188C2A1B4(a1, v4 + 16);
  v5 = __swift_project_boxed_opaque_existential_0((v4 + 16), *(v4 + 40));
  v6 = 0.0;
  if ((sub_188C26B20(*v5, *(v5 + 8)) - 1) <= 2u)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v12, &type metadata for _UIListMetrics.SectionProvider);
    v6 = *(__swift_project_boxed_opaque_existential_0(v7 + 6, v7[9]) + 13);
    if (*(v4 + 104) > 1u)
    {
      if (v6 < a2)
      {
        v6 = a2;
      }
    }

    else
    {
      v8 = __swift_project_boxed_opaque_existential_0(v12, v13);
      v9 = *(__swift_project_boxed_opaque_existential_0(v8 + 6, v8[9]) + 9);
      if (v6 < a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = v6;
      }

      v6 = v10 + v9;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v6;
}

double sub_188C29CAC@<D0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, _OWORD *a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  if (qword_1ED48CAA0 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED4A3490;
  v54 = &_s26CoreListMetricsEnvironmentVN;
  v55 = &off_1EFAF9A80;
  BYTE8(v53) = 7;
  *(&v51 + 1) = &_s23CoreListMetricsGeometryVN;
  v52 = &off_1EFAF99E8;
  *&v53 = a7;
  v17 = swift_allocObject();
  *&v50.f64[0] = v17;
  v18 = a4[7];
  v17[7] = a4[6];
  v17[8] = v18;
  v17[9] = a4[8];
  v19 = a4[3];
  v17[3] = a4[2];
  v17[4] = v19;
  v20 = a4[5];
  v17[5] = a4[4];
  v17[6] = v20;
  v21 = a4[1];
  v17[1] = *a4;
  v17[2] = v21;
  v22 = a7;
  v23 = sub_188C2550C(a5);
  if ((a1 & 2) != 0)
  {
    if ((a1 & 4) != 0)
    {
      v24 = 3;
      if ((a1 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v24 = 1;
    if ((a1 & 8) != 0)
    {
LABEL_13:
      v24 |= 4uLL;
    }
  }

  else
  {
    if ((a1 & 4) == 0)
    {
      v24 = 0;
      if ((a1 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v24 = 2;
    if ((a1 & 8) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  sub_188A53994(v16 + 24, v59);
  v25 = sub_188C2A0DC(a6);
  sub_188A5EBAC(&v53, v56);
  v56[40] = a2 & 1;
  v56[41] = a3 & 1;
  sub_188A5EBAC(&v50, v57);
  v57[40] = v23;
  v58 = v24;
  v59[40] = v25 & 1;
  v26 = *(v16 + 16);
  *(&v51 + 1) = &type metadata for _UIListMetrics.SectionProvider;
  v52 = &off_1EFAD6DE0;
  *&v50.f64[0] = swift_allocObject();
  sub_188C2A1B4(v56, *&v50.f64[0] + 16);
  sub_188C26A24(v26 + 56, &v48);
  if (v49)
  {
    sub_188A5EBAC(&v48, &v53);
    v27 = v55;
    v28 = __swift_project_boxed_opaque_existential_0(&v53, v54);
    v29 = MEMORY[0x1EEE9AC00](v28);
    (v27[2])(&v48, &v50, sub_188FE243C, v29);
    __swift_destroy_boxed_opaque_existential_0Tm(&v53);
  }

  else
  {
    sub_188C26A94(&v48);
    sub_188C2A1EC(&v50, &v48);
  }

  sub_188A5EBAC(&v48, &v53);
  __swift_destroy_boxed_opaque_existential_0Tm(&v50);
  v30 = __swift_project_boxed_opaque_existential_0(&v53, v54);
  v50 = *v30;
  v51 = *(v30 + 1);
  LOBYTE(v52) = *(v30 + 32);
  v31 = sub_188C2744C(&v50);
  sub_188C26480(v56);
  v32 = *(__swift_project_boxed_opaque_existential_0(&v53, v54) + 33);
  v33 = __swift_project_boxed_opaque_existential_0(&v53, v54);
  v42 = *(v33 + 7);
  v43 = *(v33 + 5);
  v46 = __swift_project_boxed_opaque_existential_0(&v53, v54)[9];
  v34 = __swift_project_boxed_opaque_existential_0(&v53, v54);
  v44 = v34[13];
  *&v35 = v46;
  *(&v35 + 1) = v34[10];
  v47 = v35;
  v41 = *(v34 + 11);
  v36 = __swift_project_boxed_opaque_existential_0(&v53, v54);
  v40 = *(v36 + 15);
  v37 = v36[17];
  *&v38 = v44;
  *(&v38 + 1) = v36[14];
  v45 = v38;
  __swift_destroy_boxed_opaque_existential_0Tm(&v53);

  *a8 = v31;
  *(a8 + 8) = v32;
  *(a8 + 16) = v43;
  *(a8 + 32) = v42;
  *(a8 + 48) = v47;
  *(a8 + 64) = v41;
  result = *&v45;
  *(a8 + 80) = v45;
  *(a8 + 96) = v40;
  *(a8 + 112) = v37;
  return result;
}

uint64_t sub_188C2A094()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 120);

  return MEMORY[0x1EEE6BDD0](v0, 161, 7);
}

unint64_t sub_188C2A0DC(unint64_t result)
{
  if (result > 1)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000035, 0x800000018A6B4760);
    type metadata accessor for _UIListSectionSpacingStyle(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

double sub_188C2A1EC@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = a1[3];
  v7 = __swift_project_boxed_opaque_existential_0(a1, v6);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v9);
  sub_188C2890C(v11, v52);
  v46 = v53;
  (*(v8 + 8))(v11, v6);
  v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_188C2A1B4(v12, v51);
  sub_188A53994(v51, v50);
  sub_188C26480(v51);
  v13 = __swift_project_boxed_opaque_existential_0(v50, v50[3]);
  if (sub_188C26B20(*v13, *(v13 + 8)) == 4)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  v45 = v14;
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v48 = &type metadata for _UIListMetrics.SectionProvider;
  v49 = &off_1EFAD6DE0;
  v47[0] = swift_allocObject();
  sub_188C2A1B4(v15, v47[0] + 16);
  v16 = __swift_project_boxed_opaque_existential_0(v47, &type metadata for _UIListMetrics.SectionProvider);
  v44 = sub_188C2948C(v16);
  KeyPath = swift_getKeyPath();
  v18 = __swift_project_boxed_opaque_existential_0(v47, v48);
  v19 = sub_188C28350(v18, KeyPath, v3);

  v20 = __swift_project_boxed_opaque_existential_0(v47, v48);
  v21 = sub_188C264C0(v20);
  v22 = swift_getKeyPath();
  v23 = __swift_project_boxed_opaque_existential_0(v47, v48);
  v24 = sub_188C28350(v23, v22, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  v25 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_188C28D20(v25, v3);
  v27 = v26;
  v28 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v48 = &type metadata for _UIListMetrics.SectionProvider;
  v49 = &off_1EFAD6DE0;
  v47[0] = swift_allocObject();
  sub_188C2A1B4(v28, v47[0] + 16);
  v29 = swift_getKeyPath();
  v30 = __swift_project_boxed_opaque_existential_0(v47, &type metadata for _UIListMetrics.SectionProvider);
  v31 = sub_188C28F0C(v30, v29, v3);

  v32 = swift_getKeyPath();
  v33 = __swift_project_boxed_opaque_existential_0(v47, v48);
  v34 = sub_188C28F0C(v33, v32, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  v35 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v48 = &type metadata for _UIListMetrics.SectionProvider;
  v49 = &off_1EFAD6DE0;
  v47[0] = swift_allocObject();
  sub_188C2A1B4(v35, v47[0] + 16);
  v36 = __swift_project_boxed_opaque_existential_0(v47, &type metadata for _UIListMetrics.SectionProvider);
  v37 = sub_188C299D8(v36, v31);
  v38 = __swift_project_boxed_opaque_existential_0(v47, v48);
  v39 = sub_188C29238(v38, v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  LOBYTE(v47[0]) = v46;
  a2[3] = &_s14SectionMetricsVN;
  a2[4] = &off_1EFAE0BD8;
  v40 = swift_allocObject();
  *a2 = v40;
  v41 = v52[1];
  *(v40 + 16) = v52[0];
  *(v40 + 32) = v41;
  *(v40 + 48) = v47[0];
  *(v40 + 49) = v45;
  result = v44;
  *(v40 + 56) = v44;
  *(v40 + 64) = v19;
  *(v40 + 72) = v21;
  *(v40 + 80) = v24;
  *(v40 + 88) = v27;
  *(v40 + 96) = 0;
  *(v40 + 104) = v31;
  *(v40 + 112) = 0;
  *(v40 + 120) = v34;
  *(v40 + 128) = 0;
  *(v40 + 136) = v37;
  *(v40 + 144) = 0;
  *(v40 + 152) = v39;
  return result;
}

uint64_t sub_188C2A610()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 120);

  return MEMORY[0x1EEE6BDD0](v0, 161, 7);
}

double sub_188C2A668(uint64_t a1, double a2)
{
  v9 = &type metadata for _UIListMetrics.SectionProvider;
  v10 = &off_1EFAD6DE0;
  v8[0] = swift_allocObject();
  sub_188C2A1B4(a1, v8[0] + 16);
  v4 = __swift_project_boxed_opaque_existential_0(v8, &type metadata for _UIListMetrics.SectionProvider);
  __swift_project_boxed_opaque_existential_0(v4 + 6, v4[9]);
  swift_getAtKeyPath();
  v5 = __swift_project_boxed_opaque_existential_0(v8, v9);
  __swift_project_boxed_opaque_existential_0(v5 + 6, v5[9]);
  swift_getAtKeyPath();
  if (v7 - v7 >= a2)
  {
    a2 = v7 - v7;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return a2;
}

uint64_t _UIListEnvironmentFromTableViewStyle(unint64_t a1)
{
  if (a1 < 3)
  {
    return a1 + 2;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIListEnvironment _UIListEnvironmentFromTableViewStyle(UITableViewStyle)"];
  [v3 handleFailureInFunction:v4 file:@"UITraitListEnvironment.m" lineNumber:61 description:{@"Received unknown UITableViewStyle %ld", a1}];

  return 2;
}

uint64_t _UIListGeometryEqualToListGeometry(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[8].f64[0] == a2[8].f64[0] && a1[8].f64[1] == a2[8].f64[1];
  if (v2 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3])))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[4], a2[4]), vceqq_f64(a1[5], a2[5])))) & 1) != 0)
  {
    v3 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[6], a2[6]), vceqq_f64(a1[7], a2[7]))));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t TaggingAppearanceIntegerSetterIMP(void *a1, const char *a2, uint64_t a3)
{
  _UIAppearanceTagObjectForSelector(a1, a2, 0);
  PushNextClassForSettingIMP(a1, a2);
  v6 = CurrentOrginalSettingIMP(a1, a2);
  (v6)(a1, a2, a3);
  AssociatedObject = objc_getAssociatedObject(a1, &unk_1ED49E5DA);
  v8 = [AssociatedObject objectForKey:NSStringFromSelector(a2)];

  return [v8 removeLastObject];
}

uint64_t _UIBundleIDIsAccountBased(void *a1)
{
  v1 = MEMORY[0x1E69ADFB8];
  v2 = a1;
  v3 = [v1 sharedConnection];
  v4 = [v3 isBundleIDAccountBasedForDragDrop:v2];

  return v4;
}

uint64_t _UIApplicationIsAccountBased()
{
  if (qword_1ED4A2710 != -1)
  {
    dispatch_once(&qword_1ED4A2710, &__block_literal_global_655);
  }

  return _MergedGlobals_1357;
}

void UIColorBreakForOutOfRangeColorComponents()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __UIColorBreakForOutOfRangeColorComponents_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "UIColorBreakForOutOfRangeColorComponents";
  if (UIColorBreakForOutOfRangeColorComponents_once[0] != -1)
  {
    dispatch_once(UIColorBreakForOutOfRangeColorComponents_once, block);
  }
}

void __UIColorBreakForOutOfRangeColorComponents_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Graphics", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_12) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "UIColor created with component values far outside the expected range. Set a breakpoint on %s to debug. This message will only be logged once.", &v4, 0xCu);
  }
}

uint64_t UICollectionLayoutListConfiguration.init(appearance:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_allocWithZone(UICollectionLayoutListConfiguration) initWithAppearance_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

unint64_t sub_188C2E864()
{
  result = qword_1ED48BEC8[0];
  if (!qword_1ED48BEC8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED48BEC8);
  }

  return result;
}

uint64_t sub_188C2EE50(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_188B8B63C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_188C2F0A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C250);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v49 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v26 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v29 = v26 | (v8 << 6);
      v30 = *(*(v5 + 48) + 8 * v29);
      v31 = (*(v5 + 56) + 192 * v29);
      if (a2)
      {
        v32 = *v31;
        v33 = v31[1];
        v34 = v31[3];
        v52 = v31[2];
        v53 = v34;
        v50 = v32;
        v51 = v33;
        v35 = v31[4];
        v36 = v31[5];
        v37 = v31[7];
        v56 = v31[6];
        v57 = v37;
        v54 = v35;
        v55 = v36;
        v38 = v31[8];
        v39 = v31[9];
        v40 = v31[10];
        *(v60 + 9) = *(v31 + 169);
        v59 = v39;
        v60[0] = v40;
        v58 = v38;
      }

      else
      {
        sub_188C2F56C(v31, &v50);
      }

      result = sub_18A4A8878();
      v41 = -1 << *(v7 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v14 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v14 + 8 * v43);
          if (v47 != -1)
          {
            v15 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v42) & ~*(v14 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v30;
      v16 = (*(v7 + 56) + 192 * v15);
      v17 = v50;
      v18 = v51;
      v19 = v53;
      v16[2] = v52;
      v16[3] = v19;
      *v16 = v17;
      v16[1] = v18;
      v20 = v54;
      v21 = v55;
      v22 = v57;
      v16[6] = v56;
      v16[7] = v22;
      v16[4] = v20;
      v16[5] = v21;
      v23 = v58;
      v24 = v59;
      v25 = v60[0];
      *(v16 + 169) = *(v60 + 9);
      v16[9] = v24;
      v16[10] = v25;
      v16[8] = v23;
      ++*(v7 + 16);
    }

    v27 = v8;
    while (1)
    {
      v8 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v28 = v9[v8];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v12 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v48 = 1 << *(v5 + 32);
      if (v48 >= 64)
      {
        bzero((v5 + 64), ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v48;
      }

      *(v5 + 16) = 0;
    }

    v3 = v49;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_188C2F390()
{
  v1 = v0;
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [v0 navigationBar];
  v3 = [v2 _privateDelegate];

  if (!v3)
  {
    return 0;
  }

  if ([v3 respondsToSelector_])
  {
    v4 = [v3 _navigationBarLayoutIsInInteractiveScroll];
  }

  else
  {
    v4 = 0;
  }

  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  if ([v3 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v5 = [v1 navigationBar];
    [v3 _navigationBar_getContentOffsetOfObservedScrollViewIfApplicable_velocity_];

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v4;
}

uint64_t sub_188C2F500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

BOOL sub_188C2F5C8(uint64_t a1, uint64_t a2)
{
  sub_188AA72A8(a1, v22);
  sub_188AA72A8(a2, &v28);
  if (v27 > 1u)
  {
    if (v27 == 2)
    {
      sub_188AA72A8(v22, &v17);
      if (v30 != 2)
      {

        goto LABEL_24;
      }

      v4 = BYTE8(v17);
      v5 = BYTE8(v28);
      v6 = sub_18A4A6C28();

      if ((v6 & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v4 != 2)
      {
        if (v5 != 2 && ((v5 ^ v4) & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      if (v5 != 2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = vorrq_s8(vorrq_s8(v23, v25), vorrq_s8(v24, v26));
      if (v22[0] | *&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | v22[1] | v22[2])
      {
        if (v30 != 3)
        {
          goto LABEL_24;
        }

        if (v28 != 1)
        {
          goto LABEL_24;
        }

        v14 = vorrq_s8(vorrq_s8(*&v29[8], *&v29[40]), vorrq_s8(*&v29[24], *&v29[56]));
        if (*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *v29 | *(&v28 + 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v30 != 3)
        {
          goto LABEL_24;
        }

        v15 = vorrq_s8(vorrq_s8(*&v29[8], *&v29[40]), vorrq_s8(*&v29[24], *&v29[56]));
        if (*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | *v29 | *(&v28 + 1) | v28)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_31:
    sub_188AA7808(v22);
    return 1;
  }

  if (v27)
  {
    sub_188AA72A8(v22, &v17);
    if (v30 != 1)
    {
      sub_189018D64(&v17);
      goto LABEL_24;
    }

    v35 = *&v29[16];
    v36 = *&v29[32];
    v37 = *&v29[48];
    v33 = v28;
    v34 = *v29;
    v7 = *(&v18 + 1);
    __swift_project_boxed_opaque_existential_0(&v17, *(&v18 + 1));
    v8 = *(&v34 + 1);
    v9 = __swift_project_boxed_opaque_existential_0(&v33, *(&v34 + 1));
    if (sub_18901899C(v9, v7, v8))
    {
      v10 = v20;
      __swift_project_boxed_opaque_existential_0(v19 + 1, v20);
      v11 = v37;
      v12 = __swift_project_boxed_opaque_existential_0(&v35 + 1, v37);
      LOBYTE(v10) = sub_18901899C(v12, v10, v11);
      sub_189018D64(&v33);
      sub_189018D64(&v17);
      if (v10)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_189018D64(&v33);
      sub_189018D64(&v17);
    }

LABEL_26:
    sub_188AA7808(v22);
    return 0;
  }

  sub_188AA72A8(v22, &v17);
  v31[2] = v19[0];
  v31[3] = v19[1];
  v31[4] = v20;
  v32 = v21;
  v31[0] = v17;
  v31[1] = v18;
  if (v30)
  {
LABEL_24:
    sub_189018CFC(v22);
    return 0;
  }

  v35 = *&v29[16];
  v36 = *&v29[32];
  v37 = *&v29[48];
  v38 = *&v29[64];
  v33 = v28;
  v34 = *v29;
  v3 = sub_188C2F918(v31, &v33);
  sub_188AA7808(v22);
  return v3;
}

BOOL sub_188C2F918(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 40);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((*(a2 + 40) & 0x8000000000000000) == 0 && *a2 == v3)
    {
      return *(a2 + 8) == v2;
    }

    return 0;
  }

  v6 = *(a2 + 40);
  if ((v6 & 0x8000000000000000) == 0 || *a2 != v3 || *(a2 + 8) != v2)
  {
    return 0;
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 24) & 1 | (*(a1 + 16) != *(a2 + 16)))
  {
    return 0;
  }

  if (v4)
  {
    if ((v6 & (*(a1 + 48) == *(a2 + 48))) != 1)
    {
      return 0;
    }

    v11 = vmovn_s64(vceqq_f64(v7, v9));
    if ((v11.i8[0] & 1) == 0 || (v11.i8[4] & 1) == 0 || v8 != v10)
    {
      return 0;
    }
  }

  else
  {
    v12.f64[1] = *(a1 + 48);
    v13.f64[1] = *(a2 + 48);
    v12.f64[0] = *(a1 + 32);
    v13.f64[0] = *(a2 + 32);
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v12, v13), vceqq_f64(v7, v9)))) & 1) == 0 || v8 != v10 || ((v6 ^ 1) & 1) == 0)
    {
      return 0;
    }
  }

  return *(a1 + 80) == *(a2 + 80);
}

id _itemListUpdatingFirstItem(void *a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v4)
  {
    if (v5 > 1)
    {
      v8 = [v3 indexOfObjectIdenticalTo:v4];
      if (v8)
      {
        v9 = v8;
        v10 = [v3 mutableCopy];
        v11 = v10;
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v10 setObject:v4 atIndexedSubscript:0];
        }

        else
        {
          [v10 removeObjectAtIndex:v9];
          [v11 insertObject:v4 atIndex:0];
        }

        v7 = [v11 copy];

        goto LABEL_14;
      }

      v6 = v3;
    }

    else
    {
      v13[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    }
  }

  else
  {
    if (v5 < 2)
    {
      v7 = 0;
      goto LABEL_14;
    }

    v6 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
  }

  v7 = v6;
LABEL_14:

  return v7;
}

id static UICollectionViewCompositionalLayout.list(using:)(uint64_t a1)
{
  [*(*a1 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188C2E864();
  swift_dynamicCast();
  v1 = [objc_opt_self() layoutWithListConfiguration_];

  return v1;
}

id _BarButtonCachedSystemImageWithName(void *a1, void *a2, void *a3, void *a4, int a5, double a6, double a7, double a8, double a9)
{
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  if (v17 | v18)
  {
    if (qword_1ED49CBC0 != -1)
    {
      dispatch_once(&qword_1ED49CBC0, &__block_literal_global_351_0);
    }

    if (v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = v18;
    }

    v21 = [qword_1ED49CBB8 objectForKey:v22];
    if (!v21)
    {
      v21 = [UIImage _systemImageNamed:v17 fallback:v18 withConfiguration:v19];
      if (v21)
      {
        [qword_1ED49CBB8 setObject:v21 forKey:v18];
      }
    }

    if (v20)
    {
      v23 = [v21 imageWithTintColor:v20 renderingMode:1];

      v21 = v23;
    }

    if (([v21 _isSymbolImage] & 1) == 0)
    {
      [v21 _setAlignmentRectInsets:{a6, a7, a8, a9}];
    }

    if (a5)
    {
      v24 = [v21 imageFlippedForRightToLeftLayoutDirection];

      v21 = v24;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

BOOL BarButtonItemResolveSystemBackgroundImage(uint64_t a1, void **a2, uint64_t a3)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    if (a1 == 24)
    {
      v7 = [UIButton _defaultBackgroundImageNameForType:7 andState:0 compact:a3];
      v8 = [UIButton _defaultBackgroundImageColorForType:7 andState:0];
      if (v7)
      {
        if (a2)
        {
          v9 = _BarButtonCachedSystemImageWithName(0, v7, 0, v8, 0, 0.0, 0.0, 0.0, 0.0);
          v10 = *a2;
          *a2 = v9;

          v6 = *a2 != 0;
        }

        else
        {
          v6 = 1;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v6 = 0;
LABEL_9:

    return v6;
  }

  return 0;
}

uint64_t sub_188C317BC(uint64_t result)
{
  if (*(result + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_hasStarted) == 1)
  {
    v2 = result;
    if ((*(result + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_hasCompleted) & 1) == 0)
    {
      v3 = v1;
      *(result + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_hasCompleted) = 1;
      v4 = OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_updates;
      swift_beginAccess();
      v5 = *(v3 + v4);
      v8 = *(v5 + 64);
      v7 = v5 + 64;
      v6 = v8;
      v9 = 1 << *(*(v3 + v4) + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & v6;
      v40 = (v2 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_id);
      v41 = *(v3 + v4);
      v12 = (v9 + 63) >> 6;

      v13 = 0;
      v44 = v4;
      v38 = v3;
      v39 = v2;
      while (v11)
      {
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = v18 | (v13 << 6);
        v20 = *(v41 + 48) + 16 * v19;
        v21 = *v20;
        v43 = *(v20 + 8);
        v22 = (*(v41 + 56) + (v19 << 6));
        v45 = v22[4];
        v23 = v22[6];
        v24 = v22[2] == *v40 && v22[3] == v40[1];
        if (v24 || (sub_18A4A86C8() & 1) != 0)
        {

          sub_188A52E38(v45);
          if (v23)
          {
            sub_188A52E38(v23);
            v23(v2);
          }

          swift_beginAccess();
          v25 = sub_188B16FC0(v21, v43);
          if (v26)
          {
            v27 = v25;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29 = *(v3 + v44);
            v46 = v29;
            *(v3 + v44) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_188C31B7C();
              v29 = v46;
            }

            v14 = *(v29 + 56) + (v27 << 6);
            v42 = v27;
            v15 = *(v14 + 32);
            v16 = *(v14 + 48);

            sub_188A55B8C(v15);
            sub_188A55B8C(v16);
            sub_188C31D4C(v42, v29);
            v3 = v38;
            v2 = v39;
            *(v38 + v44) = v29;
          }

          swift_endAccess();

          sub_188A55B8C(v45);
          sub_188A55B8C(v23);
        }
      }

      while (1)
      {
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_33;
        }

        if (v17 >= v12)
        {
          break;
        }

        v11 = *(v7 + 8 * v17);
        ++v13;
        if (v11)
        {
          v13 = v17;
          goto LABEL_13;
        }
      }

      v30 = (v2 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_completion);
      v31 = *(v2 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_completion);
      if (v31)
      {

        v31(v2);
        sub_188A55B8C(v31);
        v32 = *v30;
      }

      else
      {
        v32 = 0;
      }

      *v30 = 0;
      v30[1] = 0;
      sub_188A55B8C(v32);
      v33 = OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_transitionCoordinatorCompletions;
      swift_beginAccess();
      v34 = *(v2 + v33);
      v35 = *(v34 + 16);
      if (v35)
      {

        v36 = v34 + 40;
        do
        {
          v37 = *(v36 - 8);
          v46 = v2;

          v37(&v46);

          v36 += 16;
          --v35;
        }

        while (v35);
      }

      *(v2 + v33) = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
LABEL_33:
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

void *sub_188C31B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D08);
  v29 = v0;
  v1 = *v0;
  v2 = sub_18A4A8458();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = *(v1 + 48) + 16 * v16;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v16 <<= 6;
        v20 = *(v1 + 56) + v16;
        v30 = *v20;
        v21 = *(v20 + 24);
        v22 = *(v20 + 16);
        v23 = *(v20 + 32);
        v24 = *(v20 + 40);
        v25 = *(v20 + 48);
        v26 = *(v20 + 56);
        v27 = *(v3 + 48) + v17;
        *v27 = v19;
        *(v27 + 8) = v18;
        v28 = *(v3 + 56) + v16;
        *v28 = v30;
        *(v28 + 16) = v22;
        *(v28 + 24) = v21;
        *(v28 + 32) = v23;
        *(v28 + 40) = v24;
        *(v28 + 48) = v25;
        *(v28 + 56) = v26;

        sub_188A52E38(v23);
        result = sub_188A52E38(v25);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v3;
  }

  return result;
}

uint64_t sub_188C31D4C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    while (1)
    {
      v12 = 16 * v6;
      v13 = *(a2 + 48) + 16 * v6;
      v14 = *v13;
      v15 = *(v13 + 8);
      sub_18A4A8888();
      if (v15 <= 1)
      {
        break;
      }

      if (v15 == 2)
      {
        v16 = 2;
        goto LABEL_9;
      }

      if (v14)
      {
        v14 = 4;
      }

      else
      {
        v14 = 3;
      }

LABEL_13:
      MEMORY[0x18CFE37E0](v14);
      result = sub_18A4A88E8();
      v17 = result & v7;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v8)
      {
        goto LABEL_18;
      }

      if (v3 >= v17)
      {
LABEL_18:
        v18 = *(a2 + 48);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + v12);
        if (16 * v3 != v12 || v19 >= v20 + 1)
        {
          *v19 = *v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + (v3 << 6));
        v23 = (v21 + (v6 << 6));
        if (v3 != v6 || v22 >= v23 + 4)
        {
          v9 = *v23;
          v10 = v23[1];
          v11 = v23[3];
          v22[2] = v23[2];
          v22[3] = v11;
          *v22 = v9;
          v22[1] = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v16 = v15 != 0;
LABEL_9:
    MEMORY[0x18CFE37E0](v16);
    goto LABEL_13;
  }

LABEL_24:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So46_UISplitViewControllerAdaptiveLayoutTransitionCIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_188C320FC()
{
  v7.super_class = _UISplitViewControllerAdaptiveColumnView;
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = [v0 clippingView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }

  v3 = [v0 contentView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame_];
  }

  v5 = [v0 dimmingView];
  if (v5)
  {
    v6 = v5;
    [v0 bounds];
    [v6 setFrame_];
  }
}

void sub_188C32364()
{
  if (!_UIScrollPocketAllowHorizontalPockets())
  {
    return;
  }

  [v0 scrollPocketInsets];
  if (v1 > 0.0)
  {
    v2 = [v0 prepareScrollPocketInteractionWithEdge_];
LABEL_5:
    [v0 scrollPocketInsets];
    v4 = v3;
    [v0 scrollPocketInsets];
    v6 = v5;
    [v0 bounds];
    Height = CGRectGetHeight(v26);
    [v0 scrollPocketInsets];
    v9 = Height - v8;
    [v0 scrollPocketInsets];
    [v2 _setRect_];

    goto LABEL_6;
  }

  v2 = [v0 leftScrollPocketInteraction];
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_6:
  [v0 scrollPocketInsets];
  if (v11 <= 0.0)
  {
    v12 = [v0 rightScrollPocketInteraction];
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = [v0 prepareScrollPocketInteractionWithEdge_];
  }

  v24 = v12;
  [v0 bounds];
  MaxX = CGRectGetMaxX(v27);
  [v0 scrollPocketInsets];
  v15 = MaxX - v14;
  [v0 scrollPocketInsets];
  v17 = v16;
  [v0 scrollPocketInsets];
  v19 = v18;
  [v0 bounds];
  v20 = CGRectGetHeight(v28);
  [v0 scrollPocketInsets];
  v22 = v20 - v21;
  [v0 scrollPocketInsets];
  [v24 _setRect_];
}

void sub_188C32944(void *a1)
{
  v2 = v1;
  v4 = [v2 stack];
  v5 = [v4 state];

  if (!v5)
  {
    v6 = [v2 stack];
    v7 = [v6 topItem];

    if (v7)
    {
      sub_188A34624(0, &unk_1ED48CFF8);
      v12 = v7;
      v8 = a1;
      v9 = sub_18A4A7C88();

      if (v9)
      {
        if (*&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion] <= 1)
        {
          v10 = [v8 standardAppearance];
          if (v10 || (v10 = [v8 compactAppearance]) != 0 || (v10 = objc_msgSend(v8, sel_scrollEdgeAppearance)) != 0)
          {

            sub_188AECCA0(2);
          }
        }

        v11 = [v2 navigationBar];
        [v11 setNeedsLayout];
      }
    }
  }
}

void _UITableViewControllerCommonInit(void *a1)
{
  v5 = a1;
  [v5 setClearsSelectionOnViewWillAppear:1];
  v1 = v5;
  if (!v5[128])
  {
    v2 = dyld_program_sdk_at_least();
    v1 = v5;
    if (v2)
    {
      v3 = objc_alloc_init(_UIFilteredDataSource);
      v4 = v5[128];
      v5[128] = v3;

      v1 = v5;
    }
  }

  v1[129] = 0;
}

void _UIControlMenuUpdateVisibleMenu(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 _hasVisibleMenu])
  {
    if (v7)
    {
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x2020000000;
      v12 = 0;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = ___UIControlMenuUpdateVisibleMenu_block_invoke;
      v8[3] = &unk_1E7109310;
      v10 = v11;
      v9 = v7;
      [v5 updateVisibleMenuWithBlock:v8];

      _Block_object_dispose(v11, 8);
    }

    else
    {
      [v5 dismissMenu];
    }
  }
}

void sub_188C32F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getTUIKeyboardTrackingCoordinatorClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardTrackingCoordinator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardTrackingCoordinatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardTrackingCoordinatorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardSceneDelegate.m" lineNumber:81 description:{@"Unable to find class %s", "TUIKeyboardTrackingCoordinator"}];

    __break(1u);
  }
}

void TextInputUILibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextInputUILibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E70F2FA8;
    v5 = 0;
    TextInputUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TextInputUILibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIKeyboardEmojiPopoverController.m" lineNumber:31 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void TextInputUILibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextInputUILibraryCore_block_invoke_3;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E70FE1B0;
    v5 = 0;
    TextInputUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!TextInputUILibraryCore_frameworkLibrary_0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIKeyboardInputManagerClient.h" lineNumber:22 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void TextInputUILibrary_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextInputUILibraryCore_block_invoke_4;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7106498;
    v5 = 0;
    TextInputUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!TextInputUILibraryCore_frameworkLibrary_1)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UISystemInputAssistantViewController.m" lineNumber:97 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void TextInputUILibrary_2()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary_2)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextInputUILibraryCore_block_invoke_6;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71083F8;
    v5 = 0;
    TextInputUILibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!TextInputUILibraryCore_frameworkLibrary_2)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIKeyboardSceneDelegate.m" lineNumber:80 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void TextInputUILibrary_3()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary_3)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextInputUILibraryCore_block_invoke_8;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E710B710;
    v5 = 0;
    TextInputUILibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  if (!TextInputUILibraryCore_frameworkLibrary_3)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"_UICursorAccessoryViewController.m" lineNumber:25 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void *TextInputUILibrary_4()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary_4)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TextInputUILibraryCore_block_invoke_9;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E710D9D0;
    v6 = 0;
    TextInputUILibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v0 = TextInputUILibraryCore_frameworkLibrary_4;
  if (!TextInputUILibraryCore_frameworkLibrary_4)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIKeyboardCandidateController.m" lineNumber:19 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void TextInputUILibrary_5()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary_5)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextInputUILibraryCore_block_invoke_10;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E710DF50;
    v5 = 0;
    TextInputUILibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  if (!TextInputUILibraryCore_frameworkLibrary_5)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIKeyboardInputModeController.m" lineNumber:88 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void TextInputUILibrary_6()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary_6)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextInputUILibraryCore_block_invoke_14;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7114B20;
    v5 = 0;
    TextInputUILibraryCore_frameworkLibrary_6 = _sl_dlopen();
  }

  if (!TextInputUILibraryCore_frameworkLibrary_6)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIKeyboardLayoutStar.m" lineNumber:209 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void TextInputUILibrary_7()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary_7)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextInputUILibraryCore_block_invoke_16;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7116700;
    v5 = 0;
    TextInputUILibraryCore_frameworkLibrary_7 = _sl_dlopen();
  }

  if (!TextInputUILibraryCore_frameworkLibrary_7)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIInputWindowController.m" lineNumber:82 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void TextInputUILibrary_8()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary_8)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextInputUILibraryCore_block_invoke_19;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7117A68;
    v5 = 0;
    TextInputUILibraryCore_frameworkLibrary_8 = _sl_dlopen();
  }

  if (!TextInputUILibraryCore_frameworkLibrary_8)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIKeyboardMotionSupport.m" lineNumber:49 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void TextInputUILibrary_9()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary_9)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextInputUILibraryCore_block_invoke_21;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71202C0;
    v5 = 0;
    TextInputUILibraryCore_frameworkLibrary_9 = _sl_dlopen();
  }

  if (!TextInputUILibraryCore_frameworkLibrary_9)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UITrackingElementWindowController.m" lineNumber:68 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void TextInputUILibrary_10()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary_10)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextInputUILibraryCore_block_invoke_23;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7128478;
    v5 = 0;
    TextInputUILibraryCore_frameworkLibrary_10 = _sl_dlopen();
  }

  if (!TextInputUILibraryCore_frameworkLibrary_10)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIKeyboardTrackingCoordinator.m" lineNumber:17 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void TextInputUILibrary_11()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextInputUILibraryCore_frameworkLibrary_11)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextInputUILibraryCore_block_invoke_24;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7129AC8;
    v5 = 0;
    TextInputUILibraryCore_frameworkLibrary_11 = _sl_dlopen();
  }

  if (!TextInputUILibraryCore_frameworkLibrary_11)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIInputLayoutHostingItem.m" lineNumber:34 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void (*_UIGetSystemTraitTokensAffectingColorAppearance())(void, void, void)
{
  os_unfair_lock_lock(&_UITraitLock);
  v0 = [MEMORY[0x1E695DF70] arrayWithCapacity:_UITraitTokenSetCount(qword_1ED49FF80)];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___UIGetSystemTraitTokensAffectingColorAppearance_block_invoke;
  v2[3] = &unk_1E710D738;
  v2[4] = v0;
  _UITraitTokenSetEnumerate(qword_1ED49FF80, v2);
  os_unfair_lock_unlock(&_UITraitLock);
  return v0;
}

id _queue_persistentIdentifiersForDeletion()
{
  v0 = _queue_persistentIdentifiersForDeletion__persistentIdentifiersForDeletionSet;
  if (!_queue_persistentIdentifiersForDeletion__persistentIdentifiersForDeletionSet)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2 = _queue_persistentIdentifiersForDeletion__persistentIdentifiersForDeletionSet;
    _queue_persistentIdentifiersForDeletion__persistentIdentifiersForDeletionSet = v1;

    v0 = _queue_persistentIdentifiersForDeletion__persistentIdentifiersForDeletionSet;
  }

  return v0;
}

BOOL _s5UIKit6_GlassV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for _Glass(0);
  if (*(a1 + *(v4 + 48)) != *(a2 + *(v4 + 48)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  if ((MEMORY[0x18CFDDDF0](a1 + v6, a2 + v6) & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for _Glass._GlassVariant(0);
  if (*(v7 + v9[5]) != *(v8 + v9[5]) || *(v7 + v9[6]) != *(v8 + v9[6]))
  {
    return 0;
  }

  v10 = v9[7];
  v11 = *(v7 + v10);
  v12 = *(v8 + v10);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    sub_188A34624(0, qword_1ED4913C0);
    v13 = v12;
    v14 = v11;
    v15 = sub_18A4A7C88();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (*(a1 + v5[10]) != *(a2 + v5[10]))
  {
    return 0;
  }

  v16 = v5;
  v17 = a1[2];
  v18 = a2[2];
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v18)
  {
    return 0;
  }

  if (a1[1] != a2[1] || v17 != v18)
  {
    v19 = sub_18A4A86C8();
    v16 = v5;
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_18:
  if (*(a1 + v16[9]) != *(a2 + v16[9]) || *(a1 + v16[7]) != *(a2 + v16[7]) || *(a1 + v16[8]) != *(a2 + v16[8]))
  {
    return 0;
  }

  v21 = *a1;
  v22 = *a2;
  result = (v21 | v22) == 0;
  if (v21)
  {
    if (v22)
    {
      sub_188A34624(0, qword_1ED4913C0);
      v23 = v22;
      v24 = v21;
      v25 = sub_18A4A7C88();

      return v25 & 1;
    }
  }

  return result;
}

uint64_t _UIFlexiGlassEnabled()
{
  if (qword_1ED49E148 != -1)
  {
    dispatch_once(&qword_1ED49E148, &__block_literal_global_16_4);
  }

  if (byte_1ED49E115 != 1)
  {
    return 0;
  }

  if (qword_1ED49E120 != -1)
  {
    dispatch_once(&qword_1ED49E120, &__block_literal_global_267);
  }

  if (_MergedGlobals_1116 != 1)
  {
    return 0;
  }

  LODWORD(result) = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_FlexiGlassEnabled, @"FlexiGlassEnabled");
  if (byte_1ED48B124)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t UIView._appIntentsIntelligenceProvider.setter(uint64_t a1)
{
  sub_188A3F29C(a1, v11, &qword_1EA934060);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_18A4A86A8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    v9 = 0;
  }

  [v1 _setInternalAppIntentsIntelligenceProvider_];
  swift_unknownObjectRelease();
  return sub_188A3F5FC(a1, &qword_1EA934060);
}

uint64_t _s5UIKit17UIHostingViewBaseC19_layoutSizeThatFits_9fixedAxesSo6CGSizeVAG_So09_UILayoutJ0VtF_0(double a1, double a2)
{
  v23 = sub_18A4A5318();
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A8668();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_18A4A46F8();
  if (result)
  {
    v21 = v7;
    v22 = v8;
    swift_getObjectType();
    LOBYTE(v25) = a1 >= 2777777.0;
    LOBYTE(v24) = a2 >= 2777777.0;
    sub_18A4A5888();
    v13 = v12;
    v15 = v14;
    v16 = v21;
    v17 = v22;
    (*(v22 + 104))(v10, *MEMORY[0x1E69E7040], v21);
    sub_18A4A4698();
    sub_18A4A4ED8();
    v19 = v18;
    (*(v4 + 8))(v6, v23);
    v24 = v15;
    v25 = v13;
    sub_188B26620(v10, v19);
    sub_188B26620(v10, v19);
    swift_unknownObjectRelease();
    return (*(v17 + 8))(v10, v16);
  }

  return result;
}

uint64_t sub_188C35D10@<X0>(SEL *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

_UIScrollViewScrollIndicator *CreateScrollIndicator(void *a1, unsigned int a2)
{
  v3 = a1;
  if ([v3 _usesLowFidelityPanning])
  {
    v4 = 0;
  }

  else
  {
    v5 = [_UIScrollViewScrollIndicator alloc];
    v6 = [(_UIScrollViewScrollIndicator *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(_UIScrollViewScrollIndicator *)v6 setType:a2];
    -[_UIScrollViewScrollIndicator setStyle:](v6, "setStyle:", [v3 _effectiveIndicatorStyle]);
    if (dyld_program_sdk_at_least())
    {
      v7 = [(UIView *)v6 layer];
      [v7 setZPosition:1000.0];
    }

    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __CreateScrollIndicator_block_invoke;
    v12 = &unk_1E70F32F0;
    v4 = v6;
    v13 = v4;
    v14 = 0;
    [UIView performWithoutAnimation:&v9];
    [v3 addSubview:{v4, v9, v10, v11, v12}];
  }

  return v4;
}

void sub_188C36830(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 traitCollection];
  v5 = [v2 searchText];
  if (v5)
  {
    v6 = v5;
    v7 = sub_18A4A7288();
    v9 = v8;
  }

  else
  {

    v7 = 0;
    v9 = 0;
  }

  v10 = [v2 _customStatesForSwiftBridging];
  if (!v10)
  {
    v18 = MEMORY[0x1E69E7CC8];
LABEL_41:
    v48 = v2;
    v49 = [v48 _mutations];

    *a2 = v4;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9;
    *(a2 + 24) = v18;
    *(a2 + 32) = v2;
    *(a2 + 40) = v49;
    *(a2 + 48) = 0;
    return;
  }

  v11 = v10;
  v50 = v7;
  v51 = v4;
  v52 = v2;
  v53 = a2;
  type metadata accessor for UIConfigurationStateCustomKey(0);
  sub_188D0CBBC();
  v12 = sub_18A4A70A8();

  v13 = 0;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = MEMORY[0x1E69E7CC8];
  while (v16)
  {
    v19 = v13;
LABEL_20:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v19 << 6);
    v24 = *(*(v12 + 48) + 8 * v23);
    sub_188A55598(*(v12 + 56) + 32 * v23, &v54);
    *&v58 = v24;
    sub_188A55538(&v54, (&v58 + 8));
    v25 = v24;
LABEL_21:
    v61[0] = v58;
    v61[1] = v59;
    v62 = v60;
    v26 = v58;
    if (!v58)
    {

      v2 = v52;
      a2 = v53;
      v7 = v50;
      v4 = v51;
      goto LABEL_41;
    }

    sub_188A55538((v61 + 8), &v57);
    if (swift_dynamicCast())
    {
      v54 = v58;
      v55 = v59;
      v56 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = sub_188B00858(v26);
      v30 = v18[2];
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_43;
      }

      v33 = v28;
      if (v18[3] >= v32)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v28 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          sub_188FA1AB8();
          if ((v33 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        sub_188EA2468(&v54, v18[7] + 40 * v29);
      }

      else
      {
        sub_188D0CC5C(v32, isUniquelyReferenced_nonNull_native);
        v34 = sub_188B00858(v26);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_45;
        }

        v29 = v34;
        if (v33)
        {
          goto LABEL_34;
        }

LABEL_37:
        v18[(v29 >> 6) + 8] |= 1 << v29;
        *(v18[6] + 8 * v29) = v26;
        v42 = v18[7] + 40 * v29;
        v43 = v54;
        v44 = v55;
        *(v42 + 32) = v56;
        *v42 = v43;
        *(v42 + 16) = v44;
        v45 = v18[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_44;
        }

        v18[2] = v47;
      }
    }

    else
    {
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      sub_188A3F5FC(&v58, &unk_1EA937A80);
      v36 = sub_188B00858(v26);
      if (v37)
      {
        v38 = v36;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_188FA1AB8();
        }

        v39 = v18[7] + 40 * v38;
        v40 = *(v39 + 32);
        v41 = *(v39 + 16);
        v54 = *v39;
        v55 = v41;
        v56 = v40;
        sub_188F9D054(v38, v18);
      }

      else
      {

        v56 = 0;
        v54 = 0u;
        v55 = 0u;
      }

      sub_188A3F5FC(&v54, &unk_1EA937A80);
    }
  }

  if (v17 <= v13 + 1)
  {
    v20 = v13 + 1;
  }

  else
  {
    v20 = v17;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      v16 = 0;
      v60 = 0;
      v13 = v21;
      v58 = 0uLL;
      v59 = 0uLL;
      goto LABEL_21;
    }

    v16 = *(v12 + 64 + 8 * v19);
    ++v13;
    if (v16)
    {
      v13 = v19;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  sub_18A4A87A8();
  __break(1u);
}

void sub_188C36CC8()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  if (v4)
  {
    v5 = v0[5];
    v6 = *(v0 + 48);
    v7 = v4;
    v8 = [v7 _mutations];
    if ((v6 & 1) == 0 && v5 == v8)
    {
      return;
    }
  }

  v9 = [objc_allocWithZone(UIContentUnavailableConfigurationState) initWithTraitCollection_];
  if (v3)
  {
    v10 = sub_18A4A7258();
  }

  else
  {
    v10 = 0;
  }

  [v9 setSearchText_];

  v11 = 1 << *(v2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v2 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_15:
      v17 = __clz(__rbit64(v13)) | (v16 << 6);
      v18 = *(*(v2 + 48) + 8 * v17);
      sub_188BBA230(*(v2 + 56) + 40 * v17, &v25);
      v23 = v26;
      v24 = v25;
      v19 = v27;
      v20 = v18;
      if (!v18)
      {
        break;
      }

      v21 = v20;
      v13 &= v13 - 1;
      v25 = v24;
      v26 = v23;
      v27 = v19;
      v22 = sub_18A4A7FF8();
      sub_188BBA15C(&v25);
      [v9 _setSwiftBridgingCustomState_forKey_];

      v15 = v16;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

LABEL_18:
  }

  else
  {
LABEL_12:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        goto LABEL_18;
      }

      v13 = *(v2 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

void sub_188C37D98(double a1)
{
  v2 = v1;
  v10 = sub_188B83448();
  v4 = fmin(a1, 1.0);
  if ((*&v4 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  if ((~*&v4 & 0x7FF0000000000000) != 0)
  {
    v5 = v4;
  }

  if (v4 >= 0.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating__backgroundTransitionProgress] = v6;
  v7 = sub_188B83448();
  sub_188A34624(0, &unk_1EA930618);
  v8 = sub_18A4A7C88();

  if ((v8 & 1) == 0)
  {
    v9 = [v2 tabBar];
    [v9 setNeedsLayout];
  }
}

void sub_188C38128()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-v1];
  v3 = sub_18A4A5CC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (sub_18A4A46F8())
    {
      v9 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_canAdvanceTimeAutomatically;
      swift_beginAccess();
      if (v8[v9] == 1)
      {
        CACurrentMediaTime();
        sub_18A4A5C88();
        sub_188B27A38(v6);
        (*(v4 + 8))(v6, v3);
        UIAnimationDragCoefficient();
        swift_getObjectType();
        (*(v4 + 56))(v2, 1, 1, v3);
        sub_18A4A58C8();
        swift_unknownObjectRelease();
        sub_188A3F5FC(v2, &qword_1EA936FE8);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v8[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPostDisappearPreferencesUpdate] = 0;
  }
}

void _UIUpdateCycleRegisterIdleObserver(void *a1)
{
  v6 = a1;
  if (pthread_main_np() != 1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIUpdateCycleRegisterIdleObserver(__strong id<_UIUpdateCycleIdleObserver> _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"_UIUpdateCycleIdleScheduler.m" lineNumber:85 description:@"Idle observers must be registered on the main thread."];
  }

  v1 = qword_1ED49A928;
  if (v1)
  {
    v2 = v1;
    if (_indexOfIdleObserver(v6) != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }

    v3 = [v2 copy];

    v2 = v3;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:517];
  }

  [v2 addPointer:v6];
  objc_storeStrong(&qword_1ED49A928, v2);
LABEL_8:
}

void sub_188C38924(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, unint64_t *a5)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9334C0);
  sub_188A34624(0, a5);
  swift_dynamicCast();
  a3(v8, a2);
}

id sub_188C389D0(void *a1)
{
  result = [a1 _effectiveDelegate];
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      [v2 _navigationBarDidUpdateUserInterfaceStyle];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_188C38A50(void *a1)
{
  v1 = a1;
  sub_188C38A98();
}

id sub_188C38A98()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = sub_18A4A5A88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for UICorePlatformViewHost();
  v14.receiver = v0;
  v14.super_class = v10;
  objc_msgSendSuper2(&v14, sel__layoutMetricsInvalidatedForHostedView);
  sub_18A4A55D8();
  _s5UIKit23UICoreViewRepresentablePAAE14_layoutOptionsy7SwiftUI04Corecd6LayoutF0V10UIViewTypeQzFZ_0();
  sub_188BA4004(&qword_1EA931330, MEMORY[0x1E6980B88]);
  v11 = sub_18A4A7E28();
  v12 = *(v4 + 8);
  v12(v6, v3);
  result = (v12)(v9, v3);
  if ((v11 & 1) != 0 && (*(v1 + *((*v2 & *v1) + 0xA8)) & 1) == 0)
  {
    result = [v1 hostedView];
    if (result)
    {

      return sub_188C38CD8();
    }
  }

  return result;
}

uint64_t sub_188C38CD8()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93A788);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  sub_188BA3DF4(&v16 - v7);
  v9 = sub_18A4A4798();
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  result = sub_188A3F5FC(v8, &qword_1EA93A780);
  if (v10 == 1)
  {
    v12 = sub_18A4A4998();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    return sub_188BA3D64(v5);
  }

  else
  {
    v13 = *((*v1 & *v0) + 0xC0);
    if ((*(v0 + v13) & 1) == 0)
    {
      *(v0 + v13) = 1;
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = *(v2 + 80);
      v15[3] = *(v2 + 88);
      v15[4] = v14;

      sub_18A4A54C8();
    }
  }

  return result;
}

uint64_t sub_188C38F40()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188C38F78()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_188C38FB0(void *a1)
{
  v1 = a1;
  sub_188C38FF8();
}

id sub_188C38FF8()
{
  if ((sub_188BA67FC() & 1) == 0)
  {
    v3 = sub_18A4A7668();
    v2 = sub_18A4A7258();
    [v0 setValue:v3 forKey:v2];

LABEL_6:
    goto LABEL_7;
  }

  v1 = [v0 hostedView];
  if (v1)
  {
    v2 = v1;
    if ([v1 _wantsConstraintBasedLayout])
    {
      [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    }

    goto LABEL_6;
  }

LABEL_7:
  v5.receiver = v0;
  v5.super_class = type metadata accessor for UICorePlatformViewHost();
  return objc_msgSendSuper2(&v5, sel_updateConstraints);
}

uint64_t _UIObservationTrackingFeedbackLoopThreshold()
{
  if (qword_1ED49F4F8 != -1)
  {
    dispatch_once(&qword_1ED49F4F8, &__block_literal_global_8_11);
  }

  return qword_1ED49F4F0;
}

void sub_188C396E0(char a1)
{
  v2 = v1;
  v4 = [(UIView *)v1 __swiftAnimationInfo];
  if (v4)
  {
    v5 = v4;
    v44 = a1;
    os_unfair_lock_lock(v4[2] + 4);
    swift_beginAccess();
    v6 = v5[6];
    v7 = v5[2];

    os_unfair_lock_unlock(v7 + 4);
    v8 = v6 + 64;
    v9 = 1 << v6[32];
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v6 + 8);
    v49 = v6;

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v46 = v5;
    v47 = v13;
    v48 = v6 + 64;
    v45 = v2;
    if (v11)
    {
      while (1)
      {
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = (*(v49 + 6) + 24 * (v15 | (v14 << 6)));
        v17 = *v16;
        v19 = *(v16 + 1);
        v18 = *(v16 + 2);
        v20 = v5[9];
        if (!v20[2])
        {
          break;
        }

        sub_18A4A8888();
        MEMORY[0x18CFE37E0](v17);

        sub_18A4A7348();
        v21 = sub_18A4A88E8();
        v22 = -1 << *(v20 + 32);
        v23 = v21 & ~v22;
        if (((*(v20 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v23) & 1) == 0)
        {

LABEL_24:
          os_unfair_lock_lock(v5[2] + 4);
          swift_beginAccess();
          v28 = v5[6];
          if (v28[2] && (v29 = sub_188A5E664(v17, v19, v18), (v30 & 1) != 0))
          {
            v31 = (v28[7] + 16 * v29);
            v32 = *v31;
            v33 = v31[1];
            swift_unknownObjectRetain();
          }

          else
          {
            v32 = 0;
            v33 = 0;
          }

          swift_endAccess();
          os_unfair_lock_unlock(v5[2] + 4);
          if (v32)
          {
            ObjectType = swift_getObjectType();
            v35 = swift_allocObject();
            *(v35 + 16) = v2;
            *(v35 + 24) = v17;
            *(v35 + 32) = v19;
            *(v35 + 40) = v18;
            v36 = v2;
            v37 = ObjectType;
            v5 = v46;
            sub_188C39C08(sub_188AB799C, v35, v37, v33);
            swift_unknownObjectRelease();
          }

          else
          {
          }

          v12 = v14;
          goto LABEL_32;
        }

        v24 = ~v22;
        v25 = v20[6];
        while (1)
        {
          v26 = (v25 + 24 * v23);
          if (v17 == *v26)
          {
            v27 = *(v26 + 1) == v19 && *(v26 + 2) == v18;
            if (v27 || (sub_18A4A86C8() & 1) != 0)
            {
              break;
            }
          }

          v23 = (v23 + 1) & v24;
          if (((*(v20 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v23) & 1) == 0)
          {

            v2 = v45;
            v5 = v46;
            goto LABEL_24;
          }
        }

        v12 = v14;
        v2 = v45;
        v5 = v46;
LABEL_32:
        v13 = v47;
        v8 = v48;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_24;
    }

LABEL_7:
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        a1 = v44;
        goto LABEL_35;
      }

      v11 = *&v8[8 * v14];
      ++v12;
      if (v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_46:
    v40 = sub_18A4A7F68();
    if (!v40)
    {
      goto LABEL_47;
    }

    goto LABEL_39;
  }

LABEL_35:
  if ((a1 & 1) == 0)
  {
    return;
  }

  v38 = [v2 _allSubviews];
  if (!v38)
  {
    goto LABEL_50;
  }

  v39 = v38;
  sub_188A34624(0, &qword_1ED48F680);
  v11 = sub_18A4A7548();

  if (v11 >> 62)
  {
    goto LABEL_46;
  }

  v40 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v40)
  {
LABEL_39:
    if (v40 >= 1)
    {
      for (i = 0; i != v40; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v42 = sub_188E49300(i, v11);
        }

        else
        {
          v42 = *(v11 + 8 * i + 32);
        }

        v43 = v42;
        [v42 __swift_removeAllRetargetableAnimations_];
      }

      goto LABEL_47;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

LABEL_47:
}

uint64_t sub_188C39B50()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t _trackObjectWithIdentifier(uint64_t result)
{
  if (byte_1ED4A07A9 == 1)
  {
    v2 = result;
    v3 = qword_1ED4A07C8;
    if (!qword_1ED4A07C8)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      qword_1ED4A07C8 = v3;
    }

    return [v3 addObject:v2];
  }

  return result;
}

uint64_t sub_188C39C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  (*(a4 + 144))(a3, a4, v13);
  (*(a4 + 88))(a3, a4);
  (*(a4 + 200))(v15, v11, _UIGestureNodeKey, 0, 0, 0, a1, a2, a3, a4);
  v16 = *(v9 + 8);
  v16(v11, AssociatedTypeWitness);
  return (v16)(v15, AssociatedTypeWitness);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_188C39E64(uint64_t a1)
{
  v1 = *(*a1 + 80);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v6 - v3;
  sub_188AA9344(&v6 - v3);
  sub_188A80C3C(v4);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_188C3A000(uint64_t result)
{
  if ((*(v1 + *(*v1 + 184)) & 1) == 0)
  {
    if (result)
    {
      v2 = objc_opt_self();
      v11 = sub_188C39E5C;
      v12 = v1;
      v7 = MEMORY[0x1E69E9820];
      v8 = 1107296256;
      v9 = sub_188A4A8F0;
      v10 = &block_descriptor_35_4;
      v3 = _Block_copy(&v7);

      [v2 _performWithoutRetargetingAnimations_];
      _Block_release(v3);
    }

    v4 = v1[2];
    v5 = swift_allocObject();
    *(v5 + 16) = sub_188C3A260;
    *(v5 + 24) = v1;
    v11 = sub_188A4B574;
    v12 = v5;
    v7 = MEMORY[0x1E69E9820];
    v8 = 1107296256;
    v9 = sub_188A4A968;
    v10 = &block_descriptor_99;
    v6 = _Block_copy(&v7);

    dispatch_sync(v4, v6);
    _Block_release(v6);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_188C3A204(uint64_t a1)
{
  v2 = *(*a1 + 184);
  if ((*(a1 + v2) & 1) == 0)
  {
    *(a1 + v2) = 1;
    v3 = sub_188A81128();
  }
}

void sub_188C3A3E0(int a1, id a2)
{
  v3 = [a2 layer];
  v8 = [v3 context];

  if (v8)
  {
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    aBlock[4] = sub_188C3A56C;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_358;
    v6 = _Block_copy(aBlock);
    v7 = a2;

    [v4 _performWithoutRetargetingAnimations_];
    _Block_release(v6);
  }
}

uint64_t sub_188C3A52C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188C3A584(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      v11 = *v10;
      if (*v10 == 0.0)
      {
        v11 = 0.0;
      }

      result = MEMORY[0x18CFE37B0](*(a2 + 40), LODWORD(v11), 4);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_17:
          v15 = (v9 + 4 * v3);
          if (v3 != v6 || v15 >= v10 + 1)
          {
            *v15 = *v10;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_17;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_188C3A714()
{
  v1 = *(v0 + 288);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_188C3A910;
  *(v2 + 24) = v0;
  v8[4] = sub_188E3FE50;
  v8[5] = v2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_194_0;
  v3 = _Block_copy(v8);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else if (qword_1ED48F7C0 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v4 = sub_18A4A4378();
  __swift_project_value_buffer(v4, qword_1ED48F7C8);
  v5 = sub_18A4A4358();
  v6 = sub_18A4A7968();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_188A29000, v5, v6, "Set displaylink needs invalidation", v7, 2u);
    MEMORY[0x18CFEA5B0](v7, -1, -1);
  }
}

uint64_t _UIUpdateRequestRegistryRemoveRecord(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (_UIUpdateCycleDebugTracingCheck)
  {
    v13 = _UIUpdateCycleDebugTracingCheck();
    if (v13)
    {
      v14 = v13;
      kdebug_trace();
      if (v14 != 1)
      {
        getppid();
      }
    }
  }

  if (*a2)
  {
    v6 = 8;
  }

  else
  {
    v6 = 48;
  }

  if (_UIUpdateRequestRecordSortedSetRemoveRecord((a1 + v6), a2, a3))
  {
    if ((*a2 & 8) != 0)
    {
      free(a2);
    }

    v7 = requestRemoved(a1, a1 + v6, a2);
  }

  else
  {
    v7 = 0;
  }

  result = _UIUpdateReasonSortedSetRemoveReason(a1 + 88, a3);
  if (result)
  {
    if (*(a1 + 102))
    {
      v9 = 32;
    }

    else
    {
      v9 = 33;
    }

    v7 |= v9;
  }

  v10 = *a1 | v7;
  if (v10 != *a1)
  {
    *a1 = v10;
    v11 = *(a1 + 136);
    if (v11)
    {
      v12 = *(a1 + 144);

      return v11(a1, v12);
    }
  }

  return result;
}

uint64_t _UIUpdateRequestRecordSortedSetRemoveRecord(char **a1, unint64_t a2, unsigned int a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = &(*a1)[24 * v4];
  while (v4)
  {
    v7 = v4 >> 1;
    v8 = &v5[24 * (v4 >> 1)];
    v10 = *v8;
    v9 = (v8 + 3);
    v4 += ~(v4 >> 1);
    if (v10 < a2)
    {
      v5 = v9;
    }

    else
    {
      v4 = v7;
    }
  }

  if (v6 == v5)
  {
    return 0;
  }

  if (*v5 != a2)
  {
    return 0;
  }

  _UIUpdateReasonSortedSetRemoveReason((v5 + 8), a3);
  if (*(v5 + 11))
  {
    return 0;
  }

  free(*(v5 + 1));
  v12 = *a1;
  v13 = (a1[1] - 1);
  a1[1] = v13;
  memmove(v5, v5 + 24, v12 - v5 + 24 * v13);
  return 1;
}

uint64_t _UIUpdateReasonSortedSetRemoveReason(uint64_t a1, unsigned int a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 12);
  }

  else
  {
    v2 = (a1 + 8);
    v3 = 1;
  }

  v4 = *(a1 + 14);
  v5 = v2;
  if (*(a1 + 14))
  {
    v5 = v2;
    v6 = *(a1 + 14);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[4 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 4;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  if (&v2[4 * v4] == v5 || *v5 != a2)
  {
    return 0;
  }

  v11 = v5 - v2;
  v12 = &v2[4 * v3 + ((v5 - v2) >> 1)];
  v13 = *v12;
  v14 = v13 != 0;
  v15 = v13 - 1;
  if (v15 != 0 && v14)
  {
    *v12 = v15;
  }

  else
  {
    *(a1 + 14) = v4 - 1;
    v17 = (v4 - 1) - (v11 >> 2);
    memmove(v5, v5 + 4, 4 * v17);
    memmove(v12, v12 + 2, 2 * v17);
  }

  return 1;
}

uint64_t requestRemoved(_DWORD *a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = 64;
  if ((*a3 & 4) != 0)
  {
    v6 = a1[29]-- == 1;
    if (v6)
    {
      v4 = 66;
    }

    else
    {
      v4 = 64;
    }

    if ((v3 & 0x10) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v6 = a1[30]-- == 1;
  if (v6)
  {
    v4 = v4 | 4;
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_18:
  v6 = a1[33]-- == 1;
  if (v6)
  {
    v4 = v4 | 8;
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 0x40) == 0)
  {
LABEL_5:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_22:
  v6 = a1[31]-- == 1;
  if (v6)
  {
    v4 = v4 | 0x10;
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 0x80) == 0)
  {
LABEL_6:
    if ((v3 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_26:
  v6 = a1[32]-- == 1;
  if (v6)
  {
    v4 = v4 | 0x80;
  }

  else
  {
    v4 = v4;
  }

  if (v3)
  {
LABEL_7:
    *a3 = v3 & 0xFFFFFFFD;
  }

LABEL_8:
  if (*(a2 + 8))
  {
    v5 = *(a2 + 24) | 1;
  }

  else
  {
    *(a2 + 32) = 0;
    v5 = *(a2 + 24) & 0xFFFFFFFE;
    *(a2 + 28) = 0;
  }

  *(a2 + 24) = v5;
  a1[1] |= 1u;
  return v4;
}

void sub_188C3B070(uint64_t a1)
{
  v3 = [v1 subviews];
  sub_188A34624(0, &qword_1ED48F680);
  v4 = sub_18A4A7548();

  if (v4 >> 62)
  {
    v5 = sub_18A4A7F68();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_188E49300(i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 _removeTrackedElementFor_];
  }

LABEL_10:

  v9 = [v1 maskView];
  [v9 _removeTrackedElementFor_];
}

uint64_t ContainerDepthBreakabilityScoringFunction(void *a1)
{
  v1 = [a1 container];
  for (i = 0; v1; v1 = [v1 superview])
  {
    ++i;
  }

  return i;
}

uint64_t ConstraintTypeBreakabilityScoringFunction(void *a1)
{
  v1 = [a1 _constraintType] + 1;
  if (v1 > 0xF)
  {
    return 8;
  }

  else
  {
    return qword_18A683628[v1];
  }
}

void UIViewAlertForUnsatisfiableConstraints(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  IsBeingDebugged = _UIKitProcessIsBeingDebugged();
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v21 = ___UIConstraintBasedLayoutLogUnsatisfiableWithDefault_block_invoke;
  v22 = &__block_descriptor_33_e5_v8__0l;
  v23 = IsBeingDebugged;
  if (qword_1ED498208 != -1)
  {
    dispatch_once(&qword_1ED498208, &buf);
  }

  v5 = byte_1ED4981AD;
  if (qword_1ED498228 != -1)
  {
    dispatch_once(&qword_1ED498228, &__block_literal_global_80_3);
  }

  v6 = byte_1ED4981AF;
  if ((v5 & 1) != 0 || byte_1ED4981AF)
  {
    if (qword_1ED4981F8 != -1)
    {
      dispatch_once(&qword_1ED4981F8, &__block_literal_global_66_1);
    }

    if (byte_1ED4981AC == 1)
    {
      [+[UIDevice currentDevice](UIDevice _playSystemSound:"_playSystemSound:", 1006];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(a2);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v11 firstItem];
            if (objc_opt_respondsToSelector() & 1) != 0 && ([objc_msgSend(objc_msgSend(v11 "firstItem")])
            {
              v12 = @"\n\t(Note: If you're seeing NSAutoresizingMaskLayoutConstraints that you don't understand, refer to the documentation for the UIView property translatesAutoresizingMaskIntoConstraints) ";
              goto LABEL_24;
            }
          }
        }

        v8 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v12 = &stru_1EFB14550;
    }

    else
    {
      v12 = &stru_1EFB14550;
    }

LABEL_24:
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to simultaneously satisfy constraints.\n\tProbably at least one of the constraints in the following list is one you don't want. \n\tTry this: \n\t\t(1) look at each constraint and try to figure out which you don't expect; \n\t\t(2) find the code that added the unwanted constraint or constraints and fix it. %@\n%@\n\nWill attempt to recover by breaking constraint \n%@\n\nMake a symbolic breakpoint at UIViewAlertForUnsatisfiableConstraints to catch this in the debugger.\nThe methods in the UIConstraintBasedLayoutDebugging category on UIView listed in <UIKitCore/UIView.h> may also be helpful.", v12, objc_msgSend(objc_msgSend(a2, "sortedArrayUsingFunction:context:", compareConstraintsAlphabetically, &__block_literal_global_378_2), "sortedArrayUsingFunction:context:", compareConstraintsAlphabetically, &__block_literal_global_380), a1];
    if (v6)
    {
      [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:{0), "raise"}];
    }

    else if (v5)
    {
      v14 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &qword_1ED4982B8) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }
    }
  }
}

uint64_t _UIKitProcessIsBeingDebugged()
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  LODWORD(v3) = 0;
  *v33 = 0xE00000001;
  v34 = 1;
  v35 = getpid();
  v1 = 648;
  sysctl(v33, 4u, v2, &v1, 0, 0);
  return (v3 >> 11) & 1;
}

uint64_t RelationBreakabilityScoringFunction(void *a1)
{
  v1 = [a1 relation];
  v2 = 1;
  if (v1 != 1)
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t _UICoreMaterialStyleNeedsUpdateForEnvironmentChange(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!_UICoreMaterialStyleIsDynamic(a1))
  {
    goto LABEL_4;
  }

  v7 = [v5 traitCollection];
  v8 = [v6 traitCollection];
  v9 = [v7 userInterfaceStyle];
  if (v9 != [v8 userInterfaceStyle])
  {

    goto LABEL_6;
  }

  v10 = [v7 userInterfaceLevel];
  v11 = [v8 userInterfaceLevel];

  if (v10 != v11)
  {
LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

LABEL_4:
  v12 = 0;
LABEL_7:

  return v12;
}

void _fireBackgroundTaskCountReachedZeroHandlers_Locked()
{
  if (qword_1ED49E2C8)
  {
    CFRunLoopTimerInvalidate(qword_1ED49E2C8);
    CFRelease(qword_1ED49E2C8);
    qword_1ED49E2C8 = 0;
  }

  v0 = qword_1ED49E258;
  v1 = qword_1ED49E258;
  qword_1ED49E258 = 0;

  if (v0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___fireBackgroundTaskCountReachedZeroHandlers_Locked_block_invoke;
    block[3] = &unk_1E70F3590;
    v3 = v0;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t sub_188C3C960(uint64_t a1)
{
  swift_beginAccess();
  _UIUpdateRequestDeactivate((a1 + 192), 0x100036u);
  return swift_endAccess();
}

void _UIHomeAffordanceNotifyObserversFrameDidChange(void *a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v14 = [a1 _scene];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 _hasInvalidated];

    if ((v16 & 1) == 0)
    {
      if ([a2 count])
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v17 = a2;
        v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v26;
          do
          {
            v21 = 0;
            do
            {
              if (*v26 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v25 + 1) + 8 * v21);
              if (v22)
              {
                WeakRetained = objc_loadWeakRetained((v22 + 8));
                if (WeakRetained && (!a3 || (*(a3 + 16))(a3, v22)))
                {
                  [WeakRetained _notifier:a1 homeAffordanceFrameDidChange:{a4, a5, a6, a7, v25}];
                }
              }

              else
              {
                WeakRetained = 0;
              }

              ++v21;
            }

            while (v19 != v21);
            v24 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
            v19 = v24;
          }

          while (v24);
        }
      }
    }
  }
}

void sub_188C3D53C(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 toolbar];
  if (!v4)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = v4;
  v6 = [v4 _screen];

  if (v6)
  {
    [v6 bounds];
  }

  if (*(*&v2[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model] + 24) == 1)
  {
    swift_getKeyPath();
    sub_188AF0C98();
    sub_18A4A2C08();

    swift_beginAccess();
    return;
  }

  v7 = [v2 toolbar];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = [v7 traitCollection];

  v10 = [v9 userInterfaceIdiom];
  if (v10 == 1)
  {
    v11 = [v2 toolbar];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 traitCollection];

      [v13 userInterfaceIdiom];
      return;
    }

    goto LABEL_20;
  }

  IsLandscape = UIInterfaceOrientationIsLandscape(a1);
  if ((_UIUseMiniHeightInLandscape(IsLandscape) & 1) == 0)
  {
    swift_getKeyPath();
    sub_188AF0C98();
    sub_18A4A2C08();

    swift_beginAccess();
    v15 = [v2 toolbar];
    if (!v15)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v16 = v15;
    if ([v15 barPosition] == 4 || objc_msgSend(v16, sel_barPosition) == 1 && _UIBackgroundExtensionForBar(v16) > 0.0)
    {
      [v16 isMinibar];
    }

    else
    {
    }
  }
}

void sub_188C3D8FC(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      sub_188C3DA28();
      v6 = a1;
      v7 = sub_18A4A7C88();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 _removeScrollViewScrollObserver_];
  }

  v10 = a1;
  sub_188C3DB7C(a1);
  v11 = v2 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state;
  *v11 = 0;
  *(v11 + 8) = 2;
  sub_188F9133C(floor(*(v2 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress)));
  if (a1)
  {

    [v10 _addScrollViewScrollObserver_];
  }
}

unint64_t sub_188C3DA28()
{
  result = qword_1EA9310A8;
  if (!qword_1EA9310A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9310A8);
  }

  return result;
}

void sub_188C3DB7C(void *a1)
{
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong contentOffset];
    v6 = v5;
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0;
  }

  v9 = (v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_lastContentOffset);
  *v9 = v6;
  v9[1] = v8;
}

uint64_t storeEnumTagSinglePayload for SpringBehavior(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_188C3DD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_188C3DF00(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v2 = 1;
  swift_beginAccess();
  *(a1 + 16) = 0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    return 0;
  }

  return v2;
}

void sub_188C3E054(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t))
{
  _s23InProcessAnimationStateCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [(UIViewAnimationState *)ObjCClassFromMetadata pushViewAnimationState:0 options:0 context:?];
  v9 = __currentViewAnimationState;
  if (__currentViewAnimationState)
  {
    v10 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v11 = *(a1 + 16);
    *(a1 + 16) = v10;
    v12 = v9;

    v14[3] = &_s6GetterVN;
    v14[4] = &off_1EFAC46C0;
    v14[0] = swift_allocObject();
    sub_188C3DFF8(a2, v14[0] + 16);
    v13 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A4B4F4(v14, v10 + v13, &qword_1EA935C90);
    swift_endAccess();
    *(v10 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive) = a3 & 1;
    a4(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_188C3E1C0()
{
  v1 = *(v0 + 104);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_188C3E2B0()
{
  v1 = v0;
  v2 = sub_18A4A6E18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A6E58();
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18A4A6E98();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 296);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_18A4A6EC8();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v16 = [objc_opt_self() mainDisplay];
  v31 = v6;
  if (v16)
  {
    v17 = v16;
    LODWORD(v13) = [v16 isForceFixedRateLinksEnabled];
  }

  else
  {
    LODWORD(v13) = 0;
  }

  v32 = v3;
  LODWORD(v6) = *(v1 + 344);
  LODWORD(v9) = v13 ^ 1;
  if (qword_1ED48F7C0 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v18 = v6 & v9;
  v19 = sub_18A4A4378();
  __swift_project_value_buffer(v19, qword_1ED48F7C8);
  v20 = sub_18A4A4358();
  v21 = sub_18A4A7968();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109632;
    *(v22 + 4) = v18;
    *(v22 + 8) = 1024;
    *(v22 + 10) = v6;
    *(v22 + 14) = 1024;
    *(v22 + 16) = v13;
    _os_log_impl(&dword_188A29000, v20, v21, "animationsShouldCompleteImmediately will update to %{BOOL}d, screenIsOff=%{BOOL}d, isForceFixedRateLinksEnabled=%{BOOL}d", v22, 0x14u);
    MEMORY[0x18CFEA5B0](v22, -1, -1);
  }

  v23 = *(v1 + 272);
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  *(v24 + 24) = v18;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_188C3E9EC;
  *(v25 + 24) = v24;
  v38 = sub_188A4B574;
  v39 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_188A4A968;
  v37 = &block_descriptor_51_4;
  v26 = _Block_copy(&aBlock);

  dispatch_sync(v23, v26);
  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    if (v18)
    {
      sub_188A34624(0, &qword_1ED490540);
      v28 = sub_18A4A7A68();
      v38 = sub_18921524C;
      v39 = v1;
      aBlock = MEMORY[0x1E69E9820];
      v35 = 1107296256;
      v36 = sub_188A4A8F0;
      v37 = &block_descriptor_54_4;
      v29 = _Block_copy(&aBlock);

      sub_18A4A6E38();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_188A34024(&qword_1ED490560, 255, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
      sub_188A34360(&qword_1ED490550, &unk_1EA935AC0);
      sub_18A4A7EB8();
      MEMORY[0x18CFE29D0](0, v8, v5, v29);
      _Block_release(v29);

      (*(v32 + 8))(v5, v2);
      (*(v33 + 8))(v8, v31);
    }
  }

  return result;
}

uint64_t sub_188C3E8C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_188C3E8FC()
{
  v0 = sub_18A4A4378();
  __swift_allocate_value_buffer(v0, qword_1ED48F7C8);
  __swift_project_value_buffer(v0, qword_1ED48F7C8);
  v1 = _InProcessAnimationLog();
  return sub_18A4A4388();
}

id _InProcessAnimationLog()
{
  if (qword_1ED49C8A0 != -1)
  {
    dispatch_once(&qword_1ED49C8A0, &__block_literal_global_41);
  }

  v1 = _MergedGlobals_995;

  return v1;
}

void sub_188C3EAB8(__int16 a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = a1 & 0x101;
  os_unfair_lock_unlock((v3 + 20));
  sub_18A4A7A78();
  if (v5 == 1)
  {
    os_unfair_lock_lock((v3 + 20));
    v4 = *(v3 + 16);
    if (v4 != 2)
    {
      *(v3 + 18) = v4 & 1;
      *(v3 + 19) = HIBYTE(v4) & 1;
      *(v3 + 16) = 2;
    }

    os_unfair_lock_unlock((v3 + 20));
  }
}

uint64_t sub_188C3EB7C()
{
  v7 = sub_18A4A7A58();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_188A34624(0, &qword_1ED490540);
  sub_18A4A6E38();
  v8 = MEMORY[0x1E69E7CC0];
  sub_188A34024(&unk_1ED48FC20, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93EAD8);
  sub_188A34360(&unk_1ED48FC38, qword_1EA93EAD8);
  sub_18A4A7EB8();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_18A4A7A98();
  qword_1ED4A3568 = result;
  return result;
}

void inProcessAnimationManagerSetFixedPriority(int a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  v14 = 0;
  v13 = 0;
  pthread_getschedparam(v2, &v14, &v13);
  v13.sched_priority = a1;
  v3 = pthread_setschedparam(v2, v14, &v13);
  if (v3)
  {
    v4 = v3;
    v5 = _InProcessAnimationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AF00] currentThread];
      v11 = [v10 name];
      *buf = 136315906;
      v16 = "inProcessAnimationManagerSetFixedPriority";
      v17 = 1024;
      v18 = v4;
      v19 = 1024;
      v20 = a1;
      v21 = 2114;
      v22 = v11;
      _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "%s Error %d setting priority %d for thread: %{public}@", buf, 0x22u);
    }
  }

  policy_info = 0;
  v6 = pthread_mach_thread_np(v2);
  thread_policy_set(v6, 1u, &policy_info, 1u);
  v7 = proc_setthread_cpupercent();
  if (v7)
  {
    v8 = v7;
    v9 = _InProcessAnimationLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "inProcessAnimationManagerSetFixedPriority";
      v17 = 1024;
      v18 = v8;
      _os_log_error_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s Error %d setting thread CPU percent", buf, 0x12u);
    }
  }
}

uint64_t sub_188C3EFF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_188C3F02C()
{
  result = sub_188E8DD04(MEMORY[0x1E69E7CC0]);
  qword_1EA9951B0 = result;
  return result;
}

id sub_188C3F054()
{
  result = _UIMainBundleIdentifier();
  if (result)
  {
    v1 = result;
    v2 = sub_18A4A7288();
    v4 = v3;

    if (v2 == 0xD000000000000014 && 0x800000018A6B35D0 == v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_18A4A86C8();
    }
  }

  else
  {
    v5 = 0;
  }

  byte_1EA931238 = v5 & 1;
  return result;
}

uint64_t sub_188C3F104(uint64_t a1)
{
  v2 = sub_188C3F274(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v5 = *i;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = sub_188AB103C(v5);
    v9 = v2[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      break;
    }

    v13 = v8;
    if (v2[3] >= v12)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = v7;
        sub_188FA253C();
        v7 = v20;
        if (v13)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }

    else
    {
      sub_188D4A2CC(v12, isUniquelyReferenced_nonNull_native);
      v7 = sub_188AB103C(v5);
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_20;
      }
    }

    if (v13)
    {
      goto LABEL_11;
    }

LABEL_9:
    v2[(v7 >> 6) + 8] |= 1 << v7;
    *(v2[6] + 4 * v7) = v5;
    *(v2[7] + 8 * v7) = 0;
    v15 = v2[2];
    v11 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (v11)
    {
      goto LABEL_19;
    }

    v2[2] = v16;
LABEL_11:
    v17 = v2[7];
    v18 = *(v17 + 8 * v7);
    v11 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v11)
    {
      goto LABEL_18;
    }

    *(v17 + 8 * v7) = v19;
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

unint64_t sub_188C3F274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938AF0);
    v3 = sub_18A4A8488();
    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_188AB103C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_188C3F354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D80);
    v3 = sub_18A4A8488();
    for (i = a1 + 32; ; i += 16)
    {
      sub_188A3F29C(i, &v11, &qword_1EA934D88);
      v5 = v11;
      result = sub_188A403F4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_188A3F704(&v12, v3[7] + 8 * result, &unk_1EA935760);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

void sub_188C3F4B8(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_beginAccess();
    v4 = *(a1 + 96);
    if (v4 >> 62)
    {
      if (sub_18A4A7F68())
      {
        goto LABEL_9;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    if (qword_1ED48EFF8 != -1)
    {
      swift_once();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v6 = 1;
      goto LABEL_10;
    }
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  *a2 = v6;
}

uint64_t sub_188C3F5AC()
{
  sub_188A34624(0, &qword_1ED48F7A0);
  result = sub_18A4A7CB8();
  qword_1ED48F7B0 = result;
  return result;
}

uint64_t sub_188C3F710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_188C3F780(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (!(a2 >> 62))
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    sub_188A34624(0, &qword_1ED48C698);
    v11 = sub_18A4A7518();

    v12 = [v3 initWithPreferredPlacement:a1 groups:v11];

    return v12;
  }

  v6 = sub_18A4A7F68();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  result = sub_18A4A8208();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v13 = v2;
    v8 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = sub_188E49AA8(v8, a2);
      }

      else
      {
        v9 = *(a2 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      [objc_allocWithZone(_UIBarSectionItemGroup) initWithGroup_];

      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
    }

    while (v6 != v8);

    v3 = v13;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_188C3FA2C(void *a1, void *a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_188C3FA84(a1, a2, a3);

  return v7;
}

id sub_188C3FA84(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    sub_188A34624(0, qword_1EA9313C0);
    swift_dynamicCastMetatypeUnconditional();
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v8 buttonBarButtonClass];
    swift_getObjCClassMetadata();
    sub_188A34624(0, &qword_1ED48C6B0);
    swift_dynamicCastMetatypeUnconditional();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVisualProvider_];
  }

  v9 = a2;
  v10 = [a1 style];
  if (v10 == 2)
  {
    [v7 setAppearanceData_];
    v11 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_prominentItemAppearanceNeedsUpdate;
  }

  else
  {
    if (v10)
    {
      [v7 setAppearanceData_];
      goto LABEL_11;
    }

    [v7 setAppearanceData_];
    v11 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_plainItemAppearanceNeedsUpdate;
  }

  if (*(v3 + v11) == 1)
  {
    [v7 setNeedsAppearanceUpdate];
  }

LABEL_11:
  [v7 setVerticallyCentersContents_];
  [v7 setUsesTintColorCapsuleForSelection_];
  if (*(a3 + 192) == 1)
  {
    v12 = *(v3 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 112);
  }

  else
  {
    v12 = 0;
  }

  [v7 setUsesAdjustedTintColorWhenItemPrefersFilledAppearance_];
  if (*(a3 + 192) == 1)
  {
    v13 = *(v3 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 112);
  }

  else
  {
    v13 = 0;
  }

  [v7 setIsSingleItemInSectionWithPlatter_];
  [v7 configureFromBarItem:a1 withAppearanceDelegate:v3];
  [v7 removeTarget:0 action:0 forControlEvents:0x2000];
  [v7 addTarget:v3 action:sel_invalidateAssistant_ forControlEvents:0x2000];
  return v7;
}

void sub_188C4081C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayout);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return;
  }

  v5 = v2 + 32;

  v6 = 0;
  v27 = v3;
  v28 = v2;
  v26 = v2 + 32;
  while (1)
  {
    if (v6 >= *(v2 + 16))
    {
LABEL_30:
      __break(1u);
      return;
    }

    v7 = *(v5 + 24 * v6);
    if (v7 >> 62)
    {
      break;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_4:
    if (++v6 == v3)
    {

      return;
    }
  }

  v8 = sub_18A4A7F68();
  if (!v8)
  {
    goto LABEL_4;
  }

LABEL_8:

  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_188E49D08(v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v10 = *(v7 + 32 + 8 * v9);
    }

    v11 = v10;
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (([a1 isSpaceItem] & 1) == 0)
    {
      v13 = [a1 buttonGroup];
      if (v13)
      {
        v14 = *&v11[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group];
        v15 = v13;

        if (v15 == v14)
        {
          v16 = OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_itemLayouts;
          swift_beginAccess();
          v17 = *&v11[v16];
          v18 = *(v17 + 16);
          if (v18)
          {
            break;
          }
        }
      }
    }

LABEL_9:

    if (v9 == v8)
    {

      v3 = v27;
      v2 = v28;
      v5 = v26;
      goto LABEL_4;
    }
  }

  v19 = (v17 + 40);
  v20 = (v17 + 40);
  while (1)
  {
    v22 = *v20;
    v20 += 16;
    v21 = v22;
    if ((v22 & 0x80000000) == 0)
    {
      v23 = *(v19 - 1);
      if (*(v23 + 16) == a1)
      {
        break;
      }
    }

    v19 = v20;
    if (!--v18)
    {
      goto LABEL_9;
    }
  }

  sub_188BB803C(v23, v21);

  v24 = *(v23 + 192);
  v25 = *(v23 + 16);
  sub_18907EE40(v25, v24);

  sub_188BB8460(v23, v21);
  sub_188BB8460(v23, v21);
}

uint64_t sub_188C40C4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_188C4108C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_188C40E00(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_188C40F58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 72 * v8);
  }

  return v10;
}

char *sub_188C4108C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B3F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_188C411D4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_188B52BB0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}