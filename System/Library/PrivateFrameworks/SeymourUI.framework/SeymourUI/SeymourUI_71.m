double static LinearGradient.darkScrimGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C1517D0;
  if (qword_27C760BE0 != -1)
  {
    swift_once();
  }

  sub_20C13C364();
  *(v2 + 32) = sub_20C13C434();
  *(v2 + 40) = v3;
  sub_20C13C364();
  *(v2 + 48) = sub_20C13C434();
  *(v2 + 56) = v4;
  sub_20C13C364();
  *(v2 + 64) = sub_20C13C434();
  *(v2 + 72) = v5;
  sub_20C13C444();
  sub_20C13C204();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_20BD113F8@<X0>(double (**a1)@<D0>(uint64_t@<X0>, uint64_t *@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_20BD12750;
  a1[1] = v5;
}

uint64_t sub_20BD116AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_20C13C314();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v4);
  result = sub_20C13C374();
  *a2 = result;
  return result;
}

double static LinearGradient.lightScrimGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C14F320;
  if (qword_27C760BE0 != -1)
  {
    swift_once();
  }

  sub_20C13C364();
  *(v2 + 32) = sub_20C13C434();
  *(v2 + 40) = v3;
  sub_20C13C364();
  *(v2 + 48) = sub_20C13C434();
  *(v2 + 56) = v4;
  sub_20C13C444();
  sub_20C13C204();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_20BD11908()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = sub_20C1357B4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20BD11A60()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20BD11B38()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20BD11BC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20BD11BC4()
{
  if (!qword_281100598)
  {
    type metadata accessor for WorkoutPlanArtworkV2.Workout(255);
    v0 = sub_20C13CD04();
    if (!v1)
    {
      atomic_store(v0, &qword_281100598);
    }
  }
}

double sub_20BD11C1C@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20C13C1F4();

  return sub_20BD100FC(a1, a2);
}

unint64_t sub_20BD11CCC()
{
  result = qword_27C76DFF0;
  if (!qword_27C76DFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76DFE0);
    sub_20BD11D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DFF0);
  }

  return result;
}

unint64_t sub_20BD11D58()
{
  result = qword_27C76DFF8;
  if (!qword_27C76DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DFF8);
  }

  return result;
}

unint64_t sub_20BD11DAC()
{
  result = qword_27C76E000;
  if (!qword_27C76E000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76DFE8);
    sub_20BD11E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E000);
  }

  return result;
}

unint64_t sub_20BD11E38()
{
  result = qword_27C76E008;
  if (!qword_27C76E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E008);
  }

  return result;
}

uint64_t sub_20BD11E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C13C1F4() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_20BD1042C(a1, v6, v7, v8, a2);
}

unint64_t sub_20BD11F10()
{
  result = qword_27C76E030;
  if (!qword_27C76E030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76E020);
    sub_20BD11F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E030);
  }

  return result;
}

unint64_t sub_20BD11F9C()
{
  result = qword_27C76E038;
  if (!qword_27C76E038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76E040);
    sub_20BD12028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E038);
  }

  return result;
}

unint64_t sub_20BD12028()
{
  result = qword_27C76E048;
  if (!qword_27C76E048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76E050);
    sub_20B6D6ABC(&qword_27C76E058, &qword_27C76E060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E048);
  }

  return result;
}

uint64_t sub_20BD120E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20BD12128(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v16 = result;
      sub_20BD12744(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    while ((a3 & 1) == 0)
    {
      if ((result & 0x8000000000000000) != 0 || (v7 = 1 << *(a5 + 32), result >= v7))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = result >> 6;
      v9 = *(a5 + 56 + 8 * (result >> 6));
      if (((v9 >> result) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_21;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 64 + 8 * v8);
        while (v12 < (v7 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      a3 = 0;
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20BD12260(unint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_20C134634();
    sub_20BD120E0(&qword_27C76E100, MEMORY[0x277D508E8]);
    v2 = sub_20C13C7A4();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = sub_20C13C7A4();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BD12328(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x20F2F6A60](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_20BD12328(v6, a2, a3);
  }

  return result;
}

uint64_t sub_20BD123CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanArtworkV2.Day(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BD12430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for WorkoutPlanArtworkV2.Day(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_20C13C1F4();
  v10 = *(v3 + v9);
  v11 = *(v3 + v9 + 8);

  return sub_20BD10A18(a1, a2, v3 + v8, v10, v11, a3);
}

uint64_t sub_20BD12530(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0C0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_20BD12598()
{
  result = qword_27C76E098;
  if (!qword_27C76E098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76E088);
    sub_20BD12624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E098);
  }

  return result;
}

unint64_t sub_20BD12624()
{
  result = qword_27C76E0A0;
  if (!qword_27C76E0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76E0A8);
    sub_20B6D6ABC(&qword_27C76E0B0, &qword_27C76E0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E0A0);
  }

  return result;
}

uint64_t sub_20BD126DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BD12744(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_20BD12758()
{
  v1 = OBJC_IVAR____TtC9SeymourUI14CollectionView____lazy_storage___smoothDecelerationAnimation;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI14CollectionView____lazy_storage___smoothDecelerationAnimation);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI14CollectionView____lazy_storage___smoothDecelerationAnimation);
  }

  else
  {
    v4 = sub_20BD127B8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_20BD127B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
  [v0 setMass_];
  [v0 setStiffness_];
  [v0 setDamping_];
  v1 = v0;
  [v1 durationForEpsilon_];
  [v1 setDuration_];
  v2 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v3) = 1045220557;
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 1.0;
  v6 = [v2 initWithControlPoints__:0.0 :{v3, v4, v5}];
  [v1 setTimingFunction_];

  return v1;
}

uint64_t sub_20BD12948(char a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
  if (v4 && (v5 = , v4(v5), v7 = v6, v8 = v6, sub_20B583ECC(v4), v8 <= 0xFB) && (v7 & 0xC0) == 0x40)
  {
    result = [v2 isUserInteractionEnabled];
    if (result)
    {
      result = [v2 scrollsToTop];
      if (result)
      {
        result = [v2 isScrollEnabled];
        if (result)
        {
          if ([v2 isTracking])
          {
            return 0;
          }

          if ([v2 isZooming])
          {
            return 0;
          }

          [v2 contentOffset];
          if (v10 <= 0.0)
          {
            return 0;
          }

          v11 = [v2 delegate];
          if (v11)
          {
            v12 = v11;
            if ([v11 respondsToSelector_])
            {
              v13 = [v12 scrollViewShouldScrollToTop_];
              swift_unknownObjectRelease();
              if (!v13)
              {
                return 0;
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          [v2 contentOffset];
          v15 = v14;
          v16 = sub_20BD12758();
          [v2 _setContentOffset_animated_animationCurve_animationAdjustsForContentOffsetDelta_animation_];

          return 1;
        }
      }
    }
  }

  else
  {
    v17.receiver = v2;
    v17.super_class = type metadata accessor for CollectionView();
    return objc_msgSendSuper2(&v17, sel__scrollToTopIfPossible_, a1 & 1);
  }

  return result;
}

id sub_20BD12C14(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_onLayoutUpdate];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView____lazy_storage___smoothDecelerationAnimation] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CollectionView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_20BD12CD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BD12D8C()
{
  v33 = sub_20C136594();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C134014();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20C134A74();
  MEMORY[0x28223BE20](v36);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ShelfIndexedLazyLockup();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v0 + 168);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v37 = MEMORY[0x277D84F90];

    sub_20B526D44(0, v11, 0);
    v12 = v37;
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v34 = *(v7 + 72);
    v28 = (v1 + 8);
    v29 = (v1 + 32);
    v27 = (v3 + 32);
    v25 = v10;
    v26 = (v3 + 8);
    do
    {
      sub_20BCC3E8C(v13, v9, type metadata accessor for ShelfIndexedLazyLockup);
      sub_20BCC3E8C(&v9[*(v35 + 20)], v6, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = v30;
        v15 = v31;
        (*v27)(v30, v6, v31);
        v16 = sub_20C133E44();
        v18 = v17;
        v19 = v26;
      }

      else
      {
        v14 = v32;
        v15 = v33;
        (*v29)(v32, v6, v33);
        v16 = sub_20C136564();
        v18 = v20;
        v19 = v28;
      }

      (*v19)(v14, v15);
      sub_20BD1672C(v9, type metadata accessor for ShelfIndexedLazyLockup);
      v37 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_20B526D44((v21 > 1), v22 + 1, 1);
        v12 = v37;
      }

      *(v12 + 16) = v22 + 1;
      v23 = v12 + 16 * v22;
      *(v23 + 32) = v16;
      *(v23 + 40) = v18;
      v13 += v34;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_20BD13168(uint64_t (*a1)(unint64_t, void, char *, void), uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v40 = sub_20C136594();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C134014();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C134A74();
  MEMORY[0x28223BE20](v46);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E138);
  MEMORY[0x28223BE20](v45);
  v11 = (&v34 - v10);
  swift_beginAccess();
  v12 = *(v2 + 168);
  v13 = *(v12 + 16);
  v47 = v2;
  v48 = v13;
  v14 = (v5 + 32);
  v15 = (v5 + 8);
  v38 = (v3 + 32);

  v17 = 0;
  v41 = MEMORY[0x277D84F90];
  while (1)
  {
    v18 = v17;
    if (v48 == v17)
    {

      return v41;
    }

    if (v17 >= *(v12 + 16))
    {
      break;
    }

    v19 = (type metadata accessor for ShelfIndexedLazyLockup() - 8);
    v20 = v12 + ((*(*v19 + 80) + 32) & ~*(*v19 + 80)) + *(*v19 + 72) * v18;
    v21 = (v11 + *(v45 + 48));
    *v11 = v18;
    sub_20BCC3E8C(v20, v21, type metadata accessor for ShelfIndexedLazyLockup);
    sub_20BCC3E8C(v21 + v19[7], v9, MEMORY[0x277D50C70]);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = *v38;
      v37(v39, v9, v40);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B80);
      v25 = swift_allocBox();
      v27 = v26;
      v28 = v24[12];
      v35 = v24[16];
      v36 = v25;
      v29 = v24[20];
      *v26 = *v21;
      v37(v26 + v28, v39, v40);
      v30 = v47;
      *(v27 + v35) = *(v47 + 104);
      *(v27 + v29) = *(v30 + 105);
      v23 = v36 | 0x3000000000000007;
      sub_20B520158(v11, &qword_27C76E138);
      goto LABEL_8;
    }

    v22 = v42;
    (*v14)(v7, v9, v42);
    v23 = v43(v18, *v21, v7, *(v47 + 104));
    (*v15)(v7, v22);
    result = sub_20B520158(v11, &qword_27C76E138);
    v17 = v18 + 1;
    if ((~v23 & 0xF000000000000007) != 0)
    {
LABEL_8:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v41 + 2) + 1, 1, v41);
        v41 = result;
      }

      v32 = *(v41 + 2);
      v31 = *(v41 + 3);
      if (v32 >= v31 >> 1)
      {
        result = sub_20BC05D3C((v31 > 1), v32 + 1, 1, v41);
        v41 = result;
      }

      v17 = v18 + 1;
      v33 = v41;
      *(v41 + 2) = v32 + 1;
      *&v33[8 * v32 + 32] = v23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BD1362C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a3;
  v100 = a4;
  v117 = sub_20C136594();
  v99 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v121 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_20C134014();
  v7 = *(v122 - 8);
  v8 = MEMORY[0x28223BE20](v122);
  v103 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v102 = &v98 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v111 = (&v98 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v110 = (&v98 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v120 = (&v98 - v17);
  MEMORY[0x28223BE20](v16);
  v109 = &v98 - v18;
  v126 = sub_20C134A74();
  v19 = MEMORY[0x28223BE20](v126);
  v104 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v112 = &v98 - v22;
  MEMORY[0x28223BE20](v21);
  v118 = &v98 - v23;
  v124 = type metadata accessor for ShelfIndexedLazyLockup();
  v24 = MEMORY[0x28223BE20](v124);
  v113 = (&v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v24);
  v123 = (&v98 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v98 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v119 = &v98 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v98 - v34;
  v36 = *(a2 + 16);
  v115 = v7;
  v101 = v33;
  if (v36)
  {
    v108 = *a1;
    v37 = *(v33 + 72);
    v116 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v38 = a2 + v116;
    v106 = (v7 + 32);
    v105 = (v7 + 8);
    v125 = MEMORY[0x277D84F90];
    v39 = v118;
    v107 = v37;
    while (1)
    {
      sub_20BCC3E8C(v38, v35, type metadata accessor for ShelfIndexedLazyLockup);
      sub_20BCC3E8C(&v35[*(v124 + 20)], v39, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v40 = v30;
      v41 = v109;
      v42 = v122;
      v43 = (*v106)(v109, v39, v122);
      MEMORY[0x28223BE20](v43);
      *(&v98 - 2) = v41;
      v44 = sub_20B796808(sub_20BD1670C, (&v98 - 4), v108);
      (*v105)(v41, v42);
      if (v44)
      {
        v30 = v40;
        v39 = v118;
        v37 = v107;
LABEL_9:
        sub_20BD1678C(v35, v30, type metadata accessor for ShelfIndexedLazyLockup);
        v45 = v125;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5E158(0, *(v125 + 16) + 1, 1);
          v39 = v118;
          v125 = v127;
        }

        v48 = *(v125 + 16);
        v47 = *(v125 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_20BB5E158(v47 > 1, v48 + 1, 1);
          v39 = v118;
          v125 = v127;
        }

        v49 = v125;
        *(v125 + 16) = v48 + 1;
        sub_20BD1678C(v30, v49 + v116 + v48 * v37, type metadata accessor for ShelfIndexedLazyLockup);
        goto LABEL_4;
      }

      sub_20BD1672C(v35, type metadata accessor for ShelfIndexedLazyLockup);
      v30 = v40;
      v39 = v118;
      v37 = v107;
LABEL_4:
      v38 += v37;
      if (!--v36)
      {
        goto LABEL_15;
      }
    }

    sub_20BD1672C(v39, MEMORY[0x277D50C70]);
    goto LABEL_9;
  }

  v125 = MEMORY[0x277D84F90];
LABEL_15:
  v50 = *(v125 + 16);
  v51 = MEMORY[0x277D84F90];
  if (v50)
  {
    v52 = *(v124 + 20);
    v53 = v125 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
    v54 = *(v101 + 72);
    v55 = (v115 + 32);
    v56 = v112;
    v57 = v110;
    do
    {
      v58 = v119;
      sub_20BCC3E8C(v53, v119, type metadata accessor for ShelfIndexedLazyLockup);
      sub_20BD1678C(v58 + v52, v56, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v59 = *v55;
        v60 = v111;
        v61 = v56;
        v62 = v122;
        (*v55)(v111, v61, v122);
        v59(v57, v60, v62);
        v59(v120, v57, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_20BC06C30(0, v51[2] + 1, 1, v51);
        }

        v64 = v51[2];
        v63 = v51[3];
        if (v64 >= v63 >> 1)
        {
          v51 = sub_20BC06C30(v63 > 1, v64 + 1, 1, v51);
        }

        v51[2] = v64 + 1;
        v59((v51 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v64), v120, v122);
        v56 = v112;
      }

      else
      {
        sub_20BD1672C(v56, MEMORY[0x277D50C70]);
      }

      v53 += v54;
      --v50;
    }

    while (v50);
  }

  v65 = v114;

  v66 = sub_20BD172F4(v51);

  *(v65 + 160) = v66;

  v67 = *(v125 + 16);
  if (!v67)
  {

    v68 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v127 = MEMORY[0x277D84F90];
  sub_20BB5E158(0, v67, 0);
  v68 = v127;
  v69 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v70 = v125 + v69;
  v71 = *(v101 + 72);
  v120 = (v99 + 32);
  v111 = (v99 + 8);
  v112 = (v115 + 16);
  v110 = (v115 + 32);
  v72 = v104;
  v73 = v113;
  v118 = v71;
  v119 = v69;
  do
  {
    sub_20BCC3E8C(v70, v73, type metadata accessor for ShelfIndexedLazyLockup);
    sub_20BCC3E8C(v73 + *(v124 + 20), v72, MEMORY[0x277D50C70]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20BD1678C(v73, v123, type metadata accessor for ShelfIndexedLazyLockup);
      sub_20BD1672C(v72, MEMORY[0x277D50C70]);
      goto LABEL_35;
    }

    v74 = *v120;
    v75 = v117;
    (*v120)(v121, v72, v117);
    v76 = sub_20C136564();
    v78 = v77;
    v79 = *(v114 + 160);
    if (*(v79 + 16))
    {
      v80 = v76;

      v81 = sub_20B65AA60(v80, v78);
      v83 = v82;

      if (v83)
      {
        v84 = v115;
        v85 = *(v79 + 56) + *(v115 + 72) * v81;
        v86 = v103;
        v87 = v122;
        (*(v115 + 16))(v103, v85, v122);

        (*v111)(v121, v117);
        v88 = *(v84 + 32);
        v89 = v102;
        v88(v102, v86, v87);
        v73 = v113;
        v116 = *v113;
        sub_20BD1672C(v113, type metadata accessor for ShelfIndexedLazyLockup);
        v90 = v123;
        v88(v123 + *(v124 + 20), v89, v87);
        swift_storeEnumTagMultiPayload();
        *v90 = v116;
        v71 = v118;
        v69 = v119;
        v72 = v104;
        goto LABEL_35;
      }

      v75 = v117;
      v72 = v104;
    }

    else
    {
    }

    v91 = v113;
    v92 = *v113;
    sub_20BD1672C(v113, type metadata accessor for ShelfIndexedLazyLockup);
    v93 = v123;
    (v74)(v123 + *(v124 + 20), v121, v75);
    v73 = v91;
    swift_storeEnumTagMultiPayload();
    *v93 = v92;
    v71 = v118;
    v69 = v119;
LABEL_35:
    v127 = v68;
    v95 = *(v68 + 16);
    v94 = *(v68 + 24);
    if (v95 >= v94 >> 1)
    {
      sub_20BB5E158(v94 > 1, v95 + 1, 1);
      v73 = v113;
      v68 = v127;
    }

    *(v68 + 16) = v95 + 1;
    sub_20BD1678C(v123, v68 + v69 + v95 * v71, type metadata accessor for ShelfIndexedLazyLockup);
    v70 += v71;
    --v67;
  }

  while (v67);

LABEL_40:
  v96 = v114;
  swift_beginAccess();
  *(v96 + 168) = v68;

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20BD14244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E130);
  v6 = MEMORY[0x28223BE20](v62);
  v58 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v44 - v8;
  v9 = type metadata accessor for ShelfIndexedLazyLockup();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v49 = v15;
  v50 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = &v44 - v16;
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v45 = v13;
    v46 = v12;
    v47 = v3;
    v48 = a2;
    v64 = MEMORY[0x277D84F90];
    sub_20BB5E158(0, v17, 0);
    v18 = v64;
    v19 = 0;
    v54 = sub_20C136594();
    v20 = *(v54 - 8);
    v21 = *(v20 + 16);
    v20 += 16;
    v56 = v17;
    v57 = v21;
    v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v23 = *(v20 + 56);
    v55 = v20;
    v52 = (v20 + 16);
    v53 = v23;
    v24 = v21;
    v25 = v58;
    do
    {
      v63 = v18;
      v27 = v61;
      v26 = v62;
      v28 = *(v62 + 48);
      v29 = v54;
      v24(&v61[v28], v22, v54);
      *v25 = v19;
      v30 = *(v26 + 48);
      (*v52)(&v25[v30], &v27[v28], v29);
      v31 = v29;
      v18 = v63;
      v24(&v11[*(v60 + 20)], &v25[v30], v31);
      sub_20C134A74();
      swift_storeEnumTagMultiPayload();
      *v11 = v19;
      sub_20B520158(v25, &qword_27C76E130);
      v64 = v18;
      v33 = *(v18 + 16);
      v32 = *(v18 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_20BB5E158(v32 > 1, v33 + 1, 1);
        v18 = v64;
      }

      ++v19;
      *(v18 + 16) = v33 + 1;
      sub_20BD1678C(v11, v18 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v33, type metadata accessor for ShelfIndexedLazyLockup);
      v22 += v53;
    }

    while (v56 != v19);
    v3 = v47;
    v13 = v45;
    v12 = v46;
  }

  v34 = v3[11];
  v35 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v34);
  v36 = v51;
  (*(v35 + 8))(v34, v35);
  v37 = swift_allocObject();
  *(v37 + 16) = v18;
  *(v37 + 24) = v3;
  v38 = v50;
  (*(v13 + 16))(v50, v36, v12);
  v39 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v40 = (v49 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v13 + 32))(v41 + v39, v38, v12);
  v42 = (v41 + v40);
  *v42 = sub_20B8406F4;
  v42[1] = v37;

  sub_20C137C94();
  return (*(v13 + 8))(v36, v12);
}

void sub_20BD14728(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C134A74();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ShelfIndexedLazyLockup();
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B7A8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_20C136594();
  v36 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v41 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 20 * (a1 / 20);
  if (!__OFADD__(v15, 20))
  {
    swift_beginAccess();
    v16 = *(*(v2 + 168) + 16) - 1;
    if (v16 >= (v15 + 20))
    {
      v16 = v15 + 20;
    }

    v40 = v16;
    if (v16 < v15)
    {
      sub_20BD17628();
      v17 = swift_allocError();
      *v18 = 3;
      *(swift_allocObject() + 16) = v17;
LABEL_25:
      sub_20C137CA4();
      return;
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      v33 = a2;
      v19 = *(v2 + 168);
      if (v15 < *(v19 + 16))
      {
        v20 = (v36 + 32);
        v38 = (v36 + 48);
        v39 = (v36 + 56);
        v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v37 = *(v8 + 72);
        v22 = v21 + v37 * v15;
        v23 = MEMORY[0x277D84F90];
        v34 = v7;
        v35 = v5;
        while (1)
        {
          v24 = v42;
          sub_20BCC3E8C(v19 + v22, v42, type metadata accessor for ShelfIndexedLazyLockup);
          sub_20BD1678C(v24 + *(v43 + 20), v7, MEMORY[0x277D50C70]);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            (*v39)(v12, 1, 1, v13);
            sub_20BD1672C(v7, MEMORY[0x277D50C70]);
          }

          else
          {
            (*v20)(v12, v7, v13);
            (*v39)(v12, 0, 1, v13);
          }

          if ((*v38)(v12, 1, v13) == 1)
          {
            sub_20B520158(v12, &qword_27C76B7A8);
          }

          else
          {
            v25 = v2;
            v26 = *v20;
            (*v20)(v41, v12, v13);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_20BC0662C(0, *(v23 + 2) + 1, 1, v23);
            }

            v28 = *(v23 + 2);
            v27 = *(v23 + 3);
            if (v28 >= v27 >> 1)
            {
              v23 = sub_20BC0662C(v27 > 1, v28 + 1, 1, v23);
            }

            *(v23 + 2) = v28 + 1;
            v26(&v23[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v28], v41, v13);
            v2 = v25;
            v7 = v34;
          }

          if (v40 == v15)
          {
            break;
          }

          ++v15;
          v19 = *(v2 + 168);
          v22 += v37;
          if (v15 >= *(v19 + 16))
          {
            goto LABEL_26;
          }
        }

        v30 = sub_20B63F2F0(v29, v23);

        if (*(v30 + 16))
        {
          sub_20BD14CEC(v30, v33);

          return;
        }

        sub_20BD17628();
        v31 = swift_allocError();
        *v32 = 1;
        *(swift_allocObject() + 16) = v31;
        goto LABEL_25;
      }

LABEL_26:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_20BD14CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0);
  v133 = *(v4 - 8);
  v134 = v4;
  MEMORY[0x28223BE20](v4);
  v130 = v5;
  v131 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v132 = &v118 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764358);
  v128 = *(v8 - 8);
  v129 = v8;
  MEMORY[0x28223BE20](v8);
  v126 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v9;
  MEMORY[0x28223BE20](v10);
  v127 = &v118 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v118 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v118 - v20;
  v135 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v118 - v24;
  v147 = sub_20C136594();
  v26 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C13BB84();
  MEMORY[0x28223BE20](v28);
  v124 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 16);
  if (v32)
  {
    v118 = v30;
    v119 = v29;
    v120 = v15;
    v138 = v25;
    v136 = v21;
    v121 = v18;
    v122 = v13;
    v123 = v12;
    v140 = v2;
    v148 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v32, 0);
    v33 = v148;
    v35 = *(v26 + 16);
    v34 = v26 + 16;
    v36 = *(v34 + 64);
    v139 = a1;
    v37 = a1 + ((v36 + 32) & ~v36);
    v144 = *(v34 + 56);
    v145 = v35;
    v141 = v34;
    v143 = (v34 - 8);
    v38 = v37;
    v39 = v32;
    do
    {
      v40 = v146;
      v41 = v147;
      v145(v146, v38, v147);
      v42 = sub_20C136564();
      v44 = v43;
      v142 = *v143;
      v142(v40, v41);
      v148 = v33;
      v46 = *(v33 + 16);
      v45 = *(v33 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_20B526D44((v45 > 1), v46 + 1, 1);
        v33 = v148;
      }

      *(v33 + 16) = v46 + 1;
      v47 = v33 + 16 * v46;
      *(v47 + 32) = v42;
      *(v47 + 40) = v44;
      v38 += v144;
      --v39;
    }

    while (v39);
    v48 = v124;
    sub_20C13B534();

    v49 = sub_20C13BB74();
    v50 = sub_20C13D1F4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v148 = v52;
      *v51 = 136446210;
      v53 = MEMORY[0x20F2F43F0](v33, MEMORY[0x277D837D0]);
      v55 = v54;

      v56 = sub_20B51E694(v53, v55, &v148);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_20B517000, v49, v50, "[ShelfLazyLockupFetcher] refreshing lockups with identifiers %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x20F2F6A40](v52, -1, -1);
      MEMORY[0x20F2F6A40](v51, -1, -1);
    }

    else
    {
    }

    (*(v118 + 8))(v48, v119);
    v61 = v140;
    v62 = v140[19];

    v64 = sub_20B745ACC(v63, v62);

    v61[19] = v64;

    v148 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v32, 0);
    v65 = v148;
    do
    {
      v66 = v146;
      v67 = v147;
      v145(v146, v37, v147);
      v68 = sub_20C136564();
      v70 = v69;
      v142(v66, v67);
      v148 = v65;
      v72 = *(v65 + 16);
      v71 = *(v65 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_20B526D44((v71 > 1), v72 + 1, 1);
        v65 = v148;
      }

      *(v65 + 16) = v72 + 1;
      v73 = v65 + 16 * v72;
      *(v73 + 32) = v68;
      *(v73 + 40) = v70;
      v37 += v144;
      --v32;
    }

    while (v32);
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    v75 = v74;
    __swift_project_boxed_opaque_existential_1(v61 + 3, v61[6]);
    v76 = v127;
    sub_20C139F14();
    v77 = swift_allocObject();
    *(v77 + 16) = sub_20B80E4E0;
    *(v77 + 24) = v75;
    v147 = v75;
    v79 = v128;
    v78 = v129;
    v80 = v126;
    (*(v128 + 16))(v126, v76, v129);
    v81 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v82 = (v125 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = swift_allocObject();
    (*(v79 + 32))(v83 + v81, v80, v78);
    v84 = (v83 + v82);
    *v84 = sub_20BD1757C;
    v84[1] = v77;

    sub_20C137C94();
    (*(v79 + 8))(v76, v78);
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    v86 = v140[11];
    v87 = v140[12];
    __swift_project_boxed_opaque_existential_1(v140 + 8, v86);
    v88 = v132;
    (*(v87 + 8))(v86, v87);
    v89 = swift_allocObject();
    *(v89 + 16) = sub_20BD177AC;
    *(v89 + 24) = v85;
    v146 = v85;
    v91 = v133;
    v90 = v134;
    v92 = v131;
    (*(v133 + 16))(v131, v88, v134);
    v93 = (*(v91 + 80) + 16) & ~*(v91 + 80);
    v94 = (v130 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    (*(v91 + 32))(v95 + v93, v92, v90);
    v96 = (v95 + v94);
    *v96 = sub_20BD175AC;
    v96[1] = v89;

    v97 = v136;
    sub_20C137C94();
    (*(v91 + 8))(v88, v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
    v98 = v122;
    v99 = *(v122 + 72);
    v100 = *(v122 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_20C14F320;
    v102 = v101 + ((v100 + 32) & ~v100);
    v103 = *(v98 + 16);
    v145 = v103;
    v104 = v123;
    v103(v102, v138, v123);
    v103((v102 + v99), v97, v104);
    v148 = v101;
    sub_20B5E2E18();
    v105 = sub_20C13D374();
    sub_20C13A7C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798);
    sub_20BD175B4();
    v106 = v121;
    sub_20C137C84();

    v107 = swift_allocObject();
    v108 = v146;
    v107[2] = v147;
    v107[3] = v108;
    v109 = v139;
    v110 = v140;
    v107[4] = v65;
    v107[5] = v110;
    v107[6] = v109;
    v111 = swift_allocObject();
    *(v111 + 16) = sub_20BD17618;
    *(v111 + 24) = v107;
    v112 = v120;
    v145(v120, v106, v104);
    v113 = (v100 + 16) & ~v100;
    v114 = (v135 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
    v115 = swift_allocObject();
    (*(v98 + 32))(v115 + v113, v112, v104);
    v116 = (v115 + v114);
    *v116 = sub_20B64B960;
    v116[1] = v111;

    sub_20C137C94();
    v117 = *(v98 + 8);
    v117(v106, v104);
    v117(v136, v104);
    v117(v138, v104);
  }

  else
  {
    v57 = sub_20C133A24();
    sub_20BBAE560();
    v58 = swift_allocError();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D50210], v57);
    *(swift_allocObject() + 16) = v58;

    return sub_20C137CA4();
  }
}

uint64_t sub_20BD15A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_20C134014();
  v124 = *(v12 - 8);
  v125 = v12;
  MEMORY[0x28223BE20](v12);
  v120 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v116 = &v112 - v15;
  MEMORY[0x28223BE20](v16);
  v123 = &v112 - v17;
  v18 = sub_20C13BB84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v112 - v23;
  swift_beginAccess();
  v117 = *(a1 + 16);
  if (!v117)
  {
    sub_20C13B534();
    v40 = sub_20C13BB74();
    v41 = sub_20C13D1D4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_20B517000, v40, v41, "[ShelfLazyLockupFetcher] failed to fetch remote lockups", v42, 2u);
      MEMORY[0x20F2F6A40](v42, -1, -1);
    }

    (*(v19 + 8))(v24, v18);
    sub_20BD17628();
    v43 = swift_allocError();
    *v44 = 2;
    *(swift_allocObject() + 16) = v43;
    return sub_20C137CA4();
  }

  swift_beginAccess();
  v121 = *(a2 + 16);
  if (!v121)
  {
    sub_20C13B534();
    v45 = sub_20C13BB74();
    v46 = sub_20C13D1D4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20B517000, v45, v46, "[ShelfLazyLockupFetcher] failed to fetch allowed content ratings", v47, 2u);
      MEMORY[0x20F2F6A40](v47, -1, -1);
    }

    (*(v19 + 8))(v21, v18);
    sub_20BD17628();
    v48 = swift_allocError();
    *v49 = 0;
    *(swift_allocObject() + 16) = v48;
    return sub_20C137CA4();
  }

  v119 = a5;
  v113 = a4;
  v112 = a6;
  v25 = v117;
  v26 = *(v117 + 16);
  if (v26)
  {
    v118 = a3;
    v126 = MEMORY[0x277D84F90];

    sub_20B526D44(0, v26, 0);
    v27 = v126;
    v122 = *(v124 + 16);
    v28 = v25 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
    v29 = *(v124 + 72);
    v30 = (v124 + 8);
    do
    {
      v31 = v123;
      v32 = v125;
      (v122)(v123, v28, v125);
      v33 = sub_20C133E44();
      v35 = v34;
      result = (*v30)(v31, v32);
      v126 = v27;
      v38 = *(v27 + 16);
      v37 = *(v27 + 24);
      if (v38 >= v37 >> 1)
      {
        result = sub_20B526D44((v37 > 1), v38 + 1, 1);
        v27 = v126;
      }

      *(v27 + 16) = v38 + 1;
      v39 = v27 + 16 * v38;
      *(v39 + 32) = v33;
      *(v39 + 40) = v35;
      v28 += v29;
      --v26;
    }

    while (v26);
    a3 = v118;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v122 = v27;
  v50 = *(a3 + 16);
  if (v50)
  {
    v51 = 0;
    v52 = a3 + 40;
    v114 = MEMORY[0x277D84F90];
    v118 = a3 + 40;
    do
    {
      v53 = (v52 + 16 * v51);
      v54 = v51;
      while (1)
      {
        if (v54 >= v50)
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v51 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_65;
        }

        v56 = *(v53 - 1);
        v55 = *v53;
        v126 = v56;
        v127 = v55;
        MEMORY[0x28223BE20](result);
        *(&v112 - 2) = &v126;

        if ((sub_20B79692C(sub_20B606650, (&v112 - 4), v122) & 1) == 0)
        {
          break;
        }

        ++v54;
        v53 += 2;
        if (v51 == v50)
        {
          goto LABEL_32;
        }
      }

      v57 = v114;
      result = swift_isUniquelyReferenced_nonNull_native();
      v128 = v57;
      if ((result & 1) == 0)
      {
        result = sub_20B526D44(0, *(v57 + 16) + 1, 1);
        v57 = v128;
      }

      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      if (v59 >= v58 >> 1)
      {
        result = sub_20B526D44((v58 > 1), v59 + 1, 1);
        v57 = v128;
      }

      *(v57 + 16) = v59 + 1;
      v114 = v57;
      v60 = v57 + 16 * v59;
      *(v60 + 32) = v56;
      *(v60 + 40) = v55;
      v52 = v118;
    }

    while (v51 != v50);
  }

  else
  {
    v114 = MEMORY[0x277D84F90];
  }

LABEL_32:
  v61 = v113;
  v62 = *(v113 + 152);

  *(v61 + 152) = sub_20B6D38F8(v119, v62);

  v63 = v117;
  v119 = *(v117 + 16);
  if (v119)
  {
    v64 = 0;
    v118 = v124 + 16;
    v115 = (v124 + 8);
    v65 = (v124 + 32);
    v66 = MEMORY[0x277D84F90];
    v67 = v125;
    v68 = v116;
    while (v64 < *(v63 + 16))
    {
      v69 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v70 = *(v124 + 72);
      v71 = (*(v124 + 16))(v68, v63 + v69 + v70 * v64, v67);
      MEMORY[0x28223BE20](v71);
      *(&v112 - 2) = v68;
      if (sub_20B796808(sub_20BD177C4, (&v112 - 4), v121))
      {
        v72 = v68;
        v73 = *v65;
        (*v65)(v120, v72, v67);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5E8CC(0, *(v66 + 16) + 1, 1);
          v67 = v125;
          v66 = v126;
        }

        v76 = *(v66 + 16);
        v75 = *(v66 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_20BB5E8CC(v75 > 1, v76 + 1, 1);
          v67 = v125;
          v66 = v126;
        }

        *(v66 + 16) = v76 + 1;
        result = (v73)(v66 + v69 + v76 * v70, v120, v67);
        v68 = v116;
        v63 = v117;
      }

      else
      {
        result = (*v115)(v68, v67);
      }

      if (v119 == ++v64)
      {
        goto LABEL_44;
      }
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v66 = MEMORY[0x277D84F90];
LABEL_44:

  v77 = *(v66 + 16);
  v78 = MEMORY[0x277D84F90];
  v119 = v66;
  if (v77)
  {
    v126 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v77, 0);
    v79 = v125;
    v78 = v126;
    v80 = *(v124 + 16);
    v81 = v66 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
    v120 = *(v124 + 72);
    v121 = v80;
    v124 += 16;
    v82 = (v124 - 8);
    do
    {
      v83 = v123;
      v121(v123, v81, v79);
      v84 = sub_20C133E44();
      v79 = v125;
      v85 = v84;
      v87 = v86;
      (*v82)(v83, v125);
      v126 = v78;
      v89 = *(v78 + 16);
      v88 = *(v78 + 24);
      if (v89 >= v88 >> 1)
      {
        sub_20B526D44((v88 > 1), v89 + 1, 1);
        v79 = v125;
        v78 = v126;
      }

      *(v78 + 16) = v89 + 1;
      v90 = v78 + 16 * v89;
      *(v90 + 32) = v85;
      *(v90 + 40) = v87;
      v81 += v120;
      --v77;
    }

    while (v77);
  }

  result = v122;
  v91 = *(v122 + 16);
  if (v91)
  {
    v92 = 0;
    v93 = v122 + 40;
    v123 = v91 - 1;
    v124 = v122 + 40;
    v125 = MEMORY[0x277D84F90];
LABEL_51:
    v94 = (v93 + 16 * v92);
    v95 = v92;
    while (v95 < *(v122 + 16))
    {
      v97 = *(v94 - 1);
      v96 = *v94;
      v92 = v95 + 1;
      v126 = v97;
      v127 = v96;
      MEMORY[0x28223BE20](result);
      *(&v112 - 2) = &v126;

      if ((sub_20B79692C(sub_20B606CAC, (&v112 - 4), v78) & 1) == 0)
      {
        v98 = v125;
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v128 = v98;
        if ((v99 & 1) == 0)
        {
          sub_20B526D44(0, *(v98 + 16) + 1, 1);
          v98 = v128;
        }

        result = v122;
        v101 = *(v98 + 16);
        v100 = *(v98 + 24);
        if (v101 >= v100 >> 1)
        {
          sub_20B526D44((v100 > 1), v101 + 1, 1);
          result = v122;
          v98 = v128;
        }

        *(v98 + 16) = v101 + 1;
        v125 = v98;
        v102 = v98 + 16 * v101;
        *(v102 + 32) = v97;
        *(v102 + 40) = v96;
        v93 = v124;
        if (v123 != v95)
        {
          goto LABEL_51;
        }

        goto LABEL_63;
      }

      v94 += 2;
      ++v95;
      if (v91 == v92)
      {
        goto LABEL_63;
      }
    }

LABEL_67:
    __break(1u);
    return result;
  }

  v125 = MEMORY[0x277D84F90];
LABEL_63:

  v126 = v114;
  sub_20B8DB710(v125);
  v103 = v126;
  v104 = v113;

  v105 = v119;
  v106 = sub_20BD172F4(v119);

  *(v104 + 160) = v106;

  swift_beginAccess();
  v107 = *(v104 + 168);

  v108 = sub_20B527580(v103);

  v109 = sub_20C12D21C(v108, v107);

  *(v104 + 168) = v109;

  v110 = *(v104 + 168);

  v111 = sub_20BCC36F4(v105, v110);

  *(v104 + 168) = v111;

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20BD165E8()
{
  v0 = sub_20C133E84();
  v2 = v1;
  v4 = v3 & 1;
  sub_20B654378();
  sub_20B652F70();
  v5 = sub_20C133C04();
  sub_20B583F4C(v0, v2, v4);
  return v5 & 1;
}

uint64_t sub_20BD16688()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_20BD1672C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BD1678C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BD167F4(uint64_t a1, uint64_t a2)
{
  v69 = sub_20C136594();
  v4 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v58 - v7;
  v84 = sub_20C134014();
  v8 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_20C134A74();
  MEMORY[0x28223BE20](v82);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E138);
  MEMORY[0x28223BE20](v81);
  v85 = &v58 - v12;
  swift_beginAccess();
  v13 = *(a1 + 168);
  v14 = *(v13 + 16);
  v15 = OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_mediaTagStringBuilder;
  v60 = OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_lastEditOperation;

  v80 = v14;
  if (v14)
  {
    v17 = 0;
    v66 = (a2 + v15);
    v59 = a2;
    v65 = a2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState;
    v64 = (v4 + 32);
    v63 = (v8 + 32);
    v62 = (v8 + 16);
    v61 = (v8 + 8);
    v18 = MEMORY[0x277D84F90];
    v78 = v11;
    v79 = a1;
    v19 = v85;
    v77 = v13;
    while (v17 < *(v13 + 16))
    {
      v86 = v18;
      v20 = (type metadata accessor for ShelfIndexedLazyLockup() - 8);
      v21 = v13 + ((*(*v20 + 80) + 32) & ~*(*v20 + 80)) + *(*v20 + 72) * v17;
      v22 = (v19 + *(v81 + 48));
      *v19 = v17;
      sub_20BCC3E8C(v21, v22, type metadata accessor for ShelfIndexedLazyLockup);
      sub_20BCC3E8C(v22 + v20[7], v11, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v63)(v83, v11, v84);
        v75 = *v22;
        v76 = *(a1 + 104);
        v23 = v66[3];
        v24 = v66[4];
        __swift_project_boxed_opaque_existential_1(v66, v23);
        v25 = sub_20C136194();
        v26 = v67;
        (*(*(v25 - 8) + 56))(v67, 1, 1, v25);
        MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v26, v23, v24, v87);
        sub_20B520158(v26, &unk_27C765110);
        v27 = *(v65 + 8) >> 62;
        if (v27 == 2)
        {
          if (v17 == *(v65 + 16))
          {
            v28 = 3;
          }

          else
          {
            v28 = (*(v59 + v60) == 2) | *(v59 + v60) & 1;
          }
        }

        else if ((v27 - 3) >= 0xFFFFFFFE)
        {
          v28 = (*(v59 + v60) == 2) | *(v59 + v60) & 1;
        }

        else
        {
          v28 = 2;
        }

        v74 = v28;
        v72 = v87[0];
        v71 = v87[1];
        v70 = v87[2];
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
        v73 = swift_allocBox();
        v44 = v43;
        v45 = v42[12];
        v46 = v42[16];
        v47 = (v43 + v42[20]);
        v48 = v43 + v42[24];
        v49 = v43 + v42[28];
        v50 = v42[32];
        v51 = v42[36];
        *v43 = v75;
        v53 = v83;
        v52 = v84;
        (*v62)(v43 + v45, v83, v84);
        *(v44 + v46) = v76;
        v54 = v71;
        *v47 = v72;
        v47[1] = v54;
        v47[2] = v70;
        v55 = v74;
        *(v48 + 4) = 0;
        *v48 = 0u;
        *(v48 + 1) = 0u;
        *(v48 + 20) = (v55 << 8) | 1;
        *v49 = 3;
        v49[8] = 3;
        *(v44 + v50) = 0;
        *(v44 + v51) = sub_20B6B2348(MEMORY[0x277D84F90]);
        v41 = v73 | 0x3000000000000006;
        (*v61)(v53, v52);
        a1 = v79;
        v19 = v85;
      }

      else
      {
        v29 = *v64;
        v30 = v68;
        v31 = v69;
        (*v64)(v68, v11, v69);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B80);
        v33 = swift_allocBox();
        v35 = v34;
        v36 = v32[12];
        v37 = v32[16];
        v38 = v32[20];
        *v34 = *v22;
        v39 = v34 + v36;
        v40 = v30;
        a1 = v79;
        v29(v39, v40, v31);
        v19 = v85;
        *(v35 + v37) = *(a1 + 104);
        *(v35 + v38) = *(a1 + 105);
        v41 = v33 | 0x3000000000000007;
      }

      sub_20B520158(v19, &qword_27C76E138);
      v18 = v86;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v18 + 16) + 1, 1, v18);
        v18 = result;
      }

      v13 = v77;
      v11 = v78;
      v57 = *(v18 + 16);
      v56 = *(v18 + 24);
      if (v57 >= v56 >> 1)
      {
        result = sub_20BC05D3C((v56 > 1), v57 + 1, 1, v18);
        v18 = result;
      }

      ++v17;
      *(v18 + 16) = v57 + 1;
      *(v18 + 8 * v57 + 32) = v41;
      if (v80 == v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
LABEL_21:

    return v18;
  }

  return result;
}

uint64_t sub_20BD16FC4(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = sub_20C134014();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763928);
  result = MEMORY[0x28223BE20](v8);
  v41 = (v37 - v11);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(result + 48);
    v39 = v5;
    v40 = v13;
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    v43 = (v42 + 32);
    v37[2] = v42 + 40;
    v38 = v15;
    while (1)
    {
      v44 = v12;
      v17 = v41;
      sub_20BD1750C(v14, v41);
      v19 = *v17;
      v18 = v17[1];
      v20 = *v43;
      v21 = v7;
      (*v43)(v7, v17 + v40, v5);
      v22 = *v45;
      v24 = sub_20B65AA60(v19, v18);
      v25 = v22[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        break;
      }

      v28 = v23;
      if (v22[3] >= v27)
      {
        if ((a2 & 1) == 0)
        {
          sub_20BA114B8();
        }
      }

      else
      {
        sub_20BA0C3EC(v27, a2 & 1);
        v29 = sub_20B65AA60(v19, v18);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_17;
        }

        v24 = v29;
      }

      v31 = *v45;
      if (v28)
      {

        v16 = v31[7] + *(v42 + 72) * v24;
        v7 = v21;
        v5 = v39;
        result = (*(v42 + 40))(v16, v21, v39);
      }

      else
      {
        v31[(v24 >> 6) + 8] |= 1 << v24;
        v32 = (v31[6] + 16 * v24);
        *v32 = v19;
        v32[1] = v18;
        v33 = v31[7] + *(v42 + 72) * v24;
        v7 = v21;
        v5 = v39;
        result = v20(v33, v21, v39);
        v34 = v31[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_16;
        }

        v31[2] = v36;
      }

      v14 += v38;
      a2 = 1;
      v12 = v44 - 1;
      if (v44 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_20C13E054();
    __break(1u);
  }

  return result;
}

uint64_t sub_20BD172F4(uint64_t a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763928);
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = (&v17 - v4);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = v1;
    v21 = MEMORY[0x277D84F90];
    sub_20BB5E784(0, v6, 0);
    v7 = v21;
    v19 = sub_20C134014();
    v8 = *(v19 - 8);
    v18 = *(v8 + 16);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v18(v5 + *(v20 + 48), v9, v19);
      *v5 = sub_20C133E44();
      v5[1] = v11;
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_20BB5E784(v12 > 1, v13 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v13 + 1;
      sub_20BBAEB10(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13);
      v9 += v10;
      --v6;
    }

    while (v6);
    v1 = v17;
  }

  v14 = *(v1 + 160);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v14;
  sub_20BD16FC4(v7, isUniquelyReferenced_nonNull_native, &v21);

  return v21;
}

uint64_t sub_20BD1750C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763928);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20BD175B4()
{
  result = qword_27C771DC0;
  if (!qword_27C771DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76B798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771DC0);
  }

  return result;
}

unint64_t sub_20BD17628()
{
  result = qword_27C76E128;
  if (!qword_27C76E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E128);
  }

  return result;
}

uint64_t sub_20BD1767C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20BD17758()
{
  result = qword_27C76E140;
  if (!qword_27C76E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E140);
  }

  return result;
}

void sub_20BD1780C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_20C03697C();
  sub_20BD181F0();
  sub_20B7959B8(0);
  sub_20BAD5954();
  v1 = *(*(*&v0[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 48);
      swift_unknownObjectRetain();
      v6(ObjectType, v4);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_20BD17CBC(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor];
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_standardNavigationBarTintColor];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setTintColor_];
  }

  v9 = v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior + 16];
  if (v9 <= 0xFB)
  {
    if (v9 >> 6)
    {
      if (v9 >> 6 != 1)
      {
        sub_20C13DC94();
        MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
        sub_20C13DDF4();
        sub_20C1380E4();

        goto LABEL_12;
      }

      v9 = 0;
    }

    sub_20BE8F76C(v9);
  }

LABEL_12:
}

void sub_20BD17EB0(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  v18.receiver = v2;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, sel_viewWillDisappear_, a1 & 1);
  v17 = v2;
  sub_20C132E84();
  sub_20BD191D4(&qword_27C76E1D8, v9, type metadata accessor for CatalogEditorialCollectionDetailViewController);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v13 = sub_20C13CC74();

    v17 = v2;
    MEMORY[0x28223BE20](v14);
    *(&v16 - 2) = &v17;
    LOBYTE(v12) = sub_20B79AEEC(sub_20B5978BC, (&v16 - 4), v13);

    if ((v12 & 1) == 0)
    {
      v17 = v2;
      sub_20BD191D4(&qword_27C76E1E0, v15, type metadata accessor for CatalogEditorialCollectionDetailViewController);
      sub_20C138C64();
    }
  }
}

void sub_20BD181F0()
{
  v36[3] = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  v36[0] = v0;
  type metadata accessor for MoreOptionsButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = v0;
  v3 = [ObjCClassFromMetadata buttonWithType_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = &v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance];
  [v3 setTintColor_];
  v5 = *(v4 + 10);
  v6 = *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor];
  *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor] = v5;
  v7 = v5;

  *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors] = MEMORY[0x277D84FA0];

  sub_20BCC01CC(v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary], 0);
  sub_20B68E264(v36, v34);
  v8 = v35;
  if (v35)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v34, v35);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x28223BE20](v9);
    v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_20C13DFD4();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v14 = 0;
  }

  [v3 addTarget:v14 action:sel_moreOptionsButtonTapped_ forControlEvents:0x2000];
  swift_unknownObjectRelease();
  sub_20B8006F4(v36);
  v15 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v17 = v3;
  *(v17 + 1) = &off_2822DD228;
  v33.receiver = v16;
  v33.super_class = v15;
  v18 = v3;
  v19 = objc_msgSendSuper2(&v33, sel_init);
  [v19 setCustomView_];

  v20 = *&v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_upNextQueueButton];
  v21 = objc_allocWithZone(v15);
  v22 = &v21[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v22 = v20;
  *(v22 + 1) = &off_2822C8C68;
  v32.receiver = v21;
  v32.super_class = v15;
  v23 = v20;
  v24 = objc_msgSendSuper2(&v32, sel_init);
  [v24 setCustomView_];

  if (v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_platform] == 1)
  {
    v25 = [v2 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C150040;
    *(v28 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
    *(v28 + 40) = v19;
    v27 = (v28 + 48);
    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_platform])
  {
    v25 = [v2 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20C151490;
    *(v26 + 32) = v19;
    v27 = (v26 + 40);
LABEL_8:
    *v27 = v24;
    sub_20B51C88C(0, &qword_27C770510);
    v29 = v19;
    v30 = v24;
    v31 = sub_20C13CC54();

    [v25 setRightBarButtonItems_];
  }
}

void sub_20BD18630()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItems];

  if (!v2)
  {
    return;
  }

  sub_20B51C88C(0, &qword_27C770510);
  v3 = sub_20C13CC74();

  if (v3 >> 62)
  {
LABEL_21:
    v4 = sub_20C13DB34();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_22:

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x20F2F5430](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v10 = [v7 customView];
    if (v10)
    {
      break;
    }

    v6 = v8;
LABEL_6:

    ++v5;
    if (v9 == v4)
    {
      goto LABEL_22;
    }
  }

  v6 = v10;
  type metadata accessor for MoreOptionsButton();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  v11 = v8;
  sub_20C03A3E4(v8, 0);
}

id sub_20BD188CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BD18A10(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_standardNavigationBarTintColor];
    }

    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor] = v2;
    v4 = v2;

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    v10[4] = sub_20B7C9A90;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20B7B548C;
    v10[3] = &block_descriptor_120;
    v7 = _Block_copy(v10);
    v8 = v4;
    v9 = v1;

    [v5 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
  }
}

uint64_t sub_20BD18BC0(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

uint64_t sub_20BD18CF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BD18DA8()
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20BD18E0C()
{
  swift_getWitnessTable();

  return sub_20C139374();
}

id sub_20BD18EA0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v22[3] = a5;
  v22[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v12 = &a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = -4;
  a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isTransitioningContentInset] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_resignActiveObserver] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_visibility] = 1;
  v13 = OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_standardNavigationBarTintColor;
  *&a4[v13] = [objc_opt_self() whiteColor];
  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isBeyondScrollBoundary] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dependencies] = a1;
  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_eventHub] = v21[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v21, &a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v21, &a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_storefrontLocalizer]);
  v14 = &a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_contentInsetInitialBehavior];
  *v14 = 0;
  v14[8] = 0;
  sub_20B51CC64(v22, &a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_platform] = v21[0];
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_subscriptionToken] = sub_20C13A914();
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_upNextQueueButtonPresenter] = sub_20B887320();
  v15 = sub_20BE8C450(&unk_28228D4A8);

  v17 = sub_20BAB9360(v16, v15, 0);

  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_upNextQueueButton] = v17;
  v20.receiver = a4;
  v20.super_class = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v22);
  *(a2 + 24) = &off_2822DFFF8;
  swift_unknownObjectWeakAssign();
  return v18;
}

uint64_t sub_20BD191D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20BD1921C()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_resignActiveObserver) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_visibility) = 1;
  v2 = OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_standardNavigationBarTintColor;
  *(v0 + v2) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BD1936C()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for EngagementBannerBackgroundView();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  [v0 bounds];
  if (v3 != 0.0 || v2 != 0.0)
  {
    v4 = *&v0[OBJC_IVAR____TtC9SeymourUI30EngagementBannerBackgroundView_imageDisplay + 8];
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(ObjectType, v4);
    if (v6)
    {
      v7 = v6;
      [v6 size];
      if (v9 != 0.0 || v8 != 0.0)
      {
        v10 = *&v1[OBJC_IVAR____TtC9SeymourUI30EngagementBannerBackgroundView_imageDisplayWidthConstraint];
        [v1 bounds];
        Height = CGRectGetHeight(v16);
        [v7 size];
        v13 = Height / v12;
        [v7 size];
        [v10 setConstant_];

        v7 = v10;
      }
    }
  }
}

id sub_20BD19514()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementBannerBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_20BD195B8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_showSeparator] = 1;
  v11 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 4.0;
  }

  v13 = &v4[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView];
  v14 = [v11 layer];
  [v14 setCornerRadius_];

  [v11 setClipsToBounds_];
  *v13 = v11;
  v13[1] = &off_2822B63E8;
  v15 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_stackView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v16 &selRef_count + 2];
  [v16 setAxis_];
  [v16 setAlignment_];
  [v16 setSpacing_];
  [v16 setDistribution_];
  *&v4[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_headerLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  v19 = [objc_opt_self() preferredFontForTextStyle_];
  [v18 setFont_];

  v20 = objc_opt_self();
  v21 = [v20 systemGrayColor];
  [v18 setTextColor_];

  v22 = v18;
  [v22 &selRef_count + 2];
  [v22 setAdjustsFontForContentSizeCategory_];
  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v22 &selRef:1 setBackgroundColor:v24 + 6];
  v25 = [v20 systemBackgroundColor];
  [v22 setBackgroundColor_];

  *&v4[v17] = v22;
  v26 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_container;
  v27 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v27 &selRef_count + 2];
  v28 = [v20 clearColor];
  [v27 &:v28 OBJC:? LABEL:? PROTOCOL:? :? :?UINavigationControllerDelegate];

  *&v4[v26] = v27;
  v29 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_textLayoutGuide;
  *&v4[v29] = [objc_allocWithZone(MEMORY[0x277D756D0]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v30 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v31 &selRef_count + 2];
  v32 = [v20 whiteColor];
  [v31 setTextColor_];

  [v31 setNumberOfLines_];
  [v31 setLineBreakMode_];
  LODWORD(v33) = 1148846080;
  [v31 setContentCompressionResistancePriority:1 forAxis:v33];
  v34 = [v20 systemBackgroundColor];
  [v31 setBackgroundColor_];

  *&v4[v30] = v31;
  v35 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel;
  v36 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  v37 = [v20 whiteColor];
  [v36 setTextColor_];

  [v36 setNumberOfLines_];
  [v36 setLineBreakMode_];
  LODWORD(v38) = 1148846080;
  [v36 setContentCompressionResistancePriority:1 forAxis:v38];
  v39 = [v20 systemBackgroundColor];
  [v36 setBackgroundColor_];

  *&v4[v35] = v36;
  v40 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_separator;
  v41 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  v42 = [v20 separatorColor];
  [v41 &:v42 OBJC:? LABEL:? PROTOCOL:? :? :?UINavigationControllerDelegate];

  *&v4[v40] = v41;
  v43 = &v4[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider];
  sub_20BD1CEF8(v69);
  v44 = v69[5];
  v43[4] = v69[4];
  v43[5] = v44;
  v45 = v69[6];
  v46 = v69[1];
  *v43 = v69[0];
  v43[1] = v46;
  v47 = v69[3];
  v43[2] = v69[2];
  v43[3] = v47;
  v43[6] = v45;
  v43[7] = xmmword_20C17A400;
  v43[8] = xmmword_20C15FDA0;
  v68.receiver = v4;
  v68.super_class = type metadata accessor for GroupedBrickItemCell();
  v48 = objc_msgSendSuper2(&v68, sel_initWithFrame_, a1, a2, a3, a4);
  v49 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_container;
  v50 = *&v48[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_container];
  v51 = *&v48[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView];
  v52 = v48;
  [v50 addSubview_];
  v53 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel;
  [*&v48[v49] addSubview_];
  v54 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel;
  [*&v48[v49] addSubview_];
  [*&v48[v49] addLayoutGuide_];
  v55 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_stackView;
  [*&v52[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_stackView] addArrangedSubview_];
  [*&v52[v55] addArrangedSubview_];
  v56 = [v52 contentView];
  [v56 addSubview_];

  v57 = *&v52[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_separator];
  v58 = v52;
  [v58 addSubview_];
  v59 = [v58 traitCollection];

  v60 = *&v52[v53];
  v61 = &v58[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider];
  v62 = *&v58[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 72];
  v71 = *&v58[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 56];
  v72 = v62;
  v73 = *&v58[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 88];
  v74 = *&v58[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 104];
  v63 = sub_20B7C6A74(v59);
  [v60 setFont_];

  v64 = *&v52[v54];
  v65 = *(v61 + 1);
  v69[7] = *v61;
  v69[8] = v65;
  v69[9] = *(v61 + 2);
  v70 = *(v61 + 6);
  v66 = sub_20B7C6A74(v59);
  [v64 setFont_];

  sub_20BD1A37C();
  return v58;
}

uint64_t sub_20BD1A01C(void *a1)
{
  v31.receiver = v1;
  v31.super_class = type metadata accessor for GroupedBrickItemCell();
  objc_msgSendSuper2(&v31, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        v15 = *&Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel];
        v16 = &Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider];
        v17 = *&Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 72];
        v36 = *&Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 56];
        v37 = v17;
        v38 = *&Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 88];
        v39 = *&Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 104];
        v18 = sub_20B7C6A74(v13);
        [v15 setFont_];

        v19 = *&Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel];
        v20 = *(v16 + 1);
        v32 = *v16;
        v33 = v20;
        v34 = *(v16 + 2);
        v35 = *(v16 + 6);
        v21 = sub_20B7C6A74(v13);
        [v19 setFont_];

        v3 = v21;
      }
    }
  }

  else
  {
    v22 = [v1 traitCollection];
    v23 = swift_unknownObjectUnownedLoadStrong();
    v24 = *&v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel];
    v25 = &v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider];
    v26 = *&v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 72];
    v36 = *&v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 56];
    v37 = v26;
    v38 = *&v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 88];
    v39 = *&v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 104];
    v27 = sub_20B7C6A74(v22);
    [v24 setFont_];

    v28 = *&v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel];
    v29 = *(v25 + 1);
    v32 = *v25;
    v33 = v29;
    v34 = *(v25 + 2);
    v35 = *(v25 + 6);
    v3 = sub_20B7C6A74(v22);
    [v28 setFont_];
  }

  return swift_unknownObjectUnownedDestroy();
}

void sub_20BD1A37C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_stackView];
  v3 = [v0 contentView];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  sub_20C13BBA4();
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v8 = [v2 leadingAnchor];
  v9 = [v3 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v5];

  LODWORD(v11) = 1148846080;
  [v10 setPriority_];
  v12 = v10;
  v13 = [v2 trailingAnchor];
  v14 = [v3 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-v7];

  LODWORD(v16) = v113;
  [v15 setPriority_];
  v17 = v15;
  v18 = [v2 topAnchor];
  v19 = [v3 &selRef_setLineBreakMode_];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v4];

  LODWORD(v21) = 1148846080;
  [v20 setPriority_];
  v22 = [v2 bottomAnchor];
  v23 = [v3 &selRef_secondaryLabel + 5];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-v6];

  LODWORD(v25) = 1148846080;
  [v24 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_20C14FE90;
  *(v112 + 32) = v12;
  *(v112 + 40) = v17;
  *(v112 + 48) = v20;
  *(v112 + 56) = v24;
  v26 = v20;

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C151850;
  v28 = v27;
  v29 = *&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView];
  v30 = [v29 widthAnchor];
  v31 = [v1 contentView];
  v32 = [v31 widthAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 multiplier:0.5];
  v28[4] = v33;
  v34 = [v29 widthAnchor];
  v35 = [v29 heightAnchor];
  v36 = &v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider];
  v37 = [v34 constraintEqualToAnchor:v35 multiplier:*&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 112]];

  v28[5] = v37;
  v38 = [v29 leadingAnchor];
  v39 = *&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_container];
  v40 = [v39 leadingAnchor];
  v41 = [v38 constraintEqualToAnchor_];

  v28[6] = v41;
  v42 = [v29 topAnchor];
  v43 = [v39 topAnchor];
  v44 = [v42 constraintGreaterThanOrEqualToAnchor_];

  v28[7] = v44;
  v45 = [v29 bottomAnchor];
  v46 = [v39 bottomAnchor];
  v47 = [v45 constraintLessThanOrEqualToAnchor:v46 constant:-v36[16]];

  v28[8] = v47;
  v111 = v28;
  v48 = [v29 centerYAnchor];
  v49 = [v39 centerYAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  v28[9] = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20C150050;
  v52 = v51;
  v53 = *&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_textLayoutGuide];
  v54 = [v53 leadingAnchor];
  v55 = [v29 trailingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:v36[15]];

  v52[4] = v56;
  v57 = [v53 centerYAnchor];
  v58 = [v29 centerYAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  v52[5] = v59;
  v60 = [v53 trailingAnchor];
  v61 = [v39 trailingAnchor];
  v62 = [v60 constraintLessThanOrEqualToAnchor_];

  v52[6] = v62;
  v63 = [v53 topAnchor];
  v64 = [v39 topAnchor];
  v65 = [v63 constraintGreaterThanOrEqualToAnchor_];

  v52[7] = v65;
  v66 = [v53 bottomAnchor];
  v67 = [v39 bottomAnchor];
  v68 = [v66 constraintLessThanOrEqualToAnchor_];

  v52[8] = v68;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_20C150040;
  v70 = v69;
  v71 = *&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel];
  v72 = [v71 leadingAnchor];
  v73 = [v53 leadingAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  v70[4] = v74;
  v75 = [v71 trailingAnchor];
  v76 = [v53 trailingAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  v70[5] = v77;
  v78 = [v71 topAnchor];
  v79 = [v53 topAnchor];
  v80 = [v78 constraintEqualToAnchor_];

  v70[6] = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_20C14FE90;
  v82 = *&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel];
  v83 = [v82 leadingAnchor];
  v84 = [v53 leadingAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  *(v81 + 32) = v85;
  v86 = [v82 trailingAnchor];
  v87 = [v53 trailingAnchor];
  v88 = [v86 constraintEqualToAnchor_];

  *(v81 + 40) = v88;
  v89 = [v82 topAnchor];
  v90 = [v71 bottomAnchor];
  v91 = [v89 constraintEqualToAnchor_];

  *(v81 + 48) = v91;
  v92 = [v82 bottomAnchor];
  v93 = [v53 bottomAnchor];
  v94 = [v92 constraintEqualToAnchor_];

  *(v81 + 56) = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_20C14FE90;
  v96 = *&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_separator];
  v97 = [v96 leadingAnchor];
  v98 = [v53 leadingAnchor];
  v99 = [v97 constraintEqualToAnchor_];

  *(v95 + 32) = v99;
  v100 = [v96 trailingAnchor];
  v101 = [v1 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor_];

  *(v95 + 40) = v102;
  v103 = [v96 bottomAnchor];
  v104 = [v1 bottomAnchor];
  v105 = [v103 constraintEqualToAnchor_];

  *(v95 + 48) = v105;
  v106 = [v96 heightAnchor];
  sub_20C1387F4();
  v107 = [v106 constraintEqualToConstant_];

  *(v95 + 56) = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150DB0;
  *(inited + 32) = v112;
  *(inited + 40) = v111;
  *(inited + 48) = v52;
  *(inited + 56) = v70;
  *(inited + 64) = v81;
  *(inited + 72) = v95;
  v109 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v110 = sub_20C13CC54();

  [v109 activateConstraints_];
}

id sub_20BD1B0AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupedBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GroupedBrickItemCell()
{
  result = qword_281102C98;
  if (!qword_281102C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD1B24C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BD1B320(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_20BD1B368(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_20BD1B3DC(unint64_t a1, int a2)
{
  LODWORD(v212) = a2;
  v4 = sub_20C13BB84();
  v213 = *(v4 - 8);
  v214 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v194 = *(v195 - 8);
  v7 = *(v194 + 64);
  MEMORY[0x28223BE20](v195);
  v191 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v192 = &v170 - v9;
  MEMORY[0x28223BE20](v10);
  v193 = &v170 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v170 - v13;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v204 = *(v205 - 8);
  v15 = *(v204 + 64);
  MEMORY[0x28223BE20](v205);
  MEMORY[0x28223BE20](v16);
  v198 = &v170 - v17;
  v201 = sub_20C1391C4();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v202 = &v170 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_20C138A64();
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v203 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v20 - 8);
  v199 = &v170 - v21;
  v22 = sub_20C13C554();
  v210 = *(v22 - 8);
  v211 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = (&v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v218 = sub_20C137C24();
  v216 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v206 = &v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = v25;
  MEMORY[0x28223BE20](v26);
  v217 = &v170 - v27;
  v28 = sub_20C136CD4();
  v208 = *(v28 - 8);
  v209 = v28;
  MEMORY[0x28223BE20](v28);
  v215 = &v170 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C134E44();
  MEMORY[0x28223BE20](v30 - 8);
  v219 = &v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C134014();
  v221 = *(v32 - 8);
  v222 = v32;
  *&v33 = MEMORY[0x28223BE20](v32).n128_u64[0];
  v220 = &v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = v2;
  v35 = *&v2[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_headerLabel];
  [v35 setHidden_];
  v223 = v35;
  [v35 setText_];
  v36 = (a1 >> 57) & 0x78 | a1 & 7;
  switch(v36)
  {
    case 28:
      v113 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v114 = v224;
      sub_20BD1B3DC(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20), v212 & 1);
      if (v113)
      {
        v115 = v223;
        [v223 setHidden_];
        v116 = sub_20C13C914();
        [v115 setText_];
      }

      [v114 setNeedsLayout];
      break;
    case 33:
      v111 = v224;
      sub_20BA1D9E0();
      [*&v111[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel] setText_];
      [*&v111[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel] setText_];
      v224 = [objc_opt_self() clearColor];
      [v223 setTextColor_];
      v112 = v224;

      break;
    case 32:
      v184 = v14;
      v180 = v15;
      v181 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v182 = v7;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
      v38 = swift_projectBox();
      v39 = v38 + *(v37 + 64);
      v40 = *v39;
      v41 = *(v39 + 8);
      v42 = *(v39 + 16);
      v43 = *(v39 + 24);
      v45 = *(v39 + 32);
      v44 = *(v39 + 40);
      (*(v221 + 16))(v220, v38, v222);
      v46 = v224;
      v47 = *&v224[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel];
      v48 = v40;
      v49 = v41;
      v186 = v42;
      v212 = v43;

      v190 = v45;

      v188 = v44;

      v189 = v48;
      [v47 setAttributedText_];
      v50 = v46;
      v51 = *&v46[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel];
      v187 = v49;
      [v51 setAttributedText_];
      sub_20C133F04();
      v185 = sub_20C138054();
      v53 = v52;
      v54 = v215;
      sub_20C134E34();
      v55 = v217;
      sub_20C136CB4();
      v56 = sub_20C136CC4();
      v58 = v57;
      sub_20B51C88C(0, &qword_281100530);
      *v24 = sub_20C13D374();
      v59 = v210;
      v60 = v211;
      (*(v210 + 104))(v24, *MEMORY[0x277D85200], v211);
      LOBYTE(v48) = sub_20C13C584();
      (*(v59 + 8))(v24, v60);
      if (v48)
      {
        v62 = *&v50[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView];
        v61 = *&v50[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView + 8];
        ObjectType = swift_getObjectType();
        [v62 setContentMode_];
        v64 = sub_20BA66C54(v55, v62, v61, 0);
        v213 = ObjectType;
        v214 = v61;
        if (v64)
        {
          v178 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v65 = v216;
          v66 = *(v216 + 16);
          v67 = v206;
          v183 = v56;
          v68 = v218;
          v174 = v216 + 16;
          v175 = v66;
          v66(v206, v55, v218);
          v69 = *(v65 + 80);
          v70 = (v69 + 24) & ~v69;
          v171 = v207 + 7;
          v71 = (v207 + 7 + v70) & 0xFFFFFFFFFFFFFFF8;
          v211 = v58;
          v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
          v179 = v62;
          v73 = v53;
          v74 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
          v210 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
          v177 = (v74 + 31) & 0xFFFFFFFFFFFFFFF8;
          v176 = v69;
          v75 = swift_allocObject();
          *(v75 + 16) = v178;
          v76 = v65;
          v77 = v67;
          v173 = *(v76 + 32);
          v172 = v76 + 32;
          v173(v75 + v70, v67, v68);
          v78 = (v75 + v71);
          v79 = v211;
          v80 = v185;
          *v78 = v183;
          v78[1] = v79;
          v81 = (v75 + v72);
          *v81 = v80;
          v81[1] = v73;
          *(v75 + v74) = 2;
          v82 = v75 + v210;
          *v82 = MEMORY[0x277D84F90];
          *(v82 + 8) = 0;
          v83 = (v75 + v177);
          *v83 = 0;
          v83[1] = 0;
          v84 = v214;
          v85 = *(v214 + 152);

          v210 = v73;
          v86 = v179;

          v87 = v213;
          v85(sub_20BD1CCB0, v75, v213, v84);

          [v86 bounds];
          if (v88 <= 0.0 || (v90 = v89, v89 <= 0.0))
          {

            v109 = v223;
            v110 = v209;
            v55 = v217;
          }

          else
          {
            v91 = v88;
            v178 = ~v176;
            (*(v84 + 120))(0, v87, v84);
            v92 = v199;
            v93 = v217;
            v94 = v218;
            v95 = v175;
            v175(v199, v217, v218);
            (*(v216 + 56))(v92, 0, 1, v94);
            (*(v84 + 16))(v92, v87, v84);
            sub_20B51C88C(0, &qword_27C762070);
            sub_20C137BC4();
            v96 = sub_20C13D5A4();
            [v86 setBackgroundColor_];

            (*(v84 + 176))(COERCE_DOUBLE(*&v91), COERCE_DOUBLE(*&v90), 0, v87, v84);
            v97 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v95(v77, v93, v94);
            v98 = (v176 + 16) & v178;
            v99 = (v171 + v98) & 0xFFFFFFFFFFFFFFF8;
            v100 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
            v101 = swift_allocObject();
            v199 = v101;
            v102 = v101 + v98;
            v103 = v218;
            v173(v102, v77, v218);
            *(v101 + v99) = v97;
            v104 = (v101 + v100);
            *v104 = v91;
            v104[1] = v90;
            v105 = (v101 + ((v100 + 23) & 0xFFFFFFFFFFFFFFF8));
            v55 = v217;
            *v105 = 0;
            v105[1] = 0;
            v175(v77, v55, v103);
            (*(v200 + 104))(v202, *MEMORY[0x277D542A8], v201);

            v106 = v203;
            sub_20C138A54();
            v107 = v184;
            sub_20B5F1988(v106, v184);
            v108 = v204;
            if ((*(v204 + 48))(v107, 1, v205) != 1)
            {
              v136 = *(v108 + 32);
              v211 = v108 + 32;
              v137 = v198;
              v136();
              v138 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v139 = v218;
              v175(v77, v55, v218);
              v140 = v108;
              v141 = (v176 + 40) & v178;
              v142 = v141 + v207;
              v143 = (v141 + v207) & 0xFFFFFFFFFFFFFFF8;
              v144 = swift_allocObject();
              *(v144 + 2) = v138;
              v144[3] = v91;
              v144[4] = v90;
              v173(v144 + v141, v77, v139);
              *(v144 + v142) = 0;
              v145 = v144 + v143;
              *(v145 + 1) = 0;
              *(v145 + 2) = 0;
              v146 = swift_allocObject();
              *(v146 + 16) = sub_20BD1CE44;
              *(v146 + 24) = v144;
              v147 = v181;
              v148 = v137;
              v149 = v205;
              (*(v140 + 16))(v181, v148, v205);
              v150 = (*(v140 + 80) + 16) & ~*(v140 + 80);
              v151 = (v180 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
              v152 = swift_allocObject();
              (v136)(v152 + v150, v147, v149);
              v153 = (v152 + v151);
              *v153 = sub_20B5F67A4;
              v153[1] = v146;
              v154 = v192;
              sub_20C137C94();
              v155 = swift_allocObject();
              v156 = v199;
              *(v155 + 16) = sub_20BD1CD88;
              *(v155 + 24) = v156;
              v157 = swift_allocObject();
              *(v157 + 16) = sub_20B5F67D4;
              *(v157 + 24) = v155;
              v158 = v194;
              v159 = v191;
              v160 = v195;
              (*(v194 + 16))(v191, v154, v195);
              v161 = (*(v158 + 80) + 16) & ~*(v158 + 80);
              v162 = (v182 + v161 + 7) & 0xFFFFFFFFFFFFFFF8;
              v163 = swift_allocObject();
              (*(v158 + 32))(v163 + v161, v159, v160);
              v164 = (v163 + v162);
              *v164 = sub_20B5DF204;
              v164[1] = v157;

              v165 = v193;
              sub_20C137C94();
              v166 = *(v158 + 8);
              v166(v154, v160);
              v167 = sub_20C137CB4();
              v168 = swift_allocObject();
              *(v168 + 16) = 0;
              *(v168 + 24) = 0;
              v167(sub_20B52347C, v168);

              v169 = v218;
              v166(v165, v160);
              (*(v204 + 8))(v198, v149);
              (*(v196 + 8))(v203, v197);
              v128 = v169;
              v109 = v223;
              v129 = v208;
              v110 = v209;
              v55 = v217;
              v54 = v215;
              v130 = v189;
              goto LABEL_24;
            }

            sub_20B520158(v107, &unk_27C766670);
            sub_20BA1D9E0();

            (*(v196 + 8))(v106, v197);
            v109 = v223;
            v110 = v209;
          }

          v129 = v208;
          v54 = v215;
          v130 = v189;
          v128 = v218;
        }

        else
        {

          v109 = v223;
          v128 = v218;
          v129 = v208;
          v110 = v209;
          v130 = v189;
        }

LABEL_24:
        (*(v216 + 8))(v55, v128);
        (*(v129 + 8))(v54, v110);

        sub_20B62A2AC(v219);
        v131 = v220;
        v132 = sub_20C133EB4() > 0;
        v133 = v214;
        (*(v214 + 264))(v132, v213, v214);
        v134 = sub_20C133E54();
        (*(v133 + 296))(v134);

        v135 = [objc_opt_self() systemGrayColor];
        [v109 setTextColor_];

        (*(v221 + 8))(v131, v222);
        return;
      }

      __break(1u);
      break;
    default:
      sub_20C13B534();

      v117 = v224;
      v118 = sub_20C13BB74();
      v119 = sub_20C13D1D4();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v225 = a1;
        v226 = v122;
        *v120 = 138543618;
        *(v120 + 4) = v117;
        *v121 = v117;
        *(v120 + 12) = 2082;
        v123 = sub_20B5F66D0();
        v124 = v117;
        v125 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v123);
        v127 = sub_20B51E694(v125, v126, &v226);

        *(v120 + 14) = v127;
        _os_log_impl(&dword_20B517000, v118, v119, "Attempted to configure %{public}@ with item: %{public}s", v120, 0x16u);
        sub_20B520158(v121, &unk_27C762E30);
        MEMORY[0x20F2F6A40](v121, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v122);
        MEMORY[0x20F2F6A40](v122, -1, -1);
        MEMORY[0x20F2F6A40](v120, -1, -1);
      }

      (*(v213 + 8))(v6, v214);
      break;
  }
}

uint64_t sub_20BD1CAE4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BD1CB30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BD1CB88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_20BD1CBEC(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();

  return sub_20B72097C(1, 2.0, v3);
}

id sub_20BD1CC60(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_separator) setHidden_];
}

void sub_20BD1CCB0()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA3CAF4(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BD1CD88(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63040(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BD1CE44(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2748(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_20BD1CEF8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D76968];
  v3 = *MEMORY[0x277D76818];
  v29 = MEMORY[0x277D84FA0];
  v23 = v3;
  sub_20B6FF83C(v28, 1);
  v31 = 0;
  v4 = v29;
  sub_20C13E164();
  v26 = v2;
  sub_20C13CA64();
  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 1 && v9 != 3 && v9 != 4)
      {
        break;
      }

      v10 = sub_20C13DFF4();

      if (v10)
      {
        goto LABEL_9;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = v4;
    sub_20B706478(2, v7, isUniquelyReferenced_nonNull_native);
    v4 = v28[0];
  }

LABEL_9:
  v30 = 1;
  v25 = v31;
  v12 = *MEMORY[0x277D769D0];
  v27 = MEMORY[0x277D84FA0];
  v24 = v23;
  sub_20B6FF83C(v28, 1);
  v13 = v27;
  sub_20C13E164();
  v22 = v12;
  sub_20C13CA64();
  v14 = sub_20C13E1B4();
  v15 = -1 << *(v27 + 32);
  v16 = v14 & ~v15;
  if ((*(v27 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = *(*(v27 + 48) + v16);
      if (v18 > 1 && v18 != 3 && v18 != 4)
      {
        break;
      }

      v19 = sub_20C13DFF4();

      if (v19)
      {
        goto LABEL_17;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v27 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = v27;
    result = sub_20B706478(2, v16, v21);
    v13 = v28[0];
  }

LABEL_17:
  LOBYTE(v28[0]) = 1;
  *a1 = 0;
  *(a1 + 8) = v24;
  *(a1 + 16) = v26;
  *(a1 + 24) = 0x8000;
  *(a1 + 28) = v25;
  *(a1 + 29) = 9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0;
  *(a1 + 64) = v24;
  *(a1 + 72) = v22;
  *(a1 + 80) = 0x8000;
  *(a1 + 84) = 0;
  *(a1 + 85) = 9;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = v13;
  return result;
}

void sub_20BD1D30C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_showSeparator) = 1;
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 4.0;
  }

  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView);
  v6 = [v3 layer];
  [v6 setCornerRadius_];

  [v3 setClipsToBounds_];
  *v5 = v3;
  v5[1] = &off_2822B63E8;
  v7 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_stackView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v8 &selRef_count + 2];
  [v8 setAxis_];
  [v8 setAlignment_];
  [v8 setSpacing_];
  [v8 setDistribution_];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_headerLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = [objc_opt_self() preferredFontForTextStyle_];
  [v10 setFont_];

  v12 = objc_opt_self();
  v13 = [v12 systemGrayColor];
  [v10 setTextColor_];

  v14 = v10;
  [v14 &selRef_count + 2];
  [v14 setAdjustsFontForContentSizeCategory_];
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v14 &selRef:1 setBackgroundColor:v16 + 6];
  v17 = [v12 systemBackgroundColor];
  [v14 setBackgroundColor_];

  *(v0 + v9) = v14;
  v18 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_container;
  v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v19 &selRef_count + 2];
  v20 = [v12 clearColor];
  [v19 &:v20 OBJC:? LABEL:? PROTOCOL:? :? :?UINavigationControllerDelegate];

  *(v0 + v18) = v19;
  v21 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_textLayoutGuide;
  *(v0 + v21) = [objc_allocWithZone(MEMORY[0x277D756D0]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v22 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v23 &selRef_count + 2];
  v24 = [v12 whiteColor];
  [v23 setTextColor_];

  [v23 setNumberOfLines_];
  [v23 setLineBreakMode_];
  LODWORD(v25) = 1148846080;
  [v23 setContentCompressionResistancePriority:1 forAxis:v25];
  v26 = [v12 systemBackgroundColor];
  [v23 setBackgroundColor_];

  *(v0 + v22) = v23;
  v27 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = [v12 whiteColor];
  [v28 setTextColor_];

  [v28 setNumberOfLines_];
  [v28 setLineBreakMode_];
  LODWORD(v30) = 1148846080;
  [v28 setContentCompressionResistancePriority:1 forAxis:v30];
  v31 = [v12 systemBackgroundColor];
  [v28 setBackgroundColor_];

  *(v0 + v27) = v28;
  v32 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_separator;
  v33 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = [v12 separatorColor];
  [v33 setBackgroundColor_];

  *(v0 + v32) = v33;
  v35 = (v0 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider);
  sub_20BD1CEF8(v40);
  v36 = v40[5];
  v35[4] = v40[4];
  v35[5] = v36;
  v37 = v40[6];
  v38 = v40[1];
  *v35 = v40[0];
  v35[1] = v38;
  v39 = v40[3];
  v35[2] = v40[2];
  v35[3] = v39;
  v35[6] = v37;
  v35[7] = xmmword_20C17A400;
  v35[8] = xmmword_20C15FDA0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BD1D9E4()
{
  result = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State();
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

uint64_t sub_20BD1DA90(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_20C13D064();
  if (!v19)
  {
    return sub_20C13CCC4();
  }

  v41 = v19;
  v45 = sub_20C13DDA4();
  v32 = sub_20C13DDB4();
  sub_20C13DD54();
  result = sub_20C13D024();
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
      v22 = sub_20C13D0A4();
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
      sub_20C13DD94();
      result = sub_20C13D084();
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

uint64_t sub_20BD1DEB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *(v3 + 104);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_20BD1E010(*(v1 + *(*v1 + 112)), v4, a1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20BD1E010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v25 = a1;
  v27 = a3;
  v6 = *(a2 + 16);
  v7 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ValidatedState();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, v4, a2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(*(v6 - 8) + 56))(v27, 1, 1, v6);
      return (*(v14 + 8))(v18, a2);
    }

    else
    {
      (*(v11 + 32))(v13, v18, v10);
      sub_20BD2110C(v25, v10, v9);
      (*(v11 + 8))(v13, v10);
      v22 = *(v7 + 44);
      v23 = sub_20C13D914();
      (*(*(v23 - 8) + 16))(v27, &v9[v22], v23);
      return (*(v26 + 8))(v9, v7);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v21 = sub_20C1365F4();
      sub_20C13CD04();
      sub_20C13D914();
      swift_getTupleTypeMetadata2();

      (*(*(v21 - 8) + 8))(v18, v21);
    }

    else
    {
      (*(v14 + 8))(v18, a2);
    }

    return (*(*(v6 - 8) + 56))(v27, 1, 1, v6);
  }
}

uint64_t sub_20BD1E3E0(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v1, a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v8 + 32))(v10, v14, v7);
      v17 = *&v10[*(v7 + 36)];
      v18 = *(v8 + 8);

      v18(v10, v7);
    }

    else
    {
      (*(v4 + 32))(v6, v14, v3);
      v17 = *&v6[*(v3 + 36)];
      v20 = *(v4 + 8);

      v20(v6, v3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v19 = sub_20C1365F4();
    sub_20C13CD04();
    sub_20C13D914();
    v17 = *&v14[*(swift_getTupleTypeMetadata2() + 48)];
    (*(*(v19 - 8) + 8))(v14, v19);
  }

  else
  {
    return *v14;
  }

  return v17;
}

uint64_t sub_20BD1E6E8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v77 = a1;
  v78 = a2;
  v6 = *(*v3 + 80);
  v7 = sub_20C13D914();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v62 - v8;
  v9 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v62 - v10;
  v74 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState();
  v67 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v62 - v11;
  v65 = v6;
  v12 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v75 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v80 = &v62 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v62 - v21;
  v23 = sub_20C1365A4();
  v25 = v24;
  v26 = *(*v3 + 104);
  swift_beginAccess();
  v27 = *(v13 + 16);
  v82 = v26;
  v79 = v27;
  v27(v19, v4 + v26, v12);
  sub_20BD1EE58(v12, v22);
  v76 = v13;
  v28 = *(v13 + 8);
  v81 = v12;
  v28(v19, v12);
  v29 = sub_20C1365F4();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v22, 1, v29) == 1)
  {
    sub_20BD23440(v22);
  }

  v63 = v28;
  v64 = a3;
  v32 = sub_20C1365A4();
  v34 = v33;
  v35 = v22;
  v36 = *(v30 + 8);
  v36(v35, v29);
  if (v23 == v32 && v25 == v34)
  {
  }

  else
  {
    v37 = sub_20C13DFF4();

    if ((v37 & 1) == 0)
    {
      return result;
    }
  }

  v38 = v81;
  v39 = v80;
  v79(v80, v4 + v82, v81);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v41 = v67;
      v42 = v73;
      v43 = v39;
      v44 = v74;
      (*(v67 + 32))(v73, v43, v74);
      v45 = &v42[*(v44 + 48)];
      v46 = *v45;
      v47 = *(v45 + 1);
      v48 = v45[16];
      v50 = v77;
      v49 = v78;
      v51 = v64;
      sub_20B6D8730(v77, v78, v64);
      sub_20BC6AB28(v46, v47, v48);
      *v45 = v50;
      *(v45 + 1) = v49;
      v45[16] = v51;
      v53 = v74;
      v52 = v75;
      v54 = v73;
      (*(v41 + 16))(v75, v73, v74);
      swift_storeEnumTagMultiPayload();
      v55 = v82;
      swift_beginAccess();
      (*(v76 + 40))(v4 + v55, v52, v38);
      swift_endAccess();
      sub_20BD20A60();
      return (*(v41 + 8))(v54, v53);
    }

    else
    {
      v57 = v70;
      v56 = v71;
      v58 = v72;
      (*(v71 + 32))(v70, v39, v72);
      v59 = v66;
      sub_20BD220C8(v77, v78, v64, v66);
      (*(v68 + 40))(&v57[*(v58 + 48)], v59, v69);
      v60 = v75;
      (*(v56 + 16))(v75, v57, v58);
      swift_storeEnumTagMultiPayload();
      v61 = v82;
      swift_beginAccess();
      (*(v76 + 40))(v4 + v61, v60, v38);
      swift_endAccess();
      sub_20BD21668();
      return (*(v56 + 8))(v57, v58);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20C13CD04();
    sub_20C13D914();
    swift_getTupleTypeMetadata2();

    return (v36)(v39, v29);
  }

  else
  {
    return v63(v39, v38);
  }
}

uint64_t sub_20BD1EE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = *(a1 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, v3, a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v9 + 32))(v11, v16, v8);
      v20 = sub_20C1365F4();
      v21 = *(v20 - 8);
      v22 = v31;
      (*(v21 + 16))(v31, v11, v20);
      (*(v9 + 8))(v11, v8);
      return (*(v21 + 56))(v22, 0, 1, v20);
    }

    else
    {
      v26 = v30;
      (*(v30 + 32))(v7, v16, v5);
      v27 = sub_20C1365F4();
      v28 = *(v27 - 8);
      v29 = v31;
      (*(v28 + 16))(v31, v7, v27);
      (*(v26 + 8))(v7, v5);
      return (*(v28 + 56))(v29, 0, 1, v27);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v23 = sub_20C1365F4();
    sub_20C13CD04();
    sub_20C13D914();
    swift_getTupleTypeMetadata2();

    v24 = *(v23 - 8);
    v25 = v31;
    (*(v24 + 32))(v31, v16, v23);
    return (*(v24 + 56))(v25, 0, 1, v23);
  }

  else
  {
    (*(v12 + 8))(v16, a1);
    v18 = sub_20C1365F4();
    return (*(*(v18 - 8) + 56))(v31, 1, 1, v18);
  }
}

uint64_t sub_20BD1F2C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1365F4();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v30 = &v28 - v7;
  v8 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  if (sub_20BD22050(a1))
  {
    v15 = *v1;
    v28 = v4;
    v16 = a1;
    v17 = *(v15 + 104);
    swift_beginAccess();
    (*(v9 + 16))(v14, v1 + v17, v8);
    v18 = sub_20BD1E3E0(v8);
    (*(v9 + 8))(v14, v8);
    v19 = sub_20BD222F0(v18, v16);

    v20 = v29;
    (*(v33 + 16))(v29, v16, v28);
    v21 = v30;
    sub_20BD1F780(v20, v19, 0, 0, 0, 0, 252, v30);
    v23 = v31;
    v22 = v32;
    (*(v31 + 16))(v14, v21, v32);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v9 + 40))(v2 + v17, v14, v8);
    swift_endAccess();
    sub_20BD21668();
    return (*(v23 + 8))(v21, v22);
  }

  else
  {
    sub_20C13CD04();
    sub_20C13D914();
    v25 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v33 + 16))(v14, a1, v4);
    v26 = *(*v1 + 104);
    swift_beginAccess();
    (*(v9 + 16))(v11, v1 + v26, v8);
    v27 = sub_20BD1E3E0(v8);
    (*(v9 + 8))(v11, v8);
    *&v14[v25] = v27;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v9 + 40))(v2 + v26, v14, v8);
    swift_endAccess();
    return sub_20BD21668();
  }
}

int *sub_20BD1F780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = sub_20C1365F4();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState();
  *(a8 + result[9]) = a2;
  *(a8 + result[10]) = a3;
  *(a8 + result[11]) = a4;
  v18 = a8 + result[12];
  *v18 = a5;
  *(v18 + 8) = a6;
  *(v18 + 16) = a7;
  return result;
}

uint64_t sub_20BD1F858()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = *(v1 + 104);
  swift_beginAccess();
  (*(v10 + 16))(v15, v0 + v16, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v19 = v28;
      (*(v28 + 32))(v8, v15, v6);
      v20 = &v8[*(v6 + 48)];
      sub_20BC6AB28(*v20, *(v20 + 1), v20[16]);
      *v20 = 0;
      *(v20 + 1) = 0;
      v20[16] = -4;
      (*(v19 + 16))(v12, v8, v6);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v10 + 40))(v0 + v16, v12, v9);
      swift_endAccess();
      sub_20BD20A60();
      return (*(v19 + 8))(v8, v6);
    }

    else
    {
      v22 = v29;
      v23 = v15;
      v24 = v30;
      (*(v29 + 32))(v5, v23, v30);
      v25 = *(v24 + 48);
      v26 = sub_20C13D914();
      (*(*(v26 - 8) + 8))(&v5[v25], v26);
      (*(*(v2 - 8) + 56))(&v5[v25], 1, 1, v2);
      (*(v22 + 16))(v12, v5, v24);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v10 + 40))(v0 + v16, v12, v9);
      swift_endAccess();
      sub_20BD21668();
      return (*(v22 + 8))(v5, v24);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v21 = sub_20C1365F4();
    sub_20C13CD04();
    sub_20C13D914();
    swift_getTupleTypeMetadata2();

    return (*(*(v21 - 8) + 8))(v15, v21);
  }

  else
  {
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_20BD1FD50(uint64_t a1)
{
  v2 = v1;
  v60 = a1;
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState();
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v56 = &v48 - v5;
  v6 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = v3;
  v53 = &v48 - v7;
  v8 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v58 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v48 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v48 - v17;
  v19 = sub_20C1365A4();
  v21 = v20;
  v22 = *(*v1 + 104);
  swift_beginAccess();
  v23 = *(v9 + 16);
  v63 = v22;
  v61 = v23;
  v23(v15, v2 + v22, v8);
  sub_20BD1EE58(v8, v18);
  v59 = v9;
  v24 = *(v9 + 8);
  v64 = v8;
  v24(v15, v8);
  v25 = sub_20C1365F4();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v18, 1, v25) == 1)
  {
    sub_20BD23440(v18);
  }

  v50 = v24;
  v51 = v4;
  v28 = sub_20C1365A4();
  v30 = v29;
  v49 = *(v26 + 8);
  v49(v18, v25);
  if (v19 == v28 && v21 == v30)
  {

    v31 = v64;
  }

  else
  {
    v32 = sub_20C13DFF4();

    v31 = v64;
    if ((v32 & 1) == 0)
    {
      return result;
    }
  }

  v33 = v62;
  v34 = v63;
  v61(v62, v2 + v63, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v37 = v53;
      v36 = v54;
      v38 = v55;
      (*(v54 + 32))(v53, v33, v55);
      v39 = *(v38 + 40);
      v40 = v60;

      *&v37[v39] = v40;
      v41 = v58;
      (*(v36 + 16))(v58, v37, v38);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v59 + 40))(v2 + v34, v41, v31);
      swift_endAccess();
      sub_20BD20A60();
      return (*(v36 + 8))(v37, v38);
    }

    else
    {
      v43 = v56;
      v42 = v57;
      v44 = v51;
      (*(v57 + 32))(v56, v33, v51);
      v45 = *(v44 + 40);
      v46 = v60;

      *&v43[v45] = v46;
      v47 = v58;
      (*(v42 + 16))(v58, v43, v44);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v59 + 40))(v2 + v34, v47, v31);
      swift_endAccess();
      sub_20BD21668();
      return (*(v42 + 8))(v43, v44);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20C13CD04();
    sub_20C13D914();
    swift_getTupleTypeMetadata2();

    return (v49)(v33, v25);
  }

  else
  {
    return v50(v33, v31);
  }
}

uint64_t sub_20BD203D8(uint64_t a1)
{
  v2 = v1;
  v60 = a1;
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState();
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v56 = &v48 - v5;
  v6 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = v3;
  v53 = &v48 - v7;
  v8 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v58 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v48 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v48 - v17;
  v19 = sub_20C1365A4();
  v21 = v20;
  v22 = *(*v1 + 104);
  swift_beginAccess();
  v23 = *(v9 + 16);
  v63 = v22;
  v61 = v23;
  v23(v15, v2 + v22, v8);
  sub_20BD1EE58(v8, v18);
  v59 = v9;
  v24 = *(v9 + 8);
  v64 = v8;
  v24(v15, v8);
  v25 = sub_20C1365F4();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v18, 1, v25) == 1)
  {
    sub_20BD23440(v18);
  }

  v50 = v24;
  v51 = v4;
  v28 = sub_20C1365A4();
  v30 = v29;
  v49 = *(v26 + 8);
  v49(v18, v25);
  if (v19 == v28 && v21 == v30)
  {

    v31 = v64;
  }

  else
  {
    v32 = sub_20C13DFF4();

    v31 = v64;
    if ((v32 & 1) == 0)
    {
      return result;
    }
  }

  v33 = v62;
  v34 = v63;
  v61(v62, v2 + v63, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v37 = v53;
      v36 = v54;
      v38 = v55;
      (*(v54 + 32))(v53, v33, v55);
      v39 = *(v38 + 44);
      v40 = v60;

      *&v37[v39] = v40;
      v41 = v58;
      (*(v36 + 16))(v58, v37, v38);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v59 + 40))(v2 + v34, v41, v31);
      swift_endAccess();
      sub_20BD20A60();
      return (*(v36 + 8))(v37, v38);
    }

    else
    {
      v43 = v56;
      v42 = v57;
      v44 = v51;
      (*(v57 + 32))(v56, v33, v51);
      v45 = *(v44 + 44);
      v46 = v60;

      *&v43[v45] = v46;
      v47 = v58;
      (*(v42 + 16))(v58, v43, v44);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v59 + 40))(v2 + v34, v47, v31);
      swift_endAccess();
      sub_20BD21668();
      return (*(v42 + 8))(v43, v44);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20C13CD04();
    sub_20C13D914();
    swift_getTupleTypeMetadata2();

    return (v49)(v33, v25);
  }

  else
  {
    return v50(v33, v31);
  }
}

uint64_t sub_20BD20A60()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_20C13D914();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v36 - v4;
  v5 = sub_20C1365F4();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v48 = &v36 - v8;
  v9 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState();
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  v19 = v1;
  v20 = v10;
  v21 = *(v19 + 104);
  swift_beginAccess();
  (*(v20 + 16))(v14, v0 + v21, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return (*(v20 + 8))(v14, v9);
  }

  v37 = v20;
  (*(v16 + 32))(v18, v14, v15);
  v22 = *&v18[v15[9]];
  if (!v22)
  {
    return (*(v16 + 8))(v18, v15);
  }

  v38 = v16;
  v23 = *&v18[v15[10]];
  if (!v23 || !*&v18[v15[11]])
  {
    v16 = v38;
    return (*(v16 + 8))(v18, v15);
  }

  v24 = *(v41 + 16);
  v36 = *&v18[v15[11]];
  v25 = v43;
  v41 = v23;
  v24(v43, v18, v42);
  v26 = v45;
  (*(*(v2 - 8) + 56))(v45, 1, 1, v2);
  sub_20BD21004(v25, v22, v41, v36, v26, v48);
  v27 = &v18[v15[12]];
  v28 = v27[16];
  if (v28 <= 0xFB)
  {
    v32 = *v27;
    v43 = *(v27 + 1);

    v33 = v28;
    v30 = v48;
    sub_20BD220C8(v32, v43, v33, v26);
    v29 = v47;
    (*(v39 + 40))(v30 + *(v47 + 48), v26, v40);
  }

  else
  {

    v29 = v47;
    v30 = v48;
  }

  v34 = v46;
  v35 = v44;
  (*(v46 + 16))(v44, v30, v29);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v37 + 40))(v0 + v21, v35, v9);
  swift_endAccess();
  sub_20BD21668();
  (*(v38 + 8))(v18, v15);
  return (*(v34 + 8))(v30, v29);
}

uint64_t sub_20BD21004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_20C1365F4();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState();
  *(a6 + v13[9]) = a2;
  *(a6 + v13[10]) = a3;
  *(a6 + v13[11]) = a4;
  v14 = v13[12];
  v15 = sub_20C13D914();
  v16 = *(*(v15 - 8) + 32);

  return v16(a6 + v14, a5, v15);
}

uint64_t sub_20BD2110C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v43 = a1;
  v45 = a3;
  v6 = *(a2 + 16);
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v42 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13D914();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v42 - v13;
  v14 = *(v3 + *(a2 + 36));
  v53 = v14;
  v15 = *(a2 + 24);
  v51 = v6;
  v52 = v15;
  KeyPath = swift_getKeyPath();
  v44 = v15;
  v49 = v15;
  v50 = KeyPath;
  v17 = sub_20C13CD04();

  WitnessTable = swift_getWitnessTable();
  v20 = sub_20BD1DA90(sub_20BD233FC, v48, v17, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);

  v21 = sub_20B527580(v20);

  if ((v43 & 1) == 0)
  {
    v21 = sub_20B604EF4(*(v4 + *(a2 + 40)), v21);
  }

  (*(v9 + 16))(v11, v4 + *(a2 + 48), v8);
  v22 = v46;
  v23 = (*(v46 + 48))(v11, 1, v6);
  v24 = v47;
  if (v23 == 1)
  {
    (*(v9 + 8))(v11, v8);
LABEL_11:
    (*(v22 + 56))(v24, 1, 1, v6);
    v40 = *(v4 + *(a2 + 44));

    v38 = sub_20B604EF4(v40, v21);
    goto LABEL_12;
  }

  v25 = *(v22 + 32);
  v26 = v22;
  v27 = v42;
  v25();
  v28 = sub_20C1362C4();
  v30 = sub_20B8D7150(v28, v29, v21);

  if ((v30 & 1) == 0)
  {
    (*(v26 + 8))(v27, v6);
    v22 = v26;
LABEL_10:
    v24 = v47;
    goto LABEL_11;
  }

  v31 = *(v4 + *(a2 + 44));
  v32 = sub_20C1362C4();
  LOBYTE(v31) = sub_20B8D7150(v32, v33, v31);

  if ((v31 & 1) == 0)
  {
    v39 = v27;
    v22 = v46;
    (*(v46 + 8))(v39, v6);
    goto LABEL_10;
  }

  v34 = v46;
  v24 = v47;
  (*(v46 + 16))(v47, v27, v6);
  (*(v34 + 56))(v24, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v36 = v27;
  *(inited + 32) = sub_20C1362C4();
  *(inited + 40) = v37;
  v38 = sub_20BE8C2E8(inited);
  swift_setDeallocating();
  sub_20B5D9804(inited + 32);
  (*(v34 + 8))(v36, v6);
LABEL_12:
  sub_20BD232A4(v14, v21, v38, v24, v45);
}

uint64_t sub_20BD215D4()
{
  sub_20C13CD04();

  swift_getWitnessTable();
  return sub_20C13DD24();
}

uint64_t sub_20BD21668()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v65 = sub_20C13D914();
  v58 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = v51 - v4;
  v63 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ValidatedState();
  v57 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v56 = v51 - v5;
  v6 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v51 - v9;
  v54 = v3;
  v11 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v60 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v51 - v15;
  v17 = sub_20C1365F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v2 + 104);
  swift_beginAccess();
  v59 = *(v12 + 16);
  (v59)(v16, v1 + v21, v11);
  sub_20BD1EE58(v11, v10);
  v22 = v16;
  v23 = *(v12 + 8);
  v23(v22, v11);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    return sub_20BD23440(v10);
  }

  v25 = *(v18 + 32);
  v53 = v20;
  v25(v20, v10, v17);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v52 = v1[3];
    v28 = v60;
    (v59)(v60, v1 + v21, v11);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v29 = v55;
      v30 = v28;
      v31 = v62;
      (*(v61 + 32))(v55, v30, v62);
      v32 = *(v1 + *(*v1 + 112));
      v33 = v56;
      v60 = v17;
      sub_20BD2110C(v32, v31, v56);
      v34 = sub_20BD215D4();
      v59 = v18;
      v35 = v34;
      v36 = *(v33 + 2);
      v37 = v58;
      v38 = v64;
      (*(v58 + 16))();
      v39 = sub_20C13CCF4();
      v51[1] = v51;
      v66 = v35;
      MEMORY[0x28223BE20](v39);
      v51[-8] = v36;
      v51[-7] = v38;
      v40 = v52;
      v51[-6] = v27;
      v51[-5] = v40;
      v51[-4] = v1;
      v51[-3] = v41;
      v51[-2] = v29;
      sub_20C13CD04();
      swift_getWitnessTable();
      v42 = sub_20C13CC04();

      ObjectType = swift_getObjectType();
      v44 = v40;
      v45 = *(v40 + 64);
      v46 = v53;
      v45(v1, v42, v53, ObjectType, v44);
      swift_unknownObjectRelease();

      (*(v59 + 8))(v46, v60);
      (*(v57 + 8))(v33, v63);
      (*(v37 + 8))(v64, v65);
      return (*(v61 + 8))(v29, v62);
    }

    swift_unknownObjectRelease();
    v23(v28, v11);
  }

  v47 = swift_unknownObjectWeakLoadStrong();
  v48 = v53;
  if (v47)
  {
    v49 = v1[3];
    v50 = swift_getObjectType();
    (*(v49 + 64))(v1, MEMORY[0x277D84F90], v48, v50, v49);
    swift_unknownObjectRelease();
  }

  return (*(v18 + 8))(v48, v17);
}

uint64_t sub_20BD21D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v37 = a8;
  v38 = a5;
  v34 = a4;
  v35 = a7;
  v32 = a3;
  v36 = a9;
  v12 = *(*a6 + 80);
  v13 = sub_20C13D914();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v33 = a1;
  v17 = sub_20C1362C4();
  LOBYTE(a2) = sub_20B8D7150(v17, v18, a2);

  if (a2)
  {
    (*(v14 + 16))(v16, v32, v13);
    v19 = *(v12 - 8);
    if ((*(v19 + 48))(v16, 1, v12) == 1)
    {
      (*(v14 + 8))(v16, v13);
      v20 = v33;
      sub_20C1362C4();
    }

    else
    {
      v22 = sub_20C1362C4();
      v24 = v23;
      (*(v19 + 8))(v16, v12);
      v20 = v33;
      v25 = sub_20C1362C4();
      if (v24)
      {
        if (v22 == v25 && v24 == v26)
        {
        }

        else
        {
          v28 = sub_20C13DFF4();

          if ((v28 & 1) == 0)
          {
LABEL_13:
            v21 = 0;
            goto LABEL_16;
          }
        }

        v21 = 1;
        goto LABEL_16;
      }
    }

    goto LABEL_13;
  }

  v21 = 2;
  v20 = v33;
LABEL_16:
  ObjectType = swift_getObjectType();
  result = (*(v38 + 56))(a6, v20, v21, v35, v37, ObjectType);
  *v36 = result;
  return result;
}

uint64_t sub_20BD22050(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 24))(v1, a1, ObjectType, v4);
    swift_unknownObjectRelease();
    return v6 & 1;
  }

  return result;
}

uint64_t sub_20BD220C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a1;
  v20 = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ValidatedState();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = *(v4 + *(v7 + 112));
  v14 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState();
  sub_20BD2110C(v13, v14, v12);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = v4[3];
    ObjectType = swift_getObjectType();
    v17 = sub_20BD215D4();
    (*(v15 + 40))(v4, v19, v20, a3, v17, ObjectType, v15);
    swift_unknownObjectRelease();

    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }
}

uint64_t sub_20BD222F0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 32))(v2, v4, a2, ObjectType, v5);
      swift_unknownObjectRelease();
      return v7;
    }
  }

  return result;
}

uint64_t sub_20BD2237C()
{
  sub_20B583E6C(v0 + 16);
  v1 = *(*v0 + 104);
  v2 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_20BD22424()
{
  sub_20BD2237C();

  return swift_deallocClassInstance();
}

uint64_t sub_20BD224AC()
{
  sub_20C13CD04();
  result = sub_20C13D914();
  if (v1 <= 0x3F)
  {
    sub_20C1365F4();
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_20BD22598(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = (*(*(sub_20C1365F4() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v8 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v7 <= v13)
  {
    v7 = v13;
  }

  v14 = *(v9 + 64);
  if (!*(v10 + 84))
  {
    ++v14;
  }

  v15 = v14 + ((v12 + 8) & ~v11);
  if (v7 > v15)
  {
    v15 = v7;
  }

  v16 = 8;
  if (v15 > 8)
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_31;
  }

  v17 = v16 + 1;
  v18 = 8 * (v16 + 1);
  if ((v16 + 1) <= 3)
  {
    v21 = ((a2 + ~(-1 << v18) - 252) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v21 < 2)
    {
LABEL_31:
      v23 = *(a1 + v16);
      if (v23 >= 4)
      {
        return (v23 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_20:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *a1;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *a1;
    }

    else
    {
      LODWORD(v17) = *a1;
    }
  }

  return (v17 | v22) + 253;
}

void sub_20BD22778(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = (*(*(sub_20C1365F4() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(*(a4 + 16) - 8);
  v12 = v11;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v9 <= v15)
  {
    v9 = v15;
  }

  v16 = *(v11 + 64);
  if (!*(v12 + 84))
  {
    ++v16;
  }

  v17 = v16 + ((v14 + 8) & ~v13);
  if (v9 > v17)
  {
    v17 = v9;
  }

  if (v17 <= 8)
  {
    v17 = 8;
  }

  v18 = v17 + 1;
  if (a3 < 0xFD)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 + ~(-1 << (8 * v18)) - 252) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (a2 > 0xFC)
  {
    v20 = a2 - 253;
    if (v18 >= 4)
    {
      bzero(a1, v17 + 1);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v21 = (v20 >> (8 * v18)) + 1;
    if (v17 != -1)
    {
      v24 = v20 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v24;
          if (v19 > 1)
          {
LABEL_45:
            if (v19 == 2)
            {
              *&a1[v18] = v21;
            }

            else
            {
              *&a1[v18] = v21;
            }

            return;
          }
        }

        else
        {
          *a1 = v20;
          if (v19 > 1)
          {
            goto LABEL_45;
          }
        }

LABEL_42:
        if (v19)
        {
          a1[v18] = v21;
        }

        return;
      }

      *a1 = v24;
      a1[2] = BYTE2(v24);
    }

    if (v19 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v19 <= 1)
  {
    if (v19)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      a1[v17] = -a2;
      return;
    }

LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (v19 == 2)
  {
    *&a1[v18] = 0;
    goto LABEL_30;
  }

  *&a1[v18] = 0;
  if (a2)
  {
    goto LABEL_31;
  }
}

void sub_20BD22A08()
{
  sub_20C1365F4();
  if (v0 <= 0x3F)
  {
    sub_20C13CD04();
    if (v1 <= 0x3F)
    {
      sub_20BD230AC();
      if (v2 <= 0x3F)
      {
        sub_20C13D914();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20BD22AC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_20C1365F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(v6 - 8) + 64);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  if (v8 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v7 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v10)
  {
    v17 = v14;
  }

  else
  {
    v17 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v13 + 8;
  if (a2 <= v16)
  {
    goto LABEL_37;
  }

  v19 = v17 + ((v18 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v16 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_37:
      if (v8 == v16)
      {
        v27 = *(v7 + 48);

        return v27(a1, v8, v6);
      }

      else
      {
        v28 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v15 & 0x80000000) != 0)
        {
          v30 = (*(*(*(a3 + 16) - 8) + 48))((v18 + ((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          return (v29 + 1);
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_37;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v16 + (v26 | v24) + 1;
}

void sub_20BD22D68(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_20C1365F4();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v11 > v17)
  {
    v17 = *(v10 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!v13)
  {
    ++v16;
  }

  v19 = ((v15 + 8 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + v16;
  if (a3 <= v18)
  {
    goto LABEL_24;
  }

  if (v19 <= 3)
  {
    v20 = ((a3 - v18 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v20))
    {
      v9 = 4;
      if (v18 < a2)
      {
        goto LABEL_25;
      }

LABEL_13:
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          *&a1[v19] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v19] = 0;
      }

      else if (v9)
      {
        a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v11 == v18)
      {
        v24 = *(v10 + 56);

        v24(a1, a2, v11, v8);
      }

      else
      {
        v26 = (&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((v17 & 0x80000000) != 0)
        {
          v28 = *(v12 + 56);

          v28((v15 + 8 + ((((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15, (a2 + 1));
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v27 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v27 = (a2 - 1);
          }

          *v26 = v27;
        }
      }

      return;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

LABEL_24:
    if (v18 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v9 = 1;
  if (v18 >= a2)
  {
    goto LABEL_13;
  }

LABEL_25:
  v22 = ~v18 + a2;
  if (v19 < 4)
  {
    v23 = (v22 >> (8 * v19)) + 1;
    if (v19)
    {
      v25 = v22 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v25;
          if (v9 <= 1)
          {
            goto LABEL_54;
          }
        }

        else
        {
          *a1 = v22;
          if (v9 <= 1)
          {
            goto LABEL_54;
          }
        }

LABEL_27:
        if (v9 == 2)
        {
          *&a1[v19] = v23;
        }

        else
        {
          *&a1[v19] = v23;
        }

        return;
      }

      *a1 = v25;
      a1[2] = BYTE2(v25);
    }

    if (v9 <= 1)
    {
      goto LABEL_54;
    }

    goto LABEL_27;
  }

  bzero(a1, v19);
  *a1 = v22;
  v23 = 1;
  if (v9 > 1)
  {
    goto LABEL_27;
  }

LABEL_54:
  if (v9)
  {
    a1[v19] = v23;
  }
}

void sub_20BD230AC()
{
  if (!qword_27C76E390[0])
  {
    v0 = sub_20C13D004();
    if (!v1)
    {
      atomic_store(v0, qword_27C76E390);
    }
  }
}

void sub_20BD23104()
{
  sub_20C1365F4();
  if (v0 <= 0x3F)
  {
    sub_20C13CD04();
    sub_20C13D914();
    if (v1 <= 0x3F)
    {
      sub_20BD231F0();
      if (v2 <= 0x3F)
      {
        sub_20BD23254();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20BD231F0()
{
  if (!qword_27C76E418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C763848);
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76E418);
    }
  }
}

void sub_20BD23254()
{
  if (!qword_27C76E420[0])
  {
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, qword_27C76E420);
    }
  }
}

uint64_t sub_20BD232A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for WorkoutPlanFilterOptionCoordinator.ValidatedState() + 44);
  v8 = sub_20C13D914();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t sub_20BD2333C()
{
  v1 = *(*(v0 + 32) + 16);
  v2 = sub_20C1362C4();
  LOBYTE(v1) = sub_20B8D7150(v2, v3, v1);

  return v1 & 1;
}

uint64_t sub_20BD2339C()
{
  v1 = *(*(v0 + 32) + 8);
  v2 = sub_20C1362C4();
  LOBYTE(v1) = sub_20B8D7150(v2, v3, v1);

  return v1 & 1;
}

uint64_t sub_20BD23440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20BD234D0()
{
  sub_20C13CD04();
  if (v0 <= 0x3F)
  {
    sub_20BD230AC();
    if (v1 <= 0x3F)
    {
      sub_20C13D914();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20BD23578(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
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

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 24) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_20BD23740(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 24) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = ((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;
      v28 = (((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11;

      v26(v28, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

id sub_20BD23C04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityTypeIconView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BD23C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a2;
  v122 = a1;
  v145 = a3;
  v4 = sub_20C13A484();
  v135 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v136 = v5;
  v138 = v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationRequest();
  v130 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v131 = v7;
  v132 = (v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v125 = v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v8;
  MEMORY[0x28223BE20](v9);
  v126 = v112 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v118 = *(v119 - 8);
  v11 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v123 = v112 - v13;
  v121 = sub_20C1344C4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v116 = v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v142 = *(v134 - 8);
  v15 = *(v142 + 64);
  MEMORY[0x28223BE20](v134);
  v129 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v133 = v112 - v17;
  MEMORY[0x28223BE20](v18);
  v141 = v112 - v19;
  MEMORY[0x28223BE20](v20);
  v140 = v112 - v21;
  MEMORY[0x28223BE20](v22);
  v144 = v112 - v23;
  v24 = type metadata accessor for NavigationIntent();
  MEMORY[0x28223BE20](v24);
  v26 = v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  MEMORY[0x28223BE20](v27);
  v29 = v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v139 = v112 - v31;
  v32 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v32);
  v34 = (v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = v3;
  sub_20BD317AC(v3, v34, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() != 16)
  {
    v35 = type metadata accessor for NavigationResource;
    goto LABEL_5;
  }

  type metadata accessor for WorkoutNavigationResource();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = type metadata accessor for WorkoutNavigationResource;
LABEL_5:
    v36 = v35;
    v37 = v34;
LABEL_6:
    sub_20BD31814(v37, v36);
    sub_20B5D9BA8();
    v38 = swift_allocError();
    *v39 = 13;
    *(swift_allocObject() + 16) = v38;
    type metadata accessor for WorkoutSessionConfiguration();
    return sub_20C137CA4();
  }

  v42 = *v34;
  v41 = v34[1];
  sub_20BD317AC(v143 + *(v6 + 20), v26, type metadata accessor for NavigationIntent);
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    v36 = type metadata accessor for NavigationIntent;
    v37 = v26;
    goto LABEL_6;
  }

  v112[1] = v42;
  v112[2] = v41;
  v114 = *v26;
  v113 = v26[8];

  v43 = *(v26 + 4);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0);
  v45 = v139;
  sub_20BD3113C(&v26[*(v44 + 80)], v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  v122 = swift_allocBox();
  v47 = v46;
  v48 = v120;
  v49 = *(v120 + 56);
  v50 = v121;
  v49(v46, 1, 1, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  v115 = swift_allocBox();
  v52 = v51;
  v53 = sub_20C137254();
  (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
  sub_20B52F9E8(v45, v29, &qword_27C766E88);
  if ((*(v48 + 48))(v29, 1, v50) == 1)
  {
    sub_20B520158(v29, &qword_27C766E88);
    __swift_project_boxed_opaque_existential_1(v148, v148[3]);
    v54 = v123;
    sub_20C13A0B4();

    v55 = swift_allocObject();
    v56 = v122;
    *(v55 + 16) = sub_20BD311AC;
    *(v55 + 24) = v56;
    v57 = v118;
    v58 = v117;
    v59 = v119;
    (*(v118 + 16))(v117, v54, v119);
    v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v61 = swift_allocObject();
    (*(v57 + 32))(v61 + v60, v58, v59);
    v62 = (v61 + ((v11 + v60 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v62 = sub_20B80E4B0;
    v62[1] = v55;

    sub_20C137C94();
    (*(v57 + 8))(v123, v59);
  }

  else
  {

    v63 = *(v48 + 32);
    v64 = v116;
    v63(v116, v29, v50);
    _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
    sub_20B520158(v47, &qword_27C766E88);
    v63(v47, v64, v50);
    v49(v47, 0, 1, v50);
  }

  __swift_project_boxed_opaque_existential_1(v147, v147[3]);
  v65 = v126;
  sub_20C1398E4();
  v66 = swift_allocObject();
  v67 = v115;
  v68 = v114;
  *(v66 + 16) = v115;
  *(v66 + 24) = v68;
  *(v66 + 32) = v113;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_20BD311F0;
  *(v69 + 24) = v66;
  v70 = v127;
  v71 = v125;
  v72 = v128;
  v127[2](v125, v65, v128);
  v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v74 = (v124 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (v70)[4]((v75 + v73), v71, v72);
  v76 = (v75 + v74);
  *v76 = sub_20B5DF4C4;
  v76[1] = v69;

  v77 = v140;
  sub_20C137C94();
  (v70[1])(v65, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v78 = *(v142 + 72);
  v79 = v142;
  v126 = *(v142 + 80);
  v80 = (v126 + 32) & ~v126;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_20C14F320;
  v82 = v81 + v80;
  v83 = *(v79 + 16);
  v127 = v83;
  v128 = v79 + 16;
  v84 = v134;
  (v83)(v82, v144, v134);
  (v83)(v82 + v78, v77, v84);
  sub_20B5E2E18();
  v85 = sub_20C13D374();
  sub_20C13A7C4();
  v86 = v133;
  sub_20C137C74();

  v87 = v132;
  sub_20BD317AC(v143, v132, type metadata accessor for NavigationRequest);
  sub_20B51CC64(v147, &v146);
  v88 = (*(v130 + 80) + 24) & ~*(v130 + 80);
  v89 = (v131 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  *(v90 + 16) = v67;
  sub_20BD3108C(v87, v90 + v88, type metadata accessor for NavigationRequest);
  *(v90 + v89) = v122;
  sub_20B51C710(&v146, v90 + ((v89 + 15) & 0xFFFFFFFFFFFFFFF8));
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20BD31210;
  *(v91 + 24) = v90;
  v92 = v129;
  v93 = v84;
  (v127)(v129, v86, v84);
  v94 = v15 + ((v126 + 16) & ~v126);
  v95 = (v126 + 16) & ~v126;
  v143 = v95;
  v96 = (v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v131 = v96;
  v97 = swift_allocObject();
  v98 = v142;
  v132 = *(v142 + 32);
  (v132)(v97 + v95, v92, v93);
  v99 = (v97 + v96);
  *v99 = sub_20B64B960;
  v99[1] = v91;
  v100 = v122;

  sub_20C137C94();
  v101 = *(v98 + 8);
  v102 = v93;
  v101(v86, v93);
  v103 = v138;
  sub_20BD317AC(v137, v138, MEMORY[0x277D4DFB8]);
  v104 = (*(v135 + 80) + 32) & ~*(v135 + 80);
  v105 = (v136 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = swift_allocObject();
  *(v106 + 16) = v100;
  *(v106 + 24) = v115;
  sub_20BD3108C(v103, v106 + v104, MEMORY[0x277D4DFB8]);
  *(v106 + v105) = v43;
  v107 = swift_allocObject();
  *(v107 + 16) = sub_20BD312BC;
  *(v107 + 24) = v106;
  v108 = v141;
  (v127)(v86, v141, v102);
  v109 = v131;
  v110 = swift_allocObject();
  (v132)(v110 + v143, v86, v102);
  v111 = (v110 + v109);
  *v111 = sub_20B7F133C;
  v111[1] = v107;
  type metadata accessor for WorkoutSessionConfiguration();

  sub_20C137C94();
  v101(v108, v102);
  v101(v140, v102);
  v101(v144, v102);
  sub_20B520158(v139, &qword_27C766E88);

  __swift_destroy_boxed_opaque_existential_1(v147);
  return __swift_destroy_boxed_opaque_existential_1(v148);
}

uint64_t sub_20BD24DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v118 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v106 = *(v107 - 8);
  v3 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v103 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v104 = &v90 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0);
  v116 = *(v6 - 8);
  v117 = v6;
  v7 = *(v116 + 64);
  MEMORY[0x28223BE20](v6);
  v112 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v113 = &v90 - v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v109 = *(v114 - 8);
  v10 = *(v109 + 64);
  MEMORY[0x28223BE20](v114);
  v108 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v110 = &v90 - v12;
  MEMORY[0x28223BE20](v13);
  v111 = &v90 - v14;
  MEMORY[0x28223BE20](v15);
  v115 = &v90 - v16;
  v17 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v17);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C132C14();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4F8);
  v120 = swift_allocBox();
  v25 = v24;
  v26 = sub_20C137EA4();
  v27 = *(*(v26 - 8) + 56);
  v105 = v26;
  v27(v25, 1, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800);
  v119 = swift_allocBox();
  v29 = v28;
  v30 = sub_20C134104();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  sub_20BD317AC(v2, v19, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    (*(v21 + 32))(v23, v19, v20);
    v31 = sub_20C132AE4();
    if (v32)
    {
      v101 = v31;
      v33 = sub_20C132B04();
      if ((v34 & 1) == 0)
      {
        v98 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
        sub_20C133AA4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
        sub_20C133AA4();
        v102 = v20;
        v99 = v21;
        v100 = v23;
        __swift_project_boxed_opaque_existential_1(v122, v122[3]);
        v38 = v113;
        sub_20C13A124();

        v39 = swift_allocObject();
        v40 = v120;
        *(v39 + 16) = sub_20BD30F38;
        *(v39 + 24) = v40;
        v41 = v116;
        v42 = *(v116 + 16);
        v97 = v116 + 16;
        v101 = v42;
        v43 = v112;
        v42(v112, v38, v117);
        v44 = *(v41 + 80);
        v96 = v44;
        v45 = (v44 + 16) & ~v44;
        v94 = v45;
        v90 = v3;
        v46 = (v7 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
        v91 = v46;
        v47 = swift_allocObject();
        v93 = *(v41 + 32);
        v95 = v41 + 32;
        v48 = v117;
        v93(v47 + v45, v43, v117);
        v49 = (v47 + v46);
        *v49 = sub_20B681EF8;
        v49[1] = v39;

        sub_20C137C94();
        v50 = *(v41 + 8);
        v116 = v41 + 8;
        v92 = v50;
        v50(v38, v48);
        __swift_project_boxed_opaque_existential_1(v121, v121[3]);
        v51 = v104;
        sub_20C1398E4();
        v52 = swift_allocObject();
        v53 = v119;
        *(v52 + 16) = sub_20BD30FA0;
        *(v52 + 24) = v53;
        v54 = v106;
        v55 = v103;
        v56 = v107;
        (*(v106 + 16))(v103, v51, v107);
        v57 = (*(v54 + 80) + 16) & ~*(v54 + 80);
        v58 = (v90 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
        v59 = swift_allocObject();
        (*(v54 + 32))(v59 + v57, v55, v56);
        v60 = (v59 + v58);
        *v60 = sub_20B58D058;
        v60[1] = v52;

        v61 = v111;
        sub_20C137C94();
        (*(v54 + 8))(v51, v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
        v62 = v109;
        v63 = *(v109 + 72);
        v64 = *(v109 + 80);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_20C14F320;
        v66 = v65 + ((v64 + 32) & ~v64);
        v67 = *(v62 + 16);
        v68 = v114;
        v67(v66, v115, v114);
        v67(v66 + v63, v61, v68);
        sub_20B5E2E18();
        v69 = sub_20C13D374();
        sub_20C13A7C4();
        v70 = v110;
        sub_20C137C74();

        v71 = swift_allocObject();
        v72 = v120;
        *(v71 + 16) = sub_20BD31008;
        *(v71 + 24) = v72;
        v73 = swift_allocObject();
        *(v73 + 16) = sub_20B8955C4;
        *(v73 + 24) = v71;
        v74 = swift_allocObject();
        *(v74 + 16) = sub_20BD31010;
        *(v74 + 24) = v73;
        v75 = v108;
        v76 = v70;
        v77 = v114;
        v67(v108, v76, v114);
        v78 = (v64 + 16) & ~v64;
        v79 = swift_allocObject();
        (*(v62 + 32))(v79 + v78, v75, v77);
        v80 = (v79 + ((v10 + v78 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v80 = sub_20BD3102C;
        v80[1] = v74;

        v81 = v113;
        sub_20C137C94();
        v82 = *(v62 + 8);
        v82(v110, v77);
        v83 = swift_allocObject();
        v84 = v98;
        *(v83 + 16) = v119;
        *(v83 + 24) = v84;
        v85 = v112;
        v86 = v117;
        v101(v112, v81, v117);
        v87 = v91;
        v88 = swift_allocObject();
        v93(v88 + v94, v85, v86);
        v89 = (v88 + v87);
        *v89 = sub_20BD3105C;
        v89[1] = v83;
        type metadata accessor for WorkoutSessionConfiguration();

        sub_20C137C94();
        v92(v81, v86);
        v82(v111, v77);
        v82(v115, v77);
        (*(v99 + 8))(v100, v102);
        __swift_destroy_boxed_opaque_existential_1(v121);
        __swift_destroy_boxed_opaque_existential_1(v122);
      }

      (*(v21 + 8))(v23, v20);
    }

    else
    {
      (*(v21 + 8))(v23, v20);
    }
  }

  else
  {
    sub_20BD31814(v19, type metadata accessor for NavigationResource);
  }

  sub_20B5D9BA8();
  v35 = swift_allocError();
  *v36 = 15;
  *(swift_allocObject() + 16) = v35;
  type metadata accessor for WorkoutSessionConfiguration();
  sub_20C137CA4();
}

void sub_20BD25AAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v53 = a4;
  v51 = sub_20C1387E4();
  v6 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MarketingUserInterfaceResource();
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76E4C8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = sub_20C1387D4();
  v47 = v6;
  switch(v23)
  {
    case 0:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A30);
      v45 = v8;
      v30 = v12;
      v31 = v16;
      v32 = *(v29 + 48);
      sub_20C1387C4();
      *&v22[v32] = a3;
      v16 = v31;
      v12 = v30;
      v8 = v45;
      goto LABEL_7;
    case 1:
      sub_20C1387C4();
      swift_storeEnumTagMultiPayload();
      v28 = v52;
      (*(v52 + 56))(v22, 0, 1, v12);
      goto LABEL_9;
    case 2:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764258);
      v45 = v8;
      v25 = v12;
      v26 = v16;
      v27 = *(v24 + 48);
      sub_20C1387C4();
      *&v22[v27] = v46;
      v16 = v26;
      v12 = v25;
      v8 = v45;
LABEL_7:
      swift_storeEnumTagMultiPayload();
      v28 = v52;
      (*(v52 + 56))(v22, 0, 1, v12);
      swift_unknownObjectRetain();
      goto LABEL_9;
  }

  v28 = v52;
  (*(v52 + 56))(v22, 1, 1, v12);
LABEL_9:
  sub_20B52F9E8(v22, v19, &unk_27C76E4C8);
  if ((*(v28 + 48))(v19, 1, v12) == 1)
  {
    sub_20B520158(v19, &unk_27C76E4C8);
    sub_20C13B424();
    v33 = v47;
    (*(v47 + 16))(v8, a1, v51);
    v34 = sub_20C13BB74();
    v35 = sub_20C13D1D4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134349056;
      v37 = sub_20C1387D4();
      (*(v33 + 8))(v8, v51);
      *(v36 + 4) = v37;
      _os_log_impl(&dword_20B517000, v34, v35, "Failed to handle unknown AMS URL type: %{public}ld", v36, 0xCu);
      MEMORY[0x20F2F6A40](v36, -1, -1);
    }

    else
    {
      (*(v33 + 8))(v8, v51);
    }

    (*(v49 + 8))(v11, v50);
    sub_20B5D9BA8();
    v41 = swift_allocError();
    *v42 = 8;
    *(swift_allocObject() + 16) = v41;
    v43 = v41;
    sub_20C137CA4();
    sub_20B520158(v22, &unk_27C76E4C8);
  }

  else
  {
    sub_20BD3108C(v19, v16, type metadata accessor for MarketingUserInterfaceResource);
    v38 = v48;
    sub_20BD317AC(v16, v48, type metadata accessor for MarketingUserInterfaceResource);
    v39 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v40 = swift_allocObject();
    sub_20BD3108C(v38, v40 + v39, type metadata accessor for MarketingUserInterfaceResource);
    sub_20C137CA4();
    sub_20BD31814(v16, type metadata accessor for MarketingUserInterfaceResource);
    sub_20B520158(v22, &unk_27C76E4C8);
  }
}

uint64_t sub_20BD26100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W6>, uint64_t a5@<X8>)
{
  v36 = a4;
  v33 = a3;
  v31 = a2;
  v37 = a5;
  v6 = type metadata accessor for MarketingUserInterfaceResource();
  v34 = *(v6 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v8;
  v9 = sub_20C1388F4();
  v26 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NavigationRequest();
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v25 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  v32 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769450);
  sub_20C133AA4();
  sub_20C133AA4();
  v29 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00);
  sub_20C133AA4();
  sub_20B51CC64(v43, v41);
  sub_20BD317AC(v31, &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v9);
  sub_20B51CC64(v44, v40);
  sub_20B51CC64(v45, v39);
  sub_20B51CC64(v42, v38);
  sub_20BD317AC(a1, v8, type metadata accessor for MarketingUserInterfaceResource);
  v14 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v15 = (v13 + *(v10 + 80) + v14) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 49) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 47) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v34 + 80) + v19 + 8) & ~*(v34 + 80);
  v21 = swift_allocObject();
  sub_20B51C710(v41, v21 + 16);
  sub_20BD3108C(v25, v21 + v14, type metadata accessor for NavigationRequest);
  (*(v10 + 32))(v21 + v15, v27, v26);
  v22 = v21 + v16;
  sub_20B51C710(v40, v21 + v16);
  *(v22 + 40) = v29;
  *(v22 + 41) = v36;
  sub_20B51C710(v39, v21 + v17);
  sub_20B51C710(v38, v21 + v18);
  *(v21 + v19) = v32;
  sub_20BD3108C(v28, v21 + v20, type metadata accessor for MarketingUserInterfaceResource);
  v23 = swift_allocObject();
  *(v23 + 16) = "SeymourUI/NavigationConfigurationProviding.swift";
  *(v23 + 24) = 48;
  *(v23 + 32) = 2;
  *(v23 + 40) = 56;
  *(v23 + 48) = &unk_20C17A798;
  *(v23 + 56) = v21;
  type metadata accessor for MarketingUserInterfaceConfiguration();
  sub_20C137C94();
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_20BD26604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 1872) = v21;
  *(v8 + 1856) = v20;
  *(v8 + 1848) = a8;
  *(v8 + 1507) = a7;
  *(v8 + 1506) = a6;
  *(v8 + 1800) = a5;
  *(v8 + 1752) = a4;
  *(v8 + 1704) = a3;
  *(v8 + 1656) = a2;
  *(v8 + 1608) = a1;
  type metadata accessor for MarketingUserInterfaceResource();
  *(v8 + 1880) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647D0);
  *(v8 + 1888) = v9;
  v10 = *(v9 - 8);
  *(v8 + 1896) = v10;
  *(v8 + 1904) = *(v10 + 64);
  *(v8 + 1912) = swift_task_alloc();
  *(v8 + 1920) = swift_task_alloc();
  *(v8 + 1928) = swift_task_alloc();
  v11 = sub_20C136354();
  *(v8 + 1936) = v11;
  *(v8 + 1944) = *(v11 - 8);
  *(v8 + 1952) = swift_task_alloc();
  v12 = sub_20C1388F4();
  *(v8 + 1960) = v12;
  v13 = *(v12 - 8);
  *(v8 + 1968) = v13;
  *(v8 + 1976) = *(v13 + 64);
  *(v8 + 1984) = swift_task_alloc();
  v14 = *(type metadata accessor for NavigationRequest() - 8);
  *(v8 + 1992) = v14;
  *(v8 + 2000) = *(v14 + 64);
  *(v8 + 2008) = swift_task_alloc();
  *(v8 + 2016) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764290);
  *(v8 + 2024) = v15;
  *(v8 + 2032) = *(v15 - 8);
  *(v8 + 2040) = swift_task_alloc();
  v16 = sub_20C139354();
  *(v8 + 2048) = v16;
  v17 = *(v16 - 8);
  *(v8 + 2056) = v17;
  *(v8 + 2064) = *(v17 + 64);
  *(v8 + 2072) = swift_task_alloc();
  *(v8 + 2080) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD26950, 0, 0);
}

uint64_t sub_20BD26950()
{
  v1 = *(v0 + 2040);
  __swift_project_boxed_opaque_existential_1(*(v0 + 1656), *(*(v0 + 1656) + 24));
  sub_20B520B44(v1);
  v2 = swift_task_alloc();
  *(v0 + 2088) = v2;
  *(v2 + 16) = "SeymourUI/NavigationConfigurationProviding.swift";
  *(v2 + 24) = 48;
  *(v2 + 32) = 2;
  *(v2 + 40) = 57;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 2096) = v3;
  *v3 = v0;
  v3[1] = sub_20BD26A78;
  v4 = *(v0 + 2080);
  v5 = *(v0 + 2048);

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B521930, v2, v5);
}

uint64_t sub_20BD26A78()
{
  v2 = *v1;
  *(*v1 + 2104) = v0;

  if (v0)
  {
    v3 = sub_20BD2722C;
  }

  else
  {
    (*(v2[254] + 8))(v2[255], v2[253]);
    v3 = sub_20BD26BCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BD26BCC()
{
  v1 = *(v0 + 2072);
  v32 = *(v0 + 2064);
  v33 = *(v0 + 2080);
  v2 = *(v0 + 2056);
  v3 = *(v0 + 2048);
  v28 = v3;
  v29 = v1;
  v40 = *(v0 + 2008);
  v35 = *(v0 + 2000);
  v4 = *(v0 + 1984);
  v26 = *(v0 + 1992);
  v27 = *(v0 + 1976);
  v5 = *(v0 + 1968);
  v6 = *(v0 + 1960);
  v30 = *(v0 + 2016);
  v31 = v6;
  v46 = *(v0 + 1928);
  v44 = *(v0 + 1912);
  v45 = *(v0 + 1904);
  v7 = *(v0 + 1896);
  v42 = *(v0 + 1920);
  v43 = *(v0 + 1888);
  v41 = *(v0 + 1856);
  v37 = *(v0 + 1507);
  v34 = *(v0 + 1506);
  v8 = *(v0 + 1800);
  v9 = *(v0 + 1752);
  v38 = *(v0 + 1704);
  v39 = *(v0 + 1848);
  sub_20BD317AC(v38, v30, type metadata accessor for NavigationRequest);
  (*(v5 + 16))(v4, v9, v6);
  sub_20B51CC64(v8, v0 + 1336);
  v10 = *(v2 + 16);
  *(v0 + 2112) = v10;
  *(v0 + 2120) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v33, v3);
  v11 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v36 = v11 + v35;
  v12 = (v36 + *(v5 + 80)) & ~*(v5 + 80);
  v13 = (v27 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v2 + 80) + v13 + 41) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v0 + 2128) = v15;
  sub_20BD3108C(v30, v15 + v11, type metadata accessor for NavigationRequest);
  (*(v5 + 32))(v15 + v12, v4, v31);
  sub_20B51C710((v0 + 1336), v15 + v13);
  *(v15 + v13 + 40) = v34;
  (*(v2 + 32))(v15 + v14, v29, v28);
  *(v15 + v14 + v32) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D2A0);
  swift_asyncLet_begin();
  sub_20BD317AC(v38, v40, type metadata accessor for NavigationRequest);
  sub_20B51CC64(v39, v0 + 1416);
  v16 = swift_allocObject();
  *(v0 + 2136) = v16;
  sub_20BD3108C(v40, v16 + v11, type metadata accessor for NavigationRequest);
  sub_20B51C710((v0 + 1416), v16 + ((v36 + 7) & 0xFFFFFFFFFFFFFFF8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8);
  swift_asyncLet_begin();
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  sub_20C139BD4();
  (*(v7 + 16))(v44, v42, v43);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v44, v43);
  v19 = (v18 + ((v45 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_20BD28BC8;
  v19[1] = 0;
  sub_20C137C94();
  v20 = *(v7 + 8);
  *(v0 + 2144) = v20;
  *(v0 + 2152) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v42, v43);
  v21 = swift_task_alloc();
  *(v0 + 2160) = v21;
  *(v21 + 16) = "SeymourUI/NavigationConfigurationProviding.swift";
  *(v21 + 24) = 48;
  *(v21 + 32) = 2;
  *(v21 + 40) = 66;
  *(v21 + 48) = v46;
  v22 = swift_task_alloc();
  *(v0 + 2168) = v22;
  *v22 = v0;
  v22[1] = sub_20BD270E0;
  v23 = *(v0 + 1952);
  v24 = *(v0 + 1936);

  return MEMORY[0x2822008A0](v23, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BD2F6A4, v21, v24);
}

uint64_t sub_20BD270E0()
{
  v2 = *v1;
  *(*v1 + 2176) = v0;

  if (v0)
  {
    v3 = sub_20BD2744C;
  }

  else
  {
    (*(v2 + 2144))(*(v2 + 1928), *(v2 + 1888));
    v3 = sub_20BD2734C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BD2722C()
{
  (*(v0[254] + 8))(v0[255], v0[253]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BD2734C()
{
  sub_20C139334();
  *(v0 + 1496) = sub_20C136324();
  *(v0 + 1504) = v1 & 1;
  *(v0 + 1505) = 0;
  sub_20BD2F6BC();
  sub_20BD2F710();
  if (sub_20C133C04())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_20C135EE4();
  }

  *(v0 + 1508) = v2 & 1;
  sub_20BD317AC(*(v0 + 1872), *(v0 + 1880), type metadata accessor for MarketingUserInterfaceResource);

  return MEMORY[0x282200930](v0 + 656, v0 + 1560, sub_20BD27654, v0 + 1456);
}

uint64_t sub_20BD2744C()
{
  (*(v0 + 2144))(*(v0 + 1928), *(v0 + 1888));

  return MEMORY[0x282200920](v0 + 656, v0 + 1560, sub_20BD274C4, v0 + 1296);
}

uint64_t sub_20BD2751C()
{
  (*(v0[257] + 8))(v0[260], v0[256]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BD27654()
{
  v1[273] = v0;
  if (v0)
  {
    sub_20BD31814(v1[235], type metadata accessor for MarketingUserInterfaceResource);

    return MEMORY[0x2822009F8](sub_20BD27AB8, 0, 0);
  }

  else
  {
    v2 = v1[195];
    v1[274] = v2;
    v3 = v2;

    return MEMORY[0x282200930](v1 + 2, v1 + 189, sub_20BD27720, v1 + 202);
  }
}

uint64_t sub_20BD27720()
{
  v1[275] = v0;
  if (v0)
  {
    v2 = v1[274];
    sub_20BD31814(v1[235], type metadata accessor for MarketingUserInterfaceResource);

    v3 = sub_20BD27CC8;
  }

  else
  {
    v3 = sub_20BD277BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BD277BC()
{
  v15 = *(v0 + 1508);
  v12 = *(v0 + 2112);
  v1 = *(v0 + 2080);
  v2 = *(v0 + 2048);
  v3 = *(v0 + 1952);
  v4 = *(v0 + 1944);
  v5 = *(v0 + 1936);
  v13 = *(v0 + 1880);
  v14 = *(v0 + 2192);
  v6 = *(v0 + 1864);
  v7 = *(v0 + 1608);

  v9 = sub_20B905EF4(v8);

  v10 = type metadata accessor for MarketingUserInterfaceConfiguration();
  (*(v4 + 32))(&v7[v10[7]], v3, v5);
  v12(&v7[v10[10]], v1, v2);
  *(v7 + 1) = v6;
  sub_20BD3108C(v13, &v7[v10[8]], type metadata accessor for MarketingUserInterfaceResource);
  *v7 = v14;
  *(v7 + 2) = v9;
  v7[v10[9]] = v15;
  swift_unknownObjectRetain();

  return MEMORY[0x282200920](v0 + 656, v0 + 1560, sub_20BD27924, v0 + 1760);
}

uint64_t sub_20BD2797C()
{
  (*(v0[257] + 8))(v0[260], v0[256]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BD27AB8()
{
  (*(v0[243] + 8))(v0[244], v0[242]);

  return MEMORY[0x282200920](v0 + 82, v0 + 195, sub_20BD27B38, v0 + 190);
}

uint64_t sub_20BD27B90()
{
  (*(v0[257] + 8))(v0[260], v0[256]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BD27CC8()
{
  (*(v0[243] + 8))(v0[244], v0[242]);

  return MEMORY[0x282200920](v0 + 82, v0 + 195, sub_20BD27D48, v0 + 208);
}

uint64_t sub_20BD27DA0()
{
  (*(v0[257] + 8))(v0[260], v0[256]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BD27ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 112) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  v8 = sub_20C1388F4();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4F0);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD27FE4, 0, 0);
}

uint64_t sub_20BD27FE4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  (*(v4 + 16))(v2, *(v0 + 24), v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_20B52F9E8(v2, v1, &qword_27C76E4F0);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_20B520158(*(v0 + 72), &qword_27C76E4F0);
    v5 = sub_20B6B3A3C(MEMORY[0x277D84F90]);
    v6 = *(v0 + 16);
    sub_20B520158(*(v0 + 80), &qword_27C76E4F0);
    *v6 = v5;

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 32);
    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 72), *(v0 + 48));
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = sub_20BD28208;
    v13 = *(v0 + 64);
    v14 = *(v0 + 40);
    v15 = *(v0 + 112);

    return MEMORY[0x2821B5790](v13, v14, v15, v10, v11);
  }
}

uint64_t sub_20BD28208(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_20BD283F8;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_20BD28330;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BD28330()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[13];
  v2 = v0[2];
  sub_20B520158(v0[10], &qword_27C76E4F0);
  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_20BD283F8()
{
  v1 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_20B520158(v1, &qword_27C76E4F0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20BD284AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240);
  v3[10] = v6;
  v7 = *(v6 - 8);
  v3[11] = v7;
  v3[12] = *(v7 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD28614, 0, 0);
}

uint64_t sub_20BD28614()
{
  v19 = *(v0 + 112);
  v20 = *(v0 + 104);
  v21 = *(v0 + 96);
  v22 = *(v0 + 120);
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_20C13B954();
  (*(v6 + 16))(v4, v3, v7);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, v4, v7);
  v10 = (v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v10 = sub_20BD2C634;
  v10[1] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8);
  sub_20C137C94();
  (*(v6 + 8))(v3, v7);
  (*(v1 + 16))(v20, v19, v2);
  v12 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v13 = swift_allocObject();
  (*(v1 + 32))(v13 + v12, v20, v2);
  v14 = (v13 + ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = sub_20BD2C6C4;
  v14[1] = 0;
  sub_20C137C94();
  v15 = *(v1 + 8);
  *(v0 + 128) = v15;
  *(v0 + 136) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v19, v2);
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *(v16 + 16) = "SeymourUI/NavigationConfigurationProviding.swift";
  *(v16 + 24) = 48;
  *(v16 + 32) = 2;
  *(v16 + 40) = 65;
  *(v16 + 48) = v22;
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_20BD2893C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BD2F7F4, v16, v11);
}

uint64_t sub_20BD2893C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BD28B18, 0, 0);
  }

  else
  {
    v4 = v2[16];
    v5 = v2[15];
    v6 = v2[10];
    v9 = v2 + 2;
    v7 = v2[2];
    v8 = v9[1];

    *v8 = v7;
    v4(v5, v6);

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_20BD28B18()
{
  (*(v0 + 128))(*(v0 + 120), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BD28BC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C136354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = v6;
  v31 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - v8;
  v29 = sub_20C13BB84();
  v10 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v13 = a1;
  v14 = sub_20C13BB74();
  v15 = sub_20C13D1D4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28[1] = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28[0] = v9;
    v19 = v18;
    v34 = v18;
    *v17 = 136446210;
    swift_getErrorValue();
    v20 = MEMORY[0x20F2F5850](v32, v33);
    v22 = sub_20B51E694(v20, v21, &v34);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_20B517000, v14, v15, "Unable to fetch notice privacy preference: %{public}s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v23 = v19;
    v9 = v28[0];
    MEMORY[0x20F2F6A40](v23, -1, -1);
    MEMORY[0x20F2F6A40](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v29);
  sub_20C136334();
  sub_20C136314();
  v24 = v31;
  (*(v5 + 16))(v31, v9, v4);
  v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v26 = swift_allocObject();
  (*(v5 + 32))(v26 + v25, v24, v4);
  sub_20C137CA4();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_20BD28F0C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v134 = a3;
  v136 = a2;
  v140 = a4;
  v112 = type metadata accessor for MarketingUserInterfaceResource();
  v115 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v120 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v7;
  MEMORY[0x28223BE20](v8);
  v122 = &v105 - v9;
  v10 = sub_20C138894();
  v123 = *(v10 - 8);
  v124 = v10;
  MEMORY[0x28223BE20](v10);
  v121 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76E4B0);
  v113 = *(v12 - 8);
  v114 = v12;
  v13 = *(v113 + 64);
  MEMORY[0x28223BE20](v12);
  v111 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v128 = (&v105 - v15);
  v16 = sub_20C1387E4();
  v118 = *(v16 - 8);
  v119 = v16;
  MEMORY[0x28223BE20](v16);
  v117 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NavigationRequest();
  v129 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v130 = v19;
  v135 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v109 = *(v20 - 8);
  v110 = v20;
  v21 = *(v109 + 64);
  MEMORY[0x28223BE20](v20);
  v108 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v127 = &v105 - v23;
  v24 = sub_20C1388F4();
  v138 = *(v24 - 8);
  v139 = v24;
  MEMORY[0x28223BE20](v24);
  v133 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v25;
  MEMORY[0x28223BE20](v26);
  v137 = &v105 - v27;
  v126 = sub_20C132C14();
  v28 = *(v126 - 1);
  MEMORY[0x28223BE20](v126);
  v30 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v31);
  v33 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  v132 = a1;
  sub_20C133AA4();
  v141 = v149[0];
  v131 = v5;
  sub_20BD317AC(v5, v33, type metadata accessor for NavigationResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0);
      v64 = *(v63 + 48);
      LODWORD(v128) = v33[*(v63 + 64)];
      v106 = v30;
      v107 = v28;
      (*(v28 + 32))(v30, v33, v126);
      v65 = v139;
      v66 = v138;
      v124 = *(v138 + 32);
      v67 = &v33[v64];
      v68 = v137;
      v124(v137, v67, v139);
      swift_getObjectType();
      sub_20C13D234();
      sub_20BD317AC(v131, v135, type metadata accessor for NavigationRequest);
      (*(v66 + 16))(v133, v68, v65);
      v69 = (*(v129 + 80) + 16) & ~*(v129 + 80);
      v70 = (v130 + *(v66 + 80) + v69) & ~*(v66 + 80);
      v71 = (v125 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
      v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
      v73 = swift_allocObject();
      sub_20BD3108C(v135, v73 + v69, type metadata accessor for NavigationRequest);
      v124((v73 + v70), v133, v65);
      *(v73 + v71) = v132;
      *(v73 + v72) = v136;
      v74 = v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v74 = v134;
      *(v74 + 8) = v128;
      v76 = v108;
      v75 = v109;
      v77 = v110;
      (*(v109 + 16))(v108, v127, v110);
      v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
      v79 = (v21 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      (*(v75 + 32))(v80 + v78, v76, v77);
      v81 = (v80 + v79);
      *v81 = sub_20BD2CF60;
      v81[1] = v73;
      type metadata accessor for MarketingUserInterfaceConfiguration();

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_20C137C94();
      swift_unknownObjectRelease();
      (*(v75 + 8))(v127, v77);
      (*(v138 + 8))(v137, v139);
      return (*(v107 + 8))(v106, v126);
    case 4u:
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0);
      v83 = *(v82 + 48);
      LODWORD(v127) = v33[*(v82 + 64)];
      v84 = v117;
      (*(v118 + 32))(v117, v33, v119);
      v85 = v139;
      v86 = v138;
      v126 = *(v138 + 32);
      v87 = &v33[v83];
      v88 = v137;
      v126(v137, v87, v139);
      v89 = v131;
      sub_20BD25AAC(v84, v136, v134, v128);
      sub_20BD317AC(v89, v135, type metadata accessor for NavigationRequest);
      v90 = v86;
      v91 = *(v86 + 16);
      v92 = v133;
      v91(v133, v88, v85);
      v93 = (*(v129 + 80) + 16) & ~*(v129 + 80);
      v94 = (v130 + *(v90 + 80) + v93) & ~*(v90 + 80);
      v95 = (v125 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
      v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
      v97 = swift_allocObject();
      sub_20BD3108C(v135, v97 + v93, type metadata accessor for NavigationRequest);
      v126((v97 + v94), v92, v139);
      *(v97 + v95) = v132;
      *(v97 + v96) = v136;
      v98 = v97 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v98 = v134;
      *(v98 + 8) = v127;
      v100 = v113;
      v99 = v114;
      v101 = v111;
      (*(v113 + 16))(v111, v128, v114);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = swift_allocObject();
      (*(v100 + 32))(v103 + v102, v101, v99);
      v104 = (v103 + ((v13 + v102 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v104 = sub_20BD2CF20;
      v104[1] = v97;
      type metadata accessor for MarketingUserInterfaceConfiguration();

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_20C137C94();
      swift_unknownObjectRelease();
      (*(v100 + 8))(v128, v99);
      (*(v138 + 8))(v137, v139);
      return (*(v118 + 8))(v117, v119);
    case 6u:
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763FD0);
      v38 = *(v37 + 48);
      LODWORD(v134) = v33[*(v37 + 64)];
      v39 = v124;
      v40 = v123;
      v41 = v121;
      (*(v123 + 32))(v121, v33, v124);
      v42 = v139;
      v43 = v138;
      v44 = *(v138 + 32);
      v127 = (v138 + 32);
      v128 = v44;
      v45 = &v33[v38];
      v46 = v137;
      v44(v137, v45, v139);
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764260) + 48);
      v48 = v122;
      (*(v40 + 16))(v122, v41, v39);
      *(v48 + v47) = v136;
      swift_storeEnumTagMultiPayload();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
      sub_20C133AA4();
      sub_20C133AA4();
      v136 = v148[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090);
      sub_20C133AA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769450);
      sub_20C133AA4();
      sub_20C133AA4();
      LODWORD(v126) = v146[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00);
      sub_20C133AA4();
      sub_20B51CC64(v147, v145);
      v49 = v135;
      sub_20BD317AC(v131, v135, type metadata accessor for NavigationRequest);
      v50 = v43;
      v51 = v133;
      (*(v43 + 16))(v133, v46, v42);
      sub_20B51CC64(v148, v144);
      sub_20B51CC64(v149, v143);
      sub_20B51CC64(v146, v142);
      sub_20BD317AC(v48, v120, type metadata accessor for MarketingUserInterfaceResource);
      v52 = (*(v129 + 80) + 56) & ~*(v129 + 80);
      v53 = (v130 + *(v50 + 80) + v52) & ~*(v50 + 80);
      v54 = (v125 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v54 + 49) & 0xFFFFFFFFFFFFFFF8;
      v56 = (v55 + 47) & 0xFFFFFFFFFFFFFFF8;
      v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
      v132 = (*(v115 + 80) + v57 + 8) & ~*(v115 + 80);
      v58 = swift_allocObject();
      sub_20B51C710(v145, v58 + 16);
      sub_20BD3108C(v49, v58 + v52, type metadata accessor for NavigationRequest);
      v59 = v51;
      v60 = v139;
      v128(v58 + v53, v59, v139);
      v61 = v58 + v54;
      sub_20B51C710(v144, v58 + v54);
      *(v61 + 40) = v126;
      *(v61 + 41) = v134;
      sub_20B51C710(v143, v58 + v55);
      sub_20B51C710(v142, v58 + v56);
      *(v58 + v57) = v136;
      sub_20BD3108C(v120, v58 + v132, type metadata accessor for MarketingUserInterfaceResource);
      v62 = swift_allocObject();
      *(v62 + 16) = "SeymourUI/NavigationConfigurationProviding.swift";
      *(v62 + 24) = 48;
      *(v62 + 32) = 2;
      *(v62 + 40) = 56;
      *(v62 + 48) = &unk_20C17A790;
      *(v62 + 56) = v58;
      type metadata accessor for MarketingUserInterfaceConfiguration();
      swift_unknownObjectRetain();
      sub_20C137C94();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v146);
      __swift_destroy_boxed_opaque_existential_1(v147);
      __swift_destroy_boxed_opaque_existential_1(v148);
      __swift_destroy_boxed_opaque_existential_1(v149);
      sub_20BD31814(v122, type metadata accessor for MarketingUserInterfaceResource);
      (*(v138 + 8))(v137, v60);
      return (*(v123 + 8))(v121, v124);
    case 9u:
      (*(v28 + 8))(v33, v126);
      goto LABEL_3;
    case 0xAu:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
      goto LABEL_3;
    default:
      sub_20BD31814(v33, type metadata accessor for NavigationResource);
LABEL_3:
      sub_20B5D9BA8();
      v34 = swift_allocError();
      *v35 = 13;
      *(swift_allocObject() + 16) = v34;
      type metadata accessor for MarketingUserInterfaceConfiguration();
      sub_20C137CA4();
      return swift_unknownObjectRelease();
  }
}

uint64_t sub_20BD29F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v47 = a7;
  v48 = a8;
  v49 = a6;
  v39 = a5;
  v45 = a3;
  v46 = a4;
  v12 = sub_20C1388F4();
  v38 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NavigationRequest();
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76E4B0);
  v43 = *(v18 - 8);
  v44 = v18;
  v19 = *(v43 + 64);
  MEMORY[0x28223BE20](v18);
  v42 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v50 = &v37 - v21;
  sub_20BD25AAC(a1, a5, a6, &v37 - v21);
  sub_20BD317AC(a2, v17, type metadata accessor for NavigationRequest);
  v22 = v41;
  (*(v13 + 16))(v41, v45, v12);
  v23 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v24 = (v16 + *(v13 + 80) + v23) & ~*(v13 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_20BD3108C(v17, v27 + v23, type metadata accessor for NavigationRequest);
  (*(v13 + 32))(v27 + v24, v22, v38);
  *(v27 + v25) = v46;
  *(v27 + v26) = v39;
  v28 = v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = v50;
  *v28 = v49;
  *(v28 + 8) = v47;
  v31 = v42;
  v30 = v43;
  v32 = v44;
  (*(v43 + 16))(v42, v29, v44);
  v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v34 = swift_allocObject();
  (*(v30 + 32))(v34 + v33, v31, v32);
  v35 = (v34 + ((v19 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v35 = sub_20BD31A10;
  v35[1] = v27;
  type metadata accessor for MarketingUserInterfaceConfiguration();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_20C137C94();
  return (*(v30 + 8))(v50, v32);
}

uint64_t sub_20BD2A360()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = swift_projectBox();
  sub_20C135AA4();
  v4 = sub_20C1344C4();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  swift_beginAccess();
  return sub_20B5DF2D4(v2, v3, &qword_27C766E88);
}

uint64_t sub_20BD2A480(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v32 = a3;
  v36 = a4;
  v40 = sub_20C137254();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v30 - v9;
  v30 = swift_projectBox();
  v10 = sub_20C1340B4();
  v11 = v10;
  v12 = v10 + 56;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 56);
  v16 = (v13 + 63) >> 6;
  v37 = v4 + 32;
  v38 = v4;
  v33 = (v4 + 8);
  v34 = v4 + 16;

  v18 = 0;
  while (v15)
  {
LABEL_10:
    v20 = v11;
    v21 = *(v11 + 48);
    v22 = v38;
    v23 = v35;
    v24 = v40;
    (*(v38 + 16))(v35, v21 + *(v38 + 72) * (__clz(__rbit64(v15)) | (v18 << 6)), v40);
    v25 = *(v22 + 32);
    v25(v39, v23, v24);
    v26 = sub_20C1371C4();
    if ((v36 & 1) == 0 && v26 == v32)
    {

      v27 = v31;
      v25(v31, v39, v40);
      v28 = 0;
LABEL_14:
      (*(v38 + 56))(v27, v28, 1, v40);

      v29 = v30;
      swift_beginAccess();
      return sub_20B5DF2D4(v27, v29, &unk_27C762A60);
    }

    v15 &= v15 - 1;
    result = (*v33)(v39, v40);
    v11 = v20;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v28 = 1;
      v27 = v31;
      goto LABEL_14;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BD2A798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v44 = a3;
  v53 = a2;
  v54 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_20C1344C4();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = &v43 - v15;
  v16 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C137254();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  v23 = swift_projectBox();
  v24 = swift_projectBox();
  swift_beginAccess();
  if (!(*(v20 + 48))(v23, 1, v19))
  {
    (*(v20 + 16))(v22, v23, v19);
    v25 = sub_20C1371C4();
    (*(v20 + 8))(v22, v19);
    if (!v25)
    {
      v26 = type metadata accessor for NavigationRequest();
      sub_20BD317AC(v53 + *(v26 + 24), v18, type metadata accessor for NavigationSource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = sub_20C135024();
        (*(*(v27 - 8) + 8))(v18, v27);
        swift_beginAccess();
        sub_20B52F9E8(v24, v11, &qword_27C766E88);
        v28 = v49;
        v29 = v50;
        if ((*(v49 + 48))(v11, 1, v50) != 1)
        {
          v31 = *(v28 + 32);
          v32 = v48;
          v31(v48, v11, v29);
          __swift_project_boxed_opaque_existential_1(v44, v44[3]);
          sub_20C1398E4();
          v33 = v43;
          (*(v28 + 16))(v43, v32, v29);
          v34 = (*(v28 + 80) + 24) & ~*(v28 + 80);
          v35 = swift_allocObject();
          *(v35 + 16) = v51;
          v31((v35 + v34), v33, v29);
          v36 = swift_allocObject();
          *(v36 + 16) = sub_20BD31874;
          *(v36 + 24) = v35;
          v38 = v45;
          v37 = v46;
          v39 = v47;
          (*(v46 + 16))(v45, v52, v47);
          v40 = (*(v37 + 80) + 16) & ~*(v37 + 80);
          v41 = swift_allocObject();
          (*(v37 + 32))(v41 + v40, v38, v39);
          v42 = (v41 + ((v6 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v42 = sub_20B5DF4C4;
          v42[1] = v36;

          sub_20C137C94();
          (*(v37 + 8))(v52, v39);
          return (*(v28 + 8))(v48, v29);
        }

        sub_20B520158(v11, &qword_27C766E88);
      }

      else
      {
        sub_20BD31814(v18, type metadata accessor for NavigationSource);
      }
    }
  }

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20BD2ADC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  v7 = swift_projectBox();
  v8 = sub_20C1340B4();
  v11 = a3;
  sub_20B6B73C4(sub_20BD319BC, v8, v6);

  swift_beginAccess();
  return sub_20B5DF2D4(v6, v7, &unk_27C762A60);
}

BOOL sub_20BD2AEE0()
{
  v0 = sub_20C134734();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134484();
  v4 = sub_20C1346F4();
  (*(v1 + 8))(v3, v0);
  v5 = sub_20C1371C4();
  v6 = *(v4 + 16);
  v7 = 32;
  do
  {
    v8 = v6;
    if (v6-- == 0)
    {
      break;
    }

    v10 = *(v4 + v7);
    v7 += 8;
  }

  while (v10 != v5);
  v11 = v8 != 0;

  return v11;
}

uint64_t sub_20BD2B010@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v45 = a2;
  v52 = a1;
  v53 = a3;
  v54 = type metadata accessor for WorkoutSessionConfiguration();
  v46 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v47 = v5;
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_20C137254();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x28223BE20](v12);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v45 - v15;
  v17 = sub_20C1344C4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_projectBox();
  v22 = swift_projectBox();
  swift_beginAccess();
  sub_20B52F9E8(v21, v16, &qword_27C766E88);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v23 = &qword_27C766E88;
    v24 = v16;
LABEL_5:
    sub_20B520158(v24, v23);
    v27 = sub_20C133A24();
    sub_20BD31384(&qword_27C7622C0, MEMORY[0x277D50230]);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D50220], v27);
    *(swift_allocObject() + 16) = v28;
    return sub_20C137CA4();
  }

  (*(v18 + 32))(v20, v16, v17);
  swift_beginAccess();
  sub_20B52F9E8(v22, v11, &unk_27C762A60);
  v26 = v50;
  v25 = v51;
  if ((*(v50 + 48))(v11, 1, v51) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v23 = &unk_27C762A60;
    v24 = v11;
    goto LABEL_5;
  }

  v31 = v49;
  (*(v26 + 32))(v49, v11, v25);
  (*(v18 + 16))(v8, v20, v17);
  v32 = v54;
  (*(v26 + 16))(&v8[*(v54 + 20)], v31, v25);
  sub_20BD317AC(v45, &v8[v32[7]], MEMORY[0x277D4DFB8]);
  v33 = v32[9];
  v34 = sub_20C13BA24();
  (*(*(v34 - 8) + 56))(&v8[v33], 1, 1, v34);
  v35 = v32[10];
  v36 = sub_20C134A44();
  (*(*(v36 - 8) + 56))(&v8[v35], 1, 1, v36);
  v37 = v32[12];
  v38 = sub_20C135C54();
  (*(*(v38 - 8) + 56))(&v8[v37], 1, 1, v38);
  v8[v32[6]] = 1;
  *&v8[v32[8]] = a4;
  v39 = &v8[v32[11]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &v8[v32[13]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v41 = v20;
  v42 = v48;
  sub_20BD317AC(v8, v48, type metadata accessor for WorkoutSessionConfiguration);
  v43 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v44 = swift_allocObject();
  sub_20BD3108C(v42, v44 + v43, type metadata accessor for WorkoutSessionConfiguration);
  sub_20C137CA4();
  sub_20BD31814(v8, type metadata accessor for WorkoutSessionConfiguration);
  (*(v26 + 8))(v49, v25);
  return (*(v18 + 8))(v41, v17);
}

uint64_t sub_20BD2B704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = swift_projectBox();
  v12 = a5(0);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10, a1, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  swift_beginAccess();
  return sub_20B5DF2D4(v10, v11, a3);
}

uint64_t sub_20BD2B84C@<X0>(uint64_t a1@<X8>)
{
  v2 = swift_projectBox();
  swift_beginAccess();
  return sub_20B52F9E8(v2, a1, &qword_27C76E4F8);
}

void sub_20BD2B8A8(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v114 = a2;
  v117 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v4 - 8);
  v95 = &v89 - v5;
  v6 = type metadata accessor for WorkoutSessionConfiguration();
  v96 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v98 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v7;
  MEMORY[0x28223BE20](v8);
  v99 = &v89 - v9;
  v91 = sub_20C13A484();
  MEMORY[0x28223BE20](v91);
  v107 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v109 = &v89 - v12;
  v93 = sub_20C13BB84();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_20C137254();
  v118 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v106 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v108 = &v89 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v89 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v89 - v21;
  v23 = sub_20C134104();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  MEMORY[0x28223BE20](v27 - 8);
  v104 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v89 - v30;
  v116 = sub_20C1344C4();
  v110 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v105 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v89 - v34;
  v36 = swift_projectBox();
  v115 = v35;
  v94 = a1;
  sub_20C137D84();
  swift_beginAccess();
  if ((*(v24 + 48))(v36, 1, v23))
  {
    v37 = v118;
    v38 = v111;
    (*(v118 + 56))(v31, 1, 1, v111);
    v39 = v31;
LABEL_14:
    v53 = v104;
    sub_20B52F9E8(v39, v104, &unk_27C762A60);
    v54 = (*(v37 + 48))(v53, 1, v38);
    v55 = v116;
    v56 = v110;
    if (v54 == 1)
    {
      sub_20B520158(v53, &unk_27C762A60);
      v57 = v90;
      sub_20C13B534();
      v58 = sub_20C13BB74();
      v59 = sub_20C13D1D4();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_20B517000, v58, v59, "Remote Display Configuration creation failed. Invalid workout activity type behavior", v60, 2u);
        MEMORY[0x20F2F6A40](v60, -1, -1);
      }

      (*(v92 + 8))(v57, v93);
      sub_20B5D9BA8();
      v61 = swift_allocError();
      *v62 = 15;
      *(swift_allocObject() + 16) = v61;
      v63 = v61;
      sub_20C137CA4();
      sub_20B520158(v39, &unk_27C762A60);
      (*(v56 + 8))(v115, v55);
    }

    else
    {
      v100 = v39;
      v64 = *(v37 + 32);
      v65 = v108;
      v64(v108, v53, v38);
      v66 = sub_20C137EA4();
      v67 = v109;
      (*(*(v66 - 8) + 16))(v109, v94, v66);
      swift_storeEnumTagMultiPayload();
      (*(v56 + 16))(v105, v115, v55);
      v68 = *(v37 + 16);
      v69 = v38;
      v68(v106, v65, v38);
      sub_20BD317AC(v67, v107, MEMORY[0x277D4DFB8]);
      v70 = v95;
      sub_20C137E84();
      v71 = v70;
      v72 = sub_20C138184();
      v73 = *(v72 - 8);
      if ((*(v73 + 48))(v71, 1, v72) == 1)
      {
        sub_20B520158(v71, &unk_27C768AF0);
        v74 = 0;
      }

      else
      {
        sub_20C138134();
        v74 = v75;
        (*(v73 + 8))(v71, v72);
      }

      v76 = v6[9];
      v77 = sub_20C13BA24();
      v78 = v99;
      (*(*(v77 - 8) + 56))(&v99[v76], 1, 1, v77);
      v79 = v6[10];
      v80 = sub_20C134A44();
      (*(*(v80 - 8) + 56))(v78 + v79, 1, 1, v80);
      v81 = v6[12];
      v82 = sub_20C135C54();
      (*(*(v82 - 8) + 56))(v78 + v81, 1, 1, v82);
      v83 = v116;
      (*(v56 + 32))(v78, v105, v116);
      v64((v78 + v6[5]), v106, v69);
      *(v78 + v6[6]) = 1;
      sub_20BD3108C(v107, v78 + v6[7], MEMORY[0x277D4DFB8]);
      *(v78 + v6[8]) = v74;
      v84 = (v78 + v6[11]);
      *v84 = 0;
      v84[1] = 0;
      v85 = (v78 + v6[13]);
      *v85 = 0;
      v85[1] = 0;
      v86 = v98;
      sub_20BD317AC(v78, v98, type metadata accessor for WorkoutSessionConfiguration);
      v87 = (*(v96 + 80) + 16) & ~*(v96 + 80);
      v88 = swift_allocObject();
      sub_20BD3108C(v86, v88 + v87, type metadata accessor for WorkoutSessionConfiguration);
      sub_20C137CA4();
      sub_20BD31814(v78, type metadata accessor for WorkoutSessionConfiguration);
      sub_20BD31814(v109, MEMORY[0x277D4DFB8]);
      (*(v118 + 8))(v108, v69);
      sub_20B520158(v100, &unk_27C762A60);
      (*(v56 + 8))(v115, v83);
    }

    return;
  }

  v102 = v19;
  v112 = v22;
  v100 = v31;
  v89 = v6;
  (*(v24 + 16))(v26, v36, v23);
  v40 = sub_20C1340B4();
  (*(v24 + 8))(v26, v23);
  v41 = v40 + 56;
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v40 + 56);
  v45 = (v42 + 63) >> 6;
  v37 = v118;
  v101 = v118 + 16;
  v103 = v118 + 32;
  v46 = (v118 + 8);
  v113 = v40;

  v47 = 0;
  v38 = v111;
  v48 = v112;
  if (v44)
  {
    while (1)
    {
      v49 = v47;
LABEL_10:
      (*(v37 + 16))(v48, *(v113 + 48) + *(v37 + 72) * (__clz(__rbit64(v44)) | (v49 << 6)), v38);
      v50 = v37;
      v51 = *(v37 + 32);
      v52 = v102;
      v51();
      if (sub_20C1371C4() == v114)
      {
        break;
      }

      v44 &= v44 - 1;
      (*v46)(v52, v38);
      v47 = v49;
      v37 = v50;
      if (!v44)
      {
        goto LABEL_7;
      }
    }

    v39 = v100;
    (v51)(v100, v52, v38);
    (*(v50 + 56))(v39, 0, 1, v38);

    v6 = v89;
    v37 = v50;
    goto LABEL_14;
  }

LABEL_7:
  while (1)
  {
    v49 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v49 >= v45)
    {

      v39 = v100;
      (*(v37 + 56))(v100, 1, 1, v38);

      v6 = v89;
      goto LABEL_14;
    }

    v44 = *(v41 + 8 * v49);
    ++v47;
    if (v44)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_20BD2C634(void **a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8);

  return sub_20C137CA4();
}

uint64_t sub_20BD2C6C4()
{
  *(swift_allocObject() + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8);

  return sub_20C137CA4();
}

uint64_t sub_20BD2C744(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_20C13BB84();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD2C804, 0, 0);
}

uint64_t sub_20BD2C804()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_20BD2C944;

  return MEMORY[0x2821ADEA0](v4, v5);
}

uint64_t sub_20BD2C944()
{

  if (v0)
  {

    v1 = sub_20BD31A0C;
  }

  else
  {
    v1 = sub_20BD2CA5C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20BD2CA5C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_20BD2CB18;
  v4 = v0[7];

  return MEMORY[0x2821ADE98](v4, v1, v2);
}

uint64_t sub_20BD2CB18()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20BD2CC9C;
  }

  else
  {
    v2 = sub_20BD2CC2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BD2CC2C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BD2CC9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BD2CD0C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for NavigationRequest() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_20C1388F4() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 49) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for MarketingUserInterfaceResource();
  v11 = v1 + v9;
  v12 = *(v11 + 41);
  v13 = *(v11 + 40);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_20B52AC14;

  return sub_20BD26604(a1, v1 + 16, v1 + v5, v1 + v8, v11, v13, v12, v1 + v10);
}

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v50 = *(*(v1 - 8) + 64);
  v3 = sub_20C1388F4();
  v4 = *(v3 - 8);
  v49 = *(v4 + 80);
  v48 = *(v4 + 64);
  v51 = (v2 + 16) & ~v2;
  v5 = (v0 + v51);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v51, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v18 = sub_20C1387E4();
      (*(*(v18 - 8) + 8))(v0 + v51, v18);
      v7 = &qword_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v51, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
      (*(v4 + 8))(v5 + *(v19 + 48), v3);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v51, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v51, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = *(v11 + 20);
        v13 = sub_20C137254();
        v14 = v5 + v12;
        v15 = v11;
        (*(*(v13 - 8) + 8))(v14, v13);
        v16 = *(v11 + 28);
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v17 = sub_20C137EA4();
          (*(*(v17 - 8) + 8))(v5 + v16, v17);
        }

        else
        {
        }

        v37 = v15[9];
        v38 = sub_20C13BA24();
        v39 = *(v38 - 8);
        if (!(*(v39 + 48))(v5 + v37, 1, v38))
        {
          (*(v39 + 8))(v5 + v37, v38);
        }

        v40 = v15[10];
        v41 = sub_20C134A44();
        v42 = *(v41 - 8);
        if (!(*(v42 + 48))(v5 + v40, 1, v41))
        {
          (*(v42 + 8))(v5 + v40, v41);
        }

        if (*(v5 + v15[11] + 8) >= 0xC)
        {
        }

        v43 = v15[12];
        v44 = sub_20C135C54();
        v45 = *(v44 - 8);
        if (!(*(v45 + 48))(v5 + v43, 1, v44))
        {
          (*(v45 + 8))(v5 + v43, v44);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v20 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v24 = sub_20C1344C4();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v20[v23], 1, v24))
      {
        (*(v25 + 8))(&v20[v23], v24);
      }

      break;
    case 4:

      break;
    case 3:
      v22 = sub_20C139144();
      (*(*(v22 - 8) + 8))(v20, v22);
      break;
  }

  v26 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v26, v34);
  }

  else if (!v27)
  {
    v47 = v4;
    v28 = v3;
    v29 = v2;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v26, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v26[v33], 1, v30))
    {
      v32(&v26[v33], v30);
    }

    v2 = v29;
    v3 = v28;
    v4 = v47;
  }

  v35 = (v51 + v50 + v49) & ~v49;
  v36 = (((((v48 + v35 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v35, v3);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v36 + 9, v2 | v49 | 7);
}

uint64_t sub_20BD2D820(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NavigationRequest() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_20C1388F4() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v9);
  v12 = *(v2 + v10);
  v13 = (v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = *(v13 + 8);

  return a2(a1, v2 + v5, v2 + v8, v11, v12, v14, v15);
}

uint64_t objectdestroy_2Tm_4()
{
  v1 = type metadata accessor for NavigationRequest();
  v62 = *(*(v1 - 8) + 80);
  v2 = (v62 + 56) & ~v62;
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_20C1388F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v56 = (*(v5 + 64) + ((v2 + v3 + v6) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v2 + v3 + v6) & ~v6;
  v58 = (v56 + 49) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for MarketingUserInterfaceResource() - 8);
  v63 = *(v7 + 80);
  v61 = *(v7 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v8 = (v0 + v2);
  type metadata accessor for NavigationResource();
  v60 = v5;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v11 = sub_20C132C14();
      (*(*(v11 - 8) + 8))(v0 + v2, v11);
      v10 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v12 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      break;
    case 4u:
      v20 = sub_20C1387E4();
      (*(*(v20 - 8) + 8))(v0 + v2, v20);
      v10 = &qword_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v9 = sub_20C138894();
      (*(*(v9 - 8) + 8))(v0 + v2, v9);
      v10 = &qword_27C763FD0;
LABEL_17:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v10);
      (*(v5 + 8))(v8 + *(v21 + 48), v4);
      break;
    case 9u:
      v12 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      break;
    case 0xFu:
      v12 = sub_20C138204();
LABEL_11:
      (*(*(v12 - 8) + 8))(v0 + v2, v12);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13 = sub_20C1344C4();
        (*(*(v13 - 8) + 8))(v0 + v2, v13);
        v14 = type metadata accessor for WorkoutSessionConfiguration();
        v15 = v14[5];
        v16 = sub_20C137254();
        (*(*(v16 - 8) + 8))(v8 + v15, v16);
        v17 = v14[7];
        sub_20C13A484();
        v18 = v4;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v19 = sub_20C137EA4();
          (*(*(v19 - 8) + 8))(v8 + v17, v19);
        }

        else
        {
        }

        v45 = v14[9];
        v46 = sub_20C13BA24();
        v47 = *(v46 - 8);
        if (!(*(v47 + 48))(v8 + v45, 1, v46))
        {
          (*(v47 + 8))(v8 + v45, v46);
        }

        v48 = v14[10];
        v49 = sub_20C134A44();
        v50 = *(v49 - 8);
        if (!(*(v50 + 48))(v8 + v48, 1, v49))
        {
          (*(v50 + 8))(v8 + v48, v49);
        }

        if (*(v8 + v14[11] + 8) >= 0xC)
        {
        }

        v51 = v14[12];
        v52 = sub_20C135C54();
        v53 = *(v52 - 8);
        if (!(*(v53 + 48))(v8 + v51, 1, v52))
        {
          (*(v53 + 8))(v8 + v51, v52);
        }

        v4 = v18;
      }

      else
      {
LABEL_2:
      }

      break;
    default:
      break;
  }

  v22 = v8 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = v4;
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v27 = sub_20C1344C4();
      v28 = *(v27 - 8);
      if (!(*(v28 + 48))(&v22[v26], 1, v27))
      {
        (*(v28 + 8))(&v22[v26], v27);
      }

      break;
    case 4:

      break;
    case 3:
      v25 = sub_20C139144();
      (*(*(v25 - 8) + 8))(v22, v25);
      break;
  }

  v29 = v63;
  v30 = (v63 + ((v59 + 47) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v63;
  v31 = v8 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v32 = swift_getEnumCaseMultiPayload();
  if (v32 == 1)
  {
    v38 = sub_20C135024();
    (*(*(v38 - 8) + 8))(v31, v38);
    v33 = v62;
  }

  else
  {
    v33 = v62;
    if (!v32)
    {
      v55 = v6;
      v34 = sub_20C132C14();
      v35 = *(v34 - 8);
      v36 = *(v35 + 8);
      v36(v31, v34);
      v37 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
      if (!(*(v35 + 48))(&v31[v37], 1, v34))
      {
        v36(&v31[v37], v34);
      }

      v33 = v62;
      v29 = v63;
      v6 = v55;
    }
  }

  (*(v60 + 8))(v0 + v57, v24);
  __swift_destroy_boxed_opaque_existential_1(v0 + v56);
  __swift_destroy_boxed_opaque_existential_1(v0 + v58);
  __swift_destroy_boxed_opaque_existential_1(v0 + v59);
  swift_unknownObjectRelease();
  v39 = swift_getEnumCaseMultiPayload();
  if (v39 <= 1)
  {
    if (v39)
    {
      if (v39 != 1)
      {
        goto LABEL_41;
      }

      v40 = sub_20C138894();
      (*(*(v40 - 8) + 8))(v0 + v30, v40);
      v41 = &unk_27C764260;
    }

    else
    {
      v43 = sub_20C132C14();
      (*(*(v43 - 8) + 8))(v0 + v30, v43);
      v41 = &unk_27C764258;
    }

    goto LABEL_40;
  }

  if (v39 == 2)
  {
    v44 = sub_20C132C14();
    (*(*(v44 - 8) + 8))(v0 + v30, v44);
    v41 = &unk_27C767A30;
LABEL_40:
    __swift_instantiateConcreteTypeFromMangledNameV2(v41);
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  if (v39 == 3)
  {
    v42 = sub_20C132C14();
    (*(*(v42 - 8) + 8))(v0 + v30, v42);
  }

LABEL_41:

  return MEMORY[0x2821FE8E8](v0, v30 + v61, v33 | v6 | v29 | 7);
}

uint64_t sub_20BD2E4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a7;
  v48 = a8;
  v49 = a10;
  v46 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_20C13BB84();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v22 = sub_20C13BB74();
  v23 = sub_20C13D1F4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = a1;
    v25 = v24;
    v40 = swift_slowAlloc();
    v51 = v40;
    *v25 = 134218498;
    *(v25 + 4) = v50;
    *(v25 + 12) = 2080;
    v26 = sub_20C13DCA4();
    v43 = a6;
    v41 = v18;
    v28 = a4;
    v29 = a5;
    v30 = a2;
    v31 = sub_20B51E694(v26, v27, &v51);
    v32 = a3;
    v33 = v43;

    *(v25 + 14) = v31;
    a2 = v30;
    a5 = v29;
    a4 = v28;
    *(v25 + 22) = 2048;
    a6 = v33;
    *(v25 + 24) = v33;
    a3 = v32;
    v18 = v41;
    _os_log_impl(&dword_20B517000, v22, v23, "Converting from Async-Await to Promise Main: %ld:%s:%lu", v25, 0x20u);
    v34 = v40;
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x20F2F6A40](v34, -1, -1);
    v35 = v25;
    a1 = v42;
    MEMORY[0x20F2F6A40](v35, -1, -1);
  }

  (*(v44 + 8))(v21, v45);
  v36 = sub_20C13CDF4();
  (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v47;
  v38 = v50;
  *(v37 + 40) = v48;
  *(v37 + 48) = v38;
  *(v37 + 56) = a3;
  *(v37 + 64) = a4;
  *(v37 + 72) = a5;
  *(v37 + 80) = a6;
  *(v37 + 88) = a1;
  *(v37 + 96) = a2;

  sub_20B77397C(0, 0, v18, v49, v37);
}

uint64_t sub_20BD2E81C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v18;
  *(v8 + 40) = v17;
  *(v8 + 168) = v16;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764250);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_20C13BB84();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  type metadata accessor for MarketingUserInterfaceConfiguration();
  v11 = swift_task_alloc();
  *(v8 + 112) = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  *(v8 + 120) = v12;
  *v12 = v8;
  v12[1] = sub_20BD2EA10;

  return v14(v11);
}