uint64_t sub_1DADCC734()
{
  v1 = v0[3];

  v2 = v0[9];

  v3 = v0[10];

  return swift_deallocObject();
}

id sub_1DADCC7C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_1DADCC820@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1DADCC868(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1DADCC8B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCC8E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADCC930@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1DADCC980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
  swift_beginAccess();
  return sub_1DAD6E2C8(v3 + v4, a2);
}

uint64_t sub_1DADCC9E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCCA18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADCCA5C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_1DADCCAE4()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCCB3C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DADCCB74()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DADCCBB4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCCBEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1DADCCCCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v9 = type metadata accessor for ActivityContentDidChangeEvent();
  if (!(*(*(v9 - 8) + 48))(v0 + v6, 1, v9))
  {
    v10 = sub_1DAED0B1C();
    (*(*(v10 - 8) + 8))(v0 + v6, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1DADCCE8C()
{
  v1 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 40);
  v2 = (type metadata accessor for CompactLiveActivityView() - 8);
  v3 = *(*v2 + 64);
  v4 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  (*(*(v8 - 8) + 8))(v4 + v2[15]);
  v5 = (v4 + v2[18]);
  if (*v5)
  {
    v6 = v5[1];
  }

  return swift_deallocObject();
}

uint64_t sub_1DADCCFD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED07DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E10, &unk_1DAED8250);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E18, &qword_1DAED9270);
  sub_1DAECF2AC();
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1ECC08E20, &qword_1ECC08E10, &unk_1DAED8250);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1ECC08E28, &qword_1ECC08E18, &qword_1DAED9270);
  swift_getWitnessTable();
  sub_1DAED07BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E30, &qword_1DAED8260);
  sub_1DAECF2AC();
  sub_1DAECF2DC();
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1ECC08E38, &qword_1ECC08E30, &qword_1DAED8260);
  swift_getWitnessTable();
  sub_1DAE183BC();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_1DADCD294@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1DADCD2EC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

double sub_1DADCD344@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1DADCD39C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DADCD3F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DADCD448(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DADCD49C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1DADCD4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DAECF8EC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1DAED1A5C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DADCD61C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1DAECF8EC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1DAED1A5C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DADCD748@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF81C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADCD7B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_requiresStrictViewFraming;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_1DADCD804@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1DADCD87C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1DAE21114();
}

uint64_t sub_1DADCD8E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DADCD954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DADCD9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1DAECDFCC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1DADCDA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1DAECDFCC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1DADCDAB8()
{
  v1 = *(type metadata accessor for RBImageSnapshotter(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1DAECDBFC();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + *(type metadata accessor for RBImageSnapshotter.RBImageOptions(0) + 24);
  v9 = sub_1DAECDFCC();
  (*(*(v9 - 8) + 8))(v8 + v2, v9);
  (*(v5 + 8))(v0 + v6, v4);
  v10 = *(v0 + v7 + 8);

  return swift_deallocObject();
}

uint64_t sub_1DADCDC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DADCDCE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADCDD88@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DAECF3CC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1DADCDDBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DAECF3DC();
}

uint64_t sub_1DADCDE34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1DAECF2AC();
  sub_1DAECFB2C();
  sub_1DAD71948();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1DADCDF24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091C0, &qword_1DAED8E80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DADCDF9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091C0, &qword_1DAED8E80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DADCE018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAECF1CC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DADCE084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAECF1CC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DADCE0F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1DAECEDEC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1DADCE1AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1DAECEDEC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADCE250(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECC09240, &unk_1DAED9260);
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED07DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E10, &unk_1DAED8250);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E18, &qword_1DAED9270);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  swift_getTupleTypeMetadata2();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED084C();

  return swift_getWitnessTable();
}

uint64_t sub_1DADCE3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC09240, &unk_1DAED9260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADCE44C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1DADCE48C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09378, &qword_1DAED9478);
  sub_1DAE2B1F8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DADCE4F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF58C();
  *a1 = result;
  return result;
}

uint64_t sub_1DADCE51C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1DAECF59C();
}

uint64_t sub_1DADCE548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECFE7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1DADCE610(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DAECFE7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1DADCE6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECFDDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1DADCE790(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DAECFDDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1DADCE858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF41C();
  *a1 = result;
  return result;
}

uint64_t sub_1DADCE884(uint64_t *a1)
{
  v1 = *a1;

  return sub_1DAECF42C();
}

uint64_t _s14WidgetRenderer33MetadataInlineShrinkToFitModifierVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14WidgetRenderer33MetadataInlineShrinkToFitModifierVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1DADCEAB4(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = sub_1DAECEDEC();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094D0, &qword_1DAED9A90);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094D8, &qword_1DAED9A98);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[7];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094E0, &unk_1DAED9AA0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

char *sub_1DADCEC98(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = sub_1DAECEDEC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094D0, &qword_1DAED9A90);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094D8, &qword_1DAED9A98);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094E0, &unk_1DAED9AA0);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[8]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1DADCEE74()
{
  v1 = type metadata accessor for InlineDateModifier(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v4 = v1[5];
  v5 = sub_1DAECEDEC();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v3 + v1[6];
  v7 = sub_1DAECDCEC();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094D0, &qword_1DAED9A90) + 28)];

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094B0, &qword_1DAED9A48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1DAECDDEC();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
    v11 = *(v3 + v9);
  }

  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094B8, &qword_1DAED9A80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1DAECDDAC();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
    v14 = *(v3 + v12);
  }

  return swift_deallocObject();
}

uint64_t sub_1DADCF0C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09568, &qword_1DAED9C08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09560, &qword_1DAED9C00);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_1DAECEDEC();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7B0, &unk_1DAEDE9B0);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[8];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_1DADCF2AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09568, &qword_1DAED9C08);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09560, &qword_1DAED9C00);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
    return result;
  }

  v16 = sub_1DAECEDEC();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7B0, &unk_1DAEDE9B0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1DADCF48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECFF0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1DAECDD3C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1DADCF57C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DAECFF0C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1DAECDD3C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1DADCF6C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DAECF89C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1DADCF6F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DAECF8AC();
}

uint64_t sub_1DADCF730(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1DAECF2AC();
  sub_1DAE360E4();
  return swift_getWitnessTable();
}

uint64_t sub_1DADCF794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09678, &qword_1DAED9DF8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1DADCF8C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09678, &qword_1DAED9DF8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1DADCFA00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1DADCFA44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DAECEDEC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADCFAF0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1DAECEB0C();
  sub_1DAECFB2C();
  sub_1DAECEB8C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09840, &unk_1DAEDA520);
  sub_1DAECFB2C();
  sub_1DAECFB2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DAE39FF8();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1DADCFD28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DADCFD80(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DADCFDD4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADCFE14()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);

  return swift_deallocObject();
}

uint64_t sub_1DADCFE64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCFE9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADCFEF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF7FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADCFF48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A20, &unk_1DAEDB4A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_1DADD0004(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A20, &unk_1DAEDB4A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADD00B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A20, &unk_1DAEDB4A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 84);

    return v9(v10, a2, v8);
  }
}

void *sub_1DADD0170(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A20, &unk_1DAEDB4A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 84);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADD0224(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A50, &qword_1DAEDB5E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A48, &qword_1DAEDB5D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08898, &qword_1DAED8240);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A40, &unk_1DAEDB5C8);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAECFB2C();
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAECFB2C();
  sub_1DAECFB2C();
  sub_1DAECFFFC();
  sub_1DAECF2AC();
  sub_1DAECFB2C();
  sub_1DAED072C();
  sub_1DAECF2AC();
  sub_1DAD64B94(&unk_1EE005C90, &qword_1ECC09A40, &unk_1DAEDB5C8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DAECF34C();
  swift_getWitnessTable();
  sub_1DAECF34C();
  sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240);
  swift_getWitnessTable();
  sub_1DAECF34C();
  sub_1DAD64B94(&qword_1EE005C70, &qword_1ECC09A48, &qword_1DAEDB5D8);
  swift_getWitnessTable();
  sub_1DAECF34C();
  sub_1DAD64B94(&qword_1EE005C78, &qword_1ECC09A50, &qword_1DAEDB5E0);
  swift_getWitnessTable();
  sub_1DAECF34C();
  return swift_getWitnessTable();
}

uint64_t sub_1DADD0700(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1DAECF36C();
  sub_1DAECF2AC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1DAECFB2C();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1DADD08C8()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD0900()
{
  v1 = sub_1DAECEBAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD0998()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DADD09D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DADD0A10@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E127B070]();
  *a1 = result;
  return result;
}

uint64_t sub_1DADD0A3C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1DAECF40C();
}

uint64_t sub_1DADD0A7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1DADD0B38(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1DADD0BE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

uint64_t sub_1DADD0D10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor;
  swift_beginAccess();
  return sub_1DAD648F8(v3 + v4, a2);
}

uint64_t sub_1DADD0D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1DAECDFCC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1DADD0DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1DAECDFCC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1DADD0E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DADD0ED0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1DADD0F50()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD0FC4()
{
  v1 = (type metadata accessor for InProcessListItemActivityInstanceView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C18, &qword_1DAEDBC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1DAECF0AC();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
  }

  else
  {
    v7 = *&v3[v5];
  }

  return swift_deallocObject();
}

uint64_t sub_1DADD10E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C20, qword_1DAEDBCE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DADD119C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C20, qword_1DAEDBCE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADD124C()
{
  type metadata accessor for _InProcessActivityInstanceView();
  sub_1DAECF0AC();
  sub_1DAE537A8(&qword_1ECC09B58, type metadata accessor for _InProcessActivityInstanceView);
  sub_1DAE537A8(&qword_1EE00ABA8, MEMORY[0x1E697DBD0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DADD132C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD1368()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD13A0()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD13D8()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);

  return swift_deallocObject();
}

uint64_t sub_1DADD1420()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD1460()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DADD1498()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD14D0()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD150C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF8BC();
  *a1 = result;
  return result;
}

uint64_t sub_1DADD1538(uint64_t *a1)
{
  v1 = *a1;

  return sub_1DAECF8CC();
}

uint64_t sub_1DADD1570()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return swift_deallocObject();
}

uint64_t sub_1DADD15B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD15F0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DADD1628()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD1660()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD1698()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD16D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD1710()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DADD1758()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD17D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF79C();
  *a1 = result;
  return result;
}

uint64_t sub_1DADD1830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF83C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADD1888@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF60C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADD1918(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DAED157C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DADD19C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DAED157C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADD1A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DAECEDEC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DADD1B14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DAECEDEC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADD1BCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
  swift_beginAccess();
  return sub_1DAD6495C(v3 + v4, a2, &unk_1ECC09EC0, &qword_1DAED7970);
}

uint64_t sub_1DADD1C48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD1C80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF87C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADD1CD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD1D2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD1D64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD1DE4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD1E1C()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD1E54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD1E94()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD1ECC()
{
  v1 = sub_1DAED182C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD1F90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD207C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD20B4()
{
  v1 = *(type metadata accessor for ActivityContentDidChangeEvent() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_1DAED0B1C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_1DADD2188()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD21C4()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD2210()
{
  v1 = sub_1DAECE3DC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);

  v9 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1DADD239C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD246C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD2598()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD267C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocObject();
}

uint64_t sub_1DADD26CC()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD2704()
{
  v1 = sub_1DAED1B8C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1DADD28D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD2908()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DADD2B80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DADD2BD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DADD2C70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1DADD2F90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1DADD31FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DADD3298()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);

  return swift_deallocObject();
}

uint64_t sub_1DADD32E0()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1DADD3320()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1DADD347C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DADD34D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_1DAEAB354();
}

id sub_1DADD352C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1DADD3598@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DADD35F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_1DAEAB354();
}

__n128 sub_1DADD3648@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1DADD36A0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return sub_1DAEAB354();
}

uint64_t sub_1DADD36FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1DADD3758(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return sub_1DAEAB354();
}

__n128 sub_1DADD3808@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1DADD3868()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD38A0()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD3968()
{
  v1 = sub_1DAED10DC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD3A34()
{
  v1 = sub_1DAECE3DC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DADD3B30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD3B68()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD3BF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD3C30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADD3C78()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD3CB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DADD3D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAED0B1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DADD3DF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DAED0B1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_1DADD3EF8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1DAEC7848();
}

uint64_t sub_1DADD3F5C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_1DADC68E4(v5);
}

id sub_1DADD3FC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1DADD4034@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result & 1;
  return result;
}

id sub_1DADD40EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1DADD4B40()
{
  v1 = v0;
  if (qword_1EE005E88 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE0117D8);

  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED200C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
    v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

    v9 = sub_1DAD6482C(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DAD61000, v3, v4, "[%{public}s] Destroyed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E127F100](v6, -1, -1);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  v10 = *(v1 + 24);

  v11 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
  v12 = sub_1DAECE20C();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  sub_1DAD64398(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility, &qword_1ECC07CD0, &qword_1DAED6560);
  v13 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_environmentModifiers;
  v14 = sub_1DAED10DC();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  v15 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client));

  v16 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__keybagStateProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__dataProtectionMonitor));
  sub_1DAD64398(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReasonDate, &qword_1ECC07CE8, &qword_1DAED6F60);
  v17 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__cancellables);

  return v1;
}

uint64_t sub_1DADD4E04()
{
  sub_1DADD4B40();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DADD4E5C(uint64_t result)
{
  if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) & 1) == 0)
  {
    v2 = v1;
    v3 = result;
    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v4 = sub_1DAECEDEC();
    __swift_project_value_buffer(v4, qword_1EE0117D8);

    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED203C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20[0] = v8;
      *v7 = 136446466;
      v9 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v10 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v11 = sub_1DAD6482C(v9, v10, v20);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      v12 = NSStringFromWRReloadReason(v3);
      v13 = sub_1DAED1CEC();
      v15 = v14;

      v16 = sub_1DAD6482C(v13, v15, v20);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] Reload widget if Failed for reason: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    sub_1DAD648F8(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v20);
    v17 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v18 = *(v17 + 120);
    v19 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
    v18();

    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return result;
}

uint64_t sub_1DADD50B0()
{
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) & 1) == 0)
  {
    v1 = v0;
    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v2 = sub_1DAECEDEC();
    __swift_project_value_buffer(v2, qword_1EE0117D8);

    v3 = sub_1DAECEDCC();
    v4 = sub_1DAED203C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14[0] = v6;
      *v5 = 136446210;
      v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v9 = sub_1DAD6482C(v8, v7, v14);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1DAD61000, v3, v4, "[%{public}s] Handle action", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1E127F100](v6, -1, -1);
      MEMORY[0x1E127F100](v5, -1, -1);
    }

    sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v14);
    v10 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v11 = *(v10 + 128);
    v12 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
    v11();

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  return result;
}

uint64_t sub_1DADD52BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v40 - v4;
  if (qword_1EE005E88 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE0117D8);

    v7 = sub_1DAECEDCC();
    v8 = sub_1DAED203C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v44[0] = v10;
      *v9 = 136446210;
      v11 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v12 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v13 = sub_1DAD6482C(v11, v12, v44);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] Invalidated", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E127F100](v10, -1, -1);
      MEMORY[0x1E127F100](v9, -1, -1);
    }

    result = BSDispatchQueueAssertMain();
    v15 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated;
    if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated))
    {
      return result;
    }

    *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) = 0;
    *(v1 + v15) = 1;
    v16 = v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReason;
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = sub_1DAECDCEC();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    v18 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReasonDate;
    swift_beginAccess();
    sub_1DAD94438(v5, v1 + v18, &qword_1ECC07CE8, &qword_1DAED6F60);
    swift_endAccess();
    v19 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__cancellables;
    swift_beginAccess();
    v41 = v19;
    v5 = *(v1 + v19);
    if ((v5 & 0xC000000000000001) != 0)
    {
      if (v5 < 0)
      {
        v20 = *(v1 + v19);
      }

      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAECEE3C();
      sub_1DAD7D898(&qword_1EE005C50, MEMORY[0x1E695BF10]);
      sub_1DAED1F9C();
      v22 = v44[0];
      v21 = v44[1];
      v23 = v44[2];
      v24 = v44[3];
      v25 = v44[4];
    }

    else
    {
      v26 = -1 << *(v5 + 32);
      v21 = v5 + 56;
      v23 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v25 = v28 & *(v5 + 56);
      swift_bridgeObjectRetain_n();
      v24 = 0;
      v22 = v5;
    }

    v40 = v23;
    for (i = (v23 + 64) >> 6; v22 < 0; v25 = v33)
    {
      v35 = sub_1DAED24BC();
      if (!v35)
      {
        goto LABEL_24;
      }

      v42 = v35;
      sub_1DAECEE3C();
      swift_dynamicCast();
      v32 = v24;
      v33 = v25;
      if (!v43[0])
      {
        goto LABEL_24;
      }

LABEL_22:
      sub_1DAECEE2C();

      v24 = v32;
    }

    v30 = v24;
    v31 = v25;
    v32 = v24;
    if (v25)
    {
LABEL_18:
      v33 = (v31 - 1) & v31;
      v34 = *(*(v22 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));

      if (v34)
      {
        goto LABEL_22;
      }

LABEL_24:
      sub_1DAD70B20();

      v36 = *(v1 + v41);
      *(v1 + v41) = MEMORY[0x1E69E7CD0];

      sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v43);
      v37 = v43[4];
      __swift_project_boxed_opaque_existential_1(v43, v43[3]);
      v38 = *(v37 + 40);
      v39 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
      v38(v39);

      return __swift_destroy_boxed_opaque_existential_1Tm(v43);
    }

    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= i)
      {
        goto LABEL_24;
      }

      v31 = *(v21 + 8 * v32);
      ++v30;
      if (v31)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

uint64_t default argument 0 of LayerSnapshotter.init(renderBoxFormat:coreAnimationFormat:logger:screenshotManager:dataProtectionMonitor:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE00A940 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RBLayer.SnapshotFormat(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE00A948);
  return sub_1DAD93200(v3, a1, type metadata accessor for RBLayer.SnapshotFormat);
}

id default argument 3 of LayerSnapshotter.init(renderBoxFormat:coreAnimationFormat:logger:screenshotManager:dataProtectionMonitor:)()
{
  v0 = [objc_opt_self() sharedManager];

  return v0;
}

uint64_t default argument 1 of LayerSnapshotter.init(renderBoxFormat:coreAnimationFormat:logger:screenshotManager:dataProtectionMonitor:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC07A38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CALayer.SnapshotFormat(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECC09BF0);
  return sub_1DAD93200(v3, a1, type metadata accessor for CALayer.SnapshotFormat);
}

uint64_t default argument 1 of BugReportingObjectCounter.init(maximum:bugReporter:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BugReporter();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for BugReporter;
  *a1 = result;
  return result;
}

void sub_1DADD5988(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DAED233C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DADD59E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DADD5A08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1DADD5B54()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1DAECE40C();
}

uint64_t sub_1DADD5BA0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1DAECE3FC();
}

uint64_t sub_1DADD5C10(uint64_t a1, id *a2)
{
  result = sub_1DAED1CCC();
  *a2 = 0;
  return result;
}

uint64_t sub_1DADD5C88(uint64_t a1, id *a2)
{
  v3 = sub_1DAED1CDC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DADD5D08@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAED1CEC();
  v2 = sub_1DAED1CBC();

  *a1 = v2;
  return result;
}

uint64_t sub_1DADD5D4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1DAECE3EC();
}

uint64_t sub_1DADD5DB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1DAECE3EC();
}

uint64_t sub_1DADD5E24(uint64_t a1)
{
  v2 = sub_1DAD7D898(&qword_1ECC07EE8, type metadata accessor for LaunchOptionsKey);
  v3 = sub_1DAD7D898(&unk_1ECC07EF0, type metadata accessor for LaunchOptionsKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DADD5EE0(uint64_t a1)
{
  v2 = sub_1DAD7D898(&unk_1EE0055D8, type metadata accessor for RBLayerCopyImageKey);
  v3 = sub_1DAD7D898(&qword_1ECC07EE0, type metadata accessor for RBLayerCopyImageKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DADD5F9C(uint64_t a1)
{
  v2 = sub_1DAD7D898(&qword_1ECC07EB8, type metadata accessor for FileProtectionType);
  v3 = sub_1DAD7D898(&unk_1ECC07EC0, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DADD6058(uint64_t a1)
{
  v2 = sub_1DAD7D898(&qword_1ECC07B88, type metadata accessor for SBUISystemApertureElementIdentifier);
  v3 = sub_1DAD7D898(&unk_1ECC07B90, type metadata accessor for SBUISystemApertureElementIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DADD6114(uint64_t a1)
{
  v2 = sub_1DAD7D898(&qword_1EE005608, type metadata accessor for FileAttributeKey);
  v3 = sub_1DAD7D898(&unk_1ECC07ED0, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DADD61D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DAED1CBC();

  *a2 = v5;
  return result;
}

uint64_t sub_1DADD6218(uint64_t a1)
{
  v2 = sub_1DAD7D898(&qword_1EE005568, type metadata accessor for RBDrawableStatisticsKey);
  v3 = sub_1DAD7D898(&unk_1ECC07BA0, type metadata accessor for RBDrawableStatisticsKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DADD63F4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1DAECE40C();
}

uint64_t sub_1DADD6440()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1DAECE3FC();
}

uint64_t sub_1DADD64B0()
{
  sub_1DAED294C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1DAECE3FC();
  return sub_1DAED297C();
}

uint64_t sub_1DADD6514()
{
  v1 = *v0;
  v2 = sub_1DAED1CEC();
  v3 = MEMORY[0x1E127DA80](v2);

  return v3;
}

uint64_t sub_1DADD6550()
{
  v1 = *v0;
  sub_1DAED1CEC();
  sub_1DAED1D9C();
}

uint64_t sub_1DADD65A4()
{
  v1 = *v0;
  sub_1DAED1CEC();
  sub_1DAED294C();
  sub_1DAED1D9C();
  v2 = sub_1DAED297C();

  return v2;
}

uint64_t sub_1DADD6618(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1DAED1CEC();
  v6 = v5;
  if (v4 == sub_1DAED1CEC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DAED289C();
  }

  return v9 & 1;
}

uint64_t sub_1DADD68E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07DF0, &qword_1DAED5870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for WidgetRendererSession();
  v43 = v10;
  v44 = &off_1F56B01E8;
  v42[0] = a1;
  v11 = type metadata accessor for WidgetArchiveEntryAssertion(0);
  v40 = v11;
  v12 = sub_1DAD7D898(&qword_1EE008418, type metadata accessor for WidgetArchiveEntryAssertion);
  v41 = v12;
  v39[0] = a2;
  v13 = sub_1DAED157C();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DF8, &qword_1DAED5878);
  v15 = *(v14 + 52);
  v16 = (*(v14 + 48) + 3) & 0x1FFFFFFFCLL;
  v17 = swift_allocObject();
  *(v17 + ((*(*v17 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DAD7C48C(v9, v17 + *(*v17 + *MEMORY[0x1E69E6B68] + 16), &qword_1ECC07DF0, &qword_1DAED5870);
  *(a3 + 104) = v17;
  v18 = v43;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = v40;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v22;
  v31 = *v28;
  v37 = v10;
  v38 = &off_1F56B01E8;
  v35 = v12;
  *&v36 = v30;
  v34 = v11;
  *&v33 = v31;
  sub_1DAD657D8(&v36, a3 + 56);
  *(a3 + 96) = 0;
  sub_1DAD657D8(&v33, a3 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  return a3;
}

uint64_t sub_1DADD6C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07DF0, &qword_1DAED5870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for WidgetRendererSession();
  v47 = v12;
  v48 = &off_1F56B01E8;
  v46[0] = a1;
  v13 = type metadata accessor for WidgetArchiveEntryAssertion(0);
  v44 = v13;
  v14 = sub_1DAD7D898(&qword_1EE008418, type metadata accessor for WidgetArchiveEntryAssertion);
  v45 = v14;
  v43[0] = a2;
  v15 = sub_1DAED157C();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DF8, &qword_1DAED5878);
  v17 = *(v16 + 52);
  v18 = (*(v16 + 48) + 3) & 0x1FFFFFFFCLL;
  v19 = swift_allocObject();
  *(v19 + ((*(*v19 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DAD7C48C(v11, v19 + *(*v19 + *MEMORY[0x1E69E6B68] + 16), &qword_1ECC07DF0, &qword_1DAED5870);
  *(a4 + 104) = v19;
  if (a3)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = v47;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = v44;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v25;
  v34 = *v31;
  v41 = v12;
  v42 = &off_1F56B01E8;
  v39 = v14;
  *&v40 = v33;
  v38 = v13;
  *&v37 = v34;
  sub_1DAD657D8(&v40, a4 + 56);
  *(a4 + 96) = v20;
  sub_1DAD657D8(&v37, a4 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  return a4;
}

uint64_t sub_1DADD7008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetRendererSession();
  v24[3] = v6;
  v24[4] = &off_1F56B01E8;
  v24[0] = a1;
  v22 = type metadata accessor for WidgetArchiveEntryAssertion(0);
  v23 = sub_1DAD7D898(&qword_1EE008418, type metadata accessor for WidgetArchiveEntryAssertion);
  v21[0] = a2;
  type metadata accessor for LiveWidgetEntrySource();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = v22;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_1DADD6C60(*v11, *v17, a3, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return v19;
}

uint64_t sub_1DADD721C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetRendererSession();
  v22[3] = v4;
  v22[4] = &off_1F56B01E8;
  v22[0] = a1;
  v20 = type metadata accessor for WidgetArchiveEntryAssertion(0);
  v21 = sub_1DAD7D898(&qword_1EE008418, type metadata accessor for WidgetArchiveEntryAssertion);
  v19[0] = a2;
  type metadata accessor for PlaceholderWidgetEntrySource();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = v20;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_1DADD68E0(*v9, *v15, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v17;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DADD7594(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DADD75B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

id sub_1DADD7B94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08080, &qword_1DAED6210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DAED6200;
  v11 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DAED1CEC();
  *(inited + 40) = v12;
  *(inited + 48) = sub_1DADD7D88(a1, a2, a3);
  *(inited + 56) = v13;
  v14 = sub_1DADDC83C(inited);
  swift_setDeallocating();
  sub_1DAD64398(inited + 32, &qword_1ECC08088, &qword_1DAED6218);
  if (a5)
  {
    v15 = *MEMORY[0x1E696A278];
    v16 = sub_1DAED1CEC();
    sub_1DADD7EC0(a4, a5, v16, v17);
  }

  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v19 = sub_1DAED1CBC();
  if (a3)
  {
    if (a3 == 1)
    {
      v20 = 5;
    }

    else
    {
      v20 = qword_1DAED6298[a1];
    }
  }

  else
  {
    v20 = 3;
  }

  sub_1DADDC950(a1, a2, a3);
  sub_1DADD862C(v14);

  v21 = sub_1DAED1C0C();

  v22 = [v18 initWithDomain:v19 code:v20 userInfo:v21];

  return v22;
}

unint64_t sub_1DADD7D88(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1DAED256C();

    v5 = 0xD000000000000017;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_1DAED256C();

    v5 = 0xD000000000000027;
LABEL_5:
    v8 = v5;
    MEMORY[0x1E127DA50](a1, a2);
    return v8;
  }

  if (a1 ^ 1 | a2)
  {
    v7 = 0xD000000000000025;
  }

  else
  {
    v7 = 0xD00000000000001DLL;
  }

  if (a1 | a2)
  {
    return v7;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1DADD7EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1DADDA908(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1DADBFD3C(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1DADDB704();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1DADD9BD0(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1DADD7FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_1DAD7FBFC(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1DAED0DDC();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1DAD805B0(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_1DADDB9D8();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_1DAED0DDC();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1DADD9D80(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_1DAED0DDC();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1DADD8188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08108, &unk_1DAEDF840);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1DAD64398(a1, &qword_1ECC08108, &unk_1DAEDF840);
    sub_1DAEB90B8(a2, a3, v10);

    return sub_1DAD64398(v10, &qword_1ECC08108, &unk_1DAEDF840);
  }

  else
  {
    sub_1DADDCE6C(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DADDAA90(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DADD8350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1DADDAC00(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1DADBFD3C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1DADDBEA0();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1DADDA2A4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1DADD8448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_1DADDAD78(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1DAECB0A8(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_1DADDC00C();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1DADDA454(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

unint64_t sub_1DADD862C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08098, &qword_1DAED6228);
    v2 = sub_1DAED279C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_1DADDC968(&v27, v29);
        sub_1DADDC968(v29, v30);
        sub_1DADDC968(v30, &v28);
        result = sub_1DADBFD3C(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_1DADDC968(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_1DADDC968(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DADD8884(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08090, &qword_1DAED6220);
  v40 = a2;
  result = sub_1DAED277C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1DAED294C();
      sub_1DAED1D9C();
      result = sub_1DAED297C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DADD8B44(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08110, &qword_1DAED6288);
  v44 = a2;
  result = sub_1DAED277C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1DADDCE6C(v31, v45);
      }

      else
      {
        sub_1DAD6495C(v31, v45, &qword_1ECC07CD0, &qword_1DAED6560);
      }

      v32 = *(v12 + 40);
      sub_1DAED294C();
      sub_1DAED1D9C();
      result = sub_1DAED297C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1DADDCE6C(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DADD8E98(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v39 - v9;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080D0, &qword_1DAED6258);
  v44 = a2;
  result = sub_1DAED277C();
  v13 = result;
  if (*(v10 + 16))
  {
    v48 = v6;
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v10;
    v43 = v7;
    v46 = (v7 + 32);
    v20 = result + 64;
    v21 = v45;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 48);
      v47 = *(v43 + 72);
      v28 = v27 + v47 * v26;
      if (v44)
      {
        (*v46)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      else
      {
        (*v41)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      v30 = *(v13 + 40);
      sub_1DADDCE08();
      result = sub_1DAED1C5C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v21 = v45;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v21 = v45;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v46)(*(v13 + 48) + v47 * v22, v21, v48);
      *(*(v13 + 56) + 8 * v22) = v29;
      ++*(v13 + 16);
      v10 = v42;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1DADD924C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080F0, &qword_1DAED6278);
  v37 = a2;
  result = sub_1DAED277C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_1DADDC968(v23, v38);
      }

      else
      {
        sub_1DAD642F8(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_1DAED1CEC();
      sub_1DAED294C();
      sub_1DAED1D9C();
      v26 = sub_1DAED297C();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_1DADDC968(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DADD951C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080C8, &qword_1DAED6250);
  v36 = a2;
  result = sub_1DAED277C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1DAED294C();
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      sub_1DAED1D9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      sub_1DADDCE08();
      sub_1DAED1C6C();
      result = sub_1DAED297C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
      v5 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1DADD97F4(unint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v7 = a1;
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1DAED23EC();
    v7 = a1;
    v15 = (v14 + 1) & v13;
    v16 = *(v4 + 72);
    v42 = a2 + 64;
    do
    {
      v44 = v7;
      v17 = v16;
      v18 = v16 * v12;
      sub_1DADAB8DC(*(a2 + 48) + v16 * v12, v9);
      v19 = a2;
      v20 = *(a2 + 40);
      sub_1DAED294C();
      v21 = v15;
      v22 = v43;
      v23 = *(v43 + 20);
      sub_1DAECDCEC();
      sub_1DAD888A8(&qword_1EE00A6F8, MEMORY[0x1E6969530]);
      sub_1DAED1C6C();
      v24 = *(v22 + 24);
      sub_1DAED157C();
      sub_1DAD888A8(&qword_1EE005720, MEMORY[0x1E6985700]);
      sub_1DAED1C6C();
      v25 = v13;
      v27 = v9[3];
      v26 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v27);
      v28 = *(v26 + 24);
      v29 = v26;
      v13 = v25;
      v15 = v21;
      v28(&v45, v27, v29);
      MEMORY[0x1E127E5D0](v45);
      v30 = sub_1DAED297C();
      result = sub_1DADAB9A4(v9);
      v7 = v44;
      v31 = v30 & v13;
      if (v44 >= v21)
      {
        if (v31 < v21)
        {
          v10 = v42;
          v16 = v17;
          a2 = v19;
          goto LABEL_4;
        }

        v16 = v17;
        a2 = v19;
        if (v44 >= v31)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v16 = v17;
        a2 = v19;
        if (v31 >= v15 || v44 >= v31)
        {
LABEL_11:
          if (v16 * v44 < v18 || *(a2 + 48) + v16 * v44 >= (*(a2 + 48) + v18 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v16 * v44 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v32 = *(a2 + 56);
          v33 = *(*(sub_1DAED19AC() - 8) + 72);
          v34 = v33 * v44;
          result = v32 + v33 * v44;
          v35 = v33 * v12;
          v36 = v32 + v33 * v12 + v33;
          v37 = v34 < v35 || result >= v36;
          v10 = v42;
          if (v37)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v12;
          }

          else
          {
            v7 = v12;
            if (v34 != v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      v10 = v42;
LABEL_4:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v7) - 1;
  v38 = *(a2 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v40;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DADD9BD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DAED23EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DAED294C();

      sub_1DAED1D9C();
      v13 = sub_1DAED297C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DADD9D80(int64_t a1, uint64_t a2)
{
  v43 = sub_1DAED0DDC();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_1DAED23EC();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1DAD888A8(&qword_1EE0057E0, MEMORY[0x1E6993D98]);
      v26 = sub_1DAED1C5C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1DADDA0A0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DAED23EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DAED294C();

      sub_1DAED1D9C();
      v13 = sub_1DAED297C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DADDA2A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DAED23EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DAED294C();

      sub_1DAED1D9C();
      v13 = sub_1DAED297C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DADDA454(int64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v37 - v8;
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1DAED23EC();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = *(a2 + 40);
      sub_1DADDCE08();
      v23 = sub_1DAED1C5C();
      result = (*v37)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v40 * a1;
          v28 = v27 + v19 + v40;
          v29 = v40 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v40 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v12);
          if (a1 != v12 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DADDA714(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DAED23EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1DAED294C();
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);

      sub_1DAED1D9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      sub_1DADDCE08();
      sub_1DAED1C6C();
      v13 = sub_1DAED297C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DADDA908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DADBFD3C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1DADD8884(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1DADBFD3C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1DAED28FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1DADDB704();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_1DADDAA90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DADBFD3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1DADDBC58();
      goto LABEL_7;
    }

    sub_1DADD8B44(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_1DADBFD3C(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1DAED28FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560) - 8) + 72) * v12;

    return sub_1DADDCEDC(a1, v20);
  }

LABEL_13:
  sub_1DADDB1EC(v12, a2, a3, a1, v18);
}

uint64_t sub_1DADDAC00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DADBFD3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DADBFE6C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DADBFD3C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1DAED28FC();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1DADDBEA0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_1DADDAD78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = *v3;
  v15 = sub_1DAECB0A8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1DADDC00C();
      goto LABEL_7;
    }

    sub_1DADD8E98(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1DAECB0A8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1DADDB2D8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1DAED28FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_1DADDAF4C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1DAECB8D4(a2);
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
      sub_1DADDC294();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1DADD924C(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1DAECB8D4(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for RBLayerCopyImageKey(0);
      result = sub_1DAED28FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return sub_1DADDC968(a1, v20);
  }

  else
  {
    sub_1DADDB39C(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_1DADDB08C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DAECB350(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1DADD951C(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_1DAECB350(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        type metadata accessor for ActivityRendererSessionKey();
        result = sub_1DAED28FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1DADDC414();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
}

uint64_t sub_1DADDB1EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  result = sub_1DADDCE6C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1DADDB290(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1DADDB2D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1DADDB39C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1DADDC968(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

char *sub_1DADDB404()
{
  v1 = v0;
  v2 = sub_1DAED19AC();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B8, &qword_1DAED6240);
  v9 = *v0;
  v10 = sub_1DAED276C();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v42 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v21 = v37;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
LABEL_14:
        v25 = v22 | (v15 << 6);
        v26 = *(v38 + 72) * v25;
        sub_1DADAB8DC(*(v9 + 48) + v26, v21);
        v28 = v40;
        v27 = v41;
        v29 = *(v41 + 72) * v25;
        v30 = v39;
        (*(v41 + 16))(v39, *(v9 + 56) + v29, v40);
        v31 = v42;
        sub_1DADAB940(v21, *(v42 + 48) + v26);
        result = (*(v27 + 32))(*(v31 + 56) + v29, v30, v28);
        v19 = v43;
      }

      while (v43);
    }

    v23 = v15;
    v11 = v42;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v24 = *(v34 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

void *sub_1DADDB704()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08090, &qword_1DAED6220);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1DADDB87C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080D8, &qword_1DAED6260);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1DADDB9D8()
{
  v1 = v0;
  v34 = sub_1DAED0DDC();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080C0, &qword_1DAED6248);
  v4 = *v0;
  v5 = sub_1DAED276C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1DADDBC58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08110, &qword_1DAED6288);
  v5 = *v0;
  v6 = sub_1DAED276C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1DAD6495C(*(v5 + 56) + v27, v31, &qword_1ECC07CD0, &qword_1DAED6560);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1DADDCE6C(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    v7 = v33;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_1DADDBEA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080A8, &qword_1DAED6238);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1DADDC00C()
{
  v1 = v0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080D0, &qword_1DAED6258);
  v4 = *v0;
  v5 = sub_1DAED276C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1DADDC294()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080F0, &qword_1DAED6278);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1DAD642F8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1DADDC968(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DADDC414()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080C8, &qword_1DAED6250);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1DADDC578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9A0, qword_1DAEDF120);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DADDC6D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9B0, &unk_1DAEDF140);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1DADDC83C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08090, &qword_1DAED6220);
    v3 = sub_1DAED279C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DADBFD3C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_1DADDC950(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

_OWORD *sub_1DADDC968(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1DADDC978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080E0, &qword_1DAED6268);
    v3 = sub_1DAED279C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAD6495C(v4, &v11, &qword_1ECC080E8, &qword_1DAED6270);
      v5 = v11;
      result = sub_1DAECB1C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DADDC968(&v12, (v3[7] + 32 * result));
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

void *sub_1DADDCAA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08118, qword_1DAEDB610);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08120, &qword_1DAED6290);
  v8 = sub_1DAED279C();
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);
  v26 = *(v2 + 48);
  v27 = v10;

  sub_1DAD6495C(a1 + v9, v6, &qword_1ECC08118, qword_1DAEDB610);
  v11 = sub_1DAECB27C(v6);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v8;
  }

  v13 = v11;
  v25 = sub_1DAECFB8C();
  v14 = *(v25 - 8);
  v15 = *(v14 + 32);
  v16 = *(v14 + 72);
  v17 = a1 + v27 + v9;
  while (1)
  {
    *(v8 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v15(v8[6] + v16 * v13, v6, v25);
    result = memmove((v8[7] + 80 * v13), &v6[v26], 0x50uLL);
    v19 = v8[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v8[2] = v21;
    if (!--v7)
    {
      goto LABEL_8;
    }

    v22 = v17 + v27;
    sub_1DAD6495C(v17, v6, &qword_1ECC08118, qword_1DAEDB610);
    v13 = sub_1DAECB27C(v6);
    v17 = v22;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DADDCCE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080F8, &qword_1DAED6280);
    v3 = sub_1DAED279C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAD6495C(v4, &v11, &qword_1ECC08100, &qword_1DAEDF4D0);
      v5 = v11;
      result = sub_1DAECB8D4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DADDC968(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1DADDCE08()
{
  result = qword_1EE00AB58;
  if (!qword_1EE00AB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0A9C0, &unk_1DAED8030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00AB58);
  }

  return result;
}

uint64_t sub_1DADDCE6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADDCEDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1DADDCF4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Application();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DADDCF80(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_1EE00AC58 != -1)
  {
    swift_once();
  }

  v7 = sub_1DAECEDEC();
  __swift_project_value_buffer(v7, qword_1EE011B70);

  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED203C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1DAD6482C(a2, a3, &v13);
    _os_log_impl(&dword_1DAD61000, v8, v9, "%{public}s: Received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E127F100](v11, -1, -1);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  result = swift_beginAccess();
  *(a4 + 16) = 0;
  return result;
}

uint64_t sub_1DADDD0EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1DADDD140()
{
  sub_1DAD64398(v0 + 16, &qword_1ECC08380, &unk_1DAED6590);
  sub_1DAD64398(v0 + 56, &unk_1ECC0A170, &qword_1DAED6440);
  v1 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  v2 = *(v0 + 192);

  return swift_deallocClassInstance();
}

uint64_t sub_1DADDD1C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v2 = v0[13];

  v3 = v0[14];

  v4 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_1DADDD228()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

id sub_1DADDD278()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithScale:0 colorGamut:v2];
  qword_1ECC08130 = result;
  return result;
}

id static CHSWidgetDisplayProperties.default.getter()
{
  if (qword_1ECC07950 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC08130;

  return v1;
}

uint64_t sub_1DADDD4D0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v81 = a3;
  v82 = a5;
  v83 = a1;
  v79 = sub_1DAED208C();
  v9 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1DAED20DC();
  v71 = *(v84 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DAED0A3C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v72 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DAECEDEC();
  v86 = *(v16 - 8);
  v87 = v16;
  v17 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DAED0FBC();
  v88 = *(v19 - 8);
  v89 = v19;
  v20 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DAED18CC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102[3] = sub_1DAECE6CC();
  v102[4] = sub_1DAD88900(qword_1EE00AC78, MEMORY[0x1E6994480]);
  v102[0] = a2;
  v28 = type metadata accessor for ActivityRendererClient();
  v101[3] = v28;
  v101[4] = sub_1DAD88900(&qword_1EE008C88, type metadata accessor for ActivityRendererClient);
  v101[0] = v81;
  v100[3] = sub_1DAED143C();
  v100[4] = MEMORY[0x1E6993F50];
  v100[0] = v82;
  v98 = v28;
  v99 = sub_1DAD88900(&qword_1EE008C60, type metadata accessor for ActivityRendererClient);
  v97[0] = v83;
  v83 = a6;
  *(a6 + 224) = MEMORY[0x1E69E7CD0];
  a6 += 224;
  v81 = (a6 - 208);
  sub_1DAD648F8(v97, a6 - 208);
  sub_1DAD648F8(v102, a6 - 160);
  sub_1DAD648F8(v101, a6 - 120);
  v29 = a6 - 80;
  v82 = a4;
  sub_1DAD648F8(a4, a6 - 80);
  v75 = a6;
  sub_1DAD648F8(v100, a6 - 40);
  v30 = sub_1DAED13AC();
  v31 = *MEMORY[0x1E6985998];
  v74 = v24;
  v32 = *(v24 + 104);
  v77 = v23;
  v68 = v32;
  v69 = v24 + 104;
  v32(v27, v31, v23);
  v33 = v98;
  v34 = v99;
  v35 = __swift_project_boxed_opaque_existential_1(v97, v98);
  v96[3] = v33;
  v96[4] = *(v34 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
  (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v35, v33);
  v73 = v27;
  v37 = sub_1DAED139C();
  v38 = sub_1DAED125C();
  v39 = sub_1DAED124C();
  sub_1DAD648F8(v100, v96);
  v95[3] = v38;
  v95[4] = MEMORY[0x1E6993EF0];
  v95[0] = v39;
  v94[3] = v30;
  v94[4] = MEMORY[0x1E6993F30];
  v94[0] = v37;
  v80 = v39;

  sub_1DAED0F2C();
  v40 = v22;
  sub_1DAED0F9C();
  if (qword_1EE005DD8 != -1)
  {
    swift_once();
  }

  v41 = v87;
  v42 = __swift_project_value_buffer(v87, qword_1EE011688);
  v43 = v85;
  v44 = *(v86 + 16);
  v44(v85, v42, v41);
  sub_1DAD648F8(v102, v96);
  sub_1DAD648F8(v101, v95);
  sub_1DAD648F8(v29, v94);
  v45 = v89;
  v93[3] = v89;
  v93[4] = MEMORY[0x1E6993E70];
  v46 = __swift_allocate_boxed_opaque_existential_1(v93);
  v47 = *(v88 + 16);
  v70 = v40;
  v47(v46, v40, v45);
  v92[3] = v30;
  v92[4] = MEMORY[0x1E6993F30];
  v92[0] = v37;
  v48 = type metadata accessor for ActivityArchiveServiceStore(0);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  v51 = swift_allocObject();
  v52 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock;
  type metadata accessor for UnfairLock();
  v53 = swift_allocObject();
  swift_retain_n();
  v54 = swift_slowAlloc();
  *v54 = 0;
  *(v53 + 16) = v54;
  *&v51[v52] = v53;
  *&v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage] = MEMORY[0x1E69E7CC8];
  *&v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__subscriptions] = MEMORY[0x1E69E7CD0];
  *(v51 + 3) = 0x6974697669746361;
  *(v51 + 4) = 0xEA00000000007365;
  v44(&v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__logger], v43, v41);
  v67 = sub_1DAD84C40();
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000036, 0x80000001DAEE0A70);
  MEMORY[0x1E127DA50](0x6974697669746361, 0xEA00000000007365);
  sub_1DAED0A0C();
  (*(v71 + 104))(v76, *MEMORY[0x1E69E8098], v84);
  v90 = MEMORY[0x1E69E7CC0];
  sub_1DAD88900(&qword_1EE00AA50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3F0, &qword_1DAED6480);
  v84 = v37;
  sub_1DAD64B94(&unk_1EE00AA90, &unk_1ECC0A3F0, &qword_1DAED6480);
  sub_1DAED23CC();
  *(v51 + 2) = sub_1DAED210C();
  sub_1DAD648F8(v96, &v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__environmentFactory]);
  sub_1DAD648F8(v95, &v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__descriptorProvider]);
  sub_1DAD648F8(v92, &v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider]);
  sub_1DAD648F8(v94, &v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor]);
  v55 = v77;
  v68(&v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_currentDataProtectionLevel], *MEMORY[0x1E6985988], v77);
  sub_1DAD648F8(v93, &v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__cacheReader]);
  v56 = &v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor];
  v57 = *&v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor + 32];
  __swift_project_boxed_opaque_existential_1(&v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor], *&v51[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor + 24]);
  v58 = v73;
  sub_1DAED127C();
  v59 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_currentDataProtectionLevel;
  swift_beginAccess();
  (*(v74 + 40))(&v51[v59], v58, v55);
  swift_endAccess();
  v60 = *(v56 + 4);
  __swift_project_boxed_opaque_existential_1(v56, *(v56 + 3));
  v90 = sub_1DAED126C();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08870, &qword_1DAED6488);
  sub_1DAD64B94(&qword_1EE00AC08, &unk_1ECC08870, &qword_1DAED6488);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  (*(v86 + 8))(v85, v87);
  __swift_destroy_boxed_opaque_existential_1Tm(v92);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  v61 = v83;
  *(v83 + 56) = v51;
  v62 = *(v61 + 48);
  v63 = v81;
  __swift_project_boxed_opaque_existential_1(v81, *(v61 + 40));
  v64 = *(*(v62 + 8) + 8);
  v96[0] = sub_1DAED0F8C();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08178, &qword_1DAED6490);
  sub_1DAD64B94(&qword_1EE005C68, &qword_1ECC08178, &qword_1DAED6490);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v65 = *__swift_project_boxed_opaque_existential_1(v63, *(v61 + 40));
  v96[0] = sub_1DAE7E950();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08180, &qword_1DAED6498);
  sub_1DAD64B94(&qword_1EE005CD8, &qword_1ECC08180, &qword_1DAED6498);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  (*(v88 + 8))(v70, v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v101);
  __swift_destroy_boxed_opaque_existential_1Tm(v102);
  __swift_destroy_boxed_opaque_existential_1Tm(v97);
  return v61;
}

uint64_t sub_1DADDE1D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityRendererClient();
  v5 = [objc_allocWithZone(v4) init];
  v2[2] = v5;
  sub_1DAECE6CC();
  v42 = v4;
  v43 = sub_1DAD88900(&unk_1EE008C90, type metadata accessor for ActivityRendererClient);
  *&aBlock = v5;
  v6 = v5;
  v2[3] = sub_1DAECE6AC();
  sub_1DAED143C();
  v7 = *(a1 + 96);
  v42 = sub_1DAED140C();
  v43 = MEMORY[0x1E6993F48];
  *&aBlock = v7;

  v8 = sub_1DAED0F2C();
  v39 = MEMORY[0x1E127D090](0xD000000000000010, 0x80000001DAEE0A30, &aBlock, v8);
  v10 = v2[2];
  v9 = v2[3];
  sub_1DAD648F8(a1 + 104, &aBlock);
  v48 = v4;
  v38 = sub_1DAD88900(&qword_1EE008C60, type metadata accessor for ActivityRendererClient);
  v49 = v38;
  *&v47 = v10;
  type metadata accessor for ActivityArchiveService();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(&v47, v4);
  v13 = *(v4 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v37 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (&v36 - v37);
  v36 = *(v13 + 16);
  v36(&v36 - v37);
  v16 = *v15;
  v17 = v10;

  v18 = v39;

  v19 = sub_1DADDD4D0(v16, v9, v17, &aBlock, v18, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(&v47);
  v2[9] = v19;
  v20 = v2[2];
  sub_1DAD648F8(a1 + 144, &aBlock);
  sub_1DAD648F8(a1 + 104, &v47);
  v21 = v2[3];

  v22 = v20;

  sub_1DAECE6BC();

  v23 = v38;
  v45[3] = v4;
  v45[4] = v38;
  v45[0] = v22;
  v24 = type metadata accessor for _DefaultActivityRendererSessionFactory();
  v25 = swift_allocObject();
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v45, v4);
  MEMORY[0x1EEE9AC00](v26);
  v27 = (&v36 - v37);
  v36(&v36 - v37);
  v28 = *v27;
  v25[5] = v4;
  v25[6] = v23;
  v25[2] = v28;
  v25[7] = v19;
  sub_1DAD657D8(&aBlock, (v25 + 8));
  sub_1DAD657D8(&v47, (v25 + 13));
  sub_1DAD657D8(&v46, (v25 + 18));
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  v2[7] = v24;
  v2[8] = &off_1F56B36D8;
  v2[4] = v25;
  v29 = v2[2];
  v30 = *&v29[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1DADDE6B8;
  *(v32 + 24) = v31;
  v43 = sub_1DAD93D04;
  v44 = v32;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v41 = sub_1DAD93EDC;
  v42 = &block_descriptor_0;
  v33 = _Block_copy(&aBlock);
  v34 = v29;

  dispatch_sync(v30, v33);
  _Block_release(v33);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if ((v30 & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

id sub_1DADDE7D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DADDE808()
{
  result = [objc_opt_self() chs_isWatchFacesWidgetRendererProcess];
  byte_1ECC08188 = result;
  return result;
}

id sub_1DADDE884()
{
  sub_1DADE41FC();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DADDEA00(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1DAD7D8E0(a2);
  }
}

void sub_1DADDEA5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DAECF0AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v18 = sub_1DAECEDEC();
    __swift_project_value_buffer(v18, qword_1EE011748);
    v19 = a3;
    v20 = v17;
    v21 = sub_1DAECEDCC();
    v22 = sub_1DAED203C();

    if (os_log_type_enabled(v21, v22))
    {
      v46 = v8;
      v47 = v5;
      v48 = v13;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50[0] = v24;
      *v23 = 136446466;
      v25 = *&v20[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v25)
      {
        v26 = (v25 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v27 = *v26;
        v28 = v26[1];
      }

      else
      {
        v29 = v19;
        v45 = v15;
        v30 = v4;
        v31 = v29;
        v27 = sub_1DAD8CE78(v29);
        v28 = v32;

        v4 = v30;
        v15 = v45;
      }

      v33 = sub_1DAD6482C(v27, v28, v50);

      *(v23 + 4) = v33;
      *(v23 + 12) = 2082;
      v49 = [v19 colorScheme];
      type metadata accessor for CHSColorScheme(0);
      v34 = sub_1DAED1D4C();
      v36 = sub_1DAD6482C(v34, v35, v50);

      *(v23 + 14) = v36;
      _os_log_impl(&dword_1DAD61000, v21, v22, "[%{public}s] Widget color scheme changed to: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v24, -1, -1);
      MEMORY[0x1E127F100](v23, -1, -1);

      v5 = v47;
      v13 = v48;
      v8 = v46;
    }

    else
    {
    }

    sub_1DAD83EA8(v19);
    v37 = *&v20[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (!v37 || (v38 = *(v37 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController)) == 0)
    {

      return;
    }

    v39 = *(v38 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

    v40 = [v19 colorScheme];
    if (v40 == 1)
    {
      v41 = MEMORY[0x1E697DBB8];
    }

    else
    {
      if (v40 != 2)
      {
        v42 = 1;
        goto LABEL_19;
      }

      v41 = MEMORY[0x1E697DBA8];
    }

    (*(v5 + 104))(v8, *v41, v4);
    (*(v5 + 32))(v15, v8, v4);
    v42 = 0;
LABEL_19:
    (*(v5 + 56))(v15, v42, 1, v4);
    v43 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme;
    swift_beginAccess();
    sub_1DAD6495C(v39 + v43, v13, &qword_1ECC08370, &unk_1DAED6580);
    swift_beginAccess();
    sub_1DAD901C4(v15, v39 + v43, &qword_1ECC08370, &unk_1DAED6580);
    swift_endAccess();
    sub_1DAD99B74(v13);

    sub_1DAD64398(v13, &qword_1ECC08370, &unk_1DAED6580);
    sub_1DAD64398(v15, &qword_1ECC08370, &unk_1DAED6580);
  }
}

void sub_1DADDEF38(uint64_t a1, uint64_t a2, void *a3, SEL *a4, char *a5, void *a6, void (*a7)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v14 = sub_1DAECEDEC();
    __swift_project_value_buffer(v14, qword_1EE011748);
    v15 = a3;
    v16 = v13;
    v17 = sub_1DAECEDCC();
    v18 = sub_1DAED203C();

    if (os_log_type_enabled(v17, v18))
    {
      format = a5;
      v38 = a4;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v20;
      *v19 = 136446466;
      v21 = *&v16[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v21)
      {
        v22 = (v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v24 = *v22;
        v23 = v22[1];
      }

      else
      {
        v36 = a6;
        v25 = a7;
        v26 = v15;
        v24 = sub_1DAD8CE78(v26);
        v23 = v27;

        a7 = v25;
        a6 = v36;
      }

      v28 = sub_1DAD6482C(v24, v23, &v39);

      *(v19 + 4) = v28;
      *(v19 + 12) = 1026;
      a4 = v38;
      v29 = [v15 *v38];

      *(v19 + 14) = v29;
      _os_log_impl(&dword_1DAD61000, v17, v18, format, v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E127F100](v20, -1, -1);
      MEMORY[0x1E127F100](v19, -1, -1);
    }

    else
    {
    }

    sub_1DAD83EA8(v15);
    v30 = *&v16[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v30)
    {
      v31 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

        v33 = [v15 *a4];
        v34 = *a6;
        swift_beginAccess();
        v35 = *(v32 + v34);
        *(v32 + v34) = v33;
        a7(v35);
      }
    }
  }
}

void sub_1DADDF1F8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v11 = 136446466;
      v14 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v14)
      {
        v15 = (v14 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v17 = *v15;
        v16 = v15[1];
      }

      else
      {
        v18 = v7;
        v17 = sub_1DAD8CE78(v18);
        v16 = v19;
      }

      v20 = sub_1DAD6482C(v17, v16, &v29);

      *(v11 + 4) = v20;
      *(v11 + 12) = 2114;
      v21 = [v7 tintParameters];
      *(v11 + 14) = v21;
      *v12 = v21;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget tint parameters changed: %{public}@", v11, 0x16u);
      sub_1DAD64398(v12, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    v22 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v23)
      {
        v24 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

        v25 = [v7 tintParameters];
        v26 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
        swift_beginAccess();
        v27 = *(v24 + v26);
        *(v24 + v26) = v25;
        v28 = v25;
        sub_1DAD95C3C(v27);

        v8 = v27;
      }
    }
  }
}

void sub_1DADDF4DC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136446466;
      v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v16 = *v14;
        v15 = v14[1];
      }

      else
      {
        v17 = v7;
        v16 = sub_1DAD8CE78(v17);
        v15 = v18;
      }

      v19 = sub_1DAD6482C(v16, v15, &v27);

      *(v11 + 4) = v19;
      *(v11 + 12) = 2050;
      v20 = [v7 widgetPriority];

      *(v11 + 14) = v20;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget priority changed: %{public}lu", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    sub_1DAD83970(v7);
    v21 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v21 && (v22 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController)) != 0)
    {
      v23 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v24 = [v7 widgetPriority];

      v25 = v24 == 1;
      v26 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference;
      swift_beginAccess();
      *(v23 + v26) = v25;
    }

    else
    {
    }
  }
}

void sub_1DADDF788(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136446466;
      v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v16 = *v14;
        v15 = v14[1];
      }

      else
      {
        v17 = v7;
        v16 = sub_1DAD8CE78(v17);
        v15 = v18;
      }

      v19 = sub_1DAD6482C(v16, v15, &v25);

      *(v11 + 4) = v19;
      *(v11 + 12) = 1026;
      v20 = [v7 isInteractionDisabled];

      *(v11 + 14) = v20;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget interaction disabled changed: %{BOOL,public}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v21 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v21)
    {
      v22 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v22)
      {
        v23 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

        v24 = [v7 isInteractionDisabled];
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v25) = v24;
        sub_1DAECEF4C();
      }
    }
  }
}

void sub_1DADDFA20(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v11 = 136446466;
      v14 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v14)
      {
        v15 = (v14 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v17 = *v15;
        v16 = v15[1];
      }

      else
      {
        v18 = v7;
        v17 = sub_1DAD8CE78(v18);
        v16 = v19;
      }

      v20 = sub_1DAD6482C(v17, v16, &v31);

      *(v11 + 4) = v20;
      *(v11 + 12) = 2114;
      v21 = [v7 renderScheme];
      *(v11 + 14) = v21;
      *v12 = v21;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget renderScheme changed: %{public}@", v11, 0x16u);
      sub_1DAD64398(v12, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    sub_1DAD83EA8(v7);
    v22 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v22)
    {
      v23 = *&v22[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
      if (v23)
      {
        v24 = *&v23[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
        v25 = v22;
        v26 = v23;

        v27 = [v7 renderScheme];
        v28 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
        swift_beginAccess();
        v29 = *(v24 + v28);
        *(v24 + v28) = v27;
        v30 = v27;
        sub_1DAD9A058();

        v8 = v29;
      }
    }
  }
}

void sub_1DADDFD28(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 supportedColorSchemes];
    v6 = NSStringFromCHSColorSchemes();
    v7 = sub_1DAED1CEC();
    v9 = v8;

    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v10 = sub_1DAECEDEC();
    __swift_project_value_buffer(v10, qword_1EE011748);
    v11 = v5;
    v12 = a3;

    v13 = sub_1DAECEDCC();
    v14 = sub_1DAED203C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446466;
      v17 = *&v11[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v17)
      {
        v18 = (v17 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v20 = *v18;
        v19 = v18[1];
      }

      else
      {
        v25 = v7;
        v21 = v12;
        v20 = sub_1DAD8CE78(v21);
        v19 = v22;

        v7 = v25;
      }

      v23 = sub_1DAD6482C(v20, v19, &v26);

      *(v15 + 4) = v23;
      *(v15 + 12) = 2082;
      v24 = sub_1DAD6482C(v7, v9, &v26);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_1DAD61000, v13, v14, "[%{public}s] Supported color schemes changed: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v16, -1, -1);
      MEMORY[0x1E127F100](v15, -1, -1);
    }

    else
    {
    }

    sub_1DAD83EA8(v12);
  }
}

void sub_1DADDFFA0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a3 supportedRenderSchemes];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1DAD674D4(0, &unk_1EE005598, 0x1E6994420);
      v9 = sub_1DAED1E7C();

      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v10 = sub_1DAECEDEC();
      __swift_project_value_buffer(v10, qword_1EE011748);
      v11 = v5;
      v12 = a3;

      v13 = sub_1DAECEDCC();
      v14 = sub_1DAED203C();

      if (!os_log_type_enabled(v13, v14))
      {

LABEL_19:

        sub_1DAD83EA8(a3);
        return;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v43 = v16;
      *v15 = 136446466;
      v17 = *&v11[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v17)
      {
        v18 = (v17 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v20 = *v18;
        v19 = v18[1];
      }

      else
      {
        v42 = v8;
        v31 = v12;
        v20 = sub_1DAD8CE78(v31);
        v19 = v32;

        v8 = v42;
      }

      v33 = sub_1DAD6482C(v20, v19, &v43);

      *(v15 + 4) = v33;
      *(v15 + 12) = 2082;
      v34 = MEMORY[0x1E127DB00](v9, v8);
      v36 = v35;

      v37 = sub_1DAD6482C(v34, v36, &v43);

      *(v15 + 14) = v37;
      _os_log_impl(&dword_1DAD61000, v13, v14, "[%{public}s] Supported render schemes changed: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v16, -1, -1);
      v38 = v15;
    }

    else
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v21 = sub_1DAECEDEC();
      __swift_project_value_buffer(v21, qword_1EE011748);
      v22 = v5;
      v23 = a3;
      v13 = sub_1DAECEDCC();
      v24 = sub_1DAED203C();

      if (!os_log_type_enabled(v13, v24))
      {
        goto LABEL_19;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136446210;
      v27 = *&v22[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v27)
      {
        v28 = (v27 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v30 = *v28;
        v29 = v28[1];
      }

      else
      {
        v39 = v23;
        v30 = sub_1DAD8CE78(v39);
        v29 = v40;
      }

      v41 = sub_1DAD6482C(v30, v29, &v43);

      *(v25 + 4) = v41;
      _os_log_impl(&dword_1DAD61000, v13, v24, "[%{public}s] Supported render schemes changed to nil", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1E127F100](v26, -1, -1);
      v38 = v25;
    }

    MEMORY[0x1E127F100](v38, -1, -1);
    goto LABEL_19;
  }
}

void sub_1DADE03AC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136446466;
      v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v16 = *v14;
        v15 = v14[1];
      }

      else
      {
        v17 = v7;
        v16 = sub_1DAD8CE78(v17);
        v15 = v18;
      }

      v19 = sub_1DAD6482C(v16, v15, &v29);

      *(v11 + 4) = v19;
      *(v11 + 12) = 2082;
      [v7 clipBehavior];
      v20 = NSStringFromCHSWidgetClipBehavior();
      v21 = sub_1DAED1CEC();
      v23 = v22;

      v24 = sub_1DAD6482C(v21, v23, &v29);

      *(v11 + 14) = v24;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget clipBehavior changed: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    v25 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v25)
    {
      v26 = *(v25 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v26)
      {
        v27 = *(v26 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

        v28 = [v7 clipBehavior] == 1;
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v29) = v28;
        sub_1DAECEF4C();
      }
    }
  }
}

uint64_t sub_1DADE0678(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = [a3 _FBSScene];
    v9 = [v8 settings];

    v10 = [v9 displayConfiguration];
    if (v10)
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithDisplayConfiguration_];
      if ([v10 isCarDisplay])
      {
        v12 = 1;
      }

      else
      {
        v12 = [v10 isCarInstrumentsDisplay];
      }

      v14 = [v10 identity];
      v13 = [v14 isContinuityDisplay];
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v11 = 0;
    }

    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v15 = sub_1DAECEDEC();
    __swift_project_value_buffer(v15, qword_1EE011748);
    v16 = v11;
    v17 = v7;
    v18 = a4;
    v19 = sub_1DAECEDCC();
    v20 = sub_1DAED203C();

    if (os_log_type_enabled(v19, v20))
    {
      v44 = v11;
      v45 = v18;
      v43 = v13;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46 = v23;
      *v21 = 136446466;
      v24 = *&v17[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v24)
      {
        v25 = (v24 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v26 = *v25;
        v27 = v25[1];
      }

      else
      {
        v42 = v12;
        v28 = v45;
        v26 = sub_1DAD8CE78(v28);
        v27 = v29;

        v12 = v42;
      }

      v30 = sub_1DAD6482C(v26, v27, &v46);

      *(v21 + 4) = v30;
      *(v21 + 12) = 2114;
      *(v21 + 14) = v16;
      v11 = v44;
      *v22 = v44;
      v31 = v16;
      _os_log_impl(&dword_1DAD61000, v19, v20, "[%{public}s] Widget displayProperties changed: %{public}@", v21, 0x16u);
      sub_1DAD64398(v22, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1E127F100](v23, -1, -1);
      MEMORY[0x1E127F100](v21, -1, -1);

      v13 = v43;
      v18 = v45;
    }

    else
    {
    }

    v32 = *&v17[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v32)
    {
      v33 = *(v32 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v33)
      {
        v34 = *(v33 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
        v35 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
        swift_beginAccess();
        v36 = *(v34 + v35);
        *(v34 + v35) = v11;
        swift_retain_n();
        v37 = v16;
        sub_1DAD996A0(v36);

        v38 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
        swift_beginAccess();
        v39 = *(v34 + v38);
        *(v34 + v38) = v12;
        sub_1DAE9CDC4(v39);
        v40 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay;
        swift_beginAccess();
        v41 = *(v34 + v40);
        *(v34 + v40) = v13;
        sub_1DAE9D090(v41);
      }
    }

    sub_1DAD83EA8(v18);
  }

  return result;
}

void sub_1DADE0AD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08368, &unk_1DAEDE2B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v35 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v13 = sub_1DAECEDEC();
    __swift_project_value_buffer(v13, qword_1EE011748);
    v14 = a3;
    v15 = v12;
    v16 = sub_1DAECEDCC();
    v17 = sub_1DAED203C();

    if (os_log_type_enabled(v16, v17))
    {
      v35[0] = v8;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36[0] = v19;
      *v18 = 136446466;
      v20 = *&v15[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v20)
      {
        v21 = (v20 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v23 = *v21;
        v22 = v21[1];
      }

      else
      {
        v24 = v14;
        v23 = sub_1DAD8CE78(v24);
        v22 = v25;
      }

      v26 = sub_1DAD6482C(v23, v22, v36);

      *(v18 + 4) = v26;
      *(v18 + 12) = 2080;
      v35[1] = [v14 proximity];
      type metadata accessor for CHSWidgetProximity(0);
      v27 = sub_1DAED1D4C();
      v29 = sub_1DAD6482C(v27, v28, v36);

      *(v18 + 14) = v29;
      _os_log_impl(&dword_1DAD61000, v16, v17, "[%{public}s] Widget proximity changed to: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v19, -1, -1);
      MEMORY[0x1E127F100](v18, -1, -1);

      v8 = v35[0];
    }

    else
    {
    }

    v30 = *&v15[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v30)
    {
      v31 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

        [v14 proximity];
        sub_1DAED170C();
        v33 = sub_1DAED16FC();
        (*(*(v33 - 8) + 56))(v10, 0, 1, v33);
        v34 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
        swift_beginAccess();
        sub_1DAD6495C(v32 + v34, v8, &qword_1ECC08368, &unk_1DAEDE2B0);
        swift_beginAccess();
        sub_1DAD901C4(v10, v32 + v34, &qword_1ECC08368, &unk_1DAEDE2B0);
        swift_endAccess();
        sub_1DAD9A254(v8);

        sub_1DAD64398(v8, &qword_1ECC08368, &unk_1DAEDE2B0);
        sub_1DAD64398(v10, &qword_1ECC08368, &unk_1DAEDE2B0);
      }
    }

    sub_1DAD83EA8(v14);
  }
}

void sub_1DADE0ED0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136446466;
      v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v16 = *v14;
        v15 = v14[1];
      }

      else
      {
        v17 = v7;
        v16 = sub_1DAD8CE78(v17);
        v15 = v18;
      }

      v19 = sub_1DAD6482C(v16, v15, &v23);

      *(v11 + 4) = v19;
      *(v11 + 12) = 2080;
      [v7 supportedProximities];
      type metadata accessor for CHSWidgetProximities(0);
      v20 = sub_1DAED1D4C();
      v22 = sub_1DAD6482C(v20, v21, &v23);

      *(v11 + 14) = v22;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Supported widget proximities changed to: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    sub_1DAD83EA8(v7);
  }
}

void sub_1DADE1118(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136446466;
      v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v16 = *v14;
        v15 = v14[1];
      }

      else
      {
        v17 = v7;
        v16 = sub_1DAD8CE78(v17);
        v15 = v18;
      }

      v19 = sub_1DAD6482C(v16, v15, &v27);

      *(v11 + 4) = v19;
      *(v11 + 12) = 1024;
      v20 = [v7 separateLayers];

      *(v11 + 14) = v20;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Separated layers changed to: %{BOOL}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v21 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v21 && (v22 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController)) != 0)
    {
      v23 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v24 = [v7 separateLayers];
      v25 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers;
      swift_beginAccess();
      v26 = *(v23 + v25);
      *(v23 + v25) = v24;
      BSDispatchQueueAssertMain();
      if (v26 != *(v23 + v25))
      {
        sub_1DAEA1F7C();
      }
    }

    else
    {
    }
  }
}

void sub_1DADE13C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v16 = sub_1DAECEDEC();
    __swift_project_value_buffer(v16, qword_1EE011748);
    v17 = a3;
    v18 = sub_1DAECEDCC();
    v19 = sub_1DAED203C();

    if (os_log_type_enabled(v18, v19))
    {
      v37 = v8;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v20 = 136315138;
      v22 = [v17 idealizedDateComponents];
      if (v22)
      {
        v23 = v22;
        sub_1DAECDA4C();

        v24 = 0;
      }

      else
      {
        v24 = 1;
      }

      v25 = sub_1DAECDA5C();
      (*(*(v25 - 8) + 56))(v13, v24, 1, v25);
      v26 = sub_1DAED1D4C();
      v28 = sub_1DAD6482C(v26, v27, &v38);

      *(v20 + 4) = v28;
      _os_log_impl(&dword_1DAD61000, v18, v19, "scene delegate idealizedDateComponents changed to: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E127F100](v21, -1, -1);
      MEMORY[0x1E127F100](v20, -1, -1);

      v8 = v37;
    }

    else
    {
    }

    v29 = *&v15[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v29)
    {
      v30 = *(v29 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v30)
      {
        v31 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

        v32 = [v17 idealizedDateComponents];
        if (v32)
        {
          v33 = v32;
          sub_1DAECDA4C();

          v34 = 0;
        }

        else
        {
          v34 = 1;
        }

        v35 = sub_1DAECDA5C();
        (*(*(v35 - 8) + 56))(v11, v34, 1, v35);
        v36 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
        swift_beginAccess();
        sub_1DAD6495C(v31 + v36, v8, &qword_1ECC08360, &unk_1DAED6570);
        swift_beginAccess();
        sub_1DAD901C4(v11, v31 + v36, &qword_1ECC08360, &unk_1DAED6570);
        swift_endAccess();
        sub_1DAD9A5B0(v8);

        sub_1DAD64398(v8, &qword_1ECC08360, &unk_1DAED6570);
        sub_1DAD64398(v11, &qword_1ECC08360, &unk_1DAED6570);
      }
    }

    sub_1DAD83EA8(v17);
  }
}

void sub_1DADE17E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1DAE09410();
  }

  if (*(a3 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration) == a2)
  {
    *(a3 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration) = 0;
    if (!*(a3 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene) && *(a3 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_invalidateAfterSnapshot) == 1)
    {
      *(a3 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_invalidateAfterSnapshot) = 0;
      sub_1DADE2B7C(0xD000000000000019, 0x80000001DAEE0F20);
    }
  }
}

void sub_1DADE18A8(void *a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v57 = a1;
    v6 = [v5 nullableWidget];
    if (v6)
    {

      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v7 = sub_1DAECEDEC();
      __swift_project_value_buffer(v7, qword_1EE011748);
      v8 = v57;
      v9 = v2;
      v10 = sub_1DAECEDCC();
      v11 = sub_1DAED203C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v58 = v13;
        *v12 = 136446210;
        v14 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
        if (v14)
        {
          v15 = (v14 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v17 = *v15;
          v16 = v15[1];
        }

        else
        {
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18)
          {
            v19 = v18;
            v55 = v8;
            v20 = sub_1DAD8CE78(v19);
          }

          else
          {
            v22 = [v8 _FBSScene];
            v55 = [v22 identifier];

            v20 = sub_1DAED1CEC();
          }

          v17 = v20;
          v16 = v21;
        }

        v23 = sub_1DAD6482C(v17, v16, &v58);

        *(v12 + 4) = v23;
        _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] Scene for widget did disconnect", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x1E127F100](v13, -1, -1);
        MEMORY[0x1E127F100](v12, -1, -1);
      }

      else
      {
      }

      if (*&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene])
      {
        v24 = v8;
        v25 = v9;
        v26 = sub_1DAECEDCC();
        v27 = sub_1DAED203C();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v58 = v56;
          *v28 = 136446210;
          v29 = *&v25[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
          if (v29)
          {
            v30 = (v29 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
            v31 = *v30;
            v32 = v30[1];
          }

          else
          {
            objc_opt_self();
            v33 = swift_dynamicCastObjCClass();
            if (v33)
            {
              v34 = v33;
              v54 = v24;
              v35 = sub_1DAD8CE78(v34);
            }

            else
            {
              v37 = [v24 _FBSScene];
              v54 = [v37 identifier];

              v35 = sub_1DAED1CEC();
            }

            v31 = v35;
            v32 = v36;
          }

          v38 = sub_1DAD6482C(v31, v32, &v58);

          *(v28 + 4) = v38;
          _os_log_impl(&dword_1DAD61000, v26, v27, "[%{public}s] Detected foreground -> disconnected.  Bouncing through backgrounded first.", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          MEMORY[0x1E127F100](v56, -1, -1);
          MEMORY[0x1E127F100](v28, -1, -1);
        }

        sub_1DADC63C0(v24);
      }

      sub_1DADE2B7C(0xD000000000000014, 0x80000001DAEE0ED0);
      v39 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window;
      v40 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window];
      if (v40)
      {
        [v40 setRootViewController_];
        v41 = *&v9[v39];
      }

      else
      {
        v41 = 0;
      }

      *&v9[v39] = 0;

      v42 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneDiffActionKey];
      v43 = v8;
      [v5 _unregisterSettingsDiffActionArrayForKey_];
      v44 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector;
      v45 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector];
      if (v45)
      {
        [v45 removeAllObservers];
        v46 = *&v9[v44];
      }

      else
      {
        v46 = 0;
      }

      *&v9[v44] = 0;

      v47 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_configurationChangedSubscription;
      if (*&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_configurationChangedSubscription])
      {
        v48 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_configurationChangedSubscription];

        sub_1DAECEE2C();

        v49 = *&v9[v47];
      }

      *&v9[v47] = 0;

      v50 = &v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_visibilityPolicyController];
      v51 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_visibilityPolicyController];
      *v50 = 0;
      *(v50 + 1) = 0;
      if (v51)
      {
        sub_1DAE0CC08();
        swift_unknownObjectRelease();
      }

      if (qword_1EE005478 != -1)
      {
        swift_once();
      }

      v52 = qword_1EE005480;
      [v52 removeObjectForKey_];

      v53 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession];
      *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession] = 0;
      if (v53)
      {
        sub_1DADD52BC();
      }

      if (qword_1EE005F98 != -1)
      {
        swift_once();
      }

      [v43 _unregisterSceneComponentForKey_];
      if (qword_1EE008AE0 != -1)
      {
        swift_once();
      }

      [v43 _unregisterSceneActionsHandlerArray_];
    }
  }
}

void sub_1DADE1F7C()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
  v2 = *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v2)
  {
    if (*&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction])
    {
      v3 = qword_1EE005E48;
      oslog = v2;
      if (v3 != -1)
      {
        swift_once();
      }

      v4 = sub_1DAECEDEC();
      __swift_project_value_buffer(v4, qword_1EE011748);
      v5 = sub_1DAECEDCC();
      v6 = sub_1DAED1FFC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1DAD61000, v5, v6, "Scene received memory warning - action: none, content is live.", v7, 2u);
        MEMORY[0x1E127F100](v7, -1, -1);
      }
    }

    else
    {
      if (*&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene])
      {
        __break(1u);
        return;
      }

      v11 = qword_1EE005E48;
      v12 = v2;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = sub_1DAECEDEC();
      __swift_project_value_buffer(v13, qword_1EE011748);
      oslog = v12;
      v14 = v0;
      v15 = v0;
      v16 = sub_1DAECEDCC();
      v17 = sub_1DAED203C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v28 = v19;
        *v18 = 136446210;
        v20 = *&v14[v1];
        if (v20)
        {
          v21 = (v20 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v23 = *v21;
          v22 = v21[1];
        }

        else
        {
          v24 = *(&oslog->isa + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene);
          v23 = sub_1DAD8CE78(v24);
          v22 = v25;
        }

        v26 = sub_1DAD6482C(v23, v22, &v28);

        *(v18 + 4) = v26;
        _os_log_impl(&dword_1DAD61000, v16, v17, "[%{public}s] Scene received memory warning - action: invalidating because background.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1E127F100](v19, -1, -1);
        MEMORY[0x1E127F100](v18, -1, -1);
      }

      sub_1DADE2B7C(0x772079726F6D654DLL, 0xEE00676E696E7261);
    }
  }

  else
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v8 = sub_1DAECEDEC();
    __swift_project_value_buffer(v8, qword_1EE011748);
    oslog = sub_1DAECEDCC();
    v9 = sub_1DAED1FFC();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DAD61000, oslog, v9, "Scene received memory warning - action: none, because already inactive (no content).", v10, 2u);
      MEMORY[0x1E127F100](v10, -1, -1);
    }
  }
}

unint64_t sub_1DADE23D8()
{
  v1 = v0;
  v2 = 7104878;
  sub_1DAED256C();

  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DAE09500();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1E127DA50](v5, v7);

  MEMORY[0x1E127DA50](0xD000000000000013, 0x80000001DAEE0F80);
  v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene);
  if (v8)
  {
    v9 = [v8 description];
    v2 = sub_1DAED1CEC();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x1E127DA50](v2, v11);

  MEMORY[0x1E127DA50](62, 0xE100000000000000);
  return 0xD000000000000017;
}

void sub_1DADE2530(char *a1)
{
  BSDispatchQueueAssertMain();
  if (!*(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_originalBackgroundColor;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_originalBackgroundColor))
  {
    v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window);
    if (v4)
    {
      [v4 setBackgroundColor_];
      v5 = *(v1 + v3);
      *(v1 + v3) = 0;

      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:
  v6 = *&a1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];

  sub_1DAD8830C(v6, a1);
}

uint64_t sub_1DADE25E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1DAED09DC();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DAED0A3C();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v24 = sub_1DAED20EC();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_1DADE6400;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_158;
  v19 = _Block_copy(aBlock);

  v20 = a2;

  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAD8E1BC(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  sub_1DAED23CC();
  v21 = v24;
  MEMORY[0x1E127DD70](0, v17, v13, v19);
  _Block_release(v19);

  (*(v26 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v25);
}

uint64_t sub_1DADE2908(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v9 = sub_1DAECEDEC();
    __swift_project_value_buffer(v9, qword_1EE011748);
    v10 = v8;
    v11 = a2;

    v12 = sub_1DAECEDCC();
    v13 = sub_1DAED203C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136446466;
      v16 = *&v10[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v16)
      {
        v17 = (v16 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v19 = *v17;
        v18 = v17[1];
      }

      else
      {
        v23 = a3;
        v20 = v11;
        v19 = sub_1DAD8CE78(v20);
        v18 = v21;

        a3 = v23;
      }

      v22 = sub_1DAD6482C(v19, v18, v24);

      *(v14 + 4) = v22;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_1DAD6482C(a3, a4, v24);
      _os_log_impl(&dword_1DAD61000, v12, v13, "[%{public}s] Content confirmation action %{public}s invalidated - likely by timeout", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v15, -1, -1);
      MEMORY[0x1E127F100](v14, -1, -1);
    }

    sub_1DAECEE2C();
    swift_beginAccess();
    sub_1DADB8820();
    swift_endAccess();
  }

  return result;
}

void sub_1DADE2B7C(uint64_t a1, unint64_t a2)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
  v4 = *&v2[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v4)
  {
    v5 = v2;
    v7 = *&v2[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration];
    v8 = qword_1EE005E48;
    v9 = v4;
    if (v7)
    {
      if (v8 != -1)
      {
        swift_once();
      }

      v10 = sub_1DAECEDEC();
      __swift_project_value_buffer(v10, qword_1EE011748);
      v11 = v9;
      v12 = v5;

      v13 = sub_1DAECEDCC();
      v14 = sub_1DAED203C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v39 = v16;
        *v15 = 136446466;
        v17 = *&v5[v3];
        if (v17)
        {
          v18 = (v17 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v20 = *v18;
          v19 = v18[1];
        }

        else
        {
          v31 = *&v11[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];
          v20 = sub_1DAD8CE78(v31);
          v19 = v32;
        }

        v33 = sub_1DAD6482C(v20, v19, &v39);

        *(v15 + 4) = v33;
        *(v15 + 12) = 2082;
        *(v15 + 14) = sub_1DAD6482C(a1, a2, &v39);
        _os_log_impl(&dword_1DAD61000, v13, v14, "[%{public}s] Delaying connection invalidate for snapshot - reason: %{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v16, -1, -1);
        MEMORY[0x1E127F100](v15, -1, -1);
      }

      else
      {
      }

      v12[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_invalidateAfterSnapshot] = 1;
    }

    else
    {
      if (v8 != -1)
      {
        swift_once();
      }

      v21 = sub_1DAECEDEC();
      __swift_project_value_buffer(v21, qword_1EE011748);
      v38 = v9;
      v22 = v5;

      v23 = sub_1DAECEDCC();
      v24 = sub_1DAED203C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v39 = v26;
        *v25 = 136446466;
        v27 = *&v5[v3];
        if (v27)
        {
          v28 = (v27 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v30 = *v28;
          v29 = v28[1];
        }

        else
        {
          v34 = *&v38[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];
          v30 = sub_1DAD8CE78(v34);
          v29 = v35;
        }

        v36 = sub_1DAD6482C(v30, v29, &v39);

        *(v25 + 4) = v36;
        *(v25 + 12) = 2082;
        *(v25 + 14) = sub_1DAD6482C(a1, a2, &v39);
        _os_log_impl(&dword_1DAD61000, v23, v24, "[%{public}s] Invalidate connection - reason: %{public}s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v26, -1, -1);
        MEMORY[0x1E127F100](v25, -1, -1);
      }

      sub_1DAE09798();
    }
  }
}

uint64_t sub_1DADE2FAC(uint64_t a1, void *a2)
{
  v3 = sub_1DAED0A3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED0A1C();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1DADE4448(a2, v7, sub_1DADE6390, v8);

  (*(v4 + 8))(v7, v3);
}

void sub_1DADE30E8()
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
    if (v2)
    {
      v3 = v2;
      sub_1DADB4204(0);
    }

    v4 = *&v1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController];
    *(v4 + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_isSnapshotting) = 0;
    v5 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView);
    v5[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshotting] = 0;
    [v5 setNeedsLayout];
  }
}

void sub_1DADE31A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083A0, &unk_1DAED6758);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v65 - v10;
  v12 = sub_1DAECE47C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v65 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = *&Strong[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession];
    if (!v22)
    {

      return;
    }

    v23 = *(a4 + 56);
    if (v23)
    {
      v24 = *&Strong[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession];

      v25 = [v23 effectiveContainerBundleIdentifier];
      if (v25)
      {
        v69 = a2;
        v67 = a5;
        v26 = v25;
        v68 = sub_1DAED1CEC();
        v28 = v27;

        if (qword_1EE005E88 != -1)
        {
          swift_once();
        }

        v29 = sub_1DAECEDEC();
        v30 = __swift_project_value_buffer(v29, qword_1EE0117D8);

        v65[1] = v30;
        v31 = sub_1DAECEDCC();
        v32 = sub_1DAED200C();

        v33 = os_log_type_enabled(v31, v32);
        v70 = v28;
        if (v33)
        {
          v34 = swift_slowAlloc();
          v65[0] = v22;
          v35 = v34;
          v36 = swift_slowAlloc();
          v66 = v13;
          v37 = v36;
          v71 = v36;
          *v35 = 136446210;
          *(v35 + 4) = sub_1DAD6482C(v68, v28, &v71);
          _os_log_impl(&dword_1DAD61000, v31, v32, "CHUISWidgetLaunchRequest will use effectiveContainerBundleIdentifier: %{public}s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
          v38 = v37;
          v13 = v66;
          MEMORY[0x1E127F100](v38, -1, -1);
          v39 = v35;
          v22 = v65[0];
          MEMORY[0x1E127F100](v39, -1, -1);
        }

        type metadata accessor for LaunchRequestBuilder();
        sub_1DAE50D14(v22, v69, v11);
        if ((*(v13 + 48))(v11, 1, v12) == 1)
        {

          sub_1DAD64398(v11, &qword_1ECC083A0, &unk_1DAED6758);
        }

        else
        {
          (*(v13 + 32))(v19, v11, v12);
          sub_1DAD674D4(0, &qword_1EE005548, 0x1E6994538);
          (*(v13 + 16))(v17, v19, v12);
          v49 = sub_1DADE3964(v17, v68);
          if (v49)
          {
            v50 = v49;
            v51 = v13;
            v52 = [objc_allocWithZone(MEMORY[0x1E6994540]) initWithLaunchRequest:v49 responder:0];
            v70 = [v67 _FBSScene];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1DAED64D0;
            *(inited + 32) = v52;
            v69 = v52;
            sub_1DAE89C08(inited);
            swift_setDeallocating();
            v54 = *(inited + 16);
            swift_arrayDestroy();
            sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
            sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
            v55 = sub_1DAED1F5C();

            v56 = v70;
            [v70 sendActions_];

            (*(v51 + 8))(v19, v12);
          }

          else
          {

            v57 = sub_1DAECEDCC();
            v58 = sub_1DAED201C();

            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v66 = v13;
              v61 = v60;
              v71 = v60;
              *v59 = 136446210;
              v62 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
              v63 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

              v64 = sub_1DAD6482C(v62, v63, &v71);

              *(v59 + 4) = v64;
              _os_log_impl(&dword_1DAD61000, v57, v58, "%{public}s Unable to create CHUISWidgetLaunchRequest from LaunchRequest", v59, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v61);
              MEMORY[0x1E127F100](v61, -1, -1);
              MEMORY[0x1E127F100](v59, -1, -1);

              (*(v66 + 8))(v19, v12);
            }

            else
            {

              (*(v13 + 8))(v19, v12);
            }
          }
        }

        sub_1DADE3FD4();

LABEL_24:

        return;
      }
    }

    else
    {
      v40 = *&Strong[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession];
    }

    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v41 = sub_1DAECEDEC();
    __swift_project_value_buffer(v41, qword_1EE0117D8);

    v42 = sub_1DAECEDCC();
    v43 = sub_1DAED201C();

    if (!os_log_type_enabled(v42, v43))
    {

      return;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v71 = v45;
    *v44 = 136446210;
    v46 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
    v47 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

    v48 = sub_1DAD6482C(v46, v47, &v71);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_1DAD61000, v42, v43, "%{public}s Unable to create CHUISWidgetLaunchRequest without a effectiveContainerBundleIdentifier", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1E127F100](v45, -1, -1);
    MEMORY[0x1E127F100](v44, -1, -1);

    goto LABEL_24;
  }
}

id sub_1DADE3964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DAECE43C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - v12;
  sub_1DAECE45C();
  v14 = sub_1DAECE42C();
  v23[1] = v3;
  v23[2] = a2;
  v15 = *(v7 + 8);
  v15(v13, v6);
  v16 = v14;
  sub_1DAECE45C();
  v17 = (*(v7 + 88))(v11, v6) == *MEMORY[0x1E6994430];
  v15(v11, v6);
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v19 = sub_1DAED1CBC();

  v20 = [v18 initWithLaunchAction:v16 effectiveContainerBundleIdentifier:v19 isEntitledToOpenSystemProcesses:v17];

  v21 = sub_1DAECE47C();
  (*(*(v21 - 8) + 8))(a1, v21);
  return v20;
}

void sub_1DADE3CD8()
{
  v0 = sub_1DAECE3DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v5 = sub_1DAECEDEC();
  __swift_project_value_buffer(v5, qword_1EE011748);
  v6 = sub_1DAECEDCC();
  v7 = sub_1DAED200C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DAD61000, v6, v7, "Received interaction event with LinkAction; executing...", v8, 2u);
    MEMORY[0x1E127F100](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = *(v1 + 104);
      v13(v4, *MEMORY[0x1E6994178], v0);
      v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
      swift_beginAccess();
      if ((*(v12 + v14) & 1) != 0 || (v15 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay, swift_beginAccess(), *(v12 + v15) == 1))
      {
        (*(v1 + 8))(v4, v0);
        v13(v4, *MEMORY[0x1E6994180], v0);
      }

      if (*&v10[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession])
      {
        v16 = *&v10[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession];

        sub_1DADD50B0();
      }

      else
      {
      }

      (*(v1 + 8))(v4, v0);
    }

    else
    {
    }
  }
}