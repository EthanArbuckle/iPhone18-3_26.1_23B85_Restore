void sub_26C64BFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void (**a8)(void), double a9, double a10, double a11)
{
  v22 = swift_allocObject();
  *(v22 + 16) = a8;
  v23 = *(a6 + 16);
  _Block_copy(a8);
  if (v23)
  {
    v24 = @"captureToState";
    v25 = sub_26C648170(v24);
    if (v26)
    {
      sub_26C64AA4C(*(a6 + 56) + 32 * v25, &v33);

      sub_26C64CEC0(&v33, &qword_2804A7638);
      a8[2](a8);

      return;
    }
  }

  v33 = 0u;
  v34 = 0u;
  sub_26C64CEC0(&v33, &qword_2804A7638);
  v27 = swift_allocObject();
  *(v27 + 16) = a7;
  *(v27 + 24) = a1;
  *(v27 + 32) = a2;
  *(v27 + 40) = a3;
  *(v27 + 48) = a4;
  *(v27 + 56) = a9;
  *(v27 + 64) = a10;
  *(v27 + 72) = a11;
  *(v27 + 80) = a5;
  *(v27 + 88) = a6;
  *(v27 + 96) = sub_26C64CFFC;
  *(v27 + 104) = v22;
  v28 = swift_allocObject();
  *(v28 + 16) = a7;
  *(v28 + 24) = a1;
  *(v28 + 32) = a2;
  *(v28 + 40) = a3;
  *(v28 + 48) = a4;
  *(v28 + 56) = a6;
  *(v28 + 64) = a9;
  *(v28 + 72) = a5;
  *(v28 + 80) = sub_26C64CB1C;
  *(v28 + 88) = v27;
  v29 = a7;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v30 = v29;

  v31 = sub_26C64D9C8();
  v35 = sub_26C64CBBC;
  v36 = v28;
  *&v33 = MEMORY[0x277D85DD0];
  *(&v33 + 1) = 1107296256;
  *&v34 = sub_26C64CFF0;
  *(&v34 + 1) = &block_descriptor_50;
  v32 = _Block_copy(&v33);

  [a5 resetToState:v31 completion:v32];
  _Block_release(v32);
}

void sub_26C64C270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  v10 = [a5 viewToCapture];
  v11 = [v10 layer];

  v12 = [v11 context];
  if (!v12)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v78 = v12;
  v79 = [v12 contextId];
  v13 = [a5 initialState];
  v14 = sub_26C64D9F8();
  v16 = v15;

  if (v14 == a1 && v16 == a2)
  {
  }

  else
  {
    v17 = sub_26C64DBE8();

    v18 = 0;
    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v18 = 1;
LABEL_7:
  v19 = sub_26C64D9C8();
  v20 = sub_26C64D9C8();
  v21 = [a5 isSequenceSecure:v19 toState:v20];

  if (!v21)
  {
    v18 |= 2u;
  }

  v22 = sub_26C64D9C8();
  v23 = sub_26C64D9C8();
  v24 = [a5 isSequenceDelayed:v22 toState:v23];

  if (v24)
  {
    v25 = v18 | 4;
  }

  else
  {
    v25 = v18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C64F3A0;
  *(inited + 32) = @"captureFromState";
  v27 = MEMORY[0x277D837D0];
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 64) = v27;
  *(inited + 72) = @"captureToState";
  *(inited + 80) = a3;
  *(inited + 88) = a4;
  *(inited + 104) = v27;
  *(inited + 112) = @"captureFlags";
  v28 = MEMORY[0x277D84CC0];
  *(inited + 120) = v25;
  *(inited + 144) = v28;
  *(inited + 152) = @"captureContextList";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7668);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26C64F3B0;
  *(v29 + 32) = v79;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7670);
  *(inited + 160) = v29;
  v30 = @"captureFromState";

  v31 = @"captureToState";

  v32 = @"captureFlags";
  v33 = @"captureContextList";
  v34 = sub_26C6497F8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7678);
  swift_arrayDestroy();
  if ([a5 respondsToSelector_])
  {
    v35 = [a5 captureBoundsDefiningView];
    v36 = [v35 layer];

    if (v36)
    {
      *&v83.d = sub_26C6431E0(0, &qword_2804A7680);
      *&v83.a = v36;
      sub_26C649920(&v83, &v82);
      v37 = @"captureLayerBounds";
      v38 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26C648D1C(&v82, v37, isUniquelyReferenced_nonNull_native);

LABEL_22:
      return;
    }
  }

  if (([a5 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_26;
  }

  v38 = [a5 referenceView];
  if (([a5 respondsToSelector_] & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [a5 captureBounds];
  v80 = v40;
  v76 = v41;
  v43 = v42;
  v45 = v44;
  v46 = [v38 window];
  if (!v46)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v47 = v46;
  v48 = [v46 screen];

  [v48 scale];
  v50 = v49;

  CGAffineTransformMakeScale(&v83, v50, v50);
  a = v83.a;
  b = v83.b;
  c = v83.c;
  d = v83.d;
  tx = v83.tx;
  ty = v83.ty;
  [v38 convertRect:0 toView:{v80, v76, v43, v45}];
  v77 = a;
  v83.a = a;
  v83.b = b;
  v57 = b;
  v83.c = c;
  v83.d = d;
  v81 = tx;
  v83.tx = tx;
  v83.ty = ty;
  v58 = ty;
  v85 = CGRectApplyAffineTransform(v84, &v83);
  x = v85.origin.x;
  y = v85.origin.y;
  width = v85.size.width;
  height = v85.size.height;
  type metadata accessor for CGRect(0);
  v64 = v63;
  v83.d = v63;
  v65 = swift_allocObject();
  *&v83.a = v65;
  v65[2] = x;
  v65[3] = y;
  v65[4] = width;
  v65[5] = height;
  sub_26C649920(&v83, &v82);
  v66 = @"captureBounds";
  v67 = swift_isUniquelyReferenced_nonNull_native();
  sub_26C648D1C(&v82, v66, v67);

  if (*(v34 + 16))
  {
    v68 = sub_26C648170(@"fallbackIndicatorFrame");
    if (v69)
    {
      sub_26C64AA4C(*(v34 + 56) + 32 * v68, &v83);
      if (swift_dynamicCast())
      {
        v83.a = v77;
        v83.b = v57;
        v83.c = c;
        v83.d = d;
        v83.tx = v81;
        v83.ty = v58;
        v86 = CGRectApplyAffineTransform(v82, &v83);
        v70 = v86.origin.x;
        v71 = v86.origin.y;
        v72 = v86.size.width;
        v73 = v86.size.height;
        v83.d = v64;
        v74 = swift_allocObject();
        *&v83.a = v74;
        v74[2] = v70;
        v74[3] = v71;
        v74[4] = v72;
        v74[5] = v73;
        sub_26C649920(&v83, &v82);
        v75 = swift_isUniquelyReferenced_nonNull_native();
        sub_26C648D1C(&v82, @"fallbackIndicatorFrame", v75);

        goto LABEL_22;
      }
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26C64C9BC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26C64CA24()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_26C64CABC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_26C64CB5C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_26C64CBF8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26C64CC5C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26C64CCE8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26C64CD48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C64CD90()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C64CEC0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C64CF20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}