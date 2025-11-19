id sub_1D80DF35C(int a1, char a2, void (*a3)(_BYTE *__return_ptr, uint64_t))
{
  v7 = sub_1D818E584();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v3 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (result)
  {
    v13 = result;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!*&v18[25])
      {
        break;
      }

      sub_1D7E1C664(&v18[1], &v16);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      v14 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      a3(v18, v14);
      swift_unknownObjectRelease();
      if (v18[0] != 2 && ((v18[0] ^ a1) & 1) == 0)
      {
        a2 = v18[0];
        break;
      }
    }

    (*(v8 + 8))(v11, v7);
    return (a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MultiCollectionViewDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D80DF578()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1D818E584();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = (v15 - v14);
  v17 = [*(v9 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (v17)
  {
    v18 = v17;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v20)
      {
        break;
      }

      v19 = OUTLINED_FUNCTION_2_129();
      if (OUTLINED_FUNCTION_15_40(v19))
      {
        [v16 *v1];
      }

      swift_unknownObjectRelease();
    }

    (*(v12 + 8))(v16, v10);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_100();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D80DF6CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = sub_1D818E584();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(a1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (v13)
  {
    v14 = v13;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v19)
      {
        break;
      }

      sub_1D7E1C664(&v18, &v16);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      v15 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      if ([v15 respondsToSelector_])
      {
        [v15 collectionView:a2 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
      }

      swift_unknownObjectRelease();
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D80DF878(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_1D818E584();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(a1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (v13)
  {
    v14 = v13;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v19)
      {
        break;
      }

      sub_1D7E1C664(&v18, &v16);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      v15 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      if ([v15 respondsToSelector_])
      {
        [v15 collectionView:a2 willPerformPreviewActionForMenuWithConfiguration:a3 animator:a4];
      }

      swift_unknownObjectRelease();
    }

    (*(v9 + 8))(v12, v8);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D80DFA28(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1D818E584();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(a1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (v11)
  {
    v12 = v11;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v17)
      {
        break;
      }

      sub_1D7E1C664(&v16, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      v13 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      if ([v13 respondsToSelector_])
      {
        [v13 scrollViewWillBeginZooming:a2 withView:a3];
      }

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D80DFBC0(uint64_t a1, void *a2, char a3)
{
  v6 = sub_1D818E584();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(a1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (v11)
  {
    v12 = v11;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v17)
      {
        break;
      }

      sub_1D7E1C664(&v16, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      v13 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      if ([v13 respondsToSelector_])
      {
        [v13 scrollViewDidEndDragging:a2 willDecelerate:a3 & 1];
      }

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D80DFD54(uint64_t a1, void *a2, void *a3, double a4)
{
  v8 = sub_1D818E584();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(a1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (v13)
  {
    v14 = v13;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v19)
      {
        break;
      }

      sub_1D7E1C664(&v18, &v16);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      v15 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      if ([v15 respondsToSelector_])
      {
        [v15 scrollViewDidEndZooming:a2 withView:a3 atScale:a4];
      }

      swift_unknownObjectRelease();
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D80DFEFC(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1D818E584();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*(a1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (v15)
  {
    v16 = v15;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v21)
      {
        break;
      }

      sub_1D7E1C664(&v20, &v18);
      __swift_project_boxed_opaque_existential_1(&v18, v19);
      v17 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v18);
      if ([v17 respondsToSelector_])
      {
        [v17 scrollViewWillEndDragging:a2 withVelocity:a3 targetContentOffset:{a4, a5}];
      }

      swift_unknownObjectRelease();
    }

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D80E00A8(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v10 = sub_1D818E584();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*(a1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (v15)
  {
    v16 = v15;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v21)
      {
        break;
      }

      sub_1D7E1C664(&v20, &v18);
      __swift_project_boxed_opaque_existential_1(&v18, v19);
      v17 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v18);
      if ([v17 respondsToSelector_])
      {
        [v17 collectionView:a2 targetContentOffsetForProposedContentOffset:{a5, a6}];
        swift_unknownObjectRelease();
        break;
      }

      swift_unknownObjectRelease();
    }

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    __break(1u);
  }
}

id sub_1D80E0274@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D818E584();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v3 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (result)
  {
    v16 = result;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v23)
      {
        (*(v11 + 8))(v14, v10);
        v19 = sub_1D818E994();
        return (*(*(v19 - 8) + 16))(a3, a1, v19);
      }

      sub_1D7E1C664(&v22, &v20);
      __swift_project_boxed_opaque_existential_1(&v20, v21);
      v17 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      a2(v17);
      swift_unknownObjectRelease();
      v18 = sub_1D818E994();
      if (__swift_getEnumTagSinglePayload(v9, 1, v18) != 1)
      {
        break;
      }

      sub_1D7E73334(v9);
    }

    (*(v11 + 8))(v14, v10);
    return (*(*(v18 - 8) + 32))(a3, v9, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D80E04F0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v19 = a1;
  v9 = sub_1D818E584();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a2 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (result)
  {
    v15 = result;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v23)
      {
        break;
      }

      sub_1D7E1C664(&v22, &v20);
      __swift_project_boxed_opaque_existential_1(&v20, v21);
      v16 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      if ([v16 respondsToSelector_])
      {
        v17 = [v16 collectionView:a3 transitionLayoutForOldLayout:a4 newLayout:a5];
        swift_unknownObjectRelease();
        if (v17)
        {
          (*(v10 + 8))(v13, v9);
          goto LABEL_9;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    (*(v10 + 8))(v13, v9);
    v17 = v19;
LABEL_9:

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D80E06E8()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  OUTLINED_FUNCTION_6_79();
  v5 = v4;
  v6 = sub_1D818E584();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  v13 = [*(v5 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (v13)
  {
    v14 = v13;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v17)
      {
        break;
      }

      v15 = OUTLINED_FUNCTION_2_129();
      if (OUTLINED_FUNCTION_15_40(v15))
      {
        v16 = [v12 *v3];
        swift_unknownObjectRelease();
        if (v16)
        {
          break;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    (*(v8 + 8))(v12, v6);

    OUTLINED_FUNCTION_100();
  }

  else
  {
    __break(1u);
  }
}

id sub_1D80E084C(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v3 = sub_1D818E584();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (result)
  {
    v9 = result;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v17)
      {
        break;
      }

      sub_1D7E1C664(&v16, &v13);
      __swift_project_boxed_opaque_existential_1(&v13, v14);
      v10 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v13);
      a1(&v15, v10);
      swift_unknownObjectRelease();
      v11 = v15;
      if (v15)
      {
        (*(v4 + 8))(v7, v3);
        return v11;
      }
    }

    (*(v4 + 8))(v7, v3);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D80E09E4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = sub_1D818E584();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [*(a1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (v16)
  {
    v17 = v16;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v34)
      {
        (*(v12 + 8))(v15, v11);
        v25 = sub_1D818E994();
        v26 = v30;
        v27 = 1;
        goto LABEL_14;
      }

      sub_1D7E1C664(&v33, &v31);
      __swift_project_boxed_opaque_existential_1(&v31, v32);
      v18 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v31);
      if ([v18 respondsToSelector_])
      {
        v19 = [swift_unknownObjectRetain() indexPathForPreferredFocusedViewInCollectionView_];
        if (v19)
        {
          v20 = v19;
          sub_1D818E924();

          v21 = 0;
        }

        else
        {
          v21 = 1;
        }

        v23 = sub_1D818E994();
        __swift_storeEnumTagSinglePayload(v7, v21, 1, v23);
        sub_1D8013D78(v7, v10);
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = sub_1D818E994();
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v22);
      }

      swift_unknownObjectRelease();
      v24 = sub_1D818E994();
      if (__swift_getEnumTagSinglePayload(v10, 1, v24) != 1)
      {
        break;
      }

      sub_1D7E73334(v10);
    }

    (*(v12 + 8))(v15, v11);
    v28 = v30;
    (*(*(v24 - 8) + 32))(v30, v10, v24);
    v26 = v28;
    v27 = 0;
    v25 = v24;
LABEL_14:
    __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
  }

  else
  {
    __break(1u);
  }
}

id sub_1D80E0D08(uint64_t a1, void *a2)
{
  v4 = sub_1D818E584();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (result)
  {
    v10 = result;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v16)
      {
        break;
      }

      sub_1D7E1C664(&v15, &v13);
      __swift_project_boxed_opaque_existential_1(&v13, v14);
      v11 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v13);
      if ([v11 respondsToSelector_])
      {
        v12 = [v11 viewForZoomingInScrollView_];
        swift_unknownObjectRelease();
        if (v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v12 = 0;
LABEL_9:
    (*(v5 + 8))(v8, v4);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D80E1114(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v7 = sub_1D818E8E4();
    [a1 *a4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D80E11D0()
{
  v4 = OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_41();
  v8 = v1;
  v9 = v2;
  v0(v8, v3);

  return (*(v6 + 8))(v3, v4);
}

void sub_1D80E141C(void *a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X3>, unsigned __int8 *a4@<X8>)
{
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v8 = sub_1D818E8E4();
    v9 = [a1 *a3];
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 2;
  }

  *a4 = v9;
}

uint64_t sub_1D80E14C8()
{
  v4 = OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_41();
  v8 = v1;
  v9 = v2;
  v10 = v0(v8, v3);

  (*(v6 + 8))(v3, v4);
  return v10 & 1;
}

Swift::Bool __swiftcall MultiCollectionViewDelegate.collectionView(_:shouldUpdateFocusIn:)(UICollectionView *_, UICollectionViewFocusUpdateContext shouldUpdateFocusIn)
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D818E584();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v14 = *(v2 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates);
  v15 = v6;
  v16 = v4;
  v17 = [v14 allObjects];
  if (v17)
  {
    v18 = v17;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v22[7])
      {
        break;
      }

      v19 = OUTLINED_FUNCTION_2_129();
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      if ([v19 respondsToSelector_])
      {
        v20 = [v19 collectionView:v15 shouldUpdateFocusInContext:v16];
        swift_unknownObjectRelease();
        if ((v20 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    (*(v9 + 8))(v13, v7);

    OUTLINED_FUNCTION_100();
  }

  else
  {
    __break(1u);
  }

  return v17;
}

CGPoint __swiftcall MultiCollectionViewDelegate.collectionView(_:targetContentOffsetForProposedContentOffset:)(UICollectionView *_, CGPoint targetContentOffsetForProposedContentOffset)
{
  y = targetContentOffsetForProposedContentOffset.y;
  x = targetContentOffsetForProposedContentOffset.x;
  v5 = _;

  sub_1D80E00A8(v2, v5, x, y, x, y);
  result.y = v7;
  result.x = v6;
  return result;
}

void MultiCollectionViewDelegate.collectionView(_:willDisplayContextMenu:animator:)()
{
  OUTLINED_FUNCTION_6_79();
  v2 = v1;
  swift_unknownObjectRetain();
  v3 = v2;
  v4 = v0;
  OUTLINED_FUNCTION_10_53();
  sub_1D80DF578();
}

void MultiCollectionViewDelegate.collectionView(_:willEndContextMenuInteraction:animator:)()
{
  OUTLINED_FUNCTION_6_79();
  v2 = v1;
  swift_unknownObjectRetain();
  v3 = v2;
  v4 = v0;
  OUTLINED_FUNCTION_10_53();
  sub_1D80DF578();
}

void sub_1D80E1988(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, v11, a5);

  swift_unknownObjectRelease();
}

UITargetedPreview_optional __swiftcall MultiCollectionViewDelegate.collectionView(_:previewForDismissingContextMenuWithConfiguration:)(UICollectionView *_, UIContextMenuConfiguration previewForDismissingContextMenuWithConfiguration)
{
  v3 = _;
  v4 = previewForDismissingContextMenuWithConfiguration.super.isa;
  sub_1D80E06E8();
  result.value.super.isa = v5;
  result.is_nil = v6;
  return result;
}

UITargetedPreview_optional __swiftcall MultiCollectionViewDelegate.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(UICollectionView *_, UIContextMenuConfiguration previewForHighlightingContextMenuWithConfiguration)
{
  v3 = _;
  v4 = previewForHighlightingContextMenuWithConfiguration.super.isa;
  sub_1D80E06E8();
  result.value.super.isa = v5;
  result.is_nil = v6;
  return result;
}

Swift::Void __swiftcall MultiCollectionViewDelegate.collectionView(_:didUpdateFocusIn:with:)(UICollectionView *_, UICollectionViewFocusUpdateContext didUpdateFocusIn, UIFocusAnimationCoordinator with)
{
  OUTLINED_FUNCTION_6_79();
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = OUTLINED_FUNCTION_10_53();

  sub_1D80DF6CC(v9, v10, v7, v11);
}

void MultiCollectionViewDelegate.collectionView(_:willPerformPreviewActionForMenuWith:animator:)()
{
  OUTLINED_FUNCTION_6_79();
  v3 = v2;
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = OUTLINED_FUNCTION_10_53();

  sub_1D80DF878(v5, v6, v4, v0);
}

void sub_1D80E1DD0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v10 = sub_1D818E8E4();
    v11 = [a1 collectionView:a2 contextMenuConfigurationForItemAtIndexPath:v10 point:{a4, a5}];
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11;
}

void sub_1D80E1FEC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unsigned __int8 *a4@<X8>)
{
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v8 = sub_1D818E8E4();
    v9 = [a1 collectionView:a2 shouldSpringLoadItemAtIndexPath:v8 withContext:a3];
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 2;
  }

  *a4 = v9;
}

uint64_t sub_1D80E21F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v6 = sub_1D818E8E4();
    v7 = sub_1D818E8E4();
    v8 = sub_1D818E8E4();
    v9 = [a1 collectionView:a2 targetIndexPathForMoveOfItemFromOriginalIndexPath:v6 atCurrentIndexPath:v7 toProposedIndexPath:v8];

    sub_1D818E924();
    swift_unknownObjectRelease();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_1D818E994();

  return __swift_storeEnumTagSinglePayload(a3, v10, 1, v11);
}

UICollectionViewTransitionLayout __swiftcall MultiCollectionViewDelegate.collectionView(_:transitionLayoutForOldLayout:newLayout:)(UICollectionView *_, UICollectionViewLayout transitionLayoutForOldLayout, UICollectionViewLayout newLayout)
{
  v4 = v3;
  sub_1D80E3210();
  v8 = transitionLayoutForOldLayout.super.isa;
  v9 = newLayout.super.isa;
  v10 = sub_1D80E25A4(v8, v9);
  v11 = sub_1D80E04F0(v10, v4, _, v8, v9);

  return v11;
}

id sub_1D80E25A4(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCurrentLayout:a1 nextLayout:a2];

  return v4;
}

void MultiCollectionViewDelegate.indexPathForPreferredFocusedView(in:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;

  sub_1D80E09E4(v2, v4, a2);
}

void __swiftcall MultiCollectionViewDelegate.viewForZooming(in:)(UIView_optional *__return_ptr retstr, UIScrollView *in)
{
  v2 = in;
  v3 = OUTLINED_FUNCTION_14();

  sub_1D80E0D08(v3, v4);
}

Swift::Bool __swiftcall MultiCollectionViewDelegate.scrollViewShouldScrollToTop(_:)(UIScrollView *a1)
{
  v2 = a1;

  return sub_1D80DF1A0(0, 1, v1, v2);
}

Swift::Void __swiftcall MultiCollectionViewDelegate.scrollViewWillBeginZooming(_:with:)(UIScrollView *_, UIView_optional *with)
{
  v4 = with;
  v5 = _;
  v6 = OUTLINED_FUNCTION_14();

  sub_1D80DFA28(v6, v7, with);
}

Swift::Void __swiftcall MultiCollectionViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  v3 = _;
  v4 = OUTLINED_FUNCTION_14();

  sub_1D80DFBC0(v4, v5, willDecelerate);
}

void MultiCollectionViewDelegate.scrollViewDidEndZooming(_:with:atScale:)(void *a1, void *a2, double a3)
{
  v6 = a2;
  v7 = a1;
  v8 = OUTLINED_FUNCTION_14();

  sub_1D80DFD54(v8, v9, a2, a3);
}

void MultiCollectionViewDelegate.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = a1;
  v8 = OUTLINED_FUNCTION_14();

  sub_1D80DFEFC(v8, v9, a2, a3, a4);
}

unint64_t sub_1D80E3210()
{
  result = qword_1ECA11050;
  if (!qword_1ECA11050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECA11050);
  }

  return result;
}

uint64_t TabBarController.tabBarNavigationControllers.getter()
{
  v0 = TabBarController.viewControllers.getter();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = v1;
    }

    else
    {
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    type metadata accessor for TabBarNavigationController();
    sub_1D8190DB4();
    OUTLINED_FUNCTION_2_4();
    sub_1D81923B4();
    OUTLINED_FUNCTION_161();
    swift_bridgeObjectRelease_n();
    return v6;
  }

  else
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    sub_1D8190DB4();
    sub_1D81926A4();
    type metadata accessor for TabBarNavigationController();
    if (swift_dynamicCastMetatype() || (v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_6:
    }

    else
    {
      v5 = v2 + 32;
      while (swift_dynamicCastClass())
      {
        v5 += 8;
        if (!--v4)
        {
          goto LABEL_6;
        }
      }

      return v2 | 1;
    }

    return v1;
  }
}

uint64_t TabBarController.primaryTabBarNavigationController.getter()
{
  v1 = TabBarController.tabBarNavigationControllers.getter();
  v2 = sub_1D7E36AB8(v1);
  v3 = 0;
  v4 = (v0 + OBJC_IVAR____TtC5TeaUI16TabBarController_primaryTabBarItemIdentifier);
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA714420](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      break;
    }

    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    swift_getObjectType();
    if (sub_1D818EF94() == *v4 && v7 == v4[1])
    {

LABEL_15:

      return v6;
    }

    v9 = sub_1D8192634();

    if (v9)
    {
      goto LABEL_15;
    }

    ++v3;
  }

  result = sub_1D81923A4();
  __break(1u);
  return result;
}

void TabBarController.revoke(tabBarNavigationController:shouldSelectPrimary:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *&v2[OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder];
  v6 = (a1 + OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v7 = *v6;
  swift_getObjectType();
  v36 = v7;
  v8 = sub_1D818EF94();
  v10 = sub_1D7E69954(v8, v9, v5);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    v13 = TabBarController.tabBarNavigationControllers.getter();
    v14 = sub_1D7E36AB8(v13);

    if (v10 < v14)
    {
      v15 = TabBarController.tabBarNavigationControllers.getter();
      sub_1D7E33DD8(v10, (v15 & 0xC000000000000001) == 0, v15);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1DA714420](v10, v15);
      }

      else
      {
        v16 = *(v15 + 8 * v10 + 32);
      }

      v17 = v16;

      v18 = &v17[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
      OUTLINED_FUNCTION_7();
      swift_beginAccess();
      v19 = *v18;

      swift_getObjectType();
      v20 = sub_1D818EF94();
      v22 = v21;

      v23 = *v6;
      swift_getObjectType();
      v35 = v23;
      if (v20 == sub_1D818EF94() && v22 == v24)
      {
      }

      else
      {
        v26 = sub_1D8192634();

        if ((v26 & 1) == 0)
        {
          return;
        }
      }

      v27 = TabBarController.tabBarNavigationControllers.getter();
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
      {
        v27 = sub_1D80E71E8(v27);
      }

      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 >= v28)
      {
        __break(1u);
      }

      else
      {
        v29 = v28 - 1;
        v30 = v28 - 1 - v10;
        v31 = (v27 & 0xFFFFFFFFFFFFFF8) + 8 * v10;
        v32 = *(v31 + 0x20);
        memmove((v31 + 32), (v31 + 40), 8 * v30);
        *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) = v29;

        if (!(v27 >> 62))
        {
          sub_1D8190DB4();
          sub_1D81926A4();
          sub_1D7E0A1A8(0, &qword_1EDBB31B0);
          v33 = v27;
          goto LABEL_19;
        }
      }

      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      sub_1D8190DB4();
      v33 = sub_1D81923B4();

LABEL_19:

      sub_1D80E7260(v33, 0, v3);
      if (a2)
      {
        v34 = TabBarController.primaryTabBarNavigationController.getter();
        [v3 setSelectedViewController_];
      }
    }
  }
}

BOOL TabBarController.knowsOf(tabBarNavigationController:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  swift_getObjectType();
  v1 = sub_1D818EF94();
  sub_1D7E69954(v1, v2, *(v0 + OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder));
  v4 = v3;

  return (v4 & 1) == 0;
}

void TabBarController.restore(tabBarNavigationController:shouldSelectIndex:)(char *a1, char a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder];
  v7 = &a1[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v8 = *v7;
  swift_getObjectType();
  v20 = v8;
  v9 = sub_1D818EF94();
  v11 = sub_1D7E69954(v9, v10, v6);
  LOBYTE(v8) = v12;

  if ((v8 & 1) == 0)
  {
    sub_1D7E720A0(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D81A50A0;
    *(v13 + 32) = a1;
    v14 = a1;
    v15 = TabBarController.tabBarNavigationControllers.getter();
    sub_1D7F0A6E4(v15);
    sub_1D80E72F4();
    sub_1D80E7570(&qword_1EDBAE5D8, sub_1D80E72F4);
    v16 = 0;
    sub_1D8191144();

    v17 = v3;
    v18 = sub_1D8190DB4();
    v20 = sub_1D7E769F4(v18, sub_1D7F061FC, sub_1D80B7218);
    sub_1D80E6054(&v20, v17);

    v19 = v20;
    if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
    {
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      OUTLINED_FUNCTION_18_0();
      sub_1D8190DB4();
      sub_1D81923B4();
      OUTLINED_FUNCTION_18_0();
    }

    else
    {
      sub_1D8190DB4();
      sub_1D81926A4();
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      v16 = v19;
    }

    sub_1D80E7260(v16, 0, v17);
    if (a2)
    {
      [v17 setSelectedIndex_];
    }
  }
}

void TabBarController.replace(tabBarNavigationController:)(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder];
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  swift_getObjectType();
  v5 = sub_1D818EF94();
  v7 = sub_1D7E69954(v5, v6, v4);
  LOBYTE(v4) = v8;

  if ((v4 & 1) == 0)
  {
    v9 = TabBarController.tabBarNavigationControllers.getter();
    v10 = a1;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
    {
      v9 = sub_1D80E71E8(v9);
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
      *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v10;

      if (!(v9 >> 62))
      {
        sub_1D8190DB4();
        sub_1D81926A4();
        sub_1D7E0A1A8(0, &qword_1EDBB31B0);
        v12 = v9;
LABEL_10:

        sub_1D80E7260(v12, 0, v2);
        return;
      }

LABEL_14:
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      sub_1D8190DB4();
      v12 = sub_1D81923B4();

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_14;
  }
}

void TabBarController.tabBarNavigationController(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = TabBarController.tabBarNavigationControllers.getter();
  v5 = sub_1D7E36AB8(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
      goto LABEL_16;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA714420](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    swift_getObjectType();
    if (sub_1D818EF94() == a1 && v9 == a2)
    {

LABEL_16:

      return;
    }

    v11 = sub_1D8192634();

    if (v11)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

Swift::Bool __swiftcall TabBarController.knowsOf(identifier:)(Swift::String identifier)
{
  if (*(*(v1 + OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder) + 16))
  {
    sub_1D7E11428(identifier._countAndFlagsBits, identifier._object);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

Swift::Void __swiftcall TabBarController.selectTabBarNavigationController(withIdentifier:popToRoot:)(Swift::String withIdentifier, Swift::Bool popToRoot)
{
  object = withIdentifier._object;
  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  v4 = TabBarController.tabBarNavigationControllers.getter();
  v5 = sub_1D7E36AB8(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA714420](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    swift_getObjectType();
    if (sub_1D818EF94() == countAndFlagsBits && v9 == object)
    {
      break;
    }

    v11 = sub_1D8192634();

    if (v11)
    {
      goto LABEL_16;
    }
  }

LABEL_16:

  v12 = [v16 tabBar];
  v13 = [v12 isHidden];

  if (v13 && [v16 selectedIndex] != i)
  {
    v14 = [v16 selectedViewController];
    if (v14)
    {
      v15 = v14;
      type metadata accessor for TabBarNavigationController();

      goto LABEL_20;
    }

LABEL_26:
    __break(1u);
    return;
  }

LABEL_20:
  [v16 setSelectedIndex_];
  if (popToRoot)
  {
  }
}

uint64_t TabBarController.viewControllers.getter()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v5, sel_viewControllers);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v3 = sub_1D8191314();

  return v3;
}

uint64_t sub_1D80E4114@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5TeaUI16TabBarController_extendedDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D80E4170(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC5TeaUI16TabBarController_extendedDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t TabBarController.extendedDelegate.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t TabBarController.extendedDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUI16TabBarController_extendedDelegate;
  OUTLINED_FUNCTION_12_3();
  swift_beginAccess();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_2_4();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TabBarController.extendedDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC5TeaUI16TabBarController_extendedDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F18A1C;
}

void *TabBarController.init(tabBarNavigationControllers:primaryTabBarItemIndex:styler:useCustomBarView:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *(v5 + OBJC_IVAR____TtC5TeaUI16TabBarController_extendedDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = sub_1D7E36AB8(a1);
  if (v11 <= a2 || a2 < 0 || v11 < 2)
  {
    __break(1u);
  }

  else
  {
    sub_1D80E7378(a3, v5 + OBJC_IVAR____TtC5TeaUI16TabBarController_styler);
    *(v5 + OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder) = sub_1D80E4614(a1);
    sub_1D7E33DD8(a2, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) == 0)
    {
      v12 = *(a1 + 8 * a2 + 32);
      goto LABEL_6;
    }
  }

  v27 = OUTLINED_FUNCTION_2_4();
  v12 = MEMORY[0x1DA714420](v27);
LABEL_6:
  v13 = v12;
  v14 = &v12[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v15 = *v14;

  swift_getObjectType();
  v32 = v15;
  v16 = sub_1D818EF94();
  v18 = v17;

  v19 = 0;
  v20 = (v5 + OBJC_IVAR____TtC5TeaUI16TabBarController_primaryTabBarItemIdentifier);
  *v20 = v16;
  v20[1] = v18;
  if (a4)
  {
    type metadata accessor for BarView();
    v32 = 2;
    v29 = 1;
    v19 = static BarView.barView(style:separator:groupName:)(&v32, &v29);
  }

  *(v5 + OBJC_IVAR____TtC5TeaUI16TabBarController_barView) = v19;
  v30 = v5;
  v31 = ObjectType;
  OUTLINED_FUNCTION_7();
  v23 = objc_msgSendSuper2(v21, v22);
  v24 = v23;
  if (a1 >> 62)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    v28 = v24;
    sub_1D8190DB4();
    sub_1D81923B4();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v25 = v23;
    sub_1D8190DB4();
    sub_1D81926A4();
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  }

  TabBarController.viewControllers.setter();
  [v24 setDelegate_];

  sub_1D7FBDB74(a3, &qword_1EDBB10F0, qword_1EDBB10F8);
  return v24;
}

uint64_t sub_1D80E4614(uint64_t a1)
{
  v2 = 0;
  v20 = a1 & 0xC000000000000001;
  v21 = sub_1D7E36AB8(a1);
  v3 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v21 == v2)
    {
      return v3;
    }

    if (v20)
    {
      v4 = MEMORY[0x1DA714420](v2, a1);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(a1 + 8 * v2 + 32);
    }

    v5 = v4;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    swift_beginAccess();
    swift_getObjectType();
    v6 = sub_1D818EF94();
    v8 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_1D7E11428(v6, v8);
    if (__OFADD__(v3[2], (v10 & 1) == 0))
    {
      goto LABEL_20;
    }

    v11 = v9;
    v12 = v10;
    sub_1D80E7510();
    if (sub_1D8192374())
    {
      v13 = sub_1D7E11428(v6, v8);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_22;
      }

      v11 = v13;
    }

    if (v12)
    {

      *(v3[7] + 8 * v11) = v2;
    }

    else
    {
      v3[(v11 >> 6) + 8] |= 1 << v11;
      v15 = (v3[6] + 16 * v11);
      *v15 = v6;
      v15[1] = v8;
      *(v3[7] + 8 * v11) = v2;

      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_21;
      }

      v3[2] = v18;
    }

    ++v2;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1D8192714();
  __break(1u);
  return result;
}

void TabBarController.viewControllers.setter()
{
  OUTLINED_FUNCTION_18_0();
  ObjectType = swift_getObjectType();
  sub_1D80E4A90(v1);
  if (v1)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    v3 = sub_1D8191304();
  }

  else
  {
    v3 = 0;
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_setViewControllers_, v3);
}

id TabBarController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TabBarController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI16TabBarController_extendedDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D81923A4();
  __break(1u);
}

void sub_1D80E4A90(unint64_t a1)
{
  if (a1)
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_24:
      type metadata accessor for TabBarNavigationController();
      sub_1D8190DB4();
      v3 = sub_1D81923B4();
    }

    else
    {
      sub_1D8190DB4();
      sub_1D81926A4();
      type metadata accessor for TabBarNavigationController();
      if (swift_dynamicCastMetatype() || (v14 = *(v2 + 16)) == 0)
      {
LABEL_4:
        v3 = a1;
      }

      else
      {
        v15 = v2 + 32;
        while (swift_dynamicCastClass())
        {
          v15 += 8;
          if (!--v14)
          {
            goto LABEL_4;
          }
        }

        v3 = v2 | 1;
      }
    }

    v4 = sub_1D7E36AB8(v3);
    v5 = 0;
    v6 = OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder;
    while (1)
    {
      if (v4 == v5)
      {

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA714420](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v9 = *(v16 + v6);
      swift_beginAccess();
      swift_getObjectType();
      v10 = sub_1D818EF94();
      if (!*(v9 + 16))
      {
        break;
      }

      sub_1D7E11428(v10, v11);
      v13 = v12;

      ++v5;
      if ((v13 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

void (*TabBarController.viewControllers.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = TabBarController.viewControllers.getter();
  return sub_1D80E4CD4;
}

void sub_1D80E4CD4(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1D8190DB4();
    TabBarController.viewControllers.setter();
  }

  else
  {
    TabBarController.viewControllers.setter();
  }
}

Swift::Void __swiftcall TabBarController.viewDidLoad()()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI16TabBarController_barView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 tabBar];
    [v3 ts:v2 setBackgroundView:?];
  }

  sub_1D80E7378(&v0[OBJC_IVAR____TtC5TeaUI16TabBarController_styler], v6);
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v5 = [v0 tabBar];
    (*(v4 + 8))();

    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_1D7FBDB74(v6, &qword_1EDBB10F0, qword_1EDBB10F8);
  }
}

Swift::Void __swiftcall TabBarController.viewDidAppear(_:)(Swift::Bool a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, a1);
  v3 = *&v1[OBJC_IVAR____TtC5TeaUI16TabBarController_barView];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  if (![v1 selectedViewController])
  {

    OUTLINED_FUNCTION_0_38();
LABEL_11:
    sub_1D7FBDB74(&v9, &unk_1EDBB72F0, &qword_1EDBB7300);
    return;
  }

  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &qword_1EDBB7300);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_38();
    goto LABEL_10;
  }

  if (!v10)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_1D7E05450(&v9, v11);
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v6 = OUTLINED_FUNCTION_6_80();
  v7(v6);
  if (v8)
  {
    sub_1D8190EE4();
    OUTLINED_FUNCTION_18_0();

    [v4 ts:v5 setGroupName:?];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_1D80E507C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  swift_getObjectType();
  result = sub_1D818EF94();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D80E50FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder);
  swift_beginAccess();
  swift_getObjectType();
  v4 = sub_1D818EF94();
  v6 = sub_1D7E69954(v4, v5, v3);
  v8 = v7;

  if (v8)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_getObjectType();
    v10 = sub_1D818EF94();
    v12 = sub_1D7E69954(v10, v11, v3);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      return v6 < v12;
    }
  }

  __break(1u);
  return result;
}

id TabBarController.__allocating_init(tabs:)()
{
  v1 = objc_allocWithZone(v0);
  sub_1D7E0A1A8(0, &qword_1ECA11088);
  v2 = sub_1D8191304();

  v3 = [v1 initWithTabs_];

  return v3;
}

id TabBarController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TabBarController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall TabBarController.tabBarController(_:shouldSelect:)(UITabBarController *_, UIViewController *shouldSelect)
{
  v4 = &v2[OBJC_IVAR____TtC5TeaUI16TabBarController_extendedDelegate];
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v2, shouldSelect, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = [v2 selectedIndex];
  if (TabBarController.viewControllers.getter())
  {
    v8 = OUTLINED_FUNCTION_161();
    sub_1D80D04C0(v8, v2);
    v10 = v9;
    v12 = v11;

    if ((v12 & 1) == 0 && v7 == v10)
    {
      v13 = type metadata accessor for TabBarNavigationController();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        v16 = objc_opt_self();
        v17 = shouldSelect;
        v18 = [v16 areAnimationsEnabled];
        v30.receiver = v15;
        v30.super_class = v13;
        v19 = v17;
        v20 = [(UITabBarController *)&v30 viewControllers];
        sub_1D7E0A1A8(0, &qword_1EDBB31B0);
        v21 = sub_1D8191314();

        v22 = sub_1D7E36AB8(v21);

        if (v22 < 2)
        {
          sub_1D8094D04(v19);
          if (v24)
          {
            v23 = v24;
            if (([(UIViewController *)v24 ts_scrollToTop:v18 dismissKeyboard:1]& 1) == 0)
            {
              v26 = [v15 topViewController];

              if (v26)
              {
                sub_1D8115B90(v26);
                v28 = v27;

                if (v28)
                {
                  v29 = v23;
                  [v28 scrollToTopAnimated_];
                  swift_unknownObjectRelease();
                  v23 = v19;
                  v19 = v29;
                }
              }

              goto LABEL_13;
            }
          }

          v23 = v19;
        }

        else
        {

          v23 = [v15 popToRootViewControllerAnimated_];
        }

LABEL_13:
      }
    }
  }

  return 1;
}

Swift::Void __swiftcall TabBarController.tabBarController(_:didSelect:)(UITabBarController *_, UIViewController *didSelect)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUI16TabBarController_extendedDelegate;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v2, didSelect, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = *(v2 + OBJC_IVAR____TtC5TeaUI16TabBarController_barView);
  if (v7)
  {
    v16 = didSelect;
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    sub_1D7E0631C(0, &qword_1EDBB7300);
    v8 = v7;
    v9 = didSelect;
    if (swift_dynamicCast())
    {
      sub_1D7E05450(v14, v17);
      v10 = v18;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v11 = OUTLINED_FUNCTION_6_80();
      v12(v11);
      if (v13)
      {
        sub_1D8190EE4();
        OUTLINED_FUNCTION_18_0();

        [v8 ts:v10 setGroupName:?];
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }

    else
    {

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      sub_1D7FBDB74(v14, &unk_1EDBB72F0, &qword_1EDBB7300);
    }
  }
}

id _s5TeaUI16TabBarControllerC08selectedcd10NavigationE0AA0cdgE0Cvg_0()
{
  result = [v0 selectedViewController];
  if (result)
  {
    type metadata accessor for TabBarNavigationController();

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall TabBarController.textBeginEditing()()
{
  v0 = TabBarController.primaryTabBarNavigationController.getter();
  v1 = OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v5 = *&v0[v1];
  v2 = v5;

  v6[3] = v5;
  sub_1D80E73F4();
  sub_1D7E0631C(0, &qword_1ECA0DD68);
  if (OUTLINED_FUNCTION_8_52())
  {
    OUTLINED_FUNCTION_13_41(v6);
    v3 = OUTLINED_FUNCTION_161();
    v4(v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    OUTLINED_FUNCTION_0_38();
    sub_1D7FBDB74(v6, &qword_1ECA0DD70, &qword_1ECA0DD68);
  }
}

Swift::Void __swiftcall TabBarController.textEndEditing()()
{
  v0 = TabBarController.primaryTabBarNavigationController.getter();
  v1 = OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v5 = *&v0[v1];
  v2 = v5;

  v6[3] = v5;
  sub_1D80E73F4();
  sub_1D7E0631C(0, &qword_1ECA0DD68);
  if (OUTLINED_FUNCTION_8_52())
  {
    OUTLINED_FUNCTION_13_41(v6);
    v3 = OUTLINED_FUNCTION_161();
    v4(v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    OUTLINED_FUNCTION_0_38();
    sub_1D7FBDB74(v6, &qword_1ECA0DD70, &qword_1ECA0DD68);
  }
}

char *sub_1D80E5C20(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_201(a3, result);
  }

  return result;
}

char *sub_1D80E5C48(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_201(a3, result);
  }

  return result;
}

unint64_t sub_1D80E5C6C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = result + 96 * a2;
  if (a3 >= result)
  {
    v4 = v3 >= a3;
    v5 = v3 == a3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (v5 || !v4)
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (a3 != result)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1D80E5CD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  OUTLINED_FUNCTION_9_42();
  if (v10 && (sub_1D7E720A0(0, a4, a5, MEMORY[0x1E69D6EA8]), OUTLINED_FUNCTION_8(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_2_130();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_1D7E720A0(0, a4, a5, MEMORY[0x1E69D6EA8]);
    OUTLINED_FUNCTION_2_130();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_1D80E5DDC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_201(a3, result);
  }

  return result;
}

char *sub_1D80E5E04(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_143(a3, result, a2);
  }

  return result;
}

void sub_1D80E5E40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_9_42();
  if (v8 && (a4(0), OUTLINED_FUNCTION_8(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_2_130();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_2_130();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_1D80E5F54(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_201(a3, result);
  }

  return result;
}

char *sub_1D80E5F7C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_201(a3, result);
  }

  return result;
}

char *sub_1D80E5FBC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_201(a3, result);
  }

  return result;
}

char *sub_1D80E5FF8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[568 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_143(a3, result, 568 * a2);
  }

  return result;
}

void sub_1D80E6054(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1D7E76C38(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_1D80E60F4(v8, v7);
  sub_1D8192284();
}

void sub_1D80E60F4(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2;
  v6 = sub_1D81925A4();
  if (v6 < v4)
  {
    v7 = v6;
    v8 = sub_1D7FE73BC(v4 / 2);
    v10[0] = v9;
    v10[1] = (v4 / 2);
    v5 = v5;
    sub_1D80E6414(v10, v11, a1, v7, v5);
    if (v2)
    {
      if (v4 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v4 < -1)
    {
LABEL_13:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4)
  {
    sub_1D80E6214(0, v4, 1, a1, v5);
  }

  else
  {
  }
}

void sub_1D80E6214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  if (a3 == a2)
  {
  }

  else
  {
    v29 = OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder;
    v30 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v28 = a5;
    while (2)
    {
      v26 = v5;
      v27 = a3;
      v7 = *(v30 + 8 * a3);
      v25 = v6;
      do
      {
        v8 = *v5;
        v9 = *&a5[v29];
        swift_beginAccess();
        swift_getObjectType();
        v10 = v7;
        v11 = v8;
        v12 = sub_1D818EF94();
        if (!*(v9 + 16) || (v14 = sub_1D7E11428(v12, v13), (v15 & 1) == 0))
        {

          __break(1u);
LABEL_17:

          __break(1u);
LABEL_18:
          __break(1u);
          return;
        }

        v16 = *(*(v9 + 56) + 8 * v14);

        swift_beginAccess();
        swift_getObjectType();
        v17 = sub_1D818EF94();
        if (!*(v9 + 16))
        {
          goto LABEL_17;
        }

        v19 = sub_1D7E11428(v17, v18);
        if ((v20 & 1) == 0)
        {
          goto LABEL_17;
        }

        v21 = *(*(v9 + 56) + 8 * v19);

        a5 = v28;
        if (v16 >= v21)
        {
          break;
        }

        if (!v30)
        {
          goto LABEL_18;
        }

        v22 = *v5;
        v7 = *(v5 + 8);
        *v5 = v7;
        *(v5 + 8) = v22;
        v5 -= 8;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v27 + 1;
      v5 = v26 + 8;
      v6 = v25 - 1;
      if (v27 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D80E6414(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v121 = a5;
    ObjectType = MEMORY[0x1E69E7CC0];
LABEL_103:
    v140 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    v141 = a5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_143:
      ObjectType = sub_1D8120804(ObjectType);
    }

    v123 = (ObjectType + 16);
    v122 = *(ObjectType + 16);
    for (i = ObjectType; ; ObjectType = i)
    {
      if (v122 < 2)
      {

        return;
      }

      v124 = *a3;
      if (!*a3)
      {
        goto LABEL_148;
      }

      v125 = (ObjectType + 16 * v122);
      v126 = *v125;
      v127 = v123;
      v128 = &v123[2 * v122];
      ObjectType = *(v128 + 1);
      v153 = (v124 + 8 * *v125);
      __dstc = (v124 + 8 * *v128);
      v129 = (v124 + 8 * ObjectType);
      v130 = v141;
      sub_1D80E6D74(v153, __dstc, v129, v140, v130);
      if (v151)
      {
        break;
      }

      if (ObjectType < v126)
      {
        goto LABEL_132;
      }

      if (v122 - 2 >= *v127)
      {
        goto LABEL_133;
      }

      v123 = v127;
      *v125 = v126;
      v125[1] = ObjectType;
      v131 = *v127 - v122;
      if (*v127 < v122)
      {
        goto LABEL_134;
      }

      v122 = *v127 - 1;
      sub_1D8120818(v128 + 16, v131, v128);
      *v127 = v122;
    }

LABEL_115:
    return;
  }

  v152 = OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder;
  v140 = a5;
  v6 = 0;
  ObjectType = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 >= v5)
    {
      goto LABEL_27;
    }

    v9 = *a3;
    v10 = v6;
    v156 = *(*a3 + 8 * v6);
    v155 = *(v9 + 8 * v8);
    v11 = v155;
    v12 = v156;
    v13 = v11;
    __dst = sub_1D80E50FC(&v156, &v155, v140);
    if (v151)
    {

      goto LABEL_115;
    }

    v137 = 8 * v8;
    v14 = v8;
    v15 = (v9 + 8 * v8 + 16);
    v133 = v14;
    v16 = v14 + 2;
    v6 = v10;
    v147 = ObjectType;
    v141 = v5;
LABEL_6:
    v17 = v16;
    if (v6 + 1 < v5)
    {
      break;
    }

    v6 = v5;
LABEL_14:
    if (__dst)
    {
      v8 = v133;
      if (v6 < v133)
      {
        goto LABEL_142;
      }

      if (v133 < v6)
      {
        if (v5 >= v17)
        {
          v39 = v17;
        }

        else
        {
          v39 = v5;
        }

        v40 = 8 * v39 - 8;
        v41 = v6;
        v42 = v133;
        v43 = v137;
        do
        {
          if (v42 != --v41)
          {
            v44 = *a3;
            if (!*a3)
            {
              goto LABEL_149;
            }

            v45 = *(v44 + v43);
            *(v44 + v43) = *(v44 + v40);
            *(v44 + v40) = v45;
          }

          ++v42;
          v40 -= 8;
          v43 += 8;
        }

        while (v42 < v41);
      }
    }

    else
    {
      v8 = v133;
    }

LABEL_27:
    v46 = a3[1];
    if (v6 < v46)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_137;
      }

      if (v6 - v8 < a4)
      {
        v47 = (v8 + a4);
        if (__OFADD__(v8, a4))
        {
          goto LABEL_138;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v8)
        {
LABEL_139:
          __break(1u);
LABEL_140:

          __break(1u);
LABEL_141:

          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v6 != v47)
        {
          v148 = ObjectType;
          v48 = *a3;
          v49 = *a3 + 8 * v6 - 8;
          v134 = v8;
          v50 = v8 - v6;
          v51 = a5;
          v136 = v47;
          do
          {
            __dsta = v6;
            v52 = *(v48 + 8 * v6);
            v138 = v50;
            v141 = v49;
            while (1)
            {
              v53 = *v49;
              v54 = *&v51[v152];
              v55 = &v52[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
              swift_beginAccess();
              v56 = *v55;
              ObjectType = swift_getObjectType();
              v156 = v56;
              v57 = v52;
              v58 = v53;
              v59 = sub_1D818EF94();
              if (!*(v54 + 16))
              {
                goto LABEL_140;
              }

              v61 = sub_1D7E11428(v59, v60);
              if ((v62 & 1) == 0)
              {
                goto LABEL_140;
              }

              ObjectType = *(*(v54 + 56) + 8 * v61);

              v63 = &v58[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
              swift_beginAccess();
              v64 = *v63;
              swift_getObjectType();
              v155 = v64;
              v65 = sub_1D818EF94();
              if (!*(v54 + 16))
              {
                goto LABEL_141;
              }

              v67 = sub_1D7E11428(v65, v66);
              if ((v68 & 1) == 0)
              {
                goto LABEL_141;
              }

              v69 = *(*(v54 + 56) + 8 * v67);

              if (ObjectType >= v69)
              {
                break;
              }

              if (!v48)
              {

                __break(1u);
                goto LABEL_145;
              }

              v70 = *v49;
              v52 = *(v49 + 8);
              *v49 = v52;
              *(v49 + 8) = v70;
              v49 -= 8;
              v71 = __CFADD__(v50++, 1);
              v51 = a5;
              if (v71)
              {
                goto LABEL_47;
              }
            }

            v51 = a5;
LABEL_47:
            v6 = (__dsta + 1);
            v49 = (v141 + 8);
            v50 = v138 - 1;
          }

          while (__dsta + 1 != v136);
          v6 = v136;
          ObjectType = v148;
          v8 = v134;
        }
      }
    }

    if (v6 < v8)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D7EE4840();
      ObjectType = v119;
    }

    v72 = *(ObjectType + 16);
    v73 = v72 + 1;
    if (v72 >= *(ObjectType + 24) >> 1)
    {
      sub_1D7EE4840();
      ObjectType = v120;
    }

    *(ObjectType + 16) = v73;
    v74 = ObjectType + 32;
    v75 = (ObjectType + 32 + 16 * v72);
    *v75 = v8;
    v75[1] = v6;
    v141 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (v72)
    {
      __dstb = v6;
      v149 = ObjectType;
      v139 = ObjectType + 32;
      while (1)
      {
        v76 = v73 - 1;
        v77 = (v74 + 16 * (v73 - 1));
        v78 = (ObjectType + 16 * v73);
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v79 = *(ObjectType + 32);
          v80 = *(ObjectType + 40);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_70:
          if (v82)
          {
            goto LABEL_123;
          }

          v94 = *v78;
          v93 = v78[1];
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_126;
          }

          v98 = v77[1];
          v99 = v98 - *v77;
          if (__OFSUB__(v98, *v77))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v96, v99))
          {
            goto LABEL_131;
          }

          if (v96 + v99 >= v81)
          {
            if (v81 < v99)
            {
              v76 = v73 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v73 < 2)
        {
          goto LABEL_125;
        }

        v101 = *v78;
        v100 = v78[1];
        v89 = __OFSUB__(v100, v101);
        v96 = v100 - v101;
        v97 = v89;
LABEL_85:
        if (v97)
        {
          goto LABEL_128;
        }

        v103 = *v77;
        v102 = v77[1];
        v89 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v89)
        {
          goto LABEL_130;
        }

        if (v104 < v96)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v76 - 1 >= v73)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v108 = *a3;
        if (!*a3)
        {
          goto LABEL_147;
        }

        v109 = (v74 + 16 * (v76 - 1));
        v110 = *v109;
        v111 = v76;
        v112 = v74 + 16 * v76;
        v113 = *(v112 + 8);
        v114 = (v108 + 8 * *v109);
        v115 = (v108 + 8 * *v112);
        v116 = (v108 + 8 * v113);
        v117 = v140;
        sub_1D80E6D74(v114, v115, v116, v141, v117);
        if (v151)
        {

          goto LABEL_115;
        }

        ObjectType = v149;
        if (v113 < v110)
        {
          goto LABEL_118;
        }

        v118 = *(v149 + 16);
        if (v111 > v118)
        {
          goto LABEL_119;
        }

        *v109 = v110;
        v109[1] = v113;
        if (v111 >= v118)
        {
          goto LABEL_120;
        }

        v73 = v118 - 1;
        sub_1D8120818((v112 + 16), v118 - 1 - v111, v112);
        *(v149 + 16) = v118 - 1;
        v6 = __dstb;
        v74 = v139;
        if (v118 <= 2)
        {
          goto LABEL_99;
        }
      }

      v83 = v74 + 16 * v73;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_121;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_122;
      }

      v90 = v78[1];
      v91 = v90 - *v78;
      if (__OFSUB__(v90, *v78))
      {
        goto LABEL_124;
      }

      v89 = __OFADD__(v81, v91);
      v92 = v81 + v91;
      if (v89)
      {
        goto LABEL_127;
      }

      if (v92 >= v86)
      {
        v106 = *v77;
        v105 = v77[1];
        v89 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v89)
        {
          goto LABEL_135;
        }

        if (v81 < v107)
        {
          v76 = v73 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_103;
    }
  }

  v18 = v6;
  v20 = *(v15 - 1);
  v19 = *v15;
  v21 = *&a5[v152];
  v22 = (*v15 + OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController);
  swift_beginAccess();
  v23 = *v22;
  swift_getObjectType();
  v156 = v23;
  v24 = v19;
  v25 = v20;
  v26 = sub_1D818EF94();
  if (*(v21 + 16))
  {
    v28 = sub_1D7E11428(v26, v27);
    if (v29)
    {
      v30 = *(*(v21 + 56) + 8 * v28);

      v31 = &v25[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
      swift_beginAccess();
      v32 = *v31;
      swift_getObjectType();
      v155 = v32;
      v33 = sub_1D818EF94();
      if (!*(v21 + 16))
      {
        goto LABEL_146;
      }

      v35 = sub_1D7E11428(v33, v34);
      if ((v36 & 1) == 0)
      {
        goto LABEL_146;
      }

      v37 = *(*(v21 + 56) + 8 * v35);

      v38 = __dst ^ (v30 >= v37);
      ++v15;
      v6 = v18 + 1;
      v16 = v17 + 1;
      ObjectType = v147;
      v5 = v141;
      if ((v38 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }
  }

LABEL_145:

  __break(1u);
LABEL_146:

  __break(1u);
LABEL_147:

  __break(1u);
LABEL_148:

  __break(1u);
LABEL_149:

  __break(1u);
LABEL_150:

  __break(1u);
LABEL_151:

  __break(1u);
}

uint64_t sub_1D80E6D74(void **__src, void **__dst, void **a3, void **a4, char *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = a3 - __dst;
  if (v9 >= v10)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v12 = &v5[v10];
    v54 = v5;
    v55 = OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder;
    v64 = v8;
LABEL_28:
    v33 = v7 - 1;
    v34 = v6 - 1;
    v66 = v7;
    for (i = v7 - 1; v12 > v5 && v7 > v8; v33 = i)
    {
      v60 = v12;
      v62 = v34;
      v36 = *--v12;
      v37 = *v33;
      v38 = *&a5[v55];
      swift_beginAccess();
      swift_getObjectType();
      v39 = v36;
      v40 = v37;
      v41 = sub_1D818EF94();
      if (!*(v38 + 16) || (v43 = sub_1D7E11428(v41, v42), (v44 & 1) == 0))
      {

        __break(1u);
LABEL_53:

        __break(1u);
LABEL_54:

        __break(1u);
LABEL_55:

        __break(1u);
        return result;
      }

      v45 = *(*(v38 + 56) + 8 * v43);

      swift_beginAccess();
      swift_getObjectType();
      v46 = sub_1D818EF94();
      if (!*(v38 + 16))
      {
        goto LABEL_54;
      }

      v48 = sub_1D7E11428(v46, v47);
      if ((v49 & 1) == 0)
      {
        goto LABEL_54;
      }

      v50 = *(*(v38 + 56) + 8 * v48);

      v5 = v54;
      if (v45 < v50)
      {
        v6 = v62;
        v8 = v64;
        v7 = i;
        v12 = v60;
        if (v62 + 1 != v66)
        {
          *v62 = *i;
          v7 = i;
        }

        goto LABEL_28;
      }

      v7 = v66;
      if (v60 != v62 + 1)
      {
        *v62 = *v12;
      }

      v34 = v62 - 1;
      v8 = v64;
    }
  }

  else
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v12 = &v5[v9];
    v56 = OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder;
    v59 = v12;
    v61 = v6;
    while (v5 < v12 && v7 < v6)
    {
      v63 = v8;
      v65 = v7;
      v14 = *v7;
      v15 = *v5;
      v16 = *&a5[v56];
      swift_beginAccess();
      swift_getObjectType();
      v17 = v14;
      v18 = v15;
      v19 = sub_1D818EF94();
      if (!*(v16 + 16))
      {
        goto LABEL_55;
      }

      v21 = sub_1D7E11428(v19, v20);
      if ((v22 & 1) == 0)
      {
        goto LABEL_55;
      }

      v23 = *(*(v16 + 56) + 8 * v21);

      swift_beginAccess();
      swift_getObjectType();
      v24 = sub_1D818EF94();
      if (!*(v16 + 16))
      {
        goto LABEL_53;
      }

      v26 = sub_1D7E11428(v24, v25);
      if ((v27 & 1) == 0)
      {
        goto LABEL_53;
      }

      v28 = *(*(v16 + 56) + 8 * v26);

      if (v23 >= v28)
      {
        v30 = v5;
        v29 = v63;
        v31 = v63 == v5++;
      }

      else
      {
        v29 = v63;
        v30 = v7++;
        v31 = v63 == v65;
      }

      v12 = v59;
      v6 = v61;
      if (!v31)
      {
        *v29 = *v30;
      }

      v8 = v29 + 1;
    }

    v7 = v8;
  }

  v51 = v12 - v5;
  if (v7 != v5 || v7 >= &v5[v51])
  {
    memmove(v7, v5, 8 * v51);
  }

  return 1;
}

uint64_t sub_1D80E71E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D81920A4();
  }

  return sub_1D8192224();
}

void sub_1D80E7260(uint64_t a1, char a2, void *a3)
{
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v5 = sub_1D8191304();

  [a3 setViewControllers:v5 animated:a2 & 1];
}

void sub_1D80E72F4()
{
  if (!qword_1EDBAE5E0)
  {
    type metadata accessor for TabBarNavigationController();
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE5E0);
    }
  }
}

uint64_t sub_1D80E7378(uint64_t a1, uint64_t a2)
{
  sub_1D7E328A8(0, &qword_1EDBB10F0, qword_1EDBB10F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D80E73F4()
{
  result = qword_1ECA11090;
  if (!qword_1ECA11090)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB31B0);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA11090);
  }

  return result;
}

void sub_1D80E7510()
{
  if (!qword_1EDBB2DD0)
  {
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2DD0);
    }
  }
}

uint64_t sub_1D80E7570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static Commands.~= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  *&v14[0] = a1;
  type metadata accessor for Commands();
  sub_1D80E777C();

  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1D80E77D8(&v17);
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  sub_1D7E05450(&v17, v20);
  v16 = a2;

  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1D80E77D8(v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    goto LABEL_10;
  }

  sub_1D7E05450(v14, &v17);
  v3 = v21;
  v4 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = *(&v18 + 1);
  v9 = v19;
  __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D8192634();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v12 & 1;
}

unint64_t sub_1D80E777C()
{
  result = qword_1EDBBBF58;
  if (!qword_1EDBBBF58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBBF58);
  }

  return result;
}

uint64_t sub_1D80E77D8(uint64_t a1)
{
  sub_1D80E7834();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D80E7834()
{
  if (!qword_1ECA11100)
  {
    sub_1D80E777C();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11100);
    }
  }
}

uint64_t LayeredView.identifier.getter()
{
  v1 = *(v0 + qword_1ECA11108);
  sub_1D8190DB4();
  return v1;
}

id sub_1D80E79C0()
{
  OUTLINED_FUNCTION_0_69();
  ObjectType = swift_getObjectType();
  v5 = &v1[qword_1ECA11108];
  *v5 = v3;
  *(v5 + 1) = v2;
  *&v1[qword_1ECA11110] = v0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  sub_1D8190DB4();
  v8 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D8191484();
  v6 = v8;
  swift_getWitnessTable();
  sub_1D8191224();

  return v6;
}

void sub_1D80E7AE4(uint64_t a1, void *a2)
{
  v3 = (*(*((*MEMORY[0x1E69E7D40] & *a2) + 0xC0) + 24))(*((*MEMORY[0x1E69E7D40] & *a2) + 0xB8));
  [a2 addSubview_];
}

id LayeredView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_1D80E7C28()
{
}

id LayeredView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D80E7CA4()
{
}

uint64_t static MotionTransform.Transform.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v3 >> 61 != 1)
      {
        goto LABEL_17;
      }

      v12 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v13 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      if (*(v12 + 16) != *(v13 + 16) || *(v12 + 24) != *(v13 + 24))
      {
        goto LABEL_17;
      }

      v16 = *(v12 + 32);
      v17 = *(v12 + 48);
      v18 = *(v12 + 64);
      v19 = *(v12 + 72);
      v20 = *(v13 + 72);
      v21 = *(v13 + 64);
      v27 = v16;
      v28 = v17;
      v29 = v18;
      v30 = v19;
      v22 = *(v13 + 48);
      v23 = *(v13 + 32);
      v24 = v22;
      v25 = v21;
      v26 = v20;
      goto LABEL_9;
    case 2uLL:
      if (v3 >> 61 != 2)
      {
        goto LABEL_17;
      }

      v2 &= 0x1FFFFFFFFFFFFFFFuLL;
      v4 = *(v2 + 56);
      v5 = *(v2 + 48);
      v3 &= 0x1FFFFFFFFFFFFFFFuLL;
      goto LABEL_8;
    case 3uLL:
      if (v3 >> 61 != 3)
      {
        goto LABEL_17;
      }

      v11 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v27 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v23 = v11;

      v6 = static MotionTransform.Transform.== infix(_:_:)(&v27, &v23);

      return v6 & 1;
    case 4uLL:
      if (v3 != 0x8000000000000000)
      {
        goto LABEL_17;
      }

      v6 = 1;
      return v6 & 1;
    default:
      if (v3 >> 61)
      {
LABEL_17:
        v6 = 0;
      }

      else
      {
        v4 = *(v2 + 56);
        v5 = *(v2 + 48);
LABEL_8:
        v7 = *(v3 + 48);
        v8 = *(v3 + 56);
        v9 = *(v2 + 32);
        v27 = *(v2 + 16);
        v28 = v9;
        v29 = v5;
        v30 = v4;
        v10 = *(v3 + 32);
        v23 = *(v3 + 16);
        v24 = v10;
        v25 = v7;
        v26 = v8;
LABEL_9:
        v6 = static MotionTransform.== infix(_:_:)(&v27, &v23);
      }

      return v6 & 1;
  }
}

uint64_t sub_1D80E7FBC@<X0>(void *a1@<X8>)
{
  if (*v1 >> 61 == 3)
  {
    return sub_1D80E7FBC();
  }

  *a1 = *v1;
}

Swift::Double __swiftcall MotionTransform.scaleX(for:)(__C::CGRect a1)
{
  x = a1.origin.x;
  result = 1.0;
  switch(*(v1 + 40))
  {
    case 1:
    case 2:
      v4 = *(v1 + 8);
      v5 = *v1;
      v6 = x;
      v7 = CGRectGetWidth(a1) + v4 - v5;
      v8.origin.x = OUTLINED_FUNCTION_80();
      result = v7 / CGRectGetWidth(v8);
      break;
    case 3:
    case 4:
      return result;
    case 5:
      result = *(v1 + 32);
      break;
    default:
      result = *v1;
      break;
  }

  return result;
}

Swift::Double __swiftcall MotionTransform.scaleY(for:)(__C::CGRect a1)
{
  result = 1.0;
  switch(*(v1 + 40))
  {
    case 1:
      v3 = (v1 + 8);
      v4 = *v1;
      goto LABEL_6;
    case 2:
      v3 = (v1 + 24);
      v4 = *(v1 + 16);
LABEL_6:
      v5 = *v3;
      v7.origin.x = OUTLINED_FUNCTION_80();
      v6 = CGRectGetHeight(v7) + v5 - v4;
      v8.origin.x = OUTLINED_FUNCTION_80();
      result = v6 / CGRectGetHeight(v8);
      break;
    case 3:
    case 4:
      return result;
    case 5:
      result = *(v1 + 32);
      break;
    default:
      result = *v1;
      break;
  }

  return result;
}

void MotionTransform.rangeX(for:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  switch(*(v4 + 40))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      return;
    default:
      v5 = *v4;
      v10 = CGRectGetWidth(*&a1) * v5;
      v11.origin.x = a1;
      v11.origin.y = a2;
      v11.size.width = a3;
      v11.size.height = a4;
      if ((v10 - CGRectGetWidth(v11)) * 0.5 < 0.0)
      {
        __break(1u);
      }

      break;
  }
}

uint64_t sub_1D80E8220()
{
  if (*v0 >> 61 == 3)
  {
    v1 = sub_1D80E8220() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void MotionTransform.rangeY(for:)(double a1, double a2, double a3, double a4)
{
  switch(*(v4 + 40))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      return;
    default:
      v6 = *v4;
      v5 = CGRectGetHeight(*&a1) * *&v6;
      v7.origin.x = OUTLINED_FUNCTION_80();
      if ((v5 - CGRectGetHeight(v7)) * 0.5 < 0.0)
      {
        __break(1u);
      }

      break;
  }
}

uint64_t static MotionTransform.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 16);
  v5 = *a2;
  v4 = *(a2 + 16);
  v6 = *(a2 + 40);
  switch(*(a1 + 40))
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_17;
      }

LABEL_9:
      v8 = 0;
      v9 = vzip1q_s64(v3, v5);
      if ((vmovn_s64(vceqq_f64(vdupq_laneq_s64(v9, 1), v9)).u8[0] & 1) == 0)
      {
        return v8 & 1;
      }

      v10 = vzip2q_s64(v3, v5);
      if ((vmovn_s64(vceqq_f64(vdupq_laneq_s64(v10, 1), v10)).u8[0] & 1) == 0)
      {
        return v8 & 1;
      }

      v11 = vmovn_s64(vceqq_f64(v2, v4));
      v12 = vuzp1_s16(v11, v11);
      v13 = v12.u8[4];
      v14 = v12.u8[6];
LABEL_14:
      v8 = v13 & v14;
      return v8 & 1;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_17;
      }

LABEL_13:
      v15 = vzip1q_s64(v3, v5);
      v16 = vzip2q_s64(v3, v5);
      v13 = vmovn_s64(vceqq_f64(vdupq_laneq_s64(v15, 1), v15)).u8[0];
      v14 = vmovn_s64(vceqq_f64(vdupq_laneq_s64(v16, 1), v16)).u8[0];
      goto LABEL_14;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_17;
      }

      v8 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v2, v4)))) & (*(a1 + 32) == *(a2 + 32));
      return v8 & 1;
    default:
      if (*(a2 + 40))
      {
LABEL_17:
        v8 = 0;
      }

      else
      {
        v7 = vzip1q_s64(v3, v5);
        v8 = vmovn_s64(vceqq_f64(vdupq_laneq_s64(v7, 1), v7)).u8[0];
      }

      return v8 & 1;
  }
}

uint64_t TransitionFactory.__allocating_init(factory:fallbackTransition:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1D7E05450(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t TransitionFactory.init(factory:fallbackTransition:)(__int128 *a1, uint64_t a2)
{
  sub_1D7E05450(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t TransitionFactory.presentationTransition()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  result = (*(v2 + 8))(v1, v2);
  if (!result)
  {
    v4 = *(v0[7] + OBJC_IVAR____TtC5TeaUI10Transition_presentationTransitionFactory);

    v6 = v4(v5);

    return v6;
  }

  return result;
}

uint64_t TransitionFactory.dismissalTransition(interactive:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  result = (*(v4 + 16))(a1, v3, v4);
  if (!result)
  {
    v6 = *(v1[7] + OBJC_IVAR____TtC5TeaUI10Transition_dismissalTransitionFactory);

    v7 = v6(a1 & 1);

    return v7;
  }

  return result;
}

void __swiftcall TransitionFactory.presentationController(presented:presenting:source:)(UIPresentationController_optional *__return_ptr retstr, UIViewController *presented, UIViewController_optional *presenting, UIViewController *source)
{
  v8 = v4[5];
  v9 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v8);
  if (!(*(v9 + 24))(presented, presenting, source, v8, v9))
  {
    v10 = *(v4[7] + OBJC_IVAR____TtC5TeaUI10Transition_presentationControllerFactory);
    if (v10)
    {

      v10(presented, presenting, source);
      sub_1D7E0E10C(v10);
    }
  }
}

uint64_t TransitionFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return v0;
}

uint64_t TransitionFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t PillViewLayoutAttributes.init(iconFrame:titleFrame:contentFrame:frame:cornerRadius:backgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  *(a2 + 40) = a8;
  *(a2 + 48) = a9;
  *(a2 + 56) = a10;
  *(a2 + 64) = a11;
  *(a2 + 80) = a12;
  *(a2 + 96) = a13;
  *(a2 + 112) = a14;
  *(a2 + 128) = a15;
  *(a2 + 136) = result;
  return result;
}

uint64_t sub_1D80E8914(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 136);
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

uint64_t sub_1D80E8954(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 136) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void __swiftcall BlueprintSelectionOptions.init(modifierFlags:scene:)(TeaUI::BlueprintSelectionOptions *__return_ptr retstr, __C::UIKeyModifierFlags_optional modifierFlags, UIScene_optional *scene)
{
  retstr->modifierFlags.value.rawValue = modifierFlags.value.rawValue;
  retstr->modifierFlags.is_nil = modifierFlags.is_nil;
  *(&retstr->scene.value.super.super.isa + 7) = scene;
}

void *BlueprintSelectionOptions.scene.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void __swiftcall BlueprintSelectionOptions.init()(TeaUI::BlueprintSelectionOptions *__return_ptr retstr)
{
  retstr->modifierFlags.value.rawValue = 0;
  retstr->modifierFlags.is_nil = 1;
  *(&retstr->scene.value.super.super.isa + 7) = 0;
}

uint64_t sub_1D80E8A24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D80E8A78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t TipSourceManager.__allocating_init(tipManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a1;
  return v2;
}

void TipSourceManager.sourceViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*TipSourceManager.sourceViewController.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1D80E8C14;
}

void sub_1D80E8C14(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t TipSourceManager.init(tipManager:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = a1;
  return v1;
}

void TipSourceManager.register(placement:)()
{
  OUTLINED_FUNCTION_0_103();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  TipManager.register(placement:)();
}

Swift::Void __swiftcall TipSourceManager.dismissTips(animated:)(Swift::Bool animated)
{
  OUTLINED_FUNCTION_0_103();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_super = &Strong->super.super;
    TipManager.dismissTips(for:animated:)(Strong, 1);
  }

  else
  {
    if (qword_1EDBBC398 != -1)
    {
      swift_once();
    }

    v3 = sub_1D818FE34();
    __swift_project_value_buffer(v3, qword_1EDBBC3A0);
    p_super = sub_1D818FE14();
    v4 = sub_1D81919C4();
    if (os_log_type_enabled(p_super, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D7DFF000, p_super, v4, "Attempted to dismiss tips but source view controller was nil", v5, 2u);
      MEMORY[0x1DA715D00](v5, -1, -1);
    }
  }
}

uint64_t TipSourceManager.deinit()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return v0;
}

uint64_t TipSourceManager.__deallocating_deinit()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocClassInstance();
}

void static ContextMenuItem.sharePlaceHolder()()
{
  if (qword_1EDBAE690 != -1)
  {
    OUTLINED_FUNCTION_0_202();
  }

  swift_allocObject();

  ContextMenuItem.init(command:title:image:options:willExecute:)();
}

id static UIButton.closeButton.getter()
{
  v0 = [objc_allocWithZone(type metadata accessor for ActionButton()) init];
  sub_1D7E471D0();
  v1 = sub_1D7E47238();
  if (v1 && (v2 = v1, v3 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:22.0], v4 = objc_msgSend(v2, sel_imageByApplyingSymbolConfiguration_, v3), v2, v3, v4))
  {
    v5 = v4;
    v6 = v5;
  }

  else
  {
    v5 = sub_1D7E47238();
    v6 = 0;
  }

  [v0 setImage:v5 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = v0;
  v10 = [v8 bundleForClass_];
  v11 = sub_1D818E514();
  v13 = v12;

  sub_1D806B194(v11, v13, v9);
  v14 = v9;
  [v14 setShowsLargeContentViewer_];
  sub_1D80E9500(v14);
  if (v15)
  {
    v16 = sub_1D8190EE4();
  }

  else
  {
    v16 = 0;
  }

  [v14 setLargeContentTitle_];

  return v14;
}

id static UIButton.backButton.getter()
{
  v0 = [objc_allocWithZone(type metadata accessor for ActionButton()) init];
  if (qword_1ECA0C388 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA105F0;
  v2 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:22.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  v4 = v3;
  if (!v3)
  {
    v4 = v1;
  }

  v5 = v3;
  [v0 setImage:v4 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v0;
  v9 = [v7 bundleForClass_];
  v10 = sub_1D818E514();
  v12 = v11;

  sub_1D806B194(v10, v12, v8);
  v13 = v8;
  [v13 setShowsLargeContentViewer_];
  sub_1D80E9500(v13);
  if (v14)
  {
    v15 = sub_1D8190EE4();
  }

  else
  {
    v15 = 0;
  }

  [v13 setLargeContentTitle_];

  return v13;
}

id static UIButton.disclosureIndicator.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC738]) initWithFrame_];
  [v0 setUserInteractionEnabled_];
  if (qword_1ECA0C348 != -1)
  {
    swift_once();
  }

  [v0 setBackgroundImage:qword_1ECA2C540 forState:0];
  if (byte_1ECA111B8)
  {
    [v0 sizeToFit];
    [v0 frame];
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;

    qword_1ECA11198 = v2;
    dbl_1ECA111A0 = v4;
    qword_1ECA111A8 = v6;
    dbl_1ECA111B0 = v8;
    byte_1ECA111B8 = 0;
  }

  else
  {
    [v0 setFrame_];
  }

  return v0;
}

uint64_t sub_1D80E9500(void *a1)
{
  v2 = [a1 accessibilityLabel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D8190F14();

  return v3;
}

uint64_t BlueprintViewAppearanceState.description.getter()
{
  result = 0x6C616974696E69;
  switch(*v0)
  {
    case 1:
      result = 0x6E69726165707061;
      break;
    case 2:
      result = 0x6465726165707061;
      break;
    case 3:
    case 4:
      result = 0x6165707061736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t BlueprintViewAppearanceState.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t BlueprintViewController.blueprintBookmarkManager.getter()
{
  OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return sub_1D7E265E4();
}

uint64_t BlueprintViewController.blueprintBookmarkManager.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t BlueprintViewController.blueprintLayoutTransitionManager.getter()
{
  OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return sub_1D7E265E4();
}

uint64_t BlueprintViewController.blueprintLayoutTransitionManager.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t BlueprintViewController.gutterViewManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
}

uint64_t BlueprintViewController.gutterViewManager.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 144);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_56();
  *(v1 + v3) = v0;
}

uint64_t BlueprintViewController.gutterViewManager.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t BlueprintViewController.responderBehavior.getter()
{
  OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 152);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_7();
  result = swift_beginAccess();
  *v0 = *(v1 + v3);
  return result;
}

uint64_t sub_1D80E99D8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x1E69E7D40] & **a1) + 0x98);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t BlueprintViewController.responderBehavior.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t BlueprintViewController.viewCellResizingProvider.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1D80E9B68@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x1E69E7D40] & **a1) + 0xA0);
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D80E9BE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return BlueprintViewController.viewCellResizingProvider.setter(v2, v1);
}

void sub_1D80E9C20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    LOBYTE(v2) = 8;
    sub_1D80E9C84(&v2, 0);
  }
}

void sub_1D80E9C84(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v54) = a2;
  v58 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v57 = (*MEMORY[0x1E69E7D40] & *v2);
  v6 = *((v5 & v4) + 0x68);
  v55 = *((v5 & v4) + 0x50);
  v56 = v6;
  v65[0] = swift_getAssociatedTypeWitness();
  v65[1] = swift_getAssociatedTypeWitness();
  v65[2] = swift_getAssociatedConformanceWitness();
  v65[3] = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Blueprint();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - v9;
  v11 = *v58;
  v12 = MEMORY[0x1E69E7D40];
  CoverViewManager.layoutIfNeeded()();
  v13 = *((*v12 & *v2) + 0xE0);
  swift_beginAccess();
  if (*(v3 + v13) != 1)
  {
    return;
  }

  v14 = sub_1D7E5051C();
  v15 = v14[OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing];

  if (v15)
  {
    return;
  }

  v58 = v8;
  v16 = v3 + *((*v12 & *v3) + 0xB0);
  swift_beginAccess();
  v17 = *(v16 + 1);
  swift_unknownObjectRetain();
  v18 = [v3 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  [v18 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [v3 view];
  if (!v28)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v29 = v28;
  ObjectType = swift_getObjectType();
  sub_1D802FE04();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  LOBYTE(v65[0]) = 1;
  (*(v17 + 64))(v64, v65, ObjectType, v17, v21, v23, v25, v27, v32, v34, v36, v38);
  swift_unknownObjectRelease();
  memcpy(v65, v64, 0x235uLL);
  v39 = v58;
  if (v11 == 6)
  {
    swift_beginAccess();
    sub_1D7E265E4();
    if (*(&v64[1] + 1))
    {
      sub_1D7E05450(v64, v61);
      if ((v54 & 1) == 0)
      {
        v42 = v62;
        v54 = v63;
        v58 = __swift_project_boxed_opaque_existential_1(v61, v62);
        swift_beginAccess();
        v43 = v57;
        v44 = v57[14];
        v45 = *(v44 + 56);
        v46 = v57[11];
        swift_unknownObjectRetain();
        v47 = v45(v46, v44);
        swift_unknownObjectRelease();
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        memcpy(v64, v65, 0x235uLL);
        swift_beginAccess();
        sub_1D7E265E4();
        v49 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v50 = swift_allocObject();
        *(v50 + 16) = v55;
        *(v50 + 24) = v46;
        v51 = v56;
        *(v50 + 32) = v43[12];
        *(v50 + 40) = v51;
        *(v50 + 48) = v44;
        *(v50 + 56) = v43[15];
        *(v50 + 64) = v49;
        memcpy((v50 + 72), v65, 0x235uLL);
        *(v50 + 637) = 6;
        v52 = v54;
        v53 = *(v54 + 16);

        sub_1D7E222B8(v65, &v59);
        v53(v47, AssociatedConformanceWitness, v64, v60, 0, sub_1D80EF998, v50, v42, v52);

        sub_1D7E73ECC(v60, &qword_1EDBB65A8, &qword_1EDBB65B0, &protocol descriptor for BlueprintBookmarkManagerType);

        sub_1D7E4C1A0(v65);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        return;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v61);
    }

    else
    {
      sub_1D7E73ECC(v64, &qword_1EDBB49C0, &qword_1EDBB49C8, &protocol descriptor for BlueprintLayoutTransitionManagerType);
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    BlueprintProviderType.blueprint.getter(v55, v56);
    memcpy(v64, v65, 0x235uLL);
    LOBYTE(v61[0]) = v11;
    (*(v57[15] + 152))(v10, v64, v61, v57[12]);

    (v39[1])(v10, v7);
  }

  sub_1D7E4C1A0(v65);
}

uint64_t BlueprintViewController.viewCellResizingProvider.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t sub_1D80EA484(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t BlueprintViewController.keyCommandManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
}

uint64_t BlueprintViewController.delegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D80EA580@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void (*BlueprintViewController.delegate.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_3_7();
  *(v5 + 40) = *(v4 + 280);
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1D80EA6C8;
}

void sub_1D80EA6C8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_1D7E2A2E8();
  }

  free(v3);
}

uint64_t BlueprintViewController.appearanceState.getter()
{
  OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 304);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_7();
  result = swift_beginAccess();
  *v0 = *(v1 + v3);
  return result;
}

void BlueprintViewController.__allocating_init(provider:viewProvider:layoutOptionsProvider:app:impressionManager:keyCommandManager:commandCenter:tracker:)(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = objc_allocWithZone(v10);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_96_2();
  BlueprintViewController.init(provider:viewProvider:layoutOptionsProvider:app:impressionManager:keyCommandManager:commandCenter:tracker:)(v15, v16, v17, v18, a5, a6, a7, a8, a9, a10, v19, a8, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  OUTLINED_FUNCTION_36();
}

id BlueprintViewController.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithCoder_];

  return v1;
}

void BlueprintViewController.init(coder:)()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_3_7();
  v4 = v0 + *(v3 + 128);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  OUTLINED_FUNCTION_3_7();
  v6 = v0 + *(v5 + 136);
  *v6 = v7;
  *(v6 + 1) = v7;
  *(v6 + 4) = 0;
  OUTLINED_FUNCTION_3_7();
  *(v0 + *(v8 + 144)) = 0;
  OUTLINED_FUNCTION_3_7();
  *(v0 + *(v9 + 152)) = 0;
  OUTLINED_FUNCTION_3_7();
  v11 = (v0 + *(v10 + 160));
  *v11 = 0;
  v11[1] = 0;
  OUTLINED_FUNCTION_3_7();
  v13 = *(v12 + 192);
  type metadata accessor for CoverViewManager();
  OUTLINED_FUNCTION_15_17();
  swift_allocObject();
  *(v0 + v13) = CoverViewManager.init()();
  OUTLINED_FUNCTION_2_5();
  *(v0 + *(v14 + 224)) = 0;
  OUTLINED_FUNCTION_2_5();
  v16 = (v0 + *(v15 + 240));
  *v16 = 0u;
  v16[1] = 0u;
  OUTLINED_FUNCTION_2_5();
  v18 = v0 + *(v17 + 248);
  *v18 = v19;
  *(v18 + 1) = v19;
  v18[32] = 1;
  v20 = v1 + *((*v2 & *v1) + 0x100);
  *v20 = v19;
  *(v20 + 1) = v19;
  v20[32] = 1;
  OUTLINED_FUNCTION_2_5();
  *(v0 + *(v21 + 264)) = 0;
  OUTLINED_FUNCTION_2_5();
  v23 = *(v22 + 272);
  sub_1D7E268D8(__src);
  memcpy(v1 + v23, __src, 0x245uLL);
  OUTLINED_FUNCTION_2_5();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_5();
  v25 = *(v24 + 288);
  *(v1 + v25) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  OUTLINED_FUNCTION_2_5();
  *(v1 + *(v26 + 304)) = 0;
  sub_1D81923A4();
  __break(1u);
}

id BlueprintViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  OUTLINED_FUNCTION_48_11(v2, v3, v4, *MEMORY[0x1E69DDC48]);

  v5 = OUTLINED_FUNCTION_82_4();
  OUTLINED_FUNCTION_48_11(v5, v6, v7, *MEMORY[0x1E69DD8B8]);

  v8 = OUTLINED_FUNCTION_82_4();
  OUTLINED_FUNCTION_48_11(v8, v9, v10, *MEMORY[0x1E69DD920]);

  v11 = OUTLINED_FUNCTION_82_4();
  OUTLINED_FUNCTION_48_11(v11, v12, v13, *MEMORY[0x1E69DD8A8]);

  v14 = OUTLINED_FUNCTION_82_4();
  OUTLINED_FUNCTION_48_11(v14, v15, v16, *MEMORY[0x1E69DD8D8]);

  v17 = OUTLINED_FUNCTION_82_4();
  OUTLINED_FUNCTION_48_11(v17, v18, v19, *MEMORY[0x1E69DD898]);

  v21.receiver = v0;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_dealloc);
}

uint64_t sub_1D80EAD00(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  sub_1D7E73ECC(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x80)], &qword_1EDBB65A8, &qword_1EDBB65B0, &protocol descriptor for BlueprintBookmarkManagerType);
  OUTLINED_FUNCTION_1();
  sub_1D7E73ECC(&a1[*(v4 + 136)], &qword_1EDBB49C0, &qword_1EDBB49C8, &protocol descriptor for BlueprintLayoutTransitionManagerType);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  (*(*(*((v3 & v2) + 0x50) - 8) + 8))(&a1[*(v5 + 200)]);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  __swift_destroy_boxed_opaque_existential_1Tm(&a1[*(v7 + 232)]);
  OUTLINED_FUNCTION_1();
  memcpy(__dst, &a1[*(v8 + 272)], 0x245uLL);
  OUTLINED_FUNCTION_39_16();
  sub_1D7E92620(__dst, v9, v10, v11, sub_1D7E2A1A0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](&a1[*(v12 + 280)]);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
}

void sub_1D80EAF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v12 = 0;
    BlueprintImpressionManager.endSession(trigger:)(&v12);
    swift_beginAccess();
    v10 = *(a6 + 8);
    v11 = *(v10 + 48);
    swift_unknownObjectRetain();
    v11(a3, v10);
    swift_unknownObjectRelease();
  }
}

void sub_1D80EB094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    BlueprintImpressionManager.startSession(triggerSource:)();
    sub_1D7E72464();
    swift_beginAccess();
    v10 = *(a6 + 56);
    swift_unknownObjectRetain();
    v11 = v10(a3, a6);
    swift_unknownObjectRelease();
    [v11 contentOffset];
    v13 = v12;

    if (v13 < 0.0)
    {
      swift_unknownObjectRetain();
      v14 = v10(a3, a6);
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      v15 = v10(a3, a6);
      swift_unknownObjectRelease();
      [v15 adjustedContentInset];

      [v14 contentOffset];
      [v14 setContentOffset_];
    }

    v16 = *(a6 + 8);
    v17 = *(v16 + 56);
    swift_unknownObjectRetain();
    v17(a3, v16);
    swift_unknownObjectRelease();
  }
}

id sub_1D80EB2E0()
{
  if (![v0 parentViewController] || (sub_1D7E0A1A8(0, &qword_1EDBB31B0), sub_1D7E0631C(0, &qword_1EDBB3500), (swift_dynamicCast() & 1) == 0))
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_8;
  }

  if (!*(&v7 + 1))
  {
LABEL_8:
    sub_1D7E73ECC(&v6, &qword_1EDBB34F8, &qword_1EDBB3500, &protocol descriptor for Pluggable);
    return 0;
  }

  sub_1D7E73ECC(&v6, &qword_1EDBB34F8, &qword_1EDBB3500, &protocol descriptor for Pluggable);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result superview];
    v4 = sub_1D8043A9C(v3);

    if (v4)
    {
      v5 = [v4 isFocused];

      return v5;
    }

    return 0;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall BlueprintViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewWillDisappear_, a1);
  OUTLINED_FUNCTION_3_7();
  v4 = *(v3 + 304);
  OUTLINED_FUNCTION_56();
  *(v1 + v4) = 3;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_82();
  v6(*(v5 + 88));
}

void sub_1D80EB544(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BlueprintViewController.viewWillDisappear(_:)(a3);
}

Swift::Void __swiftcall BlueprintViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3 = OUTLINED_FUNCTION_75_8();
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v11.receiver = v1;
  v11.super_class = v3;
  objc_msgSendSuper2(&v11, sel_viewDidDisappear_, v2 & 1);
  OUTLINED_FUNCTION_1_71();
  v6 = *(v5 + 304);
  OUTLINED_FUNCTION_56();
  *(v1 + v6) = 4;
  OUTLINED_FUNCTION_1_71();
  BlueprintImpressionManager.endSession(triggerSource:)();
  sub_1D818EEE4();
  LOBYTE(v6) = sub_1D818EED4();
  OUTLINED_FUNCTION_1_71();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();

  KeyCommandManager.invalidate(clearState:)((v6 & 1) == 0);

  OUTLINED_FUNCTION_1_71();
  __swift_project_boxed_opaque_existential_1((v1 + *(v7 + 232)), *(v1 + *(v7 + 232) + 24));
  OUTLINED_FUNCTION_68_4();
  v8 = OUTLINED_FUNCTION_15_5();
  [v9(v8) setIsActive_];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_71();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_73_6();
  (*(v10 + 40))(*(v4 + 88));
}

void sub_1D80EB75C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BlueprintViewController.viewDidDisappear(_:)(a3);
}

void BlueprintViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = *MEMORY[0x1E69E7D40] & *v3;
  v42.receiver = v3;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  OUTLINED_FUNCTION_3_7();
  v11 = v3 + *(v10 + 128);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (*(v11 + 24))
  {
    sub_1D7E0E768(v11, v39);
    v13 = v40;
    v12 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v14 = [v4 view];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    [v14 bounds];
    v17 = v16;
    v19 = v18;

    (*(v12 + 8))(&aBlock, v13, v12, v17, v19, a2, a3);
    sub_1D7E770EC(&aBlock);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v20 = *(*(v9 + 112) + 56);
  swift_unknownObjectRetain();
  v21 = OUTLINED_FUNCTION_110();
  v22 = v20(v21);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v23 = OUTLINED_FUNCTION_110();
  v24 = v20(v23);
  swift_unknownObjectRelease();
  [v24 bounds];
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_16();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  v25 = *(swift_getAssociatedConformanceWitness() + 56);
  OUTLINED_FUNCTION_98_1();
  swift_checkMetadataState();
  v26 = OUTLINED_FUNCTION_8_0();
  v27 = v25(v26);

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v37 = nullsub_1;
  v38 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1D7F6900C;
  v36 = &block_descriptor_37_0;
  v29 = _Block_copy(&aBlock);
  v30 = swift_allocObject();
  *(v30 + 16) = v4;
  *(v30 + 24) = v28;
  v37 = sub_1D80EC3EC;
  v38 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1D7F6900C;
  v36 = &block_descriptor_43_3;
  v31 = _Block_copy(&aBlock);
  v32 = v4;

  [a1 animateAlongsideTransitionInView:0 animation:v29 completion:v31];
  _Block_release(v31);
  _Block_release(v29);
}

uint64_t sub_1D80EBB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E994();
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = 0;
  v25 = v11;
  v26 = a1;
  v29 = *(a1 + 16);
  v24 = v11 + 16;
  v22 = (v11 + 8);
  v27 = (v11 + 32);
  v12 = MEMORY[0x1E69E7CC0];
  v23 = a2;
LABEL_2:
  while (v10 != v29)
  {
    v13 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v14 = *(v25 + 72);
    (*(v25 + 16))(v9, v26 + v13 + v14 * v10++, v4, v7);
    v15 = a2 + v13;
    v16 = *(a2 + 16) + 1;
    while (--v16)
    {
      sub_1D8008590();
      v15 += v14;
      if (sub_1D8190ED4())
      {
        (*v22)(v9, v4);
        goto LABEL_2;
      }
    }

    v17 = *v27;
    (*v27)(v28, v9, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D7EB0144();
      v12 = v30;
    }

    v19 = *(v12 + 16);
    if (v19 >= *(v12 + 24) >> 1)
    {
      sub_1D7EB0144();
      v12 = v30;
    }

    *(v12 + 16) = v19 + 1;
    v17((v12 + v13 + v19 * v14), v28, v4);
    a2 = v23;
  }

  return v12;
}

void *sub_1D80EBDD0(uint64_t a1, void *a2, uint64_t a3)
{
  v86 = a3;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *a2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *a2;
  v8 = sub_1D818E994();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68 - v12;
  v14 = (a2 + *((v6 & v5) + 0xE8));
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  result = (*(v16 + 16))(v88, v15, v16);
  if (LOBYTE(v88[0]) != 2)
  {
    v81 = v9;
    v71 = v8;
    v18 = *((*v4 & *a2) + 0xA8);
    swift_beginAccess();
    v19 = *(v7 + 112);
    v21 = *(v19 + 56);
    v20 = v19 + 56;
    v22 = *(v7 + 88);
    swift_unknownObjectRetain();
    v23 = v21(v22, v19);
    swift_unknownObjectRelease();
    v83 = v18;
    swift_unknownObjectRetain();
    v80 = v21;
    v24 = v21(v22, v19);
    swift_unknownObjectRelease();
    [v24 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    swift_getAssociatedTypeWitness();
    v85 = v19;
    v79 = v22;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = *(AssociatedConformanceWitness + 56);
    v35 = swift_checkMetadataState();
    v36 = AssociatedConformanceWitness;
    v37 = v34(v35, AssociatedConformanceWitness, v26, v28, v30, v32);

    if (!v37)
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    v38 = v86;
    v39 = sub_1D80EBB68(v86, v37);
    v40 = sub_1D80EBB68(v37, v38);

    v41 = v39;
    v42 = *(v39 + 16);
    v43 = a2;
    v86 = a2;
    v70 = v40;
    v84 = v20;
    v82 = v35;
    if (v42)
    {
      v44 = v36;
      v77 = *(v36 + 80);
      v78 = v36 + 80;
      v76 = *(a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0xD0));
      v74 = *(v81 + 16);
      v45 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v69 = v41;
      v46 = v41 + v45;
      v73 = *(v81 + 72);
      v75 = (v81 + 16);
      v47 = (v81 + 8);
      v48 = v71;
      v49 = v79;
      do
      {
        (v74)(v13, v46, v48);
        swift_unknownObjectRetain();
        v50 = v80(v49, v85);
        swift_unknownObjectRelease();
        v51 = v44;
        v52 = v77(v13, v82, v44);

        v43 = v86;
        v87 = 2;
        BlueprintImpressionManager.endImpression(at:view:triggerSource:)(v13, v52, &v87, v53, v54, v55, v56, v57, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);

        v44 = v51;
        (*v47)(v13, v48);
        v46 += v73;
        --v42;
      }

      while (v42);

      v58 = v72;
      v40 = v70;
    }

    else
    {

      v44 = v36;
      v58 = v72;
    }

    v59 = *(v40 + 16);
    if (v59)
    {
      v77 = *(v44 + 80);
      v78 = v44 + 80;
      v60 = *(v43 + *((*MEMORY[0x1E69E7D40] & *v43) + 0xD0));
      v61 = v80;
      v75 = *(v81 + 16);
      v76 = v60;
      v62 = v40 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
      v74 = *(v81 + 72);
      v81 += 16;
      v63 = (v81 - 8);
      v64 = v71;
      v65 = v44;
      do
      {
        v75(v58, v62, v64);
        swift_unknownObjectRetain();
        v66 = v61(v79, v85);
        swift_unknownObjectRelease();
        v67 = v77(v58, v82, v65);

        v87 = 2;
        BlueprintImpressionManager.startImpression(at:view:triggerSource:)(v58, v67, &v87);

        (*v63)(v58, v64);
        v62 += v74;
        --v59;
      }

      while (v59);
    }
  }

  return result;
}

void sub_1D80EC3F4(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  BlueprintViewController.viewWillTransition(to:with:)(a5, a2, a3);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall BlueprintViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v24.receiver = v3;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, sel_setEditing_animated_, _, animated);
  OUTLINED_FUNCTION_6_81();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v9 = *(*((v8 & v7) + 0x70) + 56);
  swift_unknownObjectRetain();
  v10 = OUTLINED_FUNCTION_110();
  v23 = v9;
  v11 = v9(v10);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_16();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_81();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 120);
  v14 = swift_checkMetadataState();
  v15 = v13(v14, AssociatedConformanceWitness);

  v16 = _;
  if ((v15 & 1) != 0 && _)
  {
    swift_unknownObjectRetain();
    v17 = OUTLINED_FUNCTION_110();
    v18 = v23(v17);
    swift_unknownObjectRelease();
    (*(AssociatedConformanceWitness + 128))(0, animated, v14, AssociatedConformanceWitness);

    v16 = _;
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();

  KeyCommandManager.isEnabled.setter(!v16);

  KeyCommandManager.invalidate(clearState:)(1);

  swift_unknownObjectRetain();
  v19 = OUTLINED_FUNCTION_110();
  v20 = v23(v19);
  swift_unknownObjectRelease();
  (*(AssociatedConformanceWitness + 128))(v16, animated, v14, AssociatedConformanceWitness);
}

void sub_1D80EC730(void *a1, uint64_t a2, Swift::Bool a3, Swift::Bool a4)
{
  v6 = a1;
  BlueprintViewController.setEditing(_:animated:)(a3, a4);
}

void sub_1D80EC78C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_13_42(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_81_4();
  OUTLINED_FUNCTION_23_22();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_12_45(AssociatedConformanceWitness);
  type metadata accessor for BlueprintImpression();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_144(v8, v21);
  type metadata accessor for BlueprintImpression();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_54();
  v12 = *(v11 + 280);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_69_5();
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_30_23();
    v13 = OUTLINED_FUNCTION_11_46();
    v14(v13);
    OUTLINED_FUNCTION_15_41();
    OUTLINED_FUNCTION_32_18();
    v15 = OUTLINED_FUNCTION_20_36();
    v16(v15);

    v17 = OUTLINED_FUNCTION_31_18();
    v18(v17);
    v19 = OUTLINED_FUNCTION_19_32();
    v20(v19);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D80ECA1C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_13_42(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_81_4();
  OUTLINED_FUNCTION_23_22();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_12_45(AssociatedConformanceWitness);
  type metadata accessor for BlueprintImpressionSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_144(v8, v21);
  type metadata accessor for BlueprintImpressionSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_54();
  v12 = *(v11 + 280);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_69_5();
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_30_23();
    v13 = OUTLINED_FUNCTION_11_46();
    v14(v13);
    OUTLINED_FUNCTION_15_41();
    OUTLINED_FUNCTION_32_18();
    v15 = OUTLINED_FUNCTION_20_36();
    v16(v15);

    v17 = OUTLINED_FUNCTION_31_18();
    v18(v17);
    v19 = OUTLINED_FUNCTION_19_32();
    v20(v19);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D80ECCAC()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_90_4();
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_96_2();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_15_5();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_90_4();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    OUTLINED_FUNCTION_3_7();
    v3 = OUTLINED_FUNCTION_4_8();
    BlueprintProviderType.blueprint.getter(v3, v4);
    v5 = OUTLINED_FUNCTION_89_4();
    v6(v5);

    v7 = OUTLINED_FUNCTION_62_5();
    v8(v7);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D80ECE9C()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *MEMORY[0x1E69E7D40] & *v1;
  v7 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v14 = *(v5 + 16);
  if (v14)
  {
    v15 = *v3;
    v31 = *(*(v6 + 112) + 56);
    v16 = *(v6 + 88);
    v32 = *(v6 + 112);
    swift_getAssociatedTypeWitness();
    v30 = v16;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v28 = *(AssociatedConformanceWitness + 80);
    OUTLINED_FUNCTION_92_3();
    v18 = v5 + v17;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v26 = *(v9 + 72);
    v27 = *(v9 + 16);
    do
    {
      v27(v13, v18, v7);
      swift_unknownObjectRetain();
      v31(v30, v32);
      OUTLINED_FUNCTION_16_1();
      swift_unknownObjectRelease();
      v19 = swift_checkMetadataState();
      v20 = v28(v13, v19, AssociatedConformanceWitness);

      v21 = OUTLINED_FUNCTION_15_5();
      BlueprintImpressionManager.endImpression(at:view:trigger:)(v21, v22, v23);

      v24 = OUTLINED_FUNCTION_85();
      v25(v24);
      v18 += v26;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D80ED100()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_13_42(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_81_4();
  OUTLINED_FUNCTION_23_22();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_12_45(AssociatedConformanceWitness);
  type metadata accessor for BlueprintImpression();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_144(v8, v21);
  type metadata accessor for BlueprintImpression();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_54();
  v12 = *(v11 + 280);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_69_5();
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_30_23();
    v13 = OUTLINED_FUNCTION_11_46();
    v14(v13);
    OUTLINED_FUNCTION_15_41();
    OUTLINED_FUNCTION_32_18();
    v15 = OUTLINED_FUNCTION_20_36();
    v16(v15);

    v17 = OUTLINED_FUNCTION_31_18();
    v18(v17);
    v19 = OUTLINED_FUNCTION_19_32();
    v20(v19);
  }

  OUTLINED_FUNCTION_100();
}

BOOL sub_1D80ED390(void *a1)
{
  v1 = a1;
  v2 = BlueprintViewController.becomeFirstResponder()();

  return v2;
}

void BlueprintViewController.responder.getter()
{
  v1 = [v0 childViewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v2 = sub_1D8191314();

  v17 = sub_1D7E36AB8(v2);
  if (v17)
  {
    v3 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1DA714420](v3, v2);
      }

      else
      {
        if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v2 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v5))
      {
        v8 = v7;
        ObjectType = swift_getObjectType();
        v10 = *(v8 + 8);
        v11 = v5;
        v12 = v10(ObjectType, v8);
        v13 = [v12 isFirstResponder];

        if (v13)
        {

          OUTLINED_FUNCTION_36();
          return;
        }
      }

      ++v3;
      if (v6 == v17)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_11:

    OUTLINED_FUNCTION_36();

    v16 = v14;
  }
}

uint64_t sub_1D80ED574()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();

  KeyCommandManager.handle(keyCommand:)(v0);
}

void sub_1D80ED5E8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D80ED574();
}

uint64_t BlueprintViewController.keyCommandScrollProviderDidPerformScroll(_:)()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();

  KeyCommandManager.invalidate(clearState:)(1);
}

void BlueprintViewController.keyCommandScrollExclusionProvider(_:handleKeyCommand:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [v4 parentViewController];
  if (v6)
  {
    while (1)
    {
      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7)
      {
        break;
      }

      v8 = [v6 parentViewController];

      v6 = v8;
      if (!v8)
      {
        return;
      }
    }

    v9 = v7;
    v10 = v6;
    OUTLINED_FUNCTION_85();
    v11 = sub_1D8190EE4();
    [v9 childTraversable:v4 didExcludeScrollKeyCommand:v11 flags:a4];
  }
}

void BlueprintViewController.keyCommandFocusSelectionProvider<A, B>(_:didSelectAt:)()
{
  OUTLINED_FUNCTION_120();
  v27 = v2;
  v24[1] = *MEMORY[0x1E69E7D40] & *v0;
  OUTLINED_FUNCTION_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v4 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_65();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_81();
  v31 = AssociatedTypeWitness;
  v32 = v4;
  v33 = AssociatedConformanceWitness;
  v34 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30_2();
  v6 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_91_3();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v25 = v11;
  v26 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13;
  v15 = OUTLINED_FUNCTION_110();
  BlueprintProviderType.blueprint.getter(v15, v16);
  Blueprint.subscript.getter();
  v17 = *(v8 + 8);
  v24[0] = v6;
  v17(v1, v6);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = OUTLINED_FUNCTION_110();
    BlueprintProviderType.blueprint.getter(v20, v21);
    v28 = 0;
    v29 = 1;
    v30 = 0;
    OUTLINED_FUNCTION_99_0();
    v22 = OUTLINED_FUNCTION_46();
    v23(v22);

    v17(v1, v24[0]);
  }

  (*(v25 + 8))(v14, v26);
  OUTLINED_FUNCTION_100();
}

void BlueprintViewController.keyCommandTraverseProvider<A, B>(_:didSelectAt:)()
{
  OUTLINED_FUNCTION_120();
  v47 = v2;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v40 = *MEMORY[0x1E69E7D40] & *v0;
  v5 = *((v4 & v3) + 0x68);
  v6 = *((v4 & v3) + 0x50);
  OUTLINED_FUNCTION_23_22();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_23_22();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_88_3();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = v5;
  OUTLINED_FUNCTION_111();
  v51 = AssociatedTypeWitness;
  v52 = v8;
  v53 = AssociatedConformanceWitness;
  v54 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30_2();
  v44 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v46 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_91_3();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v42 = v13;
  v43 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v40 - v15;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v16 = *((v4 & v3) + 0x70);
  v17 = *(v16 + 56);
  v18 = *((v4 & v3) + 0x58);
  swift_unknownObjectRetain();
  v19 = v17(v18, v16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = *(v20 + 80);
  OUTLINED_FUNCTION_98_1();
  v22 = swift_checkMetadataState();
  v23 = v21(v47, v22, v20);

  if (v23)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v23))
    {
      v25 = v24;
      ObjectType = swift_getObjectType();
      v27 = (*(v25 + 8))(ObjectType, v25);
      if (v27)
      {
        v28 = v27;
        sub_1D7E0A1A8(0, &qword_1EDBBE110);
        v29 = sub_1D8191E44();
        sub_1D81919E4();
        sub_1D818FD44();

        sub_1D7E80824();
        goto LABEL_9;
      }
    }
  }

  BlueprintProviderType.blueprint.getter(v6, v45);
  v30 = v41;
  Blueprint.subscript.getter();
  v31 = v46 + 8;
  v32 = *(v46 + 8);
  v33 = OUTLINED_FUNCTION_46();
  v32(v33);
  OUTLINED_FUNCTION_6_81();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v46 = v31;
    v36 = OUTLINED_FUNCTION_110();
    BlueprintProviderType.blueprint.getter(v36, v37);
    v48 = 0;
    v49 = 1;
    v50 = 0;
    OUTLINED_FUNCTION_99_0();
    v38(v1, v30, v47, &v48);

    v39 = OUTLINED_FUNCTION_46();
    v32(v39);
  }

  (*(v42 + 8))(v30, v43);
LABEL_9:
  OUTLINED_FUNCTION_100();
}

void BlueprintViewController.keyCommandTraverseProvider<A, B>(_:commitDeleteAt:)()
{
  OUTLINED_FUNCTION_120();
  v42 = v1;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v35 = *MEMORY[0x1E69E7D40] & v2;
  v43 = type metadata accessor for BlueprintViewAction.Action(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v40 = v3;
  v41 = v6 - v5;
  v39 = v2;
  v7 = *((v3 & v2) + 0x68);
  v8 = *((v3 & v2) + 0x50);
  OUTLINED_FUNCTION_9_43();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_43();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_88_3();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_15_5();
  v44[0] = AssociatedTypeWitness;
  v44[1] = v10;
  v44[2] = AssociatedConformanceWitness;
  v45 = swift_getAssociatedConformanceWitness();
  v38 = v45;
  OUTLINED_FUNCTION_30_2();
  v12 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v37 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  OUTLINED_FUNCTION_98_1();
  v17 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v36 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - v23;
  v34 = *((v40 & v39) + 0xC8);
  v39 = v8;
  v40 = v7;
  v25 = v8;
  v26 = v37;
  BlueprintProviderType.blueprint.getter(v25, v7);
  Blueprint.subscript.getter();
  v27 = *(v26 + 8);
  v37 = v12;
  v27(v16, v12);
  OUTLINED_FUNCTION_98_1();
  v28 = v36;
  type metadata accessor for BlueprintViewActionRequest();
  v29 = *(v28 + 16);
  v42 = v24;
  v29(v21, v24, v17);
  v30 = v41;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v44[0]) = 3;
  v31 = BlueprintViewActionRequest.__allocating_init(item:action:source:sourceView:completion:)(v21, v30, v44, 0, nullsub_1, 0);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    BlueprintProviderType.blueprint.getter(v39, v40);
    (*(*(v35 + 120) + 72))(v16, v31, *(v35 + 96));

    v27(v16, v37);
  }

  else
  {
  }

  (*(v28 + 8))(v42, v17);
  OUTLINED_FUNCTION_100();
}

void BlueprintViewController.keyCommandTraverseProvider<A, B>(_:didTraversePastEdgeOfContent:)()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    while (!swift_dynamicCastObjCProtocolConditional())
    {
      v2 = [v1 parentViewController];

      v1 = v2;
      if (!v2)
      {
        return;
      }
    }

    OUTLINED_FUNCTION_88_3();
    [v3 v4];
  }
}

uint64_t BlueprintViewController.startTraversing(direction:)()
{
  OUTLINED_FUNCTION_16_1();
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  if ((objc_msgSendSuper2(&v10, sel_becomeFirstResponder) & 1) == 0)
  {
    v1 = sub_1D81919C4();
    OUTLINED_FUNCTION_17_35(v1, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
    OUTLINED_FUNCTION_15_17();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D819FAB0;
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_14_42();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_105_2();
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 64) = sub_1D7E13BF4();
    *(v2 + 32) = 0;
    *(v2 + 40) = 0xE000000000000000;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    v3 = sub_1D8191E44();
    OUTLINED_FUNCTION_101_3();
  }

  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D7E265E4();
  if (!v8)
  {
    return sub_1D7E73ECC(&v7, &qword_1EDBB8098, qword_1EDBB80A0, &protocol descriptor for KeyCommandTraverserType);
  }

  sub_1D7E05450(&v7, v9);
  sub_1D7E2BE68(1);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v4 = OUTLINED_FUNCTION_31();
  v5(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

void sub_1D80EE5F0(void *a1)
{
  v1 = a1;
  BlueprintViewController.startTraversing(direction:)();
}

void BlueprintViewController.childTraversable(_:didExcludeScrollKeyCommand:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, __C::UIKeyModifierFlags a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();

  v8._countAndFlagsBits = OUTLINED_FUNCTION_4_8();
  LOBYTE(a4.rawValue) = KeyCommandManager.handle(key:flags:)(v8, a4);

  if (a4.rawValue)
  {

    KeyCommandManager.invalidate(clearState:)(1);

    v12.receiver = v5;
    v12.super_class = ObjectType;
    if ((objc_msgSendSuper2(&v12, sel_becomeFirstResponder) & 1) == 0)
    {
      v9 = sub_1D81919C4();
      OUTLINED_FUNCTION_17_35(v9, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
      OUTLINED_FUNCTION_15_17();
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1D819FAB0;
      OUTLINED_FUNCTION_14_42();
      swift_getWitnessTable();
      sub_1D8192604();
      *(v10 + 56) = MEMORY[0x1E69E6158];
      *(v10 + 64) = sub_1D7E13BF4();
      *(v10 + 32) = 0;
      *(v10 + 40) = 0xE000000000000000;
      sub_1D7E0A1A8(0, &qword_1EDBBE110);
      v11 = sub_1D8191E44();
      sub_1D818FD44();
    }
  }
}

uint64_t sub_1D80EE804(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  v7 = sub_1D8190F14();
  v9 = v8;
  swift_unknownObjectRetain();
  v10 = a1;
  v11.rawValue = a5;
  BlueprintViewController.childTraversable(_:didExcludeScrollKeyCommand:flags:)(v10, v7, v9, v11);
  swift_unknownObjectRelease();
}

uint64_t BlueprintViewController.childTraversable(_:didExitTraversalWithDirection:)()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  if ((objc_msgSendSuper2(&v10, sel_becomeFirstResponder) & 1) == 0)
  {
    v1 = sub_1D81919C4();
    OUTLINED_FUNCTION_17_35(v1, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
    OUTLINED_FUNCTION_15_17();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D819FAB0;
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_14_42();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_105_2();
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 64) = sub_1D7E13BF4();
    *(v2 + 32) = 0;
    *(v2 + 40) = 0xE000000000000000;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    v3 = sub_1D8191E44();
    OUTLINED_FUNCTION_101_3();
  }

  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D7E265E4();
  if (!v8)
  {
    return sub_1D7E73ECC(&v7, &qword_1EDBB8098, qword_1EDBB80A0, &protocol descriptor for KeyCommandTraverserType);
  }

  sub_1D7E05450(&v7, v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v4 = OUTLINED_FUNCTION_31();
  v5(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

void sub_1D80EEA7C(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  BlueprintViewController.childTraversable(_:didExitTraversalWithDirection:)();
  swift_unknownObjectRelease();
}

uint64_t sub_1D80EEBA0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1D818E454();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  sub_1D818E414();
  v7 = a1;
  a4();

  v8 = OUTLINED_FUNCTION_4_8();
  return v9(v8);
}

void sub_1D80EEC74(unsigned __int8 *a1, uint64_t a2, const void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a7;
  v27 = a3;
  v31[0] = swift_getAssociatedTypeWitness();
  v31[1] = swift_getAssociatedTypeWitness();
  v31[2] = swift_getAssociatedConformanceWitness();
  v31[3] = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for Blueprint();
  v28 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v26 = a10;
    if (v17)
    {
      if (v17 == 1)
      {
        swift_beginAccess();
        v20 = swift_unknownObjectWeakLoadStrong();
        if (v20)
        {
          v21 = v20;
          BlueprintProviderType.blueprint.getter(a5, a8);
          memcpy(v31, v27, 0x235uLL);
          v30 = 7;
          (*(v26 + 152))(v16, v31, &v30, v29);

LABEL_9:
          (*(v28 + 8))(v16, v14);
          return;
        }

        goto LABEL_10;
      }
    }

    else
    {

      v22 = CoverViewManager.isCovering.getter();

      if ((v22 & 1) == 0)
      {
LABEL_10:

        return;
      }
    }

    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      BlueprintProviderType.blueprint.getter(a5, a8);
      memcpy(v31, v27, 0x235uLL);
      v30 = a4;
      (*(v26 + 152))(v16, v31, &v30, v29);

      goto LABEL_9;
    }

    goto LABEL_10;
  }
}

id BlueprintViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_allocWithZone(v4);
  OUTLINED_FUNCTION_88_3();
  v10 = [v8 v9];

  return v10;
}

void sub_1D80EF0A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  BlueprintViewController.init(nibName:bundle:)();
}

void __swiftcall BlueprintViewController.sourceView(identifier:)(UIView_optional *__return_ptr retstr, Swift::String identifier)
{
  OUTLINED_FUNCTION_120();
  v46 = v3;
  v47 = v4;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v45 = *MEMORY[0x1E69E7D40] & *v2;
  v7 = *((v6 & v5) + 0x68);
  v8 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_81();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_81();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_65();
  v48 = AssociatedTypeWitness;
  v49 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30_2();
  v11 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  OUTLINED_FUNCTION_38_15();
  sub_1D7E1AEBC(0, v17, v18, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v44 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v43 = v25 - v24;
  v26 = v7;
  v28 = v27;
  BlueprintProviderType.blueprint.getter(v8, v26);
  Blueprint.indexPath(for:)();
  (*(v13 + 8))(v16, v11);
  if (__swift_getEnumTagSinglePayload(v21, 1, v28) == 1)
  {
    OUTLINED_FUNCTION_38_15();
    sub_1D7E92620(v21, v29, v30, MEMORY[0x1E69E6720], sub_1D7E1AEBC);
  }

  else
  {
    v32 = v43;
    v31 = v44;
    v33 = OUTLINED_FUNCTION_41_12();
    v34(v33);
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v35 = *(v45 + 112);
    v36 = *(v35 + 56);
    v37 = *(v45 + 88);
    swift_unknownObjectRetain();
    v38 = v36(v37, v35);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_65();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_31();
    v39 = swift_getAssociatedConformanceWitness();
    v40 = *(v39 + 80);
    OUTLINED_FUNCTION_12_13();
    v41 = swift_checkMetadataState();
    v40(v32, v41, v39);

    (*(v31 + 8))(v32, v28);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D80EF5B0()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v3 = (*MEMORY[0x1E69E7D40] & *v0);
  OUTLINED_FUNCTION_9_43();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_43();
  v5 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_96_2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_15_5();
  v17 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_60_0();
  if ((v2 & 1) == 0)
  {
    v8 = (v0 + v3[30]);
    *v8 = 0u;
    v8[1] = 0u;
    v9 = [v0 view];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 setNeedsLayout];
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    OUTLINED_FUNCTION_3_7();
    v13 = OUTLINED_FUNCTION_4_8();
    BlueprintProviderType.blueprint.getter(v13, v14);
    (*(v3[15] + 256))(AssociatedTypeWitness, v2 & 1, v3[12]);

    v15 = OUTLINED_FUNCTION_62_5();
    v16(v15);
  }

  OUTLINED_FUNCTION_100();
}

unint64_t sub_1D80EF81C()
{
  result = qword_1ECA111C0;
  if (!qword_1ECA111C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA111C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintViewAppearanceState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_105_2()
{

  return sub_1D8192604();
}

uint64_t sub_1D80EFA54(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D80EFA94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D80EFAF0(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    v2 = (a2 + 16776962) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776962) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776962;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776962;
        }
      }
    }
  }

  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  if (v8 + 1 >= 2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D80EFB88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776962) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776962) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v4)
    {
      v5 = ((a2 - 254) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_1D80EFC18(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1D80EFC50(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D80EFCC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void Mastheadable<>.updateMastheadViewScrollBehavior(barCompressionManager:miniMastheadPresent:)(void *a1, char a2)
{
  v4 = v2;
  if ((sub_1D8190B24() & 1) == 0)
  {
    v7 = [v4 traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (v8 == 2 || (a2 & 1) != 0)
    {
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v4))
      {
        v28 = v27;
        ObjectType = swift_getObjectType();
        v3 = (v28 + 8);
        v30 = *(v28 + 8);
        v31 = v4;
        v32 = v30(ObjectType, v28);
        if (v32)
        {
          v33 = v32;
          [v32 setNavigationBarHidden:0 animated:0];
        }
      }

      v34 = Mastheadable<>.mastheadViewController.getter();
      if (v34)
      {
        v36 = v34;
        v37 = v35;
        v38 = swift_getObjectType();
        (*(v37 + 8))(v38, v37);
      }

      if (a1)
      {
        swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v4))
        {
          v20 = OUTLINED_FUNCTION_2_131();
          v39 = a1;
          v40 = OUTLINED_FUNCTION_1_145();
          v3(v40);
          v23 = v55;
          if (v56)
          {
            OUTLINED_FUNCTION_3_117();

            sub_1D818F154();

            v24 = v54;
            if (v54)
            {
              sub_1D7FA67FC(v54);
              swift_getObjectType();
              v41 = OUTLINED_FUNCTION_0_203();
              sub_1D7FA9488(v41, v42, v43, v44);
              goto LABEL_27;
            }

            goto LABEL_31;
          }

          sub_1D7FA67FC(v55);
          swift_getObjectType();
          v45 = OUTLINED_FUNCTION_0_203();
          sub_1D7FA9488(v45, v46, v47, v48);
LABEL_30:

          v51 = v23;
          v52 = 0;
LABEL_32:
          sub_1D7E4E678(v51, v52);
        }

LABEL_33:
        v57.value.super.isa = [v4 traitCollection];
        isa = v57.value.super.isa;
        BarCompressionManager.traitCollectionDidChange(_:)(v57);
      }
    }

    else
    {
      if (v8 > 1)
      {
        sub_1D81923A4();
        __break(1u);
        return;
      }

      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v4))
      {
        v10 = v9;
        v11 = swift_getObjectType();
        v3 = *(v10 + 8);
        v12 = v4;
        v13 = (v3)(v11, v10);
        if (v13)
        {
          v14 = v13;
          [v13 setNavigationBarHidden:1 animated:0];
        }
      }

      v15 = Mastheadable<>.mastheadViewController.getter();
      if (v15)
      {
        v17 = v15;
        v18 = v16;
        v19 = swift_getObjectType();
        (*(v18 + 8))(v19, v18);
      }

      if (a1)
      {
        swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v4))
        {
          v20 = OUTLINED_FUNCTION_2_131();
          v21 = a1;
          v22 = OUTLINED_FUNCTION_1_145();
          v3(v22);
          v23 = v55;
          if (v56)
          {
            OUTLINED_FUNCTION_3_117();

            sub_1D818F154();

            v24 = v54;
            if (v54)
            {
              sub_1D7FA697C(v54);
              swift_getObjectType();
              v25 = OUTLINED_FUNCTION_0_203();
              sub_1D7FA9328(v25, v26);
LABEL_27:

              sub_1D7E4E678(v23, 1);
              goto LABEL_33;
            }

LABEL_31:

            v51 = v23;
            v52 = 1;
            goto LABEL_32;
          }

          sub_1D7FA697C(v55);
          swift_getObjectType();
          v49 = OUTLINED_FUNCTION_0_203();
          sub_1D7FA9328(v49, v50);
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }
  }
}

uint64_t sub_1D80F0184@<X0>(const void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = memcpy(__dst, a1, 0x235uLL);
  if (*v2)
  {
    OUTLINED_FUNCTION_11_47(v4, v5, v6, v7, v8, v9, v10, v11, v16[0]);
    v12 = type metadata accessor for ManualBlueprintLayoutCollectionSectionSupplementarySolver();
    OUTLINED_FUNCTION_8_53();
    v13 = sub_1D7E7A488(&v17, v16);
    v14 = &off_1F52E8078;
  }

  else
  {
    OUTLINED_FUNCTION_11_47(v4, v5, v6, v7, v8, v9, v10, v11, v16[0]);
    v12 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSupplementarySolver();
    OUTLINED_FUNCTION_8_53();
    v13 = sub_1D7E7A488(&v17, v16);
    v14 = &off_1F5302D18;
  }

  a2[3] = v12;
  a2[4] = v14;
  *a2 = v13;
  return sub_1D7E222B8(__dst, v16);
}

uint64_t BlueprintLayoutSectionFramePosition.DescriptorSolver.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D80F02E4()
{
  result = qword_1ECA111D8;
  if (!qword_1ECA111D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA111D8);
  }

  return result;
}

uint64_t sub_1D80F0338(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3D && *(a1 + 9))
    {
      v2 = *a1 + 60;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
      if (v2 >= 0x3C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D80F0380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutSectionFramePosition.DescriptorSolver(_BYTE *result, unsigned int a2, unsigned int a3)
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

double MastheadTitleViewBarCompressionAnimator.topOffset.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_topOffset;
  OUTLINED_FUNCTION_1_0();
  return *(v0 + v1);
}

uint64_t MastheadTitleViewBarCompressionAnimator.topOffset.setter(double a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_topOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id MastheadTitleViewBarCompressionAnimator.init(navigationBar:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_topOffset] = 0;
  v1[OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_shouldAnimate] = 1;
  *&v1[OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_compressibleTitleView] = 0;
  *&v1[OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_navigationBar] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall MastheadTitleViewBarCompressionAnimator.prepareForUpdates()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_navigationBar) ts_fetchCompressibleTitleView];
  *(v0 + OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_compressibleTitleView) = v1;

  MEMORY[0x1EEE66BB8]();
}

void MastheadTitleViewBarCompressionAnimator.update(withPercentage:)(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_shouldAnimate) == 1)
  {
    v3 = OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_compressibleTitleView;
    v4 = *(v1 + OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_compressibleTitleView);
    if (v4 || (v5 = [*(v1 + OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_navigationBar) ts_fetchCompressibleTitleView], v6 = *(v1 + v3), *(v1 + v3) = v5, v6, (v4 = *(v1 + v3)) != 0))
    {
      v15 = v4;
      v7 = sub_1D80F08F4(MEMORY[0x1E6979EB8], 0.0, 2.0);
      [v7 solveForTime_];
      v9 = v8;

      v10 = sub_1D80F08F4(MEMORY[0x1E6979ED8], 0.7, 1.38);
      [v10 solveForTime_];
      v12 = v11;

      [v15 setContentAlpha_];
      v13 = [v15 view];
      if (v13)
      {
        v14 = v13;
        CATransform3DMakeScale(&v17, v12, v12, 1.0);
        CATransform3DTranslate(&v16, &v17, 0.0, 0.0, 0.0);
        [v14 setTransform3D_];
      }

      else
      {
      }
    }
  }
}

id sub_1D80F08F4(void *a1, double a2, double a3)
{
  v5 = [objc_opt_self() functionWithName_];
  v6 = [objc_allocWithZone(TUAnimationFloatFunction) initWithTimingFunction:v5 startValue:a2 endValue:1.0 speed:a3];

  return v6;
}

void MastheadTitleViewBarCompressionAnimator.scrollViewIs(atTop:offset:)(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_compressibleTitleView);
  if (v3 && (*(v1 + OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_shouldAnimate) & 1) == 0)
  {
    if (a1)
    {

      [v3 setContentAlpha_];
    }

    else
    {
      v4 = *(v1 + OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_navigationBar);
      v5 = v3;
      [v4 transform];
      if (CGAffineTransformIsIdentity(v8))
      {
        [v5 setContentAlpha_];
        v6 = [v5 view];
        if (v6)
        {
          v7 = v6;
          memcpy(v8, MEMORY[0x1E69792E8], sizeof(v8));
          [v7 setTransform3D_];
        }
      }
    }
  }
}

Swift::Bool __swiftcall MastheadTitleViewBarCompressionAnimator.animationShouldBegin(for:currentlyFullyCompressed:)(UIScrollView *a1, Swift::Bool currentlyFullyCompressed)
{
  [(UIScrollView *)a1 contentOffset];
  v4 = v3;
  v5 = OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_topOffset;
  OUTLINED_FUNCTION_1_0();
  result = v4 < *(v2 + v5);
  *(v2 + OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_shouldAnimate) = result;
  return result;
}

double MastheadTitleViewBarCompressionAnimator.maximumBarHeight(for:)()
{
  [*(v0 + OBJC_IVAR____TtC5TeaUI39MastheadTitleViewBarCompressionAnimator_navigationBar) bounds];

  return CGRectGetHeight(*&v1);
}

id MastheadTitleViewBarCompressionAnimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MastheadTitleViewBarCompressionAnimator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ActivityIndicatorCoverStyler.indicatorColor.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if (v1 != 1)
    {
      v3 = *(v0 + 16);
      goto LABEL_7;
    }

    v2 = [objc_opt_self() whiteColor];
  }

  else
  {
    v2 = [objc_opt_self() blackColor];
  }

  v3 = v2;
LABEL_7:
  sub_1D80F0E8C(v1);
  return v3;
}

id sub_1D80F0E8C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

id ActivityIndicatorCoverStyler.backgroundColor.getter()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_systemBackgroundColor;
  }

  if (v1)
  {
    v3 = v4;
  }

  v5 = [v2 *v3];

  return v5;
}

uint64_t ActivityIndicatorCoverStyler.__deallocating_deinit()
{
  sub_1D80CECD8(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D80F0FD4()
{
  v0 = [objc_opt_self() ts_activityIndicatorColor];
  type metadata accessor for ActivityIndicatorCoverStyler();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1EDBB6690 = result;
  return result;
}

uint64_t static ActivityIndicatorCoverStyler.dynamicTheme.getter()
{
  if (qword_1EDBB6688 != -1)
  {
    swift_once();
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaUI28ActivityIndicatorCoverStylerC5StyleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

_BYTE *ToggleRequest.init(state:cancel:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ToggleState.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t ToggleRequest.cancel.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

Swift::Void __swiftcall Togglable.set(toggleState:animated:)(TeaUI::ToggleState toggleState, Swift::Bool animated)
{
  v4 = v3;
  v5 = v2;
  v7 = *toggleState;
  (*(v3 + 8))(&v10);
  if (v7 != v10)
  {
    v9 = v7;
    (*(v4 + 16))(&v9, v5, v4);
    v8 = v7;
    (*(v4 + 56))(&v8, animated, v5, v4);
  }
}

Swift::Void __swiftcall Togglable.toggle()()
{
  v2 = v1;
  v3 = v0;
  (*(v1 + 8))(&v8 + 2);
  if ((v8 & 0x10000) != 0)
  {
    BYTE1(v8) = 0;
    OUTLINED_FUNCTION_0_205((&v8 + 1));
    if ((*(v2 + 32))(v3, v2))
    {
      v5 = v4;
      swift_getObjectType();
      (*(v5 + 8))(&v8);
      if ((v8 & 1) == 0)
      {
        v7 = 1;
        OUTLINED_FUNCTION_0_205(&v7);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = 1;
    OUTLINED_FUNCTION_0_205(&v6);
  }
}

uint64_t Togglable.makeToggleRequest()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  v6((&v10 + 1));
  v7 = BYTE1(v10);
  (v6)(&v10, a1, a2);
  LOBYTE(v6) = v10;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v7;
  *(result + 40) = v8;
  *a3 = v6;
  *(a3 + 8) = sub_1D80F153C;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1D80F1488(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v2 = 0;
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v2 = 1;
  }

  Togglable.set(toggleState:animated:)(&v2, 1);
  return swift_unknownObjectRelease();
}

unint64_t sub_1D80F1550()
{
  result = qword_1ECA11200[0];
  if (!qword_1ECA11200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA11200);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToggleState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t LayeredViewRenderer.__allocating_init(layerViewRenderer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LayeredViewRenderer.init(layerViewRenderer:)(a1);
  return v2;
}

uint64_t LayeredViewRenderer.canSynchronouslyRender(view:options:)()
{
  sub_1D8191484();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_2_8();
  sub_1D8191224();

  return 1;
}

uint64_t sub_1D80F18AC(uint64_t a1, uint64_t *a2, __int128 *a3, _BYTE *a4)
{
  v30 = a4;
  v38 = a1;
  v5 = *a2;
  v33 = *(*a2 + 88);
  v34 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v27 - v8;
  v10 = *(v5 + 96);
  v11 = *(AssociatedConformanceWitness + 32);
  v12 = swift_checkMetadataState();
  v28 = AssociatedConformanceWitness;
  v27[0] = v11;
  v11(v12, AssociatedConformanceWitness);
  v13 = a3[1];
  v35 = *a3;
  v36 = v13;
  v29 = a3;
  v14 = *(a3 + 4);
  v15 = v31;
  v16 = v32;
  v17 = v33;
  v37 = v14;
  v18 = *(v33 + 24);
  v27[1] = v10;
  LOBYTE(v5) = v18(v9, &v35, v34, v33);
  v19 = *(v15 + 1);
  result = v19(v9, v16);
  if (v5)
  {
    v21 = v30;
    if (*v30 == 1)
    {
      v31 = v19;
      v22 = v38;
      v23 = v12;
      v24 = v30;
      (v27[0])(v23, v28);
      v25 = v29[1];
      v35 = *v29;
      v36 = v25;
      v37 = *(v29 + 4);
      v26 = (*(v17 + 32))(v9, v22, &v35, v34, v17);
      result = v31(v9, v16);
      v21 = v24;
    }

    else
    {
      v26 = 0;
    }

    *v21 = v26 & 1;
  }

  return result;
}

uint64_t LayeredViewRenderer.render(view:options:)()
{
  sub_1D8191484();
  sub_1D7E1F150();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_2_8();
  sub_1D8191184();

  v0 = sub_1D818FA14();
  sub_1D818F904();

  v1 = sub_1D818EE74();
  v2 = sub_1D818FAB4();

  return v2;
}

void sub_1D80F1CDC(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a3;
  v4 = a2;
  v40 = a1;
  v34 = a4;
  v5 = *a2;
  v6 = *(*a2 + 88);
  v36 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  v33 = v9;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v28 - v10;
  v12 = *(v5 + 96);
  v13 = *(AssociatedConformanceWitness + 32);
  v31 = swift_checkMetadataState();
  v28[0] = v13;
  v28[1] = AssociatedConformanceWitness + 32;
  v13(v31, AssociatedConformanceWitness);
  v14 = v35[1];
  v37 = *v35;
  v38 = v14;
  v39 = *(v35 + 4);
  v15 = *(v6 + 24);
  v29 = v6;
  v30 = v4;
  v28[2] = v12;
  v16 = AssociatedConformanceWitness;
  v17 = v32;
  v18 = v33;
  LOBYTE(v4) = v15(v11, &v37, v36, v6);
  v33 = v18[1];
  (v33)(v11, v17);
  v19 = *(AssociatedConformanceWitness + 24);
  v20 = v31;
  v21 = v19(v31, AssociatedConformanceWitness);
  v22 = v21;
  if (v4)
  {
    [v21 setHidden_];

    v23 = v40;
    v24 = v19(v20, AssociatedConformanceWitness);
    v25 = v35;
    [v24 setFrame_];

    (v28[0])(v20, v16);
    v26 = v25[1];
    v37 = *v25;
    v38 = v26;
    v39 = *(v25 + 4);
    v27 = (*(v29 + 40))(v11, v23, &v37, v36);
    (v33)(v11, v17);
  }

  else
  {
    [v21 setHidden_];

    v27 = 0;
  }

  *v34 = v27;
}

uint64_t sub_1D80F2014()
{
  sub_1D7E1F150();
  swift_allocObject();
  return sub_1D818FB44();
}

uint64_t LayeredViewRenderer.__deallocating_deinit()
{
  LayeredViewRenderer.deinit();

  return swift_deallocClassInstance();
}

void BlueprintCompositionalListDiffableDataSourceProvider.applySnapshot(from:response:animated:applyBookmark:)()
{
  OUTLINED_FUNCTION_120();
  v104 = v1;
  v103 = v2;
  v105 = v3;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  OUTLINED_FUNCTION_13_44();
  v9 = &protocol requirements base descriptor for BlueprintProviderType;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_128();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_31_0();
  v129 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v136 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94();
  v128 = v12;
  OUTLINED_FUNCTION_11_48();
  v14 = *(v13 + 88);
  OUTLINED_FUNCTION_13_44();
  v16 = *(v15 + 144);
  v140 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v135 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23();
  v127 = v19;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v141 = &v100 - v21;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21_12();
  v122 = v23;
  OUTLINED_FUNCTION_11_48();
  v133 = *(v24 + 80);
  v25.n128_u64[0] = v133;
  v25.n128_u64[1] = v14;
  v139 = v25;
  v110 = v0;
  v132 = *(v8 + 136);
  v26.n128_u64[0] = v132;
  v26.n128_u64[1] = v16;
  v138 = v26;
  OUTLINED_FUNCTION_2_133(v25, v26);
  v27 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_0();
  v119 = sub_1D8192344();
  OUTLINED_FUNCTION_9();
  v131 = v28;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15_10();
  v124 = v27;
  v130 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23();
  v134 = v31;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_21_12();
  v118 = v33;
  OUTLINED_FUNCTION_2_133(v139, v138);
  v34 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_0();
  v35 = sub_1D8192344();
  OUTLINED_FUNCTION_9();
  v106 = v36;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_94();
  v120 = v38;
  v39 = *(*(v16 + 8) + 8);
  v143 = MEMORY[0x1E69E6158];
  v144 = v14;
  v145 = MEMORY[0x1E69E6168];
  v146 = v39;
  OUTLINED_FUNCTION_36_15();
  v138.n128_u64[0] = sub_1D818FFF4();
  OUTLINED_FUNCTION_9();
  v107 = v40;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_94();
  v139.n128_u64[0] = v42;
  if (v5)
  {
    LOBYTE(v143) = 0;
    BlueprintViewActionResponse.complete(apply:)(&v143);
  }

  v108 = v5;
  sub_1D818FFE4();
  v43 = v120;
  (*(*(v34 - 8) + 16))(v120, v7, v34);
  v44 = *(v35 + 36);
  Blueprint.startIndex.getter();
  v46 = v45;
  *(v43 + v44) = v45;
  Blueprint.endIndex.getter();
  if (v46 != v47)
  {
    v101 = v44;
    v102 = v35;
    v109 = *(*v110 + 240);
    v116 = v130 + 32;
    v115 = v130 + 16;
    v123 = (v135 + 4);
    v126 = (v135 + 2);
    v125 = v136 + 8;
    ++v135;
    v136 = v14 - 8;
    v114 = v131 + 8;
    v113 = v130 + 8;
    v112 = xmmword_1D819FAB0;
    v48 = v122;
    v49 = v124;
    v50 = v119;
    v51 = v134;
    v137 = &protocol requirements base descriptor for BlueprintProviderType;
    v117 = v34;
    do
    {
      v52 = v118;
      Blueprint.subscript.getter();
      v121 = Blueprint.index(after:)(v46);
      OUTLINED_FUNCTION_22();
      v53(v51, v52, v49);
      v54 = OUTLINED_FUNCTION_6_83();
      sub_1D7E0E870(v54, &qword_1EDBB2C60, MEMORY[0x1E69E6158], v55);
      v56 = swift_allocObject();
      *(v56 + 16) = v112;
      *(v56 + 32) = sub_1D818EF94();
      *(v56 + 40) = v57;
      sub_1D818FF94();
      v49 = v124;

      OUTLINED_FUNCTION_22();
      v58(v9, v51, v49);
      v59 = *(v50 + 36);
      v60 = BlueprintSection.startIndex.getter(v49);
      *&v9[v59] = v60;
      if (v60 != BlueprintSection.endIndex.getter(v49))
      {
        v111 = v59;
        v61 = *(v110 + v109);
        v62 = v123;
        do
        {
          v63 = OUTLINED_FUNCTION_128();
          BlueprintSection.subscript.getter(v63, v64);
          v65 = OUTLINED_FUNCTION_128();
          v66 = BlueprintSection.index(after:)(v65);
          (*v62)(v141, v48, v140);
          if (v61)
          {
            OUTLINED_FUNCTION_22();
            v67 = v141;
            v68(v127, v141, v140);

            v69 = v128;
            OUTLINED_FUNCTION_68();
            swift_dynamicCast();
            BlueprintSectionCollapsibleStateManager.state(for:)(v69, &v142);
            OUTLINED_FUNCTION_22();
            v70 = OUTLINED_FUNCTION_68();
            v71(v70);
            v72 = v142;
            sub_1D80F7CBC(v14, v14);
            OUTLINED_FUNCTION_28_21();
            OUTLINED_FUNCTION_12_47();
            v73 = sub_1D8191394();
            v75 = OUTLINED_FUNCTION_21_33(v73, v74);
            v76(v75, v67, v14);
            sub_1D7F7ABF0(v61);
            if (v72 == 1)
            {
              v143 = sub_1D818EF94();
              v144 = v77;
              sub_1D818FF74();
            }

            else
            {
              sub_1D818FF84();
            }

            (*v135)(v141, v140);
          }

          else
          {
            sub_1D80F7CBC(v14, v14);
            OUTLINED_FUNCTION_28_21();
            v79 = v78;
            v131 = *(v80 + 72);
            swift_allocObject();
            v81 = sub_1D8191394();
            v130 = *(v79 + 16);
            (v130)(v82, v141, v14);
            sub_1D7F7ABF0(v81);
            v83 = sub_1D818EF94();
            OUTLINED_FUNCTION_20_37(v83, v84);
            sub_1D818FF74();
            v61 = 0;

            sub_1D80F7CBC(v14, v14);
            v48 = v122;
            swift_allocObject();
            v85 = sub_1D8191394();
            (v130)(v86, v141, v14);
            v49 = v124;
            sub_1D7F7ABF0(v85);
            v62 = v123;
            sub_1D818FFA4();

            (*v135)(v141, v140);
          }

          v9 = v137;
        }

        while (v66 != BlueprintSection.endIndex.getter(v49));
        *&v9[v111] = v66;
      }

      OUTLINED_FUNCTION_22();
      v50 = v119;
      v87(v9, v119);
      OUTLINED_FUNCTION_22();
      v51 = v134;
      v88 = OUTLINED_FUNCTION_128();
      v89(v88);
      v90 = v120;
      Blueprint.endIndex.getter();
      v46 = v121;
    }

    while (v121 != v91);
    *(v90 + v101) = v121;
    v35 = v102;
    v43 = v90;
  }

  OUTLINED_FUNCTION_14_15();
  v92(v43, v35);
  v93 = v110;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v94 = v93[3];
  v95 = v108;
  if (v94)
  {
    v96 = swift_allocObject();
    v97 = v104;
    v96[2] = v103;
    v96[3] = v97;
    v96[4] = v95;

    v98 = v94;

    sub_1D8190174();
  }

  if (v95)
  {
    v142 = 1;
    BlueprintViewActionResponse.complete(apply:)(&v142);
  }

  OUTLINED_FUNCTION_14_15();
  v99(v139.n128_u64[0], v138.n128_u64[0]);
  OUTLINED_FUNCTION_100();
}

void BlueprintCompositionalListDiffableDataSourceProvider.applyReloadSnapshot(from:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v117 = v2;
  v3 = *v0;
  OUTLINED_FUNCTION_13_44();
  v4 = *(v3 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_31_0();
  v110 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v116 = v5;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_94();
  v109 = v7;
  OUTLINED_FUNCTION_11_48();
  v9 = *(v8 + 88);
  OUTLINED_FUNCTION_13_44();
  v11 = *(v10 + 144);
  v105 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v115 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23();
  v108 = v14;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v92 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21_12();
  v118 = v19;
  OUTLINED_FUNCTION_11_48();
  v112 = *(v20 + 80);
  v21.n128_u64[0] = v112;
  v21.n128_u64[1] = v9;
  v120 = v21;
  v111 = *(v3 + 136);
  v22.n128_u64[0] = v111;
  v22.n128_u64[1] = v11;
  v119 = v22;
  OUTLINED_FUNCTION_2_133(v21, v22);
  v23 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_0();
  v103 = sub_1D8192344();
  OUTLINED_FUNCTION_9();
  v104 = v24;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_94();
  v113 = v26;
  v96 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23();
  v114 = v28;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_21_12();
  v102 = v30;
  OUTLINED_FUNCTION_2_133(v120, v119);
  v31 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_0();
  v32 = sub_1D8192344();
  OUTLINED_FUNCTION_9();
  v92[2] = v33;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15_10();
  v35 = *(*(v11 + 8) + 8);
  v122 = MEMORY[0x1E69E6158];
  v123 = v9;
  v124 = MEMORY[0x1E69E6168];
  v125 = v35;
  OUTLINED_FUNCTION_36_15();
  v120.n128_u64[0] = sub_1D818FFF4();
  OUTLINED_FUNCTION_9();
  v92[3] = v36;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_94();
  v119.n128_u64[0] = v38;
  v39 = v31;
  sub_1D818FFE4();
  (*(*(v31 - 8) + 16))(v4, v117, v31);
  v40 = *(v32 + 36);
  Blueprint.startIndex.getter();
  v42 = v41;
  *(v4 + v40) = v41;
  Blueprint.endIndex.getter();
  if (v42 != v43)
  {
    v92[0] = v40;
    v92[1] = v32;
    v93 = *(*v0 + 240);
    v99 = v96 + 32;
    v98 = v96 + 16;
    v117 = (v115 + 4);
    v107 = (v115 + 2);
    v106 = v116 + 8;
    ++v115;
    v116 = v9 - 8;
    v97 = v104 + 8;
    v96 += 8;
    v95 = xmmword_1D819FAB0;
    v44 = v4;
    v45 = v105;
    v101 = v39;
    v100 = v44;
    do
    {
      v46 = v102;
      OUTLINED_FUNCTION_128();
      Blueprint.subscript.getter();
      v47 = OUTLINED_FUNCTION_128();
      v104 = Blueprint.index(after:)(v47);
      OUTLINED_FUNCTION_22();
      v48 = v114;
      v49(v114, v46, v23);
      v50 = OUTLINED_FUNCTION_6_83();
      sub_1D7E0E870(v50, &qword_1EDBB2C60, MEMORY[0x1E69E6158], v51);
      v52 = swift_allocObject();
      *(v52 + 16) = v95;
      *(v52 + 32) = sub_1D818EF94();
      *(v52 + 40) = v53;
      sub_1D818FF94();

      OUTLINED_FUNCTION_22();
      v54 = v113;
      v55(v113, v48, v23);
      v56 = v103;
      v57 = *(v103 + 36);
      v58 = BlueprintSection.startIndex.getter(v23);
      *(v54 + v57) = v58;
      v59 = v56;
      if (v58 != BlueprintSection.endIndex.getter(v23))
      {
        v94 = v57;
        v60 = *(v1 + v93);
        v61 = v113;
        do
        {
          v62 = v1;
          v63 = v118;
          BlueprintSection.subscript.getter(v58, v23);
          v58 = BlueprintSection.index(after:)(v58);
          (*v117)(v17, v63, v45);
          if (v60)
          {
            v64 = v23;
            (*v107)(v108, v17, v45);

            v65 = v109;
            v66 = v45;
            v67 = v110;
            swift_dynamicCast();
            BlueprintSectionCollapsibleStateManager.state(for:)(v65, &v121);
            OUTLINED_FUNCTION_22();
            v68(v65, v67);
            LODWORD(v65) = v121;
            sub_1D80F7CBC(v9, v9);
            OUTLINED_FUNCTION_27_25();
            OUTLINED_FUNCTION_12_47();
            v69 = sub_1D8191394();
            v71 = OUTLINED_FUNCTION_21_33(v69, v70);
            v72(v71, v17, v9);
            sub_1D7F7ABF0(v60);
            if (v65 == 1)
            {
              v73 = sub_1D818EF94();
              OUTLINED_FUNCTION_20_37(v73, v74);
              sub_1D818FF74();
            }

            else
            {
              sub_1D818FF84();
            }

            (*v115)(v17, v66);
            v1 = v62;
            v45 = v66;
            v23 = v64;
            v61 = v113;
          }

          else
          {
            sub_1D80F7CBC(v9, v9);
            OUTLINED_FUNCTION_27_25();
            OUTLINED_FUNCTION_12_47();
            v75 = sub_1D8191394();
            v77 = OUTLINED_FUNCTION_21_33(v75, v76);
            v78(v77, v17, v9);
            sub_1D7F7ABF0(v61);
            v79 = sub_1D818EF94();
            OUTLINED_FUNCTION_20_37(v79, v80);
            sub_1D818FF74();

            v45 = v105;

            (*v115)(v17, v45);
            v1 = v62;
          }
        }

        while (v58 != BlueprintSection.endIndex.getter(v23));
        *(v61 + v94) = v58;
        v59 = v103;
      }

      OUTLINED_FUNCTION_22();
      v81(v113, v59);
      OUTLINED_FUNCTION_22();
      v82(v114, v23);
      v83 = v100;
      Blueprint.endIndex.getter();
    }

    while (v104 != v84);
    *(v83 + v92[0]) = v104;
  }

  OUTLINED_FUNCTION_14_15();
  v85 = OUTLINED_FUNCTION_68();
  v86(v85);
  swift_beginAccess();
  v87 = v1[3];
  if (v87)
  {
    swift_endAccess();
    v88 = v87;
    v89 = v119.n128_u64[0];
    sub_1D8190104();

    OUTLINED_FUNCTION_14_15();
    v90(v89, v120.n128_u64[0]);
  }

  else
  {
    OUTLINED_FUNCTION_14_15();
    v91(v119.n128_u64[0], v120.n128_u64[0]);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_100();
}

uint64_t BlueprintCompositionalListDiffableDataSourceProvider.diffableReorderDataSource.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = &protocol witness table for BlueprintCompositionalListDiffableDataSourceProvider<A, B, C, D, E, F, G>;
  a1[5] = &protocol witness table for BlueprintCompositionalListDiffableDataSourceProvider<A, B, C, D, E, F, G>;
  *a1 = v1;
}

void *BlueprintCompositionalListDiffableDataSourceProvider.diffableDataSource.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_1D80F3848@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t BlueprintCompositionalListDiffableDataSourceProvider.delegate.getter()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t BlueprintCompositionalListDiffableDataSourceProvider.delegate.setter()
{
  OUTLINED_FUNCTION_12();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t BlueprintCompositionalListDiffableDataSourceProvider.delegate.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_12();
  *(v5 + 40) = *(v4 + 232);
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

void sub_1D80F3A58()
{
  OUTLINED_FUNCTION_17_10();
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t BlueprintCompositionalListDiffableDataSourceProvider.__allocating_init(blueprintProvider:dataSource:sectionCollapsibleStateManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_85();
  BlueprintCompositionalListDiffableDataSourceProvider.init(blueprintProvider:dataSource:sectionCollapsibleStateManager:)(v5, v6, a3);
  return v4;
}

char *BlueprintCompositionalListDiffableDataSourceProvider.init(blueprintProvider:dataSource:sectionCollapsibleStateManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  *(v3 + 3) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_12();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_12();
  *&v3[*(v8 + 248) + 8] = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_12();
  (*(*(*(v7 + 96) - 8) + 32))(&v3[*(v9 + 216)], a1);
  *(v3 + 2) = a2;
  OUTLINED_FUNCTION_12();
  *&v3[*(v10 + 240)] = a3;
  return v3;
}

uint64_t sub_1D80F3C2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 248);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D80F3C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + *(**a2 + 248);
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t BlueprintCompositionalListDiffableDataSourceProvider.dragReorderDelegate.getter()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t BlueprintCompositionalListDiffableDataSourceProvider.dragReorderDelegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12();
  v5 = v2 + *(v4 + 248);
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t BlueprintCompositionalListDiffableDataSourceProvider.dragReorderDelegate.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 248);
  *(v6 + 48) = v5;
  v7 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  v3[3] = Strong;
  v3[4] = v9;
  return OUTLINED_FUNCTION_20_10();
}

Swift::Void __swiftcall BlueprintCompositionalListDiffableDataSourceProvider.register(in:)(UICollectionView *in)
{
  v2 = v1;
  v4 = *v1;
  swift_unknownObjectWeakAssign();
  BlueprintCollectionViewDataSource.registerDiffableDataSource(in:)(in);
  sub_1D80F41E8();
  OUTLINED_FUNCTION_5_73();
  v6 = *(v5 + 144);
  OUTLINED_FUNCTION_5_73();
  v8 = *(v7 + 88);
  sub_1D81901A4();
  OUTLINED_FUNCTION_0_8();
  v9 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_33_17();
  swift_allocObject();
  OUTLINED_FUNCTION_5_73();
  v56 = *(v10 + 80);
  v11[2] = v56;
  v11[3] = v8;
  v55 = *(v4 + 96);
  v11[4] = v55;
  OUTLINED_FUNCTION_5_73();
  v54 = *(v12 + 104);
  *(v13 + 40) = v54;
  OUTLINED_FUNCTION_5_73();
  v53 = *(v14 + 112);
  *(v15 + 48) = v53;
  OUTLINED_FUNCTION_5_73();
  v52 = *(v16 + 120);
  *(v17 + 56) = v52;
  OUTLINED_FUNCTION_5_73();
  v51 = *(v18 + 128);
  *(v19 + 64) = v51;
  OUTLINED_FUNCTION_5_73();
  v49 = *(v20 + 136);
  *(v21 + 72) = v49;
  *(v21 + 80) = v6;
  v57 = v6;
  OUTLINED_FUNCTION_5_73();
  v50 = *(v22 + 152);
  *(v23 + 88) = v50;
  OUTLINED_FUNCTION_5_73();
  v48 = *(v24 + 160);
  *(v25 + 96) = v48;
  OUTLINED_FUNCTION_5_73();
  v27 = *(v26 + 168);
  *(v28 + 104) = v27;
  OUTLINED_FUNCTION_5_73();
  v30 = *(v29 + 176);
  *(v31 + 112) = v30;
  OUTLINED_FUNCTION_5_73();
  v33 = *(v32 + 184);
  *(v34 + 120) = v33;
  OUTLINED_FUNCTION_5_73();
  v36 = *(v35 + 192);
  *(v37 + 128) = v36;
  *(v37 + 136) = v9;
  v38 = in;
  v39 = sub_1D81900E4();
  swift_beginAccess();
  v40 = v2[3];
  v2[3] = v39;

  v41 = v2[3];
  if (v41)
  {
    OUTLINED_FUNCTION_0_8();
    v42 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_33_17();
    v43 = swift_allocObject();
    *&v45 = v55;
    *&v44 = v56;
    *(&v44 + 1) = v8;
    *(&v45 + 1) = v54;
    *&v46 = v53;
    *(&v46 + 1) = v52;
    *(v43 + 16) = v44;
    *(v43 + 32) = v45;
    *&v44 = v51;
    *(&v44 + 1) = v49;
    *(v43 + 48) = v46;
    *(v43 + 64) = v44;
    *&v44 = v57;
    *(&v44 + 1) = v50;
    *&v45 = v48;
    *(&v45 + 1) = v27;
    *(v43 + 80) = v44;
    *(v43 + 96) = v45;
    *(v43 + 112) = v30;
    *(v43 + 120) = v33;
    *(v43 + 128) = v36;
    *(v43 + 136) = v42;
    v47 = v41;

    OUTLINED_FUNCTION_3();
    sub_1D81900F4();
  }
}

void sub_1D80F41E8()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 240));
  if (v2)
  {

    sub_1D802B150();
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = *(v1 + 80);
    *(v4 + 32) = *(v1 + 104);
    *(v4 + 40) = *(v1 + 112);
    *(v4 + 56) = *(v1 + 128);
    *(v4 + 64) = *(v1 + 136);
    *(v4 + 80) = *(v1 + 160);
    *(v4 + 88) = *(v1 + 168);
    *(v4 + 96) = *(v1 + 176);
    *(v4 + 104) = *(v1 + 184);
    *(v4 + 112) = *(v1 + 192);
    *(v4 + 120) = v3;
    *(v4 + 128) = v2;

    BlueprintSectionCollapsibleStateManager.onStateChange(_:)(sub_1D80F8024, v4);
  }
}

uint64_t sub_1D80F437C()
{
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1D818E994();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 24);
    if (v9)
    {
      v10 = v9;
      sub_1D8190194();

      if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
      {
        (*(v4 + 32))(v6, v2, v3);
        BlueprintCollectionViewDataSource.collectionView(_:cellForItemAt:)();
        v11 = v13;
        (*(v4 + 8))(v6, v3);

        return v11;
      }
    }

    else
    {

      __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
    }

    sub_1D7E73334(v2);
  }

  return 0;
}

unint64_t sub_1D80F4584(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = *(Strong + 16);

  v10 = BlueprintCollectionViewDataSource.collectionView(_:viewForSupplementaryElementOfKind:at:)(a1, a2, a3, a4);

  return v10;
}

void BlueprintCompositionalListDiffableDataSourceProvider.identifiers(for:)()
{
  OUTLINED_FUNCTION_120();
  v21 = v1;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 96);
  OUTLINED_FUNCTION_33_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_33_0();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v31 = AssociatedTypeWitness;
  v32 = v7;
  v33 = AssociatedConformanceWitness;
  v34 = v20;
  OUTLINED_FUNCTION_36_15();
  v9 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  BlueprintProviderType.blueprint.getter(v5, v4);
  v15 = Blueprint.subscript.getter(v21, v9);
  (*(v11 + 8))(v14, v9);
  v31 = v15;
  v22[1] = v3[5];
  v23 = v5;
  v24 = *(v3 + 104);
  v25 = *(v3 + 120);
  v26 = *(v3 + 136);
  v27 = v4;
  v16 = v3[11];
  v28 = v3[10];
  v29 = v16;
  v30 = *(v2 + 24);
  type metadata accessor for BlueprintItem();
  v17 = sub_1D8191484();
  OUTLINED_FUNCTION_3();
  WitnessTable = swift_getWitnessTable();
  sub_1D7E6CDC0(sub_1D80F7DD8, v22, v17, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v19);

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D80F48EC@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintItem();
  result = BlueprintItem.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void BlueprintCompositionalListDiffableDataSourceProvider.indexPaths(for:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 96);
  OUTLINED_FUNCTION_33_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_33_0();
  v25 = AssociatedTypeWitness;
  v26 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_36_15();
  v8 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v15 - v12;
  BlueprintProviderType.blueprint.getter(v6, v5);
  v15[1] = v4[5];
  v16 = v6;
  v17 = *(v4 + 104);
  v18 = *(v4 + 120);
  v19 = *(v4 + 136);
  v20 = v5;
  v14 = v4[11];
  v21 = v4[10];
  v22 = v14;
  v23 = *(v3 + 24);
  v24 = v13;
  sub_1D7E93468(sub_1D80F7E28, v15, v2);
  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_100();
}

void sub_1D80F4BC4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Blueprint();
  Blueprint.indexPath(for:)();
}

void sub_1D80F4CCC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  if (a3)
  {
    v4 = 2;
    BlueprintViewActionResponse.complete(apply:)(&v4);
  }
}

Swift::Void __swiftcall BlueprintCompositionalListDiffableDataSourceProvider.registerReorderingHandlers()()
{
  v1 = v0;
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (v4)
  {
    OUTLINED_FUNCTION_0_8();
    v5 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_33_17();
    v6 = swift_allocObject();
    v7 = v3[10];
    v6[2] = v7;
    v8 = v3[11];
    v6[3] = v8;
    v9 = v3[12];
    v6[4] = v9;
    v10 = v3[13];
    *&v11 = v7;
    *(&v11 + 1) = v8;
    v34 = v11;
    v6[5] = v10;
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v33 = v11;
    v12 = v3[14];
    v6[6] = v12;
    v13 = v3[15];
    v6[7] = v13;
    v14 = v3[16];
    v6[8] = v14;
    v15 = v3[17];
    v6[9] = v15;
    v16 = v4;

    *&v17 = v12;
    *(&v17 + 1) = v13;
    v32 = v17;
    *&v17 = v14;
    *(&v17 + 1) = v15;
    v31 = v17;
    v18 = v3[18];
    v6[10] = v18;
    v28 = v3[19];
    v6[11] = v28;
    v19 = v3[20];
    v6[12] = v19;
    v20 = v3[21];
    v6[13] = v20;
    v30 = v3[22];
    v6[14] = v30;
    v29 = v3[23];
    v6[15] = v29;
    v27 = v3[24];
    v6[16] = v27;
    v6[17] = v5;
    v21 = sub_1D8190164();
    sub_1D8190154();
    sub_1D8190144();
    v21(v35, 0);

    v22 = sub_1D8190164();
    OUTLINED_FUNCTION_3();
    sub_1D8190134();
    v22(v35, 0);
    v23 = swift_allocObject();
    *(v23 + 16) = v34;
    *(v23 + 32) = v33;
    *&v24 = v18;
    *(&v24 + 1) = v28;
    *&v25 = v19;
    *(&v25 + 1) = v20;
    *(v23 + 48) = v32;
    *(v23 + 64) = v31;
    *(v23 + 80) = v24;
    *(v23 + 96) = v25;
    *(v23 + 112) = v30;
    *(v23 + 120) = v29;
    *(v23 + 128) = v27;
    v26 = sub_1D8190164();
    OUTLINED_FUNCTION_3();
    sub_1D8190124();
    v26(v35, 0);
  }
}

uint64_t sub_1D80F5004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v63 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v52 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for BlueprintItem();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v55 = &v52 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v59 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v52 - v20;
  v21 = swift_getAssociatedConformanceWitness();
  *&v68 = v19;
  *(&v68 + 1) = AssociatedTypeWitness;
  *&v69 = v21;
  *(&v69 + 1) = AssociatedConformanceWitness;
  v58 = type metadata accessor for BlueprintSection();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v23 = &v52 - v22;
  *&v68 = v19;
  *(&v68 + 1) = AssociatedTypeWitness;
  *&v69 = v21;
  *(&v69 + 1) = AssociatedConformanceWitness;
  v62 = type metadata accessor for Blueprint();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v54 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v52 - v26;
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D818E994();
  v64 = *(v31 - 8);
  v65 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v35 = Strong;
  swift_beginAccess();
  v36 = v35[3];
  if (!v36)
  {

    __swift_storeEnumTagSinglePayload(v30, 1, 1, v65);
    goto LABEL_6;
  }

  v53 = v15;
  v37 = v36;
  sub_1D8190194();

  v38 = v65;
  if (__swift_getEnumTagSinglePayload(v30, 1, v65) == 1)
  {

LABEL_6:
    sub_1D7E73334(v30);
LABEL_14:
    v50 = 0;
    return v50 & 1;
  }

  (*(v64 + 32))(v33, v30, v38);
  v63 = *(*v35 + 216);
  BlueprintProviderType.blueprint.getter(a5, a12);
  v39 = v33;
  sub_1D818E974();
  v40 = v62;
  Blueprint.subscript.getter();
  v61 = *(v61 + 8);
  (v61)(v27, v40);
  (*(v59 + 16))(v60, v23, v19);
  (*(v57 + 8))(v23, v58);
  sub_1D7E0631C(0, &qword_1ECA0F588);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    sub_1D7FA4F08(&v68, &qword_1ECA0F590, &qword_1ECA0F588);
    (*(v64 + 8))(v39, v65);
LABEL_13:

    goto LABEL_14;
  }

  sub_1D7FA4F08(&v68, &qword_1ECA0F590, &qword_1ECA0F588);
  v41 = v39;
  v42 = dragItems<A>(from:at:)(v35 + v63, v39, a5, a12);
  v43 = sub_1D7E36AB8(v42);

  if (!v43)
  {
    (*(v64 + 8))(v41, v65);
    goto LABEL_13;
  }

  v44 = v54;
  BlueprintProviderType.blueprint.getter(a5, a12);
  v45 = v55;
  Blueprint.subscript.getter();
  (v61)(v44, v40);
  (*(v56 + 32))(v53, v45, AssociatedTypeWitness);
  sub_1D7E0631C(0, &qword_1ECA0EFE0);
  v46 = swift_dynamicCast();
  v47 = v64;
  if ((v46 & 1) == 0)
  {
    (*(v64 + 8))(v41, v65);

    v67 = 0;
    memset(v66, 0, sizeof(v66));
    sub_1D7FA4F08(v66, &unk_1ECA0E640, &qword_1ECA0EFE0);
    goto LABEL_14;
  }

  sub_1D7E17C84(v66, &v68);
  v48 = *(&v69 + 1);
  v49 = v70;
  __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
  v50 = (*(v49 + 8))(v48, v49);

  (*(v47 + 8))(v41, v65);
  __swift_destroy_boxed_opaque_existential_1Tm(&v68);
  return v50 & 1;
}

uint64_t sub_1D80F5800(uint64_t a1, void *a2)
{
  v187 = a1;
  v147 = *a2;
  v3 = v147;
  v146 = type metadata accessor for BlueprintViewAction.Action(0);
  MEMORY[0x1EEE9AC00](v146);
  v148 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v147[19];
  v6 = v147[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v159 = type metadata accessor for BlueprintItem();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v152 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v157 = &v140 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v155 = v5;
  v153 = v6;
  v13 = swift_getAssociatedConformanceWitness();
  v207 = v12;
  v208 = AssociatedTypeWitness;
  v144 = AssociatedTypeWitness;
  v209 = v13;
  v210 = AssociatedConformanceWitness;
  v143 = AssociatedConformanceWitness;
  v156 = type metadata accessor for Blueprint();
  v154 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v145 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v151 = &v140 - v16;
  v17 = v3[11];
  v149 = a2;
  v18 = v17;
  v141 = v3[18];
  v19 = *(*(v141 + 8) + 8);
  v207 = MEMORY[0x1E69E6158];
  v208 = v17;
  v20 = MEMORY[0x1E69E6158];
  v209 = MEMORY[0x1E69E6168];
  v210 = v19;
  v21 = MEMORY[0x1E69E6168];
  v185 = sub_1D818FFF4();
  v193 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v184 = &v140 - v22;
  v203 = sub_1D81901C4();
  v194 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v202 = &v140 - v23;
  v190 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v191 = &v140 - v28;
  v201 = sub_1D8192474();
  v196 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v199 = &v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v200 = &v140 - v31;
  v32 = sub_1D8192484();
  WitnessTable = swift_getWitnessTable();
  v177 = sub_1D8192344();
  v189 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v35 = &v140 - v34;
  v197 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v171 = &v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v176 = &v140 - v39;
  v40 = sub_1D818E994();
  v161 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v162 = &v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v160 = &v140 - v43;
  v207 = v20;
  v208 = v18;
  v209 = v21;
  v210 = v19;
  v44 = v21;
  v45 = sub_1D81902F4();
  v173 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v205 = &v140 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v46;
  MEMORY[0x1EEE9AC00](v47);
  v170 = &v140 - v48;
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v49 - 8);
  v150 = &v140 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v180 = &v140 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v163 = &v140 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v140 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v178 = &v140 - v59;
  __swift_storeEnumTagSinglePayload(&v140 - v59, 1, 1, v40);
  v179 = v57;
  v181 = v40;
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v40);
  v207 = MEMORY[0x1E69E6158];
  v208 = v18;
  v209 = v44;
  v210 = v19;
  v172 = v19;
  v60 = v26;
  v183 = sub_1D81900B4();
  v61 = sub_1D81900A4();
  v62 = sub_1D8191324();
  v206 = v62;
  v63 = sub_1D8191414();
  v186 = v18;
  if (v62 == v63)
  {
LABEL_2:

    v64 = v178;
    v65 = v163;
    sub_1D7E54838(v178, v163);
    v66 = v181;
    if (__swift_getEnumTagSinglePayload(v65, 1, v181) == 1)
    {
      v67 = v179;
    }

    else
    {
      v109 = v161;
      v110 = *(v161 + 32);
      v111 = v160;
      v110(v160, v65, v66);
      v112 = v179;
      v65 = v150;
      sub_1D7E54838(v179, v150);
      if (__swift_getEnumTagSinglePayload(v65, 1, v66) != 1)
      {
        v110(v162, v65, v66);
        v114 = v149;
        v115 = v151;
        BlueprintProviderType.blueprint.getter(v153, v155);
        v116 = *(*v114 + 232);
        swift_beginAccess();
        v205 = v116;
        Strong = swift_unknownObjectWeakLoadStrong();
        v118 = v147;
        if (Strong)
        {
          (*(v147[23] + 208))(v115, v147[16]);
          swift_unknownObjectRelease();
        }

        v119 = v157;
        v120 = v156;
        Blueprint.subscript.getter();
        v204 = type metadata accessor for BlueprintViewActionRequest();
        (*(v158 + 16))(v152, v119, v159);
        sub_1D7F9E3F0();
        v122 = *(v121 + 48);
        v123 = v111;
        v124 = *(v109 + 16);
        v125 = v148;
        v124(v148, v123, v66);
        v124((v125 + v122), v162, v66);
        swift_storeEnumTagMultiPayload();
        LOBYTE(v206) = 1;
        v126 = v154;
        v127 = v145;
        (*(v154 + 16))(v145, v115, v120);
        v128 = (*(v126 + 80) + 144) & ~*(v126 + 80);
        v129 = swift_allocObject();
        v130 = v186;
        *(v129 + 16) = v118[10];
        *(v129 + 24) = v130;
        *(v129 + 32) = v153;
        *(v129 + 40) = *(v118 + 13);
        *(v129 + 56) = v118[15];
        v131 = v118[16];
        *(v129 + 64) = v131;
        v132 = v141;
        *(v129 + 72) = v118[17];
        *(v129 + 80) = v132;
        *(v129 + 88) = v155;
        *(v129 + 96) = v118[20];
        *(v129 + 104) = v118[21];
        *(v129 + 112) = v118[22];
        v133 = v118[23];
        *(v129 + 120) = v133;
        *(v129 + 128) = v118[24];
        *(v129 + 136) = v114;
        (*(v126 + 32))(v129 + v128, v127, v120);
        v134 = BlueprintViewActionRequest.__allocating_init(item:action:source:sourceView:completion:)(v152, v125, &v206, 0, sub_1D80F7F08, v129);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v135 = *(v133 + 72);

          v136 = v151;
          v135(v151, v134, v131, v133);
          swift_unknownObjectRelease();
          v137 = v136;
        }

        else
        {

          v137 = v151;
        }

        v113 = v179;
        v65 = v178;

        (*(v158 + 8))(v157, v159);
        (*(v154 + 8))(v137, v156);
        v138 = *(v161 + 8);
        v139 = v181;
        v138(v162, v181);
        v138(v160, v139);
        goto LABEL_35;
      }

      (*(v109 + 8))(v111, v66);
      v67 = v112;
    }

    sub_1D7E73334(v67);
    v113 = v64;
LABEL_35:
    sub_1D7E73334(v113);
    return sub_1D7E73334(v65);
  }

  v168 = (v173 + 16);
  v167 = (v173 + 32);
  v166 = (v197 + 2);
  v175 = (v197 + 1);
  v68 = v196;
  v196 += 4;
  v197 = (v68 + 2);
  ++v194;
  v195 = (v190 + 32);
  v182 = v193 + 1;
  v193 = (v190 + 8);
  v165 = (v189 + 8);
  v164 = (v173 + 8);
  v190 = v60;
  v169 = v61;
  v198 = v32;
  v204 = v45;
  v192 = WitnessTable;
LABEL_5:
  v69 = sub_1D81913E4();
  sub_1D81913A4();
  if (v69)
  {
    v70 = v170;
    (*(v173 + 16))(v170, v61 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v62, v45);
LABEL_7:
    sub_1D8191454();
    (*v167)(v205, v70, v45);
    sub_1D81902E4();
    v188 = v207;
    v189 = v208;
    MEMORY[0x1DA7124C0](v45);
    v71 = v171;
    sub_1D8192494();
    (*v166)(v35, v71, v32);
    sub_1D8191724();
    v174 = *v175;
    v174(v71, v32);
    while (1)
    {
      while (1)
      {
        sub_1D81917B4();
        if (sub_1D8192464())
        {

          (*v165)(v35, v177);
          v174(v176, v32);
          v45 = v204;
          (*v164)(v205, v204);
          v61 = v169;
          v106 = sub_1D8191414();
          v62 = v206;
          if (v206 == v106)
          {
            goto LABEL_2;
          }

          goto LABEL_5;
        }

        v72 = v60;
        v73 = sub_1D81918F4();
        v74 = v200;
        v75 = v18;
        v76 = v201;
        (*v197)(v200);
        v73(&v207, 0);
        sub_1D81917C4();
        v77 = v199;
        (*v196)(v199, v74, v76);
        v18 = v75;
        LODWORD(v73) = swift_getEnumCaseMultiPayload();
        sub_1D7E0E870(255, &qword_1EDBB3288, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v79 = *v195;
        v80 = &v77[*(TupleTypeMetadata3 + 48)];
        if (v73 == 1)
        {
          break;
        }

        v79(v72, v80, v75);
        v87 = v202;
        sub_1D81902C4();
        v88 = v203;
        v89 = sub_1D81901B4();
        v91 = v90;
        (*v194)(v87, v88);
        if (v91)
        {
          (*v193)(v72, v18);
          v60 = v72;
        }

        else
        {
          v97 = v184;
          sub_1D8190084();
          v98 = v185;
          v99 = sub_1D818FFB4();
          (*v182)(v97, v98);
          v100 = sub_1D80D05DC(v188, v189, v99);
          LOBYTE(v98) = v101;

          if (v98)
          {
            v60 = v190;
            v18 = v186;
            (*v193)(v190, v186);
          }

          else
          {
            v104 = v180;
            MEMORY[0x1DA710B60](v89, v100);
            v60 = v190;
            v18 = v186;
            (*v193)(v190, v186);
            v105 = v179;
            sub_1D7E73334(v179);
            __swift_storeEnumTagSinglePayload(v104, 0, 1, v181);
            sub_1D8013D78(v104, v105);
          }
        }

LABEL_21:
        v32 = v198;
      }

      v81 = v191;
      v79(v191, v80, v75);
      v82 = v202;
      sub_1D81902D4();
      v83 = v203;
      v84 = sub_1D81901B4();
      v86 = v85;
      (*v194)(v82, v83);
      if (v86)
      {
        (*v193)(v81, v18);
        v60 = v190;
        goto LABEL_21;
      }

      v92 = v184;
      sub_1D8190094();
      v93 = v185;
      v94 = sub_1D818FFB4();
      (*v182)(v92, v93);
      v95 = sub_1D80D05DC(v188, v189, v94);
      LOBYTE(v93) = v96;

      if (v93)
      {
        v18 = v186;
        (*v193)(v191, v186);
      }

      else
      {
        v102 = v180;
        MEMORY[0x1DA710B60](v84, v95);
        v18 = v186;
        (*v193)(v191, v186);
        v103 = v178;
        sub_1D7E73334(v178);
        __swift_storeEnumTagSinglePayload(v102, 0, 1, v181);
        sub_1D8013D78(v102, v103);
      }

      v60 = v190;
      v32 = v198;
    }
  }

  result = sub_1D8192204();
  if (v140 == 8)
  {
    v207 = result;
    v108 = v170;
    (*v168)(v170, &v207, v45);
    v70 = v108;
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}