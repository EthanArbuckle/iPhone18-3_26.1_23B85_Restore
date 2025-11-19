id SCUISensitiveContentOverlayView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

void sub_1BC7417DC(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_1BC759CA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v17 - v14;
  sub_1BC660024(a1, &v17 - v14, &qword_1EBCDC998, &qword_1BC7641A0);
  v16 = 0;
  if ((*(v5 + 48))(v15, 1, v4) != 1)
  {
    (*(v5 + 32))(v11, v15, v4);
    sub_1BC65F664(0, &qword_1EDDCDF98, 0x1E697B670);
    (*(v5 + 16))(v9, v11, v4);
    v16 = sub_1BC75BFF0();
    (*(v5 + 8))(v11, v4);
  }

  a2(v16);
}

void *sub_1BC7419EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF90, &qword_1BC76E060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF98, &qword_1BC76E068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void _sSo31SCUISensitiveContentOverlayViewC09SensitiveB10AnalysisUIE5coderABSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onAnalysisChanged);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onShowContent);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onHideContent);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onDeleteContent);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onShieldUp);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onMessageSomeone);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onLeaveConversation);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onReportEvidenceRequested);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onBlockParticipant);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onEndCall);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onUnsubscribe);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_hostingView) = 0;
  sub_1BC75C3D0();
  __break(1u);
}

uint64_t sub_1BC741C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC741CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BC741D40()
{
  sub_1BC741EB8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1BC759D50();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = _s6LayoutVMa(319);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1BC759A90();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1BC741EB8()
{
  if (!qword_1EDDCDCD8[0])
  {
    type metadata accessor for SCUISensitiveContentOverlayView.Kind(255);
    v0 = sub_1BC75C110();
    if (!v1)
    {
      atomic_store(v0, qword_1EDDCDCD8);
    }
  }
}

void sub_1BC741F20()
{
  sub_1BC742024();
  if (v0 <= 0x3F)
  {
    sub_1BC74208C();
    if (v1 <= 0x3F)
    {
      sub_1BC74213C(319, &qword_1EDDCDFB8);
      if (v2 <= 0x3F)
      {
        sub_1BC74213C(319, &qword_1EDDCDFC8);
        if (v3 <= 0x3F)
        {
          sub_1BC7421F0(319);
          if (v4 <= 0x3F)
          {
            sub_1BC742340(319);
            if (v5 <= 0x3F)
            {
              sub_1BC74248C();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BC742024()
{
  if (!qword_1EDDCDF90)
  {
    sub_1BC65F664(255, &qword_1EDDCDF98, 0x1E697B670);
    v0 = sub_1BC75C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCDF90);
    }
  }
}

void sub_1BC74208C()
{
  if (!qword_1EDDCDF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF88, &unk_1BC76E018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC940, qword_1BC7697D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDDCDF80);
    }
  }
}

void sub_1BC74213C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1BC65F664(255, &qword_1EDDCDFB0, 0x1E697B648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC940, qword_1BC7697D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1BC7421F0(uint64_t a1)
{
  if (!qword_1EDDCDFC0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1BC65F664(255, &qword_1EDDCDFB0, 0x1E697B648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF88, &unk_1BC76E018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC940, qword_1BC7697D0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDDCDFC0);
    }
  }
}

void sub_1BC742340(uint64_t a1)
{
  if (!qword_1EDDCDFD0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1BC65F664(255, &qword_1EDDCDFB0, 0x1E697B648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF88, &unk_1BC76E018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC940, qword_1BC7697D0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDDCDFD0);
    }
  }
}

void sub_1BC74248C()
{
  if (!qword_1EDDCDF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
    sub_1BC759D50();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDCDF88);
    }
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC742544(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BC7425EC;

  return sub_1BC73F4BC(a1, v5, v4);
}

uint64_t sub_1BC7425EC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1BC7426F4(void *a1, void *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFA8, &qword_1BC76E080) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFA8, &qword_1BC76E080);
    return sub_1BC75BD90();
  }

  else if (a1)
  {
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFA8, &qword_1BC76E080);
    return sub_1BC75BDA0();
  }

  else
  {
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC742820(uint64_t a1, uint64_t a2)
{
  v4 = _s6LayoutVMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC742884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEEF8, &qword_1BC76DD50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t Array.lastIndex.getter()
{
  result = sub_1BC75BD60();
  if (__OFSUB__(0, result))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  if (result)
  {
    if (__OFSUB__(result--, 1))
    {
      goto LABEL_6;
    }
  }

  return result;
}

Swift::Int __swiftcall Array.index(_:boundedOffsetBy:)(Swift::Int _, Swift::Int boundedOffsetBy)
{
  v3 = _;
  if (boundedOffsetBy < 1)
  {
    if (!__OFSUB__(0, _))
    {
      if (_ >= 0 && -_ > boundedOffsetBy)
      {
        return 0;
      }

      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  _ = sub_1BC75BD60();
  if (__OFSUB__(_, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (_ - v3 >= boundedOffsetBy)
  {
    _ = v3 + boundedOffsetBy;
    if (!__OFADD__(v3, boundedOffsetBy))
    {
      return _;
    }

    __break(1u);
LABEL_14:
    _ = v3 + boundedOffsetBy;
    if (!__OFADD__(v3, boundedOffsetBy))
    {
      return _;
    }

LABEL_18:
    __break(1u);
    return _;
  }

  return sub_1BC75BD60();
}

uint64_t Array.keeping(upTo:beforeAndAfter:)(Swift::Int a1, Swift::Int a2, uint64_t a3)
{
  sub_1BC75BD70();

  Array.keep(upTo:beforeAndAfter:)(a1, a2);
  return a3;
}

Swift::Void __swiftcall Array.keep(upTo:beforeAndAfter:)(Swift::Int upTo, Swift::Int beforeAndAfter)
{
  v4 = v2;
  v13 = *v3;
  swift_getWitnessTable();
  sub_1BC75BE80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB8, &qword_1BC76E098);
  if (sub_1BC75BEE0())
  {
    v7 = *(v4 + 16);
    v8 = Array.index(_:boundedOffsetBy:)(beforeAndAfter, 1);
    if (v8 < beforeAndAfter)
    {
      __break(1u);
    }

    else
    {
      v9 = Array.index(_:boundedOffsetBy:)(v8, upTo);
      if (!__OFSUB__(0, upTo))
      {
        v10 = v9;
        v11 = Array.index(_:boundedOffsetBy:)(beforeAndAfter, -upTo);
        if (sub_1BC75BD60() >= v10)
        {
          swift_getWitnessTable();
          sub_1BC75BED0();
          if ((v11 & 0x8000000000000000) == 0)
          {
            sub_1BC75BED0();
            return;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  v12 = *(v4 + 16);
  *v3 = sub_1BC75BD30();
}

uint64_t sub_1BC742C68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_1BC65F664(0, &qword_1EBCDEFD0, off_1E7FF1268);
  result = sub_1BC75C2B0();
  *a1 = result;
  return result;
}

uint64_t sub_1BC742CBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_1BC65F664(0, &qword_1EBCDC070, off_1E7FF1260);
  result = sub_1BC75C2B0();
  *a1 = result;
  return result;
}

uint64_t SCUIMoreHelpContextMenuSwiftUI.SCUIHelpMenuActions.init(messageSomeoneAction:blockContactAction:blockContactsAction:moreHelpAction:leaveChatAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t SCUIMoreHelpContextMenuSwiftUI.init(options:contentView:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() getCurrentInterventionType];
  (*(v10 + 16))(v13, a2, a4);
  v15 = SCUIMoreHelpContextMenuSwiftUI.init(options:interventionType:contentView:actions:)(a1, v14, v13, a3, a4, a5);
  return (*(v10 + 8))(a2, a4, v15);
}

__n128 SCUIMoreHelpContextMenuSwiftUI.init(options:interventionType:contentView:actions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = sub_1BC7599C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a4[3];
  v27 = a4[2];
  v28 = v17;
  v29 = a4[4];
  v18 = a4[1];
  v25 = *a4;
  v26 = v18;
  sub_1BC7599B0();
  v19 = sub_1BC759950();
  v20 = [objc_opt_self() modelWithOptions:a1 contextDictionary:0 interventionType:a2 locale:v19 menuType:1];

  (*(v13 + 8))(v16, v12);
  *a6 = v20;
  v21 = type metadata accessor for SCUIMoreHelpContextMenuSwiftUI();
  (*(*(a5 - 8) + 32))(&a6[v21[9]], a3, a5);
  a6[v21[10]] = (a1 & 0x200) != 0;
  v22 = &a6[v21[11]];
  v23 = v28;
  v22[2] = v27;
  v22[3] = v23;
  v22[4] = v29;
  result = v26;
  *v22 = v25;
  v22[1] = result;
  return result;
}

uint64_t SCUIMoreHelpContextMenuSwiftUI.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEFC0, qword_1BC76E0B0);
  v7 = *(a1 + 24);
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = sub_1BC633C54(&qword_1EBCDEFC8, &qword_1EBCDEFC0, qword_1BC76E0B0);
  v8 = sub_1BC75B140();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  v23 = v5;
  v24 = v7;
  v25 = v2;
  v20 = v5;
  v21 = v7;
  v22 = v2;
  sub_1BC75B130();
  swift_getWitnessTable();
  v16 = v9[2];
  v16(v15, v13, v8);
  v17 = v9[1];
  v17(v13, v8);
  v16(a2, v15, v8);
  return (v17)(v15, v8);
}

uint64_t sub_1BC743280@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SCUIMoreHelpContextMenuSwiftUI();
  v9 = *(v8 - 8);
  v56 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFD8, &qword_1BC76E2A0);
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v65 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v52 - v16;
  v17 = *a1;
  if (*(a1 + *(v8 + 40)) == 1 && (v18 = [*a1 title]) != 0)
  {
    v19 = v18;
    v20 = sub_1BC75BB60();
    v54 = a3;
    v55 = a2;
    v21 = v20;
    v23 = v22;

    v66 = v21;
    v67 = v23;
    sub_1BC651EB8();
    v24 = sub_1BC75B1B0();
    v26 = v25;
    LOBYTE(v19) = v27;
    v29 = v28;
    KeyPath = swift_getKeyPath();
    v53 = v11;
    v31 = a4;
    v32 = a1;
    v33 = KeyPath;
    v59 = v19 & 1;
    v60 = v24;
    v63 = v26;
    v34 = v26;
    a2 = v55;
    sub_1BC680FFC(v24, v34, v19 & 1);
    v35 = v29;
    a3 = v54;

    v58 = v33;
    a1 = v32;
    a4 = v31;
    v11 = v53;

    v57 = 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v63 = 0;
    v35 = 0;
    v58 = 0;
    v57 = 0;
  }

  v36 = [v17 actions];
  sub_1BC65F664(0, &qword_1EBCDC070, off_1E7FF1260);
  v37 = sub_1BC75BD00();

  v66 = v37;
  (*(v9 + 16))(v11, a1, v8);
  v38 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  *(v39 + 24) = a3;
  (*(v9 + 32))(v39 + v38, v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFE0, &unk_1BC76E2A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1C0, &qword_1BC761720);
  sub_1BC633C54(&qword_1EBCDEFE8, &qword_1EBCDEFE0, &unk_1BC76E2A8);
  sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720);
  sub_1BC7440A4();
  v40 = v64;
  sub_1BC75B780();
  v42 = v61;
  v41 = v62;
  v43 = *(v61 + 16);
  v43(v65, v40, v62);
  v44 = v59;
  v45 = v60;
  v46 = v63;
  *a4 = v60;
  *(a4 + 8) = v46;
  *(a4 + 16) = v44;
  *(a4 + 24) = v35;
  *(a4 + 32) = v58;
  *(a4 + 40) = 0;
  *(a4 + 48) = v57;
  v47 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFF8, &qword_1BC76E2B8) + 48));
  v48 = v65;
  v43(v47, v65, v41);
  v49 = v63;
  sub_1BC74410C(v45, v63, v44, v35);
  sub_1BC74415C(v45, v49, v44, v35);
  v50 = *(v42 + 8);
  v50(v64, v41);
  v50(v48, v41);
  return sub_1BC74415C(v45, v49, v44, v35);
}

uint64_t sub_1BC743788@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v29 = a4;
  v30 = a5;
  v7 = type metadata accessor for SCUIMoreHelpContextMenuSwiftUI();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBAE8, &qword_1BC75EE50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = *a1;
  v17 = [v16 title];
  v18 = sub_1BC75BB60();
  v20 = v19;

  v31 = v18;
  v32 = v20;
  if ([v16 destructive])
  {
    sub_1BC75A630();
  }

  else
  {
    sub_1BC75A640();
  }

  v21 = sub_1BC75A650();
  (*(*(v21 - 8) + 56))(v15, 0, 1, v21);
  (*(v8 + 16))(v11, v28, v7);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 2) = a3;
  *(v23 + 3) = v24;
  *(v23 + 4) = v16;
  (*(v8 + 32))(&v23[v22], v11, v7);
  sub_1BC651EB8();
  v25 = v16;
  return sub_1BC75B6A0();
}

uint64_t sub_1BC7439EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SCUIMoreHelpContextMenuSwiftUI();
  v11 = *(v6 + 16);
  v11(v9, a1 + *(v10 + 36), a2);
  v11(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_1BC743B64(uint64_t a1)
{
  result = sub_1BC65F664(319, &qword_1EBCDEFD0, off_1E7FF1268);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      result = type metadata accessor for SCUIMoreHelpContextMenuSwiftUI.SCUIHelpMenuActions();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BC743C24(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 88;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1BC743D68(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 88;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFA8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFA8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) != 0xFFFFFFA8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1BC743F30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BC743F6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BC743FB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BC744008@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SCUIMoreHelpContextMenuSwiftUI() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1BC743788(a1, v8, v5, v6, a2);
}

unint64_t sub_1BC7440A4()
{
  result = qword_1EBCDEFF0;
  if (!qword_1EBCDEFF0)
  {
    sub_1BC65F664(255, &qword_1EBCDC070, off_1E7FF1260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEFF0);
  }

  return result;
}

uint64_t sub_1BC74410C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BC680FFC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BC74415C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BC680E6C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BC7441AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for SCUIMoreHelpContextMenuSwiftUI();
  v4 = v0[4];
  v5 = v0 + ((*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80));
  result = [v4 actionID];
  if (result <= 2)
  {
    if (result == 1)
    {
      v8 = &v5[*(v3 + 44)];
      v9 = (v8 + 1);
    }

    else
    {
      if (result != 2)
      {
        return result;
      }

      v10 = &v5[*(v3 + 44)];
      v8 = (v10 + 48);
      v9 = (v10 + 56);
    }
  }

  else
  {
    switch(result)
    {
      case 3:
        v11 = &v5[*(v3 + 44)];
        v8 = (v11 + 64);
        v9 = (v11 + 72);
        break;
      case 4:
        v12 = &v5[*(v3 + 44)];
        v8 = (v12 + 16);
        v9 = (v12 + 24);
        break;
      case 5:
        v7 = &v5[*(v3 + 44)];
        v8 = (v7 + 32);
        v9 = (v7 + 40);
        break;
      default:
        return result;
    }
  }

  v13 = *v9;
  return (*v8)();
}

uint64_t sub_1BC7442F8@<X0>(BOOL *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF008, &qword_1BC76E2F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = *(type metadata accessor for ReportOverviewScreen(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
  sub_1BC75B640();
  v7 = type metadata accessor for ReportOverviewScreen._Alert(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  result = sub_1BC66008C(v5, &qword_1EBCDF008, &qword_1BC76E2F8);
  *a1 = v8;
  return result;
}

uint64_t sub_1BC744408(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF008, &qword_1BC76E2F8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - v8;
  if (*a1 == 1)
  {
    v10 = type metadata accessor for ReportOverviewScreen._Alert(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = *(type metadata accessor for ReportOverviewScreen(0) + 32);
    sub_1BC660024(v9, v6, &qword_1EBCDF008, &qword_1BC76E2F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
    sub_1BC75B650();
    return sub_1BC66008C(v9, &qword_1EBCDF008, &qword_1BC76E2F8);
  }

  return result;
}

uint64_t sub_1BC744560@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF010, &qword_1BC76E300);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v45 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF018, &qword_1BC76E308);
  v5 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v50 = (&v45 - v6);
  sub_1BC744CD8(v1, &v45 - v6);
  v7 = type metadata accessor for ReportOverviewScreen(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = v1;
  sub_1BC745FB4(v1, &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportOverviewScreen);
  v51 = sub_1BC75BDE0();
  v10 = sub_1BC75BDD0();
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v52 = *(v8 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  v49 = v11;
  sub_1BC748158(&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ReportOverviewScreen);
  v14 = sub_1BC75BE10();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v45 - v17;
  sub_1BC75BDF0();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v47 = sub_1BC75A8F0();
    v48 = &v45;
    v46 = *(v47 - 8);
    v19 = *(v46 + 64);
    MEMORY[0x1EEE9AC00](v47);
    v45 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1BC75C290();

    v59 = 0xD000000000000042;
    v60 = 0x80000001BC774B70;
    v61 = 54;
    v21 = sub_1BC75C590();
    MEMORY[0x1BFB267E0](v21);

    MEMORY[0x1EEE9AC00](v22);
    (*(v15 + 16))(&v45 - v17, &v45 - v17, v14);
    v23 = v45;
    sub_1BC75A8E0();
    (*(v15 + 8))(v18, v14);
    v24 = v58;
    sub_1BC65FFBC(v50, v58, &qword_1EBCDF018, &qword_1BC76E308);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF028, &qword_1BC76E328);
    v26 = (*(v46 + 32))(v24 + *(v25 + 36), v23, v47);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF058, &qword_1BC76E340);
    v28 = v58;
    v29 = (v58 + *(v27 + 36));
    v30 = sub_1BC75A860();
    (*(v15 + 32))(&v29[*(v30 + 20)], &v45 - v17, v14);
    *v29 = &unk_1BC76E320;
    *(v29 + 1) = v12;
    v26 = sub_1BC65FFBC(v50, v28, &qword_1EBCDF018, &qword_1BC76E308);
  }

  v50 = &v45;
  MEMORY[0x1EEE9AC00](v26);
  v48 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = (&v45 - v48);
  v32 = v54;
  sub_1BC745FB4(v54, &v45 - v48, type metadata accessor for ReportOverviewScreen);
  v33 = sub_1BC75BDD0();
  v34 = v49;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = MEMORY[0x1E69E85E0];
  v36 = sub_1BC748158(v31, v35 + v34, type metadata accessor for ReportOverviewScreen);
  v50 = &v45;
  MEMORY[0x1EEE9AC00](v36);
  v37 = (&v45 - v48);
  sub_1BC745FB4(v32, &v45 - v48, type metadata accessor for ReportOverviewScreen);
  v38 = sub_1BC75BDD0();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = MEMORY[0x1E69E85E0];
  sub_1BC748158(v37, v39 + v34, type metadata accessor for ReportOverviewScreen);
  v40 = sub_1BC75B740();
  MEMORY[0x1EEE9AC00](v40);
  *(&v45 - 2) = v32;
  v41 = sub_1BC747094();
  v59 = v53;
  v60 = v41;
  swift_getOpaqueTypeConformance2();
  v43 = v57;
  v42 = v58;
  sub_1BC75B390();

  return (*(v56 + 8))(v42, v43);
}

uint64_t sub_1BC744CD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v75 = type metadata accessor for ReportOverviewScreen(0);
  v71 = *(v75 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v76 = v4;
  v72 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for _ReportOverviewScreen(0);
  v5 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v77 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF4A0, &qword_1BC76EC18);
  v7 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v63 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE528, &qword_1BC76A408);
  v69 = *(v81 - 8);
  v9 = *(v69 + 8);
  MEMORY[0x1EEE9AC00](v81);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v63 - v14;
  v16 = type metadata accessor for Report.Evidence(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v74 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  v73 = a1;
  v23 = *a1;
  v22 = a1[1];
  v83 = v23;
  v84 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
  v24 = sub_1BC75B640();
  (*(*v86 + 144))(v24);

  v68 = v17;
  v25 = *(v17 + 48);
  v70 = v16;
  if (v25(v15, 1, v16) == 1)
  {
    sub_1BC66008C(v15, &qword_1EBCDED80, &unk_1BC76A3C0);
    sub_1BC75A790();
    v26 = v69;
    v27 = v81;
    (*(v69 + 2))(v80, v11, v81);
    swift_storeEnumTagMultiPayload();
    sub_1BC74820C(&qword_1EBCDF048, type metadata accessor for _ReportOverviewScreen);
    sub_1BC633C54(&qword_1EBCDF050, &qword_1EBCDE528, &qword_1BC76A408);
    sub_1BC75AE00();
    return (*(v26 + 1))(v11, v27);
  }

  else
  {
    v64 = type metadata accessor for Report.Evidence;
    v29 = v21;
    v67 = v21;
    sub_1BC748158(v15, v21, type metadata accessor for Report.Evidence);
    v30 = v75;
    v31 = v73;
    v32 = v77;
    sub_1BC745FB4(v73 + *(v75 + 20), v77, type metadata accessor for ReportScreen);
    v83 = v23;
    v84 = v22;
    sub_1BC75B640();
    sub_1BC745FB4(v86 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v32 + *(v82 + 20), type metadata accessor for Report.Authority);

    v33 = (v31 + *(v30 + 24));
    v34 = v33[1];
    v66 = *v33;
    v65 = v34;
    v69 = type metadata accessor for ReportOverviewScreen;
    v35 = v72;
    sub_1BC745FB4(v31, v72, type metadata accessor for ReportOverviewScreen);
    sub_1BC745FB4(v29, v74, type metadata accessor for Report.Evidence);
    sub_1BC75BDE0();

    v36 = sub_1BC75BDD0();
    v37 = *(v71 + 80);
    v38 = (v37 + 32) & ~v37;
    v39 = (v38 + v76 + *(v68 + 80)) & ~*(v68 + 80);
    v40 = swift_allocObject();
    v41 = MEMORY[0x1E69E85E0];
    *(v40 + 16) = v36;
    *(v40 + 24) = v41;
    sub_1BC748158(v35, v40 + v38, type metadata accessor for ReportOverviewScreen);
    sub_1BC748158(v74, v40 + v39, v64);
    v42 = v73;
    sub_1BC745FB4(v73, v35, v69);
    v43 = sub_1BC75BDD0();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = MEMORY[0x1E69E85E0];
    sub_1BC748158(v35, v44 + v38, type metadata accessor for ReportOverviewScreen);
    v45 = v82;
    v46 = v77;
    v47 = v77 + *(v82 + 28);
    sub_1BC75B740();
    v48 = v42 + *(v75 + 28);
    v49 = *v48;
    v50 = *(v48 + 8);
    LOBYTE(v86) = v49;
    v87 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF498, &unk_1BC76EBF0);
    sub_1BC75B660();
    v51 = v83;
    v52 = v84;
    LODWORD(v75) = v85;
    sub_1BC745FB4(v42, v35, v69);
    v53 = swift_allocObject();
    sub_1BC748158(v35, v53 + ((v37 + 16) & ~v37), type metadata accessor for ReportOverviewScreen);
    *(v46 + v45[11]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
    swift_storeEnumTagMultiPayload();
    v54 = (v46 + v45[6]);
    v55 = v65;
    *v54 = v66;
    v54[1] = v55;
    v56 = v45[8];
    sub_1BC6FEB38();
    sub_1BC75A6E0();
    v57 = v46 + v45[9];
    *v57 = v51;
    *(v57 + 8) = v52;
    *(v57 + 16) = v75;
    v58 = (v46 + v45[10]);
    *v58 = sub_1BC755C1C;
    v58[1] = v53;
    v59 = v46 + v45[12];
    LOBYTE(v86) = 0;
    sub_1BC75B630();
    v60 = v84;
    *v59 = v83;
    *(v59 + 8) = v60;
    v61 = v46 + v45[13];
    LOBYTE(v86) = 0;
    sub_1BC75B630();
    v62 = v84;
    *v61 = v83;
    *(v61 + 8) = v62;
    sub_1BC745FB4(v46, v80, type metadata accessor for _ReportOverviewScreen);
    swift_storeEnumTagMultiPayload();
    sub_1BC74820C(&qword_1EBCDF048, type metadata accessor for _ReportOverviewScreen);
    sub_1BC633C54(&qword_1EBCDF050, &qword_1EBCDE528, &qword_1BC76A408);
    sub_1BC75AE00();
    sub_1BC750E6C(v46, type metadata accessor for _ReportOverviewScreen);
    return sub_1BC750E6C(v67, type metadata accessor for Report.Evidence);
  }
}

uint64_t sub_1BC745618@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v15 - v8;
  v10 = a1[1];
  v15[2] = *a1;
  v15[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
  v11 = sub_1BC75B640();
  (*(*v15[1] + 144))(v11);

  v12 = type metadata accessor for Report.Evidence(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return sub_1BC748158(v9, a3, type metadata accessor for Report.Evidence);
  }

  sub_1BC745FB4(a2, a3, type metadata accessor for Report.Evidence);
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return sub_1BC66008C(v9, &qword_1EBCDED80, &unk_1BC76A3C0);
  }

  return result;
}

uint64_t sub_1BC7457C4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = a2[1];
  v12[2] = *a2;
  v12[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
  sub_1BC75B640();
  v9 = v12[1];
  sub_1BC745FB4(a1, v7, type metadata accessor for Report.Evidence);
  v10 = type metadata accessor for Report.Evidence(0);
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  (*(*v9 + 152))(v7);
}

uint64_t sub_1BC745900(uint64_t a1, unint64_t *a2)
{
  v4 = type metadata accessor for ReportScreen.Control(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = a2[1];
  v20 = *a2;
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
  sub_1BC75B640();
  v10 = *(v18 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType);

  if (v10 > 2)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1BC75C290();

    v20 = 0xD00000000000001BLL;
    v21 = 0x80000001BC774C40;
    v18 = v8;
    v19 = v9;
    sub_1BC75B640();
    v15 = *(v17[1] + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType);

    v18 = v15;
    v16 = sub_1BC75C590();
    MEMORY[0x1BFB267E0](v16);

    result = sub_1BC75C3D0();
    __break(1u);
  }

  else
  {
    v11 = a2 + *(type metadata accessor for ReportOverviewScreen(0) + 24);
    v13 = *v11;
    v12 = *(v11 + 1);
    sub_1BC745FB4(a1, v7, type metadata accessor for Report.Evidence);
    type metadata accessor for ReportScreen(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v13(v7);
    return sub_1BC750E6C(v7, type metadata accessor for ReportScreen.Control);
  }

  return result;
}

uint64_t sub_1BC745B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v4 = type metadata accessor for ReportScreen.Control(0);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_1BC75BDE0();
  v3[8] = sub_1BC75BDD0();
  v7 = sub_1BC75BD80();
  v3[9] = v7;
  v3[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BC745BFC, v7, v6);
}

uint64_t sub_1BC745BFC()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
  sub_1BC75B640();
  v4 = v0[4];
  v0[11] = v4;
  v5 = *(*v4 + 176);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1BC745D44;

  return v9();
}

uint64_t sub_1BC745D44()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1BC745EC8;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1BC745E60;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BC745E60()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BC745EC8()
{
  v1 = v0[13];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];

  v7 = v6 + *(type metadata accessor for ReportOverviewScreen(0) + 24);
  v9 = *v7;
  v8 = *(v7 + 8);
  *v4 = v1;
  swift_storeEnumTagMultiPayload();
  v10 = v1;
  v9(v4);

  sub_1BC750E6C(v4, type metadata accessor for ReportScreen.Control);
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BC745FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC74601C()
{
  v2 = *(type metadata accessor for ReportOverviewScreen(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC745B34(v4, v5, v0 + v3);
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for ReportOverviewScreen(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = v0 + v3 + v1[5];
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v36 = *(v9 + 8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v74 = v4;
      v11 = sub_1BC759910();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v9, 1, v11))
      {
        (*(v12 + 8))(v9, v11);
      }

      v13 = type metadata accessor for Report.Evidence(0);
      v14 = (v9 + v13[6]);
      v15 = *(v14 + 1);

      v16 = *(v14 + 3);

      v17 = *(v14 + 5);

      v18 = *(v14 + 7);

      v19 = *(v14 + 9);

      v20 = *(v14 + 11);

      v21 = *(v14 + 13);

      v22 = *(v14 + 15);

      v23 = *(v14 + 17);

      v24 = *(v14 + 19);

      v25 = *(v14 + 21);

      v26 = *(v14 + 23);

      v27 = _s6VictimVMa(0);
      (*(v12 + 8))(&v14[*(v27 + 44)], v11);
      v28 = *(v9 + v13[7]);

      v29 = *(v9 + v13[9] + 8);

      v30 = *(v9 + v13[12]);

      v31 = (v9 + v13[13]);
      v32 = v31[1];
      if (v32 >> 60 != 15)
      {
        sub_1BC6AE140(*v31, v32);
      }

      v33 = *(v9 + v13[14] + 8);

      v34 = *(v9 + v13[16] + 8);

      v35 = *(v9 + v13[17] + 8);

      v4 = v74;
    }
  }

  else
  {
    v37 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v37 - 8) + 48))(v9, 1, v37))
    {
      v38 = *(v9 + 8);

      v39 = *(v9 + 32);

      v73 = *(v37 + 28);
      v40 = sub_1BC759800();
      v75 = v4;
      v41 = *(*(v40 - 8) + 8);
      v41(v9 + v73, v40);
      v41(v9 + *(v37 + 32), v40);
      v4 = v75;
    }
  }

  v42 = *(v6 + v1[6] + 8);

  v43 = *(v6 + v1[7] + 8);

  v44 = v6 + v1[8];
  v45 = type metadata accessor for ReportOverviewScreen._Alert(0);
  if (!(*(*(v45 - 8) + 48))(v44, 1, v45))
  {
    v46 = sub_1BC759910();
    v47 = *(v46 - 8);
    if (!(*(v47 + 48))(v44, 1, v46))
    {
      (*(v47 + 8))(v44, v46);
    }

    v48 = type metadata accessor for Report.Evidence(0);
    v49 = (v44 + v48[6]);
    v50 = *(v49 + 1);

    v51 = *(v49 + 3);

    v52 = *(v49 + 5);

    v53 = *(v49 + 7);

    v54 = *(v49 + 9);

    v55 = *(v49 + 11);

    v56 = *(v49 + 13);

    v57 = *(v49 + 15);

    v58 = *(v49 + 17);

    v59 = *(v49 + 19);

    v60 = *(v49 + 21);

    v61 = *(v49 + 23);

    v62 = _s6VictimVMa(0);
    (*(v47 + 8))(&v49[*(v62 + 44)], v46);
    v63 = *(v44 + v48[7]);

    v64 = *(v44 + v48[9] + 8);

    v65 = *(v44 + v48[12]);

    v66 = (v44 + v48[13]);
    v67 = v66[1];
    if (v67 >> 60 != 15)
    {
      sub_1BC6AE140(*v66, v67);
    }

    v68 = *(v44 + v48[14] + 8);

    v69 = *(v44 + v48[16] + 8);

    v70 = *(v44 + v48[17] + 8);
  }

  v71 = *(v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318) + 28));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC7466A4@<X0>(BOOL *a1@<X8>)
{
  v2 = *(*(type metadata accessor for ReportOverviewScreen(0) - 8) + 80);

  return sub_1BC7442F8(a1);
}

uint64_t sub_1BC746714(_BYTE *a1)
{
  v2 = *(*(type metadata accessor for ReportOverviewScreen(0) - 8) + 80);

  return sub_1BC744408(a1);
}

uint64_t sub_1BC746784@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF490, &qword_1BC76EBE8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v79 - v5;
  v7 = type metadata accessor for ReportOverviewScreen(0);
  v8 = v7 - 8;
  v95 = *(v7 - 8);
  v9 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v96 = v10;
  v94 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1BC75B4C0();
  v11 = *(v92 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v92);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v79 - v16;
  v17 = type metadata accessor for Report.Authority(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Report.Evidence(0);
  v90 = *(v21 - 8);
  v22 = *(v90 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v91 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF008, &qword_1BC76E2F8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v79 - v28;
  v30 = *(v8 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
  sub_1BC75B640();
  v31 = type metadata accessor for ReportOverviewScreen._Alert(0);
  if ((*(*(v31 - 8) + 48))(v29, 1, v31) == 1)
  {
    v32._countAndFlagsBits = 0x545F44454C494146;
    v32._object = 0xEE00444E45535F4FLL;
    SCLocalizedStringKey.init(stringLiteral:)(v32);
    v99 = v101;
    v100 = v102;
    sub_1BC651E78(&v99);
    v97 = v33;
    LODWORD(v91) = v34;
    v93 = v35;
    v36._object = 0x80000001BC773750;
    v36._countAndFlagsBits = 0xD00000000000001ALL;
    SCLocalizedStringKey.init(stringLiteral:)(v36);
    v99 = v101;
    v100 = v102;
    v37 = sub_1BC651E78(&v99);
    v89 = v38;
    v90 = v37;
    v87 = v39 & 1;
    v88 = v40;
    v41._countAndFlagsBits = 19279;
    v41._object = 0xE200000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(v41);
    v99 = v101;
    v100 = v102;
    v42 = sub_1BC651E78(&v99);
    v43 = v94;
    v45 = v44;
    v47 = v46;
    sub_1BC745FB4(a1, v94, type metadata accessor for ReportOverviewScreen);
    v48 = (*(v95 + 80) + 16) & ~*(v95 + 80);
    v49 = swift_allocObject();
    sub_1BC748158(v43, v49 + v48, type metadata accessor for ReportOverviewScreen);
    sub_1BC75B4B0();
    sub_1BC680E6C(v42, v45, v47 & 1);

    (*(v11 + 56))(v6, 0, 1, v92);
    return sub_1BC75B480();
  }

  else
  {
    v81 = type metadata accessor for Report.Evidence;
    v93 = v25;
    sub_1BC748158(v29, v25, type metadata accessor for Report.Evidence);
    v92 = v15;
    v52 = a1[1];
    v101 = *a1;
    v51 = v101;
    v102 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
    sub_1BC75B640();
    v80 = a1;
    sub_1BC745FB4(v99 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v20, type metadata accessor for Report.Authority);

    sub_1BC6814FC(&v101);
    sub_1BC750E6C(v20, type metadata accessor for Report.Authority);
    v99 = v101;
    v100 = v102;
    v53 = sub_1BC651E78(&v99);
    v88 = v54;
    v89 = v53;
    v86 = v55;
    v87 = v56;
    v101 = v51;
    v102 = v52;
    sub_1BC75B640();
    sub_1BC745FB4(v99 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v20, type metadata accessor for Report.Authority);

    sub_1BC6816AC(&v101);
    sub_1BC750E6C(v20, type metadata accessor for Report.Authority);
    v99 = v101;
    v100 = v102;
    v85 = sub_1BC651E78(&v99);
    v84 = v57;
    v83 = v58;
    v82 = v59 & 1;
    v60._countAndFlagsBits = 0x5045525F444E4553;
    v60._object = 0xEB0000000054524FLL;
    SCLocalizedStringKey.init(stringLiteral:)(v60);
    v99 = v101;
    v100 = v102;
    v61 = sub_1BC651E78(&v99);
    v63 = v62;
    v65 = v64;
    v79 = type metadata accessor for ReportOverviewScreen;
    v66 = a1;
    v67 = v94;
    sub_1BC745FB4(v66, v94, type metadata accessor for ReportOverviewScreen);
    v68 = v91;
    sub_1BC745FB4(v93, v91, type metadata accessor for Report.Evidence);
    v69 = *(v95 + 80);
    v70 = (v69 + 16) & ~v69;
    v95 = v69 | 7;
    v96 += v70;
    v71 = (v96 + *(v90 + 80)) & ~*(v90 + 80);
    v72 = swift_allocObject();
    sub_1BC748158(v67, v72 + v70, type metadata accessor for ReportOverviewScreen);
    sub_1BC748158(v68, v72 + v71, v81);
    sub_1BC75B4B0();
    sub_1BC680E6C(v61, v63, v65 & 1);

    v73._countAndFlagsBits = 0x4B4341425F4F47;
    v73._object = 0xE700000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(v73);
    v99 = v101;
    v100 = v102;
    v74 = sub_1BC651E78(&v99);
    v76 = v75;
    LOBYTE(v72) = v77;
    sub_1BC745FB4(v80, v67, v79);
    v78 = swift_allocObject();
    sub_1BC748158(v67, v78 + v70, type metadata accessor for ReportOverviewScreen);
    sub_1BC75B4A0();
    sub_1BC680E6C(v74, v76, v72 & 1);

    sub_1BC75B490();
    return sub_1BC750E6C(v93, type metadata accessor for Report.Evidence);
  }
}

unint64_t sub_1BC747094()
{
  result = qword_1EBCDF030;
  if (!qword_1EBCDF030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF018, &qword_1BC76E308);
    sub_1BC747118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF030);
  }

  return result;
}

unint64_t sub_1BC747118()
{
  result = qword_1EBCDF038;
  if (!qword_1EBCDF038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF040, &unk_1BC76E330);
    sub_1BC74820C(&qword_1EBCDF048, type metadata accessor for _ReportOverviewScreen);
    sub_1BC633C54(&qword_1EBCDF050, &qword_1EBCDE528, &qword_1BC76A408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF038);
  }

  return result;
}

uint64_t sub_1BC747220(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = type metadata accessor for Report.Evidence(0);
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReportOverviewScreen(0);
  v6 = v5 - 8;
  v30 = *(v5 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF008, &qword_1BC76E2F8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  v19 = type metadata accessor for ReportOverviewScreen._Alert(0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = *(v6 + 40);
  sub_1BC660024(v18, v16, &qword_1EBCDF008, &qword_1BC76E2F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
  sub_1BC75B650();
  sub_1BC66008C(v18, &qword_1EBCDF008, &qword_1BC76E2F8);
  v21 = sub_1BC75BE10();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_1BC745FB4(a1, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportOverviewScreen);
  v22 = v29;
  sub_1BC745FB4(v31, v29, type metadata accessor for Report.Evidence);
  sub_1BC75BDE0();
  v23 = sub_1BC75BDD0();
  v24 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v25 = (v7 + *(v32 + 80) + v24) & ~*(v32 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 16) = v23;
  *(v26 + 24) = v27;
  sub_1BC748158(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v24, type metadata accessor for ReportOverviewScreen);
  sub_1BC748158(v22, v26 + v25, type metadata accessor for Report.Evidence);
  sub_1BC652910(0, 0, v11, &unk_1BC76EC08, v26);
}

uint64_t sub_1BC7475F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for ReportScreen.Control(0);
  v5[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  sub_1BC75BDE0();
  v5[11] = sub_1BC75BDD0();
  v9 = sub_1BC75BD80();
  v5[12] = v9;
  v5[13] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BC7476BC, v9, v8);
}

uint64_t sub_1BC7476BC()
{
  v1 = v0[7];
  v2 = [objc_opt_self() progressWithTotalUnitCount_];
  v0[14] = v2;
  v3 = v1[1];
  v0[2] = *v1;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
  sub_1BC75B640();
  v4 = v0[6];
  v0[15] = v4;
  v5 = *(*v4 + 184);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1BC747844;
  v8 = v0[8];

  return v10(v8, v2);
}

uint64_t sub_1BC747844(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = v6[12];
    v10 = v6[13];
    v11 = sub_1BC747A7C;
  }

  else
  {
    v12 = v6[15];

    v6[18] = a2;
    v6[19] = a1;
    v9 = v6[12];
    v10 = v6[13];
    v11 = sub_1BC747980;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1BC747980()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[7];

  v8 = v7 + *(type metadata accessor for ReportOverviewScreen(0) + 24);
  v10 = *v8;
  v9 = *(v8 + 8);
  *v5 = v1;
  v5[1] = v2;
  type metadata accessor for ReportScreen(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10(v5);

  sub_1BC750E6C(v5, type metadata accessor for ReportScreen.Control);
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BC747A7C()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);

  v8 = type metadata accessor for ReportOverviewScreen(0);
  v9 = v7 + *(v8 + 24);
  v11 = *v9;
  v10 = *(v9 + 8);
  *v5 = v1;
  swift_storeEnumTagMultiPayload();
  v12 = v1;
  v11(v5);
  sub_1BC750E6C(v5, type metadata accessor for ReportScreen.Control);
  v13 = v7 + *(v8 + 28);
  v14 = *(v13 + 8);
  *(v0 + 32) = *v13;
  *(v0 + 40) = v14;
  *(v0 + 160) = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF498, &unk_1BC76EBF0);
  sub_1BC75B650();

  v15 = *(v0 + 80);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1BC747BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF008, &qword_1BC76E2F8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  v9 = type metadata accessor for ReportOverviewScreen._Alert(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = type metadata accessor for ReportOverviewScreen(0);
  v11 = *(v10 + 32);
  sub_1BC660024(v8, v6, &qword_1EBCDF008, &qword_1BC76E2F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
  sub_1BC75B650();
  sub_1BC66008C(v8, &qword_1EBCDF008, &qword_1BC76E2F8);
  v12 = (a1 + *(v10 + 28));
  v13 = *v12;
  v14 = *(v12 + 1);
  v16[16] = v13;
  v17 = v14;
  v16[15] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF498, &unk_1BC76EBF0);
  return sub_1BC75B650();
}

uint64_t sub_1BC747D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF008, &qword_1BC76E2F8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v26 = a1;
  type metadata accessor for ReportToAuthoritiesViewModel(0);
  sub_1BC75B630();
  v17 = v28;
  *a5 = v27;
  a5[1] = v17;
  v18 = type metadata accessor for ReportOverviewScreen(0);
  sub_1BC748158(a2, a5 + v18[5], type metadata accessor for ReportScreen);
  v19 = (a5 + v18[6]);
  *v19 = a3;
  v19[1] = a4;
  v20 = a5 + v18[7];
  LOBYTE(v26) = 2;
  sub_1BC75B630();
  v21 = v28;
  *v20 = v27;
  *(v20 + 1) = v21;
  v22 = v18[8];
  v23 = type metadata accessor for ReportOverviewScreen._Alert(0);
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  sub_1BC660024(v16, v14, &qword_1EBCDF008, &qword_1BC76E2F8);
  sub_1BC75B630();
  return sub_1BC66008C(v16, &qword_1EBCDF008, &qword_1BC76E2F8);
}

uint64_t sub_1BC747F50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC75ABB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for _ReportOverviewScreen(0);
  sub_1BC660024(v1 + *(v12 + 44), v11, &qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BC75A710();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1BC75BF70();
    v16 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1BC748158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC7481C0()
{
  result = qword_1EBCDF060;
  if (!qword_1EBCDF060)
  {
    sub_1BC75A8F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF060);
  }

  return result;
}

uint64_t sub_1BC74820C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC748254@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = type metadata accessor for _ReportOverviewScreen(0);
  v77 = *(v2 - 8);
  v75 = *(v77 + 64);
  v3 = v2 - 8;
  v90 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2 - 8);
  v74 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF070, &qword_1BC76E398);
  v5 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v91 = (&v70 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF078, &qword_1BC76E3A0);
  v8 = *(v7 - 8);
  v86 = v7;
  v87 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v70 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF080, &qword_1BC76E3A8);
  v11 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v70 - v12;
  v13 = type metadata accessor for Report.Evidence(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s6VictimVMa(0);
  v72 = *(v18 - 8);
  v71 = *(v72 + 8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v70 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v70 - v21;
  v23 = *(v3 + 36);
  v24 = v1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  v80 = v23;
  v25 = v79;
  MEMORY[0x1BFB262E0]();
  v26 = &v17[*(v14 + 32)];
  v84 = v22;
  sub_1BC745FB4(v26, v22, _s6VictimVMa);
  v81 = type metadata accessor for Report.Evidence;
  sub_1BC750E6C(v17, type metadata accessor for Report.Evidence);
  MEMORY[0x1BFB262E0](v25);
  v27 = *(v14 + 36);
  v78 = v17;
  v28 = *&v17[v27];

  sub_1BC750E6C(v17, type metadata accessor for Report.Evidence);
  v76 = type metadata accessor for _ReportOverviewScreen;
  v29 = v24;
  v30 = v24;
  v31 = v74;
  sub_1BC745FB4(v29, v74, type metadata accessor for _ReportOverviewScreen);
  v32 = v70;
  sub_1BC745FB4(v22, v70, _s6VictimVMa);
  v33 = *(v77 + 80);
  v77 = ((v33 + 16) & ~v33) + v75;
  v34 = (v33 + 16) & ~v33;
  v73 = v34;
  v75 = v33 | 7;
  v35 = (v77 + *(v72 + 80)) & ~*(v72 + 80);
  v36 = (v71 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v72 = type metadata accessor for _ReportOverviewScreen;
  sub_1BC748158(v31, v37 + v34, type metadata accessor for _ReportOverviewScreen);
  sub_1BC748158(v32, v37 + v35, _s6VictimVMa);
  *(v37 + v36) = v28;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF088, &qword_1BC76E3B0);
  v39 = sub_1BC633C54(&qword_1EBCDF090, &qword_1EBCDF088, &qword_1BC76E3B0);
  v40 = v91;
  sub_1BC6F6778(sub_1BC750274, v37, v38, v39, v91);
  v41 = sub_1BC75ACD0();
  sub_1BC74BC38(v30, &v98);
  v42 = sub_1BC75A7D0();
  LOBYTE(v37) = MEMORY[0x1BFB25C50]((2 * v42));
  v43 = sub_1BC75A990();
  v97 = 1;
  v106 = v100;
  v107 = v101;
  v108 = v102;
  v104 = v98;
  v105 = v99;
  *&v109 = v103;
  *(&v109 + 1) = v43;
  *&v110 = 0;
  BYTE8(v110) = 1;
  BYTE9(v110) = v37;
  v111 = v41;
  v44 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF098, &qword_1BC76E3B8) + 36);
  v45 = v109;
  *(v44 + 4) = v108;
  *(v44 + 5) = v45;
  *(v44 + 6) = v110;
  *(v44 + 14) = v111;
  v46 = v105;
  *v44 = v104;
  *(v44 + 1) = v46;
  v47 = v107;
  *(v44 + 2) = v106;
  *(v44 + 3) = v47;
  v112[0] = v98;
  v112[1] = v99;
  v112[3] = v101;
  v112[4] = v102;
  v112[2] = v100;
  v113 = v103;
  v114 = v43;
  v115 = 0;
  v116 = 1;
  v117 = v37;
  v118 = v41;
  sub_1BC660024(&v104, &v93, &qword_1EBCDF0A0, &qword_1BC76E3C0);
  sub_1BC66008C(v112, &qword_1EBCDF0A0, &qword_1BC76E3C0);
  v48 = v30;
  v49 = v31;
  v50 = v76;
  sub_1BC745FB4(v30, v31, v76);
  v51 = swift_allocObject();
  v52 = v73;
  sub_1BC748158(v31, v51 + v73, type metadata accessor for _ReportOverviewScreen);
  v53 = v82;
  v54 = (v91 + *(v82 + 36));
  *v54 = 0;
  v54[1] = 0;
  v54[2] = sub_1BC755C94;
  v54[3] = v51;
  v55 = v78;
  MEMORY[0x1BFB262E0](v79);
  LOBYTE(v51) = sub_1BC6B5EF4(v30 + *(v90 + 28));
  sub_1BC750E6C(v55, v81);
  LOBYTE(v93) = v51 & 1;
  sub_1BC745FB4(v30, v49, v50);
  v56 = swift_allocObject();
  sub_1BC748158(v49, v56 + v52, v72);
  v57 = sub_1BC7528DC(&qword_1EBCDF0A8, &qword_1EBCDF070, &qword_1BC76E398, sub_1BC750B38);
  v58 = v83;
  v59 = v53;
  v60 = v91;
  sub_1BC75B420();

  sub_1BC66008C(v60, &qword_1EBCDF070, &qword_1BC76E398);
  v61 = v30 + *(v90 + 44);
  v63 = *(v61 + 8);
  LOBYTE(v22) = *(v61 + 16);
  v93 = *v61;
  v62 = v93;
  v94 = v63;
  LOBYTE(v95) = v22;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF068, &unk_1BC76E388);
  MEMORY[0x1BFB262E0](&v98);
  sub_1BC6FCFF0(v98, 0);
  v93 = v59;
  v94 = MEMORY[0x1E69E6370];
  v95 = v57;
  v96 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v65 = v85;
  v66 = v86;
  sub_1BC75B270();
  (*(v87 + 8))(v58, v66);
  v93 = v62;
  v94 = v63;
  LOBYTE(v95) = v22;
  MEMORY[0x1BFB262E0](&v98, v64);
  LOBYTE(v93) = 0;
  sub_1BC710C60();
  *(v65 + *(v88 + 36)) = (sub_1BC75BAB0() & 1) == 0;
  v92 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF0D0, &qword_1BC76E3D0);
  sub_1BC750C24();
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF0E0, &qword_1BC76E3D8);
  v68 = sub_1BC750D78();
  v93 = v67;
  v94 = v68;
  swift_getOpaqueTypeConformance2();
  sub_1BC75B3F0();
  sub_1BC66008C(v65, &qword_1EBCDF080, &qword_1BC76E3A8);
  return sub_1BC750E6C(v84, _s6VictimVMa);
}

uint64_t sub_1BC748BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a2;
  v122 = a3;
  v111 = a1;
  v133 = a4;
  v5 = sub_1BC75AC20();
  v129 = *(v5 - 8);
  v130 = v5;
  v6 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v128 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF348, &qword_1BC76EA78);
  v8 = *(*(v125 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v125);
  v132 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v131 = &v107 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF350, &qword_1BC76EA80);
  v123 = *(v12 - 8);
  v124 = v12;
  v13 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v110 = (&v107 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF358, &qword_1BC76EA88);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v138 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v139 = &v107 - v19;
  v20 = sub_1BC75A710();
  v119 = *(v20 - 8);
  v120 = v20;
  v21 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s6VictimVMa(0);
  v118 = *(v23 - 8);
  v114 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v113 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF360, &qword_1BC76EA90);
  v25 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = (&v107 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF368, &qword_1BC76EA98);
  v126 = *(v27 - 8);
  v127 = v27;
  v28 = *(v126 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v141 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v140 = &v107 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF370, &unk_1BC76EAA0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v137 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = (&v107 - v36);
  v38 = type metadata accessor for _ReportOverviewScreen(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v107 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE970, &qword_1BC76CB98);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v135 = &v107 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v47 = (&v107 - v46);
  sub_1BC745FB4(a1, v41, type metadata accessor for _ReportOverviewScreen);
  v48 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v108 = *(v39 + 80);
  v109 = v40;
  v49 = v48 + v40;
  v50 = swift_allocObject();
  v112 = type metadata accessor for _ReportOverviewScreen;
  sub_1BC748158(v41, v50 + v48, type metadata accessor for _ReportOverviewScreen);
  v51 = _s3RowVMa();
  v52 = sub_1BC74820C(&qword_1EBCDEC08, _s3RowVMa);
  v134 = v47;
  sub_1BC6F7354(0, sub_1BC75376C, v50, v51, v52, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF378, &qword_1BC76EAB0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF380, &qword_1BC76EAB8);
  v54 = sub_1BC753798();
  *&v143 = v53;
  *(&v143 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  v136 = v37;
  sub_1BC6F7410(sub_1BC749B20, 0, v37);
  v55 = v111;
  sub_1BC745FB4(v111, v41, type metadata accessor for _ReportOverviewScreen);
  v56 = v113;
  sub_1BC745FB4(v121, v113, _s6VictimVMa);
  v57 = *(v118 + 80);
  v118 = v49;
  v58 = (v49 + v57) & ~v57;
  v59 = swift_allocObject();
  v121 = v48;
  sub_1BC748158(v41, v59 + v48, v112);
  sub_1BC748158(v56, v59 + v58, _s6VictimVMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF390, &qword_1BC76EAC0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF398, &qword_1BC76EAC8);
  v61 = v55;
  v62 = sub_1BC633C54(&qword_1EBCDF3A0, &qword_1EBCDF398, &qword_1BC76EAC8);
  *&v143 = v60;
  *(&v143 + 1) = v62;
  v63 = v122;
  swift_getOpaqueTypeConformance2();
  v64 = v115;
  sub_1BC6F7410(sub_1BC75387C, v59, v115);
  v65 = v117;
  sub_1BC747F50(v117);
  sub_1BC633C54(&qword_1EBCDF3A8, &qword_1EBCDF360, &qword_1BC76EA90);
  sub_1BC6F89E4();
  (*(v119 + 8))(v65, v120);
  sub_1BC66008C(v64, &qword_1EBCDF360, &qword_1BC76EA90);
  if (*(v63 + 16))
  {
    v66 = v108;
    v67 = *(v63 + 176);
    v151 = *(v63 + 160);
    v152 = v67;
    v153 = *(v63 + 192);
    v68 = *(v63 + 112);
    v147 = *(v63 + 96);
    v148 = v68;
    v69 = *(v63 + 144);
    v149 = *(v63 + 128);
    v150 = v69;
    v70 = *(v63 + 48);
    v143 = *(v63 + 32);
    v144 = v70;
    v71 = *(v63 + 80);
    v145 = *(v63 + 64);
    v146 = v71;
    sub_1BC745FB4(v55, v41, type metadata accessor for _ReportOverviewScreen);
    v72 = (v66 + 24) & ~v66;
    v73 = (v109 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    *(v74 + 16) = v63;
    sub_1BC748158(v41, v74 + v72, type metadata accessor for _ReportOverviewScreen);
    v75 = v74 + v73;
    v76 = v152;
    *(v75 + 128) = v151;
    *(v75 + 144) = v76;
    *(v75 + 160) = v153;
    v77 = v148;
    *(v75 + 64) = v147;
    *(v75 + 80) = v77;
    v78 = v150;
    *(v75 + 96) = v149;
    *(v75 + 112) = v78;
    v79 = v144;
    *v75 = v143;
    *(v75 + 16) = v79;
    v80 = v146;
    *(v75 + 32) = v145;
    *(v75 + 48) = v80;
    sub_1BC6C3F8C(&v143, &v142);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF3B0, &qword_1BC76EAD0);
    sub_1BC7539F0();
    v81 = v110;
    sub_1BC6F7410(sub_1BC753950, v74, v110);
    v82 = v139;
    sub_1BC65FFBC(v81, v139, &qword_1EBCDF350, &qword_1BC76EA80);
    v83 = 0;
    v84 = v82;
  }

  else
  {
    v84 = v139;
    v83 = 1;
  }

  (*(v123 + 56))(v84, v83, 1, v124);
  sub_1BC745FB4(v61, v41, type metadata accessor for _ReportOverviewScreen);
  v85 = swift_allocObject();
  sub_1BC748158(v41, v85 + v121, type metadata accessor for _ReportOverviewScreen);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF3E8, &qword_1BC76EAF0);
  sub_1BC753BFC();
  v86 = v131;
  sub_1BC6F7410(sub_1BC753B8C, v85, v131);
  v87 = v128;
  sub_1BC75AC10();
  v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF408, &qword_1BC76EB00) + 36);
  v90 = v129;
  v89 = v130;
  (*(v129 + 16))(&v86[v88], v87, v130);
  v91 = *(v90 + 56);
  v91(&v86[v88], 0, 1, v89);
  KeyPath = swift_getKeyPath();
  v93 = &v86[*(v125 + 36)];
  v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDDD0, &qword_1BC769480) + 28);
  (*(v90 + 32))(v93 + v94, v87, v89);
  v91(v93 + v94, 0, 1, v89);
  *v93 = KeyPath;
  v95 = v135;
  sub_1BC660024(v134, v135, &qword_1EBCDE970, &qword_1BC76CB98);
  v96 = v137;
  sub_1BC660024(v136, v137, &qword_1EBCDF370, &unk_1BC76EAA0);
  v98 = v126;
  v97 = v127;
  v99 = *(v126 + 16);
  v99(v141, v140, v127);
  sub_1BC660024(v139, v138, &qword_1EBCDF358, &qword_1BC76EA88);
  v100 = v132;
  sub_1BC660024(v86, v132, &qword_1EBCDF348, &qword_1BC76EA78);
  v101 = v95;
  v102 = v133;
  sub_1BC660024(v101, v133, &qword_1EBCDE970, &qword_1BC76CB98);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF410, &qword_1BC76EB40);
  sub_1BC660024(v96, v102 + v103[12], &qword_1EBCDF370, &unk_1BC76EAA0);
  v99((v102 + v103[16]), v141, v97);
  v104 = v138;
  sub_1BC660024(v138, v102 + v103[20], &qword_1EBCDF358, &qword_1BC76EA88);
  sub_1BC660024(v100, v102 + v103[24], &qword_1EBCDF348, &qword_1BC76EA78);
  sub_1BC66008C(v86, &qword_1EBCDF348, &qword_1BC76EA78);
  sub_1BC66008C(v139, &qword_1EBCDF358, &qword_1BC76EA88);
  v105 = *(v98 + 8);
  v105(v140, v97);
  sub_1BC66008C(v136, &qword_1EBCDF370, &unk_1BC76EAA0);
  sub_1BC66008C(v134, &qword_1EBCDE970, &qword_1BC76CB98);
  sub_1BC66008C(v100, &qword_1EBCDF348, &qword_1BC76EA78);
  sub_1BC66008C(v104, &qword_1EBCDF358, &qword_1BC76EA88);
  v105(v141, v97);
  sub_1BC66008C(v137, &qword_1EBCDF370, &unk_1BC76EAA0);
  return sub_1BC66008C(v135, &qword_1EBCDE970, &qword_1BC76CB98);
}

uint64_t sub_1BC7499F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v8 = type metadata accessor for _ReportOverviewScreen(0);
  v9 = a1 + *(v8 + 28);
  sub_1BC75B730();
  v10 = (a1 + *(v8 + 32));
  v11 = *(v10 + 8);
  v12 = *(v10 + 32);
  v20 = *v10;
  v21 = v11;
  v22 = *(v10 + 1);
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF328, &qword_1BC76EA50);
  sub_1BC75A6A0();
  v13 = v18[1];
  v14 = v18[2];
  v15 = v18[3];
  LOBYTE(v8) = v19;
  v16 = sub_1BC67A2E4();
  return sub_1BC6F8C2C(22, 12, v7, v13, v14, v15, v8, v16 & 1, a2);
}

uint64_t sub_1BC749B20()
{
  v33 = sub_1BC75ACE0();
  v42 = 1;
  v0._object = 0x80000001BC774BE0;
  v0._countAndFlagsBits = 0xD000000000000017;
  SCLocalizedStringKey.init(stringLiteral:)(v0);
  v36 = v43[0];
  v1 = sub_1BC651E78(&v36);
  v3 = v2;
  v5 = v4;
  v6 = sub_1BC75B180();
  v34 = v7;
  v35 = v6;
  v31 = v8;
  v32 = v9;
  sub_1BC680E6C(v1, v3, v5 & 1);

  v10._countAndFlagsBits = 0x495F54524F504552;
  v10._object = 0xEF534544554C434ELL;
  SCLocalizedStringKey.init(stringLiteral:)(v10);
  v36 = v43[0];
  v11 = sub_1BC651E78(&v36);
  v13 = v12;
  v15 = v14;
  sub_1BC75B0E0();
  v16 = sub_1BC75B190();
  v18 = v17;
  v20 = v19;

  sub_1BC680E6C(v11, v13, v15 & 1);

  *&v43[0] = sub_1BC75B500();
  v21 = sub_1BC75B160();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1BC680E6C(v16, v18, v20 & 1);

  v44 = v31 & 1;
  LOBYTE(v43[0]) = v31 & 1;
  LOBYTE(v36) = v25 & 1;
  sub_1BC680FFC(v35, v34, v31 & 1);

  sub_1BC680FFC(v21, v23, v25 & 1);

  sub_1BC680E6C(v21, v23, v25 & 1);

  sub_1BC680E6C(v35, v34, v44);

  v28 = v42;
  *&v43[0] = sub_1BC75B520();
  WORD4(v43[0]) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B8, &qword_1BC76DEE0);
  sub_1BC633C54(&qword_1EDDCE160, &qword_1EBCDD2B8, &qword_1BC76DEE0);
  v29 = sub_1BC75B6F0();
  v36 = v33;
  LOBYTE(v37) = v28;
  *(&v37 + 1) = v35;
  *&v38 = v34;
  BYTE8(v38) = v31 & 1;
  *&v39 = v32;
  *(&v39 + 1) = v21;
  *&v40 = v23;
  BYTE8(v40) = v25 & 1;
  *&v41 = v27;
  *(&v41 + 1) = v29;
  sub_1BC75A7B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF380, &qword_1BC76EAB8);
  sub_1BC753798();
  sub_1BC75B2B0();
  v43[2] = v38;
  v43[3] = v39;
  v43[4] = v40;
  v43[5] = v41;
  v43[0] = v36;
  v43[1] = v37;
  return sub_1BC66008C(v43, &qword_1EBCDF380, &qword_1BC76EAB8);
}

uint64_t sub_1BC749E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = _s6VictimVMa(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF398, &qword_1BC76EAC8);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v11 = v19 - v10;
  v12 = (a1 + *(type metadata accessor for _ReportOverviewScreen(0) + 48));
  v14 = *(v12 + 1);
  v28 = *v12;
  v13 = v28;
  v29 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B660();
  v20 = v26;
  v21 = v25;
  v19[3] = v27;
  sub_1BC745FB4(a2, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s6VictimVMa);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_1BC748158(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s6VictimVMa);
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF3D8, &qword_1BC76EAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF480, &unk_1BC76EBD8);
  sub_1BC633C54(&qword_1EBCDF3E0, &qword_1EBCDF3D8, &qword_1BC76EAE8);
  sub_1BC754AB0();
  sub_1BC75A920();
  LOBYTE(v25) = v13;
  v26 = v14;
  sub_1BC75B640();
  sub_1BC75A7C0();
  sub_1BC633C54(&qword_1EBCDF3A0, &qword_1EBCDF398, &qword_1BC76EAC8);
  v17 = v22;
  sub_1BC75B2B0();
  return (*(v8 + 8))(v11, v17);
}

uint64_t sub_1BC74A1B8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF438, &qword_1BC76EB70);
  v11[0] = *(v2 - 8);
  v3 = *(v11[0] + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - v4;
  v6 = sub_1BC6B6614();
  if (v6)
  {
    v11[3] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF460, &qword_1BC76EBC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF468, &unk_1BC76EBC8);
    sub_1BC633C54(&qword_1EBCDF470, &qword_1EBCDF460, &qword_1BC76EBC0);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF448, &qword_1BC76EB78);
    v8 = sub_1BC754854();
    v11[1] = v7;
    v11[2] = v8;
    swift_getOpaqueTypeConformance2();
    sub_1BC75490C();
    sub_1BC75B780();
    (*(v11[0] + 32))(a1, v5, v2);
    return (*(v11[0] + 56))(a1, 0, 1, v2);
  }

  else
  {
    v10 = *(v11[0] + 56);

    return v10(a1, 1, 1, v2);
  }
}

uint64_t sub_1BC74A408(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF448, &qword_1BC76EB78);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v13 - v4);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v14[0] = v7;
  v14[1] = v6;
  v13[0] = v8;
  v13[1] = v9;

  sub_1BC6FC364(v14, v13, v5);
  v10 = sub_1BC75B030();
  v11 = v5 + *(v2 + 36);
  *v11 = v10;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  sub_1BC75A7B0();
  sub_1BC754854();
  sub_1BC75B2B0();
  return sub_1BC66008C(v5, &qword_1EBCDF448, &qword_1BC76EB78);
}

uint64_t sub_1BC74A540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v63 = a4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF3D8, &qword_1BC76EAE8);
  v6 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v8 = (v44 - v7);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF420, &qword_1BC76EB50);
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v12 = v44 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF428, &qword_1BC76EB58);
  v13 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v60 = v44 - v14;
  v55 = sub_1BC75A710();
  v15 = *(v55 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF3C8, &qword_1BC76EAE0);
  v52 = *(v56 - 8);
  v19 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v21 = v44 - v20;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF3C0, &qword_1BC76EAD8);
  v53 = *(v57 - 8);
  v22 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v24 = v44 - v23;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF430, &unk_1BC76EB60);
  v25 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v28 = v44 - v27;
  if (*(a1 + 16) < 2uLL)
  {
    sub_1BC6B6ABC(&v67);
    v64 = v67;
    v65 = v68;
    v66 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10);
    sub_1BC6CBAA8();
    sub_1BC6FC404(&v64, sub_1BC74AF60, 0, v8);
    sub_1BC747F50(v18);
    v39 = sub_1BC633C54(&qword_1EBCDF3E0, &qword_1EBCDF3D8, &qword_1BC76EAE8);
    v40 = v61;
    sub_1BC6F89E4();
    (*(v15 + 8))(v18, v55);
    sub_1BC66008C(v8, &qword_1EBCDF3D8, &qword_1BC76EAE8);
    v41 = v62;
    (*(v9 + 16))(v60, v12, v62);
    swift_storeEnumTagMultiPayload();
    v42 = sub_1BC633C54(&qword_1EBCDF3D0, &qword_1EBCDF3C8, &qword_1BC76EAE0);
    v67.n128_u64[0] = v56;
    v67.n128_u64[1] = v42;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v67.n128_u64[0] = v57;
    v67.n128_u64[1] = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v67.n128_u64[0] = v40;
    v67.n128_u64[1] = v39;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    return (*(v9 + 8))(v12, v41);
  }

  else
  {
    v51 = v26;
    v29 = (a2 + *(type metadata accessor for _ReportOverviewScreen(0) + 52));
    v50 = *v29;
    v49 = *(v29 + 1);
    v64.n128_u8[0] = v50;
    v64.n128_u64[1] = v49;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
    v47 = a2;
    sub_1BC75B660();
    v45 = v67.n128_u64[1];
    v46 = v67.n128_u64[0];
    v44[3] = v68;
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    MEMORY[0x1EEE9AC00](v30);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF438, &qword_1BC76EB70);
    v54 = sub_1BC633C54(&qword_1EBCDF3E0, &qword_1EBCDF3D8, &qword_1BC76EAE8);
    sub_1BC754794();
    v31 = v61;
    sub_1BC75A920();
    sub_1BC747F50(v18);
    v32 = sub_1BC633C54(&qword_1EBCDF3D0, &qword_1EBCDF3C8, &qword_1BC76EAE0);
    v33 = v56;
    sub_1BC6F89E4();
    (*(v15 + 8))(v18, v55);
    (*(v52 + 8))(v21, v33);
    v67.n128_u8[0] = v50;
    v67.n128_u64[1] = v49;
    sub_1BC75B640();
    sub_1BC75A7C0();
    v67.n128_u64[0] = v33;
    v67.n128_u64[1] = v32;
    v34 = swift_getOpaqueTypeConformance2();
    v35 = v57;
    sub_1BC75B2B0();
    (*(v53 + 8))(v24, v35);
    v36 = v51;
    v37 = v58;
    (*(v51 + 16))(v60, v28, v58);
    swift_storeEnumTagMultiPayload();
    v67.n128_u64[0] = v35;
    v67.n128_u64[1] = v34;
    swift_getOpaqueTypeConformance2();
    v67.n128_u64[0] = v31;
    v67.n128_u64[1] = v54;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    return (*(v36 + 8))(v28, v37);
  }
}

uint64_t sub_1BC74AE44(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF448, &qword_1BC76EB78);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v13 - v4);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v13.n128_u64[0] = v7;
  v13.n128_u64[1] = v6;
  v14 = v8;
  v15 = v9;

  sub_1BC6FC4A8(&v13, v5);
  v10 = sub_1BC75B030();
  v11 = v5 + *(v2 + 36);
  *v11 = v10;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  sub_1BC75A7B0();
  sub_1BC754854();
  sub_1BC75B2B0();
  return sub_1BC66008C(v5, &qword_1EBCDF448, &qword_1BC76EB78);
}

uint64_t sub_1BC74AF78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC75B5D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75B5C0();
  (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
  v9 = sub_1BC75B610();

  (*(v5 + 8))(v8, v4);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC590, &unk_1BC766AD0) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC598, &qword_1BC761D20) + 28);
  sub_1BC75ACF0();
  v12 = sub_1BC75AD00();
  (*(*(v12 - 8) + 56))(v10 + v11, 0, 1, v12);
  *v10 = swift_getKeyPath();
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  v13 = a1();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10);
  *(a2 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_1BC74B178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ReportOverviewScreen(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Report.Evidence(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  *&v56 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - v14;
  v16 = *(v5 + 36);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0]();
  v18 = *&v15[*(v10 + 56)];

  sub_1BC750E6C(v15, type metadata accessor for Report.Evidence);
  if (*(v18 + 16))
  {
    v19._object = 0x80000001BC774100;
    v19._countAndFlagsBits = 0xD000000000000011;
    object = SCLocalizedStringKey.init(stringLiteral:)(v19).localized._object;
    v61 = v63;
    v62 = v64;
    v21 = MEMORY[0x1BFB262E0](v17, object);
    sub_1BC6B70D0(&v59, v21);
    v48 = type metadata accessor for Report.Evidence;
    sub_1BC750E6C(v15, type metadata accessor for Report.Evidence);
    v57 = v59;
    v58 = v60;
    v51 = type metadata accessor for _ReportOverviewScreen;
    sub_1BC745FB4(a1, &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _ReportOverviewScreen);
    v50 = v7;
    v22 = *(v6 + 80);
    v23 = v8;
    v47 = v8;
    v24 = (v22 + 24) & ~v22;
    v25 = swift_allocObject();
    *(v25 + 16) = v18;
    v49 = type metadata accessor for _ReportOverviewScreen;
    sub_1BC748158(v23, v25 + v24, type metadata accessor for _ReportOverviewScreen);
    sub_1BC727420();

    sub_1BC6FD0CC(&v61, &v57, 2, sub_1BC753CAC, v25, &v65);
    v55 = v65;
    v46 = v66;
    v26 = v68;
    v53 = v69;
    v54 = v67;
    v52 = v70;
    MEMORY[0x1BFB262E0](v17);
    sub_1BC6B7CBC(&v63);
    v27 = v15;
    v28 = v48;
    sub_1BC750E6C(v27, v48);
    v61 = v63;
    v62 = v64;
    v29 = v56;
    v30 = MEMORY[0x1BFB262E0](v17);
    sub_1BC6B7FC8(&v59, v30);
    sub_1BC750E6C(v29, v28);
    v57 = v59;
    v58 = v60;
    v31 = a1;
    v32 = v47;
    sub_1BC745FB4(v31, v47, v51);
    v33 = swift_allocObject();
    *(v33 + 16) = v18;
    v34 = v46;
    sub_1BC748158(v32, v33 + v24, v49);
    sub_1BC727388();
    sub_1BC6FD0CC(&v61, &v57, 3, sub_1BC754408, v33, &v65);
    v35 = v65;
    v36 = v66;
    v37 = v67;
    v38 = v68;
    v39 = v69;
    v56 = v70;

    v41 = v56;
    v42 = v52;
    v44 = v53;
    v43 = v54;
    v45 = v55;
  }

  else
  {

    v45 = 0;
    v34 = 0;
    v43 = 0;
    v26 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v44 = 0;
    v42 = 0uLL;
    v41 = 0uLL;
  }

  *a2 = v45;
  *(a2 + 8) = v34;
  *(a2 + 16) = v43;
  *(a2 + 24) = v26;
  *(a2 + 32) = v44;
  *(a2 + 40) = v42;
  *(a2 + 56) = v35;
  *(a2 + 64) = v36;
  *(a2 + 72) = v37;
  *(a2 + 80) = v38;
  *(a2 + 88) = v39;
  *(a2 + 96) = v41;
  return result;
}

uint64_t sub_1BC74B614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v4 = type metadata accessor for Report.Message();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v29 = (v35 + *(type metadata accessor for _ReportOverviewScreen(0) + 24));
    v30 = *v29;
    v31 = v29[1];

    result = nullsub_1(v14);
    v32 = v36;
    *v36 = result;
    v32[1] = v33;
    v32[2] = v34;
    return result;
  }

  v11 = *(v6 + 32);
  v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v13 = *(v7 + 72);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1BC745FB4(v12, v9, type metadata accessor for Report.Message);
    v16 = *&v9[v11];

    result = sub_1BC750E6C(v9, type metadata accessor for Report.Message);
    v17 = *(v16 + 16);
    v18 = v14[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= v14[3] >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      v14 = sub_1BC751218(isUniquelyReferenced_nonNull_native, v21, 1, v14, &qword_1EBCDD178, &qword_1BC766458, type metadata accessor for Report.Media);
      if (*(v16 + 16))
      {
LABEL_14:
        v22 = (v14[3] >> 1) - v14[2];
        result = type metadata accessor for Report.Media(0);
        v23 = *(result - 8);
        if (v22 < v17)
        {
          goto LABEL_22;
        }

        v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v25 = *(v23 + 72);
        swift_arrayInitWithCopy();

        if (v17)
        {
          v26 = v14[2];
          v27 = __OFADD__(v26, v17);
          v28 = v26 + v17;
          if (v27)
          {
            goto LABEL_23;
          }

          v14[2] = v28;
        }

        goto LABEL_4;
      }
    }

    if (v17)
    {
      goto LABEL_21;
    }

LABEL_4:
    v12 += v13;
    if (!--v10)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

double sub_1BC74B8B4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Report.Evidence(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27[-1] - v9;

  v12 = sub_1BC74BA60(v11);
  v13 = type metadata accessor for _ReportOverviewScreen(0);
  v14 = *(v13 + 28);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  v16 = MEMORY[0x1BFB262E0]();
  sub_1BC6B8860(v30, v16);
  sub_1BC750E6C(v10, type metadata accessor for Report.Evidence);
  v29[0] = v30[0];
  v29[1] = v30[1];
  v17 = MEMORY[0x1BFB262E0](v15);
  sub_1BC6B7FC8(v28, v17);
  sub_1BC750E6C(v8, type metadata accessor for Report.Evidence);
  v27[0] = v28[0];
  v27[1] = v28[1];
  v18 = (a1 + *(v13 + 24));
  v19 = *v18;
  v20 = v18[1];

  sub_1BC723848(v12, v29, v27, v19, v20, &v31);
  result = *&v31;
  v22 = v32;
  v23 = v33;
  v24 = v35;
  v25 = v34;
  *a2 = v31;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v25;
  *(a2 + 48) = v24;
  return result;
}

uint64_t sub_1BC74BA60(void *a1)
{
  v2 = type metadata accessor for Report.Message();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v17 = &v16 - v8;
  v9 = a1[2];
  if (v9 < 2)
  {
    return a1;
  }

  v10 = 0;
  v11 = v9 >> 1;
  for (i = v9 - 1; ; --i)
  {
    if (v10 == i)
    {
      goto LABEL_5;
    }

    v13 = a1[2];
    if (v10 >= v13)
    {
      break;
    }

    v14 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v15 = *(v16 + 72);
    result = sub_1BC745FB4(a1 + v14 + v15 * v10, v17, type metadata accessor for Report.Message);
    if (i >= v13)
    {
      goto LABEL_14;
    }

    sub_1BC745FB4(a1 + v14 + v15 * i, v6, type metadata accessor for Report.Message);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1BC7513F4(a1);
    }

    result = sub_1BC75447C(v6, a1 + v14 + v15 * v10);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    result = sub_1BC75447C(v17, a1 + v14 + v15 * i);
LABEL_5:
    if (v11 == ++v10)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BC74BC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ReportOverviewScreen(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8._countAndFlagsBits = 0x45554E49544E4F43;
  v8._object = 0xE800000000000000;
  SCLocalizedStringKey.init(stringLiteral:)(v8);
  v28[0] = v28[2];
  v28[1] = v28[3];
  v9 = a1 + *(v5 + 44);
  v10 = *v9;
  v11 = *(v9 + 8);
  LOBYTE(v9) = *(v9 + 16);
  v29 = v10;
  v30 = v11;
  v31 = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF068, &unk_1BC76E388);
  MEMORY[0x1BFB262E0](&v27, v12);
  LOBYTE(v5) = v27;
  sub_1BC745FB4(a1, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _ReportOverviewScreen);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_1BC748158(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for _ReportOverviewScreen);
  sub_1BC71083C(v28, v5, sub_1BC75370C, v14, &v29);
  v15 = v29;
  v16 = v30;
  v17 = v31;
  v26 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5B8, &qword_1BC761DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC75F0C0;
  LOBYTE(v7) = sub_1BC75B030();
  *(inited + 32) = v7;
  v19 = sub_1BC75B050();
  *(inited + 33) = v19;
  v20 = sub_1BC75B040();
  sub_1BC75B040();
  if (sub_1BC75B040() != v7)
  {
    v20 = sub_1BC75B040();
  }

  sub_1BC75B040();
  if (sub_1BC75B040() != v19)
  {
    v20 = sub_1BC75B040();
  }

  result = sub_1BC75A670();
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v26;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22;
  *(a2 + 56) = v23;
  *(a2 + 64) = v24;
  *(a2 + 72) = v25;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_1BC74BEBC(uint64_t a1)
{
  v2 = type metadata accessor for Report.Evidence(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _ReportOverviewScreen(0);
  v7 = (a1 + v6[8]);
  v8 = *(v7 + 8);
  v9 = *(v7 + 32);
  v18 = *v7;
  v19 = v8;
  v20 = *(v7 + 1);
  v21 = v9;
  v16[1] = 0;
  v17 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF328, &qword_1BC76EA50);
  sub_1BC75A690();
  v10 = a1 + v6[10];
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = v6[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0](v14);
  v12(v5);
  return sub_1BC750E6C(v5, type metadata accessor for Report.Evidence);
}

uint64_t sub_1BC74BFF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF320, &qword_1BC76EA48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v34 = v31 - v5;
  v6 = sub_1BC75AE70();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF0F0, &qword_1BC76E3E0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v32 = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF0E0, &qword_1BC76E3D8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v31 - v16;
  v18 = a1 + *(type metadata accessor for _ReportOverviewScreen(0) + 32);
  v19 = *(v18 + 8);
  v20 = *(v18 + 32);
  v37 = *v18;
  LOBYTE(v38) = v19;
  v39 = *(v18 + 16);
  v40 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF328, &qword_1BC76EA50);
  sub_1BC75A680();
  if (v36 == 255 || (LOBYTE(v37) = sub_1BC757F08(v35, v36), LOBYTE(v35) = 9, sub_1BC752D78(), (sub_1BC75BAB0() & 1) == 0))
  {
    (*(v3 + 56))(v15, 1, 1, v2);
    v27 = sub_1BC633C54(&qword_1EBCDF0F8, &qword_1EBCDF0F0, &qword_1BC76E3E0);
    v37 = v8;
    v38 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB25A90](v15, v2, OpaqueTypeConformance2);
    sub_1BC66008C(v15, &qword_1EBCDF0E0, &qword_1BC76E3D8);
  }

  else
  {
    v21 = sub_1BC75AE50();
    v31[1] = v31;
    MEMORY[0x1EEE9AC00](v21);
    v31[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF330, &unk_1BC76EA58);
    v31[0] = v8;
    sub_1BC633C54(&qword_1EBCDF338, &qword_1EBCDF330, &unk_1BC76EA58);
    v22 = v32;
    sub_1BC75A9D0();
    v23 = sub_1BC633C54(&qword_1EBCDF0F8, &qword_1EBCDF0F0, &qword_1BC76E3E0);
    v24 = v34;
    v25 = v31[0];
    MEMORY[0x1BFB25A80](v22, v31[0], v23);
    (*(v3 + 16))(v15, v24, v2);
    (*(v3 + 56))(v15, 0, 1, v2);
    v37 = v25;
    v38 = v23;
    v26 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB25A90](v15, v2, v26);
    sub_1BC66008C(v15, &qword_1EBCDF0E0, &qword_1BC76E3D8);
    (*(v3 + 8))(v24, v2);
    (*(v33 + 8))(v22, v25);
  }

  v29 = sub_1BC750D78();
  MEMORY[0x1BFB25A80](v17, v11, v29);
  return sub_1BC66008C(v17, &qword_1EBCDF0E0, &qword_1BC76E3D8);
}

uint64_t sub_1BC74C540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ReportOverviewScreen(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1C0, &qword_1BC761720);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  v15._countAndFlagsBits = 1162760004;
  v15._object = 0xE400000000000000;
  SCLocalizedStringKey.init(stringLiteral:)(v15);
  v22[0] = v22[2];
  v22[1] = v22[3];
  sub_1BC745FB4(a1, v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _ReportOverviewScreen);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1BC748158(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for _ReportOverviewScreen);
  sub_1BC651F0C(v22);
  v18 = v8[2];
  v18(v12, v14, v7);
  *a2 = 0;
  *(a2 + 8) = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF340, &unk_1BC76EA68);
  v18((a2 + *(v19 + 48)), v12, v7);
  v20 = v8[1];
  v20(v14, v7);
  return (v20)(v12, v7);
}

uint64_t sub_1BC74C7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;

  v4 = sub_1BC651E78(v17);
  v6 = v5;
  v8 = v7;
  sub_1BC75B0E0();
  v9 = sub_1BC75B190();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_1BC680E6C(v4, v6, v8 & 1);

  LOBYTE(v17[0]) = v13 & 1;
  v18 = 1;
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 24) = v15;
  *(a3 + 32) = sub_1BC74C8F4;
  *(a3 + 56) = 1;
  sub_1BC680FFC(v9, v11, v13 & 1);

  sub_1BC680E6C(v9, v11, v13 & 1);
}

void sub_1BC74C91C(uint64_t a1@<X8>)
{
  v3 = v1[1];
  if (v3)
  {
    v4 = *v1;
    v5 = sub_1BC75AC00();
    v15 = 1;
    sub_1BC74C7CC(v4, v3, v12);
    v6 = v12[0];
    v7 = v12[1];
    v8 = v12[2];
    v9 = v13;
    v10 = v14;
    v11 = v15;
  }

  else
  {
    v5 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 24) = v6;
  *(a1 + 40) = v7;
  *(a1 + 56) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = v10;
}

double sub_1BC74C9CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC75AC00();
  v16 = 1;
  sub_1BC74CAD4(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_1BC660024(&v17, &v9, &qword_1EBCDF318, &qword_1BC76EA40);
  sub_1BC66008C(v22, &qword_1EBCDF318, &qword_1BC76EA40);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_1BC74CAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SCLocalizedStringKey.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8._countAndFlagsBits = 0x495243534E415254;
  v8._object = 0xEA00000000005450;
  SCLocalizedStringKey.init(stringLiteral:)(v8);
  v42 = v44;
  v43 = v45;
  v9 = sub_1BC651E78(&v42);
  v37 = v10;
  v38 = v9;
  v36 = v11;
  v39 = v12;
  SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001BC774BC0;
  v13._countAndFlagsBits = 0xD000000000000019;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
  v44 = *(a1 + 16);
  v14 = sub_1BC6C1BE8();
  SCLocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:)(&v44, MEMORY[0x1E69E6530], v14);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
  SCLocalizedStringKey.init(stringInterpolation:)(v7, &v44);
  v42 = v44;
  v43 = v45;
  v16 = sub_1BC651E78(&v42);
  v18 = v17;
  v20 = v19;
  v44 = sub_1BC75B500();
  v21 = sub_1BC75B160();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1BC680E6C(v16, v18, v20 & 1);

  v28 = v36 & 1;
  LOBYTE(v44) = v36 & 1;
  LOBYTE(v42) = v36 & 1;
  v41 = 1;
  v29 = v25 & 1;
  v40 = v25 & 1;
  v30 = v25 & 1;
  v32 = v37;
  v31 = v38;
  *a2 = v38;
  *(a2 + 8) = v32;
  *(a2 + 16) = v28;
  *(a2 + 24) = v39;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v21;
  *(a2 + 56) = v23;
  *(a2 + 64) = v30;
  *(a2 + 72) = v27;
  v33 = v31;
  sub_1BC680FFC(v31, v32, v28);

  sub_1BC680FFC(v21, v23, v29);

  sub_1BC680E6C(v21, v23, v29);

  sub_1BC680E6C(v33, v32, v44);
}

uint64_t sub_1BC74CD30@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ReportTranscriptView(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v1;
  if (*v1)
  {
    MEMORY[0x1EEE9AC00](v5);
    *(&v13 - 2) = v8;
    *(v7 + *(v3 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
    swift_storeEnumTagMultiPayload();
    *v7 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF108, &qword_1BC76E3F0);
    sub_1BC633C54(&qword_1EBCDF110, &qword_1EBCDF108, &qword_1BC76E3F0);
    sub_1BC74820C(&qword_1EBCDF118, type metadata accessor for ReportTranscriptView);
    sub_1BC75A8A0();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF100, &qword_1BC76E3E8);
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF100, &qword_1BC76E3E8);
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t sub_1BC74CFA4(uint64_t *a1)
{
  v2 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCEA0, &qword_1BC764A00);
  sub_1BC759910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF2F0, &qword_1BC76EA18);
  sub_1BC633C54(&qword_1EBCDEBF0, &qword_1EBCDCEA0, &qword_1BC764A00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF130, &qword_1BC76E400);
  sub_1BC633C54(&qword_1EBCDF138, &qword_1EBCDF130, &qword_1BC76E400);
  swift_getOpaqueTypeConformance2();
  sub_1BC74820C(&qword_1EBCDEBF8, type metadata accessor for Report.Message);
  return sub_1BC75B780();
}

uint64_t sub_1BC74D140(uint64_t a1)
{
  v41 = sub_1BC75ABF0();
  v58 = 1;
  v40 = sub_1BC75ACE0();
  v78 = 1;
  v39 = sub_1BC75AC00();
  v59[0] = 1;
  *&v75 = sub_1BC72C630();
  *(&v75 + 1) = v2;
  sub_1BC651EB8();
  v3 = sub_1BC75B1B0();
  v5 = v4;
  v7 = v6;
  sub_1BC75B0E0();
  v8 = sub_1BC75B190();
  v42 = v9;
  v43 = v8;
  v37 = v10;
  v34 = v11;

  sub_1BC680E6C(v3, v5, v7 & 1);

  v35 = type metadata accessor for Report.Message();
  v12 = (a1 + *(v35 + 24));
  v13 = v12[1];
  *&v75 = *v12;
  *(&v75 + 1) = v13;

  v14 = sub_1BC75B1B0();
  v16 = v15;
  v18 = v17;
  sub_1BC75B0C0();
  v19 = sub_1BC75B190();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_1BC680E6C(v14, v16, v18 & 1);

  LOBYTE(v14) = v37 & 1;
  LOBYTE(v62) = v37 & 1;
  LOBYTE(v75) = v37 & 1;
  LOBYTE(v44) = v23 & 1;
  sub_1BC680FFC(v43, v42, v37 & 1);

  sub_1BC680FFC(v19, v21, v23 & 1);

  v33 = v19;
  sub_1BC680E6C(v19, v21, v23 & 1);

  sub_1BC680E6C(v43, v42, v37 & 1);

  v38 = sub_1BC75AC00();
  v26 = (a1 + *(v35 + 28));
  v27 = v26[1];
  *&v75 = *v26;
  *(&v75 + 1) = v27;

  *&v36 = sub_1BC75B1B0();
  *(&v36 + 1) = v28;
  v30 = v29;
  v44 = v39;
  v45[0] = 1;
  *&v45[1] = *v59;
  *&v45[4] = *&v59[3];
  *&v45[8] = v43;
  *&v45[16] = v42;
  v45[24] = v14;
  *&v45[28] = *(&v46 + 3);
  *&v45[25] = v46;
  *&v45[32] = v34;
  *&v45[40] = v19;
  *&v45[48] = v21;
  v45[56] = v23 & 1;
  *&v45[60] = *(v88 + 3);
  *&v45[57] = v88[0];
  *&v45[64] = v25;
  LOBYTE(v79) = 1;
  LOBYTE(v19) = v31 & 1;
  v98 = v31 & 1;
  *&v67 = v25;
  v65 = *&v45[32];
  v66 = *&v45[48];
  v63 = *v45;
  v64 = *&v45[16];
  v62 = v39;
  sub_1BC660024(&v44, &v75, &qword_1EBCDF310, &qword_1BC76EA38);
  sub_1BC680FFC(v36, *(&v36 + 1), v19);

  sub_1BC680E6C(v36, *(&v36 + 1), v19);

  v75 = v39;
  v76[0] = 1;
  *&v76[1] = *v59;
  *&v76[4] = *&v59[3];
  *&v76[8] = v43;
  *&v76[16] = v42;
  v76[24] = v14;
  *&v76[25] = v46;
  *&v76[28] = *(&v46 + 3);
  *&v76[32] = v34;
  *&v76[40] = v33;
  *&v76[48] = v21;
  v76[56] = v23 & 1;
  *&v76[60] = *(v88 + 3);
  *&v76[57] = v88[0];
  *&v76[64] = v25;
  sub_1BC66008C(&v75, &qword_1EBCDF310, &qword_1BC76EA38);
  v81 = v64;
  v82 = v65;
  v83 = v66;
  v79 = v62;
  v80 = v63;
  v88[1] = v63;
  v88[0] = v62;
  HIDWORD(v85) = *(&v44 + 3);
  *(&v85 + 9) = v44;
  DWORD1(v87) = *&v59[3];
  *(&v87 + 1) = *v59;
  *&v84 = v67;
  *(&v84 + 1) = v38;
  *&v85 = 0;
  BYTE8(v85) = 1;
  v86 = v36;
  LOBYTE(v87) = v19;
  *(&v87 + 1) = v30;
  v88[4] = v66;
  v88[3] = v65;
  v88[2] = v64;
  v89 = v67;
  v90 = v38;
  v91 = 0;
  v92 = 1;
  *&v93[3] = *(&v44 + 3);
  *v93 = v44;
  v94 = v36;
  v95 = v19;
  *&v96[3] = *&v59[3];
  *v96 = *v59;
  v97 = v30;
  sub_1BC660024(&v79, &v75, &qword_1EBCDF300, &qword_1BC76EA28);
  sub_1BC66008C(v88, &qword_1EBCDF300, &qword_1BC76EA28);
  *&v59[39] = v81;
  *&v59[23] = v80;
  *&v59[87] = v84;
  *&v59[103] = v85;
  *&v59[119] = v86;
  *&v59[135] = v87;
  *&v59[55] = v82;
  *&v59[71] = v83;
  *&v59[7] = v79;
  v44 = v40;
  v45[0] = v78;
  *&v45[33] = *&v59[32];
  *&v45[97] = *&v59[96];
  *&v45[113] = *&v59[112];
  *&v45[129] = *&v59[128];
  *&v45[49] = *&v59[48];
  *&v45[65] = *&v59[64];
  *&v45[81] = *&v59[80];
  *&v45[1] = *v59;
  *&v45[17] = *&v59[16];
  v54 = *&v45[112];
  v55 = *&v45[128];
  v50 = *&v45[48];
  v51 = *&v45[64];
  v52 = *&v45[80];
  v53 = *&v45[96];
  v46 = v40;
  v47 = *v45;
  v48 = *&v45[16];
  v49 = *&v45[32];
  *&v76[97] = *&v59[96];
  *&v76[113] = *&v59[112];
  *&v76[129] = *&v59[128];
  *&v76[33] = *&v59[32];
  *&v76[49] = *&v59[48];
  *&v76[65] = *&v59[64];
  *&v76[81] = *&v59[80];
  *&v76[1] = *v59;
  *&v45[144] = *(&v87 + 1);
  v98 = 1;
  v56 = *(&v87 + 1);
  v75 = v40;
  v76[0] = v78;
  *&v76[144] = *(&v87 + 1);
  *&v76[17] = *&v59[16];
  sub_1BC660024(&v44, &v62, &qword_1EBCDF308, &qword_1BC76EA30);
  sub_1BC66008C(&v75, &qword_1EBCDF308, &qword_1BC76EA30);
  *&v59[128] = v54;
  *&v59[144] = v55;
  *&v59[64] = v50;
  *&v59[80] = v51;
  *&v59[96] = v52;
  *&v59[112] = v53;
  *v59 = v46;
  *&v59[16] = v47;
  *&v59[32] = v48;
  *&v59[48] = v49;
  v70 = v54;
  v71 = v55;
  v66 = v50;
  v67 = v51;
  v68 = v52;
  v69 = v53;
  v62 = v46;
  v63 = v47;
  v60 = v56;
  v61 = 1;
  v64 = v48;
  v65 = v49;
  v72 = v56;
  v73 = 0;
  v74 = 1;
  sub_1BC660024(v59, &v75, &qword_1EBCDF2F8, &qword_1BC76EA20);
  sub_1BC66008C(&v62, &qword_1EBCDF2F8, &qword_1BC76EA20);
  *&v57[135] = *&v59[128];
  *&v57[151] = *&v59[144];
  *&v57[167] = v60;
  *&v57[71] = *&v59[64];
  *&v57[87] = *&v59[80];
  *&v57[103] = *&v59[96];
  *&v57[119] = *&v59[112];
  *&v57[7] = *v59;
  *&v57[23] = *&v59[16];
  *&v57[39] = *&v59[32];
  *&v57[55] = *&v59[48];
  *&v45[129] = *&v57[128];
  *&v45[145] = *&v57[144];
  *&v45[161] = *&v57[160];
  *&v45[65] = *&v57[64];
  *&v45[81] = *&v57[80];
  *&v45[97] = *&v57[96];
  *&v45[113] = *&v57[112];
  *&v45[1] = *v57;
  *&v45[17] = *&v57[16];
  *&v45[33] = *&v57[32];
  v57[183] = v61;
  v44 = v41;
  v45[0] = v58;
  *&v45[177] = *&v57[176];
  *&v45[49] = *&v57[48];
  sub_1BC75A7B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF130, &qword_1BC76E400);
  sub_1BC633C54(&qword_1EBCDF138, &qword_1EBCDF130, &qword_1BC76E400);
  sub_1BC75B2B0();
  *&v76[144] = *&v45[144];
  v77[0] = *&v45[160];
  *(v77 + 9) = *&v45[169];
  *&v76[80] = *&v45[80];
  *&v76[96] = *&v45[96];
  *&v76[128] = *&v45[128];
  *&v76[112] = *&v45[112];
  *&v76[16] = *&v45[16];
  *&v76[32] = *&v45[32];
  *&v76[64] = *&v45[64];
  *&v76[48] = *&v45[48];
  *v76 = *v45;
  v75 = v44;
  return sub_1BC66008C(&v75, &qword_1EBCDF130, &qword_1BC76E400);
}

uint64_t (*sub_1BC74D9BC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1BC745FB4(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportTranscriptView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1BC748158(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ReportTranscriptView);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF120, &qword_1BC76E3F8);
  v9 = sub_1BC750EF8();
  return sub_1BC6F6778(sub_1BC755C9C, v7, v8, v9, a2);
}

uint64_t sub_1BC74DB00@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  result = sub_1BC75B630();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v21;
  *(a9 + 56) = v22;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  return result;
}

__n128 sub_1BC74DBB4@<Q0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, unint64_t a3@<X4>, unint64_t a4@<X5>, unint64_t a5@<X6>, unsigned __int8 a6@<W7>, __n128 *a7@<X8>)
{
  sub_1BC75B630();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE78, &qword_1BC7649F0);
  sub_1BC75B750();

  result = v17;
  a7->n128_u64[0] = a1;
  a7->n128_u8[8] = a2;
  a7[1].n128_u64[0] = v15;
  a7[1].n128_u64[1] = v16;
  a7[2] = v17;
  a7[3].n128_u8[0] = v15;
  a7[3].n128_u64[1] = v16;
  a7[4].n128_u64[0] = a3;
  a7[4].n128_u64[1] = a4;
  a7[5].n128_u64[0] = a5;
  a7[5].n128_u8[8] = a6;
  return result;
}

uint64_t sub_1BC74DC98()
{
  v1 = sub_1BC757DC0(*v0, *(v0 + 8));
  if (!sub_1BC758D2C(v1 & 1, 0))
  {
    v7 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
    sub_1BC75B640();
    if ((v5 & 1) == 0)
    {
      v2 = *(v0 + 32);
      v7 = *(v0 + 16);
      v8 = v2;
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF140, &unk_1BC76E408);
      MEMORY[0x1BFB262E0](&v5, v3);
      result = v6;
      if (!v6)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_1BC74DD44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v165 = a2;
  v164 = sub_1BC75A8D0();
  v163 = *(v164 - 8);
  v3 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF238, &qword_1BC76E878);
  v5 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v160 = &v121 - v6;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF240, &qword_1BC76E880);
  v123 = *(v161 - 8);
  v7 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v122 = &v121 - v8;
  v140 = sub_1BC75A760();
  v137 = *(v140 - 8);
  v9 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v135 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF248, &qword_1BC76E888);
  v129 = *(v131 - 8);
  v11 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v125 = &v121 - v12;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF250, &qword_1BC76E890);
  v13 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v121 - v14;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF258, &qword_1BC76E898);
  v130 = *(v132 - 8);
  v15 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v126 = &v121 - v16;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF260, &qword_1BC76E8A0);
  v17 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v134 = &v121 - v18;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF268, &qword_1BC76E8A8);
  v19 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v139 = &v121 - v20;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF270, &qword_1BC76E8B0);
  v21 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v141 = &v121 - v22;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF278, &qword_1BC76E8B8);
  v23 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v121 - v24;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF280, &qword_1BC76E8C0);
  v145 = *(v146 - 8);
  v25 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v121 - v26;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF288, &qword_1BC76E8C8);
  v27 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v147 = &v121 - v28;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF290, &qword_1BC76E8D0);
  v154 = *(v155 - 8);
  v29 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v121 - v30;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF298, &qword_1BC76E8D8);
  v157 = *(v159 - 8);
  v31 = *(v157 + 64);
  v32 = MEMORY[0x1EEE9AC00](v159);
  v156 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v166 = &v121 - v34;
  v35 = *a1;
  v36 = *(a1 + 8);
  LOBYTE(v167) = sub_1BC757F08(*a1, v36);
  LOBYTE(v172) = 10;
  sub_1BC752D78();
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if ((sub_1BC75BAB0() & 1) == 0)
  {
    sub_1BC7572F8(v35, v36, &v167);
    v172 = v167;
    v37 = sub_1BC651E78(&v172);
    v38 = v41;
    v40 = v42;
    v39 = v43 & 1;
    sub_1BC680FFC(v37, v41, v43 & 1);
  }

  v148 = v39;
  v149 = v40;
  v150 = v38;
  v151 = v37;
  sub_1BC7572F8(v35, v36, v171);
  v170[0] = v171[0];
  v170[1] = v171[1];
  v44 = *(a1 + 32);
  v172 = *(a1 + 16);
  v173 = v44;
  v45 = *(a1 + 32);
  v167 = *(a1 + 16);
  v168 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF140, &unk_1BC76E408);
  sub_1BC75B730();
  v47 = v169[0];
  v48 = v169[1];
  v50 = v169[2];
  v49 = v169[3];
  swift_getKeyPath();
  *&v167 = v47;
  *(&v167 + 1) = v48;
  *&v168 = v50;
  *(&v168 + 1) = v49;
  v136 = v46;
  sub_1BC75B720();

  v51 = sub_1BC757F08(v35, v36);
  sub_1BC6FCFF0(v51, 10);
  v52 = v125;
  sub_1BC652168(v170);
  v53 = sub_1BC757F08(v35, v36);
  if (sub_1BC6FCFF0(v53, 10))
  {
    v54 = 0;
  }

  else
  {
    v54 = 2;
  }

  KeyPath = swift_getKeyPath();
  v56 = v128;
  (*(v129 + 32))(v128, v52, v131);
  v57 = v56 + *(v127 + 36);
  *v57 = KeyPath;
  *(v57 + 8) = v54;
  v58 = v135;
  sub_1BC75A750();
  sub_1BC752DCC();
  v59 = v126;
  sub_1BC75B230();
  (*(v137 + 8))(v58, v140);
  sub_1BC66008C(v56, &qword_1EBCDF250, &qword_1BC76E890);
  v60 = sub_1BC75B090();
  v61 = swift_getKeyPath();
  v62 = v134;
  (*(v130 + 32))(v134, v59, v132);
  v63 = (v62 + *(v124 + 36));
  *v63 = v61;
  v63[1] = v60;
  v64 = sub_1BC757D6C(v35, v36);
  if (sub_1BC758D2C(v64, 0))
  {
    v65 = sub_1BC75B500();
  }

  else
  {
    v65 = 0;
  }

  v66 = v139;
  v67 = swift_getKeyPath();
  sub_1BC65FFBC(v62, v66, &qword_1EBCDF260, &qword_1BC76E8A0);
  v68 = (v66 + *(v133 + 36));
  *v68 = v67;
  v68[1] = v65;
  v69 = sub_1BC757E10(v35, v36);
  v70 = swift_getKeyPath();
  v71 = v144;
  v72 = v143;
  if (v69)
  {
    v73 = sub_1BC75BB60();
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 0;
  }

  v76 = v141;
  sub_1BC65FFBC(v66, v141, &qword_1EBCDF268, &qword_1BC76E8A8);
  v77 = (v76 + *(v138 + 36));
  *v77 = v70;
  v77[1] = v73;
  v77[2] = v75;
  v78 = sub_1BC757D6C(v35, v36);
  v79 = sub_1BC758D2C(v78, 0);
  v80 = swift_getKeyPath();
  v81 = swift_allocObject();
  *(v81 + 16) = v79;
  v82 = v142;
  sub_1BC65FFBC(v76, v142, &qword_1EBCDF270, &qword_1BC76E8B0);
  v83 = (v82 + *(v72 + 36));
  *v83 = v80;
  v83[1] = sub_1BC6FFF88;
  v83[2] = v81;
  sub_1BC757F58(v35, v36);
  v84 = sub_1BC752EB0();
  sub_1BC75B240();
  sub_1BC66008C(v82, &qword_1EBCDF278, &qword_1BC76E8B8);
  v85 = sub_1BC757F08(v35, v36);
  if (sub_1BC6FCFF0(v85, 10))
  {
    *&v167 = v72;
    *(&v167 + 1) = v84;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v87 = v122;
    v88 = v146;
    sub_1BC75B460();
    v89 = v123;
    v90 = v161;
    (*(v123 + 16))(v160, v87, v161);
    swift_storeEnumTagMultiPayload();
    *&v167 = v88;
    *(&v167 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v91 = v147;
    sub_1BC75AE00();
    (*(v89 + 8))(v87, v90);
    v92 = v145;
  }

  else
  {
    v92 = v145;
    v88 = v146;
    (*(v145 + 16))(v160, v71, v146);
    swift_storeEnumTagMultiPayload();
    *&v167 = v72;
    *(&v167 + 1) = v84;
    v93 = swift_getOpaqueTypeConformance2();
    *&v167 = v88;
    *(&v167 + 1) = v93;
    swift_getOpaqueTypeConformance2();
    v91 = v147;
    sub_1BC75AE00();
  }

  (*(v92 + 8))(v71, v88);
  v167 = v172;
  v168 = v173;
  MEMORY[0x1BFB262E0](v169, v136);
  v94 = swift_allocObject();
  v95 = *(a1 + 48);
  v94[3] = *(a1 + 32);
  v94[4] = v95;
  v94[5] = *(a1 + 64);
  *(v94 + 89) = *(a1 + 73);
  v96 = *(a1 + 16);
  v94[1] = *a1;
  v94[2] = v96;
  sub_1BC6FFBC8(a1, &v167);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE78, &qword_1BC7649F0);
  v98 = sub_1BC753400();
  v99 = sub_1BC753508();
  v100 = v153;
  v101 = v152;
  sub_1BC75B420();

  sub_1BC66008C(v91, &qword_1EBCDF288, &qword_1BC76E8C8);
  v102 = swift_allocObject();
  v103 = *(a1 + 48);
  v102[3] = *(a1 + 32);
  v102[4] = v103;
  v102[5] = *(a1 + 64);
  *(v102 + 89) = *(a1 + 73);
  v104 = *(a1 + 16);
  v102[1] = *a1;
  v102[2] = v104;
  sub_1BC6FFBC8(a1, &v167);
  v105 = v162;
  sub_1BC75A8C0();
  *&v167 = v101;
  *(&v167 + 1) = v97;
  *&v168 = v98;
  *(&v168 + 1) = v99;
  swift_getOpaqueTypeConformance2();
  v106 = v166;
  v107 = v155;
  sub_1BC75B440();

  (*(v163 + 8))(v105, v164);
  (*(v154 + 8))(v100, v107);
  v108 = v157;
  v109 = *(v157 + 16);
  v110 = v156;
  v111 = v106;
  v112 = v159;
  v109(v156, v111, v159);
  v113 = v165;
  v114 = v151;
  v115 = v150;
  *v165 = v151;
  v113[1] = v115;
  v116 = v148;
  v117 = v149;
  v113[2] = v148;
  v113[3] = v117;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF2E8, &qword_1BC76EA10);
  v109(v113 + *(v118 + 48), v110, v112);
  sub_1BC680FB8(v114, v115, v116, v117);
  sub_1BC68100C(v114, v115, v116, v117);
  v119 = *(v108 + 8);
  v119(v166, v112);
  v119(v110, v112);
  return sub_1BC68100C(v114, v115, v116, v117);
}

uint64_t sub_1BC74EF24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1BC74EF60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    *a2 = *a1;
    a2[1] = v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t sub_1BC74EF8C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a2[1];

  v7 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v4 = 0;
    v3 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1BC74EFF4(_OWORD *a1)
{
  v2 = a1[2];
  v8 = a1[1];
  v9 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF140, &unk_1BC76E408);
  MEMORY[0x1BFB262E0](&v6, v3);
  v4 = v7;
  if (v7)
  {
  }

  v8 = a1[3];
  LOBYTE(v6) = v4 != 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  return sub_1BC75B650();
}

uint64_t sub_1BC74F08C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF148, &qword_1BC76E418);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF150, &qword_1BC76E420);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20[-v10];
  v12 = v1[3];
  v23 = v1[2];
  v24 = v12;
  v25[0] = v1[4];
  *(v25 + 9) = *(v1 + 73);
  v13 = v1[1];
  v21 = *v1;
  v22 = v13;
  if (sub_1BC74DC98())
  {
    *v7 = sub_1BC75AC00();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF160, &qword_1BC76E430);
    sub_1BC74DD44(&v21, &v7[*(v14 + 44)]);
    sub_1BC65FFBC(v7, v11, &qword_1EBCDF148, &qword_1BC76E418);
    (*(v4 + 56))(v11, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v11, 1, 1, v3);
  }

  sub_1BC65FFBC(v11, a1, &qword_1EBCDF150, &qword_1BC76E420);
  v15 = swift_allocObject();
  v16 = v24;
  v15[3] = v23;
  v15[4] = v16;
  v15[5] = v25[0];
  *(v15 + 89) = *(v25 + 9);
  v17 = v22;
  v15[1] = v21;
  v15[2] = v17;
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF158, &qword_1BC76E428) + 36));
  *v18 = sub_1BC755C8C;
  v18[1] = v15;
  v18[2] = 0;
  v18[3] = 0;
  return sub_1BC6FFBC8(&v21, v20);
}

uint64_t sub_1BC74F2D8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 36);
  v4 = *(a1 + 16);
  sub_1BC75C110();
  v5 = sub_1BC75B760();
  return a2(v5);
}

uint64_t sub_1BC74F330@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1BC75C2A0();
  *a2 = v7;
  v4 = *(type metadata accessor for CheckSelector() + 36);
  sub_1BC75C110();
  v5 = sub_1BC75B760();
  return (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
}

uint64_t sub_1BC74F3E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = *(a1 - 8);
  v29 = &v28 - ((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(MEMORY[0x1EEE9AC00](a1) + 16);
  v5 = sub_1BC75BD70();
  v37 = v5;
  v30 = *(a1 + 24);
  v33 = *(v30 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = AssociatedTypeWitness;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF168, &qword_1BC76E438);
  v35 = v7;
  WitnessTable = swift_getWitnessTable();
  v34 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = v5;
  v42 = AssociatedTypeWitness;
  v43 = v7;
  v44 = WitnessTable;
  v45 = AssociatedConformanceWitness;
  v10 = sub_1BC75B790();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v28 - v16;
  v40 = *v32;
  v17 = v29;
  (*(v3 + 16))(v29);
  v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v19 = swift_allocObject();
  v20 = v30;
  *(v19 + 16) = v4;
  *(v19 + 24) = v20;
  (*(v3 + 32))(v19 + v18, v17, a1);

  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF170, &qword_1BC76E440);
  v22 = sub_1BC7515E0();
  v41 = v21;
  v42 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BC75B780();
  v39 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v24 = v11[2];
  v25 = v31;
  v24(v31, v15, v10);
  v26 = v11[1];
  v26(v15, v10);
  v24(v38, v25, v10);
  return (v26)(v25, v10);
}

uint64_t sub_1BC74F788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v28 = a2;
  v32 = a5;
  v8 = *(a3 - 8);
  v31 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v11;
  v29 = type metadata accessor for CheckSelector();
  v12 = *(v29 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v15 = &v26 - v14;
  v16 = sub_1BC75AC00();
  LOBYTE(v38[0]) = 1;
  v17 = a1;
  v18 = v28;
  sub_1BC74FAC8(v17, v28, a3, a4, v36);
  *&v35[55] = v37;
  *&v35[39] = v36[2];
  *&v35[23] = v36[1];
  *&v35[7] = v36[0];
  *(&v34[1] + 1) = *&v35[16];
  *(&v34[2] + 1) = *&v35[32];
  *(&v34[3] + 1) = *&v35[48];
  v33 = v16;
  LOBYTE(v34[0]) = v38[0];
  *&v34[4] = *(&v37 + 1);
  *(v34 + 1) = *v35;
  BYTE8(v34[4]) = 0;
  v19 = v29;
  (*(v12 + 16))(v15, v18, v29);
  v20 = v10;
  (*(v8 + 16))(v10, v27, a3);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = (v13 + *(v8 + 80) + v21) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v24 = v30;
  *(v23 + 16) = a3;
  *(v23 + 24) = v24;
  (*(v12 + 32))(v23 + v21, v15, v19);
  (*(v8 + 32))(v23 + v22, v20, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF170, &qword_1BC76E440);
  sub_1BC7515E0();
  sub_1BC75B250();

  v38[2] = v34[1];
  v38[3] = v34[2];
  v39[0] = v34[3];
  *(v39 + 9) = *(&v34[3] + 9);
  v38[0] = v33;
  v38[1] = v34[0];
  return sub_1BC66008C(v38, &qword_1EBCDF170, &qword_1BC76E440);
}

uint64_t sub_1BC74FAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v62 = a2;
  v68 = a5;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC75C110();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v58 = *(TupleTypeMetadata2 - 8);
  v13 = *(v58 + 64);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v55 - v15;
  v61 = *(v11 - 8);
  v17 = *(v61 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v55 - v23;
  (*(a4 + 24))(v70, a3, a4);
  v69[0] = v70[0];
  v69[1] = v70[1];
  v25 = sub_1BC651E78(v69);
  v65 = v26;
  v66 = v25;
  v64 = v27;
  v67 = v28;
  (*(v8 + 16))(v24, a1, a3);
  (*(v8 + 56))(v24, 0, 1, a3);
  v57 = a4;
  v29 = type metadata accessor for CheckSelector();
  sub_1BC74F2D8(v29, MEMORY[0x1E6981920]);
  v59 = TupleTypeMetadata2;
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = v61;
  v32 = *(v61 + 16);
  v32(v16, v24, v11);
  v62 = v30;
  v33 = &v16[v30];
  v34 = v11;
  v32(v33, v22, v11);
  v60 = v8;
  v35 = *(v8 + 48);
  if (v35(v16, 1, a3) == 1)
  {
    v36 = *(v31 + 8);
    v36(v22, v34);
    v36(v24, v34);
    if (v35(&v16[v62], 1, a3) == 1)
    {
      v36(v16, v34);
LABEL_9:
      v40 = sub_1BC75B5C0();
      v41 = sub_1BC75B4F0();

      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v55 = v24;
  v37 = v31;
  v32(v63, v16, v34);
  v38 = v62;
  if (v35(&v16[v62], 1, a3) == 1)
  {
    v39 = *(v31 + 8);
    v39(v22, v34);
    v39(v55, v34);
    (*(v60 + 8))(v63, a3);
LABEL_6:
    (*(v58 + 8))(v16, v59);
    goto LABEL_7;
  }

  v42 = v60;
  v43 = v56;
  (*(v60 + 32))(v56, &v16[v38], a3);
  v44 = *(v57 + 8);
  v45 = v63;
  v46 = sub_1BC75BAB0();
  v47 = *(v42 + 8);
  v47(v43, a3);
  v48 = *(v37 + 8);
  v48(v22, v34);
  v48(v55, v34);
  v47(v45, a3);
  v48(v16, v34);
  if (v46)
  {
    goto LABEL_9;
  }

LABEL_7:
  v40 = 0;
  v41 = 0;
LABEL_10:
  v49 = v64 & 1;
  v51 = v65;
  v50 = v66;
  sub_1BC680FFC(v66, v65, v64 & 1);
  v52 = v67;

  sub_1BC752CF8(v40);
  sub_1BC752D38(v40);
  LOBYTE(v70[0]) = v49;
  LOBYTE(v69[0]) = 1;
  v53 = v68;
  *v68 = v50;
  v53[1] = v51;
  *(v53 + 16) = v49;
  v53[3] = v52;
  v53[4] = 0;
  *(v53 + 40) = 1;
  v53[6] = v40;
  v53[7] = v41;
  sub_1BC752D38(v40);
  sub_1BC680E6C(v50, v51, v49);
}

uint64_t sub_1BC750090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BC75C110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *(a3 - 8);
  (*(v10 + 16))(&v13 - v8, a2, a3);
  (*(v10 + 56))(v9, 0, 1, a3);
  v11 = type metadata accessor for CheckSelector();
  sub_1BC751440(v9, v11);
  return (*(v6 + 8))(v9, v5);
}

id sub_1BC7501F0()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  qword_1EBCF4730 = result;
  return result;
}

uint64_t *sub_1BC750224()
{
  if (qword_1EBCF32F0 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF4730;
}

uint64_t sub_1BC750274@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(_s6VictimVMa(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC748BD8(v1 + v4, v1 + v7, v8, a1);
}

uint64_t objectdestroy_18Tm_1()
{
  v1 = type metadata accessor for _ReportOverviewScreen(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v86 = *(*(v1 - 1) + 64);
  v87 = v0;
  v4 = v0 + v3;
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v31 = *(v4 + 8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_1BC759910();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v0 + v3, 1, v6))
      {
        (*(v7 + 8))(v0 + v3, v6);
      }

      v8 = type metadata accessor for Report.Evidence(0);
      v9 = (v4 + v8[6]);
      v10 = *(v9 + 1);

      v11 = *(v9 + 3);

      v12 = *(v9 + 5);

      v13 = *(v9 + 7);

      v14 = *(v9 + 9);

      v15 = *(v9 + 11);

      v16 = *(v9 + 13);

      v17 = *(v9 + 15);

      v18 = *(v9 + 17);

      v19 = *(v9 + 19);

      v20 = *(v9 + 21);

      v21 = *(v9 + 23);

      v22 = _s6VictimVMa(0);
      (*(v7 + 8))(&v9[*(v22 + 44)], v6);
      v23 = *(v4 + v8[7]);

      v24 = *(v4 + v8[9] + 8);

      v25 = *(v4 + v8[12]);

      v26 = (v4 + v8[13]);
      v27 = v26[1];
      if (v27 >> 60 != 15)
      {
        sub_1BC6AE140(*v26, v27);
      }

      v28 = *(v4 + v8[14] + 8);

      v29 = *(v4 + v8[16] + 8);

      v30 = *(v4 + v8[17] + 8);
    }
  }

  else
  {
    v32 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v32 - 8) + 48))(v0 + v3, 1, v32))
    {
      v33 = *(v4 + 8);

      v34 = *(v4 + 32);

      v35 = *(v32 + 28);
      v36 = sub_1BC759800();
      v37 = *(*(v36 - 8) + 8);
      v37(v4 + v35, v36);
      v37(v4 + *(v32 + 32), v36);
    }
  }

  v38 = v4 + v1[5];
  v39 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v40 = *(v38 + 8);

    v41 = *(v38 + 32);

    v42 = *(v39 + 28);
    v43 = sub_1BC759800();
    v44 = *(*(v43 - 8) + 8);
    v44(v38 + v42, v43);
    v44(v38 + *(v39 + 32), v43);
  }

  v45 = *(v4 + v1[6] + 8);

  v46 = (v4 + v1[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32);
  v50 = sub_1BC759910();
  v51 = *(v50 - 8);
  if (!(*(v51 + 48))(v49, 1, v50))
  {
    (*(v51 + 8))(v49, v50);
  }

  v52 = type metadata accessor for Report.Evidence(0);
  v53 = &v49[v52[6]];
  v54 = *(v53 + 1);

  v55 = *(v53 + 3);

  v56 = *(v53 + 5);

  v57 = *(v53 + 7);

  v58 = *(v53 + 9);

  v59 = *(v53 + 11);

  v60 = *(v53 + 13);

  v61 = *(v53 + 15);

  v62 = *(v53 + 17);

  v63 = *(v53 + 19);

  v64 = *(v53 + 21);

  v65 = *(v53 + 23);

  v66 = _s6VictimVMa(0);
  (*(v51 + 8))(&v53[*(v66 + 44)], v50);
  v67 = *&v49[v52[7]];

  v68 = *&v49[v52[9] + 8];

  v69 = *&v49[v52[12]];

  v70 = &v49[v52[13]];
  v71 = v70[1];
  if (v71 >> 60 != 15)
  {
    sub_1BC6AE140(*v70, v71);
  }

  v72 = *&v49[v52[14] + 8];

  v73 = *&v49[v52[16] + 8];

  v74 = *&v49[v52[17] + 8];

  v75 = *(v4 + v1[8] + 16);

  v76 = (v4 + v1[9]);
  v77 = *v76;

  v78 = v76[1];

  v79 = *(v4 + v1[10] + 8);

  v80 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v81 = sub_1BC75A710();
    (*(*(v81 - 8) + 8))(v4 + v80, v81);
  }

  else
  {
    v82 = *(v4 + v80);
  }

  v83 = *(v4 + v1[12] + 8);

  v84 = *(v4 + v1[13] + 8);

  return MEMORY[0x1EEE6BDD0](v87, v3 + v86, v2 | 7);
}

uint64_t sub_1BC750A28(uint64_t a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for _ReportOverviewScreen(0);
  v5 = *a2;
  v6 = v2 + *(v4 + 36) + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));
  v8 = *v6;
  v7 = *(v6 + 8);
  v9 = *(v6 + 16);
  v13 = *v6;
  v14 = v7;
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF068, &unk_1BC76E388);
  MEMORY[0x1BFB262E0](&v12);
  LOBYTE(v13) = 0;
  sub_1BC710C60();
  result = sub_1BC75BAB0();
  if ((result & 1) == 0)
  {
    v13 = v8;
    v14 = v7;
    v15 = v9;
    if (v5)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = v11;
    return sub_1BC75B710();
  }

  return result;
}

unint64_t sub_1BC750B38()
{
  result = qword_1EBCDF0B0;
  if (!qword_1EBCDF0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF098, &qword_1BC76E3B8);
    sub_1BC633C54(&qword_1EBCDF0B8, &qword_1EBCDF0C0, &qword_1BC76E3C8);
    sub_1BC633C54(&qword_1EBCDF0C8, &qword_1EBCDF0A0, &qword_1BC76E3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF0B0);
  }

  return result;
}

unint64_t sub_1BC750C24()
{
  result = qword_1EBCDF0D8;
  if (!qword_1EBCDF0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF080, &qword_1BC76E3A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF078, &qword_1BC76E3A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF070, &qword_1BC76E398);
    sub_1BC7528DC(&qword_1EBCDF0A8, &qword_1EBCDF070, &qword_1BC76E398, sub_1BC750B38);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF0D8);
  }

  return result;
}

unint64_t sub_1BC750D78()
{
  result = qword_1EBCDF0E8;
  if (!qword_1EBCDF0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF0E0, &qword_1BC76E3D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF0F0, &qword_1BC76E3E0);
    sub_1BC633C54(&qword_1EBCDF0F8, &qword_1EBCDF0F0, &qword_1BC76E3E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF0E8);
  }

  return result;
}

uint64_t sub_1BC750E6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC750EF8()
{
  result = qword_1EBCDF128;
  if (!qword_1EBCDF128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF120, &qword_1BC76E3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF130, &qword_1BC76E400);
    sub_1BC633C54(&qword_1EBCDF138, &qword_1EBCDF130, &qword_1BC76E400);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF128);
  }

  return result;
}

uint64_t sub_1BC751040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v16 - v13;
  sub_1BC660024(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

char *sub_1BC7510EC(char *a1, int64_t a2, char a3)
{
  result = sub_1BC75110C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BC75110C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD180, &qword_1BC766460);
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

size_t sub_1BC751218(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_1BC751440(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1BC75C110();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = *(a2 + 36);
  (*(v9 + 16))(&v11 - v7, a1, v5);
  sub_1BC75B760();
  return sub_1BC75B710();
}

uint64_t sub_1BC751544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for CheckSelector() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1BC74F788(a1, v8, v5, v6, a2);
}

unint64_t sub_1BC7515E0()
{
  result = qword_1EBCDF178;
  if (!qword_1EBCDF178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF170, &qword_1BC76E440);
    sub_1BC633C54(&qword_1EBCDF180, &qword_1EBCDF188, &qword_1BC76E448);
    sub_1BC633C54(&qword_1EBCDF190, &qword_1EBCDF198, qword_1BC76E450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF178);
  }

  return result;
}

uint64_t sub_1BC7516C4(uint64_t a1)
{
  result = sub_1BC74820C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BC751754(uint64_t a1)
{
  result = sub_1BC74820C(&qword_1EBCDF048, type metadata accessor for _ReportOverviewScreen);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BC7517E4(uint64_t a1)
{
  result = sub_1BC74820C(&qword_1EBCDF118, type metadata accessor for ReportTranscriptView);
  *(a1 + 8) = result;
  return result;
}

void sub_1BC7518E0()
{
  sub_1BC7520F4(319, &qword_1EBCDF1A0, type metadata accessor for ReportToAuthoritiesViewModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ReportScreen(319);
    if (v1 <= 0x3F)
    {
      sub_1BC6335A0();
      if (v2 <= 0x3F)
      {
        sub_1BC751E20(319, &qword_1EBCDF1A8, &type metadata for ReportButton.State, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1BC751A00();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC751A00()
{
  if (!qword_1EBCDF1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF008, &qword_1BC76E2F8);
    v0 = sub_1BC75B670();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDF1B0);
    }
  }
}

uint64_t sub_1BC751A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Evidence(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1BC646034);
}

uint64_t sub_1BC751ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Report.Evidence(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1BC64614C);
}

uint64_t sub_1BC751B24(uint64_t a1)
{
  result = type metadata accessor for Report.Evidence(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1BC751BF0()
{
  type metadata accessor for ReportScreen(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Report.Authority(319);
    if (v1 <= 0x3F)
    {
      sub_1BC6335A0();
      if (v2 <= 0x3F)
      {
        sub_1BC7520F4(319, &qword_1EBCDDFB0, type metadata accessor for Report.Evidence, MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          sub_1BC751DB0();
          if (v4 <= 0x3F)
          {
            sub_1BC751E20(319, &qword_1EBCDF1C0, &type metadata for ReportButton.State, MEMORY[0x1E6981948]);
            if (v5 <= 0x3F)
            {
              sub_1BC7520F4(319, &qword_1EBCDDFA0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1BC751E20(319, &qword_1EDDCF0F8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BC751DB0()
{
  if (!qword_1EBCDF1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE28, &qword_1BC7694E8);
    sub_1BC6FEAB4();
    v0 = sub_1BC75A6F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDF1B8);
    }
  }
}

void sub_1BC751E20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BC751E70(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BC751ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_1BC751F2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BC751F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1BC752010()
{
  sub_1BC7520F4(319, &qword_1EBCDD0E0, type metadata accessor for Report.Message, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BC7520F4(319, &qword_1EBCDDFA0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC7520F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BC75217C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1BC7521C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BC75222C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1BC75BD70();
  if (v3 <= 0x3F)
  {
    sub_1BC75C110();
    result = sub_1BC75B760();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC7522C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v5)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_34;
  }

  v13 = v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-9 - v9) | v11));
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 < 2)
    {
LABEL_34:
      if (v8 == 0x7FFFFFFF)
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }

      else
      {
        v20 = (*(v4 + 48))((v9 + ((((a1 + v11 + 8) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_34;
  }

LABEL_23:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1BC7524C8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = *(v7 + 80);
  v12 = v11 | 7;
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v13;
  }

  v14 = -2 - ((-9 - v11) | v12) - (((-17 - v11) | v11) - v13);
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 == 0 || !v15)
  {
LABEL_22:
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (v14 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v17 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
  if (!HIWORD(v17))
  {
    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_22;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_23:
    v19 = ~v10 + a2;
    if (v14 < 4)
    {
      v20 = (v19 >> (8 * v14)) + 1;
      if (v14)
      {
        v21 = v19 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v21;
            if (v6 > 1)
            {
LABEL_54:
              if (v6 == 2)
              {
                *&a1[v14] = v20;
              }

              else
              {
                *&a1[v14] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v6 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v6 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v19;
      v20 = 1;
      if (v6 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v6)
    {
      a1[v14] = v20;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v14] = 0;
  }

  else if (v6)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v10 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *a1 = v22;
  }

  else
  {
    v23 = *(v7 + 56);
    v24 = (v11 + (((&a1[v12 + 8] & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11;
    v25 = a2 + 1;

    v23(v24, v25);
  }
}

unint64_t sub_1BC75277C()
{
  result = qword_1EBCDF1C8;
  if (!qword_1EBCDF1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF1D0, &qword_1BC76E850);
    sub_1BC633C54(&qword_1EBCDF1D8, &qword_1EBCDF1E0, &qword_1BC76E858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF1C8);
  }

  return result;
}

unint64_t sub_1BC75282C()
{
  result = qword_1EBCDF1E8;
  if (!qword_1EBCDF1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF1F0, &qword_1BC76E860);
    sub_1BC633C54(&qword_1EBCDF1F8, &qword_1EBCDF100, &qword_1BC76E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF1E8);
  }

  return result;
}

uint64_t sub_1BC7528DC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC752960()
{
  result = qword_1EBCDF218;
  if (!qword_1EBCDF218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF220, &qword_1BC76E870);
    sub_1BC7529E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF218);
  }

  return result;
}

unint64_t sub_1BC7529E4()
{
  result = qword_1EBCDF228;
  if (!qword_1EBCDF228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF150, &qword_1BC76E420);
    sub_1BC633C54(&qword_1EBCDF230, &qword_1EBCDF148, &qword_1BC76E418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF228);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{
  v1 = (type metadata accessor for ReportTranscriptView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1BC75A710();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC752BB0()
{
  v1 = *(type metadata accessor for ReportTranscriptView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1BC74CFA4(v2);
}

uint64_t sub_1BC752C20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for CheckSelector() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v0 + ((v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_1BC750090(v0 + v4, v5, v1);
}

uint64_t sub_1BC752CF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BC752D38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1BC752D78()
{
  result = qword_1EBCDF2A0;
  if (!qword_1EBCDF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2A0);
  }

  return result;
}

unint64_t sub_1BC752DCC()
{
  result = qword_1EBCDF2A8;
  if (!qword_1EBCDF2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF250, &qword_1BC76E890);
    sub_1BC633C54(&qword_1EBCDF2B0, &qword_1EBCDF248, &qword_1BC76E888);
    sub_1BC633C54(&unk_1EBCDE3C0, &qword_1EBCDD490, &unk_1BC766A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2A8);
  }

  return result;
}

unint64_t sub_1BC752EB0()
{
  result = qword_1EBCDF2B8;
  if (!qword_1EBCDF2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF278, &qword_1BC76E8B8);
    sub_1BC752F68();
    sub_1BC633C54(&qword_1EBCDDEB8, &qword_1EBCDDEC0, &qword_1BC769528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2B8);
  }

  return result;
}

unint64_t sub_1BC752F68()
{
  result = qword_1EBCDF2C0;
  if (!qword_1EBCDF2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF270, &qword_1BC76E8B0);
    sub_1BC753020();
    sub_1BC633C54(&qword_1EBCDDF58, &qword_1EBCDDF60, &unk_1BC769570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2C0);
  }

  return result;
}

unint64_t sub_1BC753020()
{
  result = qword_1EBCDF2C8;
  if (!qword_1EBCDF2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF268, &qword_1BC76E8A8);
    sub_1BC7530D8();
    sub_1BC633C54(&qword_1EBCDDDB0, &qword_1EBCDDDA8, &unk_1BC769458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2C8);
  }

  return result;
}

unint64_t sub_1BC7530D8()
{
  result = qword_1EBCDF2D0;
  if (!qword_1EBCDF2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF260, &qword_1BC76E8A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF250, &qword_1BC76E890);
    sub_1BC752DCC();
    swift_getOpaqueTypeConformance2();
    sub_1BC633C54(&qword_1EBCDC418, &qword_1EBCDC420, &unk_1BC76EA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2D0);
  }

  return result;
}

void sub_1BC7531CC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = sub_1BC757E10(*(v2 + 16), *(v2 + 24));
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = *MEMORY[0x1E69DE578];
  v8 = sub_1BC75BB60();
  v10 = v9;
  if (v8 != sub_1BC75BB60() || v10 != v11)
  {
    v13 = sub_1BC75C5E0();

    if ((v13 & 1) == 0)
    {
      return;
    }

    if (v3)
    {
      goto LABEL_8;
    }

LABEL_12:
    v24 = *(v2 + 48);
    v26 = *(v2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF140, &unk_1BC76E408);
    sub_1BC75B710();
    return;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_8:
  v14 = objc_allocWithZone(MEMORY[0x1E695CF50]);

  v15 = sub_1BC75BB30();
  v16 = [v14 initWithStringValue_];

  v17 = [v16 formattedStringValue];
  if (!v17)
  {
    v17 = [v16 stringValue];
  }

  v18 = v17;
  v19 = sub_1BC75BB60();
  v21 = v20;

  v22 = *(v2 + 32);
  v23 = *(v2 + 40);
  v27 = *(v2 + 48);
  v28 = v27;
  v29 = v22;
  *&v26 = v22;
  *(&v26 + 1) = v23;
  v25[2] = v19;
  v25[3] = v21;
  sub_1BC687F14(&v29, v25);

  sub_1BC660024(&v28, v25, &qword_1EBCDCE78, &qword_1BC7649F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF140, &unk_1BC76E408);
  sub_1BC75B710();

  sub_1BC687F70(&v29);

  sub_1BC66008C(&v28, &qword_1EBCDCE78, &qword_1BC7649F0);
}

unint64_t sub_1BC753400()
{
  result = qword_1EBCDF2D8;
  if (!qword_1EBCDF2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF288, &qword_1BC76E8C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF280, &qword_1BC76E8C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF278, &qword_1BC76E8B8);
    sub_1BC752EB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2D8);
  }

  return result;
}

unint64_t sub_1BC753508()
{
  result = qword_1EBCDF2E0;
  if (!qword_1EBCDF2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCE78, &qword_1BC7649F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2E0);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_1BC7535E4()
{
  *v2 = *(v0 + 80);
  *&v2[9] = *(v0 + 89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
  return sub_1BC75A6B0();
}

uint64_t sub_1BC753654()
{
  v1 = type metadata accessor for _ReportOverviewScreen(0);
  v2 = v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF328, &qword_1BC76EA50);
  return sub_1BC75A690();
}

uint64_t sub_1BC75370C()
{
  v1 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BC74BEBC(v2);
}

unint64_t sub_1BC753798()
{
  result = qword_1EBCDF388;
  if (!qword_1EBCDF388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF380, &qword_1BC76EAB8);
    sub_1BC633C54(&qword_1EBCDEBC8, &qword_1EBCDEB60, &qword_1BC76D0E0);
    sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF388);
  }

  return result;
}

uint64_t sub_1BC75387C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(_s6VictimVMa(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1BC749E70(v1 + v4, v7, a1);
}

uint64_t sub_1BC753950@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BC74A540(v5, v1 + v4, v6, a1);
}

unint64_t sub_1BC7539F0()
{
  result = qword_1EBCDF3B8;
  if (!qword_1EBCDF3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF3B0, &qword_1BC76EAD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF3C0, &qword_1BC76EAD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF3C8, &qword_1BC76EAE0);
    sub_1BC633C54(&qword_1EBCDF3D0, &qword_1EBCDF3C8, &qword_1BC76EAE0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF3D8, &qword_1BC76EAE8);
    sub_1BC633C54(&qword_1EBCDF3E0, &qword_1EBCDF3D8, &qword_1BC76EAE8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF3B8);
  }

  return result;
}

uint64_t sub_1BC753B8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BC74B178(v4, a1);
}

unint64_t sub_1BC753BFC()
{
  result = qword_1EBCDF3F0;
  if (!qword_1EBCDF3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF3E8, &qword_1BC76EAF0);
    sub_1BC633C54(&qword_1EBCDF3F8, &qword_1EBCDF400, &qword_1BC76EAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF3F0);
  }

  return result;
}

uint64_t sub_1BC753CAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1BC74B614(v4, v5, a1);
}

uint64_t objectdestroy_154Tm()
{
  v1 = type metadata accessor for _ReportOverviewScreen(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v87 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v32 = *(v5 + 8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_1BC759910();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v0 + v3, 1, v7))
      {
        (*(v8 + 8))(v0 + v3, v7);
      }

      v9 = type metadata accessor for Report.Evidence(0);
      v10 = (v5 + v9[6]);
      v11 = *(v10 + 1);

      v12 = *(v10 + 3);

      v13 = *(v10 + 5);

      v14 = *(v10 + 7);

      v15 = *(v10 + 9);

      v16 = *(v10 + 11);

      v17 = *(v10 + 13);

      v18 = *(v10 + 15);

      v19 = *(v10 + 17);

      v20 = *(v10 + 19);

      v21 = *(v10 + 21);

      v22 = *(v10 + 23);

      v23 = _s6VictimVMa(0);
      (*(v8 + 8))(&v10[*(v23 + 44)], v7);
      v24 = *(v5 + v9[7]);

      v25 = *(v5 + v9[9] + 8);

      v26 = *(v5 + v9[12]);

      v27 = (v5 + v9[13]);
      v28 = v27[1];
      if (v28 >> 60 != 15)
      {
        sub_1BC6AE140(*v27, v28);
      }

      v29 = *(v5 + v9[14] + 8);

      v30 = *(v5 + v9[16] + 8);

      v31 = *(v5 + v9[17] + 8);
    }
  }

  else
  {
    v33 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v33 - 8) + 48))(v0 + v3, 1, v33))
    {
      v34 = *(v5 + 8);

      v35 = *(v5 + 32);

      v36 = *(v33 + 28);
      v37 = sub_1BC759800();
      v38 = *(*(v37 - 8) + 8);
      v38(v5 + v36, v37);
      v38(v5 + *(v33 + 32), v37);
    }
  }

  v39 = v5 + v1[5];
  v40 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    v41 = *(v39 + 8);

    v42 = *(v39 + 32);

    v86 = *(v40 + 28);
    v43 = sub_1BC759800();
    v44 = *(*(v43 - 8) + 8);
    v44(v39 + v86, v43);
    v44(v39 + *(v40 + 32), v43);
  }

  v45 = *(v5 + v1[6] + 8);

  v46 = (v5 + v1[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32);
  v50 = sub_1BC759910();
  v51 = *(v50 - 8);
  if (!(*(v51 + 48))(v49, 1, v50))
  {
    (*(v51 + 8))(v49, v50);
  }

  v52 = type metadata accessor for Report.Evidence(0);
  v53 = &v49[v52[6]];
  v54 = *(v53 + 1);

  v55 = *(v53 + 3);

  v56 = *(v53 + 5);

  v57 = *(v53 + 7);

  v58 = *(v53 + 9);

  v59 = *(v53 + 11);

  v60 = *(v53 + 13);

  v61 = *(v53 + 15);

  v62 = *(v53 + 17);

  v63 = *(v53 + 19);

  v64 = *(v53 + 21);

  v65 = *(v53 + 23);

  v66 = _s6VictimVMa(0);
  (*(v51 + 8))(&v53[*(v66 + 44)], v50);
  v67 = *&v49[v52[7]];

  v68 = *&v49[v52[9] + 8];

  v69 = *&v49[v52[12]];

  v70 = &v49[v52[13]];
  v71 = v70[1];
  if (v71 >> 60 != 15)
  {
    sub_1BC6AE140(*v70, v71);
  }

  v72 = *&v49[v52[14] + 8];

  v73 = *&v49[v52[16] + 8];

  v74 = *&v49[v52[17] + 8];

  v75 = *(v5 + v1[8] + 16);

  v76 = (v5 + v1[9]);
  v77 = *v76;

  v78 = v76[1];

  v79 = *(v5 + v1[10] + 8);

  v80 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v81 = sub_1BC75A710();
    (*(*(v81 - 8) + 8))(v5 + v80, v81);
  }

  else
  {
    v82 = *(v5 + v80);
  }

  v83 = *(v5 + v1[12] + 8);

  v84 = *(v5 + v1[13] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v87, v2 | 7);
}

double sub_1BC754408@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1BC74B8B4(v5, a1);
}

uint64_t sub_1BC75447C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Message();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7544E0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1BC7510EC(0, v2, 0);
    v3 = v27;
    v4 = (v1 + 32);
    do
    {
      v5 = *v4;
      v6 = v4[2];
      v28[1] = v4[1];
      v28[2] = v6;
      v28[0] = v5;
      v7 = v4[3];
      v8 = v4[4];
      v9 = v4[6];
      v28[5] = v4[5];
      v28[6] = v9;
      v28[3] = v7;
      v28[4] = v8;
      v10 = v4[7];
      v11 = v4[8];
      v12 = v4[9];
      v29 = *(v4 + 20);
      v28[8] = v11;
      v28[9] = v12;
      v28[7] = v10;
      sub_1BC6C3F8C(v28, &v23);
      sub_1BC6B6ABC(&v23);
      sub_1BC6C3FC4(v28);
      v13 = v23;
      v14 = v24;
      v15 = v25;
      v16 = v26;
      v27 = v3;
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1BC7510EC((v17 > 1), v18 + 1, 1);
        v3 = v27;
      }

      *(v3 + 16) = v18 + 1;
      v19 = (v3 + 32 * v18);
      v19[4] = v13;
      v19[5] = v14;
      v19[6] = v15;
      v19[7] = v16;
      v4 = (v4 + 168);
      --v2;
    }

    while (v2);
  }

  v27 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF460, &qword_1BC76EBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF468, &unk_1BC76EBC8);
  sub_1BC633C54(&qword_1EBCDF470, &qword_1EBCDF460, &qword_1BC76EBC0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF448, &qword_1BC76EB78);
  v21 = sub_1BC754854();
  v23 = v20;
  v24 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1BC75490C();
  return sub_1BC75B780();
}

double sub_1BC754708@<D0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1BC6B6ABC(&v8);
  v5 = v8;
  v6 = v9;
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10);
  sub_1BC6CBAA8();
  *&result = sub_1BC6FC404(&v5, sub_1BC755C90, 0, a1).n128_u64[0];
  return result;
}

unint64_t sub_1BC754794()
{
  result = qword_1EBCDF440;
  if (!qword_1EBCDF440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF438, &qword_1BC76EB70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF448, &qword_1BC76EB78);
    sub_1BC754854();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF440);
  }

  return result;
}

unint64_t sub_1BC754854()
{
  result = qword_1EBCDF450;
  if (!qword_1EBCDF450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF448, &qword_1BC76EB78);
    sub_1BC633C54(&qword_1EBCDF458, &qword_1EBCDDF78, &qword_1BC76EB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF450);
  }

  return result;
}

unint64_t sub_1BC75490C()
{
  result = qword_1EBCDF478;
  if (!qword_1EBCDF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF478);
  }

  return result;
}

uint64_t sub_1BC75498C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1BC754A18@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1BC6B6320(v9);
  v8[0] = v9[0];
  v8[1] = v9[1];
  sub_1BC6B6444(v7, v4);
  v6[0] = v7[0];
  v6[1] = v7[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10);
  sub_1BC6CBAA8();
  return sub_1BC6FC2C8(v8, v6, sub_1BC74A528, 0, a1);
}

unint64_t sub_1BC754AB0()
{
  result = qword_1EBCDF488;
  if (!qword_1EBCDF488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF480, &unk_1BC76EBD8);
    sub_1BC754794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF488);
  }

  return result;
}

uint64_t sub_1BC754B34()
{
  v1 = *(type metadata accessor for ReportOverviewScreen(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Report.Evidence(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BC747220(v0 + v2, v5);
}

uint64_t objectdestroy_168Tm()
{
  v1 = type metadata accessor for ReportOverviewScreen(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v0 + v3 + v1[5];
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v35 = *(v8 + 8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v73 = v4;
      v10 = sub_1BC759910();
      v11 = *(v10 - 8);
      if (!(*(v11 + 48))(v8, 1, v10))
      {
        (*(v11 + 8))(v8, v10);
      }

      v12 = type metadata accessor for Report.Evidence(0);
      v13 = (v8 + v12[6]);
      v14 = *(v13 + 1);

      v15 = *(v13 + 3);

      v16 = *(v13 + 5);

      v17 = *(v13 + 7);

      v18 = *(v13 + 9);

      v19 = *(v13 + 11);

      v20 = *(v13 + 13);

      v21 = *(v13 + 15);

      v22 = *(v13 + 17);

      v23 = *(v13 + 19);

      v24 = *(v13 + 21);

      v25 = *(v13 + 23);

      v26 = _s6VictimVMa(0);
      (*(v11 + 8))(&v13[*(v26 + 44)], v10);
      v27 = *(v8 + v12[7]);

      v28 = *(v8 + v12[9] + 8);

      v29 = *(v8 + v12[12]);

      v30 = (v8 + v12[13]);
      v31 = v30[1];
      if (v31 >> 60 != 15)
      {
        sub_1BC6AE140(*v30, v31);
      }

      v32 = *(v8 + v12[14] + 8);

      v33 = *(v8 + v12[16] + 8);

      v34 = *(v8 + v12[17] + 8);

      v4 = v73;
    }
  }

  else
  {
    v36 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v36 - 8) + 48))(v8, 1, v36))
    {
      v37 = *(v8 + 8);

      v38 = *(v8 + 32);

      v72 = *(v36 + 28);
      v39 = sub_1BC759800();
      v74 = v4;
      v40 = *(*(v39 - 8) + 8);
      v40(v8 + v72, v39);
      v40(v8 + *(v36 + 32), v39);
      v4 = v74;
    }
  }

  v41 = *(v5 + v1[6] + 8);

  v42 = *(v5 + v1[7] + 8);

  v43 = v5 + v1[8];
  v44 = type metadata accessor for ReportOverviewScreen._Alert(0);
  if (!(*(*(v44 - 8) + 48))(v43, 1, v44))
  {
    v45 = sub_1BC759910();
    v46 = *(v45 - 8);
    if (!(*(v46 + 48))(v43, 1, v45))
    {
      (*(v46 + 8))(v43, v45);
    }

    v47 = type metadata accessor for Report.Evidence(0);
    v48 = (v43 + v47[6]);
    v49 = *(v48 + 1);

    v50 = *(v48 + 3);

    v51 = *(v48 + 5);

    v52 = *(v48 + 7);

    v53 = *(v48 + 9);

    v54 = *(v48 + 11);

    v55 = *(v48 + 13);

    v56 = *(v48 + 15);

    v57 = *(v48 + 17);

    v58 = *(v48 + 19);

    v59 = *(v48 + 21);

    v60 = *(v48 + 23);

    v61 = _s6VictimVMa(0);
    (*(v46 + 8))(&v48[*(v61 + 44)], v45);
    v62 = *(v43 + v47[7]);

    v63 = *(v43 + v47[9] + 8);

    v64 = *(v43 + v47[12]);

    v65 = (v43 + v47[13]);
    v66 = v65[1];
    if (v66 >> 60 != 15)
    {
      sub_1BC6AE140(*v65, v66);
    }

    v67 = *(v43 + v47[14] + 8);

    v68 = *(v43 + v47[16] + 8);

    v69 = *(v43 + v47[17] + 8);
  }

  v70 = *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318) + 28));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC755210()
{
  v2 = *(type metadata accessor for ReportOverviewScreen(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Report.Evidence(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BC65281C;

  return sub_1BC7475F4(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t objectdestroy_177Tm()
{
  v1 = type metadata accessor for ReportOverviewScreen(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for Report.Evidence(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v3 + v4 + v6;
  v104 = *(*(v5 - 1) + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = v0 + v3;
  v10 = *(v0 + v3);

  v11 = *(v0 + v3 + 8);

  v12 = v0 + v3 + v1[5];
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v38 = *(v12 + 8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v102 = v7;
      v14 = sub_1BC759910();
      v15 = *(v14 - 8);
      if (!(*(v15 + 48))(v12, 1, v14))
      {
        (*(v15 + 8))(v12, v14);
      }

      v16 = (v12 + v5[6]);
      v17 = *(v16 + 1);

      v18 = *(v16 + 3);

      v19 = *(v16 + 5);

      v20 = *(v16 + 7);

      v21 = *(v16 + 9);

      v22 = *(v16 + 11);

      v23 = *(v16 + 13);

      v24 = *(v16 + 15);

      v25 = *(v16 + 17);

      v26 = *(v16 + 19);

      v27 = *(v16 + 21);

      v28 = *(v16 + 23);

      v29 = _s6VictimVMa(0);
      (*(v15 + 8))(&v16[*(v29 + 44)], v14);
      v30 = *(v12 + v5[7]);

      v31 = *(v12 + v5[9] + 8);

      v32 = *(v12 + v5[12]);

      v33 = (v12 + v5[13]);
      v34 = v33[1];
      if (v34 >> 60 != 15)
      {
        sub_1BC6AE140(*v33, v34);
      }

      v35 = *(v12 + v5[14] + 8);

      v36 = *(v12 + v5[16] + 8);

      v37 = *(v12 + v5[17] + 8);

      v7 = v102;
    }
  }

  else
  {
    v39 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v39 - 8) + 48))(v12, 1, v39))
    {
      v40 = *(v12 + 8);

      v41 = *(v12 + 32);

      v101 = *(v39 + 28);
      v103 = v7;
      v42 = sub_1BC759800();
      v43 = *(*(v42 - 8) + 8);
      v43(v12 + v101, v42);
      v44 = v42;
      v7 = v103;
      v43(v12 + *(v39 + 32), v44);
    }
  }

  v45 = v7 & ~v6;
  v46 = *(v9 + v1[6] + 8);

  v47 = *(v9 + v1[7] + 8);

  v48 = v9 + v1[8];
  v49 = type metadata accessor for ReportOverviewScreen._Alert(0);
  if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
  {
    v50 = sub_1BC759910();
    v51 = *(v50 - 8);
    if (!(*(v51 + 48))(v48, 1, v50))
    {
      (*(v51 + 8))(v48, v50);
    }

    v52 = (v48 + v5[6]);
    v53 = *(v52 + 1);

    v54 = *(v52 + 3);

    v55 = *(v52 + 5);

    v56 = *(v52 + 7);

    v57 = *(v52 + 9);

    v58 = *(v52 + 11);

    v59 = *(v52 + 13);

    v60 = *(v52 + 15);

    v61 = *(v52 + 17);

    v62 = *(v52 + 19);

    v63 = *(v52 + 21);

    v64 = *(v52 + 23);

    v65 = _s6VictimVMa(0);
    (*(v51 + 8))(&v52[*(v65 + 44)], v50);
    v66 = *(v48 + v5[7]);

    v67 = *(v48 + v5[9] + 8);

    v68 = *(v48 + v5[12]);

    v69 = (v48 + v5[13]);
    v70 = v69[1];
    if (v70 >> 60 != 15)
    {
      sub_1BC6AE140(*v69, v70);
    }

    v71 = *(v48 + v5[14] + 8);

    v72 = *(v48 + v5[16] + 8);

    v73 = *(v48 + v5[17] + 8);
  }

  v74 = *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318) + 28));

  v75 = v0 + v45;
  v76 = sub_1BC759910();
  v77 = *(v76 - 8);
  if (!(*(v77 + 48))(v0 + v45, 1, v76))
  {
    (*(v77 + 8))(v0 + v45, v76);
  }

  v78 = (v75 + v5[6]);
  v79 = *(v78 + 1);

  v80 = *(v78 + 3);

  v81 = *(v78 + 5);

  v82 = *(v78 + 7);

  v83 = *(v78 + 9);

  v84 = *(v78 + 11);

  v85 = *(v78 + 13);

  v86 = *(v78 + 15);

  v87 = *(v78 + 17);

  v88 = *(v78 + 19);

  v89 = *(v78 + 21);

  v90 = *(v78 + 23);

  v91 = _s6VictimVMa(0);
  (*(v77 + 8))(&v78[*(v91 + 44)], v76);
  v92 = *(v75 + v5[7]);

  v93 = *(v75 + v5[9] + 8);

  v94 = *(v75 + v5[12]);

  v95 = (v75 + v5[13]);
  v96 = v95[1];
  if (v96 >> 60 != 15)
  {
    sub_1BC6AE140(*v95, v96);
  }

  v97 = *(v75 + v5[14] + 8);

  v98 = *(v75 + v5[16] + 8);

  v99 = *(v75 + v5[17] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v45 + v104, v2 | v6 | 7);
}

uint64_t sub_1BC755AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportOverviewScreen(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Report.Evidence(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1BC745618((v1 + v4), v7, a1);
}

uint64_t sub_1BC755BAC(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportOverviewScreen(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1BC7457C4(a1, v4);
}

uint64_t sub_1BC755C1C(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportOverviewScreen(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1BC745900(a1, v4);
}

uint64_t String.isPhoneNumber.getter()
{
  v0 = sub_1BC75BB30();
  v1 = MEMORY[0x1BFB273C0]();

  return v1;
}

uint64_t String.isEmail.getter()
{
  v0 = sub_1BC75BB30();
  IsEmail = IMStringIsEmail();

  return IsEmail;
}

uint64_t String.removingAccountIDPrefix.getter(uint64_t a1)
{
  v2 = sub_1BC75BB30();
  v3 = [v2 _stripFZIDPrefix];

  if (v3)
  {
    a1 = sub_1BC75BB60();
  }

  else
  {
  }

  return a1;
}

uint64_t String.prependingAccountIDPrefix.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC75BB30();
  v5 = [v4 _stripFZIDPrefix];

  if (v5)
  {
    a1 = sub_1BC75BB60();
    a2 = v6;
  }

  else
  {
  }

  v7 = sub_1BC75BB30();
  v8 = MEMORY[0x1BFB273C0]();

  if (v8)
  {
    v9 = 14960;
  }

  else
  {
    v9 = 14949;
  }

  v11 = v9;
  MEMORY[0x1BFB267E0](a1, a2);

  return v11;
}

uint64_t String.isValidAccountID.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BC75BB30();
  v5 = [v4 _stripFZIDPrefix];

  if (v5)
  {
    a1 = sub_1BC75BB60();
    a2 = v6;
  }

  else
  {
  }

  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = sub_1BC75BB30();
    v9 = MEMORY[0x1BFB273C0]();

    if (v9)
    {

      return 1;
    }

    else
    {
      v11 = sub_1BC75BB30();

      IsEmail = IMStringIsEmail();

      return IsEmail;
    }
  }

  else
  {

    return 0;
  }
}

id sub_1BC755F48(void *a1)
{
  v1 = a1;
  v2 = NSString.scui_prependingAccountIDPrefix.getter();

  return v2;
}

uint64_t NSString.scui_prependingAccountIDPrefix.getter()
{
  v0 = sub_1BC75BB60();
  v2 = v1;
  v3 = sub_1BC75BB30();
  v4 = [v3 _stripFZIDPrefix];

  if (v4)
  {
    v0 = sub_1BC75BB60();
    v6 = v5;

    v2 = v6;
  }

  v7 = sub_1BC75BB30();
  MEMORY[0x1BFB273C0]();

  MEMORY[0x1BFB267E0](v0, v2);

  v8 = sub_1BC75BB30();

  return v8;
}

uint64_t sub_1BC756078(void *a1)
{
  v2 = sub_1BC75BB60();
  v4 = v3;
  v5 = a1;
  LOBYTE(v2) = String.isValidAccountID.getter(v2, v4);

  return v2 & 1;
}

uint64_t NSString.scui_isValidAccountID.getter()
{
  v0 = sub_1BC75BB60();
  valid = String.isValidAccountID.getter(v0, v1);

  return valid & 1;
}

uint64_t sub_1BC75612C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759800();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v39 - v8;
  v9 = type metadata accessor for ScannableContent();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v39 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF4B8, qword_1BC76EC98);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v39 - v25;
  v27 = *(v24 + 56);
  sub_1BC75654C(a1, &v39 - v25);
  sub_1BC75654C(a2, &v26[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1BC75654C(v26, v16);
      v29 = *v16;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v30 = *&v26[v27];
        if (v29)
        {
          if (!v30)
          {
LABEL_9:

LABEL_23:
            v34 = 0;
            goto LABEL_25;
          }

LABEL_15:

          v34 = v29 == v30;
LABEL_25:
          sub_1BC756788(v26);
          return v34 & 1;
        }

        goto LABEL_21;
      }
    }

    else
    {
      sub_1BC75654C(v26, v13);
      v29 = *v13;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v30 = *&v26[v27];
        if (v29)
        {
          if (!v30)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }

LABEL_21:
        if (!v30)
        {
          v34 = 1;
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1BC75654C(v26, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v42 + 8))(v19, v4);
      goto LABEL_18;
    }

    v32 = v41;
    v31 = v42;
    v33 = *(v42 + 32);
    v33(v41, v19, v4);
    goto LABEL_20;
  }

  sub_1BC75654C(v26, v21);
  if (!swift_getEnumCaseMultiPayload())
  {
    v32 = v41;
    v31 = v42;
    v33 = *(v42 + 32);
    v33(v41, v21, v4);
LABEL_20:
    v35 = &v26[v27];
    v36 = v40;
    v33(v40, v35, v4);
    v34 = sub_1BC7597B0();
    v37 = *(v31 + 8);
    v37(v36, v4);
    v37(v32, v4);
    goto LABEL_25;
  }

  (*(v42 + 8))(v21, v4);
LABEL_18:
  sub_1BC756720(v26);
  v34 = 0;
  return v34 & 1;
}

uint64_t type metadata accessor for ScannableContent()
{
  result = qword_1EBCF3980;
  if (!qword_1EBCF3980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC75654C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScannableContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC7565B0()
{
  result = qword_1EBCDC770;
  if (!qword_1EBCDC770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCDC770);
  }

  return result;
}

void sub_1BC75660C()
{
  sub_1BC759800();
  if (v0 <= 0x3F)
  {
    sub_1BC7566CC(319, &qword_1EBCDF4A8, type metadata accessor for CGImage);
    if (v1 <= 0x3F)
    {
      sub_1BC7566CC(319, &qword_1EBCDF4B0, sub_1BC7565B0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BC7566CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BC75C110();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BC756720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF4B8, qword_1BC76EC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC756788(uint64_t a1)
{
  v2 = type metadata accessor for ScannableContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall InterventionScreenModel.didAskForMoreHelp(_:)(UIViewController *a1)
{
  v3 = OBJC_IVAR___SCUIInterventionScreenModel_config;
  v4 = v1 + *(type metadata accessor for InterventionConfig(0) + 20) + v3;
  v5 = sub_1BC6F39FC();
  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = v5;
  }

  v8 = [objc_allocWithZone(SCUIMoreHelpWebViewController) initWithType_];
  if (v8)
  {
    v9 = v8;
    [UIViewController presentViewController:a1 animated:sel_presentViewController_animated_completion_ completion:?];
  }
}

id sub_1BC75697C(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 openChatWithParentsForInterventionType_];
}

void sub_1BC756A0C(void *a1)
{
  v2 = [objc_allocWithZone(SCUIMoreHelpWebViewController) init];
  [a1 presentViewController:v2 animated:1 completion:0];
}

id DefaultImplementations.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultImplementations.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultImplementations();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DefaultImplementations.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultImplementations();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BC756BF0(uint64_t a1)
{
  v2 = sub_1BC7572B4(&qword_1EBCDF4C0);
  v3 = sub_1BC7572B4(&qword_1EBCDF4F8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1BC756C88(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1BC75BB60();
  sub_1BC75C700();
  sub_1BC75BBE0();
  v4 = sub_1BC75C720();

  return sub_1BC756D1C(a1, v4);
}

unint64_t sub_1BC756D1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BC75BB60();
      v9 = v8;
      if (v7 == sub_1BC75BB60() && v9 == v10)
      {
        break;
      }

      v12 = sub_1BC75C5E0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1BC756E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF4C8, &qword_1BC76ECE8);
    v3 = sub_1BC75C420();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BC7571A8(v4, &v11);
      v5 = v11;
      result = sub_1BC756C88(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BC678BBC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void sub_1BC756F28(uint64_t a1)
{
  v2 = sub_1BC759800();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedApplication];
  v8 = [objc_opt_self() waysToGetHelpURLForInterventionType_];
  if (v8)
  {
    v9 = v8;
    sub_1BC7597C0();

    v10 = sub_1BC759770();
    (*(v3 + 8))(v6, v2);
    sub_1BC756E20(MEMORY[0x1E69E7CC0]);
    type metadata accessor for OpenExternalURLOptionsKey();
    sub_1BC7572B4(&qword_1EBCDF4C0);
    v11 = sub_1BC75BA30();

    [v7 openURL:v10 options:v11 completionHandler:0];
  }

  else
  {
    __break(1u);
  }
}

void type metadata accessor for OpenExternalURLOptionsKey()
{
  if (!qword_1EBCDF4D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBCDF4D8);
    }
  }
}

uint64_t sub_1BC7571A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF4D0, &qword_1BC76ECF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7572B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC7572F8@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  sub_1BC757340(v6, a1, a2);

  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

uint64_t sub_1BC757340(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      v21._countAndFlagsBits = 0x5F544E554F434341;
      v21._object = 0xEA00000000004449;
      countAndFlagsBits = SCLocalizedStringKey.init(stringLiteral:)(v21).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](countAndFlagsBits);
      goto LABEL_15;
    case 2:
      v15._countAndFlagsBits = 0x4D414E5F4C4C5546;
      v15._object = 0xE900000000000045;
      v16 = SCLocalizedStringKey.init(stringLiteral:)(v15).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v16);
      swift_getKeyPath();
      v10 = 1;
      v11 = 2;
      goto LABEL_16;
    case 3:
      v17._countAndFlagsBits = 0x44415F4C49414D45;
      v17._object = 0xED00005353455244;
      v18 = SCLocalizedStringKey.init(stringLiteral:)(v17).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v18);
      swift_getKeyPath();
      v10 = 1;
      v11 = 3;
      goto LABEL_16;
    case 4:
      v8._countAndFlagsBits = 0x554E5F454E4F4850;
      v8._object = 0xEC0000005245424DLL;
      v9 = SCLocalizedStringKey.init(stringLiteral:)(v8).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v9);
      swift_getKeyPath();
      v10 = 1;
      v11 = 9;
      goto LABEL_16;
    case 5:
      v23._countAndFlagsBits = 0x544545525453;
      v23._object = 0xE600000000000000;
      v24 = SCLocalizedStringKey.init(stringLiteral:)(v23).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v24);
      swift_getKeyPath();
      v10 = 1;
      v11 = 4;
      goto LABEL_16;
    case 6:
      v25._countAndFlagsBits = 1498696003;
      v25._object = 0xE400000000000000;
      v26 = SCLocalizedStringKey.init(stringLiteral:)(v25).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v26);
      swift_getKeyPath();
      v10 = 1;
      v11 = 5;
      goto LABEL_16;
    case 7:
      v19._countAndFlagsBits = 0x4554415453;
      v19._object = 0xE500000000000000;
      v20 = SCLocalizedStringKey.init(stringLiteral:)(v19).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v20);
      swift_getKeyPath();
      v10 = 1;
      v11 = 6;
      goto LABEL_16;
    case 8:
      v30._countAndFlagsBits = 0x5952544E554F43;
      v30._object = 0xE700000000000000;
      v31 = SCLocalizedStringKey.init(stringLiteral:)(v30).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v31);
      swift_getKeyPath();
      v10 = 1;
      v11 = 7;
      goto LABEL_16;
    case 9:
      v13._countAndFlagsBits = 0x435F4C4154534F50;
      v13._object = 0xEB0000000045444FLL;
      v14 = SCLocalizedStringKey.init(stringLiteral:)(v13).localized._countAndFlagsBits;
      v11 = 8;
      MEMORY[0x1EEE9AC00](v14);
      swift_getKeyPath();
      v10 = 1;
      goto LABEL_16;
    case 10:
      v27._countAndFlagsBits = 0x535F534547414D49;
      v27._object = 0xEB00000000544E45;
      v28 = SCLocalizedStringKey.init(stringLiteral:)(v27).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v28);
      goto LABEL_15;
    case 11:
      v6._countAndFlagsBits = 0x535F534F45444956;
      v6._object = 0xEB00000000544E45;
      v7 = SCLocalizedStringKey.init(stringLiteral:)(v6).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v7);
      goto LABEL_15;
    case 12:
      switch(a2)
      {
        case 1:
          v42._countAndFlagsBits = 0x5F464F5F45544144;
          v42._object = 0xED00004854524942;
          SCLocalizedStringKey.init(stringLiteral:)(v42);
          swift_getKeyPath();
          v10 = 0;
          v11 = 1;
          goto LABEL_16;
        case 2:
          v38._countAndFlagsBits = 0x44415F4C49414D45;
          v38._object = 0xED00005353455244;
          SCLocalizedStringKey.init(stringLiteral:)(v38);
          swift_getKeyPath();
          v10 = 1;
          v11 = 3;
          goto LABEL_16;
        case 3:
          v40._countAndFlagsBits = 0x554E5F454E4F4850;
          v40._object = 0xEC0000005245424DLL;
          SCLocalizedStringKey.init(stringLiteral:)(v40);
          swift_getKeyPath();
          v10 = 1;
          v11 = 9;
          goto LABEL_16;
        case 4:
          v35._countAndFlagsBits = 0x5F59414C50534944;
          v35._object = 0xEC000000454D414ELL;
          SCLocalizedStringKey.init(stringLiteral:)(v35);
          goto LABEL_41;
        case 5:
          v45._countAndFlagsBits = 0x5F544E554F434341;
          v45._object = 0xEA00000000004449;
          SCLocalizedStringKey.init(stringLiteral:)(v45);
          goto LABEL_41;
        case 6:
          v48._countAndFlagsBits = 0x544545525453;
          v48._object = 0xE600000000000000;
          SCLocalizedStringKey.init(stringLiteral:)(v48);
          swift_getKeyPath();
          v10 = 1;
          v11 = 4;
          goto LABEL_16;
        case 7:
          v41._countAndFlagsBits = 1498696003;
          v41._object = 0xE400000000000000;
          SCLocalizedStringKey.init(stringLiteral:)(v41);
          swift_getKeyPath();
          v10 = 1;
          v11 = 5;
          goto LABEL_16;
        case 8:
          v51._countAndFlagsBits = 0x4554415453;
          v51._object = 0xE500000000000000;
          SCLocalizedStringKey.init(stringLiteral:)(v51);
          swift_getKeyPath();
          v10 = 1;
          v11 = 6;
          goto LABEL_16;
        case 9:
          v37._countAndFlagsBits = 0x5952544E554F43;
          v37._object = 0xE700000000000000;
          SCLocalizedStringKey.init(stringLiteral:)(v37);
          swift_getKeyPath();
          v10 = 1;
          v11 = 7;
          goto LABEL_16;
        case 10:
          v50._countAndFlagsBits = 0x435F4C4154534F50;
          v50._object = 0xEB0000000045444FLL;
          SCLocalizedStringKey.init(stringLiteral:)(v50);
          swift_getKeyPath();
          v10 = 1;
          v11 = 8;
          goto LABEL_16;
        case 11:
          v34._countAndFlagsBits = 0x525F454349564544;
          v34._object = 0xED00004E4F494745;
          SCLocalizedStringKey.init(stringLiteral:)(v34);
          goto LABEL_41;
        case 12:
          v36._countAndFlagsBits = 0x4152545F54414843;
          v36._object = 0xEF5450495243534ELL;
          SCLocalizedStringKey.init(stringLiteral:)(v36);
          swift_getKeyPath();
          v10 = 1;
          v11 = 10;
          goto LABEL_16;
        case 13:
          v47._countAndFlagsBits = 0x435F59544944554ELL;
          v47._object = 0xEE004E5245434E4FLL;
          SCLocalizedStringKey.init(stringLiteral:)(v47);
          swift_getKeyPath();
          v10 = 1;
          v11 = 11;
          goto LABEL_16;
        case 14:
          v33._countAndFlagsBits = 0x544E454449434E49;
          v33._object = 0xED0000455441445FLL;
          SCLocalizedStringKey.init(stringLiteral:)(v33);
          goto LABEL_41;
        case 15:
          v39._countAndFlagsBits = 0x544143494C505041;
          v39._object = 0xEB000000004E4F49;
          SCLocalizedStringKey.init(stringLiteral:)(v39);
          goto LABEL_41;
        case 16:
          v32._countAndFlagsBits = 0x4D4554535953;
          v32._object = 0xE600000000000000;
          SCLocalizedStringKey.init(stringLiteral:)(v32);
          goto LABEL_41;
        case 17:
          v43._object = 0xE900000000000044;
          v43._countAndFlagsBits = 0x4E494B5F54414843;
          SCLocalizedStringKey.init(stringLiteral:)(v43);
          goto LABEL_41;
        case 18:
          v49._countAndFlagsBits = 0x4F52505F54414843;
          v49._object = 0xED00004C4F434F54;
          SCLocalizedStringKey.init(stringLiteral:)(v49);
          goto LABEL_41;
        case 19:
          v53._countAndFlagsBits = 0x4F4F525F54414843;
          v53._object = 0xEE00454D414E5F4DLL;
          SCLocalizedStringKey.init(stringLiteral:)(v53);
LABEL_41:
          swift_getKeyPath();
          v11 = 0;
          v10 = 1;
          goto LABEL_16;
        case 20:
          v44._countAndFlagsBits = 0xD00000000000002CLL;
          v44._object = 0x80000001BC774D30;
          SCLocalizedStringKey.init(stringLiteral:)(v44);
          goto LABEL_33;
        case 21:
          v46._countAndFlagsBits = 0xD000000000000015;
          v46._object = 0x80000001BC774D10;
          SCLocalizedStringKey.init(stringLiteral:)(v46);
LABEL_33:
          swift_getKeyPath();
          v10 = 0;
          v11 = 11;
          break;
        case 22:
          v52._object = 0x80000001BC774D60;
          v52._countAndFlagsBits = 0xD000000000000013;
          SCLocalizedStringKey.init(stringLiteral:)(v52);
          swift_getKeyPath();
          v10 = 0;
          v11 = 10;
          break;
        default:
          v12._countAndFlagsBits = 0x4D414E5F4C4C5546;
          v12._object = 0xE900000000000045;
          SCLocalizedStringKey.init(stringLiteral:)(v12);
          swift_getKeyPath();
          v11 = 0;
          v10 = 0;
          break;
      }

      goto LABEL_16;
    default:
      v4._countAndFlagsBits = 0x5F59414C50534944;
      v4._object = 0xEC000000454D414ELL;
      v5 = SCLocalizedStringKey.init(stringLiteral:)(v4).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v5);
LABEL_15:
      swift_getKeyPath();
      v10 = 1;
      v11 = 0;
LABEL_16:
      *a1 = v54;
      a1[1] = v55;
      return v10 | (v11 << 8);
  }
}

BOOL sub_1BC757D6C(uint64_t a1, char a2)
{
  v2 = sub_1BC757340(&v4, a1, a2);

  return (v2 & 1) == 0;
}

uint64_t sub_1BC757DC0(uint64_t a1, char a2)
{
  v2 = sub_1BC757340(&v4, a1, a2);

  return v2 & 1;
}

id sub_1BC757E10(uint64_t a1, char a2)
{
  v2 = (sub_1BC757340(&v9, a1, a2) >> 8);

  v3 = 0;
  if (v2 <= 6)
  {
    if (v2 > 2)
    {
      v4 = MEMORY[0x1E69DE3F8];
      if (v2 != 5)
      {
        v4 = MEMORY[0x1E69DE408];
      }

      v6 = MEMORY[0x1E69DE4A0];
      if (v2 != 3)
      {
        v6 = MEMORY[0x1E69DE540];
      }

      if (v2 <= 4)
      {
        v4 = v6;
      }

      goto LABEL_19;
    }

    if (v2)
    {
      v4 = MEMORY[0x1E69DE4E8];
      if (v2 == 1)
      {
        v4 = MEMORY[0x1E69DE410];
      }

      goto LABEL_19;
    }
  }

  else if (v2 <= 9)
  {
    v4 = MEMORY[0x1E69DE440];
    v5 = MEMORY[0x1E69DE530];
    if (v2 != 8)
    {
      v5 = MEMORY[0x1E69DE578];
    }

    if (v2 != 7)
    {
      v4 = v5;
    }

LABEL_19:
    v3 = *v4;
    v7 = *v4;
  }

  return v3;
}

uint64_t sub_1BC757F08(uint64_t a1, char a2)
{
  v2 = (sub_1BC757340(&v4, a1, a2) >> 8);

  return v2;
}

uint64_t sub_1BC757F58(uint64_t a1, char a2)
{
  v2 = sub_1BC757340(&v4, a1, a2) >> 8;

  return qword_1BC76F9F0[v2];
}

uint64_t sub_1BC757FB4(uint64_t a1, char a2)
{
  sub_1BC757340(&v5, a1, a2);
  v3 = v2;

  return v3;
}

uint64_t sub_1BC758014@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *result;
    if (v5 < *(*result + 16))
    {
      v24 = v3;
      v25 = v4;
      v7 = v6 + 168 * v5;
      v8 = *(v7 + 32);
      v9 = *(v7 + 64);
      v22[1] = *(v7 + 48);
      v22[2] = v9;
      v22[0] = v8;
      v10 = *(v7 + 80);
      v11 = *(v7 + 96);
      v12 = *(v7 + 128);
      v22[5] = *(v7 + 112);
      v22[6] = v12;
      v22[3] = v10;
      v22[4] = v11;
      v13 = *(v7 + 144);
      v14 = *(v7 + 160);
      v15 = *(v7 + 176);
      v23 = *(v7 + 192);
      v22[8] = v14;
      v22[9] = v15;
      v22[7] = v13;
      v16 = *(v7 + 176);
      *(a3 + 128) = *(v7 + 160);
      *(a3 + 144) = v16;
      *(a3 + 160) = *(v7 + 192);
      v17 = *(v7 + 112);
      *(a3 + 64) = *(v7 + 96);
      *(a3 + 80) = v17;
      v18 = *(v7 + 144);
      *(a3 + 96) = *(v7 + 128);
      *(a3 + 112) = v18;
      v19 = *(v7 + 48);
      *a3 = *(v7 + 32);
      *(a3 + 16) = v19;
      v20 = *(v7 + 80);
      *(a3 + 32) = *(v7 + 64);
      *(a3 + 48) = v20;
      return sub_1BC6C3F8C(v22, v21);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7580D8(__int128 *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = a1[9];
  v39 = a1[8];
  v40 = v5;
  v41 = *(a1 + 20);
  v6 = a1[5];
  v35 = a1[4];
  v36 = v6;
  v7 = a1[7];
  v37 = a1[6];
  v38 = v7;
  v8 = a1[1];
  v31 = *a1;
  v32 = v8;
  v9 = a1[3];
  v33 = a1[2];
  v34 = v9;
  v10 = *a2;
  sub_1BC6C3F8C(&v31, v29);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1BC7585D4(v10);
  v10 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v10 + 16))
  {
    v12 = v10 + 168 * v4;
    v13 = *(v12 + 32);
    v14 = *(v12 + 64);
    v29[1] = *(v12 + 48);
    v29[2] = v14;
    v29[0] = v13;
    v15 = *(v12 + 80);
    v16 = *(v12 + 96);
    v17 = *(v12 + 128);
    v29[5] = *(v12 + 112);
    v29[6] = v17;
    v29[3] = v15;
    v29[4] = v16;
    v18 = *(v12 + 144);
    v19 = *(v12 + 160);
    v20 = *(v12 + 176);
    v30 = *(v12 + 192);
    v29[8] = v19;
    v29[9] = v20;
    v29[7] = v18;
    v21 = v31;
    v22 = v33;
    *(v12 + 48) = v32;
    *(v12 + 64) = v22;
    *(v12 + 32) = v21;
    v23 = v34;
    v24 = v35;
    v25 = v37;
    *(v12 + 112) = v36;
    *(v12 + 128) = v25;
    *(v12 + 80) = v23;
    *(v12 + 96) = v24;
    v26 = v38;
    v27 = v39;
    v28 = v40;
    *(v12 + 192) = v41;
    *(v12 + 160) = v27;
    *(v12 + 176) = v28;
    *(v12 + 144) = v26;
    result = sub_1BC6C3FC4(v29);
    *a2 = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BC758204@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a1[8];
  v13 = a1[9];
  v14 = *(a1 + 20);
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  result = sub_1BC6B5B84();
  *a2 = result;
  return result;
}

uint64_t sub_1BC758268@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC6B5C04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1BC758294@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1BC6B61C0(v5, *a1);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1BC7582D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC6B5B8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_1BC7582FC@<D0>(_OWORD *a1@<X8>)
{
  sub_1BC6B5E58(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1BC758338@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC6B5DE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BC758364(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2;
  switch(a3)
  {
    case 1:
      v4 = 13;
      goto LABEL_15;
    case 2:
      v4 = 14;
      goto LABEL_15;
    case 3:
      v4 = 15;
      goto LABEL_15;
    case 4:
      v4 = 16;
      goto LABEL_15;
    case 5:
      v4 = 17;
      goto LABEL_15;
    case 6:
      v4 = 18;
      goto LABEL_15;
    case 7:
      v4 = 19;
      goto LABEL_15;
    case 8:
      v4 = 20;
      goto LABEL_15;
    case 9:
      v4 = 21;
      goto LABEL_15;
    case 10:
      v4 = 22;
      goto LABEL_15;
    case 11:
      v4 = 23;
      goto LABEL_15;
    case 12:
      v3 = qword_1BC76FA68[a2];
      return MEMORY[0x1BFB272F0](v3);
    default:
      v4 = 12;
LABEL_15:
      MEMORY[0x1BFB272F0](v4);
      return MEMORY[0x1BFB272F0](v3);
  }
}

uint64_t sub_1BC758424()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BC75C700();
  sub_1BC758364(v4, v1, v2);
  return sub_1BC75C720();
}

uint64_t sub_1BC758480()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BC75C700();
  sub_1BC758364(v4, v1, v2);
  return sub_1BC75C720();
}

char *sub_1BC7585E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1F0, &qword_1BC7664A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_1BC758714(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 == 1)
      {
        return a1 == a3;
      }

      return 0;
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      return a1 == a3;
    case 3:
      if (a4 != 3)
      {
        return 0;
      }

      return a1 == a3;
    case 4:
      if (a4 != 4)
      {
        return 0;
      }

      return a1 == a3;
    case 5:
      if (a4 != 5)
      {
        return 0;
      }

      return a1 == a3;
    case 6:
      if (a4 != 6)
      {
        return 0;
      }

      return a1 == a3;
    case 7:
      if (a4 != 7)
      {
        return 0;
      }

      return a1 == a3;
    case 8:
      if (a4 == 8)
      {
        return a1 == a3;
      }

      return 0;
    case 9:
      if (a4 != 9)
      {
        return 0;
      }

      return a1 == a3;
    case 10:
      if (a4 != 10)
      {
        return 0;
      }

      return a1 == a3;
    case 11:
      if (a4 != 11)
      {
        return 0;
      }

      return a1 == a3;
    case 12:
      switch(a1)
      {
        case 1:
          if (a4 != 12 || a3 != 1)
          {
            return 0;
          }

          break;
        case 2:
          if (a4 != 12 || a3 != 2)
          {
            return 0;
          }

          break;
        case 3:
          if (a4 != 12 || a3 != 3)
          {
            return 0;
          }

          break;
        case 4:
          if (a4 != 12 || a3 != 4)
          {
            return 0;
          }

          break;
        case 5:
          if (a4 != 12 || a3 != 5)
          {
            return 0;
          }

          break;
        case 6:
          if (a4 != 12 || a3 != 6)
          {
            return 0;
          }

          break;
        case 7:
          if (a4 != 12 || a3 != 7)
          {
            return 0;
          }

          break;
        case 8:
          if (a4 != 12 || a3 != 8)
          {
            return 0;
          }

          break;
        case 9:
          if (a4 != 12 || a3 != 9)
          {
            return 0;
          }

          break;
        case 10:
          if (a4 != 12 || a3 != 10)
          {
            return 0;
          }

          break;
        case 11:
          if (a4 != 12 || a3 != 11)
          {
            return 0;
          }

          break;
        case 12:
          if (a4 != 12 || a3 != 12)
          {
            return 0;
          }

          break;
        case 13:
          if (a4 != 12 || a3 != 13)
          {
            return 0;
          }

          break;
        case 14:
          if (a4 != 12 || a3 != 14)
          {
            return 0;
          }

          break;
        case 15:
          if (a4 != 12 || a3 != 15)
          {
            return 0;
          }

          break;
        case 16:
          if (a4 != 12 || a3 != 16)
          {
            return 0;
          }

          break;
        case 17:
          if (a4 != 12 || a3 != 17)
          {
            return 0;
          }

          break;
        case 18:
          if (a4 != 12 || a3 != 18)
          {
            return 0;
          }

          break;
        case 19:
          if (a4 != 12 || a3 != 19)
          {
            return 0;
          }

          break;
        case 20:
          if (a4 != 12 || a3 != 20)
          {
            return 0;
          }

          break;
        case 21:
          if (a4 != 12 || a3 != 21)
          {
            return 0;
          }

          break;
        case 22:
          if (a4 != 12 || a3 != 22)
          {
            return 0;
          }

          break;
        default:
          if (a4 != 12 || a3 != 0)
          {
            return 0;
          }

          break;
      }

      return 1;
    default:
      return !a4 && a1 == a3;
  }
}

unint64_t sub_1BC758A54()
{
  result = qword_1EBCDF500;
  if (!qword_1EBCDF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF500);
  }

  return result;
}

unint64_t sub_1BC758AAC()
{
  result = qword_1EBCDF508;
  if (!qword_1EBCDF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF508);
  }

  return result;
}

unint64_t sub_1BC758B04()
{
  result = qword_1EBCDF510;
  if (!qword_1EBCDF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF510);
  }

  return result;
}

unint64_t sub_1BC758B5C()
{
  result = qword_1EBCDF518;
  if (!qword_1EBCDF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF518);
  }

  return result;
}

unint64_t sub_1BC758BB8()
{
  result = qword_1EBCDF520;
  if (!qword_1EBCDF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF520);
  }

  return result;
}

uint64_t _s5FieldOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 9))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s5FieldOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 8) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BC758C9C(uint64_t a1)
{
  if (*(a1 + 8) <= 0xBu)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_1BC758CB4(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    LOBYTE(a2) = 12;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EBCF43E0 == -1)
  {
    if (qword_1EBCF43E8)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_1EBCF43E8)
    {
      goto LABEL_3;
    }
  }

  if (qword_1EBCF43D8 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_1EBCF43CC > a3)
      {
        goto LABEL_11;
      }

      if (dword_1EBCF43CC >= a3)
      {
        result = dword_1EBCF43D0 >= a4;
        v12 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = qword_1EBCF43E8;
  if (qword_1EBCF43E8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EBCF43E8 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1BFB27590](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_1EBCF43CC, &dword_1EBCF43D0);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}