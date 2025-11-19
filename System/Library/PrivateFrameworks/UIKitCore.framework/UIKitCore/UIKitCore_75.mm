uint64_t _UILayerAncestorsHaveAllBeenCommitted(void *a1)
{
  v2 = a1;
  v3 = v2;
  if (a1)
  {
    if ([v2 hasBeenCommitted])
    {
      v4 = [v3 superlayer];
      HaveAllBeenCommitted = _UILayerAncestorsHaveAllBeenCommitted();
    }

    else
    {
      HaveAllBeenCommitted = 0;
    }
  }

  else
  {
    HaveAllBeenCommitted = 1;
  }

  return HaveAllBeenCommitted;
}

uint64_t UIPasteControlConfiguration.cornerStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = [v1 cornerStyle];

  return sub_188EAAD34(v3, a1);
}

id (*UIPasteControlConfiguration.cornerStyle.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_188EAAD34([v1 cornerStyle], (a1 + 8));
  return sub_18921CAD4;
}

uint64_t sub_18921CAEC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_18A4A7838();
  if (!v19)
  {
    return sub_18A4A75C8();
  }

  v41 = v19;
  v45 = sub_18A4A8248();
  v32 = sub_18A4A8258();
  sub_18A4A81F8();
  result = sub_18A4A7818();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_18A4A78C8();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_18A4A8238();
      result = sub_18A4A7888();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall UIEdgeInsetsEqualToEdgeInsets(_:_:)(UIEdgeInsets a1, UIEdgeInsets a2)
{
  v2 = a1.top == a2.top;
  if (a1.left != a2.left)
  {
    v2 = 0;
  }

  if (a1.bottom != a2.bottom)
  {
    v2 = 0;
  }

  return a1.right == a2.right && v2;
}

uint64_t sub_18921CFE0(void *a1, double a2, double a3, double a4, double a5)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A89A8();
  v13 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  sub_18919878C();
  sub_18A4A8658();
  if (!v5)
  {
    v13 = a3;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_18A4A8658();
    v13 = a4;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_18A4A8658();
    v13 = a5;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_18A4A8658();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

void sub_18921D168(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18922398C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_18921D1C8(void *a1, double a2, double a3)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A89A8();
  v9 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_18919878C();
  sub_18A4A8658();
  if (!v3)
  {
    v9 = a3;
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_18A4A8658();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

void sub_18921D2C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_189223B54(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t static _UIKitNumericRawRepresentable.< infix(_:_:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_18A4A74E8();
  sub_18A4A74E8();
  swift_getAssociatedConformanceWitness();
  v7 = sub_18A4A7218();
  v8 = *(v1 + 8);
  v8(v3, AssociatedTypeWitness);
  v8(v6, AssociatedTypeWitness);
  return v7 & 1;
}

uint64_t static _UIKitNumericRawRepresentable.+ infix(_:_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v14 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_18A4A74E8();
  swift_getAssociatedConformanceWitness();
  sub_18A4A83C8();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  sub_18A4A74F8();
  v11 = *(a1 - 8);
  result = (*(v11 + 48))(v10, 1, a1);
  if (result != 1)
  {
    return (*(v11 + 32))(v14, v10, a1);
  }

  __break(1u);
  return result;
}

uint64_t static _UIKitNumericRawRepresentable.- infix(_:_:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  sub_18A4A74E8();
  sub_18A4A74E8();
  swift_getAssociatedConformanceWitness();
  sub_18A4A83D8();
  v7 = *(v1 + 8);
  v7(v3, AssociatedTypeWitness);
  return (v7)(v6, AssociatedTypeWitness);
}

uint64_t sub_18921D868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, void))
{
  v18 = a2;
  v19 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  sub_18A4A74E8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19(v10, v18, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  sub_18A4A74F8();
  v16 = *(a3 - 8);
  result = (*(v16 + 48))(v14, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 8))(a1, a3);
    return (*(v16 + 32))(a1, v14, a3);
  }

  return result;
}

id UIActionSheet.init(title:delegate:cancelButtonTitle:destructiveButtonTitle:otherButtonTitles:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    v13 = sub_18A4A7258();

    v14 = a10;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  v14 = a10;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = sub_18A4A7258();

  if (a7)
  {
LABEL_4:
    v16 = sub_18A4A7258();

    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v13 delegate:a3 cancelButtonTitle:v15 destructiveButtonTitle:v16];

  v18 = v17;
  v19 = sub_18A4A7258();

  [v18 addButtonWithTitle_];

  v20 = *(v14 + 16);
  if (v20)
  {
    v21 = v14 + 40;
    do
    {

      v22 = sub_18A4A7258();

      [v18 addButtonWithTitle_];

      v21 += 16;
      --v20;
    }

    while (v20);
  }

  swift_unknownObjectRelease();
  return v18;
}

id UIAlertView.init(title:message:delegate:cancelButtonTitle:otherButtonTitles:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = sub_18A4A7258();

  v13 = sub_18A4A7258();

  swift_unknownObjectRetain();
  if (a7)
  {
    v14 = sub_18A4A7258();
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v12 message:v13 delegate:a5 cancelButtonTitle:v14];

  swift_unknownObjectRelease();
  v16 = v15;
  v17 = sub_18A4A7258();

  [v16 addButtonWithTitle_];

  v18 = *(a10 + 16);
  if (v18)
  {
    v19 = a10 + 40;
    do
    {

      v20 = sub_18A4A7258();

      [v16 addButtonWithTitle_];

      v19 += 16;
      --v18;
    }

    while (v18);
  }

  swift_unknownObjectRelease();
  return v16;
}

void UIView._defaultCustomPlaygroundQuickLook.getter(uint64_t a1@<X8>)
{
  if (qword_1EA932048 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EA9951D0;

  v4 = sub_18907FAA4(v1, v3);

  if ((v4 & 1) != 0 || (swift_beginAccess(), v5 = v1, sub_188E70E0C(&v17, v5), swift_endAccess(), v17, [v5 bounds], v6 == 0.0) || (objc_msgSend(v5, sel_bounds), v7 == 0.0))
  {
    v8 = [objc_allocWithZone(UIImage) init];
    *(a1 + 24) = sub_188A34624(0, &unk_1EA93A1A0);
    *a1 = v8;
LABEL_7:
    *(a1 + 32) = 15;
    return;
  }

  [v5 bounds];
  v18.width = v9;
  v18.height = v10;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  v11 = UIGraphicsGetCurrentContext();
  v12 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  [v12 set];

  if (v11)
  {
    v13 = v11;
    [v5 bounds];
    CGContextFillRect(v13, v19);

    v14 = [v5 layer];
    [v14 renderInContext_];

    v15 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    swift_beginAccess();
    v16 = sub_188BECA14(v5, &qword_1ED48F680, off_1E70EAD78, sub_188E79D44, sub_1891D6F68);
    swift_endAccess();

    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9362F0);
    *a1 = v15;
    goto LABEL_7;
  }

  __break(1u);
}

id sub_18921E170@<X0>(void *a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:a2 green:a3 blue:a4 alpha:a5];
  *a1 = result;
  return result;
}

void __swiftcall UIImage.init(imageLiteralResourceName:)(UIImage *__return_ptr retstr, Swift::String imageLiteralResourceName)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_18A4A7258();
  v4 = [ObjCClassFromMetadata imageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_18921E264(void *a1@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_18A4A7258();
  v4 = [ObjCClassFromMetadata imageNamed_];

  if (v4)
  {

    *a1 = v4;
  }

  else
  {
    __break(1u);
  }
}

id UIFontTextStyle.metrics.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(UIFontMetrics);

  return [v2 initForTextStyle_];
}

id UIDropSession.loadObjects<A>(ofClass:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a2;
  v13[6] = a3;
  v17[4] = sub_189223C84;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_18921E62C;
  v17[3] = &block_descriptor_3_7;
  v14 = _Block_copy(v17);

  v15 = [v6 loadObjectsOfClass:ObjCClassFromMetadata completion:v14];
  _Block_release(v14);
  return v15;
}

uint64_t sub_18921E500(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[7] = a1;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940B80);
  v9 = sub_189224E0C();
  sub_18921CAEC(sub_189224DE8, v12, v8, a5, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  a2();
}

uint64_t sub_18921E5C0()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940B78);
  return swift_dynamicCast();
}

uint64_t sub_18921E62C(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940B78);
  v2 = sub_18A4A7548();

  v1(v2);
}

id UIPasteConfiguration.init<A>(forAccepting:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  swift_getAssociatedTypeWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v0 initWithTypeIdentifiersForAcceptingClass_];
}

id UIPasteConfiguration.addTypeIdentifiers<A>(forAccepting:)()
{
  swift_getAssociatedTypeWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v0 addTypeIdentifiersForAcceptingClass_];
}

void UIPasteboard.setObjects<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[5] = a1;
  v9[2] = a2;
  v9[3] = a3;
  v4 = sub_18A4A7648();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940A28);
  WitnessTable = swift_getWitnessTable();
  sub_18921CAEC(sub_189224E7C, v9, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
  v8 = sub_18A4A7518();

  [v3 setObjects_];
}

void UIPasteboard.setObjects<A>(_:localOnly:expirationDate:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23[-v13];
  v26 = a1;
  v24 = a4;
  v25 = a5;
  v15 = sub_18A4A7648();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940A28);
  WitnessTable = swift_getWitnessTable();
  sub_18921CAEC(sub_189223C94, v23, v15, v16, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);
  v19 = sub_18A4A7518();

  sub_188A3F29C(a3, v14, &unk_1EA940A30);
  v20 = sub_18A4A2968();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v14, 1, v20) != 1)
  {
    v22 = sub_18A4A2948();
    (*(v21 + 8))(v14, v20);
  }

  [v6 setObjects:v19 localOnly:a2 & 1 expirationDate:v22];
}

uint64_t UIStoryboard.instantiateInitialViewController<A>(creator:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v9[4] = sub_189223CD8;
    v9[5] = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_18921EBB4;
    v9[3] = &block_descriptor_9_5;
    v6 = _Block_copy(v9);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v2 instantiateInitialViewControllerWithCreator_];
  _Block_release(v6);
  if (v7)
  {
    return swift_dynamicCastUnknownClassUnconditional();
  }

  else
  {
    return 0;
  }
}

id sub_18921EBB4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

uint64_t UIStoryboard.instantiateViewController<A>(identifier:creator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_18A4A7258();
  if (a3)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v13[4] = sub_189224F84;
    v13[5] = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_18921EBB4;
    v13[3] = &block_descriptor_16_5;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 instantiateViewControllerWithIdentifier:v8 creator:v10];
  _Block_release(v10);

  return swift_dynamicCastUnknownClassUnconditional();
}

id NSDiffableDataSourceSnapshot.numberOfItems(inSection:)()
{
  v1 = *(*v0 + 16);
  v2 = [v1 numberOfItemsInSection_];

  swift_unknownObjectRelease();
  return v2;
}

id NSDiffableDataSourceSnapshot.indexOfItem(_:)()
{
  v1 = *(*v0 + 16);
  v2 = [v1 indexOfItemIdentifier_];

  swift_unknownObjectRelease();
  if (v2 == sub_18A4A2388())
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_18921EE40(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = sub_188BE91B0();
  sub_18A4A82C8();
  v6 = sub_18A4A7518();

  [v5 *a4];

  return swift_unknownObjectRelease();
}

uint64_t sub_18921EF18(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = sub_188BE91B0();
  v6 = sub_18A4A86A8();
  [v5 *a4];

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_18921EFD4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = sub_188BE91B0();
  sub_18A4A82C8();
  v6 = sub_18A4A7518();

  [v5 *a4];

  return swift_unknownObjectRelease();
}

uint64_t sub_18921F0B8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = sub_188BE91B0();
  v6 = sub_18A4A86A8();
  [v5 *a4];

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

NSDiffableDataSourceSnapshot __swiftcall NSDiffableDataSourceSnapshot._bridgeToObjectiveC()()
{
  v1 = [*(*v0 + 16) state];
  v2 = [objc_allocWithZone(off_1E70ECB58) initWithState_];

  return v2;
}

uint64_t static NSDiffableDataSourceSnapshot._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  v4 = [a1 impl];
  v5 = [v4 copy];

  v6 = v5;
  swift_unknownObjectRelease();
  type metadata accessor for NSDiffableDataSourceSnapshot.ImplWrapper();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *a2 = v7;
  return 1;
}

uint64_t sub_18921F2E4@<X0>(void *a1@<X8>)
{
  result = sub_18921F3E4();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_189224DA8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_18921F354(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_189224D5C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1);
  return sub_188BE8D60(v4, v3);
}

id (*sub_18921F3E4())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(v0 + qword_1EA940A40) supplementaryViewProvider];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_189223D00;
  }

  return result;
}

id sub_18921F460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_18A4A7258();
  v8 = sub_18A4A2B08();
  v9 = (*(a5 + 16))(a5, a1, v7, v8);

  return v9;
}

id (*sub_18921F4DC(id (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_18921F3E4();
  a1[1] = v3;
  return sub_18921F524;
}

id sub_18921F524(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_188BE8D60(*a1, v3);
  }

  sub_188A52E38(*a1);
  sub_188BE8D60(v2, v3);

  return sub_188A55B8C(v2);
}

uint64_t sub_18921F5A0(uint64_t *a1, char a2)
{
  *(v3 + 136) = a2;
  v4 = *a1;
  *(v3 + 80) = v2;
  *(v3 + 88) = v4;
  *(v3 + 96) = sub_18A4A76A8();
  *(v3 + 104) = sub_18A4A7698();
  v6 = sub_18A4A7678();
  *(v3 + 112) = v6;
  *(v3 + 120) = v5;

  return MEMORY[0x1EEE6DFA0](sub_18921F644, v6, v5);
}

uint64_t sub_18921F644()
{
  v1 = sub_18A4A7698();
  *(v0 + 128) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_18A4A7678();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_18921F6D8, v2, v4);
}

uint64_t sub_18921F6D8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 136);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_18921F798;
  v4 = swift_continuation_init();
  sub_18921F8A0(v4, v2, v1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_18921F798()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_189224F88, v2, v1);
}

uint64_t sub_18921F8A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x98))(&v9, a4, sub_189224F40, v7);
}

uint64_t sub_18921F960(uint64_t *a1)
{
  v3 = *a1;
  v2[10] = v1;
  v2[11] = v3;
  v2[12] = sub_18A4A76A8();
  v2[13] = sub_18A4A7698();
  v5 = sub_18A4A7678();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_18921FA00, v5, v4);
}

uint64_t sub_18921FA00()
{
  v1 = sub_18A4A7698();
  *(v0 + 128) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_18A4A7678();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_18921FA94, v2, v4);
}

uint64_t sub_18921FA94()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_18921F798;
  v3 = swift_continuation_init();
  sub_18921FB44(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_18921FB44(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a3;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0xA8))(&v7, sub_189224F40, v5);
}

uint64_t sub_18921FC08(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_18A4A2B48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2B18();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_189223D08();

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

uint64_t sub_18921FD14(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_18A4A2B48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_18A4A2B18();
  sub_18A4A2B18();
  v12 = a3;
  v13 = a1;
  sub_189223D5C();

  v14 = *(v6 + 8);
  v14(v8, v5);
  return (v14)(v11, v5);
}

void sub_18921FE68(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_18A4A2B48();
  MEMORY[0x1EEE9AC00](v5);
  sub_18A4A7288();
  v6 = a3;
  v7 = a1;
  sub_18921FE5C();
}

id sub_18921FF28()
{

  v5 = sub_18A4A2B08();
  (*(v4 + 8))(v3, v0);

  return v5;
}

uint64_t sub_189220030(uint64_t *a1, char a2)
{
  *(v3 + 136) = a2;
  v4 = *a1;
  *(v3 + 80) = v2;
  *(v3 + 88) = v4;
  *(v3 + 96) = sub_18A4A76A8();
  *(v3 + 104) = sub_18A4A7698();
  v6 = sub_18A4A7678();
  *(v3 + 112) = v6;
  *(v3 + 120) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1892200D4, v6, v5);
}

uint64_t sub_1892200D4()
{
  v1 = sub_18A4A7698();
  *(v0 + 128) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_18A4A7678();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_189220168, v2, v4);
}

uint64_t sub_189220168()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 136);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_18921F798;
  v4 = swift_continuation_init();
  sub_189220228(v4, v2, v1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_189220228(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x80))(&v9, a4, sub_189224F40, v7);
}

uint64_t sub_1892202E8(uint64_t *a1)
{
  v3 = *a1;
  v2[10] = v1;
  v2[11] = v3;
  v2[12] = sub_18A4A76A8();
  v2[13] = sub_18A4A7698();
  v5 = sub_18A4A7678();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_189220388, v5, v4);
}

uint64_t sub_189220388()
{
  v1 = sub_18A4A7698();
  *(v0 + 128) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_18A4A7678();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_18922041C, v2, v4);
}

uint64_t sub_18922041C()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_1892204CC;
  v3 = swift_continuation_init();
  sub_189220634(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1892204CC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1892205D4, v2, v1);
}

uint64_t sub_1892205D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_189220634(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a3;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x90))(&v7, sub_1890391FC, v5);
}

id (*sub_189220750(void *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + qword_1EA940A48) tableViewDefaultRowAnimation];
  return sub_1892207AC;
}

uint64_t sub_1892207E0()
{
  v0 = sub_18A4A2B48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2B18();
  v4 = _UIApplicationLinkedOnOrAfter_0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1892208B4()
{
  v0 = sub_18A4A2B48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2B18();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_18922097C()
{
  v0 = sub_18A4A2B48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2B18();
  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_189220A48()
{
  v0 = sub_18A4A2B48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  sub_18A4A2B18();
  sub_18A4A2B18();
  v7 = *(v1 + 8);
  v7(v3, v0);
  return (v7)(v6, v0);
}

uint64_t sub_189220B70(void *a1)
{
  v2 = [*(v1 + *a1) description];
  v3 = sub_18A4A7288();

  return v3;
}

id UITableViewDiffableDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_189220D2C(uint64_t (*a1)(void, _OWORD *))
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v5[0] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5[1] = v2;
  v3 = a1(0, v5);
  v6.receiver = v1;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id UICommand.init(title:image:action:propertyList:alternates:discoverabilityTitle:attributes:state:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27[1] = a7;
  v28 = a4;
  v14 = sub_18A4A7258();

  sub_188A3F29C(a5, v29, &qword_1EA934050);
  v15 = v30;
  if (v30)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v29, v30);
    v17 = *(v15 - 8);
    v18 = MEMORY[0x1EEE9AC00](v16);
    v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_18A4A86A8();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    if (!(a6 >> 62))
    {
LABEL_3:

      sub_18A4A8738();
      goto LABEL_4;
    }
  }

  else
  {
    v21 = 0;
    if (!(a6 >> 62))
    {
      goto LABEL_3;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940A50);
  sub_18A4A83B8();

LABEL_4:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940A50);
  v22 = sub_18A4A7518();

  if (a8)
  {
    v23 = sub_18A4A7258();
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v25 = [v24 initWithTitle:v14 image:a3 imageName:0 action:v28 fallbackAction:0 propertyList:v21 leafOrCommandAlternates:v22 discoverabilityTitle:v23 attributes:a9 state:a10];

  swift_unknownObjectRelease();
  sub_188A553EC(a5);
  return v25;
}

id UICommand.init(title:subtitle:image:action:propertyList:alternates:discoverabilityTitle:attributes:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32 = a6;
  v31 = a3;
  v16 = sub_18A4A7258();

  v33 = a7;
  sub_188A3F29C(a7, v34, &qword_1EA934050);
  v17 = v35;
  if (v35)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v34, v35);
    v19 = *(v17 - 8);
    v20 = MEMORY[0x1EEE9AC00](v18);
    v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    v23 = sub_18A4A86A8();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  else
  {
    v23 = 0;
  }

  if (a8 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940A50);
    sub_18A4A83B8();
  }

  else
  {
    sub_18A4A8738();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940A50);
  v24 = sub_18A4A7518();

  if (a10)
  {
    v25 = sub_18A4A7258();
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = [v26 initWithTitle:v16 image:a5 imageName:0 action:v32 fallbackAction:0 propertyList:v23 leafOrCommandAlternates:v24 discoverabilityTitle:v25 attributes:a11 state:{a12, v31}];

  swift_unknownObjectRelease();
  v28 = v27;
  if (a4)
  {
    v29 = sub_18A4A7258();
  }

  else
  {
    v29 = 0;
  }

  [v27 setSubtitle_];

  sub_188A553EC(v33);
  return v27;
}

id UIAction.init(title:image:identifier:discoverabilityTitle:attributes:state:handler:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = sub_18A4A7258();

  if (a6)
  {
    v15 = sub_18A4A7258();
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  aBlock[4] = a9;
  aBlock[5] = a10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188BFF280;
  aBlock[3] = &block_descriptor_49_5;
  v17 = _Block_copy(aBlock);

  v18 = [v16 initWithTitle:v14 image:a3 identifier:a4 discoverabilityTitle:v15 attributes:a7 state:a8 handler:v17];

  _Block_release(v17);

  return v18;
}

id UIAction.init(title:subtitle:image:identifier:discoverabilityTitle:attributes:state:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = sub_18A4A7258();

  if (a8)
  {
    v15 = sub_18A4A7258();
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  aBlock[4] = a11;
  aBlock[5] = a12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188BFF280;
  aBlock[3] = &block_descriptor_52_4;
  v17 = _Block_copy(aBlock);

  v18 = [v16 initWithTitle:v14 image:a5 identifier:a6 discoverabilityTitle:v15 attributes:a9 state:a10 handler:v17];
  _Block_release(v17);

  v19 = v18;
  if (a4)
  {
    v20 = sub_18A4A7258();
  }

  else
  {
    v20 = 0;
  }

  [v18 setSubtitle_];

  return v18;
}

void __swiftcall UIMenu.init(title:image:identifier:options:children:)(UIMenu *__return_ptr retstr, Swift::String title, UIImage_optional *image, UIMenuIdentifier_optional identifier, UIMenuOptions options, Swift::OpaquePointer children)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_18A4A7258();

  sub_188A34624(0, &qword_1ED48FC30);
  v11 = sub_18A4A7518();

  [v9 initWithTitle:v10 image:image imageName:0 identifier:identifier.value options:options children:v11];
}

void __swiftcall UIMenu.init(title:subtitle:image:identifier:options:children:)(UIMenu *__return_ptr retstr, Swift::String title, Swift::String_optional subtitle, UIImage_optional *image, UIMenuIdentifier_optional identifier, UIMenuOptions options, Swift::OpaquePointer children)
{
  object = subtitle.value._object;
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = sub_18A4A7258();

  sub_188A34624(0, &qword_1ED48FC30);
  v13 = sub_18A4A7518();

  v14 = [v11 initWithTitle:v12 image:image imageName:0 identifier:identifier.value options:options children:v13];

  v15 = v14;
  if (object)
  {
    v16 = sub_18A4A7258();
  }

  else
  {
    v16 = 0;
  }

  [v14 setSubtitle_];
}

uint64_t UIImage.baselineOffsetFromBottom.getter()
{
  if (![v0 hasBaseline])
  {
    return 0;
  }

  [v0 baselineOffsetFromBottom];
  return v1;
}

void __swiftcall UIImage.init(systemName:variableValue:configuration:)(UIImage_optional *__return_ptr retstr, Swift::String systemName, Swift::Double variableValue, UIImageConfiguration_optional *configuration)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_18A4A7258();

  v8 = [ObjCClassFromMetadata systemImageNamed:v7 variableValue:configuration withConfiguration:variableValue];
}

void __swiftcall UIImage.init(named:in:variableValue:configuration:)(UIImage_optional *__return_ptr retstr, Swift::String named, NSBundle_optional in, Swift::Double variableValue, UIImageConfiguration_optional *configuration)
{
  v5 = *&in.is_nil;
  isa = in.value.super.isa;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_18A4A7258();

  v10 = [ObjCClassFromMetadata imageNamed:v9 inBundle:isa variableValue:v5 withConfiguration:variableValue];
}

void __swiftcall UIWindowSceneActivationConfiguration.init(userActivity:options:preview:)(UIWindowSceneActivationConfiguration *__return_ptr retstr, NSUserActivity userActivity, UIWindowSceneActivationRequestOptions_optional *options, UITargetedPreview_optional *preview)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUserActivity_];
  [v7 setOptions_];
  [v7 setPreview_];
}

id UIWindowSceneActivationAction.init(title:subtitle:image:identifier:discoverabilityTitle:attributes:alternate:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  if (!a2)
  {
    v16 = [swift_getObjCClassFromMetadata() _defaultTitle];
    sub_18A4A7288();
  }

  v17 = sub_18A4A7258();

  v18 = a6;
  if (a5)
  {
    v19 = a5;
    v21 = a11;
    v20 = a12;
    if (a8)
    {
LABEL_5:
      v22 = a5;
      v23 = sub_18A4A7258();

      goto LABEL_8;
    }
  }

  else
  {
    v19 = [swift_getObjCClassFromMetadata() _defaultImage];
    v21 = a11;
    v20 = a12;
    if (a8)
    {
      goto LABEL_5;
    }
  }

  v24 = a5;
  v23 = 0;
LABEL_8:
  v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  aBlock[4] = v21;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188BC2240;
  aBlock[3] = &block_descriptor_55_7;
  v26 = _Block_copy(aBlock);

  v27 = [v25 initWithTitle:v17 image:v19 identifier:v18 discoverabilityTitle:v23 attributes:a9 alternateAction:a10 configurationProvider:v26];

  _Block_release(v26);
  v28 = v27;
  if (a4)
  {
    v29 = sub_18A4A7258();
  }

  else
  {
    v29 = 0;
  }

  [v27 setSubtitle_];

  return v27;
}

unint64_t sub_189221CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_18A4A8888();
  MEMORY[0x18CFE3810](a1);
  result = sub_18A4A88E8();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_188E7A028();
      v12 = v13;
    }

    *a2 = *(*(v12 + 48) + 8 * v8);
    result = sub_189222998(v8);
    v10 = 0;
    *v2 = v13;
  }

  else
  {
LABEL_5:
    *a2 = 0;
    v10 = 1;
  }

  *(a2 + 8) = v10;
  return result;
}

uint64_t sub_189221DF8(uint64_t a1)
{
  v3 = *v1;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  v4 = sub_18A4A88E8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_188E7A168();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_189222B40(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_189221EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_18A4A2B48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_188BBE67C(&qword_1EA92F720, MEMORY[0x1E6969C28]);
  v31 = a1;
  v10 = sub_18A4A7198();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_188BBE67C(&qword_1EA92F710, MEMORY[0x1E6969C28]);
      v19 = sub_18A4A7248();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_188E7A7DC();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_189222CE8(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1892221A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = v2;
  v9 = *v2;
  sub_18A4A8888();
  v33 = *(a1 + 32);
  sub_18A4A7C98();
  v38 = 0;
  v39 = 0xE000000000000000;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v34 = *a1;
  v35 = v11;
  v36 = v12;
  v37 = v13;
  type metadata accessor for CGRect(0);
  sub_18A4A82D8();
  sub_18A4A7348();

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  sub_18A4A7348();
  v16 = sub_18A4A88E8();
  v17 = -1 << *(v9 + 32);
  v18 = v16 & ~v17;
  if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    v23 = 1;
    return (*(v6 + 56))(a2, v23, 1, v5);
  }

  v31 = v5;
  v32 = a2;
  v19 = v6;
  v20 = ~v17;
  v30 = v19;
  v21 = *(v19 + 72);
  while (1)
  {
    sub_188E7EAB8(*(v9 + 48) + v21 * v18, v8, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    v41.origin.x = v10;
    v41.origin.y = v11;
    v41.size.width = v12;
    v41.size.height = v13;
    if (!CGRectEqualToRect(*v8, v41) || ![v8[4] isEqualToTextRange_])
    {
      sub_188E7EB20(v8, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      goto LABEL_4;
    }

    if (v8[5] == v14 && v8[6] == v15)
    {
      break;
    }

    v22 = sub_18A4A86C8();
    sub_188E7EB20(v8, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    if (v22)
    {
      goto LABEL_14;
    }

LABEL_4:
    v18 = (v18 + 1) & v20;
    if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      v23 = 1;
      a2 = v32;
      goto LABEL_17;
    }
  }

  sub_188E7EB20(v8, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
LABEL_14:
  v24 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v24;
  v40 = *v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_188E7AA3C();
    v26 = v40;
  }

  a2 = v32;
  sub_188E7EB80(*(v26 + 48) + v21 * v18, v32, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
  sub_189222FF0(v18);
  v23 = 0;
  *v24 = v40;
LABEL_17:
  v5 = v31;
  v6 = v30;
  return (*(v6 + 56))(a2, v23, 1, v5);
}

uint64_t sub_18922250C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_188BBE67C(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  sub_18A4A71A8();
  v8 = sub_18A4A88E8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v20 = v1;
    v21 = v4;
    v22 = v3;
    v23 = a1;
    v11 = ~v9;
    v12 = *(v4 + 72);
    while (1)
    {
      sub_188E7EAB8(*(v7 + 48) + v12 * v10, v6, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      v13 = _s5UIKit16UITextEffectViewC0C2IDV2eeoiySbAE_AEtFZ_0();
      sub_188E7EB20(v6, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        v14 = 1;
        a1 = v23;
        goto LABEL_10;
      }
    }

    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v15;
    v24 = *v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_188E7AA78();
      v17 = v24;
    }

    a1 = v23;
    sub_188E7EB80(*(v17 + 48) + v12 * v10, v23, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    sub_189223314(v10);
    v14 = 0;
    *v15 = v24;
LABEL_10:
    v4 = v21;
    v3 = v22;
  }

  else
  {
    v14 = 1;
  }

  return (*(v4 + 56))(a1, v14, 1, v3);
}

uint64_t sub_18922277C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_18A4A8878();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_188E7ACBC();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_189223628(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_18922286C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  sub_18A4A8888();
  v7 = *a1;
  MEMORY[0x18CFE37E0](*a1);
  result = sub_18A4A88E8();
  v9 = -1 << *(v6 + 32);
  v10 = result & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_188E7DC94(*(v6 + 48) + 16 * v10, v15);
      v12 = v15[0];
      result = sub_188E7DD4C(v15);
      if (v12 == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    v15[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_188E7ACD0();
      v14 = v15[0];
    }

    sub_188E7DCF0(*(v14 + 48) + 16 * v10, a2);
    result = sub_1892237AC(v10);
    *v3 = v15[0];
  }

  else
  {
LABEL_5:
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

unint64_t sub_189222998(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_18A4A7ED8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_18A4A8888();
        MEMORY[0x18CFE3810](v10);
        v11 = sub_18A4A88E8() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_189222B40(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_18A4A7ED8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_18A4A8888();
        MEMORY[0x18CFE37E0](v10);
        v11 = sub_18A4A88E8() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_189222CE8(int64_t a1)
{
  v3 = sub_18A4A2B48();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_18A4A7ED8();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_188BBE67C(&qword_1EA92F720, MEMORY[0x1E6969C28]);
        v23 = sub_18A4A7198();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_189222FF0(int64_t a1)
{
  v24 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_18A4A7ED8();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v25 = (v11 + 1) & v10;
      v12 = *(v3 + 72);
      v13 = v10;
      do
      {
        v14 = v12;
        v15 = v12 * v9;
        v16 = v13;
        sub_188E7EAB8(*(v6 + 48) + v12 * v9, v5, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        sub_18A4A8888();
        sub_18A4A7C98();
        v28 = 0;
        v29 = 0xE000000000000000;
        v17 = v5[1];
        v26 = *v5;
        v27 = v17;
        type metadata accessor for CGRect(0);
        sub_18A4A82D8();
        sub_18A4A7348();

        sub_18A4A7348();
        v18 = sub_18A4A88E8();
        sub_188E7EB20(v5, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v13 = v16;
        v19 = v18 & v16;
        if (a1 >= v25)
        {
          if (v19 < v25)
          {
            v12 = v14;
            goto LABEL_5;
          }

          v12 = v14;
          if (a1 < v19)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = v14;
          if (v19 < v25 && a1 < v19)
          {
            goto LABEL_5;
          }
        }

        v20 = v12 * a1;
        if (v12 * a1 < v15 || *(v6 + 48) + v12 * a1 >= (*(v6 + 48) + v15 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v9;
        if (v20 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          v13 = v16;
          a1 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v13;
      }

      while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v6 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v23;
    ++*(v6 + 36);
  }
}

void sub_189223314(int64_t a1)
{
  v24 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v6 = *v1 + 56;
  v7 = -1 << *(*v1 + 32);
  v8 = (a1 + 1) & ~v7;
  if (((1 << v8) & *(v6 + 8 * (v8 >> 6))) != 0)
  {
    v9 = ~v7;

    v10 = sub_18A4A7ED8();
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
    {
      v11 = (v10 + 1) & v9;
      v12 = *(v3 + 72);
      v25 = v12;
      v26 = v6;
      do
      {
        v13 = v12 * v8;
        v14 = v27;
        sub_188E7EAB8(*(v5 + 48) + v12 * v8, v27, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v15 = v5;
        sub_18A4A8888();
        sub_18A4A29D8();
        sub_188BBE67C(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
        v16 = v11;
        sub_18A4A71A8();
        v17 = sub_18A4A88E8();
        sub_188E7EB20(v14, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v18 = v17 & v9;
        v11 = v16;
        if (a1 >= v16)
        {
          if (v18 < v16)
          {
            v5 = v15;
          }

          else
          {
            v5 = v15;
            if (a1 >= v18)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v5 = v15;
          if (v18 >= v11 || a1 >= v18)
          {
LABEL_13:
            v12 = v25;
            v19 = v25 * a1;
            if (v25 * a1 < v13 || *(v5 + 48) + v25 * a1 >= (*(v5 + 48) + v13 + v25))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v8;
            }

            else
            {
              a1 = v8;
              if (v19 != v13)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v8;
              }
            }

            goto LABEL_6;
          }
        }

        v12 = v25;
LABEL_6:
        v8 = (v8 + 1) & v9;
        v6 = v26;
      }

      while (((*(v26 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v20 = *(v5 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v22;
    ++*(v5 + 36);
  }
}

unint64_t sub_189223628(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_18A4A7ED8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_18A4A8878() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1892237AC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_18A4A7ED8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      while (1)
      {
        sub_188E7DC94(*(v3 + 48) + 16 * v6, v15);
        sub_18A4A8888();
        MEMORY[0x18CFE37E0](v15[0]);
        v10 = sub_18A4A88E8();
        sub_188E7DD4C(v15);
        v11 = v10 & v7;
        if (v2 >= v9)
        {
          break;
        }

        if (v11 < v9)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v2 < v6 || *(v3 + 48) + 16 * v2 >= *(v3 + 48) + 16 * v6 + 16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (v2 == v6)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v2 = v6;
LABEL_6:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v11 < v9)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (v2 < v11)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v12 = *(v3 + 16);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v14;
    ++*(v3 + 36);
  }

  return result;
}

double sub_18922398C(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A8978();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_1891987E0();
    sub_18A4A8648();
    v2 = v5;
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_18A4A8648();
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_18A4A8648();
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_18A4A8648();
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

double sub_189223B54(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A8978();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_1891987E0();
    sub_18A4A8648();
    v2 = v5;
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_18A4A8648();
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

uint64_t sub_189223C94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18A4A8528();
  *a1 = result;
  return result;
}

id sub_189223D08()
{
  v1 = *(v0 + qword_1EA940A40);
  v2 = sub_18A4A2B08();
  v3 = [v1 canMoveItemAtIndexPath_];

  return v3;
}

void sub_189223D5C()
{
  v1 = *(v0 + qword_1EA940A40);
  v2 = sub_18A4A2B08();
  v3 = sub_18A4A2B08();
  [v1 _commitReorderingForItemAtIndexPath_toDestinationIndexPath_];
}

unint64_t sub_189223E40()
{
  result = qword_1EA940A58;
  if (!qword_1EA940A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940A58);
  }

  return result;
}

uint64_t sub_189223E94(uint64_t a1)
{
  *(a1 + 8) = sub_188BBE67C(&unk_1EA940A70, type metadata accessor for Weight);
  result = sub_188BBE67C(&qword_1EA932DE0, type metadata accessor for Weight);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_189223F60(uint64_t a1)
{
  *(a1 + 8) = sub_188BBE67C(&unk_1EA940A80, type metadata accessor for Width);
  result = sub_188BBE67C(&qword_1EA932DF8, type metadata accessor for Width);
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_188C48500;

  return v9(a1, a2);
}

uint64_t dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_188C48500;

  return v7(a1);
}

uint64_t dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_188C48500;

  return v9(a1, a2);
}

uint64_t dispatch thunk of UITableViewDiffableDataSource.applySnapshotUsingReloadData(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_188C482B4;

  return v7(a1);
}

uint64_t sub_189224D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[1] = a3;
  v9 = a1;
  v8[0] = a2;
  v5(&v7, &v9, v8, a4);
  return v7;
}

uint64_t sub_189224DA8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, *a2, a2[1], a3);
  *a4 = result;
  return result;
}

unint64_t sub_189224E0C()
{
  result = qword_1EA940B88[0];
  if (!qword_1EA940B88[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA940B80);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA940B88);
  }

  return result;
}

uint64_t sub_189225000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_189225380(a1, a2, a3);
  return v6;
}

BOOL sub_189225058(uint64_t a1, void *a2)
{
  v3 = (*(a1 + 112))();
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  sub_18A4A8118();
  swift_getAssociatedConformanceWitness();
  v8 = v3 == sub_18A4A71B8();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_1892251AC(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 112) - 8) + 32))(v2 + *(*v2 + 152), a1);
  return v2;
}

uint64_t sub_189225240()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 152));

  return swift_deallocClassInstance();
}

unint64_t sub_1892252EC()
{
  sub_18A4A80E8();

  v2 = (*(v0 + 80))(v1);
  MEMORY[0x18CFE22D0](v2);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0xD000000000000019;
}

void *sub_189225380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v58 = *(a2 - 8);
  v8 = v58;
  MEMORY[0x1EEE9AC00](a1);
  v50 = v9;
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v11[10];
  v53 = v11[11];
  v56 = v11[12];
  v61 = v11[13];
  v60 = v11[14];
  v59 = v11[15];
  v52 = v11[16];
  v55 = v11[17];
  v62 = v54;
  v63 = v53;
  v64 = v56;
  v65 = v61;
  v66 = v12;
  v67 = v60;
  v68 = v59;
  v69 = v52;
  v70 = v55;
  type metadata accessor for UIAnyModifierComponent.Box();
  v13 = *(v8 + 16);
  v51 = a1;
  v13(v10, a1, a2);
  v47 = v13;
  v48 = v8 + 16;
  v14 = v10;
  v15 = sub_1892251AC(v10);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = v15;
  v4[2] = sub_189226DF0;
  v4[3] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = v15;
  v4[6] = sub_189226DF8;
  v4[7] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = v15;
  v57 = a3;
  v49 = v15;
  v4[4] = sub_189226E00;
  v4[5] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = v15;
  v4[8] = sub_189226E08;
  v4[9] = v19;
  v13(v10, a1, a2);
  v20 = v58;
  v46 = *(v58 + 80);
  v21 = (v46 + 96) & ~v46;
  v22 = swift_allocObject();
  v24 = v53;
  v23 = v54;
  *(v22 + 2) = v54;
  *(v22 + 3) = v24;
  v25 = v60;
  v26 = v61;
  *(v22 + 4) = v56;
  *(v22 + 5) = v26;
  v27 = a2;
  *(v22 + 6) = a2;
  *(v22 + 7) = v25;
  v28 = v52;
  *(v22 + 8) = v59;
  *(v22 + 9) = v28;
  v29 = v57;
  *(v22 + 10) = v55;
  *(v22 + 11) = v29;
  v45 = *(v20 + 32);
  v58 = v20 + 32;
  v45(&v22[v21], v14, v27);
  v4[10] = sub_189226E10;
  v4[11] = v22;
  v47(v14, v51, v27);
  v30 = swift_allocObject();
  *(v30 + 2) = v23;
  *(v30 + 3) = v24;
  v31 = v55;
  v32 = v56;
  v33 = v60;
  v34 = v61;
  *(v30 + 4) = v56;
  *(v30 + 5) = v34;
  *(v30 + 6) = v27;
  *(v30 + 7) = v33;
  *(v30 + 8) = v59;
  *(v30 + 9) = v28;
  v35 = v57;
  *(v30 + 10) = v31;
  *(v30 + 11) = v35;
  v36 = v45;
  v45(&v30[v21], v14, v27);
  v4[12] = sub_189226E84;
  v4[13] = v30;
  v36(v14, v51, v27);
  v37 = swift_allocObject();
  v38 = v53;
  *(v37 + 2) = v54;
  *(v37 + 3) = v38;
  v39 = v60;
  v40 = v61;
  *(v37 + 4) = v32;
  *(v37 + 5) = v40;
  *(v37 + 6) = v27;
  *(v37 + 7) = v39;
  v41 = v52;
  *(v37 + 8) = v59;
  *(v37 + 9) = v41;
  v42 = v57;
  *(v37 + 10) = v31;
  *(v37 + 11) = v42;
  v36(&v37[v21], v14, v27);
  v4[14] = sub_189226F78;
  v4[15] = v37;
  swift_retain_n();
  return v4;
}

uint64_t sub_18922582C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v20 = a2;
  v21 = a1;
  v4 = *a3;
  v5 = *(a4 + 16);
  v6 = *(*a3 + 112);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_18A4A7D38();
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  v23 = *(v4 + 80);
  v15 = v23;
  v24 = *(v4 + 120);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v21, v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(v22, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v8 + 8))(v10, v19);
  }

  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  swift_beginAccess();
  (*(v5 + 56))(v14, v20, v6, v5);
  swift_endAccess();
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_189225B1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v7 = *a2;
  v8 = *(*a2 + 96);
  v9 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v42 - v10;
  v49 = *(*(v7 + 112) - 8);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v42 - v12;
  v50 = a3;
  v48 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_18A4A7D38();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v45 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v46 = v18;
  v29 = *(v18 + 16);
  v29(v21, a1, v8, v26);
  v30 = swift_dynamicCast();
  v31 = *(v22 + 56);
  if (v30)
  {
    v43 = v29;
    v44 = a1;
    v31(v17, 0, 1, AssociatedTypeWitness);
    (*(v22 + 32))(v28, v17, AssociatedTypeWitness);
    v32 = *(*a2 + 152);
    swift_beginAccess();
    v33 = v49;
    v34 = a2 + v32;
    v35 = v47;
    v36 = v48;
    (*(v49 + 16))(v47, v34, v48);
    (*(v50 + 40))(v28, v36);
    (*(v33 + 8))(v35, v36);
    (*(v22 + 8))(v28, AssociatedTypeWitness);
    v37 = v51;
    v38 = swift_dynamicCast();
    v39 = v46;
    v40 = *(v46 + 56);
    if (v38)
    {
      v40(v37, 0, 1, v8);
      return (*(v39 + 32))(v52, v37, v8);
    }

    else
    {
      v40(v37, 1, 1, v8);
      return v43(v52, v44, v8);
    }
  }

  else
  {
    v31(v17, 1, 1, AssociatedTypeWitness);
    (*(v43 + 1))(v17, v44);
    return (v29)(v52, a1, v8);
  }
}

uint64_t sub_189225FFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v27 = a2;
  v5 = *a3;
  v6 = *(a4 + 16);
  v25 = *(*a3 + 112);
  v26 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18A4A7D38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(v5 + 96);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - v19;
  (*(v21 + 16))(v15, a1, v12, v18);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v11, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v20, v11, AssociatedTypeWitness);
    swift_beginAccess();
    (*(v26 + 64))(v20, v27, v25);
    swift_endAccess();
    return (*(v16 + 8))(v20, AssociatedTypeWitness);
  }

  else
  {
    v23(v11, 1, 1, AssociatedTypeWitness);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_189226304@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v7 = *a2;
  v8 = *(*a2 + 104);
  v9 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v42 - v10;
  v49 = *(*(v7 + 112) - 8);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v42 - v12;
  v50 = a3;
  v48 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_18A4A7D38();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v45 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v46 = v18;
  v29 = *(v18 + 16);
  v29(v21, a1, v8, v26);
  v30 = swift_dynamicCast();
  v31 = *(v22 + 56);
  if (v30)
  {
    v43 = v29;
    v44 = a1;
    v31(v17, 0, 1, AssociatedTypeWitness);
    (*(v22 + 32))(v28, v17, AssociatedTypeWitness);
    v32 = *(*a2 + 152);
    swift_beginAccess();
    v33 = v49;
    v34 = a2 + v32;
    v35 = v47;
    v36 = v48;
    (*(v49 + 16))(v47, v34, v48);
    (*(v50 + 48))(v28, v36);
    (*(v33 + 8))(v35, v36);
    (*(v22 + 8))(v28, AssociatedTypeWitness);
    v37 = v51;
    v38 = swift_dynamicCast();
    v39 = v46;
    v40 = *(v46 + 56);
    if (v38)
    {
      v40(v37, 0, 1, v8);
      return (*(v39 + 32))(v52, v37, v8);
    }

    else
    {
      v40(v37, 1, 1, v8);
      return v43(v52, v44, v8);
    }
  }

  else
  {
    v31(v17, 1, 1, AssociatedTypeWitness);
    (*(v43 + 1))(v17, v44);
    return (v29)(v52, a1, v8);
  }
}

uint64_t sub_1892267E4(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_18A4A72F8();
}

uint64_t sub_18922689C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = *(swift_getAssociatedConformanceWitness() + 8);
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_18A4A8118();
}

uint64_t sub_189226940()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_18A4A8118();
  swift_getAssociatedConformanceWitness();
  v4 = sub_18A4A71B8();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4;
}

uint64_t sub_189226B14()
{

  return v0;
}

uint64_t sub_189226B64()
{
  sub_189226B14();

  return swift_deallocClassInstance();
}

uint64_t sub_189226BB0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_189226D10@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UIAnyModifierComponent();
  result = sub_18A4A8128();
  *a1 = result;
  return result;
}

uint64_t sub_189226D78(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(*(v0 + 48) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_189227020()
{
  result = qword_1EA940C90;
  if (!qword_1EA940C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA940C90);
  }

  return result;
}

id _UIScenePresentationView._intelligenceCollectContent(in:collector:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_18A4A3BA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_189227220();
  if (v15)
  {

    sub_18A4A3448();
    __swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_18A4A3E78();
    (*(v12 + 104))(v14, *MEMORY[0x1E69DBBE0], v11);
    sub_18A4A3418();
    (*(v12 + 8))(v14, v11);
    return __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
    v19.receiver = v5;
    v19.super_class = _UIScenePresentationView;
    return objc_msgSendSuper2(&v19, sel__intelligenceCollectContentIn_collector_, a1, a2, a3, a4, a5);
  }
}

id sub_189227220()
{
  result = [v0 presenter];
  if (result)
  {
    v2 = result;
    if ([result isHosting] && (v3 = objc_msgSend(v2, sel_scene)) != 0 && (v4 = v3, v5 = objc_msgSend(v3, sel_ui_intelligenceComponentIfExists), v4, v5))
    {
      v6 = v5;
      v7 = [v5 collectAsRemoteElement];
      swift_unknownObjectRelease();
      result = v6;
      if (v7)
      {
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

void _UIScenePresentationView._intelligenceCollectRemoteContent(in:remoteContextWrapper:)(uint64_t a1)
{
  v3 = [v1 presenter];
  if (v3)
  {
    v4 = v3;
    if ([v3 isHosting] && (v5 = objc_msgSend(v4, sel_scene)) != 0 && (v6 = v5, v8 = objc_msgSend(v5, sel_ui_intelligenceComponentIfExists), v6, v8))
    {
      v7 = [v8 collectAsRemoteElement];
      swift_unknownObjectRelease();
      if (v7)
      {
        [_UISceneIntelligenceSupportHostComponent collectRemoteContentInVisibleRect:v8 withRemoteContextWrapper:a1];
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

BOOL sub_1892275B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void))
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v7 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  a3(a1, a2, 0);
  os_unfair_lock_unlock(v7[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860);
  v8 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v9 = [v3 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  return v9 != 0;
}

id sub_189227708()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result windowScene];

    if (v3)
    {
      v4 = [v3 effectiveGeometry];

      v5 = [v4 interfaceOrientation];
      return ((v5 - 3) < 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (*UICollectionViewCell.configurationUpdateHandler.getter())()
{
  result = [v0 configurationUpdateHandler];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_18922BC48;
    *(v4 + 24) = v3;
    return sub_18922BC80;
  }

  return result;
}

void *sub_189227A0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 configurationUpdateHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18922BC48;
    *(v6 + 24) = v5;
    result = swift_allocObject();
    result[2] = sub_18922BC80;
    result[3] = v6;
    v7 = sub_18922BC44;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

id sub_189227AE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18922BC90;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1);
  return UICollectionViewCell.configurationUpdateHandler.setter(v4, v3);
}

void (*UICollectionViewCell.configurationUpdateHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 configurationUpdateHandler];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v6 = swift_allocObject();
    v6[2] = sub_18922BC48;
    v6[3] = v8;
    v9 = sub_18922BC80;
  }

  else
  {
    v9 = 0;
  }

  *(v5 + 48) = v9;
  *(v5 + 56) = v6;
  return sub_189227C64;
}

void sub_189227C64(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 64);
  if (a2)
  {
    if (v3)
    {
      v5 = v2[7];
      v6 = swift_allocObject();
      *(v6 + 16) = v3;
      *(v6 + 24) = v5;
      v2[4] = sub_18922BC3C;
      v2[5] = v6;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_18922BC7C;
      v2[3] = &block_descriptor_13_4;
      v7 = _Block_copy(v2);
      swift_retain_n();

      [v4 setConfigurationUpdateHandler_];
      _Block_release(v7);
      sub_188A55B8C(v3);
    }

    else
    {
      [*(*a1 + 64) setConfigurationUpdateHandler_];
    }

    v11 = v2[6];
    goto LABEL_8;
  }

  if (v3)
  {
    v8 = v2[7];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v8;
    v2[4] = sub_18922BC3C;
    v2[5] = v9;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_18922BC7C;
    v2[3] = &block_descriptor_20_3;
    v10 = _Block_copy(v2);

    [v4 setConfigurationUpdateHandler_];
    _Block_release(v10);
    v11 = v3;
LABEL_8:
    sub_188A55B8C(v11);
    goto LABEL_9;
  }

  [*(*a1 + 64) setConfigurationUpdateHandler_];
LABEL_9:

  free(v2);
}

void sub_189227E70(uint64_t a1@<X8>)
{
  v3 = [v1 _configurationState];
  if (v3)
  {
    v4 = v3;
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)(v3, v6);

    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*UITableViewCell.configurationUpdateHandler.getter())()
{
  result = [v0 configurationUpdateHandler];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_18922BC48;
    *(v4 + 24) = v3;
    return sub_18922AD40;
  }

  return result;
}

void *sub_189227F88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 configurationUpdateHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18922BC48;
    *(v6 + 24) = v5;
    result = swift_allocObject();
    result[2] = sub_18922BC80;
    result[3] = v6;
    v7 = sub_189149AA4;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

id sub_18922805C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18922BAF4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1);
  return UITableViewCell.configurationUpdateHandler.setter(v4, v3);
}

id UITableViewCell.configurationUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_18922AD44;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_18922BC7C;
    v9[3] = &block_descriptor_40_6;
    v7 = _Block_copy(v9);

    [v3 setConfigurationUpdateHandler_];
    _Block_release(v7);
    return sub_188A55B8C(a1);
  }

  else
  {

    return [v2 setConfigurationUpdateHandler_];
  }
}

uint64_t sub_189228220(uint64_t a1, void *a2, void (*a3)(uint64_t, _OWORD *))
{
  sub_188C97D48(a2, v6);
  a3(a1, v6);
  v8[0] = v6[0];
  v8[1] = v6[1];
  v8[2] = v6[2];
  v9 = v7;
  return sub_188C98804(v8);
}

void (*UITableViewCell.configurationUpdateHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 configurationUpdateHandler];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v6 = swift_allocObject();
    v6[2] = sub_18922BC48;
    v6[3] = v8;
    v9 = sub_18922BC80;
  }

  else
  {
    v9 = 0;
  }

  *(v5 + 48) = v9;
  *(v5 + 56) = v6;
  return sub_18922838C;
}

void sub_18922838C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 64);
  if (a2)
  {
    if (v3)
    {
      v5 = v2[7];
      v6 = swift_allocObject();
      *(v6 + 16) = v3;
      *(v6 + 24) = v5;
      v2[4] = sub_18922BC3C;
      v2[5] = v6;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_18922BC7C;
      v2[3] = &block_descriptor_47_3;
      v7 = _Block_copy(v2);
      swift_retain_n();

      [v4 setConfigurationUpdateHandler_];
      _Block_release(v7);
      sub_188A55B8C(v3);
    }

    else
    {
      [*(*a1 + 64) setConfigurationUpdateHandler_];
    }

    v11 = v2[6];
    goto LABEL_8;
  }

  if (v3)
  {
    v8 = v2[7];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v8;
    v2[4] = sub_18922BC3C;
    v2[5] = v9;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_18922BC7C;
    v2[3] = &block_descriptor_54_5;
    v10 = _Block_copy(v2);

    [v4 setConfigurationUpdateHandler_];
    _Block_release(v10);
    v11 = v3;
LABEL_8:
    sub_188A55B8C(v11);
    goto LABEL_9;
  }

  [*(*a1 + 64) setConfigurationUpdateHandler_];
LABEL_9:

  free(v2);
}

void UITableViewHeaderFooterView.configurationState.getter(_OWORD *a1@<X8>)
{
  v3 = [v1 _configurationState];
  if (v3)
  {
    sub_188C9A23C(v3, &v5);
    v4 = v6[0];
    *a1 = v5;
    a1[1] = v4;
    *(a1 + 25) = *(v6 + 9);
  }

  else
  {
    __break(1u);
  }
}

void static UIViewConfigurationState._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    sub_188C9A23C(a1, &v5);
    v3 = v6[0];
    *a2 = v5;
    a2[1] = v3;
    *(a2 + 25) = *(v6 + 9);
  }

  else
  {
    sub_18A4A80E8();

    sub_188A34624(0, &qword_1EA940C98);
    v4 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v4);

    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0xD000000000000018, 0x800000018A676730);
    sub_18A4A8398();
    __break(1u);
  }
}

uint64_t (*UITableViewHeaderFooterView.configurationUpdateHandler.getter())()
{
  result = [v0 configurationUpdateHandler];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1890F6B0C;
    *(v4 + 24) = v3;
    return sub_18922AD60;
  }

  return result;
}

void *sub_1892287F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 configurationUpdateHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18922BC48;
    *(v6 + 24) = v5;
    result = swift_allocObject();
    result[2] = sub_18922BC84;
    result[3] = v6;
    v7 = sub_189149AA4;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

id sub_1892288CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18922BAF4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1);
  return UITableViewHeaderFooterView.configurationUpdateHandler.setter(v4, v3);
}

id UITableViewHeaderFooterView.configurationUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_18922AD64;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_18922BC7C;
    v9[3] = &block_descriptor_74_5;
    v7 = _Block_copy(v9);

    [v3 setConfigurationUpdateHandler_];
    _Block_release(v7);
    return sub_188A55B8C(a1);
  }

  else
  {

    return [v2 setConfigurationUpdateHandler_];
  }
}

uint64_t sub_189228A90(uint64_t a1, void *a2, void (*a3)(uint64_t, __int128 *))
{
  sub_188C9A23C(a2, &v6);
  a3(a1, &v6);
  v8 = v6;
  v9[0] = v7[0];
  *(v9 + 9) = *(v7 + 9);
  return sub_188CA5DC8(&v8);
}

void (*UITableViewHeaderFooterView.configurationUpdateHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 configurationUpdateHandler];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v6 = swift_allocObject();
    v6[2] = sub_18922BC48;
    v6[3] = v8;
    v9 = sub_18922BC84;
  }

  else
  {
    v9 = 0;
  }

  *(v5 + 48) = v9;
  *(v5 + 56) = v6;
  return sub_189228BF0;
}

void sub_189228BF0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 64);
  if (a2)
  {
    if (v3)
    {
      v5 = v2[7];
      v6 = swift_allocObject();
      *(v6 + 16) = v3;
      *(v6 + 24) = v5;
      v2[4] = sub_18922BC40;
      v2[5] = v6;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_18922BC7C;
      v2[3] = &block_descriptor_81_3;
      v7 = _Block_copy(v2);
      swift_retain_n();

      [v4 setConfigurationUpdateHandler_];
      _Block_release(v7);
      sub_188A55B8C(v3);
    }

    else
    {
      [*(*a1 + 64) setConfigurationUpdateHandler_];
    }

    v11 = v2[6];
    goto LABEL_8;
  }

  if (v3)
  {
    v8 = v2[7];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v8;
    v2[4] = sub_18922BC40;
    v2[5] = v9;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_18922BC7C;
    v2[3] = &block_descriptor_88_2;
    v10 = _Block_copy(v2);

    [v4 setConfigurationUpdateHandler_];
    _Block_release(v10);
    v11 = v3;
LABEL_8:
    sub_188A55B8C(v11);
    goto LABEL_9;
  }

  [*(*a1 + 64) setConfigurationUpdateHandler_];
LABEL_9:

  free(v2);
}

void sub_189228E00(void **a1, uint64_t a2)
{
  v3 = *a1;
  v6 = *a2;
  *a2 = *a1;
  sub_188A34624(0, &qword_1ED490410);
  v4 = v3;
  if (sub_18A4A7C88())
  {
  }

  else
  {
    v5 = *(a2 + 24);

    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
  }
}

void UIViewConfigurationState.traitCollection.setter(void *a1)
{
  v2 = v1;
  v6 = *v2;
  *v2 = a1;
  sub_188A34624(0, &qword_1ED490410);
  v4 = a1;
  if (sub_18A4A7C88())
  {
  }

  else
  {
    v5 = *(v2 + 24);

    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
  }
}

void (*UIViewConfigurationState.traitCollection.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return sub_189228FC8;
}

void sub_189228FC8(uint64_t a1, char a2)
{
  v4 = *a1;
  **(a1 + 8) = *a1;
  sub_188A34624(0, &qword_1ED490410);
  v5 = v4;
  if (a2)
  {
    v6 = v5;
    v7 = sub_18A4A7C88();
    v8 = *(a1 + 16);
    if (v7)
    {
    }

    else
    {
      v12 = *(a1 + 8);
      v13 = *(v12 + 24);

      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 1;
    }

    v11 = *a1;
  }

  else
  {
    v16 = v5;
    v9 = sub_18A4A7C88();
    v10 = *(a1 + 16);
    if ((v9 & 1) == 0)
    {
      v14 = *(a1 + 8);
      v15 = *(v14 + 24);

      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = 1;
      return;
    }

    v11 = v16;
  }
}

void UIViewConfigurationState.isDisabled.setter(char a1)
{
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;
  }
}

void (*UIViewConfigurationState.isDisabled.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_189229158;
}

void sub_189229158(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 8) = v3;
  if (v1 != v3)
  {

    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
  }
}

void UIViewConfigurationState.isHighlighted.setter(char a1)
{
  v2 = *(v1 + 9);
  *(v1 + 9) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;
  }
}

void (*UIViewConfigurationState.isHighlighted.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 9);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_189229214;
}

void sub_189229214(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 9) = v3;
  if (v1 != v3)
  {

    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
  }
}

void UIViewConfigurationState.isSelected.setter(char a1)
{
  v2 = *(v1 + 10);
  *(v1 + 10) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;
  }
}

void (*UIViewConfigurationState.isSelected.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 10);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_1892292D0;
}

void sub_1892292D0(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 10) = v3;
  if (v1 != v3)
  {

    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
  }
}

void UIViewConfigurationState.isFocused.setter(char a1)
{
  v2 = *(v1 + 11);
  *(v1 + 11) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;
  }
}

void (*UIViewConfigurationState.isFocused.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 11);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_18922938C;
}

void sub_18922938C(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 11) = v3;
  if (v1 != v3)
  {

    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
  }
}

void UIViewConfigurationState.isPinned.setter(char a1)
{
  v2 = *(v1 + 12);
  *(v1 + 12) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;
  }
}

void (*UIViewConfigurationState.isPinned.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 12);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_189229448;
}

void sub_189229448(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 12) = v3;
  if (v1 != v3)
  {

    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
  }
}

double UIViewConfigurationState.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = sub_188B00858(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 40 * v5;

    sub_188BBA230(v7, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1892294FC(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  sub_188F739BC(a1, v9);
  v5 = *(a2 + 24);
  v6 = v4;

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_188F739BC(v9, v8);
  sub_188F284A0(v8, v6);
  return sub_188F736F0(v9);
}

uint64_t UIViewConfigurationState.subscript.setter(uint64_t a1, void *a2)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  sub_188F739BC(a1, v6);
  sub_188F284A0(v6, a2);
  return sub_188F736F0(a1);
}

void (*UIViewConfigurationState.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x88uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 120) = a2;
  *(v5 + 128) = v2;
  v7 = *(v2 + 16);
  if (*(v7 + 16) && (v8 = sub_188B00858(a2), (v9 & 1) != 0))
  {
    sub_188BBA230(*(v7 + 56) + 40 * v8, v6);
  }

  else
  {
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  return sub_189229694;
}

void sub_189229694(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 120);
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_188F739BC(*a1, v2 + 40);

    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 1;
    sub_188F739BC(v2 + 40, v2 + 80);
    sub_188F284A0(v2 + 80, v4);
    sub_188F736F0(v2 + 40);
  }

  else
  {

    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 1;
    sub_188F739BC(v2, v2 + 40);
    sub_188F284A0(v2 + 40, v4);
  }

  sub_188F736F0(v2);

  free(v2);
}

uint64_t UIViewConfigurationState.init(traitCollection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 12) = 0;
  *(a2 + 8) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v2;
  *(a2 + 40) = 1;
  *a2 = result;
  return result;
}

uint64_t UIViewConfigurationState.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 16);
  sub_18A4A7C98();
  sub_18A4A88A8();
  sub_18A4A88A8();
  sub_18A4A88A8();
  sub_18A4A88A8();
  sub_18A4A88A8();

  return sub_18908DFB8(a1, v3);
}

uint64_t UIViewConfigurationState.hashValue.getter()
{
  sub_18A4A8888();
  UIViewConfigurationState.hash(into:)(v1);
  return sub_18A4A88E8();
}

uint64_t sub_189229870@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 12) = 0;
  *(a2 + 8) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v2;
  *(a2 + 40) = 1;
  *a2 = result;
  return result;
}

void sub_189229898(void *a1)
{
  v2 = v1;
  v6 = *v2;
  *v2 = a1;
  sub_188A34624(0, &qword_1ED490410);
  v4 = a1;
  if (sub_18A4A7C88())
  {
  }

  else
  {
    v5 = *(v2 + 24);

    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
  }
}

uint64_t (*sub_18922995C(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = UIViewConfigurationState.traitCollection.modify(v2);
  return sub_188E36B6C;
}

uint64_t sub_1892299D0(uint64_t a1, void *a2)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  sub_188F739BC(a1, v6);
  sub_188F284A0(v6, a2);
  return sub_188F736F0(a1);
}

uint64_t (*sub_189229A3C(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = UIViewConfigurationState.subscript.modify(v4, a2);
  return sub_188E36B6C;
}

uint64_t sub_189229AB4()
{
  sub_18A4A8888();
  UIViewConfigurationState.hash(into:)(v1);
  return sub_18A4A88E8();
}

uint64_t sub_189229AF8()
{
  sub_18A4A8888();
  UIViewConfigurationState.hash(into:)(v1);
  return sub_18A4A88E8();
}

void UICellConfigurationState.traitCollection.setter(void *a1)
{
  v2 = v1;
  v6 = *v2;
  *v2 = a1;
  sub_188A34624(0, &qword_1ED490410);
  v4 = a1;
  if (sub_18A4A7C88())
  {
  }

  else
  {
    v5 = *(v2 + 32);

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }
}

void (*UICellConfigurationState.traitCollection.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return sub_18908CAE8;
}

void UICellConfigurationState.isDisabled.setter(char a1)
{
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

void (*UICellConfigurationState.isDisabled.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_189229D04;
}

void sub_189229D04(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 8) = v3;
  if (v1 != v3)
  {

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }
}

void UICellConfigurationState.isHighlighted.setter(char a1)
{
  v2 = *(v1 + 9);
  *(v1 + 9) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

void (*UICellConfigurationState.isHighlighted.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 9);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_189229DB8;
}

void sub_189229DB8(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 9) = v3;
  if (v1 != v3)
  {

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }
}

void UICellConfigurationState.isSelected.setter(char a1)
{
  v2 = *(v1 + 10);
  *(v1 + 10) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

void (*UICellConfigurationState.isSelected.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 10);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_189229E6C;
}

void sub_189229E6C(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 10) = v3;
  if (v1 != v3)
  {

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }
}

void UICellConfigurationState.isFocused.setter(char a1)
{
  v2 = *(v1 + 11);
  *(v1 + 11) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

void (*UICellConfigurationState.isFocused.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 11);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_189229F20;
}

void sub_189229F20(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 11) = v3;
  if (v1 != v3)
  {

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }
}

void UICellConfigurationState.isPinned.setter(char a1)
{
  v2 = *(v1 + 12);
  *(v1 + 12) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

void (*UICellConfigurationState.isPinned.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 12);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_189229FDC;
}

void sub_189229FDC(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 12) = v3;
  if (v1 != v3)
  {

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }
}

void UICellConfigurationState.isEditing.setter(char a1)
{
  v2 = *(v1 + 13);
  *(v1 + 13) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

void (*UICellConfigurationState.isEditing.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 13);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_18922A090;
}

void sub_18922A090(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 13) = v3;
  if (v1 != v3)
  {

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }
}

void UICellConfigurationState.isExpanded.setter(char a1)
{
  v2 = *(v1 + 14);
  *(v1 + 14) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

void (*UICellConfigurationState.isExpanded.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 14);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_18922A14C;
}

void sub_18922A14C(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 14) = v3;
  if (v1 != v3)
  {

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }
}

void UICellConfigurationState.isSwiped.setter(char a1)
{
  v2 = *(v1 + 15);
  *(v1 + 15) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

void (*UICellConfigurationState.isSwiped.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 15);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_18922A208;
}

void sub_18922A208(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 15) = v3;
  if (v1 != v3)
  {

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }
}

void UICellConfigurationState.isReordering.setter(char a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  if (v2 != (a1 & 1))
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

void (*UICellConfigurationState.isReordering.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return sub_18922A2C4;
}

void sub_18922A2C4(unsigned __int8 *a1)
{
  v1 = a1[9];
  v2 = *a1;
  v3 = a1[8];
  *(*a1 + 16) = v3;
  if (v1 != v3)
  {

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }
}

void UICellConfigurationState.cellDragState.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 17);
  *(v1 + 17) = v2;
  if (v3 != v2)
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

void (*UICellConfigurationState.cellDragState.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 17);
  return sub_18922A380;
}

void sub_18922A380(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[8];
  v3 = *(*a1 + 17);
  *(*a1 + 17) = v2;
  if (v3 != v2)
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

void UICellConfigurationState.cellDropState.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 18);
  *(v1 + 18) = v2;
  if (v3 != v2)
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

void (*UICellConfigurationState.cellDropState.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 18);
  return sub_18922A43C;
}

void sub_18922A43C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[8];
  v3 = *(*a1 + 18);
  *(*a1 + 18) = v2;
  if (v3 != v2)
  {

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }
}

double UICellConfigurationState.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  if (*(v4 + 16) && (v5 = sub_188B00858(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 40 * v5;

    sub_188BBA230(v7, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18922A4F0(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  sub_188F739BC(a1, v9);
  v5 = *(a2 + 32);
  v6 = v4;

  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  sub_188F739BC(v9, v8);
  sub_188F284A0(v8, v6);
  return sub_188F736F0(v9);
}

uint64_t UICellConfigurationState.subscript.setter(uint64_t a1, void *a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  sub_188F739BC(a1, v6);
  sub_188F284A0(v6, a2);
  return sub_188F736F0(a1);
}

void (*UICellConfigurationState.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x88uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 120) = a2;
  *(v5 + 128) = v2;
  v7 = *(v2 + 24);
  if (*(v7 + 16) && (v8 = sub_188B00858(a2), (v9 & 1) != 0))
  {
    sub_188BBA230(*(v7 + 56) + 40 * v8, v6);
  }

  else
  {
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  return sub_18922A688;
}

void sub_18922A688(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 120);
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_188F739BC(*a1, v2 + 40);

    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 1;
    sub_188F739BC(v2 + 40, v2 + 80);
    sub_188F284A0(v2 + 80, v4);
    sub_188F736F0(v2 + 40);
  }

  else
  {

    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 1;
    sub_188F739BC(v2, v2 + 40);
    sub_188F284A0(v2 + 40, v4);
  }

  sub_188F736F0(v2);

  free(v2);
}

uint64_t UICellConfigurationState.hash(into:)(__int128 *a1)
{
  v4 = *(v1 + 17);
  v5 = *(v1 + 18);
  v6 = *(v1 + 24);
  sub_18A4A7C98();
  sub_18A4A88A8();
  sub_18A4A88A8();
  sub_18A4A88A8();
  sub_18A4A88A8();
  sub_18A4A88A8();
  sub_18A4A88A8();
  sub_18A4A88A8();
  sub_18A4A88A8();
  sub_18A4A88A8();
  MEMORY[0x18CFE37E0](v4);
  MEMORY[0x18CFE37E0](v5);
  sub_18A4A88A8();
  sub_18A4A88A8();

  return sub_18908DFB8(a1, v6);
}

uint64_t UICellConfigurationState.hashValue.getter()
{
  sub_18A4A8888();
  UICellConfigurationState.hash(into:)(v1);
  return sub_18A4A88E8();
}

uint64_t (*sub_18922A8C4(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = UICellConfigurationState.traitCollection.modify(v2);
  return sub_188E25B30;
}

uint64_t sub_18922A938(uint64_t a1, void *a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  sub_188F739BC(a1, v6);
  sub_188F284A0(v6, a2);
  return sub_188F736F0(a1);
}

uint64_t (*sub_18922A9A4(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = UICellConfigurationState.subscript.modify(v4, a2);
  return sub_188E36B6C;
}

uint64_t sub_18922AA1C()
{
  sub_18A4A8888();
  UICellConfigurationState.hash(into:)(v1);
  return sub_18A4A88E8();
}

uint64_t sub_18922AA60()
{
  sub_18A4A8888();
  UICellConfigurationState.hash(into:)(v1);
  return sub_18A4A88E8();
}

double static UIViewConfigurationState._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  sub_18922B780(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
  sub_188C9A23C(a1, v8);
  v4 = v9;
  v5 = v10;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

uint64_t static UIViewConfigurationState._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  sub_18922B780(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
  sub_188C9A23C(a1, v8);
  v4 = v9;
  v5 = v10;
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return 1;
}

double sub_18922ABA4(void *a1, uint64_t a2)
{
  sub_18922B780(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
  sub_188C9A23C(a1, v8);
  v4 = v9;
  v5 = v10;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_18922AC08(void *a1, uint64_t a2)
{
  sub_18922B780(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
  sub_188C9A23C(a1, v8);
  v4 = v9;
  v5 = v10;
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return 1;
}

double static UICellConfigurationState._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  sub_188C7D3B4(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  sub_188C97D48(a1, v7);
  v4 = v9;
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v4;
  return result;
}

uint64_t static UICellConfigurationState._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  sub_188C7D3B4(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  sub_188C97D48(a1, v7);
  v4 = v8;
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  return 1;
}

uint64_t sub_18922AD6C(void *a1, uint64_t a2)
{
  sub_188C7D3B4(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  sub_188C97D48(a1, v7);
  v4 = v8;
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  return 1;
}

uint64_t sub_18922ADDC()
{
  v6 = *v0;
  *v7 = v0[1];
  *&v7[9] = *(v0 + 25);
  sub_188C9C24C();
  v2 = v1;
  v3 = [v1 description];

  v4 = sub_18A4A7288();
  return v4;
}

uint64_t UIViewConfigurationState.customMirror.getter()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-v6 - 8];
  v8 = v0[1];
  v17 = *v0;
  v18[0] = v8;
  *(v18 + 9) = *(v0 + 25);
  v9 = v0[1];
  v15 = *v0;
  v16[0] = v9;
  *(v16 + 9) = *(v0 + 25);
  v14 = MEMORY[0x1E69E7CC0];
  v10 = sub_18A4A8908();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  sub_18922B7D4(&v17, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

uint64_t sub_18922B038()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-v6 - 8];
  v8 = v0[1];
  v17 = *v0;
  v18[0] = v8;
  *(v18 + 9) = *(v0 + 25);
  v9 = v0[1];
  v15 = *v0;
  v16[0] = v9;
  *(v16 + 9) = *(v0 + 25);
  v14 = MEMORY[0x1E69E7CC0];
  v10 = sub_18A4A8908();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  sub_18922B7D4(&v17, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

uint64_t sub_18922B220()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  LOBYTE(v9) = *(v0 + 48);
  sub_188C984D4();
  v2 = v1;
  v3 = [v1 description];

  v4 = sub_18A4A7288();
  return v4;
}

uint64_t UICellConfigurationState.customMirror.getter()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-v6];
  v8 = v0[1];
  v19[0] = *v0;
  v19[1] = v8;
  v10 = *v0;
  v9 = v0[1];
  v19[2] = v0[2];
  v20 = *(v0 + 48);
  v15 = v10;
  v16 = v9;
  v17 = v0[2];
  v18 = *(v0 + 48);
  v14 = MEMORY[0x1E69E7CC0];
  v11 = sub_18A4A8908();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  sub_18922B80C(v19, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

uint64_t sub_18922B49C()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-v6];
  v8 = v0[1];
  v19[0] = *v0;
  v19[1] = v8;
  v10 = *v0;
  v9 = v0[1];
  v19[2] = v0[2];
  v20 = *(v0 + 48);
  v15 = v10;
  v16 = v9;
  v17 = v0[2];
  v18 = *(v0 + 48);
  v14 = MEMORY[0x1E69E7CC0];
  v11 = sub_18A4A8908();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  sub_18922B80C(v19, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

BOOL _s5UIKit24UIViewConfigurationStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(a1 + 8) == *(a2 + 8) && ((*(a1 + 9) ^ *(a2 + 9)) & 1) == 0 && ((*(a1 + 10) ^ *(a2 + 10)) & 1) == 0 && ((*(a1 + 11) ^ *(a2 + 11)) & 1) == 0 && ((*(a1 + 12) ^ *(a2 + 12)) & 1) == 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a2 + 16);
    v4 = *a2;
    v5 = *a1;
    sub_188A34624(0, &qword_1ED490230);
    v6 = v5;
    v7 = v4;
    v8 = sub_18A4A7C88();

    if (v8 & 1) != 0 && (sub_188C7A41C(v2, v3))
    {
      return 1;
    }
  }

  return result;
}

void sub_18922B780(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

unint64_t sub_18922B848()
{
  result = qword_1EA940CA0;
  if (!qword_1EA940CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940CA0);
  }

  return result;
}

unint64_t sub_18922B8A0()
{
  result = qword_1EA940CA8;
  if (!qword_1EA940CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940CA8);
  }

  return result;
}

unint64_t sub_18922B8F8()
{
  result = qword_1EA940CB0;
  if (!qword_1EA940CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940CB0);
  }

  return result;
}

unint64_t sub_18922B950()
{
  result = qword_1EA940CB8;
  if (!qword_1EA940CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940CB8);
  }

  return result;
}

uint64_t sub_18922BA30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_18922BA78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18922BAF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_18922BB2C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_188C9C24C();
  v5 = v4;
  v3(a1, v4);
}

void sub_18922BBA4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_188C984D4();
  v5 = v4;
  v3(a1, v4);
}

id sub_18922BD30()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (![v2 _sourceViewIsInViewHierarchy] || (*(v0 + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_didHostSourceView) & 1) != 0)
  {

    return 0;
  }

  v4 = [v2 view];

  return v4;
}

id sub_18922BDB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIMagicMorphTransformView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18922BE00(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_18A4A7D38();
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v21 = a3;
  v22 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  sub_188D496D4(sub_18922CB2C, v20, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v14, v9);
  v15 = *(v10 + 48);
  if (v15(v9, 1, AssociatedTypeWitness) == 1)
  {
    swift_getAssociatedConformanceWitness();
    sub_18A4A8408();
    if (v15(v9, 1, AssociatedTypeWitness) != 1)
    {
      (*(v18 + 8))(v9, v7);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  }

  (*(a4 + 168))(v13, v19 & 1, a3, a4);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_18922C168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a3 + 176))(a1, a2, a3, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_18922C390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11[-v7];
  sub_188A55598(a1, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a3 + 152))(v8, a2, a3);
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_18922C6B8(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_188A55598(a1, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 64))(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_18922C784(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a2;
  v25 = sub_18A4A7A58();
  v24 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940DD8);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(v5 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  *(v5 + 40) = v14;
  v35 = 1;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 112) = 1;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 184) = 1;
  swift_unknownObjectWeakInit();
  *(v5 + 264) = 0;
  *(v5 + 248) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 272) = 1;
  *(v5 + 280) = 0u;
  *(v5 + 296) = 0u;
  *(v5 + 312) = 0u;
  *(v5 + 328) = 0u;
  *(v5 + 344) = 1;
  *(v5 + 352) = 0u;
  *(v5 + 368) = 0u;
  *(v5 + 384) = 0u;
  *(v5 + 400) = 0u;
  *(v5 + 416) = 1;
  swift_unknownObjectWeakInit();
  *(v5 + 448) = 0;
  *(v5 + 456) = a3;
  *(v5 + 464) = a4;
  sub_188A5E418();

  sub_18A4A7A28();
  sub_18A4A6E38();
  (*(v24 + 104))(v10, *MEMORY[0x1E69E8090], v25);
  *(v5 + 16) = sub_18A4A7A98();
  v15 = a1[1];
  v27 = *a1;
  v28 = v15;
  v16 = a1[3];
  v29 = a1[2];
  v30 = v16;
  v31 = v27;
  v32 = v15;
  v33 = v29;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940DE0);
  v17 = swift_allocObject();
  *(v17 + 144) = 0;
  v18 = v32;
  *(v17 + 80) = v31;
  *(v17 + 96) = v18;
  v19 = v34;
  *(v17 + 112) = v33;
  *(v17 + 128) = v19;
  v20 = v28;
  *(v17 + 16) = v27;
  *(v17 + 32) = v20;
  v21 = v30;
  *(v17 + 48) = v29;
  *(v17 + 64) = v21;
  *(v5 + 24) = v17;
  swift_beginAccess();
  *(v5 + 168) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 120) = 0u;
  LOBYTE(a3) = v35;
  *(v5 + 184) = v35;
  swift_beginAccess();
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 112) = a3;
  *(v5 + 432) = 0;
  *(v5 + 440) = 0;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t sub_18922CB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v26 = a1;
  v25 = sub_18A4A7A58();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940DE8);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(v5 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  *(v5 + 48) = 1;
  *(v5 + 40) = v14;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 56) = 0;
  *(v5 + 77) = 0;
  *(v5 + 88) = 1;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 96) = 0;
  *(v5 + 117) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 136) = 0;
  *(v5 + 144) = 1;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  *(v5 + 152) = 0;
  *(v5 + 173) = 0;
  *(v5 + 184) = 1;
  *(v5 + 192) = 0;
  *(v5 + 200) = 0;
  *(v5 + 208) = 0;
  *(v5 + 214) = 0;
  *(v5 + 224) = 1;
  *(v5 + 232) = 0;
  *(v5 + 240) = 0;
  *(v5 + 248) = 0;
  *(v5 + 253) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 288) = 0;
  *(v5 + 296) = a3;
  *(v5 + 304) = a4;
  v24 = a4;
  sub_188A5E418();

  sub_18A4A7A28();
  sub_18A4A6E38();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8090], v25);
  *(v5 + 16) = sub_18A4A7A98();
  v15 = v26;
  *&v30[13] = *(v26 + 29);
  v16 = *&v30[13];
  v17 = *(v26 + 16);
  v29 = *v26;
  *v30 = v17;
  *&v30[24] = v29;
  *&v30[40] = v17;
  *&v30[53] = v16;
  *&v34[13] = *&v30[45];
  v33 = *&v30[16];
  *v34 = *&v30[32];
  v31 = v29;
  v32 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940DF0);
  v18 = swift_allocObject();
  *(v18 + 96) = 0;
  sub_188F0D2E8(v15, v28);
  sub_188A3F29C(&v31, v28, &qword_1EA940DF8);

  v19 = *v34;
  *(v18 + 48) = v33;
  *(v18 + 64) = v19;
  *(v18 + 77) = *&v34[13];
  v20 = v32;
  *(v18 + 16) = v31;
  *(v18 + 32) = v20;
  sub_188A3F5FC(&v31, &qword_1EA940DF8);
  *(v5 + 24) = v18;
  swift_beginAccess();
  v21 = *(v5 + 88);
  *(v5 + 88) = 1;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 96) = 0;
  *(v5 + 117) = 0;
  sub_188F0D3FC(v21);
  swift_beginAccess();
  v22 = *(v5 + 48);
  *(v5 + 48) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 56) = 0;
  *(v5 + 77) = 0;
  sub_188F0D3FC(v22);
  *(v5 + 272) = 0;
  *(v5 + 280) = 0;
  swift_unknownObjectWeakAssign();
  return v5;
}

char *sub_18922D56C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___UIShape_value + 16);
  v27[0] = *(v1 + OBJC_IVAR___UIShape_value);
  v27[1] = v2;
  v4 = *(v1 + OBJC_IVAR___UIShape_value);
  v3 = *(v1 + OBJC_IVAR___UIShape_value + 16);
  v28[0] = *(v1 + OBJC_IVAR___UIShape_value + 32);
  *(v28 + 9) = *(v1 + OBJC_IVAR___UIShape_value + 41);
  v24 = v4;
  v25 = v3;
  *v26 = *(v1 + OBJC_IVAR___UIShape_value + 32);
  *&v26[9] = *(v1 + OBJC_IVAR___UIShape_value + 41);
  v5 = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value);
  v6 = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 16);
  v7 = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 48);
  v29[2] = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 32);
  v29[3] = v7;
  v8 = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 16);
  v9 = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 32);
  v10 = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value);
  v29[0] = v5;
  v29[1] = v8;
  *(v32 + 9) = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 105);
  v11 = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 80);
  v32[0] = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 96);
  v12 = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 80);
  v13 = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 48);
  v30 = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 64);
  v31 = v12;
  v43 = v30;
  v44 = v11;
  v45[0] = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 96);
  *(v45 + 9) = *(a1 + OBJC_IVAR___UIShapeResolutionContext_value + 105);
  v39 = v10;
  v40 = v6;
  v41 = v9;
  v42 = v13;
  sub_188B20550(v27, v37);
  sub_18922FBD0(v29, v37);
  UIShape.resolve(in:)(&v39, v37);
  v33[4] = v43;
  v33[5] = v44;
  v34[0] = v45[0];
  *(v34 + 9) = *(v45 + 9);
  v33[0] = v39;
  v33[1] = v40;
  v33[2] = v41;
  v33[3] = v42;
  sub_188E81DCC(v33);
  v35[0] = v24;
  v35[1] = v25;
  v36[0] = *v26;
  *(v36 + 9) = *&v26[9];
  sub_188B2040C(v35);
  v14 = [objc_allocWithZone(UIResolvedShape) init];
  v15 = &v14[OBJC_IVAR___UIResolvedShape_value];
  v16 = *&v14[OBJC_IVAR___UIResolvedShape_value];
  v17 = *&v14[OBJC_IVAR___UIResolvedShape_value + 16];
  v18 = *&v14[OBJC_IVAR___UIResolvedShape_value + 48];
  v41 = *&v14[OBJC_IVAR___UIResolvedShape_value + 32];
  v42 = v18;
  v39 = v16;
  v40 = v17;
  v19 = *&v14[OBJC_IVAR___UIResolvedShape_value + 64];
  v20 = *&v14[OBJC_IVAR___UIResolvedShape_value + 80];
  v21 = *&v14[OBJC_IVAR___UIResolvedShape_value + 96];
  *(v45 + 9) = *&v14[OBJC_IVAR___UIResolvedShape_value + 105];
  v44 = v20;
  v45[0] = v21;
  v43 = v19;
  *(v15 + 3) = v37[3];
  *(v15 + 2) = v37[2];
  *(v15 + 1) = v37[1];
  *v15 = v37[0];
  *(v15 + 105) = *(v38 + 9);
  *(v15 + 6) = v38[0];
  *(v15 + 4) = v37[4];
  *(v15 + 5) = v37[5];
  v22 = v14;
  sub_188E81D2C(&v39);

  return v22;
}

uint64_t UIShape.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, v22);
  if (!v23)
  {
    sub_188A553EC(v22);
    goto LABEL_5;
  }

  type metadata accessor for UIShape(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    return v14 & 1;
  }

  v3 = v21;
  v4 = *(v1 + OBJC_IVAR___UIShape_value + 16);
  v17[0] = *(v1 + OBJC_IVAR___UIShape_value);
  v17[1] = v4;
  v6 = *(v1 + OBJC_IVAR___UIShape_value);
  v5 = *(v1 + OBJC_IVAR___UIShape_value + 16);
  v18[0] = *(v1 + OBJC_IVAR___UIShape_value + 32);
  *(v18 + 9) = *(v1 + OBJC_IVAR___UIShape_value + 41);
  v7 = *&v21[OBJC_IVAR___UIShape_value + 41];
  v9 = *&v21[OBJC_IVAR___UIShape_value + 16];
  v8 = *&v21[OBJC_IVAR___UIShape_value + 32];
  v19[0] = *&v21[OBJC_IVAR___UIShape_value];
  v19[1] = v9;
  v20[0] = v8;
  *(v20 + 9) = v7;
  v10 = *(v1 + OBJC_IVAR___UIShape_value + 32);
  *(v25 + 9) = *(v1 + OBJC_IVAR___UIShape_value + 41);
  v24[1] = v5;
  v25[0] = v10;
  v24[0] = v6;
  v11 = *&v21[OBJC_IVAR___UIShape_value];
  v12 = *&v21[OBJC_IVAR___UIShape_value + 16];
  v13 = *&v21[OBJC_IVAR___UIShape_value + 32];
  *(v27 + 9) = *&v21[OBJC_IVAR___UIShape_value + 41];
  v26[1] = v12;
  v27[0] = v13;
  v26[0] = v11;
  sub_188B20550(v17, v16);
  sub_188B20550(v19, v16);
  v14 = sub_188E80BB4(v24, v26);

  sub_188B2040C(v19);
  sub_188B2040C(v17);
  return v14 & 1;
}

id sub_18922D97C(char *a1)
{
  v1 = *&a1[OBJC_IVAR___UIShape_value + 16];
  v11[0] = *&a1[OBJC_IVAR___UIShape_value];
  v11[1] = v1;
  v12[0] = *&a1[OBJC_IVAR___UIShape_value + 32];
  v2 = v12[0];
  *(v12 + 9) = *&a1[OBJC_IVAR___UIShape_value + 41];
  v8 = v11[0];
  v9 = v1;
  v10[0] = v2;
  *(v10 + 9) = *(v12 + 9);
  v7[8] = 0x2E65706168534955;
  v7[9] = 0xE800000000000000;
  v3 = a1;
  sub_188B20550(v11, v7);
  v4 = sub_188E84180();
  MEMORY[0x18CFE22D0](v4);

  sub_188B2040C(v11);

  v5 = sub_18A4A7258();

  return v5;
}

uint64_t _sSo7UIShapeC5UIKitE11descriptionSSvg_0()
{
  v1 = *(v0 + OBJC_IVAR___UIShape_value + 16);
  v11[0] = *(v0 + OBJC_IVAR___UIShape_value);
  v11[1] = v1;
  v12[0] = *(v0 + OBJC_IVAR___UIShape_value + 32);
  v2 = v12[0];
  *(v12 + 9) = *(v0 + OBJC_IVAR___UIShape_value + 41);
  v8 = v11[0];
  v9 = v1;
  v10[0] = v2;
  *(v10 + 9) = *(v12 + 9);
  v6 = 0x2E65706168534955;
  v7 = 0xE800000000000000;
  sub_188B20550(v11, &v5);
  v3 = sub_188E84180();
  MEMORY[0x18CFE22D0](v3);

  sub_188B2040C(v11);
  return v6;
}

void __swiftcall UIShape.init()(UIShape *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id UIShape.init()()
{
  v1 = v0 + OBJC_IVAR___UIShape_value;
  *v1 = 1;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 6;
  v3.super_class = UIShape;
  return objc_msgSendSuper2(&v3, sel_init);
}

char *sub_18922DB94(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___UIShape_value + 16);
  v23[0] = *(v1 + OBJC_IVAR___UIShape_value);
  v23[1] = v3;
  v5 = *(v1 + OBJC_IVAR___UIShape_value);
  v4 = *(v1 + OBJC_IVAR___UIShape_value + 16);
  v24[0] = *(v1 + OBJC_IVAR___UIShape_value + 32);
  *(v24 + 9) = *(v1 + OBJC_IVAR___UIShape_value + 41);
  v20 = v5;
  v21 = v4;
  *v22 = *(v1 + OBJC_IVAR___UIShape_value + 32);
  *&v22[9] = *(v1 + OBJC_IVAR___UIShape_value + 41);
  sub_188B20550(v23, &v31);
  v6 = [a1 layer];
  sub_188E83750(&v31);

  UIShape.resolve(in:)(&v31, v29);
  v25[4] = v35;
  v25[5] = v36;
  v26[0] = v37[0];
  *(v26 + 9) = *(v37 + 9);
  v25[0] = v31;
  v25[1] = v32;
  v25[2] = v33;
  v25[3] = v34;
  sub_188E81DCC(v25);
  v27[0] = v20;
  v27[1] = v21;
  v28[0] = *v22;
  *(v28 + 9) = *&v22[9];
  sub_188B2040C(v27);
  v7 = [objc_allocWithZone(UIResolvedShape) init];
  v8 = &v7[OBJC_IVAR___UIResolvedShape_value];
  v9 = *&v7[OBJC_IVAR___UIResolvedShape_value];
  v10 = *&v7[OBJC_IVAR___UIResolvedShape_value + 16];
  v11 = *&v7[OBJC_IVAR___UIResolvedShape_value + 48];
  v33 = *&v7[OBJC_IVAR___UIResolvedShape_value + 32];
  v34 = v11;
  v31 = v9;
  v32 = v10;
  v12 = *&v7[OBJC_IVAR___UIResolvedShape_value + 64];
  v13 = *&v7[OBJC_IVAR___UIResolvedShape_value + 80];
  v14 = *&v7[OBJC_IVAR___UIResolvedShape_value + 96];
  *(v37 + 9) = *&v7[OBJC_IVAR___UIResolvedShape_value + 105];
  v36 = v13;
  v37[0] = v14;
  v35 = v12;
  v15 = v29[3];
  *(v8 + 2) = v29[2];
  *(v8 + 3) = v15;
  v16 = v29[1];
  *v8 = v29[0];
  *(v8 + 1) = v16;
  *(v8 + 105) = *(v30 + 9);
  v17 = v30[0];
  *(v8 + 5) = v29[5];
  *(v8 + 6) = v17;
  *(v8 + 4) = v29[4];
  v18 = v7;
  sub_188E81D2C(&v31);

  return v18;
}

char *sub_18922DD90(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR___UIShape_value + 16);
  v21[0] = *(v4 + OBJC_IVAR___UIShape_value);
  v21[1] = v5;
  v7 = *(v4 + OBJC_IVAR___UIShape_value);
  v6 = *(v4 + OBJC_IVAR___UIShape_value + 16);
  v22[0] = *(v4 + OBJC_IVAR___UIShape_value + 32);
  *(v22 + 9) = *(v4 + OBJC_IVAR___UIShape_value + 41);
  v18 = v7;
  v19 = v6;
  *v20 = *(v4 + OBJC_IVAR___UIShape_value + 32);
  *&v20[9] = *(v4 + OBJC_IVAR___UIShape_value + 41);
  v23 = 0;
  *v30 = 1;
  memset(&v30[8], 0, 48);
  v30[56] = 6;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  *&v32 = a3;
  *(&v32 + 1) = a4;
  *v33 = 0uLL;
  *&v33[16] = -1;
  v33[24] = 0;
  sub_188B20550(v21, v28);
  UIShape.resolve(in:)(v30, v28);
  v24[4] = v31;
  v24[5] = v32;
  v25[0] = *v33;
  *(v25 + 9) = *&v33[9];
  v24[0] = *v30;
  v24[1] = *&v30[16];
  v24[2] = *&v30[32];
  v24[3] = *&v30[48];
  sub_188E81DCC(v24);
  v26[0] = v18;
  v26[1] = v19;
  v27[0] = *v20;
  *(v27 + 9) = *&v20[9];
  sub_188B2040C(v26);
  v8 = [objc_allocWithZone(UIResolvedShape) init];
  v9 = &v8[OBJC_IVAR___UIResolvedShape_value];
  v10 = *&v8[OBJC_IVAR___UIResolvedShape_value];
  v11 = *&v8[OBJC_IVAR___UIResolvedShape_value + 16];
  v12 = *&v8[OBJC_IVAR___UIResolvedShape_value + 48];
  *&v30[32] = *&v8[OBJC_IVAR___UIResolvedShape_value + 32];
  *&v30[48] = v12;
  *v30 = v10;
  *&v30[16] = v11;
  v13 = *&v8[OBJC_IVAR___UIResolvedShape_value + 64];
  v14 = *&v8[OBJC_IVAR___UIResolvedShape_value + 80];
  v15 = *&v8[OBJC_IVAR___UIResolvedShape_value + 96];
  *&v33[9] = *&v8[OBJC_IVAR___UIResolvedShape_value + 105];
  v32 = v14;
  *v33 = v15;
  v31 = v13;
  *(v9 + 3) = v28[3];
  *(v9 + 2) = v28[2];
  *(v9 + 1) = v28[1];
  *v9 = v28[0];
  *(v9 + 105) = *(v29 + 9);
  *(v9 + 6) = v29[0];
  *(v9 + 4) = v28[4];
  *(v9 + 5) = v28[5];
  v16 = v8;
  sub_188E81D2C(v30);

  return v16;
}

id sub_18922E240()
{
  v1 = v0 + OBJC_IVAR___UIResolvedShape_value;
  v2 = *(v0 + OBJC_IVAR___UIResolvedShape_value + 64);
  if (*(v0 + OBJC_IVAR___UIResolvedShape_value + 120))
  {

    return v2;
  }

  else
  {
    v5 = *(v1 + 104);
    v4 = *(v1 + 112);
    v6 = *(v1 + 88);
    v7 = *(v1 + 96);
    v9 = *(v1 + 72);
    v8 = *(v1 + 80);
    v10 = *&v2;
    v11 = objc_opt_self();
    if (v7 == 0.0)
    {
      v12 = [v11 bezierPathWithRect_];

      return v12;
    }

    else
    {
      result = [v11 _roundedRectBezierPath_withRoundedCorners_cornerRadius_segments_legacyCorners_];
      if (!result)
      {
        __break(1u);
      }
    }
  }

  return result;
}

char *sub_18922E3A4()
{
  v1 = OBJC_IVAR___UIResolvedShape_cachedShape;
  v2 = *(v0 + OBJC_IVAR___UIResolvedShape_cachedShape);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___UIResolvedShape_cachedShape);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___UIResolvedShape_value + 16);
    v18 = *(v0 + OBJC_IVAR___UIResolvedShape_value);
    v19 = v4;
    v20[0] = *(v0 + OBJC_IVAR___UIResolvedShape_value + 32);
    *(v20 + 9) = *(v0 + OBJC_IVAR___UIResolvedShape_value + 41);
    v5 = objc_allocWithZone(UIShape);
    sub_188B20550(&v18, v21);
    v6 = [v5 init];
    v7 = &v6[OBJC_IVAR___UIShape_value];
    v9 = *&v6[OBJC_IVAR___UIShape_value + 16];
    v8 = *&v6[OBJC_IVAR___UIShape_value + 32];
    v10 = *&v6[OBJC_IVAR___UIShape_value];
    *&v22[9] = *&v6[OBJC_IVAR___UIShape_value + 41];
    v21[1] = v9;
    *v22 = v8;
    v21[0] = v10;
    v11 = v18;
    v12 = v19;
    v13 = v20[0];
    *(v7 + 41) = *(v20 + 9);
    *(v7 + 1) = v12;
    *(v7 + 2) = v13;
    *v7 = v11;
    v14 = v6;
    sub_188B2040C(v21);

    v15 = *(v0 + v1);
    *(v0 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

char *sub_18922E4E0(double a1, double a2, double a3, double a4)
{
  v8 = *(v4 + OBJC_IVAR___UIResolvedShape_value + 80);
  v48 = *(v4 + OBJC_IVAR___UIResolvedShape_value + 64);
  v49 = v8;
  *v50 = *(v4 + OBJC_IVAR___UIResolvedShape_value + 96);
  *&v50[9] = *(v4 + OBJC_IVAR___UIResolvedShape_value + 105);
  v9 = *(v4 + OBJC_IVAR___UIResolvedShape_value + 16);
  v45 = *(v4 + OBJC_IVAR___UIResolvedShape_value);
  v46 = v9;
  v10 = *(v4 + OBJC_IVAR___UIResolvedShape_value + 48);
  v47[0] = *(v4 + OBJC_IVAR___UIResolvedShape_value + 32);
  v47[1] = v10;
  v11 = v48;
  v12 = v49;
  v13 = *v50;
  v14 = *&v50[8];
  v15 = *&v50[16];
  if (v50[24])
  {
    sub_188E81D94(&v45, v43);
    sub_188E81D5C(&v48, v43);
    v16 = UIRectInset(*(&v11 + 1), *&v12, *(&v12 + 1), v13, a1, a4, a3, a2);
    v18 = v17;
    v20 = v19;
    v13 = v21;
    v22 = 1;
    LOBYTE(v43[0]) = 1;
    v23 = *&v11;
  }

  else
  {
    sub_188E81D94(&v45, v43);
    v23 = UIRectInset(*&v11, *(&v11 + 1), *&v12, *(&v12 + 1), a1, a4, a3, a2);
    v18 = v25;
    v20 = v26;
    if (v13 > 0.0)
    {
      if (a3 >= a1)
      {
        v27 = a1;
      }

      else
      {
        v27 = a3;
      }

      if (v27 > a2)
      {
        v27 = a2;
      }

      if (v27 > a4)
      {
        v27 = a4;
      }

      v28 = v13 - v27;
      if (v28 < 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v28;
      }
    }

    v22 = 0;
    v16 = v24;
  }

  sub_188B20550(&v45, v43);
  sub_188E81D2C(&v45);
  v40 = v45;
  v41 = v46;
  *v42 = v47[0];
  *&v42[9] = *(v47 + 9);
  v29 = [objc_allocWithZone(UIResolvedShape) init];
  v30 = &v29[OBJC_IVAR___UIResolvedShape_value];
  v31 = *&v29[OBJC_IVAR___UIResolvedShape_value];
  v32 = *&v29[OBJC_IVAR___UIResolvedShape_value + 16];
  v33 = *&v29[OBJC_IVAR___UIResolvedShape_value + 48];
  v43[2] = *&v29[OBJC_IVAR___UIResolvedShape_value + 32];
  v43[3] = v33;
  v43[0] = v31;
  v43[1] = v32;
  v34 = *&v29[OBJC_IVAR___UIResolvedShape_value + 64];
  v35 = *&v29[OBJC_IVAR___UIResolvedShape_value + 80];
  v36 = *&v29[OBJC_IVAR___UIResolvedShape_value + 96];
  *(v44 + 9) = *&v29[OBJC_IVAR___UIResolvedShape_value + 105];
  v43[5] = v35;
  v44[0] = v36;
  v43[4] = v34;
  *v30 = v40;
  *(v30 + 1) = v41;
  *(v30 + 2) = *v42;
  *(v30 + 3) = *&v42[16];
  *(v30 + 8) = v23;
  *(v30 + 9) = v16;
  *(v30 + 10) = v18;
  *(v30 + 11) = v20;
  *(v30 + 12) = v13;
  *(v30 + 13) = v14;
  *(v30 + 14) = v15;
  v30[120] = v22;
  v37 = v29;
  sub_188E81D2C(v43);

  return v37;
}

char *sub_18922E790(double a1)
{
  v3 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 80);
  v42 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 64);
  v43 = v3;
  *v44 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 96);
  *&v44[9] = *(v1 + OBJC_IVAR___UIResolvedShape_value + 105);
  v4 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 16);
  v39 = *(v1 + OBJC_IVAR___UIResolvedShape_value);
  v40 = v4;
  v5 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 48);
  v41[0] = *(v1 + OBJC_IVAR___UIResolvedShape_value + 32);
  v41[1] = v5;
  v7 = *(&v42 + 1);
  v6 = *&v42;
  v8 = v43;
  v9 = *v44;
  v10 = *&v44[8];
  v11 = *&v44[16];
  if (v44[24])
  {
    sub_188E81D94(&v39, v37);
    sub_188E81D5C(&v42, v37);
    v12 = UIRectInset(v7, *&v8, *(&v8 + 1), v9, a1, a1, a1, a1);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = 1;
    LOBYTE(v37[0]) = 1;
  }

  else
  {
    sub_188E81D94(&v39, v37);
    v6 = UIRectInset(v6, v7, *&v8, *(&v8 + 1), a1, a1, a1, a1);
    v12 = v20;
    v14 = v21;
    v16 = v22;
    v19 = 0;
    v23 = v9 - a1;
    if (v9 - a1 < 0.0)
    {
      v23 = 0.0;
    }

    if (v9 <= 0.0)
    {
      v18 = v9;
    }

    else
    {
      v18 = v23;
    }
  }

  sub_188B20550(&v39, v37);
  sub_188E81D2C(&v39);
  v34 = v39;
  v35 = v40;
  *v36 = v41[0];
  *&v36[9] = *(v41 + 9);
  v24 = [objc_allocWithZone(UIResolvedShape) init];
  v25 = &v24[OBJC_IVAR___UIResolvedShape_value];
  v26 = *&v24[OBJC_IVAR___UIResolvedShape_value];
  v27 = *&v24[OBJC_IVAR___UIResolvedShape_value + 16];
  v28 = *&v24[OBJC_IVAR___UIResolvedShape_value + 48];
  v37[2] = *&v24[OBJC_IVAR___UIResolvedShape_value + 32];
  v37[3] = v28;
  v37[0] = v26;
  v37[1] = v27;
  v29 = *&v24[OBJC_IVAR___UIResolvedShape_value + 64];
  v30 = *&v24[OBJC_IVAR___UIResolvedShape_value + 80];
  v31 = *&v24[OBJC_IVAR___UIResolvedShape_value + 96];
  *(v38 + 9) = *&v24[OBJC_IVAR___UIResolvedShape_value + 105];
  v37[5] = v30;
  v38[0] = v31;
  v37[4] = v29;
  *v25 = v34;
  *(v25 + 1) = v35;
  *(v25 + 2) = *v36;
  *(v25 + 3) = *&v36[16];
  *(v25 + 8) = v6;
  *(v25 + 9) = v12;
  *(v25 + 10) = v14;
  *(v25 + 11) = v16;
  *(v25 + 12) = v18;
  *(v25 + 13) = v10;
  *(v25 + 14) = v11;
  v25[120] = v19;
  v32 = v24;
  sub_188E81D2C(v37);

  return v32;
}

id sub_18922EA20(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_18A4A7258();

  return v5;
}

uint64_t _sSo15UIResolvedShapeC5UIKitE11descriptionSSvg_0()
{
  v1 = *(v0 + OBJC_IVAR___UIResolvedShape_value + 80);
  v12 = *(v0 + OBJC_IVAR___UIResolvedShape_value + 64);
  v13 = v1;
  v14[0] = *(v0 + OBJC_IVAR___UIResolvedShape_value + 96);
  v2 = v14[0];
  *(v14 + 9) = *(v0 + OBJC_IVAR___UIResolvedShape_value + 105);
  v3 = *(v0 + OBJC_IVAR___UIResolvedShape_value + 16);
  v11[0] = *(v0 + OBJC_IVAR___UIResolvedShape_value);
  v11[1] = v3;
  v4 = *(v0 + OBJC_IVAR___UIResolvedShape_value + 48);
  v11[2] = *(v0 + OBJC_IVAR___UIResolvedShape_value + 32);
  v11[3] = v4;
  *(v10 + 9) = *(v14 + 9);
  v9 = v1;
  v10[0] = v2;
  v8 = v12;
  v7[16] = 0;
  v7[17] = 0xE000000000000000;
  sub_188E81D94(v11, v7);
  sub_18A4A80E8();

  v7[0] = 0xD000000000000011;
  v7[1] = 0x800000018A68CDE0;
  v5 = sub_188E846DC();
  MEMORY[0x18CFE22D0](v5);

  sub_188E81D2C(v11);
  return v7[0];
}

char *sub_18922EBF4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 80);
  v3 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 48);
  v38 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 64);
  v39 = v2;
  v4 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 80);
  v40[0] = *(v1 + OBJC_IVAR___UIResolvedShape_value + 96);
  *(v40 + 9) = *(v1 + OBJC_IVAR___UIResolvedShape_value + 105);
  v5 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 16);
  v35[0] = *(v1 + OBJC_IVAR___UIResolvedShape_value);
  v35[1] = v5;
  v6 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 48);
  v8 = *(v1 + OBJC_IVAR___UIResolvedShape_value);
  v7 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 16);
  v36 = *(v1 + OBJC_IVAR___UIResolvedShape_value + 32);
  v37 = v6;
  v55 = v38;
  v56 = v4;
  v57[0] = *(v1 + OBJC_IVAR___UIResolvedShape_value + 96);
  *(v57 + 9) = *(v1 + OBJC_IVAR___UIResolvedShape_value + 105);
  v51 = v8;
  v52 = v7;
  v53 = v36;
  v54 = v3;
  v9 = *(a1 + OBJC_IVAR___UIResolvedShape_value);
  v10 = *(a1 + OBJC_IVAR___UIResolvedShape_value + 16);
  v11 = *(a1 + OBJC_IVAR___UIResolvedShape_value + 48);
  v41[2] = *(a1 + OBJC_IVAR___UIResolvedShape_value + 32);
  v41[3] = v11;
  v12 = *(a1 + OBJC_IVAR___UIResolvedShape_value + 16);
  v13 = *(a1 + OBJC_IVAR___UIResolvedShape_value + 32);
  v14 = *(a1 + OBJC_IVAR___UIResolvedShape_value);
  v41[0] = v9;
  v41[1] = v12;
  *(v44 + 9) = *(a1 + OBJC_IVAR___UIResolvedShape_value + 105);
  v15 = *(a1 + OBJC_IVAR___UIResolvedShape_value + 80);
  v44[0] = *(a1 + OBJC_IVAR___UIResolvedShape_value + 96);
  v16 = *(a1 + OBJC_IVAR___UIResolvedShape_value + 80);
  v17 = *(a1 + OBJC_IVAR___UIResolvedShape_value + 48);
  v42 = *(a1 + OBJC_IVAR___UIResolvedShape_value + 64);
  v43 = v16;
  v32 = v42;
  v33 = v15;
  v34[0] = *(a1 + OBJC_IVAR___UIResolvedShape_value + 96);
  *(v34 + 9) = *(a1 + OBJC_IVAR___UIResolvedShape_value + 105);
  v28 = v14;
  v29 = v10;
  v30 = v13;
  v31 = v17;
  sub_188E81D94(v35, v49);
  sub_188E81D94(v41, v49);
  sub_188E8210C(&v28, v49);
  v45[4] = v32;
  v45[5] = v33;
  v46[0] = v34[0];
  *(v46 + 9) = *(v34 + 9);
  v45[0] = v28;
  v45[1] = v29;
  v45[2] = v30;
  v45[3] = v31;
  sub_188E81D2C(v45);
  v47[4] = v55;
  v47[5] = v56;
  v48[0] = v57[0];
  *(v48 + 9) = *(v57 + 9);
  v47[0] = v51;
  v47[1] = v52;
  v47[2] = v53;
  v47[3] = v54;
  sub_188E81D2C(v47);
  v18 = [objc_allocWithZone(UIResolvedShape) init];
  v19 = &v18[OBJC_IVAR___UIResolvedShape_value];
  v20 = *&v18[OBJC_IVAR___UIResolvedShape_value];
  v21 = *&v18[OBJC_IVAR___UIResolvedShape_value + 16];
  v22 = *&v18[OBJC_IVAR___UIResolvedShape_value + 48];
  v53 = *&v18[OBJC_IVAR___UIResolvedShape_value + 32];
  v54 = v22;
  v51 = v20;
  v52 = v21;
  v23 = *&v18[OBJC_IVAR___UIResolvedShape_value + 64];
  v24 = *&v18[OBJC_IVAR___UIResolvedShape_value + 80];
  v25 = *&v18[OBJC_IVAR___UIResolvedShape_value + 96];
  *(v57 + 9) = *&v18[OBJC_IVAR___UIResolvedShape_value + 105];
  v56 = v24;
  v57[0] = v25;
  v55 = v23;
  *(v19 + 3) = v49[3];
  *(v19 + 2) = v49[2];
  *(v19 + 1) = v49[1];
  *v19 = v49[0];
  *(v19 + 105) = *(v50 + 9);
  *(v19 + 6) = v50[0];
  *(v19 + 4) = v49[4];
  *(v19 + 5) = v49[5];
  v26 = v18;
  sub_188E81D2C(&v51);

  return v26;
}

char *sub_18922EE6C(void *a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___UIResolvedShape_value + 80);
  v6 = *(v2 + OBJC_IVAR___UIResolvedShape_value + 48);
  v25 = *(v2 + OBJC_IVAR___UIResolvedShape_value + 64);
  v26 = v5;
  v7 = *(v2 + OBJC_IVAR___UIResolvedShape_value + 80);
  v27[0] = *(v2 + OBJC_IVAR___UIResolvedShape_value + 96);
  *(v27 + 9) = *(v2 + OBJC_IVAR___UIResolvedShape_value + 105);
  v8 = *(v2 + OBJC_IVAR___UIResolvedShape_value + 16);
  v22[0] = *(v2 + OBJC_IVAR___UIResolvedShape_value);
  v22[1] = v8;
  v9 = *(v2 + OBJC_IVAR___UIResolvedShape_value + 48);
  v11 = *(v2 + OBJC_IVAR___UIResolvedShape_value);
  v10 = *(v2 + OBJC_IVAR___UIResolvedShape_value + 16);
  v23 = *(v2 + OBJC_IVAR___UIResolvedShape_value + 32);
  v24 = v9;
  v36 = v25;
  v37 = v7;
  v38[0] = *(v2 + OBJC_IVAR___UIResolvedShape_value + 96);
  *(v38 + 9) = *(v2 + OBJC_IVAR___UIResolvedShape_value + 105);
  v32 = v11;
  v33 = v10;
  v34 = v23;
  v35 = v6;
  sub_188E81D94(v22, v30);
  sub_188E82C08(a1, a2, v30);
  v28[4] = v36;
  v28[5] = v37;
  v29[0] = v38[0];
  *(v29 + 9) = *(v38 + 9);
  v28[0] = v32;
  v28[1] = v33;
  v28[2] = v34;
  v28[3] = v35;
  sub_188E81D2C(v28);
  v12 = [objc_allocWithZone(UIResolvedShape) init];
  v13 = &v12[OBJC_IVAR___UIResolvedShape_value];
  v14 = *&v12[OBJC_IVAR___UIResolvedShape_value];
  v15 = *&v12[OBJC_IVAR___UIResolvedShape_value + 16];
  v16 = *&v12[OBJC_IVAR___UIResolvedShape_value + 48];
  v34 = *&v12[OBJC_IVAR___UIResolvedShape_value + 32];
  v35 = v16;
  v32 = v14;
  v33 = v15;
  v17 = *&v12[OBJC_IVAR___UIResolvedShape_value + 64];
  v18 = *&v12[OBJC_IVAR___UIResolvedShape_value + 80];
  v19 = *&v12[OBJC_IVAR___UIResolvedShape_value + 96];
  *(v38 + 9) = *&v12[OBJC_IVAR___UIResolvedShape_value + 105];
  v37 = v18;
  v38[0] = v19;
  v36 = v17;
  *(v13 + 3) = v30[3];
  *(v13 + 2) = v30[2];
  *(v13 + 1) = v30[1];
  *v13 = v30[0];
  *(v13 + 105) = *(v31 + 9);
  *(v13 + 6) = v31[0];
  *(v13 + 4) = v30[4];
  *(v13 + 5) = v30[5];
  v20 = v12;
  sub_188E81D2C(&v32);

  return v20;
}

id sub_18922F18C(char *a1, uint64_t a2, void *a3, void *a4, objc_class **a5)
{
  *&a1[*a3] = 0;
  if (qword_1EA931CD0 != -1)
  {
    v9 = a4;
    swift_once();
    a4 = v9;
  }

  v12[4] = xmmword_1EA9950B0;
  v12[5] = unk_1EA9950C0;
  v13[0] = xmmword_1EA9950D0;
  *(v13 + 9) = *(&xmmword_1EA9950D0 + 9);
  v12[0] = xmmword_1EA995070;
  v12[1] = unk_1EA995080;
  v12[2] = xmmword_1EA995090;
  v12[3] = unk_1EA9950A0;
  memmove(&a1[*a4], &xmmword_1EA995070, 0x79uLL);
  sub_188E81D94(v12, v11);
  v7 = *a5;
  v10.receiver = a1;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_init);
}

char *sub_18922F2A8()
{
  v1 = OBJC_IVAR___UIShapeResolutionContext_cachedContentShape;
  v2 = *(v0 + OBJC_IVAR___UIShapeResolutionContext_cachedContentShape);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___UIShapeResolutionContext_cachedContentShape);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___UIShapeResolutionContext_value + 80);
    v30 = *(v0 + OBJC_IVAR___UIShapeResolutionContext_value + 64);
    v31 = v4;
    v32[0] = *(v0 + OBJC_IVAR___UIShapeResolutionContext_value + 96);
    *(v32 + 9) = *(v0 + OBJC_IVAR___UIShapeResolutionContext_value + 105);
    v5 = *(v0 + OBJC_IVAR___UIShapeResolutionContext_value + 16);
    v26 = *(v0 + OBJC_IVAR___UIShapeResolutionContext_value);
    v27 = v5;
    v6 = *(v0 + OBJC_IVAR___UIShapeResolutionContext_value + 48);
    v28 = *(v0 + OBJC_IVAR___UIShapeResolutionContext_value + 32);
    v29 = v6;
    v7 = objc_allocWithZone(UIResolvedShape);
    sub_188E81D94(&v26, v33);
    v8 = [v7 init];
    v9 = &v8[OBJC_IVAR___UIResolvedShape_value];
    v10 = *&v8[OBJC_IVAR___UIResolvedShape_value + 48];
    v12 = *&v8[OBJC_IVAR___UIResolvedShape_value];
    v11 = *&v8[OBJC_IVAR___UIResolvedShape_value + 16];
    v33[2] = *&v8[OBJC_IVAR___UIResolvedShape_value + 32];
    v33[3] = v10;
    v33[0] = v12;
    v33[1] = v11;
    v14 = *&v8[OBJC_IVAR___UIResolvedShape_value + 80];
    v13 = *&v8[OBJC_IVAR___UIResolvedShape_value + 96];
    v15 = *&v8[OBJC_IVAR___UIResolvedShape_value + 64];
    *&v34[9] = *&v8[OBJC_IVAR___UIResolvedShape_value + 105];
    v33[5] = v14;
    *v34 = v13;
    v33[4] = v15;
    v16 = v26;
    v17 = v27;
    v18 = v29;
    *(v9 + 2) = v28;
    *(v9 + 3) = v18;
    *v9 = v16;
    *(v9 + 1) = v17;
    v19 = v30;
    v20 = v31;
    v21 = v32[0];
    *(v9 + 105) = *(v32 + 9);
    *(v9 + 5) = v20;
    *(v9 + 6) = v21;
    *(v9 + 4) = v19;
    v22 = v8;
    sub_188E81D2C(v33);

    v23 = *(v0 + v1);
    *(v0 + v1) = v22;
    v3 = v22;

    v2 = 0;
  }

  v24 = v2;
  return v3;
}

char *sub_18922F7D8(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 layer];
  sub_188E835DC(v20);

  [v2 convertPoint:a1 toCoordinateSpace:{0.0, 0.0}];
  CGAffineTransformMakeTranslation(v22, v5, v6);
  v7 = *&v22[32];
  v8 = *&v22[40];
  v18 = *&v22[16];
  v19 = *v22;
  v9 = swift_allocObject();
  *(v9 + 16) = v19;
  *(v9 + 32) = v18;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = v20[1];
  *(v9 + 64) = v20[0];
  *(v9 + 80) = v10;
  *(v9 + 96) = v21[0];
  *(v9 + 105) = *(v21 + 9);
  v11 = [objc_allocWithZone(UIShape) init];
  v12 = &v11[OBJC_IVAR___UIShape_value];
  v14 = *&v11[OBJC_IVAR___UIShape_value + 16];
  v13 = *&v11[OBJC_IVAR___UIShape_value + 32];
  v15 = *&v11[OBJC_IVAR___UIShape_value];
  *&v22[41] = *&v11[OBJC_IVAR___UIShape_value + 41];
  *&v22[16] = v14;
  *&v22[32] = v13;
  *v22 = v15;
  *v12 = v9;
  v12[56] = 5;
  v16 = v11;
  sub_188B2040C(v22);

  return v16;
}

void sub_18922F970(__int128 *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1[5];
  v66 = a1[4];
  v67 = v5;
  v68[0] = a1[6];
  *(v68 + 9) = *(a1 + 105);
  v6 = a1[1];
  v62 = *a1;
  v63 = v6;
  v7 = a1[3];
  v64 = a1[2];
  v65 = v7;
  v8 = qword_1EA940E78;
  if (qword_1EA940E78)
  {
    v9 = (qword_1EA940E78 + OBJC_IVAR___UIShapeResolutionContext_value);
    v10 = *(qword_1EA940E78 + OBJC_IVAR___UIShapeResolutionContext_value + 48);
    v12 = *(qword_1EA940E78 + OBJC_IVAR___UIShapeResolutionContext_value);
    v11 = *(qword_1EA940E78 + OBJC_IVAR___UIShapeResolutionContext_value + 16);
    v57 = *(qword_1EA940E78 + OBJC_IVAR___UIShapeResolutionContext_value + 32);
    v58 = v10;
    v55 = v12;
    v56 = v11;
    v14 = *(qword_1EA940E78 + OBJC_IVAR___UIShapeResolutionContext_value + 80);
    v13 = *(qword_1EA940E78 + OBJC_IVAR___UIShapeResolutionContext_value + 96);
    v15 = *(qword_1EA940E78 + OBJC_IVAR___UIShapeResolutionContext_value + 64);
    *(v61 + 9) = *(qword_1EA940E78 + OBJC_IVAR___UIShapeResolutionContext_value + 105);
    v60 = v14;
    v61[0] = v13;
    v59 = v15;
    v16 = a1[5];
    v9[4] = a1[4];
    v9[5] = v16;
    v9[6] = a1[6];
    *(v9 + 105) = *(a1 + 105);
    v17 = a1[1];
    *v9 = *a1;
    v9[1] = v17;
    v18 = a1[3];
    v9[2] = a1[2];
    v9[3] = v18;
    v19 = v8;
    sub_18922FBD0(&v62, v54);
    sub_188E81DCC(&v55);
    v20 = *&v19[OBJC_IVAR___UIShapeResolutionContext_cachedContentShape];
    *&v19[OBJC_IVAR___UIShapeResolutionContext_cachedContentShape] = 0;

    v21 = v19;
  }

  else
  {
    v22 = objc_allocWithZone(UIShapeResolutionContext);
    sub_18922FBD0(&v62, &v55);
    v23 = [v22 init];
    v24 = &v23[OBJC_IVAR___UIShapeResolutionContext_value];
    v25 = *&v23[OBJC_IVAR___UIShapeResolutionContext_value + 48];
    v27 = *&v23[OBJC_IVAR___UIShapeResolutionContext_value];
    v26 = *&v23[OBJC_IVAR___UIShapeResolutionContext_value + 16];
    v57 = *&v23[OBJC_IVAR___UIShapeResolutionContext_value + 32];
    v58 = v25;
    v55 = v27;
    v56 = v26;
    v29 = *&v23[OBJC_IVAR___UIShapeResolutionContext_value + 80];
    v28 = *&v23[OBJC_IVAR___UIShapeResolutionContext_value + 96];
    v30 = *&v23[OBJC_IVAR___UIShapeResolutionContext_value + 64];
    *(v61 + 9) = *&v23[OBJC_IVAR___UIShapeResolutionContext_value + 105];
    v60 = v29;
    v61[0] = v28;
    v59 = v30;
    v31 = v62;
    v32 = v63;
    v33 = v65;
    *(v24 + 2) = v64;
    *(v24 + 3) = v33;
    *v24 = v31;
    *(v24 + 1) = v32;
    v34 = v66;
    v35 = v67;
    v36 = v68[0];
    *(v24 + 105) = *(v68 + 9);
    *(v24 + 5) = v35;
    *(v24 + 6) = v36;
    *(v24 + 4) = v34;
    v37 = v23;
    sub_188E81DCC(&v55);
    v38 = qword_1EA940E78;
    qword_1EA940E78 = v37;
    v21 = v37;

    v19 = 0;
  }

  v39 = v19;
  v40 = [a2 resolvedShapeInContext_];

  v41 = &v40[OBJC_IVAR___UIResolvedShape_value];
  v42 = *&v40[OBJC_IVAR___UIResolvedShape_value];
  v43 = *&v40[OBJC_IVAR___UIResolvedShape_value + 16];
  v44 = *&v40[OBJC_IVAR___UIResolvedShape_value + 48];
  v57 = *&v40[OBJC_IVAR___UIResolvedShape_value + 32];
  v58 = v44;
  v55 = v42;
  v56 = v43;
  v45 = *&v40[OBJC_IVAR___UIResolvedShape_value + 64];
  v46 = *&v40[OBJC_IVAR___UIResolvedShape_value + 80];
  v47 = *&v40[OBJC_IVAR___UIResolvedShape_value + 96];
  *(v61 + 9) = *&v40[OBJC_IVAR___UIResolvedShape_value + 105];
  v60 = v46;
  v61[0] = v47;
  v59 = v45;
  v48 = *&v40[OBJC_IVAR___UIResolvedShape_value];
  v49 = *&v40[OBJC_IVAR___UIResolvedShape_value + 16];
  v50 = *&v40[OBJC_IVAR___UIResolvedShape_value + 48];
  a3[2] = *&v40[OBJC_IVAR___UIResolvedShape_value + 32];
  a3[3] = v50;
  *a3 = v48;
  a3[1] = v49;
  v51 = *(v41 + 4);
  v52 = *(v41 + 5);
  v53 = *(v41 + 6);
  *(a3 + 105) = *(v41 + 105);
  a3[5] = v52;
  a3[6] = v53;
  a3[4] = v51;
  sub_188E81D94(&v55, v54);
}

unint64_t sub_18922FC3C(uint64_t a1)
{
  result = sub_18922FC64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18922FC64()
{
  result = qword_1EA940F48;
  if (!qword_1EA940F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940F48);
  }

  return result;
}

unint64_t sub_18922FCD0(unint64_t result)
{
  if (result >= 3)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000037, 0x800000018A6B47A0);
    type metadata accessor for _UIListCellProminence(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_18922FDA4@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for _UICellConfigurationStateReadonlyCoreListMetricsState;
  a1[4] = &off_1EFAF9A18;
  *a1 = v1;
  return swift_unknownObjectRetain();
}

unint64_t sub_18922FDC4(unint64_t result)
{
  if (result >= 6)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000032, 0x800000018A6B46E0);
    type metadata accessor for _UIListCellStyle(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_18922FE98(unint64_t a1)
{
  if (a1 < 0xB)
  {
    return byte_18A676E7A[a1];
  }

  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000037, 0x800000018A6B4720);
  type metadata accessor for _UICellAccessorySystemType(0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

id sub_18922FF78(unsigned __int8 a1)
{
  v2 = objc_opt_self();
  if (a1 > 5u)
  {
    v3 = &UIFontTextStyleHeadline;
    v5 = &UIFontTextStyleSubheadline;
    if (a1 != 10)
    {
      v5 = &UIFontTextStyleTitle3;
    }

    if (a1 != 9)
    {
      v3 = v5;
    }

    v6 = UIFontTextStyleEmphasizedTitle2;
    v7 = UIFontTextStyleEmphasizedTitle3;
    if (a1 != 7)
    {
      v7 = &UIFontTextStyleFootnote;
    }

    if (a1 != 6)
    {
      v6 = v7;
    }

    if (a1 <= 8u)
    {
      v3 = v6;
    }
  }

  else if (a1 > 2u)
  {
    v3 = &UIFontTextStyleCaption1;
    v8 = UIFontTextStyleEmphasizedBody;
    if (a1 != 4)
    {
      v8 = UIFontTextStyleEmphasizedSubheadline;
    }

    if (a1 != 3)
    {
      v3 = v8;
    }
  }

  else
  {
    v3 = &UIFontTextStyleBody;
    if (a1)
    {
      if (a1 == 1)
      {
        result = [v2 _preferredFontForTextStyle_weight_];
        if (!result)
        {
          __break(1u);
        }

        return result;
      }

      v3 = &UIFontTextStyleCallout;
    }
  }

  v9 = [v2 preferredFontForTextStyle_];

  return v9;
}

id UIRBDirectionalLightEffectView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1892301E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  result = [objc_opt_self() functionWithName_];
  *(a3 + 24) = a2;
  *(a3 + 32) = result;
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a1;
  return result;
}

void __swiftcall UIRBDirectionalLightEffectView.Pondering.Effect.init(lineWidth:lineHeight:axis:)(UIKit::UIRBDirectionalLightEffectView::Pondering::Effect *__return_ptr retstr, Swift::Double lineWidth, Swift::Double lineHeight, __C::UIAxis axis)
{
  v8 = [objc_opt_self() functionWithName_];
  retstr->lineWidth = lineWidth;
  retstr->lineHeight = lineHeight;
  retstr->axis = axis;
  retstr->timingFunction.super.isa = v8;
}

void sub_1892302D8(void *a1, void *a2)
{
  *(*(*a2 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView) + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = *a1;

  sub_189230C30();
}

void sub_189230344(uint64_t a1)
{
  *(*(v1 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView) + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = a1;

  sub_189230C30();
}

void (*sub_18923038C(void *a1))(void *a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView);
  a1[1] = v1;
  a1[2] = v2;
  v3 = OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects;
  a1[3] = OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects;
  *a1 = *(v2 + v3);

  return sub_1892303F4;
}

void sub_1892303F4(void *a1, char a2)
{
  *(a1[2] + a1[3]) = *a1;
  if (a2)
  {

    sub_189230C30();
  }

  else
  {

    sub_189230C30();
  }
}

uint64_t sub_189230470@<X0>(void *a1@<X0>, uint64_t (**a2)(float *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_189233B3C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_188A52E38(v4);
}

uint64_t sub_189230510(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_189233B04;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_188A52E38(v3);
  return sub_188A55B8C(v8);
}

uint64_t sub_1892305D8()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation);
  swift_beginAccess();
  v2 = *v1;
  sub_188A52E38(*v1);
  return v2;
}

uint64_t sub_189230634(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_188A55B8C(v6);
}

char *UIRBDirectionalLightEffectView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
  *v9 = 0;
  v9[1] = 0;
  v4[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_isAnimationRunning] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_unionEffectDuration] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_animationStartTime] = 0;
  v4[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_autorepeatsAnimation] = 0;
  v10 = OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for UIRBDirectionalLightEffectView.DrawingView()) initWithFrame_];
  *&v4[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink] = 0;
  v11 = &v4[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_completionBlock];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimationCurve;
  *&v4[v12] = [objc_opt_self() functionWithName_];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for UIRBDirectionalLightEffectView();
  v13 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView;
  v15 = *&v13[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView];
  v16 = v13;
  v17 = [v15 layer];
  [v17 setOpaque_];

  v18 = [*&v13[v14] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setColorMode_];

  v19 = [*&v13[v14] layer];
  [v19 setWantsExtendedDynamicRangeContent_];

  v20 = [*&v13[v14] layer];
  v21 = sub_18A4A2D28();
  v22 = sub_18A4A7258();
  [v20 setValue:v21 forKey:v22];

  v23 = [*&v13[v14] layer];
  v24 = sub_18A4A7668();
  v25 = sub_18A4A7258();
  [v23 setValue:v24 forKey:v25];

  [v16 addSubview_];
  return v16;
}

void sub_189230A38(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_isAnimationRunning) = 1;
  *(v3 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_autorepeatsAnimation) = a1;
  *(v3 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_animationStartTime) = CACurrentMediaTime();
  v6 = (v3 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_completionBlock);
  v7 = *(v3 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_completionBlock);
  *v6 = a2;
  v6[1] = a3;
  sub_188A55B8C(v7);
  v8 = objc_opt_self();
  sub_188A52E38(a2);
  v9 = [v8 displayLinkWithTarget:v3 selector:sel_update_];
  v10 = [objc_opt_self() mainRunLoop];
  [v9 addToRunLoop:v10 forMode:*MEMORY[0x1E695DA28]];

  v11 = *(v3 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink);
  *(v3 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink) = v9;
}

void sub_189230B60()
{
  v1 = OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink;
  [*(v0 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_isAnimationRunning) = 0;
}

void sub_189230C30()
{
  [v0 bounds];
  Height = CGRectGetHeight(v13);
  v2 = *(*&v0[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = Height;
    v5 = v2 + 32;

    v6 = 0.0;
    do
    {
      sub_188A53994(v5, v10);
      v7 = v11;
      v8 = v12;
      __swift_project_boxed_opaque_existential_0(v10, v11);
      v9 = (*(v8 + 16))(v7, v8, v4);
      if (v6 < v9)
      {
        v6 = v9;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = 0.0;
  }

  *&v0[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_unionEffectDuration] = v6;
}

void sub_189230D80(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView);
  [a1 timestamp];
  v4 = OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_animationStartTime;
  v6 = OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_timeOffset;
  *&v3[OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_timeOffset] = v5 - *(v1 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_animationStartTime);
  [v3 setNeedsDisplay];
  v7 = (v1 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation);
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    v9 = *&v3[v6] / *(v2 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_unionEffectDuration);
    v10 = *(v2 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimationCurve);

    *&v11 = v9;
    v8([v10 _solveForInput_]);
    sub_188A55B8C(v8);
  }

  if (*(v2 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_unionEffectDuration) < *&v3[v6])
  {
    if (*(v2 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_autorepeatsAnimation) == 1)
    {
      *(v2 + v4) = CACurrentMediaTime();
    }

    else
    {
      v12 = (v2 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_completionBlock);
      v13 = *(v2 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_completionBlock);
      if (v13)
      {

        v13(v14);
        sub_188A55B8C(v13);
        v15 = *v12;
      }

      else
      {
        v15 = 0;
      }

      *v12 = 0;
      v12[1] = 0;
      sub_188A55B8C(v15);
      v16 = OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink;
      [*(v2 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink) invalidate];
      v17 = *(v2 + v16);
      *(v2 + v16) = 0;

      *(v2 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_isAnimationRunning) = 0;
    }
  }
}

void sub_189230FA4()
{
  v1 = [v0 window];
  if (v1)
  {

    if (v0[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_isAnimationRunning] == 1 && !*&v0[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink])
    {
      v4 = v0[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_autorepeatsAnimation];

      sub_189230A38(v4, 0, 0);
    }
  }

  else
  {
    v2 = OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink;
    [*&v0[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink] invalidate];
    v3 = *&v0[v2];
    *&v0[v2] = 0;
  }
}

id UIRBDirectionalLightEffectView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIRBDirectionalLightEffectView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UIRBDirectionalLightEffectView.Replacement.OutgoingEffect.contents(layer:progress:)(void *a1, float a2)
{
  v74 = *v2;
  v76 = *(v2 + 8);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  [a1 bounds];
  x = v79.origin.x;
  y = v79.origin.y;
  width = v79.size.width;
  height = v79.size.height;
  v9 = CGRectGetHeight(v79);
  v10 = 320.0;
  if ((*&v9 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v10 = v9;
  }

  if ((~*&v9 & 0x7FF0000000000000) != 0)
  {
    v10 = v9;
  }

  if (v9 >= 320.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 320.0;
  }

  v73 = v11;
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  MidX = CGRectGetMidX(v80);
  v12 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  v13 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  v14 = [v3 colorWithAlphaComponent_];
  v15 = [v14 CGColor];
  RBColorFromCGColor2();
  v71 = __PAIR64__(v16, v17);
  v70 = __PAIR64__(v18, v19);

  v20 = [v3 colorWithAlphaComponent_];
  v21 = [v20 CGColor];
  RBColorFromCGColor2();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = [v3 colorWithAlphaComponent_];
  v31 = [v30 CGColor];
  RBColorFromCGColor2();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = MEMORY[0x1E69E7CC0];
  v77 = MEMORY[0x1E69E7CC0];
  sub_188E6D4E0(0, 3, 0);
  v41 = v77;
  v43 = *(v77 + 16);
  v42 = *(v77 + 24);
  v44 = v42 >> 1;
  v45 = v43 + 1;
  if (v42 >> 1 <= v43)
  {
    sub_188E6D4E0((v42 > 1), v43 + 1, 1);
    v41 = v77;
    v42 = *(v77 + 24);
    v44 = v42 >> 1;
  }

  *(v41 + 16) = v45;
  v46 = (v41 + 16 * v43);
  v46[8] = HIDWORD(v71);
  v46[9] = v71;
  v46[10] = HIDWORD(v70);
  v46[11] = v70;
  v47 = v43 + 2;
  if (v44 <= v45)
  {
    sub_188E6D4E0((v42 > 1), v47, 1);
    v41 = v77;
  }

  *(v41 + 16) = v47;
  v48 = (v41 + 16 * v45);
  v48[8] = v23;
  v48[9] = v25;
  v48[10] = v27;
  v48[11] = v29;
  v50 = *(v41 + 16);
  v49 = *(v41 + 24);
  if (v50 >= v49 >> 1)
  {
    sub_188E6D4E0((v49 > 1), v50 + 1, 1);
  }

  v51 = v77;
  *(v77 + 16) = v50 + 1;
  v52 = (v77 + 32 + 16 * v50);
  *v52 = v33;
  v52[1] = v35;
  v52[2] = v37;
  v52[3] = v39;
  v78 = v40;
  sub_188B6479C(0, 3, 0);
  v53 = v40;
  v55 = *(v40 + 16);
  v54 = *(v40 + 24);
  v56 = v54 >> 1;
  v57 = v55 + 1;
  if (v54 >> 1 <= v55)
  {
    sub_188B6479C((v54 > 1), v55 + 1, 1);
    v53 = v78;
    v54 = *(v78 + 24);
    v56 = v54 >> 1;
  }

  *(v53 + 16) = v57;
  *(v53 + 8 * v55 + 32) = 0;
  v58 = v55 + 2;
  if (v56 < v58)
  {
    sub_188B6479C((v54 > 1), v58, 1);
    v53 = v78;
  }

  *(v53 + 16) = v58;
  *(v53 + 8 * v57 + 32) = 0x3FEB333333333333;
  v60 = *(v53 + 16);
  v59 = *(v53 + 24);
  if (v60 >= v59 >> 1)
  {
    sub_188B6479C((v59 > 1), v60 + 1, 1);
  }

  v61 = v76;
  v62 = atan((v61 + v61) / v74);
  v63 = cos(1.57079633 - v62);
  v64 = sqrt(v74 * 0.5 * (v74 * 0.5) + v61 * v61) / (v63 + v63);
  v65 = 0.0 - v64 + -50.0;
  if (v4 == 2)
  {
    v66 = 0.0 - v64 + -50.0;
  }

  else
  {
    v66 = MidX;
  }

  if (v4 == 2)
  {
    v65 = MidX;
  }

  *(v78 + 16) = v60 + 1;
  *(v78 + 32 + 8 * v60) = 0x3FF0000000000000;
  [v13 setRadialGradientCenter:3 startRadius:v51 + 32 endRadius:v65 stopCount:v66 colors:v64 locations:v76 + v73 * a2 + v73 * a2 + v64 flags:{v70, v71}];

  v67 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  [v67 setInfinite];
  LODWORD(v68) = 1.0;
  [v12 drawShape:v67 fill:v13 alpha:0 blendMode:v68];

  return v12;
}

void sub_1892316C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA941080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A6510F0;
  *(v0 + 32) = xmmword_18A676F60;
  *(v0 + 48) = 0;
  *(v0 + 56) = xmmword_18A676F70;
  *(v0 + 72) = 0x3FD3D70A3D70A3D7;
  *(v0 + 80) = xmmword_18A676F80;
  *(v0 + 96) = 0x3FE2E147AE147AE1;
  v1 = [objc_allocWithZone(UIColor) initWithHue:0.986 saturation:0.349 brightness:0.948 alpha:1.0];
  v2 = [v1 CGColor];
  RBColorFromCGColor2();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *(v0 + 104) = v4;
  *(v0 + 108) = v6;
  *(v0 + 112) = v8;
  *(v0 + 116) = v10;
  *(v0 + 120) = 0x3FE6666666666666;
  v11 = [objc_allocWithZone(UIColor) initWithHue:0.121 saturation:0.319 brightness:0.864 alpha:1.0];
  v12 = [v11 CGColor];
  RBColorFromCGColor2();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  *(v0 + 128) = v14;
  *(v0 + 132) = v16;
  *(v0 + 136) = v18;
  *(v0 + 140) = v20;
  *(v0 + 144) = 0x3FE999999999999ALL;
  v21 = [objc_allocWithZone(UIColor) initWithHue:0.057 saturation:0.092 brightness:0.95 alpha:1.0];
  v22 = [v21 CGColor];
  RBColorFromCGColor2();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  *(v0 + 152) = v24;
  *(v0 + 156) = v26;
  *(v0 + 160) = v28;
  *(v0 + 164) = v30;
  *(v0 + 168) = 0x3FEE147AE147AE14;
  v31 = [objc_allocWithZone(UIColor) initWithHue:0.129 saturation:1.0 brightness:1.0 alpha:0.0];
  v32 = [v31 CGColor];
  RBColorFromCGColor2();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  *(v0 + 176) = v34;
  *(v0 + 180) = v36;
  *(v0 + 184) = v38;
  *(v0 + 188) = v40;
  *(v0 + 192) = 0x3FF0000000000000;
  off_1EA92F1B0 = v0;
}

double UIRBDirectionalLightEffectView.Replacement.IncomingEffect.duration(forHeight:)(double a1)
{
  v1 = a1 / 230.769231;
  result = 1.3;
  if (v1 >= 1.3)
  {
    if ((~*&v1 & 0x7FF0000000000000) != 0)
    {
      return v1;
    }

    else
    {
      result = 1.3;
      if ((*&v1 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        return v1;
      }
    }
  }

  return result;
}

id UIRBDirectionalLightEffectView.Replacement.IncomingEffect.contents(layer:progress:)(void *a1, float a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  [a1 bounds];
  x = v133.origin.x;
  y = v133.origin.y;
  width = v133.size.width;
  height = v133.size.height;
  v13 = CGRectGetHeight(v133);
  v14 = 320.0;
  if ((*&v13 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v14 = v13;
  }

  if ((~*&v13 & 0x7FF0000000000000) != 0)
  {
    v14 = v13;
  }

  if (v13 >= 320.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 320.0;
  }

  v16 = atan((v6 + v6) / v5);
  v17 = cos(1.57079633 - v16);
  v18 = sqrt(v5 * 0.5 * (v5 * 0.5) + v6 * v6) / (v17 + v17);
  v134.origin.x = x;
  v134.origin.y = y;
  v134.size.width = width;
  v134.size.height = height;
  MidX = CGRectGetMidX(v134);
  if (v7 == 2)
  {
    v20 = MidX;
  }

  else
  {
    v20 = 0.0 - v18 + -50.0;
  }

  if (v7 == 2)
  {
    v21 = 0.0 - v18 + -50.0;
  }

  else
  {
    v21 = MidX;
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  v23 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  v118 = v15 * a2 + v15 * a2 + v18;
  v24 = v20;
  v25 = v21;
  [v23 setCircleAtPoint:v20 radius:{v21, v118 + -10.0}];
  v26 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  [a1 colorMode];
  RBColorModeWorkingColorSpace();
  v27 = [v8 CGColor];
  RBColorFromCGColor2();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  LODWORD(v36) = v29;
  LODWORD(v37) = v31;
  LODWORD(v38) = v33;
  LODWORD(v39) = v35;
  [v26 setColor_];
  v40 = &selRef_allowsTickValuesOnly;
  LODWORD(v41) = 1.0;
  v126 = v23;
  v117 = v26;
  [v22 drawShape:v23 fill:v26 alpha:0 blendMode:v41];
  v42 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  [v42 setInfinite];
  [v22 addBlurFilterWithRadius_];
  LODWORD(v43) = 1028443341;
  v128 = v22;
  [v22 addBrightnessFilterWithAmount_];
  v44 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  if (qword_1EA92F1A8 != -1)
  {
    swift_once();
  }

  v45 = off_1EA92F1B0;
  v46 = *(off_1EA92F1B0 + 2);
  v47 = MEMORY[0x1E69E7CC0];
  v127 = v44;
  if (v46)
  {
    v129 = MEMORY[0x1E69E7CC0];
    sub_188E6D4E0(0, v46, 0);
    v48 = v129;
    v49 = (v45 + 32);
    v50 = *(v129 + 16);
    v51 = v46;
    do
    {
      v52 = *v49;
      v53 = *(v129 + 24);
      if (v50 >= v53 >> 1)
      {
        v116 = *v49;
        sub_188E6D4E0((v53 > 1), v50 + 1, 1);
        v52 = v116;
      }

      *(v129 + 16) = v50 + 1;
      *(v129 + 16 * v50 + 32) = v52;
      v49 = (v49 + 24);
      ++v50;
      --v51;
    }

    while (v51);
    v130 = MEMORY[0x1E69E7CC0];
    sub_188B6479C(0, v46, 0);
    v54 = v130;
    v55 = *(v130 + 16);
    v56 = (v45 + 48);
    v57 = v46;
    v58 = v24;
    v59 = v118;
    v40 = &selRef_allowsTickValuesOnly;
    do
    {
      v60 = *v56;
      v61 = *(v130 + 24);
      if (v55 >= v61 >> 1)
      {
        sub_188B6479C((v61 > 1), v55 + 1, 1);
      }

      *(v130 + 16) = v55 + 1;
      *(v130 + 8 * v55 + 32) = v60;
      v56 += 3;
      ++v55;
      --v57;
    }

    while (v57);
    v44 = v127;
    v47 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
    v48 = MEMORY[0x1E69E7CC0];
    v58 = v24;
    v59 = v118;
  }

  [v44 setRadialGradientCenter:v46 startRadius:v48 + 32 endRadius:v54 + 32 stopCount:0 colors:v58 locations:v25 flags:{v18, v59, v116}];

  v63 = 1.0;
  if (a2 <= 1.0)
  {
    v63 = a2;
    if (a2 <= 0.5)
    {
      v63 = 0.5;
    }
  }

  v64 = (v63 + -0.5) + (v63 + -0.5);
  *&v62 = 1.0 - v64;
  [v128 v40[105]];
  v65 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  v131 = v47;
  sub_188E6D4E0(0, 7, 0);
  v66 = v47;
  v67 = xmmword_1EFAB9418;
  v69 = *(v47 + 16);
  v68 = *(v47 + 24);
  v70 = v69 + 1;
  if (v69 >= v68 >> 1)
  {
    v119 = xmmword_1EFAB9418;
    sub_188E6D4E0((v68 > 1), v69 + 1, 1);
    v67 = v119;
    v66 = v131;
  }

  *(v66 + 16) = v70;
  *(v66 + 16 * v69 + 32) = v67;
  v71 = xmmword_1EFAB9430;
  v72 = *(v66 + 24);
  v73 = v69 + 2;
  if (v70 >= v72 >> 1)
  {
    v120 = xmmword_1EFAB9430;
    sub_188E6D4E0((v72 > 1), v69 + 2, 1);
    v71 = v120;
  }

  *(v66 + 16) = v73;
  *(v66 + 16 * v70 + 32) = v71;
  v74 = xmmword_1EFAB9448;
  v75 = *(v66 + 24);
  v76 = v69 + 3;
  if (v73 >= v75 >> 1)
  {
    v121 = xmmword_1EFAB9448;
    sub_188E6D4E0((v75 > 1), v69 + 3, 1);
    v74 = v121;
  }

  *(v66 + 16) = v76;
  *(v66 + 16 * v73 + 32) = v74;
  v77 = xmmword_1EFAB9460;
  v78 = *(v66 + 24);
  v79 = v69 + 4;
  if (v76 >= v78 >> 1)
  {
    v122 = xmmword_1EFAB9460;
    sub_188E6D4E0((v78 > 1), v69 + 4, 1);
    v77 = v122;
  }

  *(v66 + 16) = v79;
  *(v66 + 16 * v76 + 32) = v77;
  v80 = xmmword_1EFAB9478;
  v81 = *(v66 + 24);
  v82 = v69 + 5;
  if (v79 >= v81 >> 1)
  {
    v123 = xmmword_1EFAB9478;
    sub_188E6D4E0((v81 > 1), v69 + 5, 1);
    v80 = v123;
  }

  *(v66 + 16) = v82;
  *(v66 + 16 * v79 + 32) = v80;
  v83 = xmmword_1EFAB9490;
  v84 = *(v66 + 24);
  v85 = v69 + 6;
  if (v82 >= v84 >> 1)
  {
    v124 = xmmword_1EFAB9490;
    sub_188E6D4E0((v84 > 1), v69 + 6, 1);
    v83 = v124;
  }

  *(v66 + 16) = v85;
  *(v66 + 16 * v82 + 32) = v83;
  v86 = xmmword_1EFAB94A8;
  v87 = *(v66 + 24);
  v88 = v69 + 7;
  if (v85 >= v87 >> 1)
  {
    v125 = xmmword_1EFAB94A8;
    sub_188E6D4E0((v87 > 1), v88, 1);
    v86 = v125;
  }

  *(v66 + 16) = v88;
  *(v66 + 32 + 16 * v85) = v86;
  v132 = MEMORY[0x1E69E7CC0];
  sub_188B6479C(0, 7, 0);
  v89 = v132;
  v90 = qword_1EFAB9428;
  v92 = *(v132 + 16);
  v91 = *(v132 + 24);
  v93 = v91 >> 1;
  v94 = v92 + 1;
  if (v91 >> 1 <= v92)
  {
    sub_188B6479C((v91 > 1), v92 + 1, 1);
    v89 = v132;
    v91 = *(v132 + 24);
    v93 = v91 >> 1;
  }

  *(v89 + 16) = v94;
  *(v89 + 8 * v92 + 32) = v90;
  v95 = qword_1EFAB9440;
  v96 = v92 + 2;
  if (v93 <= v94)
  {
    sub_188B6479C((v91 > 1), v96, 1);
  }

  *(v89 + 16) = v96;
  *(v89 + 8 * v94 + 32) = v95;
  v97 = qword_1EFAB9458;
  v99 = *(v89 + 16);
  v98 = *(v89 + 24);
  v100 = v98 >> 1;
  v101 = v99 + 1;
  if (v98 >> 1 <= v99)
  {
    sub_188B6479C((v98 > 1), v99 + 1, 1);
    v98 = *(v89 + 24);
    v100 = v98 >> 1;
  }

  *(v89 + 16) = v101;
  *(v89 + 8 * v99 + 32) = v97;
  v102 = qword_1EFAB9470;
  v103 = v99 + 2;
  if (v100 <= v101)
  {
    sub_188B6479C((v98 > 1), v103, 1);
  }

  *(v89 + 16) = v103;
  *(v89 + 8 * v101 + 32) = v102;
  v104 = qword_1EFAB9488;
  v106 = *(v89 + 16);
  v105 = *(v89 + 24);
  v107 = v105 >> 1;
  v108 = v106 + 1;
  if (v105 >> 1 <= v106)
  {
    sub_188B6479C((v105 > 1), v106 + 1, 1);
    v105 = *(v89 + 24);
    v107 = v105 >> 1;
  }

  *(v89 + 16) = v108;
  *(v89 + 8 * v106 + 32) = v104;
  v109 = qword_1EFAB94A0;
  v110 = v106 + 2;
  if (v107 <= v108)
  {
    sub_188B6479C((v105 > 1), v110, 1);
  }

  *(v89 + 16) = v110;
  *(v89 + 8 * v108 + 32) = v109;
  v111 = qword_1EFAB94B8;
  v113 = *(v89 + 16);
  v112 = *(v89 + 24);
  if (v113 >= v112 >> 1)
  {
    sub_188B6479C((v112 > 1), v113 + 1, 1);
  }

  *(v89 + 16) = v113 + 1;
  *(v89 + 32 + 8 * v113) = v111;
  [v65 setRadialGradientCenter:7 startRadius:v66 + 32 endRadius:v58 stopCount:v25 colors:v59 + -80.0 locations:v59 flags:?];

  *&v114 = 0.8 - (v64 * 0.8);
  [v128 v40[105]];

  return v128;
}

void sub_1892323D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA941080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A6510F0;
  v1 = [objc_allocWithZone(UIColor) initWithHue:0.665 saturation:1.0 brightness:0.81 alpha:0.0];
  v2 = [v1 CGColor];
  RBColorFromCGColor2();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *(v0 + 32) = v4;
  *(v0 + 36) = v6;
  *(v0 + 40) = v8;
  *(v0 + 44) = v10;
  *(v0 + 48) = 0;
  v11 = [objc_allocWithZone(UIColor) initWithHue:0.67 saturation:0.333 brightness:0.94 alpha:0.2];
  v12 = [v11 CGColor];
  RBColorFromCGColor2();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  *(v0 + 56) = v14;
  *(v0 + 60) = v16;
  *(v0 + 64) = v18;
  *(v0 + 68) = v20;
  *(v0 + 72) = 0x3FC3333333333333;
  v21 = [objc_allocWithZone(UIColor) initWithHue:0.727 saturation:0.554 brightness:0.92 alpha:0.38];
  v22 = [v21 CGColor];
  RBColorFromCGColor2();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  *(v0 + 80) = v24;
  *(v0 + 84) = v26;
  *(v0 + 88) = v28;
  *(v0 + 92) = v30;
  *(v0 + 96) = 0x3FD7AE147AE147AELL;
  v31 = [objc_allocWithZone(UIColor) initWithHue:0.73 saturation:0.402 brightness:0.88 alpha:0.57];
  v32 = [v31 CGColor];
  RBColorFromCGColor2();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  *(v0 + 104) = v34;
  *(v0 + 108) = v36;
  *(v0 + 112) = v38;
  *(v0 + 116) = v40;
  *(v0 + 120) = 0x3FE2E147AE147AE1;
  v41 = [objc_allocWithZone(UIColor) initWithHue:0.75 saturation:0.493 brightness:0.91 alpha:0.79];
  v42 = [v41 CGColor];
  RBColorFromCGColor2();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  *(v0 + 128) = v44;
  *(v0 + 132) = v46;
  *(v0 + 136) = v48;
  *(v0 + 140) = v50;
  *(v0 + 144) = 0x3FE8F5C28F5C28F6;
  v51 = [objc_allocWithZone(UIColor) initWithHue:0.75 saturation:0.49 brightness:0.93 alpha:1.0];
  v52 = [v51 CGColor];
  RBColorFromCGColor2();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;

  *(v0 + 152) = v54;
  *(v0 + 156) = v56;
  *(v0 + 160) = v58;
  *(v0 + 164) = v60;
  *(v0 + 168) = 0x3FECCCCCCCCCCCCDLL;
  v61 = [objc_allocWithZone(UIColor) initWithHue:0.0 saturation:1.0 brightness:1.0 alpha:0.0];
  v62 = [v61 CGColor];
  RBColorFromCGColor2();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;

  *(v0 + 176) = v64;
  *(v0 + 180) = v66;
  *(v0 + 184) = v68;
  *(v0 + 188) = v70;
  *(v0 + 192) = 0x3FF0000000000000;
  off_1EA92F198 = v0;
}

double UIRBDirectionalLightEffectView.Pondering.Effect.duration(forHeight:)(double a1)
{
  v1 = a1 / 107.142857;
  result = 2.8;
  if (v1 >= 2.8)
  {
    if ((~*&v1 & 0x7FF0000000000000) != 0)
    {
      return v1;
    }

    else
    {
      result = 2.8;
      if ((*&v1 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        return v1;
      }
    }
  }

  return result;
}

id UIRBDirectionalLightEffectView.Pondering.Effect.contents(layer:progress:)(void *a1, float a2)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  [a1 bounds];
  x = v93.origin.x;
  y = v93.origin.y;
  width = v93.size.width;
  height = v93.size.height;
  v11 = CGRectGetHeight(v93);
  v12 = 320.0;
  if (v11 >= 320.0)
  {
    v12 = v11;
    if ((~*&v11 & 0x7FF0000000000000) == 0)
    {
      if ((*&v11 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v12 = 320.0;
      }

      else
      {
        v12 = v11;
      }
    }
  }

  v13 = atan((v4 + v4) / v5);
  v14 = sqrt(v5 * 0.5 * (v5 * 0.5) + v4 * v4);
  v15 = cos(1.57079633 - v13);
  v16 = v12 * a2 + v12 * a2;
  v17 = v14 / (v15 + v15);
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = width;
  v94.size.height = height;
  MidX = CGRectGetMidX(v94);
  if (v6 == 2)
  {
    v19 = MidX;
  }

  else
  {
    v19 = v12 + v17 + 50.0;
  }

  if (v6 == 2)
  {
    v20 = v12 + v17 + 50.0;
  }

  else
  {
    v20 = MidX;
  }

  v21 = 0x1E69C7000uLL;
  v22 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  if (qword_1EA92F190 != -1)
  {
    swift_once();
  }

  v23 = off_1EA92F198;
  v24 = *(off_1EA92F198 + 2);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v26 = v22;
    v90 = MEMORY[0x1E69E7CC0];
    sub_188E6D4E0(0, v24, 0);
    v27 = v90;
    v28 = (v23 + 32);
    v29 = *(v90 + 16);
    v30 = v24;
    do
    {
      v31 = *v28;
      v32 = *(v90 + 24);
      if (v29 >= v32 >> 1)
      {
        v88 = *v28;
        sub_188E6D4E0((v32 > 1), v29 + 1, 1);
        v31 = v88;
      }

      *(v90 + 16) = v29 + 1;
      *(v90 + 16 * v29 + 32) = v31;
      v28 = (v28 + 24);
      ++v29;
      --v30;
    }

    while (v30);
    v25 = MEMORY[0x1E69E7CC0];
    v91 = MEMORY[0x1E69E7CC0];
    sub_188B6479C(0, v24, 0);
    v33 = v91;
    v34 = *(v91 + 16);
    v35 = (v23 + 48);
    v36 = v24;
    do
    {
      v37 = *v35;
      v38 = *(v91 + 24);
      if (v34 >= v38 >> 1)
      {
        sub_188B6479C((v38 > 1), v34 + 1, 1);
      }

      *(v91 + 16) = v34 + 1;
      *(v91 + 8 * v34 + 32) = v37;
      v35 += 3;
      ++v34;
      --v36;
    }

    while (v36);
    v22 = v26;
    v21 = 0x1E69C7000;
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
    v27 = MEMORY[0x1E69E7CC0];
  }

  [v22 setRadialGradientCenter:v24 startRadius:v27 + 32 endRadius:v33 + 32 stopCount:0 colors:v19 locations:v20 flags:{v17, v16 + v17}];

  v39 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  [v39 setInfinite];
  v40 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  [v40 beginLayer];
  [v40 addBlurFilterWithRadius_];
  LODWORD(v41) = 1045220557;
  [v40 addBrightnessFilterWithAmount_];
  LODWORD(v42) = 1067030938;
  [v40 addContrastFilterWithAmount_];
  v44 = 1.0;
  if (a2 <= 1.0)
  {
    v44 = a2;
    if (a2 <= 0.5)
    {
      v44 = 0.5;
    }
  }

  *&v43 = 1.0 - ((v44 + -0.5) + (v44 + -0.5));
  v89 = v22;
  [v40 drawShape:v39 fill:v22 alpha:0 blendMode:v43];
  LODWORD(v45) = 1.0;
  [v40 drawLayerWithAlpha:0 blendMode:v45];
  [v40 beginLayer];
  v46 = [objc_allocWithZone(*(v21 + 216)) init];
  sub_188E6D4E0(0, 6, 0);
  v47 = xmmword_1EFAB94E0;
  v49 = *(v25 + 16);
  v48 = *(v25 + 24);
  v50 = v49 + 1;
  if (v49 >= v48 >> 1)
  {
    v87 = xmmword_1EFAB94E0;
    sub_188E6D4E0((v48 > 1), v49 + 1, 1);
    v47 = v87;
  }

  *(v25 + 16) = v50;
  *(v25 + 16 * v49 + 32) = v47;
  v51 = xmmword_1EFAB94F8;
  v52 = *(v25 + 24);
  v53 = v49 + 2;
  if (v50 >= v52 >> 1)
  {
    v87 = xmmword_1EFAB94F8;
    sub_188E6D4E0((v52 > 1), v49 + 2, 1);
    v51 = v87;
  }

  *(v25 + 16) = v53;
  *(v25 + 16 * v50 + 32) = v51;
  v54 = xmmword_1EFAB9510;
  v55 = *(v25 + 24);
  v56 = v49 + 3;
  if (v53 >= v55 >> 1)
  {
    v87 = xmmword_1EFAB9510;
    sub_188E6D4E0((v55 > 1), v49 + 3, 1);
    v54 = v87;
  }

  *(v25 + 16) = v56;
  *(v25 + 16 * v53 + 32) = v54;
  v57 = xmmword_1EFAB9528;
  v58 = *(v25 + 24);
  v59 = v49 + 4;
  if (v56 >= v58 >> 1)
  {
    v87 = xmmword_1EFAB9528;
    sub_188E6D4E0((v58 > 1), v49 + 4, 1);
    v57 = v87;
  }

  *(v25 + 16) = v59;
  *(v25 + 16 * v56 + 32) = v57;
  v60 = xmmword_1EFAB9540;
  v61 = *(v25 + 24);
  v62 = v49 + 5;
  if (v59 >= v61 >> 1)
  {
    v87 = xmmword_1EFAB9540;
    sub_188E6D4E0((v61 > 1), v49 + 5, 1);
    v60 = v87;
  }

  *(v25 + 16) = v62;
  *(v25 + 16 * v59 + 32) = v60;
  v63 = xmmword_1EFAB9558;
  v64 = *(v25 + 24);
  if (v62 >= v64 >> 1)
  {
    v87 = xmmword_1EFAB9558;
    sub_188E6D4E0((v64 > 1), v49 + 6, 1);
    v63 = v87;
  }

  *(v25 + 16) = v49 + 6;
  *(v25 + 32 + 16 * v62) = v63;
  v92 = MEMORY[0x1E69E7CC0];
  sub_188B6479C(0, 6, 0);
  v65 = v92;
  v66 = qword_1EFAB94F0;
  v68 = *(v92 + 16);
  v67 = *(v92 + 24);
  v69 = v67 >> 1;
  v70 = v68 + 1;
  if (v67 >> 1 <= v68)
  {
    sub_188B6479C((v67 > 1), v68 + 1, 1);
    v65 = v92;
    v67 = *(v92 + 24);
    v69 = v67 >> 1;
  }

  *(v65 + 16) = v70;
  *(v65 + 8 * v68 + 32) = v66;
  v71 = qword_1EFAB9508;
  if (v69 <= v70)
  {
    sub_188B6479C((v67 > 1), v68 + 2, 1);
  }

  *(v65 + 16) = v68 + 2;
  *(v65 + 8 * v70 + 32) = v71;
  v72 = qword_1EFAB9520;
  v74 = *(v65 + 16);
  v73 = *(v65 + 24);
  v75 = v73 >> 1;
  v76 = v74 + 1;
  if (v73 >> 1 <= v74)
  {
    sub_188B6479C((v73 > 1), v74 + 1, 1);
    v73 = *(v65 + 24);
    v75 = v73 >> 1;
  }

  *(v65 + 16) = v76;
  *(v65 + 8 * v74 + 32) = v72;
  v77 = qword_1EFAB9538;
  if (v75 <= v76)
  {
    sub_188B6479C((v73 > 1), v74 + 2, 1);
  }

  *(v65 + 16) = v74 + 2;
  *(v65 + 8 * v76 + 32) = v77;
  v78 = qword_1EFAB9550;
  v80 = *(v65 + 16);
  v79 = *(v65 + 24);
  v81 = v79 >> 1;
  v82 = v80 + 1;
  if (v79 >> 1 <= v80)
  {
    sub_188B6479C((v79 > 1), v80 + 1, 1);
    v79 = *(v65 + 24);
    v81 = v79 >> 1;
  }

  *(v65 + 16) = v82;
  *(v65 + 8 * v80 + 32) = v78;
  v83 = qword_1EFAB9568;
  if (v81 <= v82)
  {
    sub_188B6479C((v79 > 1), v80 + 2, 1);
  }

  *(v65 + 16) = v80 + 2;
  *(v65 + 32 + 8 * v82) = v83;
  [v46 setRadialGradientCenter:6 startRadius:v25 + 32 endRadius:v19 stopCount:v20 colors:v16 + v17 + -130.0 locations:v16 + v17 flags:v87];

  [v40 addBlurFilterWithRadius_];
  LODWORD(v84) = 1060320051;
  [v40 drawShape:v39 fill:v46 alpha:27 blendMode:v84];
  LODWORD(v85) = 1.0;
  [v40 drawLayerWithAlpha:1003 blendMode:v85];

  return v40;
}

double sub_189233124(double a1)
{
  v1 = a1 / 107.142857;
  result = 2.8;
  if (v1 >= 2.8)
  {
    if ((~*&v1 & 0x7FF0000000000000) != 0)
    {
      return v1;
    }

    else
    {
      result = 2.8;
      if ((*&v1 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        return v1;
      }
    }
  }

  return result;
}

uint64_t sub_1892331A8(void *a1, void *a2)
{
  v3 = v2;
  [a1 bounds];
  Height = CGRectGetHeight(v26);
  result = *(v2 + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects);
  v8 = *(result + 16);
  if (v8)
  {
    v9 = Height;
    v10 = OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_timeOffset;
    v11 = result + 32;

    do
    {
      sub_188A53994(v11, v23);
      v12 = v24;
      v13 = v25;
      __swift_project_boxed_opaque_existential_0(v23, v24);
      v14 = (*(v13 + 8))(v12, v13);
      v15 = v24;
      v16 = v25;
      __swift_project_boxed_opaque_existential_0(v23, v24);
      v17 = *(v3 + v10) / (*(v16 + 16))(v15, v16, v9);
      *&v17 = v17;
      [v14 _solveForInput_];
      v19 = v18;
      v20 = v24;
      v21 = v25;
      __swift_project_boxed_opaque_existential_0(v23, v24);
      v22 = (*(v21 + 24))(a1, v20, v21, v19);
      [a2 drawDisplayList_];

      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      v11 += 40;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t UIRBDirectionalLightEffectView.isPaused.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink);
  if (v1)
  {
    return [v1 isPaused];
  }

  else
  {
    return 1;
  }
}

id (*UIRBDirectionalLightEffectView.isPaused.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = [v4 isPaused];
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 16) = v5;
  return sub_1892335BC;
}

uint64_t sub_1892335D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink);
  if (v1)
  {
    return [v1 isPaused];
  }

  else
  {
    return 1;
  }
}

void (*sub_189233634(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = UIRBDirectionalLightEffectView.isPaused.modify(v2);
  return sub_188E263E8;
}

void sub_1892336A4()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_isAnimationRunning) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_unionEffectDuration) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_animationStartTime) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_autorepeatsAnimation) = 0;
  v2 = OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for UIRBDirectionalLightEffectView.DrawingView()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink) = 0;
  v3 = (v0 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_completionBlock);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimationCurve;
  *(v0 + v4) = [objc_opt_self() functionWithName_];
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_1892339F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_189233A40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_189233AB8()
{
  result = qword_1EA92EEE8;
  if (!qword_1EA92EEE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA92EEE8);
  }

  return result;
}

uint64_t sub_189233B04(float a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t UISymbolContentTransition.contentTransition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 contentTransition];
  sub_18A4A7BB8();

  if (v6)
  {
    return sub_188A5EBAC(&v5, a1);
  }

  result = sub_189233C08(&v5);
  __break(1u);
  return result;
}

uint64_t sub_189233C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UISymbolContentTransition.options.getter()
{
  v1 = [v0 options];

  return sub_18A4A6D98();
}

uint64_t UISymbolContentTransition.init(_:options:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  result = sub_18A4A6D68();
  if (result)
  {
    v5 = result;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = sub_18A4A6DA8();
    v8 = [ObjCClassFromMetadata transitionWithContentTransition:v5 options:v7];

    v9 = sub_18A4A6DC8();
    (*(*(v9 - 8) + 8))(a2, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_189233DB8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentView;
  swift_beginAccess();
  [*(v3 + v4) removeFromSuperview];
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_189233E2C();
}

void sub_189233E2C()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentView;
  swift_beginAccess();
  [*(v0 + v1) setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentViewContainer);
  [v2 addSubview_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18A64B810;
  v5 = [*(v0 + v1) leadingAnchor];
  v6 = [v2 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [*(v0 + v1) trailingAnchor];
  v9 = [v2 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [*(v0 + v1) topAnchor];
  v12 = [v2 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [*(v0 + v1) bottomAnchor];
  v15 = [v2 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_188A34624(0, &qword_1ED48CFF0);
  v17 = sub_18A4A7518();

  [v3 activateConstraints_];
}

id sub_1892340BC()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_189234110(void *a1)
{
  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentView;
  swift_beginAccess();
  [*(v1 + v3) removeFromSuperview];
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_189233E2C();
}

void (*sub_189234188(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_189234224;
}

void sub_189234224(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v6);
  if (a2)
  {
    v8 = v3;
    [v7 removeFromSuperview];
    v9 = *(v5 + v6);
    *(v5 + v6) = v8;
    v10 = v8;

    sub_189233E2C();
    v11 = *v4;
  }

  else
  {
    [*(v5 + v6) removeFromSuperview];
    v12 = *(v5 + v6);
    *(v5 + v6) = v3;
    v11 = v3;

    sub_189233E2C();
  }

  free(v2);
}

char *sub_1892342FC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_entryView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for IntelligenceUI.PromptEntryView(0)) initWithFrame_];
  v10 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_inputAreaStackView;
  v12 = objc_allocWithZone(UIStackView);
  sub_188A34624(0, &qword_1ED48F680);
  v13 = sub_18A4A7518();
  v14 = [v12 initWithArrangedSubviews_];

  *&v4[v11] = v14;
  v15 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentViewContainer;
  *&v4[v15] = [objc_allocWithZone(UIView) initWithFrame_];
  v34.receiver = v4;
  v34.super_class = type metadata accessor for IntelligenceUI.PromptComposeView();
  v16 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBackgroundColor];
  [v18 setBackgroundColor_];

  v20 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_inputAreaStackView;
  [*&v18[OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_inputAreaStackView] setAxis_];
  [*&v18[v20] setAlignment_];
  [*&v18[v20] setDistribution_];
  [*&v18[v20] setSpacing_];
  [*&v18[v20] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v18[v20] setClipsToBounds_];
  [v18 addSubview_];
  v21 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_entryView;
  LODWORD(v22) = 1144750080;
  [*&v18[OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_entryView] setContentHuggingPriority:1 forAxis:v22];
  v23 = *&v18[v21];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 mainBundle];
  v27 = sub_18A4A25F8();
  v29 = v28;

  v30 = &v25[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholder];
  swift_beginAccess();
  *v30 = v27;
  v30[1] = v29;

  sub_18914E9A8();

  [*&v18[v21] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v18[v20] addArrangedSubview_];
  v31 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentView;
  swift_beginAccess();
  [*&v18[v31] setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentViewContainer;
  [*&v18[OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentViewContainer] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v18[v32] addSubview_];
  [v18 insertSubview:*&v18[v32] atIndex:0];
  sub_189234718();

  return v18;
}

void sub_189234718()
{
  v1 = [v0 layoutMarginsGuide];
  v28 = [v0 keyboardLayoutGuide];
  if (v28)
  {
    v26 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18A6770F0;
    v3 = *&v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_inputAreaStackView];
    v4 = [v3 leadingAnchor];
    v5 = [v1 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    *(v2 + 32) = v6;
    v7 = [v3 trailingAnchor];
    v8 = [v1 trailingAnchor];
    v9 = [v7 constraintEqualToAnchor_];

    *(v2 + 40) = v9;
    v10 = [v3 bottomAnchor];
    v11 = [v28 topAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v2 + 48) = v12;
    v13 = *&v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentViewContainer];
    v14 = [v13 leadingAnchor];
    v15 = [v0 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v2 + 56) = v16;
    v17 = [v13 trailingAnchor];
    v18 = [v0 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v2 + 64) = v19;
    v20 = [v13 bottomAnchor];
    v21 = [v3 topAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v2 + 72) = v22;
    v23 = [v13 topAnchor];
    v24 = [v0 topAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    *(v2 + 80) = v25;
    sub_188A34624(0, &qword_1ED48CFF0);
    v27 = sub_18A4A7518();

    [v26 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

id IntelligenceUI.PromptComposeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceUI.PromptComposeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_189234C5C()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_entryView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for IntelligenceUI.PromptEntryView(0)) initWithFrame_];
  v2 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_inputAreaStackView;
  v4 = objc_allocWithZone(UIStackView);
  sub_188A34624(0, &qword_1ED48F680);
  v5 = sub_18A4A7518();
  v6 = [v4 initWithArrangedSubviews_];

  *(v0 + v3) = v6;
  v7 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentViewContainer;
  *(v0 + v7) = [objc_allocWithZone(UIView) initWithFrame_];
  sub_18A4A8398();
  __break(1u);
}

id UIDocumentViewController._intelligenceCollectContent(in:collector:)(void *a1, double a2, double a3, double a4, double a5)
{
  v204 = a1;
  v179 = sub_18A4A3ED8();
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v177 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v176 = &v161 - v12;
  v181 = sub_18A4A4088();
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v183 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_18A4A3CB8();
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v186 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_18A4A34D8();
  v197 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v190 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18A4A28E8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v189 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_18A4A3708();
  v18 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v184 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18A4A3BA8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v182 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v195 = &v161 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v194 = &v161 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v196 = &v161 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A30);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v161 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EEB0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v161 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v161 - v39;
  v202 = sub_18A4A42B8();
  v199 = *(v202 - 8);
  v41 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v198 = &v161 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v193 = &v161 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v191 = &v161 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v201 = &v161 - v47;
  v203 = v5;
  v48 = sub_189236550();
  if (!v48)
  {
    goto LABEL_6;
  }

  v49 = v48;
  v50 = [v48 fileType];
  if (!v50)
  {

    goto LABEL_6;
  }

  v192 = v49;
  v174 = v21;
  v175 = v20;
  v51 = v50;
  sub_18A4A7288();

  sub_18A4A42C8();
  v52 = v199;
  v53 = v202;
  if ((*(v199 + 48))(v40, 1, v202) == 1)
  {

    sub_188A3F5FC(v40, &qword_1EA93EEB0);
LABEL_6:
    v211.receiver = v203;
    v211.super_class = UIDocumentViewController;
    return objc_msgSendSuper2(&v211, sel__intelligenceCollectContentIn_collector_, v204, a2, a3, a4, a5);
  }

  v163 = v18;
  v55 = *(v52 + 32);
  v56 = v201;
  v167 = v52 + 32;
  v166 = v55;
  v55(v201, v40, v53);
  v57 = v52;
  v58 = [v192 localizedName];
  v172 = sub_18A4A7288();
  v173 = v59;

  v171 = swift_allocBox();
  v61 = v60;
  v62 = *(v57 + 16);
  v165 = v57 + 16;
  v164 = v62;
  v62(v37, v56, v53);
  (*(v57 + 56))(v37, 0, 1, v53);
  v63 = sub_18A4A2968();
  v64 = *(*(v63 - 8) + 56);
  v64(v34, 1, 1, v63);
  v64(v31, 1, 1, v63);
  sub_18A4A34C8();
  v65 = v191;
  sub_18A4A4298();
  v66 = sub_18A4A42A8();
  v67 = *(v57 + 8);
  v169 = v57 + 8;
  v67(v65, v202);
  v68 = [v192 fileURL];
  sub_18A4A28D8();

  v69 = v197 + 16;
  v70 = v190;
  v161 = *(v197 + 16);
  v161(v190, v61, v200);

  v197 = v69;
  v71 = (v69 + 24);
  v72 = v174;
  v170 = v174 + 104;
  v168 = v67;
  v162 = v61;
  if (v66)
  {
    v73 = v184;
    sub_18A4A36B8();
    sub_18A4A36C8();
    (*v71)(v61, v70, v200);
    v74 = v196;
    (*(v163 + 32))(v196, v73, v185);
    v75 = MEMORY[0x1E69DBB98];
  }

  else
  {
    v76 = v186;
    sub_18A4A3C68();
    sub_18A4A3C58();
    (*v71)(v61, v70, v200);
    v74 = v196;
    (*(v187 + 32))(v196, v76, v188);
    v75 = MEMORY[0x1E69DBC00];
  }

  v77 = *v75;
  v186 = *(v72 + 104);
  (v186)(v74, v77, v175);
  v187 = sub_18A4A3408();
  v188 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v193;
  v79 = v202;
  v80 = v164;
  v164(v193, v201, v202);
  v81 = *(v72 + 16);
  v82 = v194;
  v83 = v74;
  v84 = v175;
  v81(v194, v83, v175);
  v80(v198, v78, v79);
  v81(v195, v82, v84);
  v85 = (*(v199 + 80) + 32) & ~*(v199 + 80);
  v86 = (v41 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
  v89 = v174;
  v90 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = (*(v174 + 80) + v90 + 8) & ~*(v174 + 80);
  v92 = swift_allocObject();
  v93 = v187;
  *(v92 + 16) = v192;
  *(v92 + 24) = v93;
  v94 = v92 + v85;
  v95 = v79;
  v166(v94, v193, v79);
  v96 = v204;
  *(v92 + v86) = v204;
  v97 = (v92 + v87);
  v98 = v173;
  *v97 = v172;
  v97[1] = v98;
  *(v92 + v88) = v171;
  *(v92 + v90) = v188;
  v99 = v175;
  v100 = v89;
  (*(v89 + 32))(v92 + v91, v194, v175);

  v204 = v96;

  v101 = v93;

  v102 = v192;
  if (![v102 hasUnsavedChanges])
  {
    v108 = v92;
    v109 = v101;
    if (([v102 documentState] & 4) != 0 || objc_msgSend(v102, sel_hasUnsavedChanges))
    {
      sub_18A4A37A8();

      v110 = v196;
      v111 = v201;
      v112 = v195;
      v113 = v198;
      v114 = v168;
LABEL_15:
      v115 = *(v174 + 8);
      v115(v112, v99);
      v116 = v202;
      v114(v113, v202);
      v115(v110, v99);
      v114(v111, v116);
    }

    v203 = v102;
    v117 = v191;
    sub_18A4A4298();
    v118 = sub_18A4A42A8();
    v119 = v202;
    v120 = v168;
    v168(v117, v202);
    if (v118)
    {
      sub_18A4A3448();
      v204 = v108;
      v121 = v119;
      __swift_project_boxed_opaque_existential_0(&aBlock, v208);
      sub_18A4A3E88();
      v122 = v203;
      v123 = [v203 fileURL];
      sub_18A4A28D8();

      v124 = v162;
      swift_beginAccess();
      v161(v190, v124, v200);

      v125 = v182;
      sub_18A4A36D8();
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      v126 = v175;
      (v186)(v125, *MEMORY[0x1E69DBB98], v175);
      sub_18A4A37B8();

      v127 = *(v174 + 8);
      v127(v125, v126);
      v127(v195, v126);
      v120(v198, v121);
      v127(v196, v126);
      v120(v201, v121);
    }

    else
    {
      sub_18A4A3448();
      __swift_project_boxed_opaque_existential_0(&aBlock, v208);
      v128 = v183;
      sub_18A4A3E88();
      v129 = v198;
      v130 = sub_18A4A4068();
      v131 = *(v180 + 8);
      v132 = v181;
      v131(v128, v181);
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      if ((v130 & 1) == 0)
      {
        sub_18A4A3448();
        __swift_project_boxed_opaque_existential_0(&aBlock, v208);
        sub_18A4A3E88();
        v141 = v191;
        sub_18A4A4288();
        v142 = sub_18A4A4068();
        v114 = v168;
        v168(v141, v202);
        v131(v128, v132);
        __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
        if ((v142 & 1) != 0 && (sub_18A4A3448(), __swift_project_boxed_opaque_existential_0(&aBlock, v208), sub_18A4A3E88(), v143 = v176, sub_18A4A3F98(), v131(v128, v132), v144 = v178, v145 = v177, v146 = v179, (*(v178 + 104))(v177, *MEMORY[0x1E69DBCD8], v179), sub_188DE9D14(), v147 = sub_18A4A7248(), v148 = *(v144 + 8), v148(v145, v146), v148(v143, v146), __swift_destroy_boxed_opaque_existential_0Tm(&aBlock), (v147 & 1) == 0))
        {
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v151 = Strong;
            v152 = [Strong viewIfLoaded];

            v153 = [v152 window];
            v154 = [v153 windowScene];
          }

          else
          {
            v154 = 0;
          }

          v113 = v198;
          v155 = v172;
          v156 = swift_allocObject();
          v157 = v173;
          v156[2] = v155;
          v156[3] = v157;
          v158 = v171;
          v156[4] = v109;
          v156[5] = v158;
          v209 = sub_189237840;
          v210 = v156;
          aBlock = MEMORY[0x1E69E9820];
          v206 = 1107296256;
          v207 = sub_189237654;
          v208 = &block_descriptor_161;
          v159 = _Block_copy(&aBlock);

          v160 = v203;
          [(UIDocument *)v203 _generatePDFInWindowScene:v154 completionHandler:v159];
          _Block_release(v159);

          v112 = v195;
          v114 = v168;
        }

        else
        {
          v149 = v195;
          sub_18A4A37B8();

          v112 = v149;
          v113 = v198;
        }

        v99 = v175;
        v111 = v201;
        v110 = v196;
        goto LABEL_15;
      }

      sub_18A4A3448();
      __swift_project_boxed_opaque_existential_0(&aBlock, v208);
      sub_18A4A3E88();
      v133 = v203;
      v134 = [v203 fileURL];
      sub_18A4A28D8();

      v135 = v162;
      swift_beginAccess();
      v161(v190, v135, v200);

      v136 = v182;
      sub_18A4A3C88();
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      v137 = v175;
      (v186)(v136, *MEMORY[0x1E69DBC00], v175);
      sub_18A4A37B8();

      v138 = *(v174 + 8);
      v138(v136, v137);
      v138(v195, v137);
      v139 = v202;
      v140 = v168;
      v168(v129, v202);
      v138(v196, v137);
      v140(v201, v139);
    }
  }

  v204 = *(v100 + 8);
  (v204)(v195, v99);
  v103 = v95;
  v104 = v102;
  v105 = v99;
  v106 = v168;
  v168(v198, v95);
  v209 = sub_189236EE4;
  v210 = v92;
  aBlock = MEMORY[0x1E69E9820];
  v206 = 1107296256;
  v207 = sub_188ABD010;
  v208 = &block_descriptor_9_6;
  v107 = _Block_copy(&aBlock);

  [v104 autosaveWithCompletionHandler_];
  _Block_release(v107);

  (v204)(v196, v105);
  v106(v201, v103);
}

void *sub_189236550()
{
  v1 = [v0 document];
  v2 = v1;
  if (v1 && (([v1 documentState] & 1) != 0 || (objc_msgSend(v2, sel_documentState) & 2) != 0))
  {

    return 0;
  }

  return v2;
}

void sub_1892365BC(char a1, void *a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a6;
  v71 = a7;
  v72 = a4;
  v73 = a5;
  v74 = a3;
  v63 = sub_18A4A3ED8();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v60 = v56 - v13;
  v14 = sub_18A4A34D8();
  v65 = *(v14 - 8);
  v66 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v68 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18A4A28E8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_18A4A4088();
  v64 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_18A4A3BA8();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18A4A42B8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a8;
  v26 = swift_projectBox();
  if (a1 & 1) == 0 || (v27 = v26, ([a2 documentState] & 4) != 0) || (objc_msgSend(a2, sel_hasUnsavedChanges))
  {
    sub_18A4A37A8();
    return;
  }

  v57 = v27;
  v58 = a2;
  sub_18A4A4298();
  v28 = sub_18A4A42A8();
  v29 = *(v23 + 8);
  v29(v25, v22);
  if (v28)
  {
    sub_18A4A3448();
    __swift_project_boxed_opaque_existential_0(aBlock, v76);
    sub_18A4A3E88();
    v30 = [v58 fileURL];
    sub_18A4A28D8();

    v31 = v57;
    swift_beginAccess();
    (*(v65 + 16))(v68, v31, v66);

    sub_18A4A36D8();
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    v32 = MEMORY[0x1E69DBB98];
LABEL_10:
    v36 = v67;
    v37 = v69;
    (*(v67 + 104))(v21, *v32, v69);
    sub_18A4A37B8();
    (*(v36 + 8))(v21, v37);
    return;
  }

  v56[0] = v29;
  sub_18A4A3448();
  v56[1] = v77;
  __swift_project_boxed_opaque_existential_0(aBlock, v76);
  sub_18A4A3E88();
  v33 = sub_18A4A4068();
  v72 = *(v64 + 8);
  v72(v19, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  if (v33)
  {
    sub_18A4A3448();
    __swift_project_boxed_opaque_existential_0(aBlock, v76);
    sub_18A4A3E88();
    v34 = [v58 fileURL];
    sub_18A4A28D8();

    v35 = v57;
    swift_beginAccess();
    (*(v65 + 16))(v68, v35, v66);

    sub_18A4A3C88();
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    v32 = MEMORY[0x1E69DBC00];
    goto LABEL_10;
  }

  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(aBlock, v76);
  sub_18A4A3E88();
  sub_18A4A4288();
  v38 = sub_18A4A4068();
  (v56[0])(v25, v22);
  v39 = v72;
  v72(v19, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  if ((v38 & 1) != 0 && (sub_18A4A3448(), __swift_project_boxed_opaque_existential_0(aBlock, v76), sub_18A4A3E88(), v40 = v60, sub_18A4A3F98(), v39(v19, v17), v41 = v62, v42 = v61, v43 = v63, (*(v62 + 104))(v61, *MEMORY[0x1E69DBCD8], v63), sub_188DE9D14(), v44 = sub_18A4A7248(), v45 = *(v41 + 8), v45(v42, v43), v45(v40, v43), __swift_destroy_boxed_opaque_existential_0Tm(aBlock), (v44 & 1) == 0))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v47 = Strong;
      v48 = [Strong viewIfLoaded];

      v49 = [v48 window];
      v50 = [v49 windowScene];
    }

    else
    {
      v50 = 0;
    }

    v51 = v58;
    v52 = swift_allocObject();
    v53 = v71;
    v52[2] = v70;
    v52[3] = v53;
    v54 = v59;
    v52[4] = v74;
    v52[5] = v54;
    v77 = sub_189237904;
    v78 = v52;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_189237654;
    v76 = &block_descriptor_16_6;
    v55 = _Block_copy(aBlock);

    [(UIDocument *)v51 _generatePDFInWindowScene:v50 completionHandler:v55];
    _Block_release(v55);
  }

  else
  {
    sub_18A4A37B8();
  }
}

void sub_189236EE4(char a1)
{
  v3 = *(sub_18A4A42B8() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_18A4A3BA8();
  sub_1892365BC(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_189237004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a2;
  v56 = a6;
  v57 = a1;
  v58 = a5;
  v53 = a3;
  v54 = a4;
  v6 = sub_18A4A3BA8();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EEB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v44 - v14;
  v16 = sub_18A4A34D8();
  v46 = *(v16 - 8);
  v47 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v44 - v19;
  v20 = sub_18A4A34E8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v44 - v25;
  v27 = sub_18A4A28E8();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v44 - v32;
  v56 = swift_projectBox();
  sub_18923784C(v57, v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_188A3F5FC(v26, &qword_1EA93C760);
    return sub_18A4A37A8();
  }

  else
  {
    (*(v28 + 32))(v33, v26, v27);
    (*(v28 + 16))(v30, v33, v27);
    v34 = *MEMORY[0x1E69DB9D0];
    v35 = *(v21 + 104);
    v44 = v23;
    v35(v23, v34, v20);
    v36 = sub_18A4A42B8();
    (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
    v37 = sub_18A4A2968();
    v38 = *(*(v37 - 8) + 56);
    v38(v12, 1, 1, v37);
    v38(v51, 1, 1, v37);
    sub_18A4A34C8();
    sub_18A4A3518();
    swift_allocObject();

    sub_18A4A3508();
    v40 = v56;
    swift_beginAccess();
    (*(v46 + 16))(v45, v40, v47);

    v41 = v48;
    sub_18A4A3C98();
    v43 = v49;
    v42 = v50;
    (*(v49 + 104))(v41, *MEMORY[0x1E69DBC00], v50);
    sub_18A4A37B8();

    (*(v43 + 8))(v41, v42);
    return (*(v28 + 8))(v33, v27);
  }
}