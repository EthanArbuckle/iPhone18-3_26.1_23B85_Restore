uint64_t sub_188B0FAB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188B0FBB8(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    [v1 set:v3 view:?];
    v4 = [v3 _outermostLayer];
    v5 = *&v1[OBJC_IVAR____UIFlexInteraction_animationContext];
    MEMORY[0x1EEE9AC00](v4);
    os_unfair_lock_lock((v5 + 48));
    sub_188EA9A38((v5 + 16));
    os_unfair_lock_unlock((v5 + 48));
    [(UIView *)v3 _registerMultiLayerDelegate:v1];
    v6 = [v3 window];
    if (v6)
    {
      v7 = v6;
      v8 = [v2 panGesture];
      [v7 addGestureRecognizer_];
    }

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    aBlock[4] = sub_188EA9A7C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188CF2214;
    aBlock[3] = &block_descriptor_173_0;
    v12 = _Block_copy(aBlock);
    v13 = objc_opt_self();

    v14 = [v13 updateLinkForView:v3 actionHandler:v12];

    _Block_release(v12);

    [v2 setUpdateLink_];

    if ([v2 resolvedActivationMode] == 3)
    {
      [v2 activateIfPermitted];
    }
  }
}

uint64_t sub_188B0FE68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

_UIUpdateLinkTrackingWindow *_UIUpdateLinkMakeTrackingView(void *a1)
{
  if (!a1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIUpdateLink * _Nonnull _UIUpdateLinkMakeTrackingView(UIView *const  _Nonnull const __strong)"];
    [v9 handleFailureInFunction:v10 file:@"_UIUpdateLinkTracking.m" lineNumber:389 description:@"UIUpdateLink requires a non-null view."];
  }

  if (![a1 __isKindOfUIWindow])
  {
    objc_opt_self();
    v2 = [[_UIUpdateLinkTrackingView alloc] _init];
    v6 = [_UIUpdateLinkViewInteraction alloc];
    if (v6)
    {
      v11.receiver = v6;
      v11.super_class = _UIUpdateLinkViewInteraction;
      v7 = objc_msgSendSuper2(&v11, sel_init);
      v3 = v7;
      if (v7)
      {
        *(v7 + 2) = v2;
      }
    }

    else
    {
      v3 = 0;
    }

    v2[1].super.super.super.super.isa = v3;
    [a1 addInteraction:v3];
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_self();
  v2 = [_UIUpdateLinkTrackingWindow alloc];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = [a1 _windowHostingScene];
  v4 = [(_UIUpdateLinkTrackingScene *)v2 _initWithScene:v3];
  v2 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  [(_UIUpdateLinkTrackingWindow *)v4 _switchWindowFrom:a1 to:?];
  v2 = v2;

  v5 = [(_UIUpdateLinkTrackingWindow *)v2 _canEngage];
  if (v2->super.super.super._engaged != v5)
  {
    v2->super.super.super._engaged = v5;
    [(UIUpdateLink *)v2 _setActive:?];
  }

LABEL_13:

  return v2;
}

void UICollectionViewCommonSetup(void *a1)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1[269] _setCollectionView:v1];
  v2 = objc_alloc_init(_UICollectionViewSelectionController);
  v3 = v1[372];
  v1[372] = v2;

  v4 = [[_UICollectionViewSubviewManager alloc] initWithCollectionView:v1];
  v5 = v1[373];
  v1[373] = v4;

  v6 = v1[373];
  if (v6)
  {
    v7 = v6[1];
    if (v7)
    {
      *(v7 + 32) = 1;
    }
  }

  v8 = objc_opt_new();
  v9 = v1[390];
  v1[390] = v8;

  v10 = [[UICollectionViewData alloc] initWithCollectionView:v1 layout:v1[269]];
  v11 = v1[284];
  v1[284] = v10;

  v1[341] = (v1[341] | 0x400);
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = v1[353];
  v1[353] = v12;

  [v1 _updateBackgroundColorIfNeeded];
  [v1 _updateContentFocusContainerGuides];
  v14 = +[_UIDragSnappingFeedbackGeneratorConfiguration defaultConfiguration];
  v15 = [v14 tweakedConfigurationForClass:objc_opt_class() usage:@"reorder"];

  v16 = [(UIFeedbackGenerator *)[_UIDragSnappingFeedbackGenerator alloc] initWithConfiguration:v15 view:v1];
  v17 = v1[329];
  v1[329] = v16;

  v18 = v1[269];
  v19 = v1;
  v59 = v19;
  if (v18)
  {
    v20 = [v19 effectiveUserInterfaceLayoutDirection];
    if (v20 == [v18 developmentLayoutDirection])
    {
      v21 = [v59 _flipsHorizontalAxis];
      v22 = v59;
      if (!v21)
      {
        goto LABEL_10;
      }

      v23 = 0;
    }

    else
    {
      v23 = [v18 _wantsRightToLeftHorizontalMirroringIfNeeded];
      v22 = v59;
    }

    [v22 _setFlipsHorizontalAxis:{v23, v59}];
  }

LABEL_10:

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v59[13] = (v59[13] & 0xFFFFFFFFFFFFFBFFLL);
  }

  v24 = [v59 _prefetchingEnabledDefault];
  v60[684] = v60[684] & 0xFFFFFFFE | v24;
  if (_UISupportsIntrinsicContentSizeInvalidation())
  {
    v25 = 32;
  }

  else
  {
    v25 = 0;
  }

  v60[684] = v60[684] & 0xFFFFFF9F | v25;
  v26 = [[_UICollectionViewDragAndDropController alloc] initWithCollectionView:v60];
  v27 = *(v60 + 357);
  *(v60 + 357) = v26;

  *(v60 + 406) = 0;
  if (dyld_program_sdk_at_least())
  {
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v60 selector:sel__purgeReuseQueues name:@"UIApplicationDidReceiveMemoryWarningNotification" object:0];
  }

  if (dyld_program_sdk_at_least())
  {
    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v60 selector:sel__focusMovementDidFailNotification_ name:@"UIFocusMovementDidFailNotification" object:0];
  }

  v30 = [[_UICollectionViewSectionFocusGuideController alloc] initWithCollectionView:v60];
  v31 = *(v60 + 370);
  *(v60 + 370) = v30;

  v32 = [[_UICollectionViewOrthogonalScrollerSectionController alloc] initWithCollectionView:v60];
  v33 = *(v60 + 369);
  *(v60 + 369) = v32;

  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35 = *(v60 + 351);
  *(v60 + 351) = v34;

  v36 = [[_UICollectionViewMultiSelectController alloc] initWithCollectionView:v60];
  v37 = *(v60 + 371);
  *(v60 + 371) = v36;

  [v60 _updateSelectionIsKey];
  if (dyld_program_sdk_at_least())
  {
    v38 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_CollectionViewAllowsLayoutDuringUpdatesAndTransitions, @"CollectionViewAllowsLayoutDuringUpdatesAndTransitions", _UIInternalPreferenceUpdateBool);
    if (byte_1ED48AAC4)
    {
      v39 = 1;
    }

    else
    {
      v39 = v38;
    }
  }

  else
  {
    v39 = 0;
  }

  *(v60 + 341) = *(v60 + 341) & 0xE7FFFFFFFFFFFFFFLL | (v39 << 59) | (v39 << 60);
  v40 = objc_opt_new();
  [v40 setDelegate:v60];
  [v40 setEnabled:0];
  [v40 setSimulatePressesCallbacksForLegacyBehavior:1];
  [v60 addInteraction:v40];
  v41 = *(v60 + 394);
  *(v60 + 394) = v40;
  v42 = v40;

  *(v60 + 341) |= 0x20000uLL;
  v43 = [[_UICollectionViewTypeSelectController alloc] initWithCollectionView:v60];
  v44 = *(v60 + 403);
  *(v60 + 403) = v43;
  v45 = v43;

  v64[0] = 0x1EFE32560;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
  v47 = [v60 _registerForTraitTokenChanges:v46 withTarget:v60 action:sel__semanticContextTraitDidChange];

  v48 = _UITableTraitsAffectingSelectionIsKey();
  if ([v48 count])
  {
    v49 = [v60 _registerForTraitTokenChanges:v48 withTarget:v60 action:sel__updateSelectionIsKey];
  }

  v63 = 0x1EFE323C8;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  v51 = [v60 _registerForTraitTokenChanges:v50 withTarget:v60 action:sel__layoutDirectionTraitDidChange];

  v62[0] = 0x1EFE32590;
  v62[1] = 0x1EFE32398;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  v53 = [v60 _registerForTraitTokenChanges:v52 withTarget:v60 action:sel__updateVerticalScrollIndicatorVisibility];

  if (dyld_program_sdk_at_least())
  {
    v61[0] = 0x1EFE32440;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
    v55 = &selRef__invalidateLayoutForPreferredContentSizeCategoryTraitDidChange;
  }

  else
  {
    v61[0] = 0x1EFE323F8;
    v61[1] = 0x1EFE32410;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
    v55 = &selRef__resetPrefetchedCachedCells;
  }

  v56 = [v60 _registerForTraitTokenChanges:v54 withTarget:v60 action:*v55];

  [v60 _updateVerticalScrollIndicatorVisibility];
  v57 = +[_UIHDRUsageCoordinator sharedInstance];
  [(_UIHDRUsageCoordinator *)v57 applyConstrainedHDROverrideToView:v60];

  v58 = +[_UIHDRUsageCoordinator sharedInstance];

  [(_UIHDRUsageCoordinator *)v58 registerForDefaultDynamicRangeChanges:v60];
}

void sub_188B10D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v9 = v7[5].__vftable;
  if (v9)
  {
    v7[5].__shared_owners_ = v9;
    operator delete(v9);
  }

  std::vector<_UICollectionViewRTreeElement>::__destroy_vector::operator()[abi:nn200100](va);
  std::vector<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>::__destroy_vector::operator()[abi:nn200100](va);
  shared_weak_owners = v7[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  v11 = v7[2].__vftable;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v7);
  operator delete(v12);

  _Unwind_Resume(a1);
}

void std::shared_ptr<_UIRTreeContainerNode<unsigned long>>::__enable_weak_this[abi:nn200100]<_UIRTreeContainerNode<unsigned long>,_UIRTreeContainerNode<unsigned long>,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }
    }
  }
}

void _UIRTreeContainerNode<_UICollectionViewRTreeElement>::commonInit(int64x2_t *a1)
{
  a1[8].i64[0] = 0;
  a1[8].i64[1] = 0;
  a1[7] = vdupq_n_s64(0x7FF8000000000000uLL);
  v2 = a1[5].i64[1];
  v3 = a1[6].i64[0];
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[4].i64[1] - a1[4].i64[0]) >> 3) != (v3 - v2) >> 5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIRTreeContainerNode<_UICollectionViewRTreeElement>::commonInit() [T = _UICollectionViewRTreeElement]"];
    [v12 handleFailureInFunction:v13 file:@"_UIRTree.mm" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"_childFrames.size() == _childElements.size()"}];

    v2 = a1[5].i64[1];
    v3 = a1[6].i64[0];
  }

  if (v2 == v3)
  {
    v9 = a1[3].i64[0];
    v10 = a1[2].i64[1];
    if (v10 == v9)
    {
      return;
    }

    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    v5 = 0uLL;
    do
    {
      v14 = v5;
      v15 = v4;
      v11 = *v10;
      v10 += 2;
      _UIRTreeContainerNode<unsigned long>::boundingFrame(v16, v11);
      v4 = vminnmq_f64(v15, v16[0]);
      v5 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v15, v14), vaddq_f64(v16[0], v16[1])), v4);
    }

    while (v10 != v9);
  }

  else
  {
    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    v5 = 0uLL;
    do
    {
      v7 = *v2;
      v6 = v2[1];
      v2 += 2;
      v8 = vaddq_f64(v4, v5);
      v4 = vminnmq_f64(v4, v7);
      v5 = vsubq_f64(vmaxnmq_f64(v8, vaddq_f64(v7, v6)), v4);
    }

    while (v2 != v3);
  }

  a1[7] = v4;
  a1[8] = v5;
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_188B12578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t UICollectionViewLayoutCommonInit(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = *(a1 + 56);
  *(a1 + 56) = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = *(a1 + 64);
  *(a1 + 64) = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = *(a1 + 72);
  *(a1 + 72) = v12;

  result = [a1 flipsHorizontallyInOppositeLayoutDirection];
  if (result)
  {
    v15 = 8;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 240) = *(a1 + 240) & 0xF7 | v15;
  return result;
}

void _UICollectionViewCompositionalLayoutCommonInit(uint64_t a1, void *a2, void *a3, void *a4)
{
  *(a1 + 288) |= 1u;
  *(a1 + 288) |= 0x10u;
  *(a1 + 305) = 1;
  v7 = [a2 copy];
  v8 = *(a1 + 312);
  *(a1 + 312) = v7;

  v9 = [a3 copy];
  v10 = *(a1 + 320);
  *(a1 + 320) = v9;

  if (a4)
  {
    v11 = [a4 copy];
  }

  else
  {
    v11 = +[UICollectionViewCompositionalLayoutConfiguration defaultConfiguration];
  }

  v12 = v11;
  objc_storeStrong((a1 + 272), v11);
}

uint64_t _UIUpdateCollectionViewForScrollDirection(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = dyld_program_sdk_at_least();
    if (result)
    {
      v4 = a2 == 0;
      v5 = a2 == 0;
      v6 = !v4;
      [v3 _setDefaultAlwaysBounceVertical:v5 horizontal:v6];
      [v3 _setContentScrollsAlongYAxis:v5];

      return [v3 _setContentScrollsAlongXAxis:v6];
    }
  }

  return result;
}

void sub_188B13E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188B14258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188B143B0()
{
  v1 = (v0 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data);
  if (*(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 160))
  {
    v2 = v1[19];
    if (qword_1EA930918 != -1)
    {
      swift_once();
    }

    if (v2 != qword_1EA994EC8 && v1[19] != 3)
    {
      v3 = v1[9];
      if (v3 != qword_1EA994EC8)
      {
        v4 = *v1;
        v5 = *(*v1 + 16);
        if (v5)
        {

          v6 = 0;
          v7 = 0;
          v8 = 1 - v5;
          v9 = MEMORY[0x1E69E7CC0];
          while (2)
          {
            v10 = *(v4 + 16);
            if (v7 < v10)
            {
              v11 = v7 + 4;
              while (1)
              {
                v12 = *(v4 + 8 * v11);
                v13 = v8 + v11;
                if (v6)
                {
                  break;
                }

                if (v12 == v3 || v13 == 4)
                {
                  goto LABEL_23;
                }

                ++v11;
                v6 = v12 == v1[19];
                if (v11 - v10 == 4)
                {
                  goto LABEL_29;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_188B9DE3C(0, *(v9 + 2) + 1, 1, v9);
              }

              v15 = *(v9 + 2);
              v14 = *(v9 + 3);
              v16 = v15 + 1;
              if (v15 >= v14 >> 1)
              {
                v17 = sub_188B9DE3C((v14 > 1), v15 + 1, 1, v9);
                v16 = v15 + 1;
                v9 = v17;
              }

              *(v9 + 2) = v16;
              *&v9[8 * v15 + 32] = v12;
              if (v12 == v3)
              {
                goto LABEL_30;
              }

              v7 = v11 - 3;
              v6 = 1;
              if (v13 != 4)
              {
                continue;
              }

LABEL_23:

              v18 = *(v9 + 2);
              if (v18)
              {
                goto LABEL_26;
              }

              goto LABEL_31;
            }

            break;
          }

LABEL_29:
          __break(1u);
LABEL_30:

          v18 = *(v9 + 2);
          if (!v18)
          {
LABEL_31:

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v21 = Strong;
              sub_188A34624(0, &qword_1ED48FD80);
              v22 = sub_18A4A7518();

              [v21 splitViewControllerLayout:v0 didRequestToCollapseSplitViewControllerColumns:v22 inSplitViewControllerColumn:v1[19]];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return;
          }
        }

        else
        {
          v18 = *(MEMORY[0x1E69E7CC0] + 16);
          if (!v18)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        sub_18A4A8208();
        sub_188A34624(0, &qword_1ED48FD80);
        v19 = 32;
        do
        {
          sub_18A4A7C68();
          sub_18A4A81D8();
          sub_18A4A8218();
          sub_18A4A8228();
          sub_18A4A81E8();
          v19 += 8;
          --v18;
        }

        while (v18);
        goto LABEL_31;
      }
    }
  }
}

void sub_188B14778()
{
  v1 = (v0 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data);
  if (*(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 160))
  {
    v2 = v1[19];
    if (qword_1EA930918 != -1)
    {
      swift_once();
    }

    if (v2 != qword_1EA994EC8)
    {
      v3 = v1[10];
      v4 = v1[17];
      if (v3 == qword_1EA994EC8)
      {
        if (v4 == qword_1EA994EC8)
        {
          return;
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          return;
        }

        [Strong splitViewControllerLayout:v0 didRequestToDismissSplitViewControllerColumn:v4];
      }

      else
      {
        if (v4 != qword_1EA994EC8)
        {
          return;
        }

        v6 = swift_unknownObjectWeakLoadStrong();
        if (!v6)
        {
          return;
        }

        [v6 splitViewControllerLayout:v0 didRequestToPresentSplitViewControllerColumn:v3];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_188B15018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188B169F4()
{
  v1 = *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition);
  if (!v1)
  {
    return swift_unknownObjectRetain();
  }

  result = [v1 mutableNewLayout];
  if (!result)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

id sub_188B16A7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18A4A29D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_id];
  sub_18A4A29C8();
  v9 = sub_18A4A2988();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *v8 = v9;
  v8[1] = v11;
  v12 = &v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_animations];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_completion];
  *v13 = 0;
  v13[1] = 0;
  v14 = MEMORY[0x1E69E7CD0];
  *&v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_suspendedDelegateUpdateColumns] = MEMORY[0x1E69E7CD0];
  *&v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutableViewControllersWithSuspendedAppearanceTransitions] = v14;
  *&v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutablePreviousLayoutSnapshotView] = 0;
  v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_hasStarted] = 0;
  v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_hasCompleted] = 0;
  v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_isCommitted] = 0;
  v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_isCoordinated] = 0;
  v15 = OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutablePreviousLayout;
  *&v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutablePreviousLayout] = 0;
  *&v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutableNewLayout] = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_transitionCoordinatorAnimations] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_transitionCoordinatorCompletions] = v16;
  *&v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutableContainerView] = 0;
  v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutableIsAnimated] = 0;
  v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutableIsCancelled] = 0;
  v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutableIsInteractive] = 0;
  *&v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutablePercentComplete] = 0;
  *&v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutableTransitionDuration] = 0;
  *&v2[v15] = a1;
  v18.receiver = v2;
  v18.super_class = _UISplitViewControllerAdaptiveLayoutTransition;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_188B16CAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

unint64_t sub_188B16E54(_OWORD *a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_188B16FC0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_188C31B7C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_188B1707C(v16, a4 & 1);
    v11 = sub_188B16FC0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);
    v23 = *(v22 + 32);
    v24 = *(v22 + 48);
    v25 = a1[1];
    *v22 = *a1;
    *(v22 + 16) = v25;
    v26 = a1[3];
    *(v22 + 32) = a1[2];
    *(v22 + 48) = v26;

    sub_188A55B8C(v23);

    return sub_188A55B8C(v24);
  }

  else
  {

    return sub_188B17528(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_188B16FC0(uint64_t a1, unsigned __int8 a2)
{
  sub_18A4A8888();
  if (a2 <= 1u)
  {
    v4 = a2 != 0;
LABEL_5:
    MEMORY[0x18CFE37E0](v4);
    v5 = a1;
    goto LABEL_9;
  }

  if (a2 == 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (a1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

LABEL_9:
  MEMORY[0x18CFE37E0](v5);
  v6 = sub_18A4A88E8();

  return sub_188B173CC(a1, a2, v6);
}

uint64_t sub_188B1707C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D08);
  v41 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
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
    while (1)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v8 >= v13)
          {
            break;
          }

          v20 = v9[v8];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v12 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v41 & 1) == 0)
        {

          v3 = v39;
          goto LABEL_41;
        }

        v38 = 1 << *(v5 + 32);
        v3 = v39;
        if (v38 >= 64)
        {
          bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v38;
        }

        *(v5 + 16) = 0;
        goto LABEL_40;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = (v22 + (v21 << 6));
      v43 = *(v26 + 8);
      v27 = v26[3];
      v42 = v26[2];
      v28 = v26[4];
      v46 = v26[6];
      v47 = v26[5];
      v44 = *v26;
      v45 = v26[7];
      if ((v41 & 1) == 0)
      {

        sub_188A52E38(v28);
        sub_188A52E38(v46);
      }

      sub_18A4A8888();
      if (v25 <= 1)
      {
        break;
      }

      if (v25 == 2)
      {
        v29 = 2;
        goto LABEL_21;
      }

      if (v24)
      {
        v30 = 4;
      }

      else
      {
        v30 = 3;
      }

LABEL_25:
      MEMORY[0x18CFE37E0](v30);
      result = sub_18A4A88E8();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v44;
      *(v17 + 8) = v43;
      *(v17 + 16) = v42;
      *(v17 + 24) = v27;
      *(v17 + 32) = v28;
      *(v17 + 40) = v47;
      *(v17 + 48) = v46;
      *(v17 + 56) = v45;
      ++*(v7 + 16);
      v5 = v40;
    }

    v29 = v25 != 0;
LABEL_21:
    MEMORY[0x18CFE37E0](v29);
    v30 = v24;
    goto LABEL_25;
  }

LABEL_40:

LABEL_41:
  *v3 = v7;
  return result;
}

unint64_t sub_188B173CC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v8 = a2 == 3;
    v9 = a1 == 1 && a2 == 3;
    if (a1)
    {
      v8 = 0;
    }

    do
    {
      v10 = *(v3 + 48) + 16 * result;
      v11 = *v10;
      v12 = *(v10 + 8);
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          if (a2 == 2)
          {
LABEL_9:
            if (v11 == a1)
            {
              return result;
            }
          }
        }

        else if (v11)
        {
          if (v9)
          {
            return result;
          }
        }

        else if (v8)
        {
          return result;
        }
      }

      else if (v12)
      {
        if (a2 == 1)
        {
          goto LABEL_9;
        }
      }

      else if (!a2)
      {
        goto LABEL_9;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_188B174D0()
{
  result = qword_1EA9309E8;
  if (!qword_1EA9309E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9309E8);
  }

  return result;
}

unint64_t sub_188B17528(unint64_t result, uint64_t a2, char a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

void sub_188B17AA4(void *a1, int a2, void *aBlock, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  v14 = [v11 scheduledTransition];
  if (v14)
  {

    v12 = &v14[*a5];
    v13 = *v12;
    *v12 = a6;
    v12[1] = v10;
    sub_188A55B8C(v13);
  }

  else
  {
    sub_18A4A8398();
    __break(1u);
  }
}

uint64_t sub_188B17C1C(uint64_t a1)
{
  if (qword_1EA930918 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  if (qword_1EA994EC8 == a1)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 136) == a1)
  {
    return 2;
  }

  return 2 * (*(v1 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 168) == a1);
}

uint64_t _UISplitViewControllerAdaptiveColumnVisibilityIsVisible(unint64_t a1)
{
  if (a1 >= 3)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _UISplitViewControllerAdaptiveColumnVisibilityIsVisible(_UISplitViewControllerAdaptiveColumnVisibility)"];
    [v3 handleFailureInFunction:v4 file:@"_UISplitViewControllerAdaptiveLayout.m" lineNumber:23 description:{@"UISplitViewController internal inconsistency: unexpected split view controller column visibility (%ld)", a1}];

    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = 6u >> (a1 & 7);
  }

  return v2 & 1;
}

id sub_188B1860C(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_clippingView] = 0;
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_dimmingView] = 0;
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_ownedContentView] = 0;
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketCollectorInteraction] = 0;
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_leftScrollPocketInteraction] = 0;
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_rightScrollPocketInteraction] = 0;
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_background] = 0;
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_maskedCorners] = 0;
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_dimmingLevel] = 0;
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_fallbackCornerRadius] = 0;
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_level] = 0;
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketInsets] = UIEdgeInsetsZero;
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_splitViewControllerColumn] = a1;
  v4.receiver = v1;
  v4.super_class = _UISplitViewControllerAdaptiveColumnView;
  return objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

id sub_188B19194()
{
  v1 = OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data;
  v2 = *&UIEdgeInsetsZero.top;
  v3 = *&UIEdgeInsetsZero.bottom;
  if (qword_1EA930918 != -1)
  {
    swift_once();
    v3 = *&UIEdgeInsetsZero.bottom;
    v2 = *&UIEdgeInsetsZero.top;
  }

  v4 = &v0[v1];
  v5 = qword_1EA994EC8;
  v6 = MEMORY[0x1E69E7CC0];
  *v4 = MEMORY[0x1E69E7CC0];
  *(v4 + 8) = v2;
  *(v4 + 24) = v3;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 15) = 0;
  *(v4 + 16) = v6;
  *(v4 + 17) = v5;
  *(v4 + 18) = 0;
  *(v4 + 19) = v5;
  *(v4 + 20) = 0;
  *(v4 + 21) = v5;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v9.receiver = v0;
  v9.super_class = _UISplitViewControllerAdaptiveSingleColumnLayout;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v7 prepareLayout];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_188B19354()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    result = sub_18A4A8398();
    __break(1u);
    return result;
  }

  v1 = Strong;
  v2 = [Strong traitCollection];
  [v2 displayScale];
  v4 = v3;

  [v1 containerInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v1 containerSize];
  v15 = UISizeRoundToScale(v13, v14, v4);
  v17 = v16;
  [v1 preferredColumns];
  v70 = [v1 primaryEdge];
  v18 = [v1 style];
  if (qword_1EA930918 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v19 = qword_1EA994EC8;
    v20 = 3;
    v21 = [v1 columnForSplitViewControllerColumn_];
    v22 = [(_UISplitViewControllerAdaptiveColumn *)v21 viewController];

    v72 = v18;
    v74 = v19;
    if (v22)
    {
      v23 = MEMORY[0x1E69E7CC0];
      v24 = 3;
      goto LABEL_5;
    }

    v25 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    v26 = v19;
    do
    {
      v27 = *(&unk_1EFAB90F8 + v25 + 32);
      if ([v73 canCollapseColumn:v27 style:v18])
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_188B9DE3C(0, *(v23 + 2) + 1, 1, v23);
        }

        v29 = *(v23 + 2);
        v28 = *(v23 + 3);
        if (v29 >= v28 >> 1)
        {
          v23 = sub_188B9DE3C((v28 > 1), v29 + 1, 1, v23);
        }

        *(v23 + 2) = v29 + 1;
        *&v23[8 * v29 + 32] = v27;
        v19 = v74;
        if (v26 == v74)
        {
          v30 = [v1 columnForSplitViewControllerColumn_];
          v31 = [(_UISplitViewControllerAdaptiveColumn *)v30 viewController];

          if (v31)
          {

            v26 = v27;
          }

          else
          {
            v26 = v74;
          }

          v18 = v72;
        }
      }

      v25 += 8;
    }

    while (v25 != 24);
    if (v26 == v19)
    {
      v20 = v19;
      v69 = v19;
      goto LABEL_28;
    }

    v32 = [v1 columnForSplitViewControllerColumn_];
    v33 = v26;
    v34 = [(_UISplitViewControllerAdaptiveColumn *)v32 navigationController];

    if (!v34)
    {
      break;
    }

    v35 = [v34 topViewController];
    if (v35)
    {
      v36 = v35;
      do
      {
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (!v37)
        {

          goto LABEL_48;
        }

        v22 = v37;

        v36 = [v22 topViewController];
        v34 = v22;
      }

      while (v36);
      v38 = *(v23 + 2);
      if (v38)
      {
        goto LABEL_49;
      }

LABEL_61:
      v20 = v19;
LABEL_62:
      v24 = v33;
LABEL_5:
      v69 = v24;

      goto LABEL_28;
    }

LABEL_48:
    v22 = v34;
    v38 = *(v23 + 2);
    if (!v38)
    {
      goto LABEL_61;
    }

LABEL_49:
    v18 = 0;
    while (v18 < *(v23 + 2))
    {
      v20 = *&v23[8 * v18 + 32];
      v63 = [v1 columnForSplitViewControllerColumn_];
      v64 = [(_UISplitViewControllerAdaptiveColumn *)v63 viewController];

      if (v64)
      {
        v65 = [v22 viewControllers];
        sub_188A34624(0, &qword_1ED48D5A0);
        v66 = sub_18A4A7548();

        if (v66 >> 62)
        {
          v67 = sub_18A4A7F68();
        }

        else
        {
          v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v67 == 1)
        {

          v19 = v74;
          if (v22 == v64)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v68 = [v22 topViewController];

          v19 = v74;
          if (v68)
          {

            if (v68 == v64)
            {
              goto LABEL_62;
            }
          }
        }
      }

      if (v38 == ++v18)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_64:
    swift_once();
  }

  v69 = v33;
  v20 = v33;
LABEL_28:
  if (qword_1EA9308C0 != -1)
  {
    swift_once();
  }

  v71 = v20;
  v39 = *(off_1EA9308D0 + 2);
  if (v39)
  {
    v40 = (off_1EA9308D0 + 32);
    v41 = MEMORY[0x1E69E7CC0];
    v42 = v19;
    do
    {
      v44 = *v40++;
      v43 = v44;
      v45 = [v1 columnForSplitViewControllerColumn_];
      v46 = [(_UISplitViewControllerAdaptiveColumn *)v45 viewController];

      if (v46)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_188B9DE3C(0, *(v41 + 2) + 1, 1, v41);
        }

        v48 = *(v41 + 2);
        v47 = *(v41 + 3);
        if (v48 >= v47 >> 1)
        {
          v41 = sub_188B9DE3C((v47 > 1), v48 + 1, 1, v41);
        }

        *(v41 + 2) = v48 + 1;
        *&v41[8 * v48 + 32] = v43;
        if (v42 == v74)
        {
          v49 = [v46 presentingViewController];
          if (v49)
          {

            v50 = [v46 isBeingDismissed];
            if (v50)
            {
              v42 = v74;
            }

            else
            {
              v42 = v43;
            }
          }

          else
          {

            v42 = v74;
          }
        }

        else
        {
        }
      }

      --v39;
    }

    while (v39);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
    v42 = v19;
  }

  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();
  *&v78[24] = v96;
  *&v78[40] = v97;
  *&v75 = v23;
  *(&v75 + 1) = v6;
  *&v76 = v8;
  *(&v76 + 1) = v10;
  *&v77 = v12;
  *(&v77 + 1) = v15;
  *v78 = v17;
  *&v78[56] = v98;
  *&v78[8] = v95;
  *&v78[72] = v99;
  *&v79 = v41;
  *(&v79 + 1) = v42;
  *&v80 = v70;
  *(&v80 + 1) = v69;
  *&v81 = v72;
  *(&v81 + 1) = v71;
  v51 = &v73[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data];
  v52 = *&v73[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 160];
  v82[9] = *&v73[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 144];
  v82[10] = v52;
  v53 = *&v73[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 128];
  v82[7] = *&v73[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 112];
  v82[8] = v53;
  v54 = *&v73[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 96];
  v82[5] = *&v73[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 80];
  v82[6] = v54;
  v55 = *&v73[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 64];
  v82[3] = *&v73[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 48];
  v82[4] = v55;
  v56 = *&v73[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 32];
  v82[1] = *&v73[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 16];
  v82[2] = v56;
  v82[0] = *&v73[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data];
  v57 = v80;
  *(v51 + 8) = v79;
  *(v51 + 9) = v57;
  *(v51 + 10) = v81;
  v58 = *&v78[32];
  *(v51 + 4) = *&v78[16];
  *(v51 + 5) = v58;
  v59 = *&v78[64];
  *(v51 + 6) = *&v78[48];
  *(v51 + 7) = v59;
  v60 = v76;
  *v51 = v75;
  *(v51 + 1) = v60;
  v61 = *v78;
  *(v51 + 2) = v77;
  *(v51 + 3) = v61;
  sub_188B19E98(&v75, v83);
  sub_188B19E68(v82);
  v83[0] = v23;
  v83[1] = v6;
  v83[2] = v8;
  v83[3] = v10;
  v83[4] = v12;
  *&v83[5] = v15;
  v83[6] = v17;
  v85 = v96;
  v86 = v97;
  v87 = v98;
  v84 = v95;
  v88 = v99;
  v89 = v41;
  v90 = v42;
  v91 = v70;
  v92 = v69;
  v93 = v72;
  v94 = v71;
  return sub_188B19E68(v83);
}

uint64_t sub_188B19DAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9347E0);
  result = swift_allocObject();
  *(result + 16) = xmmword_18A64BFB0;
  if (qword_1EA930920 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 32) = qword_1EA930928;
  off_1EA9308D0 = result;
  return result;
}

uint64_t _UISolariumFeatureFlagEnabled()
{
  if (qword_1ED49E168 != -1)
  {
    dispatch_once(&qword_1ED49E168, &__block_literal_global_27_0);
  }

  return byte_1ED49E119;
}

void _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(void *a1)
{
  v1 = a1[124];
  v2 = a1;
  v3 = [v1 style];
  v4 = [v2 style];

  if (v3)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v3)
    {
      return;
    }

    v6 = @"This API requires initializing the UISplitViewController with -initWithStyle:";
  }

  else
  {
    v6 = @"Overriding the style property unsupported for a UISplitViewController created with -initWithStyle:";
  }

  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];

  [v7 raise:v8 format:v6];
}

void sub_188B1ADC4(void *a1)
{
  v2 = v1;
  v4 = [v1 contentView];
  v20 = v4;
  if (v4)
  {
    if (a1)
    {
      sub_188A34624(0, &qword_1ED48F680);
      v5 = v20;
      v6 = a1;
      v7 = sub_18A4A7C88();

      v4 = v20;
      if (v7)
      {
        [v2 setOwnedContentView_];
        a1 = v6;
        goto LABEL_8;
      }
    }
  }

  else if (!a1)
  {
    [v1 setOwnedContentView_];
    goto LABEL_14;
  }

  [v4 removeFromSuperview];
  [v2 setOwnedContentView_];
  if (!a1)
  {
LABEL_14:
    v12 = v20;
    goto LABEL_15;
  }

  if (!v20)
  {
    v10 = a1;
    goto LABEL_11;
  }

LABEL_8:
  sub_188A34624(0, &qword_1ED48F680);
  v8 = a1;
  v9 = v20;
  v10 = v8;
  v11 = sub_18A4A7C88();

  if (v11)
  {

    v12 = v10;
LABEL_15:

    return;
  }

LABEL_11:
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_188BB5778;
  *(v15 + 24) = v14;
  aBlock[4] = sub_188A4B574;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_13_1;
  v16 = _Block_copy(aBlock);
  v17 = v10;
  v18 = v2;

  [v13 performWithoutAnimation_];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_188B1B0B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188B1B108()
{
  v1 = v0;
  v2 = [v0 ownedContentView];
  v3 = [v2 superview];

  v4 = [v1 containerView];
  v5 = v4;
  if (!v3)
  {

    goto LABEL_5;
  }

  sub_188A34624(0, &qword_1ED48F680);
  v6 = sub_18A4A7C88();

  if ((v6 & 1) == 0)
  {
LABEL_5:
    [v1 setOwnedContentView_];
  }

  v7 = [v1 ownedContentView];

  return v7;
}

void sub_188B1BA84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

uint64_t _UISupportsIntrinsicContentSizeInvalidation()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    LODWORD(result) = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_EnableCollectionTableIntrinsicContentSizeInvalidation, @"EnableCollectionTableIntrinsicContentSizeInvalidation", _UIInternalPreferenceUpdateBool);
    if (byte_1ED48AABC)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t _UITriStateToBool(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UITriStateToBool(_UITriState, BOOL (^__strong)(void))"}];
    [v7 handleFailureInFunction:v8 file:@"UIInterface_Internal.h" lineNumber:96 description:@"_UITriStateToBool() has to be called with a defaultValue block."];
  }

  if (a1 == 2)
  {
    v5 = 1;
  }

  else if (a1 == 1)
  {
    v5 = 0;
  }

  else
  {
    if (a1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v9 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v10 = 134217984;
          v11 = a1;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Found an invalid tri state of %tu. This is an indication of corrupted memory.", &v10, 0xCu);
        }
      }

      else
      {
        v4 = *(__UILogGetCategoryCachedImpl("Assert", &_UITriStateToBool___s_category) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v10 = 134217984;
          v11 = a1;
          _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Found an invalid tri state of %tu. This is an indication of corrupted memory.", &v10, 0xCu);
        }
      }
    }

    v5 = v3[2](v3);
  }

  return v5;
}

uint64_t _UITriStateToBool_0(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UITriStateToBool(_UITriState, BOOL (^__strong)(void))"}];
    [v7 handleFailureInFunction:v8 file:@"UIInterface_Internal.h" lineNumber:96 description:@"_UITriStateToBool() has to be called with a defaultValue block."];
  }

  if (a1 == 2)
  {
    v5 = 1;
  }

  else if (a1 == 1)
  {
    v5 = 0;
  }

  else
  {
    if (a1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v9 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v10 = 134217984;
          v11 = a1;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Found an invalid tri state of %tu. This is an indication of corrupted memory.", &v10, 0xCu);
        }
      }

      else
      {
        v4 = *(__UILogGetCategoryCachedImpl("Assert", &_UITriStateToBool___s_category_1) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v10 = 134217984;
          v11 = a1;
          _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Found an invalid tri state of %tu. This is an indication of corrupted memory.", &v10, 0xCu);
        }
      }
    }

    v5 = v3[2](v3);
  }

  return v5;
}

void _UITableUpdateSelectionIsKeyTraitOverride(void *a1, int a2, int a3)
{
  v14 = a1;
  v5 = [v14 traitCollection];
  if (([v5 _focusSystemState] - 1) >= 2)
  {
    v7 = [v5 _splitViewControllerContext];
  }

  else
  {
    v6 = _AXSFullKeyboardAccessEnabled();
    v7 = [v5 _splitViewControllerContext];
    if (!v6)
    {
      v8 = a2 & a3;
      goto LABEL_7;
    }
  }

  v9 = v7;
  v10 = _UITableConstantsUseUIPSidebarMetrics();
  v8 = (v9 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  if (v10)
  {
    v8 = 1;
  }

LABEL_7:
  v11 = v8;
  v12 = [(UIView *)v14 _internalTraitOverrides];
  [v12 _setNSIntegerValue:v11 forTraitToken:0x1EFE325F0];

  v13 = [v14 window];

  if (v13)
  {
    [v14 updateTraitsIfNeeded];
  }
}

uint64_t _UITableConstantsUseUIPSidebarMetrics()
{
  if (qword_1ED4A0F98 != -1)
  {
    dispatch_once(&qword_1ED4A0F98, &__block_literal_global_564);
  }

  return _MergedGlobals_1302;
}

id _UITableTraitsAffectingSelectionIsKey()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = 0x1EFE32590;
  v2[1] = 0x1EFE325D8;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];

  return v0;
}

double _UIDragInteractionDefaultPointerLiftDelay()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 6)
  {
    v2 = _UIInternalPreferenceUsesDefault(&unk_1ED48AD28, @"DragInteractionDefaultPointerLiftDelayVisionIdiom", _UIInternalPreferenceUpdateDouble);
    result = *&qword_1ED48AD30;
    v4 = v2 == 0;
    v5 = 0.35;
  }

  else
  {
    v6 = _UIInternalPreferenceUsesDefault(&unk_1ED48AD18, @"DragInteractionDefaultPointerLiftDelay", _UIInternalPreferenceUpdateDouble);
    result = *&qword_1ED48AD20;
    v4 = v6 == 0;
    v5 = 0.325;
  }

  if (!v4)
  {
    return v5;
  }

  return result;
}

double _UIDragInteractionDefaultCompetingLongPressDelay()
{
  v0 = _UIInternalPreferenceUsesDefault(&unk_1ED48ACF8, @"DragInteractionDefaultCompetingLongPressDelay", _UIInternalPreferenceUpdateDouble);
  result = *&qword_1ED48AD00;
  if (v0)
  {
    return 1.0;
  }

  return result;
}

double _UIDragInteractionDefaultCancellationDelay()
{
  v0 = _UIInternalPreferenceUsesDefault(&unk_1ED48ACE8, @"DragInteractionDefaultCancellationDelay", _UIInternalPreferenceUpdateDouble);
  result = *&qword_1ED48ACF0;
  if (v0)
  {
    return 3.0;
  }

  return result;
}

double _UIDragInteractionDefaultLiftMoveHysteresis()
{
  v0 = _UIInternalPreferenceUsesDefault(&unk_1ED48AD08, @"DragInteractionDefaultLiftMoveHysteresis", _UIInternalPreferenceUpdateDouble);
  result = *&qword_1ED48AD10;
  if (v0)
  {
    return 10.0;
  }

  return result;
}

double _UIDragInteractionDefaultLiftDelay()
{
  v0 = _UIInternalPreferenceUsesDefault(&unk_1ED48ACD8, @"DragInteractionDefaultLiftDelay", _UIInternalPreferenceUpdateDouble);
  result = *&qword_1ED48ACE0;
  if (v0)
  {
    return 0.325;
  }

  return result;
}

id _UIDragGestureResolvedName(void *a1)
{
  v1 = a1;
  if (dyld_program_sdk_at_least())
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.UIKit.%@", v1];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

double _UIDragInteractionDefaultPointerLiftMoveHysteresis()
{
  v0 = _UIInternalPreferenceUsesDefault(&unk_1ED48AD38, @"DragInteractionDefaultPointerLiftMoveHysteresis", _UIInternalPreferenceUpdateDouble);
  result = *&qword_1ED48AD40;
  if (v0)
  {
    return 3.0;
  }

  return result;
}

void _UIValidateAccountBasedDelegateRespondsToSelector(void *a1, uint64_t a2)
{
  v3 = a1;
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1ED4A2748 != -1)
    {
      dispatch_once(&qword_1ED4A2748, &__block_literal_global_26_6);
    }

    v4 = _UIKitUserDefaults();
    v5 = [v4 BOOLForKey:@"shouldValidateAccountBasedDelegates"];

    if (v3 && v5 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      if (qword_1ED4A2718 != -1)
      {
        dispatch_once(&qword_1ED4A2718, &__block_literal_global_2_19);
      }

      v6 = qword_1ED4A2720;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___UIValidateAccountBasedDelegateRespondsToSelector_block_invoke_2;
      v7[3] = &unk_1E70F32F0;
      v8 = v3;
      v9 = a2;
      dispatch_async(v6, v7);
    }
  }
}

uint64_t _UIRTreeContainerNode<_UICollectionViewRTreeElement>::~_UIRTreeContainerNode(uint64_t a1)
{
  *a1 = &unk_1EFAFCD00;
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v6 = (a1 + 64);
  std::vector<_UICollectionViewRTreeElement>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (a1 + 40);
  std::vector<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::vector<_UICollectionViewRTreeElement>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<_UICollectionViewRTreeElement>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

id sub_188B1E83C(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id _UIClickInteractionDefaultDrivers()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = _UIClickInteractionDriverForActivationStyle();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];

  return v0;
}

id _UIClickInteractionDriverForActivationStyle()
{
  v1 = objc_opt_class();

  return v1;
}

void _UIContextMenuRegisterDefaultPlatformMetricsIfNecessary()
{
  if (_UIContextMenuRegisterDefaultPlatformMetricsIfNecessary_onceToken != -1)
  {
    dispatch_once(&_UIContextMenuRegisterDefaultPlatformMetricsIfNecessary_onceToken, &__block_literal_global_748);
  }
}

double _UIClickPresentationAllowableMovementForDriver(void *a1, int a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = 20.0;
  }

  else
  {
    v4 = 10.0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 behavior] == 2)
  {
    v4 = 3.0;
  }

  return v4;
}

id _UIContextMenuGetPlatformMetrics(uint64_t a1)
{
  v2 = _UIContextMenuGetPlatformMetrics_metricsByIdiom;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    if (!_UIContextMenuGetPlatformMetrics_metricsByIdiom)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v6 = _UIContextMenuGetPlatformMetrics_metricsByIdiom;
      _UIContextMenuGetPlatformMetrics_metricsByIdiom = v5;
    }

    v7 = [_UIVisualStyleRegistry registryForIdiom:a1];
    v4 = [v7 visualStyleClassForStylableClass:objc_opt_class()];

    if (v4)
    {
      v4 = objc_opt_new();
      v8 = _UIContextMenuGetPlatformMetrics_metricsByIdiom;
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
      [v8 setObject:v4 forKey:v9];
    }
  }

  return v4;
}

uint64_t get_enum_tag_for_layout_string_5UIKit7UIShapeV7Storage33_1B79375D5C1B460FB459645C9B489EBFLLO(uint64_t a1)
{
  if ((*(a1 + 56) & 7u) <= 5)
  {
    return *(a1 + 56) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

void sub_188B1F3A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 > 3u)
  {
    if (a8 == 4 || a8 == 5)
    {
      goto LABEL_4;
    }
  }

  else if (a8 == 2)
  {
  }

  else if (a8 == 3)
  {
LABEL_4:
  }
}

void sub_188B20588(uint64_t a1, uint64_t a2, char **a3)
{
  v5 = [objc_allocWithZone(UIShape) init];
  v6 = &v5[OBJC_IVAR___UIShape_value];
  v7 = *&v5[OBJC_IVAR___UIShape_value];
  v8 = *&v5[OBJC_IVAR___UIShape_value + 16];
  v9 = *&v5[OBJC_IVAR___UIShape_value + 32];
  *&v12[9] = *&v5[OBJC_IVAR___UIShape_value + 41];
  v11[1] = v8;
  *v12 = v9;
  v11[0] = v7;
  *v6 = a2;
  *(v6 + 40) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 8) = 0u;
  v6[56] = 6;
  v10 = v5;
  sub_188B2040C(v11);

  *a3 = v10;
}

uint64_t sub_188B208C4()
{
  sub_188B1F3A0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t ___isVerboseLoggingForStrictRepeatedPushAssertionEnabled_block_invoke()
{
  result = _resolvedPrefValue(@"UINavigationControllerEnableVerboseLoggingForStrictRepeatedPushAssertion");
  byte_1ED49790C = result;
  return result;
}

uint64_t _resolvedPrefValue(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:v1];

  if (v3 || (_UIKitPreferencesOnce(), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKey:v1], v3 = objc_claimAutoreleasedReturnValue(), v4, v3))
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _resolvedPrefValue_0(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:v3];

  if (v5 || (_UIKitPreferencesOnce(), v6 = objc_claimAutoreleasedReturnValue(), [v6 objectForKey:v3], v5 = objc_claimAutoreleasedReturnValue(), v6, v5))
  {
    a2 = [v5 BOOLValue];
  }

  if (_UIGetUISplitViewControllerChamoisResizeLogging())
  {
    v7 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &_resolvedPrefValue___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = @"OFF";
      if (a2)
      {
        v8 = @"ON";
      }

      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%@ is %@", &v10, 0x16u);
    }
  }

  return a2;
}

double _UIApplicationBackgroundTimeRemaining()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v0 = +[_UIBackgroundTaskInfo backgroundTaskAssertionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___UIApplicationBackgroundTimeRemaining_block_invoke;
  block[3] = &unk_1E70F2F20;
  block[4] = &v4;
  dispatch_sync(v0, block);

  if (v5[3] == INFINITY)
  {
    v1 = 1.79769313e308;
  }

  else
  {
    v1 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_188B20C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIGetCurrentFallbackView()
{
  if (pthread_main_np() != 1)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"UIView * _Nullable _UIGetCurrentFallbackView(void)") description:{@"_UIFallbackEnvironment_NonARC.m", 142, @"The current fallback environment can only be used from the main thread."}];
  }

  CurrentFallbackEnvironment = _getCurrentFallbackEnvironment();
  result = _viewForFallbackEnvironment(CurrentFallbackEnvironment);
  if (result)
  {
    if ((*(result + 88) & 0x800) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _viewForFallbackEnvironment(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = [objc_msgSend(a1 "presentedViewController")];
  if (!result)
  {
    a1 = [a1 presentingViewController];
LABEL_5:

    return [a1 viewIfLoaded];
  }

  return result;
}

uint64_t _isDraggingEnabledByDefaultInNewCases()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if ((v1 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 1;
  }

  LODWORD(result) = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_DraggingEnabledPhone, @"DraggingEnabledPhone", _UIInternalPreferenceUpdateBool);
  if (byte_1ED48AD7C)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t discardEngineRecursive(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  result = [a1 _layoutEngine];
  if (result == a2)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [a1 _allSubviews];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          discardEngineRecursive(*(*(&v10 + 1) + 8 * v9++), a2);
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    if ([a2 delegate] == a1)
    {
      [a2 setDelegate:0];
    }

    [a1 _setLayoutEngine:0];
    return [a1 _clearLayoutVariableObservationsOnlyToSupportTAMICChange:0];
  }

  return result;
}

BOOL _UIViewIsAnimating(void *a1)
{
  v1 = [a1 layer];
  v2 = [v1 animationKeys];
  v3 = [v2 count] != 0;

  return v3;
}

uint64_t _UIAncestorViewIsInTransition(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 _isInTransitionBlock])
  {
    v5 = 1;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v3 subviews];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (!v4 || ([v4 isDescendantOfView:*(*(&v13 + 1) + 8 * i)] & 1) != 0)
          {
            v5 = _UIAncestorViewIsInTransition(v11, v4);
            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v5 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_15:
  }

  return v5;
}

uint64_t __UIInlinePointerSetCreateHashTableWithCapacity(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AC70]);

  return [v2 initWithOptions:258 capacity:a1];
}

uint64_t sub_188B21E40(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v17 = a4;
      v18 = a3 & 0xC000000000000001;
      v7 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v18)
        {
          v8 = a3;
          v9 = v17(v6, a3);
        }

        else
        {
          if (v6 >= *(v7 + 16))
          {
            goto LABEL_14;
          }

          v8 = a3;
          v9 = *(a3 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v20 = v9;
        v12 = a1(&v20);

        if (!v4 && (v12 & 1) == 0)
        {
          ++v6;
          a3 = v8;
          if (v11 != v5)
          {
            continue;
          }
        }

        return v12 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v13 = a4;
      v14 = a3;
      v15 = sub_18A4A7F68();
      a3 = v14;
      a4 = v13;
      v5 = v15;
    }

    while (v15);
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_188B21FA8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

char *sub_188B22094(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188B221A4(char *a1, int64_t a2, char a3)
{
  result = sub_188B22094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_188B221DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t ___getCurrentFallbackEnvironment_block_invoke(uint64_t a1, void *a2)
{
  v2 = [objc_msgSend(a2 "session")];
  if (v2 == @"UIWindowSceneSessionRoleExternalDisplayNonInteractive" || v2 && @"UIWindowSceneSessionRoleExternalDisplayNonInteractive" && ([(__CFString *)v2 isEqual:?]& 1) != 0)
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

double sub_188B2266C@<D0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v6 = [(UIView *)v2 _typedStorage];
  v7 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v8 = *(&v6->super.isa + v7);
  if (*(v8 + 16) && (v9 = sub_188A403F4(&_s29CornerMaskingConfigurationKeyVN), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v12 = v11[3];
    v37 = v11[2];
    v38 = v12;
    *v39 = v11[4];
    *&v39[10] = *(v11 + 74);
    v36 = v11[1];
    sub_188A74E4C(&v36, &v30);

    if (*&v39[16])
    {
      v30 = v36;
      v31 = v37;
      v32 = v38;
      v33 = *v39;
      v34 = *&v39[16];
      v35 = *&v39[24];
      sub_188B22990(v3, a1, &v40);
      v26 = v40;
      v27 = v41;
      v28 = v42;
      v29 = v43;
      v13 = [(UIView *)v3 _typedStorage];
      v14 = sub_188B22DB8();

      if (v14)
      {
        v15 = v14[2];
        v44 = v14[1];
        v45 = v15;
        v16 = v14[4];
        v46 = v14[3];
        v47 = v16;
        if (sub_18A4A7918())
        {
          sub_188A3F5FC(&v36, &qword_1EA938E70);
          v18 = v42;
          v17 = v43;
          v19 = v41;
          v14[1] = v40;
          v14[2] = v19;
          v14[3] = v18;
          v14[4] = v17;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *&v30 = v14;
          sub_188C9DC00();
          sub_18A4A2BF8();
          sub_188A3F5FC(&v36, &qword_1EA938E70);
        }
      }

      else
      {
        sub_188A3F5FC(&v36, &qword_1EA938E70);
      }

      v30 = v26;
      v31 = v27;
      v20 = v28;
      v21 = v29;
      goto LABEL_12;
    }
  }

  else
  {
    swift_endAccess();
  }

  if (qword_1EA930F18 != -1)
  {
    swift_once();
  }

  v30 = xmmword_1EA994E60;
  v31 = *algn_1EA994E70;
  v20 = xmmword_1EA994E80;
  v21 = unk_1EA994E90;
LABEL_12:
  v32 = v20;
  v33 = v21;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  result = *&v32;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_188B22950(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return sub_188FAF84C(v4);
}

void sub_188B22990(void *a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  v6 = *v3;
  v5 = *(v3 + 8);
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v12 = *(v3 + 48);
  v11 = *(v3 + 56);
  v29 = *(v3 + 73);
  sub_188A85484(*v3);
  sub_188A854E0(v5);
  sub_188A85484(v8);
  sub_188A854E0(v7);
  sub_188A85484(v9);
  sub_188A854E0(v10);
  sub_188A85484(v12);
  sub_188A854E0(v11);
  sub_188B22BDC(a1, a2, 1);
  v28 = v13;
  sub_188A79914(v6);
  sub_188A74020(v5);
  sub_188B22BDC(a1, a2, 2);
  v27 = v14;
  sub_188A79914(v8);
  sub_188A74020(v7);
  sub_188B22BDC(a1, a2, 4);
  v26 = v15;
  sub_188A79914(v9);
  sub_188A74020(v10);
  *&v30[0] = v12;
  *(&v30[0] + 1) = v11;
  sub_188B22BDC(a1, a2, 8);
  v25 = v16;
  sub_188A79914(v12);
  sub_188A74020(v11);
  if (v29 != 1)
  {
    v19 = vdupq_lane_s64(v26, 0);
    v20 = vdupq_lane_s64(v25, 0);
    v21 = vdupq_lane_s64(v27, 0);
    v22 = vdupq_lane_s64(v28, 0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934190);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18A64C6E0;
  *(v17 + 32) = v28;
  *(v17 + 40) = v27;
  *(v17 + 48) = v26;
  *(v17 + 56) = v25;
  *&v30[0] = v17;

  sub_188BAB818(v30);

  if (*(*&v30[0] + 16))
  {
    v18 = *(*&v30[0] + 32);

    CACornerRadiiMake(v30, v18, v18, v18, v18);
    v19 = v30[0];
    v20 = v30[1];
    v21 = v30[2];
    v22 = v30[3];
LABEL_5:
    *a3 = v19;
    a3[1] = v20;
    a3[2] = v21;
    a3[3] = v22;
    return;
  }

  __break(1u);

  __break(1u);
}

void sub_188B22BDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3 >> 62;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [a1 bounds];
    }

    else if (v4 != 0xC000000000000000)
    {
      if (v4 == 0xC000000000000008)
      {
        v13 = v3[1];

        sub_188BB90A4(v13, a1, a2, a3);
      }

      else
      {
        [a1 bounds];
        x = v19.origin.x;
        y = v19.origin.y;
        width = v19.size.width;
        height = v19.size.height;
        CGRectGetHeight(v19);
        v20.origin.x = x;
        v20.origin.y = y;
        v20.size.width = width;
        v20.size.height = height;
        CGRectGetWidth(v20);
      }
    }
  }

  else if (v5)
  {
    v6 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = [objc_opt_self() defaultMetrics];
    v9 = [a1 traitCollection];
    [v8 scaledValueForValue:v9 compatibleWithTraitCollection:v6];
  }
}

char *sub_188B22DC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934190);
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

void sub_188B23000()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong layer];

  v2 = sub_18A4A7668();
  v3 = sub_18A4A7258();
  [v1 setValue:v2 forKeyPath:v3];
}

uint64_t sub_188B230E8(void *a1, char a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectUnownedInit();
  *(v3 + 24) = a2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  ObjCClassFromObject = swift_getObjCClassFromObject();

  if ([ObjCClassFromObject _autoApplyMonochromaticTreatment])
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v9 = swift_unknownObjectUnownedLoadStrong();
    v10 = [v9 traitCollection];

    v11 = [v10 userInterfaceStyle];
    v12 = objc_opt_self();
    v13 = &selRef_whiteColor;
    if (v11 != 2)
    {
      v13 = &selRef_blackColor;
    }

    v14 = [v12 *v13];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70);
    MEMORY[0x1EEE9AC00](v15 - 8);
    v17 = v36 - v16 + 32;
    v18 = sub_18A4A2DB8();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    sub_18904F42C(v10, v14, v17);
    v20 = v19;

    sub_188A3F5FC(v17, &qword_1EA935D70);
    v21 = sub_18A4A7258();
    [v8 setName_];

    v22 = sub_18A4A7668();
    [v8 setValue:v22 forKey:*MEMORY[0x1E69799C0]];

    [v20 colorMatrix];
    v23 = objc_opt_self();
    v36[2] = *(&v36[7] + 8);
    v36[3] = *(&v36[8] + 8);
    v36[4] = *(&v36[9] + 8);
    v36[0] = *(&v36[5] + 8);
    v36[1] = *(&v36[6] + 8);
    v24 = [v23 valueWithCAColorMatrix_];
    [v8 setValue:v24 forKey:*MEMORY[0x1E6979AC0]];

    [v20 maxColorComponent];
    v25 = sub_18A4A2D28();
    [v8 setValue:v25 forKey:*MEMORY[0x1E6979A90]];

    [v20 preservesHue];
    v26 = sub_18A4A7668();
    [v8 setValue:v26 forKey:*MEMORY[0x1E6979A98]];

    [v8 setEnabled_];
    v27 = swift_unknownObjectUnownedLoadStrong();
    v28 = [v27 layer];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v29 = swift_allocObject();
    v35 = xmmword_18A64BFB0;
    *(v29 + 16) = xmmword_18A64BFB0;
    *(v29 + 56) = sub_188A34624(0, &qword_1ED48EE50);
    *(v29 + 32) = v8;
    v30 = v8;
    v31 = sub_18A4A7518();

    [v28 setFilters_];

    v32 = swift_unknownObjectUnownedLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
    inited = swift_initStackObject();
    *(inited + 16) = v35;
    *(inited + 32) = &type metadata for UITraitUserInterfaceStyle;
    *(inited + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    sub_188F4D864(inited, sub_18902B71C, 0);

    swift_unknownObjectRelease();
    swift_setDeallocating();
  }

  else
  {
  }

  return v3;
}

uint64_t GetAttributeDifference(uint64_t (*a1)(uint64_t, id, id), uint64_t (*a2)(id, id), void *a3, void *a4)
{
  v7 = *off_1E70EC920;
  v8 = a4;
  v9 = a3;
  LOBYTE(v7) = a1(v7, v9, v8);
  if ((a1(*off_1E70EC8D0, v9, v8) | v7))
  {
    v10 = 0x20000;
  }

  else
  {
    v10 = 0;
  }

  if (a1(*off_1E70EC988, v9, v8))
  {
    v10 |= 0xC000uLL;
  }

  v11 = v10 | a2(v9, v8);
  v12 = a1(*off_1E70EC918, v9, v8);
  v13 = a1(*MEMORY[0x1E69656F0], v9, v8);
  v14 = a1(*MEMORY[0x1E69657E0], v9, v8);

  if (((v14 | v13) | v12))
  {
    v15 = v11 | 0x14000;
  }

  else
  {
    v15 = v11;
  }

  if (v15)
  {
    return v15 | 0x400;
  }

  else
  {
    return 0;
  }
}

double UIPointRoundToScale(double a1, double a2, double a3)
{
  v5 = a3;
  if (a3 == 0.0)
  {
    if (AdjustToScale_onceToken_0 != -1)
    {
      dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
    }

    v5 = *&AdjustToScale___s_0;
  }

  v6 = v5 == 1.0;
  v7 = round(a1 * v5) / v5;
  v8 = round(a1);
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (a3 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  return v9;
}

void sub_188B23F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_188B254DC()
{
  result = qword_1ED48EC08;
  if (!qword_1ED48EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48EC08);
  }

  return result;
}

unint64_t sub_188B25534()
{
  result = qword_1ED48E888;
  if (!qword_1ED48E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E888);
  }

  return result;
}

void sub_188B25610(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void _updateItemGroupOwners(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) _items];
        _updateItemOwners(v9, v4);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

Swift::Void __swiftcall UIHostingViewBase._requestUpdate(after:)(Swift::Double after)
{
  v3 = sub_18A4A6E18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A6E58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A54F8();
  if (after == 0.0 && (sub_18A4A46C8() & 1) == 0)
  {
    if ([objc_opt_self() isMainThread])
    {
      UIHostingViewBase._setNeedsUpdate()();
    }

    else
    {
      sub_188A34624(0, &qword_1ED490540);
      v14 = sub_18A4A7A68();
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_188DDA0C0;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A8F0;
      aBlock[3] = &block_descriptor_6;
      v16 = _Block_copy(aBlock);

      sub_18A4A6E38();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_188AFBA2C(&qword_1ED490560, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
      sub_188BA3728();
      sub_18A4A7EB8();
      MEMORY[0x18CFE29D0](0, v10, v6, v16);
      _Block_release(v16);

      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }
  }

  else if (UIAnimationDragCoefficient() * after >= 0.25)
  {
    sub_18A4A4778();
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      MEMORY[0x1EEE9AC00](Strong);
      aBlock[-2] = v1;
      aBlock[-1] = v12;
      v13 = v12;
      sub_18A4A4768();
    }
  }

  sub_18A4A5518();
}

Swift::Void __swiftcall UIHostingViewBase._setNeedsUpdate()()
{
  v1 = sub_18A4A6E18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A4A6E58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_18A4A4828();
    if (UIHostingViewBase.updatesWillBeVisible.getter())
    {
      [v10 setNeedsLayout];
LABEL_5:

      return;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPreferencesUpdate))
    {
      goto LABEL_5;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPreferencesUpdate) = 1;
    sub_188A34624(0, &qword_1ED490540);
    v14 = sub_18A4A7A68();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_188C48958;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_10;
    v12 = _Block_copy(aBlock);

    sub_18A4A6E38();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_188AFBA2C(&qword_1ED490560, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
    sub_188BA3728();
    sub_18A4A7EB8();
    v13 = v14;
    MEMORY[0x18CFE29D0](0, v8, v4, v12);

    _Block_release(v12);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t UIHostingViewBase.withMainThreadRender(wasAsync:_:)@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = v4 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 8))(v5, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_opt_self();
  if ([v14 areAnimationsEnabled] && (v13 & 1) != 0)
  {
    if (a1)
    {
      return a2();
    }

    else
    {
      sub_18A4A5CA8();
      v17 = swift_allocObject();
      v17[2] = a4;
      v17[3] = a2;
      v17[4] = a3;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_188BA31F8;
      *(v18 + 24) = v17;
      aBlock[4] = sub_188A4B574;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      aBlock[3] = &block_descriptor_30_0;
      v19 = _Block_copy(aBlock);

      [v14 performWithoutAnimation_];
      _Block_release(v19);
      LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

      if (v19)
      {
        __break(1u);
      }

      else
      {
        v20 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_allowUIKitAnimationsForNextUpdate;
        swift_beginAccess();
        *(v5 + v20) = 0;
      }
    }
  }

  else
  {
    result = a2();
    if ((a1 & 1) == 0)
    {
      v16 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_allowUIKitAnimationsForNextUpdate;
      result = swift_beginAccess();
      *(v5 + v16) = 0;
    }
  }

  return result;
}

id sub_188B26148()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(UIView) init];
  }

  return result;
}

void UIHostingViewBase.updateRenderContext(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong window];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 screen];

      [v4 scale];
    }

    sub_18A4A5748();
  }
}

uint64_t UIHostingViewBase._containerSafeArea.getter()
{
  v0 = sub_18A4A8668();
  v34 = *(v0 - 8);
  v35 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18A4A4CD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_18A4A5318();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_18A4A4698();
    sub_18A4A4ED8();
    v17 = v16;
    (*(v11 + 8))(v13, v10);
    [v15 safeAreaInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = *(v4 + 104);
    v26(v9, *MEMORY[0x1E697E7D0], v3);
    v26(v6, *MEMORY[0x1E697E7D8], v3);
    v27 = sub_18A4A4CC8();
    v28 = *(v4 + 8);
    v28(v6, v3);
    v28(v9, v3);
    if (v27)
    {
      v29 = v21;
    }

    else
    {
      v29 = v25;
    }

    if (v27)
    {
      v30 = v25;
    }

    else
    {
      v30 = v21;
    }

    v38 = v30;
    v39 = v19;
    v36 = v29;
    v37 = v23;
    v32 = v34;
    v31 = v35;
    (*(v34 + 104))(v2, *MEMORY[0x1E69E7038], v35);
    sub_188B26620(v2, v17);
    sub_188B26620(v2, v17);
    sub_188B26620(v2, v17);
    sub_188B26620(v2, v17);

    return (*(v32 + 8))(v2, v31);
  }

  return result;
}

uint64_t sub_188B26620(uint64_t a1, double a2)
{
  v5 = sub_18A4A8668();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  if (a2 != 1.0)
  {
    v14 = *v2 / a2;
    *v2 = v14;
    (*(v6 + 16))(v8, a1, v5);
    result = (*(v6 + 88))(v8, v5);
    if (result == *MEMORY[0x1E69E7038])
    {
      v15 = round(v14);
    }

    else if (result == *MEMORY[0x1E69E7030])
    {
      v15 = rint(v14);
    }

    else if (result == *MEMORY[0x1E69E7040])
    {
      v15 = ceil(v14);
    }

    else if (result == *MEMORY[0x1E69E7048])
    {
      v15 = floor(v14);
    }

    else if (result == *MEMORY[0x1E69E7020])
    {
      v15 = trunc(v14);
    }

    else if (result == *MEMORY[0x1E69E7028])
    {
      v15 = ceil(v14);
      v17 = floor(v14);
      if (v14 < 0.0)
      {
        v15 = v17;
      }
    }

    else
    {
      sub_18A4A7708();
      result = (*(v6 + 8))(v8, v5);
      v15 = *v2;
    }

    v13 = v15 * a2;
    goto LABEL_34;
  }

  (*(v6 + 16))(&v18 - v10, a1, v5);
  result = (*(v6 + 88))(v11, v5);
  if (result != *MEMORY[0x1E69E7038])
  {
    if (result == *MEMORY[0x1E69E7030])
    {
      v13 = rint(*v2);
      goto LABEL_34;
    }

    if (result == *MEMORY[0x1E69E7040])
    {
      v16 = *v2;
LABEL_12:
      v13 = ceil(v16);
      goto LABEL_34;
    }

    if (result == *MEMORY[0x1E69E7048])
    {
      v16 = *v2;
    }

    else
    {
      if (result == *MEMORY[0x1E69E7020])
      {
        v13 = trunc(*v2);
        goto LABEL_34;
      }

      if (result != *MEMORY[0x1E69E7028])
      {
        sub_18A4A7708();
        return (*(v6 + 8))(v11, v5);
      }

      v16 = *v2;
      if ((*v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

    v13 = floor(v16);
    goto LABEL_34;
  }

  v13 = round(*v2);
LABEL_34:
  *v2 = v13;
  return result;
}

Swift::Void __swiftcall UIHostingViewBase._updateContainerSize()()
{
  v0 = sub_18A4A4CD8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong safeAreaInsets];
    v9 = *(v1 + 104);
    v9(v6, *MEMORY[0x1E697E7D0], v0);
    v9(v3, *MEMORY[0x1E697E7D8], v0);
    sub_18A4A4CC8();
    v10 = *(v1 + 8);
    v10(v3, v0);
    v10(v6, v0);
    [v8 bounds];
    sub_18A4A4758();
  }
}

uint64_t UIHostingViewBase._startUpdateEnvironment()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = sub_18A4A5318();
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_18A4A5308();
  }

  v44 = Strong;
  v26 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
  swift_beginAccess();
  v27 = *(v1 + v26);
  if (v27)
  {
    v28 = *(v1 + v26);
  }

  else
  {
    v28 = [v44 traitCollection];
    v27 = 0;
  }

  v42 = a1;
  v30 = v27;
  v45 = v28;
  v31 = [v28 _environmentWrapper];
  if (v31)
  {

    v32 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_inheritedEnvironment;
    swift_beginAccess();
    sub_188A3F29C(v1 + v32, v7, &qword_1EA936FE0);
    v33 = v47;
    v34 = *(v47 + 48);
    if (v34(v7, 1, v14) == 1)
    {
      sub_188BA9684();
      if (v34(v7, 1, v14) != 1)
      {
        sub_188A3F5FC(v7, &qword_1EA936FE0);
      }

      v21 = v18;
    }

    else
    {
      (*(v33 + 32))(v18, v7, v14);
      v21 = v18;
    }
  }

  else
  {
    v35 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_inheritedEnvironment;
    swift_beginAccess();
    sub_188A3F29C(v1 + v35, v13, &qword_1EA936FE0);
    v36 = v47;
    v34 = *(v47 + 48);
    if (v34(v13, 1, v14) == 1)
    {
      sub_18A4A4858();
      if (v34(v10, 1, v14) == 1)
      {
        sub_188BA9684();
        if (v34(v10, 1, v14) != 1)
        {
          sub_188A3F5FC(v10, &qword_1EA936FE0);
        }
      }

      else
      {
        (*(v47 + 32))(v21, v10, v14);
      }

      if (v34(v13, 1, v14) != 1)
      {
        sub_188A3F5FC(v13, &qword_1EA936FE0);
      }

      v33 = v47;
    }

    else
    {
      (*(v36 + 32))(v21, v13, v14);
      v33 = v36;
    }
  }

  v37 = *(v33 + 32);
  v37(v24, v21, v14);
  v38 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_environmentOverride;
  swift_beginAccess();
  v39 = v1 + v38;
  v40 = v46;
  sub_188A3F29C(v39, v46, &qword_1EA936FE0);
  if (v34(v40, 1, v14) != 1)
  {
    v41 = v43;
    v37(v43, v40, v14);
    sub_18A4A52E8();
    (*(v33 + 8))(v41, v14);
  }

  return (v37)(v42, v24, v14);
}

void UIHostingViewBase._updateEnvironment(_:)(uint64_t a1)
{
  v3 = sub_18A4A6148();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937010);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v45 - v6;
  v8 = sub_18A4A4848();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D48);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v45 - v11;
  v13 = sub_18A4A4908();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v45 - v18;
  v20 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_uiView;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = Strong;
  v45[0] = v7;
  v45[1] = a1;
  v45[2] = v20;
  v46 = v1;
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 traitCollection];
    v26 = [v25 userInterfaceIdiom];

    ViewGraphHost.Idiom.init(_uiIdiom:)(v26, v12);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v19, v12, v13);
      (*(v14 + 16))(v16, v19, v13);
      sub_18A4A51B8();
      (*(v14 + 8))(v19, v13);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_188A3F5FC(v12, &qword_1EA935D48);
LABEL_7:
  objc_opt_self();
  v27 = +[UIScreen _mainScreen];
  [v27 _referenceBounds];
  [v27 _pointsPerInch];
  sub_18A4A4838();
  sub_18A4A52D8();
  v28 = v22;
  sub_18A4A52B8();
  v29 = [v28 window];
  v30 = v46;
  if (v29)
  {

    v31 = [v28 _undimmedTintColor];
    if (v31)
    {
      v32 = v31;
      type metadata accessor for UICorePlatformColorDefinition();
      v33 = v32;
      sub_18A4A5E38();
      sub_18A4A4EE8();

      v30 = v46;
    }
  }

  sub_18A4A5DB8();
  sub_18A4A5228();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    if ([v34 tintAdjustmentMode] == 2)
    {
      v36 = v45[0];
      sub_18A4A53F8();
      v37 = sub_18A4A5408();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      sub_18A4A5218();
    }
  }

  if (qword_1ED48FD18 != -1)
  {
    swift_once();
  }

  sub_188B0D76C();
  sub_18A4A5238();
  if (UIViewGlassGetLegibilitySetting() == 1)
  {
    sub_18A4A6138();
  }

  else
  {
    sub_18A4A6128();
  }

  sub_18A4A51A8();
  v38 = v30;
  sub_188F26BC4();
  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    v41 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
    swift_beginAccess();
    v42 = *(v38 + v41);
    if (v42)
    {
      v43 = *(v38 + v41);
    }

    else
    {
      v43 = [v40 traitCollection];
      v42 = 0;
    }

    v44 = v42;
    [v43 activeAppearance];
    sub_18A4A4FD8();
  }
}

Swift::Void __swiftcall UIHostingViewBase.layoutSubviews()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v10 - v2;
  if (sub_18A4A46F8())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong window];
      if (v6)
      {

        v7 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_canAdvanceTimeAutomatically;
        swift_beginAccess();
        if (*(v0 + v7) == 1)
        {
          sub_18A4A54F8();
          v8 = sub_18A4A4828();
          MEMORY[0x1EEE9AC00](v8);
          v10[-2] = v0;
          sub_18A4A47D8();
          swift_getObjectType();
          v9 = sub_18A4A5CC8();
          (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
          sub_18A4A58C8();
          sub_188A3F5FC(v3, &qword_1EA936FE8);
          sub_18A4A5518();
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

double sub_188B27950()
{
  v0 = sub_18A4A5CC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CACurrentMediaTime();
  sub_18A4A5C88();
  v4 = sub_188B27A38(v3);
  (*(v1 + 8))(v3, v0);
  return v4 / UIAnimationDragCoefficient();
}

double sub_188B27A38(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v3 = sub_18A4A5CC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_lastRenderTime;
  swift_beginAccess();
  v20 = *(v4 + 16);
  v20(v9, v2 + v10, v3);
  sub_18A4A5C78();
  v11 = sub_18A4A5C68();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v9, v3);
  if (v11 & 1) != 0 || (v20(v9, v2 + v10, v3), sub_188AFBA2C(&qword_1ED48F848, MEMORY[0x1E6981158]), v13 = sub_18A4A7218(), v12(v9, v3), (v13))
  {
    sub_18A4A5C98();
    sub_18A4A5C88();
    swift_beginAccess();
    (*(v4 + 40))(v2 + v10, v9, v3);
    swift_endAccess();
  }

  v20(v9, v2 + v10, v3);
  v14 = v21;
  sub_18A4A5C98();
  v16 = v15;
  sub_18A4A5C98();
  v18 = v17;
  v12(v9, v3);
  swift_beginAccess();
  (*(v4 + 24))(v2 + v10, v14, v3);
  swift_endAccess();
  return v16 - v18;
}

void sub_188B27DC8(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_18A4A4A58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = v4;
  v21 = a1;
  v22 = a2;
  if (a3)
  {
    v13 = v10;
    v23 = 0;
    sub_18A4A6C78();
    sub_18A4A4488();
    v14 = sub_18A4A4478();
    if (v14)
    {

      v14 = sub_18A4A4458();
      if ((v14 & 1) == 0)
      {
        sub_188FB7728();
        sub_188FB7A3C(v12);
        v14 = (*(v9 + 8))(v12, v13);
      }
    }

    MEMORY[0x1EEE9AC00](v14);
    *&v19[-16] = sub_188CD87F4;
    *&v19[-8] = v19;
    sub_18A4A4D58();
  }

  else
  {
    v15 = *(v4 + OBJC_IVAR____UIFloatingBarContainerView_model);
    swift_getKeyPath();
    v23 = v15;
    sub_188AF0C98();
    sub_18A4A2C08();

    v17 = sub_188B28038(v16, a1);

    if ((v17 & 1) == 0)
    {

      sub_188C1979C(v18);
      sub_188AEFC0C();
    }

    *(*(v4 + OBJC_IVAR____UIFloatingBarContainerView_keyboardAssistant) + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_alwaysAvoidsKeyboard) = a2 & 1;
    sub_189091178();
  }
}

id _UIKitCoreGlyphsManagerExisting()
{
  os_unfair_lock_lock(&__UIKitCoreGlyphsManagersLock);
  v0 = __UIKitCoreGlyphsManager;
  os_unfair_lock_unlock(&__UIKitCoreGlyphsManagersLock);

  return v0;
}

id _UIImageName(void *a1)
{
  v1 = a1;
  if ([v1 _isNamed])
  {
    v2 = [v1 _primitiveImageAsset];

    if (v2)
    {
      v3 = [v1 imageAsset];
      v4 = [v3 assetName];
    }

    else
    {
      os_unfair_lock_lock(&__tableLock);
      if (__imageTable)
      {
        v4 = CFDictionaryGetValue(__imageTable, v1);
      }

      else
      {
        v4 = 0;
      }

      os_unfair_lock_unlock(&__tableLock);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void _updateItemOwners(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v8++) _setOwningNavigationItem:v4];
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

BOOL sub_188B2941C()
{
  v1 = [v0 navigationBar];
  v2 = [v1 traitCollection];

  v3 = [v2 verticalSizeClass];
  if (v3 == 1)
  {
    return 0;
  }

  v5 = [v0 navigationBar];
  if (qword_1ED48E178 != -1)
  {
    v9 = v5;
    swift_once();
    v5 = v9;
  }

  v6 = byte_1ED48E180;
  if (byte_1ED48E180 == 2)
  {
    v7 = v5;
    v8 = [v5 prefersLargeTitles];

    return (v8 & 1) != 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_188B2952C()
{
  result = _UIKitUserDefaults();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v1 = result;
  v2 = sub_18A4A7258();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = sub_188A3F5FC(v6, &qword_1EA934050);
  }

  byte_1ED48E180 = 2;
  return result;
}

uint64_t _UINavigationBarShouldCheckLegacyViolation(void *a1)
{
  v1 = a1;
  if (dyld_program_sdk_at_least() && ([objc_opt_class() _requiresModernVisualProvider] & 1) == 0)
  {
    v3 = _UIUseModernBars();
    v2 = v3 ^ [objc_opt_class() _forceLegacyVisualProvider] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_188B297A0(char a1)
{
  v2 = v1;
  v4 = [v2 stack];
  v5 = [v4 topEntry];

  if (!v5)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v6 = [v5 item];

  if (!v6)
  {
LABEL_6:
    v8 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
    goto LABEL_7;
  }

  [v6 largeTitleInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([v6 useRelativeLargeTitleInsets])
  {
    v13 = [v2 navigationBar];
    [v13 _resolvedLayoutMargins];

    return v8;
  }

LABEL_7:
  if (v10 == 0.0 || v12 == 0.0)
  {
    v15 = [v2 navigationBar];
    [v15 _resolvedLayoutMargins];
  }

  else
  {
    if (a1)
    {
      v14 = [v2 navigationBar];
      [v14 _resolvedLayoutMargins];
    }
  }

  return v8;
}

void sub_188B29AE8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
  v3 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  v4 = [v1 navigationBar];
  v5 = [v4 requestedContentSize];

  v6 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_requestedContentSize];
  *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_requestedContentSize] = v5;
  sub_188EBC6F4(v6);

  sub_188AEC470();
  v7 = [v1 stack];
  v8 = [v7 topEntry];

  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = [v8 isSearchActive];
  v10 = [(_UINavigationBarItemStackEntry *)v8 _typedStorage];
  v11 = v9 ? sub_18901F25C() : sub_18901F250();
  v12 = v11;

  if (!v12)
  {
    goto LABEL_18;
  }

  sub_188B38ED0(*(v12 + 224));
  swift_beginAccess();
  v13 = *(v12 + 344);
  v14 = v13;
  if (!v13)
  {
    v14 = *(v12 + 352);
    v15 = v14;
  }

  swift_beginAccess();
  v16 = *(v12 + 232);
  v17 = v13;

  sub_188B3A13C(v18, v14, v16);

  swift_beginAccess();
  v19 = *(v12 + 400);
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_10;
    }

LABEL_17:
    *(v12 + 40) = 1;
    sub_188B386EC();

LABEL_18:
    v26 = [v1 navigationBar];
    [v26 setNeedsLayout];

    v27 = *&v1[v2];
    sub_188AED2B0(__src);
    memcpy(__dst, &v27[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
    memcpy(&v27[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], __src, 0x20AuLL);
    v28 = v27;
    sub_188A3F5FC(__dst, &unk_1EA9362C0);
    [v28 setNeedsLayout];

    v29 = [v1 navigationBar];
    [v29 invalidateIntrinsicContentSize];

    v30 = [v1 navigationBar];
    [v30 setNeedsLayout];

    v31 = [v1 navigationBar];
    [v31 _sendNavigationBarResize];

    return;
  }

  v20 = sub_18A4A7F68();
  if (!v20)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (v20 >= 1)
  {

    v21 = 0;
    v22 = 0.0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = sub_188E4A488(v21, v19);
      }

      else
      {
        v23 = *(v19 + 8 * v21 + 32);
      }

      ++v21;
      v24 = &v23[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
      *v24 = v22;
      *(v24 + 8) = 0;
      v25 = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

      v22 = v22 + v25;
    }

    while (v20 != v21);

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_188B2A0A0(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1;
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v8)
    {
      goto LABEL_29;
    }

    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    v35 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 < 0)
    {
      v10 = v6;
    }

    if (v7)
    {
      v11 = v10;
    }

    v12 = a2 & 0xFFFFFFFFFFFFFF8;
    v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v12 = a2;
    }

    if (a2 >> 62)
    {
      v13 = v12;
    }

    if (v11 == v13)
    {
LABEL_29:
      v21 = 1;
      return v21 & 1;
    }

    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = sub_188A34624(0, a3);
    if (((a2 | v6) & 0xC000000000000001) != 0)
    {
      v14 = a2 & 0xC000000000000001;
      v15 = 4;
      while (1)
      {
        v16 = v15 - 4;
        v17 = v15 - 3;
        if (__OFADD__(v15 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v18 = a5(v15 - 4, v6);
          if (!v14)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v16 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v18 = *(v6 + 8 * v15);
          if (!v14)
          {
LABEL_24:
            if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v19 = *(a2 + 8 * v15);
            goto LABEL_26;
          }
        }

        v19 = a5(v15 - 4, a2);
LABEL_26:
        v20 = v19;
        v21 = sub_18A4A7C88();

        if (v21)
        {
          ++v15;
          if (v17 != v8)
          {
            continue;
          }
        }

        return v21 & 1;
      }
    }

    v6 += 32;
    v22 = (a2 + 32);
    v23 = *(v35 + 16);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v8 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v6;
      v6 += 8;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v29 = v28;
      v21 = sub_18A4A7C88();

      v31 = v25-- != 0;
      if (v21)
      {
        --v24;
        --v23;
        if (v31)
        {
          continue;
        }
      }

      return v21 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v32 = a3;
    v33 = sub_18A4A7F68();
    a3 = v32;
    v8 = v33;
  }

  v34 = a3;
  result = sub_18A4A7F68();
  a3 = v34;
  if (v8 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v21 = 0;
  return v21 & 1;
}

id sub_188B2A31C()
{
  v1 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__overflowItem;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__overflowItem);
  v3 = v2;
  if (!v2)
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = sub_188EC211C;
    v27 = v5;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_188EBD490;
    v25 = &block_descriptor_53_0;
    v6 = _Block_copy(&v22);

    v7 = [v4 elementWithUncachedProvider_];
    _Block_release(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18A64B710;
    *(v8 + 32) = v7;
    v9 = objc_allocWithZone(UIMenu);
    v10 = v7;
    v11 = sub_18A4A7258();
    sub_188A34624(0, &qword_1ED48FC30);
    v12 = sub_18A4A7518();

    v13 = [v9 initWithTitle:v11 image:0 imageName:0 identifier:0 options:0 children:v12];

    v14 = v13;
    [v14 setSubtitle_];
    [v14 setPreferredElementSize_];

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = sub_188EC2124;
    v27 = v15;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_188BC2240;
    v25 = &block_descriptor_57_0;
    v16 = _Block_copy(&v22);

    [v14 setHeaderViewProvider_];
    _Block_release(v16);
    v3 = [objc_allocWithZone(UIBarButtonItem) initWithPrimaryAction:0 menu:v14];
    v17 = sub_18A4A7258();
    [v3 setAccessibilityIdentifier_];

    v18 = *(v0 + v1);
    *(v0 + v1) = v3;
    v19 = v3;
  }

  v20 = v2;
  return v3;
}

void sub_188B2A668(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalOverflowItems);
  *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalOverflowItems) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v8 = v3;
    goto LABEL_8;
  }

  v8 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_188A34624(0, &qword_1EA92FD88);
  a1 = a1;
  v4 = v8;
  v5 = sub_18A4A7C88();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    v7 = sub_188B2A31C();
    [v7 _updateMenuInPlace];

    v6 = v8;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

uint64_t sub_188B2A858()
{
  v0 = sub_18A4A7288();
  v2 = v1;
  if (v0 == sub_18A4A7288() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_18A4A86C8();
  }

  return v5 & 1;
}

void sub_188B2A9B4(void *a1, void *a2, char a3)
{
  if (v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_hasIdiom] != 1)
  {
    return;
  }

  v4 = v3;
  if (sub_188AE6618())
  {
    return;
  }

  v192 = a3;
  v8 = &selRef_minimumContainerInsets;
  v9 = [v3 navigationBar];
  v10 = &selRef__activateAllConstraints;
  v199 = [v9 _activeBarMetrics];

  v194 = sub_188B3761C();
  v11 = 0;
  v12 = 0;
  v212 = 0;
  if (*&v4[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion] >= 2)
  {
    if (a1)
    {
      v13 = [a1 _isManualScrollEdgeAppearanceEnabled];
      if (!_UIBarsApplyChromelessEverywhere())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = 0;
      if (!_UIBarsApplyChromelessEverywhere())
      {
        goto LABEL_9;
      }
    }

    v14 = [v4 navigationBar];
    v15 = [v14 _effectiveDelegateSupportsScrollEdgeTransitionProgress];

    if (!(v13 & 1 | ((v15 & 1) == 0) | v194 & 1))
    {
      if (a1 && (v18 = [a1 _stackEntry]) != 0 && ((v19 = v18, v20 = objc_msgSend(v18, sel_isSearchActive), v21 = -[_UINavigationBarItemStackEntry _typedStorage](v19), !v20) ? (v22 = sub_18901F250()) : (v22 = sub_18901F25C()), v31 = v22, v21, v19, v31))
      {
        v32 = *(v31 + 248);

        if (v199 != 1 && v199 != 102)
        {
          if (v32 < 0.25)
          {
            goto LABEL_42;
          }

          goto LABEL_20;
        }

        if (v32 >= 0.25)
        {
LABEL_11:
          v16 = [a1 compactAppearance];
          if (!v16)
          {
            v17 = [v4 navigationBar];
            v11 = [v17 compactAppearance];

            if (v11)
            {
LABEL_44:
              v12 = [v11 _barTitleData];
              v212 = v12;
              goto LABEL_45;
            }

            v16 = [a1 standardAppearance];
            if (!v16)
            {
LABEL_27:
              v30 = [v4 navigationBar];
              v11 = [v30 standardAppearance];

              goto LABEL_44;
            }
          }

LABEL_43:
          v11 = v16;
          goto LABEL_44;
        }
      }

      else if (v199 != 1 && v199 != 102)
      {
        goto LABEL_42;
      }

      v16 = [a1 compactScrollEdgeAppearance];
      if (v16)
      {
        goto LABEL_43;
      }

      v33 = [v4 navigationBar];
      v11 = [v33 compactScrollEdgeAppearance];

      if (v11)
      {
        goto LABEL_44;
      }

      v16 = [a1 scrollEdgeAppearance];
      if (v16)
      {
        goto LABEL_43;
      }

      v34 = [v4 navigationBar];
      v11 = [v34 scrollEdgeAppearance];

      if (v11)
      {
        goto LABEL_44;
      }

      goto LABEL_11;
    }

LABEL_9:
    if (v199 == 1 || v199 == 102)
    {
      goto LABEL_11;
    }

    if (!a1)
    {
LABEL_26:
      v16 = [a1 standardAppearance];
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_43;
    }

LABEL_20:
    v23 = [a1 _stackEntry];
    if (!v23)
    {
      goto LABEL_26;
    }

    v24 = v23;
    v25 = [v23 isSearchActive];
    v26 = [(_UINavigationBarItemStackEntry *)v24 _typedStorage];
    v27 = v25 ? sub_18901F25C() : sub_18901F250();
    v28 = v27;

    if (!v28)
    {
      goto LABEL_26;
    }

    v29 = *(v28 + 304);

    if (v29 <= 0.0)
    {
      goto LABEL_26;
    }

LABEL_42:
    v16 = [a1 scrollEdgeAppearance];
    if (!v16)
    {
      v66 = [v4 navigationBar];
      v11 = [v66 scrollEdgeAppearance];

      if (v11)
      {
        goto LABEL_44;
      }

      v16 = [a1 standardAppearance];
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_43;
  }

LABEL_45:
  v201 = v11;
  v197 = v12;
  v204 = [a2 _effectiveBackBarButtonItem];
  if (v204)
  {
    v35 = v204;
    if (_UINavigationBarBackButtonShowsContextMenu())
    {
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1890DAAE0;
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188EBD490;
      aBlock[3] = &block_descriptor_94_0;
      v37 = _Block_copy(aBlock);
      v38 = objc_opt_self();

      v39 = [v38 elementWithProvider_];
      _Block_release(v37);

      v40 = [objc_allocWithZone(UIMenuDisplayPreferences) init];
      [v40 setMaximumNumberOfTitleLines_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_18A64B710;
      *(v41 + 32) = v39;
      v42 = objc_allocWithZone(UIMenu);
      v43 = v39;
      v44 = sub_18A4A7258();
      sub_188A34624(0, &qword_1ED48FC30);
      v45 = sub_18A4A7518();

      v46 = [v42 initWithTitle:v44 image:0 imageName:0 identifier:0 options:0 children:v45];

      v12 = v197;
      v8 = &selRef_minimumContainerInsets;
      v47 = v46;
      v10 = &selRef__activateAllConstraints;
      v48 = v47;
      [v47 setSubtitle_];
      [v48 setPreferredElementSize_];

      [v48 setDisplayPreferences_];
    }

    else
    {
      v48 = 0;
    }

    [v35 setMenu_];

    v11 = v201;
  }

  if (a1)
  {
    v196 = [a1 hidesBackButton];
    v193 = [a1 leftItemsSupplementBackButton];
    v49 = [a1 leftBarButtonItems];
    if (v49)
    {
      v50 = v49;
      sub_188A34624(0, &qword_1ED48E8C0);
      v51 = sub_18A4A7548();

      v52 = v51 >> 62;
      if (!((v204 == 0) | v196 & 1))
      {
        if (v193)
        {
          goto LABEL_82;
        }

        if (v52)
        {
          goto LABEL_81;
        }

        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
        {
          goto LABEL_82;
        }
      }

LABEL_56:
      v53 = [a1 _barButtonForBackButtonIndicator];
      v54 = v51 & 0xFFFFFFFFFFFFFF8;
      if (v52)
      {
        while (1)
        {
          v52 = sub_18A4A7F68();
          if (!v52)
          {
            break;
          }

LABEL_58:
          if (v52 >= 1)
          {
            v55 = 0;
            do
            {
              if ((v51 & 0xC000000000000001) != 0)
              {
                v56 = sub_188E49ABC(v55, v51);
              }

              else
              {
                v56 = *(v51 + 8 * v55 + 32);
              }

              v57 = v56;
              ++v55;
              if (v53)
              {
                v58 = v56 == v53;
              }

              else
              {
                v58 = 0;
              }

              v59 = v58;
              [v56 _setShowsChevron_];
            }

            while (v52 != v55);

            v8 = &selRef_minimumContainerInsets;
            v11 = v201;
            v12 = v197;
            v10 = &selRef__activateAllConstraints;
            goto LABEL_85;
          }

          __break(1u);
LABEL_81:
          if (sub_18A4A7F68() >= 1)
          {
            goto LABEL_56;
          }

LABEL_82:
          v53 = 0;
          v54 = v51 & 0xFFFFFFFFFFFFFF8;
          if (!v52)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
LABEL_57:
        v52 = *(v54 + 16);
        if (v52)
        {
          goto LABEL_58;
        }
      }
    }

LABEL_85:
    sub_188B36330();
    v60 = v67;
    v195 = v68;
    v187 = v69;
    v70 = [v4 v8[411]];
    v71 = [v70 v10[32]];

    [a1 _minimumDesiredHeightForBarMetrics_];
    v61 = v72;
    if (v11)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v60 = 0;
    v195 = 0;
    v187 = 0;
    v193 = 0;
    v196 = 0;
    v61 = 0;
    if (v11)
    {
LABEL_86:
      v180 = [v11 _plainButtonAppearanceData];
      v179 = [v11 _prominentButtonAppearanceData];
      v178 = [v11 _backButtonAppearanceData];
      v65 = 0;
      v63 = 0;
      goto LABEL_87;
    }
  }

  v62 = [v4 v8[411]];
  v63 = [v62 backIndicatorImage];

  v64 = [v4 v8[411]];
  v65 = [v64 backIndicatorTransitionMaskImage];

  if (v63)
  {
    if (!v65)
    {

      v63 = 0;
    }
  }

  else
  {

    v65 = 0;
  }

  v178 = 0;
  v179 = 0;
  v180 = 0;
LABEL_87:
  v177 = [a1 backAction];
  v176 = [a1 additionalOverflowItems];
  v181 = v65;
  v191 = v65;
  v73 = v8[411];
  v190 = v63;
  v74 = [v4 v73];
  [v74 _requestedMaxBackButtonWidth];
  v76 = v75;

  v189 = v204;
  sub_188B2C99C();
  if (v11)
  {
    v77 = [v11 _overrideUserInterfaceStyle];
  }

  else
  {
    v77 = 0;
  }

  sub_188B32E50(v77);
  if (!a1)
  {
    goto LABEL_96;
  }

  v78 = [a1 subtitleView];
  if (!v78)
  {
    v205 = [a1 attributedSubtitle];
    if (v205)
    {
      if (v12)
      {
        v79 = [v12 _subtitleTextAttributesForSwift];
      }

      else
      {
        v80 = [v4 v8[411]];
        v81 = [v80 traitCollection];

        v82 = [v81 userInterfaceIdiom];
        v79 = _UINavigationTitleAppearanceDefaultSubtitleTextAttributes(v82);
      }

      v83 = v79;
      objc_opt_self();
      v203 = swift_dynamicCastObjCClassUnconditional();
      v84 = v205;
      v78 = v83;
      v202 = 0;
      goto LABEL_99;
    }

LABEL_96:
    v205 = 0;
    v203 = 0;
    v202 = -1;
    goto LABEL_100;
  }

  v203 = 0;
  v202 = 1;
  v205 = v78;
LABEL_99:
  v85 = v78;
LABEL_100:
  v200 = sub_1890D3644(a1, v12);
  v174 = v87;
  v175 = v86;
  v173 = v88;
  v89 = *&v4[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView];
  v182 = v63;
  if (v89)
  {
    v90 = [v89 floatingTabBar];
    v91 = v90;
    if (v90 && (v92 = [v90 currentSelectionTitle]) != 0)
    {
      v93 = v92;
      v94 = sub_18A4A7288();
      v96 = v95;

      v97 = v94;
    }

    else
    {
      v97 = 0;
      v96 = 0;
    }
  }

  else
  {
    v97 = 0;
    v96 = 0;
    v91 = 0;
  }

  sub_188B3AE9C(v4, a1, a2, v97, v96, v91, &v210);

  v198 = v60;
  v183 = v91;
  if (!a1)
  {
    v185 = 0;
    v186 = 0;
    v101 = 0;
    goto LABEL_124;
  }

  v98 = a1;
  v99 = [v4 v8[411]];
  v100 = [v99 _effectiveDelegate];

  if (!v100)
  {
    v101 = [v98 _searchControllerIfAllowed];

    if (!v101)
    {
LABEL_122:
      v186 = 0;
      LOWORD(v185) = 0;
      goto LABEL_123;
    }

LABEL_113:
    v102 = v101;
    v103 = [v102 _inlineSearchBarItemGroup];
    if (v103)
    {
      v186 = v103;
      v104 = v98;
      v105 = v101;
      v106 = [v104 searchBarPlacement];
      v107 = [v4 v8[411]];
      v108 = [v107 traitCollection];

      LODWORD(v107) = [v102 _searchBarHidesOtherNavigationBarContentWithTraitCollection_];
      if (v107)
      {
        v109 = 256;
      }

      else
      {
        v109 = 0;
      }

      v58 = v106 == 3;
      v101 = v105;
      if (v58)
      {
        ++v109;
      }

      LOWORD(v185) = v109;
      goto LABEL_123;
    }

    goto LABEL_122;
  }

  if ([v100 respondsToSelector_])
  {
    v101 = [v100 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
    swift_unknownObjectRelease();

    if (!v101)
    {
      goto LABEL_122;
    }

    goto LABEL_113;
  }

  swift_unknownObjectRelease();
  v186 = 0;
  LOWORD(v185) = 0;
  v101 = 0;
LABEL_123:
  BYTE4(v185) = [v98 largeTitleDisplayMode] == 3;
  v60 = v198;
LABEL_124:
  sub_188B3B168(a1, v208);
  if (v60)
  {
    swift_bridgeObjectRetain_n();

    v184 = v187;
  }

  else
  {
    v184 = 0;
  }

  v188 = [a1 pinnedTrailingGroup];
  *&v110 = sub_188B3AA88(&v212, v205, v202, v4, a1, v207).n128_u64[0];
  if (v11)
  {
    v111 = [v11 _titleControlHidden];
    v112 = 0;
    if (!a1)
    {
LABEL_138:
      if (v60)
      {
        goto LABEL_139;
      }

LABEL_143:
      v195 = 0;
      if (a1)
      {
        goto LABEL_140;
      }

LABEL_144:
      v125 = 0;
      v127 = 0;
      v122 = 0;
      goto LABEL_147;
    }
  }

  else
  {
    v111 = 0;
    v112 = 0;
    if (!a1)
    {
      goto LABEL_138;
    }
  }

  if (!v200)
  {
    goto LABEL_138;
  }

  v113 = [a1 _stackEntry];
  if (v113)
  {
    v114 = v113;
    v115 = v101;
    v116 = [v113 isSearchActive];
    v117 = [(_UINavigationBarItemStackEntry *)v114 _typedStorage];
    v118 = v116 ? sub_18901F25C() : sub_18901F250();
    v119 = v118;

    v101 = v115;
    if (v119)
    {
      v120 = *(v119 + 304);

      v112 = v120 > 0.0;
      goto LABEL_138;
    }
  }

  v112 = 0;
  if (!v60)
  {
    goto LABEL_143;
  }

LABEL_139:

  if (!a1)
  {
    goto LABEL_144;
  }

LABEL_140:
  v121 = v101;
  v122 = [a1 style];
  v123 = [a1 customizationIdentifier];
  if (v123)
  {
    v124 = v123;
    v125 = sub_18A4A7288();
    v127 = v126;
  }

  else
  {
    v125 = 0;
    v127 = 0;
  }

  v101 = v121;
LABEL_147:
  *&__src[0] = v61;
  *(&__src[0] + 1) = v199;
  *&__src[1] = v180;
  *(&__src[1] + 1) = v179;
  *&__src[2] = v178;
  *(&__src[2] + 1) = v204;
  LOBYTE(__src[3]) = v196;
  *(&__src[3] + 1) = v177;
  *&__src[4] = v176;
  *(&__src[4] + 1) = v182;
  *&__src[5] = v181;
  *(&__src[5] + 1) = v76;
  *&__src[6] = v198;
  BYTE8(__src[6]) = v193;
  *&__src[7] = v186;
  WORD4(__src[7]) = v185;
  *&__src[8] = v184;
  *(&__src[8] + 1) = v188;
  __src[13] = v207[4];
  __src[14] = v207[5];
  __src[15] = v207[6];
  __src[9] = v207[0];
  __src[10] = v207[1];
  __src[12] = v207[3];
  __src[11] = v207[2];
  *&__src[16] = v205;
  *(&__src[16] + 1) = v203;
  LOBYTE(__src[17]) = v202;
  BYTE1(__src[17]) = v111;
  BYTE2(__src[17]) = BYTE4(v185);
  *(&__src[17] + 1) = v200;
  *&__src[18] = v175;
  *(&__src[18] + 1) = v174;
  LOBYTE(__src[19]) = v173;
  BYTE1(__src[19]) = v112;
  *(&__src[19] + 1) = v195;
  *&__src[20] = v122;
  *(&__src[20] + 1) = v125;
  *&__src[21] = v127;
  *(&__src[23] + 8) = v208[2];
  *(&__src[24] + 8) = v208[3];
  *(&__src[21] + 8) = v208[0];
  *(&__src[22] + 8) = v208[1];
  *(&__src[25] + 1) = v209;
  *(&__src[27] + 13) = *(v211 + 13);
  __src[27] = v211[0];
  __src[26] = v210;
  memcpy(aBlock, __src, 0x1CDuLL);
  v128 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
  v129 = *&v4[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  sub_188B353E0(aBlock);

  if ((v194 & 1) == 0)
  {
    v130 = *&v4[v128];
    v131 = *&v4[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__titleAlpha];
    v132 = *&v130[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineTitleViewAlpha];
    *&v130[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineTitleViewAlpha] = v131;
    if (v132 != v131)
    {
      [v130 setNeedsLayout];
    }
  }

  v133 = *&v4[v128];
  sub_188EBDD14(v192 & 1);

  v134 = *&v4[v128];
  sub_188AEA3E4();

  sub_188B4C668(a1, v197);
  if (!a1)
  {
    goto LABEL_161;
  }

  v135 = [a1 prompt];
  if (v135)
  {
    v136 = v135;
    v137 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView;
    v138 = *&v4[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView];
    if (v138)
    {
      v139 = v138;
      [v139 setPrompt_];
    }

    v140 = *&v4[v137];
    if (v140)
    {
      v141 = objc_opt_self();
      v142 = v140;
      v143 = [v141 labelColor];
      [v142 setTextColor_];
    }
  }

  v144 = [a1 _weeTitle];
  if (!v144)
  {
LABEL_161:
    if (v101)
    {
      goto LABEL_162;
    }

    goto LABEL_175;
  }

  v145 = v144;
  sub_18A4A7288();

  if (sub_18A4A7358() >= 1)
  {
    v146 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel;
    v147 = *&v4[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel];
    if (v147 || (v148 = [v4 navigationBar], objc_msgSend(v148, sel_bounds), v150 = v149, v152 = v151, v154 = v153, v156 = v155, v148, v157 = objc_msgSend(objc_allocWithZone(UILabel), sel_initWithFrame_, v150, v152, v154, v156), v158 = *&v4[v146], *&v4[v146] = v157, v158, (v147 = *&v4[v146]) != 0))
    {
      sub_188C72980();
      v159 = v147;
      sub_18A4A7D98();

      sub_188C729D4();
      v160 = v101;
      v161 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v162 = sub_18A4A7258();

      type metadata accessor for Key(0);
      sub_188C5E0DC();
      v163 = sub_18A4A7088();

      v164 = v161;
      v101 = v160;
      v165 = [v164 initWithString:v162 attributes:v163];

      [v159 setAttributedText_];
      goto LABEL_161;
    }
  }

  if (v101)
  {
LABEL_162:
    v166 = [v101 searchBar];
    if (v166)
    {
      v167 = v166;
      if (([v166 _isHostedInlineByNavigationBar] & 1) == 0)
      {
        if (v199 == 102 || v199 == 1)
        {
          v168 = @"UICTContentSizeCategoryL";
        }

        else
        {
          v168 = 0;
        }

        [v167 setMaximumContentSizeCategory_];
      }

      if ([v167 showsScopeBar])
      {
        v169 = [v167 _scopeBar];
        if (v169)
        {
          v170 = v169;
          [v169 setAlpha_];
        }
      }
    }
  }

LABEL_175:
  v171 = [v4 navigationBar];
  [v171 _accessibility_navigationBarContentsDidChange];

  if (*&v4[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext])
  {

    sub_188B4C634(v205, v203, v202);
    v172 = v191;
  }

  else
  {
    sub_188B4C1CC();

    sub_188B4C634(v205, v203, v202);
    v172 = v189;
  }

  sub_188B4AD88(__src);
}

void sub_188B2C014(void *a1, void *a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView];
  if (v8)
  {
    [v8 setDirectionalLayoutMargins_];
  }

  if (sub_188B2941C())
  {
    v9 = sub_188B297A0(0);
  }

  else
  {
    v44.receiver = v3;
    v44.super_class = ObjectType;
    objc_msgSendSuper2(&v44, sel_resolvedLargeTitleMargins);
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = [v3 navigationBar];
  v18 = [v17 insetsLayoutMarginsFromSafeArea];

  if (v18)
  {
    v19 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
    if (v19)
    {
      v20 = v19;
      if ([v20 insetsLayoutMarginsFromSafeArea])
      {
        v21 = [v3 navigationBar];
        [v21 _shouldReverseLayoutDirection];

        _UIEdgeInsetsFromDirectionalEdgeInsets();
        v43 = v22;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v29 = [v3 navigationBar];
        [v29 safeAreaInsets];
        v31 = v30;

        UIEdgeInsetsSubtract(15, v43, v24, v26, v28, v31);
        _UIEdgeInsetsFromDirectionalEdgeInsets();
        v13 = v32;
        v14 = v33;
        v15 = v34;
        v16 = v35;
      }

      else
      {
      }
    }
  }

  v36 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
  if (v36)
  {
    [v36 setDirectionalLayoutMargins_];
  }

  if (a1)
  {
    v37 = a1;
    v38 = [v37 _contentViewMarginType];
    if (v38 == 2)
    {
      v39 = [v37 contentView];
      [v39 setDirectionalLayoutMargins_];
    }

    else
    {
      if (v38 != 1)
      {
LABEL_19:

        goto LABEL_20;
      }

      v39 = [v37 contentView];
      [v39 setDirectionalLayoutMargins_];
    }

    goto LABEL_19;
  }

LABEL_20:
  if (!a2)
  {
    return;
  }

  v40 = a2;
  v41 = [v40 _contentViewMarginType];
  if (v41 == 2)
  {
    v42 = [v40 contentView];
    [v42 setDirectionalLayoutMargins_];
    goto LABEL_25;
  }

  if (v41 == 1)
  {
    v42 = [v40 contentView];
    [v42 setDirectionalLayoutMargins_];
LABEL_25:
  }
}

double UIEdgeInsetsSubtract(char a1, double result, double a3, double a4, double a5, double a6)
{
  v6 = result - a6;
  if (a1)
  {
    return v6;
  }

  return result;
}

id sub_188B2C88C(char a1)
{
  v3 = [v1 stack];
  v4 = [v3 topItem];

  if (v4 && (v5 = [v4 prompt], v4, v5))
  {

    v6 = 0;
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 1;
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v7 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView];
  if (v7)
  {
    [v7 setHidden_];
  }

LABEL_8:
  result = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView];
  if (result)
  {
    v9 = 1.0;
    if (v6)
    {
      v9 = 0.0;
    }

    return [result setAlpha_];
  }

  return result;
}

void sub_188B2C99C()
{
  v1 = [v0 stack];
  v2 = [v1 previousBackItem];

  if (v2)
  {
    [v2 _setTitleViewDataSource_];
  }

  v3 = [v0 stack];
  v4 = [v3 backItem];

  if (v4)
  {
    [v4 _setTitleViewDataSource_];
  }

  v5 = [v0 stack];
  v6 = [v5 previousTopItem];

  if (v6)
  {
    [v6 _setTitleViewDataSource_];
  }

  v7 = [v0 stack];
  v8 = [v7 topItem];

  if (v8)
  {
    [v8 _setTitleViewDataSource_];
  }
}

void sub_188B2CC14(void *a1, void *a2, char a3)
{
  v7 = [v3 navigationBar];
  v8 = [v7 _canDrawContent];

  if ((v8 & 1) == 0)
  {
    if (*&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion] >= 2)
    {
      v13 = sub_188A34624(0, &qword_1EA9310B8);
      v14 = sub_188B2D134(v13, a1);
      if (v14)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v14;
        }
      }

      else
      {
        v15 = 0;
      }

      sub_188C0BBC8(v15, a2, a3 & 1);
    }

    else
    {
      v9 = sub_188A34624(0, &qword_1ED48DBB0);
      v10 = sub_188B2D134(v9, a1);
      if (v10)
      {
        v11 = v10;
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (!v12)
        {
        }
      }

      else
      {
        v12 = 0;
      }

      v17 = [v3 navigationBar];
      v18 = [v17 _activeBarMetrics];

      if (a3)
      {
        if (v18 == 1 || v18 == 102)
        {
          goto LABEL_16;
        }

        __break(1u);
      }

      if (!v18 || v18 == 101)
      {
LABEL_16:
        sub_188B2F65C(v12, a2);
        return;
      }

      __break(1u);
    }
  }
}

void sub_188B2CDC8()
{
  v1 = v0;
  v2 = [v0 stack];
  v32 = [v2 topEntry];

  v3 = [v1 navigationBar];
  v4 = [v3 _canDrawContent];

  v5 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView;
  v6 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
  if (v6)
  {
    [v6 setHidden_];
  }

  if (v4)
  {
    v7 = [v1 navigationBar];
    [v7 setNeedsDisplay];

    v8 = v32;
    goto LABEL_49;
  }

  if (v32)
  {
    v9 = [v32 item];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v1 navigationBar];
  v11 = [v10 _activeBarMetrics];

  v13 = v11 == 1 || v11 == 102;
  if (!v32)
  {
    v18 = 0;
    if (v11 != 102)
    {
      goto LABEL_21;
    }

LABEL_22:
    if (v18)
    {
      v19 = 112;
LABEL_26:
      v20 = *(v18 + v19);
      v21 = v20;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = v32;
  v15 = [v14 isSearchActive];
  v16 = [(_UINavigationBarItemStackEntry *)v14 _typedStorage];
  if (v15)
  {
    v17 = sub_18901F25C();
  }

  else
  {
    v17 = sub_18901F250();
  }

  v18 = v17;

  if (v11 == 102)
  {
    goto LABEL_22;
  }

LABEL_21:
  if (v11 == 1)
  {
    goto LABEL_22;
  }

  if (v18)
  {
    v19 = 104;
    goto LABEL_26;
  }

LABEL_27:
  v20 = 0;
LABEL_28:
  v22 = v20;
  sub_188B2CC14(v20, v9, v13);
  v24 = v23;

  if (v24)
  {
    if (v18)
    {
      v25 = *(v18 + 304);
    }

    else
    {
      v25 = 0.0;
    }

    [v24 setBackgroundTransitionProgress_];
  }

  if (v11 == 102 || v11 == 1)
  {
    if (v18)
    {
      v26 = *(v18 + 112);
      *(v18 + 112) = v24;

      v27 = v24;

      if (!v24)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

LABEL_41:
    if (v24)
    {
      [v24 setBackgroundAlpha_];
    }

    goto LABEL_43;
  }

  if (!v18)
  {
    goto LABEL_41;
  }

  v28 = v24;

  sub_188B4CD90(v24);

  if (v24)
  {
LABEL_40:
    [v24 setBackgroundAlpha_];
  }

LABEL_43:
  if (v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground] == 1)
  {
    v29 = *&v1[v5];
    if (v29)
    {
      [v29 setLayout_];
    }

    sub_188B2DF14();
    v30 = *&v1[v5];
    if (v30)
    {
      [v30 transitionBackgroundViews];
    }
  }

  v31 = [v1 navigationBar];
  [v31 _updatePaletteBackgroundIfNecessary];

  v8 = v24;
LABEL_49:
}

id sub_188B2D134(uint64_t a1, id a2)
{
  if (a1 && (sub_188A34624(0, &unk_1ED48DBC0), (v4 = swift_dynamicCastMetatype()) != 0))
  {
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C6D8) == v4)
    {
      v6 = a2;
    }

    else
    {
      a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLayout_];
    }

    v7 = [v2 navigationBar];
    v8 = [v7 traitCollection];

    if (a2)
    {
      [a2 setInterfaceIdiom_];
      [a2 setInterfaceStyle_];
    }
  }

  else
  {
    v5 = a2;
  }

  return a2;
}

void sub_188B2D280()
{
  if (qword_1ED48D340 != -1)
  {
    swift_once();
  }

  if ((byte_1EA994DD0 & 1) == 0)
  {
    v1 = [v0 stack];
    v45 = [v1 topEntry];

    if (v45)
    {
      v2 = [v0 navigationBar];
      v3 = [v2 _effectiveDelegate];

      if (v3)
      {
        v4 = v0;
        v5 = [v45 isSearchActive];
        v6 = [(_UINavigationBarItemStackEntry *)v45 _typedStorage];
        if (v5)
        {
          v7 = sub_18901F25C();
        }

        else
        {
          v7 = sub_18901F250();
        }

        v8 = v7;

        if (v8)
        {
          v9 = *(v8 + 80);
          v10 = v9;

          if (v9)
          {
            if ([v3 respondsToSelector_])
            {
              swift_unknownObjectRetain();
              v11 = [v45 item];
              v12 = [v3 _viewControllerForNavigationItem_];
              swift_unknownObjectRelease();

              v13 = v4;
              if (v12)
              {
                v14 = [v12 _contentOrObservableScrollViewForEdge_];
              }

              else
              {
                v14 = 0;
              }
            }

            else
            {
              v14 = 0;
              v12 = 0;
              v13 = v4;
            }

            if (*&v13[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext])
            {
              v15 = v14;
LABEL_20:
              v16 = v15;
              v17 = v14;
              goto LABEL_21;
            }

            v23 = [v13 navigationBar];
            v17 = [v23 superview];

            if (v17)
            {
              if (v14)
              {
                v15 = v14;
                [v15 bounds];
                [v17 convertRect:v15 fromCoordinateSpace:?];
                v25 = v24;
                v27 = v26;
                v29 = v28;
                v31 = v30;
                v32 = [v13 navigationBar];
                [v32 frame];
                v34 = v33;
                v36 = v35;
                v38 = v37;
                v40 = v39;

                v47.origin.x = v25;
                v47.origin.y = v27;
                v47.size.width = v29;
                v47.size.height = v31;
                v48.origin.x = v34;
                v48.origin.y = v36;
                v48.size.width = v38;
                v48.size.height = v40;
                LOBYTE(v32) = CGRectContainsRect(v47, v48);

                if (v32)
                {
                  goto LABEL_20;
                }
              }

              else
              {
              }

              v17 = 0;
            }

LABEL_21:
            v18 = *&v10[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_reparentingHelper];
            Strong = swift_unknownObjectWeakLoadStrong();
            v20 = Strong;
            if (v17)
            {
              if (Strong)
              {
                sub_188A34624(0, &qword_1EA9310A8);
                v21 = v17;
                v22 = sub_18A4A7C88();

                if (v22)
                {

                  swift_unknownObjectRelease();
LABEL_35:

LABEL_37:
                  v45 = v14;
                  goto LABEL_38;
                }
              }
            }

            else
            {
              if (!Strong)
              {
                goto LABEL_36;
              }
            }

            v41 = swift_unknownObjectWeakLoadStrong();
            if (v41)
            {
              v42 = v41;
              [v41 _setDonatedTitleView_];
            }

            swift_unknownObjectWeakAssign();
            if (v17)
            {
              [v17 _setDonatedTitleView_];

              swift_unknownObjectRelease();
              goto LABEL_35;
            }

LABEL_36:
            v43 = OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView;
            v44 = *&v10[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
            [v10 bounds];
            [v44 setFrame_];
            [*&v10[v43] _setFlipsHorizontalAxis_];
            [v10 addSubview_];

            swift_unknownObjectRelease();
            goto LABEL_37;
          }
        }

        swift_unknownObjectRelease();
      }

LABEL_38:
    }
  }
}

void sub_188B2D758(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v8 = [v4 stack];
  v9 = [v8 topEntry];

  v10 = &unk_1EA93C000;
  if (v9)
  {
    v11 = [v9 item];
    v12 = v9;
    v13 = [v12 isSearchActive];
    v14 = [(_UINavigationBarItemStackEntry *)v12 _typedStorage];
    if (v13)
    {
      v15 = sub_18901F25C();
    }

    else
    {
      v15 = sub_18901F250();
    }

    v16 = v15;

    if (v16)
    {
      if (v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundTransparentWhenNotCollapsed] == 1)
      {

        v17 = 1;
        goto LABEL_17;
      }

      v18 = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext];

      if (!v18 && (sub_188B4C018(v11) & 1) == 0 && (sub_1890C8B30(v11) & 1) == 0)
      {
        v19 = v11;
        if (!v11 && (v20 = [v5 stack], v19 = objc_msgSend(v20, sel_topItem), v20, !v19) || (v21 = v11, v22 = objc_msgSend(v19, sel__bottomPalette), v19, !v22))
        {
          v17 = 1;
LABEL_17:
          *(v16 + 216) = v17;
          v23 = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__backgroundAlpha];
          v24 = *(v16 + 16);
          *(v16 + 16) = v23;
          if (v23 != v24)
          {
            sub_188B386EC();
          }

          v25 = v12;

          v26 = [(_UINavigationBarItemStackEntry *)v25 _typedStorage];
          v27 = sub_18901F250();

          if (v27)
          {

            if (v16 == v27)
            {
              if (*(v16 + 80) && v11)
              {
                v28 = v11;
                if (sub_188B9BE44(v28) == 2)
                {
                  if ((*(v16 + 168) & 1) == 0)
                  {
                    *(v16 + 168) = 1;
                    sub_188B395C4();
                    sub_188B36AB8();
                    sub_188CE850C();
                  }

                  v29 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
                  v30 = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
                  if (*&v30[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode] == 1)
                  {
                    *&v30[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode] = 2;
                    [v30 setNeedsLayout];
                    v30 = *&v5[v29];
                  }

                  if (*&v30[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode] == 1)
                  {
                    *&v30[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode] = 2;
                    v31 = v30;
                    sub_188B346C0();
                    [v31 setNeedsLayout];
                  }

                  goto LABEL_34;
                }
              }

              if (*(v16 + 168) == 1)
              {
                *(v16 + 168) = 0;
                sub_188B395C4();
                sub_188B36AB8();
                sub_188CE850C();
              }
            }
          }

LABEL_34:
          UIFloorToScale(a4, 6.0);
          v33 = *(v16 + 224) == a3 && v32 == *(v16 + 232);
          if (v33 && *(v16 + 40) == 1)
          {
            goto LABEL_52;
          }

          *(v16 + 224) = a3;
          *(v16 + 232) = v32;
          sub_188B38ED0(a3);
          swift_beginAccess();
          v34 = *(v16 + 344);
          v35 = v34;
          if (!v34)
          {
            v35 = *(v16 + 352);
            v36 = v35;
          }

          swift_beginAccess();
          v37 = *(v16 + 232);
          v38 = v34;

          sub_188B3A13C(v39, v35, v37);

          swift_beginAccess();
          v40 = *(v16 + 400);
          if (v40 >> 62)
          {
            v41 = sub_18A4A7F68();
            v10 = &unk_1EA93C000;
            if (v41)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v10 = &unk_1EA93C000;
            if (v41)
            {
LABEL_44:
              v75 = v9;
              if (v41 < 1)
              {
                __break(1u);
                return;
              }

              v42 = 0;
              v43 = 0.0;
              do
              {
                if ((v40 & 0xC000000000000001) != 0)
                {
                  v44 = sub_188E4A488(v42, v40);
                }

                else
                {
                  v44 = *(v40 + 8 * v42 + 32);
                }

                ++v42;
                v45 = &v44[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
                *v45 = v43;
                *(v45 + 8) = 0;
                v46 = *&v44[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

                v43 = v43 + v46;
              }

              while (v41 != v42);

              v10 = &unk_1EA93C000;
            }
          }

          *(v16 + 40) = 1;
          sub_188B386EC();

LABEL_52:
          sub_188B4B09C();

          goto LABEL_53;
        }
      }

      v17 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v11 = 0;
  }

LABEL_53:
  v47 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView;
  v48 = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
  if (v48 && v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground] == 1)
  {
    v49 = *&v5[v10[133]];
    v50 = v48;
    [v50 alpha];
    if (v51 != v49)
    {
      [v50 setAlpha_];
    }
  }

  v52 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext;
  if (*&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext])
  {
    goto LABEL_78;
  }

  v53 = *&v5[v47];
  if (v53)
  {
    v54 = 0.0;
    if (v16)
    {
      v55 = *(v16 + 208);
      v56 = -v55;
      if (*(v16 + 96))
      {
        v54 = *(v16 + 224);
        v57 = v55 + *(v16 + 232);
LABEL_65:
        [v53 setFrame_];
        goto LABEL_66;
      }
    }

    else
    {
      v56 = 0.0;
    }

    v57 = 0.0;
    goto LABEL_65;
  }

LABEL_66:
  if (v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground] == 1)
  {
    v58 = *&v5[v47];
    if (v58)
    {
      v59 = [v58 layout];
      v60 = v59;
      if (v59)
      {
        if (v16)
        {
          [v59 setBackgroundTransitionProgress_];
          v61 = *(v16 + 312);
        }

        else
        {
          v61 = 0.0;
          [v59 setBackgroundTransitionProgress_];
        }

        [v60 setBackgroundAlpha_];
      }

      v62 = *&v5[v47];
      if (v62)
      {
        v63 = v62;
        [v63 transitionBackgroundViews];
      }
    }

    else
    {
      v60 = 0;
    }
  }

  if (*&v5[v52])
  {
    goto LABEL_78;
  }

  v64 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel;
  v65 = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel];
  if (v65 && (v66 = [v65 window]) != 0)
  {
  }

  else if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
  {
LABEL_78:

    return;
  }

  if (!v16 || !*(v16 + 80) || !*(v16 + 120) || (v67 = [v5 stack], v68 = objc_msgSend(v67, sel_topItem), v67, !v68) || (v69 = objc_msgSend(v68, sel__weeTitle), v68, !v69) || (sub_18A4A7288(), v69, v70 = sub_18A4A7358(), , v70 < 1))
  {
    v73 = *&v5[v64];
    if (v73)
    {
      v74 = v73;
      [v74 setAlpha_];
    }

    goto LABEL_78;
  }

  v71 = *&v5[v64];
  if (v71)
  {
    v72 = v71;
    [v72 setAlpha_];
  }
}

void sub_188B2DF14()
{
  if (v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground] == 1)
  {
    v1 = [v0 navigationBar];
    v2 = [v1 traitCollection];

    sub_188A34624(0, &unk_1ED48DBA0);
    v3 = [v2 objectForTrait_];

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937A70);
      if (swift_dynamicCast())
      {
        v4 = v8;
      }

      else
      {
        v4 = 0;
      }

      v5 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
      if (v5)
      {
        if (v4)
        {
          v6 = v5;
          v7 = sub_18A4A7258();

LABEL_11:
          [v6 setGroupName_];

          return;
        }

LABEL_10:
        v6 = v5;
        v7 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v5 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
      if (v5)
      {
        goto LABEL_10;
      }
    }
  }
}

void sub_188B2E094()
{
  v1 = v0;
  v2 = [v0 navigationBar];
  v3 = [v2 window];

  if (!v3)
  {
    return;
  }

  if (sub_188AE6618())
  {
    return;
  }

  v4 = [v1 stack];
  v5 = [v4 topEntry];

  if (v5)
  {
    v6 = [v5 isSearchActive];
    v7 = [(_UINavigationBarItemStackEntry *)v5 _typedStorage];
    if (v6)
    {
      v8 = sub_18901F25C();
    }

    else
    {
      v8 = sub_18901F250();
    }

    v11 = v8;

    if (!v11)
    {
      goto LABEL_13;
    }

    v10 = [v1 navigationBar];
    sub_188B4E8EC(v10);

LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v9 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
  if (v9)
  {
    v10 = v9;
    v5 = [v1 navigationBar];
    [v5 insertSubview:v10 atIndex:0];
    goto LABEL_12;
  }

LABEL_14:
  v12 = [v1 navigationBar];
  v13 = [*&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_assistant] previewContainer];
  [v12 addSubview_];
}

void sub_188B2F65C(void *a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = [v2 navigationBar];
  v6 = [v5 isTranslucent];

  v7 = [v2 navigationBar];
  v8 = [v7 backgroundEffects];

  if (v8)
  {
    sub_188A34624(0, &unk_1EA931120);
    v9 = sub_18A4A7548();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v2 navigationBar];
  v11 = [v10 _effectiveBarTintColor];

  v12 = [v2 navigationBar];
  v13 = [v12 barStyle];

  if (v9)
  {
    if (a1)
    {
      sub_188A34624(0, &unk_1EA931120);
      v14 = sub_18A4A7518();

      [a1 configureWithEffects_];
    }

    else
    {
    }

    goto LABEL_26;
  }

  if (v13 == 4)
  {
    v15 = 4;
    if (!a1)
    {
      goto LABEL_26;
    }

LABEL_19:
    [a1 configureEffectForStyle:v15 backgroundTintColor:v11 forceOpaque:v6 ^ 1];
    goto LABEL_26;
  }

  v16 = [v2 navigationBar];
  v23[0] = 0;
  [v16 _getBackgroundImage_shouldRespectOversizedBackgroundImage_actualBarMetrics_actualBarPosition_];

  v17 = v23[0];
  if (v23[0])
  {
    v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundTransparentWhenNotCollapsed] = 1;
    LOBYTE(v23[0]) = 0;
    v18 = v17;
    [v18 _isInvisibleAndGetIsTranslucent_];
    if (v6)
    {
      if (a1)
      {
        [a1 configureImage:v18 forceTranslucent:(v23[0] & 1) == 0];
      }
    }

    else if (v11)
    {
      if (a1)
      {
        [a1 configureImage:v18 forceOpaque:LOBYTE(v23[0]) backgroundTintColor:v11];
      }
    }

    else if (a1)
    {
      [a1 configureImage:v18 forceOpaque:LOBYTE(v23[0]) barStyle:v13];
    }
  }

  else
  {
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = 4;
    }

    if (a1)
    {
      goto LABEL_19;
    }
  }

LABEL_26:
  v19 = [v2 navigationBar];
  v20 = [v19 shadowImage];

  if (!a2 || ([a2 _backgroundHidden] & 1) == 0)
  {
    v21 = [v2 navigationBar];
    v22 = [v21 _hidesShadow];

    if (v20)
    {
      if ((v22 & 1) == 0)
      {
        [a1 configureShadowImage_];
        if (!a1)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }
  }

  [a1 configureWithoutShadow];
  if (a1)
  {
LABEL_33:
    [a1 setShadowAlpha_];
  }

LABEL_34:
}

void sub_188B2FDE0(id a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_isInteractive] = 0;
  v5 = _UIFloatingBarEnabled();
  type metadata accessor for ToolbarModel(0);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model] = sub_1890AB7A0(v5, 1);
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF20));

  v8 = sub_1890F8A2C(v7);
  v9 = OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_hostingView;
  *&v2[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_hostingView] = v8;
  v10 = *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = v8;
    v14 = v10;
  }

  else
  {
    swift_unknownObjectWeakAssign();
    v15 = v8;
    v16 = v10;
  }

  if (sub_18A4A46F8())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1890A7954();
    v17 = v8;
    sub_18A4A4708();
  }

  v18 = sub_18A4A4D08();
  v19 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  swift_beginAccess();
  v20 = *&v10[v19];
  v21 = -1;
  if ((v20 & v18) != 0)
  {
    v21 = ~v18;
  }

  *&v10[v19] = v21 & v20;
  sub_188F2461C(v20);

  v22 = *&v2[v9];
  v23 = objc_allocWithZone(type metadata accessor for ToolbarPointerInteractionAssistant());
  *&v2[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_pointerAssistant] = sub_188AF1A38(v22);
  v40.receiver = v2;
  v40.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v40, sel_initWithToolbar_, a1);
  v25 = v24;
  if (!v24)
  {
    goto LABEL_12;
  }

  v26 = OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_hostingView;
  v27 = *&v24[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_hostingView];
  v28 = v24;
  _UIBarsSetAccessibilityLimits(v27);
  if (a1)
  {
    [a1 addSubview_];
    sub_188B3019C();
    v29 = *(*&v28[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_pointerAssistant] + OBJC_IVAR____TtC5UIKit34ToolbarPointerInteractionAssistant_pointerAssistant);
    v30 = a1;
    v31 = [v29 previewContainer];
    [v30 addSubview_];

    v32 = v30;
    v33 = [(UIView *)v32 _traitOverrides];
    v34 = [(_UITraitOverrides *)v33 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    inited = swift_initStackObject();
    *(inited + 16) = v34;
    v39 = inited;
    sub_18914E584(2);
    sub_1890B30B4(1);
    v36 = v32;
    v37 = [(UIView *)v36 _traitOverrides];
    v38 = *(v39 + 16);
    [(_UITraitOverrides *)v37 _replaceWithOverrides:v38];

    a1 = v36;

    sub_188BAD870(a1);

LABEL_12:

    return;
  }

  __break(1u);
}

void sub_188B3019C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model];
  swift_getKeyPath();
  v37[0] = v2;
  sub_188AF0C98();
  sub_18A4A2C08();

  swift_beginAccess();
  v3 = *(v2 + 34);
  v4 = [v0 toolbar];
  v5 = v4;
  if (v3 != 1)
  {
LABEL_6:
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v4)
  {
    __break(1u);
    goto LABEL_37;
  }

  v6 = [v4 compactAppearance];

  if (v6)
  {
    goto LABEL_8;
  }

  v5 = [v1 toolbar];
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v6 = [v5 standardAppearance];

LABEL_8:
  swift_getKeyPath();
  v37[0] = v2;
  sub_18A4A2C08();

  v7 = *(v2 + 34);
  v8 = [v1 toolbar];
  v9 = v8;
  if (v7 != 1)
  {
    goto LABEL_17;
  }

  if (!v8)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v10 = [v8 compactScrollEdgeAppearance];

  if (v10)
  {
    goto LABEL_19;
  }

  v11 = [v1 toolbar];
  if (!v11)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v12 = v11;
  v10 = [v11 scrollEdgeAppearance];

  if (v10)
  {
    goto LABEL_19;
  }

  v13 = [v1 toolbar];
  if (!v13)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v9 = v13;
  v10 = [v13 compactAppearance];

  if (v10)
  {
    goto LABEL_19;
  }

  v14 = [v1 toolbar];
  if (v14)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_17:
  if (!v9)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = [v9 scrollEdgeAppearance];

  if (v10)
  {
LABEL_19:
    v34 = v10;
    goto LABEL_22;
  }

  v14 = [v1 toolbar];
  if (!v14)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_21:
  v15 = v14;
  v34 = [v14 standardAppearance];

LABEL_22:
  swift_getKeyPath();
  v37[0] = v2;
  sub_18A4A2C08();

  v16 = *(v2 + 34);
  v17 = [v1 toolbar];
  v18 = v17;
  if (v16 != 1)
  {
LABEL_27:
    if (v18)
    {
      goto LABEL_28;
    }

    goto LABEL_41;
  }

  if (!v17)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v19 = [v17 compactScrollEdgeAppearance];

  if (!v19)
  {
    v18 = [v1 toolbar];
    if (v18)
    {
LABEL_28:
      v19 = [v18 scrollEdgeAppearance];

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_29:
  v32 = v6;
  sub_188B310BC(v6, v36);
  KeyPath = swift_getKeyPath();
  v33 = &v31;
  MEMORY[0x1EEE9AC00](KeyPath);
  v30[2] = v2;
  v30[3] = v36;
  v37[0] = v2;
  sub_18A4A2BF8();
  v47 = v36[0];
  sub_188A3F5FC(&v47, &qword_1EA93BB40);
  v46 = v36[1];
  sub_188A3F5FC(&v46, &qword_1EA93BB48);
  v45 = v36[2];
  sub_188A3F5FC(&v45, &unk_1EA93BB50);
  v44 = v36[4];
  sub_188A3F5FC(&v44, &qword_1EA93BB48);
  v43 = v36[5];
  sub_188A3F5FC(&v43, &unk_1EA93BB50);

  v33 = v19;
  sub_188B310BC(v19, v37);
  v21 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v21);
  v30[-2] = v2;
  v30[-1] = v37;
  v35 = v2;
  sub_18A4A2BF8();
  v42 = v37[0];
  sub_188A3F5FC(&v42, &qword_1EA93BB40);
  v41 = v37[1];
  sub_188A3F5FC(&v41, &qword_1EA93BB48);
  v40 = v37[2];
  sub_188A3F5FC(&v40, &unk_1EA93BB50);
  v39 = v37[4];
  sub_188A3F5FC(&v39, &qword_1EA93BB48);
  v38 = v37[5];
  sub_188A3F5FC(&v38, &unk_1EA93BB50);

  swift_getKeyPath();
  v35 = v2;
  sub_18A4A2C08();

  v22 = v34;
  v23 = v32;
  if (*(v2 + 136) <= 0.5)
  {
    v24 = v32;
  }

  else
  {
    v24 = v34;
  }

  v25 = [v24 _plainButtonAppearanceData];
  swift_getKeyPath();
  v35 = v2;
  sub_18A4A2C08();

  v35 = v2;
  swift_getKeyPath();
  sub_18A4A2C28();

  v26 = *(v2 + 160);
  *(v2 + 160) = v25;

  v35 = v2;
  swift_getKeyPath();
  sub_18A4A2C18();

  swift_getKeyPath();
  v35 = v2;
  sub_18A4A2C08();

  if (*(v2 + 136) <= 0.5)
  {
    v27 = v23;
  }

  else
  {
    v27 = v22;
  }

  v28 = [v27 _prominentButtonAppearanceData];
  swift_getKeyPath();
  v35 = v2;
  sub_18A4A2C08();

  v35 = v2;
  swift_getKeyPath();
  sub_18A4A2C28();

  v29 = *(v2 + 168);
  *(v2 + 168) = v28;

  v35 = v2;
  swift_getKeyPath();
  sub_18A4A2C18();

  swift_getKeyPath();
  v35 = v2;
  sub_18A4A2C08();

  v35 = v2;
  swift_getKeyPath();
  sub_18A4A2C28();

  ++*(v2 + 176);
  v35 = v2;
  swift_getKeyPath();
  sub_18A4A2C18();
}

uint64_t _UISwiftUIToolbarEnabled()
{
  if (_UIFloatingBarEnabled())
  {
    return 1;
  }

  v1 = +[UIDevice currentDevice];
  if ([v1 userInterfaceIdiom] == 6 || !dyld_program_sdk_at_least() || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "userInterfaceIdiom"), v2, (v3 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v0 = 0;
  }

  else
  {
    v5 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_SwiftUIBottomBarEnabled, @"SwiftUIBottomBarEnabled");
    if (byte_1EA95E484)
    {
      v0 = 1;
    }

    else
    {
      v0 = v5;
    }
  }

  return v0;
}

unint64_t sub_188B30D34()
{
  result = qword_1ED48C520[0];
  if (!qword_1ED48C520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED48C520);
  }

  return result;
}

void sub_188B310BC(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v4 = [a1 backgroundEffect];
    v5 = [a1 backgroundColor];
    if (v5)
    {
      type metadata accessor for UICorePlatformColorDefinition();
      v5 = sub_18A4A5E38();
    }

    v6 = [a1 backgroundImageContentMode];
    v7 = [a1 shadowColor];
    if (v7)
    {
      type metadata accessor for UICorePlatformColorDefinition();
      v8 = v7;
      v7 = sub_18A4A5E38();
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = 0;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = 0;
}

uint64_t sub_188B3123C(uint64_t a1, void *a2)
{
  v12 = *a2;
  v2 = a2[1];
  v10 = a2[2];
  v11 = v2;
  v3 = a2[4];
  v8 = a2[5];
  v9 = v3;
  v4 = *(a1 + 184);
  v5 = *(a2 + 1);
  *(a1 + 184) = *a2;
  *(a1 + 200) = v5;
  *(a1 + 216) = *(a2 + 2);
  sub_188A3F29C(&v12, v7, &qword_1EA93BB40);
  sub_188A3F29C(&v11, v7, &qword_1EA93BB48);
  sub_188A3F29C(&v10, v7, &unk_1EA93BB50);
  sub_188A3F29C(&v9, v7, &qword_1EA93BB48);
  sub_188A3F29C(&v8, v7, &unk_1EA93BB50);
}

uint64_t sub_188B3136C(uint64_t a1, void *a2)
{
  v13 = *a2;
  v2 = a2[1];
  v11 = a2[2];
  v12 = v2;
  v3 = a2[4];
  v9 = a2[5];
  v10 = v3;
  v5 = *(a1 + 232);
  v4 = (a1 + 232);
  v6 = *(a2 + 1);
  *v4 = *a2;
  v4[1] = v6;
  v4[2] = *(a2 + 2);
  sub_188A3F29C(&v13, v8, &qword_1EA93BB40);
  sub_188A3F29C(&v12, v8, &qword_1EA93BB48);
  sub_188A3F29C(&v11, v8, &unk_1EA93BB50);
  sub_188A3F29C(&v10, v8, &qword_1EA93BB48);
  sub_188A3F29C(&v9, v8, &unk_1EA93BB50);
}

void sub_188B315D0()
{
  v0 = sub_188AF0DAC();
  if (sub_18A4A46F8())
  {
    swift_getObjectType();
    sub_18A4A5538();
    sub_18A4A58B8();
    swift_unknownObjectRelease();
  }
}

void sub_188B3165C(void *a1)
{
  v1 = a1;
  sub_188B315D0();
}

void _UIBarButtonGroupCheckArguments(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v4 && v5)
  {
    v6 = dyld_program_sdk_at_least();
    v7 = [v4 isSpaceItem];
    if (v6)
    {
      if (v7)
      {
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIBarButtonGroupCheckArguments(NSArray<UIBarButtonItem *> *__strong, UIBarButtonItem *__strong)"}];
        [v8 handleFailureInFunction:v9 file:@"UIBarButtonItemGroup.m" lineNumber:60 description:{@"Assigning a fixed or flexible space item as the representativeItem of a group is unsupported (representativeItem=%@)", v4}];
      }
    }

    else if (v7)
    {
      v24 = *(__UILogGetCategoryCachedImpl("Assert", &_UIBarButtonGroupCheckArguments___s_category) + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v4;
        _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Assigning a fixed or flexible space item as the representativeItem of a group is unsupported (representativeItem=%@)", buf, 0xCu);
      }
    }

    v10 = [v4 _isSearchBarPlacementItem];
    v11 = MEMORY[0x1E695D940];
    if (v10)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"UINavigationItem.searchBarPlacementBarButtonItem is only supported in UIToolbar"];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      v16 = *v11;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          if (v18 == v4)
          {
            [MEMORY[0x1E695DF30] raise:v16 format:{@"You cannot use the same UIBarButtonItem as both the representativeItem and as a member of barButtonItems when creating or modifying a UIBarButtonItemGroup (representativeItem=%@, barButtonItems=%@)", v4, v12, v25}];
          }

          if ([v18 _isSearchBarPlacementItem])
          {
            [MEMORY[0x1E695DF30] raise:v16 format:@"UINavigationItem.searchBarPlacementBarButtonItem is only supported in UIToolbar"];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v14);
    }

LABEL_33:

    goto LABEL_34;
  }

  if (!v4)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v3;
    v19 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      v22 = *MEMORY[0x1E695D940];
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v12);
          }

          if ([*(*(&v29 + 1) + 8 * j) _isSearchBarPlacementItem])
          {
            [MEMORY[0x1E695DF30] raise:v22 format:@"UINavigationItem.searchBarPlacementBarButtonItem is only supported in UIToolbar"];
          }
        }

        v20 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v20);
    }

    goto LABEL_33;
  }

  if ([v4 _isSearchBarPlacementItem])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"UINavigationItem.searchBarPlacementBarButtonItem is only supported in UIToolbar"];
  }

LABEL_34:
}

void _UIBarButtonGroupAssign(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 buttonGroup];
        v11 = v10;
        if (v10 != v4)
        {
          [v10 _removeBarButtonItem:v9];
          [v9 _setButtonGroup:v4 isRepresentative:0];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void _UIBarButtonGroupAssignRepresentative(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v8 _owningButtonGroup];
  v5 = v4;
  if (v4 != v3)
  {
    if (v4)
    {
      [v4 _removeRepresentative:v8];
    }

    else
    {
      v5 = [v8 buttonGroup];
      if (v5 == v3)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIBarButtonGroupAssignRepresentative(UIBarButtonItem *__strong, UIBarButtonItemGroup *__strong)"}];
        [v6 handleFailureInFunction:v7 file:@"UIBarButtonItemGroup.m" lineNumber:234 description:{@"Attempt to assign a representative item from the bar button items of the target group (rep=%@, group=%@)", v8, v5}];
      }

      [v5 _removeBarButtonItem:v8];
    }

    [v8 _setButtonGroup:v3 isRepresentative:v3 != 0];
  }
}

void sub_188B31F30(UITraitCollection_optional *a1)
{
  v2 = sub_188AF0DAC();
  UIHostingViewBase.traitCollectionDidChange(_:)(a1);
}

void sub_188B31F84(void *a1, uint64_t a2, UITraitCollection_optional *a3)
{
  v5 = a3;
  v6 = a1;
  sub_188B31F30(a3);
}

Swift::Void __swiftcall UIHostingViewBase.traitCollectionDidChange(_:)(UITraitCollection_optional *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-v5];
  if (sub_18A4A46F8())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      swift_unknownObjectRelease();
      return;
    }

    v8 = Strong;
    swift_getObjectType();
    sub_18A4A5538();
    sub_18A4A58B8();
    if ((_UIViewMaskingConfigurationSPIEnabled() & 1) == 0)
    {
      swift_unknownObjectRelease();

      return;
    }

    v9 = [v8 traitCollection];
    v10 = _sSo17UITraitCollectionC5UIKitE20cornerMaskingContextSo09_UICornereF0Cvg_0();
    v11 = v10;
    if (a1)
    {
      v12 = _sSo17UITraitCollectionC5UIKitE20cornerMaskingContextSo09_UICornereF0Cvg_0();
      sub_188A34624(0, &qword_1ED491AD8);
      v13 = sub_18A4A7C88();

      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v14 = sub_18A4A5728();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_cachedContainerShape;
    swift_beginAccess();
    sub_188F27A20(v6, v2 + v15);
    swift_endAccess();
    sub_18A4A4878();
LABEL_11:
    swift_unknownObjectRelease();
  }
}

void sub_188B3221C(void *a1)
{
  v1 = a1;
  sub_188B32264();
}

uint64_t sub_188B32264()
{
  MEMORY[0x18CFE0450]();
  v0 = sub_188AF0DAC();
  UIHostingViewBase.didMoveToWindow()();

  return sub_18A4A54E8();
}

uint64_t sub_188B323FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_188B32524(Swift::Double a1)
{
  v2 = sub_188AF0DAC();
  UIHostingViewBase._requestUpdate(after:)(a1);
}

void ___navigationBarHeightToUseForTopInsetCalculationsOfViewController_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1ED49790B = [v0 isEqualToString:@"com.apple.mobilenotes"];
}

void sub_188B32824(char a1, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = a1;
  if (v3 != (a1 & 1))
  {
    v4 = v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(v4 + 8);
      v6 = objc_opt_self();
      if ([v6 _isInAnimationBlockWithAnimationsEnabled])
      {
        v7 = 1;
      }

      else
      {
        v7 = [v6 _isInSystemAnimationBlockWithAnimationsEnabled];
      }

      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v7, ObjectType, v5);
    }
  }
}

void sub_188B3290C(void *a1)
{
  v2 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer;
  v3 = *&v1[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer];
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

LABEL_7:
    [(_UIButtonBarGroupOrderer *)v3 setOwner:v1];
    goto LABEL_8;
  }

  v4 = a1;
  if (v3)
  {
    sub_188A34624(0, &qword_1EA93B3C0);
    v5 = v3;
    v4 = v4;
    v6 = sub_18A4A7C88();

    if (v6)
    {
      return;
    }
  }

  [(_UIButtonBarGroupOrderer *)v4 setOwner:?];
  v3 = *&v1[v2];
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_8:
  *&v1[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections] = 0;

  sub_18907A694();
}

uint64_t sub_188B32A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return v6;
}

uint64_t sub_188B32A98(uint64_t a1, uint64_t a2)
{
  sub_188A55598(a1, v10);
  type metadata accessor for NavigationBarLayout.InsertLayoutData();
  swift_dynamicCast();
  v3 = v9[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_priority];

  v4 = qword_18A66B720[v3];
  sub_188A55598(a2, v10);
  swift_dynamicCast();
  v5 = v9[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_priority];

  v6 = qword_18A66B720[v5];
  v7 = -1;
  if (v6 >= v4)
  {
    v7 = 1;
  }

  if (v4 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_188B32B74(uint64_t a1, uint64_t a2)
{
  sub_188A55598(a1, v10);
  type metadata accessor for NavigationBarLayout.InsertLayoutData();
  swift_dynamicCast();
  v3 = v9[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

  v4 = qword_18A66B7A0[v3];
  sub_188A55598(a2, v10);
  swift_dynamicCast();
  v5 = v9[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

  v6 = qword_18A66B7A0[v5];
  v7 = -1;
  if (v6 >= v4)
  {
    v7 = 1;
  }

  if (v4 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

_OWORD *sub_188B32C50(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188B00858(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA357C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_188B334E0(v13, a3 & 1);
    v8 = sub_188B00858(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (*(v18 + 56) + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);

    return sub_188A55538(a1, v19);
  }

  else
  {
    sub_188B383B8(v8, a2, a1, v18);

    return a2;
  }
}

void sub_188B32E50(uint64_t a1)
{
  v3 = [v1 navigationBar];
  v4 = [(UIView *)v3 _traitOverridesIfExist];

  if (v4)
  {
    v5 = [(_UIEventDeferringManager *)v4 _transactionAssertion];

    if (v5)
    {
      if (([(_UITraitOverrides *)v5 _containsTraitToken:?]& 1) != 0)
      {
        v6 = [v5 userInterfaceStyle];

        if (v6 == a1)
        {
          return;
        }

        goto LABEL_8;
      }
    }
  }

  if (!a1)
  {
    return;
  }

LABEL_8:
  v7 = [v1 navigationBar];
  if (a1)
  {
    v8 = v7;
    v9 = [(UIView *)v8 _traitOverrides];
    v10 = [(_UITraitOverrides *)v9 _swiftImplCopy];

    v11 = [(_UITraitOverrides *)v10 _overridesAppliedAfter];
    v12 = [(_UITraitOverrides *)v11 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    v55 = inited;
    sub_188D63200(a1);
    sub_18914E4E8(a1);
    v14 = [(UIView *)v8 _traitOverrides];
    v15 = [(_UITraitOverrides *)v14 _swiftImplCopy];

    v16 = swift_initStackObject();
    *(v16 + 16) = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = [(_UITraitOverrides *)v18 _swiftImplCopy];
      v20 = swift_allocObject();
      *(v20 + 16) = v19;

      v18 = v19;
      v16 = v20;
    }

    v21 = [(_UITraitOverrides *)v18 _overridesAppliedAfter];
    v22 = *(v55 + 16);
    [(_UITraitOverrides *)v21 _replaceWithOverrides:v22];

    v23 = [(UIView *)v8 _traitOverrides];
    v24 = *(v16 + 16);

    [(_UITraitOverrides *)v23 _replaceWithOverrides:v24];
  }

  else
  {
    v25 = v7;
    v26 = [(UIView *)v25 _traitOverrides];
    v27 = [(_UITraitOverrides *)v26 _swiftImplCopy];

    v28 = [(_UITraitOverrides *)v27 _overridesAppliedAfter];
    v29 = [(_UITraitOverrides *)v28 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v30 = swift_initStackObject();
    *(v30 + 16) = v29;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v30 + 16);
    if ((v31 & 1) == 0)
    {
      v32 = [(_UITraitOverrides *)*(v30 + 16) _swiftImplCopy];
      v33 = swift_allocObject();
      *(v33 + 16) = v32;

      v30 = v33;
    }

    v34 = qword_1ED491B40;
    v35 = v32;
    if (v34 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v36 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    v37 = sub_188D63234(&type metadata for UITraitUserInterfaceStyle, 0);
    os_unfair_lock_unlock(v36[2]);
    [(_UITraitOverrides *)v35 _removeTraitToken:v37];

    swift_unknownObjectRelease();
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v30 + 16);
    if ((v38 & 1) == 0)
    {
      v39 = [(_UITraitOverrides *)*(v30 + 16) _swiftImplCopy];
      v40 = swift_allocObject();
      *(v40 + 16) = v39;

      v30 = v40;
    }

    v41 = v36[2];
    v42 = v39;
    os_unfair_lock_lock(v41);
    v43 = sub_18901B9F8(&type metadata for GlassUserInterfaceStyleTrait, 0);
    os_unfair_lock_unlock(v36[2]);
    [(_UITraitOverrides *)v42 _removeTraitToken:v43];

    swift_unknownObjectRelease();
    v44 = [(UIView *)v25 _traitOverrides];
    v45 = [(_UITraitOverrides *)v44 _swiftImplCopy];

    v46 = swift_initStackObject();
    *(v46 + 16) = v45;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v46 + 16);
    if ((v47 & 1) == 0)
    {
      v49 = [(_UITraitOverrides *)v48 _swiftImplCopy];
      v50 = swift_allocObject();
      *(v50 + 16) = v49;

      v48 = v49;
      v46 = v50;
    }

    v51 = [(_UITraitOverrides *)v48 _overridesAppliedAfter];
    v52 = *(v30 + 16);
    [(_UITraitOverrides *)v51 _replaceWithOverrides:v52];

    v53 = [(UIView *)v25 _traitOverrides];
    v54 = *(v46 + 16);

    [(_UITraitOverrides *)v53 _replaceWithOverrides:v54];
  }
}

double sub_188B3343C()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = NSDirectionalEdgeInsetsZero;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 384) = 0;
  *(v0 + 392) = v2;
  *(v0 + 400) = v2;
  return result;
}

uint64_t sub_188B334E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938AE0);
  v35 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_188A55538(v22, v36);
      }

      else
      {
        sub_188A55598(v22, v36);
        v23 = v21;
      }

      sub_18A4A7288();
      sub_18A4A8888();
      sub_18A4A7348();
      v24 = sub_18A4A88E8();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_188A55538(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_188B337B0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost];
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v3)
    {
      v4 = [v3 _hideNavigationBarTrailingBarButtons];
      v5 = v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled];
      v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled] = v4 ^ 1;
      v6 = v4;
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  LOBYTE(v4) = 0;
  v6 = 0;
  v7 = v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled];
  v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled] = 1;
  if ((v7 & 1) == 0)
  {
LABEL_6:
    sub_188B33CA4();
    [v0 setNeedsLayout];
    v6 = v4;
  }

LABEL_7:
  v8 = &v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration];
  v9 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration];
  if (v9 && v8[9] == 1 && ((*(v8 + 4) & 1) == 0 || (v10 = v9, v11 = sub_188B3461C(), v10, (v11 & 1) == 0)))
  {
    v16 = sub_188AEAF10();
    if (v16)
    {
      v13 = v16;
      v15 = *&v16[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections];
      *&v16[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections] = MEMORY[0x1E69E7CC0];
LABEL_17:
      sub_188B34B5C(v15);
    }
  }

  else
  {
    v12 = sub_188AEAF10();
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0x1E69E7CC0];
      if (*&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingBarSections])
      {
        v14 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingBarSections];
      }

      v15 = *&v12[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections];
      *&v12[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections] = v14;

      goto LABEL_17;
    }
  }

  sub_188B33CA4();
  v17 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalItems];
  v18 = v17;
  sub_188B2A668(v17);
  if ((v6 & 1) == 0)
  {
    v19 = sub_188AEAF10();
    if (v19)
    {
      v20 = v19;
      sub_188B34C9C();
      v20[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isCompact] = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__barMetrics] == 1;
      v21 = [v1 appearanceStorage];
      v22 = *&v20[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage];
      *&v20[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage] = v21;
    }
  }
}

void sub_188B339FC()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarSections])
  {
    v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarSections];
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost];
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView)) != 0)
  {

    if ([v4 _hideNavigationBarLeadingBarButtons])
    {
LABEL_18:
      v8 = 0;
      v9 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode];
      *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode] = 0;
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  if (v2 >> 62)
  {
    if (sub_18A4A7F68() < 1)
    {
      goto LABEL_18;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_18;
  }

  v5 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleContent];
  if (v5 && [v5 length] > 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode];
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode] = v6;
  v8 = 1;
  if (v6 != v7)
  {
LABEL_19:
    [v1 setNeedsLayout];
  }

LABEL_20:
  v10 = sub_188AEAD00();
  if (v10)
  {
    v11 = v10;
    v12 = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections];
    *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections] = v2;

    sub_188B34B5C(v12);
  }

  if (v8)
  {
    v13 = sub_188AEAD00();
    if (v13)
    {
      v14 = v13;

      v14[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isCompact] = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__barMetrics] == 1;
      v15 = [v1 appearanceStorage];
      v16 = *&v14[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage];
      *&v14[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage] = v15;
    }

    else
    {
      sub_18A4A8398();
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_188B33CA4()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled) == 1 && (v2 = sub_188AEAF10()) != 0)
  {
    v3 = v2;
    v16 = MEMORY[0x1E69E7CC0];
    v4 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup);
    if (v4)
    {
      v5 = v4;
      MEMORY[0x18CFE2450]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
    }

    v6 = v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration;
    v7 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration);
    if (v7)
    {
      if ((*(v6 + 8) & 1) == 0 || (v8 = v7, v9 = sub_188B3461C(), v8, (v9 & 1) == 0) && (v7 = *v6) != 0)
      {
        v10 = v7;
        MEMORY[0x18CFE2450]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
      }
    }

    v11 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_pinnedTrailingGroup);
    if (v11)
    {
      v12 = v11;
      MEMORY[0x18CFE2450]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
    }

    swift_beginAccess();

    sub_188B34B04(v13);
    sub_189079C58(v16);
  }

  else
  {
    v14 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__trailingBar);
    if (v14)
    {
      v15 = v14;
      sub_189079C58(MEMORY[0x1E69E7CC0]);
    }
  }
}

void sub_188B33F24()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarSections])
  {
    v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarSections];
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = &v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration];
  v4 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration];
  if (v4 && (*(v3 + 4) & 1) != 0)
  {
    v5 = v4;

    v6 = sub_188B3461C();

    if ((v6 & 1) != 0 && *v3)
    {
      v7 = [*v3 isHidden] ^ 1;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_11:
  v8 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost];
  if (v8 && (v9 = *(v8 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView)) != 0 && ([v9 _hideNavigationBarCenterBarButtons] & 1) != 0 || (v2 >> 62 ? (v10 = sub_18A4A7F68()) : (v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)), !((v10 > 0) | v7 & 1)))
  {
    v15 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode];
    *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode] = 0;
    if (v15)
    {
      sub_188B346C0();
      [v1 setNeedsLayout];
    }
  }

  else
  {
    if (*&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle] == -1)
    {
      v11 = 0;
    }

    else
    {
      v11 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle];
    }

    if ((v11 - 1) <= 1)
    {
      v12 = [v1 traitCollection];
      v13 = [v12 horizontalSizeClass];

      if (v13 == 1)
      {
        v11 = 0;
      }
    }

    if ((v7 & 1) != 0 || v11 && (v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext] & 1) == 0 && ((v16 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleContent]) == 0 || [v16 length] <= 0))
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v17 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode];
    *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode] = v14;
    if (v14 != v17)
    {
      sub_188B346C0();
      [v1 setNeedsLayout];
    }

    v18 = sub_188AEB244();
    if (v18)
    {
      v19 = v18;
      sub_188B34C9C();
      v19[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isCompact] = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__barMetrics] == 1;
      v20 = [v1 appearanceStorage];
      v21 = *&v19[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage];
      *&v19[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage] = v20;
    }
  }

  if (v7 && *v3 && v3[9] == 1)
  {

    v22 = sub_188AEB244();
    if (!v22)
    {
      goto LABEL_44;
    }

    v23 = v22;
    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  v23 = sub_188AEB244();
  if (v23)
  {
LABEL_42:
    v24 = *&v23[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections];
    *&v23[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections] = v2;
    sub_188B34B5C(v24);
  }

LABEL_44:

  sub_188B346C0();
}

void sub_188B34264()
{
  v1 = &v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent];
  v2 = _UINavigationBarCastToAugmentedTitleView(*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 8]);
  v31 = v2;
  if (v2)
  {
    v3 = v2;
    if (([v3 _hideNavigationBarStandardTitle] & 1) == 0 && *v1)
    {
      v4 = *v1;
      v5 = [v4 length];

      v6 = v3;
      sub_188EBC140(v31);
      if (v5 <= 0)
      {
LABEL_8:
        v9 = v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled];
        v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled] = 0;
        v10 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl;
        v11 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl];
        if (v11)
        {
          [v11 setAttributedTitle_];
          v12 = *&v0[v10];
          if (v12)
          {
            [v12 setTitleAttributes_];
            v13 = *&v0[v10];
            if (v13)
            {
              [v13 setTitleView_];
              v14 = *&v0[v10];
              if (v14)
              {
                [v14 setTitleMenuProvider_];
                v15 = *&v0[v10];
                if (v15)
                {
                  [v15 setDocumentProperties_];
                }
              }
            }
          }
        }

        if (v9)
        {
          [v0 setNeedsLayout];
        }

        return;
      }

      goto LABEL_23;
    }

    v7 = v3;
    v8 = v31;
LABEL_7:
    sub_188EBC140(v8);
    goto LABEL_8;
  }

  if (*(v1 + 1))
  {
    sub_188EBC140(0);
    v16 = 1;
    goto LABEL_24;
  }

  v8 = *v1;
  if (!*v1)
  {
    goto LABEL_7;
  }

  v17 = [v8 length];
  sub_188EBC140(0);
  if (v17 <= 0)
  {
    goto LABEL_8;
  }

LABEL_23:
  v16 = 0;
LABEL_24:
  v18 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled;
  v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled] = 1;
  sub_188B55154();
  if (v0[v18] != 1)
  {
    __break(1u);
    goto LABEL_35;
  }

  sub_188B55154();
  v19 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl];
  if (!v19)
  {
LABEL_35:
    __break(1u);
    return;
  }

  type metadata accessor for Key(0);
  sub_188EC2354(&qword_1ED48E360, type metadata accessor for Key);

  v20 = v19;
  v21 = sub_18A4A7088();

  if (!*(v1 + 10))
  {
    v23 = 0;
    v24 = *(v1 + 12);
    if (v16)
    {
      goto LABEL_28;
    }

LABEL_30:
    v27 = 0;
    v26 = *v1;
    v25 = *v1;
    goto LABEL_31;
  }

  v22 = *(v1 + 11);
  aBlock[4] = *(v1 + 10);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188EBB970;
  aBlock[3] = &block_descriptor_86_0;
  v23 = _Block_copy(aBlock);

  v24 = *(v1 + 12);
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_28:
  v25 = 0;
  v26 = *(v1 + 1);
  v27 = v26;
LABEL_31:
  v28 = v26;
  v29 = v24;
  v30 = [v20 setTitleAttributes:v21 titleMenuProvider:v23 documentProperties:v29 titleView:v27 attributedTitle:v25];

  _Block_release(v23);
  if (v30)
  {
    [v0 setNeedsLayout];
  }
}

uint64_t sub_188B3461C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleContent);
  if (v1 && [v1 length] > 0)
  {
    return 0;
  }

  if ((*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle) - 1) < 2)
  {
    return 1;
  }

  v3 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider);
  if (v3)
  {
    if ([v3 useLeadingAlignedLargeTitle:*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 72) toolbarStyle:?])
    {
      return 1;
    }
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext);
}

void sub_188B346C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__centerBar);
  if (v1)
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode) == 1)
    {
      v11 = MEMORY[0x1E69E7CC0];
      v2 = v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration;
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration);
      if (v3 && (*(v2 + 8) & 1) != 0)
      {
        v4 = v3;
        v5 = v1;
        v6 = sub_188B3461C();

        if ((v6 & 1) != 0 && *v2)
        {
          v7 = *v2;
          MEMORY[0x18CFE2450]();
          if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_18A4A7588();
          }

          sub_18A4A75F8();

          v8 = v11;
          goto LABEL_15;
        }
      }

      else
      {
        v9 = v1;
      }

      v8 = MEMORY[0x1E69E7CC0];
LABEL_15:
      sub_189079C4C(v8);

      return;
    }

    v10 = v1;
    sub_189079C4C(MEMORY[0x1E69E7CC0]);
  }
}

void sub_188B34820()
{
  if (!*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backAction] && ((v3 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backActionItem], *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backActionItem] = 0, v3, (v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonHidden] & 1) != 0) || !*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem] || (v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingItemsSupplementBackItem] & 1) == 0 && sub_188C1D1F8() || (v4 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost]) != 0 && (v5 = *(v4 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView)) != 0 && [v5 _hideNavigationBarBackButton]))
  {
    v6 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
    *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton] = 0;
    if (!v6)
    {
      return;
    }

    v14 = v6;
    [v0 setNeedsLayout];
  }

  else
  {
    v1 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton;
    v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
    if (v2)
    {
      v14 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
    }

    else
    {
      v7 = [objc_allocWithZone(type metadata accessor for ButtonBarButtonVisualProvider()) init];
      [v7 buttonBarButtonClass];
      swift_getObjCClassMetadata();
      sub_188A34624(0, &qword_1ED48C6B0);
      swift_dynamicCastMetatypeUnconditional();
      v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVisualProvider_];
      [v8 addTarget:v0 action:sel___backButtonAction_ forControlEvents:0x2000];
      [v8 setSpringLoaded_];
      v14 = v8;
      [v14 setVerticallyCentersContents_];
      [v14 _setHostsLayoutEngine_];
      v9 = *&v0[v1];
      *&v0[v1] = v14;
      if (v9 && v14 == v9)
      {
      }

      else
      {
        v10 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonAppearance];
        v14 = v14;
        [v14 setAppearanceData_];
        [v0 setNeedsLayout];
      }
    }

    v11 = v2;
    sub_188C57FA8(v14);

    v12 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem];
    if (v12)
    {
      v13 = v12;
      [v13 _setViewOwner_];
    }
  }
}

uint64_t sub_188B34B5C(unint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections];

  LOBYTE(a1) = sub_188B34B30(a1, v3);

  if ((a1 & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isGeneratingItemGroups;
    v1[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isGeneratingItemGroups] = 1;
    v12 = MEMORY[0x1E69E7CD0];
    v6 = v1;

    sub_188BB5850(v7, v6);
    v9 = v8;

    *&v6[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_sectionedBarButtonGroups] = v9;

    v10 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_implicitGroups;
    swift_beginAccess();
    *&v6[v10] = v12;

    v1[v5] = 0;
    *&v6[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections] = 0;

    v11 = *&v6[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer];
    if (v11)
    {
      [(_UIButtonBarGroupOrderer *)v11 invalidate];
    }

    sub_18907A694();
  }

  return result;
}