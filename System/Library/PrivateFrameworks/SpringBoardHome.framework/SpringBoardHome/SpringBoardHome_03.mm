uint64_t sub_1BEDD171C(void *a1, double a2, double a3, double a4, double a5)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 setFrame_];
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
}

uint64_t sub_1BEDD1810(char *a1, double a2)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [a1 effectiveUserInterfaceLayoutDirection];
  [a1 metrics];
  v4 = v44;
  v5 = [a1 traitCollection];
  [v5 displayScale];

  v39 = v41 * 0.5;
  BSFloatCeilForScale();
  v7 = v6;
  if (v3 == 1)
  {
    v4 = -v44;
  }

  v8 = 0.0;
  if (BSFloatGreaterThanFloat())
  {
    v9 = v43;
  }

  else
  {
    v9 = a2;
  }

  Mutable = CGPathCreateMutable();
  if (BSFloatGreaterThanFloat() && BSFloatLessThanFloat())
  {
    v8 = (1.57079633 - v42 / v9) * 0.5;
  }

  v11 = v4 + v7;
  v12 = v45 + v7;
  if (v3 == 1)
  {
    v13 = v11 + v9;
    v14 = v12 + a2 - v9;
    v15 = 3.14159265 - v8;
    sub_1BEE4734C();
    v8 = v8 + 1.57079633;
    v16 = v14;
  }

  else
  {
    v13 = v11 + a2 - v9;
    v16 = v12 + a2 - v9;
    v15 = 1.57079633 - v8;
    sub_1BEE4734C();
  }

  v17 = sub_1BEE473DC();
  if (v46)
  {

    v18 = v48 + v9 - v39;
    v19 = -v47 / v9;
    if (v3 == 1)
    {
      v20 = -v47 / v9;
    }

    else
    {
      v20 = -v49 / v9;
    }

    if (v3 == 1)
    {
      v19 = -v49 / v9;
    }

    v21 = v8 - v19;
    v22 = v41 - v48 - v50;
    v23 = v20 + v19 + v15 - v8;
  }

  else
  {
    SBHDirectionalEdgeInsetsGetEdgeInsets();
    v25 = v24;
    v26 = v16;
    v28 = v27;

    v29 = v28;
    v16 = v26;
    v18 = UIEdgeInsetsInsetRect(v7, v7, a2, a2, v25, v29);
    v21 = v30;
    v22 = v31;
    v23 = v32;
  }

  v33 = [a1 shapeLayer];
  if (v33)
  {
    v34 = v33;
    [v33 setPath_];
  }

  else if (*&a1[OBJC_IVAR___SBHIconResizeHandle_glassContainerViewController])
  {
    v35 = v17;
    sub_1BEE46CBC();

    goto LABEL_27;
  }

LABEL_27:
  v36 = &a1[OBJC_IVAR___SBHIconResizeHandle_shapePathOrigin];
  *v36 = v13;
  v36[1] = v16;
  v37 = &a1[OBJC_IVAR___SBHIconResizeHandle_hitArea];
  *v37 = v18;
  v37[1] = v21;
  v37[2] = v22;
  v37[3] = v23;
}

uint64_t sub_1BEDD1DE8(uint64_t a1)
{
  v3 = v1;

  return a1;
}

Swift::Void __swiftcall SBHIconResizeHandle.layoutSubviews()()
{
  v13.super_class = SBHIconResizeHandle;
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 backgroundView];
  [v9 setFrame_];

  [*&v0[OBJC_IVAR___SBHIconResizeHandle_whiteTintView] setFrame_];
  [*&v0[OBJC_IVAR___SBHIconResizeHandle_highlightView] setFrame_];
  v10 = *&v0[OBJC_IVAR___SBHIconResizeHandle_glassContainerViewController];
  if (v10)
  {
    v11 = [v10 view];
    if (v11)
    {
      v12 = v11;
      [v11 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

CGSize __swiftcall SBHIconResizeHandle.sizeThatFits(_:)(CGSize a1)
{
  [v1 iconImageInfo];
  v3 = v2;
  v4 = v2;
  result.height = v4;
  result.width = v3;
  return result;
}

void sub_1BEDD21D4(char a1)
{
  v2 = OBJC_IVAR___SBHIconResizeHandle_isHighlighted;
  if (v1[OBJC_IVAR___SBHIconResizeHandle_isHighlighted] != (a1 & 1))
  {
    v3 = [v1 layer];
    v4 = v1[v2];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v1;
    if (v4 == 1)
    {
      v16 = sub_1BEDD3DDC;
      v17 = v6;
      v12 = MEMORY[0x1E69E9820];
      v13 = 1107296256;
      v14 = sub_1BEE01324;
      v15 = &block_descriptor_6;
      v7 = _Block_copy(&v12);
      v8 = v3;
      v9 = v1;

      [v5 animateWithDuration:2 delay:v7 usingSpringWithDamping:0 initialSpringVelocity:0.2 options:0.0 animations:1.0 completion:0.0];
    }

    else
    {
      v16 = sub_1BEDD3DD4;
      v17 = v6;
      v12 = MEMORY[0x1E69E9820];
      v13 = 1107296256;
      v14 = sub_1BEE01324;
      v15 = &block_descriptor_1;
      v7 = _Block_copy(&v12);
      v10 = v3;
      v11 = v1;

      [v5 animateWithDuration:2 delay:v7 usingSpringWithDamping:0 initialSpringVelocity:0.70316 options:0.0 animations:0.5 completion:0.0];
    }

    _Block_release(v7);
  }
}

uint64_t sub_1BEDD23D0(void *a1, char *a2)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1BEE4723C();
  v5 = sub_1BEE4705C();
  [a1 setValue:v4 forKeyPath:v5];

  v6 = [a2 traitCollection];
  [v6 userInterfaceStyle];

  v7 = sub_1BEE4723C();
  v8 = sub_1BEE4705C();
  [a1 setValue:v7 forKeyPath:v8];

  v9 = *&a2[OBJC_IVAR___SBHIconResizeHandle_highlightView];
  if (v9)
  {
    [v9 setAlpha_];
  }

  CGAffineTransformMakeScale(&v11, 1.2, 1.2);
  [a2 setTransform_];
}

uint64_t sub_1BEDD25A8(void *a1, char *a2)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1BEE4723C();
  v5 = sub_1BEE4705C();
  [a1 setValue:v4 forKeyPath:v5];

  v6 = sub_1BEE4723C();
  v7 = sub_1BEE4705C();
  [a1 setValue:v6 forKeyPath:v7];

  v8 = *&a2[OBJC_IVAR___SBHIconResizeHandle_highlightView];
  if (v8)
  {
    [v8 setAlpha_];
  }

  v10[0] = 0x3FF0000000000000;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0x3FF0000000000000;
  v10[4] = 0;
  v10[5] = 0;
  [a2 setTransform_];
}

uint64_t sub_1BEDD293C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

void sub_1BEDD2ABC()
{
  if (*&v0[OBJC_IVAR___SBHIconResizeHandle_glassContainerViewController])
  {
    sub_1BEE46CAC();
    v1 = v5;
LABEL_6:

    return;
  }

  v2 = [v0 layer];
  v3 = [v2 mask];

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v1 = [v4 path];

      if (v1)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  __break(1u);
}

Swift::Bool __swiftcall SBHIconResizeHandle._shouldAnimateProperty(withKey:)(Swift::String_optional withKey)
{
  if (withKey.value._object)
  {
    if (withKey.value._countAndFlagsBits == 0xD000000000000027 && 0x80000001BEEA2700 == withKey.value._object)
    {
      return 1;
    }

    countAndFlagsBits = withKey.value._countAndFlagsBits;
    object = withKey.value._object;
    if ((sub_1BEE4770C() & 1) != 0 || countAndFlagsBits == 0xD000000000000027 && 0x80000001BEEA26D0 == object)
    {
      return 1;
    }

    if (sub_1BEE4770C())
    {
      return 1;
    }

    v5 = sub_1BEE4705C();
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v1;
  v7.super_class = SBHIconResizeHandle;
  v6 = objc_msgSendSuper2(&v7, sel__shouldAnimatePropertyWithKey_, v5);

  return v6;
}

id SBHIconResizeHandle.touchesCancelled(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_1BEB20D28(0, &qword_1EBDC75C8);
  sub_1BEDD3D58();
  v4 = sub_1BEE4724C();
  v6.receiver = v2;
  v6.super_class = SBHIconResizeHandle;
  objc_msgSendSuper2(&v6, sel_touchesCancelled_withEvent_, v4, a2);

  result = [v2 isResizing];
  if ((result & 1) == 0)
  {
    return [v2 setHighlighted_];
  }

  return result;
}

id sub_1BEDD312C(uint64_t a1, uint64_t a2, SEL *a3, char a4)
{
  sub_1BEB20D28(0, &qword_1EBDC75C8);
  sub_1BEDD3D58();
  v8 = sub_1BEE4724C();
  v10.receiver = v4;
  v10.super_class = SBHIconResizeHandle;
  objc_msgSendSuper2(&v10, *a3, v8, a2);

  return [v4 setHighlighted_];
}

void sub_1BEDD31F0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6, char a7)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1BEB20D28(0, &qword_1EBDC75C8);
  sub_1BEDD3D58();
  sub_1BEE4726C();
  v11 = a4;
  v12 = a1;
  v13 = sub_1BEE4724C();

  v14.receiver = v12;
  v14.super_class = SBHIconResizeHandle;
  objc_msgSendSuper2(&v14, *a6, v13, v11);

  [v12 setHighlighted_];
}

id sub_1BEDD3360(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

void __swiftcall SBHIconResizeHandle.init(frame:)(SBHIconResizeHandle *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

uint64_t sub_1BEDD3694@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = sub_1BEE46F7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = sub_1BEE46FBC();
  v7 = MEMORY[0x1EEE9AC00](v25[0]);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v25 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v25 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v25 - v16;
  v18 = (v4 + 104);
  v19 = (v4 + 8);
  v21 = (v20 + 8);
  if (a1 == 4)
  {
    goto LABEL_4;
  }

  if (a1 != 2)
  {
    if (a1)
    {
      sub_1BEE46FAC();
      goto LABEL_7;
    }

LABEL_4:
    sub_1BEE46F9C();
LABEL_7:
    (*v18)(v6, *MEMORY[0x1E697D788], v3);
    sub_1BEE46F8C();
    (*v19)(v6, v3);
    v22 = *v21;
    v23 = v25[0];
    (*v21)(v12, v25[0]);
    goto LABEL_8;
  }

  sub_1BEE46F9C();
  (*v18)(v6, *MEMORY[0x1E697D788], v3);
  sub_1BEE46F8C();
  (*v19)(v6, v3);
  v22 = *v21;
  v23 = v25[0];
  (*v21)(v9, v25[0]);
  sub_1BEE46F6C();
  v22(v12, v23);
LABEL_8:
  sub_1BEE46F5C();
  v22(v15, v23);
  sub_1BEE46FCC();
  return (v22)(v17, v23);
}

uint64_t sub_1BEDD39DC(uint64_t a1)
{
  v2 = sub_1BEE46C4C();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BEE46C7C();
}

uint64_t sub_1BEDD3AAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v3;
  sub_1BEE46E2C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7648);
  sub_1BEDD3694(v4, a1 + *(v6 + 52));
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(a1 + *(v6 + 56)) = 256;
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7650) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7658) + 28);
  v10 = *MEMORY[0x1E697E7D0];
  v11 = sub_1BEE46C4C();
  result = (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = KeyPath;
  return result;
}

void _sSo19SBHIconResizeHandleC15SpringBoardHomeE5coderABSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR___SBHIconResizeHandle_hitArea);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = (v0 + OBJC_IVAR___SBHIconResizeHandle_shapePathOrigin);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR___SBHIconResizeHandle_resizingGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR___SBHIconResizeHandle_isHighlighted) = 0;
  *(v0 + OBJC_IVAR___SBHIconResizeHandle__isResizing) = 0;
  *(v0 + OBJC_IVAR___SBHIconResizeHandle_isDarkStyle) = 0;
  *(v0 + OBJC_IVAR___SBHIconResizeHandle_shapeLayer) = 0;
  sub_1BEE4764C();
  __break(1u);
}

BOOL _sSo19SBHIconResizeHandleC15SpringBoardHomeE5point6inside4withSbSo7CGPointV_So7UIEventCSgtF_0(CGFloat a1, long double a2)
{
  [v2 metrics];
  if (v8 == 1)
  {
    v5 = a1 - *&v2[OBJC_IVAR___SBHIconResizeHandle_shapePathOrigin];
    v6 = a2 - *&v2[OBJC_IVAR___SBHIconResizeHandle_shapePathOrigin + 8];
    a1 = sqrt(v5 * v5 + v6 * v6);
    a2 = atan(v6 / v5);
    if (BSFloatLessThanFloat())
    {
      a2 = a2 + 3.14159265;
    }

    else if (BSFloatLessThanFloat())
    {
      a2 = a2 + 6.28318531;
    }
  }

  v9.x = a1;
  v9.y = a2;
  return CGRectContainsPoint(*&v2[OBJC_IVAR___SBHIconResizeHandle_hitArea], v9);
}

unint64_t sub_1BEDD3D58()
{
  result = qword_1EBDC75D0;
  if (!qword_1EBDC75D0)
  {
    sub_1BEB20D28(255, &qword_1EBDC75C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDC75D0);
  }

  return result;
}

uint64_t sub_1BEDD3E24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BEDD3E6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BEDD3ED4()
{
  result = qword_1EBDBFF90;
  if (!qword_1EBDBFF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDC7650);
    sub_1BEB53980(&unk_1EBDBFF98, &qword_1EBDC7648);
    sub_1BEB53980(&qword_1EBDBFF88, &qword_1EBDC7658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDBFF90);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_1BEDD4010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v8 = v7;
  v34 = a3;
  v35 = a4;
  v33 = a1;
  v13 = sub_1BEE468CC();
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v16 = &v8[OBJC_IVAR___SBFolder_defaultDisplayName];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v8[OBJC_IVAR___SBFolder_displayName];
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v8[OBJC_IVAR___SBFolder__isCancelable] = 0;
  v18 = OBJC_IVAR___SBFolder_folderObservers;
  *&v8[v18] = [objc_opt_self() weakObjectsHashTable];
  *&v8[OBJC_IVAR___SBFolder__lists] = MEMORY[0x1E69E7CC0];
  *&v8[OBJC_IVAR___SBFolder_coalesceChangesTransaction] = 0;
  *&v8[OBJC_IVAR___SBFolder_requiredTrailingEmptyListCount] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR___SBFolder__isIconStateDirty] = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR___SBFolder_listWithNonDefaultSizedIconsGridSize;
  if (qword_1EBDBFF20 != -1)
  {
    swift_once();
  }

  *&v8[v19] = dword_1EBDC7CD4;
  *&v8[OBJC_IVAR___SBFolder_listRotatedLayoutClusterGridSizeClass] = @"SBHIconGridSizeClassDefault";
  v8[OBJC_IVAR___SBFolder_listsAllowRotatedLayout] = 0;
  v8[OBJC_IVAR___SBFolder_listsAllowIndependentRotatedLayout] = 1;
  v20 = OBJC_IVAR___SBFolder_listAllowedGridSizeClasses;
  v21 = objc_opt_self();
  v22 = @"SBHIconGridSizeClassDefault";
  *&v8[v20] = [v21 gridSizeClassSetForAllGridSizeClasses];
  *&v8[OBJC_IVAR___SBFolder_listsFixedIconLocationBehavior] = 0;
  *&v8[OBJC_IVAR___SBFolder_listsIconDisplacementBehavior] = 0;
  *&v8[OBJC_IVAR___SBFolder_listsIconLayoutBehavior] = 0;
  *&v8[OBJC_IVAR___SBFolder_rotatedIconGridSizeClassSizes] = 0;
  *&v8[OBJC_IVAR___SBFolder_gridSizeClassDomain] = 0;
  *&v8[OBJC_IVAR___SBFolder_maxListCount] = a5;
  *&v8[OBJC_IVAR___SBFolder_listGridSize] = a6;
  [a7 copy];
  sub_1BEE4741C();
  swift_unknownObjectRelease();
  sub_1BEB20D28(0, &qword_1EBDBFF78);
  swift_dynamicCast();
  *&v8[OBJC_IVAR___SBFolder_iconGridSizeClassSizes] = v37;
  if (a2)
  {
    v23 = v33;
  }

  else
  {
    sub_1BEE468BC();
    v23 = sub_1BEE468AC();
    a2 = v24;
    (*(v31 + 8))(v15, v32);
  }

  v25 = &v8[OBJC_IVAR___SBFolder_uniqueIdentifier];
  *v25 = v23;
  v25[1] = a2;
  v26 = v35;
  *v17 = v34;
  v17[1] = v26;

  v27 = [v21 gridSizeClassSetForAllGridSizeClasses];
  v28 = *&v8[v20];
  *&v8[v20] = v27;

  v36.receiver = v8;
  v36.super_class = SBFolder;
  v29 = objc_msgSendSuper2(&v36, sel_init);

  [v29 markIconStateClean];
  return v29;
}

void sub_1BEDD47AC(id a1, char a2)
{
  swift_unknownObjectWeakInit();
  v4 = v2 + OBJC_IVAR___SBFolder_defaultDisplayName;
  *v4 = 0;
  v4[1] = 0;
  v5 = (v2 + OBJC_IVAR___SBFolder_displayName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v64 = OBJC_IVAR___SBFolder__isCancelable;
  *(v2 + OBJC_IVAR___SBFolder__isCancelable) = 0;
  v6 = OBJC_IVAR___SBFolder_folderObservers;
  *(v2 + v6) = [objc_opt_self() weakObjectsHashTable];
  *(v2 + OBJC_IVAR___SBFolder__lists) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR___SBFolder_coalesceChangesTransaction) = 0;
  v62 = OBJC_IVAR___SBFolder_requiredTrailingEmptyListCount;
  *(v2 + OBJC_IVAR___SBFolder_requiredTrailingEmptyListCount) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR___SBFolder__isIconStateDirty) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR___SBFolder_listWithNonDefaultSizedIconsGridSize;
  if (qword_1EBDBFF20 != -1)
  {
LABEL_23:
    swift_once();
  }

  *&v7[v2] = dword_1EBDC7CD4;
  v8 = OBJC_IVAR___SBFolder_listRotatedLayoutClusterGridSizeClass;
  *(v2 + OBJC_IVAR___SBFolder_listRotatedLayoutClusterGridSizeClass) = @"SBHIconGridSizeClassDefault";
  v58 = OBJC_IVAR___SBFolder_listsAllowRotatedLayout;
  *(v2 + OBJC_IVAR___SBFolder_listsAllowRotatedLayout) = 0;
  v60 = OBJC_IVAR___SBFolder_listsAllowIndependentRotatedLayout;
  *(v2 + OBJC_IVAR___SBFolder_listsAllowIndependentRotatedLayout) = 1;
  v9 = OBJC_IVAR___SBFolder_listAllowedGridSizeClasses;
  v10 = objc_opt_self();
  v11 = @"SBHIconGridSizeClassDefault";
  *(v2 + v9) = [v10 gridSizeClassSetForAllGridSizeClasses];
  v12 = OBJC_IVAR___SBFolder_listsFixedIconLocationBehavior;
  *(v2 + OBJC_IVAR___SBFolder_listsFixedIconLocationBehavior) = 0;
  v54 = OBJC_IVAR___SBFolder_listsIconDisplacementBehavior;
  *(v2 + OBJC_IVAR___SBFolder_listsIconDisplacementBehavior) = 0;
  v55 = OBJC_IVAR___SBFolder_listsIconLayoutBehavior;
  *(v2 + OBJC_IVAR___SBFolder_listsIconLayoutBehavior) = 0;
  *(v2 + OBJC_IVAR___SBFolder_rotatedIconGridSizeClassSizes) = 0;
  v13 = OBJC_IVAR___SBFolder_gridSizeClassDomain;
  *(v2 + OBJC_IVAR___SBFolder_gridSizeClassDomain) = 0;
  v14 = [a1 maxListCount];
  *(v2 + OBJC_IVAR___SBFolder_maxListCount) = v14;
  v15 = [a1 listGridSize];
  *(v2 + OBJC_IVAR___SBFolder_listGridSize) = v15;
  *&v7[v2] = [a1 listWithNonDefaultSizedIconsGridSize];
  v16 = [a1 iconGridSizeClassSizes];
  [v16 copy];

  sub_1BEE4741C();
  swift_unknownObjectRelease();
  sub_1BEB20D28(0, &qword_1EBDBFF78);
  swift_dynamicCast();
  *(v2 + OBJC_IVAR___SBFolder_iconGridSizeClassSizes) = v69;
  v17 = [a1 uniqueIdentifier];
  v18 = sub_1BEE4708C();
  v57 = a1;
  v20 = v19;

  v21 = (v2 + OBJC_IVAR___SBFolder_uniqueIdentifier);
  *v21 = v18;
  v21[1] = v20;
  v22 = [v57 displayName];
  v23 = sub_1BEE4708C();
  v25 = v24;

  *v5 = v23;
  v5[1] = v25;
  v26 = v57;

  v27 = [v57 defaultDisplayName];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1BEE4708C();
    v31 = v30;

    v26 = v57;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  *v4 = v29;
  v4[1] = v31;

  v32 = [v26 listAllowedGridSizeClasses];
  v33 = *(v2 + v9);
  *(v2 + v9) = v32;

  v34 = [v26 listRotatedLayoutClusterGridSizeClass];
  v35 = *(v2 + v8);
  *(v2 + v8) = v34;

  *(v2 + v58) = [v26 listsAllowRotatedLayout];
  *(v2 + v60) = [v26 listsAllowIndependentRotatedLayout];
  *(v2 + v12) = [v26 listsFixedIconLocationBehavior];
  *(v2 + v54) = [v26 listsIconDisplacementBehavior];
  *(v2 + v55) = [v26 listsIconLayoutBehavior];
  *(v2 + v64) = *(v26 + OBJC_IVAR___SBFolder__isCancelable);
  *(v62 + v2) = [v26 requiredTrailingEmptyListCount];
  v36 = [v26 badgeBehaviorProvider];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v37 = [v26 gridSizeClassDomain];
  v38 = *(v2 + v13);
  *(v2 + v13) = v37;

  v68.receiver = v2;
  v68.super_class = SBFolder;
  v39 = objc_msgSendSuper2(&v68, sel_init);
  v40 = v39;
  v41 = a2;
  if ((a2 & 2) != 0)
  {
    v53 = v39;
LABEL_26:
    [v40 markIconStateClean];

    return;
  }

  v42 = v26;
  a1 = v39;
  [a1 listModelClass];
  swift_getObjCClassMetadata();
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  swift_dynamicCastMetatype();
  v43 = [v42 lists];
  v44 = sub_1BEE471AC();

  if (v44 >> 62)
  {
    v45 = sub_1BEE474CC();
    if (v45)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v45)
  {
LABEL_25:

    v26 = v57;
    goto LABEL_26;
  }

LABEL_8:
  if (v45 >= 1)
  {
    v56 = v40;
    v46 = 0;
    v47 = OBJC_IVAR___SBFolder__lists;
    v64 = v44 & 0xC000000000000001;
    v62 = v66;
    v59 = v44;
    v61 = v45;
    while (1)
    {
      if (v64)
      {
        v7 = MEMORY[0x1BFB4EA90](v46, v44);
        if ((v41 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v7 = *(v44 + 8 * v46 + 32);
        if ((v41 & 4) != 0)
        {
LABEL_16:
          if ([v7 isHidden])
          {
            goto LABEL_11;
          }
        }
      }

      v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIconListModel:v7 copyLeafIcons:v41 & 1];
      [v2 _changeFolderDuringCopy_];
      v48 = [a1 rootFolder];
      v4 = swift_allocObject();
      v4[2] = v48;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_1BEDFBF2C;
      *(v49 + 24) = v4;
      v66[2] = sub_1BEDFBF74;
      v67 = v49;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v66[0] = sub_1BEB31DD8;
      v66[1] = &block_descriptor_817;
      v50 = _Block_copy(aBlock);
      v5 = v67;
      v51 = v48;

      [v2 enumerateIconsWithOptions:1 usingBlock:v50];

      _Block_release(v50);
      LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

      if (v50)
      {
        __break(1u);
        goto LABEL_23;
      }

      swift_beginAccess();
      v52 = v2;
      MEMORY[0x1BFB4E650]();
      if (*((*(a1 + v47) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v47) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BEE471BC();
      }

      sub_1BEE471DC();
      swift_endAccess();
      sub_1BEDD8550(v52, 1uLL);
      [a1 markIconStateDirty];

      v7 = v52;
      v41 = a2;
      v44 = v59;
      v45 = v61;
LABEL_11:
      ++v46;

      if (v45 == v46)
      {

        v40 = v56;
        v26 = v57;
        goto LABEL_26;
      }
    }
  }

  __break(1u);
}

void sub_1BEDD5240(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR___SBFolder_displayName] == a1 && *&v2[OBJC_IVAR___SBFolder_displayName + 8] == a2;
  if (v3 || (sub_1BEE4770C() & 1) != 0)
  {
    return;
  }

  [v2 setDefaultDisplayName_];
  [v2 markIconStateDirty];
  v4 = [v2 icon];
  [v4 updateLabel];

  v5 = [*&v2[OBJC_IVAR___SBFolder_folderObservers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
  v6 = sub_1BEE471AC();

  if (v6 >> 62)
  {
    v7 = sub_1BEE474CC();
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_9:
      if (v7 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1BFB4EA90](i, v6);
        }

        else
        {
          v9 = *(v6 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v9 respondsToSelector_])
        {
          [v9 folderDisplayNameDidChange_];
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1BEDD5488(char a1)
{
  v2 = *(v1 + OBJC_IVAR___SBFolder__isCancelable);
  *(v1 + OBJC_IVAR___SBFolder__isCancelable) = a1;
  if (v2 == (a1 & 1))
  {
    return;
  }

  v3 = [*(v1 + OBJC_IVAR___SBFolder_folderObservers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
  v4 = sub_1BEE471AC();

  if (v4 >> 62)
  {
    v5 = sub_1BEE474CC();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      if (v5 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1BFB4EA90](i, v4);
        }

        else
        {
          v7 = *(v4 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v7 respondsToSelector_])
        {
          [v7 folderCancelableDidChange_];
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1BEDD59E8(uint64_t a1, uint64_t a2)
{
  v12 = sub_1BEE467EC();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BEDFBC68;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_806;
  v7 = _Block_copy(aBlock);

  [v2 enumerateListsUsingBlock_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_1BEDD5B5C(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = [a1 uniqueIdentifier];
  v12 = sub_1BEE4708C();
  v14 = v13;

  if (v12 == a4 && v14 == a5)
  {

    goto LABEL_8;
  }

  v16 = sub_1BEE4770C();

  if (v16)
  {
LABEL_8:
    *a6 = a2;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1BEDD5C18(void *a1)
{
  v4[4] = sub_1BEDDC960;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1BEB5E290;
  v4[3] = &block_descriptor_216;
  v2 = _Block_copy(v4);

  [a1 enumerateFolderIconsUsingBlock_];
  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_1BEDD5D60(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, void **a6)
{
  v11 = [a1 uniqueIdentifier];
  v12 = sub_1BEE4708C();
  v14 = v13;

  if (v12 == a4 && v14 == a5)
  {

    goto LABEL_8;
  }

  v16 = sub_1BEE4770C();

  if (v16)
  {
LABEL_8:
    v17 = *a6;
    *a6 = a1;
    v18 = a1;

    *a3 = 1;
  }
}

id sub_1BEDD5E28()
{
  v1 = v0;
  v2 = sub_1BEE469DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = sub_1BEE4698C();
  if (!v12)
  {
LABEL_13:
    result = sub_1BEE4764C();
    __break(1u);
    return result;
  }

  v13 = v12 - 3;
  v14 = sub_1BEE4696C();
  v15 = v14;
  if (v13 < 0xFFFFFFFFFFFFFFFELL)
  {
    v16 = [v14 sb_firstIconPathComponent];

    if (v16)
    {
      sub_1BEE4697C();

      (*(v3 + 32))(v11, v9, v2);
      v17 = sub_1BEE4696C();
      v18 = [v1 iconAtIndexPath_];

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = [v19 folder];
        if (v20)
        {
          v21 = v20;
          v22 = sub_1BEE4696C();
          v23 = [v22 sb_indexPathByRemovingFirstIconPathComponent];

          sub_1BEE4697C();
          v24 = sub_1BEE4696C();
          v25 = [v21 listAtIndexPath_];

          v26 = *(v3 + 8);
          v26(v6, v2);
          v26(v11, v2);
          return v25;
        }

        (*(v3 + 8))(v11, v2);
      }

      else
      {

        (*(v3 + 8))(v11, v2);
      }
    }

    goto LABEL_13;
  }

  v28 = [v14 sbListIndex];

  v29 = [v1 listAtIndex_];

  return v29;
}

uint64_t sub_1BEDD62C8(void *a1)
{
  v11 = sub_1BEE467EC();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = &v11;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1BEDFBC1C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_786;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v1 enumerateListsUsingBlock_];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

uint64_t sub_1BEDD6480(void *a1)
{
  v11 = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = &v11;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1BEDFBC14;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_776;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v1 enumerateListsWithOptions:1 usingBlock:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

void sub_1BEDD65E8(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, void **a5)
{
  if ([a1 directlyContainsIcon_])
  {
    v8 = *a5;
    *a5 = a1;
    v9 = a1;

    *a3 = 1;
  }
}

id sub_1BEDD6818(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_1BEE469DC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v38 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v38 - v13;
  result = sub_1BEE4698C();
  if (result)
  {
    if (result == 2)
    {
      v18 = sub_1BEE4696C();
      v19 = [v18 sbListIndex];

      result = [v3 isValidListIndex_];
      if (result)
      {
        v20 = [v3 listAtIndex_];
        v21 = [v20 numberOfIcons];
        v22 = sub_1BEE4696C();
        v23 = [v22 sbIconIndex];

        if (a2)
        {
          return (v21 >= v23);
        }

        else
        {
          return (v23 < v21);
        }
      }
    }

    else
    {
      if (result == 1)
      {
        v16 = sub_1BEE4696C();
        v17 = [v16 sbListIndex];

        return [v3 isValidListIndex_];
      }

      v24 = sub_1BEE4696C();
      v25 = [v24 sb_firstIconPathComponent];

      if (v25)
      {
        sub_1BEE4697C();

        (*(v6 + 32))(v14, v12, v5);
        v26 = sub_1BEE4696C();
        v27 = [v3 isValidIndexPath_];

        if (v27)
        {
          v28 = sub_1BEE4696C();
          v29 = [v3 iconAtIndexPath_];

          v38[1] = v29;
          sub_1BEB20D28(0, &qword_1EBDBFEA0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7A78);
          if (swift_dynamicCast())
          {
            v30 = v38[0];
            if (v38[0])
            {
              v31 = [v38[0] folder];
              if (v31)
              {
                v32 = v31;
                v33 = sub_1BEE4696C();
                v34 = [v33 sb_indexPathByRemovingFirstIconPathComponent];

                sub_1BEE4697C();
                v35 = sub_1BEE4696C();
                v36 = [v32 isValidIndexPath:v35 forInsertion:a2 & 1];

                v37 = *(v6 + 8);
                v37(v9, v5);
                v37(v14, v5);
                return v36;
              }
            }
          }
        }

        (*(v6 + 8))(v14, v5);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1BEDD6D50()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_1BEE474CC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB4EA90](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = [v6 isHidden];

    v9 = v8 ^ 1;
    ++v4;
    v10 = __OFADD__(v5, v9);
    v5 += v9;
    if (v10)
    {
      goto LABEL_16;
    }
  }

  return v5;
}

uint64_t sub_1BEDD6EBC()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_1BEE474CC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB4EA90](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = [v6 isHidden];

    v9 = __OFADD__(v5, v8);
    v5 += v8;
    ++v4;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  return v5;
}

uint64_t sub_1BEDD7024()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB4EA90](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 isHidden];

      if ((v9 & 1) == 0)
      {
        v10 = 1;
        if (v5 > 0)
        {
          goto LABEL_17;
        }

        v5 = 1;
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v10 = 0;
LABEL_17:

  return v10;
}

unint64_t sub_1BEDD71A8()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
  {
    v4 = v2 & 0xC000000000000001;
    v5 = v2 + 32;
    while (1)
    {
      v6 = __OFSUB__(i--, 1);
      if (v6)
      {
        break;
      }

      if (v4)
      {
        v7 = MEMORY[0x1BFB4EA90](i, v2);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v7 = *(v5 + 8 * i);
      }

      v8 = v7;
      if ([v7 isHidden])
      {
      }

      else
      {
        v9 = [v8 isEmpty];

        if ((v9 & 1) == 0)
        {
          if (!i)
          {
            goto LABEL_27;
          }

          while (1)
          {
            v6 = __OFSUB__(i--, 1);
            if (v6)
            {
              goto LABEL_28;
            }

            if (v4)
            {
              v10 = MEMORY[0x1BFB4EA90](i, v2);
            }

            else
            {
              if ((i & 0x8000000000000000) != 0)
              {
                goto LABEL_29;
              }

              if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v10 = *(v5 + 8 * i);
            }

            v11 = v10;
            if ([v10 isHidden])
            {
            }

            else
            {
              v12 = [v11 isEmpty];

              if ((v12 & 1) == 0)
              {
                i = 1;
                goto LABEL_27;
              }
            }

            if (!i)
            {
              goto LABEL_27;
            }
          }
        }
      }

      if (!i)
      {
        goto LABEL_27;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_27:

  return i;
}

id sub_1BEDD7394()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB4EA90](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 isHidden];

      if ((v8 & 1) == 0)
      {
        ++v4;
        if (v7 != i)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

uint64_t sub_1BEDD74CC(void *a1)
{
  if (![a1 isHidden])
  {
    v3 = [v1 lists];
    sub_1BEB20D28(0, &qword_1EBDBFF10);
    v4 = sub_1BEE471AC();

    if (v4 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFB4EA90](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v11 = [v8 isHidden];

        if ((v11 & 1) == 0)
        {
          if (v9 == a1)
          {
            goto LABEL_16;
          }

          if (__OFADD__(v7++, 1))
          {
            __break(1u);
LABEL_16:

            return v7;
          }
        }

        ++v6;
        if (v10 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
  }

  return sub_1BEE467EC();
}

uint64_t sub_1BEDD76B0(void *a1)
{
  if ([a1 isHidden])
  {
    v3 = [v1 lists];
    sub_1BEB20D28(0, &qword_1EBDBFF10);
    v4 = sub_1BEE471AC();

    if (v4 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFB4EA90](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v11 = [v8 isHidden];

        if (v11)
        {
          if (v9 == a1)
          {
            goto LABEL_16;
          }

          if (__OFADD__(v7++, 1))
          {
            __break(1u);
LABEL_16:

            return v7;
          }
        }

        ++v6;
        if (v10 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
  }

  return sub_1BEE467EC();
}

id sub_1BEDD78BC(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  v9 = [v8 *a4];
  v10 = [v8 *a5];

  return v10;
}

uint64_t sub_1BEDD792C(uint64_t a1)
{
  v3 = [v1 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v4 = sub_1BEE471AC();

  if (v4 >> 62)
  {
LABEL_20:
    v5 = sub_1BEE474CC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = 0;
  while (2)
  {
    if (v7 == v5)
    {
LABEL_21:
      sub_1BEE475AC();

      v13 = sub_1BEE476EC();
      MEMORY[0x1BFB4E5A0](v13);

      result = sub_1BEE4764C();
      __break(1u);
    }

    else
    {
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFB4EA90](v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        if (![v8 isHidden])
        {
          break;
        }

        ++v7;
        if (v10 == v5)
        {
          goto LABEL_21;
        }
      }

      if (v6 != a1)
      {

        ++v7;
        if (!__OFADD__(v6++, 1))
        {
          continue;
        }

        __break(1u);
      }

      return v9;
    }

    return result;
  }
}

void sub_1BEDD7B70(char *a1)
{
  v2 = a1;
  if ([v1 isValidListIndex_])
  {
    v3 = [v1 listCount];
    sub_1BEE467EC();
    if (v3 > v2)
    {
      while (v3 - 1 != v2)
      {
        if ((v2 + 1) >= v3)
        {
          __break(1u);
          goto LABEL_9;
        }

        v4 = [v1 listAtIndex_];
        v5 = [v4 isHidden];

        ++v2;
        if ((v5 & 1) == 0)
        {
          return;
        }
      }
    }
  }

  else
  {
LABEL_9:
    __break(1u);
  }
}

void sub_1BEDD7C8C(uint64_t a1)
{
  v2 = a1;
  if (![v1 isValidListIndex_])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = [v1 listCount];
  sub_1BEE467EC();
  if (v3 <= v2)
  {
    return;
  }

  if (v2 < 0)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v4 = 0;
  while (v2)
  {
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    if (__OFSUB__(v2--, 1))
    {
      goto LABEL_11;
    }

    v6 = [v1 listAtIndex_];
    v7 = [v6 isHidden];

    ++v4;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }
}

uint64_t sub_1BEDD7DE0()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_1BEE474CC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB4EA90](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = [v5 isHidden];

    if ((v7 & 1) == 0)
    {

      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_18;
    }
  }

  return sub_1BEE467EC();
}

uint64_t sub_1BEDD7F60()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    if (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB4EA90](v3, v2);
      goto LABEL_9;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      v3 = sub_1BEE474CC();
    }

    else
    {
      v5 = *(v2 + 32 + 8 * v3);
LABEL_9:
      v6 = v5;
      v7 = [v5 isHidden];

      if ((v7 & 1) == 0)
      {

        return v3;
      }
    }
  }

  return sub_1BEE467EC();
}

id sub_1BEDD80C0(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 *a3];
  if ([v4 isValidListIndex_])
  {
    v6 = [v4 listAtIndex_];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1BEDD8264(uint64_t (*a1)(char *, char *))
{
  v29 = a1;
  v30 = sub_1BEE4689C();
  v2 = *(v30 - 8);
  v3 = MEMORY[0x1EEE9AC00](v30);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  v7 = [v1 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v8 = sub_1BEE471AC();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_21:

    return;
  }

  v9 = sub_1BEE474CC();
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = v8 & 0xC000000000000001;
    v13 = (v2 + 8);
    v26 = v8;
    v27 = v9;
    v25 = v8 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        v14 = MEMORY[0x1BFB4EA90](v11, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = [v14 hiddenDate];
      if (v16)
      {
        v17 = v16;
        sub_1BEE4688C();

        if (v10)
        {
          v18 = v10;
          v19 = [v18 hiddenDate];
          if (v19)
          {
            v20 = v19;
            v21 = v28;
            sub_1BEE4688C();

            LOBYTE(v20) = v29(v6, v21);
            v22 = *v13;
            v23 = v21;
            v24 = v30;
            (*v13)(v23, v30);
            v22(v6, v24);
            if (v20)
            {

              v10 = v15;
            }

            else
            {
            }

            v8 = v26;
            v9 = v27;
            v12 = v25;
          }

          else
          {
            (*v13)(v6, v30);

            v10 = v15;
          }
        }

        else
        {
          (*v13)(v6, v30);
          v10 = v15;
        }
      }

      else
      {
      }

      ++v11;
    }

    while (v9 != v11);
    goto LABEL_21;
  }

  __break(1u);
}

void sub_1BEDD8550(void *a1, unint64_t a2)
{
  [a1 setDelegate_];
  [a1 addListObserver_];
  SBTreeNodeSetParent(a1, v2);
  v5 = [v2 gridSizeClassDomain];
  [a1 setGridSizeClassDomain_];

  v6 = [v2 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v7 = sub_1BEE471AC();

  v21[2] = aBlock;
  aBlock[0] = a1;
  LOBYTE(v6) = sub_1BEB52D94(sub_1BEDFBF34, v21, v7);

  if (v6)
  {
    sub_1BEDD8988(a1);
    v8 = [v2 listWithNonDefaultSizedIconsGridSize];
    v9 = v8;
    if (v8 >= 0x10000)
    {
      if (v8)
      {
        if ([a1 directlyContainsNonDefaultSizeClassIcon])
        {
          v10 = [a1 changeGridSize:v9 options:0];
          if (v10)
          {
            v11 = v10;
            sub_1BEB20D28(0, &qword_1EBDBFEA0);
            v12 = sub_1BEE471AC();

            sub_1BEDD8B4C(v12, a1, 0, 0);
          }
        }
      }
    }

    [a1 setGridSizeWhenDirectlyContainingNonDefaultSizedIcons_];
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1BEDFBC0C;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_700;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  [a1 enumerateIconsUsingBlock_];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    if ((a2 & 1) == 0)
    {

      return;
    }

    v17 = [*&v16[OBJC_IVAR___SBFolder_folderObservers] allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
    a2 = sub_1BEE471AC();

    if (!(a2 >> 62))
    {
      v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }
  }

  v18 = sub_1BEE474CC();
  if (!v18)
  {
    goto LABEL_23;
  }

LABEL_12:
  if (v18 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v18; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1BFB4EA90](i, a2);
    }

    else
    {
      v20 = *(a2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if ([v20 respondsToSelector_])
    {
      [v20 folder:v16 didAddList:a1];
    }

    swift_unknownObjectRelease();
  }

LABEL_23:
}

void sub_1BEDD8988(void *a1)
{
  v3 = [v1 gridSizeClassDomain];
  [a1 setGridSizeClassDomain_];

  v4 = [v1 listRotatedLayoutClusterGridSizeClass];
  [a1 setRotatedLayoutClusterGridSizeClass_];

  [a1 setAllowsRotatedLayout_];
  [a1 setAllowsIndependentRotatedLayout_];
  v5 = [v1 listAllowedGridSizeClasses];
  [a1 setAllowedGridSizeClasses_];

  [a1 setFixedIconLocationBehavior_];
  [a1 setIconDisplacementBehavior_];
  [a1 setIconLayoutBehavior_];
  v6 = [v1 rotatedIconGridSizeClassSizes];
  [a1 setRotatedIconGridSizeClassSizes_];
}

id sub_1BEDD8B4C(unint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  if (!a1)
  {
    return 0;
  }

  v102 = v4;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    result = [(SEL *)v4 lastVisibleList];
    if (!result)
    {
      result = [(SEL *)v4 lastList];
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    v9 = result;
  }

  v11 = a2;

  v12 = &selRef_fetchURL_;
  v13 = v9;
  v14 = [v13 folder];
  v99 = v13;

  v94 = a1;
  v95 = a3;
  if (v14)
  {
    type metadata accessor for SBFolder(v15);
    LOBYTE(v16) = sub_1BEE473CC();
    if ((v16 & 1) == 0)
    {
      goto LABEL_60;
    }

    v17 = a1;
LABEL_10:

    v98 = v16 ^ 1;
    v18 = v17;
  }

  else
  {
    v98 = 0;
    v18 = a1;
  }

  while (1)
  {
LABEL_12:
    v12 = v102;
    v91 = [(SEL *)v102 indexOfList:v99];
    v101 = [swift_getObjCClassFromMetadata() listModelMutationOptionsForFolderMutationOptions_] | 1;
    if ((a4 & 2) == 0)
    {
      goto LABEL_172;
    }

    v103 = a1;
    if (!(a1 >> 62))
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v95;
      if (!v19)
      {
        break;
      }

      goto LABEL_15;
    }

LABEL_92:
    v19 = sub_1BEE474CC();
    v16 = v95;
    if (!v19)
    {
      break;
    }

LABEL_15:
    if (v19 < 1)
    {
      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    v20 = a1 & 0xC000000000000001;

    v5 = 0;
    v14 = 0x1E809A000;
    v92 = a1 & 0xC000000000000001;
    v93 = v19;
    while (1)
    {
      v21 = v20 ? MEMORY[0x1BFB4EA90](v5, a1) : *(a1 + 8 * v5 + 32);
      v22 = v21;
      v23 = [v99 *(v14 + 208)];
      if (v23 != sub_1BEE467EC())
      {
        break;
      }

LABEL_18:
      v5 = (v5 + 1);

      if (v19 == v5)
      {
        v18 = v103;
        goto LABEL_94;
      }
    }

    v24 = v22;
    v12 = sub_1BEDF8D50(&v103);

    a1 = v103;
    v18 = v103 >> 62;
    if (v103 >> 62)
    {
      v14 = sub_1BEE474CC();
      v25 = v14 - v12;
      if (v14 < v12)
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }
    }

    else
    {
      v14 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v14 - v12;
      if (v14 < v12)
      {
        goto LABEL_86;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_87;
    }

    if (v18)
    {
      v26 = sub_1BEE474CC();
    }

    else
    {
      v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v26 < v14)
    {
      goto LABEL_88;
    }

    v27 = -v25;
    if (__OFSUB__(0, v25))
    {
      goto LABEL_89;
    }

    if (v18)
    {
      v28 = sub_1BEE474CC();
    }

    else
    {
      v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v28 - v25;
    if (__OFADD__(v28, v27))
    {
      goto LABEL_90;
    }

    v96 = v24;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v18)
      {
        v18 = a1 & 0xFFFFFFFFFFFFFF8;
        if (v29 <= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

LABEL_40:
      sub_1BEE474CC();
      goto LABEL_41;
    }

    if (v18)
    {
      goto LABEL_40;
    }

LABEL_41:
    a1 = sub_1BEE475DC();
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_42:
    v16 = v18 + 32;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    swift_arrayDestroy();
    if (!v25)
    {
      goto LABEL_53;
    }

    a3 = a1 >> 62;
    if (!(a1 >> 62))
    {
      v30 = *(v18 + 16);
      v31 = v30 - v14;
      if (__OFSUB__(v30, v14))
      {
        goto LABEL_59;
      }

LABEL_45:
      v32 = (v16 + 8 * v14);
      if (v14 == v12 && v18 + 32 + 8 * v12 < v32 + 8 * v31)
      {
        if (!a3)
        {
          goto LABEL_48;
        }

LABEL_50:
        v33 = sub_1BEE474CC();
      }

      else
      {
        memmove((v18 + 32 + 8 * v12), v32, 8 * v31);
        if (a3)
        {
          goto LABEL_50;
        }

LABEL_48:
        v33 = *(v18 + 16);
      }

      if (__OFADD__(v33, v27))
      {
        goto LABEL_91;
      }

      *(v18 + 16) = v33 + v27;
LABEL_53:
      v103 = a1;
      v34 = [v99 addIcon:v96 options:v101 & 0xFFFFFFFFFFFFFE73 | 8];
      if (v34)
      {
        v35 = v34;
        v36 = sub_1BEE471AC();

        sub_1BEE34FD0(v36);
      }

      v12 = v102;
      a1 = v94;
      v16 = v95;
      v20 = v92;
      v19 = v93;
      v14 = &selRef_beginDisablingWidgetHitTestingForReason_;
      goto LABEL_18;
    }

    v37 = sub_1BEE474CC();
    v31 = v37 - v14;
    if (!__OFSUB__(v37, v14))
    {
      goto LABEL_45;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v5 = &selRef_hasFixedIconLocations;
    v38 = [v14 icon];
    if (!v38)
    {
      v18 = v94;
LABEL_81:

      return v18;
    }

    a1 = v38;
    v18 = sub_1BEDD8B4C(v94, v99, a3, a4);

    if (!v18)
    {
LABEL_82:

      return 0;
    }

    if (!(v18 >> 62))
    {
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

LABEL_234:

      return 0;
    }

LABEL_233:
    if (!sub_1BEE474CC())
    {
      goto LABEL_234;
    }

LABEL_64:
    v39 = [v14 parentFolder];
    if (!v39)
    {
LABEL_83:

      return v18;
    }

    v40 = v39;
    v41 = [v39 listContainingIcon_];

    if (!v41)
    {
      return v18;
    }

    v42 = v41;
    v14 = [v42 *(v12 + 1256)];
    v99 = v42;

    if (v14)
    {
      v17 = v18;
      a1 = v94;
      while ((sub_1BEE473CC() & 1) == 0)
      {
        v43 = [v14 v5[134]];
        if (!v43)
        {
          v18 = v17;
          goto LABEL_81;
        }

        a1 = v43;
        v18 = sub_1BEDD8B4C(v17, v99, v95, a4);

        if (!v18)
        {
          goto LABEL_82;
        }

        if (v18 >> 62)
        {
          if (!sub_1BEE474CC())
          {
            goto LABEL_234;
          }
        }

        else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_234;
        }

        v44 = [v14 parentFolder];
        if (!v44)
        {
          goto LABEL_83;
        }

        v45 = v44;
        v46 = [v44 listContainingIcon_];

        if (!v46)
        {
          return v18;
        }

        v47 = v46;
        v14 = [v47 *(v12 + 1256)];
        v99 = v47;

        v98 = 1;
        v17 = v18;
        a1 = v94;
        if (!v14)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_10;
    }

    v98 = 1;
    a1 = v94;
  }

  v18 = a1;
LABEL_94:
  v48 = [v12 nextVisibleListIndexAfterIndex_];
  if ([v12 isValidListIndex_] && objc_msgSend(v12, sel_isTrailingEmptyListIndex_, v48))
  {
    v48 = sub_1BEE467EC();
  }

  if (![v12 isValidListIndex_])
  {
    a1 = 0;
    goto LABEL_120;
  }

  a1 = [v12 listAtIndex_];
  if (!a1)
  {
    goto LABEL_120;
  }

LABEL_99:
  if (v18 >> 62)
  {
    v14 = sub_1BEE474CC();
    if (v14)
    {
      goto LABEL_101;
    }

LABEL_120:
    if (v18 >> 62)
    {
      goto LABEL_219;
    }

    goto LABEL_121;
  }

  v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_120;
  }

LABEL_101:
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v49 = a1;
  v50 = sub_1BEE4719C();
  v51 = [v49 allowsAddingIcons_];

  if ((v51 & 1) == 0 && [v49 overflowSlotCount] < 1)
  {
    a1 = v49;
LABEL_218:

    if (v18 >> 62)
    {
LABEL_219:
      if (!sub_1BEE474CC())
      {
        goto LABEL_171;
      }

      goto LABEL_122;
    }

LABEL_121:
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_171;
    }

LABEL_122:
    v97 = a1;
    v5 = &selRef_isEligibleForSimpleMutationsWithGridCellInfoOptions_mutationOptions_;
    while (1)
    {
      if (([v12 isValidListIndex_] & 1) == 0)
      {
        v61 = [v12 lists];
        sub_1BEB20D28(0, &qword_1EBDBFF10);
        v50 = sub_1BEE471AC();

        if (v50 >> 62)
        {
          a1 = sub_1BEE474CC();
          if (a1)
          {
LABEL_126:
            v14 = v50 & 0xC000000000000001;
            v12 = v50 + 32;
            while (1)
            {
              v62 = __OFSUB__(a1--, 1);
              if (v62)
              {
                goto LABEL_222;
              }

              if (v14)
              {
                v63 = MEMORY[0x1BFB4EA90](a1, v50);
              }

              else
              {
                if ((a1 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_225:
                  __break(1u);
                  goto LABEL_226;
                }

                if (a1 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_225;
                }

                v63 = *(v12 + 8 * a1);
              }

              v64 = v63;
              if ([v63 isHidden])
              {

                if (!a1)
                {
                  break;
                }
              }

              else
              {
                v65 = [v64 isEmpty];

                if (!v65)
                {

                  goto LABEL_139;
                }

                if (!a1)
                {
                  break;
                }
              }
            }
          }
        }

        else
        {
          a1 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1)
          {
            goto LABEL_126;
          }
        }

        a1 = sub_1BEE467EC();
LABEL_139:
        v48 = (a1 + 1);
        v12 = v102;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_227;
        }

        if (([(SEL *)v102 isValidListIndex:a1 + 1]& 1) == 0)
        {
          v48 = [(SEL *)v102 listCount];
        }
      }

      if (v48 == [v12 listCount])
      {
        break;
      }

      v66 = [v12 insertEmptyListAtIndex_];
      if (v66)
      {
        goto LABEL_146;
      }

      a1 = [v12 listAtIndex_];
      [v12 removeLeastRecentlyHiddenList];
      v16 = [v12 indexOfList_];
      if (v16 == sub_1BEE467EC())
      {
        v71 = [v12 addEmptyList];
      }

      else
      {
        v71 = [v12 insertEmptyListAtIndex_];
      }

      v72 = v71;
      if (v72)
      {
        v50 = v72;
      }

      else
      {
        if ([v12 trailingEmptyListCount] < 1)
        {
          goto LABEL_223;
        }

        v73 = [v12 listCount];
        v74 = v73 - 1;
        if (__OFSUB__(v73, 1))
        {
          goto LABEL_232;
        }

        v50 = [v12 listAtIndex_];
        [v12 moveListAtIndex:v74 toIndex:v48];

        if (!v50)
        {
          goto LABEL_169;
        }
      }

LABEL_147:
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v67 = sub_1BEE4719C();
      v14 = [v50 insertIcons:v67 atIndex:0 options:v101];

      if (v14)
      {
        v68 = sub_1BEE471AC();

        v70 = sub_1BEDE1C64(v69, v18);

        if (v70)
        {

          [v12 removeList_];
          a1 = v97;
          goto LABEL_170;
        }
      }

      else
      {
        v68 = MEMORY[0x1E69E7CC0];
      }

      [v50 setOverflowSlotCount_];

      v62 = __OFADD__(v48++, 1);
      if (v62)
      {
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        v90 = sub_1BEE474CC();
        goto LABEL_212;
      }

      if (v68 >> 62)
      {
        v18 = v68;
        if (!sub_1BEE474CC())
        {
LABEL_168:
          v18 = v68;
LABEL_169:
          a1 = v97;
          goto LABEL_171;
        }
      }

      else
      {
        v18 = v68;
        if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_168;
        }
      }
    }

    v66 = [v12 addEmptyListRemovingLeastRecentlyHiddenListIfNecessary];
    if (!v66)
    {
      goto LABEL_169;
    }

LABEL_146:
    v50 = v66;
    goto LABEL_147;
  }

  v52 = [v49 overflowSlotCount];
  if (v14 < 1)
  {
    goto LABEL_228;
  }

  v95 = v52;
  v97 = v49;
  v53 = 0;
  v54 = 0;
  v12 = v18 & 0xC000000000000001;
  while (1)
  {
    v55 = v12 ? MEMORY[0x1BFB4EA90](v54, v18) : *(v18 + 8 * v54 + 32);
    v56 = v55;
    v57 = [(SEL *)v102 iconGridSizeClassSizes];
    a1 = [v56 gridSizeClass];
    v58 = [v57 gridSizeAreaForGridSizeClass_];

    v59 = __CFADD__(v53, v58);
    v53 += v58;
    if (v59)
    {
      break;
    }

    if (v14 == ++v54)
    {
      v60 = sub_1BEE4719C();

      v50 = [v97 insertIcons:v60 atIndex:0 options:v101];

      if (v50)
      {
        v18 = sub_1BEE471AC();
      }

      else
      {
        v18 = MEMORY[0x1E69E7CC0];
      }

      v12 = v102;
      if (__OFADD__(v95, v53))
      {
        goto LABEL_229;
      }

      v49 = v97;
      [v97 setOverflowSlotCount_];
      v48 = [(SEL *)v102 nextVisibleListIndexAfterIndex:v48];
      if (![(SEL *)v102 isValidListIndex:v48])
      {

        a1 = 0;
        goto LABEL_218;
      }

      a1 = [(SEL *)v102 listAtIndex:v48];

      if (!a1)
      {
        goto LABEL_120;
      }

      goto LABEL_99;
    }
  }

  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  v50 = v97;
LABEL_170:

LABEL_171:
LABEL_172:
  v75 = v91;
  if ((v98 & 1) == 0)
  {
    v75 = [v12 nextVisibleListIndexAfterIndex_];
  }

  if (v75 == sub_1BEE467EC() && [v12 isExtraListIndex_])
  {
    v75 = [v12 firstVisibleListIndex];
    v98 = 1;
  }

  while (1)
  {
    if (v18 >> 62)
    {
      if (!sub_1BEE474CC())
      {
        break;
      }
    }

    else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    if (v75 == sub_1BEE467EC() || (a4 & 1) != 0)
    {
      break;
    }

    v76 = [v12 listAtIndex_];
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v77 = sub_1BEE4719C();

    if (v98)
    {
      v78 = [v76 addIcons:v77 options:v101];
    }

    else
    {
      v78 = [v76 prependIcons:v77 options:v101];
    }

    v79 = v78;

    if (v79)
    {
      v18 = sub_1BEE471AC();
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v12 = v102;
    v75 = [(SEL *)v102 nextVisibleListIndexAfterIndex:v75, v91];
  }

  v50 = v18;
  if (!(v18 >> 62))
  {
    goto LABEL_200;
  }

LABEL_199:
  for (i = sub_1BEE474CC(); i; i = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v80 = [v12 visibleListCount];
    if (v80 >= [v12 maxListCount])
    {
      if (a4)
      {
        break;
      }

LABEL_204:
      v86 = [v12 bumpedIconsFallbackList];
      if (v86)
      {
        v87 = v86;
        sub_1BEB20D28(0, &qword_1EBDBFEA0);
        v88 = sub_1BEE4719C();

        v89 = [v87 addIcons:v88 options:v101];

        if (v89)
        {
          v50 = sub_1BEE471AC();

          v87 = v89;
        }

        else
        {
          v50 = MEMORY[0x1E69E7CC0];
        }
      }

      break;
    }

    if (a4)
    {
      v50 = v18;
      break;
    }

    v81 = [v12 addEmptyListRemovingLeastRecentlyHiddenListIfNecessary];
    if (!v81)
    {
      goto LABEL_204;
    }

    v82 = v81;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v83 = sub_1BEE4719C();

    v84 = [v82 addIcons:v83 options:v101];

    if (v84)
    {
      v50 = sub_1BEE471AC();

      v82 = v84;
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

    if (v50 >> 62)
    {
      goto LABEL_199;
    }

LABEL_200:
    ;
  }

  if (v50 >> 62)
  {
    goto LABEL_230;
  }

  v90 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_212:

  v18 = v50;
  if (!v90)
  {

    return 0;
  }

  return v18;
}

void sub_1BEDD9D70(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v11 = a1;
    v8 = [v7 folder];
    if (v8)
    {
      v9 = v8;
      [a4 didAddFolder_];

      v10 = v9;
    }

    else
    {
      v10 = v11;
    }
  }
}

unint64_t sub_1BEDD9ED8(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return [v2 markIconStateDirty];
  }

  while (v4 >= 1)
  {
    v5 = 0;
    v6 = OBJC_IVAR___SBFolder__lists;
    v17 = v3 & 0xC000000000000001;
    v16 = v3;
    while (1)
    {
      v7 = v17 ? MEMORY[0x1BFB4EA90](v5) : *(v3 + 8 * v5 + 32);
      v8 = v7;
      v9 = [v2 rootFolder];
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_1BEDFBBF4;
      *(v11 + 24) = v10;
      aBlock[4] = sub_1BEDFBF74;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BEB31DD8;
      aBlock[3] = &block_descriptor_689;
      v12 = _Block_copy(aBlock);
      v13 = v9;

      [v8 enumerateIconsWithOptions:1 usingBlock:v12];

      _Block_release(v12);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        break;
      }

      swift_beginAccess();
      v14 = v8;
      MEMORY[0x1BFB4E650]();
      if (*((*(v2 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BEE471BC();
      }

      ++v5;
      sub_1BEE471DC();
      swift_endAccess();
      sub_1BEDD8550(v14, 1uLL);

      v3 = v16;
      if (v4 == v5)
      {
        return [v2 markIconStateDirty];
      }
    }

    __break(1u);
LABEL_14:
    v15 = v3;
    result = sub_1BEE474CC();
    v3 = v15;
    v4 = result;
    if (!result)
    {
      return [v2 markIconStateDirty];
    }
  }

  __break(1u);
  return result;
}

id sub_1BEDDA1A0(void *a1)
{
  v2 = v1;
  v4 = [v2 rootFolder];
  v5 = swift_allocObject();
  v5[2] = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BEDFBF2C;
  *(v6 + 24) = v5;
  v11[4] = sub_1BEDFBF74;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BEB31DD8;
  v11[3] = &block_descriptor_766;
  v7 = _Block_copy(v11);
  v8 = v4;

  [a1 enumerateIconsWithOptions:1 usingBlock:v7];

  _Block_release(v7);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = OBJC_IVAR___SBFolder__lists;
  swift_beginAccess();
  v5 = a1;
  MEMORY[0x1BFB4E650]();
  if (*((*(v2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_1BEE471BC();
  }

  sub_1BEE471DC();
  swift_endAccess();
  sub_1BEDD8550(v5, 1uLL);
  return [v2 markIconStateDirty];
}

id sub_1BEDDA468()
{
  [v0 listModelClass];
  swift_getObjCClassMetadata();
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  swift_dynamicCastMetatype();
  v1 = [v0 listGridSize];
  v2 = [v0 iconGridSizeClassSizes];
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUniqueIdentifier:0 folder:v0 gridSize:v1 gridSizeClassSizes:v2];

  sub_1BEDD8988(v3);
  [v3 setGridSizeWhenDirectlyContainingNonDefaultSizedIcons_];
  return v3;
}

void *sub_1BEDDA6D4()
{
  v1 = v0;
  v2 = [v0 listCount];
  if (v2 >= [v1 maxListCount])
  {
    return 0;
  }

  v3 = [v1 makeNewList];
  v4 = [v1 rootFolder];
  v5 = swift_allocObject();
  v5[2] = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BEDFBF2C;
  *(v6 + 24) = v5;
  v11[4] = sub_1BEDFBF74;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BEB31DD8;
  v11[3] = &block_descriptor_755;
  v7 = _Block_copy(v11);
  v8 = v4;

  [v3 enumerateIconsWithOptions:1 usingBlock:v7];

  _Block_release(v7);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = OBJC_IVAR___SBFolder__lists;
  swift_beginAccess();
  v5 = v3;
  MEMORY[0x1BFB4E650]();
  if (*((*(v1 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_8:
    sub_1BEE471BC();
  }

  sub_1BEE471DC();
  swift_endAccess();
  sub_1BEDD8550(v5, 1uLL);
  [v1 markIconStateDirty];
  return v5;
}

uint64_t sub_1BEDDAA14(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 listCount];
  if (v4 < [v2 maxListCount])
  {
    v5 = [v2 makeNewList];
    v6 = [v2 rootFolder];
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1BEDFBF2C;
    *(v8 + 24) = v7;
    v15[4] = sub_1BEDFBF74;
    v15[5] = v8;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1BEB31DD8;
    v15[3] = &block_descriptor_744;
    v9 = _Block_copy(v15);
    v10 = v6;

    [v5 enumerateIconsWithOptions:1 usingBlock:v9];

    _Block_release(v9);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
    }

    else
    {
      v11 = OBJC_IVAR___SBFolder__lists;
      swift_beginAccess();
      v12 = *&v2[v11];
      if (!(v12 >> 62))
      {
        result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= a1)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    result = sub_1BEE474CC();
    if (result >= a1)
    {
LABEL_5:
      if ((a1 & 0x8000000000000000) == 0)
      {
        v14 = v5;
        sub_1BEE1FCC4(a1, a1, v14);
        swift_endAccess();

        sub_1BEDD8550(v14, 1uLL);
        [v2 markIconStateDirty];
        return v14;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  return 0;
}

id sub_1BEDDACE0()
{
  v1 = v0;
  v2 = [v0 listCount];
  if (v2 >= [v0 maxListCount])
  {
    return 0;
  }

  [v0 listModelClass];
  swift_getObjCClassMetadata();
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  swift_dynamicCastMetatype();
  v3 = [v0 listGridSize];
  v4 = [v0 iconGridSizeClassSizes];
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_1BEE4705C();
  v7 = [v5 initWithUniqueIdentifier:v6 folder:v1 gridSize:v3 gridSizeClassSizes:v4];

  sub_1BEDD8988(v7);
  [v7 setGridSizeWhenDirectlyContainingNonDefaultSizedIcons_];
  v8 = [v1 rootFolder];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1BEDFBF2C;
  *(v10 + 24) = v9;
  v15[4] = sub_1BEDFBF74;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1BEB31DD8;
  v15[3] = &block_descriptor_733;
  v11 = _Block_copy(v15);
  v12 = v8;

  [v7 enumerateIconsWithOptions:1 usingBlock:v11];

  _Block_release(v11);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = OBJC_IVAR___SBFolder__lists;
  swift_beginAccess();
  v7 = v7;
  MEMORY[0x1BFB4E650]();
  if (*((*(v1 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_8:
    sub_1BEE471BC();
  }

  sub_1BEE471DC();
  swift_endAccess();
  sub_1BEDD8550(v7, 1uLL);
  [v1 markIconStateDirty];
  return v7;
}

void *sub_1BEDDB04C(void *a1)
{
  v2 = v1;
  v4 = [v2 listCount];
  if (v4 >= [v2 maxListCount])
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BEE8AF50;
  *(v5 + 32) = a1;
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v6 = a1;
  v7 = sub_1BEE4719C();

  v8 = [v2 makeNewListWithIcons_];

  v9 = [v2 rootFolder];
  v10 = swift_allocObject();
  v10[2] = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BEDFBF2C;
  *(v11 + 24) = v10;
  v16[4] = sub_1BEDFBF74;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1BEB31DD8;
  v16[3] = &block_descriptor_722;
  v12 = _Block_copy(v16);
  v13 = v9;

  [v8 enumerateIconsWithOptions:1 usingBlock:v12];

  _Block_release(v12);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = OBJC_IVAR___SBFolder__lists;
  swift_beginAccess();
  v10 = v8;
  MEMORY[0x1BFB4E650]();
  if (*((*(v2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_8:
    sub_1BEE471BC();
  }

  sub_1BEE471DC();
  swift_endAccess();
  sub_1BEDD8550(v10, 1uLL);
  [v2 markIconStateDirty];
  return v10;
}

void *sub_1BEDDB3D4(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = [v2 listCount];
    if (v4 >= [v2 maxListCount])
    {
      [v2 removeLeastRecentlyHiddenList];
    }
  }

  v5 = [v2 listCount];
  if (v5 >= [v2 maxListCount])
  {
    return 0;
  }

  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v6 = sub_1BEE4719C();
  v7 = [v2 makeNewListWithIcons_];

  v8 = [v3 rootFolder];
  v9 = swift_allocObject();
  v9[2] = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1BEDFBF2C;
  *(v10 + 24) = v9;
  v15[4] = sub_1BEDFBF74;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1BEB31DD8;
  v15[3] = &block_descriptor_711;
  v11 = _Block_copy(v15);
  v12 = v8;

  [v7 enumerateIconsWithOptions:1 usingBlock:v11];

  _Block_release(v11);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = OBJC_IVAR___SBFolder__lists;
  swift_beginAccess();
  v9 = v7;
  MEMORY[0x1BFB4E650]();
  if (*((*(v3 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_11:
    sub_1BEE471BC();
  }

  sub_1BEE471DC();
  swift_endAccess();
  sub_1BEDD8550(v9, 1uLL);
  [v3 markIconStateDirty];
  return v9;
}

uint64_t sub_1BEDDB8BC()
{
  v1 = v0;
  v2 = sub_1BEE468DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A60);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7 - 8];
  v9 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  sub_1BEE468EC();
  sub_1BEE4695C();
  sub_1BEB49FBC(&qword_1EBDC7A68, MEMORY[0x1E6969B50]);
  v10 = (v3 + 8);
  while (1)
  {
    sub_1BEE472DC();
    sub_1BEB49FBC(&qword_1EBDC7A70, MEMORY[0x1E6969B18]);
    v11 = sub_1BEE4704C();
    (*v10)(v5, v2);
    if (v11)
    {
      break;
    }

    v12 = sub_1BEE472FC();
    v14 = *v13;
    v12(v18, 0);
    sub_1BEE472EC();
    v15 = [v1 listAtIndex_];
    MEMORY[0x1BFB4E650]();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v17 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1BEE471BC();
    }

    sub_1BEE471DC();
    v9 = v19;
  }

  sub_1BEB4992C(v8, &qword_1EBDC7A60);
  sub_1BEB50DA8(v9);
}

void sub_1BEDDBE08()
{
  v1 = v0;
  v2 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v3 = sub_1BEE471AC();

  v11 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
  {
    v9 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB4EA90](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v1 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 isHidden])
      {
        sub_1BEE475FC();
        sub_1BEE4761C();
        sub_1BEE4762C();
        sub_1BEE4760C();
      }

      else
      {
      }

      ++v5;
      if (v1 == i)
      {
        v1 = v9;
        v8 = v11;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:

  sub_1BEB50DA8(v8);
  v10 = sub_1BEE4719C();

  [v1 _didExplicitlyRemoveHiddenLists_];
}

void sub_1BEDDC034()
{
  v1 = [v0 leastRecentlyHiddenList];
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8AF50;
    *(inited + 32) = v2;
    v4 = v2;
    sub_1BEB50DA8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BEE8AF50;
    *(v5 + 32) = v4;
    sub_1BEB20D28(0, &qword_1EBDBFF10);
    v6 = v4;
    v7 = sub_1BEE4719C();

    [v0 _didExplicitlyRemoveHiddenLists_];
  }
}

void sub_1BEDDC1B4(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_1BEE4695C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BEE8AF50;
    v23 = v11;
    *(v11 + 32) = a1;
    v12 = a1;
    sub_1BEE4692C();
    v13 = [*(v4 + OBJC_IVAR___SBFolder_folderObservers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
    v14 = sub_1BEE471AC();

    if (v14 >> 62)
    {
      v15 = sub_1BEE474CC();
      if (v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_4:
        if (v15 < 1)
        {
          __break(1u);
          return;
        }

        v21 = v7;
        v22 = v4;
        v20 = v8;
        for (i = 0; i != v15; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1BFB4EA90](i, v14);
          }

          else
          {
            v19 = *(v14 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v19 respondsToSelector_])
          {
            sub_1BEB20D28(0, &qword_1EBDBFF10);
            swift_unknownObjectRetain();
            v17 = sub_1BEE4719C();
            v18 = sub_1BEE468FC();
            [v19 folder:v22 willRemoveLists:v17 atIndexes:v18];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v8 = v20;
        v7 = v21;
        goto LABEL_16;
      }
    }

LABEL_16:
    (*(v8 + 8))(v10, v7);
  }
}

void sub_1BEDDC464(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BEE4695C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setDelegate_];
  [a1 removeListObserver_];
  SBTreeNodeSetParent(a1, 0);
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1BEDFBDF0;
  *(v13 + 24) = v12;
  v26 = v12;
  aBlock[4] = sub_1BEDFBF70;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB5E290;
  aBlock[3] = &block_descriptor_210;
  v14 = _Block_copy(aBlock);
  v28 = v4;

  [a1 enumerateFolderIconsUsingBlock_];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 1) == 0)
    {
LABEL_19:

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BEE8AF50;
    v27 = v15;
    *(v15 + 32) = a1;
    v16 = a1;
    sub_1BEE4692C();
    v17 = [*&v28[OBJC_IVAR___SBFolder_folderObservers] allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
    a2 = sub_1BEE471AC();

    if (!(a2 >> 62))
    {
      v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_5;
      }

LABEL_17:

LABEL_18:
      (*(v9 + 8))(v11, v8);
      goto LABEL_19;
    }
  }

  v18 = sub_1BEE474CC();
  if (!v18)
  {
    goto LABEL_17;
  }

LABEL_5:
  if (v18 >= 1)
  {
    v24 = v9;
    v25 = v8;
    for (i = 0; i != v18; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1BFB4EA90](i, a2);
      }

      else
      {
        v22 = *(a2 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v22 respondsToSelector_])
      {
        sub_1BEB20D28(0, &qword_1EBDBFF10);
        swift_unknownObjectRetain();
        v20 = sub_1BEE4719C();
        v21 = sub_1BEE468FC();
        [v22 folder:v28 didRemoveLists:v20 atIndexes:v21];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v9 = v24;
    v8 = v25;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_1BEDDC8E4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a1 folder];
  if (v5)
  {
    v6 = v5;
    [a4 didRemoveFolder_];
  }
}

void sub_1BEDDC960(void *a1)
{
  v1 = [a1 folder];
  [v1 compactLists];
}

uint64_t sub_1BEDDCA30(unint64_t a1)
{
  v5 = [v1 maxListCount];
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1BEE474CC() < v5)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < v5)
  {
LABEL_3:

    goto LABEL_29;
  }

  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v6)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1BEE474CC() < 0)
    {
      goto LABEL_34;
    }

    v7 = sub_1BEE474CC();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 < v5)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((a1 & 0xC000000000000001) != 0 && v5)
  {
    sub_1BEB20D28(0, &qword_1EBDBFF10);

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_1BEE475BC();
      v8 = v9;
    }

    while (v5 != v9);
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (!v6)
    {
LABEL_19:
      v2 = a1 & 0xFFFFFFFFFFFFFF8;
      v10 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
      a1 = (2 * v5) | 1;
      goto LABEL_23;
    }
  }

  v2 = sub_1BEE4767C();
  v6 = v11;
  a1 = v12;
  if ((v12 & 1) == 0)
  {
LABEL_22:
    sub_1BEE1D1B8(v2, v10, v6, a1);
    a1 = v13;
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

LABEL_23:
  v3 = v10;
  sub_1BEE4772C();
  swift_unknownObjectRetain_n();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v14 + 16);

  if (__OFSUB__(a1 >> 1, v6))
  {
    goto LABEL_35;
  }

  if (v15 != (a1 >> 1) - v6)
  {
LABEL_36:
    swift_unknownObjectRelease();
    v10 = v3;
    goto LABEL_22;
  }

  a1 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!a1)
  {
    swift_unknownObjectRelease();
    a1 = MEMORY[0x1E69E7CC0];
  }

LABEL_29:
  [v1 removeAllLists];
  sub_1BEDD9ED8(a1);
}

void sub_1BEDDCCF0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 listAtIndex_];
  v7 = OBJC_IVAR___SBFolder__lists;
  swift_beginAccess();
  v8 = &v2[v7];
  v14 = a1;

  v9 = *&v3[v7];
  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
    {
      goto LABEL_3;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_1BEE474CC() < a2)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v6;
  sub_1BEE1FCC4(a2, a2, v6);
  swift_endAccess();

  v10 = [*&v3[OBJC_IVAR___SBFolder_folderObservers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
  v8 = sub_1BEE471AC();

  if (!(v8 >> 62))
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_18:

    return;
  }

LABEL_17:
  v11 = sub_1BEE474CC();
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_6:
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFB4EA90](i, v8);
      }

      else
      {
        v13 = *(v8 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v13 respondsToSelector_])
      {
        [v13 folder:v3 didMoveList:v6 fromIndex:v14 toIndex:a2];
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_1BEDDCF0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1BEE2451C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1BEDDCF9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BEE1DAAC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

id sub_1BEDDD084(void *a1, unsigned int a2, uint64_t a3)
{
  swift_getObjectType();
  v7 = sub_1BEE4705C();
  v8 = [v3 startCoalescingContentChangesForReason_];

  v9 = [a1 changeGridSize:a2 options:{objc_msgSend(swift_getObjCClassFromMetadata(), sel_listModelMutationOptionsForFolderMutationOptions_, a3)}];
  if (v9)
  {
    v10 = v9;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v11 = sub_1BEE471AC();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1BEDD8B4C(v11, a1, 0, a3);

  [v8 invalidate];
  swift_unknownObjectRelease();
  return v12;
}

void sub_1BEDDD370(unint64_t a1)
{
  v2 = v1;
  v47 = MEMORY[0x1E69E7CC0];
  v4 = [v1 listCount];
  v5 = [a1 listCount];
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_58;
  }

  if (v6)
  {
    v7 = v5;
    v8 = 0;
    v9 = &selRef_libraryIconViewControllerForPresenter_;
    v44 = a1;
    v45 = v2;
    v42 = v5;
    v43 = v4;
    v41 = v6;
    do
    {
      v10 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return;
      }

      if (v8 >= v4)
      {
        if (v8 >= v7)
        {
          goto LABEL_8;
        }

        v11 = [a1 v9[54]];
        v22 = [v2 addEmptyList];
        if (!v22)
        {

          goto LABEL_8;
        }

        v12 = v22;
        v13 = [v22 setIconsFromIconListModel_];
        if (!v13)
        {
LABEL_25:

          goto LABEL_8;
        }
      }

      else
      {
        if (v8 >= v7)
        {
          [v2 removeLastList];
          goto LABEL_8;
        }

        v11 = [v2 v9[54]];
        v12 = [a1 v9[54]];
        v13 = [v11 setIconsFromIconListModel_];
        if (!v13)
        {
          goto LABEL_25;
        }
      }

      v14 = v13;
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      a1 = sub_1BEE471AC();

      v15 = a1 >> 62;
      if (a1 >> 62)
      {
        v16 = sub_1BEE474CC();
      }

      else
      {
        v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v47;
      if (v47 >> 62)
      {
        v35 = sub_1BEE474CC();
        v19 = v35 + v16;
        if (__OFADD__(v35, v16))
        {
LABEL_50:
          __break(1u);
          break;
        }
      }

      else
      {
        v18 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v18 + v16;
        if (__OFADD__(v18, v16))
        {
          goto LABEL_50;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v47 = v17;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v17 & 0x8000000000000000) == 0 && (v17 & 0x4000000000000000) == 0)
        {
          v21 = v17 & 0xFFFFFFFFFFFFFF8;
          if (v19 <= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }
      }

      else if ((v17 & 0x8000000000000000) == 0 && (v17 & 0x4000000000000000) == 0)
      {
        goto LABEL_31;
      }

      sub_1BEE474CC();
LABEL_31:

      v23 = sub_1BEE475DC();
      v47 = v23;

      v21 = v23 & 0xFFFFFFFFFFFFFF8;
LABEL_32:
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v15)
      {
        v26 = sub_1BEE474CC();
      }

      else
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v26)
      {
        if (((v25 >> 1) - v24) < v16)
        {
          goto LABEL_55;
        }

        v27 = v21 + 8 * v24 + 32;
        if (v15)
        {
          if (v26 < 1)
          {
            goto LABEL_57;
          }

          sub_1BEB53980(&unk_1EBDBFE20, &unk_1EBDC7A08);
          for (i = 0; i != v26; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7A08);
            v29 = sub_1BEDCF4E0(aBlock, i, a1);
            v31 = *v30;
            (v29)(aBlock, 0);
            *(v27 + 8 * i) = v31;
          }
        }

        else
        {
          sub_1BEB20D28(0, &qword_1EBDBFEA0);
          swift_arrayInitWithCopy();
        }

        v2 = v45;
        v4 = v43;
        a1 = v44;
        v6 = v41;
        v7 = v42;
        v9 = &selRef_libraryIconViewControllerForPresenter_;
        if (v16 > 0)
        {
          v32 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v33 = __OFADD__(v32, v16);
          v34 = v32 + v16;
          if (v33)
          {
            goto LABEL_56;
          }

          *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) = v34;
        }
      }

      else
      {

        a1 = v44;
        v2 = v45;
        v7 = v42;
        v4 = v43;
        v6 = v41;
        v9 = &selRef_libraryIconViewControllerForPresenter_;
        if (v16 > 0)
        {
          goto LABEL_54;
        }
      }

LABEL_8:
      v8 = v10;
    }

    while (v10 != v6);
  }

  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  *(v36 + 24) = &v47;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1BEDFBBEC;
  *(v37 + 24) = v36;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_679;
  v38 = _Block_copy(aBlock);
  v39 = a1;

  [v2 enumerateExtraListsUsingBlock_];
  _Block_release(v38);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    goto LABEL_59;
  }

  sub_1BEDD8B4C(v40, 0, 0, 0);
}

void sub_1BEDDD93C(void *a1, uint64_t a2, int a3, id a4)
{
  if ([a4 isValidListIndex_])
  {
    v10 = [a4 listAtIndex_];
    v7 = [a1 setIconsFromIconListModel_];
    if (v7)
    {
      v8 = v7;
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v9 = sub_1BEE471AC();

      sub_1BEE34FD0(v9);
    }
  }
}

id sub_1BEDDDACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v7 = [v3 listAtIndex_];
  v8 = [v7 replaceLayoutWithGridCellInfo:a2 mutationOptions:{objc_msgSend(swift_getObjCClassFromMetadata(), sel_listModelMutationOptionsForFolderMutationOptions_, a3)}];
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v9 = sub_1BEE471AC();

  v10 = [v7 bestGridCellInfoOptionsForGridCellInfo_];
  v11 = v7;
  v12 = sub_1BEDD8B4C(v9, v7, v10, a3);

  return v12;
}

uint64_t sub_1BEDDDC94(void *a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);

  sub_1BEDCDABC(a1, v6);

  swift_beginAccess();
  sub_1BEB2AB48(v26, a1, &qword_1EBDBFEA0, off_1E8087510, &qword_1EBDC7A90, &unk_1BEE8B100);
  swift_endAccess();

  swift_beginAccess();
  v7 = sub_1BEDF7D04(a1, &qword_1EBDBFEA0, off_1E8087510, &qword_1EBDC7A90, &unk_1BEE8B100);
  swift_endAccess();

  v8 = [a1 uniqueIdentifier];
  v9 = sub_1BEE4708C();
  v11 = v10;

  v12 = [a2 uniqueIdentifier];
  v13 = sub_1BEE4708C();
  v15 = v14;

  swift_beginAccess();
  v16 = *(v3 + 40);
  if (*(v16 + 16))
  {

    v17 = sub_1BEB1DAFC(v9, v11);
    if ((v18 & 1) == 0 || (v19 = (*(v16 + 56) + 16 * v17), v21 = *v19, v20 = v19[1], , , v21 == v13) && v20 == v15)
    {
    }

    else
    {
      v24 = sub_1BEE4770C();

      if ((v24 & 1) == 0)
      {
        swift_beginAccess();
        sub_1BEB2AB48(&v25, a1, &qword_1EBDBFEA0, off_1E8087510, &qword_1EBDC7A90, &unk_1BEE8B100);
        swift_endAccess();
      }
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v3 + 40);
  *(v3 + 40) = 0x8000000000000000;
  sub_1BEE31A10(v13, v15, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v3 + 40) = v25;
  return swift_endAccess();
}

uint64_t sub_1BEDDE0AC(char a1)
{
  v3 = [v1 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v4 = sub_1BEE471AC();

  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (!__OFSUB__(v5--, 1))
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB4EA90](v5, v4);
LABEL_11:
        v8 = v7;
        if (([v7 isHidden] & 1) == 0)
        {
          sub_1BEB51898(v8, a1 & 1, sub_1BEDDE0A4, 0, 0);
        }

        if (!v5)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_14;
        }

        if (v5 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v7 = *(v4 + 32 + 8 * v5);
          goto LABEL_11;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        v5 = sub_1BEE474CC();
        if (!v5)
        {
          goto LABEL_17;
        }
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
}

uint64_t sub_1BEDDE260(uint64_t a1, uint64_t a2)
{
  v5 = [v2 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v6 = sub_1BEE471AC();

  if (v6 >> 62)
  {
    goto LABEL_16;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (!__OFSUB__(v7--, 1))
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB4EA90](v7, v6);
LABEL_11:
        v10 = v9;
        if (([v9 isHidden] & 1) == 0)
        {
          sub_1BEB51898(v10, 0, a1, a2, 1);
        }

        if (!v7)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_14;
        }

        if (v7 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v9 = *(v6 + 32 + 8 * v7);
          goto LABEL_11;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        v7 = sub_1BEE474CC();
        if (!v7)
        {
          goto LABEL_17;
        }
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
}

uint64_t sub_1BEDDE424()
{
  v1 = v0;
  v8 = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1BEDFBBE4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_668;
  v4 = _Block_copy(aBlock);

  [v0 enumerateAllIconsWithOptions:1 usingBlock:v4];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 >> 62)
  {
LABEL_6:
    sub_1BEB20D28(0, &qword_1EBDBFEA0);

    sub_1BEE4765C();
    goto LABEL_4;
  }

  swift_bridgeObjectRetain_n();
  sub_1BEE4771C();
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
LABEL_4:

  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v5 = sub_1BEE4719C();

  [v1 removeIcons:v5 options:9437184];
}

void sub_1BEDDE66C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = [v7 folder];
    if (v9)
    {
      v11 = v9;
      if ([v9 isEmpty])
      {
        v8 = v8;
        MEMORY[0x1BFB4E650]();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BEE471BC();
        }

        sub_1BEE471DC();
      }

      v10 = v11;
    }

    else
    {
      v10 = v8;
    }
  }
}

uint64_t sub_1BEDDE7F4()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
LABEL_21:
    v3 = sub_1BEE474CC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = v3;
  while (v5)
  {
    v6 = __OFSUB__(v5--, 1);
    if (v6)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB4EA90](v5, v2);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(v2 + 32 + 8 * v5);
    }

    v8 = v7;
    v9 = [v7 isEmptyIgnoringPlaceholders];

    if (!v9)
    {
      v3 = v4;
      break;
    }

    v6 = __OFADD__(v4++, 1);
    if (v6)
    {
      goto LABEL_20;
    }
  }

  return v3;
}

uint64_t sub_1BEDDE930(uint64_t a1)
{
  v2 = v1;
  v3 = &selRef_libraryIconViewControllerForPresenter_;
  v4 = [v1 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v5 = sub_1BEE471AC();

  if (v5 >> 62)
  {
LABEL_28:
    v6 = sub_1BEE474CC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = [v2 v3[88]];
  v8 = sub_1BEE471AC();

  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
    v10 = sub_1BEE474CC();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = v8 & 0xC000000000000001;
  v21 = v8;
  v13 = v8 + 32;
  v2 = &selRef_libraryIconViewControllerForPresenter_;
  while (v10)
  {
    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v12)
    {
      v15 = MEMORY[0x1BFB4EA90](v10, v21);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      if (v10 >= *(v9 + 16))
      {
        goto LABEL_25;
      }

      v15 = *(v13 + 8 * v10);
    }

    v16 = v15;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_24;
    }

    v17 = v6 - v11;
    if (__OFSUB__(v6, v11))
    {
      goto LABEL_26;
    }

    v18 = v17 - 1;
    if (__OFSUB__(v17, 1))
    {
      goto LABEL_27;
    }

    v3 = [v15 numberOfNonPlaceholderIcons];

    if (v3)
    {
      v19 = 0;
      goto LABEL_21;
    }

    ++v11;
    if (v18 == a1)
    {
      break;
    }
  }

  v19 = 1;
LABEL_21:

  return v19;
}

uint64_t sub_1BEDDEB94()
{
  v2 = v0;
  v3 = [v0 trailingEmptyListCount];
  v4 = [v0 listCount];
  v5 = [v2 lists];
  v6 = sub_1BEB20D28(0, &qword_1EBDBFF10);
  v7 = sub_1BEE471AC();

  v8 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v4 < v8)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v1 = v7 >> 62;
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8)
    {
      goto LABEL_5;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_32:
  if (sub_1BEE474CC() < v8)
  {
    goto LABEL_33;
  }

LABEL_5:
  if (v8 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v1)
  {
    v9 = sub_1BEE474CC();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < v4)
  {
    goto LABEL_35;
  }

  if ((v7 & 0xC000000000000001) == 0 || v8 == v4)
  {

    goto LABEL_17;
  }

  if (v8 >= v4)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v10 = v4 - v3;
  do
  {
    v11 = v10 + 1;
    sub_1BEE475BC();
    v10 = v11;
    --v3;
  }

  while (v3);
LABEL_17:

  if (v1)
  {
    v3 = sub_1BEE4767C();
    v6 = v12;
    v8 = v13;
    v4 = v14;

    if (v4)
    {
      goto LABEL_22;
    }

LABEL_21:
    sub_1BEE1D1B8(v3, v6, v8, v4);
    v16 = v15;
LABEL_28:
    swift_unknownObjectRelease();
    return v16;
  }

  v3 = (v7 & 0xFFFFFFFFFFFFFF8);
  v6 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
  v4 = (2 * v4) | 1;
  if ((v4 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  sub_1BEE4772C();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v4 >> 1, v8))
  {
    goto LABEL_37;
  }

  if (v18 != (v4 >> 1) - v8)
  {
LABEL_38:
    swift_unknownObjectRelease_n();
    goto LABEL_21;
  }

  v16 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v16)
  {
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  return v16;
}

id sub_1BEDDEE0C(void *a1)
{
  result = [a1 isEmptyIgnoringPlaceholders];
  if (result)
  {
    result = [v1 trailingEmptyListCount];
    if (result)
    {
      v4 = result;
      v5 = [v1 lists];
      sub_1BEB20D28(0, &qword_1EBDBFF10);
      v6 = sub_1BEE471AC();

      v7 = sub_1BEB31AEC(a1, v6, &qword_1EBDBFF10);
      LOBYTE(v5) = v8;

      if (v5)
      {
        return 0;
      }

      else
      {
        v9 = [v1 lists];
        v10 = sub_1BEE471AC();

        if (v10 >> 62)
        {
          v11 = sub_1BEE474CC();
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (__OFSUB__(v11, v4))
        {
          __break(1u);
        }

        else
        {
          return (v7 >= v11 - v4);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BEDDEFEC(uint64_t a1)
{
  v2 = v1;
  v10 = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = &v10;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1BEDFBBA4;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_658;
  v6 = _Block_copy(aBlock);

  [v2 enumerateListsWithOptions:a1 usingBlock:v6];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

BOOL sub_1BEDDF1C0()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_1BEE474CC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB4EA90](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 isEmpty];

    v4 = v5 + 1;
  }

  while ((v8 & 1) != 0);

  return v3 == v5;
}

BOOL sub_1BEDDF320()
{
  v1 = &selRef_libraryIconViewControllerForPresenter_;
  v2 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v3 = sub_1BEE471AC();

  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BEE474CC())
  {

    if (i < [v0 maxListCount])
    {
      break;
    }

    v6 = [v0 v1[88]];
    v7 = sub_1BEE471AC();

    if (v7 >> 62)
    {
      v0 = sub_1BEE474CC();
    }

    else
    {
      v0 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    while (1)
    {
      v5 = v0 == v8;
      if (v0 == v8)
      {
LABEL_16:

        return v5;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB4EA90](v8, v7);
      }

      else
      {
        if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v7 + 8 * v8 + 32);
      }

      v1 = v9;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v10 = [(SEL *)v9 isFull];

      ++v8;
      if ((v10 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

uint64_t sub_1BEDDF4FC()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEDFBB50;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_648;
  v3 = _Block_copy(aBlock);

  [v0 enumerateListsUsingBlock_];
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6 == 1;
  }

  return result;
}

uint64_t sub_1BEDDF674()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  [v0 addIconsOfClass:swift_getObjCClassFromMetadata() toSet:v1];
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
  v2 = v1;
  sub_1BEE4725C();

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BEE474CC())
  {
    sub_1BEDF90B4(MEMORY[0x1E69E7CC0], &qword_1EBDC7A90, &unk_1BEE8B100, &qword_1EBDBFEA0);
    v3 = v5;
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v3;
}

uint64_t sub_1BEDDF868(uint64_t a1, void *a2)
{
  v5 = [v2 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v6 = sub_1BEE471AC();

  if (v6 >> 62)
  {
    v7 = sub_1BEE474CC();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  result = swift_getObjCClassFromMetadata();
  if (v7 < 1)
  {
    goto LABEL_12;
  }

  v9 = result;
  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1BFB4EA90](i, v6);
    }

    else
    {
      v11 = *(v6 + 8 * i + 32);
    }

    v12 = v11;
    [v11 addIconsOfClass:v9 toSet:a2];
  }

LABEL_10:

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1BEDFBB04;
  *(v14 + 24) = v13;
  v18[4] = sub_1BEDFBF6C;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1BEE39C64;
  v18[3] = &block_descriptor_638;
  v15 = _Block_copy(v18);
  v16 = a2;

  [v2 enumerateExtraListsUsingBlock_];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BEDDFCE0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BEE474CC())
  {
    sub_1BEDF90B4(MEMORY[0x1E69E7CC0], &qword_1EBDC7A90, &unk_1BEE8B100, &qword_1EBDBFEA0);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  v13 = v5;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v13;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BEDFBA84;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_617;
  v8 = _Block_copy(aBlock);

  [v2 enumerateAllIconsWithOptions:1 usingBlock:v8];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

void sub_1BEDDFEA4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if (a4(a1, a3))
  {
    sub_1BEB2AB48(&v5, a1, &qword_1EBDBFEA0, off_1E8087510, &qword_1EBDC7A90, &unk_1BEE8B100);
  }
}

uint64_t sub_1BEDE0004(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BEDFBA28;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_606;
  v7 = _Block_copy(aBlock);

  [v2 enumerateAllIconsWithOptions:1 usingBlock:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_1BEDE019C(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BEDFBA1C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_596;
  v7 = _Block_copy(aBlock);

  [v2 enumerateAllIconsWithOptions:1 usingBlock:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

void sub_1BEDE0308(void *a1, uint64_t a2, _BYTE *a3, uint64_t (*a4)(void *, _BYTE *), uint64_t a5, void **a6)
{
  if (a4(a1, a3))
  {
    v9 = *a6;
    *a6 = a1;
    v10 = a1;

    *a3 = 1;
  }
}

id sub_1BEDE0390(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  v12[2] = v8;
  v9 = a1;
  v10 = a5(a4, v12);
  _Block_release(v8);

  return v10;
}

uint64_t sub_1BEDE0418(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BEDFBA14;
  *(v7 + 24) = v6;
  v14[4] = sub_1BEDFBDE8;
  v14[5] = v7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BEDE070C;
  v14[3] = &block_descriptor_585;
  v8 = _Block_copy(v14);

  v9 = [v3 iconsPassingTest_];
  _Block_release(v8);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    v11 = sub_1BEE4726C();

    sub_1BEE0ACE0(v11);
    v13 = v12;

    if (v13)
    {
      return v13;
    }

    else
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  return result;
}

BOOL sub_1BEDE05F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = a1;
  v10 = [v8 applicationBundleID];
  if (!v10)
  {

    return 0;
  }

  v11 = v10;
  v12 = sub_1BEE4708C();
  v14 = v13;

  if (v12 != a3 || v14 != a4)
  {
    v16 = sub_1BEE4770C();

    return (v16 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1BEDE070C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1BEDE0820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BEDFBA04;
  *(v7 + 24) = v6;
  v12[4] = sub_1BEDFBA0C;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1BEE351F4;
  v12[3] = &block_descriptor_575;
  v8 = _Block_copy(v12);

  v9 = [v3 firstIconPassingTest_];
  _Block_release(v8);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    if (v9)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();

      if (v11)
      {
        return v11;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

BOOL sub_1BEDE09CC(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = a1;
  v9 = [v7 applicationBundleID];
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = sub_1BEE4708C();
  v13 = v12;

  if (v11 != a2 || v13 != a3)
  {
    v15 = sub_1BEE4770C();

    return (v15 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1BEDE0AFC()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BEE474CC())
  {
    sub_1BEDF90B4(MEMORY[0x1E69E7CC0], &qword_1EBDC7A90, &unk_1BEE8B100, &qword_1EBDBFEA0);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v9 = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1BEDFB9FC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_566;
  v4 = _Block_copy(aBlock);

  [v0 enumerateAllIconsWithOptions:1 usingBlock:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

void sub_1BEDE0CB4(void *a1)
{
  sub_1BEB2AB48(&v2, a1, &qword_1EBDBFEA0, off_1E8087510, &qword_1EBDC7A90, &unk_1BEE8B100);
  v1 = v2;
}

uint64_t sub_1BEDE0D50()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BEE474CC())
  {
    sub_1BEDF90B4(MEMORY[0x1E69E7CC0], &qword_1EBDC7A50, &unk_1BEE8B0E0, &unk_1EBDBFF60);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v9 = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1BEDFB9C0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_546;
  v4 = _Block_copy(aBlock);

  [v0 enumerateAllIconsWithOptions:1 usingBlock:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1BEDE0F30()
{
  v8 = MEMORY[0x1E69E7CC0];
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEDFB9B8;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_536;
  v3 = _Block_copy(aBlock);

  [v0 enumerateAllIconsUsingBlock_];
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_1BEDE1094(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a1;
  MEMORY[0x1BFB4E650]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BEE471BC();
  }

  return sub_1BEE471DC();
}

unint64_t sub_1BEDE1130()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
  {
    v4 = 0;
    v33 = v2 & 0xC000000000000001;
    v30 = v2 + 32;
    v31 = v2 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x1E69E7CC0];
    v32 = i;
    v29 = v2;
    while (1)
    {
      if (v33)
      {
        v6 = MEMORY[0x1BFB4EA90](v4, v2);
      }

      else
      {
        if (v4 >= *(v31 + 16))
        {
          goto LABEL_45;
        }

        v6 = *(v30 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      v9 = [v6 icons];
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v10 = sub_1BEE471AC();

      v11 = v10 >> 62;
      if (v10 >> 62)
      {
        v12 = sub_1BEE474CC();
      }

      else
      {
        v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v5 >> 62;
      if (v5 >> 62)
      {
        v14 = sub_1BEE474CC();
      }

      else
      {
        v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v35 = v12;
      v8 = __OFADD__(v14, v12);
      v15 = v14 + v12;
      if (v8)
      {
        goto LABEL_41;
      }

      v34 = v7;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v13)
        {
          v16 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v15 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

LABEL_21:
        sub_1BEE474CC();
        goto LABEL_22;
      }

      if (v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v5 = sub_1BEE475DC();
      v16 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v11)
      {
        v19 = sub_1BEE474CC();
        if (!v19)
        {
LABEL_4:

          if (v35 > 0)
          {
            goto LABEL_42;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_4;
        }
      }

      if (((v18 >> 1) - v17) < v35)
      {
        goto LABEL_43;
      }

      v20 = v16 + 8 * v17 + 32;
      if (v11)
      {
        if (v19 < 1)
        {
          goto LABEL_46;
        }

        sub_1BEB53980(&unk_1EBDBFE20, &unk_1EBDC7A08);
        for (j = 0; j != v19; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7A08);
          v23 = sub_1BEDCF4E0(v36, j, v10);
          v25 = *v24;
          (v23)(v36, 0);
          *(v20 + 8 * j) = v25;
        }

        v2 = v29;
        v21 = v35;
        if (v35 <= 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v21 = v35;
        swift_arrayInitWithCopy();

        if (v35 <= 0)
        {
          goto LABEL_5;
        }
      }

      v26 = *(v16 + 16);
      v8 = __OFADD__(v26, v21);
      v27 = v26 + v21;
      if (v8)
      {
        goto LABEL_44;
      }

      *(v16 + 16) = v27;
LABEL_5:
      if (v4 == v32)
      {

        return v5;
      }
    }

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
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BEDE157C()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEDFB97C;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_526;
  v3 = _Block_copy(aBlock);

  [v0 enumerateAllIconsWithOptions:1 usingBlock:v3];
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_1BEDE188C(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BEDFB918;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_500;
  v7 = _Block_copy(aBlock);

  [v2 enumerateListsUsingBlock_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

void sub_1BEDE19FC(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v9 = sub_1BEE4705C();
  LODWORD(a1) = [a1 containsWidgetIconWithExtensionBundleIdentifier_];

  if (a1)
  {
    *a6 = 1;
    *a3 = 1;
  }
}

uint64_t sub_1BEDE1B00()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEDFB8D8;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_490;
  v3 = _Block_copy(aBlock);

  [v0 enumerateListsUsingBlock_];
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_1BEDE1C64(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1BEB20D28(0, &qword_1EBDBFEA0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1BFB4EA90](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1BFB4EA90](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1BEE473CC();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1BEE473CC();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1BEE474CC();
  }

  result = sub_1BEE474CC();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

id sub_1BEDE2228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result badgeBehaviorProviderDidChange_];
  }

  return result;
}

uint64_t sub_1BEDE22D4()
{
  v1 = v0;
  v2 = [v0 badgeBehaviorProvider];
  v3 = [v1 treeParent];
  if (v2)
  {
LABEL_2:
    swift_unknownObjectRelease();
  }

  else
  {
    while (v3)
    {
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        v2 = [v6 badgeBehaviorProvider];
      }

      else
      {
        v2 = 0;
      }

      v5 = [v3 treeParent];
      swift_unknownObjectRelease();
      v3 = v5;
      if (v2)
      {
        goto LABEL_2;
      }
    }

    _s29FallbackBadgeBehaviorProviderCMa();
    return swift_allocObject();
  }

  return v2;
}

unsigned __int8 *sub_1BEDE23F8(void *a1, uint64_t a2, _BYTE *a3, void *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7, unsigned __int8 **a8)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    result = [a4 allowsBadgingForIcon_];
    if (result)
    {
      if ([a1 badgeNumberOrString])
      {
        sub_1BEE4741C();
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0u;
        v50 = 0u;
      }

      v51[0] = v49;
      v51[1] = v50;
      sub_1BEB44B04(v51, &v49, &unk_1EBDC7A40);
      v17 = MEMORY[0x1E69E7CA0];
      if (*(&v50 + 1))
      {
        if (swift_dynamicCast())
        {
          v18 = v48;
          do
          {
            if (v18 < 1)
            {
              break;
            }

            v19 = &(*a8)[v18];
            v20 = __OFADD__(*a8, v18);
            if (*a8 >= v19)
            {
              break;
            }

            if (!v20)
            {
              *a8 = v19;
              break;
            }

            __break(1u);
LABEL_101:
            v18 = sub_1BEDF81D8(v8, v17, 10);
            v46 = v47;
LABEL_98:
          }

          while ((v46 & 1) == 0);
LABEL_23:
          if (*a5 != 1)
          {
            return sub_1BEB4992C(v51, &unk_1EBDC7A40);
          }

LABEL_24:
          *a3 = 1;
          return sub_1BEB4992C(v51, &unk_1EBDC7A40);
        }
      }

      else
      {
        sub_1BEB4992C(&v49, &unk_1EBDC7A40);
      }

      sub_1BEB44B04(v51, &v49, &unk_1EBDC7A40);
      if (!*(&v50 + 1))
      {
        sub_1BEB4992C(&v49, &unk_1EBDC7A40);
        goto LABEL_23;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_23;
      }

      v17 = *(&v48 + 1);
      v8 = v48;
      if (v48 == __PAIR128__(0xE100000000000000, 33) || (sub_1BEE4770C() & 1) != 0)
      {

        *a5 = 1;
        goto LABEL_24;
      }

      v21 = HIBYTE(*(&v48 + 1)) & 0xFLL;
      if ((*(&v48 + 1) & 0x2000000000000000) != 0)
      {
        v22 = HIBYTE(*(&v48 + 1)) & 0xFLL;
      }

      else
      {
        v22 = v48 & 0xFFFFFFFFFFFFLL;
      }

      if (!v22)
      {

        *a6 = 1;
        goto LABEL_23;
      }

      v49 = v48;
      *&v50 = 0;
      *(&v50 + 1) = v22;

      while (1)
      {
        v24 = sub_1BEE470EC();
        if (!v25)
        {
          break;
        }

        if (v24 == 43 && v25 == 0xE100000000000000)
        {

LABEL_37:

          *a7 = 1;
          goto LABEL_40;
        }

        v23 = sub_1BEE4770C();

        if (v23)
        {
          goto LABEL_37;
        }
      }

LABEL_40:
      if ((*(&v48 + 1) & 0x1000000000000000) != 0)
      {
        goto LABEL_101;
      }

      if ((*(&v48 + 1) & 0x2000000000000000) != 0)
      {
        *&v49 = v48;
        *(&v49 + 1) = *(&v48 + 1) & 0xFFFFFFFFFFFFFFLL;
        if (v48 == 43)
        {
          if (v21)
          {
            v28 = v21 - 1;
            if (v21 != 1)
            {
              v18 = 0;
              v38 = &v49 + 1;
              while (1)
              {
                v39 = *v38 - 48;
                if (v39 > 9)
                {
                  break;
                }

                v40 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  break;
                }

                v18 = v40 + v39;
                if (__OFADD__(v40, v39))
                {
                  break;
                }

                ++v38;
                if (!--v28)
                {
                  goto LABEL_97;
                }
              }
            }

            goto LABEL_96;
          }

LABEL_106:
          __break(1u);
          return result;
        }

        if (v48 != 45)
        {
          if (v21)
          {
            v18 = 0;
            v43 = &v49;
            while (1)
            {
              v44 = *v43 - 48;
              if (v44 > 9)
              {
                break;
              }

              v45 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v45 + v44;
              if (__OFADD__(v45, v44))
              {
                break;
              }

              ++v43;
              if (!--v21)
              {
                goto LABEL_95;
              }
            }
          }

          goto LABEL_96;
        }

        if (v21)
        {
          v28 = v21 - 1;
          if (v21 != 1)
          {
            v18 = 0;
            v32 = &v49 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v34 - v33;
              if (__OFSUB__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v28)
              {
                goto LABEL_97;
              }
            }
          }

          goto LABEL_96;
        }
      }

      else
      {
        if ((v48 & 0x1000000000000000) != 0)
        {
          result = ((*(&v48 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
          v26 = v48 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1BEE475EC();
        }

        v27 = *result;
        if (v27 == 43)
        {
          if (v26 >= 1)
          {
            v28 = v26 - 1;
            if (v26 != 1)
            {
              v18 = 0;
              if (result)
              {
                v35 = result + 1;
                while (1)
                {
                  v36 = *v35 - 48;
                  if (v36 > 9)
                  {
                    goto LABEL_96;
                  }

                  v37 = 10 * v18;
                  if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                  {
                    goto LABEL_96;
                  }

                  v18 = v37 + v36;
                  if (__OFADD__(v37, v36))
                  {
                    goto LABEL_96;
                  }

                  ++v35;
                  if (!--v28)
                  {
                    goto LABEL_97;
                  }
                }
              }

              goto LABEL_95;
            }

            goto LABEL_96;
          }

          goto LABEL_105;
        }

        if (v27 != 45)
        {
          if (v26)
          {
            v18 = 0;
            if (result)
            {
              while (1)
              {
                v41 = *result - 48;
                if (v41 > 9)
                {
                  goto LABEL_96;
                }

                v42 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_96;
                }

                v18 = v42 + v41;
                if (__OFADD__(v42, v41))
                {
                  goto LABEL_96;
                }

                ++result;
                if (!--v26)
                {
                  goto LABEL_95;
                }
              }
            }

            goto LABEL_95;
          }

LABEL_96:
          v18 = 0;
          LOBYTE(v28) = 1;
          goto LABEL_97;
        }

        if (v26 >= 1)
        {
          v28 = v26 - 1;
          if (v26 != 1)
          {
            v18 = 0;
            if (result)
            {
              v29 = result + 1;
              while (1)
              {
                v30 = *v29 - 48;
                if (v30 > 9)
                {
                  goto LABEL_96;
                }

                v31 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_96;
                }

                v18 = v31 - v30;
                if (__OFSUB__(v31, v30))
                {
                  goto LABEL_96;
                }

                ++v29;
                if (!--v28)
                {
                  goto LABEL_97;
                }
              }
            }

LABEL_95:
            LOBYTE(v28) = 0;
LABEL_97:
            v46 = v28;
            goto LABEL_98;
          }

          goto LABEL_96;
        }

        __break(1u);
      }

      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }
  }

  return result;
}

id sub_1BEDE2988@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v19 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = sub_1BEE469DC();
  v11 = *(v10 - 8);
  v18 = *(v11 + 56);
  v18(a2, 1, 1, v10);
  v12 = v2;
  sub_1BEDF93A0(0, a1, 1, v12, a1, v12, a2);

  sub_1BEB44B04(a2, v9, &qword_1EBDC7A28);
  v13 = (*(v11 + 48))(v9, 1, v10);
  result = sub_1BEB4992C(v9, &qword_1EBDC7A28);
  if (v13 == 1)
  {
    v15 = [v12 listCount];
    result = [v12 maxListCount];
    if (v15 < result)
    {
      v16 = [objc_opt_self() indexPathWithIconIndex:0 listIndex:{objc_msgSend(v12, sel_listCount)}];
      v17 = v19;
      sub_1BEE4697C();

      v18(v17, 0, 1, v10);
      return sub_1BEB384A0(v17, a2);
    }
  }

  return result;
}

uint64_t sub_1BEDE2CFC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  if (a1)
  {
    v16 = a1;
    if ([v3 isExtraList_])
    {
      v17 = [v3 indexOfList_];
      v18 = [v16 firstFreeSlotIndex];
      if (v18 == sub_1BEE467EC())
      {

        v19 = sub_1BEE469DC();
        v20 = *(*(v19 - 8) + 56);
        v21 = v19;
        v22 = a3;
        v23 = 1;
      }

      else
      {
        v31 = [objc_opt_self() indexPathWithIconIndex:v18 listIndex:v17];
        sub_1BEE4697C();

        v32 = sub_1BEE469DC();
        v20 = *(*(v32 - 8) + 56);
        v21 = v32;
        v22 = a3;
        v23 = 0;
      }

      return v20(v22, v23, 1, v21);
    }
  }

  v34 = a3;
  v24 = sub_1BEE469DC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v26(v15, 1, 1, v24);
  v27 = v3;
  sub_1BEDF93A0(a1, a2 & 1, 1, v27, a2 & 1, v27, v15);

  sub_1BEB44B04(v15, v13, &qword_1EBDC7A28);
  LODWORD(v25) = (*(v25 + 48))(v13, 1, v24);
  sub_1BEB4992C(v13, &qword_1EBDC7A28);
  if (v25 == 1)
  {
    v28 = [v27 listCount];
    if (v28 < [v27 maxListCount])
    {
      v29 = [objc_opt_self() indexPathWithIconIndex:0 listIndex:{objc_msgSend(v27, sel_listCount)}];
      sub_1BEE4697C();

      v26(v10, 0, 1, v24);
      sub_1BEB384A0(v10, v15);
    }
  }

  return sub_1BEB31BF4(v15, v34);
}

void sub_1BEDE3404(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v81[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1BEE469DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v74 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v75 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = (&v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v76 = &v71 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v79 = &v71 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v71 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v80 = &v71 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v71 - v27;
  v29 = sub_1BEE4696C();
  v30 = [v29 sbListIndex];

  if ([v4 isValidListIndex_])
  {
    v80 = v8;
    v31 = [v4 listAtIndex_];
    v32 = sub_1BEE4696C();
    v33 = [v32 sbIconIndex];

    if ([v31 numberOfIcons] < v33)
    {
      v34 = [v4 indexPathForFirstFreeSlotStartingAtList:v31 avoidingFirstList:a2 & (v30 > 0)];
      if (v34)
      {
        v35 = v34;
        sub_1BEE4697C();

        (*(v9 + 56))(v24, 0, 1, v80);
      }

      else
      {

        (*(v9 + 56))(v24, 1, 1, v80);
      }

      sub_1BEB31BF4(v24, a3);
      return;
    }

    v42 = sub_1BEE4696C();
    v81[0] = 0;
    v43 = [v4 folderContainingIndexPath:v42 relativeIndexPath:v81];

    v45 = v81[0];
    v46 = a3;
    if (!v43)
    {
      v50 = v81[0];
      v47 = v80;
      v48 = v9;
      goto LABEL_16;
    }

    v47 = v80;
    v48 = v9;
    if (!v81[0])
    {
LABEL_12:

LABEL_16:
      (*(v48 + 16))(v46, a1, v47);
      (*(v48 + 56))(v46, 0, 1, v47);

      return;
    }

    type metadata accessor for SBFolder(v44);
    v49 = v43;
    v43 = v45;
    if (sub_1BEE473CC())
    {

      goto LABEL_12;
    }

    v72 = v49;
    v73 = v43;
    v51 = [v49 validatedIndexPathForInsertionIndexPath:v43 avoidingFirstList:0];
    if (v51)
    {
      v52 = v76;
      v53 = v51;
      sub_1BEE4697C();

      v54 = v52;
      v55 = 0;
      v56 = v79;
    }

    else
    {
      v55 = 1;
      v56 = v79;
      v54 = v76;
    }

    v57 = v77;
    v58 = *(v48 + 56);
    v58(v54, v55, 1, v47);
    sub_1BEB31BF4(v54, v56);
    sub_1BEB44B04(v56, v57, &qword_1EBDC7A28);
    if ((*(v48 + 48))(v57, 1, v47) == 1)
    {
      sub_1BEB4992C(v56, &qword_1EBDC7A28);
      v59 = v73;
    }

    else
    {
      v77 = v58;
      v60 = *(v48 + 32);
      v60(v78, v57, v47);
      v61 = sub_1BEE4696C();
      v62 = [v61 sb_firstIconPathComponent];

      if (v62)
      {
        v63 = v74;
        sub_1BEE4697C();

        v64 = v75;
        v60(v75, v63, v47);
        v65 = sub_1BEE4696C();
        v66 = v78;
        v67 = sub_1BEE4696C();
        v68 = [v65 sb:v67 indexPathByAddingIndexPath:?];

        sub_1BEE4697C();
        v69 = v73;

        v70 = *(v48 + 8);
        v70(v64, v47);
        v70(v66, v47);
        sub_1BEB4992C(v79, &qword_1EBDC7A28);
        v77(v46, 0, 1, v47);

        return;
      }

      v59 = v73;

      (*(v48 + 8))(v78, v47);
      v57 = v56;
      v58 = v77;
    }

    sub_1BEB4992C(v57, &qword_1EBDC7A28);
    v58(v46, 1, 1, v47);
  }

  else
  {
    v36 = *(v9 + 56);
    v36(a3, 1, 1, v8);
    v37 = v4;
    sub_1BEDF93A0(0, a2 & 1, 0, v37, a2 & 1, v37, a3);

    sub_1BEB44B04(a3, v28, &qword_1EBDC7A28);
    v38 = (*(v9 + 48))(v28, 1, v8);
    sub_1BEB4992C(v28, &qword_1EBDC7A28);
    if (v38 == 1)
    {
      v39 = [v37 listCount];
      if (v39 < [v37 maxListCount])
      {
        v40 = [objc_opt_self() indexPathWithIconIndex:0 listIndex:{objc_msgSend(v37, sel_listCount)}];
        v41 = v80;
        sub_1BEE4697C();

        v36(v41, 0, 1, v8);
        sub_1BEB384A0(v41, a3);
      }
    }
  }
}

void sub_1BEDE3EA8(char a1, uint64_t a2)
{
  v4 = [v2 uniqueIdentifier];
  if (!v4)
  {
    sub_1BEE4708C();
    v4 = sub_1BEE4705C();

    sub_1BEE4708C();
  }

  sub_1BEE4708C();

  v5 = @"SBHIconGridSizeClassDefault";

  v6 = [v2 listCount];
  v7 = sub_1BEE467EC();
  if (v7 == sub_1BEE467EC())
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v6 < v8)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v8 == v6)
  {
LABEL_8:
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!v8)
      {
        goto LABEL_15;
      }

      if ((a1 & 1) == 0)
      {
        v9 = [v2 listAtIndex_];
        if (([v9 isHidden] & 1) == 0)
        {
          v10 = [v9 firstFreeGridCellIndexOfRangeOfSizeClass:v5 ignoringValidGridLayoutCheck:0 gridCellInfoOptions:a2];
          if (v10 != sub_1BEE467EC())
          {
            goto LABEL_35;
          }
        }
      }

      if (v8 == 1)
      {
LABEL_15:
        if (a1)
        {
          v11 = [v2 listAtIndex_];
          if (([v11 isHidden] & 1) != 0 || (v12 = objc_msgSend(v11, sel_firstFreeGridCellIndexOfRangeOfSizeClass_ignoringValidGridLayoutCheck_gridCellInfoOptions_, v5, 0, a2), v12 == sub_1BEE467EC()))
          {
          }

          else
          {
            v20 = [v11 uniqueIdentifier];
            if (!v20)
            {
              sub_1BEE4708C();
              v20 = sub_1BEE4705C();
            }

            v21 = objc_allocWithZone(SBHIconGridPath);
            v22 = sub_1BEE4705C();
            [v21 initWithFolderIdentifier:v22 listIdentifier:v20 gridCellIndex:v12 gridCellInfoOptions:a2];
          }
        }

        else
        {
        }

        goto LABEL_42;
      }

      v18 = 1;
      while (1)
      {
        v9 = [v2 listAtIndex_];
        if (([v9 isHidden] & 1) == 0)
        {
          v10 = [v9 firstFreeGridCellIndexOfRangeOfSizeClass:v5 ignoringValidGridLayoutCheck:0 gridCellInfoOptions:a2];
          if (v10 != sub_1BEE467EC())
          {
            break;
          }
        }

        ++v18;

        if (v8 == v18)
        {
          goto LABEL_15;
        }
      }

LABEL_35:
      v15 = [v9 uniqueIdentifier];
      if (!v15)
      {
        sub_1BEE4708C();
        v15 = sub_1BEE4705C();
      }

      v19 = objc_allocWithZone(SBHIconGridPath);
      v17 = sub_1BEE4705C();
      [v19 initWithFolderIdentifier:v17 listIdentifier:v15 gridCellIndex:v10 gridCellInfoOptions:a2];

      goto LABEL_38;
    }

LABEL_45:
    __break(1u);
    return;
  }

  v13 = v8;
  while (1)
  {
    if (v13 >= v6)
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v13 || (a1 & 1) == 0)
    {
      break;
    }

LABEL_21:
    if (v6 == ++v13)
    {
      goto LABEL_8;
    }
  }

  v9 = [v2 listAtIndex_];
  if (([v9 isHidden] & 1) != 0 || (v14 = objc_msgSend(v9, sel_firstFreeGridCellIndexOfRangeOfSizeClass_ignoringValidGridLayoutCheck_gridCellInfoOptions_, v5, 0, a2), v14 == sub_1BEE467EC()))
  {

    goto LABEL_21;
  }

  v15 = [v9 uniqueIdentifier];
  if (!v15)
  {
    sub_1BEE4708C();
    v15 = sub_1BEE4705C();
  }

  v16 = objc_allocWithZone(SBHIconGridPath);
  v17 = sub_1BEE4705C();
  [v16 initWithFolderIdentifier:v17 listIdentifier:v15 gridCellIndex:v14 gridCellInfoOptions:a2];

LABEL_38:

LABEL_42:
}

void sub_1BEDE43E8(void *a1, char a2, uint64_t a3)
{
  v6 = [v3 uniqueIdentifier];
  if (!v6)
  {
    sub_1BEE4708C();
    v6 = sub_1BEE4705C();

    sub_1BEE4708C();
  }

  sub_1BEE4708C();

  v7 = a1;

  v8 = [v3 listCount];
  v9 = sub_1BEE467EC();
  if (v9 == sub_1BEE467EC())
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (v8 < v10)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v10 == v8)
  {
LABEL_8:
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (!v10)
      {
        goto LABEL_15;
      }

      if ((a2 & 1) == 0)
      {
        v11 = [v3 listAtIndex_];
        if (([v11 isHidden] & 1) == 0)
        {
          v12 = [v11 firstFreeGridCellIndexOfRangeOfSizeClass:v7 ignoringValidGridLayoutCheck:0 gridCellInfoOptions:a3];
          if (v12 != sub_1BEE467EC())
          {
            goto LABEL_35;
          }
        }
      }

      if (v10 == 1)
      {
LABEL_15:
        if (a2)
        {
          v13 = [v3 listAtIndex_];
          if (([v13 isHidden] & 1) != 0 || (v14 = objc_msgSend(v13, sel_firstFreeGridCellIndexOfRangeOfSizeClass_ignoringValidGridLayoutCheck_gridCellInfoOptions_, v7, 0, a3), v14 == sub_1BEE467EC()))
          {
          }

          else
          {
            v22 = [v13 uniqueIdentifier];
            if (!v22)
            {
              sub_1BEE4708C();
              v22 = sub_1BEE4705C();
            }

            v23 = objc_allocWithZone(SBHIconGridPath);
            v24 = sub_1BEE4705C();
            [v23 initWithFolderIdentifier:v24 listIdentifier:v22 gridCellIndex:v14 gridCellInfoOptions:a3];
          }
        }

        else
        {
        }

        goto LABEL_42;
      }

      v20 = 1;
      while (1)
      {
        v11 = [v3 listAtIndex_];
        if (([v11 isHidden] & 1) == 0)
        {
          v12 = [v11 firstFreeGridCellIndexOfRangeOfSizeClass:v7 ignoringValidGridLayoutCheck:0 gridCellInfoOptions:a3];
          if (v12 != sub_1BEE467EC())
          {
            break;
          }
        }

        ++v20;

        if (v10 == v20)
        {
          goto LABEL_15;
        }
      }

LABEL_35:
      v17 = [v11 uniqueIdentifier];
      if (!v17)
      {
        sub_1BEE4708C();
        v17 = sub_1BEE4705C();
      }

      v21 = objc_allocWithZone(SBHIconGridPath);
      v19 = sub_1BEE4705C();
      [v21 initWithFolderIdentifier:v19 listIdentifier:v17 gridCellIndex:v12 gridCellInfoOptions:a3];

      goto LABEL_38;
    }

LABEL_45:
    __break(1u);
    return;
  }

  v15 = v10;
  while (1)
  {
    if (v15 >= v8)
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v15 || (a2 & 1) == 0)
    {
      break;
    }

LABEL_21:
    if (v8 == ++v15)
    {
      goto LABEL_8;
    }
  }

  v11 = [v3 listAtIndex_];
  if (([v11 isHidden] & 1) != 0 || (v16 = objc_msgSend(v11, sel_firstFreeGridCellIndexOfRangeOfSizeClass_ignoringValidGridLayoutCheck_gridCellInfoOptions_, v7, 0, a3), v16 == sub_1BEE467EC()))
  {

    goto LABEL_21;
  }

  v17 = [v11 uniqueIdentifier];
  if (!v17)
  {
    sub_1BEE4708C();
    v17 = sub_1BEE4705C();
  }

  v18 = objc_allocWithZone(SBHIconGridPath);
  v19 = sub_1BEE4705C();
  [v18 initWithFolderIdentifier:v19 listIdentifier:v17 gridCellIndex:v16 gridCellInfoOptions:a3];

LABEL_38:

LABEL_42:
}

void sub_1BEDE4934(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 uniqueIdentifier];
  if (!v8)
  {
    sub_1BEE4708C();
    v8 = sub_1BEE4705C();

    sub_1BEE4708C();
  }

  sub_1BEE4708C();
  if (a1)
  {
    v9 = a1;
    if ([v3 isExtraList_])
    {

      v10 = [v9 firstFreeGridCellIndexOfRangeOfSizeClass:@"SBHIconGridSizeClassDefault" ignoringValidGridLayoutCheck:0 gridCellInfoOptions:a3];
      if (v10 == sub_1BEE467EC())
      {
      }

      else
      {
        v28 = [v9 uniqueIdentifier];
        if (!v28)
        {
          sub_1BEE4708C();
          v28 = sub_1BEE4705C();
        }

        [objc_allocWithZone(SBHIconGridPath) initWithFolderIdentifier:v8 listIdentifier:v28 gridCellIndex:v10 gridCellInfoOptions:a3];
      }

      return;
    }
  }

  v11 = @"SBHIconGridSizeClassDefault";

  v12 = [v4 listCount];
  if (a1)
  {
    v13 = [v4 indexOfList_];
  }

  else
  {
    v13 = sub_1BEE467EC();
  }

  v14 = v13;
  if (v13 == sub_1BEE467EC())
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v12 < v15)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = a3;
  if (v15 == v12)
  {
LABEL_16:
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (!v15)
      {
        goto LABEL_23;
      }

      if ((a2 & 1) == 0)
      {
        v17 = [v4 listAtIndex_];
        if (([v17 isHidden] & 1) == 0)
        {
          v18 = [v17 firstFreeGridCellIndexOfRangeOfSizeClass:v11 ignoringValidGridLayoutCheck:0 gridCellInfoOptions:v16];
          if (v18 != sub_1BEE467EC())
          {
            goto LABEL_44;
          }
        }
      }

      if (v15 == 1)
      {
LABEL_23:
        if (a2)
        {
          v19 = [v4 listAtIndex_];
          if (([v19 isHidden] & 1) == 0)
          {
            v20 = [v19 firstFreeGridCellIndexOfRangeOfSizeClass:v11 ignoringValidGridLayoutCheck:0 gridCellInfoOptions:v16];
            if (v20 != sub_1BEE467EC())
            {
              v29 = [v19 uniqueIdentifier];
              if (!v29)
              {
                sub_1BEE4708C();
                v29 = sub_1BEE4705C();
              }

              v30 = objc_allocWithZone(SBHIconGridPath);
              v31 = sub_1BEE4705C();
              [v30 initWithFolderIdentifier:v31 listIdentifier:v29 gridCellIndex:v20 gridCellInfoOptions:v16];

              swift_bridgeObjectRelease_n();
              return;
            }
          }
        }

        else
        {
        }

        return;
      }

      v26 = 1;
      while (1)
      {
        v17 = [v4 listAtIndex_];
        if (([v17 isHidden] & 1) == 0)
        {
          v18 = [v17 firstFreeGridCellIndexOfRangeOfSizeClass:v11 ignoringValidGridLayoutCheck:0 gridCellInfoOptions:v16];
          if (v18 != sub_1BEE467EC())
          {
            break;
          }
        }

        ++v26;

        if (v15 == v26)
        {
          goto LABEL_23;
        }
      }

LABEL_44:
      v23 = [v17 uniqueIdentifier];
      if (!v23)
      {
        sub_1BEE4708C();
        v23 = sub_1BEE4705C();
      }

      v27 = objc_allocWithZone(SBHIconGridPath);
      v25 = sub_1BEE4705C();
      [v27 initWithFolderIdentifier:v25 listIdentifier:v23 gridCellIndex:v18 gridCellInfoOptions:v16];

      goto LABEL_47;
    }

LABEL_56:
    __break(1u);
    return;
  }

  v21 = v15;
  while (1)
  {
    if (v21 >= v12)
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v21 || (a2 & 1) == 0)
    {
      break;
    }

LABEL_29:
    if (v12 == ++v21)
    {
      goto LABEL_16;
    }
  }

  v17 = [v4 listAtIndex_];
  if (([v17 isHidden] & 1) != 0 || (v22 = objc_msgSend(v17, sel_firstFreeGridCellIndexOfRangeOfSizeClass_ignoringValidGridLayoutCheck_gridCellInfoOptions_, v11, 0, v16), v22 == sub_1BEE467EC()))
  {

    goto LABEL_29;
  }

  v23 = [v17 uniqueIdentifier];
  if (!v23)
  {
    sub_1BEE4708C();
    v23 = sub_1BEE4705C();
  }

  v24 = objc_allocWithZone(SBHIconGridPath);
  v25 = sub_1BEE4705C();
  [v24 initWithFolderIdentifier:v25 listIdentifier:v23 gridCellIndex:v22 gridCellInfoOptions:v16];

LABEL_47:
  swift_bridgeObjectRelease_n();
}

void sub_1BEDE4FA4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 uniqueIdentifier];
  if (!v8)
  {
    sub_1BEE4708C();
    v8 = sub_1BEE4705C();

    sub_1BEE4708C();
  }

  v9 = sub_1BEE4708C();
  if (!a2)
  {
LABEL_8:

    v12 = a1;

    v13 = [v4 listCount];
    if (a2)
    {
      v14 = [v4 indexOfList_];
    }

    else
    {
      v14 = sub_1BEE467EC();
    }

    v15 = v14;
    if (v14 == sub_1BEE467EC())
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    if (v13 < v16)
    {
LABEL_39:
      __break(1u);
    }

    else
    {
      v28 = v9;
      v17 = a3;
      if (v16 != v13)
      {
        v24 = v16;
        while (1)
        {
          if (v24 >= v13)
          {
            __break(1u);
            goto LABEL_39;
          }

          v19 = [v4 listAtIndex_];
          if (![v19 isHidden])
          {
            v25 = [v19 firstFreeGridCellIndexOfRangeOfSizeClass:v12 ignoringValidGridLayoutCheck:0 gridCellInfoOptions:v17];
            if (v25 != sub_1BEE467EC())
            {
              break;
            }
          }

          ++v24;

          if (v13 == v24)
          {
            goto LABEL_16;
          }
        }

        v21 = [v19 uniqueIdentifier];
        if (!v21)
        {
          sub_1BEE4708C();
          v21 = sub_1BEE4705C();
        }

        v26 = objc_allocWithZone(SBHIconGridPath);
        v23 = sub_1BEE4705C();
        [v26 initWithFolderIdentifier:v23 listIdentifier:v21 gridCellIndex:v25 gridCellInfoOptions:{v17, v9}];
LABEL_34:

        swift_bridgeObjectRelease_n();
        return;
      }

LABEL_16:
      if ((v16 & 0x8000000000000000) == 0)
      {
        if (!v16)
        {
LABEL_25:

          swift_bridgeObjectRelease_n();
          return;
        }

        v18 = 0;
        while (1)
        {
          v19 = [v4 listAtIndex_];
          if (![v19 isHidden])
          {
            v20 = [v19 firstFreeGridCellIndexOfRangeOfSizeClass:v12 ignoringValidGridLayoutCheck:0 gridCellInfoOptions:v17];
            if (v20 != sub_1BEE467EC())
            {
              break;
            }
          }

          ++v18;

          if (v16 == v18)
          {
            goto LABEL_25;
          }
        }

        v21 = [v19 uniqueIdentifier];
        if (!v21)
        {
          sub_1BEE4708C();
          v21 = sub_1BEE4705C();
        }

        v22 = objc_allocWithZone(SBHIconGridPath);
        v23 = sub_1BEE4705C();
        [v22 initWithFolderIdentifier:v23 listIdentifier:v21 gridCellIndex:v20 gridCellInfoOptions:{v17, v28}];
        goto LABEL_34;
      }
    }

    __break(1u);
    return;
  }

  v10 = a2;
  if (![v4 isExtraList_])
  {

    goto LABEL_8;
  }

  v11 = [v10 firstFreeGridCellIndexOfRangeOfSizeClass:a1 ignoringValidGridLayoutCheck:0 gridCellInfoOptions:a3];
  if (v11 == sub_1BEE467EC())
  {
  }

  else
  {
    v27 = [v10 uniqueIdentifier];
    if (!v27)
    {
      sub_1BEE4708C();
      v27 = sub_1BEE4705C();
    }

    [objc_allocWithZone(SBHIconGridPath) initWithFolderIdentifier:v8 listIdentifier:v27 gridCellIndex:v11 gridCellInfoOptions:a3];
  }
}

uint64_t sub_1BEDE56E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t isEscapingClosureAtFileLocation)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (aBlock - v13);
  v15 = sub_1BEE4705C();
  v16 = [a1 indexForIconWithIdentifier_];

  if (v16 == sub_1BEE467EC())
  {
    v14 = swift_allocObject();
    v14[2] = a4;
    v14[3] = a5;
    v14[4] = a2;
    v14[5] = isEscapingClosureAtFileLocation;
    v14[6] = a3;
    a3 = swift_allocObject();
    *(a3 + 16) = sub_1BEDFB8B0;
    *(a3 + 24) = v14;
    aBlock[4] = sub_1BEDFBF70;
    v22 = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BEB5E290;
    aBlock[3] = &block_descriptor_460;
    v17 = _Block_copy(aBlock);
    a2 = v22;

    [a1 enumerateFolderIconsUsingBlock_];
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v19 = [objc_opt_self() indexPathWithIconIndex:v16 listIndex:a2];
  sub_1BEE4697C();

  v20 = sub_1BEE469DC();
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  result = sub_1BEB384A0(v14, isEscapingClosureAtFileLocation);
  *a3 = 1;
  return result;
}

void sub_1BEDE597C(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v32 = a7;
  v33 = a8;
  v30 = a6;
  v31 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_1BEE469DC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v29 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  v34 = [a1 folder];
  if (v34)
  {
    v23 = sub_1BEE4705C();
    v24 = [v34 indexPathForIconWithIdentifier_];

    if (v24)
    {
      sub_1BEE4697C();

      (*(v14 + 32))(v22, v20, v13);
      v25 = [objc_opt_self() indexPathWithIconIndex:a2 listIndex:v30];
      sub_1BEE4697C();

      sub_1BEE469AC();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_1BEB384A0(v12, v32);
      *v31 = 1;
      v26 = v34;
      *v33 = 1;

      v27 = *(v14 + 8);
      v27(v17, v13);
      v27(v22, v13);
    }

    else
    {
      v28 = v34;
    }
  }
}

uint64_t sub_1BEDE5C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1BEE4695C();
  sub_1BEB49FBC(&unk_1EBDBFFB0, MEMORY[0x1E6969B50]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A00);
  sub_1BEB53980(&qword_1EBDBFF80, &qword_1EBDC7A00);
  sub_1BEE4743C();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BEDFB858;
  *(v9 + 24) = v8;
  v12[4] = sub_1BEDFBF6C;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1BEE39C64;
  v12[3] = &block_descriptor_440;
  v10 = _Block_copy(v12);

  [v4 enumerateListsUsingBlock_];
  _Block_release(v10);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BEDE5FA4(uint64_t a1, uint64_t a2)
{
  v12 = sub_1BEE467EC();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BEDFB808;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_429;
  v7 = _Block_copy(aBlock);

  [v2 enumerateListsUsingBlock_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

id sub_1BEDE6188(uint64_t a1, uint64_t a2)
{
  result = [v2 listContainingIcon_];
  if (result)
  {
    v6 = result;
    v7 = [result folder];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 rootFolder];
      sub_1BEB20D28(0, &qword_1EBDBFE90);
      v10 = 0;
      if ((sub_1BEE473CC() & 1) == 0)
      {
        v11 = [v8 uniqueIdentifier];
        sub_1BEE4708C();
        v10 = v12;
      }

      v13 = [v6 uniqueIdentifier];
      if (!v13)
      {
        sub_1BEE4708C();
        v13 = sub_1BEE4705C();
      }

      v14 = [v6 gridCellIndexForIcon:a1 gridCellInfoOptions:a2];
      if (v14 == sub_1BEE467EC())
      {

        return 0;
      }

      else
      {
        if (v10)
        {
          v15 = sub_1BEE4705C();
        }

        else
        {
          v15 = 0;
        }

        v16 = [objc_allocWithZone(SBHIconGridPath) initWithFolderIdentifier:v15 listIdentifier:v13 gridCellIndex:v14 gridCellInfoOptions:a2];

        return v16;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1BEDE63DC(uint64_t a1, unint64_t a2)
{
  v5 = [v2 listContainingIcon_];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 folder];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 rootFolder];
      sub_1BEB20D28(0, &qword_1EBDBFE90);
      v65 = 0;
      if ((sub_1BEE473CC() & 1) == 0)
      {
        v10 = [v8 uniqueIdentifier];
        sub_1BEE4708C();
        v65 = v11;
      }

      v67 = a1;
      v12 = [v6 uniqueIdentifier];
      if (!v12)
      {
        sub_1BEE4708C();
        v13 = sub_1BEE4705C();

        v12 = v13;
      }

      v64 = v12;
      v66 = [v6 gridCellInfoWithOptions_];
      v14 = [v6 iconsForGridRange:0 gridCellInfo:{objc_msgSend(v66, sel_gridSize), v66}];
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v15 = sub_1BEE471AC();

      v16 = sub_1BEB31AEC(v67, v15, &qword_1EBDBFEA0);
      if ((v17 & 1) == 0)
      {
        v18 = v16;
        if (v16 < 0)
        {
          goto LABEL_76;
        }

        v63 = v6;
        v6 = v15 >> 62;
        if (v15 >> 62)
        {
          goto LABEL_77;
        }

        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < v16)
        {
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
        }

        else
        {
          while (1)
          {
            v19 = v15 & 0xC000000000000001;
            if ((v15 & 0xC000000000000001) != 0)
            {

              if (v18)
              {
                v20 = 0;
                do
                {
                  v21 = v20 + 1;
                  sub_1BEE475BC();
                  v20 = v21;
                }

                while (v18 != v21);
              }
            }

            else
            {
            }

            v61 = v8;
            v62 = a2;
            v60 = v9;
            if (v6)
            {

              sub_1BEE4767C();
              a2 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                goto LABEL_88;
              }

              v8 = v24;
              v9 = v25;
              v27 = v26;
              v28 = sub_1BEE474CC();
              if (v28 < a2)
              {
                goto LABEL_90;
              }

              v23 = v28;
              v22 = sub_1BEE474CC();
              v18 = v27 >> 1;
              v19 = v15 & 0xC000000000000001;
            }

            else
            {
              if (__OFADD__(v18, 1))
              {
                goto LABEL_87;
              }

              v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v22 < v18 + 1)
              {
                goto LABEL_89;
              }

              a2 = v18 + 1;
              v9 = 0;
              v8 = ((v15 & 0xFFFFFFFFFFFFFF8) + 32);
              v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v22 < a2)
            {
              goto LABEL_80;
            }

            if ((a2 & 0x8000000000000000) != 0)
            {
              break;
            }

            if (v6)
            {
              v29 = sub_1BEE474CC();
            }

            else
            {
              v29 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v29 < v23)
            {
              goto LABEL_82;
            }

            if (v23 < 0)
            {
              goto LABEL_83;
            }

            if (!v19 || a2 == v23)
            {

              swift_unknownObjectRetain();
            }

            else
            {
              if (a2 >= v23)
              {
                goto LABEL_91;
              }

              swift_unknownObjectRetain();
              v30 = a2;
              do
              {
                v31 = v30 + 1;
                sub_1BEE475BC();
                v30 = v31;
              }

              while (v23 != v31);
            }

            if (v6)
            {
              sub_1BEE4767C();
              v32 = v33;
              a2 = v34;
              v36 = v35;

              v23 = v36 >> 1;
            }

            else
            {
              v32 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
            }

            v6 = v18 - v9;
            if (__OFSUB__(v18, v9))
            {
              goto LABEL_84;
            }

            v59 = v32;
            if (v6)
            {
              v58 = a2;
              v68 = MEMORY[0x1E69E7CC0];
              swift_unknownObjectRetain();
              v15 = &v68;
              sub_1BEE308FC(0, v6 & ~(v6 >> 63), 0);
              v37 = v68;
              swift_unknownObjectRelease();
              if (v6 < 0)
              {
                goto LABEL_85;
              }

              if (v9 <= v18)
              {
                v38 = v18;
              }

              else
              {
                v38 = v9;
              }

              v39 = v38 - v9;
              v8 += v9;
              do
              {
                if (!v39)
                {
                  __break(1u);
                  goto LABEL_75;
                }

                v15 = *v8;
                v40 = [v15 uniqueIdentifier];
                v18 = sub_1BEE4708C();
                v9 = v41;

                v68 = v37;
                a2 = *(v37 + 16);
                v42 = *(v37 + 24);
                if (a2 >= v42 >> 1)
                {
                  v15 = &v68;
                  sub_1BEE308FC((v42 > 1), a2 + 1, 1);
                  v37 = v68;
                }

                *(v37 + 16) = a2 + 1;
                v43 = v37 + 16 * a2;
                *(v43 + 32) = v18;
                *(v43 + 40) = v9;
                --v39;
                ++v8;
                --v6;
              }

              while (v6);
              a2 = v58;
              v6 = v23 - v58;
              if (__OFSUB__(v23, v58))
              {
                goto LABEL_67;
              }
            }

            else
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              v6 = v23 - a2;
              if (__OFSUB__(v23, a2))
              {
LABEL_67:
                __break(1u);
LABEL_68:
                swift_unknownObjectRelease();
LABEL_69:
                v52 = [v63 gridCellIndexForIcon:v67 gridCellInfo:v66];
                v53 = [v66 gridSize];
                if (v65)
                {
                  v54 = sub_1BEE4705C();
                }

                else
                {
                  v54 = 0;
                }

                v55 = objc_allocWithZone(SBHIconRelativePath);
                v56 = sub_1BEE4719C();

                v57 = sub_1BEE4719C();

                [v55 initWithFolderIdentifier:v54 listIdentifier:v64 priorIconIdentifiers:v56 subsequentIconIdentifiers:v57 gridCellIndex:v52 gridSize:v53 gridCellInfoOptions:v62];

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                return;
              }
            }

            if (!v6)
            {
              goto LABEL_68;
            }

            v68 = MEMORY[0x1E69E7CC0];
            sub_1BEE308FC(0, v6 & ~(v6 >> 63), 0);
            v15 = v68;
            swift_unknownObjectRelease();
            if (v6 < 0)
            {
              goto LABEL_86;
            }

            if (a2 <= v23)
            {
              v44 = v23;
            }

            else
            {
              v44 = a2;
            }

            v45 = v44 - a2;
            v46 = (v59 + 8 * a2);
            while (v45)
            {
              v47 = *v46;
              v9 = [v47 uniqueIdentifier];
              v48 = sub_1BEE4708C();
              v18 = v49;

              v68 = v15;
              a2 = *(v15 + 16);
              v50 = *(v15 + 24);
              v8 = (a2 + 1);
              if (a2 >= v50 >> 1)
              {
                sub_1BEE308FC((v50 > 1), a2 + 1, 1);
                v15 = v68;
              }

              *(v15 + 16) = v8;
              v51 = v15 + 16 * a2;
              *(v51 + 32) = v48;
              *(v51 + 40) = v18;
              --v45;
              ++v46;
              if (!--v6)
              {
                goto LABEL_69;
              }
            }

LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            if (sub_1BEE474CC() < 0)
            {
              goto LABEL_93;
            }

            if (sub_1BEE474CC() < v18)
            {
              goto LABEL_79;
            }
          }
        }

        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
      }

      __break(1u);
LABEL_93:
      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_1BEDE6BAC(void *a1)
{
  v2 = v1;
  v4 = [a1 folderIdentifier];
  v5 = [a1 listIdentifier];
  if (!v5)
  {
    sub_1BEE4708C();
    v5 = sub_1BEE4705C();
  }

  v6 = [v2 listWithIdentifier:v5 inFolderWithIdentifier:v4];

  if (!v6)
  {
    return 0;
  }

  v7 = [a1 folderIdentifier];
  if (v7)
  {
    v8 = v7;
    v46 = sub_1BEE4708C();
    v10 = v9;
  }

  else
  {
    v46 = 0;
    v10 = 0;
  }

  v11 = [a1 listIdentifier];
  v12 = v11;
  v13 = v11;
  if (!v11)
  {
    sub_1BEE4708C();
    v13 = sub_1BEE4705C();

    sub_1BEE4708C();
    v12 = sub_1BEE4705C();

    v11 = 0;
  }

  v14 = v11;
  v15 = [a1 gridCellInfoOptions];
  v16 = [a1 gridSize];
  v17 = [v6 gridCellInfoWithOptions_];
  if (![v6 allowsFixedIconLocations] || !SBHIconGridSizeEqualToIconGridSize(v16, objc_msgSend(v17, sel_gridSize)) || (v18 = objc_msgSend(a1, sel_gridCellIndex), !objc_msgSend(v6, sel_isValidGridCellIndex_options_, v18, v15)))
  {
LABEL_19:
    v47 = v15;
    v48 = v12;
    v49 = v17;

    v50 = sub_1BEE467EC();
    v23 = [a1 subsequentIconIdentifiers];
    v24 = sub_1BEE471AC();

    v25 = [a1 priorIconIdentifiers];
    v26 = sub_1BEE471AC();

    v27 = 0;
    v28 = *(v24 + 16);
    v29 = v24 + 40;
    while (v28 != v27)
    {
      if (v27 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_50;
      }

      ++v27;
      v30 = v29 + 16;

      v31 = sub_1BEE4705C();

      v25 = [v6 indexForIconWithIdentifier_];

      v32 = sub_1BEE467EC();
      v29 = v30;
      if (v25 != v32)
      {

        v33 = v25;
        v25 = v49;
        v34 = [v49 gridCellIndexForIconIndex_];
        goto LABEL_25;
      }
    }

    v25 = v49;
    v34 = v50;
LABEL_25:
    result = sub_1BEE467EC();
    if (v34 != result)
    {
LABEL_33:
      v43 = v10;
      goto LABEL_34;
    }

    v50 = v34;
    v36 = *(v26 + 16);
    v37 = v36 + 1;
    v38 = v26 + 16 * v36 + 24;
    while (--v37)
    {
      if (v37 > *(v26 + 16))
      {
        __break(1u);
        return result;
      }

      v39 = v38 - 16;

      v40 = sub_1BEE4705C();

      v41 = [v6 indexForIconWithIdentifier_];

      result = sub_1BEE467EC();
      v38 = v39;
      if (v41 != result)
      {
        v42 = [v25 gridCellIndexForIconIndex_];
        v34 = v42 + 1;
        v43 = v10;
        if (!__OFADD__(v42, 1))
        {
          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_33;
      }
    }

LABEL_50:
    v43 = v10;
    v34 = v50;
LABEL_34:
    if (v34 == sub_1BEE467EC() && !v28)
    {
      v45 = *(v26 + 16);

      if (!v45 && [v6 isEmpty])
      {
        v34 = 0;
      }
    }

    else
    {
    }

    if (v34 != sub_1BEE467EC())
    {
      if (v43)
      {
        v44 = sub_1BEE4705C();
      }

      else
      {
        v44 = 0;
      }

      v22 = [objc_allocWithZone(SBHIconGridPath) initWithFolderIdentifier:v44 listIdentifier:v48 gridCellIndex:v34 gridCellInfoOptions:v47];

      return v22;
    }

    return 0;
  }

  v19 = [v17 contiguousRegionForGridCellIndex_];
  v20 = v19;
  if (v19 && ![v19 gridRange])
  {

    goto LABEL_19;
  }

  if (v10)
  {
    v21 = sub_1BEE4705C();
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_allocWithZone(SBHIconGridPath) initWithFolderIdentifier:v21 listIdentifier:v13 gridCellIndex:v18 gridCellInfoOptions:v15];

  return v22;
}

id sub_1BEDE7188(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BEE4696C();
  v17[0] = 0;
  v5 = [v2 folderContainingIndexPath:v4 relativeIndexPath:v17];

  if (!v5)
  {
    return 0;
  }

  if (v17[0])
  {
    v6 = v17[0];
    v7 = [v6 sbListIndex];
    v8 = [v6 sbIconIndex];
    v9 = [v5 listAtIndex_];
    v10 = [v9 gridCellIndexForIconIndex:v8 gridCellInfoOptions:a2];
    if (v10 == sub_1BEE467EC())
    {

      return 0;
    }

    v12 = [v5 uniqueIdentifier];
    sub_1BEE4708C();

    v13 = [v9 uniqueIdentifier];
    if (!v13)
    {
      sub_1BEE4708C();
      v13 = sub_1BEE4705C();
    }

    v14 = objc_allocWithZone(SBHIconGridPath);
    v15 = sub_1BEE4705C();

    v16 = [v14 initWithFolderIdentifier:v15 listIdentifier:v13 gridCellIndex:v10 gridCellInfoOptions:a2];

    return v16;
  }

  else
  {

    return 0;
  }
}

id sub_1BEDE74AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  v65[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BEE469DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1BEDCF690(MEMORY[0x1E69E7CC0]);
  v11 = sub_1BEDCF878(v9);
  v12 = *(a1 + 16);
  if (!v12)
  {

    return v10;
  }

  v59 = v3;
  v60 = v11;
  v56 = v10;
  v57 = v5;
  v14 = *(v6 + 16);
  v13 = v6 + 16;
  v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v63 = (v13 - 8);
  v64 = v14;
  v62 = *(v13 + 56);
  v54 = v8;
  v55 = v13;
  v14(v8, v15, v5);
  while (1)
  {
    v18 = sub_1BEE4696C();
    v65[0] = 0;
    v19 = [v3 folderContainingIndexPath:v18 relativeIndexPath:v65];

    if (!v19)
    {
      v16 = *v63;
      v17 = v65[0];
      v16(v8, v5);
      goto LABEL_4;
    }

    if (!v65[0])
    {
      (*v63)(v8, v5);
      v17 = v19;
      goto LABEL_4;
    }

    v17 = v65[0];
    v20 = [v17 sbListIndex];
    v61 = [v17 sbIconIndex];
    v21 = [v19 listAtIndex_];
    v22 = [v21 uniqueIdentifier];
    v23 = sub_1BEE4708C();
    v25 = v24;

    v26 = v60;
    if (v60[2])
    {
      v27 = sub_1BEB1DAFC(v23, v25);
      v29 = v28;

      if (v29)
      {
        v30 = *(v26[7] + 8 * v27);
        v31 = v21;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v32 = [v21 gridCellInfoWithOptions_];
    v33 = [v21 uniqueIdentifier];
    v34 = sub_1BEE4708C();
    v36 = v35;

    v31 = v21;
    v30 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65[0] = v26;
    v38 = v34;
    v5 = v57;
    sub_1BEE31D64(v30, v38, v36, isUniquelyReferenced_nonNull_native);

    v60 = v65[0];
LABEL_14:
    v39 = [v31 gridCellIndexForIconIndex:v61 gridCellInfo:v30];
    v40 = sub_1BEE467EC();
    v3 = v59;
    if (v39 == v40)
    {
      v41 = v54;
      (*v63)(v54, v5);

      v8 = v41;
      v17 = v19;
    }

    else
    {
      v42 = v31;
      v43 = [v19 uniqueIdentifier];
      v53 = sub_1BEE4708C();

      v61 = v42;
      v44 = [v42 uniqueIdentifier];
      if (!v44)
      {
        sub_1BEE4708C();
        v44 = sub_1BEE4705C();
      }

      v45 = objc_allocWithZone(SBHIconGridPath);
      v46 = sub_1BEE4705C();

      v47 = [v45 initWithFolderIdentifier:v46 listIdentifier:v44 gridCellIndex:v39 gridCellInfoOptions:v58];

      v48 = v47;
      v49 = v56;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v49;
      v51 = v54;
      sub_1BEE31B98(v48, v54, v50);

      v8 = v51;
      v56 = v65[0];
      v5 = v57;
      (*v63)(v51, v57);
      v3 = v59;
    }

LABEL_4:

    v15 += v62;
    if (!--v12)
    {
      break;
    }

    v64(v8, v15, v5);
  }

  return v56;
}

id sub_1BEDE7CB4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 folder];
  v8 = [v3 rootFolder];
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      type metadata accessor for SBFolder(v8);
      v10 = sub_1BEE473CC();

      if (v10)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v9 = v7;
  }

  else if (!v8)
  {
    goto LABEL_11;
  }

LABEL_9:
  v11 = [a1 folder];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 uniqueIdentifier];

    sub_1BEE4708C();
    v15 = v14;

    goto LABEL_12;
  }

LABEL_11:
  v15 = 0;
LABEL_12:
  v16 = [a1 uniqueIdentifier];
  if (!v16)
  {
    sub_1BEE4708C();
    v16 = sub_1BEE4705C();

    if (v15)
    {
      goto LABEL_14;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_14:
  v17 = sub_1BEE4705C();

LABEL_17:
  v18 = [objc_allocWithZone(SBHIconGridPath) initWithFolderIdentifier:v17 listIdentifier:v16 gridCellIndex:a2 gridCellInfoOptions:a3];

  return v18;
}