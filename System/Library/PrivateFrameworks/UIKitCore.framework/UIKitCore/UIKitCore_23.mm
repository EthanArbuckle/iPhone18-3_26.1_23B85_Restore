uint64_t sub_188D6E440()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_188D6E480()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188D6E5D0(unint64_t a1)
{
  v2 = v1;
  result = UIAccessibilityPrefersCrossFadeTransitions();
  if ((result & 1) == 0)
  {
    v5 = OBJC_IVAR____UIMagicMorphView_magicMoveItems;
    swift_beginAccess();
    v59 = v5;
    v6 = *&v2[v5];
    v7 = *(a1 + OBJC_IVAR____UIMagicMorphDestination_preview);
    v62 = v6;

    v8 = [v7 view];
    isEscapingClosureAtFileLocation = sub_188D6ED88();

    if (isEscapingClosureAtFileLocation >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
    {
      v11 = 0;
      v54 = 0;
      v57 = a1;
      v58 = OBJC_IVAR____UIMagicMorphView_crossBlurWhenMorphing;
      a1 = isEscapingClosureAtFileLocation & 0xC000000000000001;
      v51 = OBJC_IVAR____UIMagicMorphView_clippingView;
      v52 = isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8;
      v61 = v2;
      v50 = isEscapingClosureAtFileLocation;
      v55 = isEscapingClosureAtFileLocation & 0xC000000000000001;
      v56 = i;
      while (1)
      {
        if (a1)
        {
          v13 = sub_188E49300(v11, isEscapingClosureAtFileLocation);
        }

        else
        {
          if (v11 >= *(v52 + 16))
          {
            goto LABEL_37;
          }

          v13 = *(isEscapingClosureAtFileLocation + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (![(UIView *)v13 _isInVisibleHierarchy])
        {
          goto LABEL_7;
        }

        result = [v14 _matchedViewIdentifier];
        if (!result)
        {
          goto LABEL_54;
        }

        v16 = result;
        v17 = sub_18A4A7288();
        v19 = v18;

        v20 = *&v2[v59];
        v21 = v62;
        v60 = v17;
        if (!*(v20 + 16))
        {
          goto LABEL_19;
        }

        v22 = sub_188B0944C(v17, v19);
        if ((v23 & 1) == 0)
        {

LABEL_19:
          v24 = [objc_allocWithZone(type metadata accessor for _UIMagicMorphView.MagicMoveItem()) init];
          goto LABEL_20;
        }

        v24 = *(*(v20 + 56) + 8 * v22);

LABEL_20:
        v25 = *&v24[OBJC_IVAR____UIMagicMoveItem_morphView];
        v26 = [v25 window];
        if (v26)
        {

          sub_1890E05D0(v57, v14, v25);
        }

        else
        {
          swift_beginAccess();

          v27 = v24;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = *&v61[v59];
          *&v61[v59] = 0x8000000000000000;
          sub_188E9F110(v27, v60, v19, isUniquelyReferenced_nonNull_native);

          *&v61[v59] = v65;
          swift_endAccess();
          if (v61[v58] == 1)
          {
            [*&v61[v51] addSubview_];
          }

          else
          {
            [v61 insertSubview:v25 atIndex:0];
          }

          v53 = objc_opt_self();
          v29 = swift_allocObject();
          v29[2] = v57;
          v29[3] = v14;
          v29[4] = v25;
          v30 = v25;
          v31 = v57;
          v32 = v14;
          sub_188A55B8C(v54);
          a1 = swift_allocObject();
          v54 = sub_1890E2154;
          *(a1 + 16) = sub_1890E2154;
          *(a1 + 24) = v29;
          aBlock[4] = sub_188A4B574;
          v64 = a1;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_188A4A968;
          aBlock[3] = &block_descriptor_159_2;
          v33 = _Block_copy(aBlock);
          v2 = v64;

          [v53 performWithoutAnimation_];
          _Block_release(v33);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            goto LABEL_38;
          }

          v21 = v62;
          isEscapingClosureAtFileLocation = v50;
        }

        v34 = v21;
        v35 = sub_188B0944C(v60, v19);
        v37 = v36;

        if (v37)
        {
          v38 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v34;
          if (!v38)
          {
            sub_188FA36FC();
            v34 = aBlock[0];
          }

          v62 = v34;
          sub_188C578C4(v35, v34);
        }

        else
        {
          v62 = v34;
        }

        v2 = v61;
        if (v61[v58] == 1)
        {

          v12 = *&v61[v51];
          [v12 bringSubviewToFront_];
        }

        else
        {
          v39 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];

          [v39 setMatchesPosition_];
          [v39 setMatchesTransform_];
          [v39 setMatchesAlpha_];
          [v39 setHidesSourceView_];
          [v39 setUserInteractionEnabled_];
          v40 = [v14 superview];
          [v40 insertSubview:v39 aboveSubview:v14];

          v41 = OBJC_IVAR____UIMagicMoveItem_portals;
          swift_beginAccess();
          v42 = v39;
          MEMORY[0x18CFE2450]();
          if (*((*&v24[v41] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v24[v41] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_18A4A7588();
            isEscapingClosureAtFileLocation = v50;
            v2 = v61;
          }

          sub_18A4A75F8();
          swift_endAccess();
          v12 = v24;
          v24 = v42;
        }

        a1 = v55;
        i = v56;
LABEL_7:

        ++v11;
        if (v15 == i)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

    v54 = 0;
LABEL_41:

    v43 = 1 << *(v62 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v62 + 64);
    v46 = (v43 + 63) >> 6;

    for (j = 0; v45; result = [*(*(*(v62 + 56) + ((v48 << 9) | (8 * v49))) + OBJC_IVAR____UIMagicMoveItem_morphView) setAlpha_])
    {
      v48 = j;
LABEL_49:
      v49 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
    }

    while (1)
    {
      v48 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v48 >= v46)
      {

        return sub_188A55B8C(v54);
      }

      v45 = *(v62 + 64 + 8 * v48);
      ++j;
      if (v45)
      {
        j = v48;
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }

  return result;
}

uint64_t sub_188D6ED3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188D6ED88()
{
  v1 = [v0 _matchedViewIdentifier];
  if (v1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = [v0 _sourceViewIfPortal];
    if (v3)
    {
      v4 = v3;
      v5 = sub_188D6ED88();

      return v5;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      v6 = swift_allocObject();
      *(v6 + 16) = v0;
      *(v6 + 24) = &v12;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_188D6EFD0;
      *(v7 + 24) = v6;
      aBlock[4] = sub_188D6EFD8;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188D6EF6C;
      aBlock[3] = &block_descriptor_168_0;
      v8 = _Block_copy(aBlock);
      v9 = v0;

      [v9 _enumerateDescendentViews_];
      _Block_release(v8);
      v10 = v12;

      return v10;
    }
  }
}

uint64_t sub_188D6EF10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_188D6EF6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v5(a2, a3);
}

void sub_188D6F000(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    sub_188A34624(0, &qword_1ED48F680);
    v8 = a1;
    if ((sub_18A4A7C88() & 1) == 0)
    {
      v6 = [v8 _matchedViewIdentifier];
      if (v6)
      {

        v7 = v8;
        MEMORY[0x18CFE2450]();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
      }
    }
  }
}

void _enumerateViewForest(void *a1, uint64_t a2, _BYTE *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        (*(a2 + 16))(a2, v12, a3);
        if (*a3)
        {
          break;
        }

        v13 = [v12 subviews];
        _enumerateViewForest(v13, a2, a3);

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }
}

id sub_188D6F26C()
{
  v1 = *(v0 + 16);
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

void sub_188D6F2B8()
{
  v1 = v0;
  v2 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    v4 = sub_18A4A7F68();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_23:

    v6 = sub_188E494B4(v5, v3);

    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:
    __break(1u);
    return;
  }

  v6 = *(v3 + 8 * v5 + 32);
LABEL_8:
  v7 = *&v6[OBJC_IVAR____UIMagicMorphDestination_preview];

  sub_188D6F5C4(v28);
  v8 = &v1[OBJC_IVAR____UIMagicMorphView_overrideCornerRadii];
  if (v1[OBJC_IVAR____UIMagicMorphView_overrideCornerRadii + 64])
  {
    sub_18923B9EC(v30);
    v9 = v35;
    v21[4] = v31;
    v21[5] = v32;
    v21[6] = v33;
    v21[7] = v34;
    v21[0] = v30[0];
    v21[1] = v30[1];
    v21[2] = v30[2];
    v21[3] = v30[3];
    v22 = v35;
    v23 = v36;
    if (sub_188F36334(v21) == 1 || (v9 & 1) != 0)
    {
      v24 = v28[0];
      v25 = v28[1];
      v10 = v28[2];
      v11 = v28[3];
    }

    else
    {
      v24 = v31;
      v25 = v32;
      v10 = v33;
      v11 = v34;
    }
  }

  else
  {
    v12 = v8[1];
    v24 = *v8;
    v25 = v12;
    v10 = v8[2];
    v11 = v8[3];
  }

  v26 = v10;
  v27 = v11;
  v13 = v29;
  sub_188A3F29C(v28, v21, &qword_1EA93C998);
  v14 = [v7 parameters];
  v15 = [v14 _effectiveBackgroundColor];

  v16 = OBJC_IVAR____UIMagicMorphView_clippingView;
  v17 = [*&v1[OBJC_IVAR____UIMagicMorphView_clippingView] layer];
  [v17 setCornerCurve_];

  v18 = [v7 _effectiveBackgroundColorResolvesToMaterial];
  if ([*&v1[v16] clipsToBounds] && (!v18 || (v1[OBJC_IVAR____UIMagicMorphView_appliesBackgroundFromView] & 1) == 0))
  {
    [*&v1[v16] setBackgroundColor_];
  }

  v19 = sub_188C8530C();
  sub_188D6FE04(&v24);

  v20 = [v1 layer];
  [v20 setCornerCurve_];

  sub_188A3F5FC(v28, &qword_1EA93C998);
  sub_188A3F5FC(v28, &qword_1EA93C998);
}

__n128 sub_188D6F5C4@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 _outlineShape];
  [v4 cornerRadii];
  if (qword_1EA930F18 != -1)
  {
    swift_once();
  }

  v18 = xmmword_1EA994E60;
  v19 = *algn_1EA994E70;
  v20 = xmmword_1EA994E80;
  v21 = unk_1EA994E90;
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  if (CACornerRadiiEqualToRadii())
  {
    [v4 cornerRadius];
    v6 = v5;
    v7 = [v4 cornerMask];
    if (v6 == 0.0)
    {
      v8 = 15;
    }

    else
    {
      v8 = v7;
    }

    [v2 size];
    v11 = _UIClampedCornerRadius(v8, v6, 0.0, 0.0, v9, v10);
    _UICACornerRadiiMakeWithRadiusAndMask(v8, &v22, v11);
  }

  else
  {
    [v4 cornerRadii];
  }

  v12 = [v4 cornerCurve];

  *a1 = v17;
  *(a1 + 16) = v16;
  result = v14;
  *(a1 + 32) = v15;
  *(a1 + 48) = v14;
  *(a1 + 64) = v12;
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

uint64_t sub_188D6FE04(__int128 *a1)
{
  sub_188D62EA4([v1 _value], objc_msgSend(v1, sel__length), aBlock);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  result = CACornerRadiiEqualToRadii();
  if ((result & 1) == 0)
  {
    v4 = swift_allocObject();
    v5 = a1[1];
    *(v4 + 16) = *a1;
    *(v4 + 32) = v5;
    v6 = a1[3];
    *(v4 + 48) = a1[2];
    *(v4 + 64) = v6;
    *(v4 + 80) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_188D73F58;
    *(v7 + 24) = v4;
    aBlock[4] = sub_188D7B204;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188D846BC;
    aBlock[3] = &block_descriptor_150_2;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v9 _mutateValue_];
    _Block_release(v8);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_188D6FFC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_188D70058(double a1, double a2, double a3, double a4)
{
  result = sub_188D70240(&selRef__value);
  if (v13 != a1 || v10 != a2 || v11 != a3 || v12 != a4)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    *(v17 + 32) = a3;
    *(v17 + 40) = a4;
    *(v17 + 48) = v4;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1890E2160;
    *(v18 + 24) = v17;
    v21[4] = sub_1890E2428;
    v21[5] = v18;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 1107296256;
    v21[2] = sub_188D846BC;
    v21[3] = &block_descriptor_216_1;
    v19 = _Block_copy(v21);
    v20 = v4;

    [v20 _mutateValue_];
    _Block_release(v19);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if (v20)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_188D70204()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_188D70240(SEL *a1)
{
  [v1 *a1];
  result = [v1 _length];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (result < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result == 3)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_188D702AC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_188D70328(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      v7 = v5;
      goto LABEL_8;
    }

    v7 = v6;
    v8 = OBJC_IVAR____UIMagicMorphView_destinations;
    swift_beginAccess();
    v9 = *&v5[v8];
    if (v9 >> 62)
    {
      if (sub_18A4A7F68() < 2)
      {
        goto LABEL_6;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
LABEL_6:

LABEL_8:
      return;
    }

    sub_188D85B38(v7, a3 & 1);
    goto LABEL_6;
  }
}

uint64_t sub_188D70460()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for _UIMagicMorphTransformView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_188D705D8;
  *(v3 + 24) = v2;
  v8[4] = sub_188A4B574;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_160;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_188D705E0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview;
  v3 = *(a1 + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview);
  if (!v3)
  {
    return;
  }

  if (*(a1 + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_didHostSourceView) != 1)
  {
    v7 = *(a1 + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView);
    if (!v7)
    {
      return;
    }

    v76 = v3;
    v8 = v3;
    v5 = v7;
    v6 = v76;
LABEL_8:
    v9 = [v6 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v76 parameters];
      v12 = [v11 visiblePath];

      if (v12)
      {
        if (![v12 _isRoundedRect] || (objc_msgSend(v12, sel_bounds), v17 = UIRectRoundToViewScale(v10, v13, v14, v15, v16), v19 = v18, v21 = v20, v23 = v22, objc_msgSend(v10, sel_bounds), v83.origin.x = v24, v83.origin.y = v25, v83.size.width = v26, v83.size.height = v27, v80.origin.x = v17, v80.origin.y = v19, v80.size.width = v21, v80.size.height = v23, !CGRectEqualToRect(v80, v83)))
        {
          [v10 bounds];
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;
          Center = UIRectGetCenter(v29, v31, v33);
          v39 = v38;
          [v12 bounds];
          v40 = Center - CGRectGetMinX(v81);
          [v12 bounds];
          MinY = CGRectGetMinY(v82);

          v42 = v39 - MinY;
LABEL_18:
          [v5 setBounds_];
          [v5 setCenter_];
          v46 = *(a1 + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView);
          if (v46)
          {
            v47 = *(a1 + v2);
            if (v47)
            {
              v48 = v46;
              v49 = [v47 view];
              if (v49)
              {
                v50 = v49;
                [v49 _cropInsets];
                v52 = v51;
                v54 = v53;
                v56 = v55;
                v58 = v57;

                v59 = UIRectInset(v30, v32, v34, v36, v52, v58, v56, v54);
                v61 = v60;
                v63 = v62;
                v64 = UIRectGetCenter(v30, v32, v34);
                v66 = v65;
                v67 = v64 - UIRectGetCenter(v59, v61, v63);
                v69 = v66 - v68;
                v70 = [v76 target];
                [v70 _contentScale];
                v72 = v71;

                CATransform3DMakeScale(&v77, v72, v72, 1.0);
                CATransform3DTranslate(&v78, &v77, v67, v69, 0.0);
                v73 = [v48 layer];
                v77 = v78;
                [v73 setSublayerTransform_];

                return;
              }
            }

            else
            {
              v74 = v46;
            }

            __break(1u);
            return;
          }

          v28 = v76;
          goto LABEL_24;
        }
      }

      else
      {
        v12 = v10;
      }
    }

LABEL_17:
    [v76 size];
    v34 = v43;
    v36 = v44;
    v30 = 0.0;
    v40 = UIRectGetCenter(0.0, 0.0, v43);
    v42 = v45;
    v32 = 0.0;
    goto LABEL_18;
  }

  v76 = v3;
  v75 = v3;
  v4 = [v75 view];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + v2);
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v28 = v75;
LABEL_24:
}

void sub_188D70A44(void *a1)
{
  if ([a1 _captureHierarchyBelowSourceView] && objc_msgSend(a1, sel__sourceViewIsInViewHierarchy))
  {
    v3 = &v1[OBJC_IVAR____UIContentPlatterView_backgroundCapture];
    v4 = *&v1[OBJC_IVAR____UIContentPlatterView_backgroundCapture];
    v5 = *&v1[OBJC_IVAR____UIContentPlatterView_backgroundCapture + 8];
    v6 = *&v1[OBJC_IVAR____UIContentPlatterView_backgroundCapture + 16];
    if (v4)
    {
      v7 = v5;
      v8 = v6;
      v47 = v4;
    }

    else
    {
      _s21BackgroundCaptureViewCMa();
      v46 = v5;
      v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v12 setAlpha_];
      v13 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];

      v45 = v6;
      v14 = sub_18A4A7258();
      [v13 setName_];

      [v13 setAllowsBackdropGroups_];
      v15 = [objc_allocWithZone(UIView) init];
      [v15 setClipsToBounds_];
      [v15 addSubview_];
      v16 = *v3;
      v17 = *(v3 + 1);
      v18 = *(v3 + 2);
      *v3 = v12;
      *(v3 + 1) = v13;
      *(v3 + 2) = v15;
      v19 = v12;
      v20 = v13;
      v21 = v15;
      v6 = v45;
      v22 = v21;
      v47 = v19;
      v8 = v22;
      v7 = v20;
      v23 = v18;
      v5 = v46;
      sub_188CABE90(v16, v17, v23);
    }

    sub_188F14254(v4, v5, v6);
    v24 = [a1 target];
    v25 = [v24 container];

    v26 = [a1 view];
    [v25 insertSubview:v47 belowSubview:v26];

    [v1 insertSubview:v8 atIndex:0];
    v27 = [v8 layer];

    [v27 setAllowsEdgeAntialiasing_];
    v28 = [a1 view];
    [v28 frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v49.origin.x = v30;
    v49.origin.y = v32;
    v49.size.width = v34;
    v49.size.height = v36;
    v50 = CGRectInset(v49, -50.0, 0.0);
    [v47 setFrame_];
    [v47 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    [v7 setFrame_];
    [v1 setNeedsLayout];
  }

  else
  {
    v9 = &v1[OBJC_IVAR____UIContentPlatterView_backgroundCapture];
    v10 = *&v1[OBJC_IVAR____UIContentPlatterView_backgroundCapture];
    if (v10)
    {
      [v10 removeFromSuperview];
      if (*v9)
      {
        v11 = *(v9 + 2);

        [v11 removeFromSuperview];
      }
    }
  }
}

void sub_188D710E0()
{
  v1 = [v0 _accessoryViews];
  sub_188A34624(0, &qword_1EA930348);
  v2 = sub_18A4A7548();

  v3 = [v0 uiController];
  v4 = [v3 platterContainerView];

  if (v2 >> 62)
  {
    v5 = sub_18A4A7F68();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = sub_188E4B4C4(v6, v2);
    }

    else
    {
      v7 = *(v2 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    [v7 anchor];
    v9 = _UIContextMenuActionsAnchorPoint(&v13);
    v11 = v10;
    if ([v8 location])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0.0;
    }

    [v8 setAnchorPoint_];
    [v4 addSubview_];
    [v8 setVisible:0 animated:0];
    [v0 _updateAccessoryAttachment_];
  }

  while (v5 != v6);
LABEL_13:
}

void sub_188D713EC()
{
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18A64B710;
  *(v2 + 32) = [v0 animationProgress];
  sub_188A34624(0, &qword_1ED48F690);
  v3 = sub_18A4A7518();

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_188D760F4;
  v13 = v4;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_188A4A8F0;
  v11 = &block_descriptor_157;
  v5 = _Block_copy(&v8);

  [v1 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v5);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_188D76114;
  v13 = v6;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_188D85708;
  v11 = &block_descriptor_4_1;
  v7 = _Block_copy(&v8);

  [v0 setAccessoryAnimationBlock_];
  _Block_release(v7);
}

uint64_t sub_188D7160C()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188D716C4(char a1, id a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v25 = 0;
  v26 = 0;
  if (a2)
  {
    [a2 doubleValue];
    v26 = v27;
  }

  v53 = a2 == 0;
  if (a3)
  {
    [a3 doubleValue];
    v25 = v28;
  }

  v41 = a3 == 0;
  v52 = a3 == 0;
  v40 = v53;
  if (a4)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = a4;
    *(v29 + 24) = a5;
    v30 = sub_188E3FE50;
  }

  else
  {
    v30 = signpost_c2_entryLock_start;
    v29 = 0;
  }

  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v29;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = a6;
  v33[4] = a7;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_188EB2CAC;
  *(v34 + 24) = v31;
  v50 = sub_188E5C7F8;
  v51 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_188A4A968;
  v49 = &block_descriptor_192_0;
  v39 = _Block_copy(&aBlock);
  sub_188A52E38(a4);

  sub_188A52E38(a6);

  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = a9;
  *(v35 + 32) = a8;
  *(v35 + 40) = v26;
  *(v35 + 48) = v40;
  *(v35 + 56) = v25;
  *(v35 + 64) = v41;
  *(v35 + 72) = a10;
  *(v35 + 80) = a11;
  *(v35 + 88) = a12;
  *(v35 + 96) = a13;
  *(v35 + 104) = a14;
  *(v35 + 112) = a1 & 1;
  *(v35 + 120) = signpost_c2_entryLock_start;
  *(v35 + 128) = 0;
  v50 = sub_188D7A114;
  v51 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_188A4A8F0;
  v49 = &block_descriptor_198_0;
  v36 = _Block_copy(&aBlock);

  v50 = sub_188E5C82C;
  v51 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_188ABD010;
  v49 = &block_descriptor_201_0;
  v37 = _Block_copy(&aBlock);

  [ObjCClassFromMetadata _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];

  _Block_release(v37);
  _Block_release(v36);
  _Block_release(v39);

  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188D71B00()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

void sub_188D71B60(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t))
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

    v17[3] = &_s6GetterVN_3;
    v17[4] = &off_1EFAC58C8;
    v13 = swift_allocObject();
    v17[0] = v13;
    v14 = *(a2 + 48);
    *(v13 + 48) = *(a2 + 32);
    *(v13 + 64) = v14;
    *(v13 + 80) = *(a2 + 64);
    *(v13 + 96) = *(a2 + 80);
    v15 = *(a2 + 16);
    *(v13 + 16) = *a2;
    *(v13 + 32) = v15;
    v16 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A4B4F4(v17, v10 + v16, &qword_1EA935C90);
    swift_endAccess();
    *(v10 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive) = a3 & 1;
    a4(v10);
  }

  else
  {
    __break(1u);
  }
}

id sub_188D71D64()
{
  v1 = v0;
  v2 = [(UIView *)v0 _typedStorage];
  v3 = sub_188D7A23C();

  if (v3)
  {
    return v3;
  }

  v5 = _s29AlphaOverrideAssertionSubjectCMa();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject____lazy_storage___assertionController] = 0;
  v7 = OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_modifiers;
  *&v6[v7] = sub_188D71F38(MEMORY[0x1E69E7CC0]);
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_assertionID] = 0;
  swift_unknownObjectUnownedInit();
  v8 = v1;
  result = [v8 _outermostLayer];
  if (result)
  {
    *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_presentationLayer] = result;
    v16.receiver = v6;
    v16.super_class = v5;
    v9 = objc_msgSendSuper2(&v16, sel_init);

    v10 = [(UIView *)v8 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A270);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v12 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v13 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(&v10->super.isa + v12);
    *(&v10->super.isa + v12) = 0x8000000000000000;
    sub_188A40430(v11, &_s23AlphaOverrideSubjectKeyVN, isUniquelyReferenced_nonNull_native);
    *(&v10->super.isa + v12) = v15;
    swift_endAccess();

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_188D71F60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_modifiers;
  if (!*(*(v0 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_modifiers) + 16))
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v4 = [Strong _outermostLayer];

    if (!v4)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v5 = *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_presentationLayer);
    *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_presentationLayer) = v4;
  }

  v6 = *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_assertionID);
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_assertionID) = v6 + 1;
  v7 = [objc_opt_self() groupWithCapacity_];
  [v7 setUpdatesAsynchronously_];
  v8 = objc_allocWithZone(MEMORY[0x1E6979410]);
  v9 = v7;
  v10 = sub_18A4A7258();
  v11 = [v8 initWithKeyPath:v10 initialValue:sub_18A4A8778() additive:0 group:v9];
  swift_unknownObjectRelease();

  [*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_presentationLayer) addPresentationModifier_];
  [v9 flushWithTargetTime_];
  v12 = *(v1 + v2);
  v13 = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v12;
  sub_188D722BC(v13, v6, isUniquelyReferenced_nonNull_native);
  v15 = *(v1 + v2);
  *(v1 + v2) = v24;
  v16 = *(v24 + 16);
  if ((*(v15 + 16) != 0) == (v16 == 0))
  {
    v17 = swift_unknownObjectUnownedLoadStrong();
    v18 = v17;
    if (v16)
    {
      [(UIView *)v17 _registerMultiLayerDelegate:v1];
    }

    else
    {
      [(UIView *)v17 _removeMultiLayerDelegate:v1];
    }
  }

  else
  {
  }

  v19 = sub_188D841C4();
  v20 = [v13 keyPath];
  if (!v20)
  {
    sub_18A4A7288();
    v20 = sub_18A4A7258();
  }

  v21 = [v19 vendAssertionOfType:v6 initialState:0 reason:v20 requiresExplicitInvalidation:0];

  v22 = [objc_allocWithZone(_UIViewAlphaOverrideAssertion) init];
  v23 = swift_unknownObjectUnownedLoadStrong();
  [v22 setSourceView_];

  [v22 setAssertion_];
  [v22 setModifier_];

  [v22 updateBackgroundSuppressionIfNeeded];
  swift_unknownObjectRelease();
}

void sub_188D722BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188C4585C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA55A4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_188D7A248(v14, a3 & 1);
    v9 = sub_188C4585C(a2);
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
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {

    sub_188A3F9DC(v9, a2, a1, v19);
  }
}

uint64_t sub_188D723DC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_18A4A8468();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      result = sub_18A4A8878();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v6 + 32);
      if (v31 >= 64)
      {
        bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v6 + 16) = 0;
    }

    v4 = v32;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

double sub_188D7271C()
{
  v1 = [v0 modifier];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 value];

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  return v2;
}

id sub_188D72854()
{
  v1 = v0;
  v2 = [(UIView *)v0 _typedStorage];
  v3 = sub_188A74A4C(&_s24BackgroundSuppressionKeyVN);

  if (v3)
  {
    return v3;
  }

  v5 = _s31BackgroundSuppressionControllerCMa();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController____lazy_storage___assertionController] = 0;
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController_assertionID] = 0;
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController_numberOfAssertions] = 0;
  swift_unknownObjectUnownedInit();
  v14.receiver = v6;
  v14.super_class = v5;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = [(UIView *)v1 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A4B8);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v11 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(&v8->super.isa + v10);
  *(&v8->super.isa + v10) = 0x8000000000000000;
  sub_188A40430(v9, &_s24BackgroundSuppressionKeyVN, isUniquelyReferenced_nonNull_native);
  *(&v8->super.isa + v10) = v13;
  swift_endAccess();

  return v11;
}

uint64_t sub_188D729CC()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_18902C0BC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_188A4B574;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_83_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;
    if (v10)
    {

      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188D72B44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188D72B90()
{
  v1 = OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController____lazy_storage___assertionController;
  v2 = *(v0 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController____lazy_storage___assertionController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController____lazy_storage___assertionController);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIAssertionController) initWithAssertionSubject_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t _UILiquidMorphAnimation.init(morphables:)(unint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_morphAnimations] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_inferGlassGroupFromContainer] = 0;
  v4 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer;
  v5 = [objc_allocWithZone(type metadata accessor for _UIMorphAnimationContainerView()) initWithFrame_];
  v6 = &v5[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_name];
  *v6 = 0xD000000000000021;
  *(v6 + 1) = 0x800000018A6AFF30;

  *&v2[v4] = v5;
  v7 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedGroupCompletion;
  *&v2[v7] = [objc_allocWithZone(_UIGroupCompletion) init];
  *&v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_reparentingViews] = MEMORY[0x1E69E7CC8];
  *&v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___traitObserver] = 0;
  *&v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_viewsToRemove] = MEMORY[0x1E69E7CD0];
  v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation__overrideReduceMotion] = 0;
  *&v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_prevReparentingReferenceView] = 0;
  *&v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_hidingAssertions] = 0;
  *&v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___morphTimeline] = 0;
  *&v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView] = 0;
  *&v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___pivotView] = 0;
  *&v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingContainer] = 0;
  *&v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingPortals] = 0;
  *&v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_minLensingDimension] = 0;
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088);
    v18 = sub_18A4A83B8();
    swift_bridgeObjectRelease_n();
    a1 = v18;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_18A4A8738();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088);
    if (swift_dynamicCastMetatype() || (v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v17 = v8 + 32;
      while (1)
      {
        v21 = &unk_1EFE40210;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        v17 += 8;
        if (!--v16)
        {
          goto LABEL_3;
        }
      }

      a1 = v8 | 1;
    }
  }

  *&v2[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_currentMorphables] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for _UILiquidMorphAnimation();
  v9 = objc_msgSendSuper2(&v20, sel_init);
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1891CF2BC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_188A4B574;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_143;
  v13 = _Block_copy(aBlock);
  v14 = v9;

  [v10 performWithoutAnimation_];

  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_188D7301C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188D73128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188D73214(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_18A4A7F68();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_18A4A7F68();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = swift_unknownObjectRetain();
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_188D73340()
{
  v0 = sub_18A4A4378();
  __swift_allocate_value_buffer(v0, qword_1EA994EE0);
  __swift_project_value_buffer(v0, qword_1EA994EE0);
  return sub_18A4A4368();
}

char *sub_188D733EC(void *a1)
{
  v3 = objc_allocWithZone(v1);
  [a1 frame];
  v4 = [v3 initWithFrame_];
  v5 = [v4 layer];
  [v5 setAllowsGroupOpacity_];

  v6 = [v4 layer];
  [v6 setHitTestsAsOpaque_];

  v7 = OBJC_IVAR____TtC5UIKit18_UIReparentingView_portal;
  [*&v4[OBJC_IVAR____TtC5UIKit18_UIReparentingView_portal] setSourceView_];
  v8 = *&v4[v7];
  v9 = sub_18A4A7258();
  [v8 setName_];

  [*&v4[v7] setHidesSourceView_];
  [*&v4[v7] setMatchesPosition_];
  [*&v4[v7] setMatchesTransform_];
  [*&v4[v7] setAllowsHitTesting_];
  [*&v4[v7] setForwardsClientHitTestingToSourceView_];
  v10 = [*&v4[v7] layer];
  [v10 setHitTestsAsOpaque_];

  v11 = *&v4[v7];
  v12 = v4;
  [v12 addSubview_];
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v1;
  v18[4] = sub_188D7AA08;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_188A4A8F0;
  v18[3] = &block_descriptor_137;
  v16 = _Block_copy(v18);

  [v13 _performWithoutRetargetingAnimations_];
  _Block_release(v16);

  return v12;
}

uint64_t sub_188D736B8()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188D736F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_188D73728()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_18A64BFB0;
    v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    *(v3 + 56) = sub_188A34624(0, &qword_1ED48EE50);
    *(v3 + 32) = v4;
    v5 = sub_18A4A7518();

    [v2 setFilters_];

    v6 = [v1 layer];
    sub_188A34624(0, &qword_1ED48FD80);
    v7 = sub_18A4A7C48();

    v8 = sub_18A4A7258();

    [v6 setValue:v7 forKeyPath:v8];
  }
}

uint64_t sub_188D738F8(uint64_t result)
{
  v2 = OBJC_IVAR____UIMagicMorphView_crossBlurWhenMorphing;
  v3 = *(v1 + OBJC_IVAR____UIMagicMorphView_crossBlurWhenMorphing);
  *(v1 + OBJC_IVAR____UIMagicMorphView_crossBlurWhenMorphing) = result;
  if (v3 != (result & 1))
  {
    v4 = OBJC_IVAR____UIMagicMorphView_destinations;
    result = swift_beginAccess();
    v5 = *(v1 + v4);
    if (v5 >> 62)
    {
      result = sub_18A4A7F68();
      v6 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        return result;
      }
    }

    if (v6 < 1)
    {
      __break(1u);
    }

    else
    {
      v7 = v5 & 0xC000000000000001;
      v23 = *MEMORY[0x1E6979928];

      v8 = 0;
      v22 = xmmword_18A64BFB0;
      v24 = v1;
      do
      {
        if (v7)
        {
          v19 = sub_188E494B4(v8, v5);
        }

        else
        {
          v19 = *(v5 + 8 * v8 + 32);
        }

        v18 = v19;
        v20 = *(v1 + v2);
        v21 = [*&v19[OBJC_IVAR____UIMagicMorphDestination_transformView] layer];
        v17 = v21;
        if (v20)
        {
          v9 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
          v10 = v5;
          v11 = v6;
          v12 = v2;
          v13 = v7;
          v14 = swift_allocObject();
          *(v14 + 16) = v22;
          *(v14 + 56) = sub_188A34624(0, &qword_1ED48EE50);
          *(v14 + 32) = v9;
          v15 = v9;
          v16 = sub_18A4A7518();
          v7 = v13;
          v2 = v12;
          v6 = v11;
          v5 = v10;
          v1 = v24;

          [v17 setFilters_];

          v17 = v15;
          v18 = v16;
        }

        else
        {
          [v21 setFilters_];
        }

        ++v8;
      }

      while (v6 != v8);
    }
  }

  return result;
}

uint64_t sub_188D73B5C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v6;
  v15 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_188D73F30;
  *(v8 + 24) = v5;
  v20 = sub_188E3FE50;
  v21 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_188A4A968;
  v19 = &block_descriptor_218_0;
  v9 = _Block_copy(&aBlock);

  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = 0;
  *(v10 + 32) = sub_188A4B55C;
  *(v10 + 40) = 0;
  v20 = sub_188A4A934;
  v21 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_188A4A8F0;
  v19 = &block_descriptor_224;
  v11 = _Block_copy(&aBlock);

  v20 = sub_188ABBADC;
  v21 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_188ABD010;
  v19 = &block_descriptor_227;
  v12 = _Block_copy(&aBlock);

  [v15 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];

  _Block_release(v12);
  _Block_release(v11);
  _Block_release(v9);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    result = swift_beginAccess();
    if (*(v4 + 16))
    {
      v14 = *(v4 + 16);

      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188D73EE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void _UIGetTransformBetweenViews(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = [v7 layer];
  v10 = [v9 presentationLayer];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v7 layer];
  }

  v13 = v12;

  v14 = [v8 layer];
  v15 = [v14 presentationLayer];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [v8 layer];
  }

  v18 = v17;

  v19 = *(MEMORY[0x1E69792E8] + 80);
  *&v28.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v28.m33 = v19;
  v20 = *(MEMORY[0x1E69792E8] + 112);
  *&v28.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v28.m43 = v20;
  v21 = *(MEMORY[0x1E69792E8] + 16);
  *&v28.m11 = *MEMORY[0x1E69792E8];
  *&v28.m13 = v21;
  v22 = *(MEMORY[0x1E69792E8] + 48);
  *&v28.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v28.m23 = v22;
  CALayerMapGeometry();
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v27 = v28;
  CATransform3DGetAffineTransform(a4, &v27);
  if (a3)
  {
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
  }

  v23 = [v7 _isRenderedHorizontallyFlipped];
  if (v23 != [v8 _isRenderedHorizontallyFlipped])
  {
    v24 = *(a4 + 16);
    *&v26.a = *a4;
    *&v26.c = v24;
    *&v26.tx = *(a4 + 32);
    CGAffineTransformScale(&v27, &v26, -1.0, 1.0);
    v25 = *&v27.m13;
    *a4 = *&v27.m11;
    *(a4 + 16) = v25;
  }
}

uint64_t sub_188D741A4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_18A4A7F68();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_188E49F3C(0, a1);
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v2)
    {
LABEL_6:
      result = *(v6 + 16);
      goto LABEL_11;
    }
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v5 = *(a1 + 32);
    swift_unknownObjectRetain();
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  result = sub_18A4A7F68();
LABEL_11:
  v7 = result - 1;
  if (result < 1)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (result == 1)
  {
    return v5;
  }

  if (v4 || (v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10), v8 >= 2) && result <= v8)
  {
    swift_unknownObjectRetain();
    v9 = 5;
    do
    {
      if (v4)
      {
        v10 = sub_188E49F3C(v9 - 4, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v9);
        swift_unknownObjectRetain();
      }

      v11 = [v10 _morphView];
      v12 = [v5 _morphView];
      v13 = [(UIView *)v11 _viewOrderRelativeToView:v12 requireIntersection:0];

      if (v13 == -2)
      {
        v5 = v10;
      }

      swift_unknownObjectRelease();
      ++v9;
      --v7;
    }

    while (v7);
    swift_unknownObjectRelease();
    return v5;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_188D74350()
{
  v1 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___traitObserver;
  if (*(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___traitObserver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___traitObserver);
  }

  else
  {
    type metadata accessor for _UIMorphTraitObserver();
    swift_allocObject();
    v2 = sub_188D62FD0();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_188D743E4(char a1, uint64_t a2)
{
  v3 = objc_msgSendSuper2(&v31, sel__morphPreviewFromCurrentState_fallbackBackgroundColor_contentScale_, a1 & 1, a2);
  v4 = [v2 _destinationPreview];
  if (v4)
  {
    v5 = v4;
    [v3 _setPreviewMode_];
    v6 = [v5 parameters];
    v7 = [v6 effectiveShadowPath];

    if (v7 && ([v7 copy], v7, sub_18A4A7DE8(), swift_unknownObjectRelease(), sub_188A34624(0, &qword_1EA92E890), (swift_dynamicCast() & 1) != 0))
    {
      v8 = [v2 morphView];
      [v8 transform];
      v26 = *&t1.a;
      v27 = *&t1.c;
      tx = t1.tx;
      ty = t1.ty;

      v11 = *&t2.a;
      v12 = [v5 parameters];
      v13 = [v12 visiblePath];

      if (v13 && (v14 = v11, v15 = sub_18A4A7C88(), v13, v14, (v15 & 1) != 0))
      {
        [v14 bounds];
        x = v32.origin.x;
        y = v32.origin.y;
        width = v32.size.width;
        height = v32.size.height;
        v20 = -CGRectGetMinX(v32);
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        MinY = CGRectGetMinY(v33);
        CGAffineTransformMakeTranslation(&t1, v20, -MinY);
        *&t2.a = v26;
        *&t2.c = v27;
        t2.tx = tx;
        t2.ty = ty;
        CGAffineTransformConcat(&v28, &t1, &t2);
        v23 = *&v28.a;
        v22 = *&v28.c;
        tx = v28.tx;
        ty = v28.ty;
      }

      else
      {
        v23 = *&t1.a;
        v22 = *&t1.c;
      }

      *&t1.a = v23;
      *&t1.c = v22;
      t1.tx = tx;
      t1.ty = ty;
      [v11 applyTransform_];
      v24 = [v3 parameters];
      [v24 setShadowPath_];
    }

    else
    {
    }
  }

  return v3;
}

uint64_t sub_188D7470C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v7[4] = sub_188A4B574;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_188A4A968;
  v7[3] = &block_descriptor_60;
  v5 = _Block_copy(v7);

  UIMM_HFR_0(v5);
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_188D74834(uint64_t a1)
{
  result = sub_188D7B8DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188D7485C(uint64_t a1)
{
  result = sub_188D74884();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188D74884()
{
  result = qword_1EA931100;
  if (!qword_1EA931100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931100);
  }

  return result;
}

unint64_t sub_188D748E0()
{
  result = qword_1EA9310F8;
  if (!qword_1EA9310F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9310F8);
  }

  return result;
}

double sub_188D74934@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_188A55598(a1, v8);
  sub_188A921E4();
  swift_dynamicCast();
  [v7 CACornerRadiiValue];

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v4 = v10;
  *a2 = v9;
  a2[1] = v4;
  result = *&v11;
  v6 = v12;
  a2[2] = v11;
  a2[3] = v6;
  return result;
}

uint64_t sub_188D749E4(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_188D74A54(char a1)
{
  if ([v1 _hasVisibleBackground])
  {
    v3 = [v1 uiController];
    v10 = [v3 backgroundEffectView];

    v4 = 0.0;
    if (a1)
    {
      v5 = [v1 presentedLayout];
      v6 = [v5 type];

      v7 = [v1 uiController];
      v8 = [v7 menuStyle];

      v9 = [v8 preferredBackgroundColor];
      if (v6 != 3 && !v9)
      {
        v9 = _UIClickPresentationBackgroundColor(1);
      }

      [v10 setBackgroundColor_];

      v4 = 1.0;
    }

    [v10 setAlpha_];
  }
}

BOOL sub_188D74C04()
{
  v1 = [v0 uiController];
  v2 = [v1 menuStyle];

  v3 = [v2 preferredBackgroundEffects];
  if (v3 && ((v4 = v3, sub_188A34624(0, &unk_1EA931120), v5 = sub_18A4A7548(), v4, v5 >> 62) ? (v6 = sub_18A4A7F68()) : (v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v6 >= 1))
  {

    return 1;
  }

  else
  {
    v8 = [v2 preferredBackgroundColor];
    if (v8)
    {
      v9 = v8;

      return 1;
    }

    else
    {
      v10 = [v0 presentedLayout];
      v11 = [v10 type];

      return v11 != 3;
    }
  }
}

void sub_188D74EC4(void *a1, double *a2, void *a3, void *a4, void *a5, void *a6)
{
  [a1 center];
  v13 = v12;
  v15 = v14;
  swift_beginAccess();
  if (v13 != *a2 || v15 != a2[1])
  {
    sub_18923B9EC(v39);
    v35 = v39[0];
    v36 = v39[1];
    v37 = v39[2];
    *v38 = v40;
    v17 = v41;
    *&v38[25] = v43;
    *&v38[41] = v44;
    *&v38[57] = v45[0];
    *&v38[66] = *(v45 + 9);
    *&v38[9] = v42;
    v38[8] = v41;
    if (sub_188F36334(&v35) == 1 || (v17 & 1) != 0)
    {
      swift_beginAccess();
      [a1 setCenter_];
    }
  }

  [a4 transform];
  v18 = [a3 target];
  [v18 _contentScale];

  *m = *&m[17];
  _UICATransform3DCombiningScale(&v35);
  [a5 frame];
  if (CGRectIsEmpty(v46) || !a6)
  {
    *&m[8] = *&v38[16];
    *&m[10] = *&v38[32];
    *&m[12] = *&v38[48];
    *&m[14] = *&v38[64];
    *m = v35;
    *&m[2] = v36;
    *&m[4] = v37;
    *&m[6] = *v38;
  }

  else
  {
    v19 = a6;
    v20 = [a3 target];
    v21 = [v20 container];

    _UIGetTransformBetweenViews(v21, v19, 1, m);
    CATransform3DMakeAffineTransform(&b, m);
    *&a.m31 = *&v38[16];
    *&a.m33 = *&v38[32];
    *&a.m41 = *&v38[48];
    *&a.m43 = *&v38[64];
    *&a.m11 = v35;
    *&a.m13 = v36;
    *&a.m21 = v37;
    *&a.m23 = *v38;
    CATransform3DConcat(m, &a, &b);
  }

  v22 = [a1 layer];
  [v22 transform];

  b = a;
  v31 = *m;
  if (!CATransform3DEqualToTransform(&b, &v31))
  {
    b = *m;
    [a1 setTransform3D_];
  }

  [a3 _sizeRespectingOverridesUsingPresentationLayer_];
  v24 = v23;
  v26 = v25;
  [a1 bounds];
  v48.origin.x = v27;
  v48.origin.y = v28;
  v48.size.width = v29;
  v48.size.height = v30;
  v47.origin.x = 0.0;
  v47.origin.y = 0.0;
  v47.size.width = v24;
  v47.size.height = v26;
  if (!CGRectEqualToRect(v47, v48))
  {
    [a1 setBounds_];
    *(a1 + OBJC_IVAR____UIMagicMorphView_contentSizeDidChange) = 1;
    [a1 setNeedsLayout];
    if ([objc_opt_self() _isInAnimationBlock])
    {
      [a1 layoutIfNeeded];
    }

    sub_1890E07A8();
  }
}

uint64_t _UICATransform3DCombiningScale@<X0>(_OWORD *a1@<X8>)
{
  CATransform3DGetDecomposition_();
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  return CATransform3DSetDecomposition_();
}

__n128 sub_188D753E4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 80);
  v5 = *(v1 + 24) & 1;
  v6 = *(v1 + 40) & 1 | 0x8000000000000000;
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v5;
  *(a1 + 32) = v3;
  *(a1 + 40) = v6;
  result = *(v1 + 48);
  v8 = *(v1 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v8;
  *(a1 + 80) = v4;
  *(a1 + 88) = 0;
  return result;
}

unint64_t sub_188D75420()
{
  result = qword_1EA930F00;
  if (!qword_1EA930F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930F00);
  }

  return result;
}

uint64_t sub_188D75474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_188AA72A8(a1, v57);
  if (!v59)
  {
    v61 = v57[2];
    v62 = v57[3];
    v63 = v57[4];
    v64 = v58;
    v60[0] = v57[0];
    v60[1] = v57[1];
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    *&v49 = 0;
    v48 = 0uLL;
    BYTE8(v49) = 0;
    *&v51 = 0;
    v50 = 0uLL;
    BYTE8(v51) = 0;
    *&v53 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    DWORD2(v53) = 0;
    *&v54 = 0x3FF0000000000000;
    *(&v54 + 1) = a4;
    *(&v55 + 1) = a2;
    *&v55 = MEMORY[0x1E69E7CC0];
    *(&v56 + 1) = MEMORY[0x1E69E7CC0];
    *&v56 = a2;
    swift_bridgeObjectRetain_n();

    sub_188AA79A0(v60, 1);
    if (a3)
    {

      *&v55 = a3;
    }

    if ((*(&v61 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v15 = v64;
    v16 = *v60;
    if (*(&v63 + 1) > 0.0)
    {
      sub_188F0AC68(&v56, *(v5 + 32), *(&v63 + 1));
    }

    if (v15 <= 0.0)
    {
      goto LABEL_27;
    }

    sub_188D7EBC0(a4, a2);
    v18 = v17;
    v19 = *(v17 + 16);
    if (!v19)
    {
      v20 = v17;
LABEL_26:
      sub_188D85564(v55, v20);
      v30 = v29;

      *&v55 = v30;
LABEL_27:
      v31 = v54;
      v43[8] = v53;
      v43[9] = v54;
      v32 = v55;
      v33 = v56;
      v43[10] = v55;
      v43[11] = v56;
      v34 = v49;
      v35 = v50;
      v43[4] = v49;
      v43[5] = v50;
      v36 = v51;
      v37 = v52;
      v43[6] = v51;
      v43[7] = v52;
      v38 = v45;
      v39 = v46;
      v43[0] = v45;
      v43[1] = v46;
      v40 = v47;
      v41 = v48;
      v43[2] = v47;
      v43[3] = v48;
      *(a5 + 128) = v53;
      *(a5 + 144) = v31;
      *(a5 + 160) = v32;
      *(a5 + 176) = v33;
      *(a5 + 64) = v34;
      *(a5 + 80) = v35;
      *(a5 + 96) = v36;
      *(a5 + 112) = v37;
      *a5 = v38;
      *(a5 + 16) = v39;
      *(a5 + 32) = v40;
      *(a5 + 48) = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F8);
      swift_storeEnumTagMultiPayload();
      v44[8] = v53;
      v44[9] = v54;
      v44[10] = v55;
      v44[11] = v56;
      v44[4] = v49;
      v44[5] = v50;
      v44[6] = v51;
      v44[7] = v52;
      v44[0] = v45;
      v44[1] = v46;
      v44[2] = v47;
      v44[3] = v48;
      sub_188A3F29C(v43, &v42, &qword_1EA936820);
      return sub_188A3F5FC(v44, &qword_1EA936820);
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v20 = v18;
    if ((result & 1) == 0)
    {
      result = sub_188D75E50(v18);
      v20 = result;
    }

    if (v19 > *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v21 = 6.28318531 / v16 * (6.28318531 / v16) * v15;
    if (v19 > 3)
    {
      v22 = v19 & 0x7FFFFFFFFFFFFFFCLL;
      v24 = (v20 + 48);
      v25 = v19 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v26 = vmulq_n_f64(*v24, v21);
        v24[-1] = vmulq_n_f64(v24[-1], v21);
        *v24 = v26;
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v19 == v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v22 = 0;
    }

    v27 = v19 - v22;
    v28 = (v20 + 8 * v22 + 32);
    do
    {
      *v28 = v21 * *v28;
      ++v28;
      --v27;
    }

    while (v27);
LABEL_25:

    goto LABEL_26;
  }

  if (v59 == 2)
  {
    v10 = *&v57[0];
    v11 = BYTE8(v57[0]);
    *a5 = 0;
    *(a5 + 40) = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F0);
    sub_188C84EF8();

    sub_18A4A49B8();
    v13 = *(v12 + 64);
    *(a5 + 8) = v10;
    *(a5 + 16) = a2;
    *(a5 + 24) = a2;
    *(a5 + 32) = a4;
    *(a5 + v13) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F8);
    swift_storeEnumTagMultiPayload();
    return swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_188AA7808(v57);
    v23 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      v23 = a3;
    }

    *a5 = a4;
    *(a5 + 8) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F8);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_188D758A4(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  sub_188A3F704(v2, &v29 - v8, &qword_1EA9365F8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v9, v6, &qword_1EA9365F0);
      v17 = sub_188EF2A70(a1);
      sub_188A3F704(v6, v2, &qword_1EA9365F0);
      swift_storeEnumTagMultiPayload();
      return v17;
    }

    v29 = *v9;
    *v2 = v29;
    swift_storeEnumTagMultiPayload();
    v17 = v29;
LABEL_8:

    return v17;
  }

  if (EnumCaseMultiPayload)
  {
    v24 = *(v9 + 2);
    v25 = *(v9 + 5);
    v42 = *v9;
    v44 = *(v9 + 24);
    v43 = v24;
    v45 = v25;
    v17 = sub_188F0D0A0(a1);
    v26 = v43;
    v27 = v45;
    *v2 = v42;
    *(v2 + 16) = v26;
    *(v2 + 24) = v44;
    *(v2 + 40) = v27;
    swift_storeEnumTagMultiPayload();
    goto LABEL_8;
  }

  v11 = *(v9 + 9);
  v38 = *(v9 + 8);
  v39 = v11;
  v12 = *(v9 + 11);
  v40 = *(v9 + 10);
  v41 = v12;
  v13 = *(v9 + 5);
  v34 = *(v9 + 4);
  v35 = v13;
  v14 = *(v9 + 7);
  v36 = *(v9 + 6);
  v37 = v14;
  v15 = *(v9 + 1);
  v30 = *v9;
  v31 = v15;
  v16 = *(v9 + 3);
  v32 = *(v9 + 2);
  v33 = v16;
  v17 = sub_188D7C028(a1);
  v18 = v39;
  *(v2 + 128) = v38;
  *(v2 + 144) = v18;
  v19 = v41;
  *(v2 + 160) = v40;
  *(v2 + 176) = v19;
  v20 = v35;
  *(v2 + 64) = v34;
  *(v2 + 80) = v20;
  v21 = v37;
  *(v2 + 96) = v36;
  *(v2 + 112) = v21;
  v22 = v31;
  *v2 = v30;
  *(v2 + 16) = v22;
  v23 = v33;
  *(v2 + 32) = v32;
  *(v2 + 48) = v23;
  swift_storeEnumTagMultiPayload();
  return v17;
}

uint64_t sub_188D75B7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v23 - v2 + 16;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8 + 16;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA9365F8);
  sub_188A3F29C(v9, v6, &qword_1EA9365F8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v9, &qword_1EA9365F8);
      sub_188A3F704(v6, v3, &qword_1EA9365F0);
      v20 = v3[40];
      sub_188A3F5FC(v3, &qword_1EA9365F0);
    }

    else
    {
      sub_188A3F5FC(v9, &qword_1EA9365F8);

      v20 = 1;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v20 = sub_188BD69E4(*(v6 + 2), *(v6 + 5), 0.001);
    sub_188A3F5FC(v9, &qword_1EA9365F8);
  }

  else
  {
    v12 = *(v6 + 8);
    v13 = *(v6 + 10);
    v14 = *(v6 + 11);
    v23[9] = *(v6 + 9);
    v23[10] = v13;
    v23[11] = v14;
    v15 = *(v6 + 5);
    v23[4] = *(v6 + 4);
    v23[5] = v15;
    v16 = *(v6 + 7);
    v23[6] = *(v6 + 6);
    v23[7] = v16;
    v23[8] = v12;
    v17 = *(v6 + 1);
    v23[0] = *v6;
    v18 = *(v6 + 2);
    v19 = *(v6 + 3);
    v23[1] = v17;
    v23[2] = v18;
    v23[3] = v19;
    v20 = sub_188D853FC();
    sub_188A3F5FC(v23, &qword_1EA936820);
    sub_188A3F5FC(v9, &qword_1EA9365F8);
  }

  return v20 & 1;
}

uint64_t sub_188D75E64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - v5;
  v7 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v7, v6, &qword_1EA9365F8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v6, v3, &qword_1EA9365F0);
      v15 = sub_188EF5584();
      sub_188A3F5FC(v3, &qword_1EA9365F0);
    }

    else
    {
      v15 = *(v6 + 1);
    }
  }

  else if (EnumCaseMultiPayload)
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v9 = *(v6 + 9);
    v17[8] = *(v6 + 8);
    v17[9] = v9;
    v10 = *(v6 + 11);
    v18 = *(v6 + 10);
    v19 = v10;
    v11 = *(v6 + 5);
    v17[4] = *(v6 + 4);
    v17[5] = v11;
    v12 = *(v6 + 7);
    v17[6] = *(v6 + 6);
    v17[7] = v12;
    v13 = *(v6 + 1);
    v17[0] = *v6;
    v17[1] = v13;
    v14 = *(v6 + 3);
    v17[2] = *(v6 + 2);
    v17[3] = v14;
    v15 = v18;

    sub_188A3F5FC(v17, &qword_1EA936820);
  }

  swift_endAccess();
  return v15;
}

unint64_t sub_188D7609C()
{
  result = qword_1ED490560;
  if (!qword_1ED490560)
  {
    sub_18A4A6E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED490560);
  }

  return result;
}

uint64_t sub_188D76410()
{
  swift_unknownObjectRelease();

  MEMORY[0x18CFEA6E0](v0 + 40);

  return swift_deallocClassInstance();
}

id sub_188D76558(void *a1)
{
  v2 = v1;
  result = [v1 view];
  if (result)
  {
    v5 = result;
    v6 = [result _flexInteractionGestureView];

    if (v6)
    {
      v7 = [v6 _window];
      if (v7)
      {
        v8 = v7;
        v9 = [v2 delegate];
        if (v9)
        {
          v10 = v9;
          [a1 locationInView_];
          v11 = [v10 flexInteraction:v2 shouldBeginAtPoint:?];

          swift_unknownObjectRelease();
          return v11;
        }

        [a1 locationInView_];
        v12 = [v8 hitTest:0 withEvent:?];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 isDescendantOfView_];

          return v14;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

void sub_188D768F0(double a1, double a2)
{
  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 glowContainer];
    [v6 bounds];
    [v7 setFrame_];

    v8 = [v2 glowContainer];
    v9 = [v8 layer];

    v10 = [v6 layer];
    [v10 cornerRadius];
    v12 = v11;

    [v9 setCornerRadius_];
    v13 = [v2 glowContainer];
    v14 = [v13 layer];

    v15 = [v6 layer];
    [v15 cornerRadii];
    v36 = v39;
    v37 = aBlock;
    v34 = v41;
    v35 = v40;

    aBlock = v37;
    v39 = v36;
    v40 = v35;
    v41 = v34;
    [v14 setCornerRadii_];

    v16 = [v2 glowContainer];
    v17 = [v16 layer];

    v18 = [v6 layer];
    v19 = [v18 cornerCurve];

    [v17 setCornerCurve_];
    v20 = objc_opt_self();
    v21 = swift_allocObject();
    *(v21 + 16) = v6;
    *(v21 + 24) = v2;
    *(v21 + 32) = a1;
    *(v21 + 40) = a2;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_188D85824;
    *(v22 + 24) = v21;
    *&v40 = sub_188A4B574;
    *(&v40 + 1) = v22;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v39 = sub_188A4A968;
    *(&v39 + 1) = &block_descriptor_72_1;
    v23 = _Block_copy(&aBlock);
    v24 = v2;

    v25 = v6;

    [v20 performWithoutAnimation_];
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v27 = sub_188EA6D8C();
      v28 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.1];
      v29 = [v24 glowContainer];
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = v27;
      *&v40 = sub_188D85848;
      *(&v40 + 1) = v30;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v39 = sub_188A4A8F0;
      *(&v39 + 1) = &block_descriptor_78_0;
      v31 = _Block_copy(&aBlock);
      v32 = v27;

      *&v40 = signpost_c2_entryLock_start;
      *(&v40 + 1) = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v39 = sub_188C3DD6C;
      *(&v39 + 1) = &block_descriptor_81;
      v33 = _Block_copy(&aBlock);
      [v20 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v33);
      _Block_release(v31);
    }
  }
}

uint64_t sub_188D76DDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188D76E1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_188D76F28(char a1, double a2, double a3)
{
  if (a1)
  {
    v6 = sub_188EA6D8C();
    v7 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.5];
    v8 = objc_opt_self();
    v9 = [v3 glowContainer];
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v6;
    v24 = sub_188D772D4;
    v25 = v10;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_188A4A8F0;
    v23 = &block_descriptor_27;
    v11 = _Block_copy(&v20);
    v12 = v6;

    v24 = signpost_c2_entryLock_start;
    v25 = 0;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_188C3DD6C;
    v23 = &block_descriptor_30;
    v13 = _Block_copy(&v20);
    [v8 &selRef:v7 :{0, v11, v13}allowsInteractiveDismissWhenFullScreen + 6];
    _Block_release(v13);
    _Block_release(v11);
  }

  v14 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.15];
  v15 = objc_opt_self();
  v16 = [v3 glowContainer];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  v24 = sub_188D7FFB8;
  v25 = v17;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_188A4A8F0;
  v23 = &block_descriptor_13;
  v18 = _Block_copy(&v20);

  v24 = signpost_c2_entryLock_start;
  v25 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_188C3DD6C;
  v23 = &block_descriptor_21_0;
  v19 = _Block_copy(&v20);
  [v15 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v19);
  _Block_release(v18);
}

uint64_t sub_188D77274()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188D77508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA9365F8);
  sub_188A3F704(v9, v6, &qword_1EA9365F8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v6, v3, &qword_1EA9365F0);
      v18 = *(v3 + 4);

      sub_188A3F5FC(v3, &qword_1EA9365F0);
      return v18;
    }

    v18 = *v6;
LABEL_8:

    return v18;
  }

  if (EnumCaseMultiPayload)
  {
    v18 = *(v6 + 5);

    goto LABEL_8;
  }

  v12 = *(v6 + 9);
  v20[8] = *(v6 + 8);
  v21 = v12;
  v13 = *(v6 + 11);
  v22 = *(v6 + 10);
  v23 = v13;
  v14 = *(v6 + 5);
  v20[4] = *(v6 + 4);
  v20[5] = v14;
  v15 = *(v6 + 7);
  v20[6] = *(v6 + 6);
  v20[7] = v15;
  v16 = *(v6 + 1);
  v20[0] = *v6;
  v20[1] = v16;
  v17 = *(v6 + 3);
  v20[2] = *(v6 + 2);
  v20[3] = v17;
  v18 = *(&v21 + 1);

  sub_188A3F5FC(v20, &qword_1EA936820);
  return v18;
}

char *sub_188D77F98()
{
  v1 = OBJC_IVAR____UIContextMenuModifierKeyService_observations;
  *&v0[v1] = sub_188D80D24(MEMORY[0x1E69E7CC0]);
  v2 = [objc_allocWithZone(_UIKeyboardEventModifierListener) init];
  *&v0[OBJC_IVAR____UIContextMenuModifierKeyService_modifierKeyListener] = v2;
  v8.receiver = v0;
  v8.super_class = _UIContextMenuModifierKeyService;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = *&v3[OBJC_IVAR____UIContextMenuModifierKeyService_modifierKeyListener];
  v5 = v3;
  [v4 setDelegate_];
  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v5 selector:sel_applicationWillResignActiveWithNotification_ name:@"UIApplicationWillResignActiveNotification" object:UIApp];

  return v5;
}

unint64_t sub_188D7809C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_188A403F4(a1);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA3E00();
      v10 = v11;
    }

    sub_188E904EC(*(v10 + 56) + 8 * v8, a2);
    result = sub_188F9DDC8(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
  return result;
}

void sub_188D78198(unsigned __int8 a1)
{
  v3 = a1 & 1;
  v4 = [v1 morphView];
  v5 = OBJC_IVAR____UIMagicMorphView_wantsEdgeAntialiasing;
  v6 = v4[OBJC_IVAR____UIMagicMorphView_wantsEdgeAntialiasing];
  v4[OBJC_IVAR____UIMagicMorphView_wantsEdgeAntialiasing] = a1;
  if (v6 == v3)
  {

    goto LABEL_12;
  }

  v15 = v4;
  v7 = [*&v4[OBJC_IVAR____UIMagicMorphView_clippingView] layer];
  [v7 setAllowsEdgeAntialiasing_];

  v8 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v4 = v15;
  v9 = *&v15[v8];
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  v10 = sub_18A4A7F68();
  v4 = v15;
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v10 >= 1)
  {

    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_188E494B4(v11, v9);
      }

      else
      {
        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      v14 = [*&v12[OBJC_IVAR____UIMagicMorphDestination_transformView] layer];
      [v14 setAllowsEdgeAntialiasing_];
    }

    while (v10 != v11);

    v4 = v15;
    goto LABEL_12;
  }

  __break(1u);
}

void sub_188D78398(void *a1)
{
  v3 = [v1 resolvedSourcePreview];
  v4 = [v1 isDismissTransition];
  v5 = [v1 uiController];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 currentLayout];

    [v1 setPresentedLayout_];
    v8 = [v1 uiController];
    v9 = [v8 platterTransitionView];

    v10 = [v1 contentPlatterView];
    if (v10)
    {
      v11 = v10;
      [v10 freezeExpandedPreview];
      [v9 bringSubviewToFront_];
    }

    goto LABEL_43;
  }

  v73 = a1;
  v12 = [v5 platterContainerView];

  v13 = [v1 uiController];
  v14 = [v13 backgroundEffectView];

  v15 = v14;
  [v15 setAutoresizingMask_];
  [v12 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v1 uiController];
  v25 = [v24 menuStyle];

  [v25 preferredBackgroundInsets];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  [v15 setFrame_];
  v34 = _UIClickPresentationBackgroundColor(1);
  [v15 setBackgroundColor_];

  [v15 setAlpha_];
  v74 = v15;
  [v12 addSubview_];
  v35 = [v1 uiController];
  v36 = [v35 platterTransitionView];

  [v12 bounds];
  [v36 setFrame_];
  [v36 setAutoresizingMask_];
  [v12 addSubview_];
  v37 = [v1 contentPlatterView];
  v38 = [v1 uiController];
  v39 = [v38 menuView];

  v40 = [v1 outgoingAnimationPreview];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 view];
    v43 = [v3 view];

    if (v42 != v43)
    {
      [v1 setMorphAnimation_];
    }
  }

  [v1 setOutgoingAnimationPreview_];
  if (v37)
  {
    v44 = v37;
    [v36 addSubview_];
    [v3 _transferAnimationsToView_];
    v45 = [v3 parameters];
    [v45 copy];

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92FB88);
    if (swift_dynamicCast())
    {
      v46 = v75;
      v47 = v73;
      if ([v44 alwaysCompact])
      {
        goto LABEL_19;
      }
    }

    else
    {
      v47 = v73;
    }

    v46 = [objc_allocWithZone(UIPreviewParameters) init];
    v48 = [v47 backgroundColor];
    if (!v48)
    {
      v48 = [objc_opt_self() clearColor];
    }

    [v46 setBackgroundColor_];

LABEL_19:
    [v44 setCollapsedPreview_];
    v49 = v44;
    if (([v44 alwaysCompact] & 1) == 0)
    {
      v49 = [objc_allocWithZone(UITargetedPreview) initWithView:v47 parameters:v46];
      [v44 setExpandedPreview_];
    }

    if (v39)
    {
      v50 = v44;
      v51 = v39;
      v52 = [v1 uiController];
      v53 = [v52 menuStyle];

      LODWORD(v52) = [v53 previewOverlapsMenu];
      if (v52)
      {
        [v36 insertSubview:v51 belowSubview:v50];
      }

      else
      {
        [v36 insertSubview:v51 aboveSubview:v50];
      }

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (v39)
  {
    [v36 addSubview_];
LABEL_27:
    v54 = 0;
    goto LABEL_28;
  }

LABEL_24:
  v54 = 1;
LABEL_28:
  v55 = [v1 uiController];
  v56 = [v55 currentLayout];

  [v1 setPresentedLayout_];
  if (v37)
  {
    v57 = v37;
    v58 = [v1 presentedLayout];
    [v58 preview];

    v79 = v87;
    v80 = v88;
    v81 = v89;
    v82 = v90;
    v75 = v83;
    v76 = v84;
    v77 = v85;
    v78 = v86;
    _UIContextMenuItemLayoutApply(&v75, v57, 0);
    [v57 layoutIfNeeded];
    [v57 setExpanded_];
  }

  if ((v54 & 1) == 0)
  {
    v59 = v39;
    v60 = [v1 presentedLayout];
    [v60 menu];

    v79 = v87;
    v80 = v88;
    v81 = v89;
    v82 = v90;
    v75 = v83;
    v76 = v84;
    v77 = v85;
    v78 = v86;
    _UIContextMenuItemLayoutApply(&v75, v59, 0);
    [v59 layoutIfNeeded];
    v61 = [v1 presentedLayout];
    v62 = [v61 type];

    if (v62 != 3 || ([v59 scrollToFirstSignificantAction], v63 = objc_msgSend(v1, sel_uiController), v64 = objc_msgSend(v63, sel_menuStyle), v63, LODWORD(v63) = objc_msgSend(v64, sel_showsAccessoriesForCompactMenu), v64, v63))
    {
      [v1 _installAccessories];
    }
  }

  v65 = [v1 uiController];
  v66 = [v65 flocker];

  if (v66)
  {
    if (v37)
    {
      v67 = [objc_allocWithZone(UITargetedPreview) initWithView_];
      [v66 setPrimaryPlatterPreview_];

      v68 = [v1 uiController];
      v69 = [v68 menuConfiguration];

      v70 = [v69 secondarySourcePreviews];
      [v66 setSecondaryPlatterViews_];

      v71 = [v1 presentedLayout];
      v72 = [v71 type];

      if (v72 == 3)
      {
        [v66 setSettings_];
      }

      [v66 install];
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_43:
  [v1 _prepareAnimatablePropertyBasedAnimations];
}

void _UIContextMenuItemLayoutApply(double *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 anchorPoint];
  if (v8 != a1[7] || v7 != a1[8])
  {
    [v5 setAnchorPoint:?];
  }

  [v5 bounds];
  v10 = CGRectEqualToRect(v17, *a1);
  if (!v10)
  {
    [v5 setBounds:{*a1, a1[1], a1[2], a1[3]}];
  }

  [(UIView *)v5 _center3D];
  v11 = CAPoint3DEqualToPoint();
  if ((v11 & 1) == 0)
  {
    [(UIView *)v5 _setCenter3D:a1[5], a1[6]];
  }

  if (v5)
  {
    [v5 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v12 = *(a1 + 11);
  *&v15.a = *(a1 + 9);
  *&v15.c = v12;
  *&v15.tx = *(a1 + 13);
  if (!CGAffineTransformEqualToTransform(&t1, &v15))
  {
    v13 = *(a1 + 11);
    *&t1.a = *(a1 + 9);
    *&t1.c = v13;
    *&t1.tx = *(a1 + 13);
    [v5 setTransform:&t1];
  }

  [v5 alpha];
  if (vabdd_f64(v14, a1[15]) > 2.22044605e-16)
  {
    [v5 setAlpha:?];
  }

  if (v6)
  {
    v6[2](v6, !v10, v11 ^ 1u);
  }
}

uint64_t sub_188D79234(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_hidesSourceView] = 1;
  v4[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_matchesAlpha] = 0;
  v4[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_appliesMinificationFilter] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView] = 0;
  v4[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_didHostSourceView] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for _UIMagicMorphTransformView();
  v9 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_18922BDE8;
  *(v12 + 24) = v11;
  v16[4] = sub_188E3FE50;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_188A4A968;
  v16[3] = &block_descriptor_32_5;
  v13 = _Block_copy(v16);
  v14 = v9;

  [v10 performWithoutAnimation_];
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    [v14 setUserInteractionEnabled_];
    [v14 setAutoresizesSubviews_];

    return v14;
  }

  return result;
}

uint64_t sub_188D7946C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188D794BC(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v8 = *&v1[v7];
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }

LABEL_3:
    v10 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else if ((v8 & 0xC000000000000001) == 0)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(v8 + 8 * v10 + 32);
        goto LABEL_8;
      }

      __break(1u);
      return;
    }

    v11 = sub_188E494B4(v10, v8);

LABEL_8:
    v12 = &v1[OBJC_IVAR____UIMagicMorphView_overrideBounds];
    if (v1[OBJC_IVAR____UIMagicMorphView_overrideBounds + 32])
    {
      if ((*(a1 + 32) & 1) == 0)
      {
        [v1 bounds];
        goto LABEL_17;
      }

LABEL_30:

      return;
    }

    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    if (*(a1 + 32))
    {
      [v1 bounds];
    }

    else
    {
      v46.origin.x = v3;
      v46.origin.y = v4;
      v46.size.width = v5;
      v46.size.height = v6;
      if (CGRectEqualToRect(*v12, v46))
      {
        goto LABEL_30;
      }

      v21 = *(v12 + 32);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      [v1 bounds];
      if (v21)
      {
LABEL_17:
        if (v12[4])
        {
          [*&v11[OBJC_IVAR____UIMagicMorphDestination_preview] size];
          [v1 setBounds_];
          v24 = sub_188C84C30();
          v25 = *&v11[OBJC_IVAR____UIMagicMorphDestination_insets];
          v26 = *&v11[OBJC_IVAR____UIMagicMorphDestination_insets + 8];
          v27 = *&v11[OBJC_IVAR____UIMagicMorphDestination_insets + 16];
          v28 = *&v11[OBJC_IVAR____UIMagicMorphDestination_insets + 24];
LABEL_29:
          sub_188D70058(v25, v26, v27, v28);

          v11 = v24;
          goto LABEL_30;
        }

        v30 = v12[2];
        v29 = v12[3];
        v32 = *v12;
        v31 = v12[1];
        v34 = *&v11[OBJC_IVAR____UIMagicMorphDestination_insets];
        v33 = *&v11[OBJC_IVAR____UIMagicMorphDestination_insets + 8];
        v35 = *&v11[OBJC_IVAR____UIMagicMorphDestination_insets + 16];
        if (v34 <= 0.0)
        {
          v39 = 0.0;
          if (v35 <= 0.0)
          {
            v37 = 0.0;
            goto LABEL_28;
          }

          v36 = v35 + 0.0;
        }

        else
        {
          if (v35 <= 0.0)
          {
            v37 = 0.0;
            v38 = v34 <= 0.0;
            v36 = *&v11[OBJC_IVAR____UIMagicMorphDestination_insets];
          }

          else
          {
            v36 = v34 + v35;
            v37 = 0.0;
            v38 = v34 + v35 <= 0.0;
          }

          v39 = *&v11[OBJC_IVAR____UIMagicMorphDestination_insets];
          if (v38)
          {
            goto LABEL_28;
          }
        }

        v37 = v39 / v36;
LABEL_28:
        [*&v11[OBJC_IVAR____UIMagicMorphDestination_preview] size];
        v41 = v34 - v37 * (v40 - v29);
        v42 = v35 - (1.0 - v37) * (v40 - v29);
        [v1 setBounds_];
        v24 = sub_188C84C30();
        v25 = v41;
        v26 = v33;
        v27 = v42;
        v28 = v43;
        goto LABEL_29;
      }
    }

    v45.origin.x = v17;
    v45.origin.y = v18;
    v45.size.width = v19;
    v45.size.height = v20;
    v44.origin.x = v13;
    v44.origin.y = v14;
    v44.size.width = v15;
    v44.size.height = v16;
    if (CGRectEqualToRect(v44, v45))
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  v9 = sub_18A4A7F68();
  if (v9)
  {
    goto LABEL_3;
  }
}

void sub_188D797E4()
{
  v1 = [v0 window];
  if (v1)
  {

    v2 = v0[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_appliesMinificationFilter];
    v3 = [v0 layer];
    v4 = v3;
    if (v2 == 1)
    {
      [v3 setShouldRasterize_];

      v4 = [v0 layer];
      v5 = [v0 traitCollection];
      [v5 displayScale];
      v7 = v6;

      [v4 setRasterizationScale_];
      v8 = MEMORY[0x1E6979820];
    }

    else
    {
      [v3 setShouldRasterize_];
      v8 = MEMORY[0x1E6979C48];
    }

    v9 = [v0 layer];
    [v9 setMinificationFilter_];
  }
}

uint64_t _UICACornerRadiiMakeWithRadiusAndMask@<X0>(uint64_t result@<X0>, double *a2@<X8>, double a3@<D0>)
{
  if (result)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0.0;
  }

  if ((result & 2) != 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0.0;
  }

  if ((result & 4) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0.0;
  }

  *a2 = v5;
  a2[1] = v5;
  if ((result & 8) == 0)
  {
    a3 = 0.0;
  }

  a2[2] = a3;
  a2[3] = a3;
  a2[4] = v4;
  a2[5] = v4;
  a2[6] = v3;
  a2[7] = v3;
  return result;
}

void sub_188D79A58()
{
  v1 = [v0 layer];
  v2 = OBJC_IVAR____UIMagicMorphView_clippingView;
  [v1 setPunchoutShadow_];

  v3 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4 >> 62)
  {
    v5 = sub_18A4A7F68();
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_21:

    v7 = sub_188E494B4(v6, v4);

    goto LABEL_8;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v4 + 8 * v6 + 32);
LABEL_8:
    v8 = *&v7[OBJC_IVAR____UIMagicMorphDestination_shadowProperties];
    if (v8)
    {
      v9 = *&v7[OBJC_IVAR____UIMagicMorphDestination_shadowPath];
      v10 = v8;
      if (v9)
      {
        v11 = v9;
        v12 = [v0 layer];
        v13 = [v11 CGPath];
        [v12 setShadowPath_];

        v14 = [v0 layer];
        [v14 setShadowPathIsBounds_];
      }

      else
      {
        v18 = [v0 layer];
        [v18 setShadowPath_];

        v14 = [v0 layer];
        [v14 setShadowPathIsBounds_];
      }

      v19 = [v0 layer];
      [v8 opacity];
      *&v20 = v20;
      *&v20 = *&v0[OBJC_IVAR____UIMagicMorphView_shadowIntensity] * *&v20;
      [v19 setShadowOpacity_];

      v21 = [v0 layer];
      v22 = [v8 color];
      if (!v22)
      {
        v22 = [objc_opt_self() clearColor];
      }

      v23 = v22;
      v24 = [v22 CGColor];

      [v21 setShadowColor_];
      v25 = [v0 layer];
      [v8 offset];
      [v25 setShadowOffset_];

      v17 = [v0 layer];
      [v8 radius];
      [v17 setShadowRadius_];

      goto LABEL_17;
    }

LABEL_12:
    v15 = [v0 layer];
    [v15 setShadowOpacity_];

    v16 = [v0 layer];
    [v16 setShadowRadius_];

    v17 = [v0 layer];
    [v17 setShadowOffset_];
LABEL_17:

    return;
  }

  __break(1u);
}

uint64_t sub_188D7A0C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188D7A114()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 72);
  v6[2] = *(v0 + 56);
  v6[3] = v4;
  v6[4] = *(v0 + 88);
  v7 = *(v0 + 104);
  v5 = *(v0 + 40);
  v6[0] = *(v0 + 24);
  v6[1] = v5;
  sub_188D71B60(v1, v6, v2, v3);
}

uint64_t sub_188D7A318(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 _morphView];
  v4 = [v2 _morphView];
  if (v3 == v4)
  {
    v16 = 1;
    v17 = v3;
  }

  else
  {
    v5 = [v3 _matchedViewIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = sub_18A4A7288();
      v9 = v8;

      v10 = [v4 _matchedViewIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = sub_18A4A7288();
        v14 = v13;

        if (v7 == v12 && v9 == v14)
        {
          v16 = 1;
        }

        else
        {
          v16 = sub_18A4A86C8();
        }

        v17 = v3;
      }

      else
      {
        v16 = 0;
        v17 = v4;
        v4 = v3;
      }
    }

    else
    {
      v16 = 0;
      v17 = v4;
      v4 = v3;
    }
  }

  return v16 & 1;
}

uint64_t sub_188D7A46C(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FAB8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - v6;
  v37 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FA58);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = *(v5 + 44);
  v10 = sub_188A34360(&unk_1EA930B50, &qword_1EA93FA58);

  sub_18A4A7818();
  sub_18A4A7878();
  v35 = v9;
  if (*&v7[v9] == v36[0])
  {
LABEL_41:
    sub_188A3F5FC(v7, &unk_1EA93FAB8);
    return a2;
  }

  v33 = a1;
  v34 = v10;
  while (1)
  {
    v11 = sub_18A4A78C8();
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 25);
    sub_188D730B0();
    v11(v36, 0);
    v16 = v35;
    sub_18A4A7888();
    if (v15)
    {
LABEL_3:
      sub_188D8459C();
      goto LABEL_4;
    }

    v17 = sub_18A4A84D8();
    v18 = (v17 + 57);
    v19 = *(v17 + 16) + 1;
    while (--v19)
    {
      v20 = *(v18 - 25);
      v21 = *v18;
      v18 += 32;
      if (v21 == 1 && v20 == v14)
      {

        goto LABEL_3;
      }
    }

    v24 = v37;
    v32 = v37 >> 62;
    if (v37 >> 62)
    {
      result = sub_18A4A7F68();
      v25 = result;
      if (!result)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v25 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_24;
      }
    }

    v26 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_47;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = sub_188E49F3C(v25 - 1, v24);
    }

    else
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v27 = *(v24 + 8 * v26 + 32);
      swift_unknownObjectRetain();
    }

    v28 = [v27 _morphContainerView];
    swift_unknownObjectRelease();
    if (v28)
    {
      result = type metadata accessor for DummyPreview();
      v31 = result;
      goto LABEL_26;
    }

LABEL_24:
    v28 = [v13 _morphContainerView];
    result = type metadata accessor for DummyPreview();
    v31 = result;
    if (!v25)
    {
      goto LABEL_30;
    }

    v26 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_44;
    }

LABEL_26:
    if ((v24 & 0xC000000000000001) == 0)
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v25 = *(v24 + 8 * v26 + 32);
      result = swift_unknownObjectRetain();
LABEL_30:
      if (!v28)
      {
        goto LABEL_50;
      }

      goto LABEL_31;
    }

    result = sub_188E49F3C(v26, v24);
    v25 = result;
    if (!v28)
    {
      goto LABEL_50;
    }

LABEL_31:
    sub_188D730B0();
    v29 = v28;
    v30 = sub_1891D60F8(v13, v25, v29);
    result = v32 ? sub_18A4A7F68() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < v14)
    {
      break;
    }

    if (v14 < 0)
    {
      goto LABEL_43;
    }

    sub_188D731FC(v14, v14, v30);
    sub_188D8459C();

    v16 = v35;
LABEL_4:
    sub_18A4A7878();
    if (*&v7[v16] == v36[0])
    {
      a2 = v37;
      goto LABEL_41;
    }
  }

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
  return result;
}

void sub_188D7AA34(void *a1, void *a2, void *a3, char *a4, uint64_t (*a5)(), uint64_t (*a6)())
{
  v12 = [a1 target];
  v13 = [v12 container];

  v57 = [v13 _window];
  if (!v57)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A6937B0);
    v46 = [a1 view];
    v47 = [v46 _conciseParentDescription];

    v48 = sub_18A4A7288();
    v50 = v49;

    MEMORY[0x18CFE22D0](v48, v50);

    sub_18A4A8398();
    __break(1u);
    return;
  }

  v14 = OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer;
  v15 = *(v6 + OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer);
  if (v15)
  {
    v16 = v15;
    [v16 invalidate];
    v17 = *(v6 + v14);
    *(v6 + v14) = 0;

    [*(v6 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion) complete];
  }

  if (UIAccessibilityPrefersCrossFadeTransitions())
  {
    sub_188F35270(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    if (*(a2 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_useIntermediateShape) == 1 && *(v6 + OBJC_IVAR____UIMagicMorphAnimation_currentItem) && [objc_opt_self() areAnimationsEnabled])
    {
      [*(v6 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion) increment];
      v18 = [a1 view];
      v19 = [v18 _vendAssertionForOverrideAlpha_];

      v20 = *(v6 + OBJC_IVAR____UIMagicMorphAnimation_intermediateStepHidingAssertion);
      *(v6 + OBJC_IVAR____UIMagicMorphAnimation_intermediateStepHidingAssertion) = v19;

      sub_188F3152C(a1);
      v55 = v21;
      sub_188F2E908(v21, a2, 1, 0, 0, 0, 0, 0);
      v52 = v6;
      v22 = *(*(v6 + OBJC_IVAR____UIMagicMorphAnimation_animationSettings) + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_secondStepDelay);
      v23 = UIAnimationDragCoefficient();
      v24 = v57;
      v25 = [a1 target];
      v26 = [v25 container];

      [a1 _center];
      [v26 convertPoint:v24 toCoordinateSpace:?];
      v28 = v27;
      v30 = v29;

      CGAffineTransformMakeScale(&aBlock, 0.7, 0.7);
      tx = aBlock.tx;
      ty = aBlock.ty;
      *v58 = *&aBlock.a;
      v53 = *&aBlock.c;
      v33 = objc_allocWithZone(UIPreviewTarget);
      *&aBlock.c = v53;
      *&aBlock.a = *v58;
      aBlock.tx = tx;
      aBlock.ty = ty;
      v54 = [v33 initWithContainer:v24 center:&aBlock transform:{v28, v30}];

      v34 = objc_allocWithZone(MEMORY[0x1E698E5E8]);
      v35 = sub_18A4A7258();
      v36 = [v34 initWithIdentifier_];

      v37 = *(v52 + v14);
      *(v52 + v14) = v36;

      v38 = *(v52 + v14);
      if (v38)
      {
        sub_188A34624(0, &qword_1ED490540);
        v39 = v38;
        v51 = sub_18A4A7A68();
        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v41 = swift_allocObject();
        v41[2] = v40;
        v41[3] = a1;
        v41[4] = v54;
        v41[5] = a2;
        v41[6] = a3;
        v41[7] = a4;
        v41[8] = a5;
        v41[9] = a6;
        *&aBlock.tx = sub_188F36360;
        *&aBlock.ty = v41;
        *&aBlock.a = MEMORY[0x1E69E9820];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_188BFF280;
        *&aBlock.d = &block_descriptor_118;
        v42 = _Block_copy(&aBlock);
        v43 = a1;
        v44 = v54;
        v45 = a2;
        sub_188D738F4(a3);
        sub_188D738F4(a5);

        [v39 scheduleWithFireInterval:v51 leewayInterval:v42 queue:v22 * v23 handler:0.0];

        _Block_release(v42);
      }

      else
      {
      }

      return;
    }

    sub_188F2E908(a1, a2, 0, 1, a3, a4, a5, a6);
  }
}

uint64_t sub_188D7B080()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188D7B0B8()
{

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void sub_188D7B14C(uint64_t a1, void (*a2)(void *__return_ptr))
{
  a2(v5);
  v3 = v5[0];
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
}

void *sub_188D7B22C(void *result, unint64_t a2)
{
  if (a2 < 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2[1];
  *result = *v2;
  if (a2 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result[1] = v3;
  if (a2 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v2[3];
  result[2] = v2[2];
  if (a2 == 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result[3] = v4;
  if (a2 < 5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v2[5];
  result[4] = v2[4];
  if (a2 == 5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result[5] = v5;
  if (a2 < 7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v2[7];
  result[6] = v2[6];
  if (a2 != 7)
  {
    result[7] = v6;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

CGFloat _TransformFunction(_OWORD *a1, _OWORD *a2)
{
  v3 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v3;
  v4 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v4;
  v5 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v5;
  v6 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v6;
  v7 = a2[5];
  *&v16.m31 = a2[4];
  *&v16.m33 = v7;
  v8 = a2[7];
  *&v16.m41 = a2[6];
  *&v16.m43 = v8;
  v9 = a2[1];
  *&v16.m11 = *a2;
  *&v16.m13 = v9;
  v10 = a2[3];
  *&v16.m21 = a2[2];
  *&v16.m23 = v10;
  CATransform3DConcat(&v18, &a, &v16);
  v11 = *&v18.m33;
  a1[4] = *&v18.m31;
  a1[5] = v11;
  v12 = *&v18.m43;
  a1[6] = *&v18.m41;
  a1[7] = v12;
  v13 = *&v18.m13;
  *a1 = *&v18.m11;
  a1[1] = v13;
  result = v18.m21;
  v15 = *&v18.m23;
  a1[2] = *&v18.m21;
  a1[3] = v15;
  return result;
}

void sub_188D7B348(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____UIMagicMorphAnimation_currentItem);
  *(v1 + OBJC_IVAR____UIMagicMorphAnimation_currentItem) = a1;
  v8 = a1;

  if (a1)
  {
    if (*&v8[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView])
    {
      v4 = *(v1 + OBJC_IVAR____UIMagicMorphAnimation_currentReparentingItem);
      *(v1 + OBJC_IVAR____UIMagicMorphAnimation_currentReparentingItem) = a1;
      v5 = v8;
    }

    if ([objc_opt_self() areAnimationsEnabled])
    {
      v6 = sub_188D845C8();
      [v6 setPaused_];

      v7 = v6;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____UIMagicMorphAnimation_currentReparentingItem);
    *(v1 + OBJC_IVAR____UIMagicMorphAnimation_currentReparentingItem) = 0;
  }
}

uint64_t sub_188D7B5B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_188A55598(a1, v14);
  sub_188A921E4();
  swift_dynamicCast();
  [v13 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  return result;
}

uint64_t sub_188D7B65C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A40);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 24 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = *(v17 + 2);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v18);
      sub_18A4A7348();
      result = sub_18A4A88E8();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_188D7B8DC()
{
  result = qword_1EA9310E0;
  if (!qword_1EA9310E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9310E0);
  }

  return result;
}

unint64_t sub_188D7B930()
{
  result = qword_1EA9310F0;
  if (!qword_1EA9310F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9310F0);
  }

  return result;
}

uint64_t sub_188D7BE48(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2 + 16;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v11;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_188D853EC;
  *(v13 + 24) = v12;
  v21[4] = sub_188E3FE50;
  v21[5] = v13;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_188A4A968;
  v21[3] = &block_descriptor_93_0;
  v14 = _Block_copy(v21);
  v15 = a6;

  v16 = a4;
  v17 = a1;
  v18 = a3;
  v19 = a5;

  UIMM_HFR_0(v14);
  _Block_release(v14);

  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188D7BFCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188D7C028(double a1)
{
  if (a1 <= 0.0)
  {
    v12 = *(v1 + 168);

    return v12;
  }

  v438 = a1;
  v3 = *(v1 + 152);
  v4 = *(v1 + 139);
  if (v4)
  {
    v5 = MEMORY[0x1E69E7CC0];

    *(v1 + 176) = v3;

    *(v1 + 184) = v5;
  }

  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10 = *(v1 + 137);
  v11 = *(v1 + 138);
  if ((v10 & 1) == 0)
  {
    v13 = *(v1 + 48);
    v14 = *(v1 + 56);
    v15 = *(v1 + 64);
    if (*v1 == v13 && *(v1 + 8) == 0.0)
    {
      if ((*(v1 + 138) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v435 = *(v1 + 88);
      v17 = sub_188ABBBFC(*(v1 + 72), *v1, v13);
      v18 = *(v1 + 8);
      v19 = sqrt(v14);
      v20 = v15 * 0.5;
      v436 = v6;
      if (v15 * 0.5 >= v19)
      {
        if (v19 >= v20)
        {
          v36 = v20 * v17 + v18;
          v37 = v17 + v36 * v438;
          v25 = exp(-(v20 * v438));
          v26 = v25 * v37;
          v29 = v25 * v36;
          v30 = v37 * v20;
        }

        else
        {
          v31 = sqrt(v20 * v20 - v19 * v19);
          v32 = cosh(v31 * v438);
          *&v434 = v8;
          v33 = 1.0 / v31 * (v20 * v17 + v18);
          v34 = sinh(v31 * v438);
          v35 = v17 * v32 + v33 * v34;
          v25 = exp(-(v20 * v438));
          v26 = v25 * v35;
          v29 = v25 * (v31 * (v33 * v32) + v31 * (v17 * v34));
          v30 = v35 * v20;
          v8 = *&v434;
        }
      }

      else
      {
        *&v434 = v8;
        v21 = sqrt(v19 * v19 - v20 * v20);
        v22 = __sincos_stret(v21 * v438);
        v23 = 1.0 / v21 * (v20 * v17 + v18);
        v24 = v22.__cosval * v17 + v22.__sinval * v23;
        v25 = exp(-(v20 * v438));
        v26 = v25 * v24;
        v27 = v21 * (v17 * v22.__sinval);
        v28 = v21 * (v22.__cosval * v23);
        v8 = *&v434;
        v29 = v25 * (v28 - v27);
        v30 = v24 * v20;
      }

      *v1 = v13 + v26;
      *(v1 + 8) = v29 - v25 * v30;
      v7 = v435;
      v6 = v436;
      if ((v11 & 1) == 0)
      {
LABEL_19:
        v16 = *(v1 + 16);
        if (v16 != v6 || *(v1 + 24) != 0.0)
        {
          v38 = sub_188ABBBFC(v9, v16, v6);
          v39 = *(v1 + 24);
          v40 = sqrt(v7);
          v41 = v8 * 0.5;
          if (v8 * 0.5 >= v40)
          {
            if (v40 >= v41)
            {
              v55 = v41 * v38 + v39;
              v56 = v38 + v55 * v438;
              v46 = exp(-(v41 * v438));
              v47 = v46 * v56;
              v48 = v46 * v55;
              v49 = v56 * v41;
            }

            else
            {
              v50 = sqrt(v41 * v41 - v40 * v40);
              v51 = cosh(v50 * v438);
              v52 = 1.0 / v50 * (v41 * v38 + v39);
              v53 = sinh(v50 * v438);
              v54 = v38 * v51 + v52 * v53;
              v46 = exp(-(v41 * v438));
              v47 = v46 * v54;
              v48 = v46 * (v50 * (v52 * v51) + v50 * (v38 * v53));
              v49 = v54 * v41;
            }
          }

          else
          {
            v42 = sqrt(v40 * v40 - v41 * v41);
            v43 = __sincos_stret(v42 * v438);
            v44 = 1.0 / v42 * (v41 * v38 + v39);
            v45 = v43.__cosval * v38 + v43.__sinval * v44;
            v46 = exp(-(v41 * v438));
            v47 = v46 * v45;
            v48 = v46 * (v42 * (v43.__cosval * v44) - v42 * (v38 * v43.__sinval));
            v49 = v45 * v41;
          }

          v57 = v48 - v46 * v49;
          v16 = v6 + v47;
          *(v1 + 16) = v6 + v47;
          *(v1 + 24) = v57;
        }

LABEL_27:
        v58 = 6.28318531 / v16 * (6.28318531 / v16);
        v59 = sqrt(v58);
        v60 = *v1 * (v59 + v59);
        *(v1 + 32) = v58;
        *(v1 + 40) = v60;
        goto LABEL_28;
      }
    }

    if (v10)
    {
      goto LABEL_28;
    }

    v16 = *(v1 + 16);
    goto LABEL_27;
  }

  if ((*(v1 + 138) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_28:

  *(v1 + 112) = v3;
  v61 = *(v1 + 176);
  v63 = *(v1 + 160);
  v62 = *(v1 + 168);
  v65 = *(v1 + 32);
  v64 = *(v1 + 40);
  v439 = *(v1 + 184);
  if (v4)
  {
  }

  else
  {
    v67 = *(v1 + 120);
    v6 = *(v1 + 128);
    v4 = *(v1 + 136);

    sub_188EEC36C(v3, v67, v6, v438);
  }

  v66 = v61;
  if (sub_188BD69E4(v61, v62, 0.0))
  {
    v4 = v63;
    v12 = v62;
    if (sub_188BD69E4(MEMORY[0x1E69E7CC0], v63, 0.0))
    {
      goto LABEL_593;
    }
  }

  sub_188D7EBC0(v62, v61);
  v69 = v68;
  v70 = sqrt(v65);
  v71 = v64 * 0.5;
  v437 = v64 * 0.5;
  if (v64 * 0.5 >= v70)
  {
    if (v70 >= v71)
    {
      v75 = *(v68 + 16);

      v78 = v69;
      if (!v75)
      {
        goto LABEL_183;
      }

      v78 = v69;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_48:
        if (v75 > *(v78 + 2))
        {
          __break(1u);
          goto LABEL_654;
        }

        if (v75 > 3)
        {
          v79 = v75 & 0x7FFFFFFFFFFFFFFCLL;
          v159 = (v78 + 48);
          v160 = v75 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v161 = vmulq_n_f64(*v159, v437);
            v159[-1] = vmulq_n_f64(v159[-1], v437);
            *v159 = v161;
            v159 += 2;
            v160 -= 4;
          }

          while (v160);
          if (v75 == v79)
          {
LABEL_183:
            sub_188D85564(v78, v63);
            v4 = v164;

            v75 = *(v4 + 16);
            if (!v75)
            {
              v76 = v4;
              goto LABEL_195;
            }

            v76 = v4;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_185:
              if (v75 > *(v76 + 2))
              {
                __break(1u);
LABEL_656:
                *&v2 = COERCE_DOUBLE(sub_188D75E50(v4));
LABEL_379:
                if (v75 <= *(v2 + 2))
                {
                  if (v75 > 3)
                  {
                    v296 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                    v297 = (v2 + 48);
                    v298 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v299 = vmulq_n_f64(*v297, v433);
                      v297[-1] = vmulq_n_f64(v297[-1], v433);
                      *v297 = v299;
                      v297 += 2;
                      v298 -= 4;
                    }

                    while (v298);
                    if (v75 == v296)
                    {
LABEL_388:

                      v75 = *(v2 + 2);
                      v430 = sinh(v6);
                      if (!v75)
                      {
                        v4 = v2;
                        goto LABEL_400;
                      }

                      v4 = v2;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
LABEL_390:
                        if (v75 > *(v4 + 16))
                        {
                          __break(1u);
                          goto LABEL_706;
                        }

                        if (v75 > 3)
                        {
                          v302 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                          v303 = (v4 + 48);
                          v304 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                          do
                          {
                            v305 = vmulq_n_f64(*v303, v430);
                            v303[-1] = vmulq_n_f64(v303[-1], v430);
                            *v303 = v305;
                            v303 += 2;
                            v304 -= 4;
                          }

                          while (v304);
                          if (v75 == v302)
                          {
                            goto LABEL_399;
                          }
                        }

                        else
                        {
                          v302 = 0;
                        }

                        v306 = v75 - v302;
                        v307 = (v4 + 8 * v302 + 32);
                        do
                        {
                          *v307 = v430 * *v307;
                          ++v307;
                          --v306;
                        }

                        while (v306);
LABEL_399:

LABEL_400:
                        sub_188D85564(v76, v4);
                        v2 = v308;

                        v438 = exp(-(v437 * v438));
                        v75 = *(v2 + 2);
                        if (!v75)
                        {
                          v434 = v2;
                          goto LABEL_412;
                        }

                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v310 = v2;
                        if (isUniquelyReferenced_nonNull_native)
                        {
                          goto LABEL_402;
                        }

                        goto LABEL_662;
                      }

LABEL_704:
                      *&v4 = COERCE_DOUBLE(sub_188D75E50(v2));
                      goto LABEL_390;
                    }
                  }

                  else
                  {
                    v296 = 0;
                  }

                  v300 = v75 - v296;
                  v301 = &v2[8 * v296 + 32];
                  do
                  {
                    *v301 = v433 * *v301;
                    ++v301;
                    --v300;
                  }

                  while (v300);
                  goto LABEL_388;
                }

                __break(1u);
                goto LABEL_658;
              }

              if (v75 > 3)
              {
                v165 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                v166 = (v76 + 48);
                v167 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v168 = vmulq_n_f64(*v166, v438);
                  v166[-1] = vmulq_n_f64(v166[-1], v438);
                  *v166 = v168;
                  v166 += 2;
                  v167 -= 4;
                }

                while (v167);
                if (v75 == v165)
                {
                  goto LABEL_194;
                }
              }

              else
              {
                v165 = 0;
              }

              v169 = v75 - v165;
              v170 = &v76[8 * v165 + 32];
              do
              {
                *v170 = *v170 * v438;
                ++v170;
                --v169;
              }

              while (v169);
LABEL_194:

LABEL_195:
              sub_188D85564(v69, v76);
              v4 = v171;

              v433 = exp(-(v437 * v438));
              v75 = *(v4 + 16);
              if (!v75)
              {
                v434 = v4;
                goto LABEL_207;
              }

              v172 = swift_isUniquelyReferenced_nonNull_native();
              v173 = v4;
              if (v172)
              {
LABEL_197:
                if (v75 > *(v173 + 2))
                {
                  __break(1u);
                  goto LABEL_660;
                }

                if (v75 > 3)
                {
                  v174 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                  v175 = (v173 + 48);
                  v176 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v177 = vmulq_n_f64(*v175, v433);
                    v175[-1] = vmulq_n_f64(v175[-1], v433);
                    *v175 = v177;
                    v175 += 2;
                    v176 -= 4;
                  }

                  while (v176);
                  if (v75 == v174)
                  {
                    goto LABEL_206;
                  }
                }

                else
                {
                  v174 = 0;
                }

                v178 = v75 - v174;
                v179 = &v173[8 * v174 + 32];
                do
                {
                  *v179 = v433 * *v179;
                  ++v179;
                  --v178;
                }

                while (v178);
LABEL_206:
                v434 = v173;

LABEL_207:
                v75 = *(v69 + 16);

                v180 = v69;
                if (!v75)
                {
                  goto LABEL_217;
                }

                v180 = v69;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
LABEL_209:
                  if (v75 > *(v180 + 2))
                  {
                    __break(1u);
LABEL_662:
                    *&v310 = COERCE_DOUBLE(sub_188D75E50(v2));
LABEL_402:
                    if (v75 <= *(v310 + 2))
                    {
                      if (v75 > 3)
                      {
                        v311 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                        v312 = (v310 + 48);
                        v313 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v314 = vmulq_n_f64(*v312, v438);
                          v312[-1] = vmulq_n_f64(v312[-1], v438);
                          *v312 = v314;
                          v312 += 2;
                          v313 -= 4;
                        }

                        while (v313);
                        if (v75 == v311)
                        {
                          goto LABEL_411;
                        }
                      }

                      else
                      {
                        v311 = 0;
                      }

                      v315 = v75 - v311;
                      v316 = &v310[8 * v311 + 32];
                      do
                      {
                        *v316 = v438 * *v316;
                        ++v316;
                        --v315;
                      }

                      while (v315);
LABEL_411:
                      v434 = v310;

LABEL_412:
                      v75 = *(v69 + 16);

                      v188 = v69;
                      if (!v75)
                      {
                        goto LABEL_441;
                      }

                      v4 = v69;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        goto LABEL_414;
                      }

                      goto LABEL_666;
                    }

                    __break(1u);
                    goto LABEL_664;
                  }

                  if (v75 > 3)
                  {
                    v181 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                    v182 = (v180 + 48);
                    v183 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v184 = vmulq_n_f64(*v182, v437);
                      v182[-1] = vmulq_n_f64(v182[-1], v437);
                      *v182 = v184;
                      v182 += 2;
                      v183 -= 4;
                    }

                    while (v183);
                    if (v75 == v181)
                    {
LABEL_217:
                      sub_188D85564(v180, v63);
                      v4 = v187;

                      v75 = *(v4 + 16);
                      if (!v75)
                      {
                        v188 = v4;
                        goto LABEL_229;
                      }

                      v188 = v4;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
LABEL_219:
                        if (v75 > *(v188 + 2))
                        {
                          __break(1u);
LABEL_666:
                          *&v4 = COERCE_DOUBLE(sub_188D75E50(v69));
LABEL_414:
                          if (v75 <= *(v4 + 16))
                          {
                            if (v75 > 3)
                            {
                              v317 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                              v318 = (v4 + 48);
                              v319 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                              do
                              {
                                v320 = vmulq_n_f64(*v318, v430);
                                v318[-1] = vmulq_n_f64(v318[-1], v430);
                                *v318 = v320;
                                v318 += 2;
                                v319 -= 4;
                              }

                              while (v319);
                              if (v75 == v317)
                              {
LABEL_422:
                                v75 = *(v4 + 16);
                                if (!v75)
                                {
                                  v188 = v4;
                                  goto LABEL_434;
                                }

                                v188 = v4;
                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
LABEL_424:
                                  if (v75 > *(v188 + 2))
                                  {
                                    __break(1u);
                                    goto LABEL_708;
                                  }

                                  if (v75 > 3)
                                  {
                                    v323 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                                    v324 = (v188 + 48);
                                    v325 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                                    do
                                    {
                                      v326 = vmulq_n_f64(*v324, v431);
                                      v324[-1] = vmulq_n_f64(v324[-1], v431);
                                      *v324 = v326;
                                      v324 += 2;
                                      v325 -= 4;
                                    }

                                    while (v325);
                                    if (v75 == v323)
                                    {
                                      goto LABEL_433;
                                    }
                                  }

                                  else
                                  {
                                    v323 = 0;
                                  }

                                  v327 = v75 - v323;
                                  v328 = &v188[8 * v323 + 32];
                                  do
                                  {
                                    *v328 = v431 * *v328;
                                    ++v328;
                                    --v327;
                                  }

                                  while (v327);
LABEL_433:

LABEL_434:
                                  v75 = *(v69 + 16);
                                  if (v75)
                                  {

                                    v329 = v69;
                                    if (swift_isUniquelyReferenced_nonNull_native())
                                    {
                                      v330 = *(v69 + 16);
                                      if (v330)
                                      {
                                        goto LABEL_437;
                                      }

                                      goto LABEL_709;
                                    }

LABEL_708:
                                    v329 = sub_188D75E50(v69);
                                    v330 = *(v329 + 2);
                                    if (v330)
                                    {
LABEL_437:
                                      if (v330 > v75 - 1)
                                      {
                                        if (swift_isUniquelyReferenced_nonNull_native())
                                        {
                                          goto LABEL_439;
                                        }

                                        goto LABEL_711;
                                      }

LABEL_710:
                                      __break(1u);
LABEL_711:
                                      v329 = sub_188D75E50(v329);
LABEL_439:
                                      if (v75 > 3)
                                      {
                                        v331 = v75 & 0xFFFFFFFFFFFFFFFCLL;
                                        v332 = (v329 + 48);
                                        v333 = v75 & 0xFFFFFFFFFFFFFFFCLL;
                                        do
                                        {
                                          v334 = vmulq_n_f64(*v332, v437);
                                          v332[-1] = vmulq_n_f64(v332[-1], v437);
                                          *v332 = v334;
                                          v332 += 2;
                                          v333 -= 4;
                                        }

                                        while (v333);
                                        if (v75 == v331)
                                        {
LABEL_447:
                                          sub_188D85564(v329, v63);
                                          v61 = v337;

                                          v203 = *(v61 + 16);
                                          if (!v203)
                                          {
                                            goto LABEL_495;
                                          }

                                          v211 = v61;
                                          if (swift_isUniquelyReferenced_nonNull_native())
                                          {
                                            v338 = *(v61 + 16);
                                            if (v338)
                                            {
                                              goto LABEL_450;
                                            }

LABEL_675:
                                            __break(1u);
LABEL_676:
                                            __break(1u);
LABEL_677:
                                            __break(1u);
LABEL_678:
                                            v211 = sub_188D75E50(v211);
LABEL_256:
                                            v213 = -v437;
                                            if (v203 > 3)
                                            {
                                              v214 = v203 & 0x7FFFFFFFFFFFFFFCLL;
                                              v215 = (v211 + 48);
                                              v216 = v203 & 0x7FFFFFFFFFFFFFFCLL;
                                              do
                                              {
                                                v217 = vmulq_n_f64(*v215, v213);
                                                v215[-1] = vmulq_n_f64(v215[-1], v213);
                                                *v215 = v217;
                                                v215 += 2;
                                                v216 -= 4;
                                              }

                                              while (v216);
                                              if (v203 == v214)
                                              {
                                                goto LABEL_263;
                                              }
                                            }

                                            else
                                            {
                                              v214 = 0;
                                            }

                                            v218 = v203 - v214;
                                            v219 = &v211[8 * v214 + 32];
                                            do
                                            {
                                              *v219 = *v219 * v213;
                                              ++v219;
                                              --v218;
                                            }

                                            while (v218);
LABEL_263:

                                            v220 = *(v211 + 2);
                                            if (v220)
                                            {

                                              v61 = v211;
                                              if (swift_isUniquelyReferenced_nonNull_native())
                                              {
                                                v221 = *(v211 + 2);
                                                if (v221)
                                                {
                                                  goto LABEL_266;
                                                }
                                              }

                                              else
                                              {
                                                v61 = sub_188D75E50(v211);
                                                v221 = *(v61 + 16);
                                                if (v221)
                                                {
LABEL_266:
                                                  if (v221 > v220 - 1)
                                                  {
                                                    if (swift_isUniquelyReferenced_nonNull_native())
                                                    {
                                                      goto LABEL_268;
                                                    }

                                                    goto LABEL_718;
                                                  }

                                                  goto LABEL_716;
                                                }
                                              }

                                              __break(1u);
                                              goto LABEL_714;
                                            }

                                            v61 = v211;
LABEL_475:
                                            sub_188D85564(v188, v61);
                                            v4 = v352;

                                            v66 = v429;
                                            goto LABEL_592;
                                          }

LABEL_674:
                                          v211 = sub_188D75E50(v61);
                                          v338 = *(v211 + 2);
                                          if (v338)
                                          {
LABEL_450:
                                            if (v338 > v203 - 1)
                                            {
                                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                              {
                                                v211 = sub_188D75E50(v211);
                                              }

                                              if (v203 > 3)
                                              {
                                                v339 = v203 & 0x7FFFFFFFFFFFFFFCLL;
                                                v340 = (v211 + 48);
                                                v341 = v203 & 0x7FFFFFFFFFFFFFFCLL;
                                                do
                                                {
                                                  v342 = vmulq_n_f64(*v340, v433);
                                                  v340[-1] = vmulq_n_f64(v340[-1], v433);
                                                  *v340 = v342;
                                                  v340 += 2;
                                                  v341 -= 4;
                                                }

                                                while (v341);
                                                if (v203 == v339)
                                                {
LABEL_460:

                                                  v61 = *(v211 + 2);
                                                  if (!v61)
                                                  {
                                                    v61 = v211;
                                                    goto LABEL_495;
                                                  }

                                                  v220 = v211;
                                                  if (swift_isUniquelyReferenced_nonNull_native())
                                                  {
                                                    v345 = *(v211 + 2);
                                                    if (v345)
                                                    {
                                                      goto LABEL_463;
                                                    }

LABEL_715:
                                                    __break(1u);
LABEL_716:
                                                    __break(1u);
LABEL_717:
                                                    __break(1u);
LABEL_718:
                                                    v61 = sub_188D75E50(v61);
LABEL_268:
                                                    if (v220 > 3)
                                                    {
                                                      v222 = v220 & 0x7FFFFFFFFFFFFFFCLL;
                                                      v347 = (v61 + 48);
                                                      v348 = v220 & 0x7FFFFFFFFFFFFFFCLL;
                                                      do
                                                      {
                                                        v349 = vmulq_n_f64(*v347, v433);
                                                        v347[-1] = vmulq_n_f64(v347[-1], v433);
                                                        *v347 = v349;
                                                        v347 += 2;
                                                        v348 -= 4;
                                                      }

                                                      while (v348);
                                                      if (v220 == v222)
                                                      {
                                                        goto LABEL_474;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v222 = 0;
                                                    }

                                                    v350 = v220 - v222;
                                                    v351 = (v61 + 8 * v222 + 32);
                                                    do
                                                    {
                                                      *v351 = v433 * *v351;
                                                      ++v351;
                                                      --v350;
                                                    }

                                                    while (v350);
LABEL_474:

                                                    goto LABEL_475;
                                                  }

LABEL_714:
                                                  v220 = sub_188D75E50(v211);
                                                  v345 = *(v220 + 16);
                                                  if (v345)
                                                  {
LABEL_463:
                                                    if (v345 > v61 - 1)
                                                    {
                                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                                      {
                                                        v220 = sub_188D75E50(v220);
                                                      }

                                                      if (v61 > 3)
                                                      {
                                                        v346 = v61 & 0x7FFFFFFFFFFFFFFCLL;
                                                        v353 = (v220 + 48);
                                                        v354 = v61 & 0x7FFFFFFFFFFFFFFCLL;
                                                        do
                                                        {
                                                          v355 = vmulq_n_f64(*v353, v432);
                                                          v353[-1] = vmulq_n_f64(v353[-1], v432);
                                                          *v353 = v355;
                                                          v353 += 2;
                                                          v354 -= 4;
                                                        }

                                                        while (v354);
                                                        if (v61 == v346)
                                                        {
LABEL_481:

                                                          v358 = *(v220 + 16);
                                                          if (!v358)
                                                          {
                                                            v61 = v220;
                                                            goto LABEL_495;
                                                          }

                                                          v61 = v220;
                                                          if (swift_isUniquelyReferenced_nonNull_native())
                                                          {
                                                            v359 = *(v220 + 16);
                                                            if (v359)
                                                            {
                                                              goto LABEL_484;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v61 = sub_188D75E50(v220);
                                                            v359 = *(v61 + 16);
                                                            if (v359)
                                                            {
LABEL_484:
                                                              if (v359 > v358 - 1)
                                                              {
                                                                if (swift_isUniquelyReferenced_nonNull_native())
                                                                {
                                                                  goto LABEL_486;
                                                                }

                                                                goto LABEL_731;
                                                              }

LABEL_730:
                                                              __break(1u);
LABEL_731:
                                                              v61 = sub_188D75E50(v61);
LABEL_486:
                                                              if (v358 > 3)
                                                              {
                                                                v360 = v358 & 0x7FFFFFFFFFFFFFFCLL;
                                                                v361 = (v61 + 48);
                                                                v362 = v358 & 0x7FFFFFFFFFFFFFFCLL;
                                                                do
                                                                {
                                                                  v363 = vmulq_n_f64(*v361, v431);
                                                                  v361[-1] = vmulq_n_f64(v361[-1], v431);
                                                                  *v361 = v363;
                                                                  v361 += 2;
                                                                  v362 -= 4;
                                                                }

                                                                while (v362);
                                                                if (v358 == v360)
                                                                {
                                                                  goto LABEL_494;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v360 = 0;
                                                              }

                                                              v364 = v358 - v360;
                                                              v365 = (v61 + 8 * v360 + 32);
                                                              do
                                                              {
                                                                *v365 = v431 * *v365;
                                                                ++v365;
                                                                --v364;
                                                              }

                                                              while (v364);
LABEL_494:

LABEL_495:
                                                              sub_188D85564(v188, v61);
                                                              v367 = v366;

                                                              v368 = *(v367 + 16);
                                                              if (!v368)
                                                              {
                                                                v230 = v367;
                                                                goto LABEL_509;
                                                              }

                                                              v230 = v367;
                                                              if (swift_isUniquelyReferenced_nonNull_native())
                                                              {
                                                                v369 = *(v367 + 16);
                                                                if (v369)
                                                                {
                                                                  goto LABEL_498;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v230 = sub_188D75E50(v367);
                                                                v369 = *(v230 + 2);
                                                                if (v369)
                                                                {
LABEL_498:
                                                                  if (v369 > v368 - 1)
                                                                  {
                                                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                                                    {
                                                                      goto LABEL_684;
                                                                    }

                                                                    while (1)
                                                                    {
                                                                      if (v368 > 3)
                                                                      {
                                                                        v370 = v368 & 0x7FFFFFFFFFFFFFFCLL;
                                                                        v371 = (v230 + 48);
                                                                        v372 = v368 & 0x7FFFFFFFFFFFFFFCLL;
                                                                        do
                                                                        {
                                                                          v373 = vmulq_n_f64(*v371, v438);
                                                                          v371[-1] = vmulq_n_f64(v371[-1], v438);
                                                                          *v371 = v373;
                                                                          v371 += 2;
                                                                          v372 -= 4;
                                                                        }

                                                                        while (v372);
                                                                        if (v368 == v370)
                                                                        {
                                                                          goto LABEL_508;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v370 = 0;
                                                                      }

                                                                      v374 = v368 - v370;
                                                                      v375 = &v230[8 * v370 + 32];
                                                                      do
                                                                      {
                                                                        *v375 = v438 * *v375;
                                                                        ++v375;
                                                                        --v374;
                                                                      }

                                                                      while (v374);
LABEL_508:

LABEL_509:
                                                                      v367 = *(v69 + 16);

                                                                      v61 = v69;
                                                                      if (!v367)
                                                                      {
                                                                        goto LABEL_529;
                                                                      }

                                                                      v61 = v69;
                                                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                                                      {
LABEL_682:
                                                                        v61 = sub_188D75E50(v69);
                                                                        v376 = *(v61 + 16);
                                                                        if (!v376)
                                                                        {
                                                                          goto LABEL_683;
                                                                        }

LABEL_512:
                                                                        if (v376 <= v367 - 1)
                                                                        {
                                                                          __break(1u);
                                                                        }

                                                                        else if (swift_isUniquelyReferenced_nonNull_native())
                                                                        {
                                                                          goto LABEL_514;
                                                                        }

                                                                        v61 = sub_188D75E50(v61);
LABEL_514:
                                                                        if (v367 <= 3)
                                                                        {
                                                                          v377 = 0;
                                                                          goto LABEL_519;
                                                                        }

                                                                        v377 = v367 & 0x7FFFFFFFFFFFFFFCLL;
                                                                        v378 = (v61 + 48);
                                                                        v379 = v367 & 0x7FFFFFFFFFFFFFFCLL;
                                                                        do
                                                                        {
                                                                          v380 = vmulq_n_f64(*v378, v432);
                                                                          v378[-1] = vmulq_n_f64(v378[-1], v432);
                                                                          *v378 = v380;
                                                                          v378 += 2;
                                                                          v379 -= 4;
                                                                        }

                                                                        while (v379);
                                                                        if (v367 != v377)
                                                                        {
LABEL_519:
                                                                          v381 = v367 - v377;
                                                                          v382 = (v61 + 8 * v377 + 32);
                                                                          do
                                                                          {
                                                                            *v382 = v432 * *v382;
                                                                            ++v382;
                                                                            --v381;
                                                                          }

                                                                          while (v381);
                                                                        }

                                                                        v383 = *(v69 + 16);
                                                                        if (!v383)
                                                                        {
LABEL_529:

                                                                          v384 = v69;
                                                                          goto LABEL_535;
                                                                        }

                                                                        v384 = v69;
                                                                        if (swift_isUniquelyReferenced_nonNull_native())
                                                                        {
                                                                          v385 = *(v69 + 16);
                                                                          if (v385)
                                                                          {
                                                                            goto LABEL_524;
                                                                          }

LABEL_720:
                                                                          __break(1u);
                                                                          goto LABEL_721;
                                                                        }

                                                                        v384 = sub_188D75E50(v69);
                                                                        v385 = *(v384 + 2);
                                                                        if (!v385)
                                                                        {
                                                                          goto LABEL_720;
                                                                        }

LABEL_524:
                                                                        if (v383 < 1)
                                                                        {
LABEL_721:
                                                                          __break(1u);
                                                                        }

                                                                        else if (v385 > v383 - 1)
                                                                        {
                                                                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                                                          {
                                                                            goto LABEL_725;
                                                                          }

                                                                          while (v383 > 3)
                                                                          {
                                                                            v386 = v383 & 0x7FFFFFFFFFFFFFFCLL;
                                                                            v387 = (v384 + 48);
                                                                            v388 = v383 & 0x7FFFFFFFFFFFFFFCLL;
                                                                            do
                                                                            {
                                                                              v389 = vmulq_n_f64(*v387, v437);
                                                                              v387[-1] = vmulq_n_f64(v387[-1], v437);
                                                                              *v387 = v389;
                                                                              v387 += 2;
                                                                              v388 -= 4;
                                                                            }

                                                                            while (v388);
                                                                            if (v383 != v386)
                                                                            {
                                                                              goto LABEL_533;
                                                                            }

LABEL_535:
                                                                            sub_188D85564(v384, v63);
                                                                            v383 = v392;

                                                                            v75 = *(v383 + 16);
                                                                            if (!v75)
                                                                            {
                                                                              goto LABEL_561;
                                                                            }

                                                                            v384 = v383;
                                                                            if (swift_isUniquelyReferenced_nonNull_native())
                                                                            {
                                                                              v393 = *(v383 + 16);
                                                                              if (!v393)
                                                                              {
                                                                                goto LABEL_688;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v384 = sub_188D75E50(v383);
                                                                              v393 = *(v384 + 2);
                                                                              if (!v393)
                                                                              {
LABEL_688:
                                                                                __break(1u);
                                                                                goto LABEL_689;
                                                                              }
                                                                            }

                                                                            if (v393 > v75 - 1)
                                                                            {
                                                                              if (swift_isUniquelyReferenced_nonNull_native())
                                                                              {
                                                                                goto LABEL_540;
                                                                              }

                                                                              goto LABEL_690;
                                                                            }

LABEL_689:
                                                                            __break(1u);
LABEL_690:
                                                                            v384 = sub_188D75E50(v384);
LABEL_540:
                                                                            if (v75 <= 3)
                                                                            {
                                                                              v394 = 0;
LABEL_545:
                                                                              v398 = v75 - v394;
                                                                              v399 = &v384[8 * v394 + 32];
                                                                              do
                                                                              {
                                                                                *v399 = v433 * *v399;
                                                                                ++v399;
                                                                                --v398;
                                                                              }

                                                                              while (v398);
                                                                              goto LABEL_547;
                                                                            }

                                                                            v394 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                                                                            v395 = (v384 + 48);
                                                                            v396 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                                                                            do
                                                                            {
                                                                              v397 = vmulq_n_f64(*v395, v433);
                                                                              v395[-1] = vmulq_n_f64(v395[-1], v433);
                                                                              *v395 = v397;
                                                                              v395 += 2;
                                                                              v396 -= 4;
                                                                            }

                                                                            while (v396);
                                                                            if (v75 != v394)
                                                                            {
                                                                              goto LABEL_545;
                                                                            }

LABEL_547:

                                                                            v75 = *(v384 + 2);
                                                                            if (!v75)
                                                                            {
                                                                              v383 = v384;
                                                                              goto LABEL_561;
                                                                            }

                                                                            v383 = v384;
                                                                            if (swift_isUniquelyReferenced_nonNull_native())
                                                                            {
                                                                              v400 = *(v384 + 2);
                                                                              if (v400)
                                                                              {
                                                                                goto LABEL_550;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
LABEL_723:
                                                                              v383 = sub_188D75E50(v384);
                                                                              v400 = *(v383 + 16);
                                                                              if (v400)
                                                                              {
LABEL_550:
                                                                                if (v400 <= v75 - 1)
                                                                                {
                                                                                  __break(1u);
                                                                                }

                                                                                else if (swift_isUniquelyReferenced_nonNull_native())
                                                                                {
                                                                                  goto LABEL_552;
                                                                                }

                                                                                v383 = sub_188D75E50(v383);
LABEL_552:
                                                                                if (v75 <= 3)
                                                                                {
                                                                                  v401 = 0;
                                                                                  goto LABEL_558;
                                                                                }

                                                                                v401 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                                                                                v402 = (v383 + 48);
                                                                                v403 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                                                                                do
                                                                                {
                                                                                  v404 = vmulq_n_f64(*v402, v430);
                                                                                  v402[-1] = vmulq_n_f64(v402[-1], v430);
                                                                                  *v402 = v404;
                                                                                  v402 += 2;
                                                                                  v403 -= 4;
                                                                                }

                                                                                while (v403);
                                                                                if (v75 != v401)
                                                                                {
LABEL_558:
                                                                                  v405 = v75 - v401;
                                                                                  v406 = (v383 + 8 * v401 + 32);
                                                                                  do
                                                                                  {
                                                                                    *v406 = v430 * *v406;
                                                                                    ++v406;
                                                                                    --v405;
                                                                                  }

                                                                                  while (v405);
                                                                                }

LABEL_561:
                                                                                sub_188D85564(v61, v383);
                                                                                v73 = v407;

                                                                                v408 = sub_188D7F314(v73);
                                                                                if (v408 < 0)
                                                                                {
                                                                                  __break(1u);
                                                                                }

                                                                                else
                                                                                {
                                                                                  v61 = v408;
                                                                                  if (v408)
                                                                                  {

                                                                                    v4 = v73;
                                                                                    if (swift_isUniquelyReferenced_nonNull_native())
                                                                                    {
                                                                                      v409 = *(v73 + 2);
                                                                                      if (v409)
                                                                                      {
                                                                                        goto LABEL_565;
                                                                                      }

LABEL_692:
                                                                                      __break(1u);
                                                                                      goto LABEL_693;
                                                                                    }

                                                                                    *&v4 = COERCE_DOUBLE(sub_188D75E50(v73));
                                                                                    v409 = *(v4 + 16);
                                                                                    if (!v409)
                                                                                    {
                                                                                      goto LABEL_692;
                                                                                    }

LABEL_565:
                                                                                    if (v409 <= v61 - 1)
                                                                                    {
LABEL_693:
                                                                                      __break(1u);
                                                                                    }

                                                                                    else if (swift_isUniquelyReferenced_nonNull_native())
                                                                                    {
                                                                                      goto LABEL_567;
                                                                                    }

                                                                                    *&v4 = COERCE_DOUBLE(sub_188D75E50(v4));
LABEL_567:
                                                                                    v410 = -v437;
                                                                                    if (v61 <= 3)
                                                                                    {
                                                                                      v411 = 0;
                                                                                      goto LABEL_573;
                                                                                    }

                                                                                    v411 = v61 & 0x7FFFFFFFFFFFFFFCLL;
                                                                                    v412 = (v4 + 48);
                                                                                    v413 = v61 & 0x7FFFFFFFFFFFFFFCLL;
                                                                                    do
                                                                                    {
                                                                                      v414 = vmulq_n_f64(*v412, v410);
                                                                                      v412[-1] = vmulq_n_f64(v412[-1], v410);
                                                                                      *v412 = v414;
                                                                                      v412 += 2;
                                                                                      v413 -= 4;
                                                                                    }

                                                                                    while (v413);
                                                                                    if (v61 != v411)
                                                                                    {
LABEL_573:
                                                                                      v415 = v61 - v411;
                                                                                      v416 = (v4 + 8 * v411 + 32);
                                                                                      do
                                                                                      {
                                                                                        *v416 = *v416 * v410;
                                                                                        ++v416;
                                                                                        --v415;
                                                                                      }

                                                                                      while (v415);
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v4 = v73;
                                                                                  }

                                                                                  v417 = sub_188D7F314(v4);
                                                                                  if ((v417 & 0x8000000000000000) == 0)
                                                                                  {
                                                                                    v418 = v417;
                                                                                    if (v417)
                                                                                    {

                                                                                      v282 = v4;
                                                                                      if (swift_isUniquelyReferenced_nonNull_native())
                                                                                      {
                                                                                        v419 = *(v4 + 16);
                                                                                        if (v419)
                                                                                        {
                                                                                          goto LABEL_580;
                                                                                        }

LABEL_696:
                                                                                        __break(1u);
                                                                                        goto LABEL_697;
                                                                                      }

                                                                                      v282 = sub_188D75E50(v4);
                                                                                      v419 = *(v282 + 2);
                                                                                      if (!v419)
                                                                                      {
                                                                                        goto LABEL_696;
                                                                                      }

LABEL_580:
                                                                                      if (v419 <= v418 - 1)
                                                                                      {
LABEL_697:
                                                                                        __break(1u);
                                                                                      }

                                                                                      else if (swift_isUniquelyReferenced_nonNull_native())
                                                                                      {
                                                                                        goto LABEL_582;
                                                                                      }

                                                                                      v282 = sub_188D75E50(v282);
LABEL_582:
                                                                                      if (v418 > 3)
                                                                                      {
                                                                                        v420 = v418 & 0x7FFFFFFFFFFFFFFCLL;
                                                                                        v421 = (v282 + 48);
                                                                                        v422 = v418 & 0x7FFFFFFFFFFFFFFCLL;
                                                                                        do
                                                                                        {
                                                                                          v423 = vmulq_n_f64(*v421, v438);
                                                                                          v421[-1] = vmulq_n_f64(v421[-1], v438);
                                                                                          *v421 = v423;
                                                                                          v421 += 2;
                                                                                          v422 -= 4;
                                                                                        }

                                                                                        while (v422);
                                                                                        if (v418 == v420)
                                                                                        {
                                                                                          goto LABEL_590;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v420 = 0;
                                                                                      }

                                                                                      v424 = v418 - v420;
                                                                                      v425 = &v282[8 * v420 + 32];
                                                                                      do
                                                                                      {
                                                                                        *v425 = v438 * *v425;
                                                                                        ++v425;
                                                                                        --v424;
                                                                                      }

                                                                                      while (v424);
                                                                                      goto LABEL_590;
                                                                                    }

LABEL_584:
                                                                                    v282 = v4;
                                                                                    goto LABEL_591;
                                                                                  }
                                                                                }

                                                                                __break(1u);
                                                                                goto LABEL_630;
                                                                              }
                                                                            }

                                                                            __break(1u);
LABEL_725:
                                                                            v384 = sub_188D75E50(v384);
                                                                          }

                                                                          v386 = 0;
LABEL_533:
                                                                          v390 = v383 - v386;
                                                                          v391 = 8 * v386 + 32;
                                                                          do
                                                                          {
                                                                            *&v384[v391] = v437 * *&v384[v391];
                                                                            v391 += 8;
                                                                            --v390;
                                                                          }

                                                                          while (v390);
                                                                          goto LABEL_535;
                                                                        }

                                                                        __break(1u);
                                                                        goto LABEL_723;
                                                                      }

                                                                      v376 = *(v69 + 16);
                                                                      if (v376)
                                                                      {
                                                                        goto LABEL_512;
                                                                      }

LABEL_683:
                                                                      __break(1u);
LABEL_684:
                                                                      v230 = sub_188D75E50(v230);
                                                                    }
                                                                  }

LABEL_681:
                                                                  __break(1u);
                                                                  goto LABEL_682;
                                                                }
                                                              }

                                                              __break(1u);
                                                              goto LABEL_681;
                                                            }
                                                          }

                                                          __break(1u);
                                                          goto LABEL_730;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v346 = 0;
                                                      }

                                                      v356 = v61 - v346;
                                                      v357 = (v220 + 8 * v346 + 32);
                                                      do
                                                      {
                                                        *v357 = v432 * *v357;
                                                        ++v357;
                                                        --v356;
                                                      }

                                                      while (v356);
                                                      goto LABEL_481;
                                                    }

                                                    goto LABEL_717;
                                                  }

                                                  goto LABEL_715;
                                                }
                                              }

                                              else
                                              {
                                                v339 = 0;
                                              }

                                              v343 = v203 - v339;
                                              v344 = &v211[8 * v339 + 32];
                                              do
                                              {
                                                *v344 = v433 * *v344;
                                                ++v344;
                                                --v343;
                                              }

                                              while (v343);
                                              goto LABEL_460;
                                            }

                                            goto LABEL_677;
                                          }

                                          goto LABEL_675;
                                        }
                                      }

                                      else
                                      {
                                        v331 = 0;
                                      }

                                      v335 = v75 - v331;
                                      v336 = 8 * v331 + 32;
                                      do
                                      {
                                        *&v329[v336] = v437 * *&v329[v336];
                                        v336 += 8;
                                        --v335;
                                      }

                                      while (v335);
                                      goto LABEL_447;
                                    }

LABEL_709:
                                    __break(1u);
                                    goto LABEL_710;
                                  }

LABEL_441:

                                  v329 = v69;
                                  goto LABEL_447;
                                }

LABEL_706:
                                v188 = sub_188D75E50(v4);
                                goto LABEL_424;
                              }
                            }

                            else
                            {
                              v317 = 0;
                            }

                            v321 = v75 - v317;
                            v322 = (v4 + 8 * v317 + 32);
                            do
                            {
                              *v322 = v430 * *v322;
                              ++v322;
                              --v321;
                            }

                            while (v321);
                            goto LABEL_422;
                          }

                          __break(1u);
                          goto LABEL_668;
                        }

                        if (v75 > 3)
                        {
                          v189 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                          v190 = (v188 + 48);
                          v191 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                          do
                          {
                            v192 = vmulq_n_f64(*v190, v433);
                            v190[-1] = vmulq_n_f64(v190[-1], v433);
                            *v190 = v192;
                            v190 += 2;
                            v191 -= 4;
                          }

                          while (v191);
                          if (v75 == v189)
                          {
                            goto LABEL_228;
                          }
                        }

                        else
                        {
                          v189 = 0;
                        }

                        v193 = v75 - v189;
                        v194 = &v188[8 * v189 + 32];
                        do
                        {
                          *v194 = v433 * *v194;
                          ++v194;
                          --v193;
                        }

                        while (v193);
LABEL_228:

LABEL_229:
                        v75 = *(v69 + 16);

                        v195 = v69;
                        if (!v75)
                        {
                          goto LABEL_239;
                        }

                        v195 = v69;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
LABEL_231:
                          if (v75 > *(v195 + 2))
                          {
                            __break(1u);
                            goto LABEL_670;
                          }

                          if (v75 > 3)
                          {
                            v196 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                            v197 = (v195 + 48);
                            v198 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                            do
                            {
                              v199 = vmulq_n_f64(*v197, v437);
                              v197[-1] = vmulq_n_f64(v197[-1], v437);
                              *v197 = v199;
                              v197 += 2;
                              v198 -= 4;
                            }

                            while (v198);
                            if (v75 == v196)
                            {
LABEL_239:
                              sub_188D85564(v195, v63);
                              v4 = v202;

                              v75 = *(v4 + 16);
                              v429 = v61;
                              if (!v75)
                              {
                                v66 = v61;
                                v203 = v4;
                                goto LABEL_251;
                              }

                              v203 = v4;
                              if (swift_isUniquelyReferenced_nonNull_native())
                              {
LABEL_241:
                                if (v75 > *(v203 + 16))
                                {
                                  __break(1u);
                                  goto LABEL_672;
                                }

                                if (v75 > 3)
                                {
                                  v204 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                                  v205 = (v203 + 48);
                                  v206 = v75 & 0x7FFFFFFFFFFFFFFCLL;
                                  do
                                  {
                                    v207 = vmulq_n_f64(*v205, v438);
                                    v205[-1] = vmulq_n_f64(v205[-1], v438);
                                    *v205 = v207;
                                    v205 += 2;
                                    v206 -= 4;
                                  }

                                  while (v206);
                                  v66 = v61;
                                  if (v75 == v204)
                                  {
                                    goto LABEL_250;
                                  }
                                }

                                else
                                {
                                  v66 = v61;
                                  v204 = 0;
                                }

                                v208 = v75 - v204;
                                v209 = (v203 + 8 * v204 + 32);
                                do
                                {
                                  *v209 = *v209 * v438;
                                  ++v209;
                                  --v208;
                                }

                                while (v208);
LABEL_250:

LABEL_251:
                                sub_188D85564(v69, v203);
                                v61 = v210;

                                v203 = *(v61 + 16);
                                if (!v203)
                                {
                                  goto LABEL_475;
                                }

                                v211 = v61;
                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
                                  v212 = *(v61 + 16);
                                  if (v212)
                                  {
                                    goto LABEL_254;
                                  }

                                  goto LABEL_673;
                                }

LABEL_672:
                                v211 = sub_188D75E50(v61);
                                v212 = *(v211 + 2);
                                if (v212)
                                {
LABEL_254:
                                  if (v212 > v203 - 1)
                                  {
                                    if (swift_isUniquelyReferenced_nonNull_native())
                                    {
                                      goto LABEL_256;
                                    }

                                    goto LABEL_678;
                                  }

                                  goto LABEL_676;
                                }

LABEL_673:
                                __break(1u);
                                goto LABEL_674;
                              }

LABEL_670:
                              v203 = sub_188D75E50(v4);
                              goto LABEL_241;
                            }
                          }

                          else
                          {
                            v196 = 0;
                          }

                          v200 = v75 - v196;
                          v201 = 8 * v196 + 32;
                          do
                          {
                            *&v195[v201] = v437 * *&v195[v201];
                            v201 += 8;
                            --v200;
                          }

                          while (v200);
                          goto LABEL_239;
                        }

LABEL_668:
                        v195 = sub_188D75E50(v69);
                        goto LABEL_231;
                      }

LABEL_664:
                      v188 = sub_188D75E50(v4);
                      goto LABEL_219;
                    }
                  }

                  else
                  {
                    v181 = 0;
                  }

                  v185 = v75 - v181;
                  v186 = 8 * v181 + 32;
                  do
                  {
                    *&v180[v186] = v437 * *&v180[v186];
                    v186 += 8;
                    --v185;
                  }

                  while (v185);
                  goto LABEL_217;
                }

LABEL_660:
                v180 = sub_188D75E50(v69);
                goto LABEL_209;
              }

LABEL_658:
              *&v173 = COERCE_DOUBLE(sub_188D75E50(v4));
              goto LABEL_197;
            }

LABEL_654:
            v76 = sub_188D75E50(v4);
            goto LABEL_185;
          }
        }

        else
        {
          v79 = 0;
        }

        v162 = v75 - v79;
        v163 = 8 * v79 + 32;
        do
        {
          *&v78[v163] = v437 * *&v78[v163];
          v163 += 8;
          --v162;
        }

        while (v162);
        goto LABEL_183;
      }
    }

    else
    {
      v431 = sqrt(v71 * v71 - v70 * v70);
      v6 = v431 * v438;
      v432 = cosh(v431 * v438);
      v75 = *(v69 + 16);

      v76 = v69;
      if (!v75)
      {
        goto LABEL_177;
      }

      v76 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_188D75E50(v69);
      }

      if (v75 <= *(v76 + 2))
      {
        if (v75 > 3)
        {
          v77 = v75 & 0x7FFFFFFFFFFFFFFCLL;
          v153 = (v76 + 48);
          v154 = v75 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v155 = vmulq_n_f64(*v153, v432);
            v153[-1] = vmulq_n_f64(v153[-1], v432);
            *v153 = v155;
            v153 += 2;
            v154 -= 4;
          }

          while (v154);
          if (v75 == v77)
          {
LABEL_171:
            v75 = *(v69 + 16);
            if (v75)
            {

              v2 = v69;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                *&v2 = COERCE_DOUBLE(sub_188D75E50(v69));
              }

              if (v75 > *(v2 + 2))
              {
                __break(1u);
                goto LABEL_704;
              }

              if (v75 > 3)
              {
                v158 = v75 & 0xFFFFFFFFFFFFFFFCLL;
                v290 = (v2 + 48);
                v291 = v75 & 0xFFFFFFFFFFFFFFFCLL;
                do
                {
                  v292 = vmulq_n_f64(*v290, v437);
                  v290[-1] = vmulq_n_f64(v290[-1], v437);
                  *v290 = v292;
                  v290 += 2;
                  v291 -= 4;
                }

                while (v291);
                if (v75 == v158)
                {
LABEL_377:
                  sub_188D85564(v2, v63);
                  v4 = v295;

                  v75 = *(v4 + 16);
                  v433 = 1.0 / v431;
                  if (!v75)
                  {
                    v430 = sinh(v6);
                    goto LABEL_400;
                  }

                  v2 = v4;
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    goto LABEL_379;
                  }

                  goto LABEL_656;
                }
              }

              else
              {
                v158 = 0;
              }

              v293 = v75 - v158;
              v294 = 8 * v158 + 32;
              do
              {
                *&v2[v294] = v437 * *&v2[v294];
                v294 += 8;
                --v293;
              }

              while (v293);
              goto LABEL_377;
            }

LABEL_177:

            v2 = v69;
            goto LABEL_377;
          }
        }

        else
        {
          v77 = 0;
        }

        v156 = v75 - v77;
        v157 = &v76[8 * v77 + 32];
        do
        {
          *v157 = v432 * *v157;
          ++v157;
          --v156;
        }

        while (v156);
        goto LABEL_171;
      }

      __break(1u);
    }

    v78 = sub_188D75E50(v69);
    goto LABEL_48;
  }

  v431 = sqrt(v70 * v70 - v71 * v71);
  v6 = v431 * v438;
  v432 = cos(v431 * v438);
  v72 = *(v69 + 16);

  v73 = v69;
  if (!v72)
  {
    goto LABEL_61;
  }

  v73 = v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_596;
  }

  while (2)
  {
    if (v72 > *(v73 + 2))
    {
      __break(1u);
LABEL_598:
      *&v85 = COERCE_DOUBLE(sub_188D75E50(v4));
      goto LABEL_69;
    }

    if (v72 <= 3)
    {
      v74 = 0;
LABEL_54:
      v83 = v72 - v74;
      v84 = &v73[8 * v74 + 32];
      do
      {
        *v84 = v432 * *v84;
        ++v84;
        --v83;
      }

      while (v83);
      goto LABEL_56;
    }

    v74 = v72 & 0x7FFFFFFFFFFFFFFCLL;
    v80 = (v73 + 48);
    v81 = v72 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v82 = vmulq_n_f64(*v80, v432);
      v80[-1] = vmulq_n_f64(v80[-1], v432);
      *v80 = v82;
      v80 += 2;
      v81 -= 4;
    }

    while (v81);
    if (v72 != v74)
    {
      goto LABEL_54;
    }

LABEL_56:
    v75 = *(v69 + 16);
    if (!v75)
    {
LABEL_61:

      v85 = v69;
      goto LABEL_67;
    }

    v85 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_630:
      *&v85 = COERCE_DOUBLE(sub_188D75E50(v69));
    }

    if (v75 > *(v85 + 2))
    {
      __break(1u);
LABEL_632:
      *&v4 = COERCE_DOUBLE(sub_188D75E50(v85));
      goto LABEL_80;
    }

    if (v75 <= 3)
    {
      v86 = 0;
LABEL_65:
      v90 = v75 - v86;
      v91 = 8 * v86 + 32;
      do
      {
        *&v85[v91] = v437 * *&v85[v91];
        v91 += 8;
        --v90;
      }

      while (v90);
      goto LABEL_67;
    }

    v86 = v75 & 0xFFFFFFFFFFFFFFFCLL;
    v87 = (v85 + 48);
    v88 = v75 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v89 = vmulq_n_f64(*v87, v437);
      v87[-1] = vmulq_n_f64(v87[-1], v437);
      *v87 = v89;
      v87 += 2;
      v88 -= 4;
    }

    while (v88);
    if (v75 != v86)
    {
      goto LABEL_65;
    }

LABEL_67:
    sub_188D85564(v85, v63);
    v4 = v92;

    v72 = *(v4 + 16);
    v433 = 1.0 / v431;
    if (!v72)
    {
      v430 = sin(v6);
      goto LABEL_90;
    }

    v85 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_598;
    }

LABEL_69:
    if (v72 > *(v85 + 2))
    {
      __break(1u);
LABEL_600:
      *&v107 = COERCE_DOUBLE(sub_188D75E50(v85));
      goto LABEL_92;
    }

    if (v72 <= 3)
    {
      v93 = 0;
LABEL_76:
      v97 = v72 - v93;
      v98 = &v85[8 * v93 + 32];
      do
      {
        *v98 = v433 * *v98;
        ++v98;
        --v97;
      }

      while (v97);
      goto LABEL_78;
    }

    v93 = v72 & 0x7FFFFFFFFFFFFFFCLL;
    v94 = (v85 + 48);
    v95 = v72 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v96 = vmulq_n_f64(*v94, v433);
      v94[-1] = vmulq_n_f64(v94[-1], v433);
      *v94 = v96;
      v94 += 2;
      v95 -= 4;
    }

    while (v95);
    if (v72 != v93)
    {
      goto LABEL_76;
    }

LABEL_78:

    v75 = *(v85 + 2);
    v430 = sin(v6);
    if (!v75)
    {
      v4 = v85;
      goto LABEL_90;
    }

    v4 = v85;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_632;
    }

LABEL_80:
    if (v75 > *(v4 + 16))
    {
      __break(1u);
LABEL_634:
      *&v85 = COERCE_DOUBLE(sub_188D75E50(v4));
      goto LABEL_114;
    }

    if (v75 > 3)
    {
      v99 = v75 & 0x7FFFFFFFFFFFFFFCLL;
      v100 = (v4 + 48);
      v101 = v75 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v102 = vmulq_n_f64(*v100, v430);
        v100[-1] = vmulq_n_f64(v100[-1], v430);
        *v100 = v102;
        v100 += 2;
        v101 -= 4;
      }

      while (v101);
      if (v75 == v99)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v99 = 0;
    }

    v103 = v75 - v99;
    v104 = (v4 + 8 * v99 + 32);
    do
    {
      *v104 = v430 * *v104;
      ++v104;
      --v103;
    }

    while (v103);
LABEL_89:

LABEL_90:
    sub_188D85564(v73, v4);
    v85 = v105;

    v438 = exp(-(v437 * v438));
    v72 = *(v85 + 2);
    if (!v72)
    {
      v434 = v85;
      goto LABEL_102;
    }

    v106 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v85;
    if ((v106 & 1) == 0)
    {
      goto LABEL_600;
    }

LABEL_92:
    if (v72 > *(v107 + 2))
    {
      __break(1u);
LABEL_602:
      *&v4 = COERCE_DOUBLE(sub_188D75E50(v69));
      goto LABEL_104;
    }

    if (v72 > 3)
    {
      v108 = v72 & 0x7FFFFFFFFFFFFFFCLL;
      v109 = (v107 + 48);
      v110 = v72 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v111 = vmulq_n_f64(*v109, v438);
        v109[-1] = vmulq_n_f64(v109[-1], v438);
        *v109 = v111;
        v109 += 2;
        v110 -= 4;
      }

      while (v110);
      if (v72 == v108)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v108 = 0;
    }

    v112 = v72 - v108;
    v113 = &v107[8 * v108 + 32];
    do
    {
      *v113 = v438 * *v113;
      ++v113;
      --v112;
    }

    while (v112);
LABEL_101:
    v434 = v107;

LABEL_102:
    v72 = *(v69 + 16);

    v85 = v69;
    if (!v72)
    {
      goto LABEL_118;
    }

    v4 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_602;
    }

LABEL_104:
    if (v72 > *(v4 + 16))
    {
      __break(1u);
      goto LABEL_604;
    }

    v114 = -v430;
    if (v72 <= 3)
    {
      v115 = 0;
LABEL_110:
      v119 = v72 - v115;
      v120 = (v4 + 8 * v115 + 32);
      do
      {
        *v120 = *v120 * v114;
        ++v120;
        --v119;
      }

      while (v119);
      goto LABEL_112;
    }

    v115 = v72 & 0x7FFFFFFFFFFFFFFCLL;
    v116 = (v4 + 48);
    v117 = v72 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v118 = vmulq_n_f64(*v116, v114);
      v116[-1] = vmulq_n_f64(v116[-1], v114);
      *v116 = v118;
      v116 += 2;
      v117 -= 4;
    }

    while (v117);
    if (v72 != v115)
    {
      goto LABEL_110;
    }

LABEL_112:
    v75 = *(v4 + 16);
    if (!v75)
    {
      v85 = v4;
      v75 = *(v69 + 16);
      if (v75)
      {
        goto LABEL_125;
      }

      goto LABEL_118;
    }

    v85 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_634;
    }

LABEL_114:
    if (v75 <= *(v85 + 2))
    {
      if (v75 > 3)
      {
        v121 = v75 & 0x7FFFFFFFFFFFFFFCLL;
        v123 = (v85 + 48);
        v124 = v75 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v125 = vmulq_n_f64(*v123, v431);
          v123[-1] = vmulq_n_f64(v123[-1], v431);
          *v123 = v125;
          v123 += 2;
          v124 -= 4;
        }

        while (v124);
        if (v75 == v121)
        {
LABEL_124:

          v75 = *(v69 + 16);
          if (v75)
          {
LABEL_125:

            v122 = v69;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_126;
            }

            goto LABEL_636;
          }

LABEL_118:

          v122 = v69;
          goto LABEL_134;
        }
      }

      else
      {
        v121 = 0;
      }

      v126 = v75 - v121;
      v127 = &v85[8 * v121 + 32];
      do
      {
        *v127 = v431 * *v127;
        ++v127;
        --v126;
      }

      while (v126);
      goto LABEL_124;
    }

    __break(1u);
LABEL_636:
    v122 = sub_188D75E50(v69);
LABEL_126:
    if (v75 > *(v122 + 2))
    {
      __break(1u);
      goto LABEL_638;
    }

    if (v75 <= 3)
    {
      v128 = 0;
LABEL_132:
      v132 = v75 - v128;
      v133 = 8 * v128 + 32;
      do
      {
        *&v122[v133] = v437 * *&v122[v133];
        v133 += 8;
        --v132;
      }

      while (v132);
      goto LABEL_134;
    }

    v128 = v75 & 0xFFFFFFFFFFFFFFFCLL;
    v129 = (v122 + 48);
    v130 = v75 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v131 = vmulq_n_f64(*v129, v437);
      v129[-1] = vmulq_n_f64(v129[-1], v437);
      *v129 = v131;
      v129 += 2;
      v130 -= 4;
    }

    while (v130);
    if (v75 != v128)
    {
      goto LABEL_132;
    }

LABEL_134:
    sub_188D85564(v122, v63);
    v61 = v134;

    v72 = *(v61 + 16);
    if (!v72)
    {
      goto LABEL_277;
    }

    v122 = v61;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v135 = *(v61 + 16);
      if (v135)
      {
        goto LABEL_137;
      }

LABEL_605:
      __break(1u);
      goto LABEL_606;
    }

LABEL_604:
    v122 = sub_188D75E50(v61);
    v135 = *(v122 + 2);
    if (!v135)
    {
      goto LABEL_605;
    }

LABEL_137:
    if (v135 > v72 - 1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_139;
      }

      goto LABEL_607;
    }

LABEL_606:
    __break(1u);
LABEL_607:
    v122 = sub_188D75E50(v122);
LABEL_139:
    if (v72 <= 3)
    {
      v136 = 0;
LABEL_144:
      v140 = v72 - v136;
      v141 = &v122[8 * v136 + 32];
      do
      {
        *v141 = v433 * *v141;
        ++v141;
        --v140;
      }

      while (v140);
      goto LABEL_146;
    }

    v136 = v72 & 0x7FFFFFFFFFFFFFFCLL;
    v137 = (v122 + 48);
    v138 = v72 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v139 = vmulq_n_f64(*v137, v433);
      v137[-1] = vmulq_n_f64(v137[-1], v433);
      *v137 = v139;
      v137 += 2;
      v138 -= 4;
    }

    while (v138);
    if (v72 != v136)
    {
      goto LABEL_144;
    }

LABEL_146:

    v75 = *(v122 + 2);
    if (!v75)
    {
      v61 = v122;
      goto LABEL_277;
    }

    v142 = v122;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v143 = *(v122 + 2);
      if (v143)
      {
        goto LABEL_149;
      }

LABEL_639:
      __break(1u);
      goto LABEL_640;
    }

LABEL_638:
    v142 = sub_188D75E50(v122);
    v143 = *(v142 + 2);
    if (!v143)
    {
      goto LABEL_639;
    }

LABEL_149:
    if (v143 > v75 - 1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_151;
      }

      goto LABEL_641;
    }

LABEL_640:
    __break(1u);
LABEL_641:
    v142 = sub_188D75E50(v142);
LABEL_151:
    if (v75 <= 3)
    {
      v144 = 0;
LABEL_157:
      v148 = v75 - v144;
      v149 = &v142[8 * v144 + 32];
      do
      {
        *v149 = v432 * *v149;
        ++v149;
        --v148;
      }

      while (v148);
      goto LABEL_159;
    }

    v144 = v75 & 0x7FFFFFFFFFFFFFFCLL;
    v145 = (v142 + 48);
    v146 = v75 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v147 = vmulq_n_f64(*v145, v432);
      v145[-1] = vmulq_n_f64(v145[-1], v432);
      *v145 = v147;
      v145 += 2;
      v146 -= 4;
    }

    while (v146);
    if (v75 != v144)
    {
      goto LABEL_157;
    }

LABEL_159:

    v150 = *(v142 + 2);
    if (!v150)
    {
      v61 = v142;
      goto LABEL_277;
    }

    v61 = v142;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v151 = *(v142 + 2);
      if (v151)
      {
        goto LABEL_162;
      }

LABEL_700:
      __break(1u);
      goto LABEL_701;
    }

    v61 = sub_188D75E50(v142);
    v151 = *(v61 + 16);
    if (!v151)
    {
      goto LABEL_700;
    }

LABEL_162:
    if (v151 > v150 - 1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_164;
      }

      goto LABEL_702;
    }

LABEL_701:
    __break(1u);
LABEL_702:
    v61 = sub_188D75E50(v61);
LABEL_164:
    if (v150 > 3)
    {
      v152 = v150 & 0x7FFFFFFFFFFFFFFCLL;
      v223 = (v61 + 48);
      v224 = v150 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v225 = vmulq_n_f64(*v223, v431);
        v223[-1] = vmulq_n_f64(v223[-1], v431);
        *v223 = v225;
        v223 += 2;
        v224 -= 4;
      }

      while (v224);
      if (v150 == v152)
      {
        goto LABEL_276;
      }
    }

    else
    {
      v152 = 0;
    }

    v226 = v150 - v152;
    v227 = (v61 + 8 * v152 + 32);
    do
    {
      *v227 = v431 * *v227;
      ++v227;
      --v226;
    }

    while (v226);
LABEL_276:

LABEL_277:
    sub_188D85564(v85, v61);
    v229 = v228;

    v72 = *(v229 + 16);
    if (!v72)
    {
      v230 = v229;
      goto LABEL_291;
    }

    v230 = v229;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v231 = *(v229 + 16);
      if (v231)
      {
        goto LABEL_280;
      }

LABEL_609:
      __break(1u);
      goto LABEL_610;
    }

    v230 = sub_188D75E50(v229);
    v231 = *(v230 + 2);
    if (!v231)
    {
      goto LABEL_609;
    }

LABEL_280:
    if (v231 <= v72 - 1)
    {
LABEL_610:
      __break(1u);
      goto LABEL_611;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_613;
    }

    while (1)
    {
      if (v72 > 3)
      {
        v232 = v72 & 0x7FFFFFFFFFFFFFFCLL;
        v233 = (v230 + 48);
        v234 = v72 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v235 = vmulq_n_f64(*v233, v438);
          v233[-1] = vmulq_n_f64(v233[-1], v438);
          *v233 = v235;
          v233 += 2;
          v234 -= 4;
        }

        while (v234);
        if (v72 == v232)
        {
          goto LABEL_290;
        }
      }

      else
      {
        v232 = 0;
      }

      v236 = v72 - v232;
      v237 = &v230[8 * v232 + 32];
      do
      {
        *v237 = v438 * *v237;
        ++v237;
        --v236;
      }

      while (v236);
LABEL_290:

LABEL_291:
      v229 = *(v69 + 16);

      v238 = v69;
      if (!v229)
      {
        goto LABEL_311;
      }

      v238 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        break;
      }

      v239 = *(v69 + 16);
      if (v239)
      {
        goto LABEL_294;
      }

LABEL_612:
      __break(1u);
LABEL_613:
      v230 = sub_188D75E50(v230);
    }

LABEL_611:
    v238 = sub_188D75E50(v69);
    v239 = *(v238 + 2);
    if (!v239)
    {
      goto LABEL_612;
    }

LABEL_294:
    if (v239 <= v229 - 1)
    {
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_296;
    }

    v238 = sub_188D75E50(v238);
LABEL_296:
    if (v229 <= 3)
    {
      v240 = 0;
      goto LABEL_301;
    }

    v240 = v229 & 0x7FFFFFFFFFFFFFFCLL;
    v241 = (v238 + 48);
    v242 = v229 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v243 = vmulq_n_f64(*v241, v432);
      v241[-1] = vmulq_n_f64(v241[-1], v432);
      *v241 = v243;
      v241 += 2;
      v242 -= 4;
    }

    while (v242);
    if (v229 != v240)
    {
LABEL_301:
      v244 = v229 - v240;
      v245 = &v238[8 * v240 + 32];
      do
      {
        *v245 = v432 * *v245;
        ++v245;
        --v244;
      }

      while (v244);
    }

    v246 = *(v69 + 16);
    if (v246)
    {

      v247 = v69;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v248 = *(v69 + 16);
        if (v248)
        {
          goto LABEL_306;
        }
      }

      else
      {
        v247 = sub_188D75E50(v69);
        v248 = *(v247 + 2);
        if (v248)
        {
LABEL_306:
          if (v246 >= 1)
          {
            if (v248 > v246 - 1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                goto LABEL_648;
              }

              goto LABEL_309;
            }

            goto LABEL_645;
          }

LABEL_644:
          __break(1u);
LABEL_645:
          __break(1u);
          goto LABEL_646;
        }
      }

      __break(1u);
      goto LABEL_644;
    }

LABEL_311:

    v247 = v69;
    while (2)
    {
      sub_188D85564(v247, v63);
      v246 = v255;

      v72 = *(v246 + 16);
      if (!v72)
      {
        goto LABEL_343;
      }

      v247 = v246;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v256 = *(v246 + 16);
        if (v256)
        {
          goto LABEL_320;
        }

LABEL_617:
        __break(1u);
        goto LABEL_618;
      }

      v247 = sub_188D75E50(v246);
      v256 = *(v247 + 2);
      if (!v256)
      {
        goto LABEL_617;
      }

LABEL_320:
      if (v256 <= v72 - 1)
      {
LABEL_618:
        __break(1u);
      }

      else if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_322;
      }

      v247 = sub_188D75E50(v247);
LABEL_322:
      if (v72 <= 3)
      {
        v257 = 0;
        goto LABEL_327;
      }

      v257 = v72 & 0x7FFFFFFFFFFFFFFCLL;
      v258 = (v247 + 48);
      v259 = v72 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v260 = vmulq_n_f64(*v258, v433);
        v258[-1] = vmulq_n_f64(v258[-1], v433);
        *v258 = v260;
        v258 += 2;
        v259 -= 4;
      }

      while (v259);
      if (v72 != v257)
      {
LABEL_327:
        v261 = v72 - v257;
        v262 = &v247[8 * v257 + 32];
        do
        {
          *v262 = v433 * *v262;
          ++v262;
          --v261;
        }

        while (v261);
      }

      v72 = *(v247 + 2);
      if (!v72)
      {
        v246 = v247;
        goto LABEL_343;
      }

      v246 = v247;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v263 = *(v247 + 2);
        if (v263)
        {
          break;
        }

        goto LABEL_647;
      }

LABEL_646:
      v246 = sub_188D75E50(v247);
      v263 = *(v246 + 16);
      if (!v263)
      {
LABEL_647:
        __break(1u);
LABEL_648:
        v247 = sub_188D75E50(v247);
LABEL_309:
        if (v246 <= 3)
        {
          v249 = 0;
LABEL_315:
          v253 = v246 - v249;
          v254 = 8 * v249 + 32;
          do
          {
            *&v247[v254] = v437 * *&v247[v254];
            v254 += 8;
            --v253;
          }

          while (v253);
          continue;
        }

        v249 = v246 & 0x7FFFFFFFFFFFFFFCLL;
        v250 = (v247 + 48);
        v251 = v246 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v252 = vmulq_n_f64(*v250, v437);
          v250[-1] = vmulq_n_f64(v250[-1], v437);
          *v250 = v252;
          v250 += 2;
          v251 -= 4;
        }

        while (v251);
        if (v246 != v249)
        {
          goto LABEL_315;
        }

        continue;
      }

      break;
    }

    if (v263 <= v72 - 1)
    {
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_334;
    }

    v246 = sub_188D75E50(v246);
LABEL_334:
    if (v72 > 3)
    {
      v264 = v72 & 0x7FFFFFFFFFFFFFFCLL;
      v265 = (v246 + 48);
      v266 = v72 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v267 = vmulq_n_f64(*v265, v430);
        v265[-1] = vmulq_n_f64(v265[-1], v430);
        *v265 = v267;
        v265 += 2;
        v266 -= 4;
      }

      while (v266);
      if (v72 == v264)
      {
        goto LABEL_342;
      }
    }

    else
    {
      v264 = 0;
    }

    v268 = v72 - v264;
    v269 = (v246 + 8 * v264 + 32);
    do
    {
      *v269 = v430 * *v269;
      ++v269;
      --v268;
    }

    while (v268);
LABEL_342:

LABEL_343:
    sub_188D85564(v238, v246);
    v271 = v270;

    v61 = *(v271 + 16);
    if (!v61)
    {
      v4 = v271;
      goto LABEL_357;
    }

    v4 = v271;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v272 = *(v271 + 16);
      if (!v272)
      {
        goto LABEL_621;
      }
    }

    else
    {
      *&v4 = COERCE_DOUBLE(sub_188D75E50(v271));
      v272 = *(v4 + 16);
      if (!v272)
      {
LABEL_621:
        __break(1u);
        goto LABEL_622;
      }
    }

    if (v272 > v61 - 1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_348;
      }

      goto LABEL_623;
    }

LABEL_622:
    __break(1u);
LABEL_623:
    *&v4 = COERCE_DOUBLE(sub_188D75E50(v4));
LABEL_348:
    v273 = -v437;
    if (v61 > 3)
    {
      v274 = v61 & 0x7FFFFFFFFFFFFFFCLL;
      v275 = (v4 + 48);
      v276 = v61 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v277 = vmulq_n_f64(*v275, v273);
        v275[-1] = vmulq_n_f64(v275[-1], v273);
        *v275 = v277;
        v275 += 2;
        v276 -= 4;
      }

      while (v276);
      if (v61 == v274)
      {
        goto LABEL_356;
      }
    }

    else
    {
      v274 = 0;
    }

    v278 = v61 - v274;
    v279 = (v4 + 8 * v274 + 32);
    do
    {
      *v279 = *v279 * v273;
      ++v279;
      --v278;
    }

    while (v278);
LABEL_356:

LABEL_357:
    v280 = sub_188D7F314(v4);
    if (v280 < 0)
    {
      __break(1u);
LABEL_596:
      v73 = sub_188D75E50(v69);
      continue;
    }

    break;
  }

  v281 = v280;
  if (!v280)
  {
    goto LABEL_584;
  }

  v282 = v4;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v283 = *(v4 + 16);
    if (v283)
    {
      goto LABEL_361;
    }

LABEL_625:
    __break(1u);
    goto LABEL_626;
  }

  v282 = sub_188D75E50(v4);
  v283 = *(v282 + 2);
  if (!v283)
  {
    goto LABEL_625;
  }

LABEL_361:
  if (v283 <= v281 - 1)
  {
LABEL_626:
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_363;
  }

  v282 = sub_188D75E50(v282);
LABEL_363:
  if (v281 <= 3)
  {
    v284 = 0;
    goto LABEL_368;
  }

  v284 = v281 & 0x7FFFFFFFFFFFFFFCLL;
  v285 = (v282 + 48);
  v286 = v281 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v287 = vmulq_n_f64(*v285, v438);
    v285[-1] = vmulq_n_f64(v285[-1], v438);
    *v285 = v287;
    v285 += 2;
    v286 -= 4;
  }

  while (v286);
  if (v281 != v284)
  {
LABEL_368:
    v288 = v281 - v284;
    v289 = &v282[8 * v284 + 32];
    do
    {
      *v289 = v438 * *v289;
      ++v289;
      --v288;
    }

    while (v288);
  }

LABEL_590:

LABEL_591:
  sub_188D85564(v230, v282);
  v4 = v426;

LABEL_592:
  sub_188D85564(v434, v66);
  v12 = v427;

LABEL_593:

  *(v1 + 160) = *&v4;
  *(v1 + 168) = v12;
  *(v1 + 176) = v66;
  *(v1 + 184) = v439;
  return v12;
}

void sub_188D7EBC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v3 <= v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    v7 = sub_18A4A75D8();
    *(v7 + 16) = v4;
    bzero((v7 + 32), 8 * v4);
    v8 = 0;
    v9 = a2 + 32;
    do
    {
      if (v8 >= v2)
      {
        if (v8 >= v3)
        {
          __break(1u);
          return;
        }

        v10 = -*(v9 + 8 * v8);
      }

      else
      {
        v10 = *(a1 + 32 + 8 * v8);
        if (v8 < v3)
        {
          v10 = v10 - *(v9 + 8 * v8);
        }
      }

      *(v7 + 8 * v8++ + 32) = v10;
    }

    while (v4 != v8);
  }
}

uint64_t sub_188D7EC98(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *v1;
    v5 = result + 32;
    while (1)
    {
      v6 = *(v4 + 16);
      if (v3 >= v6)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_188D7EDB0(0, v6 + 1, 1, v4);
          v4 = result;
        }

        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          result = sub_188D7EDB0((v8 > 1), v9 + 1, 1, v4);
          v4 = result;
        }

        *(v4 + 16) = v9 + 1;
        *(v4 + 8 * v9 + 32) = 0;
      }

      else
      {
        v7 = *(v5 + 8 * v3);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_188D75E50(v4);
          v4 = result;
        }

        if (v3 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        *(v4 + 8 * v3 + 32) = v7 * *(v4 + 8 * v3 + 32);
      }

      if (v2 == ++v3)
      {
        *v1 = v4;
        return result;
      }
    }
  }

  return result;
}

char *sub_188D7EDB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934210);
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

void sub_188D7EFA0(double a1)
{
  v2 = sub_18A4A6E18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A6E58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong isDismissTransition];
    v13 = a1 > 0.5;
    if (v12)
    {
      v13 = a1 < 0.9;
    }

    if (v13)
    {
      v14 = v12 ^ 1;
      [v11 setAccessoryAnimationBlock_];
      sub_188A34624(0, &qword_1ED490540);
      v20 = sub_18A4A7A68();
      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      *(v15 + 24) = v14;
      aBlock[4] = sub_18921C350;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A8F0;
      aBlock[3] = &block_descriptor_10_4;
      v16 = _Block_copy(aBlock);
      v17 = v11;
      sub_18A4A6E38();
      v21 = MEMORY[0x1E69E7CC0];
      sub_188D7609C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
      sub_188BA3728();
      sub_18A4A7EB8();
      v18 = v20;
      MEMORY[0x18CFE29D0](0, v9, v5, v16);
      _Block_release(v16);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }

    else
    {
    }
  }
}

uint64_t sub_188D7F2C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

void sub_188D7F46C(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    return;
  }

  v45 = v3;
  [a1 locationInView_];
  v5 = v4;
  v7 = v6;
  [v45 bounds];
  Width = CGRectGetWidth(v53);
  if (Width < 0.0)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    return;
  }

  if ((*&Width & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = Width;
  }

  if ((~*&Width & 0x7FF0000000000000) != 0)
  {
    v9 = Width;
  }

  if (v5 > Width)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if ((*&v10 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v10;
  }

  if ((~*&v10 & 0x7FF0000000000000) != 0)
  {
    v11 = v10;
  }

  if (v10 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  [v45 bounds];
  Height = CGRectGetHeight(v54);
  if (Height < 0.0)
  {
    goto LABEL_52;
  }

  v14 = v7;
  if (v7 > Height)
  {
    v14 = (*&Height & 0xFFFFFFFFFFFFFLL) != 0 ? v7 : Height;
    if ((~*&Height & 0x7FF0000000000000) != 0)
    {
      v14 = Height;
    }
  }

  if ((*&v14 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v14;
  }

  if ((~*&v14 & 0x7FF0000000000000) != 0)
  {
    v15 = v14;
  }

  if (v14 >= 0.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = [a1 state];
  if (v17 != 1)
  {
    if (v17 == 2)
    {
      if ([v1 resolvedActivationMode] == 2)
      {
        [a1 translationInView_];
        v19 = v18;
        v21 = v20;

        [v1 setTranslation_];
        [v1 initialTouchLocation];
        [v1 setInternalTranslation_];
        [v1 initialTouchLocation];
        v26 = UIDistanceBetweenPoints(v5, v7, v24, v25);
        v27 = sub_188EA6D8C();
        v28 = *&v27[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowDissipationDistance];

        [v1 moveGlowTo:v28 < v26 shouldDissipate:{v12, v16}];
        if ([v1 preferredVariant] == 5)
        {
          v29 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
          [v29 setTrackingDampingRatio_];
          [v29 setTrackingResponse_];
          v30 = *&v1[OBJC_IVAR____UIFlexInteraction_animationContext];
          os_unfair_lock_lock((v30 + 48));
          v31 = *(v30 + 33);
          os_unfair_lock_unlock((v30 + 48));
          v32 = objc_opt_self();
          v33 = swift_allocObject();
          swift_unknownObjectUnownedInit();
          v50 = sub_188EA99F4;
          v51 = v33;
          aBlock = MEMORY[0x1E69E9820];
          v47 = 1107296256;
          v48 = sub_188A4A8F0;
          v49 = &block_descriptor_149_0;
          v34 = _Block_copy(&aBlock);
          v35 = v29;

          v50 = signpost_c2_entryLock_start;
          v51 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v47 = 1107296256;
          v48 = sub_188C3DD6C;
          v49 = &block_descriptor_152;
          v36 = _Block_copy(&aBlock);
          [v32 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v36);
          _Block_release(v34);

          return;
        }
      }

      else
      {
      }

      goto LABEL_48;
    }

    [v1 setTranslation_];
    v42 = objc_opt_self();
    v43 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v50 = sub_188EA99EC;
    v51 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_188A4A8F0;
    v49 = &block_descriptor_145;
    v44 = _Block_copy(&aBlock);

    [v42 _performWithoutRetargetingAnimations_];
    _Block_release(v44);
    if ([v1 resolvedActivationMode] == 2)
    {
      [v1 deactivate];
    }

    [v1 hideGlow];
LABEL_45:

    return;
  }

  if ([v1 resolvedActivationMode] == 2)
  {
    [v1 activateIfPermitted];
    v37 = *&v1[OBJC_IVAR____UIFlexInteraction_animationContext];
    os_unfair_lock_lock((v37 + 48));
    v38 = *(v37 + 33);
    os_unfair_lock_unlock((v37 + 48));
    if (v38 == 1)
    {
      v39 = objc_opt_self();
      v40 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v50 = sub_188EA99FC;
      v51 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_188A4A8F0;
      v49 = &block_descriptor_156;
      v41 = _Block_copy(&aBlock);

      [v39 _performWithoutRetargetingAnimations_];
      _Block_release(v41);
      [v1 setInitialTouchLocation_];
      [v1 showGlowAt_];
      goto LABEL_45;
    }
  }

LABEL_48:
}

uint64_t sub_188D7FB2C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188D7FFB8()
{
  result = *(*(v0 + 16) + OBJC_IVAR____UIFlexInteractionGlowContainerView_littleGlow);
  if (result)
  {
    return [result setCenter_];
  }

  return result;
}

void sub_188D8002C()
{
  v1 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.5];
  v2 = [v0 glowCleanupCompletion];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = [v0 glowContainer];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v32 = sub_188EA97C4;
  v33 = v5;
  v28 = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_188A4A8F0;
  v31 = &block_descriptor_39_0;
  v6 = _Block_copy(&v28);

  [v2 addNonIncrementingCompletion_];
  _Block_release(v6);

  v7 = [v0 glowCleanupCompletion];
  [v7 increment];

  v8 = objc_opt_self();
  v9 = v1;
  v10 = [v0 glowContainer];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v32 = sub_188EA97CC;
  v33 = v11;
  v28 = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_188A4A8F0;
  v31 = &block_descriptor_45;
  v12 = _Block_copy(&v28);

  v13 = [v0 glowCleanupCompletion];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v32 = sub_188EA97F0;
  v33 = v14;
  v28 = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_188C3DD6C;
  v31 = &block_descriptor_51;
  v15 = _Block_copy(&v28);

  [v8 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v15);
  _Block_release(v12);

  v16 = [v0 glowContainer];
  v17 = *&v16[OBJC_IVAR____UIFlexInteractionGlowContainerView_littleGlow];
  v18 = v17;

  if (v17)
  {
    v19 = [v0 glowCleanupCompletion];
    [v19 increment];

    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v32 = sub_188EA9800;
    v33 = v20;
    v28 = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_188A4A8F0;
    v31 = &block_descriptor_57;
    v21 = _Block_copy(&v28);
    v22 = v9;
    v23 = v18;

    v24 = [v0 glowCleanupCompletion];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    v32 = sub_188EA9808;
    v33 = v25;
    v28 = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_188C3DD6C;
    v31 = &block_descriptor_63_2;
    v26 = _Block_copy(&v28);
    v27 = v23;

    [v8 _animateUsingSpringBehavior_tracking_animations_completion_];

    _Block_release(v26);
    _Block_release(v21);
  }
}

uint64_t sub_188D804E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

UICollectionViewCompositionalLayout *_UIContextMenuCollectionViewLayout(void *a1, int a2, int a3, uint64_t a4, void *a5)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a5;
  [v9 displayScale];
  v11 = v10;
  v12 = _UIContextMenuGetPlatformMetrics([v9 userInterfaceIdiom]);
  [v12 itemSeparatorHeight];
  v14 = v13;
  UIRoundToScale(44.0 - v13, v11);
  v16 = v15;
  v17 = [off_1E70ECB18 fractionalWidthDimension:1.0];
  v18 = [off_1E70ECB18 estimatedDimension:v16];
  v19 = [off_1E70ECB40 sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = [UICollectionViewCompositionalLayout alloc];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = ___UIContextMenuCollectionViewLayout_block_invoke;
  v56[3] = &unk_1E70FE9A0;
  v21 = v8;
  v57 = v21;
  v22 = v12;
  v58 = v22;
  v61 = v11;
  v62 = v14;
  v63 = v16;
  v23 = v19;
  v59 = v23;
  v55 = v9;
  v60 = v55;
  v24 = [(UICollectionViewCompositionalLayout *)v20 initWithSectionProvider:v56];
  v25 = objc_opt_new();
  v26 = a4;
  v27 = v25;
  v53 = v26;
  if (v26 == 1)
  {
    v28 = @"kContextMenuSubmenuTitleHeader";
  }

  else
  {
    if (v26 || !a2)
    {
      goto LABEL_10;
    }

    v28 = @"kContextMenuHeader";
  }

  v29 = [off_1E70ECB08 boundarySupplementaryItemWithLayoutSize:v23 elementKind:v28 alignment:1];
  if ([v22 forceUnpinnedHeader])
  {
    [v29 setPinToVisibleBounds:0];
  }

  else
  {
    v30 = [v55 preferredContentSizeCategory];
    [v29 setPinToVisibleBounds:{_UIContentSizeCategoryIsAccessibilityContentSizeCategory(v30, v31) ^ 1}];
  }

  [v29 setZIndex:100];
  v64[0] = v29;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
  [v27 setBoundarySupplementaryItems:v32];

LABEL_10:
  if (a3)
  {
    v33 = [off_1E70ECB08 boundarySupplementaryItemWithLayoutSize:v23 elementKind:@"kContextMenuPinnedFooter" alignment:5];
    [v33 setZIndex:100];
    [v33 setPinToVisibleBounds:1];
    v34 = [v27 boundarySupplementaryItems];
    v35 = [v34 arrayByAddingObject:v33];
    [v27 setBoundarySupplementaryItems:v35];
  }

  v36 = [v22 gradientMaskingConfiguration];
  [v36 spacerHeaderFooterHeight];
  if (v37 > 0.0)
  {
    v38 = v37;
    v52 = v24;
    v39 = [off_1E70ECB18 fractionalWidthDimension:1.0];
    v40 = [off_1E70ECB18 estimatedDimension:v38];
    v41 = [off_1E70ECB40 sizeWithWidthDimension:v39 heightDimension:v40];

    v42 = MEMORY[0x1E695DF70];
    v43 = [v27 boundarySupplementaryItems];
    v44 = [v42 arrayWithArray:v43];

    v45 = [v21 sectionIdentifiers];
    v46 = [v45 firstObject];

    if (v53 || (a2 & 1) == 0)
    {
      if (([v46 isRoot] & 1) != 0 || (objc_msgSend(v46, "title"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "length"), v47, !v48))
      {
        v49 = [off_1E70ECB08 boundarySupplementaryItemWithLayoutSize:v41 elementKind:@"kContextMenuGradientStyleHeader" alignment:1];
        [v44 addObject:v49];
      }
    }

    v50 = [off_1E70ECB08 boundarySupplementaryItemWithLayoutSize:v41 elementKind:@"kContextMenuGradientStyleFooter" alignment:5];
    [v44 addObject:v50];
    [v27 setBoundarySupplementaryItems:v44];

    v24 = v52;
  }

  [(UICollectionViewCompositionalLayout *)v24 setConfiguration:v27];

  return v24;
}

unint64_t sub_188D80D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D60);
    v3 = sub_18A4A8488();
    for (i = a1 + 32; ; i += 16)
    {
      sub_188A3F29C(i, &v11, &qword_1EA934E98);
      v5 = v11;
      result = sub_188A403F4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_188E904EC(&v12, v3[7] + 8 * result);
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

void sub_188D81038(void *a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_didHostSourceView;
    v3 = v1[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_didHostSourceView];
    v4 = a1;
    v5 = v4;
    if (v3 == 1)
    {
      v6 = [v4 view];
      [v6 removeFromSuperview];

      v1[v2] = 0;
    }

    v7 = [v5 _overlayViews];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = v7;
    sub_188AF7A44();
    v9 = sub_18A4A7548();

    if (v9 >> 62)
    {
      v10 = sub_18A4A7F68();
      if (v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_7:
        if (v10 < 1)
        {
          __break(1u);
          goto LABEL_40;
        }

        for (i = 0; i != v10; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_188E49300(i, v9);
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
          }

          v13 = v12;
          [v12 removeFromSuperview];
        }
      }
    }

LABEL_15:
  }

  v14 = *&v1[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview];
  if (!v14)
  {
    return;
  }

  v48 = v14;
  v15 = [v48 view];
  if (v15)
  {
    v5 = v15;
    v16 = [v48 _shouldHostSourceView];
    v1[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_didHostSourceView] = v16;
    v17 = OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView;
    v18 = *&v1[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView];
    if (v16)
    {
      if (v18)
      {
        [v18 removeFromSuperview];
        v19 = *&v1[v17];
      }

      else
      {
        v19 = 0;
      }

      *&v1[v17] = 0;

      [v1 addSubview_];
    }

    else
    {
      if (v18)
      {
        v20 = *&v1[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView];
      }

      else
      {
        [v1 bounds];
        v25 = [objc_allocWithZone(_UIPortalView) initWithFrame_];
        v26 = sub_18A4A7258();
        [v25 setName_];

        [v25 setAllowsBackdropGroups_];
        [v25 setHidesSourceView_];
        [v25 setMatchesAlpha_];
        [v25 setForwardsClientHitTestingToSourceView_];
        [v25 setAllowsHitTesting_];
        [v25 setHidesSourceLayerInOtherPortals_];
        v20 = v25;
        v27 = [v20 portalLayer];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9401B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18A6510E0;
        strcpy((inited + 32), "cornerRadius");
        v29 = MEMORY[0x1E69E63B0];
        *(inited + 45) = 0;
        *(inited + 46) = -5120;
        *(inited + 48) = 0;
        *(inited + 72) = v29;
        strcpy((inited + 80), "shadowOpacity");
        *(inited + 94) = -4864;
        *(inited + 96) = 0;
        *(inited + 120) = v29;
        *(inited + 128) = 0x6957726564726F62;
        *(inited + 136) = 0xEB00000000687464;
        *(inited + 144) = 0;
        *(inited + 168) = v29;
        strcpy((inited + 176), "masksToBounds");
        *(inited + 190) = -4864;
        v30 = MEMORY[0x1E69E6370];
        *(inited + 192) = 0;
        *(inited + 216) = v30;
        *(inited + 224) = 0x756F72676B636162;
        *(inited + 232) = 0xEF726F6C6F43646ELL;
        v31 = [objc_opt_self() clearColor];
        v32 = [v31 CGColor];

        type metadata accessor for CGColor(0);
        *(inited + 264) = v33;
        *(inited + 240) = v32;
        sub_188AF3DD8(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934DB8);
        swift_arrayDestroy();
        v34 = sub_18A4A7088();

        [v27 setOverrides_];

        v35 = *&v1[v17];
        *&v1[v17] = v20;

        v18 = 0;
      }

      v36 = v18;
      v37 = v20;
      v38 = [v48 target];
      v39 = [v38 container];

      v40 = [v39 _isRenderedHorizontallyFlipped];
      [v37 _setFlipsHorizontalAxis_];
      v41 = v5;
      [v37 setSourceView_];

      [v1 addSubview_];
    }

    v42 = [v48 _overlayViews];
    if (!v42)
    {
      goto LABEL_42;
    }

    v43 = v42;
    sub_188AF7A44();
    v9 = sub_18A4A7548();

    if (!(v9 >> 62))
    {
      v44 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
LABEL_33:
        if (v44 < 1)
        {
          __break(1u);
          return;
        }

        for (j = 0; j != v44; ++j)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v46 = sub_188E49300(j, v9);
          }

          else
          {
            v46 = *(v9 + 8 * j + 32);
          }

          v47 = v46;
          [v1 addSubview_];
        }
      }

LABEL_41:

LABEL_42:
      [v1 sizeToFit];

      return;
    }

LABEL_40:
    v44 = sub_18A4A7F68();
    if (v44)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }
}