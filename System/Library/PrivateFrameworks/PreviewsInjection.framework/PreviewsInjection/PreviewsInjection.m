uint64_t sub_25F343FC0()
{

  return swift_deallocObject();
}

__n128 sub_25F34400C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25F344028()
{

  return swift_deallocObject();
}

uint64_t sub_25F344060()
{

  return swift_deallocObject();
}

uint64_t sub_25F3440A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25F3440CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F34411C()
{
  sub_25F3C361C();

  return swift_getWitnessTable();
}

uint64_t sub_25F344164()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CompoundViewModifier();
  return swift_getWitnessTable();
}

uint64_t sub_25F34425C()
{
  type metadata accessor for CompoundViewModifier();
  swift_getWitnessTable();
  sub_25F3C3ACC();
  sub_25F3C382C();
  sub_25F3C382C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25F34437C()
{

  return swift_deallocObject();
}

uint64_t sub_25F3443BC()
{
  v1 = sub_25F3C28BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F3444A4()
{

  return swift_deallocObject();
}

uint64_t sub_25F3444FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25F3C210C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F3445A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_25F3C210C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F34465C()
{

  return swift_deallocObject();
}

uint64_t sub_25F344694()
{

  return swift_deallocObject();
}

uint64_t sub_25F3446CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F344714()
{
  v1 = sub_25F3C224C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_25F344844(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C2EBC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F3448B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C2EBC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F344920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3C2A4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25F3449D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F3C2A4C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_25F344B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67778);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67780);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25F344C60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67778);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67780);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25F344DB8()
{

  return swift_deallocObject();
}

uint64_t sub_25F344DF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F3C38EC();
  *a1 = result;
  return result;
}

uint64_t sub_25F344E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PreviewDisplayContext.Configuration(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_25F3C248C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25F344FB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PreviewDisplayContext.Configuration(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_25F3C248C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25F3450D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3C378C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
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

  else
  {
    v11 = type metadata accessor for RenderEffects(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_25F345208(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F3C378C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = type metadata accessor for RenderEffects(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25F345328()
{

  return swift_deallocObject();
}

__n128 sub_25F34537C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25F345388()
{

  return swift_deallocObject();
}

uint64_t sub_25F3453C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for LocatedPreview();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for RenderEffects(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67188);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_25F34554C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for LocatedPreview();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for RenderEffects(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67188);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_25F3456E8()
{

  return swift_deallocObject();
}

uint64_t sub_25F345730()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for SceneUpdateResult() - 8);
  v3 = (*(*v2 + 80) + 64) & ~*(*v2 + 80);

  v4 = v2[11];
  v5 = sub_25F3C221C();
  (*(*(v5 - 8) + 8))(v0 + v3 + v4, v5);
  (*(*(v1 - 8) + 8))(v0 + v3 + v2[12], v1);

  return swift_deallocObject();
}

uint64_t sub_25F345874()
{

  return swift_deallocObject();
}

uint64_t sub_25F3458F4()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_25F34595C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_25F345994()
{

  return swift_deallocObject();
}

uint64_t sub_25F3459CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C1F2C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F345A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C1F2C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F345AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C1F2C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F345B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C1F2C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F345BAC()
{
  v1 = sub_25F3C271C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 144) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_25F3C2EBC();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 96);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_25F345D2C()
{
  v1 = sub_25F3C271C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 136) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_25F3C253C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 96);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_25F345EA4()
{

  return swift_deallocObject();
}

uint64_t sub_25F345EDC()
{
  v1 = sub_25F3C2B8C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 136) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 96);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F345FCC()
{

  return swift_deallocObject();
}

uint64_t sub_25F346004(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CFunctionEntryPoint.UpdateState.Phase(0);
  v5 = *(*(updated - 8) + 48);

  return v5(a1, a2, updated);
}

uint64_t sub_25F346070(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CFunctionEntryPoint.UpdateState.Phase(0);
  v5 = *(*(updated - 8) + 56);

  return v5(a1, a2, a2, updated);
}

uint64_t sub_25F3460E4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25F3461A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F3462E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F00);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F346358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F00);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F34647C()
{

  return swift_deallocObject();
}

uint64_t sub_25F3464B4()
{
  v1 = sub_25F3C329C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67F80);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_25F346618@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25F3C38CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25F346670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_25F3466EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25F34670C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD68138);
  swift_getAssociatedTypeWitness();
  sub_25F3C382C();
  sub_25F39F1B8();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t sub_25F3467F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3C226C();
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

    return (v10 + 1);
  }
}

uint64_t sub_25F3468B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F3C226C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F346968()
{
  v1 = (type metadata accessor for UpdateContext(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_25F3C226C();
  (*(*(v3 - 8) + 8))(v2, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_25F346A68()
{

  return swift_deallocObject();
}

uint64_t sub_25F346AA0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_25F346B2C()
{

  return swift_deallocObject();
}

uint64_t sub_25F346BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3C253C();
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

    return (v10 + 1);
  }
}

uint64_t sub_25F346C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F3C253C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F346D1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25F3C2CAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F346DC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25F3C2CAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F346E6C(void *a1@<X8>)
{
  UIHostingController.size.getter();
  *a1 = v2;
  a1[1] = v3;
}

__n128 sub_25F346ECC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25F346EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F3C391C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_25F346F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C391C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F346FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C391C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F34702C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68538);
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

    return (v10 + 1);
  }
}

uint64_t sub_25F3470F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68538);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F347210(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C22BC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F34727C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C22BC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F3472EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3C34DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25F3C226C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25F3473DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F3C34DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25F3C226C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25F3474D8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25F3C346C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25F347584(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25F3C346C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F347878()
{
  v1 = v0;
  v2 = sub_25F3C354C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v6 = sub_25F3C353C();
  v7 = sub_25F3C430C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25F342000, v6, v7, "MainPreviewEntryPoint init", v8, 2u);
    MEMORY[0x25F8DC6C0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return v1;
}

uint64_t sub_25F3479BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_25F3C41CC();
  v3[8] = sub_25F3C41BC();
  v5 = sub_25F3C416C();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](sub_25F347A58, v5, v4);
}

uint64_t sub_25F347A58()
{
  *(v0 + 88) = sub_25F3C275C();

  return MEMORY[0x2822009F8](sub_25F347AC4, 0, 0);
}

uint64_t sub_25F347AC4()
{
  v1 = *(*(v0 + 56) + 8);
  *(v0 + 96) = v1;
  return MEMORY[0x2822009F8](sub_25F347AE8, v1, 0);
}

uint64_t sub_25F347AE8()
{
  v1 = v0[11];
  v2 = v0[5];
  swift_beginAccess();

  sub_25F394D1C(v1, v2);
  v0[13] = 0;

  v3 = v0[9];
  v4 = v0[10];

  return MEMORY[0x2822009F8](sub_25F347BB0, v3, v4);
}

uint64_t sub_25F347BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F347C14()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_25F347C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v73 = a2;
  v85 = a4;
  v6 = sub_25F3C21FC();
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F3C2E1C();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  v80 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F00);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v65 - v11;
  v12 = sub_25F3C248C();
  v77 = *(v12 - 8);
  v78 = v12;
  MEMORY[0x28223BE20](v12);
  v75 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for RenderEffects(0);
  MEMORY[0x28223BE20](v72);
  v71 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for PreviewDisplayContext(0);
  MEMORY[0x28223BE20](v86);
  v79 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F3C2BDC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v67 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - v20;
  v70 = sub_25F3C354C();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v24 = *(v17 + 16);
  v74 = a1;
  v24(v21, a1, v16);
  v25 = a3;

  v26 = sub_25F3C353C();
  LODWORD(a3) = sub_25F3C430C();
  v27 = v25;
  v28 = v26;
  v89 = v27;

  v68 = a3;
  if (os_log_type_enabled(v26, a3))
  {
    v29 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v88[0] = v66;
    *v29 = 136446466;
    v24(v67, v21, v16);
    v30 = sub_25F3C404C();
    v32 = v31;
    (*(v17 + 8))(v21, v16);
    v33 = sub_25F369EE8(v30, v32, v88);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2114;
    swift_beginAccess();
    v34 = *(v89 + 16);
    *(v29 + 14) = v34;
    v35 = v65;
    *v65 = v34;
    v36 = v34;
    _os_log_impl(&dword_25F342000, v28, v68, "MainPreviewEntryPoint update for role: %{public}s, scene: %{public}@", v29, 0x16u);
    sub_25F349AA8(v35, &qword_27FD67A50);
    MEMORY[0x25F8DC6C0](v35, -1, -1);
    v37 = v66;
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    MEMORY[0x25F8DC6C0](v37, -1, -1);
    MEMORY[0x25F8DC6C0](v29, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v21, v16);
  }

  (*(v69 + 8))(v23, v70);
  v38 = v71;
  sub_25F349E9C(v73, v71, type metadata accessor for RenderEffects);
  v39 = sub_25F3C2BCC();
  v40 = v79;
  *(v79 + 3) = &type metadata for SwiftUIAppHostProvider;
  *(v40 + 4) = sub_25F3498F0();
  v41 = &v40[v86[5]];
  v42 = *MEMORY[0x277CC5750];
  v43 = sub_25F3C378C();
  (*(*(v43 - 8) + 104))(v41, v42, v43);
  v44 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  v41[v44[5]] = v39 & 1;
  sub_25F349E9C(v38, &v41[v44[6]], type metadata accessor for RenderEffects);
  v41[v44[7]] = 0;
  v41[v44[8]] = 0;
  v45 = v76;
  sub_25F349944(v38 + *(v72 + 20), v76);
  sub_25F349F04(v38, type metadata accessor for RenderEffects);
  v47 = v77;
  v46 = v78;
  v48 = *(v77 + 48);
  v49 = v48(v45, 1, v78);
  v50 = v75;
  if (v49 == 1)
  {
    (*(v47 + 104))(v75, *MEMORY[0x277D40798], v46);
    v51 = v48(v45, 1, v46);
    v52 = v80;
    if (v51 != 1)
    {
      sub_25F349AA8(v45, &qword_27FD66F00);
    }
  }

  else
  {
    (*(v47 + 32))(v75, v45, v46);
    v52 = v80;
  }

  v53 = &v40[v86[7]];
  (*(v47 + 32))(&v40[v86[6]], v50, v46);
  *v53 = 0;
  *(v53 + 1) = 0;
  v87 = &type metadata for IOSHostingParadigm;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F10);
  sub_25F34A598(&qword_27FD66F18, &qword_27FD66F10);
  v54 = v81;
  sub_25F3C2E3C();
  if (v54)
  {
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F20);
    sub_25F3C2E0C();
    sub_25F3C2DFC();
    (*(v82 + 8))(v52, v83);
    v55 = v88[0];
    v56 = v89;
    swift_beginAccess();
    v57 = [*(v56 + 16) previewSceneIdentifier];
    v58 = sub_25F3C3FEC();

    sub_25F348684(v40, v58);

    sub_25F3C247C();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F28);
    v60 = v85;
    sub_25F3C21EC();
    sub_25F349F04(v40, type metadata accessor for PreviewDisplayContext);
    swift_beginAccess();
    v61 = *(v55 + 40);
    v62 = swift_allocObject();
    *(v62 + 16) = v55;
    *(v62 + 24) = v56;
    *v60 = v61;
    v63 = (v60 + *(v59 + 44));
    *v63 = &unk_25F3C5200;
    v63[1] = v62;

    return v61;
  }

  return result;
}

id sub_25F348684(void *a1, uint64_t a2)
{
  v29 = a2;
  v31 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  v4 = MEMORY[0x28223BE20](v31);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v32 = v2;
  v35 = &type metadata for IOSHostingParadigm;
  v36 = &protocol witness table for IOSHostingParadigm;
  swift_getKeyPath();
  v33 = &type metadata for IOSHostingParadigm;
  v34 = &protocol witness table for IOSHostingParadigm;
  swift_getKeyPath();
  sub_25F3C35DC();

  v10 = sub_25F37B828(v38, v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  if ((v10 & 1) == 0)
  {
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v13 = *(v12 + 32);
    v38[3] = swift_getAssociatedTypeWitness();
    v38[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v38);
    v14 = v13(v11, v12);
    MEMORY[0x28223BE20](v14);
    *(&v29 - 2) = &type metadata for IOSHostingParadigm;
    *(&v29 - 1) = &protocol witness table for IOSHostingParadigm;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v29 - 2) = &type metadata for IOSHostingParadigm;
    *(&v29 - 1) = &protocol witness table for IOSHostingParadigm;
    swift_getKeyPath();
    sub_25F349E38(v38, v37);

    sub_25F3C35EC();
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
  }

  v16 = a1 + *(type metadata accessor for PreviewDisplayContext(0) + 20);
  v17 = sub_25F349E9C(v16, v7, type metadata accessor for PreviewDisplayContext.Configuration);
  MEMORY[0x28223BE20](v17);
  *(&v29 - 2) = &type metadata for IOSHostingParadigm;
  *(&v29 - 1) = &protocol witness table for IOSHostingParadigm;
  v18 = swift_getKeyPath();
  MEMORY[0x28223BE20](v18);
  *(&v29 - 2) = &type metadata for IOSHostingParadigm;
  *(&v29 - 1) = &protocol witness table for IOSHostingParadigm;
  swift_getKeyPath();
  sub_25F349E9C(v7, v30, type metadata accessor for PreviewDisplayContext.Configuration);

  sub_25F3C35EC();
  sub_25F349F04(v7, type metadata accessor for PreviewDisplayContext.Configuration);
  v19 = v32;
  v20 = *(v32 + 16);
  if ((*(v16 + *(v31 + 32)) & 1) == 0)
  {
    sub_25F3C384C();
  }

  sub_25F3C3A0C();
  result = [v20 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = result;
  v23 = [objc_opt_self() systemBackgroundColor];
  [v22 setBackgroundColor_];

  swift_beginAccess();
  v24 = *(v19 + 40);
  *(v19 + 40) = v20;
  v25 = v20;

  result = [v25 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v26 = result;
  [result setNeedsLayout];

  result = [v25 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = result;
  [result layoutIfNeeded];

  sub_25F3C2D0C();
  result = [v25 view];
  if (result)
  {
    v28 = result;
    [result frame];

    sub_25F3C2D4C();
    return sub_25F3C2D2C();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_25F348BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_25F3C41CC();
  v3[8] = sub_25F3C41BC();
  v5 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F348C4C, v5, v4);
}

uint64_t sub_25F348C4C()
{
  v1 = *(v0 + 56);

  swift_beginAccess();
  [*(v1 + 16) displayScale];
  sub_25F348CEC();
  sub_25F3C260C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F348CEC()
{
  v0 = sub_25F3C270C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v26 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = MEMORY[0x277D84F90];
  v27 = &v28;
  v28 = MEMORY[0x277D84F90];
  sub_25F3C3A1C();
  v7 = v28;
  v8 = *(v28 + 16);
  if (v8)
  {
    v28 = v6;
    sub_25F349B30(0, v8, 0);
    v9 = v28;
    v11 = *(v1 + 16);
    v10 = v1 + 16;
    v24 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v25 = v11;
    v12 = v7 + v24;
    v23 = *(v10 + 56);
    v21 = v7;
    v22 = (v10 - 8);
    v13 = (v10 + 16);
    do
    {
      v14 = v26;
      v15 = v10;
      v25(v26, v12, v0);
      sub_25F3C26FC();
      (*v22)(v14, v0);
      v28 = v9;
      v16 = v0;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_25F349B30(v17 > 1, v18 + 1, 1);
        v9 = v28;
      }

      *(v9 + 16) = v18 + 1;
      v19 = v23;
      (*v13)(v9 + v24 + v18 * v23, v5, v16);
      v12 += v19;
      --v8;
      v0 = v16;
      v10 = v15;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t sub_25F348F70@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_25F347878();
  *a1 = v2;
  return result;
}

uint64_t sub_25F348FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F34905C;

  return sub_25F3479BC(a1, a2, a3);
}

uint64_t sub_25F34905C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F349184(uint64_t a1)
{
  result = sub_25F34920C(&qword_27FD66EF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F3491C8(uint64_t a1)
{
  result = sub_25F34920C(&qword_27FD66EF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F34920C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MainPreviewEntryPoint();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F34924C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F20);
  swift_allocObject();
  sub_25F34930C();
  return sub_25F3C2E2C();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_25F34930C()
{
  v1 = v0;
  v33 = sub_25F3C2D1C();
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  v6 = (v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = *MEMORY[0x277CC5750];
  v13 = sub_25F3C378C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  v14 = &v11[v6[8]];
  v15 = type metadata accessor for RenderEffects(0);
  v16 = *(v15 + 20);
  v17 = sub_25F3C248C();
  (*(*(v17 - 8) + 56))(&v14[v16], 1, 1, v17);
  v18 = &v14[*(v15 + 24)];
  v19 = MEMORY[0x277CDF6C8];
  *(v18 + 3) = MEMORY[0x277CDF6D0];
  *(v18 + 4) = v19;
  *v14 = MEMORY[0x277D84F90];
  v11[v6[7]] = 1;
  v11[v6[9]] = 0;
  v11[v6[10]] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F38);
  v20 = swift_allocObject();
  v1[3] = sub_25F34A394(v11, v20);
  sub_25F34A598(&qword_27FD66F40, &qword_27FD66F38);

  v38 = sub_25F3C37DC();
  v39 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F48);
  sub_25F34A598(&qword_27FD66F50, &qword_27FD66F48);
  v38 = sub_25F3C3E0C();
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F58));
  v23 = sub_25F3C3A3C();

  v1[2] = v23;
  v36 = &type metadata for IOSHostingParadigm;
  v37 = &protocol witness table for IOSHostingParadigm;
  swift_getKeyPath();
  v34 = &type metadata for IOSHostingParadigm;
  v35 = &protocol witness table for IOSHostingParadigm;
  swift_getKeyPath();
  v24 = v23;

  sub_25F3C35DC();

  if ((v9[v6[10]] & 1) == 0)
  {
    sub_25F3C384C();
  }

  sub_25F3C3A0C();
  result = [v24 view];
  if (result)
  {
    v26 = result;
    v27 = [objc_opt_self() systemBackgroundColor];
    [v26 setBackgroundColor_];

    sub_25F349F04(v9, type metadata accessor for PreviewDisplayContext.Configuration);
    v1[5] = v24;
    v28 = v1[2];
    (*(v2 + 104))(v4, *MEMORY[0x277D40E88], v33);
    v29 = v28;
    result = [v29 view];
    if (result)
    {
      v30 = objc_allocWithZone(sub_25F3C2D5C());
      v31 = sub_25F3C2D3C();

      v1[4] = v31;
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F3497F0(uint64_t a1)
{
  v2 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F349E9C(a1, v4, type metadata accessor for PreviewDisplayContext.Configuration);
  return sub_25F39D85C(v4);
}

unint64_t sub_25F3498F0()
{
  result = qword_27FD66F08;
  if (!qword_27FD66F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD66F08);
  }

  return result;
}

uint64_t sub_25F349944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_25F3499FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F34905C;

  return sub_25F348BB0(a1, v5, v4);
}

uint64_t sub_25F349AA8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_25F349B10(void *a1, int64_t a2, char a3)
{
  result = sub_25F349BF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25F349B30(size_t a1, int64_t a2, char a3)
{
  result = sub_25F34A1B8(a1, a2, a3, *v3, &qword_27FD66F30, &unk_25F3C5210, MEMORY[0x277D409E8]);
  *v3 = result;
  return result;
}

void *sub_25F349B74(void *a1, int64_t a2, char a3)
{
  result = sub_25F349F64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F349B94(char *a1, int64_t a2, char a3)
{
  result = sub_25F34A098(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25F349BB4(size_t a1, int64_t a2, char a3)
{
  result = sub_25F34A1B8(a1, a2, a3, *v3, &qword_27FD66FA0, &unk_25F3C5358, MEMORY[0x277D40A98]);
  *v3 = result;
  return result;
}

void *sub_25F349BF8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25F349E38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F349E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F349F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_25F349F64(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F34A098(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66FA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_25F34A1B8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t sub_25F34A394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F60);
  v15 = sub_25F34A598(&qword_27FD66F68, &qword_27FD66F60);
  sub_25F349E9C(a1, v9, type metadata accessor for PreviewDisplayContext.Configuration);
  swift_beginAccess();
  sub_25F349E9C(v9, v7, type metadata accessor for PreviewDisplayContext.Configuration);
  sub_25F3C35BC();
  sub_25F349F04(v9, type metadata accessor for PreviewDisplayContext.Configuration);
  swift_endAccess();
  sub_25F349E38(v13, v12);
  swift_beginAccess();
  sub_25F349E38(v12, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F70);
  sub_25F3C35BC();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  swift_endAccess();
  sub_25F349F04(a1, type metadata accessor for PreviewDisplayContext.Configuration);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return a2;
}

uint64_t sub_25F34A598(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F34A5F0(uint64_t a1, int a2)
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

uint64_t sub_25F34A610(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25F34A658(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F34A678(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_25F34A6B4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

dispatch_semaphore_t sub_25F34A700()
{
  result = dispatch_semaphore_create(0);
  qword_27FD66FB8 = result;
  return result;
}

void *sub_25F34A724()
{
  result = sub_25F3C34FC();
  off_27FD66FC0 = result;
  return result;
}

void ___abort_timed_out_waiting_for_previews_jit_first_link_signal()()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C352C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25F342000, v4, v5, "Timed out waiting for signal to perform the initial JIT link", v6, 2u);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25F3C44FC();
  __break(1u);
}

uint64_t sub_25F34A8CC(uint64_t (**a1)(), uint64_t a2, uint64_t a3, void *a4)
{
  if (*a1)
  {
    result = sub_25F3C44FC();
    __break(1u);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 2) = a2;
    *(v8 + 3) = a3;
    *(v8 + 4) = a4;
    *a1 = sub_25F34B808;
    a1[1] = v8;
    v9 = qword_27FD66EB0;

    v10 = a4;
    if (v9 != -1)
    {
      swift_once();
    }

    return sub_25F3C436C();
  }

  return result;
}

uint64_t sub_25F34AA40()
{
  v0 = sub_25F3C30DC();
  v62 = *(v0 - 8);
  v63 = v0;
  MEMORY[0x28223BE20](v0);
  v61 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66FC8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v58 - v3;
  v65 = sub_25F3C2ECC();
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v66 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F3C3EEC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_25F3C354C();
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v60 = &v58 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v64 = &v58 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  v27 = [objc_opt_self() processInfo];
  v28 = sub_25F3C42EC();

  if (v28)
  {
    sub_25F3C352C();
    v29 = sub_25F3C353C();
    v30 = sub_25F3C42FC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_25F342000, v29, v30, "JITLinkWaiter: Not waiting for main thread JIT link.", v31, 2u);
      MEMORY[0x25F8DC6C0](v31, -1, -1);
    }

    return (*(v69 + 8))(v17, v68);
  }

  else
  {
    if (![objc_opt_self() isMainThread])
    {
      goto LABEL_22;
    }

    sub_25F3C352C();
    v33 = sub_25F3C353C();
    v34 = sub_25F3C42FC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_25F342000, v33, v34, "JITLinkWaiter: Waiting for initial JIT link signal", v35, 2u);
      MEMORY[0x25F8DC6C0](v35, -1, -1);
    }

    v36 = *(v69 + 8);
    v37 = v26;
    v38 = v68;
    v69 += 8;
    v59 = v36;
    v36(v37, v68);
    if (qword_27FD66EB0 != -1)
    {
      swift_once();
    }

    sub_25F3C3EDC();
    sub_25F3C3F0C();
    v39 = *(v7 + 8);
    v39(v10, v6);
    v40 = sub_25F3C434C();
    v39(v12, v6);
    if (v40)
    {
      sub_25F3C352C();
      v55 = sub_25F3C353C();
      v56 = sub_25F3C431C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_25F342000, v55, v56, "JITLinkWaiter: Wait for JIT link signal failed.", v57, 2u);
        MEMORY[0x25F8DC6C0](v57, -1, -1);
      }

      v59(v60, v68);
      ___abort_timed_out_waiting_for_previews_jit_first_link_signal()();
    }

    v41 = v65;
    if (qword_27FD66EB8 != -1)
    {
      swift_once();
    }

    v42 = off_27FD66FC0;
    os_unfair_lock_lock(off_27FD66FC0 + 8);
    v43 = *(v42 + 2);
    if (v43 >= 2)
    {
      *(v42 + 1) = xmmword_25F3C5390;
      os_unfair_lock_unlock(v42 + 8);
      sub_25F3C30AC();
      sub_25F3C309C();
      (*(v67 + 56))(v4, 1, 1, v41);
      v44 = v61;
      sub_25F3C30CC();
      sub_25F3C308C();

      (*(v62 + 8))(v44, v63);
      sub_25F34B840(v4);
      sub_25F3C352C();
      v45 = sub_25F3C353C();
      v46 = sub_25F3C42FC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_25F342000, v45, v46, "JITLinkWaiter: Performing initial JIT link", v47, 2u);
        MEMORY[0x25F8DC6C0](v47, -1, -1);
      }

      v48 = v59;
      v49 = (v59)(v24, v38);
      v43(v49);
      sub_25F34B8A8(v43);
      v50 = v64;
      sub_25F3C352C();
      v51 = sub_25F3C353C();
      v52 = sub_25F3C42FC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_25F342000, v51, v52, "JITLinkWaiter: Completed initial JIT link", v53, 2u);
        MEMORY[0x25F8DC6C0](v53, -1, -1);
      }

      v48(v50, v38);
      sub_25F3C309C();
      v54 = v66;
      sub_25F3C307C();

      return (*(v67 + 8))(v54, v41);
    }

    else
    {
LABEL_22:
      result = sub_25F3C44FC();
      __break(1u);
    }
  }

  return result;
}

void sub_25F34B354(uint64_t a1)
{
  v2 = sub_25F3C354C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v33 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v33 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = objc_opt_self();

  v14 = [v13 processInfo];
  v15 = sub_25F3C42EC();

  if (v15)
  {
    sub_25F3C352C();
    v16 = sub_25F3C353C();
    v17 = sub_25F3C42FC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_25F342000, v16, v17, "JITLinkWaiter: Linking immediately.", v18, 2u);
      MEMORY[0x25F8DC6C0](v18, -1, -1);
    }

    (*(v3 + 8))(v11, v2);
    sub_25F3780E0(a1);
LABEL_13:

    return;
  }

  v19 = dispatch_semaphore_create(0);
  v20 = [objc_opt_self() isMainThread];
  if ((v20 & 1) == 0)
  {
    v33[0] = v2;
    if (qword_27FD66EB8 != -1)
    {
      v20 = swift_once();
    }

    v21 = off_27FD66FC0;
    MEMORY[0x28223BE20](v20);
    v33[-4] = sub_25F34B7E0;
    v33[-3] = v12;
    v22 = v19;
    v32 = v19;
    os_unfair_lock_lock(v21 + 8);
    sub_25F34B7E8(v21 + 2);
    os_unfair_lock_unlock(v21 + 8);
    sub_25F3C352C();
    v23 = sub_25F3C353C();
    v24 = sub_25F3C42FC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_25F342000, v23, v24, "JITLinkWaiter: Waiting for JIT link on secondary thread.", v25, 2u);
      MEMORY[0x25F8DC6C0](v25, -1, -1);
    }

    v26 = *(v3 + 8);
    v27 = v9;
    v28 = v33[0];
    v26(v27, v33[0]);
    sub_25F3C435C();
    sub_25F3C352C();
    v29 = sub_25F3C353C();
    v30 = sub_25F3C42FC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_25F342000, v29, v30, "JITLinkWaiter: JIT link completed on secondary thread.", v31, 2u);
      MEMORY[0x25F8DC6C0](v31, -1, -1);
    }

    v26(v6, v28);
    goto LABEL_13;
  }

  sub_25F3C44FC();
  __break(1u);

  os_unfair_lock_unlock(0xD000000000000045);
  __break(1u);
}

uint64_t sub_25F34B840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F34B8A8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PreviewsInjection13JITLinkWaiterO5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F34B8D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F34B928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_25F34B988(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_25F34B9EC(uint64_t a1)
{
  result = sub_25F34BA14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F34BA14()
{
  result = qword_27FD66FD0;
  if (!qword_27FD66FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD66FD0);
  }

  return result;
}

unint64_t sub_25F34BA68(uint64_t a1)
{
  result = sub_25F34BA90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F34BA90()
{
  result = qword_27FD66FD8;
  if (!qword_27FD66FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD66FD8);
  }

  return result;
}

uint64_t PreviewModifiers.applied<A>(to:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[3];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  a2[3] = sub_25F3C382C();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_25F34BB9C(a1, v5);
}

uint64_t sub_25F34BB9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  (*(v9 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, v2, a2);
  return sub_25F3C381C();
}

uint64_t sub_25F34BD08(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  sub_25F3C41CC();
  v3[15] = sub_25F3C41BC();
  v5 = sub_25F3C416C();
  v3[16] = v5;
  v3[17] = v4;

  return MEMORY[0x2822009F8](sub_25F34BDA4, v5, v4);
}

uint64_t sub_25F34BDA4()
{
  sub_25F34C0F0((v0 + 2));
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_25F34BEC4;
  v5 = v0[13];

  return sub_25F34C314(boxed_opaque_existential_1, v5, v2, v1);
}

uint64_t sub_25F34BEC4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_25F34C07C;
  }

  else
  {
    v5 = sub_25F34C000;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F34C000()
{
  v1 = *(v0 + 96);

  sub_25F3440A0((v0 + 56), v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F34C07C()
{

  __swift_deallocate_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F34C0F0@<X0>(uint64_t a1@<X8>)
{
  sub_25F3C3A8C();
  sub_25F34DB34();
  sub_25F3C34BC();
  v2 = v22[0];
  v22[3] = &type metadata for EmptyWrapper;
  v22[4] = sub_25F34DB8C();
  sub_25F349E38(v22, &v20);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_25F349E38(v4, v18);
      v12.val[0] = v21;
      v5 = *&v21.f64[0];
      __swift_project_boxed_opaque_existential_1(&v20, *&v21.f64[0]);
      v6 = v19;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      *&v14.f64[0] = type metadata accessor for SingleWrapper();
      *&v14.f64[1] = swift_getWitnessTable();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
      sub_25F34DBE0(v6, boxed_opaque_existential_1);
      v12.val[1] = v14;
      v8 = *&v14.f64[0];
      v9 = __swift_project_boxed_opaque_existential_1(v13, *&v14.f64[0]);
      v23 = v12;
      vst2q_f64(&v15, v23);
      v16 = type metadata accessor for CompoundWrapper();
      WitnessTable = swift_getWitnessTable();
      v10 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_25F34FD04(v9, v5, v8, *&v12.val[0].f64[1], *&v12.val[1].f64[1], type metadata accessor for CompoundWrapper, v10);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      __swift_destroy_boxed_opaque_existential_0Tm(&v20);
      sub_25F3440A0(&v15, &v20);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  sub_25F3440A0(&v20, a1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_25F34C314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v5[7] = *(AssociatedTypeWitness - 8);
  v10 = swift_task_alloc();
  v5[8] = v10;
  v5[9] = sub_25F3C41CC();
  v5[10] = sub_25F3C41BC();
  v13 = (*(a4 + 32) + **(a4 + 32));
  v11 = swift_task_alloc();
  v5[11] = v11;
  *v11 = v5;
  v11[1] = sub_25F34C4E8;

  return v13(v10, a2, a3, a4);
}

uint64_t sub_25F34C4E8()
{
  *(*v1 + 96) = v0;

  v3 = sub_25F3C416C();
  if (v0)
  {
    v4 = sub_25F34C714;
  }

  else
  {
    v4 = sub_25F34C644;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_25F34C644()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  (*(v4 + 40))(v1, v5, v4);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F34C714()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F34C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a1;
  v5[15] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67170);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  v5[19] = swift_task_alloc();
  v6 = sub_25F3C2E1C();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = sub_25F3C41CC();
  v5[25] = sub_25F3C41BC();
  v8 = sub_25F3C416C();
  v5[26] = v8;
  v5[27] = v7;

  return MEMORY[0x2822009F8](sub_25F34C8FC, v8, v7);
}

uint64_t sub_25F34C8FC()
{
  v1 = v0[17];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16) && (v3 = sub_25F35C194(v0[15]), (v4 & 1) != 0))
  {
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[20];
    v8 = v0[21];
    (*(v8 + 16))(v6, *(v2 + 56) + *(v8 + 72) * v3, v7);
    (*(v8 + 32))(v5, v6, v7);
    swift_endAccess();
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67180);
    sub_25F3C324C();
    sub_25F3C2DFC();
    v0[28] = v0[13];
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    v9[1] = sub_25F34CD64;
    v10 = v0[14];
  }

  else
  {
    v11 = v0[21];
    v29 = v0[20];
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[17];
    v30 = *(v0 + 15);
    swift_endAccess();
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67180);
    v15 = sub_25F3C324C();
    v16 = sub_25F3C41EC();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);

    v17 = sub_25F3C41BC();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *&v20 = v14;
    *(&v20 + 1) = v30;
    *(v18 + 32) = v30;
    *(v18 + 48) = v20;
    sub_25F34D660(0, 0, v12, &unk_25F3C5710, v18);
    v21 = sub_25F3C323C();
    v0[31] = v21;

    v0[11] = v21;

    sub_25F3C2E2C();
    (*(v11 + 56))(v13, 0, 1, v29);
    swift_beginAccess();
    sub_25F393670(v13, v30);
    swift_endAccess();
    swift_beginAccess();
    v22 = *(v14 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + 24) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_25F379F08(0, v22[2] + 1, 1, v22);
      *(v14 + 24) = v22;
    }

    v24 = v22[2];
    v25 = v22[3];
    if (v24 >= v25 >> 1)
    {
      v27 = v22[2];
      v22 = sub_25F379F08((v25 > 1), v24 + 1, 1, v22);
      v24 = v27;
      *(v14 + 24) = v22;
    }

    v0[12] = v21;
    sub_25F3509F8(v24, (v0 + 12), (v14 + 24), v15, &off_28716FE80);
    *(v14 + 24) = v22;
    swift_endAccess();
    v26 = swift_task_alloc();
    v0[32] = v26;
    *v26 = v0;
    v26[1] = sub_25F34CF5C;
    v10 = v0[14];
  }

  return MEMORY[0x2821A0C08](v10);
}

uint64_t sub_25F34CD64()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_25F34D134;
  }

  else
  {
    v5 = sub_25F34CEA0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F34CEA0()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F34CF5C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_25F34D1F0;
  }

  else
  {
    v5 = sub_25F34D098;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F34D098()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F34D134()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F34D1F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F34D28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  v10[5] = a4;
  v10[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67170);
  v10[7] = swift_task_alloc();
  v10[8] = sub_25F3C41CC();
  v10[9] = sub_25F3C41BC();
  v12 = swift_task_alloc();
  v10[10] = v12;
  *v12 = v10;
  v12[1] = sub_25F34D39C;

  return MEMORY[0x28212D8C0](a1, a6, a7);
}

uint64_t sub_25F34D39C()
{
  *(*v1 + 88) = v0;

  v3 = sub_25F3C416C();
  if (v0)
  {
    v4 = sub_25F34D568;
  }

  else
  {
    v4 = sub_25F34D4F8;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_25F34D4F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F34D568()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = sub_25F3C2E1C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_25F393670(v1, v2);
  swift_endAccess();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F34D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23[-1] - v10;
  v23[5] = a4;
  v23[6] = a5;
  sub_25F350A90(a3, &v23[-1] - v10);
  v12 = sub_25F3C41EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F350B00(v11);
  }

  else
  {
    sub_25F3C41DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25F3C416C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25F3C405C();
      sub_25F35093C(v19 + 32, v23);

      v20 = v23[0];
      sub_25F350B00(a3);

      return v20;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25F350B00(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t sub_25F34D8A4()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F98];

  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;

    do
    {
      sub_25F349E38(v3, v7);
      v4 = v8;
      v5 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v5 + 8))(v4, v5);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  *(v0 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_25F34D9A8()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F34DA20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25F34DA68(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x25F8DC6C0);
  }

  return result;
}

unint64_t sub_25F34DB34()
{
  result = qword_27FD66FE0;
  if (!qword_27FD66FE0)
  {
    sub_25F3C3A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD66FE0);
  }

  return result;
}

unint64_t sub_25F34DB8C()
{
  result = qword_27FD66FE8[0];
  if (!qword_27FD66FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD66FE8);
  }

  return result;
}

uint64_t sub_25F34DBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t sub_25F34DCE8()
{
  sub_25F3C41CC();
  *(v0 + 16) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F34DD7C, v2, v1);
}

uint64_t sub_25F34DD7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F34DDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_25F3C41CC();
  v3[3] = sub_25F3C41BC();
  v7 = swift_task_alloc();
  v3[4] = v7;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  *v7 = v3;
  v7[1] = sub_25F34DEA8;

  return sub_25F34C784(a1, v6, v8, v9);
}

uint64_t sub_25F34DEA8()
{
  *(*v1 + 40) = v0;

  v3 = sub_25F3C416C();
  if (v0)
  {
    v4 = sub_25F34E068;
  }

  else
  {
    v4 = sub_25F34E004;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_25F34E004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F34E068()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F34E0CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14 - v9;
  MEMORY[0x28223BE20](v8);
  (*(v12 + 16))(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v5);
  (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
  return sub_25F3C360C();
}

uint64_t sub_25F34E264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F34905C;

  return sub_25F34DDE0(a1, a2, a3);
}

uint64_t sub_25F34E318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v5[191] = v4;
  v5[185] = a4;
  v5[179] = a3;
  v5[173] = a2;
  v5[167] = a1;
  v5[197] = *(a4 + 40);
  v5[203] = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[209] = AssociatedTypeWitness;
  v5[210] = *(AssociatedTypeWitness - 8);
  v5[211] = swift_task_alloc();
  v8 = *(v6 - 8);
  v6 -= 8;
  v5[212] = v8;
  v5[213] = *(v8 + 64);
  v5[214] = swift_task_alloc();
  v5[215] = swift_task_alloc();
  v5[216] = *(v6 + 40);
  v5[217] = *(v6 + 24);
  v9 = swift_getAssociatedTypeWitness();
  v5[218] = v9;
  v5[219] = *(v9 - 8);
  v5[220] = swift_task_alloc();
  sub_25F3C41CC();
  v5[221] = sub_25F3C41BC();
  v11 = sub_25F3C416C();
  v5[222] = v11;
  v5[223] = v10;

  return MEMORY[0x2822009F8](sub_25F34E52C, v11, v10);
}

uint64_t sub_25F34E52C()
{
  v1 = v0[217];
  v19 = v0[216];
  v13 = v0[215];
  v18 = v0[214];
  v2 = v0[213];
  v3 = v0[212];
  v4 = v0[203];
  v5 = v0[197];
  v12 = v0[185];
  v14 = v0[179];
  v16 = *(v3 + 16);
  v17 = v0[191];
  v16();
  v6 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[224] = v8;
  *(v8 + 2) = v1;
  *(v8 + 3) = v4;
  *(v8 + 4) = v19;
  *(v8 + 5) = v5;
  v15 = *(v3 + 32);
  v15(&v8[v6], v13, v12);
  *&v8[v7] = v14;

  swift_asyncLet_begin();
  (v16)(v18, v17, v12);
  v9 = swift_allocObject();
  v0[225] = v9;
  *(v9 + 2) = v1;
  *(v9 + 3) = v4;
  *(v9 + 4) = v19;
  *(v9 + 5) = v5;
  v15(&v9[v6], v18, v12);
  *&v9[v7] = v14;

  swift_asyncLet_begin();
  v10 = v0[220];

  return MEMORY[0x282200930](v0 + 2, v10, sub_25F34E770, v0 + 162);
}

uint64_t sub_25F34E770()
{
  v1[226] = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 82, v1[211], sub_25F34EA08, v1 + 168);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_25F34E7B4, v1[222], v1[223]);
  }
}

uint64_t sub_25F34E7B4()
{
  (*(v0[219] + 16))(v0[167], v0[220], v0[218]);
  v1 = v0[211];

  return MEMORY[0x282200930](v0 + 82, v1, sub_25F34E838, v0 + 180);
}

uint64_t sub_25F34E838()
{
  v1[227] = v0;
  if (v0)
  {
    v2 = sub_25F34EB24;
  }

  else
  {
    v2 = sub_25F34E870;
  }

  return MEMORY[0x2822009F8](v2, v1[222], v1[223]);
}

uint64_t sub_25F34E870()
{
  (*(v0[210] + 16))(v0[173], v0[211], v0[209]);
  v1 = v0[211];

  return MEMORY[0x282200920](v0 + 82, v1, sub_25F34E8F4, v0 + 198);
}

uint64_t sub_25F34E94C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F34EA60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F34EB24()
{
  (*(v0[219] + 8))(v0[167], v0[218]);
  v1 = v0[211];

  return MEMORY[0x282200920](v0 + 82, v1, sub_25F34EBA4, v0 + 186);
}

uint64_t sub_25F34EBFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F34ECC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  return MEMORY[0x2822009F8](sub_25F34ECE8, 0, 0);
}

uint64_t sub_25F34ECE8()
{
  sub_25F3C41CC();
  *(v0 + 56) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F34ED7C, v2, v1);
}

uint64_t sub_25F34ED7C()
{
  v8 = v0[6];

  v7 = (*(v8 + 32) + **(v8 + 32));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_25F34EE98;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[2];

  return v7(v5, v4, v2, v3);
}

uint64_t sub_25F34EE98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F34EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return MEMORY[0x2822009F8](sub_25F34EFB8, 0, 0);
}

uint64_t sub_25F34EFB8()
{
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = *(v0 + 88);
  *(v0 + 120) = *(type metadata accessor for CompoundWrapper() + 52);
  sub_25F3C41CC();
  *(v0 + 104) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F34F070, v2, v1);
}

uint64_t sub_25F34F070()
{
  v8 = v0[12];

  v7 = (*(v8 + 32) + **(v8 + 32));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_25F34F1A4;
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[6];

  return v7(v5, v4, v3, v2);
}

uint64_t sub_25F34F1A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F34F298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a1;
  v42 = a2;
  v47 = a4;
  v5 = a3[3];
  v49 = a3[5];
  v40 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = a3;
  v44 = &v34 - v6;
  v7 = a3[2];
  v48 = a3[4];
  v39 = v7;
  v45 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v45);
  v50 = &v34 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v38 = &v34 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - v21;
  (*(v13 + 16))(&v34 - v21, v41, v12);
  v23 = *(TupleTypeMetadata2 + 48);
  v36 = v9;
  v37 = v10;
  (*(v10 + 16))(&v22[v23], v42, v9);
  (*(v17 + 16))(v20, v22, TupleTypeMetadata2);
  v24 = *(TupleTypeMetadata2 + 48);
  v25 = *(v13 + 32);
  v35 = v15;
  v25(v15, v20, v12);
  v26 = &v20[v24];
  v27 = v38;
  (*(v10 + 32))(v38, v26, v9);
  (*(v48 + 40))(v15, v39);
  v28 = v44;
  (*(v49 + 40))(v27, v40);
  (*(v37 + 8))(v27, v36);
  (*(v13 + 8))(v35, v12);
  (*(v17 + 8))(v22, TupleTypeMetadata2);
  v29 = v45;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = AssociatedTypeWitness;
  v32 = swift_getAssociatedConformanceWitness();
  return sub_25F34F76C(v50, v28, v29, v31, AssociatedConformanceWitness, v32, type metadata accessor for CompoundViewModifier, v47);
}

uint64_t sub_25F34F76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, void *)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a3 - 8) + 32))(a8, a1);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = a7(0, v17);
  return (*(*(a4 - 8) + 32))(a8 + *(v15 + 52), a2, a4);
}

uint64_t sub_25F34F844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_25F351058;

  return sub_25F34E318(a1, a1 + v8, a2, a3);
}

uint64_t sub_25F34F96C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v6 = a1 + *(swift_getTupleTypeMetadata2() + 48);

  return sub_25F34F298(a1, v6, a2, a3);
}

uint64_t sub_25F34FA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a1;
  v30 = a3;
  swift_getWitnessTable();
  v6 = sub_25F3C3ACC();
  v7 = *(a2 + 16);
  v8 = sub_25F3C382C();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v26 = *(a2 + 24);
  v11 = sub_25F3C382C();
  v28 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F8DB5A0](v4, v6, v7, WitnessTable);
  v18 = *(a2 + 52);
  v19 = *(a2 + 32);
  v33 = WitnessTable;
  v34 = v19;
  v20 = swift_getWitnessTable();
  MEMORY[0x25F8DB5A0](v4 + v18, v8, v26, v20);
  (*(v27 + 8))(v10, v8);
  v21 = *(a2 + 40);
  v31 = v20;
  v32 = v21;
  v22 = swift_getWitnessTable();
  sub_25F39F598(v14, v11, v22);
  v23 = *(v28 + 8);
  v23(v14, v11);
  sub_25F39F598(v16, v11, v22);
  return (v23)(v16, v11);
}

uint64_t sub_25F34FD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void *)@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a3 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v21, a2);
  (*(v14 + 16))(v17, a1, a3);
  return sub_25F34F76C(v19, v17, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_25F34FEB0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F34FF3C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_25F350118(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
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
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_25F3503DC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F35044C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_25F35058C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_25F350868(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25F34905C;

  return sub_25F34D28C(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_25F35093C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F3509F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_25F3440A0(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_25F350A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F350B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F350B68(uint64_t a1)
{
  v3 = v2;
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3[2] = v6;
  v3[3] = v5;
  v3[4] = v7;
  v3[5] = v8;
  v9 = *(type metadata accessor for CompoundWrapper() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  v3[6] = v12;
  *v12 = v3;
  v12[1] = sub_25F350CB0;

  return sub_25F34ECC0(a1, v1 + v10, v11, v6, v5, v7);
}

uint64_t sub_25F350CB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = (type metadata accessor for CompoundWrapper() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  (*(*(v5 - 8) + 8))(v3 + v2[15]);

  return swift_deallocObject();
}

uint64_t sub_25F350EE0(uint64_t a1)
{
  v3 = v2;
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3[2] = v6;
  v3[3] = v5;
  v3[4] = v7;
  v3[5] = v8;
  v9 = *(type metadata accessor for CompoundWrapper() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  v3[6] = v12;
  *v12 = v3;
  v12[1] = sub_25F351060;

  return sub_25F34EF8C(a1, v1 + v10, v11, v6, v5, v7, v8);
}

uint64_t sub_25F351074(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671B8);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_25F3C28BC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_25F3C226C();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671C0);
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_25F3C265C();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = sub_25F3C285C();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3512F0, 0, 0);
}

uint64_t sub_25F3512F0()
{
  sub_25F3C286C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[21];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[12];
    v3 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    v9 = v0[4];
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671C8) + 48);
    (*(v4 + 32))(v3, v2, v5);
    (*(v8 + 32))(v6, v2 + v10, v7);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_25F3516D0;
    v12 = v0[10];
    v13 = v0[7];

    return sub_25F3B3754(v13, v12);
  }

  else
  {
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[17];
    v0[22] = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671D0) + 48));
    (*(v16 + 32))(v15, v2, v17);
    v0[23] = sub_25F3C264C();
    v0[24] = v18;
    sub_25F3C41CC();
    v0[25] = sub_25F3C41BC();
    v20 = sub_25F3C416C();

    return MEMORY[0x2822009F8](sub_25F35150C, v20, v19);
  }
}

uint64_t sub_25F35150C()
{
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[16];

  sub_25F371F3C(v2, v1, v3, v4);

  return MEMORY[0x2822009F8](sub_25F3515A0, 0, 0);
}

uint64_t sub_25F3515A0()
{
  type metadata accessor for LocatedPreview();
  sub_25F3C250C();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F3516D0()
{

  return MEMORY[0x2822009F8](sub_25F3517CC, 0, 0);
}

uint64_t sub_25F3517CC()
{
  v1 = v0[13];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  *(swift_task_alloc() + 16) = v1;
  type metadata accessor for LocatedPreview();
  sub_25F3C250C();

  (*(v3 + 8))(v2, v4);
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F351930@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_25F3C325C();
  v59 = *(v1 - 8);
  v60 = v1;
  MEMORY[0x28223BE20](v1);
  v57 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v51 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67290);
  v5 = MEMORY[0x28223BE20](v53);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - v7;
  v58 = sub_25F3C28BC();
  v66 = *(v58 - 8);
  v9 = *(v66 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v51 - v11;
  v12 = sub_25F3C226C();
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x28223BE20](v12);
  v62 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671C0);
  v52 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  v17 = sub_25F3C265C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25F3C285C();
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C286C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671C8) + 48);
    (*(v64 + 32))(v62, v23, v65);
    v25 = v66;
    v51 = *(v66 + 32);
    v26 = &v23[v24];
    v27 = v63;
    v28 = v58;
    v51(v63, v26, v58);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671B8);
    v52 = *(v29 - 8);
    (*(v52 + 56))(v8, 1, 1, v29);
    v30 = sub_25F3C34FC();
    v53 = dispatch_semaphore_create(0);
    v31 = sub_25F3C41EC();
    v32 = v56;
    (*(*(v31 - 8) + 56))(v56, 1, 1, v31);
    sub_25F355228(v55, v68);
    v33 = v54;
    (*(v25 + 16))(v54, v27, v28);
    v34 = (*(v25 + 80) + 80) & ~*(v25 + 80);
    v35 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 32) = v30;
    v37 = v68[1];
    *(v36 + 40) = v68[0];
    *(v36 + 56) = v37;
    *(v36 + 72) = v69;
    v38 = v33;
    v39 = v29;
    v51((v36 + v34), v38, v28);
    v40 = v53;
    *(v36 + v35) = v53;

    v41 = v40;
    sub_25F3525F4(0, 0, v32, &unk_25F3C58F8, v36);

    v42 = v32;
    v43 = v52;
    sub_25F349AA8(v42, &qword_27FD67178);
    sub_25F3C435C();
    *&v68[0] = v30;
    v44 = v57;
    sub_25F3C326C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67298);
    sub_25F355394();
    v45 = v61;
    sub_25F3C31DC();
    (*(v59 + 8))(v44, v60);
    result = (*(v43 + 48))(v45, 1, v39);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      MEMORY[0x28223BE20](result);
      v47 = v62;
      *(&v51 - 2) = v62;
      type metadata accessor for LocatedPreview();
      sub_25F3C250C();

      (*(v66 + 8))(v63, v28);
      (*(v43 + 8))(v45, v39);
      return (*(v64 + 8))(v47, v65);
    }
  }

  else
  {
    v48 = *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671D0) + 48)];
    (*(v18 + 32))(v20, v23, v17);
    v49 = sub_25F3C264C();
    sub_25F371F3C(v49, v50, v48, v16);

    type metadata accessor for LocatedPreview();
    sub_25F3C250C();
    (*(v52 + 8))(v16, v14);
    return (*(v18 + 8))(v20, v17);
  }

  return result;
}

uint64_t sub_25F3521C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v4;
  type metadata accessor for LocatedPreview();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F352248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67290);
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3522F4, 0, 0);
}

uint64_t sub_25F3522F4()
{
  v1 = v0[4];
  v0[2] = v0[3];
  v0[9] = swift_getKeyPath();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_25F3523B4;
  v3 = v0[7];
  v4 = v0[5];

  return sub_25F3B3754(v3, v4);
}

uint64_t sub_25F3523B4()
{

  return MEMORY[0x2822009F8](sub_25F3524B0, 0, 0);
}

uint64_t sub_25F3524B0()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671B8);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67298);
  sub_25F355394();
  sub_25F3C31BC();

  sub_25F349AA8(v2, &qword_27FD67290);
  sub_25F349AA8(v1, &qword_27FD67290);
  sub_25F3C436C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F3525F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25F355568(a3, v25 - v10, &qword_27FD67178);
  v12 = sub_25F3C41EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F349AA8(v11, &qword_27FD67178);
  }

  else
  {
    sub_25F3C41DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25F3C416C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25F3C405C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_25F3528B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25F3C34DC();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *(type metadata accessor for RegistryPreview(0) + 20);
  v8 = sub_25F3C226C();
  (*(*(v8 - 8) + 16))(a3 + v7, a2, v8);
  type metadata accessor for LocatedPreview();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F352988(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F34905C;

  return sub_25F351074(a1, a2);
}

uint64_t LocatedPreview.makeRenderingHostContext(renderEffects:allowAnimations:safeAreaPolicy:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v49 = a2;
  v6 = type metadata accessor for LocatedPreview();
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RenderEffects(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v37 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67188);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = *a3;
  v22 = sub_25F3C2AEC();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  sub_25F394000(v48);
  v23 = v43;
  sub_25F394D1C(a1, v14);

  if (v23)
  {
    return sub_25F349AA8(v20, &qword_27FD67188);
  }

  v38 = v14;
  v39 = v18;
  v40 = v12;
  LODWORD(v43) = v21;
  v48[3] = MEMORY[0x277CDF6D0];
  v48[4] = MEMORY[0x277CDF6C8];
  sub_25F353240(v41, v8, type metadata accessor for LocatedPreview);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = type metadata accessor for RegistryPreview(0);
    v47 = &off_287171D40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    sub_25F3551C0(v8, boxed_opaque_existential_1, type metadata accessor for RegistryPreview);
    v26 = v46;
    v41 = v47;
  }

  else
  {
    v37 = *v8;
    v27 = *(v8 + 2);
    v28 = *(v8 + 5);
    v26 = &type metadata for ProviderPreview;
    v46 = &type metadata for ProviderPreview;
    v47 = &off_2871707E0;
    v41 = &off_2871707E0;
    v29 = swift_allocObject();
    v45[0] = v29;
    *(v29 + 16) = v37;
    *(v29 + 32) = v27;
    *(v29 + 40) = *(v8 + 24);
    *(v29 + 56) = v28;
  }

  v31 = v39;
  v30 = v40;
  v32 = v38;
  v33 = __swift_project_boxed_opaque_existential_1(v45, v26);
  v40 = &v37;
  MEMORY[0x28223BE20](v33);
  v35 = &v37 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  sub_25F355568(v20, v31, &qword_27FD67188);
  sub_25F353240(v32, v30, type metadata accessor for RenderEffects);
  sub_25F3532A8(v48, v44);
  v50 = v43;
  sub_25F37AC50(v35, v31, v30, v44, v49 & 1, &v50, v26, v41, v42);
  sub_25F353304(v32);
  sub_25F349AA8(v20, &qword_27FD67188);
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  return sub_25F353360(v48);
}

uint64_t LocatedPreview.makeDisplayContext(requestedGroupIndex:renderEffects:previewModifiers:allowAnimations:safeAreaPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v39 = a1;
  v13 = type metadata accessor for RenderEffects(0);
  MEMORY[0x28223BE20](v13 - 8);
  v40 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67188);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  v18 = type metadata accessor for LocatedPreview();
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a5;
  sub_25F353240(v7, v20, type metadata accessor for LocatedPreview);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = type metadata accessor for RegistryPreview(0);
    v44 = &off_287171D40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
    sub_25F3551C0(v20, boxed_opaque_existential_1, type metadata accessor for RegistryPreview);
    v23 = v43;
    v22 = v44;
  }

  else
  {
    v37 = *v20;
    v24 = *(v20 + 2);
    v38 = a3;
    v25 = a6;
    v26 = a4;
    v27 = a2;
    v28 = *(v20 + 5);
    v23 = &type metadata for ProviderPreview;
    v22 = &off_2871707E0;
    v43 = &type metadata for ProviderPreview;
    v44 = &off_2871707E0;
    v29 = swift_allocObject();
    v42[0] = v29;
    *(v29 + 16) = v37;
    *(v29 + 32) = v24;
    *(v29 + 40) = *(v20 + 24);
    *(v29 + 56) = v28;
    a2 = v27;
    a4 = v26;
    a6 = v25;
    a3 = v38;
  }

  v30 = __swift_project_boxed_opaque_existential_1(v42, v23);
  MEMORY[0x28223BE20](v30);
  v32 = &v37 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  sub_25F355568(v39, v17, &qword_27FD67188);
  v34 = a2;
  v35 = v40;
  sub_25F353240(v34, v40, type metadata accessor for RenderEffects);
  sub_25F3532A8(a3, v41);
  v46 = v45;
  sub_25F37AC50(v32, v17, v35, v41, a4 & 1, &v46, v23, v22, a6);
  return __swift_destroy_boxed_opaque_existential_0Tm(v42);
}

uint64_t type metadata accessor for LocatedPreview()
{
  result = qword_27FD67198;
  if (!qword_27FD67198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F353240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F353304(uint64_t a1)
{
  v2 = type metadata accessor for RenderEffects(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PreviewSpecification.locatePreview()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67190);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-1] - v2;
  v4 = type metadata accessor for RegistryLocator();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v5[14] = 0;
  v5[15] = sub_25F353BA8(MEMORY[0x277D84F90]);
  v5[16] = 0;
  v8[3] = v4;
  v8[4] = &off_287171D20;
  v8[0] = v5;
  sub_25F351930(v3);
  sub_25F353D98(v8);
  sub_25F3C24FC();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_25F35350C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67220);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67228);
    v7 = sub_25F3C453C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_25F355568(v9, v5, &qword_27FD67220);
      v11 = *v5;
      result = sub_25F35C194(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_25F3C2E1C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F3536E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671F8);
    v7 = sub_25F3C453C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F355568(v9, v5, &qword_27FD671F0);
      result = sub_25F35C1D0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F3C2AAC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F3538D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671E8);
    v3 = sub_25F3C453C();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_25F35C194(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F3539B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD672B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD672C0);
    v7 = sub_25F3C453C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F355568(v9, v5, &qword_27FD672B8);
      result = sub_25F35C0C0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F3C23FC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_25F3440A0(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F353BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD672A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD672B0);
    v7 = sub_25F3C453C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F355568(v9, v5, &qword_27FD672A8);
      result = sub_25F35C2A4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F3C22BC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_25F3440A0(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t dispatch thunk of PreviewLocating.locatePreview(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F351058;

  return v11(a1, a2, a3, a4);
}

void sub_25F353F4C()
{
  sub_25F353FC0();
  if (v0 <= 0x3F)
  {
    sub_25F353FF0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

ValueMetadata *sub_25F353FC0()
{
  result = qword_27FD671A8;
  if (!qword_27FD671A8)
  {
    result = &type metadata for ProviderPreview;
    atomic_store(&type metadata for ProviderPreview, &qword_27FD671A8);
  }

  return result;
}

void sub_25F353FF0()
{
  if (!qword_27FD671B0)
  {
    v0 = type metadata accessor for RegistryPreview(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27FD671B0);
    }
  }
}

unint64_t sub_25F354104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67280);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67288);
    v7 = sub_25F3C453C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F355568(v9, v5, &qword_27FD67280);
      result = sub_25F35C3F0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F3C2CAC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F3542EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67270);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67278);
    v7 = sub_25F3C453C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F355568(v9, v5, &qword_27FD67270);
      result = sub_25F35C3F0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F3C2CAC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F3544D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67210);
    v3 = sub_25F3C453C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F355568(v4, &v16, &qword_27FD67218);
      v5 = v16;
      v6 = v17;
      result = sub_25F35C378(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F35460C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67260);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67268);
    v7 = sub_25F3C453C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F355568(v9, v5, &qword_27FD67260);
      result = sub_25F35C4C4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F3C271C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F3547F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67250);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67258);
    v7 = sub_25F3C453C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F355568(v9, v5, &qword_27FD67250);
      result = sub_25F35C4C4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F3C271C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      updated = type metadata accessor for EntryPointIndex.UpdateState(0);
      result = sub_25F3551C0(&v5[v8], v16 + *(*(updated - 8) + 72) * v13, type metadata accessor for EntryPointIndex.UpdateState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F354A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67240);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67248);
    v7 = sub_25F3C453C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F355568(v9, v5, &qword_27FD67240);
      result = sub_25F35C4C4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F3C271C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_25F3440A0(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F354C00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67230);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67238);
    v7 = sub_25F3C453C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F355568(v9, v5, &qword_27FD67230);
      result = sub_25F35C4C4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F3C271C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_25F3440A0(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F354DF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671E0);
    v7 = sub_25F3C453C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F355568(v9, v5, &qword_27FD671D8);
      result = sub_25F35C2A4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F3C22BC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F354FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67200);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67208);
    v7 = sub_25F3C453C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F355568(v9, v5, &qword_27FD67200);
      result = sub_25F35C598(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F3C2A8C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25F3551C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F355260(uint64_t a1)
{
  v4 = *(sub_25F3C28BC() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25F34905C;

  return sub_25F352248(a1, v6, v7, v8, (v1 + 5), v1 + v5, v9);
}

unint64_t sub_25F355394()
{
  result = qword_27FD672A0;
  if (!qword_27FD672A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD672A0);
  }

  return result;
}

uint64_t sub_25F3553F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F351058;

  return sub_25F38F8F8(a1, v4);
}

uint64_t sub_25F3554B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F34905C;

  return sub_25F38F8F8(a1, v4);
}

uint64_t sub_25F355568(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PreviewAgentServices.resolveRenderEffects(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_25F355624, 0, 0);
}

uint64_t sub_25F355624()
{
  v1 = *(*(v0 + 56) + 8);
  *(v0 + 64) = v1;
  return MEMORY[0x2822009F8](sub_25F355648, v1, 0);
}

uint64_t sub_25F355648()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_beginAccess();

  sub_25F394D1C(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t PreviewAgentServices.locatePreview(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67190);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3557CC, 0, 0);
}

uint64_t sub_25F3557CC()
{
  v1 = v0[4];
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_25F355900;
  v5 = v0[7];
  v6 = v0[3];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_25F355900()
{

  return MEMORY[0x2822009F8](sub_25F3559FC, 0, 0);
}

uint64_t sub_25F3559FC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_25F3C24FC();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t PreviewAgentServices.resolveModifiers(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for RegistryPreview(0);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for LocatedPreview();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F355B70, 0, 0);
}

uint64_t sub_25F355B70()
{
  sub_25F355EEC(v0[3], v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[7];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[4];
    sub_25F355F50(v2, v0[5]);
    v4 = *(v3 + 16);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_25F355CBC;
    v6 = v0[2];

    return sub_25F34BD08(v6, v4);
  }

  else
  {
    v8 = v0[2];
    sub_25F355FB4(v2, type metadata accessor for LocatedPreview);
    v9 = MEMORY[0x277CDF6C8];
    *(v8 + 24) = MEMORY[0x277CDF6D0];
    *(v8 + 32) = v9;

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_25F355CBC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_25F355E5C;
  }

  else
  {
    v2 = sub_25F355DD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F355DD0()
{
  sub_25F355FB4(*(v0 + 40), type metadata accessor for RegistryPreview);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F355E5C()
{
  sub_25F355FB4(*(v0 + 40), type metadata accessor for RegistryPreview);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F355EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocatedPreview();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F355F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegistryPreview(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F355FB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25F356040(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_25F356088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F356110()
{
  if (qword_27FD66EC0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  if (byte_27FD672C8 == 1)
  {
    v0[6] = v1[2];
    sub_25F3C41CC();
    v0[7] = sub_25F3C41BC();
    v2 = sub_25F3C416C();
    v4 = v3;
    v5 = sub_25F35621C;
    v6 = v2;
    v7 = v4;
  }

  else
  {
    v8 = __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    v0[8] = v8;
    v6 = *v8;
    v5 = sub_25F3562FC;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_25F35621C()
{

  sub_25F34D8A4();

  return MEMORY[0x2822009F8](sub_25F356288, 0, 0);
}

uint64_t sub_25F356288()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 24), *(*(v0 + 40) + 48));
  *(v0 + 64) = v1;
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_25F3562FC, v2, 0);
}

uint64_t sub_25F3562FC()
{
  v1 = *(v0 + 64);
  v2 = *v1;
  *(*v1 + 112) = 0;

  v3 = sub_25F353BA8(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v2 + 120) = v3;

  *(v2 + 128) = 0;

  v4 = *(v0 + 8);

  return v4();
}

BOOL sub_25F3563A4()
{
  result = sub_25F3563C8();
  byte_27FD672C8 = result;
  return result;
}

BOOL sub_25F3563C8()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v22[-v5];
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 environment];

  v9 = sub_25F3C3F7C();
  if (*(v9 + 16) && (v10 = sub_25F35C378(0xD00000000000002ELL, 0x800000025F3CA880), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 16 * v10);
    v14 = *v12;
    v13 = v12[1];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v23[0] = v14;
  v23[1] = v13;
  MEMORY[0x28223BE20](v15);
  *&v22[-16] = v23;
  v16 = sub_25F3566F0(sub_25F356814, &v22[-32], &unk_28716FB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD672D0);
  swift_arrayDestroy();

  if (v16)
  {
    sub_25F3C352C();
    v17 = sub_25F3C353C();
    v18 = sub_25F3C433C();
    if (!os_log_type_enabled(v17, v18))
    {
      v6 = v4;
      goto LABEL_12;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_25F342000, v17, v18, "Flag set, will not clear modifier cache after hot swap", v19, 2u);
    v6 = v4;
    goto LABEL_10;
  }

  sub_25F3C352C();
  v17 = sub_25F3C353C();
  v20 = sub_25F3C433C();
  if (os_log_type_enabled(v17, v20))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_25F342000, v17, v20, "Will clear modifier cache after hot swap", v19, 2u);
LABEL_10:
    MEMORY[0x25F8DC6C0](v19, -1, -1);
  }

LABEL_12:

  (*(v1 + 8))(v6, v0);
  return (v16 & 1) == 0;
}

uint64_t sub_25F3566F0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

BOOL sub_25F3567A0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_25F3C459C() & 1;
    }
  }

  return result;
}

uint64_t sub_25F356888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a2;
  v95 = a6;
  v10 = sub_25F3C325C();
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x28223BE20](v10);
  v87 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67188);
  MEMORY[0x28223BE20](v12 - 8);
  v90 = &v79 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v92 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v91 = &v79 - v17;
  v18 = sub_25F3C33DC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v79 - v20);
  v22 = type metadata accessor for RegistryHostProvider(0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &v25[*(v23 + 24)];
  v94 = a3;
  sub_25F3532A8(a3, v26);
  v27 = *(a5 + 24);
  v96 = a1;
  v27(a4, a5);
  v28 = (*(v19 + 88))(v21, v18);
  if (v28 == *MEMORY[0x277CC56C8])
  {
    v29 = (*(v19 + 96))(v21, v18);
    v30 = *v21;
    v31 = v91;
    v30(v29);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);

    sub_25F353360(v94);
    sub_25F349AA8(v97, &qword_27FD67188);
    (*(v93 + 8))(v31, AssociatedTypeWitness);
    v33 = *(v22 + 20);
    v34 = *MEMORY[0x277D40D98];
    v35 = sub_25F3C210C();
    (*(*(v35 - 8) + 104))(&v25[v33], v34, v35);
    v36 = a4;
    v37 = v96;
  }

  else
  {
    v84 = AssociatedTypeWitness;
    v85 = a5;
    v38 = v22;
    v86 = v25;
    v91 = a4;
    if (v28 == *MEMORY[0x277CC56D0])
    {
      (*(v19 + 96))(v21, v18);
      v39 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67308) + 48);
      v40 = *v39;
      v87 = *(v39 + 1);
      v41 = sub_25F3C33FC();
      v82 = &v79;
      MEMORY[0x28223BE20](v41);
      v80 = v43;
      v44 = *(v43 + 32);
      v88 = v45;
      v89 = &v79 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      v44();
      v46 = sub_25F3C336C();
      v81 = &v79;
      v83 = v46;
      v47 = *(v46 - 8);
      MEMORY[0x28223BE20](v46);
      v49 = &v79 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67310);
      v79 = &v79;
      MEMORY[0x28223BE20](v50 - 8);
      v52 = &v79 - v51;
      v53 = v90;
      sub_25F358988(v97, v90);
      v54 = sub_25F3C2AEC();
      v55 = *(v54 - 8);
      v56 = v38;
      if ((*(v55 + 48))(v53, 1, v54) == 1)
      {
        sub_25F349AA8(v53, &qword_27FD67188);
        v57 = 1;
      }

      else
      {
        sub_25F3C2ADC();
        sub_25F3C2ABC();
        sub_25F3C334C();
        (*(v55 + 8))(v53, v54);
        v57 = 0;
      }

      v62 = v84;
      v63 = v47;
      (*(v47 + 56))(v52, v57, 1, v83);
      v40(v92, v49, v52);
      sub_25F349AA8(v52, &qword_27FD67310);
      v36 = v91;
      v64 = v62;
      v65 = swift_getAssociatedConformanceWitness();
      v25 = v86;
      (*(v65 + 8))(v64, v65);
      v66 = &v25[*(v56 + 20)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67318);
      v67 = v80;
      (*(v80 + 16))(v66, v89, v88);
      sub_25F3C335C();
      sub_25F3C333C();
      sub_25F3C2ACC();

      sub_25F353360(v94);
      sub_25F349AA8(v97, &qword_27FD67188);
      (*(v63 + 8))(v49, v83);
      (*(v93 + 8))(v92, v64);
      (*(v67 + 8))(v89, v88);
      v68 = *MEMORY[0x277D40DA8];
      v69 = sub_25F3C210C();
      (*(*(v69 - 8) + 104))(v66, v68, v69);
      v37 = v96;
    }

    else if (v28 == *MEMORY[0x277CC56C0])
    {
      v58 = MEMORY[0x277CE1410];
      v25 = v86;
      *(v86 + 3) = MEMORY[0x277CE1428];
      *(v25 + 4) = v58;
      sub_25F353360(v94);
      sub_25F349AA8(v97, &qword_27FD67188);
      v59 = *(v22 + 20);
      v60 = *MEMORY[0x277D40D90];
      v61 = sub_25F3C210C();
      (*(*(v61 - 8) + 104))(&v25[v59], v60, v61);
      v36 = v91;
      v37 = v96;
    }

    else
    {
      MEMORY[0x28223BE20](v28);
      v70 = v91;
      v71 = v85;
      *(&v79 - 4) = v91;
      *(&v79 - 3) = v71;
      v72 = v18;
      v37 = v96;
      *(&v79 - 2) = v96;
      v73 = v87;
      sub_25F3C326C();
      sub_25F3C2F5C();
      (*(v88 + 8))(v73, v89);
      v74 = MEMORY[0x277CE1410];
      v25 = v86;
      *(v86 + 3) = MEMORY[0x277CE1428];
      *(v25 + 4) = v74;
      sub_25F353360(v94);
      sub_25F349AA8(v97, &qword_27FD67188);
      v75 = *(v38 + 20);
      v76 = *MEMORY[0x277D40D90];
      v77 = sub_25F3C210C();
      (*(*(v77 - 8) + 104))(&v25[v75], v76, v77);
      (*(v19 + 8))(v21, v72);
      v36 = v70;
    }
  }

  sub_25F358924(v25, v95);
  return (*(*(v36 - 1) + 8))(v37, v36);
}

uint64_t sub_25F357358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_25F3C33DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_25F3C445C();
  MEMORY[0x25F8DB8E0](0xD00000000000002ALL, 0x800000025F3CA9E0);
  (*(a3 + 24))(a2, a3);
  sub_25F3C457C();
  (*(v6 + 8))(v8, v5);
  return v10[0];
}

uint64_t sub_25F357524()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25F3C35DC();

  return v1;
}

uint64_t sub_25F357598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67300);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  v13 = OBJC_IVAR____TtCV17PreviewsInjection20RegistryHostProvider4Host__seed;
  v17[1] = 0;
  sub_25F3C35BC();
  (*(v10 + 32))(v4 + v13, v12, v9);
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 16));
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v15 = *(a2 + 16);
  *(v4 + 56) = *a2;
  *(v4 + 72) = v15;
  *(v4 + 88) = *(a2 + 32);
  return v4;
}

uint64_t sub_25F3576FC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  sub_25F349E38(a1 + 16, v14);
  v4 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  swift_beginAccess();
  sub_25F3532A8(a1 + 56, v12);
  PreviewModifiers.applied<A>(to:)(v4, v13);
  sub_25F353360(v12);
  v5 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_25F3C3E0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25F3C35DC();

  v9 = v12[0];
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v14);
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_25F3578B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_25F3C39CC();
  result = sub_25F3576FC(v3, v8);
  v6 = v8[0];
  v7 = v8[1];
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_25F357914()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  sub_25F353360(v0 + 56);
  v1 = OBJC_IVAR____TtCV17PreviewsInjection20RegistryHostProvider4Host__seed;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67300);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_25F3579CC@<X0>(uint64_t *a1@<X8>)
{
  sub_25F358F10(&qword_27FD672F8);

  result = sub_25F3C37DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F357A38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F3C35AC();
  *a1 = result;
  return result;
}

uint64_t sub_25F357A88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v3 + 16), v2);
  swift_endAccess();
  swift_beginAccess();
  sub_25F359170(v2 + v4, v3 + 56);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_25F3C35CC();
  ++*v6;
  v5(&v8, 0);

  return 1;
}

uint64_t sub_25F357B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = __swift_project_boxed_opaque_existential_1(v2, v5);
  v8 = type metadata accessor for RegistryHostProvider.Host(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v11 + 16))(v10, v7, v5);
  sub_25F3532A8(v2 + *(a1 + 24), v14);
  result = sub_25F3574C0(v10, v14, v5, v6);
  *a2 = result;
  return result;
}

uint64_t sub_25F357C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_25F3C210C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25F357D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3591CC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25F357DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3591CC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25F357E28()
{
  sub_25F3591CC();
  sub_25F3C3B6C();
  __break(1u);
}

void sub_25F357E50(uint64_t a1@<X8>)
{
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v44 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  v2 = [v44 view];
  if (v2)
  {
    v3 = v2;
    [v2 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F3C5A10;
    v5 = [v1 leadingAnchor];
    v6 = [v3 leadingAnchor];
    v7 = [v5 constraintEqualToAnchor_];

    *(inited + 32) = v7;
    v8 = [v1 trailingAnchor];
    v9 = [v3 trailingAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    *(inited + 40) = v10;
    v11 = [v1 topAnchor];
    v12 = [v3 topAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(inited + 48) = v13;
    v14 = [v1 bottomAnchor];
    v15 = [v3 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(inited + 56) = v16;
    v17 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      v18 = 0;
      do
      {
        if ((inited & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x25F8DBCF0](v18, inited);
        }

        else
        {
          if (v18 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_12;
          }

          v19 = *(inited + 8 * v18 + 32);
        }

        v21 = v19;
        ++v18;
        LODWORD(v20) = 1.0;
        [v19 setPriority_];
      }

      while (v17 != v18);
    }

    v43 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_25F3C5A20;
    v23 = [v1 leadingAnchor];
    v24 = [v3 leadingAnchor];
    v25 = [v23 constraintGreaterThanOrEqualToAnchor_];

    *(v22 + 32) = v25;
    v26 = [v1 trailingAnchor];
    v27 = [v3 trailingAnchor];
    v28 = [v26 constraintLessThanOrEqualToAnchor_];

    *(v22 + 40) = v28;
    v29 = [v1 topAnchor];
    v30 = [v3 topAnchor];
    v31 = [v29 constraintGreaterThanOrEqualToAnchor_];

    *(v22 + 48) = v31;
    v32 = [v1 bottomAnchor];
    v33 = [v3 bottomAnchor];
    v34 = [v32 constraintLessThanOrEqualToAnchor_];

    *(v22 + 56) = v34;
    v35 = [v1 centerXAnchor];
    v36 = [v3 centerXAnchor];
    v37 = [v35 constraintEqualToAnchor_];

    *(v22 + 64) = v37;
    v38 = [v1 centerYAnchor];
    v39 = [v3 centerYAnchor];
    v40 = [v38 constraintEqualToAnchor_];

    *(v22 + 72) = v40;
    sub_25F37E324(inited);
    sub_25F358B74();
    v41 = sub_25F3C40DC();

    [v43 activateConstraints_];

    v42 = sub_25F3C384C();
    LOBYTE(v41) = sub_25F3C3BFC();
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67330);
    *(a1 + 32) = sub_25F358BC0();

    *a1 = v44;
    *(a1 + 8) = v42;
    *(a1 + 16) = v41;
  }

  else
  {
LABEL_12:
    __break(1u);
  }
}

void sub_25F358420(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      [v6 addChildViewController_];
      [v8 addSubview_];
      [v2 didMoveToParentViewController_];
      v9 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67320);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_25F3C5A10;
      v11 = [v5 leadingAnchor];
      v12 = [v8 leadingAnchor];
      v13 = [v11 constraintEqualToAnchor_];

      *(v10 + 32) = v13;
      v14 = [v5 trailingAnchor];
      v15 = [v8 trailingAnchor];
      v16 = [v14 constraintEqualToAnchor_];

      *(v10 + 40) = v16;
      v17 = [v5 topAnchor];
      v18 = [v8 topAnchor];
      v19 = [v17 constraintEqualToAnchor_];

      *(v10 + 48) = v19;
      v20 = [v5 bottomAnchor];
      v21 = [v8 bottomAnchor];
      v22 = [v20 constraintEqualToAnchor_];

      *(v10 + 56) = v22;
      sub_25F358B74();
      v23 = sub_25F3C40DC();

      [v9 activateConstraints_];

      v24 = sub_25F3C384C();
      LOBYTE(v10) = sub_25F3C3BFC();
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67330);
      *(a1 + 32) = sub_25F358BC0();

      *a1 = v6;
      *(a1 + 8) = v24;
      *(a1 + 16) = v10;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25F3587AC()
{
  sub_25F358848();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25F358848()
{
  if (!qword_27FD672F0)
  {
    v0 = sub_25F3C35FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD672F0);
    }
  }
}

uint64_t sub_25F3588E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F358924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegistryHostProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F358988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F3589F8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25F3C35DC();

  *a1 = v3;
  return result;
}

uint64_t sub_25F358A78()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25F3C35EC();
}

void (*sub_25F358AEC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F8DBCF0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25F358B6C;
  }

  __break(1u);
  return result;
}

unint64_t sub_25F358B74()
{
  result = qword_27FD67328;
  if (!qword_27FD67328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD67328);
  }

  return result;
}

unint64_t sub_25F358BC0()
{
  result = qword_27FD67338;
  if (!qword_27FD67338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67330);
    sub_25F358C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67338);
  }

  return result;
}

unint64_t sub_25F358C4C()
{
  result = qword_27FD67340;
  if (!qword_27FD67340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67340);
  }

  return result;
}

unint64_t sub_25F358CD8()
{
  result = sub_25F358D64();
  if (v1 <= 0x3F)
  {
    result = sub_25F3C210C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_25F358D64()
{
  result = qword_27FD67358;
  if (!qword_27FD67358)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FD67358);
  }

  return result;
}

uint64_t sub_25F358DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F358E10(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_25F358E5C()
{
  result = qword_27FD67360;
  if (!qword_27FD67360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67360);
  }

  return result;
}

uint64_t sub_25F358F10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RegistryHostProvider.Host(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

unint64_t sub_25F3591CC()
{
  result = qword_27FD67370;
  if (!qword_27FD67370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67370);
  }

  return result;
}

void (*sub_25F359220(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F8DBCF0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25F359308;
  }

  __break(1u);
  return result;
}

unint64_t sub_25F3592A0()
{
  result = qword_27FD67378;
  if (!qword_27FD67378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67378);
  }

  return result;
}

uint64_t sub_25F359314(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F3C2CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_25F3C354C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v1;
  if (*(v12 + 16) && (v13 = sub_25F35C3F0(a1), (v14 & 1) != 0) && *(*(v12 + 56) + 16 * v13) != &type metadata for PreviewProviderEntryPoint)
  {
    sub_25F3C350C();
    (*(v5 + 16))(v7, a1, v4);
    v15 = sub_25F3C353C();
    v16 = sub_25F3C432C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v17 = 136315650;
      *(v17 + 4) = sub_25F369EE8(0xD000000000000019, 0x800000025F3CAAF0, &v34);
      *(v17 + 12) = 2080;
      sub_25F35E5DC(&qword_27FD67388, MEMORY[0x277D40E58]);
      v32 = v15;
      v18 = sub_25F3C455C();
      v31 = v16;
      v20 = v19;
      (*(v5 + 8))(v7, v4);
      v21 = sub_25F369EE8(v18, v20, &v34);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2080;
      v22 = sub_25F3C469C();
      v24 = sub_25F369EE8(v22, v23, &v34);

      *(v17 + 24) = v24;
      v25 = v32;
      _os_log_impl(&dword_25F342000, v32, v31, "Can't register %s for %s -- already registered: %s", v17, 0x20u);
      v26 = v33;
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v26, -1, -1);
      MEMORY[0x25F8DC6C0](v17, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v27 = sub_25F35E588();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v2;
    result = sub_25F35D088(&type metadata for PreviewProviderEntryPoint, v27, a1, isUniquelyReferenced_nonNull_native, sub_25F3BC704, sub_25F3B9CB0);
    *v2 = v34;
  }

  return result;
}

uint64_t sub_25F3596F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F3C2CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_25F3C354C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v1;
  if (*(v12 + 16) && (v13 = sub_25F35C3F0(a1), (v14 & 1) != 0) && *(*(v12 + 56) + 16 * v13) != &type metadata for PreviewPreflightEntryPoint)
  {
    sub_25F3C350C();
    (*(v5 + 16))(v7, a1, v4);
    v15 = sub_25F3C353C();
    v16 = sub_25F3C432C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v17 = 136315650;
      *(v17 + 4) = sub_25F369EE8(0xD00000000000001ALL, 0x800000025F3CAAD0, &v34);
      *(v17 + 12) = 2080;
      sub_25F35E5DC(&qword_27FD67388, MEMORY[0x277D40E58]);
      v32 = v15;
      v18 = sub_25F3C455C();
      v31 = v16;
      v20 = v19;
      (*(v5 + 8))(v7, v4);
      v21 = sub_25F369EE8(v18, v20, &v34);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2080;
      v22 = sub_25F3C469C();
      v24 = sub_25F369EE8(v22, v23, &v34);

      *(v17 + 24) = v24;
      v25 = v32;
      _os_log_impl(&dword_25F342000, v32, v31, "Can't register %s for %s -- already registered: %s", v17, 0x20u);
      v26 = v33;
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v26, -1, -1);
      MEMORY[0x25F8DC6C0](v17, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v27 = sub_25F35E534();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v2;
    result = sub_25F35D088(&type metadata for PreviewPreflightEntryPoint, v27, a1, isUniquelyReferenced_nonNull_native, sub_25F3BC704, sub_25F3B9CB0);
    *v2 = v34;
  }

  return result;
}

uint64_t sub_25F359AD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F3C2CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_25F3C354C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v1;
  if (*(v12 + 16) && (v13 = sub_25F35C3F0(a1), (v14 & 1) != 0) && *(*(v12 + 56) + 16 * v13) != &type metadata for RegistryPreflightEntryPoint)
  {
    sub_25F3C350C();
    (*(v5 + 16))(v7, a1, v4);
    v15 = sub_25F3C353C();
    v16 = sub_25F3C432C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v17 = 136315650;
      *(v17 + 4) = sub_25F369EE8(0xD00000000000001BLL, 0x800000025F3CAAB0, &v34);
      *(v17 + 12) = 2080;
      sub_25F35E5DC(&qword_27FD67388, MEMORY[0x277D40E58]);
      v32 = v15;
      v18 = sub_25F3C455C();
      v31 = v16;
      v20 = v19;
      (*(v5 + 8))(v7, v4);
      v21 = sub_25F369EE8(v18, v20, &v34);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2080;
      v22 = sub_25F3C469C();
      v24 = sub_25F369EE8(v22, v23, &v34);

      *(v17 + 24) = v24;
      v25 = v32;
      _os_log_impl(&dword_25F342000, v32, v31, "Can't register %s for %s -- already registered: %s", v17, 0x20u);
      v26 = v33;
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v26, -1, -1);
      MEMORY[0x25F8DC6C0](v17, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v27 = sub_25F35E4E0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v2;
    result = sub_25F35D088(&type metadata for RegistryPreflightEntryPoint, v27, a1, isUniquelyReferenced_nonNull_native, sub_25F3BC704, sub_25F3B9CB0);
    *v2 = v34;
  }

  return result;
}

uint64_t sub_25F359EB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F3C2CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F3C354C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RegistryEntryPoint(0);
  v13 = *v1;
  if (*(v13 + 16) && (v14 = sub_25F35C3F0(a1), (v15 & 1) != 0) && *(*(v13 + 56) + 16 * v14) != v12)
  {
    v32 = *(*(v13 + 56) + 16 * v14);
    sub_25F3C350C();
    (*(v5 + 16))(v7, a1, v4);
    v16 = sub_25F3C353C();
    v17 = sub_25F3C432C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v18 = 136315650;
      *(v18 + 4) = sub_25F369EE8(0xD000000000000012, 0x800000025F3CAA90, &v33);
      *(v18 + 12) = 2080;
      sub_25F35E5DC(&qword_27FD67388, MEMORY[0x277D40E58]);
      v19 = sub_25F3C455C();
      v30 = v9;
      v21 = v20;
      (*(v5 + 8))(v7, v4);
      v22 = sub_25F369EE8(v19, v21, &v33);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2080;
      v23 = sub_25F3C469C();
      v25 = sub_25F369EE8(v23, v24, &v33);

      *(v18 + 24) = v25;
      _os_log_impl(&dword_25F342000, v16, v17, "Can't register %s for %s -- already registered: %s", v18, 0x20u);
      v26 = v31;
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v26, -1, -1);
      MEMORY[0x25F8DC6C0](v18, -1, -1);

      return (*(v30 + 8))(v11, v8);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      return (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    v28 = sub_25F35E5DC(&qword_27FD67418, type metadata accessor for RegistryEntryPoint);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v2;
    result = sub_25F35D088(v12, v28, a1, isUniquelyReferenced_nonNull_native, sub_25F3BC704, sub_25F3B9CB0);
    *v2 = v33;
  }

  return result;
}

uint64_t sub_25F35A2D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F3C2CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_25F3C354C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v1;
  if (*(v12 + 16) && (v13 = sub_25F35C3F0(a1), (v14 & 1) != 0) && *(*(v12 + 56) + 16 * v13) != &type metadata for CFunctionEntryPoint)
  {
    sub_25F3C350C();
    (*(v5 + 16))(v7, a1, v4);
    v15 = sub_25F3C353C();
    v16 = sub_25F3C432C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v17 = 136315650;
      *(v17 + 4) = sub_25F369EE8(0xD000000000000013, 0x800000025F3CAA70, &v34);
      *(v17 + 12) = 2080;
      sub_25F35E5DC(&qword_27FD67388, MEMORY[0x277D40E58]);
      v32 = v15;
      v18 = sub_25F3C455C();
      v31 = v16;
      v20 = v19;
      (*(v5 + 8))(v7, v4);
      v21 = sub_25F369EE8(v18, v20, &v34);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2080;
      v22 = sub_25F3C469C();
      v24 = sub_25F369EE8(v22, v23, &v34);

      *(v17 + 24) = v24;
      v25 = v32;
      _os_log_impl(&dword_25F342000, v32, v31, "Can't register %s for %s -- already registered: %s", v17, 0x20u);
      v26 = v33;
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v26, -1, -1);
      MEMORY[0x25F8DC6C0](v17, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v27 = sub_25F35E48C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v2;
    result = sub_25F35D088(&type metadata for CFunctionEntryPoint, v27, a1, isUniquelyReferenced_nonNull_native, sub_25F3BC704, sub_25F3B9CB0);
    *v2 = v34;
  }

  return result;
}

uint64_t sub_25F35A6B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F3C2CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_25F3C354C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v1;
  if (*(v12 + 16) && (v13 = sub_25F35C3F0(a1), (v14 & 1) != 0) && *(*(v12 + 56) + 16 * v13) != &type metadata for NoopEntryPoint)
  {
    sub_25F3C350C();
    (*(v5 + 16))(v7, a1, v4);
    v15 = sub_25F3C353C();
    v16 = sub_25F3C432C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v17 = 136315650;
      *(v17 + 4) = sub_25F369EE8(0x72746E45706F6F4ELL, 0xEE00746E696F5079, &v34);
      *(v17 + 12) = 2080;
      sub_25F35E5DC(&qword_27FD67388, MEMORY[0x277D40E58]);
      v32 = v15;
      v18 = sub_25F3C455C();
      v31 = v16;
      v20 = v19;
      (*(v5 + 8))(v7, v4);
      v21 = sub_25F369EE8(v18, v20, &v34);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2080;
      v22 = sub_25F3C469C();
      v24 = sub_25F369EE8(v22, v23, &v34);

      *(v17 + 24) = v24;
      v25 = v32;
      _os_log_impl(&dword_25F342000, v32, v31, "Can't register %s for %s -- already registered: %s", v17, 0x20u);
      v26 = v33;
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v26, -1, -1);
      MEMORY[0x25F8DC6C0](v17, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v27 = sub_25F35E438();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v2;
    result = sub_25F35D088(&type metadata for NoopEntryPoint, v27, a1, isUniquelyReferenced_nonNull_native, sub_25F3BC704, sub_25F3B9CB0);
    *v2 = v34;
  }

  return result;
}

uint64_t EntryPointTypeRegistry.register<A>(entryPoint:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_25F3C2CAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F3C354C();
  v36 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v4;
  if (*(v16 + 16) && (v17 = sub_25F35C3F0(a2), (v18 & 1) != 0) && *(*(v16 + 56) + 16 * v17) != a1)
  {
    v35[1] = *(*(v16 + 56) + 16 * v17);
    sub_25F3C350C();
    (*(v10 + 16))(v12, a2, v9);
    v19 = sub_25F3C353C();
    v20 = sub_25F3C432C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      v37 = v35[0];
      *v21 = 136315650;
      v22 = sub_25F3C469C();
      v24 = sub_25F369EE8(v22, v23, &v37);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      sub_25F35E5DC(&qword_27FD67388, MEMORY[0x277D40E58]);
      v25 = sub_25F3C455C();
      v27 = v26;
      (*(v10 + 8))(v12, v9);
      v28 = sub_25F369EE8(v25, v27, &v37);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2080;
      v29 = sub_25F3C469C();
      v31 = sub_25F369EE8(v29, v30, &v37);

      *(v21 + 24) = v31;
      _os_log_impl(&dword_25F342000, v19, v20, "Can't register %s for %s -- already registered: %s", v21, 0x20u);
      v32 = v35[0];
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v32, -1, -1);
      MEMORY[0x25F8DC6C0](v21, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    return (*(v36 + 8))(v15, v13);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v5;
    result = sub_25F35D088(a1, a4, a2, isUniquelyReferenced_nonNull_native, sub_25F3BC704, sub_25F3B9CB0);
    *v5 = v37;
  }

  return result;
}

{
  v5 = v4;
  v9 = sub_25F3C2CAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F3C354C();
  v36 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 8);
  if (*(v16 + 16) && (v17 = sub_25F35C3F0(a2), (v18 & 1) != 0) && *(*(v16 + 56) + 16 * v17) != a1)
  {
    v35[1] = *(*(v16 + 56) + 16 * v17);
    sub_25F3C350C();
    (*(v10 + 16))(v12, a2, v9);
    v19 = sub_25F3C353C();
    v20 = sub_25F3C432C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      v37 = v35[0];
      *v21 = 136315650;
      v22 = sub_25F3C469C();
      v24 = sub_25F369EE8(v22, v23, &v37);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      sub_25F35E5DC(&qword_27FD67388, MEMORY[0x277D40E58]);
      v25 = sub_25F3C455C();
      v27 = v26;
      (*(v10 + 8))(v12, v9);
      v28 = sub_25F369EE8(v25, v27, &v37);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2080;
      v29 = sub_25F3C469C();
      v31 = sub_25F369EE8(v29, v30, &v37);

      *(v21 + 24) = v31;
      _os_log_impl(&dword_25F342000, v19, v20, "Can't register %s for %s -- already registered: %s", v21, 0x20u);
      v32 = v35[0];
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v32, -1, -1);
      MEMORY[0x25F8DC6C0](v21, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    return (*(v36 + 8))(v15, v13);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v5 + 8);
    result = sub_25F35D088(a1, a4, a2, isUniquelyReferenced_nonNull_native, sub_25F3BC72C, sub_25F3B9CC4);
    *(v5 + 8) = v37;
  }

  return result;
}

uint64_t sub_25F35AE70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F3C2CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F3C354C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PreviewEntryPoint();
  v13 = *(v1 + 8);
  if (*(v13 + 16) && (v14 = sub_25F35C3F0(a1), (v15 & 1) != 0) && *(*(v13 + 56) + 16 * v14) != v12)
  {
    v32 = *(*(v13 + 56) + 16 * v14);
    sub_25F3C350C();
    (*(v5 + 16))(v7, a1, v4);
    v16 = sub_25F3C353C();
    v17 = sub_25F3C432C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v18 = 136315650;
      *(v18 + 4) = sub_25F369EE8(0xD000000000000011, 0x800000025F3CAA50, &v33);
      *(v18 + 12) = 2080;
      sub_25F35E5DC(&qword_27FD67388, MEMORY[0x277D40E58]);
      v19 = sub_25F3C455C();
      v30 = v9;
      v21 = v20;
      (*(v5 + 8))(v7, v4);
      v22 = sub_25F369EE8(v19, v21, &v33);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2080;
      v23 = sub_25F3C469C();
      v25 = sub_25F369EE8(v23, v24, &v33);

      *(v18 + 24) = v25;
      _os_log_impl(&dword_25F342000, v16, v17, "Can't register %s for %s -- already registered: %s", v18, 0x20u);
      v26 = v31;
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v26, -1, -1);
      MEMORY[0x25F8DC6C0](v18, -1, -1);

      return (*(v30 + 8))(v11, v8);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      return (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    v28 = sub_25F35E5DC(&qword_27FD67400, type metadata accessor for PreviewEntryPoint);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v2 + 8);
    result = sub_25F35D088(v12, v28, a1, isUniquelyReferenced_nonNull_native, sub_25F3BC72C, sub_25F3B9CC4);
    *(v2 + 8) = v33;
  }

  return result;
}

uint64_t sub_25F35B294(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F3C2CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F3C354C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MainPreviewEntryPoint();
  v13 = *(v1 + 8);
  if (*(v13 + 16) && (v14 = sub_25F35C3F0(a1), (v15 & 1) != 0) && *(*(v13 + 56) + 16 * v14) != v12)
  {
    v32 = *(*(v13 + 56) + 16 * v14);
    sub_25F3C350C();
    (*(v5 + 16))(v7, a1, v4);
    v16 = sub_25F3C353C();
    v17 = sub_25F3C432C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v18 = 136315650;
      *(v18 + 4) = sub_25F369EE8(0xD000000000000015, 0x800000025F3CAA30, &v33);
      *(v18 + 12) = 2080;
      sub_25F35E5DC(&qword_27FD67388, MEMORY[0x277D40E58]);
      v19 = sub_25F3C455C();
      v30 = v9;
      v21 = v20;
      (*(v5 + 8))(v7, v4);
      v22 = sub_25F369EE8(v19, v21, &v33);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2080;
      v23 = sub_25F3C469C();
      v25 = sub_25F369EE8(v23, v24, &v33);

      *(v18 + 24) = v25;
      _os_log_impl(&dword_25F342000, v16, v17, "Can't register %s for %s -- already registered: %s", v18, 0x20u);
      v26 = v31;
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v26, -1, -1);
      MEMORY[0x25F8DC6C0](v18, -1, -1);

      return (*(v30 + 8))(v11, v8);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      return (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    v28 = sub_25F35E5DC(&qword_27FD673F8, type metadata accessor for MainPreviewEntryPoint);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v2 + 8);
    result = sub_25F35D088(v12, v28, a1, isUniquelyReferenced_nonNull_native, sub_25F3BC72C, sub_25F3B9CC4);
    *(v2 + 8) = v33;
  }

  return result;
}

uint64_t sub_25F35B6B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F3C2CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F3C354C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RunningAppEntryPoint();
  v13 = *(v1 + 8);
  if (*(v13 + 16) && (v14 = sub_25F35C3F0(a1), (v15 & 1) != 0) && *(*(v13 + 56) + 16 * v14) != v12)
  {
    v32 = *(*(v13 + 56) + 16 * v14);
    sub_25F3C350C();
    (*(v5 + 16))(v7, a1, v4);
    v16 = sub_25F3C353C();
    v17 = sub_25F3C432C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v18 = 136315650;
      *(v18 + 4) = sub_25F369EE8(0xD000000000000014, 0x800000025F3CAA10, &v33);
      *(v18 + 12) = 2080;
      sub_25F35E5DC(&qword_27FD67388, MEMORY[0x277D40E58]);
      v19 = sub_25F3C455C();
      v30 = v9;
      v21 = v20;
      (*(v5 + 8))(v7, v4);
      v22 = sub_25F369EE8(v19, v21, &v33);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2080;
      v23 = sub_25F3C469C();
      v25 = sub_25F369EE8(v23, v24, &v33);

      *(v18 + 24) = v25;
      _os_log_impl(&dword_25F342000, v16, v17, "Can't register %s for %s -- already registered: %s", v18, 0x20u);
      v26 = v31;
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v26, -1, -1);
      MEMORY[0x25F8DC6C0](v18, -1, -1);

      return (*(v30 + 8))(v11, v8);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      return (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    v28 = sub_25F35E5DC(&qword_27FD673F0, type metadata accessor for RunningAppEntryPoint);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v2 + 8);
    result = sub_25F35D088(v12, v28, a1, isUniquelyReferenced_nonNull_native, sub_25F3BC72C, sub_25F3B9CC4);
    *(v2 + 8) = v33;
  }

  return result;
}

uint64_t sub_25F35BEAC@<X0>(unint64_t *a1@<X8>)
{
  v2 = sub_25F3C2CAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84F90];
  *a1 = sub_25F354104(MEMORY[0x277D84F90]);
  a1[1] = sub_25F3542EC(v6);
  sub_25F3C2C4C();
  sub_25F359314(v5);
  v7 = *(v3 + 8);
  v7(v5, v2);
  sub_25F3C2C5C();
  sub_25F3596F4(v5);
  v7(v5, v2);
  sub_25F3C2C7C();
  sub_25F359AD4(v5);
  v7(v5, v2);
  sub_25F3C2C6C();
  sub_25F359EB4(v5);
  v7(v5, v2);
  sub_25F3C2C9C();
  sub_25F35A2D8(v5);
  v7(v5, v2);
  sub_25F3C2C8C();
  sub_25F35A6B8(v5);
  v7(v5, v2);
  sub_25F3C2C3C();
  sub_25F35AE70(v5);
  v7(v5, v2);
  sub_25F3C2C2C();
  sub_25F35B294(v5);
  v7(v5, v2);
  sub_25F3C2C1C();
  sub_25F35B6B8(v5);
  return (v7)(v5, v2);
}

unint64_t sub_25F35C0C0(uint64_t a1)
{
  sub_25F3C23FC();
  v2 = MEMORY[0x277D40728];
  sub_25F35E5DC(&qword_27FD673D0, MEMORY[0x277D40728]);
  v3 = sub_25F3C3FBC();
  return sub_25F35C7AC(a1, v3, MEMORY[0x277D40728], &qword_27FD673D8, v2, MEMORY[0x277D40738]);
}

unint64_t sub_25F35C1D0(uint64_t a1)
{
  sub_25F3C2AAC();
  v2 = MEMORY[0x277D40C78];
  sub_25F35E5DC(&qword_27FD673B0, MEMORY[0x277D40C78]);
  v3 = sub_25F3C3FBC();
  return sub_25F35C7AC(a1, v3, MEMORY[0x277D40C78], &qword_27FD673B8, v2, MEMORY[0x277D40C88]);
}

unint64_t sub_25F35C2A4(uint64_t a1)
{
  sub_25F3C22BC();
  v2 = MEMORY[0x277D40708];
  sub_25F35E5DC(&qword_27FD673A0, MEMORY[0x277D40708]);
  v3 = sub_25F3C3FBC();
  return sub_25F35C7AC(a1, v3, MEMORY[0x277D40708], &qword_27FD673A8, v2, MEMORY[0x277D40718]);
}

unint64_t sub_25F35C378(uint64_t a1, uint64_t a2)
{
  sub_25F3C464C();
  sub_25F3C406C();
  v4 = sub_25F3C466C();

  return sub_25F35C94C(a1, a2, v4);
}

unint64_t sub_25F35C3F0(uint64_t a1)
{
  sub_25F3C2CAC();
  v2 = MEMORY[0x277D40E58];
  sub_25F35E5DC(&qword_27FD67438, MEMORY[0x277D40E58]);
  v3 = sub_25F3C3FBC();
  return sub_25F35C7AC(a1, v3, MEMORY[0x277D40E58], &qword_27FD67440, v2, MEMORY[0x277D40E68]);
}

unint64_t sub_25F35C4C4(uint64_t a1)
{
  sub_25F3C271C();
  v2 = MEMORY[0x277D40A08];
  sub_25F35E5DC(&qword_27FD673C0, MEMORY[0x277D40A08]);
  v3 = sub_25F3C3FBC();
  return sub_25F35C7AC(a1, v3, MEMORY[0x277D40A08], &qword_27FD673C8, v2, MEMORY[0x277D40A18]);
}

unint64_t sub_25F35C598(uint64_t a1)
{
  sub_25F3C2A8C();
  v2 = MEMORY[0x277D40C50];
  sub_25F35E5DC(&qword_27FD67390, MEMORY[0x277D40C50]);
  v3 = sub_25F3C3FBC();
  return sub_25F35C7AC(a1, v3, MEMORY[0x277D40C50], &qword_27FD67398, v2, MEMORY[0x277D40C60]);
}

unint64_t sub_25F35C66C(uint64_t a1)
{
  sub_25F3C2A2C();
  v2 = MEMORY[0x277D40C38];
  sub_25F35E5DC(&qword_27FD673E0, MEMORY[0x277D40C38]);
  v3 = sub_25F3C3FBC();
  return sub_25F35C7AC(a1, v3, MEMORY[0x277D40C38], &qword_27FD673E8, v2, MEMORY[0x277D40C48]);
}

unint64_t sub_25F35C740(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25F35C7AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_25F35E5DC(v23, v24);
      v19 = sub_25F3C3FCC();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_25F35C94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25F3C459C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_25F35CA04(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25F35C194(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25F3BC2E8();
      goto LABEL_7;
    }

    sub_25F3B8F40(v13, a3 & 1);
    v24 = sub_25F35C194(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25F3C45CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_25F3C2E1C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_25F35DEC8(v10, a2, a1, v16);
}

uint64_t sub_25F35CB6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F3C2AAC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25F35C1D0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25F3BC550();
      goto LABEL_7;
    }

    sub_25F3B928C(v17, a3 & 1);
    v22 = sub_25F35C1D0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25F35DF8C(v14, v11, a1, v20, MEMORY[0x277D40C78]);
    }

LABEL_15:
    result = sub_25F3C45CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_25F35CD4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_25F35C194(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_25F3BC578();
    result = v19;
    goto LABEL_8;
  }

  sub_25F3B9668(v16, a4 & 1);
  result = sub_25F35C194(a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = (v21[7] + 16 * result);
      *v22 = a1;
      v22[1] = a2;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_25F3C45CC();
  __break(1u);
  return result;
}

uint64_t sub_25F35CE84(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F3C23FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25F35C0C0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25F3BC6C8();
      goto LABEL_7;
    }

    sub_25F3B98CC(v17, a3 & 1);
    v23 = sub_25F35C0C0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25F35E2A0(v14, v11, a1, v20, MEMORY[0x277D40728], sub_25F351064);
    }

LABEL_15:
    result = sub_25F3C45CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 40 * v14;
  __swift_destroy_boxed_opaque_existential_0Tm(v21);

  return sub_25F3440A0(a1, v21);
}

uint64_t sub_25F35D088(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v28 = a5;
  v29 = a6;
  v7 = v6;
  v30 = a1;
  v11 = sub_25F3C2CAC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_25F35C3F0(a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  result = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= result && (a4 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v22 >= result && (a4 & 1) == 0)
  {
    result = v28();
    goto LABEL_9;
  }

  v29();
  result = sub_25F35C3F0(a3);
  if ((v21 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_25F3C45CC();
    __break(1u);
    return result;
  }

  v17 = result;
LABEL_9:
  v24 = v30;
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 16 * v17);
    *v26 = v30;
    v26[1] = a2;
  }

  else
  {
    (*(v12 + 16))(v14, a3, v11);
    return sub_25F35E124(v17, v14, v24, a2, v25, MEMORY[0x277D40E58]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaygroundRegistryEntry(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PlaygroundRegistryEntry(uint64_t result, int a2, int a3)
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

uint64_t sub_25F35D318(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F3C271C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25F35C4C4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25F3BCBAC();
      goto LABEL_7;
    }

    sub_25F3BA75C(v17, a3 & 1);
    v24 = sub_25F35C4C4(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25F35E048(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25F3C45CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for EntryPointIndex.UpdateState(0) - 8) + 72) * v14;

  return sub_25F35E3D4(a1, v22);
}

uint64_t sub_25F35D500(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F3C271C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25F35C4C4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25F3BCEB0();
      goto LABEL_7;
    }

    sub_25F3BABC0(v17, a3 & 1);
    v23 = sub_25F35C4C4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25F35E2A0(v14, v11, a1, v20, MEMORY[0x277D40A08], sub_25F351064);
    }

LABEL_15:
    result = sub_25F3C45CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 40 * v14;
  __swift_destroy_boxed_opaque_existential_0Tm(v21);

  return sub_25F3440A0(a1, v21);
}

uint64_t sub_25F35D704(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_25F3C2A2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_25F35C66C(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_25F3BD188();
      goto LABEL_9;
    }

    sub_25F3BAFA4(v18, a4 & 1);
    v21 = sub_25F35C66C(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_25F3C45CC();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_25F35E124(v15, v12, v23, a2, v24, MEMORY[0x277D40C38]);
  }
}

uint64_t sub_25F35D8F4(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F3C22BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25F35C2A4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25F3BD684();
      goto LABEL_7;
    }

    sub_25F3BB744(v17, a3 & 1);
    v23 = sub_25F35C2A4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25F35E2A0(v14, v11, a1, v20, MEMORY[0x277D40708], sub_25F351064);
    }

LABEL_15:
    result = sub_25F3C45CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 40 * v14;
  __swift_destroy_boxed_opaque_existential_0Tm(v21);

  return sub_25F3440A0(a1, v21);
}

uint64_t sub_25F35DAF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F3C2A8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25F35C598(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25F3BD6C0();
      goto LABEL_7;
    }

    sub_25F3BBB28(v17, a3 & 1);
    v22 = sub_25F35C598(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25F35E1E8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25F3C45CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_25F35DCC4(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F3C271C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25F35C4C4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25F3BD940();
      goto LABEL_7;
    }

    sub_25F3BBF04(v17, a3 & 1);
    v23 = sub_25F35C4C4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25F35E2A0(v14, v11, a1, v20, MEMORY[0x277D40A08], sub_25F351064);
    }

LABEL_15:
    result = sub_25F3C45CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 40 * v14;
  __swift_destroy_boxed_opaque_existential_0Tm(v21);

  return sub_25F3440A0(a1, v21);
}

uint64_t sub_25F35DEC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_25F3C2E1C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_25F35DF8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_25F35E048(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25F3C271C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  updated = type metadata accessor for EntryPointIndex.UpdateState(0);
  result = sub_25F35E370(a3, v10 + *(*(updated - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_25F35E124(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a5[6];
  v12 = a6(0);
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v14 = (a5[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a4;
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_25F35E1E8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25F3C2A8C();
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

uint64_t sub_25F35E2A0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  result = a6(a3, a4[7] + 40 * a1);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_25F35E370(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for EntryPointIndex.UpdateState(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_25F35E3D4(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for EntryPointIndex.UpdateState(0);
  (*(*(updated - 8) + 40))(a2, a1, updated);
  return a2;
}

unint64_t sub_25F35E438()
{
  result = qword_27FD67408;
  if (!qword_27FD67408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67408);
  }

  return result;
}

unint64_t sub_25F35E48C()
{
  result = qword_27FD67410;
  if (!qword_27FD67410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67410);
  }

  return result;
}

unint64_t sub_25F35E4E0()
{
  result = qword_27FD67420;
  if (!qword_27FD67420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67420);
  }

  return result;
}

unint64_t sub_25F35E534()
{
  result = qword_27FD67428;
  if (!qword_27FD67428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67428);
  }

  return result;
}

unint64_t sub_25F35E588()
{
  result = qword_27FD67430;
  if (!qword_27FD67430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67430);
  }

  return result;
}

uint64_t sub_25F35E5DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F35E624(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_25F3C445C();

    v6 = 0xD000000000000023;
  }

  else
  {
    sub_25F3C445C();

    v6 = 0xD000000000000019;
  }

  MEMORY[0x25F8DB8E0](a1, a2);
  return v6;
}

uint64_t sub_25F35E700(uint64_t a1)
{
  v2 = sub_25F35EB34();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F35E73C(uint64_t a1)
{
  v2 = sub_25F35EB34();

  return MEMORY[0x2821A07F0](a1, v2);
}

id sub_25F35E778()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = sub_25F3C1F2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C1EAC();
  v4 = sub_25F3C1F1C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v8 = sub_25F3C3FDC();
  v9 = [v7 initWithPath_];

  if (v9)
  {
    v24[0] = 0;
    if ([v9 loadAndReturnError_])
    {
      v10 = v24[0];
    }

    else
    {
      v12 = v24[0];
      v13 = sub_25F3C1E7C();

      swift_willThrow();
      v22[1] = v4;
      v22[2] = v6;
      v23 = 1;
      v14 = v13;
      sub_25F35EB34();
      sub_25F3C2FEC();

      v15 = v25;
      v16 = __swift_project_boxed_opaque_existential_1(v24, v25);
      v17 = *(v15 - 8);
      MEMORY[0x28223BE20](v16);
      v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v19);
      if (sub_25F3C456C())
      {
        (*(v17 + 8))(v19, v15);
      }

      else
      {
        swift_allocError();
        (*(v17 + 32))(v20, v19, v15);
      }

      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }
  }

  else
  {
    sub_25F35EAE0();
    swift_allocError();
    *v11 = v4;
    *(v11 + 8) = v6;
    *(v11 + 16) = 0;
    swift_willThrow();
  }

  return v9;
}

unint64_t sub_25F35EAE0()
{
  result = qword_27FD67448;
  if (!qword_27FD67448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67448);
  }

  return result;
}

unint64_t sub_25F35EB34()
{
  result = qword_27FD67450;
  if (!qword_27FD67450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67450);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F35EBA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F35EBF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_25F35EC58()
{
  result = qword_27FD67458;
  if (!qword_27FD67458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67458);
  }

  return result;
}