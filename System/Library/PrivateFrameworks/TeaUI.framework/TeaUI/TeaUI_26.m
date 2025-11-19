id sub_1D805D34C(void *a1)
{
  v1 = a1;
  MastheadViewController.contentScrollView(for:)(v2, v1);
  v4 = v3;

  return v4;
}

Swift::Void __swiftcall MastheadViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_setEditing_animated_, _, animated);
  [*&v2[qword_1EDBB88B8] setEditing:_ animated:animated];
}

void sub_1D805D404(void *a1, uint64_t a2, Swift::Bool a3, Swift::Bool a4)
{
  v6 = a1;
  MastheadViewController.setEditing(_:animated:)(a3, a4);
}

id sub_1D805D494@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  [a1 contentOffset];
  v5 = *&v2[qword_1EDBB88A0];
  [v5 frame];
  CGRectGetMaxY(v35);
  v6 = *&v2[qword_1EDBB8880 + 24];
  v7 = *&v2[qword_1EDBB8880 + 32];
  __swift_project_boxed_opaque_existential_1(&v2[qword_1EDBB8880], v6);
  v8 = (*(v7 + 8))(v6, v7);
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v36.origin.x = v10;
  v36.origin.y = v12;
  v36.size.width = v14;
  v36.size.height = v16;
  Height = CGRectGetHeight(v36);
  sub_1D805E928(v3, a1);
  v19 = v18;
  sub_1D7E74368();
  [a1 contentOffset];
  v21 = v20;
  MastheadViewController.layoutOptions.getter(__src);
  v22 = *&v3[qword_1EDBB88F0];
  sub_1D7E74344();
  v24 = v23;
  v25 = qword_1EDBB8838;
  swift_beginAccess();
  LOBYTE(v7) = v3[v25];
  v26 = v5;
  v27 = v22;
  sub_1D805E9B0(v3, v31);
  memcpy(a2, __src, 0x122uLL);
  *(a2 + 296) = 0;
  *(a2 + 304) = Height;
  *(a2 + 312) = v21;
  *(a2 + 320) = v19;
  *(a2 + 328) = a1;
  *(a2 + 336) = v26;
  *(a2 + 344) = v27;
  *(a2 + 352) = v24;
  *(a2 + 360) = v7;
  v28 = v31[1];
  *(a2 + 368) = v31[0];
  *(a2 + 384) = v28;
  *(a2 + 400) = v32;

  return a1;
}

void sub_1D805D674(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  MastheadViewController.scrollViewWillBeginDragging(_:)(v4);
}

id sub_1D805D6DC(void *a1)
{
  [a1 contentSize];
  if (v3 == 0.0 && ([a1 contentOffset], v4 <= 0.0))
  {

    return sub_1D7E6D654();
  }

  else
  {
    sub_1D805D494(a1, v9);
    sub_1D7FBCA18(v9);
    memcpy(__dst, v9, 0x191uLL);
    sub_1D805EEE8(__dst);
    [a1 contentOffset];
    v5 = v1 + qword_1EDBB8900;
    *v5 = v6;
    *(v5 + 8) = v7;
    *(v5 + 16) = 0;
    return sub_1D7E6D654();
  }
}

void sub_1D805D7E4(void *a1)
{
  v1 = a1;
  sub_1D805D7DC();
}

uint64_t sub_1D805D82C()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *(v0 + qword_1EDBB8880 + 24);
  v4 = *(v0 + qword_1EDBB8880 + 32);
  __swift_project_boxed_opaque_existential_1((v0 + qword_1EDBB8880), v3);
  MastheadViewController.layoutOptions.getter(v6);
  (*(v4 + 32))(v6, *(v0 + qword_1EDBB88B8), *((v2 & v1) + 0x58), v3, v4);
  memcpy(__dst, v6, 0x122uLL);
  return sub_1D7E72850(__dst);
}

void sub_1D805D8F8(void *a1)
{
  v1 = a1;
  sub_1D805D82C();
}

id MastheadViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void sub_1D805D9E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  MastheadViewController.init(nibName:bundle:)();
}

void MastheadViewController.displayOptions.setter(void *a1)
{
  v2 = *(v1 + qword_1EDBB8878);
  type metadata accessor for MastheadDisplayOptions();
  v3 = v2;
  v4 = sub_1D8191CC4();

  if (v4)
  {
  }

  else
  {

    sub_1D805C384(a1);
  }
}

void (*MastheadViewController.displayOptions.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = MastheadViewController.displayOptions.getter();
  return sub_1D805DB50;
}

void sub_1D805DB50(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    MastheadViewController.displayOptions.setter(v3);
  }

  else
  {
    MastheadViewController.displayOptions.setter(v2);
  }
}

Swift::Void __swiftcall MastheadViewController.setMastheadHidden(_:)(Swift::Bool a1)
{
  [*(v1 + qword_1EDBB88A0) setHidden_];

  sub_1D7E70B80(0);
}

uint64_t (*sub_1D805DC08(id **a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MastheadViewController.displayOptions.modify(v2);
  return sub_1D7F413B4;
}

uint64_t (*sub_1D805DC6C(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MastheadViewController.pluginPinningEnabled.modify();
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D805DCD0(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MastheadViewController.plugin.modify(v2);
  return sub_1D7F41FE0;
}

void MastheadViewController.cardViewAnimationCoordinator(_:willTransitionTo:)()
{
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_20_23();
  if (dynamic_cast_existential_1_conditional(v0))
  {
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_8_37();
    v2 = *(v1 + 8);
    v3 = v0;
    v4 = OUTLINED_FUNCTION_1_110();
    v2(v4);
  }

  OUTLINED_FUNCTION_29();
}

{
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_20_23();
  if (dynamic_cast_existential_1_conditional(v0))
  {
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_8_37();
    v2 = *(v1 + 24);
    v3 = v0;
    v4 = OUTLINED_FUNCTION_1_110();
    v2(v4);
  }

  OUTLINED_FUNCTION_29();
}

void MastheadViewController.cardViewAnimationCoordinator(_:didTransitionTo:)()
{
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_20_23();
  if (dynamic_cast_existential_1_conditional(v0))
  {
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_8_37();
    v2 = *(v1 + 16);
    v3 = v0;
    v4 = OUTLINED_FUNCTION_1_110();
    v2(v4);
  }

  OUTLINED_FUNCTION_29();
}

{
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_20_23();
  if (dynamic_cast_existential_1_conditional(v0))
  {
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_8_37();
    v2 = *(v1 + 40);
    v3 = v0;
    v4 = OUTLINED_FUNCTION_1_110();
    v2(v4);
  }

  OUTLINED_FUNCTION_29();
}

void MastheadViewController.cardViewAnimationCoordinator(_:willTransitionTo:usingTimingParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_30_3();
  a24 = v26;
  a25 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = *v34;
  v36 = *(v25 + qword_1EDBB88B8);
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v36))
  {
    v38 = v37;
    ObjectType = swift_getObjectType();
    a13 = v35;
    v40 = *(v38 + 32);
    v41 = v36;
    v40(v33, v31, &a13, v29, ObjectType, v38);
  }

  OUTLINED_FUNCTION_29();
}

void MastheadViewController.cardViewAnimationCoordinator(_:didDragTo:)(uint64_t a1, uint64_t a2, double a3)
{
  OUTLINED_FUNCTION_20_23();
  if (dynamic_cast_existential_1_conditional(v3))
  {
    v8 = OUTLINED_FUNCTION_23_15();
    v9 = *(v4 + 48);
    v10 = v3;
    v9(a1, a2, v8, v4, a3);
  }
}

Swift::Void __swiftcall MastheadViewController.proxy(to:)(UIScrollView *to)
{
  v2 = v1;
  sub_1D805B7A0(&qword_1EDBB9F18, sub_1D7E17C84, &v16);
  if (v17)
  {
    sub_1D7E05450(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v4 = OUTLINED_FUNCTION_11_0();
    v5(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    OUTLINED_FUNCTION_0_152();
    sub_1D805F144(&v16, v6, v7, v8, v9);
  }

  sub_1D7E5C4B0(to, v18);
  v10 = qword_1EDBB8848;
  OUTLINED_FUNCTION_15_2();
  sub_1D7E5C8DC(v18, v2 + v10);
  swift_endAccess();
  OUTLINED_FUNCTION_27_18();
  v13 = [v11 v12];
  if (v13)
  {
    v14 = v13;
    [v13 layoutIfNeeded];

    sub_1D7E70B80(1);
    v15 = [v2 &to[1]._lastSetContentOffsetUnrounded];
    if (v15)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void MastheadViewController.plugin(_:didResizePluginModel:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = qword_1EDBB8810;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (v9 && (v6 == *(v9 + 16) ? (v10 = v7 == *(v9 + 24)) : (v10 = 0), v10 || (sub_1D8192634() & 1) != 0))
  {
    if (qword_1EDBBC390 != -1)
    {
      OUTLINED_FUNCTION_11_34();
    }

    v11 = sub_1D818FE34();
    __swift_project_value_buffer(v11, qword_1EDBC60F0);

    v12 = sub_1D818FE14();
    v13 = sub_1D81919E4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_1D7E1C3D8(v6, v7, &v25);
      *(v14 + 12) = 2080;
      v24 = *(a2 + 88);
      type metadata accessor for CGSize();
      v15 = sub_1D8190F84();
      v17 = sub_1D7E1C3D8(v15, v16, &v25);

      *(v14 + 14) = v17;
      _os_log_impl(&dword_1D7DFF000, v12, v13, "Requesting a relayout for plugin, identifier=%s, newSize=%s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    sub_1D7E5B508(v18);
    sub_1D805CEF4(a2, a1, 0);
  }

  else
  {
    if (qword_1EDBBC390 != -1)
    {
      OUTLINED_FUNCTION_11_34();
    }

    v19 = sub_1D818FE34();
    __swift_project_value_buffer(v19, qword_1EDBC60F0);

    v20 = sub_1D818FE14();
    v21 = sub_1D81919C4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v24 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1D7E1C3D8(v6, v7, &v24);
      _os_log_impl(&dword_1D7DFF000, v20, v21, "Unexpected resize request from plugin identifier=%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }
}

char *sub_1D805E738()
{
  v1 = v0;
  v2 = [v0 parentViewController];
  if (!v2 || (v3 = v2, v4 = sub_1D805B6A0(), v3, !v4))
  {
    v5 = *&v1[qword_1EDBB88B8];
    swift_getObjectType();
    v4 = dynamic_cast_existential_1_conditional(v5);
    if (!v4)
    {
      return v4;
    }

    v6 = v5;
  }

  if (v4 == v1)
  {

    return 0;
  }

  return v4;
}

char *MastheadViewController.canShowStatusBanner.getter()
{
  result = sub_1D805E738();
  if (result)
  {
    v2 = result;
    v3 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 16))(ObjectType, v3);

    return (v3 & 1);
  }

  return result;
}

Swift::Void __swiftcall MastheadViewController.statusBannerVisibilityChanged(animated:)(Swift::Bool animated)
{
  v3 = *(v1 + qword_1EDBB88B8);
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v3))
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 40);
    v8 = v3;
    v7(animated, ObjectType, v5);
  }
}

void sub_1D805E928(uint64_t a1, void *a2)
{
  v3 = MastheadViewController.displayOptions.getter();
  v4 = v3[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode + 8];

  if ((v4 & 1) == 0)
  {
    [a2 contentOffset];
  }
}

void sub_1D805E9B0(char *a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_1D8190B24() & 1) == 0 && (v4 = *&a1[qword_1EDBB88B8], v5 = [v4 navigationItem], v6 = objc_msgSend(v5, sel_searchController), v5, v6) && (v6, (v7 = objc_msgSend(a1, sel_navigationController)) != 0))
  {
    v8 = v7;
    [v7 _expectedContentInsetDeltaForViewController_];
    v17 = v9;
    v18 = v10;
    v16 = v11;
    v19 = v12;

    *&v15 = v16;
    *&v14 = v17;
    v13 = 0;
    *(&v14 + 1) = v18;
    *(&v15 + 1) = v19;
  }

  else
  {
    v13 = 1;
    v15 = 0uLL;
    v14 = 0uLL;
  }

  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v13;
}

void sub_1D805EAAC()
{
  v1 = &v0[qword_1EDBB8900];
  if ((v0[qword_1EDBB8900 + 16] & 1) == 0)
  {
    v2 = v0;
    v3 = v1[1];
    sub_1D7E74344();
    if (v4 > 0.0)
    {
      v5 = MastheadViewController.scrollView.getter();
      [v5 adjustedContentInset];
      v7 = v6;
      v8 = [v0 view];
      if (v8)
      {
        v9 = v8;
        [v8 safeAreaInsets];
        v11 = v10;

        v12 = v7 + v11;
        v13 = *&v2[qword_1EDBB8880 + 24];
        v14 = *&v2[qword_1EDBB8880 + 32];
        __swift_project_boxed_opaque_existential_1(&v2[qword_1EDBB8880], v13);
        v15 = (*(v14 + 8))(v13, v14);
        [v15 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v30.origin.x = v17;
        v30.origin.y = v19;
        v30.size.width = v21;
        v30.size.height = v23;
        v24 = -(v12 - CGRectGetMaxY(v30));
        if (v3 <= v24)
        {
          v25 = v3;
        }

        else
        {
          v25 = v24;
        }

        [v5 setContentOffset:0 animated:{0.0, v25}];
        [v5 contentOffset];
        *v1 = v26;
        *(v1 + 1) = v27;
        *(v1 + 16) = 0;
        v28 = MastheadViewController.scrollView.getter();
        sub_1D805D6DC(v28);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1D805EC74(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    sub_1D7E5B508(v4);
    if (qword_1EDBBC390 != -1)
    {
      swift_once();
    }

    v5 = sub_1D818FE34();
    __swift_project_value_buffer(v5, qword_1EDBC60F0);

    v6 = sub_1D818FE14();
    v7 = sub_1D81919B4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      type metadata accessor for CGSize();
      v10 = sub_1D8190F84();
      v12 = sub_1D7E1C3D8(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1D7DFF000, v6, v7, "Masthead plugin performed relayout, newSize=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA715D00](v9, -1, -1);
      MEMORY[0x1DA715D00](v8, -1, -1);
    }

    v13 = *(a1 + 96);
    sub_1D805BDE8(v13);
    v14 = PluginModel.viewController.getter();
    v15 = [v14 view];

    if (v15)
    {
      [v15 setFrame_];

      v16 = PluginModel.viewController.getter();
      v17 = [v16 view];

      if (v17)
      {
        [v17 layoutIfNeeded];

        sub_1D7E70B80(0);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1D805EF3C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D805F144(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D7E41D48(0, a2, a3, a4, a5);
  OUTLINED_FUNCTION_8();
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t ProcessedImageRequest.__allocating_init(assetHandle:size:imageRenderingMode:userInterfaceStyle:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ProcessedImageRequest.init(assetHandle:size:imageRenderingMode:userInterfaceStyle:)(a1, a2, a3, a4 & 1, a5);
  return v10;
}

uint64_t ProcessedImageRequest.cacheIdentifier.getter()
{
  v1 = *(v0 + 24);
  sub_1D8190DB4();
  return v1;
}

uint64_t ProcessedImageRequest.init(assetHandle:size:imageRenderingMode:userInterfaceStyle:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1D7F7A9E0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D819FAB0;
  *(inited + 32) = 0x6567616D69;
  *(inited + 40) = 0xE500000000000000;
  sub_1D7E0E768(a1, inited + 48);
  sub_1D7F7AAA0();
  *(v5 + 16) = sub_1D8190D94();
  a4 &= 1u;
  v12 = sub_1D805F378(a2, a3, a4, a1);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v5 + 24) = v12;
  *(v5 + 32) = v14;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return v5;
}

uint64_t sub_1D805F378(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = sub_1D805F4C4(a1, a2, a3 & 1);
  v7 = v6;
  v8 = a4[3];
  v9 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v8);
  v10 = (*(v9 + 32))(v8, v9);
  MEMORY[0x1DA713260](v10);

  MEMORY[0x1DA713260](14906, 0xE200000000000000);
  MEMORY[0x1DA713260](v5, v7);

  MEMORY[0x1DA713260](14906, 0xE200000000000000);
  type metadata accessor for RenderingMode();
  sub_1D8192334();
  MEMORY[0x1DA713260](14906, 0xE200000000000000);
  v11 = sub_1D81925B4();
  MEMORY[0x1DA713260](v11);

  return 0;
}

uint64_t sub_1D805F4C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0x64657A69736E75;
  }

  type metadata accessor for CGSize();
  sub_1D8192334();
  return 0;
}

uint64_t ProcessedImageRequest.deinit()
{

  return v0;
}

uint64_t ProcessedImageRequest.__deallocating_deinit()
{
  ProcessedImageRequest.deinit();

  return swift_deallocClassInstance();
}

uint64_t KeyCommandScrollExclusionProvider.invalidator.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t KeyCommandScrollExclusionProvider.invalidator.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*KeyCommandScrollExclusionProvider.invalidator.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F5F348;
}

uint64_t KeyCommandScrollExclusionProvider.delegate.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t KeyCommandScrollExclusionProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*KeyCommandScrollExclusionProvider.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D801455C;
}

uint64_t KeyCommandScrollExclusionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  KeyCommandScrollExclusionProvider.init()();
  return v0;
}

uint64_t KeyCommandScrollExclusionProvider.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t KeyCommandScrollExclusionProvider.register(in:)()
{
  sub_1D8190F14();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_4_28(v1);
  OUTLINED_FUNCTION_1_2();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_4_28(v2);
  OUTLINED_FUNCTION_1_2();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_4_28(v3);
  OUTLINED_FUNCTION_1_2();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = v0;
  OUTLINED_FUNCTION_7();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_4_28(v4);
  OUTLINED_FUNCTION_1_2();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = v0;
  sub_1D7E3DAB0();

  return swift_unownedRelease();
}

uint64_t sub_1D805FCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v5 = *(a1 + 40);

  ObjectType = swift_getObjectType();
  swift_unownedRetainStrong();
  v7 = sub_1D8190F14();
  (*(v5 + 8))(a1, v7, v8, a3, ObjectType, v5);
  swift_unknownObjectRelease();
}

uint64_t KeyCommandScrollExclusionProvider.deinit()
{
  sub_1D7E166A0(v0 + 16);
  sub_1D7E166A0(v0 + 32);
  return v0;
}

uint64_t KeyCommandScrollExclusionProvider.__deallocating_deinit()
{
  sub_1D7E166A0(v0 + 16);
  sub_1D7E166A0(v0 + 32);

  return swift_deallocClassInstance();
}

void (*sub_1D805FE10(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D805FFC0;
}

uint64_t ShineImageRendererPipelineProcessor.__allocating_init(rendererEnvironment:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D7E05450(a1, v2 + 16);
  return v2;
}

uint64_t ShineImageRendererPipelineProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

void ShineImageRendererPipelineProcessor.process<A, B, C, D>(blueprint:layoutBlueprint:layoutCollection:layoutOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v223 = a2;
  sub_1D8190C64();
  OUTLINED_FUNCTION_9();
  v205 = v17;
  v206 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  v204 = v18;
  v232 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_2();
  v231 = v20;
  OUTLINED_FUNCTION_52_0();
  v21 = type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_9();
  v210 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23();
  v220 = v24;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v188 - v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_21_12();
  v207 = v29;
  v248[0] = a7;
  v248[1] = a8;
  v221 = a11;
  v222 = a12;
  v248[2] = a11;
  v248[3] = a12;
  v30 = type metadata accessor for BlueprintLayoutSection();
  OUTLINED_FUNCTION_9();
  v209 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v203 = &v188 - v33;
  v225 = a7;
  v34 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23();
  v202 = v36;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_21_12();
  v215 = v38;
  OUTLINED_FUNCTION_52_0();
  sub_1D80617E8();
  MEMORY[0x1EEE9AC00](v39 - 8);
  OUTLINED_FUNCTION_13_2();
  v227 = v40;
  OUTLINED_FUNCTION_52_0();
  v219 = type metadata accessor for CollectionViewSupplementaryKind.Source();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_23();
  v237 = v42;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_21_12();
  v218 = v44;
  OUTLINED_FUNCTION_52_0();
  v236 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23();
  v200 = v48;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v49);
  v234 = &v188 - v50;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v51);
  v224 = &v188 - v52;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_21_12();
  v214 = v54;
  v235 = *(a3 + 1192);
  v55 = *a4;
  v226 = *(a4 + 16);
  v56 = *(a4 + 54);
  v57 = *(a4 + 55);
  v58 = *(a4 + 56);
  v59 = *(a4 + 57);
  v60 = *(a4 + 62);
  v61 = *(a4 + 63);
  v62 = *(a4 + 64);
  v238 = *(a4 + 65);
  v239 = v62;
  v63 = *(a4 + 66);
  v64 = *(a4 + 67);
  if (([objc_opt_self() isMainThread] & 1) == 0 && v55 == 1)
  {
    v253.origin.x = v56;
    v253.origin.y = v57;
    v253.size.width = v58;
    v253.size.height = v59;
    v65 = v59 + CGRectGetHeight(v253);
    memcpy(v248, a3, 0x4A8uLL);
    v248[149] = v235;
    v249 = *(a3 + 1200);
    v250 = *(a3 + 1216);
    v251 = *(a3 + 1232);
    v252 = *(a3 + 1248);
    v255.bottom = v63;
    v255.right = v64;
    v254.origin.x = v60;
    v254.origin.y = v61;
    v254.size.width = v58;
    v254.size.height = v65;
    v255.left = v238;
    *&v255.top = v239;
    v66 = BlueprintLayoutCollection.layoutAttributes(in:offset:insets:)(v254, __PAIR128__(*&v61, *&v60), v255);
    if (v66)
    {
      v67 = v66;
      v68 = CACurrentMediaTime();
      sub_1D81919B4();
      v228 = v67;
      v197 = sub_1D7E13588();
      v69 = sub_1D8191E44();
      v70 = v228;
      sub_1D818FD44();

      v71 = dispatch_group_create();
      v247 = MEMORY[0x1E69E7CD0];
      v246 = MEMORY[0x1E69E7CD0];
      v230 = sub_1D7E36AB8(v70);
      if (v230)
      {
        v195 = v30;
        v192 = v27;
        v72 = 0.0;
        v229 = v70 & 0xC000000000000001;
        v216 = v70 + 32;
        v217 = v70 & 0xFFFFFFFFFFFFFF8;
        v233 = (v46 + 8);
        v212 = (v232 + 16);
        v213 = (v232 + 32);
        v211 = (v232 + 8);
        v198 = (v34 + 16);
        v199 = v21;
        v193 = (v34 + 8);
        v194 = (v209 + 8);
        v196 = (v46 + 32);
        v190 = (v210 + 16);
        v191 = (v46 + 16);
        v189 = (v210 + 8);
        v73 = &selRef_setMenu_;
        v201 = a8;
        v74 = v231;
        v75 = v227;
        v76 = v237;
        v77 = v214;
        while (1)
        {
          if (v229)
          {
            v78 = MEMORY[0x1DA714420](*&v72, v228);
          }

          else
          {
            if (*&v72 >= *(v217 + 16))
            {
              goto LABEL_121;
            }

            v78 = *(v216 + 8 * *&v72);
          }

          v79 = __OFADD__(*&v72, 1);
          *&v80 = *&v72 + 1;
          if (v79)
          {
            break;
          }

          v238 = v80;
          v81 = v78;
          v82 = v73[158];
          v239 = v81;
          v83 = [v81 v82];
          sub_1D818E924();

          v84 = sub_1D818E974();
          v232 = *v233;
          (v232)(v77, v236);
          if (*(v235 + 16))
          {
            sub_1D7E7E198(v84);
          }

          v85 = [v239 representedElementCategory];
          v72 = v238;
          if (!v85)
          {
            v89 = v73[158];
            v90 = v239;
            v91 = [v239 v89];

            v92 = v224;
            sub_1D818E924();

            v248[0] = v225;
            v248[1] = a8;
            v93 = OUTLINED_FUNCTION_6_64();
            v94 = v220;
            BlueprintLayout.subscript.getter(v92, v93);
            (v232)(v92, v236);
            (*v213)(v74, v94, a8);
            v241 = a8;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v240);
            (*v212)(boxed_opaque_existential_0, v74, a8);
            sub_1D7E1B288(v240, v245);
            sub_1D7E0631C(0, qword_1EDBB6AC8);
            OUTLINED_FUNCTION_15_28();
            if (swift_dynamicCast())
            {
              v96 = OUTLINED_FUNCTION_3_88();
              [v90 frame];
              v97 = OUTLINED_FUNCTION_2_98();
              if (v98(v97))
              {
                OUTLINED_FUNCTION_10_42();
                if (v100)
                {
                  v101 = sub_1D81920A4();
                  if (v101)
                  {
LABEL_22:
                    if (v101 < 1)
                    {
                      goto LABEL_125;
                    }

                    v102 = 0;
                    do
                    {
                      if ((v96 & 0xC000000000000001) != 0)
                      {
                        v74 = MEMORY[0x1DA714420](v102, v96);
                      }

                      else
                      {
                        v74 = *(v96 + 8 * v102 + 32);
                      }

                      dispatch_group_enter(v71);
                      if (qword_1EDBBA3F8 != -1)
                      {
                        OUTLINED_FUNCTION_1_111();
                        swift_once();
                      }

                      ++v102;
                      v103 = qword_1EDBBA400;
                      v104 = v71;
                      sub_1D810EC84(v74, v103, v104);

                      v76 = v237;
                    }

                    while (v101 != v102);
                  }
                }

                else
                {
                  v101 = *(v99 + 16);
                  if (v101)
                  {
                    goto LABEL_22;
                  }
                }

                v181 = OUTLINED_FUNCTION_12_33();
                v182(v181);
                __swift_destroy_boxed_opaque_existential_1Tm(v248);
                v75 = v227;
                v77 = v214;
LABEL_115:
                v73 = &selRef_setMenu_;
                __swift_destroy_boxed_opaque_existential_1Tm(v240);
LABEL_116:
                v72 = v238;
                goto LABEL_117;
              }

              v118 = OUTLINED_FUNCTION_12_33();
              v119(v118);
              __swift_destroy_boxed_opaque_existential_1Tm(v248);
            }

            else
            {

              (*v211)(v74, a8);
              v244 = 0;
              OUTLINED_FUNCTION_16_28();
              sub_1D80618F8(v243, &qword_1EDBB6AC0, qword_1EDBB6AC8, &protocol descriptor for ShineImageRequestProviding);
            }

            v75 = v227;
            goto LABEL_115;
          }

          if (v85 == 1)
          {
            v87 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
            v88 = v239;
            swift_beginAccess();
            sub_1D8061840(v88 + v87, v75, sub_1D80617E8);
            if (__swift_getEnumTagSinglePayload(v75, 1, v219) == 1)
            {

              sub_1D80618A0(v75, sub_1D80617E8);
              goto LABEL_116;
            }

            v105 = v218;
            sub_1D7EA896C(v75, v218);
            sub_1D8061840(v105, v76, type metadata accessor for CollectionViewSupplementaryKind.Source);
            OUTLINED_FUNCTION_18_24();
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v106 = v239;

              sub_1D7E58AEC();
              v108 = v234;
              v109 = v236;
              (*v196)(v234, v76 + *(v107 + 48), v236);
              if (sub_1D7F28664(v108, v246))
              {

                (v232)(v108, v109);
                OUTLINED_FUNCTION_0_153();
                v77 = v214;
                goto LABEL_116;
              }

              v139 = v200;
              (*v191)(v200, v108, v109);
              v140 = v224;
              sub_1D7F59F68(v224, v139);
              v141 = a8;
              v142 = v232;
              (v232)(v140, v109);
              v248[0] = v225;
              v248[1] = v141;
              v143 = OUTLINED_FUNCTION_6_64();
              v144 = v207;
              BlueprintLayout.subscript.getter(v108, v143);
              (*v190)(v192, v144, v199);
              sub_1D7E0631C(0, qword_1EDBB3F40);
              OUTLINED_FUNCTION_15_28();
              if ((swift_dynamicCast() & 1) == 0)
              {

                v162 = OUTLINED_FUNCTION_18_24();
                v163(v162);
                v142(v108, v109);
                OUTLINED_FUNCTION_0_153();
                OUTLINED_FUNCTION_16_28();
                v244 = 0;
                sub_1D80618F8(v243, &qword_1EDBB3F38, qword_1EDBB3F40, &protocol descriptor for BlueprintLayoutSupplementaryAttributesProviding);
LABEL_112:
                v75 = v227;
                v76 = v237;
                v72 = v238;
                v77 = v214;
                v73 = &selRef_setMenu_;
                a8 = v201;
                goto LABEL_117;
              }

              OUTLINED_FUNCTION_3_88();
              v145 = OUTLINED_FUNCTION_13_30();
              v147 = v146(v145);
              if (!v147)
              {

                (*v189)(v207, v199);
                (v232)(v234, v236);
                OUTLINED_FUNCTION_0_153();
                __swift_destroy_boxed_opaque_existential_1Tm(v248);
                v74 = v231;
                goto LABEL_112;
              }

              v74 = v231;
              v148 = v199;
              v149 = v207;
              v150 = v236;
              v151 = v234;
              v72 = v238;
              a8 = v201;
              v210 = *(v147 + 16);
              if (!v210)
              {
LABEL_78:

                (*v189)(v149, v148);
                (v232)(v151, v150);
                OUTLINED_FUNCTION_0_153();
                __swift_destroy_boxed_opaque_existential_1Tm(v248);
                v75 = v227;
                v76 = v237;
                v77 = v214;
                v73 = &selRef_setMenu_;
                goto LABEL_117;
              }

              v152 = 0;
              v208 = v147;
              v209 = v147 + 32;
              while (2)
              {
                if (v152 >= *(v147 + 16))
                {
                  goto LABEL_123;
                }

                v153 = OUTLINED_FUNCTION_11_35();
                (*(*(*&v72 - 8) + 16))(v153, v74, COERCE_CGFLOAT(*&v72));
                sub_1D7E1B288(v245, v242);
                sub_1D7E0631C(0, qword_1EDBB6AC8);
                if (swift_dynamicCast())
                {
                  OUTLINED_FUNCTION_14_29();
                  [v239 frame];
                  v154 = OUTLINED_FUNCTION_2_98();
                  if (v155(v154))
                  {
                    OUTLINED_FUNCTION_10_42();
                    if (v157)
                    {
                      v158 = sub_1D81920A4();
                      if (v158)
                      {
LABEL_63:
                        if (v158 < 1)
                        {
                          goto LABEL_126;
                        }

                        v159 = 0;
                        do
                        {
                          if ((qword_1EDBB6AC8 & 0xC000000000000001) != 0)
                          {
                            v160 = OUTLINED_FUNCTION_18_24();
                            MEMORY[0x1DA714420](v160);
                          }

                          else
                          {
                          }

                          dispatch_group_enter(v71);
                          if (qword_1EDBBA3F8 != -1)
                          {
                            OUTLINED_FUNCTION_1_111();
                            swift_once();
                          }

                          ++v159;
                          OUTLINED_FUNCTION_21_23(v71);

                          v151 = v234;
                        }

                        while (v158 != v159);
                      }
                    }

                    else
                    {
                      v158 = *(v156 + 16);
                      if (v158)
                      {
                        goto LABEL_63;
                      }
                    }

                    __swift_destroy_boxed_opaque_existential_1Tm(v243);
                    a8 = v201;
                    v74 = v231;
                    v148 = v199;
                    v149 = v207;
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1Tm(v243);
                    v74 = v231;
                  }

                  v150 = v236;
                }

                else
                {
                  v161 = OUTLINED_FUNCTION_20_24();
                  sub_1D80618F8(v161, &qword_1EDBB6AC0, qword_1EDBB6AC8, &protocol descriptor for ShineImageRequestProviding);
                  v74 = v231;
                }

                ++v152;
                __swift_destroy_boxed_opaque_existential_1Tm(v245);
                v72 = v238;
                v147 = v208;
                if (v152 == v210)
                {
                  goto LABEL_78;
                }

                continue;
              }
            }

            v110 = v239;
            v111 = [v239 v73[158]];

            v112 = v224;
            sub_1D818E924();

            v113 = sub_1D818E974();
            (v232)(v112, v236);
            v114 = v247;
            if (*(v247 + 16))
            {
              v115 = sub_1D81927D4();
              v116 = ~(-1 << *(v114 + 32));
              do
              {
                v117 = v115 & v116;
                if (((*(v114 + 56 + (((v115 & v116) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v115 & v116)) & 1) == 0)
                {
                  goto LABEL_42;
                }

                v115 = v117 + 1;
              }

              while (*(*(v114 + 48) + 8 * v117) != v113);

              OUTLINED_FUNCTION_0_153();
LABEL_110:
              v75 = v227;
              goto LABEL_116;
            }

LABEL_42:
            sub_1D7F59BF8(v248, v113);
            v120 = v225;
            v248[0] = v225;
            v248[1] = a8;
            v121 = OUTLINED_FUNCTION_6_64();
            v122 = v203;
            BlueprintLayout.subscript.getter(v113, v121);
            v123 = *v198;
            v124 = v215;
            (*v198)(v215, v122, v120);
            v125 = v122;
            v126 = v120;
            (*v194)(v125, v195);
            v241 = v120;
            v127 = __swift_allocate_boxed_opaque_existential_0(v240);
            v210 = v123;
            (v123)(v127, v124, v120);
            sub_1D7E1B288(v240, v245);
            sub_1D7E0631C(0, qword_1EDBB6AC8);
            OUTLINED_FUNCTION_15_28();
            v232 = v128;
            if (swift_dynamicCast())
            {
              OUTLINED_FUNCTION_3_88();
              [v239 frame];
              v129 = OUTLINED_FUNCTION_2_98();
              v131 = v130(v129);
              if (v131)
              {
                v132 = v131;
                v133 = sub_1D7E36AB8(v131);
                v74 = v231;
                if (v133)
                {
                  v134 = v133;
                  if (v133 < 1)
                  {
                    goto LABEL_127;
                  }

                  v135 = 0;
                  do
                  {
                    if ((v132 & 0xC000000000000001) != 0)
                    {
                      v136 = MEMORY[0x1DA714420](v135, v132);
                    }

                    else
                    {
                      v136 = *(v132 + 8 * v135 + 32);
                    }

                    dispatch_group_enter(v71);
                    if (qword_1EDBBA3F8 != -1)
                    {
                      OUTLINED_FUNCTION_1_111();
                      swift_once();
                    }

                    ++v135;
                    v137 = qword_1EDBBA400;
                    v138 = v71;
                    sub_1D810EC84(v136, v137, v138);

                    v74 = v231;
                  }

                  while (v134 != v135);
                }

                __swift_destroy_boxed_opaque_existential_1Tm(v248);
                v126 = v225;
                v77 = v214;
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v248);
                v74 = v231;
              }
            }

            else
            {
              v244 = 0;
              OUTLINED_FUNCTION_16_28();
              sub_1D80618F8(v243, &qword_1EDBB6AC0, qword_1EDBB6AC8, &protocol descriptor for ShineImageRequestProviding);
            }

            v73 = &selRef_setMenu_;
            __swift_destroy_boxed_opaque_existential_1Tm(v240);
            v164 = v215;
            (v210)(v202, v215, v126);
            sub_1D7E0631C(0, qword_1EDBB3F40);
            OUTLINED_FUNCTION_15_28();
            v165 = swift_dynamicCast();
            v166 = v126;
            v76 = v237;
            if ((v165 & 1) == 0)
            {

              (*v193)(v164, v166);
              OUTLINED_FUNCTION_0_153();
              OUTLINED_FUNCTION_16_28();
              v244 = 0;
              sub_1D80618F8(v243, &qword_1EDBB3F38, qword_1EDBB3F40, &protocol descriptor for BlueprintLayoutSupplementaryAttributesProviding);
              goto LABEL_110;
            }

            OUTLINED_FUNCTION_3_88();
            v167 = OUTLINED_FUNCTION_13_30();
            v169 = v168(v167);
            if (!v169)
            {

              (*v193)(v215, v225);
              OUTLINED_FUNCTION_0_153();
              __swift_destroy_boxed_opaque_existential_1Tm(v248);
              v74 = v231;
              goto LABEL_110;
            }

            v74 = v231;
            v170 = v215;
            v72 = v238;
            v210 = *(v169 + 16);
            if (!v210)
            {
LABEL_107:

              (*v193)(v170, v225);
              OUTLINED_FUNCTION_0_153();
              __swift_destroy_boxed_opaque_existential_1Tm(v248);
              v75 = v227;
              v77 = v214;
              goto LABEL_117;
            }

            v171 = 0;
            v208 = v169;
            v209 = v169 + 32;
            while (2)
            {
              if (v171 >= *(v169 + 16))
              {
                goto LABEL_122;
              }

              v172 = OUTLINED_FUNCTION_11_35();
              (*(*(*&v72 - 8) + 16))(v172, v74, COERCE_CGFLOAT(*&v72));
              sub_1D7E1B288(v245, v242);
              if (swift_dynamicCast())
              {
                OUTLINED_FUNCTION_14_29();
                [v239 frame];
                v173 = OUTLINED_FUNCTION_2_98();
                if (v174(v173))
                {
                  OUTLINED_FUNCTION_10_42();
                  if (v176)
                  {
                    v177 = sub_1D81920A4();
                    if (v177)
                    {
LABEL_92:
                      if (v177 < 1)
                      {
                        goto LABEL_124;
                      }

                      v178 = 0;
                      do
                      {
                        if ((*&v72 & 0xC000000000000001) != 0)
                        {
                          v179 = OUTLINED_FUNCTION_18_24();
                          MEMORY[0x1DA714420](v179);
                        }

                        else
                        {
                        }

                        dispatch_group_enter(v71);
                        if (qword_1EDBBA3F8 != -1)
                        {
                          OUTLINED_FUNCTION_1_111();
                          swift_once();
                        }

                        ++v178;
                        OUTLINED_FUNCTION_21_23(v71);
                      }

                      while (v177 != v178);
                    }
                  }

                  else
                  {
                    v177 = *(v175 + 16);
                    if (v177)
                    {
                      goto LABEL_92;
                    }
                  }

                  __swift_destroy_boxed_opaque_existential_1Tm(v243);
                  a8 = v201;
                  v74 = v231;
                  v170 = v215;
                  v76 = v237;
                }

                else
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v243);
                  v74 = v231;
                  v170 = v215;
                }

                v73 = &selRef_setMenu_;
              }

              else
              {
                v180 = OUTLINED_FUNCTION_20_24();
                sub_1D80618F8(v180, &qword_1EDBB6AC0, qword_1EDBB6AC8, &protocol descriptor for ShineImageRequestProviding);
                v74 = v231;
              }

              ++v171;
              __swift_destroy_boxed_opaque_existential_1Tm(v245);
              v72 = v238;
              v169 = v208;
              if (v171 == v210)
              {
                goto LABEL_107;
              }

              continue;
            }
          }

          v86 = v239;

LABEL_117:
          if (*&v72 == v230)
          {
            goto LABEL_118;
          }
        }

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
      }

      else
      {
LABEL_118:

        v183 = v204;
        sub_1D8190C44();
        sub_1D8191A44();
        (*(v205 + 8))(v183, v206);
        v184 = CACurrentMediaTime();
        sub_1D81919B4();
        sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v185 = swift_allocObject();
        *(v185 + 16) = xmmword_1D819FAB0;
        v186 = MEMORY[0x1E69E6438];
        *(v185 + 56) = MEMORY[0x1E69E63B0];
        *(v185 + 64) = v186;
        *(v185 + 32) = (v184 - v68) * 1000.0;
        v187 = sub_1D8191E44();
        sub_1D818FD44();
      }
    }
  }
}

void sub_1D80617E8()
{
  if (!qword_1EDBB5AF8[0])
  {
    type metadata accessor for CollectionViewSupplementaryKind.Source();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBB5AF8);
    }
  }
}

uint64_t sub_1D8061840(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D80618A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D80618F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7EBB4A4(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t Route.context.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t Route.setup.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

__n128 sub_1D8061A40@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  if (a2)
  {
    OUTLINED_FUNCTION_0_32();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v15 = sub_1D7E95FBC;
  }

  else
  {
    v15 = nullsub_1;
    v14 = 0;
  }

  OUTLINED_FUNCTION_0_32();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = type metadata accessor for Route();
  v18 = (a8 + v17[9]);
  *v18 = sub_1D80621AC;
  v18[1] = v16;
  if (a4)
  {
    OUTLINED_FUNCTION_0_32();
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v20 = sub_1D806220C;
  }

  else
  {
    v20 = nullsub_1;
    v19 = 0;
  }

  OUTLINED_FUNCTION_0_32();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v22 = (a8 + v17[10]);
  *v22 = sub_1D80621D4;
  v22[1] = v21;
  v23 = (a8 + v17[11]);
  result = *a6;
  v25 = *(a6 + 16);
  *v23 = *a6;
  v23[1] = v25;
  return result;
}

double Route.replacing<A>(activity:)@<D0>(int *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v10, v8);
  v12 = a1[10];
  v13 = (v3 + a1[9]);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v3 + v12);
  v17 = *(v3 + v12 + 8);
  sub_1D7E7B91C(v3 + a1[11], v19);

  *&result = sub_1D8061A40(v10, v14, v15, v16, v17, v19, a2, a3).n128_u64[0];
  return result;
}

double Route.addingContext(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v32 = a1;
  v33 = a2;
  v34 = a4;
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  OUTLINED_FUNCTION_2();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v5, v14, v16);
  (*(v8 + 16))(v12, v5, a3);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = *(a3 + 24);
  *(v22 + 16) = v14;
  *(v22 + 24) = v23;
  (*(v8 + 32))(v22 + v20, v12, a3);
  v24 = (v22 + v21);
  v25 = v33;
  *v24 = v32;
  v24[1] = v25;
  v26 = *(a3 + 44);
  v27 = (v5 + *(a3 + 40));
  v28 = *v27;
  v29 = v27[1];
  sub_1D7E7B91C(v5 + v26, v35);

  *&result = sub_1D8061A40(v18, sub_1D8061FA4, v22, v28, v29, v35, v14, v34).n128_u64[0];
  return result;
}

uint64_t sub_1D8061F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for Route();
  (*(a2 + *(v6 + 36)))(a1);
  return a3(a1);
}

uint64_t sub_1D8061FA4(uint64_t a1)
{
  v3 = *(type metadata accessor for Route() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8061F38(a1, v1 + v4, v5);
}

uint64_t sub_1D8062060(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1D80621D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1D8062238(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = MEMORY[0x1E69E7CC8];
  v36 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v33 = a1;
  sub_1D8190DB4();
  v8 = 0;
  v32 = a2;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v6)) | (v8 << 6);
    v11 = *(v33 + 56);
    v12 = (*(v33 + 48) + 24 * v10);
    v13 = v12[1];
    v31 = *v12;
    v14 = *(v12 + 2);
    v15 = *(v11 + 8 * v10);
    LOBYTE(v10) = *(v15 + 32);
    v16 = v10 & 0x3F;
    v17 = ((1 << v10) + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v34 = v13;
    sub_1D8190DB4();
    v18 = v32;
    isStackAllocationSafe = sub_1D8190DB4();
    if (v16 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v20 = (&v30 - ((8 * v17 + 15) & 0x3FFFFFFFFFFFFFF0));
      sub_1D7E2CB98(0, v17, v20);
      v21 = v35;
      sub_1D80674FC(v20, v17, v15, v18);
      v35 = v21;
      if (v21)
      {

        v29 = v35;
        swift_willThrow();

        __break(1u);
LABEL_22:

        result = MEMORY[0x1DA715D00](v20, -1, -1);
        __break(1u);
        return result;
      }

      v23 = v22;
    }

    else
    {
      v20 = swift_slowAlloc();

      v26 = v35;
      v27 = sub_1D806746C(v20, v17, v15, v18);
      v35 = v26;
      if (v26)
      {
        goto LABEL_22;
      }

      v23 = v27;

      MEMORY[0x1DA715D00](v20, -1, -1);
    }

    v6 &= v6 - 1;
    v24 = *(v23 + 16);

    if (v24)
    {
      v25 = v30;
      if (v30[3] <= v30[2])
      {
        sub_1D7F0193C();
        v25 = v36;
      }

      v30 = v25;
      sub_1D806545C(v31, v34, v23, v25, v14);
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  return v30;
}

BOOL sub_1D806256C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a1 == a3 && a2 == a4)
  {
    return a5 == a6;
  }

  v9 = sub_1D8192634();
  result = 0;
  if (v9)
  {
    return a5 == a6;
  }

  return result;
}

uint64_t sub_1D80625B8(double a1)
{
  sub_1D8190FF4();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  return MEMORY[0x1DA714A20](*&v2);
}

uint64_t sub_1D80625FC(double a1)
{
  sub_1D81927E4();
  sub_1D8190FF4();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  MEMORY[0x1DA714A20](*&v2);
  return sub_1D8192824();
}

uint64_t sub_1D8062688()
{
  v1 = *(v0 + 16);
  sub_1D81927E4();
  sub_1D8190FF4();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA714A20](*&v2);
  return sub_1D8192824();
}

uint64_t BlueprintLayoutCollectionInvalidator.__allocating_init(layoutCollectionProvider:impressionTracking:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BlueprintLayoutCollectionInvalidator.init(layoutCollectionProvider:impressionTracking:)(a1, a2, a3);
  return v6;
}

uint64_t BlueprintLayoutCollectionInvalidator.invalidate(collectionView:newSize:resizingIdentifier:resizingGroupIdentifier:animator:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v34 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v32 = v18;
  v33 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  sub_1D818F154();
  memcpy(v38, v36, 0x4E8uLL);
  memcpy(v37, &v36[76], sizeof(v37));
  sub_1D7E222B8(&v38[608], v35);
  sub_1D7E598FC(v38);
  if (!a5)
  {
    return sub_1D7E4C1A0(&v38[608]);
  }

  v22 = *&v38[qword_1D81B3298[v38[609]]];
  OUTLINED_FUNCTION_0_8();
  v29 = v11;
  v23 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_0_8();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  memcpy((v25 + 32), v37, 0x235uLL);
  *(v25 + 600) = a4;
  *(v25 + 608) = a5;
  *(v25 + 616) = v22;
  *(v25 + 624) = a1;
  *(v25 + 632) = a2;
  *(v25 + 640) = a6;
  *(v25 + 648) = a7;
  v35[4] = sub_1D8063050;
  v35[5] = v25;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 1107296256;
  v35[2] = sub_1D7E64940;
  v35[3] = &block_descriptor_52;
  v26 = _Block_copy(v35);
  sub_1D7E222B8(&v38[608], v36);
  sub_1D8190DB4();
  sub_1D8190DB4();

  sub_1D8190BF4();
  v36[0] = MEMORY[0x1E69E7CC0];
  sub_1D7E10290(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  v27 = MEMORY[0x1E69E7F60];
  sub_1D7E10384(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60]);
  sub_1D7E104A0(&qword_1EDBB3340, &qword_1EDBB3348, v27);
  sub_1D8192004();
  sub_1D8191A54();
  _Block_release(v26);
  sub_1D7E4C1A0(&v38[608]);
  (*(v34 + 8))(v16, v29);
  (*(v32 + 8))(v21, v33);
}

void sub_1D8062B70(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      dispatch_group_enter(*(v19 + 72));

      sub_1D818EDB4();

      sub_1D818F154();
      v22 = BYTE1(__src[76]);
      v23 = __src[77];
      v24 = __src[83];
      v25 = __src[87];
      if (BYTE1(__src[76]) == 1)
      {
        v26 = __src[83];
      }

      else
      {
        v26 = __src[87];
      }

      if (!BYTE1(__src[76]))
      {
        v26 = __src[77];
      }

      if (v26 != *(a6 + qword_1D81B32B0[*(a6 + 1)]) || __src[123] != *(a6 + 376) || __src[125] != *(a6 + 392) || (swift_beginAccess(), v27 = COERCE_DOUBLE(sub_1D7EDF5E0(a7, a8, *(v19 + 24), a1)), v29 = v28, v31 = v30, swift_endAccess(), (v31 & 1) == 0) && (v27 == a2 ? (v32 = v29 == a3) : (v32 = 0), v32))
      {
        dispatch_group_leave(*(v19 + 72));

        sub_1D818EDC4();

        sub_1D7E598FC(__src);
LABEL_27:

        return;
      }

      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = *(v19 + 24);
      sub_1D7EF684C();
      *(v19 + 24) = __dst[0];
      swift_endAccess();
      if (a10)
      {
        if (v22 == 1)
        {
          v33 = v24;
        }

        else
        {
          v33 = v25;
        }

        if (v22)
        {
          v34 = v33;
        }

        else
        {
          v34 = v23;
        }

        swift_beginAccess();
        if (*(*(v19 + 32) + 16) && (sub_1D7F050D0(a9, a10, v34), (v35 & 1) != 0))
        {
          v36 = sub_1D8190DB4();
        }

        else
        {
          v36 = MEMORY[0x1E69E7CD0];
        }

        __dst[0] = v36;
        swift_endAccess();
        sub_1D8190DB4();
        sub_1D7E91548(v44, a7, a8);

        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v41[0] = *(v19 + 32);
        sub_1D7EF6724(__dst[0], a9, a10, v34);
        *(v19 + 32) = v41[0];
        swift_endAccess();
      }

      memcpy(__dst, __src, sizeof(__dst));
      sub_1D8063078(__dst, v44);
      sub_1D7E11E0C();
      v37 = sub_1D8191AB4();
      v38 = swift_allocObject();
      v38[2] = v19;
      v38[3] = v21;
      memcpy(v38 + 4, __src, 0x4E8uLL);
      memcpy(v38 + 161, v44, 0x4E8uLL);
      v39 = swift_allocObject();
      *(v39 + 16) = sub_1D8067A34;
      *(v39 + 24) = v38;
      v41[4] = sub_1D7E74D6C;
      v41[5] = v39;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 1107296256;
      v41[2] = sub_1D7E74D74;
      v41[3] = &block_descriptor_18_1;
      v40 = _Block_copy(v41);

      v21 = v21;
      sub_1D7E6755C(__src, __dst);
      sub_1D7E6755C(v44, __dst);

      dispatch_sync(v37, v40);

      _Block_release(v40);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if ((v37 & 1) == 0)
      {

        sub_1D818EDC4();

        sub_1D7E598FC(v44);
        sub_1D7E598FC(__src);

        goto LABEL_27;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void *sub_1D8063078@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x4E8uLL);
  swift_beginAccess();
  if (*(*(v2 + 24) + 16) && __dst[16] == 1)
  {
    memcpy(v5, __dst, sizeof(v5));
    return sub_1D8063B58(v5, a2);
  }

  else
  {
    memcpy(a2, __dst, 0x4E8uLL);
    return sub_1D7E6755C(__dst, v5);
  }
}

void sub_1D8063118(uint64_t a1, void *a2, void *__src, const void *a4)
{
  memcpy(v12, __src, sizeof(v12));
  memcpy(v11, a4, sizeof(v11));
  v7 = sub_1D80632AC(a2, v12, v11);
  v8 = *(a1 + 40);
  swift_beginAccess();
  *(v8 + 16) = 1;
  memcpy(v12, a4, sizeof(v12));

  sub_1D818F124();

  if (v7)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x1EEE9AC00](ObjectType);
    BlueprintImpressionTracking.performWithoutImpressions(block:)();
    *(v8 + 16) = 0;
    dispatch_group_leave(*(a1 + 72));
  }

  else
  {
    v10 = [a2 collectionViewLayout];
    [v10 invalidateLayout];

    [a2 layoutIfNeeded];
    *(v8 + 16) = 0;
    dispatch_group_leave(*(a1 + 72));
  }
}

id sub_1D80632AC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v81 - v12;
  v14 = *(a2 + 1216);
  v15 = *(a3 + 1216);
  [a1 adjustedContentInset];
  v82 = v16;
  [a1 contentOffset];
  v81 = v17;
  [a1 bounds];
  v89 = v18;
  v87 = v19;
  v21 = v20;
  v23 = v22;
  v24 = sub_1D7E45D98();
  v26 = v25;
  [a1 safeAreaInsets];
  v28 = v27;
  v30 = v29;
  v85 = v32;
  v86 = v31;
  v33 = [a1 indexPathsForVisibleItems];
  v34 = sub_1D8191314();

  v90 = MEMORY[0x1E69E7CC0];
  v35 = *(v34 + 16);
  if (v35)
  {
    v83 = v15;
    v84 = v9;
    v36 = UIEdgeInsetsInsetRect(v89, v87, v21, v23, v24, v26);
    v40 = UIEdgeInsetsInsetRect(v36, v37, v38, v39, v28, v30);
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v85 = v34;
    v86 = v7;
    v47 = v34 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v48 = *(v7 + 16);
    v89 = *(v7 + 72);
    v49 = (v7 + 8);
    v87 = v48;
    v88 = v14;
    do
    {
      (*&v48)(v13, v47, v6);
      if (*(v14 + 16) && (v50 = sub_1D7E7DB08(), (v51 & 1) != 0))
      {
        v52 = *(*(v14 + 56) + 8 * v50);
        [v52 frame];
        v94.origin.x = v53;
        v94.origin.y = v54;
        v94.size.width = v55;
        v94.size.height = v56;
        v91.origin.x = v40;
        v91.origin.y = v42;
        v91.size.width = v44;
        v91.size.height = v46;
        v57 = CGRectIntersectsRect(v91, v94);
        v58 = (*v49)(v13, v6);
        if (v57)
        {
          MEMORY[0x1DA713500](v58);
          if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D81913B4();
          }

          sub_1D8191404();
        }

        else
        {
        }

        v48 = v87;
        v14 = v88;
      }

      else
      {
        (*v49)(v13, v6);
      }

      v47 += *&v89;
      --v35;
    }

    while (v35);

    v7 = v86;
    v15 = v83;
    v9 = v84;
  }

  else
  {
  }

  v59 = sub_1D8190DB4();
  v90 = sub_1D80E74B8(v59);
  sub_1D8065A10(&v90, sub_1D8066538, sub_1D8065CF8);

  v60 = v90;
  if (sub_1D7E36AB8(v90))
  {
    sub_1D7E33DD8(0, (v60 & 0xC000000000000001) == 0, v60);
    if ((v60 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x1DA714420](0, v60);
    }

    else
    {
      v61 = *(v60 + 32);
    }

    v62 = v61;

    v63 = v62;
    v64 = [v63 indexPath];
    sub_1D818E924();

    if (*(v15 + 16) && (v65 = sub_1D7E7DB08(), (v66 & 1) != 0))
    {
      v67 = v82 + v81;
      v68 = *(v7 + 8);
      v69 = *(*(v15 + 56) + 8 * v65);
      v68(v9, v6);
      [v63 frame];
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v77 = v76;

      v92.origin.x = v71;
      v92.origin.y = v73;
      v92.size.width = v75;
      v92.size.height = v77;
      v78 = v67 - CGRectGetMinY(v92);
      [v69 frame];
      if (v78 - (v67 - CGRectGetMinY(v93)) != 0.0)
      {
        v79 = [objc_allocWithZone(MEMORY[0x1E69DC860]) init];
        [v79 contentOffsetAdjustment];
        [v79 setContentOffsetAdjustment_];

        return v79;
      }
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
  }

  return 0;
}

id sub_1D8063838(void *a1, uint64_t a2)
{
  v4 = [a1 collectionViewLayout];
  [v4 invalidateLayoutWithContext_];

  return [a1 layoutIfNeeded];
}

void sub_1D80638AC(__int128 *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v32 = *a1;
  v3 = *(a1 + 3);
  v33 = *(a1 + 2);
  memcpy(v31, a1 + 2, sizeof(v31));
  v25 = v2;
  v23[6] = *(v2 + 16);
  sub_1D818EDB4();
  v4 = sub_1D7E36AB8(v3);
  v5 = 0;
  v23[5] = 0;
  v26 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4 == v5)
    {
      v16 = sub_1D7E919E0(v26);
      v17 = v25;
      v18 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v18);
      v23[2] = v16;
      v19 = sub_1D8190DB4();
      v20 = sub_1D80670D0(v19, sub_1D8067910, v23);

      *(v17 + 24) = v20;

      swift_beginAccess();
      sub_1D8190DB4();
      v21 = sub_1D8190DB4();
      v22 = sub_1D8062238(v21, v16);

      *(v17 + 32) = v22;

      v27 = v32;
      v28 = v33;
      v29 = v3;
      memcpy(v30, v31, sizeof(v30));
      sub_1D8063078(&v27, v24);
      sub_1D818EDC4();
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA714420](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = *&v6[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingIdentifier];
    v10 = *&v6[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingIdentifier + 8];
    sub_1D8190DB4();

    ++v5;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7E2D320();
        v26 = v14;
      }

      v11 = *(v26 + 16);
      if (v11 >= *(v26 + 24) >> 1)
      {
        sub_1D7E2D320();
        v26 = v15;
      }

      v12 = v26;
      *(v26 + 16) = v11 + 1;
      v13 = v12 + 16 * v11;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v5 = v8;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void *sub_1D8063B58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v206 = a2;
  v217 = sub_1D818E994();
  v3 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v212 = &v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v209 = *(a1 + 32);
  memcpy(v227, (a1 + 608), 0x235uLL);
  v226[1] = 0;
  v226[0] = 0;
  v226[3] = MEMORY[0x1E69E7CC0];
  v226[4] = MEMORY[0x1E69E7CC8];
  v226[152] = MEMORY[0x1E69E7CC8];
  v226[153] = MEMORY[0x1E69E7CC8];
  v226[154] = MEMORY[0x1E69E7CC8];
  v226[155] = MEMORY[0x1E69E7CC8];
  v226[156] = MEMORY[0x1E69E7CC8];
  LOBYTE(v226[2]) = v5;
  memcpy(&v226[5], (a1 + 608), 0x235uLL);
  BYTE5(v226[75]) = v5;
  memcpy(v225, (a1 + 608), 0x235uLL);
  LOBYTE(v221[0]) = v5;
  sub_1D7E222B8(v227, v224);
  sub_1D7E222B8(v227, v224);
  BlueprintLayoutCollectionPinAdjuster.init(layoutOptions:layoutDirection:)(v225, v221, &v226[76]);
  v6 = sub_1D8190DB4();
  v225[0] = sub_1D80E74B8(v6);
  *&v7 = 0.0;
  sub_1D8065A10(v225, sub_1D8065DF4, sub_1D8065B9C);
  v205 = 0;
  v8 = v225[0];
  v9 = sub_1D7E36AB8(v225[0]);
  v215 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v219 = v8 & 0xC000000000000001;
    *&v211 = v3 + 8;
    v12 = MEMORY[0x1E69E7CC8];
    v13 = 0.0;
    *&v220 = MEMORY[0x1E69E7CC8];
    v213 = MEMORY[0x1E69E7CC8];
    v14 = MEMORY[0x1E69E7CC8];
    v210 = v9;
    while (1)
    {
      if (v219)
      {
        v15 = MEMORY[0x1DA714420](v11, v8);
      }

      else
      {
        if (v11 >= *(v8 + 16))
        {
          goto LABEL_169;
        }

        v15 = *(v8 + 8 * v11 + 32);
      }

      v16 = v15;
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_167;
      }

      *&v7 = COERCE_DOUBLE([v15 copy]);
      sub_1D8191F34();
      swift_unknownObjectRelease();
      type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
      if (swift_dynamicCast())
      {
        break;
      }

LABEL_61:
      ++v11;
      if (v17 == v10)
      {
        goto LABEL_69;
      }
    }

    v218 = v11 + 1;
    v216 = v14;
    v18 = v224[0];
    v19 = v16;
    v20 = [v19 indexPath];
    v21 = v212;
    sub_1D818E924();

    v22 = sub_1D818E974();
    (**&v211)(v21, v217);
    v23 = v13;
    if (*(v12 + 16))
    {
      v24 = sub_1D7E7E198(v22);
      v23 = v13;
      if (v25)
      {
        v23 = *(*(v12 + 56) + 8 * v24);
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v225[0] = v12;
    v26 = v22;
    v27 = sub_1D7E7E198(v22);
    v29 = *(v12 + 16);
    v30 = (v28 & 1) == 0;
    v7 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_168;
    }

    v31 = v27;
    v32 = v28;
    sub_1D8067980(0, &qword_1ECA0D260);
    if (sub_1D8192374())
    {
      v33 = sub_1D7E7E198(v26);
      v35 = v220;
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_184;
      }

      v31 = v33;
    }

    else
    {
      v35 = v220;
    }

    v36 = v225[0];
    if (v32)
    {
      *(*(v225[0] + 56) + 8 * v31) = v23;
      v12 = v36;
    }

    else
    {
      *(v225[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
      *(v36[6] + 8 * v31) = v26;
      *(v36[7] + 8 * v31) = v23;
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_170;
      }

      v12 = v36;
      v36[2] = v39;
    }

    *&v7 = COERCE_DOUBLE(&OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_originalFrame);
    v40 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_originalFrame;
    v41 = &v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_originalFrame];
    if (v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_originalFrame + 32])
    {
      [v19 frame];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v40 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_originalFrame;
    }

    else
    {
      v47 = v41[2];
      v49 = v41[3];
      v43 = *v41;
      v45 = v41[1];
    }

    v50 = &v18[v40];
    *v50 = v43;
    v50[1] = v45;
    v50[2] = v47;
    v50[3] = v49;
    *(v50 + 32) = 0;
    [v19 frame];
    v51 = &v18[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame];
    *v51 = v52;
    *(v51 + 1) = v53;
    *(v51 + 2) = v54;
    *(v51 + 3) = v55;
    v51[32] = 0;
    v56 = [v19 representedElementCategory];
    if (v56)
    {
      if (v56 == 2)
      {

        [v18 setFrame_];
        v59 = v213;
        v60 = *(v213 + 16);
        v214 = v12;
        if (v60 && (sub_1D7E7E198(v26), (v61 & 1) != 0))
        {
          v62 = sub_1D8190DB4();
        }

        else
        {
          v62 = MEMORY[0x1E69E7CC0];
        }

        v225[0] = v62;
        v66 = v18;
        MEMORY[0x1DA713500]();
        if (*((v225[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D81913B4();
        }

        v208 = v66;
        sub_1D8191404();
        v7 = v225[0];
        swift_isUniquelyReferenced_nonNull_native();
        v224[0] = v59;
        v67 = sub_1D7E7E198(v26);
        if (__OFADD__(*(v59 + 16), (v68 & 1) == 0))
        {
          goto LABEL_174;
        }

        v69 = v67;
        v70 = v68;
        sub_1D8067918(0, &qword_1EDBB2D98, &qword_1EDBB33A0, type metadata accessor for BlueprintLayoutCollectionLayoutAttributes);
        if (sub_1D8192374())
        {
          v71 = sub_1D7E7E198(v26);
          v10 = v210;
          if ((v70 & 1) != (v72 & 1))
          {
            goto LABEL_184;
          }

          v69 = v71;
        }

        else
        {
          v10 = v210;
        }

        v86 = v224[0];
        v213 = v224[0];
        if (v70)
        {
          *(*(v224[0] + 56) + 8 * v69) = *&v7;
        }

        else
        {
          *(v224[0] + 8 * (v69 >> 6) + 64) |= 1 << v69;
          *(v86[6] + 8 * v69) = v26;
          *(v86[7] + 8 * v69) = *&v7;
          v87 = v86[2];
          v38 = __OFADD__(v87, 1);
          v88 = v87 + 1;
          if (v38)
          {
            goto LABEL_179;
          }

          v86[2] = v88;
        }

        v12 = v214;
        v8 = v215;
        v14 = v216;
        goto LABEL_60;
      }

      if (v56 != 1)
      {

        goto LABEL_38;
      }

      [v18 setFrame_];
      v57 = sub_1D80678A0(v19);
      v17 = v218;
      if (*&v58 == 0.0)
      {
        goto LABEL_182;
      }

      v7 = v58;
      BlueprintLayoutCollection.add(supplementaryLayoutAttributes:for:)(v18, v57, v58);
    }

    else
    {

      memcpy(v224, v227, 0x235uLL);
      sub_1D7E222B8(v227, v221);
      sub_1D8065008(v19, v224);
      v64 = v63;
      v7 = v65;
      memcpy(v225, v224, 0x235uLL);
      sub_1D7E4C1A0(v225);
      if (v7)
      {
        [v18 setFrame_];
        BlueprintLayoutCollection.add(layoutAttributes:)(v18);

LABEL_38:
        v14 = v216;
        goto LABEL_39;
      }

      v214 = v12;
      v73 = &v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingGroupIdentifier];
      v74 = *&v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingGroupIdentifier + 8];
      v75 = v13;
      if (v74)
      {
        v76 = *v73;
        sub_1D8190DB4();
        *&v7 = COERCE_DOUBLE(sub_1D7E69954(v76, v74, v216));
        v78 = v77;

        v75 = *&v7;
        v79 = (v78 & 1) == 0;
        v35 = v220;
        if (!v79)
        {
          v75 = v13;
        }
      }

      [v18 setFrame_];
      BlueprintLayoutCollection.add(layoutAttributes:)(v18);
      v228.origin.x = v43;
      v228.origin.y = v45;
      v228.size.width = v47;
      v228.size.height = v49;
      v80 = v64 - CGRectGetHeight(v228);
      v81 = v73[1];
      if (v81)
      {
        v82 = *v73;
        sub_1D8190DB4();
        v83 = v216;
        sub_1D7E69954(v82, v81, v216);
        if ((v84 & 1) == 0)
        {

          v12 = v214;
          v14 = v83;
LABEL_39:
          v8 = v215;
          v10 = v210;
LABEL_60:
          v17 = v218;
          goto LABEL_61;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v224[0] = v83;
        sub_1D7EF656C();

        v14 = v224[0];
        v85 = v220;
        v17 = v218;
        if (*(v220 + 16))
        {
          sub_1D7E7E198(v26);
        }

        v12 = v214;
        swift_isUniquelyReferenced_nonNull_native();
        v224[0] = v85;
        sub_1D7EF6658();

        v220 = v224[0];
        v13 = v13 + v80;
        goto LABEL_31;
      }

      if (*(v35 + 16))
      {
        sub_1D7E7E198(v26);
      }

      v12 = v214;
      v17 = v218;
      swift_isUniquelyReferenced_nonNull_native();
      v224[0] = v35;
      sub_1D7EF6658();

      v220 = v224[0];
      v13 = v13 + v80;
    }

    v14 = v216;
LABEL_31:
    v8 = v215;
    v10 = v210;
    goto LABEL_61;
  }

  v14 = MEMORY[0x1E69E7CC8];
  *&v220 = MEMORY[0x1E69E7CC8];
  v12 = MEMORY[0x1E69E7CC8];
  v213 = MEMORY[0x1E69E7CC8];
LABEL_69:
  v214 = v12;
  v89 = *(v213 + 64);
  v212 = (v213 + 64);
  v90 = 1 << *(v213 + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v92 = v91 & v89;
  *&v211 = (v90 + 63) >> 6;
  sub_1D8190DB4();
  v93 = 0;
  v216 = v14;
LABEL_72:
  while (v92)
  {
LABEL_77:
    v95 = (v93 << 9) | (8 * __clz(__rbit64(v92)));
    v96 = *(v213 + 56);
    v218 = *(*(v213 + 48) + v95);
    v7 = *(v96 + v95);
    if (v7 >> 62)
    {
      v97 = sub_1D81920A4();
    }

    else
    {
      v97 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v92 &= v92 - 1;
    if (v97)
    {
      v219 = v7 & 0xC000000000000001;
      v217 = v7 & 0xFFFFFFFFFFFFFF8;
      sub_1D8190DB4();
      v98 = 0;
      while (1)
      {
        if (v219)
        {
          v99 = MEMORY[0x1DA714420](v98, v7);
          v100 = v220;
        }

        else
        {
          v100 = v220;
          if (v98 >= *(v217 + 16))
          {
            goto LABEL_165;
          }

          v99 = *(v7 + 8 * v98 + 32);
        }

        v101 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          break;
        }

        if (*(v100 + 16))
        {
          sub_1D7E7E198(v218);
          if (v102)
          {
            [v99 frame];
            [v99 setFrame_];
          }
        }

        v103 = v99;
        v104 = sub_1D80678A0(v103);
        if (!v105)
        {
          goto LABEL_181;
        }

        BlueprintLayoutCollection.add(decorationLayoutAttributes:for:)(v103, v104, v105);

        ++v98;
        if (v101 == v97)
        {

          goto LABEL_72;
        }
      }

      __break(1u);
      goto LABEL_164;
    }
  }

  while (1)
  {
    v94 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      break;
    }

    if (v94 >= *&v211)
    {

      v106 = (v209 + 64);
      v107 = 1 << *(v209 + 32);
      v108 = -1;
      if (v107 < 64)
      {
        v108 = ~(-1 << v107);
      }

      v109 = v108 & *(v209 + 64);
      v7 = (v107 + 63) >> 6;
      sub_1D8190DB4();
      v110 = 0;
      v207 = v7;
      v208 = v106;
      if (!v109)
      {
LABEL_96:
        while (1)
        {
          v111 = v110 + 1;
          if (__OFADD__(v110, 1))
          {
            goto LABEL_166;
          }

          if (v111 >= v7)
          {

            return memcpy(v206, v226, 0x4E8uLL);
          }

          v109 = *&v106[8 * v111];
          ++v110;
          if (v109)
          {
            v110 = v111;
            goto LABEL_100;
          }
        }
      }

      while (1)
      {
LABEL_100:
        v112 = __clz(__rbit64(v109)) | (v110 << 6);
        v113 = *(*(v209 + 48) + 8 * v112);
        v114 = *(v209 + 56) + 160 * v112;
        v115 = *(v114 + 80);
        v116 = *(v114 + 88);
        v117 = *(v114 + 96);
        v118 = *(v114 + 104);
        v119 = *(v114 + 120);
        v212 = *(v114 + 112);
        v120 = *(v114 + 136);
        v215 = *(v114 + 128);
        v217 = v120;
        v121 = *(v114 + 144);
        v122 = *(v114 + 152);
        v123 = v214;
        v124 = 0.0;
        v125 = 0.0;
        v7 = v220;
        if (*(v214 + 16))
        {
          v126 = sub_1D7E7E198(v113);
          if (v127)
          {
            v125 = *(*(v123 + 56) + 8 * v126);
          }
        }

        if (*(v7 + 16))
        {
          v128 = sub_1D7E7E198(v113);
          if (v129)
          {
            v124 = *(*(v7 + 56) + 8 * v128);
          }
        }

        v130 = v125 + v119;
        if (v121)
        {
          v130 = v119;
        }

        v210 = *&v119;
        v211 = v130;
        v131 = *(v122 + 16);
        v219 = v113;
        LODWORD(v218) = v121;
        if (v131)
        {
          v225[0] = MEMORY[0x1E69E7CC0];
          sub_1D8190DB4();
          sub_1D7F090AC();
          v132 = 0;
          v133 = v225[0];
          v134 = *(v225[0] + 16);
          v7 = 32 * v134;
          do
          {
            v135 = *(v122 + v132 + 32);
            v136 = *(v122 + v132 + 40);
            v137 = *(v122 + v132 + 48);
            v225[0] = v133;
            v138 = v134 + 1;
            if (v134 >= *(v133 + 24) >> 1)
            {
              v204 = v137;
              sub_1D7F090AC();
              v137 = v204;
              v133 = v225[0];
            }

            *(v133 + 16) = v138;
            v139 = v133 + v7 + v132;
            *(v139 + 32) = v135;
            *(v139 + 40) = v125 + v136;
            *(v139 + 48) = v137;
            v132 += 32;
            v134 = v138;
            --v131;
          }

          while (v131);
          v113 = v219;
          LOBYTE(v121) = v218;
        }

        else
        {
          sub_1D8190DB4();
          v133 = MEMORY[0x1E69E7CC0];
        }

        v140 = v116 + v125;
        v223 = v121;
        v141 = v118 + v124;
        v222 = v121;
        v225[0] = v115;
        *&v225[1] = v140;
        v225[2] = v117;
        *&v225[3] = v141;
        v225[4] = v212;
        *&v225[5] = v211;
        v225[6] = v215;
        v225[7] = v217;
        LOBYTE(v225[8]) = v121;
        v225[9] = v133;
        v225[10] = v115;
        *&v225[11] = v116;
        v225[12] = v117;
        *&v225[13] = v118;
        v225[14] = v212;
        v225[15] = v210;
        v225[16] = v215;
        v225[17] = v217;
        LOBYTE(v225[18]) = v121;
        v225[19] = v122;
        v142 = v226[149];
        if (*(v226[149] + 16))
        {
          sub_1D7E7E198(v113);
          if (v143)
          {
            goto LABEL_183;
          }
        }

        swift_isUniquelyReferenced_nonNull_native();
        v224[0] = v142;
        v144 = sub_1D7E7E198(v113);
        v146 = *(v142 + 16);
        v147 = (v145 & 1) == 0;
        v7 = v146 + v147;
        if (__OFADD__(v146, v147))
        {
          goto LABEL_171;
        }

        v148 = v144;
        v149 = v145;
        sub_1D7E7E098();
        if (sub_1D8192374())
        {
          v150 = sub_1D7E7E198(v219);
          *&v7 = -0.0;
          v152 = v218;
          if ((v149 & 1) != (v151 & 1))
          {
            goto LABEL_184;
          }

          v148 = v150;
        }

        else
        {
          *&v7 = -0.0;
          v152 = v218;
        }

        v153 = v224[0];
        if (v149)
        {
          v154 = *(v224[0] + 56) + 32 * v148;
          *v154 = v115;
          *(v154 + 8) = v140;
          *(v154 + 16) = v117;
          *(v154 + 24) = v141;
          v155 = v219;
        }

        else
        {
          *(v224[0] + 8 * (v148 >> 6) + 64) |= 1 << v148;
          v155 = v219;
          *(v153[6] + 8 * v148) = v219;
          v156 = v153[7] + 32 * v148;
          *v156 = v115;
          *(v156 + 8) = v140;
          *(v156 + 16) = v117;
          *(v156 + 24) = v141;
          v157 = v153[2];
          v38 = __OFADD__(v157, 1);
          v158 = v157 + 1;
          if (v38)
          {
            goto LABEL_175;
          }

          v153[2] = v158;
        }

        v226[149] = v153;
        v159 = v226[150];
        if (v152)
        {
          sub_1D7E7E198(v155);
          if (v160)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v224[0] = v159;
            v226[150] = 0x8000000000000000;
            sub_1D8192374();
            v161 = v224[0];
            type metadata accessor for CGRect();
            sub_1D8192384();
            v226[150] = v161;
          }
        }

        else
        {
          swift_isUniquelyReferenced_nonNull_native();
          v224[0] = v159;
          v162 = sub_1D7E7E198(v155);
          v164 = v163;
          if (__OFADD__(*(v159 + 16), (v163 & 1) == 0))
          {
            goto LABEL_176;
          }

          v165 = v162;
          if (sub_1D8192374())
          {
            v166 = sub_1D7E7E198(v219);
            if ((v164 & 1) != (v167 & 1))
            {
              goto LABEL_184;
            }

            v165 = v166;
          }

          v168 = v224[0];
          if (v164)
          {
            v169 = (*(v224[0] + 56) + 32 * v165);
            v170 = v211;
            *v169 = v212;
            v169[1] = v170;
            v171 = v217;
            *(v169 + 2) = v215;
            *(v169 + 3) = v171;
          }

          else
          {
            *(v224[0] + 8 * (v165 >> 6) + 64) |= 1 << v165;
            *(v168[6] + 8 * v165) = v219;
            v172 = (v168[7] + 32 * v165);
            v173 = v211;
            *v172 = v212;
            v172[1] = v173;
            v174 = v217;
            *(v172 + 2) = v215;
            *(v172 + 3) = v174;
            v175 = v168[2];
            v38 = __OFADD__(v175, 1);
            v176 = v175 + 1;
            if (v38)
            {
              goto LABEL_180;
            }

            v168[2] = v176;
          }

          v226[150] = v168;
        }

        sub_1D8190DB4();
        v177 = v226[151];
        swift_isUniquelyReferenced_nonNull_native();
        v224[0] = v177;
        v226[151] = 0x8000000000000000;
        v178 = sub_1D7E7E198(v219);
        if (__OFADD__(*(v177 + 16), (v179 & 1) == 0))
        {
          goto LABEL_172;
        }

        v180 = v178;
        v181 = v179;
        sub_1D8067918(0, &qword_1EDBB2D90, &qword_1EDBB32F8, type metadata accessor for CGRect);
        if (sub_1D8192374())
        {
          v182 = v219;
          v183 = sub_1D7E7E198(v219);
          if ((v181 & 1) != (v184 & 1))
          {
            goto LABEL_184;
          }

          v180 = v183;
        }

        else
        {
          v182 = v219;
        }

        v185 = v224[0];
        if (v181)
        {
          *(*(v224[0] + 56) + 8 * v180) = v133;
        }

        else
        {
          *(v224[0] + 8 * (v180 >> 6) + 64) |= 1 << v180;
          *(v185[6] + 8 * v180) = v182;
          *(v185[7] + 8 * v180) = v133;
          v186 = v185[2];
          v38 = __OFADD__(v186, 1);
          v187 = v186 + 1;
          if (v38)
          {
            goto LABEL_177;
          }

          v185[2] = v187;
        }

        v226[151] = v185;
        sub_1D7E7E30C(v225, v224);
        v188 = v226[4];
        swift_isUniquelyReferenced_nonNull_native();
        v221[0] = v188;
        v226[4] = 0x8000000000000000;
        v189 = sub_1D7E7E198(v182);
        if (__OFADD__(*(v188 + 16), (v190 & 1) == 0))
        {
          goto LABEL_173;
        }

        v191 = v189;
        v192 = v190;
        sub_1D8067980(0, &qword_1EDBB2DA0);
        if (sub_1D8192374())
        {
          v193 = sub_1D7E7E198(v182);
          if ((v192 & 1) != (v194 & 1))
          {
            goto LABEL_184;
          }

          v191 = v193;
        }

        if (v192)
        {
          v7 = v221[0];
          v195 = (*(v221[0] + 56) + 160 * v191);
          memcpy(v224, v195, 0xA0uLL);
          memcpy(v195, v225, 0xA0uLL);
          sub_1D7E7FCD4(v224);
        }

        else
        {
          v7 = v221[0];
          *(v221[0] + 8 * (v191 >> 6) + 64) |= 1 << v191;
          *(*(v7 + 48) + 8 * v191) = v182;
          memcpy((*(v7 + 56) + 160 * v191), v225, 0xA0uLL);
          v196 = *(v7 + 16);
          v38 = __OFADD__(v196, 1);
          v197 = v196 + 1;
          if (v38)
          {
            goto LABEL_178;
          }

          *(v7 + 16) = v197;
        }

        v109 &= v109 - 1;
        v226[4] = v7;
        v198 = *v226;
        *&v229.origin.x = v115;
        v229.origin.y = v140;
        *&v229.size.width = v117;
        v229.size.height = v141;
        MaxX = CGRectGetMaxX(v229);
        if (v198 <= MaxX)
        {
          v198 = MaxX;
        }

        v200 = *&v226[1];
        *&v230.origin.x = v115;
        v230.origin.y = v140;
        *&v230.size.width = v117;
        v230.size.height = v141;
        MaxY = CGRectGetMaxY(v230);
        sub_1D7E7FCD4(v225);
        if (v200 > MaxY)
        {
          v202 = v200;
        }

        else
        {
          v202 = MaxY;
        }

        *v226 = v198;
        *&v226[1] = v202;
        v7 = v207;
        v106 = v208;
        if (!v109)
        {
          goto LABEL_96;
        }
      }
    }

    v92 = *&v212[8 * v94];
    ++v93;
    if (v92)
    {
      v93 = v94;
      goto LABEL_77;
    }
  }

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
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_1D8192714();
  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_1D8064F48(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  [*a1 frame];
  MinY = CGRectGetMinY(v13);
  [v3 frame];
  v5 = CGRectGetMinY(v14);
  [v2 frame];
  if (MinY == v5)
  {
    MinX = CGRectGetMinX(*&v6);
    [v3 frame];
    return MinX <= CGRectGetMinX(v15);
  }

  else
  {
    v12 = CGRectGetMinY(*&v6);
    [v3 frame];
    return v12 < CGRectGetMinY(v16);
  }
}

uint64_t sub_1D8065008(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingIdentifier + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 1);
  v6 = *(a2 + 8);
  v7 = *(a2 + 56);
  v8 = *(a2 + 88);
  v9 = *(a1 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingIdentifier);
  if (v5 == 1)
  {
    v10 = *(a2 + 56);
  }

  else
  {
    v10 = *(a2 + 88);
  }

  if (*(a2 + 1))
  {
    v11 = v10;
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = *(a1 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingGroupIdentifier + 8);
  if (!v12)
  {
    swift_beginAccess();
    v42 = *(v3 + 24);
    sub_1D8190DB4();
    v43 = v9;
    v44 = v4;
    v45 = v11;
    v46 = v42;
LABEL_37:
    v41 = sub_1D7EDF5E0(v43, v44, v46, v45);
    swift_endAccess();

    return v41;
  }

  v13 = *(a1 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingGroupIdentifier);
  if (v5 == 1)
  {
    v14 = *(a2 + 56);
  }

  else
  {
    v14 = *(a2 + 88);
  }

  if (*(a2 + 1))
  {
    v15 = v14;
  }

  else
  {
    v15 = *(a2 + 8);
  }

  swift_beginAccess();
  v16 = *(v3 + 32);
  sub_1D8190DB4();
  sub_1D8190DB4();
  v17 = sub_1D7EDF594(v13, v12, v16, v15);
  if (!v17)
  {
    swift_endAccess();

    swift_beginAccess();
    v46 = *(v3 + 24);
    v43 = v9;
    v44 = v4;
    v45 = v11;
    goto LABEL_37;
  }

  v18 = v17;
  swift_endAccess();

  v19 = v18 + 56;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 56);
  v23 = (v20 + 63) >> 6;
  v47 = v18;
  result = sub_1D8190DB4();
  v25 = 0;
  v26 = 0.0;
  v27 = 0.0;
  while (v22)
  {
LABEL_24:
    v29 = v6;
    if (v5)
    {
      if (v5 == 1)
      {
        v29 = v7;
      }

      else
      {
        v29 = v8;
      }
    }

    v30 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v31 = (*(v47 + 48) + ((v25 << 10) | (16 * v30)));
    v33 = *v31;
    v32 = v31[1];
    swift_beginAccess();
    v34 = *(v3 + 24);
    v35 = *(v34 + 16);
    sub_1D8190DB4();
    if (v35 && (v36 = sub_1D7F050D0(v33, v32, v29), (v37 & 1) != 0))
    {
      v38 = (*(v34 + 56) + 16 * v36);
      v39 = *v38;
      v40 = v38[1];
      swift_endAccess();

      if (v40 >= v27)
      {
        v26 = v39;
        v27 = v40;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v28 >= v23)
    {

      return *&v26;
    }

    v22 = *(v19 + 8 * v28);
    ++v25;
    if (v22)
    {
      v25 = v28;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t BlueprintLayoutCollectionInvalidator.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t BlueprintLayoutCollectionInvalidator.__deallocating_deinit()
{
  BlueprintLayoutCollectionInvalidator.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D8065408()
{
  result = qword_1ECA0FFD8;
  if (!qword_1ECA0FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FFD8);
  }

  return result;
}

unint64_t sub_1D806545C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  sub_1D81927E4();
  sub_1D8190FF4();
  v10 = 0.0;
  if (a5 != 0.0)
  {
    v10 = a5;
  }

  MEMORY[0x1DA714A20](*&v10);
  sub_1D8192824();
  result = sub_1D8192044();
  *(a4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  v12 = a4[6] + 24 * result;
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a5;
  *(a4[7] + 8 * result) = a3;
  ++a4[2];
  return result;
}

unint64_t sub_1D806554C(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  sub_1D81927E4();
  sub_1D8190FF4();
  v12 = 0.0;
  if (a4 != 0.0)
  {
    v12 = a4;
  }

  MEMORY[0x1DA714A20](*&v12);
  sub_1D8192824();
  result = sub_1D8192044();
  *(a3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  v14 = a3[6] + 24 * result;
  *v14 = a1;
  *(v14 + 8) = a2;
  *(v14 + 16) = a4;
  v15 = (a3[7] + 16 * result);
  *v15 = a5;
  v15[1] = a6;
  ++a3[2];
  return result;
}

void sub_1D8065644(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_1D7F52D5C();
      v7 = sub_1D8192164();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v26 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v15 = (*(v4 + 48) + 16 * (v12 | (v10 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1D81927E4();
        sub_1D8190DB4();
        sub_1D8190FF4();
        v18 = sub_1D8192824() & ~(-1 << *(v8 + 32));
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          OUTLINED_FUNCTION_33();
          while (++v20 != v22 || (v21 & 1) == 0)
          {
            v23 = v20 == v22;
            if (v20 == v22)
            {
              v20 = 0;
            }

            v21 |= v23;
            if (*(v11 + 8 * v20) != -1)
            {
              OUTLINED_FUNCTION_32();
              goto LABEL_25;
            }
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_34();
LABEL_25:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        v24 = (*(v8 + 48) + 16 * v19);
        *v24 = v16;
        v24[1] = v17;
        OUTLINED_FUNCTION_2_99();
        if (v25)
        {
          goto LABEL_29;
        }

        v4 = v26;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1D8065824(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_1D80679D8();
      v7 = sub_1D8192164();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v12 = 48;
      while (v9)
      {
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v16 = (*(a4 + 48) + (v13 | (v10 << 6)) * v12);
        v25 = *v16;
        v26 = v16[1];
        v27 = v16[2];
        sub_1D81927E4();
        sub_1D811B984();
        v17 = sub_1D8192824() & ~(-1 << *(v8 + 32));
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          OUTLINED_FUNCTION_33();
          while (++v19 != v21 || (v20 & 1) == 0)
          {
            v22 = v19 == v21;
            if (v19 == v21)
            {
              v19 = 0;
            }

            v20 |= v22;
            if (*(v11 + 8 * v19) != -1)
            {
              OUTLINED_FUNCTION_32();
              goto LABEL_25;
            }
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_34();
LABEL_25:
        *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v23 = (*(v8 + 48) + 48 * v18);
        *v23 = v25;
        v23[1] = v26;
        v23[2] = v27;
        OUTLINED_FUNCTION_2_99();
        if (v24)
        {
          goto LABEL_29;
        }
      }

      v14 = v10;
      while (1)
      {
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        v15 = a1[v10];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v9 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1D8065A10(uint64_t *a1, uint64_t (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1D7E76C38(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1D8065AA4(v10, a2, a3);
  return sub_1D8192284();
}

uint64_t sub_1D8065AA4(uint64_t a1, uint64_t (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v7 = *(a1 + 8);
  result = sub_1D81925A4();
  if (result < v7)
  {
    v9 = result;
    a3 = sub_1D7FE74BC(v7 / 2);
    v11[0] = v10;
    v11[1] = v7 / 2;
    result = a2(v11, v12, a1, v9);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    return (a3)(0, v7, 1, a1);
  }

  return result;
}

void sub_1D8065B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 frame];
        MinY = CGRectGetMinY(v27);
        [v13 frame];
        v15 = CGRectGetMinY(v28);
        [v12 frame];
        if (MinY == v15)
        {
          MinX = CGRectGetMinX(*&v16);
          [v13 frame];
          v21 = CGRectGetMinX(v29);

          if (MinX > v21)
          {
            break;
          }
        }

        else
        {
          v22 = CGRectGetMinY(*&v16);
          [v13 frame];
          v23 = CGRectGetMinY(v30);

          if (v22 >= v23)
          {
            break;
          }
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v24 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v24;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D8065CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 frame];
        MinY = CGRectGetMinY(v19);
        [v13 frame];
        v15 = CGRectGetMinY(v20);

        if (MinY >= v15)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v16 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v16;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D8065DF4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_98;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &selRef_attemptTransitionToState_animated_;
  while (1)
  {
    v8 = v5 + 1;
    if (v5 + 1 >= v4)
    {
      v4 = v5 + 1;
    }

    else
    {
      v120 = v6;
      v9 = *a3;
      v124 = *(*a3 + 8 * v8);
      v10 = v5;
      v11 = *(v9 + 8 * v5);
      v123 = v11;
      v12 = v124;
      v13 = v11;
      v14 = sub_1D8064F48(&v124, &v123);
      if (v122)
      {

        return;
      }

      v6 = v14;

      v15 = v9 + 8 * v10;
      v115 = v10;
      v16 = 8 * v10;
      v17 = (v15 + 16);
      while (v8 + 1 < v4)
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        v20 = v18;
        [v19 v7[85]];
        MinY = CGRectGetMinY(v125);
        [v20 v7[85]];
        v22 = CGRectGetMinY(v126);
        [v19 v7[85]];
        if (MinY == v22)
        {
          MinX = CGRectGetMinX(*&v23);
          [v20 v7[85]];
          v28 = CGRectGetMinX(v127);

          if (((v6 ^ (MinX > v28)) & 1) == 0)
          {
            v4 = v8 + 1;
            break;
          }
        }

        else
        {
          v29 = CGRectGetMinY(*&v23);
          [v20 v7[85]];
          v30 = CGRectGetMinY(v128);

          if ((v6 & 1) == v29 >= v30)
          {
            v4 = v8 + 1;
            break;
          }
        }

        ++v17;
        ++v8;
      }

      v5 = v115;
      if (v6)
      {
        if (v4 < v115)
        {
          goto LABEL_133;
        }

        v6 = v120;
        if (v115 < v4)
        {
          v31 = 8 * v4 - 8;
          v32 = v4;
          v33 = v115;
          do
          {
            if (v33 != --v32)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_138;
              }

              v35 = *(v34 + v16);
              *(v34 + v16) = *(v34 + v31);
              *(v34 + v31) = v35;
            }

            ++v33;
            v31 -= 8;
            v16 += 8;
          }

          while (v33 < v32);
        }
      }

      else
      {
        v6 = v120;
      }
    }

    v36 = a3[1];
    if (v4 >= v36)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v4, v5))
    {
      goto LABEL_130;
    }

    if (v4 - v5 >= a4)
    {
LABEL_33:
      v38 = v4;
      goto LABEL_34;
    }

    if (__OFADD__(v5, a4))
    {
      goto LABEL_131;
    }

    v37 = v5 + a4 >= v36 ? a3[1] : v5 + a4;
    if (v37 < v5)
    {
      break;
    }

    if (v4 == v37)
    {
      goto LABEL_33;
    }

    v119 = v37;
    v120 = v6;
    v84 = *a3;
    v85 = *a3 + 8 * v4 - 8;
    v116 = v5;
    v86 = v5 - v4;
    do
    {
      v87 = *(v84 + 8 * v4);
      v88 = v86;
      v89 = v85;
      do
      {
        v90 = *v89;
        v91 = v87;
        v92 = v90;
        [v91 v7[85]];
        v93 = CGRectGetMinY(v129);
        [v92 v7[85]];
        v94 = CGRectGetMinY(v130);
        [v91 v7[85]];
        if (v93 == v94)
        {
          v99 = CGRectGetMinX(*&v95);
          [v92 v7[85]];
          v100 = CGRectGetMinX(v131);

          if (v99 > v100)
          {
            break;
          }
        }

        else
        {
          v101 = CGRectGetMinY(*&v95);
          [v92 v7[85]];
          v102 = CGRectGetMinY(v132);

          if (v101 >= v102)
          {
            break;
          }
        }

        if (!v84)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v103 = *v89;
        v87 = *(v89 + 8);
        *v89 = v87;
        *(v89 + 8) = v103;
        v89 -= 8;
      }

      while (!__CFADD__(v88++, 1));
      ++v4;
      v85 += 8;
      --v86;
      v38 = v119;
    }

    while (v4 != v119);
    v6 = v120;
    v5 = v116;
LABEL_34:
    if (v38 < v5)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D7EE4840();
      v6 = v105;
    }

    v39 = *(v6 + 16);
    v40 = v39 + 1;
    if (v39 >= *(v6 + 24) >> 1)
    {
      sub_1D7EE4840();
      v6 = v106;
    }

    *(v6 + 16) = v40;
    v41 = (v6 + 32);
    v42 = (v6 + 32 + 16 * v39);
    *v42 = v5;
    v42[1] = v38;
    v120 = *a1;
    if (!*a1)
    {
      goto LABEL_139;
    }

    v118 = v38;
    if (v39)
    {
LABEL_41:
      v43 = v40 - 1;
      v44 = &v41[2 * v40 - 2];
      v45 = (v6 + 16 * v40);
      if (v40 >= 4)
      {
        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_114;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_115;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_117;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_128;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }
        }

        else
        {
LABEL_54:
          if (v49)
          {
            goto LABEL_116;
          }

          v61 = *v45;
          v60 = v45[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_119;
          }

          v65 = v44[1];
          v66 = v65 - *v44;
          if (__OFSUB__(v65, *v44))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v63, v66))
          {
            goto LABEL_124;
          }

          if (v63 + v66 < v48)
          {
            goto LABEL_69;
          }

          if (v48 < v66)
          {
            v43 = v40 - 2;
          }
        }
      }

      else
      {
        if (v40 == 3)
        {
          v46 = *(v6 + 32);
          v47 = *(v6 + 40);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
          goto LABEL_54;
        }

        if (v40 < 2)
        {
          goto LABEL_118;
        }

        v68 = *v45;
        v67 = v45[1];
        v56 = __OFSUB__(v67, v68);
        v63 = v67 - v68;
        v64 = v56;
LABEL_69:
        if (v64)
        {
          goto LABEL_121;
        }

        v70 = *v44;
        v69 = v44[1];
        v56 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v56)
        {
          goto LABEL_123;
        }

        if (v71 < v63)
        {
          goto LABEL_83;
        }
      }

      if (v43 - 1 >= v40)
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
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
        break;
      }

      if (!*a3)
      {
        goto LABEL_136;
      }

      v75 = &v41[2 * v43 - 2];
      v76 = *v75;
      v77 = v43;
      v78 = &v41[2 * v43];
      v79 = v78[1];
      sub_1D8066BB0((*a3 + 8 * *v75), (*a3 + 8 * *v78), (*a3 + 8 * v79), v120);
      if (v122)
      {
        goto LABEL_96;
      }

      if (v79 < v76)
      {
        goto LABEL_111;
      }

      v80 = v7;
      v7 = v41;
      v81 = v6;
      v6 = *(v6 + 16);
      if (v77 > v6)
      {
        goto LABEL_112;
      }

      *v75 = v76;
      v75[1] = v79;
      if (v77 >= v6)
      {
        goto LABEL_113;
      }

      v82 = v77;
      v40 = v6 - 1;
      sub_1D8120818(v78 + 16, v6 - 1 - v82, v78);
      *(v81 + 16) = v6 - 1;
      v83 = v6 > 2;
      v6 = v81;
      v41 = v7;
      v7 = v80;
      if (!v83)
      {
        goto LABEL_83;
      }

      goto LABEL_41;
    }

LABEL_83:
    v4 = a3[1];
    v5 = v118;
    if (v118 >= v4)
    {
LABEL_98:
      v120 = *a1;
      if (*a1)
      {
        v7 = v122;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_100;
        }

        goto LABEL_134;
      }

LABEL_140:
      __break(1u);
      return;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  v6 = sub_1D8120804(v6);
LABEL_100:
  v107 = (v6 + 16);
  v108 = *(v6 + 16);
  while (v108 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_137;
    }

    v109 = v6;
    v6 += 16 * v108;
    v110 = *v6;
    v111 = &v107[2 * v108];
    v112 = *(v111 + 1);
    sub_1D8066BB0((*a3 + 8 * *v6), (*a3 + 8 * *v111), (*a3 + 8 * v112), v120);
    if (v7)
    {
      break;
    }

    if (v112 < v110)
    {
      goto LABEL_125;
    }

    if (v108 - 2 >= *v107)
    {
      goto LABEL_126;
    }

    *v6 = v110;
    *(v6 + 8) = v112;
    v113 = *v107 - v108;
    if (*v107 < v108)
    {
      goto LABEL_127;
    }

    v108 = *v107 - 1;
    sub_1D8120818(v111 + 16, v113, v111);
    *v107 = v108;
    v6 = v109;
  }

LABEL_96:
}

void sub_1D8066538(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v104 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v5 = v106;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v90 = v6 + 16;
      v91 = *(v6 + 2);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v92 = v6;
        v6 += 16 * v91;
        v93 = *v6;
        v94 = &v90[2 * v91];
        v95 = *(v94 + 1);
        sub_1D8066EA0((*a3 + 8 * *v6), (*a3 + 8 * *v94), (*a3 + 8 * v95), v104);
        if (v5)
        {
          break;
        }

        if (v95 < v93)
        {
          goto LABEL_119;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_120;
        }

        *v6 = v93;
        *(v6 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_121;
        }

        v91 = *v90 - 1;
        sub_1D8120818(v94 + 16, v96, v94);
        *v90 = v91;
        v6 = v92;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v6 = sub_1D8120804(v6);
    goto LABEL_95;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &selRef_attemptTransitionToState_animated_;
  while (1)
  {
    v8 = v5++;
    if (v5 < v4)
    {
      v98 = v6;
      v9 = v8;
      v10 = (*a3 + 8 * v8);
      v11 = 8 * v9;
      v13 = *v10;
      v12 = v10 + 2;
      v6 = *(*a3 + 8 * v5);
      v14 = v13;
      [v6 v7[85]];
      MinY = CGRectGetMinY(v107);
      [v14 v7[85]];
      v16 = CGRectGetMinY(v108);

      v101 = v9;
      v17 = v9 + 2;
      while (1)
      {
        v18 = v17;
        if (++v5 >= v4)
        {
          break;
        }

        v19 = *(v12 - 1);
        v6 = *v12;
        v20 = v19;
        [v6 v7[85]];
        v21 = CGRectGetMinY(v109);
        [v20 v7[85]];
        v22 = CGRectGetMinY(v110);

        ++v12;
        v17 = v18 + 1;
        if (MinY < v16 == v21 >= v22)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (MinY >= v16)
      {
        v6 = v98;
        v8 = v101;
      }

      else
      {
        v8 = v101;
        if (v5 < v101)
        {
          goto LABEL_125;
        }

        if (v101 >= v5)
        {
          v6 = v98;
        }

        else
        {
          if (v4 >= v18)
          {
            v23 = v18;
          }

          else
          {
            v23 = v4;
          }

          v24 = 8 * v23 - 8;
          v25 = v5;
          v26 = v101;
          v6 = v98;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v28 = *(v27 + v11);
              *(v27 + v11) = *(v27 + v24);
              *(v27 + v24) = v28;
            }

            ++v26;
            v24 -= 8;
            v11 += 8;
          }

          while (v26 < v25);
        }
      }
    }

    v29 = a3[1];
    if (v5 < v29)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_124;
      }

      if (v5 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v8)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D7EE4840();
      v6 = v88;
    }

    v44 = *(v6 + 2);
    v45 = v44 + 1;
    if (v44 >= *(v6 + 3) >> 1)
    {
      sub_1D7EE4840();
      v6 = v89;
    }

    *(v6 + 2) = v45;
    v46 = v6 + 32;
    v47 = &v6[16 * v44 + 32];
    *v47 = v8;
    *(v47 + 1) = v5;
    v104 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v44)
    {
      v103 = v5;
      while (1)
      {
        v48 = v45 - 1;
        v49 = &v46[16 * v45 - 16];
        v50 = &v6[16 * v45];
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v51 = *(v6 + 4);
          v52 = *(v6 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_60:
          if (v54)
          {
            goto LABEL_110;
          }

          v66 = *v50;
          v65 = *(v50 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_113;
          }

          v70 = *(v49 + 1);
          v71 = v70 - *v49;
          if (__OFSUB__(v70, *v49))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v68, v71))
          {
            goto LABEL_118;
          }

          if (v68 + v71 >= v53)
          {
            if (v53 < v71)
            {
              v48 = v45 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v45 < 2)
        {
          goto LABEL_112;
        }

        v73 = *v50;
        v72 = *(v50 + 1);
        v61 = __OFSUB__(v72, v73);
        v68 = v72 - v73;
        v69 = v61;
LABEL_75:
        if (v69)
        {
          goto LABEL_115;
        }

        v75 = *v49;
        v74 = *(v49 + 1);
        v61 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v61)
        {
          goto LABEL_117;
        }

        if (v76 < v68)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v80 = &v46[16 * v48 - 16];
        v81 = *v80;
        v82 = v48;
        v83 = &v46[16 * v48];
        v84 = *(v83 + 1);
        sub_1D8066EA0((*a3 + 8 * *v80), (*a3 + 8 * *v83), (*a3 + 8 * v84), v104);
        if (v106)
        {
          goto LABEL_103;
        }

        if (v84 < v81)
        {
          goto LABEL_105;
        }

        v5 = v46;
        v85 = v7;
        v86 = v6;
        v6 = *(v6 + 2);
        if (v82 > v6)
        {
          goto LABEL_106;
        }

        *v80 = v81;
        *(v80 + 1) = v84;
        if (v82 >= v6)
        {
          goto LABEL_107;
        }

        v45 = (v6 - 1);
        sub_1D8120818(v83 + 16, &v6[-v82 - 1], v83);
        *(v86 + 2) = v6 - 1;
        v87 = v6 > 2;
        v6 = v86;
        v7 = v85;
        v46 = v5;
        v5 = v103;
        if (!v87)
        {
          goto LABEL_89;
        }
      }

      v55 = &v46[16 * v45];
      v56 = *(v55 - 8);
      v57 = *(v55 - 7);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_108;
      }

      v60 = *(v55 - 6);
      v59 = *(v55 - 5);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_109;
      }

      v62 = *(v50 + 1);
      v63 = v62 - *v50;
      if (__OFSUB__(v62, *v50))
      {
        goto LABEL_111;
      }

      v61 = __OFADD__(v53, v63);
      v64 = v53 + v63;
      if (v61)
      {
        goto LABEL_114;
      }

      if (v64 >= v58)
      {
        v78 = *v49;
        v77 = *(v49 + 1);
        v61 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v61)
        {
          goto LABEL_122;
        }

        if (v53 < v79)
        {
          v48 = v45 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_93;
    }
  }

  v30 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_126;
  }

  if (v30 >= v29)
  {
    v30 = a3[1];
  }

  if (v30 < v8)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v5 == v30)
  {
    goto LABEL_39;
  }

  v99 = v6;
  v31 = *a3;
  v32 = *a3 + 8 * v5 - 8;
  v102 = v8;
  v104 = v30;
  v33 = v8 - v5;
LABEL_32:
  v34 = *(v31 + 8 * v5);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    [v38 v7[85]];
    v40 = CGRectGetMinY(v111);
    [v39 v7[85]];
    v41 = CGRectGetMinY(v112);

    if (v40 >= v41)
    {
LABEL_37:
      ++v5;
      v32 += 8;
      --v33;
      if (v5 == v104)
      {
        v5 = v104;
        v6 = v99;
        v8 = v102;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_1D8066BB0(void **a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1D80E75B8(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v28 = v7;
        goto LABEL_33;
      }

      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      [v13 frame];
      MinY = CGRectGetMinY(v47);
      [v14 frame];
      v16 = CGRectGetMinY(v48);
      [v13 frame];
      if (MinY == v16)
      {
        MinX = CGRectGetMinX(*&v17);
        [v14 frame];
        v22 = CGRectGetMinX(v49);

        if (MinX <= v22)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v25 = CGRectGetMinY(*&v17);
        [v14 frame];
        v26 = CGRectGetMinY(v50);

        if (v25 < v26)
        {
LABEL_13:
          v23 = v6;
          v24 = v7 == v6++;
          if (v24)
          {
            goto LABEL_15;
          }

LABEL_14:
          *v7 = *v23;
          goto LABEL_15;
        }
      }

      v23 = v4;
      v24 = v7 == v4++;
      if (!v24)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v7;
    }
  }

  sub_1D80E75B8(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v27 = &selRef_attemptTransitionToState_animated_;
  v46 = v7;
LABEL_17:
  v28 = v6--;
  --v5;
  while (v10 > v4 && v28 > v7)
  {
    v30 = *v6;
    v31 = *(v10 - 1);
    v32 = v30;
    [v31 v27[85]];
    v33 = CGRectGetMinY(v51);
    [v32 v27[85]];
    v34 = CGRectGetMinY(v52);
    [v31 v27[85]];
    if (v33 == v34)
    {
      v39 = CGRectGetMinX(*&v35);
      [v32 v27[85]];
      v40 = CGRectGetMinX(v53);

      if (v39 <= v40)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v41 = CGRectGetMinY(*&v35);
      [v32 v27[85]];
      v42 = CGRectGetMinY(v54);

      if (v41 < v42)
      {
LABEL_30:
        v27 = &selRef_attemptTransitionToState_animated_;
        v7 = v46;
        if (v5 + 1 != v28)
        {
          *v5 = *v6;
        }

        goto LABEL_17;
      }
    }

    if (v10 != v5 + 1)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v27 = &selRef_attemptTransitionToState_animated_;
    v7 = v46;
  }

LABEL_33:
  v43 = v10 - v4;
  if (v28 != v4 || v28 >= &v4[v43])
  {
    memmove(v28, v4, 8 * v43);
  }

  return 1;
}

uint64_t sub_1D8066EA0(void **a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1D80E75B8(a1, a2 - a1, a4);
    v11 = &v4[v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= a3)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      [v14 frame];
      MinY = CGRectGetMinY(v34);
      [v15 frame];
      v17 = CGRectGetMinY(v35);

      if (MinY >= v17)
      {
        break;
      }

      v18 = v6;
      v19 = v7 == v6++;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v18 = v4;
    v19 = v7 == v4++;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v18;
    goto LABEL_13;
  }

  sub_1D80E75B8(a2, a3 - a2, a4);
  v11 = &v4[v9];
LABEL_15:
  v20 = v6 - 1;
  --v5;
  while (v11 > v4 && v6 > v7)
  {
    v22 = v7;
    v23 = v20;
    v24 = *v20;
    v25 = *(v11 - 1);
    v26 = v24;
    [v25 frame];
    v27 = CGRectGetMinY(v36);
    [v26 frame];
    v28 = CGRectGetMinY(v37);

    v29 = v5 + 1;
    if (v27 < v28)
    {
      v19 = v29 == v6;
      v30 = v23;
      v6 = v23;
      v7 = v22;
      if (!v19)
      {
        *v5 = *v30;
        v6 = v30;
      }

      goto LABEL_15;
    }

    if (v11 != v29)
    {
      *v5 = *(v11 - 1);
    }

    --v5;
    --v11;
    v20 = v23;
    v7 = v22;
  }

LABEL_28:
  v31 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v31])
  {
    memmove(v6, v4, 8 * v31);
  }

  return 1;
}

void *sub_1D80670D0(uint64_t a1, uint64_t (*a2)(void, uint64_t, double, double, double), void *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1D80673DC(v12, v8, v6, a2);
      MEMORY[0x1DA715D00](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1D7E2CB98(0, v8, v9);
  v10 = sub_1D8067254(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_1D8067254(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, double, double, double))
{
  v26 = 0;
  v25 = result;
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
    v15 = (*(a3 + 48) + 24 * v14);
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = v15[2];
    v19 = (*(a3 + 56) + 16 * v14);
    v20 = *v19;
    v21 = v19[1];
    sub_1D8190DB4();
    v22 = a4(*&v16, v17, v18, v20, v21);

    if (v22)
    {
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        return sub_1D818BAA4(v25, a2, v26, a3);
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
      return sub_1D818BAA4(v25, a2, v26, a3);
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
  return result;
}

void *sub_1D80673DC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, double, double, double))
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

    v8 = sub_1D8067254(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1D806746C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1D80674FC(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1D80674FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_1D81927E4();
      sub_1D8190DB4();
      sub_1D8190FF4();
      v40 = sub_1D8192824();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_1D8192634();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(a1 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        sub_1D8065644(a1, a2, v53, v5);
        return;
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_1D81927E4();
      sub_1D8190DB4();
      sub_1D8190FF4();
      v18 = sub_1D8192824();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_1D8192634();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      a1[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_1D80678A0(void *a1)
{
  v2 = [a1 representedElementKind];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D8190F14();

  return v3;
}

void sub_1D8067918(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D7E10384(255, a3, a4);
    v5 = sub_1D8192394();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D8067980(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D8192394();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D80679D8()
{
  if (!qword_1ECA0E020)
  {
    sub_1D7F5DEA0();
    v0 = sub_1D8192174();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0E020);
    }
  }
}

uint64_t ShortcutItemHandlerPattern.predicate.getter()
{
  v1 = *v0;
  sub_1D7E19F24(*v0);
  return v1;
}

uint64_t ShortcutItemHandlerPattern.init(predicate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_So25UIApplicationShortcutItemCSbIeggd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

BOOL static FlowOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      return v3 == 2 && *&v2 == 0;
    }

    if (v3 != 1)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == v2;
}

double sub_1D8067C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 40);
  result = 0.0;
  v4 = (a1 + 40);
  do
  {
    v5 = *v4;
    v4 += 2;
    if (!v5)
    {
      result = result + *(v2 - 1);
    }

    v2 = v4;
    --v1;
  }

  while (v1);
  return result;
}

double sub_1D8067C60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 40);
  result = 0.0;
  v4 = (a1 + 40);
  do
  {
    v5 = *v4;
    v4 += 2;
    if (v5 == 1)
    {
      result = result + *(v2 - 1);
    }

    v2 = v4;
    --v1;
  }

  while (v1);
  return result;
}

double sub_1D8067CC4(double *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_155();
  if (*(v2 + 56))
  {
    v4 = a1[2];
    v13.origin.x = OUTLINED_FUNCTION_80();
    Width = CGRectGetWidth(v13);
    v6 = (v2 + 120);
    if (*(v2 + 65) != 1)
    {
      v6 = (v2 + 152);
    }

    if (*(v2 + 65))
    {
      v7 = v6;
    }

    else
    {
      v7 = (v2 + 72);
    }

    if (*v7 < v4 + Width)
    {
      v4 = 0.0;
      if (!sub_1D802A448())
      {
        sub_1D8067C24(*(v2 + 632));
      }
    }
  }

  else
  {
    v8 = a1[3];
    v14.origin.x = OUTLINED_FUNCTION_80();
    if (*(v2 + 160) >= v8 + CGRectGetHeight(v14))
    {
      v4 = a1[2];
    }

    else
    {
      v9 = a1[9];
      v10 = sub_1D802A448();
      v11 = 0.0;
      if (!v10)
      {
        v11 = sub_1D8067C60(*(v2 + 632));
      }

      v4 = a1[2] + v9 + v11;
    }
  }

  v15.origin.x = OUTLINED_FUNCTION_80();
  CGRectGetWidth(v15);
  v16.origin.x = OUTLINED_FUNCTION_80();
  CGRectGetHeight(v16);
  return v4;
}

void sub_1D8067DF4()
{
  v1 = *(v0 + 632);
  v2 = (v1 + 40);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v2 += 16;
    if (v4 >= 2)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_2_100();
  CGRectGetWidth(v5);
  OUTLINED_FUNCTION_2_100();
  CGRectGetHeight(v6);
LABEL_6:
  OUTLINED_FUNCTION_2_100();
}

uint64_t sub_1D8067EA0()
{
  v3 = v0;
  OUTLINED_FUNCTION_155();
  v5 = v4;
  if (*(v3 + 56))
  {
    v58.origin.x = OUTLINED_FUNCTION_80();
    MinY = CGRectGetMinY(v58);
    v7 = *(v5 + 24);
    if (v7 >= MinY)
    {
      OUTLINED_FUNCTION_80();
      sub_1D802A4B4();
      v24 = v44;
    }

    else
    {
      v8 = *(v5 + 16);
      type metadata accessor for BlueprintLayoutCollectionSectionCursor();
      swift_initStackObject();
      OUTLINED_FUNCTION_1_5();
      sub_1D7E79998(v8, v7, v17, v18, v19, v20, v21, v22, v9, v10, v11, v12, v13, v14, v15, v16, v56, v57);
      OUTLINED_FUNCTION_80();
      sub_1D802A4B4();

      sub_1D802A670(v2, v1);
      v24 = v23;
    }

    v60.origin.x = OUTLINED_FUNCTION_80();
    MaxX = CGRectGetMaxX(v60);
    v46 = sub_1D8067C60(*(v3 + 632));

    v47 = MaxX + v46;
    v48 = *(v24 + 24);
  }

  else
  {
    v59.origin.x = OUTLINED_FUNCTION_80();
    MinX = CGRectGetMinX(v59);
    v26 = *(v5 + 16);
    if (v26 >= MinX)
    {
      OUTLINED_FUNCTION_80();
      sub_1D802A4B4();
      v43 = v49;
    }

    else
    {
      v27 = *(v5 + 24);
      type metadata accessor for BlueprintLayoutCollectionSectionCursor();
      swift_initStackObject();
      OUTLINED_FUNCTION_1_5();
      sub_1D7E79998(v26, v27, v36, v37, v38, v39, v40, v41, v28, v29, v30, v31, v32, v33, v34, v35, v56, v57);
      OUTLINED_FUNCTION_80();
      sub_1D802A4B4();

      sub_1D802A670(v2, v1);
      v43 = v42;
    }

    v50 = *(v43 + 16);

    v61.origin.x = OUTLINED_FUNCTION_80();
    MaxY = CGRectGetMaxY(v61);
    v52 = sub_1D8067C24(*(v3 + 632));

    v48 = MaxY + v52;
    v47 = v50;
  }

  sub_1D802A670(v47, v48);
  v54 = v53;

  return v54;
}

double sub_1D8068074(double a1, double a2, double a3, double a4)
{
  if (*(v4 + 56))
  {
    MaxY = CGRectGetMaxY(*&a1);
    MaxX = 0.0;
  }

  else
  {
    MaxX = CGRectGetMaxX(*&a1);
    MaxY = 0.0;
  }

  *&result = sub_1D802A670(MaxX, MaxY).n128_u64[0];
  return result;
}

void *static StateCommandOptions.default<A>()()
{
  OUTLINED_FUNCTION_1_6();
  result = swift_allocObject();
  result[2] = v3;
  result[3] = v2;
  result[4] = v1;
  result[5] = v0;
  *v4 = sub_1D7ED0714;
  *(v4 + 8) = result;
  *(v4 + 16) = 0;
  return result;
}

uint64_t StateCommandOptions.init(default:block:)()
{
  OUTLINED_FUNCTION_1_6();
  v5(&v7);
  result = (*(*(v0 - 8) + 8))(v3, v0);
  *(v4 + 16) = v7;
  *v4 = v2;
  *(v4 + 8) = v1;
  return result;
}

uint64_t sub_1D8068248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v19 = a3;
  v5 = *(a2 + 16);
  v6 = sub_1D8191E84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = *(v5 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  v16 = *(v3 + 16);
  (*(v7 + 16))(v9, a1, v6, v12);
  if (__swift_getEnumTagSinglePayload(v9, 1, v5) == 1)
  {
    result = (*(v7 + 8))(v9, v6);
    *v19 = v16;
  }

  else
  {
    (*(v10 + 32))(v14, v9, v5);
    v15(v14);
    return (*(v10 + 8))(v14, v5);
  }

  return result;
}

uint64_t StateCommandOptions<>.init(off:on:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  *(a3 + 16) = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 17) = v4;
  result = swift_allocObject();
  *(result + 16) = sub_1D80684BC;
  *(result + 24) = v6;
  *a3 = sub_1D80684D4;
  *(a3 + 8) = result;
  return result;
}

uint64_t sub_1D80684BC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = 16;
  if ((result & 1) == 0)
  {
    v3 = 17;
  }

  *a2 = *(v2 + v3);
  return result;
}

uint64_t StateCommandOptions<>.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 16) = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = sub_1D8068588;
  *(result + 24) = v4;
  *a2 = sub_1D8068668;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1D8068594()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D80685D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D8068610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ShineImageRequest.identifier.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

id ShineImageRequest.staticModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 120);
  *(a1 + 24) = v5;
  return sub_1D80686F4(v2, v3, v4, v5);
}

id sub_1D80686F4(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    v5 = result;

    return sub_1D8190DB4();
  }

  else if (a4 == 1)
  {

    return result;
  }

  return result;
}

uint64_t ShineImageRequest.__allocating_init(shineOptions:shineColor:bounds:offset:whenStatic:)(uint64_t a1, void *a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = swift_allocObject();
  ShineImageRequest.init(shineOptions:shineColor:bounds:offset:whenStatic:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v18;
}

uint64_t ShineImageRequest.init(shineOptions:shineColor:bounds:offset:whenStatic:)(uint64_t a1, void *a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = *a3;
  v19 = a3[1];
  v20 = a3[2];
  v21 = *(a3 + 24);
  if (qword_1EDBB39D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v9 + 121) = byte_1EDBB39E0;
  *(v9 + 32) = a1;

  *(v9 + 40) = [a2 colorWithAlphaComponent_];
  *(v9 + 48) = a4;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  *(v9 + 96) = v18;
  *(v9 + 104) = v19;
  *(v9 + 112) = v20;
  *(v9 + 120) = v21;
  v22 = OUTLINED_FUNCTION_2_101();
  sub_1D80686F4(v22, v23, v24, v25);
  sub_1D81921A4();
  v27 = *(a1 + 16);
  v26 = *(a1 + 24);
  sub_1D8190DB4();

  v39 = v27;
  v40 = v26;
  OUTLINED_FUNCTION_0_154();
  v41.origin.x = OUTLINED_FUNCTION_80();
  CGRectGetWidth(v41);
  v28 = sub_1D81915A4();
  MEMORY[0x1DA713260](v28);

  OUTLINED_FUNCTION_0_154();
  v42.origin.x = OUTLINED_FUNCTION_80();
  CGRectGetHeight(v42);
  v29 = sub_1D81915A4();
  MEMORY[0x1DA713260](v29);

  OUTLINED_FUNCTION_0_154();
  v30 = UIColor.identifier.getter();
  MEMORY[0x1DA713260](v30);

  OUTLINED_FUNCTION_0_154();
  v31 = ShineImageRequest.StaticModel.identifier.getter();
  v33 = v32;
  v34 = OUTLINED_FUNCTION_2_101();
  sub_1D8068BB0(v34, v35, v36, v37);
  MEMORY[0x1DA713260](v31, v33);

  *(v9 + 16) = v39;
  *(v9 + 24) = v40;
  return v9;
}

uint64_t ShineImageRequest.StaticModel.identifier.getter()
{
  result = 1701736302;
  switch(*(v0 + 24))
  {
    case 1:
      v7 = 0x3A3A74786574;
      v3 = [*v0 string];
      v4 = sub_1D8190F14();
      v6 = v5;

      MEMORY[0x1DA713260](v4, v6);

      return v7;
    case 2:
      v7 = 0x3A3A6567616D69;
      MEMORY[0x1DA713260](*(v0 + 8), *(v0 + 16));
      return v7;
    case 3:
      return result;
    default:
      v7 = 0;
      sub_1D81921A4();
      MEMORY[0x1DA713260](0x726F43646E756F72, 0xEE003A3A7372656ELL);
      v2 = sub_1D81915A4();
      MEMORY[0x1DA713260](v2);

      MEMORY[0x1DA713260](14906, 0xE200000000000000);
      type metadata accessor for UIRectCorner();
      sub_1D8192334();
      return v7;
  }
}

void sub_1D8068BB0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  else if (a4 == 1)
  {
  }
}

uint64_t ShineImageRequest.StaticModel.Preparation.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t ShineImageRequest.deinit()
{

  sub_1D8068BB0(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  return v0;
}

uint64_t ShineImageRequest.__deallocating_deinit()
{
  ShineImageRequest.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D8068D24()
{
  result = qword_1ECA0FFE0;
  if (!qword_1ECA0FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FFE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI17ShineImageRequestC11StaticModelO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1D8068E08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8068E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8068E90(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ShineImageRequest.StaticModel.Preparation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ToolbarTemplateItem.init(item:identifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  return result;
}

double ToolbarTemplateItem.init<A>(item:toolTip:visibility:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v12, v9);
  ToolbarTemplateItem.init<A>(item:toolTip:label:visibility:)(v11, a2, &v15);
  (*(v7 + 8))(a1, a2);
  v13 = v16;
  result = *&v15;
  *a3 = v15;
  *(a3 + 16) = v13;
  return result;
}

uint64_t ToolbarTemplateItem.init<A>(item:toolTip:label:visibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{

  v6 = sub_1D818EF94();
  v8 = v7;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = 1;
  return result;
}

void ToolbarTemplateItem.init<A>(item:style:toolTip:visibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  OUTLINED_FUNCTION_2();
  v16 = v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v21 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a1, a6, v18);
  (*(v11 + 16))(v14, a2, AssociatedTypeWitness);
  ToolbarTemplateItem.init<A>(item:style:toolTip:label:visibility:)(v20, v14, a6, &v22);
  (*(v11 + 8))(a2, AssociatedTypeWitness);
  (*(v16 + 8))(a1, a6);
  OUTLINED_FUNCTION_4_63(v23, v22);
}

uint64_t ToolbarTemplateItem.init<A>(item:style:toolTip:label:visibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{

  v8 = sub_1D818EF94();
  v10 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  result = (*(*(a3 - 8) + 8))(a1, a3);
  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = 1;
  return result;
}

uint64_t ToolbarTemplateItem.init<A>(command:style:toolTip:label:visibility:)()
{
  OUTLINED_FUNCTION_2_102();

  sub_1D806953C(*v0, *(v0 + 8), *(v0 + 16));
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D8190DB4();

  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = 0;
  return result;
}

void sub_1D806953C(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

void ToolbarTemplateItem.init<A, B>(command:style:toolTip:visibility:)()
{
  OUTLINED_FUNCTION_0_155();
  ToolbarTemplateItem.init<A, B>(command:style:toolTip:label:visibility:)();
  OUTLINED_FUNCTION_4_63(v1, v0);
}

uint64_t ToolbarTemplateItem.init<A, B>(command:style:toolTip:label:visibility:)()
{
  OUTLINED_FUNCTION_2_102();
  sub_1D80696FC(*v3);

  sub_1D806953C(*v0, *(v0 + 8), *(v0 + 16));
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1D8190DB4();

  *v2 = v5;
  *(v2 + 8) = v4;
  *(v2 + 16) = 0;
  return result;
}

void ToolbarTemplateItem.init<A, B>(command:image:toolTip:visibility:)()
{
  OUTLINED_FUNCTION_0_155();
  ToolbarTemplateItem.init<A, B>(command:image:toolTip:label:visibility:)();
  OUTLINED_FUNCTION_4_63(v1, v0);
}

uint64_t ToolbarTemplateItem.init<A, B>(command:image:toolTip:label:visibility:)()
{
  OUTLINED_FUNCTION_2_102();
  sub_1D80696FC(*v3);

  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1D8190DB4();

  *v2 = v5;
  *(v2 + 8) = v4;
  *(v2 + 16) = 0;
  return result;
}

uint64_t sub_1D80696FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t ToolbarTemplateItem.identifier.getter()
{
  v1 = *v0;
  sub_1D8069780();
  return v1;
}

uint64_t sub_1D8069798(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D80697E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t ShineBlend.color.getter()
{
  memcpy(__dst, v0, 0x49uLL);
  v1 = OUTLINED_FUNCTION_109();
  memcpy(v1, v2, 0x49uLL);
  return sub_1D80698B4(__dst, &v4);
}

uint64_t ShineBlend.blendModeBlock.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  sub_1D7E19F24(v0);
  return OUTLINED_FUNCTION_109();
}

void *ShineBlend.init(color:blendMode:alphaBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_112(a1);
  if ((v5 & 0x100000000) != 0)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    v9 = sub_1D8069AA0;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_0_32();
    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
  }

  OUTLINED_FUNCTION_0_32();
  v11 = swift_allocObject();
  result = OUTLINED_FUNCTION_2_103(v11, v12, v13, v14, v15, v16, v17, v18, v20);
  v4[10] = v9;
  v4[11] = v8;
  v4[12] = sub_1D8069A68;
  v4[13] = a4;
  return result;
}

void *ShineBlend.init(color:blendModeBlock:alphaBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_112(a1);
  if (a4)
  {
    OUTLINED_FUNCTION_0_32();
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
  }

  OUTLINED_FUNCTION_0_32();
  v11 = swift_allocObject();
  result = OUTLINED_FUNCTION_2_103(v11, v12, v13, v14, v15, v16, v17, v18, v20);
  v5[10] = v6;
  v5[11] = a3;
  v5[12] = sub_1D8069CAC;
  v5[13] = a5;
  return result;
}

double sub_1D8069B6C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_So7UIColorCSo11CGBlendModeVIeggd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8069BD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D8069C20(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 112) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1D8069CB0()
{
  OUTLINED_FUNCTION_1_34(OBJC_IVAR____TtC5TeaUI16TouchInsetsLabel_touchInsets);
  swift_beginAccess();
  return *v0;
}

uint64_t sub_1D8069CF4()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_1_34(OBJC_IVAR____TtC5TeaUI16TouchInsetsLabel_touchInsets);
  result = swift_beginAccess();
  *v0 = v4;
  v0[1] = v3;
  v0[2] = v2;
  v0[3] = v1;
  return result;
}

void sub_1D8069DAC(uint64_t a1@<X8>)
{
  *a1 = sub_1D8069CB0();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

BOOL sub_1D8069E08(CGFloat a1, CGFloat a2)
{
  [v3 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_1_34(OBJC_IVAR____TtC5TeaUI16TouchInsetsLabel_touchInsets);
  swift_beginAccess();
  v16.origin.x = UIEdgeInsetsInsetRect(v7, v9, v11, v13, *v2, v2[1]);
  v15.x = a1;
  v15.y = a2;
  return CGRectContainsPoint(v16, v15);
}

id TouchInsetsLabel.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id TouchInsetsLabel.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI16TouchInsetsLabel_touchInsets);
  __asm { FMOV            V0.2D, #-20.0 }

  *v1 = _Q0;
  v1[1] = _Q0;
  v11 = type metadata accessor for TouchInsetsLabel();
  v7 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v8, v9, v7, v0, v11);
}

id TouchInsetsLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TouchInsetsLabel.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5TeaUI16TouchInsetsLabel_touchInsets];
  __asm { FMOV            V0.2D, #-20.0 }

  *v3 = _Q0;
  *(v3 + 1) = _Q0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for TouchInsetsLabel();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id TouchInsetsLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TouchInsetsLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *BlockBarButtonItem.__allocating_init(barButtonSystemItem:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithBarButtonSystemItem:a1 target:0 action:sel_barButtonItemPressedWithSender_];
  [v6 setTarget_];
  v7 = &v6[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_actionHandler];
  v8 = *&v6[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_actionHandler];
  *v7 = a2;
  *(v7 + 1) = a3;
  sub_1D7E0E10C(v8);

  return v6;
}

char *static BlockBarButtonItem.doneBarButtonItem(actionHandler:)()
{
  sub_1D7E0A1A8(0, &qword_1EDBB2F60);
  result = sub_1D7E47238();
  if (result)
  {
    v1 = result;
    type metadata accessor for BlockBarButtonItem();

    v2 = BlockBarButtonItem.__allocating_init(image:style:actionHandler:)(v1, 0);
    v3 = sub_1D8190EE4();
    [v2 setIdentifier_];

    v4 = &v2[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_barButtonItemIdentifier];
    swift_beginAccess();
    *v4 = 0x6F642E6975616574;
    *(v4 + 1) = 0xEA0000000000656ELL;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    OUTLINED_FUNCTION_7();
    v7 = sub_1D818E514();
    v9 = v8;

    sub_1D806B194(v7, v9, v2);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall BlockBarButtonItem.recolor(with:)(Swift::OpaquePointer with)
{
  v2 = OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_shouldRecolor;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = [v1 customView];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for ActionButton();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        v7 = [v5 imageForState_];
        if (v7)
        {
          v8 = v7;
          sub_1D7E0A1A8(0, &qword_1EDBB3050);
          sub_1D8190DB4();
          v9 = sub_1D806A548();
          v10 = [v8 imageByApplyingSymbolConfiguration_];
        }

        else
        {
          v10 = 0;
        }

        [v6 setImage:v10 forState:0];

        v4 = v10;
      }
    }
  }
}

id sub_1D806A548()
{
  sub_1D7E0A1A8(0, &qword_1EDBB2F68);
  v0 = sub_1D8191304();

  v1 = [swift_getObjCClassFromMetadata() configurationWithPaletteColors_];

  return v1;
}

uint64_t sub_1D806A604(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D8190DB4();
  return sub_1D806A698(v1, v2);
}

uint64_t sub_1D806A644()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_barButtonItemIdentifier);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v2 = *v1;
  sub_1D8190DB4();
  return v2;
}

uint64_t sub_1D806A698(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_barButtonItemIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D806A748()
{
  v1 = OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_shouldRecolor;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D806A788(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_shouldRecolor;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *BlockBarButtonItem.__allocating_init(title:style:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1D8190EE4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v3) initWithTitle:v5 style:a3 target:0 action:sel_barButtonItemPressedWithSender_];

  v7 = v6;
  [v7 setTarget_];
  OUTLINED_FUNCTION_4_64(&v7[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_actionHandler]);

  return v7;
}

char *BlockBarButtonItem.__allocating_init(image:style:actionHandler:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithImage:a1 style:a2 target:0 action:sel_barButtonItemPressedWithSender_];
  [v4 setTarget_];

  OUTLINED_FUNCTION_4_64(&v4[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_actionHandler]);
  return v4;
}

char *BlockBarButtonItem.__allocating_init(image:landscapeImagePhone:style:actionHandler:)(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithImage:a1 landscapeImagePhone:a2 style:a3 target:0 action:sel_barButtonItemPressedWithSender_];
  [v6 setTarget_];

  OUTLINED_FUNCTION_4_64(&v6[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_actionHandler]);
  return v6;
}

char *BlockBarButtonItem.__allocating_init(customView:actionHandler:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = sub_1D806AB28(a1);
  [v4 addTarget:v3 action:sel_barButtonItemPressedWithSender_ forControlEvents:64];
  v5 = *&v3[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_customContentView];
  *&v3[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_customContentView] = a1;
  v6 = v3;
  v7 = a1;

  [v6 setCustomView_];
  OUTLINED_FUNCTION_4_64(&v6[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_actionHandler]);

  return v6;
}

id sub_1D806AB28(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
  }

  else
  {
    [a1 frame];
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC738]) initWithFrame_];
    [a1 setUserInteractionEnabled_];
    [v3 addSubview_];
  }

  return v3;
}

void sub_1D806ABF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_actionHandler);
  if (v1)
  {

    v1(v0);

    sub_1D7E0E10C(v1);
  }
}

uint64_t sub_1D806AD4C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for BlockBarButtonItem();
  v1 = objc_msgSendSuper2(&v8, sel_accessibilityLabel);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D8190F14();
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_customContentView];
    if (v4 && (v5 = sub_1D80E9500(v4), v6))
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_1D806AE6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1D8190EE4();
  }

  else
  {
    v3 = 0;
  }

  v4.receiver = v2;
  v4.super_class = type metadata accessor for BlockBarButtonItem();
  objc_msgSendSuper2(&v4, sel_setAccessibilityLabel_, v3);
}

id BlockBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlockBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BlockBarButtonItem.init(coder:)(void *a1)
{
  v3 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_3();
  v7 = &v1[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_barButtonItemIdentifier];
  sub_1D818E784();
  v8 = sub_1D818E764();
  v10 = v9;
  (*(v5 + 8))(v1, v3);
  *v7 = v8;
  v7[1] = v10;
  v1[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_shouldRecolor] = 0;
  v11 = &v1[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_actionHandler];
  *v11 = 0;
  v11[1] = 0;
  *&v1[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_customContentView] = 0;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for BlockBarButtonItem();
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

id BlockBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlockBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D806B194(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  [a3 setAccessibilityLabel_];
}

CGPoint __swiftcall CardViewLayoutOptions.cardOrigin(for:in:layoutMargins:)(TeaUI::CardViewPresentationState a1, __C::CGRect in, UIEdgeInsets layoutMargins)
{
  bottom = layoutMargins.bottom;
  top = layoutMargins.top;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v9 = *a1;
  v10 = CGRectGetHeight(in);
  v15 = v9;
  v12 = v10 - CardViewLayoutOptions.cardHeight(for:in:layoutMargins:)(&v15, x, y, width, height, top, v11, bottom);
  v13 = 0.0;
  result.y = v12;
  result.x = v13;
  return result;
}

uint64_t CardViewLayoutOptions.init(fullscreen:expanded:collapsed:partial:hidden:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = *a5;
  result = *(a5 + 8);
  *a6 = v6;
  *(a6 + 8) = v7;
  *(a6 + 16) = v8;
  *(a6 + 24) = v9;
  *(a6 + 32) = v10;
  *(a6 + 40) = v11;
  *(a6 + 48) = v12;
  *(a6 + 56) = v13;
  *(a6 + 64) = v14;
  *(a6 + 72) = result;
  return result;
}

void *static CardViewLayoutOptions.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDBB0B40 != -1)
  {
    swift_once();
  }

  return memcpy(a1, &qword_1EDBB0B48, 0x49uLL);
}

double CardViewLayoutOptions.cardHeight(for:in:layoutMargins:)(_BYTE *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v10 = *(v8 + 8);
  v11 = *(v8 + 24);
  v12 = *(v8 + 40);
  v13 = *(v8 + 56);
  v14 = -20.0;
  v15 = *(v8 + 72);
  switch(*a1)
  {
    case 1:
      v16 = *(v8 + 16);
      if (!(v11 >> 6))
      {
        Height = CGRectGetHeight(*&a2);
        v20 = (v11 & 1) == 0;
        goto LABEL_27;
      }

      if (v11 >> 6 != 1)
      {
        return CGRectGetHeight(*&a2) * v16;
      }

      v17 = (v11 & 1) == 0;
      goto LABEL_17;
    case 2:
      v16 = *(v8 + 32);
      if (!(v12 >> 6))
      {
        Height = CGRectGetHeight(*&a2);
        v20 = (v12 & 1) == 0;
        goto LABEL_27;
      }

      if (v12 >> 6 != 1)
      {
        return CGRectGetHeight(*&a2) * v16;
      }

      v17 = (v12 & 1) == 0;
      goto LABEL_17;
    case 3:
      v16 = *(v8 + 48);
      if (!(v13 >> 6))
      {
        Height = CGRectGetHeight(*&a2);
        v20 = (v13 & 1) == 0;
        goto LABEL_27;
      }

      if (v13 >> 6 != 1)
      {
        return CGRectGetHeight(*&a2) * v16;
      }

      v17 = (v13 & 1) == 0;
      goto LABEL_17;
    case 4:
    case 6:
      return v14;
    case 5:
      return 0.0;
    case 7:
      v16 = *(v8 + 64);
      if (!(v15 >> 6))
      {
        Height = CGRectGetHeight(*&a2);
        v20 = (v15 & 1) == 0;
        goto LABEL_27;
      }

      if (v15 >> 6 != 1)
      {
        return CGRectGetHeight(*&a2) * v16;
      }

      v17 = (v15 & 1) == 0;
      goto LABEL_17;
    default:
      v16 = *v8;
      if (v10 >> 6)
      {
        if (v10 >> 6 == 1)
        {
          v17 = (v10 & 1) == 0;
LABEL_17:
          v18 = 0.0;
          if (!v17)
          {
            v18 = a8;
          }

          return v18 + v16;
        }

        else
        {
          return CGRectGetHeight(*&a2) * v16;
        }
      }

      else
      {
        Height = CGRectGetHeight(*&a2);
        v20 = (v10 & 1) == 0;
LABEL_27:
        v21 = 0.0;
        if (!v20)
        {
          v21 = a6;
        }

        return Height - v16 - v21;
      }
  }
}

uint64_t sub_1D806B634(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 73))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_1D806B680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CardViewLayoutOptions.Snap(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t storeEnumTagSinglePayload for CardViewLayoutOptions.Snap(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

void sub_1D806B7D8(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D80E724C();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_1D7E2D3DC((v3 + 16 * a1 + 48), v4 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

char *sub_1D806B860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = OBJC_IVAR____TtC5TeaUI25StringArrayViewController_tableView;
  *(v6 + v13) = OUTLINED_FUNCTION_3_6(objc_allocWithZone(MEMORY[0x1E69DD020]), sel_initWithFrame_style_);
  *(v6 + OBJC_IVAR____TtC5TeaUI25StringArrayViewController_data) = a1;
  v14 = (v6 + OBJC_IVAR____TtC5TeaUI25StringArrayViewController_onKeyboardWillChange);
  *v14 = a2;
  v14[1] = a3;
  v15 = (v6 + OBJC_IVAR____TtC5TeaUI25StringArrayViewController_onDone);
  *v15 = a4;
  v15[1] = a5;

  OUTLINED_FUNCTION_7();
  v18 = objc_msgSendSuper2(v16, v17, v6, ObjectType);
  v19 = *&v18[OBJC_IVAR____TtC5TeaUI25StringArrayViewController_tableView];
  v20 = v18;
  [v19 setDataSource_];

  return v20;
}

void sub_1D806B980()
{
  v1 = OBJC_IVAR____TtC5TeaUI25StringArrayViewController_tableView;
  *(v0 + v1) = OUTLINED_FUNCTION_3_6(objc_allocWithZone(MEMORY[0x1E69DD020]), sel_initWithFrame_style_);
  sub_1D81923A4();
  __break(1u);
}

void sub_1D806BA20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20.receiver = v0;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v3 = [v0 navigationItem];
  v4 = sub_1D7FC8240([v1 navigationItem]);
  if (!v5)
  {
    v4 = 0x4120676E69727453;
    v5 = 0xEC00000079617272;
  }

  sub_1D7FC8B88(v4, v5, v3);

  v6 = *&v1[OBJC_IVAR____TtC5TeaUI25StringArrayViewController_tableView];
  type metadata accessor for TextFieldTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = OUTLINED_FUNCTION_14_2();
  [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v8];

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 addSubview_];

    sub_1D7E0A1A8(0, &qword_1EDBB2F60);
    v11 = sub_1D7E47238();
    v19[3] = ObjectType;
    v19[0] = v1;
    v12 = objc_allocWithZone(MEMORY[0x1E69DC708]);
    v13 = v1;
    v14 = sub_1D806CD18(v11, 0, v19, sel_doAdd);
    v15 = [v13 navigationItem];
    sub_1D7E49240();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D81A50A0;
    *(v16 + 32) = v14;
    v17 = v14;
    sub_1D806CED8(v16, 0, v15);

    v18 = [objc_opt_self() defaultCenter];
    [v18 addObserver:v13 selector:sel_keyboardWillChangeFrameWithNotification_ name:*MEMORY[0x1E69DE068] object:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D806BCC4(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  return [*&v1[OBJC_IVAR____TtC5TeaUI25StringArrayViewController_tableView] reloadData];
}

uint64_t sub_1D806BD78(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillDisappear_, a1 & 1);
  [v1 becomeFirstResponder];
  [v1 resignFirstResponder];
  v3 = *&v1[OBJC_IVAR____TtC5TeaUI25StringArrayViewController_onDone];
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v4 = sub_1D8190DB4();
  v3(v4);
}

id sub_1D806BE84()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI25StringArrayViewController_tableView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    return [v1 setFrame_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D806BF8C()
{
  v1 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5TeaUI25StringArrayViewController_data;
  swift_beginAccess();
  sub_1D7EE42F0();
  v8 = *(*(v0 + v7) + 16);
  sub_1D7EE451C();
  v9 = *(v0 + v7);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v0 + v7) = v9;
  swift_endAccess();
  v11 = *(v0 + OBJC_IVAR____TtC5TeaUI25StringArrayViewController_tableView);
  [v11 reloadData];
  MEMORY[0x1DA710B40](*(*(v0 + v7) + 16) - 1, 0);
  v12 = sub_1D818E8E4();
  (*(v3 + 8))(v6, v1);
  v13 = [v11 cellForRowAtIndexPath_];

  if (v13)
  {
    v14 = [v13 ts_editableTextField];
    if (v14)
    {
      v15 = v14;
      [v14 becomeFirstResponder];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D806C2C0()
{
  v1 = OBJC_IVAR____TtC5TeaUI25StringArrayViewController_data;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

char *sub_1D806C328(void *a1, uint64_t a2)
{
  v3 = v2;
  v38 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_14_2();
  v12 = sub_1D818E8E4();
  v13 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:v12];

  type metadata accessor for TextFieldTableViewCell();
  v14 = swift_dynamicCastClassUnconditional();
  v37 = v13;
  [v14 setSelectionStyle_];
  result = [v14 ts_editableTextField];
  if (!result)
  {
    goto LABEL_12;
  }

  v16 = result;
  v17 = sub_1D818E944();
  v18 = OBJC_IVAR____TtC5TeaUI25StringArrayViewController_data;
  OUTLINED_FUNCTION_7();
  result = swift_beginAccess();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = *(v3 + v18);
  if (v17 >= *(v19 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19 + 16 * v17;
  v21 = *(v20 + 32);
  v22 = *(v20 + 40);
  sub_1D8190DB4();
  sub_1D806CF6C(v21, v22, v16);

  result = [v14 ts_editableTextField];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v23 = result;
  [result setEnabled_];

  v24 = [v14 textLabel];
  if (v24)
  {
    v25 = v24;
    v40 = 0x206D657449;
    v41 = 0xE500000000000000;
    v39 = sub_1D818E944();
    v26 = sub_1D81925B4();
    MEMORY[0x1DA713260](v26);

    MEMORY[0x1DA713260](8250, 0xE200000000000000);
    sub_1D7FC8234(0x206D657449, 0xE500000000000000, v25);
  }

  v27 = [v14 textLabel];
  if (v27)
  {
    v28 = v27;
    v29 = [objc_opt_self() labelColor];
    [v28 setTextColor_];
  }

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v38;
  (*(v7 + 16))(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v38);
  v32 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  (*(v7 + 32))(v33 + v32, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  v34 = &v14[OBJC_IVAR____TtC5TeaUI22TextFieldTableViewCell_onChange];
  v35 = *&v14[OBJC_IVAR____TtC5TeaUI22TextFieldTableViewCell_onChange];
  v36 = *&v14[OBJC_IVAR____TtC5TeaUI22TextFieldTableViewCell_onChange + 8];
  *v34 = sub_1D806CFD0;
  v34[1] = v33;

  sub_1D7E418F4(v35, v36);

  return v14;
}

void sub_1D806C6E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1D818E944();
    v7 = OBJC_IVAR____TtC5TeaUI25StringArrayViewController_data;
    swift_beginAccess();
    v8 = *&v5[v7];
    sub_1D8190DB4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v5[v7] = v8;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1D80E724C();
      v8 = v11;
      *&v5[v7] = v11;
      if ((v6 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v6 < *(v8 + 16))
        {
          v10 = v8 + 16 * v6;
          *(v10 + 32) = a1;
          *(v10 + 40) = a2;
          *&v5[v7] = v8;
          swift_endAccess();

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

id sub_1D806C8EC(id result, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v4 = result;
    v5 = sub_1D818E944();
    swift_beginAccess();
    sub_1D806B7D8(v5);
    swift_endAccess();

    sub_1D806CE80();
    v6 = sub_1D818E994();
    OUTLINED_FUNCTION_9();
    v8 = v7;
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D819FAB0;
    (*(v8 + 16))(v10 + v9, a3, v6);
    v11 = sub_1D8191304();

    [v4 deleteRowsAtIndexPaths:v11 withRowAnimation:0];

    return [v4 reloadData];
  }

  return result;
}

unint64_t sub_1D806CB68()
{
  v1 = OBJC_IVAR____TtC5TeaUI25StringArrayViewController_data;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0;
  }
}

id sub_1D806CD18(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = a3[3];
  if (v9)
  {
    v11 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v12 = *(v9 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = sub_1D8192614();
    (*(v12 + 8))(v15, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(a3);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v5 initWithImage:a1 style:a2 target:v16 action:a4];

  swift_unknownObjectRelease();
  return v17;
}

void sub_1D806CE80()
{
  if (!qword_1EDBB2D08)
  {
    sub_1D818E994();
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2D08);
    }
  }
}

void sub_1D806CED8(uint64_t a1, char a2, void *a3)
{
  sub_1D7E0A1A8(0, &qword_1EDBB31D0);
  v5 = sub_1D8191304();

  [a3 setRightBarButtonItems:v5 animated:a2 & 1];
}

void sub_1D806CF6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  [a3 setText_];
}

void sub_1D806CFD0(uint64_t a1, uint64_t a2)
{
  sub_1D818E994();

  sub_1D806C6E0(a1, a2);
}

void sub_1D806D054(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D806D0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7E1B288(a1, &v27);
    if (!swift_dynamicCast())
    {
    }

    if ((*(a4 + 33) & 1) == 0)
    {
      v25 = a6;
      v26 = a7;
      if (qword_1EDBBCFC0 != -1)
      {
        OUTLINED_FUNCTION_1_113();
      }

      sub_1D7E1A4D0();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D81A1B70;
      v15 = *(a4 + 16);
      v16 = *(a4 + 24);
      *(v14 + 56) = MEMORY[0x1E69E6158];
      v17 = sub_1D7E13BF4();
      *(v14 + 64) = v17;
      *(v14 + 32) = v15;
      *(v14 + 40) = v16;
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1D8190DB4();
      sub_1D8192334();
      v18 = v27;
      v19 = v28;
      v20 = MEMORY[0x1E69E6158];
      *(v14 + 96) = MEMORY[0x1E69E6158];
      *(v14 + 104) = v17;
      *(v14 + 72) = v18;
      *(v14 + 80) = v19;
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1D8192334();
      v21 = v27;
      v22 = v28;
      *(v14 + 136) = v20;
      *(v14 + 144) = v17;
      *(v14 + 112) = v21;
      *(v14 + 120) = v22;
      sub_1D81919E4();
      sub_1D818FD44();

      a6 = v25;
      a7 = v26;
    }

    sub_1D806E230(v23, a4, a2, a5, a6, a7);

    if (a2)
    {

      sub_1D806DF64(v24, a4, 0, a2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D806D324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v41 = *a5;
  sub_1D806E348(0, &qword_1EDBBD088, MEMORY[0x1E6968FB0]);
  (MEMORY[0x1EEE9AC00])();
  v10 = &v38 - v9;
  sub_1D806E348(0, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v16 = type metadata accessor for CopyCommandContext();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7E1B288(a1, &v43);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
      sub_1D7F2A5B4(v15, v18);
      if ((*(a4 + 33) & 1) == 0)
      {
        v40 = a2;
        if (qword_1EDBBCFC0 != -1)
        {
          swift_once();
        }

        v38 = qword_1EDBC6138;
        sub_1D7E1A4D0();
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1D81A1B70;
        v22 = *(a4 + 16);
        v21 = *(a4 + 24);
        *(v20 + 56) = MEMORY[0x1E69E6158];
        v23 = sub_1D7E13BF4();
        v39 = a4;
        v24 = v23;
        *(v20 + 64) = v23;
        *(v20 + 32) = v22;
        *(v20 + 40) = v21;
        v43 = 0;
        v44 = 0xE000000000000000;
        sub_1D8190DB4();
        sub_1D8192334();
        v25 = v43;
        v26 = v44;
        v27 = MEMORY[0x1E69E6158];
        *(v20 + 96) = MEMORY[0x1E69E6158];
        *(v20 + 104) = v24;
        *(v20 + 72) = v25;
        *(v20 + 80) = v26;
        v43 = 0;
        v44 = 0xE000000000000000;
        v42 = a5;
        sub_1D8192334();
        v28 = v43;
        v29 = v44;
        *(v20 + 136) = v27;
        *(v20 + 144) = v24;
        a4 = v39;
        *(v20 + 112) = v28;
        *(v20 + 120) = v29;
        sub_1D81919E4();
        sub_1D818FD44();

        a2 = v40;
      }

      sub_1D806E3F8(v18, v10, &qword_1EDBBD088, MEMORY[0x1E6968FB0]);
      v30 = sub_1D818E644();
      if (__swift_getEnumTagSinglePayload(v10, 1, v30) == 1)
      {
        sub_1D806E39C(v10, &qword_1EDBBD088, MEMORY[0x1E6968FB0]);
        if (a2)
        {
LABEL_9:
          sub_1D7F2A618(v18, v13);
          __swift_storeEnumTagSinglePayload(v13, 0, 1, v16);

          sub_1D806E024(v31, a4, v13, a2);

          sub_1D806E39C(v13, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext);
          return sub_1D7F2A8C4(v18);
        }
      }

      else
      {

        v32 = a4;
        v33 = sub_1D818E5B4();
        v35 = v34;
        (*(*(v30 - 8) + 8))(v10, v30);
        v36 = [objc_opt_self() generalPasteboard];
        v37 = v33;
        a4 = v32;
        sub_1D806DEAC(v37, v35, v36);

        if (a2)
        {
          goto LABEL_9;
        }
      }

      sub_1D7F2A8C4(v18);
    }

    else
    {

      __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
      return sub_1D806E39C(v15, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext);
    }
  }

  return result;
}

uint64_t sub_1D806D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_1D7E1B288(a1, &v23);
    v9 = MEMORY[0x1E69E6158];
    if (!swift_dynamicCast() || !v22)
    {
      goto LABEL_10;
    }

    v10 = v21;
    if ((*(a4 + 33) & 1) == 0)
    {
      v20 = a2;
      if (qword_1EDBBCFC0 != -1)
      {
        swift_once();
      }

      sub_1D7E1A4D0();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D81A1B70;
      v12 = *(a4 + 16);
      v13 = *(a4 + 24);
      *(v11 + 56) = v9;
      v14 = sub_1D7E13BF4();
      *(v11 + 64) = v14;
      *(v11 + 32) = v12;
      *(v11 + 40) = v13;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1D8190DB4();
      sub_1D8192334();
      v15 = v23;
      v16 = v24;
      *(v11 + 96) = v9;
      *(v11 + 104) = v14;
      *(v11 + 72) = v15;
      *(v11 + 80) = v16;
      v23 = 0;
      v24 = 0xE000000000000000;
      v10 = v21;
      sub_1D8192334();
      v17 = v23;
      v18 = v24;
      *(v11 + 136) = v9;
      *(v11 + 144) = v14;
      *(v11 + 112) = v17;
      *(v11 + 120) = v18;
      sub_1D81919E4();
      sub_1D818FD44();

      a2 = v20;
    }

    v19 = [objc_opt_self() generalPasteboard];
    sub_1D7F2B4FC(v10, v22, v19);

    if (a2)
    {

      sub_1D8190DB4();
      sub_1D806E19C(v8, a4, v10, v22, a2);

      return swift_bridgeObjectRelease_n();
    }

    else
    {
LABEL_10:
    }
  }

  return result;
}

uint64_t sub_1D806DB1C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1D7E1B288(a1, v3);
    return swift_dynamicCast();
  }

  return result;
}

BOOL sub_1D806DBA0(uint64_t a1)
{
  sub_1D806E348(0, &qword_1EDBBD088, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3 - 8];
  sub_1D806E348(0, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-v6 - 8];
  v8 = type metadata accessor for CopyCommandContext();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  sub_1D7E1B288(a1, v16);
  if (!swift_dynamicCast())
  {

    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_1D806E39C(v7, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext);
    return 0;
  }

  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_1D7F2A5B4(v7, v10);
  v11 = MEMORY[0x1E6968FB0];
  sub_1D806E3F8(v10, v4, &qword_1EDBBD088, MEMORY[0x1E6968FB0]);
  v12 = sub_1D818E644();
  v13 = __swift_getEnumTagSinglePayload(v4, 1, v12) != 1;
  sub_1D806E39C(v4, &qword_1EDBBD088, v11);

  sub_1D7F2A8C4(v10);
  return v13;
}

uint64_t sub_1D806DE10(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1D7E1B288(a1, v4);
    if (swift_dynamicCast() && v3)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1D806DEAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  [a3 setString_];
}

uint64_t sub_1D806DF64(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7CA8] + 8;
  if (a3)
  {
    v5 = 0;
  }

  v8[0] = a1;
  v8[1] = &protocol witness table for CommandCenter;
  memset(&v8[2], 0, 24);
  v8[5] = v5;
  v6 = *(a4 + 136);

  v6(a2, v8);
  return sub_1D7F0E984(v8);
}

uint64_t sub_1D806E024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D806E348(0, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext);
  MEMORY[0x1EEE9AC00]();
  v9 = &v14 - v8;
  sub_1D806E3F8(a3, &v14 - v8, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext);
  v10 = type metadata accessor for CopyCommandContext();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1D806E39C(v9, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext);
    v14 = 0u;
    v15 = 0u;
  }

  else
  {
    *(&v15 + 1) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14);
    sub_1D7F2A5B4(v9, boxed_opaque_existential_0);
  }

  v16[0] = a1;
  v16[1] = &protocol witness table for CommandCenter;
  v17 = v14;
  v18 = v15;
  v12 = *(a4 + 136);

  v12(a2, v16);
  return sub_1D7F0E984(v16);
}

uint64_t sub_1D806E19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x1E69E6158];
  if (a4)
  {
    v7 = a3;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v10[0] = a1;
  v10[1] = &protocol witness table for CommandCenter;
  v10[2] = v7;
  v10[3] = a4;
  v10[4] = 0;
  v10[5] = v6;
  v8 = *(a5 + 136);
  sub_1D8190DB4();

  v8(a2, v10);
  return sub_1D7F0E984(v10);
}

void sub_1D806E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCE80]) init];
  v9 = [objc_opt_self() sharedApplication];
  v12[4] = a5;
  v12[5] = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D806D054;
  v12[3] = a6;
  v10 = _Block_copy(v12);
  v11 = v8;
  [v9 requestSceneSessionActivation:0 userActivity:0 options:v11 errorHandler:v10];
  _Block_release(v10);
}

void sub_1D806E348(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D806E39C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D806E348(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D806E3F8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D806E348(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

Swift::Void __swiftcall SeparatorView.clearSelections()()
{
  v1 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected;
  OUTLINED_FUNCTION_56();
  v1[v0] = 0;
  sub_1D806EB14(&OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected);
  v2 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted;
  OUTLINED_FUNCTION_56();
  *(v0 + v2) = 0;
  sub_1D806EB14(&OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted);
}

void sub_1D806E518(char a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_56();
  *(v2 + v5) = a1;
  sub_1D806EB14(a2);
}

uint64_t SeparatorView.layoutStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI13SeparatorView_layoutStyle;
  result = OUTLINED_FUNCTION_10();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t SeparatorView.layoutStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI13SeparatorView_layoutStyle;
  result = OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = v2;
  return result;
}

uint64_t SeparatorView.visibilityStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI13SeparatorView_visibilityStyle;
  result = OUTLINED_FUNCTION_10();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1D806E6CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI13SeparatorView_visibilityStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void SeparatorView.visibilityStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI13SeparatorView_visibilityStyle;
  OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = v2;
  sub_1D806E7A0();
}

void sub_1D806E7A0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI13SeparatorView_visibilityStyle;
  swift_beginAccess();
  if (v0[v2])
  {
    v7.receiver = v0;
    v7.super_class = ObjectType;
    objc_msgSendSuper2(&v7, sel_setHidden_, 0);
    v3 = *&v0[OBJC_IVAR____TtC5TeaUI13SeparatorView__backgroundColor];
    v6.receiver = v0;
    v6.super_class = ObjectType;
    v4 = v3;
    objc_msgSendSuper2(&v6, sel_setBackgroundColor_, v4);
    sub_1D806EFFC();
  }

  else
  {
    v5.receiver = v0;
    v5.super_class = ObjectType;
    objc_msgSendSuper2(&v5, sel_setHidden_, 1);
  }
}

void SeparatorView.backgroundColor.setter(void *a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setBackgroundColor_, a1);
  sub_1D806EFFC();
}

uint64_t SeparatorView.visibilityStyle.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

void sub_1D806E908(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D806E7A0();
  }
}

uint64_t SeparatorView.isHighlighted.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted;
  OUTLINED_FUNCTION_10();
  return *(v0 + v1);
}

uint64_t sub_1D806E974@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t SeparatorView.isHighlighted.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

void sub_1D806EA34(uint64_t a1, char a2, uint64_t *a3)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D806EB14(a3);
  }
}

uint64_t SeparatorView.isSelected.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected;
  OUTLINED_FUNCTION_10();
  return v1[v0];
}

uint64_t sub_1D806EAB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected;
  result = swift_beginAccess();
  *a2 = v4[v3];
  return result;
}

void sub_1D806EB14(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  OUTLINED_FUNCTION_8_4();
  LODWORD(v4) = v1[v4];
  v5 = OBJC_IVAR____TtC5TeaUI13SeparatorView_visibilityStyle;
  OUTLINED_FUNCTION_8_4();
  if (v4 == 1)
  {
    if (v1[v5])
    {
      v8.receiver = v1;
      v8.super_class = ObjectType;
      objc_msgSendSuper2(&v8, sel_setHidden_, 1);
    }
  }

  else if (v1[v5])
  {
    v10.receiver = v1;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_setHidden_, 0);
    v6 = *&v1[OBJC_IVAR____TtC5TeaUI13SeparatorView__backgroundColor];
    v9.receiver = v1;
    v9.super_class = ObjectType;
    v7 = v6;
    objc_msgSendSuper2(&v9, sel_setBackgroundColor_, v7);
    sub_1D806EFFC();
  }
}

uint64_t SeparatorView.isSelected.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t SeparatorView.hidesOnSelection.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI13SeparatorView_hidesOnSelection;
  OUTLINED_FUNCTION_10();
  return *(v0 + v1);
}

uint64_t SeparatorView.hidesOnSelection.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI13SeparatorView_hidesOnSelection;
  result = OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = a1;
  return result;
}

id SeparatorView.isHidden.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_isHidden);
}

id SeparatorView.isHidden.setter(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_setHidden_, a1 & 1);
}

void (*SeparatorView.isHidden.modify(objc_super **a1))(char **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[3].receiver = v1;
  ObjectType = swift_getObjectType();
  v3[3].super_class = ObjectType;
  v3->receiver = v1;
  v3->super_class = ObjectType;
  LOBYTE(v3[4].receiver) = [(objc_super *)v3 isHidden];
  return sub_1D806EEA0;
}

void sub_1D806EEA0(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[64];
  v4 = *(*a1 + 7);
  v5 = 32;
  if (a2)
  {
    v5 = 16;
  }

  v6 = 40;
  if (a2)
  {
    v6 = 24;
  }

  *&v2[v5] = *(*a1 + 6);
  *&v2[v6] = v4;
  objc_msgSendSuper2(&v2[v5], sel_setHidden_, v3);

  free(v2);
}

id SeparatorView.backgroundColor.getter()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_backgroundColor);

  return v1;
}

void sub_1D806EFFC()
{
  v8[1] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v7.super_class = ObjectType;
  v8[0] = 0.0;
  v7.receiver = v0;
  v2 = objc_msgSendSuper2(&v7, sel_backgroundColor);
  if (v2)
  {
    v3 = v2;
    [v2 getRed:0 green:0 blue:0 alpha:v8];

    if (v8[0] != 0.0)
    {
      v6.receiver = v0;
      v6.super_class = ObjectType;
      v4 = objc_msgSendSuper2(&v6, sel_backgroundColor, v8[0]);
      v5 = *&v0[OBJC_IVAR____TtC5TeaUI13SeparatorView__backgroundColor];
      *&v0[OBJC_IVAR____TtC5TeaUI13SeparatorView__backgroundColor] = v4;
    }
  }
}

void (*SeparatorView.backgroundColor.modify(objc_super **a1))(objc_super **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[3].super_class = v1;
  ObjectType = swift_getObjectType();
  v3[4].receiver = ObjectType;
  v3->receiver = v1;
  v3->super_class = ObjectType;
  v3[3].receiver = [(objc_super *)v3 backgroundColor];
  return sub_1D806F168;
}

void sub_1D806F168(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v4 = (*a1)[4].receiver;
  if (a2)
  {
    v2[1].receiver = super_class;
    v2[1].super_class = v4;
    objc_msgSendSuper2(v2 + 1, sel_setBackgroundColor_, receiver);
  }

  else
  {
    v2[2].receiver = super_class;
    v2[2].super_class = v4;
    objc_msgSendSuper2(v2 + 2, sel_setBackgroundColor_, receiver);

    sub_1D806EFFC();
  }

  free(v2);
}

uint64_t SeparatorView.thickness.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5TeaUI13SeparatorView_thickness;
  result = OUTLINED_FUNCTION_8_4();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t SeparatorView.thickness.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC5TeaUI13SeparatorView_thickness;
  result = OUTLINED_FUNCTION_56();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

id SeparatorView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id SeparatorView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView_visibilityStyle) = 1;
  *(v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted) = 0;
  *(OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected + v0) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView_hidesOnSelection) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView__backgroundColor) = 0;
  v2 = v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView_thickness;
  *v2 = 0;
  *(v2 + 8) = 1;
  v12 = v0;
  v13 = ObjectType;
  v3 = OUTLINED_FUNCTION_80();
  v6 = objc_msgSendSuper2(v4, v5, v3);
  v7 = qword_1EDBB2F90;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v11.receiver = v8;
  v11.super_class = ObjectType;
  v9 = qword_1EDBB2F98;
  objc_msgSendSuper2(&v11, sel_setBackgroundColor_, v9);
  sub_1D806EFFC();

  return v8;
}

id SeparatorView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}