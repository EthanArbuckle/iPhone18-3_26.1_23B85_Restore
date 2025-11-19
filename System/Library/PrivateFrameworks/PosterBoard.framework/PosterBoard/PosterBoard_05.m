void sub_21B67743C(int a1, void *a2, id a3, void *a4)
{
  v6 = [a3 isAnimated];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a4;
  v11[4] = sub_21B69F108;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21B63863C;
  v11[3] = &block_descriptor_640;
  v8 = _Block_copy(v11);
  v9 = a2;
  v10 = a4;

  [v9 dismissViewControllerAnimated:v6 completion:v8];
  _Block_release(v8);
  sub_21B67F6DC(v9);
}

void sub_21B67754C(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v9 = a1;
    v6 = [a2 presentedViewController];
    if (v6)
    {
      v7 = v6;

      v8 = v7;
    }

    else
    {
      sub_21B694118(v5);
      v8 = v9;
    }
  }
}

void (*PosterRackCollectionViewController.lockPosterOverlayLayerSpecification.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterOverlayLayerSpecification;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_21B677704;
}

id sub_21B677788(uint64_t a1, int a2, void *a3, void *a4, uint64_t (*a5)(void *))
{
  v11 = v5 + *a3;
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 8);
  *v11 = a1;
  *(v11 + 8) = a2;
  return sub_21B67795C(v12, v13, a3, a4, a5);
}

void (*PosterRackCollectionViewController.lockPosterLiveContentLayerSpecification.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveContentLayerSpecification;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_21B6778B4;
}

void sub_21B6778DC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void *))
{
  v5 = *a1;
  v6 = *(*a1 + 40) + *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  v9 = *v6;
  v10 = *(v6 + 8);
  *v6 = v7;
  *(v6 + 8) = v8;
  sub_21B67795C(v9, v10, a3, a4, a5);

  free(v5);
}

id sub_21B67795C(uint64_t a1, int a2, void *a3, void *a4, uint64_t (*a5)(void *))
{
  v10 = (v5 + *a3);
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 2);
  v13 = *(v5 + *a4);
  if (v11 == a1 && v12 == a2)
  {
    v16 = v13;
    return a5(v13);
  }

  if (v11)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v13 = 0;
    return a5(v13);
  }

  if (v13)
  {
    v17 = v13;
    v18 = v13;
  }

  else
  {
    result = [objc_allocWithZone(PBFOrientationTransformPortalView) initWithFrame_];
    if (!result)
    {
      __break(1u);
      goto LABEL_27;
    }

    v13 = result;
    v18 = result;
    v17 = 0;
  }

  v20 = v17;
  v21 = [v18 portalView];
  if (v21)
  {
    v22 = v21;
    goto LABEL_20;
  }

  result = [objc_allocWithZone(MEMORY[0x277D76180]) initWithFrame_];
  if (result)
  {
    v22 = result;
    [v22 setAllowsBackdropGroups_];
    [v22 setAllowsHitTesting_];
    [v13 setPortalView_];

LABEL_20:
    v23 = [v22 portalLayer];
    [v23 setSourceLayerRenderId_];
    [v23 setSourceContextId_];
    v24 = (v5 + OBJC_IVAR___PBFPosterRackCollectionViewController_portalContainerSpecification);
    swift_beginAccess();
    v25 = *v24;
    if (*v24 && (v26 = v24[1]) != 0)
    {
      [v13 setCounterTransformView_];
      [v13 setContainerOrientation_];
      [v13 setContentOrientation_];
    }

    else
    {
      [v13 setCounterTransformView_];
    }

    return a5(v13);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21B677BCC(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void (*PosterRackCollectionViewController.lockPosterLiveFloatingLayerSpecification.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveFloatingLayerSpecification;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_21B677CDC;
}

void sub_21B677D04()
{
  v1 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveFloatingView);
  if (v1)
  {
    v2 = (v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_portalContainerSpecification);
    swift_beginAccess();
    v4 = *v2;
    v3 = v2[1];
    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      [v1 setCounterTransformView_];
    }

    else
    {
      v6 = v1;
      [v6 setCounterTransformView_];
      [v6 setContainerOrientation_];
      [v6 setContentOrientation_];
    }
  }

  v7 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveContentView);
  if (v7)
  {
    v8 = (v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_portalContainerSpecification);
    swift_beginAccess();
    v10 = *v8;
    v9 = v8[1];
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      [v7 setCounterTransformView_];
    }

    else
    {
      v12 = v7;
      [v12 setCounterTransformView_];
      [v12 setContainerOrientation_];
      [v12 setContentOrientation_];
    }
  }

  v13 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_centeredLockPosterOverlayView);
  if (v13)
  {
    v14 = (v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_portalContainerSpecification);
    swift_beginAccess();
    v16 = *v14;
    v15 = v14[1];
    if (v16)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      [v13 setCounterTransformView_];
    }

    else
    {
      v18 = v13;
      [v18 setCounterTransformView_];
      [v18 setContainerOrientation_];
      [v18 setContentOrientation_];
    }
  }
}

uint64_t PosterRackCollectionViewController.portalContainerSpecification.getter()
{
  v1 = v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_portalContainerSpecification;
  swift_beginAccess();
  return *v1;
}

void PosterRackCollectionViewController.portalContainerSpecification.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PBFPosterRackCollectionViewController_portalContainerSpecification);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  sub_21B677D04();
}

void (*PosterRackCollectionViewController.portalContainerSpecification.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21B67800C;
}

void sub_21B67800C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_21B677D04();
  }
}

uint64_t PosterRackCollectionViewController.isLockPosterFloatingLayerInlined.getter()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController_isLockPosterFloatingLayerInlined;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*PosterRackCollectionViewController.isLockPosterFloatingLayerInlined.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_isLockPosterFloatingLayerInlined;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21B67812C;
}

uint64_t PosterRackCollectionViewController.isLockPosterComplicationRowHidden.getter()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController_isLockPosterComplicationRowHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21B678190(char a1, uint64_t *a2, void *a3)
{
  v5 = v3;
  v7 = a1 & 1;
  v8 = *a2;
  swift_beginAccess();
  v9 = v5[v8];
  v5[v8] = a1;
  if (v9 != v7)
  {
    v10 = [v5 collectionView];
    if (!v10)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v11 = v10;
    v12 = [v10 preparedCells];

    if (!v12)
    {
LABEL_20:
      __break(1u);
      return;
    }

    sub_21B61785C(0, &unk_28120B2A8);
    v13 = sub_21B6C8E84();

    if (v13 >> 62)
    {
      v14 = sub_21B6C9454();
      if (v14)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_6:
        if (v14 >= 1)
        {
          for (i = 0; i != v14; ++i)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x21CEF66E0](i, v13);
            }

            else
            {
              v16 = *(v13 + 8 * i + 32);
            }

            v17 = v16;
            type metadata accessor for LockScreenPosterCollectionViewCell();
            v18 = swift_dynamicCastClass();
            if (v18)
            {
              v19 = v5[v8];
              v20 = *(v18 + *a3);
              *(v18 + *a3) = v19;
              if (v19 != v20)
              {
                sub_21B666B28();
              }
            }
          }

          goto LABEL_16;
        }

        __break(1u);
        goto LABEL_19;
      }
    }

LABEL_16:
  }
}

void (*PosterRackCollectionViewController.isLockPosterComplicationRowHidden.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_isLockPosterComplicationRowHidden;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21B6783D0;
}

void sub_21B6783DC(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  v8 = *(v6 + v5);
  *(v6 + v5) = v7;
  if (a2)
  {
    if ((v7 ^ v8))
    {
      v9 = [*(v4 + 24) collectionView];
      if (!v9)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v10 = v9;
      v11 = [v9 preparedCells];

      if (!v11)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      sub_21B61785C(0, &unk_28120B2A8);
      v12 = sub_21B6C8E84();

      if (v12 >> 62)
      {
        v13 = sub_21B6C9454();
        if (v13)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
LABEL_7:
          if (v13 >= 1)
          {
            for (i = 0; i != v13; ++i)
            {
              if ((v12 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x21CEF66E0](i, v12);
              }

              else
              {
                v15 = *(v12 + 8 * i + 32);
              }

              v16 = v15;
              type metadata accessor for LockScreenPosterCollectionViewCell();
              v17 = swift_dynamicCastClass();
              if (v17)
              {
                v18 = *(*(v4 + 24) + *(v4 + 32));
                v19 = *(v17 + *a3);
                *(v17 + *a3) = v18;
                if (v18 != v19)
                {
                  sub_21B666B28();
                }
              }
            }

            goto LABEL_33;
          }

          __break(1u);
          goto LABEL_38;
        }
      }

LABEL_33:
    }
  }

  else if ((v7 ^ v8))
  {
    v20 = [*(v4 + 24) collectionView];
    if (!v20)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v21 = v20;
    v22 = [v20 preparedCells];

    if (!v22)
    {
LABEL_42:
      __break(1u);
      return;
    }

    sub_21B61785C(0, &unk_28120B2A8);
    v23 = sub_21B6C8E84();

    if (v23 >> 62)
    {
      v24 = sub_21B6C9454();
      if (!v24)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_33;
      }
    }

    if (v24 >= 1)
    {
      for (j = 0; j != v24; ++j)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x21CEF66E0](j, v23);
        }

        else
        {
          v26 = *(v23 + 8 * j + 32);
        }

        v27 = v26;
        type metadata accessor for LockScreenPosterCollectionViewCell();
        v28 = swift_dynamicCastClass();
        if (v28)
        {
          v29 = *(*(v4 + 24) + *(v4 + 32));
          v30 = *(v28 + *a3);
          *(v28 + *a3) = v29;
          if (v29 != v30)
          {
            sub_21B666B28();
          }
        }
      }

      goto LABEL_33;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  free(v4);
}

void PosterRackCollectionViewController.leadingTopButtonFrame.setter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = &v4[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonFrame];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v10 = [v4 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 effectiveUserInterfaceLayoutDirection];

    if (v12)
    {
      v9 = &v4[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonFrame];
      swift_beginAccess();
    }

    v14 = v9[2];
    v13 = v9[3];
    v16 = *v9;
    v15 = v9[1];
    v24.origin.x = *v9;
    v24.origin.y = v15;
    v24.size.width = v14;
    v24.size.height = v13;
    MinY = CGRectGetMinY(v24);
    v25.origin.x = v16;
    v25.origin.y = v15;
    v25.size.width = v14;
    v25.size.height = v13;
    MinX = CGRectGetMinX(v25);
    v19 = &v4[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets];
    v21 = *&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets];
    v20 = *&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 8];
    v22.f64[0] = *&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 16];
    v23 = *&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 24];
    *v19 = MinY;
    v19[1] = MinX;
    v19[2] = 0.0;
    v19[3] = MinX;
    sub_21B679FFC(v21, v20, v22, v23);
  }

  else
  {
    __break(1u);
  }
}

void (*PosterRackCollectionViewController.leadingTopButtonFrame.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonFrame;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21B678878;
}

void sub_21B678878(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = [*(v3 + 24) view];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 effectiveUserInterfaceLayoutDirection];

    if (v6)
    {
      v7 = *(v3 + 24) + OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonFrame;
      swift_beginAccess();
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = *(v3 + 24);
      v7 = v8 + *(v3 + 32);
    }

    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    v12 = *v7;
    v11 = *(v7 + 8);
    v21.origin.x = *v7;
    v21.origin.y = v11;
    v21.size.width = v10;
    v21.size.height = v9;
    MinY = CGRectGetMinY(v21);
    v22.origin.x = v12;
    v22.origin.y = v11;
    v22.size.width = v10;
    v22.size.height = v9;
    MinX = CGRectGetMinX(v22);
    v15 = v8 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets;
    v17 = *(v8 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets);
    v16 = *(v8 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 8);
    v18.f64[0] = *(v8 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 16);
    v19 = *(v8 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 24);
    *v15 = MinY;
    *(v15 + 8) = MinX;
    *(v15 + 16) = 0;
    *(v15 + 24) = MinX;
    sub_21B679FFC(v17, v16, v18, v19);
  }

  free(v3);
}

double sub_21B6789B4(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void PosterRackCollectionViewController.trailingTopButtonFrame.setter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = &v4[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonFrame];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v10 = [v4 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 effectiveUserInterfaceLayoutDirection];

    if (!v12)
    {
      v9 = &v4[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonFrame];
      swift_beginAccess();
    }

    v14 = v9[2];
    v13 = v9[3];
    v16 = *v9;
    v15 = v9[1];
    v24.origin.x = *v9;
    v24.origin.y = v15;
    v24.size.width = v14;
    v24.size.height = v13;
    MinY = CGRectGetMinY(v24);
    v25.origin.x = v16;
    v25.origin.y = v15;
    v25.size.width = v14;
    v25.size.height = v13;
    MinX = CGRectGetMinX(v25);
    v19 = &v4[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets];
    v21 = *&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets];
    v20 = *&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 8];
    v22.f64[0] = *&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 16];
    v23 = *&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 24];
    *v19 = MinY;
    v19[1] = MinX;
    v19[2] = 0.0;
    v19[3] = MinX;
    sub_21B679FFC(v21, v20, v22, v23);
  }

  else
  {
    __break(1u);
  }
}

void (*PosterRackCollectionViewController.trailingTopButtonFrame.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonFrame;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21B678BB8;
}

void sub_21B678BB8(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = [*(v3 + 24) view];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 effectiveUserInterfaceLayoutDirection];

    if (v6)
    {
      v7 = *(v3 + 24);
      v8 = v7 + *(v3 + 32);
    }

    else
    {
      v8 = *(v3 + 24) + OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonFrame;
      swift_beginAccess();
      v7 = *(v3 + 24);
    }

    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    v12 = *v8;
    v11 = *(v8 + 8);
    v21.origin.x = *v8;
    v21.origin.y = v11;
    v21.size.width = v10;
    v21.size.height = v9;
    MinY = CGRectGetMinY(v21);
    v22.origin.x = v12;
    v22.origin.y = v11;
    v22.size.width = v10;
    v22.size.height = v9;
    MinX = CGRectGetMinX(v22);
    v15 = v7 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets;
    v17 = *(v7 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets);
    v16 = *(v7 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 8);
    v18.f64[0] = *(v7 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 16);
    v19 = *(v7 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 24);
    *v15 = MinY;
    *(v15 + 8) = MinX;
    *(v15 + 16) = 0;
    *(v15 + 24) = MinX;
    sub_21B679FFC(v17, v16, v18, v19);
  }

  free(v3);
}

void *PosterRackCollectionViewController.lockVibrancyConfiguration.getter()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController_lockVibrancyConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PosterRackCollectionViewController.lockVibrancyConfiguration.setter(id a1)
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_lockVibrancyConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    a1 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_21B61785C(0, &unk_28120B248), a1 = a1, v5 = v4, v6 = sub_21B6C91A4(), v5, (v6 & 1) == 0))
  {
LABEL_7:
    sub_21B67DC7C();

    goto LABEL_8;
  }

  v4 = v5;
LABEL_8:
}

void (*PosterRackCollectionViewController.lockVibrancyConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_lockVibrancyConfiguration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21B678EA4;
}

void sub_21B678EA4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v6 = v2[4];
    v5 = v2[5];
    v7 = *(v6 + v5);
    *(v6 + v5) = v3;
    if (v7)
    {
      if (v3)
      {
        sub_21B61785C(0, &unk_28120B248);
        v3 = v3;
        v8 = v7;
        v9 = sub_21B6C91A4();

        if (v9)
        {

          goto LABEL_10;
        }
      }
    }

    else
    {
      if (!v3)
      {
        goto LABEL_11;
      }

      v3 = v3;
    }

    sub_21B67DC7C();

    v3 = v7;
    goto LABEL_10;
  }

  v4 = v3;
  PosterRackCollectionViewController.lockVibrancyConfiguration.setter(v3);
  v3 = v2[3];
LABEL_10:

LABEL_11:

  free(v2);
}

void sub_21B678F88(uint64_t a1, double a2)
{
  v67 = sub_21B6C88C4();
  v5 = *(v67 - 8);
  v6 = MEMORY[0x28223BE20](v67);
  v63 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v62 - v8;
  v9 = &v2[OBJC_IVAR___PBFPosterRackCollectionViewController_adaptiveTimeConfiguration];
  swift_beginAccess();
  if (*v9 != a1 || v9[1] != a2)
  {
    v10 = [v2 collectionView];
    if (!v10)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v11 = v10;
    v12 = [v10 preparedCells];

    if (!v12)
    {
LABEL_55:
      __break(1u);
      return;
    }

    sub_21B61785C(0, &unk_28120B2A8);
    v13 = sub_21B6C8E84();

    v62 = v9;
    if (v13 >> 62)
    {
      v14 = sub_21B6C9454();
      if (v14)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_7:
        if (v14 >= 1)
        {
          v15 = 0;
          v68 = v13 & 0xC000000000000001;
          v65 = v14;
          v66 = (v5 + 8);
          while (1)
          {
            v16 = v68 ? MEMORY[0x21CEF66E0](v15, v13) : *(v13 + 8 * v15 + 32);
            v17 = v16;
            type metadata accessor for LockScreenPosterCollectionViewCell();
            v18 = swift_dynamicCastClass();
            if (v18)
            {
              break;
            }

LABEL_10:
            if (v14 == ++v15)
            {
              goto LABEL_51;
            }
          }

          v19 = v18;
          if (qword_28120B5D0 != -1)
          {
            swift_once();
          }

          v20 = qword_28120CDA8;
          v21 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
          v22 = [*(qword_28120CDA8 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) activeConfiguration];
          if (v22)
          {
            v23 = v22;
            v24 = [v22 _path];
            v25 = [v24 serverIdentity];

            if (v25)
            {
              v26 = [v25 posterUUID];

              v27 = v64;
              sub_21B6C88A4();

              v28 = sub_21B6C8874();
              v30 = v29;

              (*v66)(v27, v67);
              goto LABEL_22;
            }
          }

          v28 = 0;
          v30 = 0;
LABEL_22:
          v31 = [*(v20 + v21) selectedConfiguration];
          if (v31)
          {
            v32 = v31;
            v33 = [v31 _path];
            v34 = [v33 serverIdentity];

            if (!v34)
            {

              if (!v30)
              {
                goto LABEL_48;
              }

              goto LABEL_26;
            }

            v35 = [v34 posterUUID];

            v36 = v64;
            sub_21B6C88A4();

            sub_21B6C8874();

            (*v66)(v36, v67);
          }

          if (!v30)
          {
            goto LABEL_48;
          }

LABEL_26:
          v37 = *(v19 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
          if (v37)
          {
            v38 = *&v37[OBJC_IVAR___PBFPosterPair_configuration];
            v39 = v37;
            v40 = [v38 _path];
            v41 = [v40 serverIdentity];

            if (v41)
            {
              v42 = [v41 posterUUID];

              v43 = v63;
              sub_21B6C88A4();

              v44 = sub_21B6C8874();
              v46 = v45;
              (*v66)(v43, v67);
              if (v28 == v44 && v30 == v46)
              {

                goto LABEL_37;
              }

              v47 = sub_21B6C96E4();

              if (v47)
              {
LABEL_37:
                v48 = *v62;
                v49 = v62[1];
                v50 = v19 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_adaptiveTimeConfiguration;
                v51 = *(v19 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_adaptiveTimeConfiguration);
                v52 = *(v19 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_adaptiveTimeConfiguration + 8);
                *v50 = *v62;
                *(v50 + 8) = v49;
                if (v51 != v48 || v52 != v49)
                {
                  Strong = swift_unknownObjectWeakLoadStrong();
                  if (Strong)
                  {
                    v54 = [Strong interfaceOrientation];
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v54 = 0;
                  }

                  IsPortrait = UIInterfaceOrientationIsPortrait(v54);
                  v56 = *v50;
                  if (IsPortrait == UIInterfaceOrientationIsPortrait(*v50) || (IsLandscape = UIInterfaceOrientationIsLandscape(v54), IsLandscape == UIInterfaceOrientationIsLandscape(v56)))
                  {
                    v58 = *(v19 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController);
                    if (v58)
                    {
                      [v58 setAdaptiveTimeTextHeight_];
                    }

                    v59 = *(v19 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
                    if (v59)
                    {
                      v60 = *(v50 + 8);
                      v61 = v59;
                      [v61 setAdaptiveTimeTextHeight_];
                    }
                  }
                }
              }

LABEL_48:

              goto LABEL_49;
            }
          }

          else
          {
          }

LABEL_49:
          v14 = v65;
          goto LABEL_10;
        }

        __break(1u);
        goto LABEL_54;
      }
    }

LABEL_51:
  }
}

double PosterRackCollectionViewController.adaptiveTimeConfiguration.getter()
{
  v1 = v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_adaptiveTimeConfiguration;
  swift_beginAccess();
  return *(v1 + 8);
}

void PosterRackCollectionViewController.adaptiveTimeConfiguration.setter(uint64_t a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___PBFPosterRackCollectionViewController_adaptiveTimeConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  sub_21B678F88(v6, v7);
}

void (*PosterRackCollectionViewController.adaptiveTimeConfiguration.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_adaptiveTimeConfiguration;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_21B67974C;
}

void sub_21B67974C(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 40) + *(*a1 + 48));
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *v2;
  v6 = *(v2 + 1);
  *v2 = v3;
  v2[1] = v4;
  sub_21B678F88(v5, v6);

  free(v1);
}

uint64_t sub_21B6797A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93D58);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_21B6C8A04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = [v1 pbf_displayContext];
  v12 = OBJC_IVAR___PBFPosterRackCollectionViewController_stashedLockscreenSnapshots;
  swift_beginAccess();
  sub_21B63D2BC(&v1[v12], v4, &qword_27CD93D58);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92650);
  if ((*(*(v13 - 8) + 48))(v4, 1, v13) == 1)
  {
    swift_unknownObjectRelease();
    return sub_21B62AA8C(v4, &qword_27CD93D58);
  }

  v15 = *&v4[*(v13 + 64)];
  v16 = *(v6 + 32);
  v16(v10, v4, v5);
  if ([v15 isEqualToDisplayContext_])
  {
    (*(v6 + 8))(v10, v5);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v46 = v11;
  v17 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
  v43 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore + 8];
  v44 = v16;
  ObjectType = swift_getObjectType();
  v18 = sub_21B6C89F4();
  v19 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  result = swift_beginAccess();
  v47 = v17;
  v48 = v15;
  v20 = *(v17 + v19);
  v49 = v5;
  v50 = v10;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = v6;

    v22 = MEMORY[0x21CEF66E0](v18, v20);

    goto LABEL_9;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v18 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v21 = v6;
  v22 = *(v20 + 8 * v18 + 32);
LABEL_9:
  v23 = PRPosterSnapshotDefinitionIdentifierSwitcher;
  v42 = v22;
  v24 = *&v22[OBJC_IVAR___PBFPosterPair_configuration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6D7FE0;
  *(inited + 32) = v23;
  v41 = v24;
  v26 = v23;
  v40 = sub_21B645CE0(inited);
  swift_setDeallocating();
  sub_21B636E24(inited + 32);
  v27 = v51;
  v28 = v49;
  (*(v21 + 16))(v51, v50, v49);
  v29 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v30 = (v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  v32 = v31 + v29;
  v33 = v28;
  v44(v32, v27, v28);
  v34 = v46;
  *(v31 + v30) = v46;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v35 = *(v43 + 8);
  v36 = *(v35 + 8);
  v37 = v26;
  v38 = v1;
  swift_unknownObjectRetain();
  v39 = v41;
  v36(v41, v40, v34, 0, sub_21B69C8F0, v31, ObjectType, v35);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return (*(v21 + 8))(v50, v33);
}

uint64_t sub_21B679C98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a1;
  v35 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93D58);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = sub_21B6C8A04();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___PBFPosterRackCollectionViewController_stashedLockscreenSnapshots;
  swift_beginAccess();
  sub_21B63D2BC(a2 + v16, v11, &qword_27CD93D58);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92650);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    return sub_21B62AA8C(v11, &qword_27CD93D58);
  }

  swift_unknownObjectRelease();
  (*(v13 + 32))(v15, v11, v12);
  if ((sub_21B6C8984() & 1) == 0)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v31 = a3;
  v20 = [a2 pbf_displayContext];
  v21 = [v20 isEqualToDisplayContext_];
  swift_unknownObjectRelease();
  if (!v21)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v22 = v34;
  if (!*(v34 + 16))
  {
    return (*(v13 + 8))(v15, v12);
  }

  v23 = sub_21B695E60(v33);
  if ((v24 & 1) == 0)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v25 = *(v13 + 8);
  v26 = *(*(v22 + 56) + 8 * v23);
  v25(v15, v12);
  v27 = *(v17 + 48);
  v28 = *(v17 + 64);
  v29 = v32;
  (*(v13 + 16))(v32, v31, v12);
  *(v29 + v27) = v26;
  *(v29 + v28) = v35;
  (*(v18 + 56))(v29, 0, 1, v17);
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_21B6992E0(v29, a2 + v16);
  return swift_endAccess();
}

void sub_21B679FFC(float64_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5.f64[0] = a1;
  v6 = (v4 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets);
  v5.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets), v5), vceqq_f64(*(v4 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets + 16), a3)))) & 1) == 0)
  {
    v7 = *(v4 + OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonTopAnchorConstraint);
    if (v7)
    {
      [v7 setConstant_];
    }

    v8 = *(v4 + OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonTrailingAnchorConstraint);
    if (v8)
    {
      [v8 setConstant_];
    }

    v9 = *(v4 + OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonTopAnchorConstraint);
    if (v9)
    {
      [v9 setConstant_];
    }

    v10 = *(v4 + OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonTrailingAnchorConstraint);
    if (v10)
    {
      v11 = -v6[1];

      [v10 setConstant_];
    }
  }
}

id sub_21B67A140()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___duplicateAction;
  v2 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___duplicateAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___duplicateAction);
  }

  else
  {
    sub_21B61785C(0, &unk_28120B110);
    v4 = sub_21B6C8D74();
    v5 = PBFLocalizedString(v4);

    sub_21B6C8DA4();
    v6 = sub_21B6C8D74();
    v7 = [objc_opt_self() systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v0;
    v9 = sub_21B6C91B4();
    v10 = *(v0 + v1);
    *(v8 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_21B67A2D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21B67B848();
  }
}

uint64_t sub_21B67A324()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___morphAnimation;
  v2 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___morphAnimation);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___morphAnimation);
LABEL_5:
    v11 = v2;
    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
  result = swift_allocObject();
  *(result + 16) = xmmword_21B6D81D0;
  v5 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton);
  if (v5)
  {
    v6 = v0;
    *(result + 32) = v5;
    v7 = objc_allocWithZone(sub_21B6C8B14());
    v8 = v5;
    v9 = sub_21B6C8AF4();
    v10 = *(v0 + v1);
    *(v6 + v1) = v9;
    v3 = v9;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_21B67A3F0(char *a1)
{
  if (a1)
  {
    v3 = *&a1[OBJC_IVAR___PBFPosterPair_id];
    v2 = *&a1[OBJC_IVAR___PBFPosterPair_id + 8];
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_17;
  }

  v6 = *(Strong + OBJC_IVAR___PBFPosterPair_id);
  v5 = *(Strong + OBJC_IVAR___PBFPosterPair_id + 8);
  v7 = Strong;

  if (!v2)
  {
    if (!v5)
    {
      return;
    }

LABEL_17:

    if (!a1)
    {
      return;
    }

LABEL_18:
    v10 = OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration;
    v11 = *&a1[OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration];
    if (v11)
    {
      v12 = qword_28120B390;
      v13 = a1;
      v14 = v11;
      if (v12 != -1)
      {
        swift_once();
      }

      v15 = sub_21B6C8AB4();
      __swift_project_value_buffer(v15, qword_28120CD78);
      v16 = v13;
      v17 = sub_21B6C8A94();
      v18 = sub_21B6C9024();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = a1;
        v21 = v16;
        _os_log_impl(&dword_21B526000, v17, v18, "Committing home screen configuration for poster pair %@ before tracking new poster pair", v19, 0xCu);
        sub_21B62AA8C(v20, &qword_27CD92EF0);
        MEMORY[0x21CEF8150](v20, -1, -1);
        MEMORY[0x21CEF8150](v19, -1, -1);
      }

      sub_21B624D1C(v14, v16);
      v22 = *&a1[v10];
      v23 = v22;
      *&a1[v10] = 0;
      sub_21B6A2434(v22);
    }

    return;
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  if (v3 != v6 || v2 != v5)
  {
    v9 = sub_21B6C96E4();

    if (!a1 || (v9 & 1) != 0)
    {
      return;
    }

    goto LABEL_18;
  }
}

void sub_21B67A6D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration;
    v3 = *(Strong + OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration);
    if (v3)
    {
      v4 = qword_28120B390;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = sub_21B6C8AB4();
      __swift_project_value_buffer(v6, qword_28120CD78);
      v7 = v1;
      v8 = sub_21B6C8A94();
      v9 = sub_21B6C9044();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        *(v10 + 4) = v7;
        *v11 = v1;
        v12 = v7;
        _os_log_impl(&dword_21B526000, v8, v9, "Committing home screen configuration for poster pair: %@", v10, 0xCu);
        sub_21B62AA8C(v11, &qword_27CD92EF0);
        MEMORY[0x21CEF8150](v11, -1, -1);
        MEMORY[0x21CEF8150](v10, -1, -1);
      }

      sub_21B624D1C(v5, v7);
      v13 = *&v1[v2];
      *&v1[v2] = 0;
      sub_21B6A2434(v13);
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    sub_21B67A3F0(v14);
  }
}

void sub_21B67A8F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration;
    if (*(Strong + OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration))
    {
      if (qword_28120B390 != -1)
      {
        swift_once();
      }

      v3 = sub_21B6C8AB4();
      __swift_project_value_buffer(v3, qword_28120CD78);
      v4 = v1;
      v5 = sub_21B6C8A94();
      v6 = sub_21B6C9044();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        *(v7 + 4) = v4;
        *v8 = v1;
        v9 = v4;
        _os_log_impl(&dword_21B526000, v5, v6, "Cancelling pending home screen configuration changes for poster pair: %@", v7, 0xCu);
        sub_21B62AA8C(v8, &qword_27CD92EF0);
        MEMORY[0x21CEF8150](v8, -1, -1);
        MEMORY[0x21CEF8150](v7, -1, -1);
      }

      v10 = *&v1[v2];
      *&v1[v2] = 0;
      sub_21B6A2434(v10);
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    sub_21B67A3F0(v11);
  }
}

uint64_t sub_21B67AAE4()
{
  v1 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButton);
  v11 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButton);
  v12 = v1;
  v2 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v3 = v1;
  v4 = v11;
  for (i = 0; i != 2; ++i)
  {
    v6 = v10[i + 4];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x21CEF6000]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      sub_21B6C8EA4();
      v2 = v9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD942E0);
  swift_arrayDestroy();
  return v2;
}

id sub_21B67ABF0()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___feedbackGenerator;
  v2 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___feedbackGenerator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___feedbackGenerator);
  }

  else
  {
    v4 = sub_21B67AC50();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21B67AC50()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6D7FC0;
  *(inited + 32) = v0;
  *(inited + 40) = v1;
  v4 = v0;
  v5 = v1;
  sub_21B645CBC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_21B61785C(0, &qword_28120B138);
  sub_21B61E3A8(&qword_28120B130, &qword_28120B138);
  v6 = sub_21B6C8F84();

  v7 = [v2 privateConfigurationForTypes_];

  v8 = [objc_allocWithZone(MEMORY[0x277D757B8]) initWithConfiguration_];
  return v8;
}

uint64_t sub_21B67ADEC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v2 = [objc_allocWithZone(PBFPosterGalleryPreviewViewController) initWithNibName:0 bundle:0];
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [objc_opt_self() sharedInstance];
      v6 = [v5 applicationStateMonitor];

      [v4 setApplicationStateMonitor_];
    }

    v7 = [*(*(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore) + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
    v8 = [v7 currentGalleryConfiguration];

    if (v8)
    {
      [*(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_galleryDataProvider) configureForGallery_];
    }

    sub_21B672440();
    return v2;
  }

  return result;
}

void sub_21B67AF40(void *a1, uint64_t (*a2)(), uint64_t a3)
{
  v4 = v3;
  v6 = *&v3[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
  v7 = OBJC_IVAR____TtC11PosterBoard11PosterStore_glue;
  v8 = [*(v6 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v9 = [v8 canPersistNewPosterConfiguration];

  if ((v9 & 1) == 0)
  {
    v14 = sub_21B6C8D74();
    v15 = PBFLocalizedString(v14);

    sub_21B6C8DA4();
    v16 = sub_21B6C8D74();
    v17 = PBFLocalizedString(v16);

    sub_21B6C8DA4();
    v18 = sub_21B6C8D74();

    v19 = sub_21B6C8D74();

    v72 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];

    v20 = sub_21B6C8D74();
    v21 = PBFLocalizedString(v20);

    sub_21B6C8DA4();
    v22 = sub_21B6C8D74();

    v23 = [objc_opt_self() actionWithTitle:v22 style:0 handler:0];

    [v72 addAction_];
    [v4 presentViewController:v72 animated:1 completion:0];

    return;
  }

  v67 = a1;
  v10 = [v4 presentedViewController];
  if (v10)
  {
    v11 = v10;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;

      if (v11 == v13)
      {
        return;
      }
    }

    else
    {
    }
  }

  swift_unknownObjectWeakAssign();
  v24 = [v4 collectionView];
  if (!v24)
  {
    goto LABEL_47;
  }

  v25 = v24;
  v26 = [v24 visibleCells];

  sub_21B61785C(0, &unk_28120B2A8);
  v27 = sub_21B6C8E84();

  v73 = v27;
  if (v27 >> 62)
  {
LABEL_45:
    v28 = sub_21B6C9454();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = v7;
  v69 = v6;
  if (!v28)
  {

LABEL_29:
    v44 = sub_21B67ADEC();
    [v44 setEditingSceneDelegate_];
    [v44 setDelegate_];
    [v44 setDataProvider_];
    if (PUIFeatureEnabled())
    {
      v45 = [objc_allocWithZone(MEMORY[0x277D75DD0]) init];
      v46 = [objc_opt_self() effectWithStyle_];
      [v45 setDimmingVisualEffect_];

      v47 = *&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_addPosterButton];
      sub_21B61785C(0, &qword_27CD94290);
      v48 = swift_allocObject();
      *(v48 + 16) = v67;
      *(v48 + 24) = v47;
      v49 = v67;
      v50 = v47;
      v51 = v4;
      v52 = v50;
      v53 = v44;
      v54 = v45;
      v55 = sub_21B6C90D4();

      [v53 setPreferredTransition_];

      [v53 setModalPresentationStyle_];
      v56 = [v53 presentationController];

      if (v56)
      {
        [v56 setDelegate_];
      }

      v4 = v51;
      v57 = a2;
      v58 = &protocol conformance descriptor for PosterEditingConfirmationViewControllerUserChoice;
    }

    else
    {
      v59 = v44;
      [v59 setModalPresentationStyle_];
      v54 = [v59 sheetPresentationController];

      v57 = a2;
      v58 = &protocol conformance descriptor for PosterEditingConfirmationViewControllerUserChoice;
      if (!v54)
      {
LABEL_36:
        if (v57)
        {
          v78 = v57;
          v79 = a3;
          aBlock = MEMORY[0x277D85DD0];
          v75 = v58[60];
          v76 = sub_21B63863C;
          v77 = &block_descriptor_624;
          v60 = _Block_copy(&aBlock);
        }

        else
        {
          v60 = 0;
        }

        [v4 presentViewController:v44 animated:1 completion:v60];
        _Block_release(v60);
        sub_21B67F6DC(v44);
        v61 = [*(v68 + v69) dataStore];
        v62 = [v61 currentGalleryConfiguration];

        if (v62)
        {
          v63 = [v62 suggestedLayout];

          if (v63)
          {
            v64 = [objc_opt_self() sharedInstance];
            v65 = [v63 proactiveRepresentation];
            [v64 logFaceGalleryDidAppearWithFaceGalleryConfiguration_];
          }
        }

        return;
      }

      [objc_opt_self() configureSheetPresentationController_];
      [v54 setDelegate_];
    }

    goto LABEL_36;
  }

  v66 = v4;
  v4 = 0;
  v6 = v73 & 0xC000000000000001;
  p_info = &OBJC_METACLASS___PBFSilhouetteHelpers.info;
  v7 = &selRef_collectionViewLayout;
  while (1)
  {
    if (v6)
    {
      v30 = MEMORY[0x21CEF66E0](v4, v73);
    }

    else
    {
      if (v4 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v30 = *(v73 + 8 * v4 + 32);
    }

    v31 = v30;
    v32 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    type metadata accessor for LockScreenPosterCollectionViewCell();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {
      goto LABEL_15;
    }

    v34 = v33;
    v35 = *(&p_info[347]->flags + v33);
    if (!v35)
    {
      break;
    }

    [v35 contentOffset];
    if (v37 != 0.0 || v36 != 0.0)
    {
      v38 = p_info;
      v39 = objc_opt_self();
      v40 = swift_allocObject();
      *(v40 + 16) = v34;
      v78 = sub_21B69F988;
      v79 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v75 = 1107296256;
      v76 = sub_21B63863C;
      v77 = &block_descriptor_634;
      v41 = _Block_copy(&aBlock);
      v42 = v31;

      v43 = v39;
      p_info = v38;
      [v43 animateWithDuration:v41 animations:0.3];

      _Block_release(v41);
      goto LABEL_16;
    }

LABEL_15:

LABEL_16:
    ++v4;
    if (v32 == v28)
    {

      v4 = v66;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_21B67B848()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_21B6C8A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B68C3A0(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_21B62AA8C(v3, &qword_27CD93500);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
  v10 = sub_21B6C89F4();
  v11 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  result = swift_beginAccess();
  v12 = *(v9 + v11);
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = MEMORY[0x21CEF66E0](v10, v12);

    goto LABEL_7;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = *(v12 + 8 * v10 + 32);
LABEL_7:
  (*(v5 + 8))(v7, v4);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = v13;
  sub_21B625024(v15, sub_21B69C8E0, v14);
}

void sub_21B67BAA4(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    if (qword_28120B390 != -1)
    {
      swift_once();
    }

    v5 = sub_21B6C8AB4();
    __swift_project_value_buffer(v5, qword_28120CD78);
    v6 = sub_21B6C9024();
    v7 = a3;
    v8 = a2;
    oslog = sub_21B6C8A94();

    if (os_log_type_enabled(oslog, v6))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412546;
      *(v9 + 4) = v7;
      *v10 = v7;
      *(v9 + 12) = 2112;
      v11 = v7;
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      v10[1] = v13;
      _os_log_impl(&dword_21B526000, oslog, v6, "Error while duplicating %@: %@", v9, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EF0);
      swift_arrayDestroy();
      MEMORY[0x21CEF8150](v10, -1, -1);
      MEMORY[0x21CEF8150](v9, -1, -1);
    }
  }
}

id sub_21B67BCBC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  if (a2)
  {
    sub_21B68C3A0(&v13 - v7);
    v9 = sub_21B6C8A04();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_21B62AA8C(v8, &qword_27CD93500);
    }

    a1 = sub_21B6C89F4();
    (*(v10 + 8))(v8, v9);
  }

  v12 = OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl;
  result = *(v3 + OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = [result currentPage];
  if (result == a1)
  {
    return result;
  }

  result = *(v3 + v12);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result setCurrentPage_];
}

void sub_21B67BE34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_21B6C8A04();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v37 - v10;
  v11 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView;
  v12 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView);
  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = *(v12 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair);
  if (v13)
  {
    v14 = v9;
    v15 = v6;
    v16 = *&v13[OBJC_IVAR___PBFPosterPair_id];
    v17 = *&v13[OBJC_IVAR___PBFPosterPair_id + 8];

    v18 = v13;
    sub_21B61F85C(v16, v17);
    v20 = v19;

    if (v20)
    {
      v21 = *(v1 + v11);
      if (!v21)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v22 = *&v21[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair];
      *&v21[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair] = 0;
      v23 = v21;
      sub_21B633E70(v22);

      v18 = v22;
    }

    v6 = v15;
    v9 = v14;
  }

  v24 = *(v1 + v11);
  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!*(v24 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair) && *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode) == 4)
  {
    sub_21B68C3A0(v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_21B62AA8C(v4, &qword_27CD93500);
      return;
    }

    (*(v6 + 32))(v37, v4, v5);
    v25 = sub_21B6C89F4();
    MEMORY[0x21CEF5B40](1, v25);
    v26 = *(v1 + v11);
    if (!v26)
    {
      goto LABEL_25;
    }

    v27 = *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
    v28 = v26;
    v29 = sub_21B6C89F4();
    v30 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    swift_beginAccess();
    v31 = *(v27 + v30);
    if ((v31 & 0xC000000000000001) != 0)
    {

      v36 = MEMORY[0x21CEF66E0](v29, v31);

      v32 = v36;
      goto LABEL_17;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v29 < *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v32 = *(v31 + 8 * v29 + 32);
LABEL_17:
      v33 = *&v28[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair];
      *&v28[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair] = v32;
      v34 = v32;
      sub_21B633E70(v33);

      v35 = *(v6 + 8);
      v35(v9, v5);
      v35(v37, v5);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_21B67C244()
{
  v1 = (v0 + OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___initialLayoutModeFromFullscreen);
  if (v1[8] != 1)
  {
    return *v1;
  }

  v5 = &type metadata for PosterRackFeatures;
  v6 = sub_21B62C9EC();
  v4[0] = 0;
  v2 = sub_21B6C8A54();
  __swift_destroy_boxed_opaque_existential_0(v4);
  if (v2)
  {
    result = 2;
  }

  else
  {
    result = 1;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_21B67C2C8()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v2 = v1;
  v3 = [v1 preparedCells];

  if (!v3)
  {
LABEL_36:
    __break(1u);
    return;
  }

  sub_21B61785C(0, &unk_28120B2A8);
  v4 = sub_21B6C8E84();

  if (v4 >> 62)
  {
    v5 = sub_21B6C9454();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_5:
      if (v5 >= 1)
      {
        v6 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x21CEF66E0](v6, v4);
          }

          else
          {
            v12 = *(v4 + 8 * v6 + 32);
          }

          v9 = v12;
          type metadata accessor for LockScreenPosterCollectionViewCell();
          v13 = swift_dynamicCastClass();
          if (v13)
          {
            v14 = v13;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {

              if ((*(v14 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8) & 1) == 0 && *(v14 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode) == 5)
              {
                v16 = *(v14 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing);
                *(v14 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing) = 1;
                if ((v16 & 1) == 0)
                {
                  sub_21B666B28();
                }
              }
            }

            v17 = swift_unknownObjectWeakLoadStrong();
            if (v17)
            {
              v11 = v17;
              if ((*(v14 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8) & 1) == 0 && *(v14 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode) == 5 || *(v14 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_isReloadingLockPosterSnapshot) == 1)
              {
                goto LABEL_23;
              }

              if ([v17 isContentHidden])
              {
                [v11 removeObserver_];
                v18 = [v11 parentViewController];
                if (v18)
                {
                  v19 = v18;
                  [v18 bs:v11 removeChildViewController:?];
                }

                [v11 invalidate];
                v20 = *(v14 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing);
                *(v14 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing) = 0;
                if (v20 == 1)
                {
                  sub_21B666B28();
                }

LABEL_23:

                goto LABEL_9;
              }

              v7 = swift_allocObject();
              *(v7 + 16) = v14;
              *(v7 + 24) = v11;
              aBlock[4] = sub_21B6687D0;
              aBlock[5] = v7;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_21B647848;
              aBlock[3] = &block_descriptor_453;
              v8 = _Block_copy(aBlock);
              v9 = v9;
              v10 = v11;

              [v10 setContentHidden:1 animated:1 completion:v8];

              _Block_release(v8);
            }
          }

          v11 = v9;
LABEL_9:
          ++v6;

          if (v5 == v6)
          {

            return;
          }
        }
      }

      __break(1u);
      goto LABEL_35;
    }
  }
}

void sub_21B67C6D4(uint64_t a1)
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode) = a1;
  v4 = *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView);
  if (v4)
  {
    v5 = 0.0;
    if (a1 == 4)
    {
      v5 = 1.0;
    }

    [v4 setAlpha_];
    sub_21B67C74C(*(v1 + v3));

    sub_21B67C8E0(2);
  }

  else
  {
    __break(1u);
  }
}

void sub_21B67C74C(uint64_t a1)
{
  v3 = [v1 collectionView];
  if (!v3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = v3;
  v5 = [v3 preparedCells];

  if (!v5)
  {
LABEL_19:
    __break(1u);
    return;
  }

  sub_21B61785C(0, &unk_28120B2A8);
  v6 = sub_21B6C8E84();

  if (v6 >> 62)
  {
    v7 = sub_21B6C9454();
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_5:
      if (v7 >= 1)
      {
        v8 = 0;
        v9 = MEMORY[0x277D85000];
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x21CEF66E0](v8, v6);
          }

          else
          {
            v10 = *(v6 + 8 * v8 + 32);
          }

          v11 = v10;
          type metadata accessor for PosterCollectionViewCell();
          v12 = swift_dynamicCastClass();
          if (v12)
          {
            (*((*v9 & *v12) + 0xB0))(a1, 0);
          }

          ++v8;
        }

        while (v7 != v8);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_14:
}

void sub_21B67C8E0(int a1)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v44 - v3;
  v5 = sub_21B6C8A04();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = (v15 + 16);
  v17 = OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen;
  swift_beginAccess();
  v18 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode];
  v19 = 1.0;
  if (v18 == 4)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  if (((v18 == 4) & v1[v17]) != 0)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  if (v18 == 1)
  {
    v22 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
    swift_beginAccess();
    if (v1[v22] == 1)
    {
      v45 = v15;
      v23 = [v1 collectionView];
      if (!v23)
      {
LABEL_46:
        __break(1u);
        return;
      }

      v24 = v23;
      v25 = [v23 numberOfSections];

      if (__OFSUB__(v25, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      MEMORY[0x21CEF5B60](0, v25 - 1);
      (*(v6 + 32))(v14, v12, v5);
      v15 = v45;
      sub_21B67CDD8(v14, v1, v45);
      v19 = v26;
      (*(v6 + 8))(v14, v5);
    }
  }

  else
  {
    *v16 = 1;
    v19 = 0.0;
  }

  sub_21B68AE64();
  v27 = OBJC_IVAR___PBFPosterRackCollectionViewController_actionsMenuButton;
  v28 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_actionsMenuButton];
  if (!v28 || (v29 = [v28 menu]) == 0 || ((v30 = v29, v31 = objc_msgSend(v29, sel_children), v30, sub_21B61785C(0, &unk_27CD941D0), v32 = sub_21B6C8E84(), v31, v32 >> 62) ? (v33 = sub_21B6C9454()) : (v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v33))
  {
    sub_21B68C3A0(v4);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v9, v4, v5);
      sub_21B67CDD8(v9, v1, v15);
      v35 = v36;
      (*(v6 + 8))(v9, v5);
      v34 = 0;
      goto LABEL_22;
    }

    sub_21B62AA8C(v4, &qword_27CD93500);
  }

  v34 = 1;
  v35 = 0.0;
LABEL_22:
  swift_beginAccess();
  if ((*v16 & 1) == 0 && v46 != 2)
  {
    if (v46)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 1.0;
    }

    *v16 = 1;
  }

  v37 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl];
  if (!v37)
  {
    goto LABEL_44;
  }

  [v37 setAlpha_];
  v38 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton];
  if (!v38)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v38 setAlpha_];
  v39 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_addPosterButton];
  if (v39)
  {
    [v39 setAlpha_];
  }

  v40 = *&v1[v27];
  if (v40)
  {
    if (v34)
    {
      v41 = v19;
    }

    else
    {
      v41 = v35;
    }

    [v40 setAlpha_];
  }

  v42 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButton];
  if (v42)
  {
    [v42 setAlpha_];
  }

  v43 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButton];
  if (v43)
  {
    [v43 setAlpha_];
  }
}

void sub_21B67CDD8(int a1, id a2, uint64_t a3)
{
  v5 = [a2 collectionView];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = v5;
  v7 = sub_21B6C8974();
  v8 = [v6 layoutAttributesForItemAtIndexPath_];

  v9 = sub_21B6C89F4();
  v10 = [a2 collectionView];
  if (!v10)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = v10;
  v12 = [v10 numberOfSections];

  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8)
  {
    [v8 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v16 = 0.0;
    v18 = 0.0;
    v20 = 0.0;
    v22 = 0.0;
  }

  v46.origin.x = v16;
  v46.origin.y = v18;
  v46.size.width = v20;
  v46.size.height = v22;
  if (CGRectIsEmpty(v46))
  {
    goto LABEL_8;
  }

  v23 = [a2 collectionView];
  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = v23;
  [v23 contentOffset];
  v26 = v25;
  v28 = v27;

  v29 = [a2 collectionView];
  if (!v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = v29;
  [v29 visibleSize];
  v32 = v31;
  v34 = v33;

  v47.origin.x = v16;
  v47.origin.y = v18;
  v47.size.width = v20;
  v47.size.height = v22;
  v53.origin.x = v26;
  v53.origin.y = v28;
  v53.size.width = v32;
  v53.size.height = v34;
  v48 = CGRectIntersection(v47, v53);
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  v38 = [a2 collectionView];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v39 = v38;
  [v38 contentOffset];
  v41 = v40;

  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v20;
  v49.size.height = v22;
  if (CGRectGetMinX(v49) <= v41 && v9 == v14)
  {

    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  else
  {
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    if (CGRectIsEmpty(v50))
    {
LABEL_8:

      return;
    }

    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v42 = CGRectGetWidth(v51);
    v52.origin.x = v16;
    v52.origin.y = v18;
    v52.size.width = v20;
    v52.size.height = v22;
    v43 = CGRectGetWidth(v52);

    v44 = v42 / v43;
    if (v42 / v43 > 0.0 && (v44 > 1.0 || v44 >= 0.4))
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
    }
  }
}

void sub_21B67D12C()
{
  if (PUIFeatureEnabled())
  {
    return;
  }

  v1 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode];
  v2 = [v0 view];
  if (!v2)
  {
    goto LABEL_54;
  }

  v3 = v1 == 6 || v1 == 0;
  v22 = v2;
  if (v3)
  {
    v4 = [v2 subviews];
    sub_21B61785C(0, &unk_28120B170);
    v11 = sub_21B6C8E84();

    if (v11 >> 62)
    {
      v5 = sub_21B6C9454();
      if (v5)
      {
LABEL_10:
        v6 = __OFSUB__(v5, 1);
        v7 = v5 - 1;
        if (v6)
        {
          __break(1u);
        }

        else if ((v11 & 0xC000000000000001) == 0)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v7 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v8 = *(v11 + 8 * v7 + 32);
LABEL_15:
            v9 = v8;

LABEL_24:
            v14 = [v0 collectionView];
            if (v9)
            {
              if (v14)
              {
                v15 = v14;

                swift_unknownObjectRelease();
                if (v15 == v9)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            else
            {
              if (!v14)
              {
                goto LABEL_49;
              }
            }

            v16 = [v0 collectionView];
            if (v16)
            {
              v17 = v16;
              v18 = &selRef_bringSubviewToFront_;
LABEL_48:
              [v22 *v18];

              goto LABEL_49;
            }

LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          __break(1u);
          goto LABEL_37;
        }

        v8 = MEMORY[0x21CEF66E0](v7, v11);
        goto LABEL_15;
      }
    }

    else
    {
      v5 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_10;
      }
    }

    v9 = 0;
    goto LABEL_24;
  }

  v10 = [v2 subviews];
  sub_21B61785C(0, &unk_28120B170);
  v11 = sub_21B6C8E84();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_38:

    v13 = 0;
    goto LABEL_39;
  }

LABEL_37:
  if (!sub_21B6C9454())
  {
    goto LABEL_38;
  }

LABEL_18:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x21CEF66E0](0, v11);
    goto LABEL_21;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v12 = *(v11 + 32);
LABEL_21:
  v13 = v12;

LABEL_39:
  v19 = [v0 collectionView];
  if (v13)
  {
    if (v19)
    {
      v20 = v19;

      swift_unknownObjectRelease();
      if (v20 == v13)
      {
        goto LABEL_49;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_46:
    v21 = [v0 collectionView];
    if (v21)
    {
      v17 = v21;
      v18 = &selRef_sendSubviewToBack_;
      goto LABEL_48;
    }

LABEL_56:
    __break(1u);
    return;
  }

  if (v19)
  {

    goto LABEL_46;
  }

LABEL_49:
}

void sub_21B67D494(void *a1, void *a2, void (*a3)(void))
{
  v6 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  if (a1)
  {
    if (v6 == a1)
    {
LABEL_3:
      v7 = v6;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  v9 = a1;
  a3();

  v7 = v9;
LABEL_6:
}

void sub_21B67D5B0(uint64_t *a1, void *a2, void (*a3)(void *))
{
  v68 = a2;
  v69 = a3;
  v5 = v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93550);
  MEMORY[0x28223BE20](v67);
  v66 = &v57 - v6;
  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v57 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  sub_21B68C3A0(&v57 - v20);
  v22 = *(v8 + 48);
  v71 = v21;
  v64 = v22;
  v65 = v8 + 48;
  if (!v22(v21, 1, v7))
  {
    MEMORY[0x21CEF5B80](0);
  }

  v72 = v19;
  v61 = v16;
  v23 = [v3 collectionView];
  if (!v23)
  {
    goto LABEL_27;
  }

  v24 = v23;
  v25 = [v23 indexPathsForVisibleItems];

  v26 = sub_21B6C8E84();
  v27 = v26;
  v76 = *(v26 + 16);
  if (!v76)
  {
LABEL_24:

    sub_21B62AA8C(v71, &qword_27CD93500);
    return;
  }

  v28 = 0;
  v29 = *(v8 + 80);
  v74 = v26;
  v75 = v26 + ((v29 + 32) & ~v29);
  v59 = *a1;
  v77 = v8 + 16;
  v62 = (v8 + 56);
  v63 = v8;
  v57 = (v8 + 32);
  v30 = (v8 + 8);
  v70 = v5;
  while (v28 < *(v27 + 16))
  {
    v35 = *(v8 + 16);
    v35(v12, v75 + *(v8 + 72) * v28, v7);
    if (!sub_21B6C89D4())
    {
      v36 = v8;
      v37 = v30;
      v38 = v7;
      v39 = v5;
      v40 = [v5 collectionView];
      if (!v40)
      {
        goto LABEL_26;
      }

      v41 = v40;
      v42 = sub_21B6C8974();
      v43 = [v41 cellForItemAtIndexPath_];

      v34 = v43;
      v27 = v74;
      v5 = v39;
      v7 = v38;
      v30 = v37;
      v8 = v36;
      if (v34)
      {
        type metadata accessor for LockScreenPosterCollectionViewCell();
        v44 = swift_dynamicCastClass();
        if (!v44)
        {
          goto LABEL_10;
        }

        v45 = v44;
        v73 = v34;
        v46 = v72;
        v35(v72, v12, v7);
        (*v62)(v46, 0, 1, v7);
        v47 = v66;
        v48 = *(v67 + 48);
        sub_21B63D2BC(v46, v66, &qword_27CD93500);
        sub_21B63D2BC(v71, v47 + v48, &qword_27CD93500);
        v49 = v64;
        if (v64(v47, 1, v7) == 1)
        {
          sub_21B62AA8C(v46, &qword_27CD93500);
          v50 = v49(v47 + v48, 1, v7);
          v8 = v63;
          v27 = v74;
          if (v50 == 1)
          {
            sub_21B62AA8C(v47, &qword_27CD93500);
LABEL_22:
            v31 = *&v70[v59];
            if (v31)
            {
              v56 = v31;
            }

LABEL_9:
            v32 = *(v45 + *v68);
            *(v45 + *v68) = v31;
            v33 = v31;
            v69(v32);

            v34 = v32;
            v5 = v70;
LABEL_10:

            goto LABEL_11;
          }

LABEL_7:
          sub_21B62AA8C(v47, &qword_27CD93550);
        }

        else
        {
          v51 = v61;
          sub_21B63D2BC(v47, v61, &qword_27CD93500);
          if (v49(v47 + v48, 1, v7) == 1)
          {
            sub_21B62AA8C(v72, &qword_27CD93500);
            (*v30)(v51, v7);
            v8 = v63;
            v27 = v74;
            goto LABEL_7;
          }

          v52 = v47 + v48;
          v53 = v60;
          (*v57)(v60, v52, v7);
          sub_21B69928C(&unk_28120BB30, MEMORY[0x277CC9AF8]);
          v54 = v51;
          v58 = sub_21B6C8D64();
          v55 = *v30;
          (*v30)(v53, v7);
          sub_21B62AA8C(v72, &qword_27CD93500);
          v55(v54, v7);
          sub_21B62AA8C(v47, &qword_27CD93500);
          v8 = v63;
          v27 = v74;
          if (v58)
          {
            goto LABEL_22;
          }
        }

        v31 = 0;
        goto LABEL_9;
      }
    }

LABEL_11:
    ++v28;
    (*v30)(v12, v7);
    if (v76 == v28)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

id sub_21B67DC7C()
{
  v1 = v0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93550);
  MEMORY[0x28223BE20](v59);
  v58 = &v50 - v2;
  v3 = sub_21B6C8A04();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  sub_21B68C3A0(&v50 - v16);
  v18 = *(v4 + 48);
  v60 = v17;
  if (!v18(v17, 1, v3))
  {
    MEMORY[0x21CEF5B80](0);
  }

  v57 = v4 + 48;
  v61 = v15;
  v54 = v12;
  result = [v0 collectionView];
  if (!result)
  {
    goto LABEL_33;
  }

  v20 = result;
  v21 = [result indexPathsForVisibleItems];

  v22 = sub_21B6C8E84();
  v67 = *(v22 + 16);
  if (!v67)
  {
LABEL_30:

    return sub_21B62AA8C(v60, &qword_27CD93500);
  }

  v23 = v1;
  v66 = v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v52 = OBJC_IVAR___PBFPosterRackCollectionViewController_lockVibrancyConfiguration;
  result = swift_beginAccess();
  v24 = 0;
  v69 = v4 + 16;
  v55 = (v4 + 56);
  v50 = (v4 + 32);
  v68 = (v4 + 8);
  v64 = v1;
  v65 = v22;
  v56 = v4;
  while (v24 < *(v22 + 16))
  {
    v30 = *(v4 + 16);
    v31 = v3;
    v30(v8, v66 + *(v4 + 72) * v24, v3);
    v32 = v23;
    if (!sub_21B6C89D4())
    {
      result = [v23 collectionView];
      if (!result)
      {
        goto LABEL_32;
      }

      v33 = result;
      v34 = sub_21B6C8974();
      v29 = [v33 cellForItemAtIndexPath_];

      v22 = v65;
      v23 = v32;
      if (v29)
      {
        type metadata accessor for LockScreenPosterCollectionViewCell();
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v62 = v35;
          v63 = v29;
          v36 = v61;
          v30(v61, v8, v31);
          (*v55)(v36, 0, 1, v31);
          v37 = v58;
          v38 = *(v59 + 48);
          sub_21B63D2BC(v36, v58, &qword_27CD93500);
          sub_21B63D2BC(v60, v37 + v38, &qword_27CD93500);
          if (v18(v37, 1, v31) == 1)
          {
            sub_21B62AA8C(v36, &qword_27CD93500);
            v39 = v18((v37 + v38), 1, v31);
            v4 = v56;
            v29 = v63;
            if (v39 == 1)
            {
              sub_21B62AA8C(v37, &qword_27CD93500);
              v40 = v62;
              goto LABEL_22;
            }

LABEL_20:
            sub_21B62AA8C(v37, &qword_27CD93550);
            v42 = 0;
            v40 = v62;
          }

          else
          {
            v41 = v54;
            sub_21B63D2BC(v37, v54, &qword_27CD93500);
            if (v18((v37 + v38), 1, v31) == 1)
            {
              sub_21B62AA8C(v61, &qword_27CD93500);
              (*v68)(v41, v31);
              v4 = v56;
              v29 = v63;
              goto LABEL_20;
            }

            v43 = v37 + v38;
            v44 = v53;
            (*v50)(v53, v43, v31);
            sub_21B69928C(&unk_28120BB30, MEMORY[0x277CC9AF8]);
            v51 = sub_21B6C8D64();
            v45 = *v68;
            (*v68)(v44, v31);
            sub_21B62AA8C(v61, &qword_27CD93500);
            v45(v54, v31);
            sub_21B62AA8C(v37, &qword_27CD93500);
            v4 = v56;
            v40 = v62;
            v29 = v63;
            if (v51)
            {
LABEL_22:
              v42 = *&v64[v52];
              v46 = v42;
            }

            else
            {
              v42 = 0;
            }
          }

          v47 = *(v40 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_lockVibrancyConfiguration);
          *(v40 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_lockVibrancyConfiguration) = v42;
          if (v47)
          {
            v63 = v47;
            if (v42)
            {
              sub_21B61785C(0, &unk_28120B248);
              v42 = v42;
              v48 = v47;
              v49 = sub_21B6C91A4();

              if (v49)
              {

                goto LABEL_7;
              }
            }

LABEL_6:
            v25 = *(v40 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController);
            v26 = v25;
            sub_21B6644F4(v25);

            v27 = *(v40 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
            v28 = v27;
            sub_21B6644F4(v27);

            v29 = v63;
            goto LABEL_7;
          }

          if (v42)
          {
            v63 = 0;
            v42 = v42;
            goto LABEL_6;
          }

LABEL_7:
          v22 = v65;
        }

        v23 = v64;
      }
    }

    ++v24;
    v3 = v31;
    result = (*v68)(v8, v31);
    if (v67 == v24)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

id (*sub_21B67E41C(id a1, void *a2))(void *a1, void *a2)
{
  v3 = v2;
  result = [v3 view];
  if (result)
  {
    v7 = result;
    v8 = [result window];

    v9 = [v8 windowScene];
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    v11 = [v10 _FBSScene];
    v12 = [v11 clientSettings];
    v13 = [v12 pruis_switcherLayoutMode];

    if (v13 == a1)
    {

      return 0;
    }

    if (a2)
    {
      if ([v10 activationState])
      {

        v14 = 0;
        a2 = 0;
LABEL_21:
        v18 = swift_allocObject();
        v18[2] = a1;
        v18[3] = a2;
        v18[4] = v14;
        return sub_21B69F1A4;
      }

      if (!a1 || (v13 ? (v15 = a1 == 6) : (v15 = 1), !v15 ? (v16 = v13 == 6) : (v16 = 1), v16))
      {
        [v10 _synchronizeDrawing];
        v14 = [v10 _synchronizedDrawingFence];

        v17 = a2;
        goto LABEL_21;
      }

      v19 = a2;
    }

    else
    {
    }

    v14 = 0;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_21B67E600(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenIconContentLayout;
  v4 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenIconContentLayout];
  if (a1)
  {
    if (!v4)
    {
      return;
    }

    v5 = a1;
    sub_21B61785C(0, &unk_28120B1F0);
    v6 = v4;
    v7 = v3;
    v8 = v5;
    LOBYTE(v5) = sub_21B6C91A4();

    v3 = v7;
    if ((v5 & 1) != 0 || !*&v2[v7])
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v9 = [v2 collectionView];
  if (!v9)
  {
    goto LABEL_76;
  }

  v10 = v9;
  v58 = v3;
  v11 = [v9 preparedCells];

  if (!v11)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v59 = v2;
  sub_21B61785C(0, &unk_28120B2A8);
  v12 = sub_21B6C8E84();

  v62 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
LABEL_39:
    v13 = sub_21B6C9454();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = 0;
    do
    {
      v16 = v15;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x21CEF66E0](v16, v12);
        }

        else
        {
          if (v16 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v17 = *(v12 + 8 * v16 + 32);
        }

        v18 = v17;
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        type metadata accessor for HomeScreenPosterCollectionViewCell();
        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v16;
        if (v15 == v13)
        {
          goto LABEL_25;
        }
      }

      MEMORY[0x21CEF6000]();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      sub_21B6C8EA4();
      v14 = v62;
    }

    while (v15 != v13);
  }

LABEL_25:

  if (v14 >> 62)
  {
    v61 = sub_21B6C9454();
    if (!v61)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v61 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v61)
    {
      goto LABEL_41;
    }
  }

  if (v61 < 1)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v19 = 0;
  v20 = *&v59[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenIconContentViewConnector];
  v21 = OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_reusableHomeScreenIconContentViews;
  v22 = v14 & 0xC000000000000001;
  v23 = &OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView;
  do
  {
    if (v22)
    {
      v24 = MEMORY[0x21CEF66E0](v19, v14);
    }

    else
    {
      v24 = *(v14 + 8 * v19 + 32);
    }

    v25 = v24;
    v26 = *&v24[*v23];
    if (v26)
    {
      v27 = *(v20 + v21);
      v28 = v26;
      v29 = [v27 keyEnumerator];
      v30 = [v29 allObjects];

      v31 = sub_21B6C8E84();
      v32 = *(v31 + 16);

      if (v32 <= 9)
      {
        v60 = *(v20 + v21);
        v33 = [objc_allocWithZone(MEMORY[0x277CF0D30]) initWithObject_];
        v34 = v22;
        v35 = v23;
        v36 = v21;
        v37 = v20;
        v38 = v14;
        v39 = v28;
        [v60 setObject:v33 forKey:v39];

        v14 = v38;
        v20 = v37;
        v21 = v36;
        v23 = v35;
        v22 = v34;
      }
    }

    ++v19;
  }

  while (v61 != v19);
LABEL_41:
  v40 = *&v59[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenIconContentViewConnector];
  v41 = *&v59[v58];
  v42 = *(v40 + OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_homeScreenIconContentLayout);
  *(v40 + OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_homeScreenIconContentLayout) = v41;
  v43 = v41;
  sub_21B69FABC(v42);

  v44 = [v59 collectionView];
  if (!v44)
  {
LABEL_78:
    __break(1u);
    return;
  }

  v45 = v44;

  v46 = [v45 visibleCells];

  v47 = sub_21B6C8E84();
  v63 = MEMORY[0x277D84F90];
  if (!(v47 >> 62))
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_44;
    }

LABEL_61:
    v50 = MEMORY[0x277D84F90];
    goto LABEL_62;
  }

LABEL_60:
  v48 = sub_21B6C9454();
  if (!v48)
  {
    goto LABEL_61;
  }

LABEL_44:
  v49 = 0;
  v50 = MEMORY[0x277D84F90];
  do
  {
    v51 = v49;
    while (1)
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x21CEF66E0](v51, v47);
      }

      else
      {
        if (v51 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v52 = *(v47 + 8 * v51 + 32);
      }

      v53 = v52;
      v49 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      type metadata accessor for HomeScreenPosterCollectionViewCell();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v51;
      if (v49 == v48)
      {
        goto LABEL_62;
      }
    }

    MEMORY[0x21CEF6000]();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();
    v50 = v63;
  }

  while (v49 != v48);
LABEL_62:

  if (v50 >> 62)
  {
    v54 = sub_21B6C9454();
    if (v54)
    {
LABEL_64:
      if (v54 >= 1)
      {
        for (i = 0; i != v54; ++i)
        {
          if ((v50 & 0xC000000000000001) != 0)
          {
            v56 = MEMORY[0x21CEF66E0](i, v50);
          }

          else
          {
            v56 = *(v50 + 8 * i + 32);
          }

          v57 = v56;
          sub_21B69FEF0(v56);
        }

        goto LABEL_71;
      }

      goto LABEL_75;
    }
  }

  else
  {
    v54 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
      goto LABEL_64;
    }
  }

LABEL_71:
}

uint64_t sub_21B67EC90(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  v6 = sub_21B6C8C94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B6C8CC4();
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B6C8CA4();
  v14 = *(v13 - 8);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenIconContentLayout] && (a1 & 1) == 0)
  {
    return result;
  }

  v34 = v10;
  v18 = *&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_currentHomeScreenIconContentLayoutFetchRequestID];
  v19 = v18 + 1;
  if (v18 == -1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v33 = v6;
  *&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_currentHomeScreenIconContentLayoutFetchRequestID] = v19;
  if (qword_28120B390 != -1)
  {
LABEL_10:
    swift_once();
  }

  v32 = v7;
  v20 = sub_21B6C8AB4();
  __swift_project_value_buffer(v20, qword_28120CD78);
  v21 = sub_21B6C9044();
  v22 = sub_21B6C8A94();
  if (os_log_type_enabled(v22, v21))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v19;
    _os_log_impl(&dword_21B526000, v22, v21, "[PosterRack] Fetching home screen icon content layout with fetch ID: %lu", v23, 0xCu);
    MEMORY[0x21CEF8150](v23, -1, -1);
  }

  sub_21B61785C(0, &unk_28120B2F0);
  (*(v14 + 104))(v17, *MEMORY[0x277D851B8], v13);
  v24 = sub_21B6C9094();
  (*(v14 + 8))(v17, v13);
  v25 = swift_allocObject();
  v25[2] = v4;
  v25[3] = v19;
  v27 = v35;
  v26 = v36;
  v25[4] = v35;
  v25[5] = v26;
  aBlock[4] = sub_21B69F244;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B63863C;
  aBlock[3] = &block_descriptor_669;
  v28 = _Block_copy(aBlock);
  v29 = v4;
  sub_21B529CD0(v27);
  sub_21B6C8CB4();
  v38 = MEMORY[0x277D84F90];
  sub_21B69928C(&qword_28120B380, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93B10);
  sub_21B62AA24(&qword_28120B360, &unk_27CD93B10);
  v30 = v33;
  sub_21B6C9404();
  MEMORY[0x21CEF6220](0, v12, v9, v28);
  _Block_release(v28);

  (*(v32 + 8))(v9, v30);
  (*(v37 + 8))(v12, v34);
}

void sub_21B67F158(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B6C8C94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B6C8CC4();
  v29 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*&a1[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenService] silhouetteLayoutForPageAtIndex_];
  if (v15)
  {
    v16 = v15;
    sub_21B61785C(0, &unk_28120B2F0);
    v28 = v12;
    v27 = sub_21B6C9074();
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a1;
    v17[4] = v16;
    v17[5] = a3;
    v17[6] = a4;
    aBlock[4] = sub_21B69F250;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B63863C;
    aBlock[3] = &block_descriptor_675;
    v18 = _Block_copy(aBlock);
    v19 = a1;
    v20 = v16;
    sub_21B529CD0(a3);

    sub_21B6C8CB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21B69928C(&qword_28120B380, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93B10);
    sub_21B62AA24(&qword_28120B360, &unk_27CD93B10);
    sub_21B6C9404();
    v21 = v27;
    MEMORY[0x21CEF6220](0, v14, v11, v18);
    _Block_release(v18);

    (*(v9 + 8))(v11, v8);
    (v29[1].isa)(v14, v28);
  }

  else
  {
    if (qword_28120B390 != -1)
    {
      swift_once();
    }

    v22 = sub_21B6C8AB4();
    __swift_project_value_buffer(v22, qword_28120CD78);
    v23 = sub_21B6C9024();
    v29 = sub_21B6C8A94();
    if (os_log_type_enabled(v29, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = a2;
      _os_log_impl(&dword_21B526000, v29, v23, "[PosterRack] Failed to fetch home screen icon content layout for fetch ID: %lu", v24, 0xCu);
      MEMORY[0x21CEF8150](v24, -1, -1);
    }

    v25 = v29;
  }
}

void sub_21B67F590(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  if (*(a2 + OBJC_IVAR___PBFPosterRackCollectionViewController_currentHomeScreenIconContentLayoutFetchRequestID) == a1)
  {
    if (qword_28120B390 != -1)
    {
      swift_once();
    }

    v8 = sub_21B6C8AB4();
    __swift_project_value_buffer(v8, qword_28120CD78);
    v9 = sub_21B6C9044();
    v10 = sub_21B6C8A94();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = a1;
      _os_log_impl(&dword_21B526000, v10, v9, "[PosterRack] Fetched and setting home screen icon content layout for fetch ID: %lu", v11, 0xCu);
      MEMORY[0x21CEF8150](v11, -1, -1);
    }

    v12 = *(a2 + OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenIconContentLayout);
    *(a2 + OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenIconContentLayout) = a3;
    v13 = a3;
    sub_21B67E600(v12);
  }

  if (a4)
  {
    a4();
  }
}

void sub_21B67F6DC(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_21B61785C(0, &unk_28120B310);
    v6 = a1;
    v7 = sub_21B6C91A4();

    if (v7)
    {
      v8 = [v6 transitionCoordinator];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 viewControllerForKey_];
        if (v10)
        {
          v11 = v10;
          v12 = v1;
          v13 = sub_21B6C91A4();

          v14 = v13 ^ 1;
        }

        else
        {
          v14 = 1;
        }

        v29.receiver = v2;
        v29.super_class = type metadata accessor for PosterRackCollectionViewController();
        v15 = objc_msgSendSuper2(&v29, sel_pbf_layoutOrientation);
        v16 = &v2[OBJC_IVAR___PBFPosterRackCollectionViewController_lastKnownLayoutOrientation];
        swift_beginAccess();
        *v16 = v15;
        v16[8] = 0;
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = swift_allocObject();
        *(v18 + 16) = v14 & 1;
        *(v18 + 24) = v17;
        v27 = sub_21B69F124;
        v28 = v18;
        aBlock = MEMORY[0x277D85DD0];
        v24 = 1107296256;
        v25 = sub_21B66FF38;
        v26 = &block_descriptor_647;
        v19 = _Block_copy(&aBlock);

        v20 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v21 = swift_allocObject();
        *(v21 + 16) = v14 & 1;
        *(v21 + 24) = v20;
        v27 = sub_21B69F130;
        v28 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v24 = 1107296256;
        v25 = sub_21B66FF38;
        v26 = &block_descriptor_654;
        v22 = _Block_copy(&aBlock);

        [v9 animateAlongsideTransition:v19 completion:v22];
        _Block_release(v22);
        _Block_release(v19);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_21B67F9B4(void *a1, char a2)
{
  v2 = [a1 isCancelled] ^ a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 != 1)
    {
      CGAffineTransformMakeScale(&v23, 0.9, 0.9);
      a = v23.a;
      b = v23.b;
      c = v23.c;
      d = v23.d;
      tx = v23.tx;
      ty = v23.ty;
      v13 = [v4 collectionView];
      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = v13;
      v15 = 0.0;
      if (v2)
      {
        v16 = ty;
      }

      else
      {
        v16 = 0.0;
      }

      v17 = 1.0;
      if (v2)
      {
        v18 = d;
      }

      else
      {
        v18 = 1.0;
      }

      if (v2)
      {
        v19 = c;
      }

      else
      {
        v19 = 0.0;
      }

      if (v2)
      {
        v20 = b;
      }

      else
      {
        v20 = 0.0;
      }

      if (v2)
      {
        v17 = a;
      }

      v23.a = v17;
      v23.b = v20;
      v23.c = v19;
      v23.d = v18;
      if (v2)
      {
        v15 = tx;
      }

      v23.tx = v15;
      v23.ty = v16;
      [v13 setTransform_];
    }
  }

  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_21B67C8E0(v2 & 1);
  }
}

void sub_21B67FB2C(void *a1, unsigned __int8 a2)
{
  if ([a1 isCancelled])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong traitCollection];
      v6 = [v5 userInterfaceIdiom];

      if (v6 != 1)
      {
        CGAffineTransformMakeScale(&v28, 0.9, 0.9);
        a = v28.a;
        b = v28.b;
        c = v28.c;
        d = v28.d;
        tx = v28.tx;
        ty = v28.ty;
        v13 = [v4 collectionView];
        if (!v13)
        {
          __break(1u);
          return;
        }

        v14 = v13;
        v15 = 0.0;
        if (a2)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = ty;
        }

        v17 = 1.0;
        if (a2)
        {
          v18 = 1.0;
        }

        else
        {
          v18 = d;
        }

        if (a2)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = c;
        }

        if (a2)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = b;
        }

        if ((a2 & 1) == 0)
        {
          v17 = a;
        }

        v28.a = v17;
        v28.b = v20;
        v28.c = v19;
        v28.d = v18;
        if ((a2 & 1) == 0)
        {
          v15 = tx;
        }

        v28.tx = v15;
        v28.ty = v16;
        [v13 setTransform_];
      }
    }

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      sub_21B67C8E0((a2 ^ 1) & 1);
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = type metadata accessor for PosterRackCollectionViewController();
    v29.receiver = v24;
    v29.super_class = v25;
    v26 = objc_msgSendSuper2(&v29, sel_pbf_layoutOrientation);
    v27 = &v24[OBJC_IVAR___PBFPosterRackCollectionViewController_lastKnownLayoutOrientation];
    swift_beginAccess();
    *v27 = v26;
    v27[8] = 0;
  }
}

void sub_21B67FD1C(uint64_t a1)
{
  v2 = sub_21B6C8D74();
  v3 = PBFLocalizedString(v2);

  sub_21B6C8DA4();
  v4 = sub_21B6C8D74();
  v5 = PBFLocalizedString(v4);

  sub_21B6C8DA4();
  v6 = sub_21B6C8D74();

  v7 = sub_21B6C8D74();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:0];

  v9 = sub_21B6C8D74();
  v10 = PBFLocalizedString(v9);

  sub_21B6C8DA4();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = sub_21B6C8D74();

  v39 = sub_21B69C88C;
  v40 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_21B6388A0;
  v38 = &block_descriptor_439;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  v16 = sub_21B6C8D74();
  [v15 setAccessibilityIdentifier_];

  v17 = sub_21B6C8D74();
  v18 = PBFLocalizedString(v17);

  sub_21B6C8DA4();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v20 = sub_21B6C8D74();

  v39 = sub_21B69C8A8;
  v40 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_21B6388A0;
  v38 = &block_descriptor_443;
  v21 = _Block_copy(&aBlock);

  v22 = [v14 actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  v23 = sub_21B6C8D74();
  [v22 setAccessibilityIdentifier_];

  [v8 addAction_];
  [v8 addAction_];
  v24 = sub_21B6C8D74();
  v25 = PBFLocalizedString(v24);

  sub_21B6C8DA4();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v27 = sub_21B6C8D74();

  v39 = sub_21B69C8C4;
  v40 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_21B6388A0;
  v38 = &block_descriptor_447;
  v28 = _Block_copy(&aBlock);

  v29 = [v14 actionWithTitle:v27 style:1 handler:v28];
  _Block_release(v28);

  [v8 addAction_];
  v30 = [v1 traitCollection];
  v31 = [v30 userInterfaceIdiom];

  if (v31 == 1)
  {
    v32 = [v8 popoverPresentationController];
    if (v32)
    {
      v33 = v32;
      [v32 setSourceView_];
    }
  }

  [v1 presentViewController:v8 animated:1 completion:0];
}

void sub_21B680338(uint64_t a1)
{
  v2 = sub_21B6C8D74();
  v3 = PBFLocalizedString(v2);

  sub_21B6C8DA4();
  v4 = sub_21B6C8D74();
  v5 = PBFLocalizedString(v4);

  sub_21B6C8DA4();
  v6 = sub_21B6C8D74();

  v7 = sub_21B6C8D74();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:0];

  v9 = sub_21B6C8D74();
  v10 = PBFLocalizedString(v9);

  sub_21B6C8DA4();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = sub_21B6C8D74();

  v39 = sub_21B69FA54;
  v40 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_21B6388A0;
  v38 = &block_descriptor_427;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:2 handler:v13];
  _Block_release(v13);

  v16 = sub_21B6C8D74();
  [v15 setAccessibilityIdentifier_];

  [v8 addAction_];
  v17 = sub_21B6C8D74();
  v18 = PBFLocalizedString(v17);

  sub_21B6C8DA4();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v20 = sub_21B6C8D74();

  v39 = sub_21B69FA58;
  v40 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_21B6388A0;
  v38 = &block_descriptor_431;
  v21 = _Block_copy(&aBlock);

  v22 = [v14 actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  v23 = sub_21B6C8D74();
  [v22 setAccessibilityIdentifier_];

  [v8 addAction_];
  v24 = sub_21B6C8D74();
  v25 = PBFLocalizedString(v24);

  sub_21B6C8DA4();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v27 = sub_21B6C8D74();

  v39 = sub_21B69FA5C;
  v40 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_21B6388A0;
  v38 = &block_descriptor_435;
  v28 = _Block_copy(&aBlock);

  v29 = [v14 actionWithTitle:v27 style:1 handler:v28];
  _Block_release(v28);

  [v8 addAction_];
  v30 = [v1 traitCollection];
  v31 = [v30 userInterfaceIdiom];

  if (v31 == 1)
  {
    v32 = [v8 popoverPresentationController];
    if (v32)
    {
      v33 = v32;
      [v32 setSourceView_];
    }
  }

  [v1 presentViewController:v8 animated:1 completion:0];
}

void sub_21B680940()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_21B6C8A04();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *&Strong[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper];
    if (v12)
    {
      v13 = v12;
      v14 = [v13 lockScreenMigrationViewController];
      if (v14)
      {
        v15 = v14;
        sub_21B68C3A0(v2);
        if ((*(v4 + 48))(v2, 1, v3) == 1)
        {

          sub_21B62AA8C(v2, &qword_27CD93500);
        }

        else
        {
          (*(v4 + 32))(v9, v2, v3);
          v16 = sub_21B6C89F4();
          MEMORY[0x21CEF5B60](0, v16);
          sub_21B6818B0(v7, v15);

          v17 = *(v4 + 8);
          v17(v7, v3);
          v17(v9, v3);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_21B680BB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper];
    *&Strong[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_21B67AF40(0, 0, 0);
  }
}

void sub_21B680C4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper];
    *&Strong[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper] = 0;
  }
}

void sub_21B680CAC(uint64_t a1)
{
  v3 = sub_21B6C8D74();
  v4 = PBFLocalizedString(v3);

  sub_21B6C8DA4();
  v5 = sub_21B6C8D74();
  v6 = PBFLocalizedString(v5);

  sub_21B6C8DA4();
  v7 = sub_21B6C8D74();

  v8 = sub_21B6C8D74();

  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:0];

  v10 = sub_21B6C8D74();
  v11 = PBFLocalizedString(v10);

  sub_21B6C8DA4();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = sub_21B6C8D74();

  v26[4] = sub_21B69FA60;
  v26[5] = v12;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_21B6388A0;
  v26[3] = &block_descriptor_423;
  v14 = _Block_copy(v26);

  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:0 handler:v14];
  _Block_release(v14);

  v17 = sub_21B6C8D74();
  [v16 setAccessibilityIdentifier_];

  [v9 addAction_];
  v18 = sub_21B6C8D74();
  v19 = PBFLocalizedString(v18);

  sub_21B6C8DA4();
  v20 = sub_21B6C8D74();

  v21 = [v15 actionWithTitle:v20 style:1 handler:0];

  [v9 addAction_];
  v22 = [v1 traitCollection];
  v23 = [v22 userInterfaceIdiom];

  if (v23 == 1)
  {
    v24 = [v9 popoverPresentationController];
    if (v24)
    {
      v25 = v24;
      [v24 setSourceView_];
    }
  }

  [v1 presentViewController:v9 animated:1 completion:0];
}

void sub_21B681098()
{
  v1 = sub_21B6C8D74();
  v2 = PBFLocalizedString(v1);

  sub_21B6C8DA4();
  v3 = sub_21B6C8D74();
  v4 = PBFLocalizedString(v3);

  sub_21B6C8DA4();
  v5 = sub_21B6C8D74();

  v6 = sub_21B6C8D74();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:0];

  v8 = sub_21B6C8D74();
  v9 = PBFLocalizedString(v8);

  sub_21B6C8DA4();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v11 = sub_21B6C8D74();

  v20[4] = sub_21B69FA60;
  v20[5] = v10;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_21B6388A0;
  v20[3] = &block_descriptor_602;
  v12 = _Block_copy(v20);

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v11 style:0 handler:v12];
  _Block_release(v12);

  v15 = sub_21B6C8D74();
  [v14 setAccessibilityIdentifier_];

  [v7 addAction_];
  v16 = sub_21B6C8D74();
  v17 = PBFLocalizedString(v16);

  sub_21B6C8DA4();
  v18 = sub_21B6C8D74();

  v19 = [v13 actionWithTitle:v18 style:1 handler:0];

  [v7 addAction_];
  [v0 presentViewController:v7 animated:1 completion:0];
}

void sub_21B681418(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
  v6 = sub_21B6C89F4();
  v7 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v8 = *(v5 + v7);
  if ((v8 & 0xC000000000000001) != 0)
  {

    v2 = MEMORY[0x21CEF66E0](v6, v8);

    goto LABEL_5;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_16;
  }

  v2 = *(v8 + 8 * v6 + 32);
LABEL_5:
  v9 = [*&v2[OBJC_IVAR___PBFPosterPair_configuration] _path];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = sub_21B620934(v10);
    if (v12)
    {
      v13 = v12;
      v14 = sub_21B6C89F4();
      if ((*(v5 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8) & 1) != 0 || v14 != *(v5 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex))
      {
        v23 = *&v2[OBJC_IVAR___PBFPosterPair_configuredProperties];
      }

      else
      {
        v15 = *(v3 + OBJC_IVAR___PBFPosterRackCollectionViewController_currentPosterSignificantEventsCounter);
        if (qword_28120B390 != -1)
        {
          swift_once();
        }

        v16 = sub_21B6C8AB4();
        __swift_project_value_buffer(v16, qword_28120CD78);
        v17 = sub_21B6C9044();
        v18 = sub_21B6C8A94();
        if (os_log_type_enabled(v18, v17))
        {
          v19 = swift_slowAlloc();
          *v19 = 134217984;
          *(v19 + 4) = v15;
          _os_log_impl(&dword_21B526000, v18, v17, "Passing along current poster significant events counter to editing poster: %ld", v19, 0xCu);
          MEMORY[0x21CEF8150](v19, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94278);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21B6D7FE0;
        *(inited + 32) = sub_21B6C8DA4();
        *(inited + 72) = MEMORY[0x277D83B88];
        *(inited + 40) = v21;
        *(inited + 48) = v15;
        v22 = sub_21B698E50(inited);
        swift_setDeallocating();
        sub_21B62AA8C(inited + 32, &qword_27CD94280);
        v23 = *&v2[OBJC_IVAR___PBFPosterPair_configuredProperties];
        if (v22)
        {
          v24 = v13;
          v25 = v9;
          v26 = v23;
          v27 = sub_21B6C8D14();

LABEL_20:
          v34 = [objc_allocWithZone(PBFEditingSceneViewController) initWithProvider:v13 contents:v11 configurableOptions:0 configuredProperties:v26 additionalInfo:v27];

          sub_21B6818B0(a1, v34);
          goto LABEL_21;
        }
      }

      v32 = v13;
      v33 = v9;
      v26 = v23;
      v27 = 0;
      goto LABEL_20;
    }
  }

  if (qword_28120B390 != -1)
  {
    goto LABEL_25;
  }

LABEL_16:
  v28 = sub_21B6C8AB4();
  __swift_project_value_buffer(v28, qword_28120CD78);
  v29 = sub_21B6C9024();
  v13 = v2;
  v9 = sub_21B6C8A94();

  if (os_log_type_enabled(v9, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v13;
    *v31 = v13;
    v13 = v13;
    _os_log_impl(&dword_21B526000, v9, v29, "Failed to find path or provider for configuring poster pair: %@", v30, 0xCu);
    sub_21B62AA8C(v31, &qword_27CD92EF0);
    MEMORY[0x21CEF8150](v31, -1, -1);
    MEMORY[0x21CEF8150](v30, -1, -1);
  }

LABEL_21:
}

void sub_21B6818B0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *&v2[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
  v6 = sub_21B6C89F4();
  v7 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v8 = *(v5 + v7);
  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 8 * v6 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_15;
  }

  v9 = MEMORY[0x21CEF66E0](v6, v8);

LABEL_5:
  v10 = [v2 collectionView];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = sub_21B6C8974();
  v13 = [v11 cellForItemAtIndexPath_];

  if (v13)
  {
    type metadata accessor for LockScreenPosterCollectionViewCell();
    if (swift_dynamicCastClass())
    {

      [a2 setUserInfo_];
      swift_unknownObjectRelease();
      [a2 setDelegate_];
      [a2 setShowsContentWhenReady_];
      sub_21B660F64(a2, v3);
      v14 = *&v9[OBJC_IVAR___PBFPosterPair_configuration];
      v15 = [v14 _path];
      v16 = [v15 serverIdentity];

      v17 = [v16 provider];
      PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(5, 1, 0, 0, 0);
    }
  }

  else
  {
    v13 = v9;
  }
}

uint64_t sub_21B681B10(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_21B6C8C94();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21B6C8CC4();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B61785C(0, &unk_28120B2F0);
  v12 = sub_21B6C9074();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_21B69F238;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B63863C;
  aBlock[3] = &block_descriptor_663;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = a3;

  sub_21B6C8CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21B69928C(&qword_28120B380, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93B10);
  sub_21B62AA24(&qword_28120B360, &unk_27CD93B10);
  sub_21B6C9404();
  MEMORY[0x21CEF6220](0, v11, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

id sub_21B681E14(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_28120B390 != -1)
  {
    swift_once();
  }

  v6 = sub_21B6C8AB4();
  __swift_project_value_buffer(v6, qword_28120CD78);
  v7 = sub_21B6C9044();
  v8 = sub_21B6C8A94();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_21B526000, v8, v7, "Fetched current poster significant events counter: %ld", v9, 0xCu);
    MEMORY[0x21CEF8150](v9, -1, -1);
  }

  *(a2 + OBJC_IVAR___PBFPosterRackCollectionViewController_currentPosterSignificantEventsCounter) = a1;
  *(*(a2 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore) + OBJC_IVAR____TtC11PosterBoard11PosterStore_significantEventsCounter) = a1;

  return [a3 invalidate];
}

uint64_t sub_21B681F54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void PosterRackCollectionViewController.reset(_:)(void (*a1)(void))
{
  PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(0, 0, 0, 0, 0);
  sub_21B69A120();
  if (a1)
  {
    a1();
  }
}

void PosterRackCollectionViewController.scrollToFirstPoster(animated:completion:)(char a1, void (*a2)(void))
{
  sub_21B690260(0, a1, 0);
  if (a2)
  {
    a2();
  }
}

id sub_21B6822D4(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 *a1];

  return v3;
}

uint64_t PosterRackCollectionViewController.presentPosterGallery(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = v2;

  sub_21B67AF40(0, sub_21B69A4EC, v5);
}

void sub_21B6823C4(uint64_t a1, void (*a2)(void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    Strong = [Strong galleryCollectionViewController];
  }

  v5 = Strong;
  a2();
}

Swift::Int __swiftcall PosterRackCollectionViewController.numberOfSections(in:)(UICollectionView *in)
{
  v2 = *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
  v3 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_21B6C9454();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
  swift_beginAccess();
  v7 = *(v1 + v6);
  result = v5 + v7;
  if (__OFADD__(v5, v7))
  {
    __break(1u);
  }

  return result;
}

unint64_t PosterRackCollectionViewController.collectionView(_:cellForItemAt:)(id a1, void *a2)
{
  isEscapingClosureAtFileLocation = v2;
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B6C89F4();
  v10 = *(isEscapingClosureAtFileLocation + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
  v11 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v12 = *(v10 + v11);
  if (v12 >> 62)
  {
    goto LABEL_14;
  }

  if (v9 != *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
LABEL_7:
      result = sub_21B6C89F4();
      v22 = *(v10 + v11);
      if ((v22 & 0xC000000000000001) != 0)
      {
        v31 = result;

        v9 = MEMORY[0x21CEF66E0](v31, v22);

        if (!sub_21B6C89D4())
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        if (result >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v9 = *(v22 + 8 * result + 32);
        if (!sub_21B6C89D4())
        {
LABEL_17:
          v32 = v6;
          v33 = sub_21B6C8D74();
          v34 = sub_21B6C8974();
          a1 = [a1 dequeueReusableCellWithReuseIdentifier:v33 forIndexPath:v34];

          type metadata accessor for LockScreenPosterCollectionViewCell();
          v35 = swift_dynamicCastClass();
          if (v35)
          {
            v18 = v35;
            *(v35 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotProvider + 8) = &off_282CD23E0;
            swift_unknownObjectWeakAssign();
            swift_unknownObjectWeakAssign();
            *&v18[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_delegate + 8] = &off_282CD2428;
            swift_unknownObjectWeakAssign();
            [*(isEscapingClosureAtFileLocation + OBJC_IVAR___PBFPosterRackCollectionViewController_lockCellsWeakHashMap) addObject_];
            v45 = objc_opt_self();
            v36 = v46;
            (v7[2])(v46, a2, v32);
            v37 = (*(v7 + 80) + 32) & ~*(v7 + 80);
            v38 = swift_allocObject();
            *(v38 + 16) = v18;
            *(v38 + 24) = isEscapingClosureAtFileLocation;
            (v7[4])(v38 + v37, v36, v32);
            *(v38 + ((v8 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
            v39 = swift_allocObject();
            *(v39 + 16) = sub_21B69B86C;
            *(v39 + 24) = v38;
            v51 = sub_21B668834;
            v52 = v39;
            aBlock = MEMORY[0x277D85DD0];
            v48 = 1107296256;
            v49 = sub_21B647820;
            v50 = &block_descriptor_106;
            v40 = _Block_copy(&aBlock);
            v41 = isEscapingClosureAtFileLocation;
            v42 = a1;
            v43 = v9;

            [v45 performWithoutAnimation_];

            _Block_release(v40);
            LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

            if ((v43 & 1) == 0)
            {
              return v18;
            }

            __break(1u);
          }

LABEL_20:

          v18 = [objc_allocWithZone(MEMORY[0x277D752A8]) init];
          return v18;
        }
      }

      v23 = sub_21B6C8D74();
      v24 = sub_21B6C8974();
      a1 = [a1 dequeueReusableCellWithReuseIdentifier:v23 forIndexPath:v24];

      type metadata accessor for HomeScreenPosterCollectionViewCell();
      v25 = swift_dynamicCastClass();
      if (!v25)
      {
        goto LABEL_20;
      }

      v18 = v25;
      *(v25 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotProvider + 8) = &off_282CD23E0;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();
      v26 = &v18[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_delegate];
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v26 + 1) = &off_282CD2418;
      swift_unknownObjectWeakAssign();
      sub_21B66C8C0(Strong);
      swift_unknownObjectRelease();
      v7 = objc_opt_self();
      a2 = swift_allocObject();
      a2[2] = v18;
      a2[3] = v9;
      a2[4] = isEscapingClosureAtFileLocation;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_21B69B860;
      *(v11 + 24) = a2;
      v51 = sub_21B637134;
      v52 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_21B647820;
      v50 = &block_descriptor_96;
      v8 = _Block_copy(&aBlock);
      v6 = v52;
      v28 = isEscapingClosureAtFileLocation;
      v29 = v9;
      v30 = a1;

      [v7 performWithoutAnimation_];

      _Block_release(v8);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v18;
      }

      __break(1u);
LABEL_14:
      ;
    }

    while (v9 != sub_21B6C9454());
  }

  v45 = v7;
  v13 = v6;
  v14 = sub_21B6C8D74();
  v15 = sub_21B6C8974();
  v16 = [a1 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v15];

  type metadata accessor for PosterGalleryAffordanceCollectionViewCell();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
LABEL_6:

    v6 = v13;
    v7 = v45;
    goto LABEL_7;
  }

  v18 = v17;
  *(v17 + OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_delegate + 8) = &off_282CD2458;
  swift_unknownObjectWeakAssign();
  a1 = objc_opt_self();
  a2 = swift_allocObject();
  a2[2] = v18;
  a2[3] = isEscapingClosureAtFileLocation;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21B69B8FC;
  *(v11 + 24) = a2;
  v51 = sub_21B668834;
  v52 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_21B647820;
  v50 = &block_descriptor_116;
  v13 = _Block_copy(&aBlock);
  v8 = v52;
  v19 = v16;
  v20 = isEscapingClosureAtFileLocation;

  [a1 performWithoutAnimation_];
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_6;
  }

  return v18;
}

void sub_21B682FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a2 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode);
  v8 = a1 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode;
  v9 = *(a1 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode);
  v10 = *(a1 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8);
  *v8 = v7;
  *(v8 + 8) = 0;
  if ((v10 & 1) != 0 || v9 != v7)
  {
    sub_21B65AEF4();
  }

  v11 = [*(a2 + OBJC_IVAR___PBFPosterRackCollectionViewController_dateProvider) date];
  sub_21B6C8814();

  v12 = sub_21B6C8854();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  sub_21B63715C(v6);
  v13 = *(a1 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_scaleInAlongsideLayoutMode);
  *(a1 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_scaleInAlongsideLayoutMode) = 0x3FE6666666666666;
  if (v13 != 0.7)
  {
    sub_21B65AEF4();
  }
}

void *sub_21B683154(_BYTE *a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v74 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93D58);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v72 - v7;
  v75 = sub_21B6C8A04();
  v9 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v72 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v72 - v15;
  a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_shouldShowFocusButton] = a2[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells];
  sub_21B6662A0();
  v17 = *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode];
  v18 = &a1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode];
  v19 = *&a1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode];
  v20 = a1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8];
  *v18 = v17;
  v18[8] = 0;
  if ((v20 & 1) != 0 || v19 != v17)
  {
    sub_21B661E6C();
  }

  sub_21B661950(v19, v20);
  v21 = [*&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_dateProvider] date];
  sub_21B6C8814();

  v22 = sub_21B6C8854();
  (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  v23 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayDate;
  swift_beginAccess();
  sub_21B6385CC(v16, &a1[v23]);
  swift_endAccess();
  sub_21B6615D0();
  sub_21B62AA8C(v16, &qword_27CD93190);
  v24 = OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_scaleInAlongsideLayoutMode;
  v25 = *&a1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_scaleInAlongsideLayoutMode];
  *&a1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_scaleInAlongsideLayoutMode] = 0x3FE6666666666666;
  if (v25 != 0.7)
  {
    sub_21B65AEF4();
  }

  result = *&a1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView];
  v27 = v75;
  if (!result)
  {
    __break(1u);
    return result;
  }

  v28 = [result layer];
  [v28 setBorderWidth_];

  v29 = *&a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_maximumVerticalRevealFraction];
  *&a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_maximumVerticalRevealFraction] = 0x3FD0000000000000;
  if (v29 != 0.25)
  {
    sub_21B663074();
  }

  sub_21B68C3A0(v13);
  v30 = (*(v9 + 48))(v13, 1, v27);
  if (v30 == 1)
  {
    sub_21B62AA8C(v13, &qword_27CD93500);
    sub_21B6C89F4();
    v31 = 0;
  }

  else
  {
    v31 = sub_21B6C89F4();
    (*(v9 + 8))(v13, v27);
    if (sub_21B6C89F4() == v31)
    {
      v32 = *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredLockPosterOverlayView];
      if (v32)
      {
        v33 = v32;
      }

      goto LABEL_15;
    }
  }

  v32 = 0;
LABEL_15:
  v34 = *&a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_overlayView];
  *&a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_overlayView] = v32;
  v35 = v32;
  sub_21B65F6E4(v34);

  v36 = sub_21B6C89F4();
  v37 = 0;
  if (v30 != 1 && v36 == v31)
  {
    v37 = *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveContentView];
    if (v37)
    {
      v38 = v37;
    }
  }

  v39 = *&a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView];
  *&a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView] = v37;
  v40 = v37;
  sub_21B65FC2C(v39);

  v41 = sub_21B6C89F4();
  v42 = 0;
  if (v30 != 1 && v41 == v31)
  {
    v42 = *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveFloatingView];
    if (v42)
    {
      v43 = v42;
    }
  }

  v44 = *&a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView];
  *&a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView] = v42;
  v45 = v42;
  sub_21B660800(v44);

  v46 = OBJC_IVAR___PBFPosterRackCollectionViewController_isLockPosterFloatingLayerInlined;
  swift_beginAccess();
  v47 = a2[v46];
  v48 = a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFloatingLayerInlined];
  a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFloatingLayerInlined] = v47;
  if (v47 != v48)
  {
    sub_21B666B28();
  }

  v49 = OBJC_IVAR___PBFPosterRackCollectionViewController_isLockPosterComplicationRowHidden;
  swift_beginAccess();
  v50 = a2[v49];
  v51 = a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isComplicationContainerHiddenInFullscreenLayout];
  a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isComplicationContainerHiddenInFullscreenLayout] = v50;
  if (v50 != v51)
  {
    sub_21B666B28();
  }

  v52 = *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_displayedComplicationLocationOnLockScreenPosterCells];
  v53 = *&a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayedComplicationLocation];
  *&a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayedComplicationLocation] = v52;
  if (v52 != v53)
  {
    sub_21B666B28();
  }

  v54 = *&a1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair];
  v55 = v74;
  *&a1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair] = v74;
  v56 = v55;
  sub_21B63E104(v54);

  if (sub_21B660D30())
  {
    v57 = &a2[OBJC_IVAR___PBFPosterRackCollectionViewController_adaptiveTimeConfiguration];
    swift_beginAccess();
    v58 = v57[1];
    v59 = &a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_adaptiveTimeConfiguration];
    v60 = *&a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_adaptiveTimeConfiguration];
    v61 = *&a1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_adaptiveTimeConfiguration + 8];
    *v59 = *v57;
    v59[1] = v58;
    sub_21B660C14(v60, v61);
  }

  v76 = 0;
  v77 = 0xE000000000000000;
  sub_21B6C9524();

  v76 = 0xD000000000000017;
  v77 = 0x800000021B6F2E30;
  MEMORY[0x21CEF5FA0](*&v56[OBJC_IVAR___PBFPosterPair_id], *&v56[OBJC_IVAR___PBFPosterPair_id + 8]);
  v62 = sub_21B6C8D74();

  [a1 setAccessibilityIdentifier_];

  v63 = OBJC_IVAR___PBFPosterRackCollectionViewController_stashedLockscreenSnapshots;
  swift_beginAccess();
  sub_21B63D2BC(&a2[v63], v8, &qword_27CD93D58);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92650);
  v65 = (*(*(v64 - 8) + 48))(v8, 1, v64);
  v66 = v75;
  if (v65 == 1)
  {
    return sub_21B62AA8C(v8, &qword_27CD93D58);
  }

  v67 = *&v8[*(v64 + 48)];
  v68 = *&v8[*(v64 + 64)];
  v69 = v73;
  (*(v9 + 32))();
  if ((sub_21B6C8984() & 1) != 0 && (v70 = [v68 isEqualToDisplayContext_], swift_unknownObjectRelease(), v70))
  {
    v71 = v67;
    sub_21B662884(v67, 0, 0);
    swift_unknownObjectRelease();

    return (*(v9 + 8))(v69, v66);
  }

  else
  {
    (*(v9 + 8))(v69, v66);

    return swift_unknownObjectRelease();
  }
}

void sub_21B6839E8(char *a1, void *a2, uint64_t a3)
{
  v5 = *&a1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair];
  *&a1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair] = a2;
  v6 = a2;
  sub_21B63E104(v5);

  sub_21B66CA7C(*(a3 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode), 0);
  v7 = OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_scaleInAlongsideLayoutMode;
  v8 = *&a1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_scaleInAlongsideLayoutMode];
  *&a1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_scaleInAlongsideLayoutMode] = 0x3FE6666666666666;
  if (v8 != 0.7)
  {
    sub_21B65AEF4();
  }

  v9 = *&a1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView];
  if (v9)
  {
    v10 = [v9 layer];
    [v10 setBorderWidth_];

    sub_21B6C9524();

    MEMORY[0x21CEF5FA0](*&v6[OBJC_IVAR___PBFPosterPair_id], *&v6[OBJC_IVAR___PBFPosterPair_id + 8]);
    v11 = sub_21B6C8D74();

    [a1 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t PosterRackCollectionViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_21B6C8A04();
  v78 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v74 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93550);
  MEMORY[0x28223BE20](v76);
  v13 = &v73 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v75 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v77 = &v73 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - v19;
  if (sub_21B6C8DA4() == a2 && v21 == a3)
  {

LABEL_14:
    v37 = sub_21B6C8D74();
    v38 = sub_21B6C8D74();
    v39 = sub_21B6C8974();
    v40 = [a1 dequeueReusableSupplementaryViewOfKind:v37 withReuseIdentifier:v38 forIndexPath:v39];

    type metadata accessor for PosterSectionHeaderView();
    v28 = swift_dynamicCastClassUnconditional();
    *(v28 + OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_delegate + 8) = &off_282CD2478;
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    sub_21B65C568(Strong);

    v42 = sub_21B6C89F4();
    v43 = *&v5[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
    v44 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    swift_beginAccess();
    v45 = *(v43 + v44);
    if (v45 >> 62)
    {
      if (v42 < sub_21B6C9454())
      {
LABEL_16:
        v46 = sub_21B6C89F4();
        v29 = *(v43 + v44);
        if ((v29 & 0xC000000000000001) == 0)
        {
          if ((v46 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v46 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v47 = *(v29 + 8 * v46 + 32);
LABEL_20:
            v48 = swift_unknownObjectWeakLoadStrong();
            swift_unknownObjectWeakAssign();
            v49 = v47;
            sub_21B65C568(v48);

            return v28;
          }

          __break(1u);
LABEL_38:
          if (v29 >= sub_21B6C9454())
          {
            return v28;
          }

          goto LABEL_8;
        }

        v71 = v46;

        v47 = MEMORY[0x21CEF66E0](v71, v29);

        goto LABEL_20;
      }
    }

    else if (v42 < *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v50 = v78;
    (*(v78 + 16))(v20, a4, v10);
    v51 = *(v50 + 56);
    v52 = 1;
    v51(v20, 0, 1, v10);
    v53 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
    swift_beginAccess();
    if (v5[v53] == 1)
    {
      result = [v5 collectionView];
      if (!result)
      {
        goto LABEL_44;
      }

      v32 = result;
      v54 = [result numberOfSections];

      if (__OFSUB__(v54, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      MEMORY[0x21CEF5B60](0, v54 - 1);
      v52 = 0;
    }

    v55 = v77;
    v51(v77, v52, 1, v10);
    v56 = *(v76 + 48);
    sub_21B63D2BC(v20, v13, &qword_27CD93500);
    sub_21B63D2BC(v55, &v13[v56], &qword_27CD93500);
    v57 = *(v78 + 48);
    if (v57(v13, 1, v10) == 1)
    {
      sub_21B62AA8C(v55, &qword_27CD93500);
      sub_21B62AA8C(v20, &qword_27CD93500);
      if (v57(&v13[v56], 1, v10) == 1)
      {
        sub_21B62AA8C(v13, &qword_27CD93500);
        goto LABEL_33;
      }
    }

    else
    {
      v58 = v75;
      sub_21B63D2BC(v13, v75, &qword_27CD93500);
      if (v57(&v13[v56], 1, v10) != 1)
      {
        v59 = v78;
        v60 = v74;
        (*(v78 + 32))(v74, &v13[v56], v10);
        sub_21B69928C(&unk_28120BB30, MEMORY[0x277CC9AF8]);
        v61 = sub_21B6C8D64();
        v62 = *(v59 + 8);
        v62(v60, v10);
        sub_21B62AA8C(v77, &qword_27CD93500);
        sub_21B62AA8C(v20, &qword_27CD93500);
        v62(v58, v10);
        sub_21B62AA8C(v13, &qword_27CD93500);
        if ((v61 & 1) == 0)
        {
          return v28;
        }

LABEL_33:
        v63 = sub_21B6C8D74();
        v64 = PBFLocalizedString(v63);

        v65 = sub_21B6C8DA4();
        v67 = v66;

        v79 = v65;
        v80 = v67;
        sub_21B656750();
        v68 = sub_21B6C93D4();
        v70 = v69;

        sub_21B65C800(v68, v70);
        return v28;
      }

      sub_21B62AA8C(v77, &qword_27CD93500);
      sub_21B62AA8C(v20, &qword_27CD93500);
      (*(v78 + 8))(v58, v10);
    }

    sub_21B62AA8C(v13, &qword_27CD93550);
    return v28;
  }

  v23 = sub_21B6C96E4();

  if (v23)
  {
    goto LABEL_14;
  }

  v24 = sub_21B6C8D74();
  v25 = sub_21B6C8D74();
  v26 = sub_21B6C8974();
  v27 = [a1 dequeueReusableSupplementaryViewOfKind:v24 withReuseIdentifier:v25 forIndexPath:v26];

  type metadata accessor for PosterSectionRemovalView();
  v28 = swift_dynamicCastClassUnconditional();
  *(v28 + OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_delegate + 8) = &off_282CD2468;
  swift_unknownObjectWeakAssign();
  v29 = sub_21B6C89F4();
  v10 = *&v5[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
  v13 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v30 = *&v13[v10];
  if (v30 >> 62)
  {
    goto LABEL_38;
  }

  if (v29 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v28;
  }

LABEL_8:
  result = sub_21B6C89F4();
  v32 = *&v13[v10];
  if ((v32 & 0xC000000000000001) != 0)
  {
LABEL_41:
    v72 = result;

    v33 = MEMORY[0x21CEF66E0](v72, v32);

    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(v32 + 8 * result + 32);
LABEL_12:
    v35 = *&v33[OBJC_IVAR___PBFPosterPair_id];
    v34 = *&v33[OBJC_IVAR___PBFPosterPair_id + 8];

    v36 = (v28 + OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_posterID);
    *v36 = v35;
    v36[1] = v34;

    return v28;
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void PosterRackCollectionViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93550);
  v5 = MEMORY[0x28223BE20](v122);
  v120 = &v105[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v105[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v119 = &v105[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v118 = &v105[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v121 = &v105[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v105[-v17];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v105[-v20];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v105[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v105[-v25];
  v27 = sub_21B6C8A04();
  v28 = MEMORY[0x28223BE20](v27);
  v29 = MEMORY[0x28223BE20](v28);
  v33 = &v105[-v32];
  v34 = OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode;
  v35 = *&v2[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode];
  if ((v35 | 2) == 6)
  {
    return;
  }

  v36 = *&v2[OBJC_IVAR___PBFPosterRackCollectionViewController_numberOfTrackingTouchesBegunWhileTransitioningToInitialLayoutModeFromFullscreen];
  if (v2[OBJC_IVAR___PBFPosterRackCollectionViewController_isTransitioningToInitialLayoutModeFromFullscreen] == 1)
  {
    if (v36 == 1)
    {

      sub_21B67D12C();
      return;
    }
  }

  else if (v36)
  {
    return;
  }

  v110 = v31;
  v113 = v30;
  v114 = a1;
  v115 = v29;
  v116 = a2;
  *&v2[OBJC_IVAR___PBFPosterRackCollectionViewController_numberOfTrackingTouchesBegunWhileTransitioningToInitialLayoutModeFromFullscreen] = 0;
  v117 = v2;
  if (v35 != 5 || (v37 = sub_21B6C8974(), v38 = [v114 cellForItemAtIndexPath_], v37, !v38))
  {
LABEL_17:
    sub_21B68C3A0(v26);
    v40 = v113;
    v41 = *(v113 + 48);
    v42 = v115;
    Strong = v113 + 48;
    if (v41(v26, 1, v115) == 1)
    {
      v111 = v41;
      sub_21B62AA8C(v26, &qword_27CD93500);
      v43 = *(v40 + 16);
      v108 = v40 + 16;
      v107 = v43;
      v43(v24, v116, v42);
      v44 = 1;
      v109 = *(v40 + 56);
      v109(v24, 0, 1, v42);
      v45 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
      v46 = v117;
      swift_beginAccess();
      v47 = v46[v45];
      v48 = v114;
      v49 = v122;
      if (v47 != 1)
      {
        goto LABEL_22;
      }

      v50 = [v46 collectionView];
      if (v50)
      {
        v51 = v50;
        v52 = [v50 numberOfSections];

        if (!__OFSUB__(v52, 1))
        {
          MEMORY[0x21CEF5B60](0, v52 - 1);
          v44 = 0;
LABEL_22:
          v53 = v115;
          v109(v21, v44, 1, v115);
          v54 = *(v49 + 48);
          sub_21B63D2BC(v24, v8, &qword_27CD93500);
          sub_21B63D2BC(v21, &v8[v54], &qword_27CD93500);
          v55 = v111;
          if (v111(v8, 1, v53) == 1)
          {
            sub_21B62AA8C(v21, &qword_27CD93500);
            sub_21B62AA8C(v24, &qword_27CD93500);
            if (v111(&v8[v54], 1, v53) == 1)
            {
              sub_21B62AA8C(v8, &qword_27CD93500);
              v53 = v115;
              goto LABEL_45;
            }
          }

          else
          {
            sub_21B63D2BC(v8, v18, &qword_27CD93500);
            if (v55(&v8[v54], 1, v53) != 1)
            {
              v71 = v113;
              v72 = v110;
              (*(v113 + 32))(v110, &v8[v54], v53);
              sub_21B69928C(&unk_28120BB30, MEMORY[0x277CC9AF8]);
              v106 = sub_21B6C8D64();
              v73 = *(v71 + 8);
              v74 = v72;
              v48 = v114;
              v73(v74, v53);
              sub_21B62AA8C(v21, &qword_27CD93500);
              sub_21B62AA8C(v24, &qword_27CD93500);
              v73(v18, v53);
              sub_21B62AA8C(v8, &qword_27CD93500);
              if ((v106 & 1) == 0)
              {
                goto LABEL_60;
              }

LABEL_45:
              v75 = v121;
              v107(v121, v116, v53);
              v109(v75, 0, 1, v53);
              v76 = [v117 collectionView];
              if (v76)
              {
                v77 = v76;
                [v76 contentOffset];
                v79 = v78;
                v81 = v80;

                v82 = v118;
                sub_21B68BCC8(v118, v79, v81);
                v83 = *(v122 + 48);
                v84 = v120;
                sub_21B63D2BC(v75, v120, &qword_27CD93500);
                sub_21B63D2BC(v82, &v84[v83], &qword_27CD93500);
                v85 = v111;
                v86 = v111(v84, 1, v53);
                v87 = v119;
                if (v86 == 1)
                {
                  sub_21B62AA8C(v82, &qword_27CD93500);
                  sub_21B62AA8C(v75, &qword_27CD93500);
                  if (v85(&v84[v83], 1, v53) == 1)
                  {
                    sub_21B62AA8C(v84, &qword_27CD93500);
                    goto LABEL_56;
                  }

                  goto LABEL_54;
                }

                sub_21B63D2BC(v84, v119, &qword_27CD93500);
                if (v85(&v84[v83], 1, v53) == 1)
                {
                  sub_21B62AA8C(v82, &qword_27CD93500);
                  sub_21B62AA8C(v75, &qword_27CD93500);
                  (*(v113 + 8))(v87, v53);
LABEL_54:
                  sub_21B62AA8C(v84, &qword_27CD93550);
                  goto LABEL_60;
                }

                v88 = v113;
                v89 = &v84[v83];
                v90 = v110;
                (*(v113 + 32))(v110, v89, v53);
                sub_21B69928C(&unk_28120BB30, MEMORY[0x277CC9AF8]);
                LODWORD(v122) = sub_21B6C8D64();
                v91 = *(v88 + 8);
                v91(v90, v53);
                sub_21B62AA8C(v82, &qword_27CD93500);
                sub_21B62AA8C(v75, &qword_27CD93500);
                v91(v87, v53);
                sub_21B62AA8C(v84, &qword_27CD93500);
                if (v122)
                {
LABEL_56:
                  v92 = sub_21B6C8974();
                  v93 = [v48 cellForItemAtIndexPath_];

                  if (v93)
                  {
                    type metadata accessor for PosterGalleryAffordanceCollectionViewCell();
                    v94 = swift_dynamicCastClass();
                    if (v94)
                    {
                      v95 = *(v94 + OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_addButton);
                      v96 = v95;
                      sub_21B67AF40(v95, 0, 0);

                      return;
                    }
                  }
                }

LABEL_60:
                v97 = sub_21B6C89F4();
                sub_21B690260(v97, 1, 0);
                return;
              }

              goto LABEL_68;
            }

            sub_21B62AA8C(v21, &qword_27CD93500);
            sub_21B62AA8C(v24, &qword_27CD93500);
            (*(v113 + 8))(v18, v53);
          }

          sub_21B62AA8C(v8, &qword_27CD93550);
          goto LABEL_60;
        }

        __break(1u);
      }

      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    (*(v40 + 32))(v33, v26, v42);
    v56 = sub_21B6C89F4();
    v57 = v116;
    if (v56 == sub_21B6C89F4())
    {
      v58 = sub_21B6C8974();
      v59 = [v114 cellForItemAtIndexPath_];

      if (!v59)
      {
LABEL_35:
        if (sub_21B6C89D4() || *&v117[v34] != 3)
        {
          if (sub_21B6C89D4() == 1)
          {
            v70 = 4;
          }

          else
          {
            v70 = *&v117[v34] != 1;
          }

          PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(v70, 1, 0, 0, 0);
        }

        else
        {
          sub_21B681418(v57);
        }

        goto LABEL_51;
      }

      type metadata accessor for LockScreenPosterCollectionViewCell();
      v60 = swift_dynamicCastClass();
      if (!v60)
      {
        goto LABEL_34;
      }

      v61 = v60;
      v62 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView;
      v63 = *(v60 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView);
      if (!v63)
      {
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      [v63 bounds];
      v65 = v64 * *(v61 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_maximumVerticalRevealFraction);
      if (v65 <= 0.0)
      {
        goto LABEL_34;
      }

      v66 = *(v61 + v62);
      if (!v66)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      [v66 contentOffset];
      v68 = v67 / v65;
      if (v67 / v65 <= 0.0 || v68 <= 1.0 && v68 <= 0.0)
      {
LABEL_34:

        goto LABEL_35;
      }

      v98 = *(v61 + v62);
      if (!v98)
      {
LABEL_71:
        __break(1u);
        return;
      }

      [v98 contentOffset];
      if (v100 == 0.0 && v99 == 0.0)
      {
      }

      else
      {
        v101 = objc_opt_self();
        v102 = swift_allocObject();
        *(v102 + 16) = v61;
        aBlock[4] = sub_21B69B904;
        aBlock[5] = v102;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21B63863C;
        aBlock[3] = &block_descriptor_122;
        v103 = _Block_copy(aBlock);
        v104 = v59;

        [v101 animateWithDuration:v103 animations:0.3];
        _Block_release(v103);
      }
    }

    else
    {
      v69 = sub_21B6C89F4();
      sub_21B690260(v69, 1, 0);
    }

LABEL_51:
    (*(v40 + 8))(v33, v42);
    return;
  }

  type metadata accessor for LockScreenPosterCollectionViewCell();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_17;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  v39 = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }
}

void PosterRackCollectionViewController.collectionView(_:willDisplay:forItemAt:)(uint64_t a1, void *a2)
{
  type metadata accessor for LockScreenPosterCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    v2 = a2;
    sub_21B667B2C();
  }

  else
  {
    type metadata accessor for HomeScreenPosterCollectionViewCell();
    v3 = swift_dynamicCastClass();
    if (!v3)
    {
      return;
    }

    v4 = v3;
    v5 = a2;
    sub_21B69FEF0(v4);
  }
}

void __swiftcall PosterRackCollectionViewController._newCollectionView(withFrame:collectionViewLayout:)(UICollectionView_optional *__return_ptr retstr, __C::CGRect withFrame, UICollectionViewLayout_optional *collectionViewLayout)
{
  if (collectionViewLayout)
  {
    *([objc_allocWithZone(type metadata accessor for PosterRackCollectionView()) initWithFrame:collectionViewLayout collectionViewLayout:{withFrame.origin.x, withFrame.origin.y, withFrame.size.width, withFrame.size.height}] + OBJC_IVAR____TtC11PosterBoard24PosterRackCollectionView_posterRackDelegate + 8) = &off_282CD2398;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

uint64_t PosterRackCollectionViewController._indexPathOfReferenceItemForLayoutTransition(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v9)
  {
    goto LABEL_11;
  }

  v12 = [v9 collectionViewLayout];
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  type metadata accessor for PosterRackStackedLayout();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  sub_21B68C3A0(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v11, v6, v7);
    v16 = *(v15 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutModeTransitioningTo);
    if ((*(v15 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutModeTransitioningTo + 8) & 1) != 0 || v16 != 4)
    {
      v17 = *(v15 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutMode);
      if (v17 != 4)
      {
        v20 = v16 == 6 ? *(v15 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutModeTransitioningTo + 8) ^ 1 : 0;
        if ((v20 & 1) == 0 && v17 != 6)
        {
          v21 = sub_21B6C89F4();
          MEMORY[0x21CEF5B60](0, v21);

          (*(v8 + 8))(v11, v7);
          v18 = 0;
          return (*(v8 + 56))(a2, v18, 1, v7);
        }
      }
    }

    (*(v8 + 8))(v11, v7);
LABEL_10:

    goto LABEL_11;
  }

  sub_21B62AA8C(v6, &qword_27CD93500);
LABEL_11:
  v18 = 1;
  return (*(v8 + 56))(a2, v18, 1, v7);
}

Swift::Void __swiftcall PosterRackCollectionViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v2 = OBJC_IVAR___PBFPosterRackCollectionViewController_isScrollingOrSettling;
  if ((v1[OBJC_IVAR___PBFPosterRackCollectionViewController_isScrollingOrSettling] & 1) == 0)
  {
    v3 = [(UIScrollView *)a1 isScrollAnimating];
    v4 = v1[v2];
    v1[v2] = v3;
    if ((v3 & 1) == 0)
    {
      if (v4)
      {
        sub_21B67BCBC(0, 1);
        if (*&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode] == 2)
        {
          PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(0, 1, 0, 0, 0);
        }

        sub_21B672440();
      }
    }
  }

  v5 = [v1 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 visibleCells];

    sub_21B61785C(0, &unk_28120B2A8);
    v8 = sub_21B6C8E84();

    if (v8 >> 62)
    {
LABEL_26:
      v9 = sub_21B6C9454();
      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_10:
        v10 = 0;
        p_info = &OBJC_METACLASS___PBFSilhouetteHelpers.info;
        v12 = &selRef_collectionViewLayout;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x21CEF66E0](v10, v8);
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v13 = *(v8 + 8 * v10 + 32);
          }

          v14 = v13;
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          type metadata accessor for LockScreenPosterCollectionViewCell();
          v16 = swift_dynamicCastClass();
          if (!v16)
          {
            goto LABEL_11;
          }

          v17 = v16;
          v18 = *(&p_info[347]->flags + v16);
          if (!v18)
          {
            __break(1u);
            goto LABEL_29;
          }

          [v18 v12[81]];
          if (v20 == 0.0 && v19 == 0.0)
          {
LABEL_11:
          }

          else
          {
            v21 = p_info;
            v22 = objc_opt_self();
            v23 = swift_allocObject();
            *(v23 + 16) = v17;
            aBlock[4] = sub_21B69F988;
            aBlock[5] = v23;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_21B63863C;
            aBlock[3] = &block_descriptor_129_0;
            v24 = _Block_copy(aBlock);
            v25 = v14;

            v26 = v22;
            p_info = v21;
            v12 = &selRef_collectionViewLayout;
            [v26 animateWithDuration:v24 animations:0.3];

            _Block_release(v24);
          }

          ++v10;
        }

        while (v15 != v9);
      }
    }

    sub_21B67C8E0(2);
  }

  else
  {
LABEL_29:
    __break(1u);
  }
}

Swift::Void __swiftcall PosterRackCollectionViewController.presentationControllerWillDismiss(_:)(UIPresentationController a1)
{
  v1 = [(objc_class *)a1.super.isa presentedViewController];
  sub_21B67F6DC(v1);
}

Swift::Void __swiftcall PosterRackCollectionViewController.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  v2 = [(objc_class *)a1.super.isa presentedViewController];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    sub_21B694118(v1);
  }
}

void sub_21B6865B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration];
    *&v2[OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration] = a2;
    v5 = v2;
    v6 = a2;
    sub_21B6A2434(v3);

    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    v7 = v5;
    sub_21B67A3F0(Strong);
  }
}

uint64_t sub_21B686690()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 invalidate];
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21B6866E4()
{
  sub_21B6C97A4();
  MEMORY[0x21CEF6950](0);
  return sub_21B6C97C4();
}

uint64_t sub_21B686750()
{
  sub_21B6C97A4();
  MEMORY[0x21CEF6950](0);
  return sub_21B6C97C4();
}

void sub_21B6867A0(uint64_t a1, int a2, uint64_t a3, char a4)
{
  LODWORD(v66) = a2;
  v69[1] = *MEMORY[0x277D85DE8];
  v8 = sub_21B6C8794();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_21B6C88C4();
  v12 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PosterRackCollectionViewController.HomeScreenConfigurationInfo();
  v15 = swift_allocObject();
  v16 = *(a1 + OBJC_IVAR___PBFPosterPair_configuration);
  *(v15 + 16) = v16;
  *(v15 + 24) = 0;
  *(v15 + 32) = a3;
  v68 = v15;
  *(v15 + 40) = a4 & 1;
  v64 = *&v4[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
  v17 = [*(v64 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) homeScreenPosterConfigurationForPosterConfiguration_];
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = v17;
  v19 = [v17 _path];

  if (!v19)
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {

LABEL_7:
    v63 = v4;
    v21 = v11;
    v22 = objc_opt_self();
    v23 = *MEMORY[0x277D3EBC0];
    v65 = [v22 temporaryPathForRole_];
    v24 = objc_opt_self();
    v66 = v8;
    v25 = v24;
    v26 = sub_21B6C8D74();
    sub_21B6C88B4();
    v27 = sub_21B6C8884();
    (*(v12 + 8))(v14, v67);
    v28 = [v25 configurationIdentityWithProvider:v26 identifier:0 role:v23 posterUUID:v27 version:1 supplement:0];

    v29 = v65;
    v30 = [v65 contentsURL];
    sub_21B6C8784();

    v31 = sub_21B6C8774();
    v32 = [objc_opt_self() pathWithContainerURL:v31 identity:v28];

    (*(v9 + 8))(v21, v66);
    v33 = v68;
    *(v68 + 24) = v29;
    v34 = v32;
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  if (v66)
  {

    return;
  }

  v34 = v20;
  v63 = v4;
  v61 = v19;
  v33 = v68;
LABEL_8:
  v69[0] = 0;
  v35 = [v34 ensureContentsURLIsReachableAndReturnError_];

  if (v35)
  {
    v36 = v69[0];
    v37 = sub_21B620934(v34);
    if (v37)
    {
      v38 = v37;
      v39 = [objc_allocWithZone(MEMORY[0x277D3ECC0]) initWithProvider:v37 contents:v34 configurableOptions:0];
      v40 = v63;
      [v39 setDelegate_];
      [v39 setVariant_];
      [v39 setModalPresentationStyle_];
      [v39 setUserInfo_];
      [v40 presentViewController:v39 animated:1 completion:0];

      return;
    }

    if (qword_28120B390 != -1)
    {
      swift_once();
    }

    v43 = sub_21B6C8AB4();
    __swift_project_value_buffer(v43, qword_28120CD78);
    v44 = sub_21B6C9024();
    v45 = v34;
    v46 = sub_21B6C8A94();

    if (os_log_type_enabled(v46, v44))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v45;
      *v48 = v45;
      v49 = v45;
      _os_log_impl(&dword_21B526000, v46, v44, "[PosterRack] Error starting editing UI for Photos poster for home configuration: could not find provider for %@", v47, 0xCu);
      sub_21B62AA8C(v48, &qword_27CD92EF0);
      MEMORY[0x21CEF8150](v48, -1, -1);
      MEMORY[0x21CEF8150](v47, -1, -1);
    }

    v50 = *(v33 + 24);
    if (v50)
    {
      [v50 invalidate];
    }

    sub_21B69C838();
    v42 = swift_allocError();
  }

  else
  {
    v41 = v69[0];
    v42 = sub_21B6C8764();
  }

  swift_willThrow();

  if (qword_28120B390 != -1)
  {
    swift_once();
  }

  v51 = sub_21B6C8AB4();
  __swift_project_value_buffer(v51, qword_28120CD78);
  v52 = sub_21B6C9024();
  v53 = v42;
  v54 = sub_21B6C8A94();

  if (os_log_type_enabled(v54, v52))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v69[0] = v56;
    *v55 = 136315138;
    swift_getErrorValue();
    v57 = sub_21B6C9744();
    v59 = sub_21B656178(v57, v58, v69);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_21B526000, v54, v52, "[PosterRack] Error starting editing UI for Photos poster for home configuration: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x21CEF8150](v56, -1, -1);
    MEMORY[0x21CEF8150](v55, -1, -1);
  }

  v60 = *(v33 + 24);
  if (v60)
  {
    [v60 invalidate];
  }

  swift_willThrow();
}

void sub_21B686F2C(char *a1, char a2, uint64_t a3, void *a4)
{
  v5 = v4;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v10 = [objc_allocWithZone(MEMORY[0x277D3ECD8]) init];
  v11 = sub_21B6C8D74();
  [v10 setIdentifier_];

  [v10 setSelectedColor_];
  v12 = *&a1[OBJC_IVAR___PBFPosterPair_configuration];
  aBlock[0] = 0;
  v13 = [v12 loadConfigurableOptionsWithError_];
  if (!v13)
  {
    v56 = a2;
    v20 = aBlock[0];
    v21 = sub_21B6C8764();

    swift_willThrow();
    if (qword_28120B390 != -1)
    {
      swift_once();
    }

    v22 = sub_21B6C8AB4();
    __swift_project_value_buffer(v22, qword_28120CD78);
    v23 = sub_21B6C9024();
    v24 = v21;
    v25 = sub_21B6C8A94();

    if (os_log_type_enabled(v25, v23))
    {
      v55 = v5;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_21B6C9744();
      v30 = sub_21B656178(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_21B526000, v25, v23, "Error loading configurable options: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x21CEF8150](v27, -1, -1);
      v31 = v26;
      v5 = v55;
      MEMORY[0x21CEF8150](v31, -1, -1);
    }

    else
    {
    }

    v18 = 0;
    v16 = v56;
    goto LABEL_16;
  }

  v14 = v13;
  v15 = aBlock[0];
  v16 = a2;
  v17 = sub_21B69AB24(v14, a2 & 1);
  v18 = v17;
  if (v17 >> 62)
  {
    v32 = sub_21B6C9454();

    if (!v32)
    {
      goto LABEL_15;
    }

    if (sub_21B6C9454())
    {
      goto LABEL_19;
    }

LABEL_16:
    v33 = [a4 suggestedColors];
    if (v33)
    {
      v34 = v33;

      v35 = sub_21B6C8E84();

      v18 = sub_21B6876C0(v35);
    }

    if (!v18)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v19)
  {
LABEL_15:

    v18 = 0;
    goto LABEL_16;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_19:
  if (v18 >> 62)
  {
    if (sub_21B6C9454())
    {
      goto LABEL_21;
    }
  }

  else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    sub_21B66F650(v18);

    v36 = sub_21B6C8E74();

    [v10 setSuggestedColors_];

    goto LABEL_24;
  }

LABEL_24:
  v37 = [a4 colorPalette];
  [v10 setColorPalette_];

  v38 = [objc_allocWithZone(MEMORY[0x277D3EC98]) initWithComponents:4 role:*MEMORY[0x277D3EEF0] titleString:0];
  v39 = sub_21B6C8D74();

  v40 = PBFLocalizedString(v39);

  if (!v40)
  {
    sub_21B6C8DA4();
    v40 = sub_21B6C8D74();
  }

  [v38 setTitle_];

  [v38 setColorPickerConfiguration_];
  [v38 setDelegate_];
  v41 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v42 = swift_allocObject();
  *(v42 + 16) = a1;
  *(v42 + 24) = v16 & 1;
  *(v42 + 32) = a4;
  *(v42 + 40) = v41;
  aBlock[4] = sub_21B69C7C0;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B687A78;
  aBlock[3] = &block_descriptor_416;
  v43 = _Block_copy(aBlock);
  v44 = a1;
  v45 = a4;

  [v38 setChangeHandler_];
  _Block_release(v43);
  v46 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  v47 = [v46 sheetPresentationController];
  if (v47)
  {
    v48 = v47;
    sub_21B61785C(0, &qword_27CD93438);
    v49 = sub_21B6C8D74();
    *(swift_allocObject() + 16) = v38;
    v50 = v38;
    v51 = sub_21B6C90F4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_21B6D81D0;
    *(v52 + 32) = v51;
    v53 = v51;
    v54 = sub_21B6C8E74();

    [v48 setDetents_];

    PRSheetCornerRadius();
    sub_21B6C90E4();
    [v48 setPrefersGrabberVisible_];
  }

  [v5 presentViewController:v46 animated:1 completion:0];
}

uint64_t sub_21B6876C0(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_21B6C9594();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_21B657AA0(i, v5);
    sub_21B61785C(0, &unk_27CD941E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_21B6C9574();
    sub_21B6C95A4();
    sub_21B6C95B4();
    sub_21B6C9584();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_21B6877CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, char a11, uint64_t a12)
{
  if (a9)
  {
    v27 = a9;
    v12 = [v27 color];
    if (v12)
    {
      v13 = v12;
      v14 = OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration;
      v15 = *(a10 + OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration);
      if (v15)
      {
        v16 = *(a10 + OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration);
      }

      else
      {
        v16 = [*(a10 + OBJC_IVAR___PBFPosterPair_configuredProperties) homeScreenConfiguration];
        if (!v16)
        {
          v16 = [objc_allocWithZone(MEMORY[0x277D3EDB0]) init];
        }
      }

      v17 = v15;
      [v16 mutableCopy];

      sub_21B6C93E4();
      swift_unknownObjectRelease();
      sub_21B61785C(0, &unk_28120B188);
      if (swift_dynamicCast())
      {
        v18 = v28;
        v19 = v27;
        if ((a11 & 1) == 0)
        {
LABEL_12:
          v20 = [objc_allocWithZone(MEMORY[0x277D3EE18]) initWithColor:v13 colorPickerConfiguration:a12];
          v21 = &selRef_setSolidColorAppearance_;
LABEL_15:
          [v18 *v21];

          v23 = *(a10 + v14);
          *(a10 + v14) = v18;
          v24 = v18;
          sub_21B6A2434(v23);

          Strong = swift_unknownObjectUnownedLoadStrong();
          v26 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          sub_21B67A3F0(v26);

          return;
        }
      }

      else
      {
        v18 = [objc_allocWithZone(MEMORY[0x277D3ED08]) init];
        v19 = v27;
        if ((a11 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v22 = [v19 color];
      v20 = [objc_allocWithZone(MEMORY[0x277D3EDA0]) initWithColor:v22 colorPickerConfiguration:a12];

      v21 = &selRef_setGradientAppearance_;
      goto LABEL_15;
    }
  }
}

uint64_t sub_21B687A78(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9)
{
  v27 = *(a1 + 32);
  if (a8)
  {
    v24 = sub_21B6C8DA4();
    v28 = v15;
  }

  else
  {
    v24 = 0;
    v28 = 0;
  }

  v26 = a2;
  v25 = a3;
  v23 = a4;
  v22 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = a5;
  v20 = v18;
  v27(a2, a3, a4, v19, a6, a7, v24, v28, a9);
}

void sub_21B687C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *&v3[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
  v9 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v10 = *(v8 + v9);
  if (v10 >> 62)
  {
    if (sub_21B6C9454() < 2)
    {
      return;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    return;
  }

  v11 = sub_21B61F5F8(a2, a3);
  if (v11)
  {
    v12 = v11;
    if (sub_21B620A90(v11))
    {
      if (qword_28120B390 != -1)
      {
        swift_once();
      }

      v13 = sub_21B6C8AB4();
      __swift_project_value_buffer(v13, qword_28120CD78);
      v14 = sub_21B6C9044();
      v15 = sub_21B6C8A94();
      if (os_log_type_enabled(v15, v14))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_21B526000, v15, v14, "PosterStore cannot delete last non-focus-associated Poster", v16, 2u);
        MEMORY[0x21CEF8150](v16, -1, -1);
      }

      v17 = sub_21B6C8D74();
      v18 = PBFLocalizedString(v17);

      if (!v18)
      {
        sub_21B6C8DA4();
        v18 = sub_21B6C8D74();
      }

      v19 = sub_21B6C8D74();
      v20 = PBFLocalizedString(v19);

      if (!v20)
      {
        sub_21B6C8DA4();
        v20 = sub_21B6C8D74();
      }

      v21 = [objc_opt_self() alertControllerWithTitle:v18 message:v20 preferredStyle:1];

      v22 = sub_21B6C8D74();
      v23 = PBFLocalizedString(v22);

      if (!v23)
      {
        sub_21B6C8DA4();
        v23 = sub_21B6C8D74();
      }

      v24 = [objc_opt_self() actionWithTitle:v23 style:0 handler:0];

      [v21 addAction_];
      [v4 presentViewController:v21 animated:1 completion:0];
      v25 = v12;
    }

    else
    {
      v26 = sub_21B6C8D74();
      v27 = PBFLocalizedString(v26);

      if (!v27)
      {
        sub_21B6C8DA4();
        v27 = sub_21B6C8D74();
      }

      v28 = sub_21B6C8D74();
      v29 = PBFLocalizedString(v28);

      if (!v29)
      {
        sub_21B6C8DA4();
        v29 = sub_21B6C8D74();
      }

      v45 = a1;
      v30 = [objc_opt_self() alertControllerWithTitle:v27 message:v29 preferredStyle:0];

      v31 = sub_21B6C8D74();
      v32 = PBFLocalizedString(v31);

      if (!v32)
      {
        sub_21B6C8DA4();
        v32 = sub_21B6C8D74();
      }

      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      v34[2] = v33;
      v34[3] = a2;
      v34[4] = a3;
      v50 = sub_21B69C7AC;
      v51 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_21B6388A0;
      v49 = &block_descriptor_396;
      v35 = _Block_copy(&aBlock);

      v36 = objc_opt_self();
      v25 = [v36 actionWithTitle:v32 style:2 handler:v35];
      _Block_release(v35);

      v37 = sub_21B6C8D74();
      v38 = PBFLocalizedString(v37);

      if (!v38)
      {
        sub_21B6C8DA4();
        v38 = sub_21B6C8D74();
      }

      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = sub_21B69C7B8;
      v51 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_21B6388A0;
      v49 = &block_descriptor_400;
      v40 = _Block_copy(&aBlock);

      v21 = [v36 actionWithTitle:v38 style:1 handler:v40];
      _Block_release(v40);

      [v30 addAction_];
      [v30 addAction_];
      [v30 setPreferredAction_];
      v41 = [v4 traitCollection];
      v42 = [v41 userInterfaceIdiom];

      if (v42 == 1)
      {
        v43 = [v30 popoverPresentationController];
        if (v43)
        {
          v44 = v43;
          [v43 setSourceView_];
        }
      }

      [v4 presentViewController:v30 animated:1 completion:{0, v45}];
    }
  }
}

void sub_21B688368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_21B61F5F8(a3, a4);
    if (v8)
    {
      v9 = v8;
      sub_21B628D0C(v8);
    }
  }
}

id sub_21B6883F0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = [result collectionView];
  if (!result)
  {
    goto LABEL_24;
  }

  v2 = result;
  v3 = [result visibleCells];

  sub_21B61785C(0, &unk_28120B2A8);
  v4 = sub_21B6C8E84();

  v22 = v1;
  if (v4 >> 62)
  {
LABEL_20:
    v5 = sub_21B6C9454();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_21:
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_5:
  v6 = 0;
  v23 = v25;
  p_info = &OBJC_METACLASS___PBFSilhouetteHelpers.info;
  v8 = &selRef_collectionViewLayout;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CEF66E0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v9 = *(v4 + 8 * v6 + 32);
    }

    v10 = v9;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    type metadata accessor for LockScreenPosterCollectionViewCell();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v12;
    result = *(&p_info[347]->flags + v12);
    if (!result)
    {
      break;
    }

    [result v8[81]];
    if (v15 != 0.0 || v14 != 0.0)
    {
      v16 = p_info;
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v13;
      v25[2] = sub_21B69F988;
      v25[3] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v25[0] = sub_21B63863C;
      v25[1] = &block_descriptor_407;
      v19 = _Block_copy(aBlock);
      v20 = v10;

      v21 = v17;
      p_info = v16;
      v8 = &selRef_collectionViewLayout;
      [v21 animateWithDuration:v19 animations:0.3];

      _Block_release(v19);
      goto LABEL_7;
    }

LABEL_6:

LABEL_7:
    ++v6;
    if (v11 == v5)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_21B68872C()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for PosterSectionHeaderView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = *MEMORY[0x277D767D8];
    v5 = sub_21B6C8D74();
    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];

    type metadata accessor for PosterSectionRemovalView();
    v6 = swift_getObjCClassFromMetadata();
    v7 = *MEMORY[0x277D767D0];
    v8 = sub_21B6C8D74();
    [v2 registerClass:v6 forSupplementaryViewOfKind:v7 withReuseIdentifier:v8];

    type metadata accessor for LockScreenPosterCollectionViewCell();
    v9 = swift_getObjCClassFromMetadata();
    v10 = sub_21B6C8D74();
    [v2 registerClass:v9 forCellWithReuseIdentifier:v10];

    type metadata accessor for HomeScreenPosterCollectionViewCell();
    v11 = swift_getObjCClassFromMetadata();
    v12 = sub_21B6C8D74();
    [v2 registerClass:v11 forCellWithReuseIdentifier:v12];

    type metadata accessor for PosterGalleryAffordanceCollectionViewCell();
    v13 = swift_getObjCClassFromMetadata();
    v14 = sub_21B6C8D74();
    [v2 registerClass:v13 forCellWithReuseIdentifier:v14];

    v15 = objc_opt_self();
    v16 = v2;
    v17 = [v15 clearColor];
    [v16 setBackgroundColor_];

    v18 = *MEMORY[0x277D76EB8];
    v20 = v16;
    [v20 setDecelerationRate_];
    v19 = [v20 layer];
    [v19 setHitTestsAsOpaque_];

    [v20 _setAllowsVisibleCellUpdatesDuringUpdateAnimations_];
    [v20 _setAllowsVisibleViewUpdatesDuringLayoutTransitions_];
    [v20 setClipsToBounds_];

    [v20 setCollectionViewLayout_];
    [v20 setContentInsetAdjustmentBehavior_];
    [v20 setShowsHorizontalScrollIndicator_];
    [v20 setAlwaysBounceHorizontal_];
  }
}

void sub_21B688AB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92C80);
  MEMORY[0x28223BE20](v2 - 8);
  v175 = &v166 - v3;
  v4 = sub_21B6C8734();
  v182 = *(v4 - 8);
  v183 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v174 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v181 = &v166 - v7;
  v180 = sub_21B6C92F4();
  v176 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v179 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B6C9204();
  v172 = *(v9 - 8);
  v173 = v9;
  MEMORY[0x28223BE20](v9);
  v171 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B6C9364();
  v187 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v168 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v185 = &v166 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v166 - v16;
  if (PUIFeatureEnabled())
  {
    v18 = 6;
  }

  else
  {
    v18 = 1;
  }

  v188[3] = &type metadata for PosterRackFeatures;
  v188[4] = sub_21B62C9EC();
  LOBYTE(v188[0]) = 5;
  v19 = sub_21B6C8A54();
  __swift_destroy_boxed_opaque_existential_0(v188);
  v186 = v11;
  if (v19)
  {
    sub_21B61785C(0, &unk_28120B110);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = sub_21B6C91B4();
    v21 = [objc_allocWithZone(MEMORY[0x277D3EC80]) initWithStyle:v18 frame:v20 primaryAction:{0.0, 0.0, 0.0, 0.0}];

    v22 = v21;
    v11 = v186;
    v23 = sub_21B6C8D74();
    [v22 setAccessibilityIdentifier_];

    [v22 setTintAdjustmentMode_];
    [v22 sizeToFit];
    v24 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButton];
    *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButton] = v22;
  }

  v25 = sub_21B61785C(0, &unk_28120B110);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v178 = v25;
  v26 = sub_21B6C91B4();
  v27 = [objc_allocWithZone(MEMORY[0x277D3EC90]) initWithStyle:v18 frame:v26 primaryAction:{0.0, 0.0, 0.0, 0.0}];

  v28 = v27;
  v29 = sub_21B6C8D74();
  [v28 setAccessibilityIdentifier_];

  [v28 setTintAdjustmentMode_];
  [v28 sizeToFit];
  v30 = OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButton;
  v31 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButton];
  *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButton] = v28;
  v170 = v28;

  v32 = OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButton;
  v33 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButton];
  v184 = v17;
  if (v33 || *&v1[v30])
  {
    v34 = [objc_allocWithZone(MEMORY[0x277D3EFE0]) init];
    v35 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsContainerView];
    *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsContainerView] = v34;
    v36 = v34;

    if (PUIFeatureEnabled())
    {
      [v36 pui_setGlassGroupBackground];
    }

    v37 = v36;
    [v37 setTranslatesAutoresizingMaskIntoConstraints_];
    v38 = [v1 view];
    if (!v38)
    {
      goto LABEL_93;
    }

    v39 = v38;
    [v38 addSubview_];

    v40 = [v1 view];
    if (!v40)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v41 = v40;
    v42 = [v40 pui:v37 constraintsPinningSubview:11 toEdges:?];

    if (!v42)
    {
      sub_21B61785C(0, &qword_28120B2D0);
      sub_21B6C8E84();
      v42 = sub_21B6C8E74();
    }

    v177 = objc_opt_self();
    [v177 activateConstraints_];

    v43 = *&v1[v32];
    if (v43)
    {
      v44 = v43;
      [v37 addSubview_];
      [v44 setTranslatesAutoresizingMaskIntoConstraints_];
      v45 = [v44 topAnchor];
      v46 = [v1 view];
      if (!v46)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v47 = v46;
      v48 = [v46 topAnchor];

      v49 = [v45 constraintEqualToAnchor:v48 constant:16.0];
      v50 = [v44 leadingAnchor];

      v51 = [v1 &selRef_activePosterConfigurations];
      if (!v51)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v52 = v51;
      v53 = [v51 leadingAnchor];

      v54 = [v50 constraintEqualToAnchor:v53 constant:16.0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_21B6D8270;
      *(v55 + 32) = v49;
      *(v55 + 40) = v54;
      v56 = v49;
      v57 = v54;
      v58 = [v44 bottomAnchor];

      v59 = [v37 bottomAnchor];
      v60 = [v58 constraintEqualToAnchor_];

      *(v55 + 48) = v60;
      sub_21B61785C(0, &qword_28120B2D0);
      v61 = sub_21B6C8E74();

      [v177 activateConstraints_];

      v62 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonTopAnchorConstraint];
      *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonTopAnchorConstraint] = v56;

      v63 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonTrailingAnchorConstraint];
      *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonTrailingAnchorConstraint] = v57;

      v11 = v186;
      v17 = v184;
    }

    v64 = *&v1[v30];
    if (v64)
    {
      v65 = v64;
      [v37 addSubview_];
      [v65 setTranslatesAutoresizingMaskIntoConstraints_];
      v66 = [v65 topAnchor];
      v67 = [v1 view];
      if (!v67)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v68 = v67;
      v69 = [v67 topAnchor];

      v70 = [v66 constraintEqualToAnchor:v69 constant:16.0];
      v71 = [v65 trailingAnchor];

      v72 = [v1 view];
      if (!v72)
      {
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v73 = v72;
      v74 = [v72 trailingAnchor];

      v75 = [v71 constraintEqualToAnchor:v74 constant:16.0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_21B6D8270;
      *(v76 + 32) = v70;
      *(v76 + 40) = v75;
      v77 = v70;
      v78 = v75;
      v79 = [v65 bottomAnchor];

      v80 = [v37 bottomAnchor];
      v81 = [v79 constraintEqualToAnchor_];

      *(v76 + 48) = v81;
      sub_21B61785C(0, &qword_28120B2D0);
      v82 = sub_21B6C8E74();

      [v177 activateConstraints_];

      v83 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonTopAnchorConstraint];
      *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonTopAnchorConstraint] = v77;

      v37 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonTrailingAnchorConstraint];
      *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonTrailingAnchorConstraint] = v78;
      v11 = v186;
      v17 = v184;
    }

    else
    {
    }
  }

  v177 = *MEMORY[0x277D76808];
  sub_21B6C92D4();
  if ((PUIFeatureEnabled() & 1) == 0)
  {
    v84 = v185;
    sub_21B6C9354();
    v85 = v187;
    (*(v187 + 8))(v17, v11);
    (*(v85 + 32))(v17, v84, v11);
    (*(v172 + 104))(v171, *MEMORY[0x277D74FC0], v173);
    sub_21B6C9224();
    v86 = sub_21B6C91D4();
    sub_21B6C8B24();
    v86(v188, 0);
    v87 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_21B6C92B4();
  }

  v169 = objc_opt_self();
  v88 = [v169 labelColor];
  sub_21B6C92C4();
  v89 = *(v176 + 104);
  v167 = *MEMORY[0x277D75020];
  v166 = v89;
  v89(v179);
  sub_21B6C91F4();
  sub_21B6C92A4();
  v90 = v181;
  sub_21B6C8724();
  v188[0] = [objc_opt_self() _preferredFontForTextStyle_weight_];
  sub_21B617808();
  sub_21B6C8744();
  v91 = sub_21B6C8D74();
  v92 = PBFLocalizedString(v91);

  sub_21B6C8DA4();
  v94 = v93;

  (*(v182 + 16))(v174, v90, v183);

  v95 = v175;
  v176 = v94;
  sub_21B6C8714();
  v96 = sub_21B6C8704();
  (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
  sub_21B6C9294();
  sub_21B61785C(0, &unk_28120B100);
  v97 = *(v187 + 16);
  v97(v185, v17, v11);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21B6C91B4();
  v98 = sub_21B6C9374();
  v99 = OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton;
  v100 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton];
  *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton] = v98;
  v101 = v98;

  [v101 setMaximumContentSizeCategory_];
  v102 = *&v1[v99];
  if (!v102)
  {
    __break(1u);
    goto LABEL_71;
  }

  v103 = v102;
  v104 = sub_21B6C8D74();
  [v103 setAccessibilityIdentifier_];

  v105 = *&v1[v99];
  if (!v105)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  [v105 setTintAdjustmentMode_];
  v106 = *&v1[v99];
  if (!v106)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  [v106 setPointerInteractionEnabled_];
  v107 = [v1 view];
  if (!v107)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!*&v1[v99])
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v108 = v107;
  [v107 addSubview_];

  v109 = *&v1[v99];
  if (!v109)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v110 = [v109 currentPreferredSymbolConfiguration];
  v111 = objc_opt_self();
  if (v110)
  {
    v112 = [v111 configurationWithWeight_];
    v113 = [v110 configurationByApplyingConfiguration_];

    v11 = v186;
  }

  else
  {
    v113 = [v111 configurationWithPointSize:7 weight:2 scale:18.0];
  }

  v114 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayAddButton;
  swift_beginAccess();
  if (v1[v114] == 1)
  {
    v175 = v113;
    v115 = v168;
    sub_21B6C92D4();
    if ((PUIFeatureEnabled() & 1) == 0)
    {
      v116 = v185;
      sub_21B6C9354();
      v117 = v187;
      (*(v187 + 8))(v115, v11);
      (*(v117 + 32))(v115, v116, v11);
      v118 = [v169 systemBlueColor];
      sub_21B6C92B4();
    }

    v119 = sub_21B6C8D74();
    v120 = [objc_opt_self() systemImageNamed_];

    v11 = v186;
    sub_21B6C9304();
    v121 = v175;
    sub_21B6C91C4();
    v122 = [v169 whiteColor];
    sub_21B6C92C4();
    v166(v179, v167, v180);
    sub_21B6C91F4();
    (*(v172 + 104))(v171, *MEMORY[0x277D74FD8], v173);
    sub_21B6C9224();
    v97(v185, v115, v11);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21B6C91B4();
    v123 = sub_21B6C9374();
    [v123 setMaximumContentSizeCategory_];
    v124 = sub_21B6C8D74();
    [v123 setAccessibilityIdentifier_];

    [v123 setTintAdjustmentMode_];
    [v123 setPointerInteractionEnabled_];
    v125 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_addPosterButton];
    *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_addPosterButton] = v123;
    v126 = v123;

    v127 = [v1 view];
    if (!v127)
    {
      goto LABEL_99;
    }

    v128 = v127;
    [v127 addSubview_];

    (*(v187 + 8))(v115, v11);
    v113 = v175;
  }

  else
  {
    v129 = OBJC_IVAR___PBFPosterRackCollectionViewController_addPosterButton;
    v130 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_addPosterButton];
    if (v130)
    {
      [v130 removeFromSuperview];
      v131 = *&v1[v129];
    }

    else
    {
      v131 = 0;
    }

    *&v1[v129] = 0;
  }

  v132 = OBJC_IVAR___PBFPosterRackCollectionViewController_actionsMenuButton;
  v133 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_actionsMenuButton];
  if (v133)
  {
    [v133 removeFromSuperview];
    v134 = *&v1[v132];
  }

  else
  {
    v134 = 0;
  }

  *&v1[v132] = 0;

  v135 = [objc_allocWithZone(MEMORY[0x277D757E0]) initWithFrame_];
  v136 = OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl;
  v137 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl];
  *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl] = v135;
  v138 = v135;

  if (!v138)
  {
    goto LABEL_76;
  }

  [v138 setHidesForSinglePage_];

  v139 = *&v1[v136];
  if (!v139)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  [v139 setAllowsContinuousInteraction_];
  v140 = *&v1[v136];
  if (!v140)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  [v140 _setPreferredNumberOfVisibleIndicators_];
  v141 = *&v1[v136];
  if (!v141)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  [v141 _setCustomVerticalPadding_];
  v142 = *&v1[v136];
  if (!v142)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  [v142 addTarget:v1 action:sel_pageControlDidChangePage_ forControlEvents:4096];
  v143 = *&v1[v136];
  if (!v143)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  [v143 setMaximumContentSizeCategory_];
  v144 = *&v1[v136];
  if (!v144)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v145 = v144;
  v146 = sub_21B6C8D74();
  [v145 setAccessibilityIdentifier_];

  v147 = *&v1[v136];
  if (!v147)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v147 setTintAdjustmentMode_];
  v148 = [v1 collectionView];
  if (!v148)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v149 = v148;
  v150 = [v148 numberOfSections];

  v151 = *&v1[v136];
  if (!v151)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if ([v151 numberOfPages] != v150)
  {
    v152 = *&v1[v136];
    if (!v152)
    {
LABEL_100:
      __break(1u);
      return;
    }

    [v152 setNumberOfPages_];
    sub_21B67BCBC(0, 1);
  }

  v153 = [v1 view];
  if (!v153)
  {
    goto LABEL_86;
  }

  if (!*&v1[v136])
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v154 = v153;
  [v153 addSubview_];

  v155 = [objc_allocWithZone(type metadata accessor for HomeScreenConfigurationView()) initWithFrame_];
  v156 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView;
  v157 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView];
  *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView] = v155;
  v158 = v155;

  if (!v158)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  [v158 setLayoutMargins_];

  v159 = [v1 view];
  if (!v159)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (!*&v1[v156])
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (!*&v1[v99])
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v160 = v159;
  [v159 insertSubview_belowSubview_];

  v161 = *&v1[v156];
  v162 = v184;
  if (!v161)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v163 = v161;

  *&v163[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_delegate + 8] = &off_282CD23F0;
  swift_unknownObjectWeakAssign();

  v164 = [*(*&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore] + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v165 = [v164 currentGalleryConfiguration];

  if (v165)
  {
    [*&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_galleryDataProvider] configureForGallery_];
  }

  sub_21B672440();

  (*(v182 + 8))(v181, v183);
  (*(v187 + 8))(v162, v11);
}

void sub_21B68A36C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21B67A8F0();
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = v1;
      v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen;
      swift_beginAccess();
      if ((v1[v5] & 1) != 0 && *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode] == 4)
      {
        v6 = swift_allocObject();
        v6[2] = sub_21B69FA4C;
        v6[3] = v4;
        v7 = v1;
        swift_unknownObjectRetain();

        PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(6, 1, 0, sub_21B657C88, v6);

        swift_unknownObjectRelease();
      }

      else
      {
        v8 = v1;
        [v3 posterRackCollectionViewControllerDidPressDone_];
      }
    }

    else
    {
    }
  }
}

void sub_21B68A500()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21B67A6D8();
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = v1;
      v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen;
      swift_beginAccess();
      if ((v1[v5] & 1) != 0 && *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode] == 4)
      {
        v6 = swift_allocObject();
        v6[2] = sub_21B69F640;
        v6[3] = v4;
        v7 = v1;
        swift_unknownObjectRetain();

        PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(6, 1, 0, sub_21B656728, v6);

        swift_unknownObjectRelease();
      }

      else
      {
        v8 = v1;
        [v3 posterRackCollectionViewControllerDidPressDone_];
      }
    }

    else
    {
      if (*&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode] == 4)
      {
        PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(1, 1, 0, 0, 0);
      }
    }
  }
}

void sub_21B68A6C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v39 - v2;
  v4 = sub_21B6C8A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_21B68C3A0(v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_21B62AA8C(v3, &qword_27CD93500);
      return;
    }

    (*(v5 + 32))(v7, v3, v4);
    v10 = *&v9[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
    v11 = sub_21B6C89F4();
    v12 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    swift_beginAccess();
    v13 = *&v10[v12];
    if ((v13 & 0xC000000000000001) == 0)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v10 = *(v13 + v11 + 4);
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_38;
    }

    v10 = MEMORY[0x21CEF66E0](v11, v13);

LABEL_8:
    if (([*&v10[OBJC_IVAR___PBFPosterPair_configuration] pbf_isLegacy] & 1) == 0)
    {
      v42 = &type metadata for PosterRackFeatures;
      v43 = sub_21B62C9EC();
      LOBYTE(aBlock[0]) = 5;
      v22 = sub_21B6C8A54();
      __swift_destroy_boxed_opaque_existential_0(aBlock);
      if (v22)
      {
        sub_21B681418(v7);
      }

      else
      {
        PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(3, 1, 0, 0, 0);
      }

      goto LABEL_33;
    }

    v14 = [objc_opt_self() sharedInstance];
    v13 = [v14 dataStore];

    v0 = [objc_allocWithZone(PBFLegacyPosterMigrationHelper) initWithDataStore:v13 legacyPosterPair:v10];
    if (![v0 canMigrateLegacyPoster])
    {
      if (![v0 canMigrateLegacyLockPoster])
      {
        if (qword_27CD925D8 != -1)
        {
          swift_once();
        }

        v40 = v13;
        v29 = sub_21B6C8AB4();
        __swift_project_value_buffer(v29, qword_27CD94DC0);
        v30 = sub_21B6C8A94();
        v31 = sub_21B6C9044();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_21B526000, v30, v31, "Unable to migrate legacy poster, unsupported configuration", v32, 2u);
          MEMORY[0x21CEF8150](v32, -1, -1);
        }

        v33 = [v0 migrationInfo];
        v34 = sub_21B6C8D74();
        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        *(v35 + 24) = 0xBFF0000000000000;
        *(v35 + 32) = xmmword_21B6D9880;
        v43 = sub_21B65A898;
        v44 = v35;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21B65A4F8;
        v42 = &block_descriptor_716;
        v36 = _Block_copy(aBlock);
        v37 = v33;

        AnalyticsSendEventLazy();
        _Block_release(v36);

        v38 = *&v9[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton];
        if (v38)
        {
          v21 = v38;
          sub_21B680CAC(v21);

          goto LABEL_32;
        }

LABEL_41:
        __break(1u);
        return;
      }

      v23 = *&v9[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper];
      *&v9[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper] = v0;
      v0 = v0;

      if (qword_27CD925D8 != -1)
      {
        swift_once();
      }

      v24 = sub_21B6C8AB4();
      __swift_project_value_buffer(v24, qword_27CD94DC0);
      v25 = sub_21B6C8A94();
      v26 = sub_21B6C9044();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_21B526000, v25, v26, "Unable to fully migrate legacy poster, unsupported configuration. Prompting user.", v27, 2u);
        MEMORY[0x21CEF8150](v27, -1, -1);
      }

      v28 = *&v9[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton];
      if (v28)
      {
        v21 = v28;
        sub_21B680338(v21);
        goto LABEL_24;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v15 = *&v9[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper];
    *&v9[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper] = v0;
    v0 = v0;

    if (qword_27CD925D8 == -1)
    {
LABEL_11:
      v16 = sub_21B6C8AB4();
      __swift_project_value_buffer(v16, qword_27CD94DC0);
      v17 = sub_21B6C8A94();
      v18 = sub_21B6C9044();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_21B526000, v17, v18, "Able to migrate legacy poster, prompting user", v19, 2u);
        MEMORY[0x21CEF8150](v19, -1, -1);
      }

      v20 = *&v9[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton];
      if (v20)
      {
        v21 = v20;
        sub_21B67FD1C(v21);
LABEL_24:

LABEL_32:
        v10 = v9;
        v9 = v21;
LABEL_33:

        (*(v5 + 8))(v7, v4);
        return;
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    swift_once();
    goto LABEL_11;
  }
}

void sub_21B68AE04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21B67AF40(0, 0, 0);
  }
}

void sub_21B68AE64()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v33 - v3;
  v5 = sub_21B6C8A04();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___PBFPosterRackCollectionViewController_actionsMenuButton;
  v10 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_actionsMenuButton];
  if (v10 && (v11 = [v10 menu]) != 0)
  {
    v12 = v11;
    v13 = [v11 children];

    sub_21B61785C(0, &unk_27CD941D0);
    v14 = sub_21B6C8E84();
  }

  else
  {
    v14 = 0;
  }

  v35 = v14;
  sub_21B68C3A0(v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v15 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
    v16 = sub_21B6C89F4();
    v17 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    swift_beginAccess();
    v18 = *(v15 + v17);
    if ((v18 & 0xC000000000000001) == 0)
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v16 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v19 = *(v18 + 8 * v16 + 32);
LABEL_12:
        v20 = *&v19[OBJC_IVAR___PBFPosterPair_configuration];

        v21 = [v20 pbf_isLegacy];
        if (v21)
        {
          if (!v14)
          {
            goto LABEL_17;
          }

          v22 = v1;
          v18 = sub_21B69948C(&v35);

          if (!(v35 >> 62))
          {
            v23 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v23 < v18)
            {
LABEL_36:
              __break(1u);
              return;
            }

            goto LABEL_16;
          }

LABEL_35:
          v23 = sub_21B6C9454();
          if (v23 < v18)
          {
            goto LABEL_36;
          }

LABEL_16:
          sub_21B699DD8(v18, v23, &unk_27CD941D0);
LABEL_17:
          (*(v6 + 8))(v8, v5);
          if (!v35)
          {
            return;
          }

          goto LABEL_23;
        }

        v24 = *(v6 + 8);
        v6 += 8;
        v24(v8, v5);
        if (!v14)
        {
          return;
        }

        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_33;
    }

    v19 = MEMORY[0x21CEF66E0](v16, v18);

    goto LABEL_12;
  }

  sub_21B62AA8C(v4, &qword_27CD93500);
  if (!v14)
  {
    return;
  }

LABEL_20:
  v25 = sub_21B67A140();
  v5 = v33;
  v34 = v25;
  MEMORY[0x28223BE20](v25);
  v33[-2] = &v34;
  v18 = sub_21B66FADC(sub_21B69C744, &v33[-4], v14);

  if (v18)
  {
LABEL_26:

    return;
  }

  v16 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___duplicateAction];
  if (!(v35 >> 62))
  {
    goto LABEL_22;
  }

LABEL_33:
  if (sub_21B6C9454() < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_22:
  v26 = v16;
  sub_21B699840(0, 0, v26);

  if (!v35)
  {
    return;
  }

LABEL_23:
  v27 = *&v1[v9];
  if (!v27)
  {
    goto LABEL_26;
  }

  v28 = v27;
  v29 = [v28 menu];
  if (v29)
  {
    v30 = v29;
    sub_21B61785C(0, &unk_27CD941D0);
    v31 = sub_21B6C8E74();
    v32 = [v30 menuByReplacingChildren_];
  }

  else
  {
    v32 = 0;
  }

  [v28 setMenu_];
}

void sub_21B68B368(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a4;
  v7 = sub_21B6C8964();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v35 = a1;
  v34 = [a1 collectionView];
  if (v34)
  {
    v14 = *(v8 + 16);
    v32 = v14;
    v14(v13, a2, v7);
    v28 = a3;
    v14(v11, a3, v7);
    v15 = *(v8 + 80);
    v16 = (v15 + 24) & ~v15;
    v30 = v16;
    v31 = v16 + v9;
    v17 = (v16 + v9 + v15) & ~v15;
    v18 = swift_allocObject();
    *(v18 + 16) = v35;
    v19 = *(v8 + 32);
    v19(v18 + v16, v13, v7);
    v19(v18 + v17, v11, v7);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_21B69EE34;
    *(v20 + 24) = v18;
    v40 = sub_21B668834;
    v41 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_21B647820;
    v39 = &block_descriptor_551;
    v29 = _Block_copy(&aBlock);
    v21 = v35;

    v32(v13, v28, v7);
    v22 = v31;
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    v19(v23 + v30, v13, v7);
    *(v23 + v22) = v33 & 1;
    v40 = sub_21B69EEC4;
    v41 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_21B647848;
    v39 = &block_descriptor_557;
    v24 = _Block_copy(&aBlock);
    v25 = v21;

    v26 = v34;
    v27 = v29;
    [v34 performBatchUpdates:v29 completion:v24];
    _Block_release(v24);
    _Block_release(v27);
  }

  else
  {
    __break(1u);
  }
}

void sub_21B68B6E0(char *a1)
{
  v2 = *&a1[OBJC_IVAR___PBFPosterRackCollectionViewController_layout];
  sub_21B62D8AC();

  v3 = [a1 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = sub_21B6C88F4();
  [v4 deleteSections_];

  v6 = [a1 collectionView];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_21B6C88F4();
  [v7 insertSections_];
}

id sub_21B68B7E4(int a1, char *a2, uint64_t a3, char a4)
{
  if (*&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode])
  {
    v6 = sub_21B6C8904();
    if ((v7 & 1) == 0)
    {
      sub_21B690260(v6, a4 & 1, 0);
    }
  }

  result = [a2 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  v10 = [result numberOfSections];

  v11 = OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl;
  result = *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = [result numberOfPages];
  if (result == v10)
  {
    return result;
  }

  result = *&a2[v11];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setNumberOfPages_];
  return sub_21B67BCBC(0, 1);
}

void sub_21B68B8C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v34 = a1;
  v4 = sub_21B6C8A04();
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  BSDispatchQueueAssertMain();
  v10 = [v3 collectionView];
  if (!v10)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = v10;
  v12 = [v10 preparedCells];

  if (!v12)
  {
LABEL_35:
    __break(1u);
    return;
  }

  sub_21B61785C(0, &unk_28120B2A8);
  v13 = sub_21B6C8E84();

  if (v13 >> 62)
  {
LABEL_29:
    v14 = sub_21B6C9454();
    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_5:
      v40 = v4;
      v41 = v13 & 0xC000000000000001;
      v33 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
      swift_beginAccess();
      v15 = 0;
      v37 = (v5 + 32);
      v35 = v13 & 0xFFFFFFFFFFFFFF8;
      v36 = (v5 + 8);
      v32 = v3;
      while (1)
      {
        if (v41)
        {
          v16 = MEMORY[0x21CEF66E0](v15, v13);
        }

        else
        {
          if (v15 >= *(v35 + 16))
          {
            goto LABEL_26;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v4 = v16;
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        type metadata accessor for PosterPairCollectionViewCell();
        v18 = swift_dynamicCastClass();
        if (!v18)
        {
          goto LABEL_7;
        }

        v19 = v18;
        v20 = [v3 collectionView];
        if (!v20)
        {
          __break(1u);
          goto LABEL_34;
        }

        v21 = v20;
        v5 = [v20 indexPathForCell_];

        if (!v5)
        {
          goto LABEL_7;
        }

        v22 = v38;
        sub_21B6C8994();

        v23 = v22;
        v24 = v40;
        (*v37)(v9, v23, v40);
        sub_21B6C89F4();
        v5 = v39;
        if ((sub_21B6C8944() & 1) == 0)
        {
          break;
        }

        v25 = sub_21B6C89F4();
        v26 = v25;
        v5 = *(v34 + v33);
        if ((v5 & 0xC000000000000001) != 0)
        {

          v30 = MEMORY[0x21CEF66E0](v26, v5);

          v27 = v30;
        }

        else
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          if (v25 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v27 = *(v5 + 8 * v25 + 32);
        }

        v28 = *&v19[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair];
        *&v19[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair] = v27;
        v29 = v27;
        v5 = v19;
        sub_21B63E104(v28);

        (*v36)(v9, v40);
        v3 = v32;
LABEL_8:
        ++v15;
        if (v17 == v14)
        {
          goto LABEL_32;
        }
      }

      (*v36)(v9, v24);
LABEL_7:

      goto LABEL_8;
    }
  }

LABEL_32:
}

id sub_21B68BCC8@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  result = [v4 collectionView];
  if (!result)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = result;
  [result visibleSize];
  v20 = v19;
  v22 = v21;

  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = v20;
  v44.size.height = v22;
  if (CGRectIsEmpty(v44))
  {
    result = [v4 collectionView];
    if (result)
    {
      v23 = result;
      v24 = [result indexPathsForVisibleItems];

      v25 = sub_21B6C8A04();
      v26 = sub_21B6C8E84();

      if (*(v26 + 16))
      {
        v42 = *(v25 - 8);
        (*(v42 + 16))(a1, v26 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v25);

        v27 = *(v42 + 56);
        v28 = a1;
        v29 = 0;
      }

      else
      {

        v27 = *(*(v25 - 8) + 56);
        v28 = a1;
        v29 = 1;
      }

      return v27(v28, v29, 1, v25);
    }

    goto LABEL_24;
  }

  v45.origin.x = a2;
  v45.origin.y = a3;
  v45.size.width = v20;
  v45.size.height = v22;
  MidX = CGRectGetMidX(v45);
  v46.origin.x = a2;
  v46.origin.y = a3;
  v46.size.width = v20;
  v46.size.height = v22;
  MidY = CGRectGetMidY(v46);
  result = [v4 collectionView];
  if (!result)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v32 = result;
  v33 = [result indexPathForItemAtPoint_];

  if (v33)
  {
    sub_21B6C8994();

    v34 = sub_21B6C8A04();
    (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
  }

  else
  {
    v34 = sub_21B6C8A04();
    (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
  }

  sub_21B69F13C(v14, v16, &qword_27CD93500);
  sub_21B63D2BC(v16, v11, &qword_27CD93500);
  sub_21B6C8A04();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v11, 1, v34) != 1)
  {
    sub_21B62AA8C(v16, &qword_27CD93500);
    (*(v35 + 32))(a1, v11, v34);
    return (*(v35 + 56))(a1, 0, 1, v34);
  }

  result = [v4 collectionView];
  if (!result)
  {
    goto LABEL_26;
  }

  v37 = result;
  v38 = [result indexPathsForVisibleItems];

  v39 = sub_21B6C8E84();
  if (*(v39 + 16))
  {
    (*(v35 + 16))(a1, v39 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v34);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  sub_21B62AA8C(v16, &qword_27CD93500);
  (*(v35 + 56))(a1, v40, 1, v34);
  result = (v36)(v11, 1, v34);
  if (result != 1)
  {
    return sub_21B62AA8C(v11, &qword_27CD93500);
  }

  return result;
}

id sub_21B68C3A0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result contentOffset];
    v14 = v13;
    v16 = v15;

    sub_21B68BCC8(v6, v14, v16);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_21B62AA8C(v6, &qword_27CD93500);
LABEL_9:
      v22 = 1;
      return (*(v8 + 56))(a1, v22, 1, v7);
    }

    v17 = *(v8 + 32);
    v17(v10, v6, v7);
    v18 = sub_21B6C89F4();
    v19 = *&v2[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
    v20 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    swift_beginAccess();
    v21 = *(v19 + v20);
    if (v21 >> 62)
    {
      if (v18 < sub_21B6C9454())
      {
        goto LABEL_6;
      }
    }

    else if (v18 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v17(a1, v10, v7);
      v22 = 0;
      return (*(v8 + 56))(a1, v22, 1, v7);
    }

    (*(v8 + 8))(v10, v7);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B68C674()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_21B6C8A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B68C3A0(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21B62AA8C(v3, &qword_27CD93500);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
  v10 = sub_21B6C89F4();
  v11 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  result = swift_beginAccess();
  v12 = *(v9 + v11);
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = MEMORY[0x21CEF66E0](v10, v12);

    goto LABEL_7;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = *(v12 + 8 * v10 + 32);
LABEL_7:
  (*(v5 + 8))(v7, v4);
  return v13;
}

void sub_21B68C888()
{
  v1 = &selRef_snapshotCollection;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_68;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [v0 traitCollection];
  [v12 displayScale];
  v14 = v13;

  CGAffineTransformMakeScale(&v148, 0.7, 0.7);
  v149.origin.x = v5;
  v149.origin.y = v7;
  v149.size.width = v9;
  v149.size.height = v11;
  CGRectApplyAffineTransform(v149, &v148);
  v137 = v14;
  UIRectCenteredIntegralRectScale();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v150.origin.x = v5;
  v150.origin.y = v7;
  v150.size.width = v9;
  v150.size.height = v11;
  CGRectGetMinX(v150);
  v151.origin.x = v16;
  v151.origin.y = v18;
  v151.size.width = v20;
  v151.size.height = v22;
  CGRectGetMaxY(v151);
  v152.origin.x = v5;
  v152.origin.y = v7;
  v152.size.width = v9;
  v152.size.height = v11;
  CGRectGetWidth(v152);
  v142 = v5;
  v153.origin.x = v5;
  v153.origin.y = v7;
  v141 = v9;
  v153.size.width = v9;
  rect = v11;
  v153.size.height = v11;
  CGRectGetHeight(v153);
  v145 = v18;
  v146 = v16;
  v154.origin.x = v16;
  v154.origin.y = v18;
  v143 = v22;
  v144 = v20;
  v154.size.width = v20;
  v154.size.height = v22;
  CGRectGetMaxY(v154);
  v23 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView];
  if (!v23)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v24 = v23;
  UIRectRoundToScale();
  [v24 setFrame_];

  v25 = OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl;
  v26 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl];
  if (!v26)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  [v26 sizeForNumberOfPages_];
  v28 = v27;
  v155.origin.x = v146;
  v155.origin.y = v18;
  v155.size.width = v20;
  v155.size.height = v22;
  MinX = CGRectGetMinX(v155);
  v156.origin.x = v146;
  v156.origin.y = v18;
  v156.size.width = v20;
  v156.size.height = v22;
  MaxY = CGRectGetMaxY(v156);
  v157.origin.x = v146;
  v157.origin.y = v18;
  v157.size.width = v20;
  v157.size.height = v22;
  Width = CGRectGetWidth(v157);
  v158.origin.y = v7;
  v30 = v142;
  v158.origin.x = v142;
  v158.size.width = v141;
  v158.size.height = v11;
  Height = CGRectGetHeight(v158);
  v159.origin.x = v146;
  v159.origin.y = v18;
  v159.size.width = v20;
  v159.size.height = v143;
  v32 = CGRectGetMaxY(v159);
  v33 = OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton;
  v34 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton];
  if (!v34)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v140 = v28;
  v35 = Height - v32 - (v28 + v28) + -8.0;
  [v34 sizeThatFits_];
  v36 = [v0 traitCollection];
  v37 = [v36 userInterfaceIdiom];

  if (v37 == 1)
  {
    v39 = v141;
    v38 = v7;
    v40 = v11;
  }

  else
  {
    v160.origin.x = v142;
    v39 = v141;
    v38 = v7;
    v160.origin.y = v7;
    v160.size.width = v141;
    v40 = v11;
    v160.size.height = v11;
    CGRectGetWidth(v160);
    PUIFeatureEnabled();
    v30 = v142;
    v161.origin.y = MaxY;
    v161.origin.x = MinX;
    v161.size.width = Width;
    v161.size.height = v35;
    CGRectGetHeight(v161);
  }

  BSSizeCeilForScale();
  v42 = v41;
  PUIFeatureEnabled();
  v162.origin.x = v30;
  v162.origin.y = v38;
  v162.size.width = v39;
  v162.size.height = v40;
  CGRectGetMidX(v162);
  v163.origin.x = v30;
  v163.origin.y = v38;
  v163.size.width = v39;
  v163.size.height = v40;
  CGRectGetMaxY(v163);
  v164.origin.x = v30;
  v43 = v38;
  v164.origin.y = v38;
  v44 = v39;
  v164.size.width = v39;
  v164.size.height = v40;
  CGRectGetMaxY(v164);
  v165.origin.y = v145;
  v165.origin.x = v146;
  v165.size.height = v143;
  v165.size.width = v144;
  CGRectGetMaxY(v165);
  v45 = *&v0[v33];
  if (!v45)
  {
    goto LABEL_71;
  }

  v46 = v45;
  v47 = v42;
  BSRectWithSize();
  UIRectCenteredAboutPointScale();
  [v46 setFrame_];

  v48 = v43;
  v49 = v142;
  if (PUIFeatureEnabled())
  {
    goto LABEL_15;
  }

  v50 = [v0 traitCollection];
  v51 = [v50 userInterfaceIdiom];

  if (v51 == 1)
  {
    goto LABEL_15;
  }

  v52 = v44;
  v166.origin.y = v145;
  v166.origin.x = v146;
  v166.size.height = v143;
  v166.size.width = v144;
  v53 = CGRectGetMaxY(v166);
  v54 = *&v0[v33];
  if (!v54)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v55 = v140 + v53 + 12.0 + 12.0;
  [v54 frame];
  v56 = v55 < CGRectGetMinY(v167);
  v44 = v52;
  v48 = v43;
  v49 = v142;
  if (!v56)
  {
LABEL_15:
    v169.origin.y = v145;
    v169.origin.x = v146;
    v169.size.height = v143;
    v169.size.width = v144;
    CGRectGetMaxY(v169);
    v57 = *&v0[v33];
    if (!v57)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    [v57 frame];
    CGRectGetMinY(v170);
  }

  else
  {
    v168.origin.y = v145;
    v168.origin.x = v146;
    v168.size.height = v143;
    v168.size.width = v144;
    CGRectGetMaxY(v168);
  }

  v58 = v42;
  v171.origin.x = v49;
  v171.origin.y = v48;
  v171.size.width = v44;
  v171.size.height = rect;
  CGRectGetMidX(v171);
  v59 = *&v0[v25];
  if (!v59)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v60 = v59;
  BSRectWithSize();
  UIRectCenteredAboutPointScale();
  [v60 setFrame_];

  v61 = [v0 traitCollection];
  v62 = [v61 userInterfaceIdiom];

  if (v62 == 1)
  {
    v63 = *&v0[v33];
    if (!v63)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    [v63 frame];
    MinY = CGRectGetMinY(v172);
    v173.origin.y = v145;
    v173.origin.x = v146;
    v173.size.height = v143;
    v173.size.width = v144;
    *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_headerBottomEdgeSpacing] = (MinY - CGRectGetMaxY(v173) - v140) * 0.5;
  }

  if ((PUIFeatureEnabled() & 1) == 0)
  {
    v65 = [v0 traitCollection];
    v66 = [v65 userInterfaceIdiom];

    if (v66 != 1)
    {
      v58 = v47 + -8.0;
    }
  }

  v67 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_addPosterButton];
  v68 = &selRef_collectionViewLayout;
  if (v67)
  {
    v69 = v67;
    BSSizeCeilForScale();
    BSRectWithSize();
    [v69 setBounds_];
    v70 = [v0 view];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 effectiveUserInterfaceLayoutDirection];

      if (PUIFeatureEnabled())
      {
        v73 = v49;
        v174.origin.x = v49;
        v74 = v48;
        v174.origin.y = v48;
        v75 = v44;
        v174.size.width = v44;
        v174.size.height = rect;
        v76 = CGRectGetMaxY(v174);
        v77 = *&v0[v33];
        if (!v77)
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v78 = v76;
        [v77 frame];
        v79 = v78 - CGRectGetMaxY(v175);
        v80 = v58 * 0.5;
        v81 = v73;
        v82 = v74;
        v83 = v75;
        v84 = rect;
        if (v72)
        {
          v85 = v80 + v79 + CGRectGetMinX(*&v81);
        }

        else
        {
          v85 = CGRectGetMaxX(*&v81) - v79 - v80;
        }
      }

      else
      {
        v86 = [v0 &selRef_supportsPosterTitle];
        v87 = [v86 userInterfaceIdiom];

        if (v87 != 1)
        {
          if (v72)
          {
            v176.origin.x = v49;
            v176.origin.y = v48;
            v176.size.width = v44;
            v176.size.height = rect;
            v90 = CGRectGetMinX(v176);
            v91 = *&v0[v33];
            if (!v91)
            {
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

            v92 = v44;
            MaxX = v90;
            [v91 frame];
            v94 = CGRectGetMinX(v177);
            v73 = v49;
            v178.origin.x = v49;
            v74 = v48;
            v178.origin.y = v48;
            v75 = v92;
            v178.size.width = v92;
            v178.size.height = rect;
            v95 = v94 - CGRectGetMinX(v178);
            v1 = &selRef_snapshotCollection;
            v68 = &selRef_collectionViewLayout;
          }

          else
          {
            v125 = *&v0[v33];
            if (!v125)
            {
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            v73 = v49;
            v74 = v48;
            v75 = v44;
            [v125 frame];
            MaxX = CGRectGetMaxX(v186);
            v187.origin.x = v73;
            v187.origin.y = v74;
            v187.size.width = v75;
            v187.size.height = rect;
            v126 = CGRectGetMaxX(v187);
            v127 = *&v0[v33];
            v1 = &selRef_snapshotCollection;
            v68 = &selRef_collectionViewLayout;
            if (!v127)
            {
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v128 = v126;
            [v127 frame];
            v95 = v128 - CGRectGetMaxX(v188);
          }

          v85 = MaxX + v95 * 0.5;
          v96 = *&v0[v33];
          if (v96)
          {
            goto LABEL_40;
          }

          goto LABEL_59;
        }

        v73 = v49;
        if (v72)
        {
          v74 = v48;
          v75 = v44;
          v88 = v58 * 0.5;
          v89 = 40.0;
        }

        else
        {
          v179.origin.x = v49;
          v74 = v48;
          v179.origin.y = v48;
          v75 = v44;
          v179.size.width = v44;
          v179.size.height = rect;
          v88 = CGRectGetMaxX(v179) + -40.0;
          v89 = v58 * -0.5;
        }

        v85 = v88 + v89;
        v1 = &selRef_snapshotCollection;
      }

      v68 = &selRef_collectionViewLayout;
      v96 = *&v0[v33];
      if (v96)
      {
LABEL_40:
        [v96 center];
        [v69 setCenter_];
        [v69 frame];
        BSPointRoundForScale();
        v98 = v97;
        v100 = v99;
        [v69 frame];
        [v69 setFrame_];

        v44 = v75;
        v48 = v74;
        v49 = v73;
        goto LABEL_41;
      }

LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

LABEL_41:
  v101 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_actionsMenuButton];
  if (!v101)
  {
    return;
  }

  v69 = v101;
  BSSizeCeilForScale();
  BSRectWithSize();
  [v69 setBounds_];
  v102 = [v0 v1[286]];
  if (!v102)
  {
    goto LABEL_75;
  }

  v103 = v102;
  v104 = [v102 v68[274]];

  if (!PUIFeatureEnabled())
  {
    v116 = [v0 traitCollection];
    v117 = [v116 userInterfaceIdiom];

    if (v117 != 1)
    {
      if (v104)
      {
        v118 = *&v0[v33];
        if (!v118)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v119 = v44;
        [v118 frame];
        v120 = CGRectGetMaxX(v183);
        v184.origin.x = v49;
        v184.origin.y = v48;
        v184.size.width = v119;
        v184.size.height = rect;
        v121 = CGRectGetMaxX(v184);
        v122 = *&v0[v33];
        if (!v122)
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v123 = v121;
        [v122 frame];
        v124 = CGRectGetMaxX(v185);
      }

      else
      {
        v189.origin.x = v49;
        v189.origin.y = v48;
        v189.size.width = v44;
        v189.size.height = rect;
        v129 = CGRectGetMinX(v189);
        v130 = *&v0[v33];
        if (!v130)
        {
LABEL_86:
          __break(1u);
          return;
        }

        v131 = v44;
        v120 = v129;
        [v130 frame];
        v123 = CGRectGetMinX(v190);
        v191.origin.x = v49;
        v191.origin.y = v48;
        v191.size.width = v131;
        v191.size.height = rect;
        v124 = CGRectGetMinX(v191);
      }

      v115 = v120 + (v123 - v124) * 0.5;
      goto LABEL_64;
    }

    if (v104)
    {
      v182.origin.x = v49;
      v182.origin.y = v48;
      v182.size.width = v44;
      v182.size.height = rect;
      v115 = CGRectGetMaxX(v182) + -40.0 + v58 * -0.5;
      goto LABEL_64;
    }

LABEL_60:
    v115 = v58 * 0.5 + 40.0;
    goto LABEL_64;
  }

  v180.origin.x = v49;
  v180.origin.y = v48;
  v105 = v44;
  v180.size.width = v44;
  v180.size.height = rect;
  v106 = CGRectGetMaxY(v180);
  v107 = *&v0[v33];
  if (!v107)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v108 = v106;
  [v107 frame];
  v109 = v108 - CGRectGetMaxY(v181);
  v110 = v58 * 0.5;
  v111 = v49;
  v112 = v48;
  v113 = v105;
  v114 = rect;
  if (v104)
  {
    v115 = CGRectGetMaxX(*&v111) - v109 - v110;
  }

  else
  {
    v115 = v110 + v109 + CGRectGetMinX(*&v111);
  }

LABEL_64:
  v132 = *&v0[v33];
  if (!v132)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v132 center];
  [v69 setCenter_];
  [v69 frame];
  BSPointRoundForScale();
  v134 = v133;
  v136 = v135;
  [v69 frame];
  [v69 setFrame_];
}