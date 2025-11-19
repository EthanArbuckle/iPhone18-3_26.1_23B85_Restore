uint64_t sub_264BA4EFC()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_264CC3B2C();
  }

  else
  {
    sub_264CC3ACC();
  }

  return sub_264CC3B5C();
}

uint64_t sub_264BA4F64()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_264CC3B2C();
    sub_264CC3B5C();
    sub_264C637A4();
  }

  else
  {
    sub_264CC3ACC();
    sub_264CC3B5C();
    sub_264C637F0(&qword_27FFA9048, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_264BA5058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264BA50C8()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_264CC3E4C();

    return sub_264CC3B5C();
  }

  else
  {
    sub_264CC3B9C();
    swift_getWitnessTable();
    sub_264CC3DAC();
    sub_264CC3B5C();
    sub_264CC487C();
    swift_getWitnessTable();
    sub_264CC3B9C();
    swift_getWitnessTable();
    sub_264CC3DAC();
    return sub_264CC3B5C();
  }
}

uint64_t sub_264BA522C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_264CC3E4C();
    sub_264CC3B5C();
  }

  else
  {
    sub_264CC3B9C();
    swift_getWitnessTable();
    sub_264CC3DAC();
    sub_264CC3B5C();
    sub_264CC487C();
    swift_getWitnessTable();
    sub_264CC3B9C();
    swift_getWitnessTable();
    sub_264CC3DAC();
    sub_264CC3B5C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_264BA544C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9100);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264BA54C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9100);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264BA561C()
{

  return swift_deallocObject();
}

uint64_t sub_264BA5660()
{

  return swift_deallocObject();
}

uint64_t sub_264BA56B0()
{
  sub_264CC3D9C();
  sub_264C713C4();
  swift_getWitnessTable();
  sub_264CC432C();
  sub_264CC3ACC();
  sub_264CC3B5C();
  swift_getWitnessTable();
  sub_264C71528();
  return swift_getWitnessTable();
}

uint64_t sub_264BA578C()
{

  return swift_deallocObject();
}

uint64_t sub_264BA57D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264BA5838()
{
  sub_264C777A8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_264BA587C()
{
  swift_unknownObjectRelease();
  sub_264C777A8(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_264BA58C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264BA5948()
{

  return swift_deallocObject();
}

uint64_t sub_264BA5984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264CC3C3C();
  *a1 = result;
  return result;
}

uint64_t sub_264BA59DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264CC3BDC();
  *a1 = result;
  return result;
}

uint64_t sub_264BA5A9C()
{
  v1 = sub_264CC34AC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_264BA5B3C()
{
  sub_264CC43FC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9728);
  sub_264CC3B5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9730);
  sub_264CC3B5C();
  swift_getWitnessTable();
  sub_264C64918(&qword_27FFA9738, &qword_27FFA9728);
  swift_getWitnessTable();
  sub_264C64918(qword_27FFA9740, &qword_27FFA9730);
  return swift_getWitnessTable();
}

uint64_t sub_264BA5CBC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA97C8);
  sub_264CC3B5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA97D0);
  sub_264CC3B5C();
  sub_264C64918(&qword_27FFA97D8, &qword_27FFA97C8);
  swift_getWitnessTable();
  sub_264C64918(&qword_27FFA97E0, &qword_27FFA97D0);
  return swift_getWitnessTable();
}

uint64_t sub_264BA5DFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9850);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264BA5E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9850);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264BA5F1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264CC3C5C();
  *a1 = result & 1;
  return result;
}

void sub_264BA5F98(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_264CC459C();
  [v2 setBundleIdentifier_];
}

uint64_t sub_264BA6008()
{

  return swift_deallocObject();
}

uint64_t sub_264BA60B4()
{

  return swift_deallocObject();
}

uint64_t sub_264BA611C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264CC3C9C();
  *a1 = result;
  return result;
}

uint64_t sub_264BA6174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA99B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264BA61E4()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6314()
{

  return swift_deallocObject();
}

uint64_t sub_264BA634C()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264C80F08();
  *a1 = result;
  return result;
}

uint64_t sub_264BA63C0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA63F8()
{

  return swift_deallocObject();
}

uint64_t sub_264BA644C()
{
  v1 = sub_264CC34AC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA64FC()
{
  v1 = sub_264CC34AC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA65AC()
{

  return swift_deallocObject();
}

uint64_t sub_264BA65E4()
{
  v1 = sub_264CC34AC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_264BA6684()
{
  v1 = sub_264CC34AC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA6734()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BE8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_264CD21F0;
  v1 = objc_opt_self();
  v2 = [v1 bundle];
  v3 = sub_264CC2EFC();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  *(v0 + 48) = 1;
  v6 = [v1 bundle];
  v7 = sub_264CC2EFC();
  v9 = v8;

  *(v0 + 56) = v7;
  *(v0 + 64) = v9;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t sub_264BA68D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_264BA6910()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6950()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6988(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_264BA69EC()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6A24()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA6AA8()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6AE8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA6BF0()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6C28()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_264BA6C68()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA6CAC()
{

  return swift_deallocObject();
}

__n128 sub_264BA6D4C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_264BA6D70@<X0>(uint64_t a1@<X8>)
{
  result = sub_264CC3C7C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_264BA6DE0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9FF8);
  sub_264CC3B5C();
  sub_264CC3D6C();
  sub_264CC3B5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA000);
  sub_264CC3B5C();
  sub_264C64918(&qword_27FFAA008, &qword_27FFA9FF8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_264C64918(&qword_27FFAA010, &qword_27FFAA000);
  swift_getWitnessTable();
  sub_264CC423C();
  swift_getWitnessTable();
  sub_264CA54FC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9688);
  sub_264CC3B5C();
  type metadata accessor for ContentRestrictionValue();
  sub_264CC487C();
  sub_264CC46FC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA020);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_264CA5550();
  sub_264CC3A3C();
  swift_getWitnessTable();
  sub_264CC43BC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_264CC3ABC();
  swift_getWitnessTable();
  sub_264CC42FC();
  sub_264CC3B5C();
  swift_getTupleTypeMetadata3();
  sub_264CC449C();
  swift_getWitnessTable();
  sub_264CC42CC();
  swift_getTupleTypeMetadata3();
  sub_264CC449C();
  swift_getWitnessTable();
  sub_264CC42CC();
  sub_264CC3D9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ContentRestrictionRow();
  return swift_getWitnessTable();
}

uint64_t sub_264BA735C()
{

  return swift_deallocObject();
}

uint64_t sub_264BA7394(uint64_t a1, uint64_t a2)
{
  v4 = sub_264CC34AC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264BA7400(uint64_t a1, uint64_t a2)
{
  v4 = sub_264CC34AC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264BA7470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264CC387C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264BA7530(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264CC387C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_264BA7620@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_264BA76F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA7730()
{

  return swift_deallocObject();
}

uint64_t sub_264BA7768()
{
  MEMORY[0x26674C850](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_264BA77AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA77F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_264BA782C()
{
  MEMORY[0x26674C850](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_264BA7864()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA7960()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA7AA0()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA7B88()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA7C64()
{

  return swift_deallocObject();
}

uint64_t sub_264BA7CAC()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA7E20()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA7F58()
{

  return swift_deallocObject();
}

uint64_t sub_264BA7F90()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA80B8()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA81B4()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA82B0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAA290) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_264CC2F6C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_264BA83D4()
{
  MEMORY[0x26674C850](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_264BA840C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA8450()
{

  return swift_deallocObject();
}

uint64_t sub_264BA8488()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_264BA84C8()
{
  v1 = sub_264CC34AC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_264BA8580()
{

  return swift_deallocObject();
}

uint64_t sub_264BA85C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_264BA8618()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA3C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA3D0);
  sub_264C64918(&qword_27FFAA3D8, &qword_27FFAA3C8);
  sub_264C64918(&qword_27FFAA3E0, &qword_27FFAA3D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_264BA871C()
{
  MEMORY[0x26674C850](v0 + 16);

  return swift_deallocObject();
}

void sub_264BABDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_264BB8154(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x264BB8124);
}

void sub_264BBA0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264BBB044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264BC2D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264BC4F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264BCAAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_264BD7034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id STSupportedConfigurations()
{
  if (STSupportedConfigurations_onceToken != -1)
  {
    STSupportedConfigurations_cold_1();
  }

  v1 = STSupportedConfigurations_knownConfigurationNames;

  return v1;
}

void sub_264BE8560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __STSupportedConfigurations_block_invoke()
{
  v3[22] = *MEMORY[0x277D85DE8];
  v2[0] = @"STCustomRestrictionConfiguration";
  v3[0] = objc_opt_class();
  v2[1] = @"STMCFeatureConfiguration";
  v3[1] = objc_opt_class();
  v2[2] = @"STSBCapabilityConfiguration";
  v3[2] = objc_opt_class();
  v2[3] = @"account.settings";
  v3[3] = objc_opt_class();
  v2[4] = @"application.settings";
  v3[4] = objc_opt_class();
  v2[5] = @"application.store";
  v3[5] = objc_opt_class();
  v2[6] = @"legacy.restrictions.apps";
  v3[6] = objc_opt_class();
  v2[7] = @"media.settings";
  v3[7] = objc_opt_class();
  v2[8] = @"network.cellular.settings";
  v3[8] = objc_opt_class();
  v2[9] = @"passcode.settings";
  v3[9] = objc_opt_class();
  v2[10] = @"system.airdrop";
  v3[10] = objc_opt_class();
  v2[11] = @"system.camera";
  v3[11] = objc_opt_class();
  v2[12] = @"system.carplay";
  v3[12] = objc_opt_class();
  v2[13] = @"system.donotdisturb";
  v3[13] = objc_opt_class();
  v2[14] = @"system.gamecenter";
  v3[14] = objc_opt_class();
  v2[15] = @"system.icloud";
  v3[15] = objc_opt_class();
  v2[16] = @"system.music";
  v3[16] = objc_opt_class();
  v2[17] = @"system.ratings";
  v3[17] = objc_opt_class();
  v2[18] = @"system.siri";
  v3[18] = objc_opt_class();
  v2[19] = @"system.tvprovider";
  v3[19] = objc_opt_class();
  v2[20] = @"system.webcontentfilter.basic";
  v3[20] = objc_opt_class();
  v2[21] = @"system.web.tracking";
  v3[21] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:22];
  v1 = STSupportedConfigurations_knownConfigurationNames;
  STSupportedConfigurations_knownConfigurationNames = v0;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_264BEEDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264BF2F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264BF99E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C00650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C01458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C03928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_264C081A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak((v28 + 40));
  _Unwind_Resume(a1);
}

void sub_264C08D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264C160D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_264C1AD2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_264C1B050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C2357C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264C23D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __STRestrictionTypeWithString_block_invoke()
{
  v19[76] = *MEMORY[0x277D85DE8];
  v18[0] = @"application.store.allowAppInstallation";
  v18[1] = @"application.store.allowUIAppInstallation";
  v19[0] = &unk_28769D3A0;
  v19[1] = &unk_28769D3A0;
  v18[2] = @"application.store.allowMarketplaceAppInstallation";
  v18[3] = @"application.store.allowWebDistributionAppInstallation";
  v19[2] = &unk_28769D3A0;
  v19[3] = &unk_28769D3A0;
  v18[4] = @"application.store.allowAppRemoval";
  v18[5] = @"application.store.allowInAppPurchases";
  v19[4] = &unk_28769D3A0;
  v19[5] = &unk_28769D3A0;
  v18[6] = @"application.store.forceITunesStorePasswordEntry";
  v18[7] = @"legacy.restrictions.apps.blacklistedAppBundleIDs";
  v19[6] = &unk_28769D3B8;
  v19[7] = &unk_28769D3D0;
  v18[8] = @"legacy.restrictions.apps.allowiTunes";
  v18[9] = @"legacy.restrictions.apps.allowNews";
  v19[8] = &unk_28769D3A0;
  v19[9] = &unk_28769D3A0;
  v18[10] = @"legacy.restrictions.apps.allowSafari";
  v18[11] = @"legacy.restrictions.apps.allowPodcasts";
  v19[10] = &unk_28769D3A0;
  v19[11] = &unk_28769D3A0;
  v18[12] = @"legacy.restrictions.apps.allowVideoConferencing";
  v18[13] = @"legacy.restrictions.apps.allowGroupActivity";
  v19[12] = &unk_28769D3A0;
  v19[13] = &unk_28769D3A0;
  v18[14] = @"media.settings.allowBookstore";
  v18[15] = @"system.camera.allowCamera";
  v19[14] = &unk_28769D3A0;
  v19[15] = &unk_28769D3A0;
  v18[16] = @"system.airdrop.allowAirDrop";
  v18[17] = @"system.carplay.allowVehicleUI";
  v19[16] = &unk_28769D3A0;
  v19[17] = &unk_28769D3A0;
  v18[18] = @"system.ratings.ratingRegion";
  v18[19] = @"system.ratings.allowExplicitContent";
  v19[18] = &unk_28769D3E8;
  v19[19] = &unk_28769D3A0;
  v18[20] = @"system.music.allowMusicVideos";
  v18[21] = @"system.music.allowMusicArtistActivity";
  v19[20] = &unk_28769D3A0;
  v19[21] = &unk_28769D3A0;
  v18[22] = @"system.ratings.ratingMovies";
  v18[23] = @"system.ratings.allowShowingUndownloadedMovies";
  v19[22] = &unk_28769D3E8;
  v19[23] = &unk_28769D3A0;
  v18[24] = @"system.ratings.ratingTVShows";
  v18[25] = @"system.ratings.allowShowingUndownloadedTV";
  v19[24] = &unk_28769D3E8;
  v19[25] = &unk_28769D3A0;
  v18[26] = @"media.settings.allowBookstoreErotica";
  v18[27] = @"system.ratings.ratingApps";
  v19[26] = &unk_28769D3A0;
  v19[27] = &unk_28769D3E8;
  v18[28] = @"application.store.allowAppClips";
  v19[28] = &unk_28769D3A0;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x2876726E8];
  v18[29] = v17;
  v18[30] = @"system.webcontentfilter.basic.useContentFilter";
  v19[29] = &unk_28769D3E8;
  v19[30] = &unk_28769D3B8;
  v18[31] = @"system.webcontentfilter.basic.whiteListEnabled";
  v18[32] = @"system.webcontentfilter.basic.siteWhiteList";
  v19[31] = &unk_28769D3B8;
  v19[32] = &unk_28769D3D0;
  v18[33] = @"system.webcontentfilter.basic.filterWhiteList";
  v18[34] = @"system.webcontentfilter.basic.filterBlackList";
  v19[33] = &unk_28769D3D0;
  v19[34] = &unk_28769D3D0;
  v18[35] = @"system.gamecenter.allowMultiplayerGaming";
  v18[36] = @"system.gamecenter.MultiplayerGamesSpecifierName";
  v19[35] = &unk_28769D3A0;
  v19[36] = &unk_28769D3E8;
  v18[37] = @"system.gamecenter.allowAddingGameCenterFriends";
  v18[38] = @"system.gamecenter.allowGameCenterFriendsSharingModification";
  v19[37] = &unk_28769D3A0;
  v19[38] = &unk_28769D3A0;
  v18[39] = @"system.camera.allowScreenRecording";
  v19[39] = &unk_28769D3A0;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"system.gamecenter", 0x287672688];
  v18[40] = v16;
  v18[41] = @"system.gamecenter.allowGameCenterPrivateMessaging";
  v19[40] = &unk_28769D3A0;
  v19[41] = &unk_28769D3A0;
  v18[42] = @"system.gamecenter.allowGameCenterProfilePrivacyModification";
  v18[43] = @"system.gamecenter.allowGameCenterProfileModification";
  v19[42] = &unk_28769D3A0;
  v19[43] = &unk_28769D3A0;
  v18[44] = @"system.siri.allowAssistant";
  v18[45] = @"system.siri.allowDictation";
  v19[44] = &unk_28769D3A0;
  v19[45] = &unk_28769D3A0;
  v18[46] = @"system.siri.allowAssistantUserGeneratedContent";
  v18[47] = @"system.siri.forceAssistantProfanityFilter";
  v19[46] = &unk_28769D3A0;
  v19[47] = &unk_28769D3B8;
  v18[48] = @"system.siri.allowMathPaperSolving";
  v18[49] = @"system.siri.allowKeyboardMathSolving";
  v19[48] = &unk_28769D3A0;
  v19[49] = &unk_28769D3A0;
  v18[50] = @"system.siri.allowWritingTools";
  v18[51] = @"system.siri.allowExternalIntelligenceIntegrations";
  v19[50] = &unk_28769D3A0;
  v19[51] = &unk_28769D3A0;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x287672708];
  v18[52] = v15;
  v19[52] = &unk_28769D3A0;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x287672728];
  v18[53] = v14;
  v18[54] = @"system.icloud.allowFindMyFriendsModification";
  v19[53] = &unk_28769D3A0;
  v19[54] = &unk_28769D3A0;
  v18[55] = @"passcode.settings.allowPasscodeModification";
  v18[56] = @"account.settings.allowAccountModification";
  v19[55] = &unk_28769D3A0;
  v19[56] = &unk_28769D3A0;
  v18[57] = @"system.music.allowSpeakerVolumeLimitModification";
  v19[57] = &unk_28769D3A0;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x2876726C8];
  v18[58] = v13;
  v18[59] = @"network.cellular.settings.allowAppCellularDataModification";
  v19[58] = &unk_28769D3A0;
  v19[59] = &unk_28769D3A0;
  v18[60] = @"network.cellular.settings.allowCellularPlanModification";
  v18[61] = @"system.donotdisturb.allowDriverDoNotDisturbModifications";
  v19[60] = &unk_28769D3A0;
  v19[61] = &unk_28769D3A0;
  v18[62] = @"system.tvprovider.allowTVProviderModification";
  v18[63] = @"application.settings.allowAutomaticAppUpdatesModification";
  v19[62] = &unk_28769D3A0;
  v19[63] = &unk_28769D3A0;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672768];
  v18[64] = v12;
  v19[64] = &unk_28769D3A0;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x2876727A8];
  v18[65] = v11;
  v19[65] = &unk_28769D3A0;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x2876727E8];
  v18[66] = v10;
  v19[66] = &unk_28769D3A0;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672868];
  v18[67] = v9;
  v19[67] = &unk_28769D3A0;
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672848];
  v18[68] = v0;
  v19[68] = &unk_28769D3A0;
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x2876727C8];
  v18[69] = v1;
  v19[69] = &unk_28769D3A0;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672828];
  v18[70] = v2;
  v19[70] = &unk_28769D3A0;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672888];
  v18[71] = v3;
  v19[71] = &unk_28769D3A0;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672748];
  v18[72] = v4;
  v19[72] = &unk_28769D3A0;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672808];
  v18[73] = v5;
  v19[73] = &unk_28769D3A0;
  v18[74] = @"system.web.tracking.forceLimitAdTracking";
  v19[74] = &unk_28769D3B8;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672788];
  v18[75] = v6;
  v19[75] = &unk_28769D3A0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:76];
  v8 = STRestrictionTypeWithString_restrictionItemTypes;
  STRestrictionTypeWithString_restrictionItemTypes = v7;
}

uint64_t __createDevices_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = [a2 coreDuetIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

void __STRestrictionTypeWithString_block_invoke_0()
{
  v19[76] = *MEMORY[0x277D85DE8];
  v18[0] = @"application.store.allowAppInstallation";
  v18[1] = @"application.store.allowUIAppInstallation";
  v19[0] = &unk_28769D430;
  v19[1] = &unk_28769D430;
  v18[2] = @"application.store.allowMarketplaceAppInstallation";
  v18[3] = @"application.store.allowWebDistributionAppInstallation";
  v19[2] = &unk_28769D430;
  v19[3] = &unk_28769D430;
  v18[4] = @"application.store.allowAppRemoval";
  v18[5] = @"application.store.allowInAppPurchases";
  v19[4] = &unk_28769D430;
  v19[5] = &unk_28769D430;
  v18[6] = @"application.store.forceITunesStorePasswordEntry";
  v18[7] = @"legacy.restrictions.apps.blacklistedAppBundleIDs";
  v19[6] = &unk_28769D448;
  v19[7] = &unk_28769D460;
  v18[8] = @"legacy.restrictions.apps.allowiTunes";
  v18[9] = @"legacy.restrictions.apps.allowNews";
  v19[8] = &unk_28769D430;
  v19[9] = &unk_28769D430;
  v18[10] = @"legacy.restrictions.apps.allowSafari";
  v18[11] = @"legacy.restrictions.apps.allowPodcasts";
  v19[10] = &unk_28769D430;
  v19[11] = &unk_28769D430;
  v18[12] = @"legacy.restrictions.apps.allowVideoConferencing";
  v18[13] = @"legacy.restrictions.apps.allowGroupActivity";
  v19[12] = &unk_28769D430;
  v19[13] = &unk_28769D430;
  v18[14] = @"media.settings.allowBookstore";
  v18[15] = @"system.camera.allowCamera";
  v19[14] = &unk_28769D430;
  v19[15] = &unk_28769D430;
  v18[16] = @"system.airdrop.allowAirDrop";
  v18[17] = @"system.carplay.allowVehicleUI";
  v19[16] = &unk_28769D430;
  v19[17] = &unk_28769D430;
  v18[18] = @"system.ratings.ratingRegion";
  v18[19] = @"system.ratings.allowExplicitContent";
  v19[18] = &unk_28769D478;
  v19[19] = &unk_28769D430;
  v18[20] = @"system.music.allowMusicVideos";
  v18[21] = @"system.music.allowMusicArtistActivity";
  v19[20] = &unk_28769D430;
  v19[21] = &unk_28769D430;
  v18[22] = @"system.ratings.ratingMovies";
  v18[23] = @"system.ratings.allowShowingUndownloadedMovies";
  v19[22] = &unk_28769D478;
  v19[23] = &unk_28769D430;
  v18[24] = @"system.ratings.ratingTVShows";
  v18[25] = @"system.ratings.allowShowingUndownloadedTV";
  v19[24] = &unk_28769D478;
  v19[25] = &unk_28769D430;
  v18[26] = @"media.settings.allowBookstoreErotica";
  v18[27] = @"system.ratings.ratingApps";
  v19[26] = &unk_28769D430;
  v19[27] = &unk_28769D478;
  v18[28] = @"application.store.allowAppClips";
  v19[28] = &unk_28769D430;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x2876726E8];
  v18[29] = v17;
  v18[30] = @"system.webcontentfilter.basic.useContentFilter";
  v19[29] = &unk_28769D478;
  v19[30] = &unk_28769D448;
  v18[31] = @"system.webcontentfilter.basic.whiteListEnabled";
  v18[32] = @"system.webcontentfilter.basic.siteWhiteList";
  v19[31] = &unk_28769D448;
  v19[32] = &unk_28769D460;
  v18[33] = @"system.webcontentfilter.basic.filterWhiteList";
  v18[34] = @"system.webcontentfilter.basic.filterBlackList";
  v19[33] = &unk_28769D460;
  v19[34] = &unk_28769D460;
  v18[35] = @"system.gamecenter.allowMultiplayerGaming";
  v18[36] = @"system.gamecenter.MultiplayerGamesSpecifierName";
  v19[35] = &unk_28769D430;
  v19[36] = &unk_28769D478;
  v18[37] = @"system.gamecenter.allowAddingGameCenterFriends";
  v18[38] = @"system.gamecenter.allowGameCenterFriendsSharingModification";
  v19[37] = &unk_28769D430;
  v19[38] = &unk_28769D430;
  v18[39] = @"system.camera.allowScreenRecording";
  v19[39] = &unk_28769D430;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"system.gamecenter", 0x287672688];
  v18[40] = v16;
  v18[41] = @"system.gamecenter.allowGameCenterPrivateMessaging";
  v19[40] = &unk_28769D430;
  v19[41] = &unk_28769D430;
  v18[42] = @"system.gamecenter.allowGameCenterProfilePrivacyModification";
  v18[43] = @"system.gamecenter.allowGameCenterProfileModification";
  v19[42] = &unk_28769D430;
  v19[43] = &unk_28769D430;
  v18[44] = @"system.siri.allowAssistant";
  v18[45] = @"system.siri.allowDictation";
  v19[44] = &unk_28769D430;
  v19[45] = &unk_28769D430;
  v18[46] = @"system.siri.allowAssistantUserGeneratedContent";
  v18[47] = @"system.siri.forceAssistantProfanityFilter";
  v19[46] = &unk_28769D430;
  v19[47] = &unk_28769D448;
  v18[48] = @"system.siri.allowMathPaperSolving";
  v18[49] = @"system.siri.allowKeyboardMathSolving";
  v19[48] = &unk_28769D430;
  v19[49] = &unk_28769D430;
  v18[50] = @"system.siri.allowWritingTools";
  v18[51] = @"system.siri.allowExternalIntelligenceIntegrations";
  v19[50] = &unk_28769D430;
  v19[51] = &unk_28769D430;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x287672708];
  v18[52] = v15;
  v19[52] = &unk_28769D430;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x287672728];
  v18[53] = v14;
  v18[54] = @"system.icloud.allowFindMyFriendsModification";
  v19[53] = &unk_28769D430;
  v19[54] = &unk_28769D430;
  v18[55] = @"passcode.settings.allowPasscodeModification";
  v18[56] = @"account.settings.allowAccountModification";
  v19[55] = &unk_28769D430;
  v19[56] = &unk_28769D430;
  v18[57] = @"system.music.allowSpeakerVolumeLimitModification";
  v19[57] = &unk_28769D430;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x2876726C8];
  v18[58] = v13;
  v18[59] = @"network.cellular.settings.allowAppCellularDataModification";
  v19[58] = &unk_28769D430;
  v19[59] = &unk_28769D430;
  v18[60] = @"network.cellular.settings.allowCellularPlanModification";
  v18[61] = @"system.donotdisturb.allowDriverDoNotDisturbModifications";
  v19[60] = &unk_28769D430;
  v19[61] = &unk_28769D430;
  v18[62] = @"system.tvprovider.allowTVProviderModification";
  v18[63] = @"application.settings.allowAutomaticAppUpdatesModification";
  v19[62] = &unk_28769D430;
  v19[63] = &unk_28769D430;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672768];
  v18[64] = v12;
  v19[64] = &unk_28769D430;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x2876727A8];
  v18[65] = v11;
  v19[65] = &unk_28769D430;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x2876727E8];
  v18[66] = v10;
  v19[66] = &unk_28769D430;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672868];
  v18[67] = v9;
  v19[67] = &unk_28769D430;
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672848];
  v18[68] = v0;
  v19[68] = &unk_28769D430;
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x2876727C8];
  v18[69] = v1;
  v19[69] = &unk_28769D430;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672828];
  v18[70] = v2;
  v19[70] = &unk_28769D430;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672888];
  v18[71] = v3;
  v19[71] = &unk_28769D430;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672748];
  v18[72] = v4;
  v19[72] = &unk_28769D430;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672808];
  v18[73] = v5;
  v19[73] = &unk_28769D430;
  v18[74] = @"system.web.tracking.forceLimitAdTracking";
  v19[74] = &unk_28769D448;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672788];
  v18[75] = v6;
  v19[75] = &unk_28769D430;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:76];
  v8 = STRestrictionTypeWithString_restrictionItemTypes_0;
  STRestrictionTypeWithString_restrictionItemTypes_0 = v7;
}

void sub_264C2B170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFACircleStateControllerClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FACircleStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFACircleStateControllerClass_block_invoke_cold_1();
  }

  getFACircleStateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FamilyCircleUILibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __FamilyCircleUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279B7E200;
    v4 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FamilyCircleUILibraryCore_frameworkLibrary;
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    FamilyCircleUILibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFACircleContextClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FACircleContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFACircleContextClass_block_invoke_cold_1();
  }

  getFACircleContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFACircleEventTypeInitiateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FamilyCircleUILibrary();
  result = dlsym(v2, "FACircleEventTypeInitiate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFACircleEventTypeInitiateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFACircleClientNameScreenTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FamilyCircleUILibrary();
  result = dlsym(v2, "FACircleClientNameScreenTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFACircleClientNameScreenTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_264C2BB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264C2F694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C3258C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C32D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 168), 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264C348BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264C35B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264C37038(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_264C37AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264C37C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264C37EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id STUIObjectDescriptionWithProperties(void *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v11 = v4;
  if (v4)
  {
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v11;
    v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = MEMORY[0x277CCACA8];
          v19 = [v3 valueForKeyPath:v17];
          v20 = [v18 stringWithFormat:@"%@='%@'", v17, v19];
          [v12 addObject:v20];
        }

        v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    v21 = [v12 componentsJoinedByString:{@", "}];
    v28 = expandedObjectDescription(v3, @"%@", v22, v23, v24, v25, v26, v27, v21);
  }

  else
  {
    v28 = expandedObjectDescription(v3, 0, v5, v6, v7, v8, v9, v10, v30);
  }

  return v28;
}

id expandedObjectDescription(void *a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (a2)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = a2;
    a2 = [[v11 alloc] initWithFormat:v12 arguments:&a9];
  }

  v13 = [(__CFString *)a2 length];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = v16;
  v18 = @"; ";
  v19 = &stru_28766E5A8;
  if (!v13)
  {
    v18 = &stru_28766E5A8;
  }

  if (a2)
  {
    v19 = a2;
  }

  v20 = [v14 stringWithFormat:@"<%@: %p%@%@>", v16, v10, v18, v19];

  return v20;
}

void sub_264C432A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264C44580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C46B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264C49A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose((v50 - 248), 8);
  _Block_object_dispose((v50 - 200), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264C54868(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Unwind_Resume(a1);
}

void sub_264C57ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void __dailyUsageDeltaFromHistoricalAverageForWeekday_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v3 = [*(a1 + 32) objectForKeyedSubscript:v9];
  [v3 doubleValue];
  *(*(*(a1 + 48) + 8) + 24) = v4 + *(*(*(a1 + 48) + 8) + 24);

  v5 = *(*(*(a1 + 56) + 8) + 24);
  v6 = [*(a1 + 40) objectForKeyedSubscript:v9];
  v7 = [v6 unsignedIntegerValue];

  if (v5 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  *(*(*(a1 + 56) + 8) + 24) = v8;
}

void __weeklyUsageDeltaFromHistoricalAverage_block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) dateByAddingUnit:16 value:a2 toDate:*(a1 + 40) options:0];
  v3 = [*(a1 + 32) components:8766 fromDate:v6];
  v4 = [*(a1 + 48) objectForKeyedSubscript:v3];
  [v4 doubleValue];
  *(*(*(a1 + 56) + 8) + 24) = v5 + *(*(*(a1 + 56) + 8) + 24);
}

void sub_264C58C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_264C61164()
{
  swift_getKeyPath();
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
  sub_264CC308C();

  return *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection);
}

uint64_t sub_264C61260(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection) != result)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
    sub_264CC307C();
  }

  return result;
}

uint64_t sub_264C6136C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
  sub_264CC308C();

  *a2 = *(v3 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection);
  return result;
}

id STIntroCommunicationLimitsPickerViewModel.__allocating_init(selection:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_264CC309C();
  *&v3[OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id STIntroCommunicationLimitsPickerViewModel.init(selection:)(uint64_t a1)
{
  sub_264CC309C();
  *&v1[OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for STIntroCommunicationLimitsPickerViewModel(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

BOOL sub_264C61594()
{
  swift_getKeyPath();
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
  sub_264CC308C();

  return *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection) == 0;
}

uint64_t sub_264C61644()
{
  if (*(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection))
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
    sub_264CC307C();
  }

  return result;
}

BOOL sub_264C61748()
{
  swift_getKeyPath();
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
  sub_264CC308C();

  return *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection) == 1;
}

uint64_t sub_264C617F8()
{
  if (*(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection) != 1)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
    sub_264CC307C();
  }

  return result;
}

id STIntroCommunicationLimitsPickerViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_264C61A20(void *a1)
{
  sub_264CC3E8C();
  MEMORY[0x28223BE20]();
  type metadata accessor for STIntroCommunicationLimitsPickerView(0);
  MEMORY[0x28223BE20]();
  type metadata accessor for STIntroCommunicationLimitsPickerViewModel(0);
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
  v2 = a1;
  sub_264CC442C();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9038));
  v4 = sub_264CC3D5C();
  sub_264CC3E7C();
  sub_264CC3D4C();
  return v4;
}

id STIntroCommunicationLimitsPickerViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STIntroCommunicationLimitsPickerViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_264C61D68(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_264C61DA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v37 = *(type metadata accessor for STIntroCommunicationLimitsPickerView(0) - 8);
  v3 = *(v37 + 64);
  (MEMORY[0x28223BE20])();
  v32[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9140);
  v5 = *(v4 - 8);
  v6 = (MEMORY[0x28223BE20])();
  v40 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v39 = v32 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v38 = v32 - v11;
  MEMORY[0x28223BE20](v10);
  v34 = v32 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9100);
  sub_264CC440C();
  v13 = v42;
  swift_getKeyPath();
  v42 = v13;
  v35 = sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
  sub_264CC308C();

  v14 = *&v13[OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection];

  v42 = 0x43206567616E614DLL;
  v43 = 0xEF73746361746E6FLL;
  v44 = 0xD000000000000078;
  v45 = 0x8000000264CE0630;
  v46 = v14 == 0;
  v33 = type metadata accessor for STIntroCommunicationLimitsPickerView;
  v15 = a1;
  v16 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264C64550(a1, v16, type metadata accessor for STIntroCommunicationLimitsPickerView);
  v17 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v18 = swift_allocObject();
  sub_264C640D0(v16, v18 + v17);
  v37 = sub_264C6414C();
  sub_264CC404C();

  v19 = v15;
  sub_264CC440C();
  v20 = v42;
  swift_getKeyPath();
  v42 = v20;
  sub_264CC308C();

  v21 = *&v20[OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection];

  v42 = 0x746E6F4320796E41;
  v43 = 0xEB00000000746361;
  v44 = 0xD000000000000064;
  v45 = 0x8000000264CE06B0;
  v46 = v21 == 1;
  sub_264C64550(v19, v16, v33);
  v22 = swift_allocObject();
  sub_264C640D0(v16, v22 + v17);
  v23 = v38;
  sub_264CC404C();

  v24 = *(v5 + 16);
  v25 = v39;
  v26 = v34;
  v24(v39, v34, v4);
  v27 = v40;
  v24(v40, v23, v4);
  v28 = v41;
  v24(v41, v25, v4);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9150);
  v24(&v28[*(v29 + 48)], v27, v4);
  v30 = *(v5 + 8);
  v30(v23, v4);
  v30(v26, v4);
  v30(v27, v4);
  return (v30)(v25, v4);
}

void sub_264C622F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9100);
  sub_264CC440C();
  if (*&v0[OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection])
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
    sub_264CC307C();
  }

  else
  {
  }
}

void sub_264C62428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9100);
  sub_264CC440C();
  if (*&v0[OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection] == 1)
  {
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
    sub_264CC307C();
  }
}

uint64_t sub_264C62564@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_264CC3D3C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9138);
  return sub_264C61DA0(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_264C625B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264CC3B0C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_264CC3B8C();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9188);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9190);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  *v15 = sub_264CC3CCC();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9198);
  sub_264C62980(v2, &v15[*(v16 + 44)]);
  v17 = sub_264CC3E9C();
  v18 = &v15[*(v13 + 44)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = *(v6 + 28);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_264CC3D1C();
  (*(*(v21 - 8) + 104))(&v8[v19], v20, v21);
  __asm { FMOV            V0.2D, #10.0 }

  *v8 = _Q0;
  if (*(v2 + 32))
  {
    sub_264CC3AFC();
  }

  else
  {
    LODWORD(v42) = sub_264CC3DCC();
  }

  v27 = sub_264CC3A9C();
  sub_264CC3A1C();
  sub_264C64550(v8, v11, MEMORY[0x277CDFC08]);
  v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91A0) + 36)];
  v29 = v43;
  *v28 = v42;
  *(v28 + 1) = v29;
  *(v28 + 4) = v44;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91A8);
  *&v11[*(v30 + 52)] = v27;
  *&v11[*(v30 + 56)] = 256;
  v31 = sub_264CC446C();
  v33 = v32;
  sub_264C645B8(v8);
  v34 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91B0) + 36)];
  *v34 = v31;
  v34[1] = v33;
  v35 = sub_264CC446C();
  v37 = v36;
  v38 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91B8) + 36);
  sub_264C64614(v11, v38, &qword_27FFA9188);
  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91C0) + 36));
  *v39 = v35;
  v39[1] = v37;
  return sub_264C64614(v15, a1, &qword_27FFA9190);
}

uint64_t sub_264C62980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v51 = a2;
  v45 = sub_264CC3B0C();
  MEMORY[0x28223BE20](v45);
  v44[1] = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v44 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91D0);
  v7 = MEMORY[0x28223BE20](v6);
  v52 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v44 - v9;
  v11 = sub_264CC41EC();
  v12 = sub_264CC3F0C();
  v13 = *(v12 - 8);
  v48 = *(v13 + 56);
  v49 = v13 + 56;
  v48(v5, 1, 1, v12);
  v14 = sub_264CC3F1C();
  sub_264C646E4(v5, &qword_27FFA91C8);
  KeyPath = swift_getKeyPath();
  sub_264CC447C();
  sub_264CC3A8C();
  sub_264CC3AFC();
  *v10 = v11;
  *(v10 + 1) = KeyPath;
  *(v10 + 2) = v14;
  v16 = *&v72[31];
  *(v10 + 24) = *&v72[29];
  *(v10 + 40) = v16;
  *(v10 + 56) = *&v72[33];
  v50 = sub_264CC3D3C();
  v71 = 1;
  v17 = v47;
  sub_264C63084(&v67);
  v75 = *&v68[16];
  v76[0] = *&v68[32];
  *(v76 + 9) = *&v68[41];
  v73 = v67;
  v74 = *v68;
  v77[2] = *&v68[16];
  v78[0] = *&v68[32];
  *(v78 + 9) = *&v68[41];
  v77[0] = v67;
  v77[1] = *v68;
  sub_264C6467C(&v73, v56, &qword_27FFA91D8);
  sub_264C646E4(v77, &qword_27FFA91D8);
  *(&v70[1] + 7) = v74;
  *(&v70[2] + 7) = v75;
  *(&v70[3] + 7) = v76[0];
  v70[4] = *(v76 + 9);
  *(v70 + 7) = v73;
  v46 = v71;
  sub_264CC447C();
  sub_264CC3BAC();
  *(&v72[6] + 7) = *&v72[21];
  *(&v72[8] + 7) = *&v72[23];
  *(&v72[10] + 7) = *&v72[25];
  *(&v72[12] + 7) = *&v72[27];
  *(v72 + 7) = *&v72[15];
  *(&v72[2] + 7) = *&v72[17];
  LOBYTE(v11) = *(v17 + 32);
  *(&v72[4] + 7) = *&v72[19];
  v47 = sub_264CC41EC();
  v48(v5, 1, 1, v12);
  v18 = sub_264CC3F1C();
  sub_264C646E4(v5, &qword_27FFA91C8);
  v19 = swift_getKeyPath();
  if (v11)
  {
    sub_264CC3AFC();
  }

  else
  {
    LODWORD(v67) = sub_264CC3DCC();
  }

  v20 = sub_264CC3A9C();
  sub_264CC448C();
  sub_264CC3A8C();
  v21 = v52;
  sub_264C6467C(v10, v52, &qword_27FFA91D0);
  v22 = v21;
  v23 = v51;
  sub_264C6467C(v22, v51, &qword_27FFA91D0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91E0);
  v25 = v23 + *(v24 + 48);
  v26 = v50;
  v56[0] = v50;
  v56[1] = 0;
  v27 = v46;
  v57[0] = v46;
  *&v57[17] = v70[1];
  *&v57[33] = v70[2];
  *&v57[49] = v70[3];
  *&v57[65] = v70[4];
  *&v57[1] = v70[0];
  *&v57[129] = *&v72[6];
  *&v57[113] = *&v72[4];
  *&v57[97] = *&v72[2];
  *&v57[81] = *v72;
  *&v57[192] = *(&v72[13] + 7);
  *&v57[177] = *&v72[12];
  *&v57[161] = *&v72[10];
  *&v57[145] = *&v72[8];
  v28 = *v57;
  *v25 = v50;
  *(v25 + 16) = v28;
  v29 = *&v57[16];
  v30 = *&v57[32];
  v31 = *&v57[64];
  *(v25 + 64) = *&v57[48];
  *(v25 + 80) = v31;
  *(v25 + 32) = v29;
  *(v25 + 48) = v30;
  v32 = *&v57[80];
  v33 = *&v57[96];
  v34 = *&v57[128];
  *(v25 + 128) = *&v57[112];
  *(v25 + 144) = v34;
  *(v25 + 96) = v32;
  *(v25 + 112) = v33;
  v35 = *&v57[144];
  v36 = *&v57[160];
  v37 = *&v57[176];
  *(v25 + 208) = *&v57[192];
  *(v25 + 176) = v36;
  *(v25 + 192) = v37;
  *(v25 + 160) = v35;
  v38 = (v23 + *(v24 + 64));
  v39 = v47;
  *&v58 = v47;
  *(&v58 + 1) = v19;
  *&v59 = v18;
  *(&v59 + 1) = v20;
  v40 = v54;
  v60 = v53;
  v41 = v55;
  v61 = v54;
  v62 = v55;
  v38[2] = v53;
  v38[3] = v40;
  v38[4] = v41;
  v42 = v59;
  *v38 = v58;
  v38[1] = v42;
  sub_264C6467C(v56, &v67, &qword_27FFA91E8);
  sub_264C6467C(&v58, &v67, &qword_27FFA91F0);
  sub_264C646E4(v10, &qword_27FFA91D0);
  v63[0] = v39;
  v63[1] = v19;
  v63[2] = v18;
  v63[3] = v20;
  v64 = v53;
  v65 = v54;
  v66 = v55;
  sub_264C646E4(v63, &qword_27FFA91F0);
  v67 = v26;
  v68[0] = v27;
  *&v68[17] = v70[1];
  *&v68[33] = v70[2];
  *&v68[49] = v70[3];
  *&v68[65] = v70[4];
  *&v68[1] = v70[0];
  *&v68[129] = *&v72[6];
  *&v68[113] = *&v72[4];
  *&v68[97] = *&v72[2];
  *&v68[81] = *v72;
  *&v69[15] = *(&v72[13] + 7);
  *v69 = *&v72[12];
  *&v68[161] = *&v72[10];
  *&v68[145] = *&v72[8];
  sub_264C646E4(&v67, &qword_27FFA91E8);
  return sub_264C646E4(v52, &qword_27FFA91D0);
}

uint64_t sub_264C63084@<X0>(uint64_t a1@<X8>)
{
  sub_264C64744();

  v2 = sub_264CC3FBC();
  v4 = v3;
  v6 = v5;
  sub_264CC3F3C();
  v7 = sub_264CC3F9C();
  v30 = v8;
  v31 = v7;
  v29 = v9;
  v32 = v10;

  sub_264C64798(v2, v4, v6 & 1);

  v11 = sub_264CC3FBC();
  v13 = v12;
  v15 = v14;
  sub_264CC3EFC();
  v16 = sub_264CC3F9C();
  v18 = v17;
  v20 = v19;

  sub_264C64798(v11, v13, v15 & 1);

  sub_264CC41AC();
  v21 = sub_264CC3F5C();
  v23 = v22;
  LOBYTE(v13) = v24;
  v26 = v25;

  sub_264C64798(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  *a1 = v31;
  *(a1 + 8) = v30;
  *(a1 + 16) = v29 & 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  *(a1 + 48) = v13 & 1;
  *(a1 + 56) = v26;
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = 0;
  sub_264C63D0C(v31, v30, v29 & 1);

  sub_264C63D0C(v21, v23, v13 & 1);

  sub_264C64798(v21, v23, v13 & 1);

  sub_264C64798(v31, v30, v29 & 1);
}

uint64_t sub_264C63318@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v31 = a6;
    v32 = a7;
    v33 = v8;
    v30 = sub_264CC3B2C();
    v17 = *(v30 - 8);
    MEMORY[0x28223BE20](v30);
    v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v35[0] = 0;
      v35[1] = 0xE000000000000000;
      sub_264CC492C();

      strcpy(v35, "View.task @ ");
      BYTE5(v35[1]) = 0;
      HIWORD(v35[1]) = -5120;
      MEMORY[0x26674B2E0](a3, a4);
      MEMORY[0x26674B2E0](58, 0xE100000000000000);
      v34 = a5;
      v24 = sub_264CC4A7C();
      MEMORY[0x26674B2E0](v24);
    }

    v25 = sub_264CC477C();
    MEMORY[0x28223BE20](v25);
    (*(v27 + 16))(&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_264CC3B1C();
    sub_264BA5058(v33, a8);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9058);
    return (*(v17 + 32))(a8 + *(v28 + 36), v19, v30);
  }

  else
  {
    v20 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9060) + 36));
    v21 = *(sub_264CC3ACC() + 20);
    v22 = sub_264CC477C();
    (*(*(v22 - 8) + 16))(&v20[v21], a2, v22);
    *v20 = a6;
    *(v20 + 1) = a7;

    return sub_264BA5058(v8, a8);
  }
}

uint64_t sub_264C63664@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  sub_264C63D0C(a3, a4, a5 & 1);
}

void *sub_264C636BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_264C63700(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

unint64_t sub_264C637A4()
{
  result = qword_27FFA9040;
  if (!qword_27FFA9040)
  {
    sub_264CC3B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9040);
  }

  return result;
}

uint64_t sub_264C637F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264C63840(uint64_t a1, id *a2)
{
  result = sub_264CC45BC();
  *a2 = 0;
  return result;
}

uint64_t sub_264C638B8(uint64_t a1, id *a2)
{
  v3 = sub_264CC45CC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_264C63938@<X0>(uint64_t *a1@<X8>)
{
  sub_264CC45DC();
  v2 = sub_264CC459C();

  *a1 = v2;
  return result;
}

BOOL sub_264C63998(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_264C639FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264CC459C();

  *a1 = v2;
  return result;
}

uint64_t sub_264C63A44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264CC45DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_264C63A70(uint64_t a1)
{
  v2 = sub_264C637F0(&qword_27FFA9200, type metadata accessor for Name);
  v3 = sub_264C637F0(&qword_27FFA9208, type metadata accessor for Name);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_264C63B2C()
{
  v0 = sub_264CC45DC();
  v1 = MEMORY[0x26674B310](v0);

  return v1;
}

uint64_t sub_264C63B68()
{
  sub_264CC45DC();
  sub_264CC460C();
}

uint64_t sub_264C63BBC()
{
  sub_264CC45DC();
  sub_264CC4B7C();
  sub_264CC460C();
  v0 = sub_264CC4B9C();

  return v0;
}

uint64_t sub_264C63C30()
{
  v0 = sub_264CC45DC();
  v2 = v1;
  if (v0 == sub_264CC45DC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_264CC4AAC();
  }

  return v5 & 1;
}

uint64_t sub_264C63CB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264CC3C1C();
  *a1 = result;
  return result;
}

uint64_t sub_264C63D0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_264C63D24()
{
  result = sub_264CC30AC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_264C63F30(uint64_t a1, int a2)
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

uint64_t sub_264C63F50(uint64_t result, int a2, int a3)
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

void sub_264C63FDC()
{
  sub_264C64048();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_264C64048()
{
  if (!qword_27FFA9120)
  {
    type metadata accessor for STIntroCommunicationLimitsPickerViewModel(255);
    v0 = sub_264CC444C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFA9120);
    }
  }
}

uint64_t sub_264C640D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STIntroCommunicationLimitsPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_264C6414C()
{
  result = qword_27FFA9148;
  if (!qword_27FFA9148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9148);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for STIntroCommunicationLimitsPickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9100);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_264C64290(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for STIntroCommunicationLimitsPickerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_264C64318(uint64_t a1, unint64_t *a2)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264C64378(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_264C643C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_264C64550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264C645B8(uint64_t a1)
{
  v2 = sub_264CC3B8C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264C64614(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264C6467C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264C646E4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264C64744()
{
  result = qword_27FFA91F8;
  if (!qword_27FFA91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA91F8);
  }

  return result;
}

uint64_t sub_264C64798(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_264C647A8()
{
  result = qword_27FFA9210;
  if (!qword_27FFA9210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA91B8);
    sub_264C64860();
    sub_264C64918(&unk_27FFA9230, &qword_27FFA91C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9210);
  }

  return result;
}

unint64_t sub_264C64860()
{
  result = qword_27FFA9218;
  if (!qword_27FFA9218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9190);
    sub_264C64918(&qword_27FFA9220, &qword_27FFA9228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9218);
  }

  return result;
}

uint64_t sub_264C64918(unint64_t *a1, uint64_t *a2)
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

uint64_t UsageDetails.lastUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ScreenTimeSettingsUI12UsageDetails_lastUpdatedDate;
  v4 = sub_264CC2FCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id UsageDetails.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UsageDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UsageDetails();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UsageDetails()
{
  result = qword_27FFA92C8;
  if (!qword_27FFA92C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static UsageDetails.earliestUsageDateForUserWithAltDSID(_:deviceActivityIdentifier:)@<X0>(void (**a1)(char *, uint64_t, uint64_t)@<X0>, void (**a2)(char *, uint64_t)@<X1>, unsigned int (**a3)(uint64_t, uint64_t, uint64_t)@<X2>, char *a4@<X8>)
{
  v9[3] = sub_264CC32DC();
  v9[4] = sub_264C6A9DC(&qword_27FFA92A8, MEMORY[0x277CC57C0]);
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_264CC32CC();
  sub_264C6510C(a1, a2, a3, v9, a4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
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

uint64_t sub_264C6510C@<X0>(void (**a1)(char *, uint64_t, uint64_t)@<X0>, void (**a2)(char *, uint64_t)@<X1>, unsigned int (**a3)(uint64_t, uint64_t, uint64_t)@<X2>, void *a4@<X4>, char *a5@<X8>)
{
  v62 = a3;
  v56 = a2;
  v60 = a1;
  v61 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B80);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v47 - v7;
  v72 = sub_264CC2FCC();
  v55 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v57 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_264CC325C();
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA92E8);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v47 - v12;
  v13 = sub_264CC330C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_264CC332C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264CC2E4C();
  (*(v14 + 104))(v16, *MEMORY[0x277CC5840], v13);

  sub_264CC331C();
  v21 = v61;
  sub_264CC2FBC();
  v22 = a4[3];
  v23 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v22);
  v24 = sub_264C6A9DC(&qword_27FFA92A8, MEMORY[0x277CC57C0]);
  v25 = v63;
  (*(v24 + 24))(v20, v22, v23);
  if (v25)
  {
    (*(v55 + 8))(v21, v72);
    return (*(v18 + 8))(v20, v17);
  }

  else
  {
    v52 = v18;
    v53 = v17;
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA92F0);
    v27 = sub_264CC49EC();

    result = v27;
    v50 = *(v27 + 16);
    if (v50)
    {
      v47 = 0;
      v51 = v20;
      v28 = 0;
      v48 = v27 + 32;
      v29 = (v54 + 6);
      v63 = (v54 + 4);
      v62 = (v55 + 48);
      v60 = (v55 + 32);
      v30 = (v54 + 1);
      v56 = (v55 + 8);
      v31 = v59;
      v32 = v58;
      v49 = v27;
      while (v28 < *(result + 16))
      {
        sub_264C6A834(v48 + 40 * v28, v71);
        v55 = v28 + 1;
        __swift_project_boxed_opaque_existential_1(v71, v71[3]);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_1(v65);
        sub_264CC326C();
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        v36 = __swift_project_boxed_opaque_existential_1(v65, AssociatedTypeWitness);
        v54 = &v47;
        MEMORY[0x28223BE20](v36);
        (*(v38 + 16))(&v47 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
        v69 = swift_getAssociatedTypeWitness();
        v70 = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_1(v68);
        sub_264CC465C();
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        while (1)
        {
          __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
          sub_264CC488C();
          v39 = (*v29)(v32, 1, v31);
          v40 = v72;
          if (v39 == 1)
          {
            break;
          }

          (*v63)(v10, v32, v31);
          v41 = v64;
          sub_264CC322C();
          if ((*v62)(v41, 1, v40) == 1)
          {
            (*v30)(v10, v31);
            sub_264C646E4(v41, &unk_27FFA9B80);
          }

          else
          {
            v42 = *v60;
            v43 = v31;
            v44 = v57;
            (*v60)(v57, v41, v40);
            v45 = sub_264CC2F9C();
            (*v30)(v10, v43);
            v46 = *v56;
            if (v45)
            {
              v33 = v61;
              v46(v61, v40);
              v42(v33, v44, v40);
              v31 = v59;
              v32 = v58;
              break;
            }

            v46(v44, v40);
            v31 = v59;
            v32 = v58;
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        v28 = v55;
        v34 = v53;
        v35 = v52;
        result = v49;
        if (v55 == v50)
        {

          v20 = v51;
          return (*(v35 + 8))(v20, v34);
        }
      }

      __break(1u);
    }

    else
    {

      v34 = v53;
      v35 = v52;
      return (*(v35 + 8))(v20, v34);
    }
  }

  return result;
}

uint64_t static UsageDetails.detailsForUserWithAltDSID(_:deviceActivityIdentifier:dateInterval:referenceDate:usageContext:)(void (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[3] = sub_264CC32DC();
  v16[4] = sub_264C6A9DC(&qword_27FFA92A8, MEMORY[0x277CC57C0]);
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_264CC32CC();
  v14 = sub_264C68A70(a1, a2, a3, a4, a5, a6, a7, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v14;
}

uint64_t sub_264C66018(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_264C9FC08(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_264C66094(v6);
  return sub_264CC497C();
}

void sub_264C66094(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_264CC4A6C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_264C6A7A4();
        v6 = sub_264CC46CC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_264C663B8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_264C66198(0, v2, 1, a1);
  }
}

void sub_264C66198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_264CC2FCC();
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 startDate];
      sub_264CC2FAC();

      v22 = [v20 startDate];
      v23 = v34;
      sub_264CC2FAC();

      LOBYTE(v22) = sub_264CC2F9C();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_264C663B8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_264CC2FCC();
  v9 = MEMORY[0x28223BE20](v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_264C9A858(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_264C66C28((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_264C9A858(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_264C9A7CC(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 startDate];
      v24 = v123;
      sub_264CC2FAC();

      v25 = [v22 startDate];
      v26 = v124;
      sub_264CC2FAC();

      LODWORD(v121) = sub_264CC2F9C();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 startDate];
        v34 = v123;
        sub_264CC2FAC();

        v35 = [v32 startDate];
        v36 = v124;
        sub_264CC2FAC();

        LODWORD(v35) = sub_264CC2F9C() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_264C98858(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_264C98858((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_264C66C28((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_264C9A858(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_264C9A7CC(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 startDate];
    v53 = v123;
    sub_264CC2FAC();

    v54 = [v51 startDate];
    v55 = v124;
    sub_264CC2FAC();

    LOBYTE(v54) = sub_264CC2F9C();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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

uint64_t sub_264C66C28(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_264CC2FCC();
  v8 = *(v56 - 8);
  v9 = MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 startDate];
        v41 = v54;
        sub_264CC2FAC();

        v42 = [v39 startDate];
        v43 = v55;
        sub_264CC2FAC();

        LOBYTE(v42) = sub_264CC2F9C();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 startDate];
        v21 = v54;
        sub_264CC2FAC();

        v22 = [v19 startDate];
        v23 = v55;
        sub_264CC2FAC();

        LOBYTE(v22) = sub_264CC2F9C();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

uint64_t sub_264C670C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_264CC2FCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264C6A8E8(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_264C646E4(a1, &unk_27FFA9B80);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = sub_264CC2F8C();
    result = (*(v8 + 8))(v10, v7);
    v6 = a1;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  sub_264C646E4(v6, &unk_27FFA9B80);
  (*(v8 + 16))(a1, a2, v7);
  return (*(v8 + 56))(a1, 0, 1, v7);
}

uint64_t sub_264C672C4(uint64_t a1)
{
  v2 = sub_264CC305C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9318);
    v9 = sub_264CC490C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_264C6A9DC(&qword_27FFA9320, MEMORY[0x277CC99D0]);
      v16 = sub_264CC456C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_264C6A9DC(&qword_27FFA9328, MEMORY[0x277CC99D0]);
          v23 = sub_264CC458C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_264C675E4(uint64_t *a1, unint64_t a2)
{
  v72 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B80);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v70 - v4;
  v5 = sub_264CC2FCC();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v70 - v9;
  v10 = sub_264CC2EEC();
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264CC306C();
  v78 = *(v13 - 8);
  v79 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264CC304C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA92F8);
  v16 = sub_264CC305C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_264CD21F0;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x277CC99B8], v16);
  v22(v21 + v18, *MEMORY[0x277CC9940], v16);
  v23 = a2;
  sub_264C672C4(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v75 = v15;
  sub_264CC303C();

  v24 = sub_264CC2EAC();
  if (v25 & 1) != 0 || (v26 = v24, v27 = sub_264CC2EDC(), (v28))
  {
    if (qword_27FFA9008 != -1)
    {
      swift_once();
    }

    v29 = sub_264CC387C();
    __swift_project_value_buffer(v29, qword_27FFAC2C8);
    v30 = v73;
    v31 = v74;
    (*(v73 + 16))(v8, v23, v74);
    v32 = sub_264CC385C();
    v33 = sub_264CC47EC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v81 = v35;
      *v34 = 136446210;
      sub_264C6A9DC(&qword_27FFA9300, MEMORY[0x277CC9578]);
      v36 = sub_264CC4A7C();
      v38 = v37;
      (*(v30 + 8))(v8, v31);
      v39 = sub_264C85E3C(v36, v38, &v81);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_264BA2000, v32, v33, "Failed to get week and weekday components from pickup: %{public}s)", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x26674C780](v35, -1, -1);
      MEMORY[0x26674C780](v34, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v8, v31);
    }

    (*(v76 + 8))(v12, v77);
    return (*(v78 + 8))(v75, v79);
  }

  v41 = v27;
  v42 = *v72;
  if (!*(*v72 + 16) || (v43 = sub_264C83D94(v26), (v44 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9308);
    v57 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9310) - 8);
    v58 = v12;
    v59 = v23;
    v60 = (*(*v57 + 80) + 32) & ~*(*v57 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_264CD2200;
    v62 = v57[14];
    *(v61 + v60) = v41;
    (*(v73 + 16))(v61 + v60 + v62, v59, v74);
    v63 = sub_264C834A0(v61);
    swift_setDeallocating();
    sub_264C646E4(v61 + v60, &qword_27FFA9310);
    swift_deallocClassInstance();
    v64 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = *v64;
    sub_264C830C4(v63, v26, isUniquelyReferenced_nonNull_native);
    *v64 = v81;
    (*(v76 + 8))(v58, v77);
    return (*(v78 + 8))(v75, v79);
  }

  v45 = v41;
  v46 = *(*(v42 + 56) + 8 * v43);
  v81 = v46;
  v47 = v73;
  v48 = v74;
  if (!*(v46 + 16) || (v49 = sub_264C83D94(v45), (v50 & 1) == 0))
  {
    v66 = v71;
    (*(v47 + 16))(v71, v23, v48);
    (*(v47 + 56))(v66, 0, 1, v48);

    sub_264C7FF94(v66, v45);
    v67 = v81;

    v68 = v72;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *v68;
    sub_264C830C4(v67, v26, v69);
    *v68 = v80;
    goto LABEL_18;
  }

  v51 = *(v47 + 16);
  v52 = v70;
  v51(v70, *(v46 + 56) + *(v47 + 72) * v49, v48);

  if (sub_264CC2F9C())
  {
    v53 = v71;
    v51(v71, v23, v48);
    (*(v47 + 56))(v53, 0, 1, v48);
    sub_264C7FF94(v53, v45);
    v54 = v81;

    v55 = v72;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *v55;
    sub_264C830C4(v54, v26, v56);
    *v55 = v80;
    (*(v47 + 8))(v70, v48);
LABEL_18:
    (*(v76 + 8))(v12, v77);
    (*(v78 + 8))(v75, v79);
  }

  (*(v47 + 8))(v52, v48);
  (*(v76 + 8))(v12, v77);
  (*(v78 + 8))(v75, v79);
}

uint64_t sub_264C67EE0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() systemHiddenBundleIdentifiersForDeviceFamily_];
  v5 = sub_264CC47AC();

  LOBYTE(v4) = sub_264C8E728(a1, a2, v5);

  if (v4 & 1) != 0 || (sub_264CC45DC(), v6 = sub_264CC463C(), , (v6))
  {
    v7 = 0;
  }

  else
  {
    sub_264CC45DC();
    v8 = sub_264CC463C();

    v7 = v8 ^ 1;
  }

  return v7 & 1;
}

id sub_264C67FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = [objc_allocWithZone(STUsageItem) init];
  [v8 setItemType_];
  if (a2 && (sub_264C67EE0(a1, a2) & 1) != 0)
  {
    sub_264CC45DC();
    v9 = sub_264CC463C();

    if (v9)
    {
      v10 = MEMORY[0x277D4BC98];
    }

    else
    {
      sub_264CC45DC();
      v13 = sub_264CC463C();

      if ((v13 & 1) == 0)
      {
        MEMORY[0x26674B2E0](a1, a2);
        v17 = sub_264CC459C();

        [v8 setIdentifier_];

        v18 = objc_allocWithZone(MEMORY[0x277D4BAD0]);
        v19 = sub_264CC459C();
        v11 = [v18 initWithIdentifier:v19 usageTrusted:a5 & 1];

        goto LABEL_10;
      }

      v10 = MEMORY[0x277D4BC58];
    }

    v14 = *v10;
    v15 = sub_264CC45DC();
    MEMORY[0x26674B2E0](v15);

    v16 = sub_264CC459C();

    [v8 setIdentifier_];

    v11 = [objc_allocWithZone(MEMORY[0x277D4BAD0]) initWithIdentifier:v14 usageTrusted:a5 & 1];
LABEL_10:
    v12 = &selRef_setTrustIdentifier_;
    goto LABEL_11;
  }

  v11 = sub_264CC459C();
  v12 = &selRef_setIdentifier_;
LABEL_11:
  [v8 *v12];

  [v8 setTimePeriod_];
  v20 = sub_264CC2F7C();
  [v8 setStartDate_];

  v21 = sub_264CC47BC();
  [v8 setTotalUsage_];

  return v8;
}

void sub_264C682B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_264CC30EC();
  v13 = v12;
  if (a6)
  {
    if (sub_264CC30FC() >= 1)
    {

      v14 = sub_264CC30FC();
      v15 = sub_264CC310C();
      sub_264C67FDC(v11, v13, a5, v14, v15 & 1);

      MEMORY[0x26674B340](v16);
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_264CC46BC();
      }

      sub_264CC46DC();
    }

    if (sub_264CC30DC() >= 1)
    {

      v49 = sub_264CC30DC();
      v17 = sub_264CC310C();
      v18 = [objc_allocWithZone(STUsageItem) init];
      [v18 setItemType_];
      if (sub_264C67EE0(v11, v13))
      {
        v51 = 0xD000000000000017;
        v52 = 0x8000000264CE0D00;
        MEMORY[0x26674B2E0](v11, v13);
        v19 = sub_264CC459C();

        [v18 setIdentifier_];

        v20 = objc_allocWithZone(MEMORY[0x277D4BAD0]);
        v21 = sub_264CC459C();
        v22 = [v20 initWithIdentifier:v21 usageTrusted:v17 & 1];

        v23 = &selRef_setTrustIdentifier_;
      }

      else
      {
        v22 = sub_264CC459C();
        v23 = &selRef_setIdentifier_;
      }

      [v18 *v23];

      [v18 setTimePeriod_];
      v24 = sub_264CC2F7C();
      [v18 setStartDate_];

      v25 = sub_264CC47BC();
      [v18 setTotalUsage_];

      MEMORY[0x26674B340]();
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_264CC46BC();
      }

      sub_264CC46DC();
    }
  }

  v26 = *MEMORY[0x277CF9618];
  if (sub_264CC45DC() == a3 && v27 == a4)
  {
  }

  else
  {
    v29 = sub_264CC4AAC();

    if ((v29 & 1) == 0)
    {
      v30 = [objc_opt_self() systemHiddenBundleIdentifiersForDeviceFamily_];
      v31 = sub_264CC47AC();

      LOBYTE(v30) = sub_264C8E728(v11, v13, v31);

      if ((v30 & 1) == 0)
      {
        sub_264CC30CC();
        if (v32 <= 0.0)
        {
        }

        else
        {
          sub_264CC30CC();
          v33 = sub_264CC310C();
          v34 = [objc_allocWithZone(STUsageItem) init];
          [v34 setItemType_];
          v51 = 0xD000000000000013;
          v52 = 0x8000000264CE0CE0;
          MEMORY[0x26674B2E0](v11, v13);
          v35 = sub_264CC459C();

          [v34 setIdentifier_];

          v36 = objc_allocWithZone(MEMORY[0x277D4BAD0]);
          v37 = sub_264CC459C();

          v38 = [v36 initWithIdentifier:v37 usageTrusted:v33 & 1];

          [v34 setTrustIdentifier_];
          v39 = sub_264CC459C();
          if (([v39 isEqualToString:*MEMORY[0x277CF9620]] & 1) != 0 || objc_msgSend(v39, "isEqualToString:", *MEMORY[0x277CF9610]))
          {

            v40 = 0;
          }

          else
          {
            v48 = [v39 isEqualToString:v26];

            if (v48)
            {
              v40 = 0;
            }

            else
            {
              v40 = sub_264CC459C();
            }
          }

          [v34 setCategoryIdentifier_];

          [v34 setTimePeriod_];
          v41 = sub_264CC2F7C();
          [v34 setStartDate_];

          v42 = sub_264CC479C();
          [v34 setTotalUsage_];

          MEMORY[0x26674B340]();
          if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_264CC46BC();
          }

          sub_264CC46DC();
        }

        return;
      }
    }
  }

  if (qword_27FFA9008 != -1)
  {
    swift_once();
  }

  v43 = sub_264CC387C();
  __swift_project_value_buffer(v43, qword_27FFAC2C8);

  oslog = sub_264CC385C();
  v44 = sub_264CC47DC();

  if (os_log_type_enabled(oslog, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v45 = 136446210;
    v47 = sub_264C85E3C(v11, v13, &v51);

    *(v45 + 4) = v47;
    _os_log_impl(&dword_264BA2000, oslog, v44, "Skipping usage item for system hidden app: %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x26674C780](v46, -1, -1);
    MEMORY[0x26674C780](v45, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_264C68A70(void (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v197 = a8;
  v207 = a7;
  v199 = a5;
  v203 = a4;
  v206 = a3;
  v204 = a2;
  v205 = a1;
  v202 = sub_264CC31AC();
  v181 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v200 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_264CC311C();
  v180 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v179 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_264CC316C();
  v163 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v192 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_264CC2E7C();
  v209 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v167 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_264CC325C();
  v194 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v193 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA92E8);
  MEMORY[0x28223BE20](v14 - 8);
  v171 = &v145 - v15;
  v16 = sub_264CC2FCC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v147 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v201 = &v145 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v210 = &v145 - v23;
  MEMORY[0x28223BE20](v22);
  v198 = &v145 - v24;
  v25 = sub_264CC330C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v145 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_264CC332C();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v30 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B80);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v146 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v145 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v145 - v37;
  v222 = MEMORY[0x277D84F90];
  v149 = v17;
  v39 = *(v17 + 56);
  v176 = v16;
  v39(&v145 - v37, 1, 1, v16);
  v221 = MEMORY[0x277D84F98];
  (v209[2])(v28, v199, v168);
  (*(v26 + 104))(v28, *MEMORY[0x277CC5838], v25);

  sub_264CC331C();
  v40 = v197[3];
  v41 = v197[4];
  __swift_project_boxed_opaque_existential_1(v197, v40);
  v42 = sub_264C6A9DC(&qword_27FFA92A8, MEMORY[0x277CC57C0]);
  v43 = v208;
  (*(v42 + 24))(v30, v40, v41);
  if (v43)
  {
    v44 = v43;
    (*(v150 + 8))(v30, v151);
    sub_264C646E4(v38, &unk_27FFA9B80);
    return v44;
  }

  v45 = v194;
  v162 = v36;
  v148 = 0;
  v157 = v38;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA92F0);
  v46 = sub_264CC49EC();

  v47 = v46;
  v154 = *(v46 + 16);
  v155 = v30;
  if (v154)
  {
    v48 = 0;
    v152 = v47 + 32;
    v175 = (v149 + 8);
    v169 = (v45 + 48);
    v166 = (v45 + 32);
    v165 = (v209 + 1);
    v161 = "STUsageItemTypeNotifications";
    v160 = (v149 + 48);
    v158 = (v149 + 32);
    v159 = "STUsageItemTypeCategory";
    v183 = v163 + 16;
    v199 = *MEMORY[0x277CF9620];
    v196 = *MEMORY[0x277CF9610];
    v195 = *MEMORY[0x277CF9618];
    v173 = 0x8000000264CE0CC0;
    v206 = v181 + 16;
    v205 = (v181 + 8);
    v197 = 0x8000000264CE0CA0;
    v182 = (v163 + 8);
    v164 = (v45 + 8);
    v184 = a6;
    v49 = v198;
    v153 = v47;
    v178 = v180 + 16;
    v177 = (v180 + 8);
    while (1)
    {
      v51 = *(v47 + 16);
      if (v48 >= v51)
      {
        break;
      }

      v156 = v48;
      sub_264C6A834(v152 + 40 * v48, &v219);
      __swift_project_boxed_opaque_existential_1(&v219, v220);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v209 = &v145;
      v53 = *(AssociatedTypeWitness - 8);
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v55 = &v145 - v54;
      sub_264CC32AC();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v53 + 8))(v55, AssociatedTypeWitness);
      v57 = v201;
      sub_264C670C4(v157, v49);
      v174 = *v175;
      v174(v49, v176);
      v58 = v192;
      v59 = v185;
      __swift_project_boxed_opaque_existential_1(&v219, v220);
      v214 = swift_getAssociatedTypeWitness();
      v215 = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v212);
      sub_264CC326C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v219);
      v60 = __swift_project_boxed_opaque_existential_1(&v212, v214);
      v209 = &v145;
      MEMORY[0x28223BE20](v60);
      (*(v62 + 16))(&v145 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
      v217 = swift_getAssociatedTypeWitness();
      v218 = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v216);
      sub_264CC465C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v212);
      v63 = v170;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(&v216, v217);
        v64 = v171;
        sub_264CC488C();
        if ((*v169)(v64, 1, v63) == 1)
        {
          break;
        }

        v65 = v193;
        (*v166)(v193, v64, v63);
        v66 = v167;
        sub_264CC323C();
        v67 = v210;
        sub_264CC2E6C();
        (*v165)(v66, v168);
        sub_264CC321C();
        if (v68 > 0.0)
        {
          v69 = [objc_allocWithZone(STUsageItem) init];
          [v69 setItemType_];
          v70 = sub_264CC459C();
          [v69 setIdentifier_];

          [v69 setTimePeriod_];
          v71 = sub_264CC2F7C();
          [v69 setStartDate_];

          v72 = sub_264CC479C();
          [v69 setTotalUsage_];

          MEMORY[0x26674B340]();
          if (*((v222 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v222 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_264CC46BC();
            v65 = v193;
          }

          sub_264CC46DC();
        }

        if (v207 != 1)
        {
          v73 = v162;
          sub_264CC322C();
          v74 = v73;
          v75 = v73;
          v76 = v176;
          if ((*v160)(v75, 1, v176) == 1)
          {
            sub_264C646E4(v74, &unk_27FFA9B80);
          }

          else
          {
            (*v158)(v57, v74, v76);
            sub_264C675E4(&v221, v57);
            v174(v57, v76);
          }

          sub_264CC320C();
          v77 = [objc_allocWithZone(STUsageItem) init];
          [v77 setItemType_];
          v78 = sub_264CC459C();
          [v77 setIdentifier_];

          [v77 setTimePeriod_];
          v79 = sub_264CC2F7C();
          [v77 setStartDate_];

          v80 = sub_264CC47BC();
          [v77 setTotalUsage_];

          MEMORY[0x26674B340]();
          if (*((v222 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v222 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_264CC46BC();
          }

          sub_264CC46DC();
          v65 = v193;
        }

        v81 = sub_264CC324C();
        v189 = *(v81 + 16);
        if (v189)
        {
          v82 = 0;
          v83 = (*(v163 + 80) + 32) & ~*(v163 + 80);
          v172 = v81;
          v188 = v81 + v83;
          v187 = *(v163 + 72);
          v186 = *(v163 + 16);
          while (1)
          {
            v194 = v82;
            v186(v58, v188 + v187 * v82, v59);
            v84 = sub_264CC313C();
            v86 = v85;
            v203 = v84;
            v87 = sub_264CC459C();
            if (([v87 isEqualToString:v199] & 1) != 0 || objc_msgSend(v87, "isEqualToString:", v196))
            {

              v88 = v190;
              v89 = v202;
            }

            else
            {
              v122 = [v87 isEqualToString:v195];

              v88 = v190;
              v89 = v202;
              if ((v122 & 1) == 0)
              {
                sub_264CC312C();
                if (v123 > 0.0)
                {
                  sub_264CC312C();
                  v124 = [objc_allocWithZone(STUsageItem) init];
                  [v124 setItemType_];
                  v212 = 0xD000000000000018;
                  v213 = v173;
                  MEMORY[0x26674B2E0](v203, v86);
                  v125 = sub_264CC459C();

                  [v124 setIdentifier_];

                  v126 = objc_allocWithZone(MEMORY[0x277D4BAD0]);
                  v127 = sub_264CC459C();
                  v128 = [v126 initWithIdentifier:v127 usageTrusted:1];

                  [v124 setTrustIdentifier_];
                  v129 = sub_264CC459C();
                  [v124 setCategoryIdentifier_];

                  [v124 setTimePeriod_];
                  v130 = sub_264CC2F7C();
                  [v124 setStartDate_];

                  v131 = sub_264CC479C();
                  [v124 setTotalUsage_];

                  MEMORY[0x26674B340]();
                  if (*((v222 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v222 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_264CC46BC();
                  }

                  sub_264CC46DC();
                  v65 = v193;
                  v88 = v190;
                }
              }
            }

            v204 = v86;
            v90 = sub_264CC315C();
            v91 = *(v90 + 16);
            if (v91)
            {
              v92 = (*(v180 + 80) + 32) & ~*(v180 + 80);
              v191 = v90;
              v93 = v90 + v92;
              v209 = *(v180 + 72);
              v208 = *(v180 + 16);
              v94 = v179;
              v95 = v88;
              v96 = v177;
              v97 = v204;
              v98 = v203;
              do
              {
                v99 = v207 != 1;
                v208(v94, v93, v95);
                sub_264C682B4(&v222, v94, v98, v97, v210, v99);
                (*v96)(v94, v95);
                v93 += v209;
                --v91;
              }

              while (v91);

              v58 = v192;
              v65 = v193;
              v49 = v198;
              v89 = v202;
            }

            else
            {
            }

            v100 = sub_264CC314C();
            v101 = *(v100 + 16);
            v102 = v200;
            v57 = v201;
            v67 = v210;
            if (v101)
            {
              break;
            }

LABEL_24:
            v82 = v194 + 1;
            v59 = v185;
            (*v182)(v58, v185);
            a6 = v184;
            if (v82 == v189)
            {
              goto LABEL_8;
            }
          }

          v103 = (*(v181 + 80) + 32) & ~*(v181 + 80);
          v208 = v100;
          v104 = v100 + v103;
          v105 = *(v181 + 72);
          v209 = *(v181 + 16);
          v106 = v209;
          (v209)(v200, v100 + v103, v89);
          while (2)
          {
            sub_264CC317C();
            if (v110 <= 0.0)
            {
              goto LABEL_40;
            }

            v111 = sub_264CC318C();
            v113 = v112;
            sub_264CC317C();
            v114 = sub_264CC319C();
            v115 = [objc_allocWithZone(STUsageItem) init];
            [v115 setItemType_];
            v212 = 0xD000000000000017;
            v213 = v197;
            MEMORY[0x26674B2E0](v111, v113);
            v116 = sub_264CC459C();

            [v115 setIdentifier_];

            v117 = objc_allocWithZone(MEMORY[0x277D4BAD0]);
            v118 = sub_264CC459C();

            v119 = [v117 initWithIdentifier:v118 usageTrusted:v114 & 1];

            [v115 setTrustIdentifier_];
            v120 = sub_264CC459C();
            if (([v120 isEqualToString:v199] & 1) != 0 || objc_msgSend(v120, "isEqualToString:", v196))
            {
            }

            else
            {
              v121 = [v120 isEqualToString:v195];

              if ((v121 & 1) == 0)
              {
                v107 = sub_264CC459C();
LABEL_37:
                v89 = v202;
                v57 = v201;
                v49 = v198;
                [v115 setCategoryIdentifier_];

                [v115 setTimePeriod_];
                v67 = v210;
                v108 = sub_264CC2F7C();
                [v115 setStartDate_];

                v109 = sub_264CC479C();
                [v115 setTotalUsage_];

                MEMORY[0x26674B340]();
                if (*((v222 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v222 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_264CC46BC();
                  v67 = v210;
                }

                sub_264CC46DC();
                v102 = v200;
                v106 = v209;
LABEL_40:
                (*v205)(v102, v89);
                v104 += v105;
                if (!--v101)
                {

                  v58 = v192;
                  v65 = v193;
                  goto LABEL_24;
                }

                (v106)(v102, v104, v89);
                continue;
              }
            }

            break;
          }

          v107 = 0;
          goto LABEL_37;
        }

LABEL_8:

        v174(v67, v176);
        v63 = v170;
        (*v164)(v65, v170);
      }

      v48 = v156 + 1;
      __swift_destroy_boxed_opaque_existential_1Tm(&v216);
      v50 = v157;
      v47 = v153;
      if (v48 == v154)
      {

        v132 = v149;
        goto LABEL_55;
      }
    }

    __break(1u);
  }

  else
  {

    v132 = v149;
    v50 = v157;
LABEL_55:

    v219 = sub_264CABA0C(v133);
    v134 = v148;
    sub_264C66018(&v219);
    v135 = v147;
    v136 = v151;
    v51 = &v180;
    v148 = v134;
    if (!v134)
    {

      v137 = v219;
      v138 = v146;
      sub_264C6A8E8(v50, v146);
      v139 = *(v132 + 48);
      v140 = v176;
      if (v139(v138, 1, v176) == 1)
      {
        (*(v132 + 16))(v135, a6, v140);
        if (v139(v138, 1, v140) != 1)
        {
          sub_264C646E4(v138, &unk_27FFA9B80);
        }
      }

      else
      {
        (*(v132 + 32))(v135, v138, v140);
      }

      v141 = v221;
      v142 = type metadata accessor for UsageDetails();
      v143 = objc_allocWithZone(v142);
      *&v143[OBJC_IVAR____TtC20ScreenTimeSettingsUI12UsageDetails_usageItems] = v137;
      (*(v132 + 16))(&v143[OBJC_IVAR____TtC20ScreenTimeSettingsUI12UsageDetails_lastUpdatedDate], v135, v140);
      *&v143[OBJC_IVAR____TtC20ScreenTimeSettingsUI12UsageDetails_firstPickupByWeekdayByWeek] = v141;
      v211.receiver = v143;
      v211.super_class = v142;
      v44 = objc_msgSendSuper2(&v211, sel_init);
      (*(v132 + 8))(v135, v140);
      (*(v150 + 8))(v155, v136);
      sub_264C646E4(v157, &unk_27FFA9B80);
      return v44;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_264C6A61C()
{
  result = qword_27FFA92B8;
  if (!qword_27FFA92B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA92C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA92B8);
  }

  return result;
}

uint64_t sub_264C6A688()
{
  result = sub_264CC2FCC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_264C6A7A4()
{
  result = qword_27FFA92E0;
  if (!qword_27FFA92E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFA92E0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_264C6A834(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_264C6A8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
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

uint64_t sub_264C6A9DC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_264C6AA24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264CC3CBC();
  v18 = 1;
  sub_264C6AB40(a1, __src);
  memcpy(__dst, __src, 0x171uLL);
  memcpy(v20, __src, 0x171uLL);
  sub_264C6467C(__dst, v15, &qword_27FFA9360);
  sub_264C646E4(v20, &qword_27FFA9360);
  memcpy(&v17[7], __dst, 0x171uLL);
  v5 = v18;
  LOBYTE(a1) = sub_264CC3EBC();
  sub_264CC39DC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  result = memcpy((a2 + 17), v17, 0x178uLL);
  *(a2 + 400) = a1;
  *(a2 + 408) = v7;
  *(a2 + 416) = v9;
  *(a2 + 424) = v11;
  *(a2 + 432) = v13;
  *(a2 + 440) = 0;
  return result;
}

uint64_t sub_264C6AB40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v58 = sub_264CC41EC();
  v57 = sub_264CC3EFC();
  KeyPath = swift_getKeyPath();
  v55 = sub_264CC417C();
  v54 = sub_264CC3E9C();
  sub_264CC39DC();
  v4 = v3;
  v52 = v5;
  v53 = v3;
  v6 = v5;
  v8 = v7;
  v50 = v9;
  v51 = v7;
  v10 = v9;
  sub_264CC417C();
  v49 = sub_264CC418C();

  v48 = sub_264CC3E9C();
  v47 = sub_264CC3EAC();
  sub_264CC39DC();
  v12 = v11;
  v45 = v13;
  v46 = v11;
  v14 = v13;
  v16 = v15;
  v43 = v17;
  v44 = v15;
  v18 = v17;
  v19 = sub_264CC3D3C();
  LOBYTE(v101[0]) = 1;
  sub_264C6B058(a1, v62);
  *&v61[7] = v62[0];
  *&v61[23] = v62[1];
  *&v61[39] = v62[2];
  *&v61[55] = v62[3];
  LOBYTE(a1) = v101[0];
  v37 = sub_264CC3ECC();
  sub_264CC39DC();
  v35 = v21;
  v36 = v20;
  v33 = v23;
  v34 = v22;
  v42 = sub_264CC41EC();
  v41 = sub_264CC3EFC();
  v40 = swift_getKeyPath();
  v39 = sub_264CC3DDC();
  v38 = sub_264CC3EAC();
  sub_264CC39DC();
  *&v63 = v58;
  *(&v63 + 1) = KeyPath;
  *&v64 = v57;
  *(&v64 + 1) = v55;
  v65 = xmmword_264CD2380;
  LOBYTE(v66) = v54;
  *(&v66 + 1) = v4;
  *&v67 = v6;
  *(&v67 + 1) = v8;
  *&v68 = v10;
  BYTE8(v68) = 0;
  *&v69 = v49;
  BYTE8(v69) = v48;
  *(&v69 + 9) = 256;
  LOBYTE(v70) = v47;
  *(&v70 + 1) = v12;
  *v71 = v14;
  *&v71[8] = v16;
  *&v71[16] = v18;
  v71[24] = 0;
  __src[4] = v67;
  __src[5] = v68;
  __src[2] = xmmword_264CD2380;
  __src[3] = v66;
  __src[0] = v63;
  __src[1] = v64;
  *(&__src[8] + 9) = *&v71[9];
  __src[6] = v69;
  __src[7] = v70;
  v72 = v19;
  v73[0] = a1;
  *&v73[49] = *&v61[48];
  *&v73[33] = *&v61[32];
  *&v73[17] = *&v61[16];
  *&v73[1] = *v61;
  *&v73[64] = *&v61[63];
  v73[72] = v37;
  *&v74 = v36;
  *(&v74 + 1) = v35;
  *&v75 = v34;
  *(&v75 + 1) = v33;
  __src[8] = *v71;
  __src[10] = v19;
  __src[11] = *v73;
  __src[16] = v74;
  __src[17] = v75;
  __src[13] = *&v73[32];
  __src[14] = *&v73[48];
  LOBYTE(v101[0]) = 0;
  v76 = 0;
  LOBYTE(__src[18]) = 0;
  __src[15] = *&v73[64];
  __src[12] = *&v73[16];
  *&v77 = v42;
  *(&v77 + 1) = v40;
  *&v78 = v41;
  DWORD2(v78) = v39;
  LOBYTE(v79) = v38;
  v25 = v24;
  *(&v79 + 1) = v24;
  v27 = v26;
  *v80 = v26;
  v29 = v28;
  *&v80[8] = v28;
  v31 = v30;
  *&v80[16] = v30;
  v80[24] = 0;
  *(&__src[20] + 8) = v79;
  *(&__src[21] + 8) = *v80;
  *(&__src[22] + 1) = *&v80[9];
  *(&__src[18] + 8) = v77;
  *(&__src[19] + 8) = v78;
  memcpy(a2, __src, 0x171uLL);
  v81[0] = v42;
  v81[1] = v40;
  v81[2] = v41;
  v82 = v39;
  v83 = v38;
  v84 = v25;
  v85 = v27;
  v86 = v29;
  v87 = v31;
  v88 = 0;
  sub_264C6467C(&v63, v101, &qword_27FFA9368);
  sub_264C6467C(&v72, v101, &qword_27FFA9370);
  sub_264C6467C(&v77, v101, &qword_27FFA9378);
  sub_264C646E4(v81, &qword_27FFA9378);
  v92 = *&v61[16];
  v93 = *&v61[32];
  *v94 = *&v61[48];
  v89[0] = v19;
  v89[1] = 0;
  v90 = a1;
  *&v94[15] = *&v61[63];
  v91 = *v61;
  v95 = v37;
  v96 = v36;
  v97 = v35;
  v98 = v34;
  v99 = v33;
  v100 = 0;
  sub_264C646E4(v89, &qword_27FFA9370);
  v101[0] = v58;
  v101[1] = KeyPath;
  v101[2] = v57;
  v101[3] = v55;
  v102 = xmmword_264CD2380;
  v103 = v54;
  v104 = v53;
  v105 = v52;
  v106 = v51;
  v107 = v50;
  v108 = 0;
  v109 = v49;
  v110 = v48;
  v111 = 256;
  v112 = v47;
  v113 = v46;
  v114 = v45;
  v115 = v44;
  v116 = v43;
  v117 = 0;
  return sub_264C646E4(v101, &qword_27FFA9368);
}

id sub_264C6B058@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  result = [result propertyForKey_];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_264CC489C();
  swift_unknownObjectRelease();
  sub_264C6B7DC(v23, v24);
  swift_dynamicCast();
  LODWORD(v24[0]) = sub_264CC3DBC();
  v4 = sub_264CC3F6C();
  v6 = v5;
  v8 = v7;

  v9 = sub_264CC3F8C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_264C64798(v4, v6, v8 & 1);

  result = [v2 propertyForKey_];
  if (result)
  {
    sub_264CC489C();
    swift_unknownObjectRelease();
    sub_264C6B7DC(v23, v24);
    swift_dynamicCast();
    sub_264CC3DDC();
    v16 = sub_264CC3F6C();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13 & 1;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
    *(a2 + 40) = v18;
    *(a2 + 48) = v20 & 1;
    *(a2 + 56) = v22;
    sub_264C63D0C(v9, v11, v13 & 1);

    sub_264C63D0C(v16, v18, v20 & 1);

    sub_264C64798(v16, v18, v20 & 1);

    sub_264C64798(v9, v11, v13 & 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_264C6B490(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_264CC459C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id sub_264C6B6C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_264C6B724()
{
  result = qword_27FFA9340;
  if (!qword_27FFA9340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9338);
    sub_264C64918(&qword_27FFA9348, &qword_27FFA9350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9340);
  }

  return result;
}

_OWORD *sub_264C6B7DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_264C6B7EC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_264C6B86C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264CC393C();
}

uint64_t sub_264C6B8F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  return v1;
}

uint64_t sub_264C6B964(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA93C8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9388);
  sub_264CC390C();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_264C6BB04@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  *a1 = v3;
  return result;
}

uint64_t sub_264C6BB84()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264CC393C();
}

uint64_t sub_264C6BBF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  return v1;
}

uint64_t sub_264C6BC6C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264CC393C();
}

void (*sub_264C6BCDC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264CC391C();
  return sub_264C6BD80;
}

void sub_264C6BD80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_264C6BDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_264CC38FC();
  return swift_endAccess();
}

uint64_t sub_264C6BE64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9398);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10);
  sub_264CC390C();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_264C6C004(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_264CC38FC();
  return swift_endAccess();
}

uint64_t sub_264C6C07C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9398);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10);
  sub_264CC390C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_264C6C1B4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9398);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator__isAnimating;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10);
  sub_264CC38FC();
  swift_endAccess();
  return sub_264C6C324;
}

void sub_264C6C324(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_264CC390C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_264CC390C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t STMicaAnimator.__allocating_init(states:delay:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  STMicaAnimator.init(states:delay:)(a1, a2, a3);
  return v6;
}

uint64_t STMicaAnimator.init(states:delay:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  v15 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator__isAnimating;
  v25 = 0;
  sub_264CC38EC();
  result = (*(v12 + 32))(v4 + v15, v14, v11);
  *(v4 + OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator_states) = a1;
  v17 = (v4 + OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator_delay);
  *v17 = a2;
  v17[1] = a3;
  if (a1[2])
  {
    v19 = a1[4];
    v18 = a1[5];
    swift_beginAccess();
    v24[1] = v19;
    v24[2] = v18;

    sub_264CC38EC();
    swift_endAccess();
    v20 = sub_264CC477C();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    sub_264CC474C();

    v21 = sub_264CC473C();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v4;
    sub_264C6D038(0, 0, v10, &unk_264CD24F8, v22);

    swift_getKeyPath();
    swift_getKeyPath();
    v25 = 1;

    sub_264CC393C();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264C6C7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA93E0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9398);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA93E8);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = sub_264CC474C();
  v4[17] = sub_264CC473C();
  v9 = sub_264CC471C();
  v4[18] = v9;
  v4[19] = v8;

  return MEMORY[0x2822009F8](sub_264C6C978, v9, v8);
}

uint64_t sub_264C6C978()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10);
  sub_264CC38FC();
  swift_endAccess();
  v7 = sub_264C64918(&qword_27FFA93F0, &qword_27FFA9398);
  MEMORY[0x26674A660](v4, v7);
  (*(v2 + 8))(v1, v4);
  sub_264CC38CC();
  (*(v6 + 8))(v3, v5);
  v0[20] = sub_264CC473C();
  v8 = sub_264C64918(&qword_27FFA93F8, &qword_27FFA93E8);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_264C6CB58;
  v10 = v0[13];

  return MEMORY[0x282200308](v0 + 23, v10, v8);
}

uint64_t sub_264C6CB58()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_264CC471C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_264C6CEF8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_264CC471C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_264C6CCF0;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_264C6CCF0()
{

  *(v0 + 185) = *(v0 + 184);
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_264C6CD5C, v1, v2);
}

uint64_t sub_264C6CD5C()
{
  v1 = *(v0 + 185);
  if (v1 == 2)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (v1)
    {
      (*(**(v0 + 48) + 248))();
    }

    *(v0 + 160) = sub_264CC473C();
    v4 = sub_264C64918(&qword_27FFA93F8, &qword_27FFA93E8);
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    *v5 = v0;
    v5[1] = sub_264C6CB58;
    v6 = *(v0 + 104);

    return MEMORY[0x282200308](v0 + 184, v6, v4);
  }
}

uint64_t sub_264C6CEF8()
{
  *(v0 + 40) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9400);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_264C6CF84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264C6EA28;

  return sub_264C6C7A4(a1, v4, v5, v6);
}

uint64_t sub_264C6D038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_264C6E7DC(a3, v25 - v10);
  v12 = sub_264CC477C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_264C6E84C(v11);
  }

  else
  {
    sub_264CC476C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_264CC471C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_264CC45FC() + 32;
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

      sub_264C6E84C(a3);

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

  sub_264C6E84C(a3);
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

uint64_t sub_264C6D2F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_264CC477C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_264CC474C();

  v6 = sub_264CC473C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_264C6D038(0, 0, v4, &unk_264CD2508, v7);
}

uint64_t sub_264C6D41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_264CC49BC();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = sub_264CC49CC();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  sub_264CC474C();
  v4[20] = sub_264CC473C();
  v8 = sub_264CC471C();
  v4[21] = v8;
  v4[22] = v7;

  return MEMORY[0x2822009F8](sub_264C6D578, v8, v7);
}

uint64_t sub_264C6D578()
{
  v4 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator_delay;
  *(v0 + 184) = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator_states;
  *(v0 + 192) = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (*(v0 + 57) == 1)
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 96);
    swift_beginAccess();
    v7 = *(v6 + v5);
    v8 = *(v7 + 2);
    if (v8)
    {
      v9 = *(v0 + 184);
      v10 = *(v0 + 96);
      v3 = *(v7 + 4);
      v5 = *(v7 + 5);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + v9) = v7;
      if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > *(v7 + 3) >> 1)
      {
        v12 = *(v0 + 184);
        v13 = *(v0 + 96);
        v7 = sub_264C9895C(isUniquelyReferenced_nonNull_native, v8, 1, v7);
        *(v13 + v12) = v7;
      }

      v14 = *(v0 + 184);
      v15 = *(v0 + 96);
      sub_264C6E740((v7 + 32));
      v16 = *(v7 + 2);
      memmove(v7 + 32, v7 + 48, 16 * v16 - 16);
      *(v7 + 2) = v16 - 1;
      *(v15 + v14) = v7;
      v2 = *(v7 + 2);
      v1 = *(v7 + 3);
      v8 = v2 + 1;

      if (v2 < v1 >> 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v7 = sub_264C9895C((v1 > 1), v8, 1, v7);
LABEL_7:
    v17 = *(v0 + 184);
    v18 = *(v0 + 96);
    v19 = (v18 + *(v0 + 192));
    *(v7 + 2) = v8;
    v20 = &v7[16 * v2];
    *(v20 + 4) = v3;
    *(v20 + 5) = v5;
    *(v18 + v17) = v7;
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 64) = v3;
    *(v0 + 72) = v5;

    sub_264CC393C();
    v22 = *v19;
    v21 = v19[1];
    sub_264CC4B0C();
    *(v0 + 80) = v22;
    *(v0 + 88) = v21;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;

    return MEMORY[0x2822009F8](sub_264C6D830, 0, 0);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_264C6D830()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = sub_264C6E794(&qword_27FFA93D0, MEMORY[0x277D85928]);
  sub_264CC4AEC();
  sub_264C6E794(&qword_27FFA93D8, MEMORY[0x277D858F8]);
  sub_264CC49DC();
  v5 = *(v2 + 8);
  v0[25] = v5;
  v0[26] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_264C6D9B4;
  v8 = v0[16];
  v7 = v0[17];

  return MEMORY[0x2822008C8](v8, v0 + 5, v7, v4);
}

uint64_t sub_264C6D9B4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[25];
    v4 = v2[16];
    v5 = v2[13];

    v3(v4, v5);
    v6 = sub_264C6DDCC;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = v2[18];
    v9 = v2[19];
    v11 = v2[17];
    (v2[25])(v2[16], v2[13]);
    (*(v10 + 8))(v9, v11);
    v7 = v2[21];
    v8 = v2[22];
    v6 = sub_264C6DB28;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_264C6DB28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (*(v0 + 57) == 1)
  {
    v4 = *(v0 + 184);
    v5 = *(v0 + 96);
    swift_beginAccess();
    v6 = *(v5 + v4);
    v7 = *(v6 + 2);
    if (v7)
    {
      v8 = *(v0 + 184);
      v9 = *(v0 + 96);
      v3 = *(v6 + 4);
      v4 = *(v6 + 5);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + v8) = v6;
      if (!isUniquelyReferenced_nonNull_native || (v7 - 1) > *(v6 + 3) >> 1)
      {
        v11 = *(v0 + 184);
        v12 = *(v0 + 96);
        v6 = sub_264C9895C(isUniquelyReferenced_nonNull_native, v7, 1, v6);
        *(v12 + v11) = v6;
      }

      v13 = *(v0 + 184);
      v14 = *(v0 + 96);
      sub_264C6E740((v6 + 32));
      v15 = *(v6 + 2);
      memmove(v6 + 32, v6 + 48, 16 * v15 - 16);
      *(v6 + 2) = v15 - 1;
      *(v14 + v13) = v6;
      v2 = *(v6 + 2);
      v1 = *(v6 + 3);
      v7 = v2 + 1;

      if (v2 < v1 >> 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v6 = sub_264C9895C((v1 > 1), v7, 1, v6);
LABEL_7:
    v16 = *(v0 + 184);
    v17 = *(v0 + 96);
    v18 = (v17 + *(v0 + 192));
    *(v6 + 2) = v7;
    v19 = &v6[16 * v2];
    *(v19 + 4) = v3;
    *(v19 + 5) = v4;
    *(v17 + v16) = v6;
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 64) = v3;
    *(v0 + 72) = v4;

    sub_264CC393C();
    v21 = *v18;
    v20 = v18[1];
    sub_264CC4B0C();
    *(v0 + 80) = v21;
    *(v0 + 88) = v20;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;

    return MEMORY[0x2822009F8](sub_264C6D830, 0, 0);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_264C6DDCC()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x2822009F8](sub_264C6EA24, v1, v2);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_264C6DE80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264C6DF34;

  return sub_264C6D41C(a1, v4, v5, v6);
}

uint64_t sub_264C6DF34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t STMicaAnimator.deinit()
{
  v1 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator__currentState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9388);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator__isAnimating;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t STMicaAnimator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator__currentState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9388);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator__isAnimating;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_264C6E200@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for STMicaAnimator();
  result = sub_264CC38DC();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for STMicaAnimator()
{
  result = qword_27FFA93B0;
  if (!qword_27FFA93B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264C6E294()
{
  sub_264C6E504(319, &qword_27FFA93C0);
  if (v0 <= 0x3F)
  {
    sub_264C6E504(319, &qword_27FFA9E00);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_264C6E504(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_264CC394C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_264C6E550(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_264C6E648;

  return v6(a1);
}

uint64_t sub_264C6E648()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264C6E794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264C6E7DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264C6E84C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264C6E8B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264C6EA28;

  return sub_264C6E550(a1, v4);
}

uint64_t sub_264C6E96C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264C6DF34;

  return sub_264C6E550(a1, v4);
}

uint64_t DeviceDetails.coreDuetIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_coreDuetIdentifier);

  return v1;
}

uint64_t DeviceDetails.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_identifier);

  return v1;
}

id sub_264C6EAC8()
{

  v0 = sub_264CC459C();

  return v0;
}

uint64_t DeviceDetails.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_name);

  return v1;
}

uint64_t DeviceDetails.lastUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_lastUpdatedDate;
  v4 = sub_264CC2FCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id DeviceDetails.__allocating_init(coreDuetIdentifier:identifier:name:platform:isLocalDevice:lastUpdatedDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, char a8, uint64_t a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_coreDuetIdentifier];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_identifier];
  *v20 = a3;
  v20[1] = a4;
  v21 = &v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_name];
  *v21 = a5;
  v21[1] = a6;
  *&v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_platform] = a7;
  v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_isLocalDevice] = a8;
  v22 = OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_lastUpdatedDate;
  v23 = sub_264CC2FCC();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v18[v22], a9, v23);
  v27.receiver = v18;
  v27.super_class = v9;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  (*(v24 + 8))(a9, v23);
  return v25;
}

id DeviceDetails.init(coreDuetIdentifier:identifier:name:platform:isLocalDevice:lastUpdatedDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, char a8, uint64_t a9)
{
  v10 = &v9[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_coreDuetIdentifier];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v9[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_identifier];
  *v11 = a3;
  v11[1] = a4;
  v12 = &v9[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_name];
  *v12 = a5;
  v12[1] = a6;
  *&v9[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_platform] = a7;
  v9[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_isLocalDevice] = a8;
  v13 = OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_lastUpdatedDate;
  v14 = sub_264CC2FCC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v9[v13], a9, v14);
  v18.receiver = v9;
  v18.super_class = type metadata accessor for DeviceDetails();
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v15 + 8))(a9, v14);
  return v16;
}

uint64_t type metadata accessor for DeviceDetails()
{
  result = qword_27FFA9430;
  if (!qword_27FFA9430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DeviceDetails.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceDetails();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264C6F3F4()
{
  qword_27FFAC270 = sub_264CC37BC();
  unk_27FFAC278 = &off_28766BE48;
  __swift_allocate_boxed_opaque_existential_1(qword_27FFAC258);
  return sub_264CC32CC();
}

uint64_t sub_264C6F434()
{
  qword_27FFAC298 = sub_264CC335C();
  unk_27FFAC2A0 = &off_28766BE58;
  __swift_allocate_boxed_opaque_existential_1(qword_27FFAC280);
  return sub_264CC334C();
}

uint64_t sub_264C6F474()
{
  v88 = sub_264CC2FCC();
  v104 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = v74 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FFA9440);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v82 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v74 - v6;
  MEMORY[0x28223BE20](v5);
  v86 = v74 - v8;
  v99 = sub_264CC31FC();
  v103 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264CC329C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v85 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v91 = v74 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v74 - v17;
  v108 = MEMORY[0x277D84F90];
  if (qword_27FFA8FD8 != -1)
  {
    swift_once();
  }

  sub_264C6A834(qword_27FFAC280, &v106);
  __swift_project_boxed_opaque_existential_1(&v106, v107);
  v19 = sub_264CC333C();
  if (v0)
  {

    v81 = 0;
    v89 = 0;
  }

  else
  {
    v81 = v19;
    v89 = v20;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v106);
  if (qword_27FFA8FD0 != -1)
  {
    swift_once();
  }

  sub_264C6A834(qword_27FFAC258, &v106);
  __swift_project_boxed_opaque_existential_1(&v106, v107);
  v21 = sub_264CC379C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v106);
  v23 = *(v21 + 16);
  if (!v23)
  {

    v72 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v74[1] = 0;
  v25 = v12 + 16;
  v24 = *(v12 + 16);
  v26 = (*(v25 + 64) + 32) & ~*(v25 + 64);
  v74[0] = v21;
  v27 = v21 + v26;
  v84 = (v104 + 16);
  v97 = *(v25 + 56);
  v78 = *MEMORY[0x277CC57F8];
  v77 = *MEMORY[0x277CC57F0];
  v76 = *MEMORY[0x277CC57E8];
  v75 = *MEMORY[0x277CC57E0];
  v83 = (v104 + 8);
  v95 = (v25 - 8);
  v96 = (v103 + 8);
  v94 = MEMORY[0x277D84F90];
  *&v22 = 136446210;
  v79 = v22;
  v90 = v7;
  v98 = v10;
  v102 = v25;
  v103 = v11;
  v101 = v24;
  v80 = v18;
  do
  {
    v104 = v23;
    v24(v18, v27, v11);
    sub_264CC328C();
    v29 = sub_264CC31CC();
    if (v30)
    {
      v31 = v29;
      v32 = v30;
      v33 = sub_264CC31DC();
      if (v34)
      {
        v35 = v34;
        v100 = v33;
        v36 = sub_264CC31BC();
        v93 = v37;
        v94 = v36;
        sub_264CC31EC();
        v38 = v86;
        sub_264CC32EC();
        sub_264C70078(v38, v7);
        v39 = sub_264CC32FC();
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v7, 1, v39) == 1)
        {
LABEL_16:
          v92 = 0;
LABEL_34:
          sub_264C700E8(v7);
          v60 = sub_264CC31BC();
          if (v89)
          {
            if (v60 == v81 && v89 == v61)
            {
              v62 = 1;
            }

            else
            {
              v62 = sub_264CC4AAC();
            }
          }

          else
          {
            v62 = 0;
          }

          v63 = v87;
          sub_264CC327C();
          v64 = type metadata accessor for DeviceDetails();
          v65 = objc_allocWithZone(v64);
          v66 = &v65[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_coreDuetIdentifier];
          *v66 = v31;
          v66[1] = v32;
          v67 = &v65[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_identifier];
          v68 = v93;
          *v67 = v94;
          v67[1] = v68;
          v69 = &v65[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_name];
          *v69 = v100;
          v69[1] = v35;
          *&v65[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_platform] = v92;
          v65[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_isLocalDevice] = v62 & 1;
          v70 = v88;
          (*v84)(&v65[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_lastUpdatedDate], v63, v88);
          v105.receiver = v65;
          v105.super_class = v64;
          objc_msgSendSuper2(&v105, sel_init, v74[0]);
          v71 = (*v83)(v63, v70);
          MEMORY[0x26674B340](v71);
          if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_264CC46BC();
          }

          sub_264CC46DC();
          v10 = v98;
          (*v96)(v98, v99);
          v11 = v103;
          (*v95)(v18, v103);
          v94 = v108;
          v7 = v90;
          goto LABEL_12;
        }

        v55 = v82;
        sub_264C70150(v7, v82);
        v56 = (*(v40 + 88))(v55, v39);
        if (v56 == v78 || v56 == v77 || v56 == v76)
        {
          v59 = 2;
        }

        else
        {
          if (v56 != v75)
          {
            (*(v40 + 8))(v82, v39);
            goto LABEL_16;
          }

          v59 = 1;
        }

        v92 = v59;
        goto LABEL_34;
      }

      v24 = v101;
    }

    v100 = v27;
    if (qword_27FFA9008 != -1)
    {
      swift_once();
    }

    v41 = sub_264CC387C();
    __swift_project_value_buffer(v41, qword_27FFAC2C8);
    v42 = v91;
    v24(v91, v18, v11);
    v43 = sub_264CC385C();
    v44 = v24;
    v45 = sub_264CC47FC();
    if (os_log_type_enabled(v43, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v106 = v47;
      *v46 = v79;
      v44(v85, v42, v11);
      v48 = sub_264CC45EC();
      v50 = v49;
      v51 = *v95;
      (*v95)(v42, v103);
      v52 = sub_264C85E3C(v48, v50, &v106);
      v7 = v90;

      *(v46 + 4) = v52;
      _os_log_impl(&dword_264BA2000, v43, v45, "Skipping device without Core Duet identifier or name: %{public}s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      v53 = v47;
      v10 = v98;
      MEMORY[0x26674C780](v53, -1, -1);
      v54 = v46;
      v18 = v80;
      MEMORY[0x26674C780](v54, -1, -1);

      (*v96)(v10, v99);
      v51(v18, v103);
      v11 = v103;
    }

    else
    {

      v28 = *v95;
      (*v95)(v42, v11);
      (*v96)(v10, v99);
      v28(v18, v11);
    }

    v27 = v100;
LABEL_12:
    v27 += v97;
    v23 = v104 - 1;
    v24 = v101;
  }

  while (v104 != 1);

  v72 = v94;
LABEL_46:

  return v72;
}

uint64_t sub_264C6FF3C()
{
  result = sub_264CC2FCC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_264C70078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FFA9440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264C700E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FFA9440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264C70150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FFA9440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264C701C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264C7021C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_264C70264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264C70348@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v4 = sub_264CC477C();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  sub_264CC3D9C();
  v7 = sub_264C713C4();
  v8 = *(a1 + 24);
  v41 = v7;
  v42 = v8;
  swift_getWitnessTable();
  v9 = sub_264CC432C();
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  sub_264CC3ACC();
  v12 = sub_264CC3B5C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v29 = &v29 - v17;
  v35 = v6;
  v36 = v8;
  v37 = v2;
  sub_264CC3D2C();
  sub_264CC431C();
  v45 = *v2;
  v18 = *(v2 + 6);
  v43 = *(v2 + 7);
  v44 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = v8;
  v20 = v2[1];
  *(v19 + 32) = *v2;
  *(v19 + 48) = v20;
  v21 = v2[3];
  *(v19 + 64) = v2[2];
  *(v19 + 80) = v21;
  sub_264C714CC(&v45, v40);

  sub_264C6467C(&v44, v40, &qword_27FFA94E0);
  sub_264C6467C(&v43, v40, &qword_27FFA94E8);
  WitnessTable = swift_getWitnessTable();
  v23 = v31;
  sub_264CC475C();
  sub_264CC40EC();

  (*(v32 + 8))(v23, v33);
  (*(v30 + 8))(v11, v9);
  v24 = sub_264C71528();
  v38 = WitnessTable;
  v39 = v24;
  swift_getWitnessTable();
  v25 = *(v13 + 16);
  v26 = v29;
  v25(v29, v16, v12);
  v27 = *(v13 + 8);
  v27(v16, v12);
  v25(v34, v26, v12);
  return (v27)(v26, v12);
}

uint64_t sub_264C70780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = sub_264CC3D9C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  v27 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA94F0);
  v17 = sub_264CC425C();
  v18 = v31;
  if (v31)
  {
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    *&v27 = v31;
    *(&v27 + 1) = v19;
    v28 = v20;
    sub_264C713C4();
    v21 = v26;
    sub_264C70A68(&v27, &type metadata for AppIconImage);
  }

  else
  {
    (*(a1 + 32))(v17);
    v22 = *(v7 + 16);
    v22(v12, v10, a2);
    v25 = a4;
    v23 = *(v7 + 8);
    v23(v10, a2);
    v22(v10, v12, a2);
    sub_264C713C4();
    v21 = v26;
    sub_264C70B60(v10, &type metadata for AppIconImage, a2);
    v23(v10, a2);
    v23(v12, a2);
    a4 = v25;
  }

  v29 = sub_264C713C4();
  v30 = v21;
  swift_getWitnessTable();
  (*(v14 + 16))(a4, v16, v13);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_264C70A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_264CC3D7C();
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_264CC3D8C();
}

uint64_t sub_264C70B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264CC3D7C();
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_264CC3D8C();
}

uint64_t sub_264C70C58(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_264CC474C();
  v1[7] = sub_264CC473C();
  v2 = swift_task_alloc();
  v1[8] = v2;
  type metadata accessor for AppIcon();
  *v2 = v1;
  v2[1] = sub_264C70D2C;

  return sub_264C70F0C();
}

uint64_t sub_264C70D2C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C70E70, v3, v2);
}

uint64_t sub_264C70E70()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + 48);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA94F0);
  sub_264CC426C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264C70F0C()
{
  v1[19] = v0;
  sub_264CC474C();
  v1[20] = sub_264CC473C();
  v3 = sub_264CC471C();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x2822009F8](sub_264C70FA4, v3, v2);
}

uint64_t sub_264C70FA4()
{
  v1 = [objc_opt_self() sharedCache];
  v0[23] = v1;
  v2 = sub_264CC459C();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_264C71104;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA94F8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264C71288;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 imageForBundleIdentifier:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264C71104()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_264C7120C, v2, v1);
}

uint64_t sub_264C7120C()
{
  v2 = v0[23];
  v1 = v0[24];

  v3 = v0[18];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_264C71288(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_264C71328@<X0>(uint64_t *a1@<X8>)
{
  sub_264CC414C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA94C8);
  sub_264C64918(&qword_27FFA94D0, &qword_27FFA94C8);
  result = sub_264CC433C();
  *a1 = result;
  return result;
}

unint64_t sub_264C713C4()
{
  result = qword_27FFA94D8;
  if (!qword_27FFA94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA94D8);
  }

  return result;
}

uint64_t sub_264C71424()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_264C6DF34;

  return sub_264C70C58(v0 + 32);
}

unint64_t sub_264C71528()
{
  result = qword_27FFA9048;
  if (!qword_27FFA9048)
  {
    sub_264CC3ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9048);
  }

  return result;
}

uint64_t sub_264C71590(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_264C71638(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_264C71680(uint64_t result, int a2, int a3)
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

double sub_264C716EC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_264CC41FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  sub_264CC41DC();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v13 = sub_264CC420C();
  (*(v9 + 8))(v11, v8);
  if (a3)
  {
    v18 = v13;
    v19 = 0;
    v20 = 1;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9500);
    sub_264C64918(&qword_27FFA9508, &qword_27FFA9500);
    sub_264CC3D8C();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a2;
    v18 = sub_264C71994;
    v19 = v14;
    v20 = 0;
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9500);
    sub_264C64918(&qword_27FFA9508, &qword_27FFA9500);
    sub_264CC3D8C();
  }

  result = *&v21;
  v16 = v22;
  *a4 = v21;
  *(a4 + 16) = v16;
  return result;
}

unint64_t sub_264C719A0()
{
  result = qword_27FFA9510;
  if (!qword_27FFA9510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9518);
    sub_264C64918(&qword_27FFA9508, &qword_27FFA9500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9510);
  }

  return result;
}

id STAllActivityViewController.__allocating_init(userAltDSID:deviceIdentifier:)()
{
  v1 = objc_allocWithZone(v0);
  sub_264CC380C();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC20ScreenTimeSettingsUI27STAllActivityViewController_bridge] = sub_264CC37FC();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

id STAllActivityViewController.init(userAltDSID:deviceIdentifier:)()
{
  ObjectType = swift_getObjectType();
  sub_264CC380C();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC20ScreenTimeSettingsUI27STAllActivityViewController_bridge] = sub_264CC37FC();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

Swift::Void __swiftcall STAllActivityViewController.update(userAltDSID:deviceIdentifier:)(Swift::String_optional userAltDSID, Swift::String_optional deviceIdentifier)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9528);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;

  sub_264CC37CC();
  v5 = sub_264CC37DC();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_264CC37EC();
}

Swift::Void __swiftcall STAllActivityViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_264CC382C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v41.receiver = v1;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, sel_viewDidLoad);

  sub_264CC381C();
  (*(v4 + 16))(v7, v9, v3);
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9530));
  v11 = sub_264CC3D5C();
  [v1 addChildViewController_];
  v12 = [v11 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  v39 = v4;
  v40 = v3;
  [v14 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D00);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_264CD2870;
  v17 = [v13 topAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 topAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v16 + 32) = v21;
  v22 = [v13 bottomAnchor];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 bottomAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v16 + 40) = v26;
  v27 = [v13 leadingAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29 = v28;
  v30 = [v28 leadingAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v16 + 48) = v31;
  v32 = [v13 trailingAnchor];
  v33 = [v1 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 trailingAnchor];

    v37 = [v32 constraintEqualToAnchor_];
    *(v16 + 56) = v37;
    sub_264C723C0();
    v38 = sub_264CC468C();

    [v35 activateConstraints_];

    [v11 didMoveToParentViewController_];
    (*(v39 + 8))(v9, v40);
    return;
  }

LABEL_13:
  __break(1u);
}

unint64_t sub_264C723C0()
{
  result = qword_27FFA9538;
  if (!qword_27FFA9538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFA9538);
  }

  return result;
}

id STAllActivityViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_264CC459C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id STAllActivityViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_264C725E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_264C72640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_264C726C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_264C72708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264C72774@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9540);
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v2 = &v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9548);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9550);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - v7;
  type metadata accessor for SettingsPresetViewModel();
  sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel);
  v9 = sub_264CC3A0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (v22 == 1)
  {
    sub_264CC3A4C();
    v10 = v19;
    (*(v6 + 16))(v5, v8, v19);
    swift_storeEnumTagMultiPayload();
    sub_264C64918(&qword_27FFA9560, &qword_27FFA9550);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9050);
    v12 = sub_264C77588();
    v22 = v11;
    v23 = v12;
    swift_getOpaqueTypeConformance2();
    sub_264CC3D8C();
    return (*(v6 + 8))(v8, v10);
  }

  else
  {
    sub_264C72B80(v2);
    v14 = v18;
    v15 = v21;
    (*(v18 + 16))(v5, v2, v21);
    swift_storeEnumTagMultiPayload();
    sub_264C64918(&qword_27FFA9560, &qword_27FFA9550);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9050);
    v17 = sub_264C77588();
    v22 = v16;
    v23 = v17;
    swift_getOpaqueTypeConformance2();
    sub_264CC3D8C();
    return (*(v14 + 8))(v2, v15);
  }
}

uint64_t sub_264C72B80@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9050) - 8);
  MEMORY[0x28223BE20](v41);
  v3 = &v37 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9570);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9580);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v43 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9598);
  sub_264C64918(&qword_27FFA95A0, &qword_27FFA9598);
  sub_264CC3F4C();
  sub_264C64918(&qword_27FFA9588, &qword_27FFA9580);
  sub_264CC40CC();
  (*(v8 + 8))(v10, v7);
  *&v6[*(v4 + 36)] = 256;
  sub_264C77650();
  sub_264CC40BC();
  sub_264BA57D0(v6);
  v48[0] = *(v1 + 24);
  v45[0] = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95A8);
  sub_264CC427C();
  v11 = v46;
  v12 = v47;
  v46 = *v1;
  v47 = *(v1 + 16);
  v13 = swift_allocObject();
  v14 = v1[1];
  *(v13 + 16) = *v1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v1 + 4);
  v15 = *(v41 + 11);
  v41 = v3;
  v16 = &v3[v15];
  *v16 = v11;
  v16[16] = v12;
  *(v16 + 3) = &unk_264CD2B88;
  *(v16 + 4) = v13;
  sub_264CC474C();
  sub_264C6467C(&v46, v45, &qword_27FFA95B0);
  sub_264C6467C(v48, v45, &qword_27FFA95A8);
  sub_264C6467C(&v46, v45, &qword_27FFA95B0);
  sub_264C6467C(v48, v45, &qword_27FFA95A8);
  v17 = sub_264CC473C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = v1[1];
  *(v18 + 32) = *v1;
  *(v18 + 48) = v20;
  *(v18 + 64) = *(v1 + 4);
  v21 = sub_264CC477C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v37 - v24;
  sub_264CC475C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v39 = sub_264CC3B2C();
    v40 = &v37;
    v38 = *(v39 - 8);
    MEMORY[0x28223BE20](v39);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v45[0] = 0;
    *(&v45[0] + 1) = 0xE000000000000000;
    sub_264CC492C();

    *&v45[0] = 0xD00000000000003BLL;
    *(&v45[0] + 1) = 0x8000000264CE10A0;
    v44 = 190;
    v28 = sub_264CC4A7C();
    MEMORY[0x26674B2E0](v28);

    MEMORY[0x28223BE20](v29);
    (*(v22 + 16))(&v37 - v24, v25, v21);
    sub_264CC3B1C();
    (*(v22 + 8))(v25, v21);
    v30 = v42;
    sub_264BA58C8(v41, v42);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9058);
    return (*(v38 + 32))(v30 + *(v31 + 36), v27, v39);
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9060);
    v34 = v42;
    v35 = (v42 + *(v33 + 36));
    v36 = sub_264CC3ACC();
    (*(v22 + 32))(&v35[*(v36 + 20)], &v37 - v24, v21);
    *v35 = &unk_264CD2BA0;
    *(v35 + 1) = v18;
    return sub_264BA58C8(v41, v34);
  }
}

uint64_t sub_264C73204(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  __dst[0] = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95A8);
  sub_264CC427C();
  v54 = v93[1];
  v55 = v93[0];
  v52 = v93[2];
  type metadata accessor for SettingsPresetViewModel();
  sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel);
  sub_264CC3A0C();
  v4 = sub_264CC3A0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v51 = v93[1];
  v5 = sub_264CC3AEC();
  v49 = v6;
  v50 = v5;
  sub_264C73B28(&v71);
  sub_264C73E44(v1, __src);
  sub_264C75080(v1, v82);
  sub_264C760F0(v83);
  sub_264C76BDC(&v61);
  v47 = objc_opt_self();
  v7 = [v47 bundle];
  sub_264CC3CFC();
  LOWORD(v46) = 256;
  v8 = sub_264CC3FAC();
  v10 = v9;
  v12 = v11;
  sub_264CC3F2C();
  v13 = sub_264CC3F9C();
  v15 = v14;
  v17 = v16;

  sub_264C64798(v8, v10, v12 & 1);

  sub_264CC41AC();
  v18 = sub_264CC3F5C();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_264C64798(v13, v15, v17 & 1);

  *&v69 = v18;
  *(&v69 + 1) = v20;
  LOBYTE(v70) = v22 & 1;
  *(&v70 + 1) = v24;
  v25 = [v47 bundle];
  sub_264CC3CFC();
  v26 = sub_264CC3FAC();
  v28 = v27;
  LOBYTE(v13) = v29;
  sub_264CC3F2C();
  v30 = sub_264CC3F9C();
  v32 = v31;
  v34 = v33;

  sub_264C64798(v26, v28, v13 & 1);

  sub_264CC41AC();
  v35 = sub_264CC3F5C();
  v48 = v36;
  LOBYTE(v13) = v37;
  v39 = v38;

  sub_264C64798(v30, v32, v34 & 1);

  v84[8] = v79;
  v85[0] = v80[0];
  *(v85 + 9) = *(v80 + 9);
  v84[4] = v75;
  v84[5] = v76;
  v84[7] = v78;
  v84[6] = v77;
  v84[0] = v71;
  v84[1] = v72;
  v84[3] = v74;
  v84[2] = v73;
  *(&v60[7] + 7) = v78;
  *(&v60[8] + 7) = v79;
  *(&v60[9] + 7) = v80[0];
  v60[10] = *(v80 + 9);
  *(&v60[3] + 7) = v74;
  *(&v60[4] + 7) = v75;
  *(&v60[5] + 7) = v76;
  *(&v60[6] + 7) = v77;
  *(v60 + 7) = v71;
  *(&v60[1] + 7) = v72;
  *(&v60[2] + 7) = v73;
  memcpy(__dst, __src, 0x2A1uLL);
  memcpy(&v59[7], __src, 0x2A1uLL);
  memcpy(v87, v82, 0x1A9uLL);
  memcpy(&v58[7], v82, 0x1A9uLL);
  memcpy(v88, v83, 0x179uLL);
  memcpy(&v57[7], v83, 0x179uLL);
  v89[6] = v67;
  v89[7] = v68;
  v89[8] = v69;
  v89[9] = v70;
  v89[2] = v63;
  v89[3] = v64;
  v89[4] = v65;
  v89[5] = v66;
  v89[0] = v61;
  v89[1] = v62;
  *&v56[103] = v67;
  *&v56[119] = v68;
  *&v56[135] = v69;
  *&v56[151] = v70;
  *&v56[39] = v63;
  *&v56[55] = v64;
  *&v56[71] = v65;
  *&v56[87] = v66;
  *&v56[7] = v61;
  *&v56[23] = v62;
  v40 = v60[6];
  *(v3 + 153) = v60[7];
  v41 = v60[9];
  *(v3 + 169) = v60[8];
  *(v3 + 185) = v41;
  *(v3 + 201) = v60[10];
  v42 = v60[2];
  *(v3 + 89) = v60[3];
  v43 = v60[5];
  *(v3 + 105) = v60[4];
  *(v3 + 121) = v43;
  *(v3 + 137) = v40;
  v44 = v60[1];
  *(v3 + 41) = v60[0];
  *(v3 + 57) = v44;
  *v3 = v55;
  *(v3 + 8) = v54;
  *(v3 + 16) = v52;
  *(v3 + 24) = v50;
  *(v3 + 32) = v49;
  *(v3 + 40) = v51;
  *(v3 + 73) = v42;
  memcpy((v3 + 217), v59, 0x2A8uLL);
  memcpy((v3 + 897), v58, 0x1B0uLL);
  memcpy((v3 + 1329), v57, 0x180uLL);
  *(v3 + 1841) = *&v56[128];
  *(v3 + 1857) = *&v56[144];
  *(v3 + 1872) = *&v56[159];
  *(v3 + 1777) = *&v56[64];
  *(v3 + 1793) = *&v56[80];
  *(v3 + 1809) = *&v56[96];
  *(v3 + 1825) = *&v56[112];
  *(v3 + 1713) = *v56;
  *(v3 + 1729) = *&v56[16];
  *(v3 + 1745) = *&v56[32];
  *(v3 + 1761) = *&v56[48];
  *(v3 + 1880) = v35;
  *(v3 + 1888) = v48;
  *(v3 + 1896) = v13 & 1;
  *(v3 + 1904) = v39;

  v53 = v49;
  sub_264C6467C(v84, v93, &qword_27FFA95B8);
  sub_264C6467C(__dst, v93, &qword_27FFA95C0);
  sub_264C6467C(v87, v93, &qword_27FFA95C8);
  sub_264C6467C(v88, v93, &qword_27FFA95D0);
  sub_264C6467C(v89, v93, &qword_27FFA95D8);
  sub_264C63D0C(v35, v48, v13 & 1);

  sub_264C64798(v35, v48, v13 & 1);

  v90[6] = v67;
  v90[7] = v68;
  v90[8] = v69;
  v90[9] = v70;
  v90[2] = v63;
  v90[3] = v64;
  v90[4] = v65;
  v90[5] = v66;
  v90[0] = v61;
  v90[1] = v62;
  sub_264C646E4(v90, &qword_27FFA95D8);
  memcpy(v91, v83, 0x179uLL);
  sub_264C646E4(v91, &qword_27FFA95D0);
  memcpy(v92, v82, 0x1A9uLL);
  sub_264C646E4(v92, &qword_27FFA95C8);
  memcpy(v93, __src, 0x2A1uLL);
  sub_264C646E4(v93, &qword_27FFA95C0);
  v94[8] = v79;
  v95[0] = v80[0];
  *(v95 + 9) = *(v80 + 9);
  v94[4] = v75;
  v94[5] = v76;
  v94[7] = v78;
  v94[6] = v77;
  v94[0] = v71;
  v94[1] = v72;
  v94[3] = v74;
  v94[2] = v73;
  sub_264C646E4(v94, &qword_27FFA95B8);
}

__n128 sub_264C73B28@<Q0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bundle];
  sub_264CC3CFC();
  v3 = sub_264CC3FAC();
  v24 = v4;
  v25 = v3;
  v22 = v5;
  v23 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA94E0);
  sub_264CC424C();
  v21 = sub_264CC415C();
  v20 = sub_264C86E90();
  v7 = sub_264CC45DC();
  v9 = v8;
  v19 = v7;
  type metadata accessor for SettingsPresetViewModel();
  sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel);
  v10 = sub_264CC3A0C();
  sub_264CC474C();

  v11 = sub_264CC473C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v14 = v13;
  v12[4] = v10;
  v12[5] = v19;
  v12[6] = v9;
  v15 = sub_264CC3A0C();
  v16 = sub_264CC473C();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v14;
  v17[4] = v15;
  v17[5] = v19;
  v17[6] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D70);
  sub_264CC437C();
  result = v26;
  *a1 = v25;
  *(a1 + 8) = v24;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0xD000000000000016;
  *(a1 + 72) = 0x8000000264CE1360;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = sub_264C71328;
  *(a1 + 104) = 0;
  *(a1 + 112) = v26;
  *(a1 + 128) = v21;
  *(a1 + 136) = v20;
  *(a1 + 144) = v26;
  *(a1 + 160) = v27;
  *(a1 + 168) = v28;
  return result;
}

uint64_t sub_264C73E44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v99 = a2;
  v105 = sub_264CC411C();
  v136 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = objc_opt_self();
  v4 = [v135 bundle];
  sub_264CC3CFC();
  v5 = sub_264CC3FAC();
  v129 = v6;
  v130 = v5;
  v119 = v7;
  v131 = v8;
  v132 = 0x8000000264CE12C0;
  *&v153 = 0;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA94E0);
  sub_264CC424C();
  v127 = v249;
  v128 = v248;
  v150 = 1;
  v126 = sub_264CC415C();
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *a1;
  LODWORD(v133) = *(a1 + 16);
  v125 = sub_264C87070(v12, v10, v11);
  v124 = sub_264CC45DC();
  v14 = v13;
  v15 = type metadata accessor for SettingsPresetViewModel();
  v16 = sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel);
  v137 = v9;
  v134 = v10;
  v101 = v16;
  v102 = v15;
  v17 = sub_264CC3A0C();
  sub_264CC474C();

  v18 = sub_264CC473C();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  v21 = v124;
  v19[5] = v124;
  v19[6] = v14;
  v22 = v133;
  v23 = sub_264CC3A0C();
  v24 = sub_264CC473C();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = MEMORY[0x277D85700];
  v25[4] = v23;
  v25[5] = v21;
  v25[6] = v14;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D70);
  sub_264CC437C();
  v123 = v249;
  v124 = v248;
  v122 = v250;
  v121 = v251;
  v120 = v150;
  LOBYTE(v153) = v251;
  v119 &= 1u;
  LOBYTE(v248) = v119;
  v26 = [v135 bundle];
  sub_264CC3CFC();
  v27 = sub_264CC3FAC();
  v116 = v28;
  v117 = v27;
  v111 = v29;
  v118 = v30;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9608);
  v31 = swift_allocObject();
  v100 = xmmword_264CD21F0;
  *(v31 + 16) = xmmword_264CD21F0;
  v34 = v136 + 104;
  v33 = *(v136 + 104);
  v36 = v104;
  v35 = v105;
  LODWORD(v96) = *MEMORY[0x277CE0EE0];
  v32 = v96;
  v33(v104, v96, v105);
  v97 = v33;
  v136 = v34;
  *(v31 + 32) = sub_264CC41BC();
  v33(v36, v32, v35);
  *(v31 + 40) = sub_264CC41BC();
  sub_264CC44BC();
  sub_264CC44CC();
  MEMORY[0x26674B120](v31);
  sub_264CC3ADC();
  v115 = sub_264C87088(v137, v134, v22);
  v114 = sub_264CC45DC();
  v38 = v37;
  v112 = sub_264CC3A0C();
  v113 = v38;

  v39 = sub_264CC473C();
  v40 = swift_allocObject();
  v40[2] = v39;
  v41 = v112;
  v40[3] = MEMORY[0x277D85700];
  v40[4] = v41;
  v42 = v114;
  v40[5] = v114;
  v40[6] = v38;
  v43 = sub_264CC3A0C();
  v44 = sub_264CC473C();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = MEMORY[0x277D85700];
  v45[4] = v43;
  v46 = v113;
  v45[5] = v42;
  v45[6] = v46;
  sub_264CC437C();
  v113 = v249;
  v114 = v248;
  v112 = v250;
  v107 = v251;
  LOBYTE(v153) = v251;
  v111 &= 1u;
  LOBYTE(v248) = v111;
  v47 = [v135 bundle];
  sub_264CC3CFC();
  v48 = sub_264CC3FAC();
  v109 = v49;
  v110 = v48;
  LODWORD(v95) = v50;
  v108 = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = v100;
  v53 = v104;
  v54 = v105;
  v55 = v96;
  v56 = v97;
  v97(v104, v96, v105);
  *(v52 + 32) = sub_264CC41BC();
  v56(v53, v55, v54);
  *(v52 + 40) = sub_264CC41BC();
  sub_264CC44BC();
  sub_264CC44CC();
  MEMORY[0x26674B120](v52);
  sub_264CC3ADC();
  v105 = sub_264C870A0(v137, v134, v133);
  v136 = sub_264CC45DC();
  v58 = v57;
  v104 = sub_264CC3A0C();

  v59 = sub_264CC473C();
  v60 = swift_allocObject();
  v60[2] = v59;
  v61 = v104;
  v60[3] = MEMORY[0x277D85700];
  v60[4] = v61;
  v62 = v136;
  v60[5] = v136;
  v60[6] = v58;
  v63 = sub_264CC3A0C();
  v64 = sub_264CC473C();
  v65 = swift_allocObject();
  v65[2] = v64;
  v65[3] = MEMORY[0x277D85700];
  v65[4] = v63;
  v65[5] = v62;
  v65[6] = v58;
  sub_264CC437C();
  v104 = v248;
  v136 = v249;
  v106 = v250;
  LODWORD(v100) = v251;
  LOBYTE(v153) = v251;
  LODWORD(v103) = v95 & 1;
  LOBYTE(v248) = v95 & 1;
  v66 = [v135 bundle];
  sub_264CC3CFC();
  v67 = sub_264CC3FAC();
  v92 = v68;
  v93 = v67;
  v91 = v69;
  v135 = v70;
  v97 = 0x8000000264CE1320;
  *&v153 = 0;
  sub_264CC424C();
  v98 = v248;
  v96 = v249;
  v152 = 1;
  v95 = sub_264CC415C();
  v94 = sub_264C87218();
  v71 = sub_264CC45DC();
  v90 = v71;
  v73 = v72;
  v89 = sub_264CC3A0C();

  v74 = sub_264CC473C();
  v75 = swift_allocObject();
  v75[2] = v74;
  v76 = v89;
  v75[3] = MEMORY[0x277D85700];
  v75[4] = v76;
  v75[5] = v71;
  v75[6] = v73;
  v77 = sub_264CC3A0C();
  v78 = sub_264CC473C();
  v79 = swift_allocObject();
  v79[2] = v78;
  v79[3] = MEMORY[0x277D85700];
  v79[4] = v77;
  v79[5] = v90;
  v79[6] = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E0);
  sub_264CC437C();
  v133 = v249;
  v134 = v248;
  LODWORD(v101) = v152;
  LOBYTE(v248) = v91 & 1;
  LODWORD(v137) = v91 & 1;
  *&v153 = v130;
  *(&v153 + 1) = v129;
  LOBYTE(v154) = v119;
  *(&v154 + 1) = *v142;
  DWORD1(v154) = *&v142[3];
  *(&v154 + 1) = v131;
  v155 = 0u;
  v156 = 0u;
  *&v157 = 0xD000000000000012;
  *(&v157 + 1) = v132;
  *&v158 = 0;
  BYTE8(v158) = v120;
  HIDWORD(v158) = *&v149[3];
  *(&v158 + 9) = *v149;
  v159 = sub_264C71328;
  v160 = 0;
  *&v161 = v128;
  *(&v161 + 1) = v127;
  *&v162 = v126;
  *(&v162 + 1) = v125;
  *&v163[0] = v124;
  *(&v163[0] + 1) = v123;
  *&v163[1] = v122;
  BYTE8(v163[1]) = v121;
  *v138 = v153;
  *&v138[16] = v154;
  *&v138[64] = v157;
  *&v138[80] = v158;
  memset(&v138[32], 0, 32);
  *&v138[153] = *(v163 + 9);
  *&v138[128] = v162;
  *&v138[144] = v163[0];
  *&v138[96] = sub_264C71328;
  *&v138[112] = v161;
  *&v164 = v117;
  *(&v164 + 1) = v116;
  LOBYTE(v165) = v111;
  *(&v165 + 1) = v141[0];
  DWORD1(v165) = *(v141 + 3);
  *(&v165 + 1) = v118;
  v166 = 0u;
  v167 = 0u;
  *&v168 = 1835821414;
  *(&v168 + 1) = 0xE400000000000000;
  *(v169 + 8) = v143;
  *(&v169[1] + 8) = v144;
  *&v169[0] = 0x402A000000000000;
  *(&v169[2] + 1) = v145;
  *&v170 = v115;
  *(&v170 + 1) = v114;
  *&v171 = v113;
  *(&v171 + 1) = v112;
  *&v138[176] = v164;
  *&v138[192] = v165;
  *&v138[272] = v169[1];
  *&v138[288] = v169[2];
  *&v138[240] = v168;
  *&v138[256] = v169[0];
  memset(&v138[208], 0, 32);
  *&v138[304] = v170;
  *&v138[320] = v171;
  *&v173 = v110;
  *(&v173 + 1) = v109;
  LOBYTE(v174) = v103;
  *(&v174 + 1) = v140[0];
  DWORD1(v174) = *(v140 + 3);
  v175 = 0u;
  v176 = 0u;
  *(&v174 + 1) = v108;
  *&v177 = 30324;
  *(&v178[2] + 1) = v148;
  *(&v183 + 1) = v139[0];
  *(&v177 + 1) = 0xE200000000000000;
  *&v178[0] = 0x402A000000000000;
  *(v178 + 8) = v146;
  *(&v178[1] + 8) = v147;
  *&v179 = v105;
  *(&v179 + 1) = v104;
  *&v180 = v136;
  *(&v180 + 1) = v106;
  *&v138[344] = v173;
  *&v138[360] = v174;
  *&v138[440] = v178[1];
  *&v138[456] = v178[2];
  *&v138[408] = v177;
  *&v138[424] = v178[0];
  v172 = v107;
  v138[336] = v107;
  v181 = v100;
  memset(&v138[376], 0, 32);
  *&v138[472] = v179;
  *&v138[488] = v180;
  v138[504] = v100;
  v81 = v92;
  v80 = v93;
  *&v182 = v93;
  *(&v182 + 1) = v92;
  LOBYTE(v183) = v91 & 1;
  DWORD1(v183) = *(v139 + 3);
  *(&v183 + 1) = v135;
  v184 = 0u;
  v185 = 0u;
  HIDWORD(v187) = *&v151[3];
  *(&v187 + 9) = *v151;
  *&v186 = 0xD000000000000010;
  v83 = v97;
  v82 = v98;
  *(&v186 + 1) = v97;
  *&v187 = 0;
  BYTE8(v187) = v152;
  v188 = sub_264C71328;
  v189 = 0;
  *&v190 = v98;
  v85 = v95;
  v84 = v96;
  *(&v190 + 1) = v96;
  *&v191 = v95;
  v86 = v94;
  *(&v191 + 1) = v94;
  v192 = __PAIR128__(v249, v134);
  LODWORD(v102) = v250;
  v193 = v250;
  v138[672] = v250;
  *&v138[512] = v182;
  *&v138[528] = v183;
  *&v138[576] = v186;
  *&v138[592] = v187;
  memset(&v138[544], 0, 32);
  *&v138[608] = sub_264C71328;
  *&v138[624] = v190;
  *&v138[640] = v191;
  *&v138[656] = __PAIR128__(v249, v134);
  memcpy(v99, v138, 0x2A1uLL);
  v194[0] = v80;
  v194[1] = v81;
  v195 = v137;
  *v196 = v139[0];
  *&v196[3] = *(v139 + 3);
  v198 = 0u;
  v199 = 0u;
  v197 = v135;
  v200 = 0xD000000000000010;
  v201 = v83;
  v202 = 0;
  v203 = v101;
  *v204 = *v151;
  *&v204[3] = *&v151[3];
  v205 = sub_264C71328;
  v206 = 0;
  v207 = v82;
  v208 = v84;
  v209 = v85;
  v210 = v86;
  v211 = v134;
  v212 = v133;
  v213 = v102;
  sub_264C6467C(&v153, &v248, &qword_27FFA9628);
  sub_264C6467C(&v164, &v248, &qword_27FFA9630);
  sub_264C6467C(&v173, &v248, &qword_27FFA9630);
  sub_264C6467C(&v182, &v248, &qword_27FFA9638);
  sub_264C646E4(v194, &qword_27FFA9638);
  v224 = v147;
  v214[0] = v110;
  v214[1] = v109;
  v215 = v103;
  *v216 = v140[0];
  *&v216[3] = *(v140 + 3);
  v217 = v108;
  v218 = 0u;
  v219 = 0u;
  v220 = 30324;
  v221 = 0xE200000000000000;
  v222 = 0x402A000000000000;
  v225 = v148;
  v223 = v146;
  v226 = v105;
  v227 = v104;
  v228 = v136;
  v229 = v106;
  v230 = v100;
  sub_264C646E4(v214, &qword_27FFA9630);
  v231[0] = v117;
  v231[1] = v116;
  v232 = v111;
  *v233 = v141[0];
  *&v233[3] = *(v141 + 3);
  v235 = 0u;
  v236 = 0u;
  v234 = v118;
  v237 = 1835821414;
  v238 = 0xE400000000000000;
  v239 = 0x402A000000000000;
  v241 = v144;
  v240 = v143;
  v242 = v145;
  v243 = v115;
  v244 = v114;
  v245 = v113;
  v246 = v112;
  v247 = v107;
  sub_264C646E4(v231, &qword_27FFA9630);
  v248 = v130;
  v249 = v129;
  LOBYTE(v250) = v119;
  *(&v250 + 1) = *v142;
  HIDWORD(v250) = *&v142[3];
  v251 = v131;
  v252 = 0u;
  v253 = 0u;
  v254 = 0xD000000000000012;
  v255 = v132;
  v256 = 0;
  v257 = v120;
  *v258 = *v149;
  *&v258[3] = *&v149[3];
  v259 = sub_264C71328;
  v260 = 0;
  v261 = v128;
  v262 = v127;
  v263 = v126;
  v264 = v125;
  v265 = v124;
  v266 = v123;
  v267 = v122;
  v268 = v121;
  return sub_264C646E4(&v248, &qword_27FFA9628);
}

uint64_t sub_264C75080@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v124 = a1;
  v106 = a2;
  v126 = sub_264CC411C();
  v136 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v94[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_264CC302C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = objc_opt_self();
  v8 = [v7 bundle];
  sub_264CC3CFC();
  v9 = sub_264CC3FAC();
  v132 = v10;
  v133 = v9;
  v123 = v11;
  v134 = v12;
  sub_264CC301C();
  sub_264CC300C();
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  if (v14)
  {
    v15 = sub_264CC459C();
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  if (!v15)
  {
    v17 = +[STUILog contentPrivacy];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_0(&v180);
      _os_log_error_impl(&dword_264BA2000, v17, OS_LOG_TYPE_ERROR, "Failed to provide region code for explicit content restriction key. Returning least restrictive string key.", &v180, 2u);
    }
  }

  if ([v16 isEqual:@"CN"])
  {
    v18 = @"MusicPodcastsWorkoutsSpecifierName";
  }

  else
  {
    v18 = @"MusicPodcastsNewsWorkoutsSpecifierName";
  }

  v19 = v18;

  v20 = v18;
  sub_264CC45DC();

  v111 = v7;
  v21 = [v7 bundle];

  sub_264CC3CFC();
  v22 = v21;
  v23 = sub_264CC3FAC();
  v130 = v24;
  v131 = v23;
  LOBYTE(v21) = v25;
  *(&v129 + 1) = v26;

  *&v129 = v21 & 1;
  v27 = [v7 bundle];
  v28 = sub_264CC421C();
  v29 = swift_allocObject();
  v121 = v29;
  *(v29 + 16) = v28;
  *(v29 + 24) = 0x3FECCCCCCCCCCCCDLL;
  v128 = sub_264CC415C();
  v127 = sub_264C8725C();
  v122 = sub_264CC45DC();
  v31 = v30;
  v32 = *v124;
  v135 = *(v124 + 8);
  v33 = *(v124 + 16);
  v34 = type metadata accessor for SettingsPresetViewModel();
  v108 = sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel);
  v109 = v32;
  v107 = v33;
  v35 = sub_264CC3A0C();
  sub_264CC474C();

  v36 = sub_264CC473C();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = v35;
  v39 = v122;
  v37[5] = v122;
  v37[6] = v31;
  v40 = sub_264CC3A0C();
  v41 = sub_264CC473C();
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = MEMORY[0x277D85700];
  v42[4] = v40;
  v42[5] = v39;
  v42[6] = v31;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E0);
  sub_264CC437C();
  v119 = v180;
  v124 = v181;
  v118 = v182;
  v123 &= 1u;
  v211 = v123;
  v43 = [v111 bundle];
  sub_264CC3CFC();
  v114 = sub_264CC3FAC();
  v120 = v44;
  v113 = v45;
  v122 = v46;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9608);
  v47 = swift_allocObject();
  v101 = xmmword_264CD21F0;
  *(v47 + 16) = xmmword_264CD21F0;
  v49 = v136 + 104;
  v50 = *(v136 + 104);
  v51 = v125;
  v52 = v126;
  v98 = *MEMORY[0x277CE0EE0];
  v48 = v98;
  v50(v125, v98, v126);
  v97 = v50;
  v136 = v49;
  v100 = 0x3FEF7F7F7F7F7F7FLL;
  v99 = 0x3FD7171717171717;
  *(v47 + 32) = sub_264CC41BC();
  v50(v51, v48, v52);
  *(v47 + 40) = sub_264CC41BC();
  sub_264CC44BC();
  sub_264CC44CC();
  MEMORY[0x26674B120](v47);
  sub_264CC3ADC();
  v110 = sub_264C87298();
  v117 = sub_264CC45DC();
  v54 = v53;
  v96 = v34;
  v116 = sub_264CC3A0C();

  v55 = sub_264CC473C();
  v56 = swift_allocObject();
  v56[2] = v55;
  v58 = v116;
  v57 = v117;
  v56[3] = MEMORY[0x277D85700];
  v56[4] = v58;
  v56[5] = v57;
  v56[6] = v54;
  v59 = v54;
  v60 = sub_264CC3A0C();
  v61 = sub_264CC473C();
  v62 = swift_allocObject();
  v62[2] = v61;
  v62[3] = MEMORY[0x277D85700];
  v62[4] = v60;
  v62[5] = v117;
  v62[6] = v59;
  sub_264CC437C();
  v116 = v181;
  v117 = v180;
  v115 = v182;
  v113 &= 1u;
  LOBYTE(v180) = v113;
  v63 = v111;
  v64 = [v111 bundle];
  sub_264CC3CFC();
  v65 = sub_264CC3FAC();
  v103 = v66;
  v104 = v65;
  v95 = v67;
  v105 = v68;
  v69 = [v63 bundle];
  v70 = sub_264CC421C();
  v71 = swift_allocObject();
  v111 = v71;
  v71[2] = v70;
  v71[3] = 0x3FECCCCCCCCCCCCDLL;
  v72 = swift_allocObject();
  *(v72 + 16) = v101;
  v73 = v125;
  v74 = v126;
  v75 = v98;
  v76 = v97;
  v97(v125, v98, v126);
  *(v72 + 32) = sub_264CC41BC();
  v76(v73, v75, v74);
  *(v72 + 40) = sub_264CC41BC();
  sub_264CC44BC();
  sub_264CC44CC();
  MEMORY[0x26674B120](v72);
  sub_264CC3ADC();
  v136 = sub_264C87298();
  v126 = sub_264CC45DC();
  v78 = v77;
  v125 = sub_264CC3A0C();

  v79 = sub_264CC473C();
  v80 = swift_allocObject();
  v80[2] = v79;
  v81 = v125;
  v80[3] = MEMORY[0x277D85700];
  v80[4] = v81;
  v82 = v126;
  v80[5] = v126;
  v80[6] = v78;
  v83 = sub_264CC3A0C();
  v84 = sub_264CC473C();
  v85 = swift_allocObject();
  v85[2] = v84;
  v85[3] = MEMORY[0x277D85700];
  v85[4] = v83;
  v85[5] = v82;
  v85[6] = v78;
  sub_264CC437C();
  v86 = v180;
  v87 = v181;
  LOBYTE(v74) = v182;
  LOBYTE(v180) = v95 & 1;
  LODWORD(v126) = v95 & 1;
  *&v140 = v133;
  *(&v140 + 1) = v132;
  LOBYTE(v141) = v123;
  *(&v141 + 1) = *v210;
  DWORD1(v141) = *&v210[3];
  *(&v141 + 1) = v134;
  *&v142 = v131;
  *(&v142 + 1) = v130;
  v143 = v129;
  v135 = sub_264C71994;
  *(&v148 + 1) = v120;
  LOBYTE(v149) = v113;
  DWORD1(v149) = *(v139 + 3);
  *(&v149 + 1) = v139[0];
  *(&v149 + 1) = v122;
  v150 = 0u;
  v151 = 0u;
  *&v153[0] = 0x402A000000000000;
  *(&v153[2] + 1) = v214;
  strcpy(&v152, "music.note.tv");
  HIWORD(v152) = -4864;
  *(v153 + 8) = v212;
  *(&v153[1] + 8) = v213;
  *&v154[0] = v110;
  *(&v154[0] + 1) = v117;
  *&v154[1] = v116;
  BYTE8(v154[1]) = v115;
  *(&v137[16] + 1) = *(v154 + 9);
  *&v148 = v114;
  *&v144 = sub_264C71994;
  *(&v144 + 1) = v121;
  *&v145 = v128;
  *(&v145 + 1) = v127;
  *&v146 = v119;
  *(&v146 + 1) = v124;
  v147 = v118;
  v137[2] = v142;
  v137[3] = v129;
  v137[0] = v140;
  v137[1] = v141;
  LOBYTE(v137[7]) = v118;
  v137[5] = v145;
  v137[6] = v146;
  v137[4] = v144;
  *(&v137[8] + 8) = v149;
  *(&v137[7] + 8) = v148;
  *(&v137[12] + 8) = v153[0];
  *(&v137[11] + 8) = v152;
  *(&v137[10] + 8) = 0u;
  *(&v137[9] + 8) = 0u;
  *(&v137[15] + 8) = v154[0];
  *(&v137[14] + 8) = v153[2];
  *(&v137[13] + 8) = v153[1];
  v88 = v103;
  v89 = v104;
  *&v155 = v104;
  *(&v155 + 1) = v103;
  LOBYTE(v156) = v95 & 1;
  *(&v156 + 1) = v138[0];
  DWORD1(v156) = *(v138 + 3);
  v90 = v105;
  *(&v156 + 1) = v105;
  v157 = 0u;
  v158 = 0u;
  *&v162 = v217;
  *&v159 = sub_264C787CC;
  v91 = v111;
  *(&v159 + 1) = v111;
  v160 = v215;
  v161 = v216;
  v92 = v136;
  *(&v162 + 1) = v136;
  v163 = __PAIR128__(v181, v86);
  *(&v137[17] + 8) = v155;
  *(&v137[18] + 8) = v156;
  *(&v137[21] + 8) = v159;
  *(&v137[22] + 8) = v215;
  *(&v137[19] + 8) = 0u;
  *(&v137[20] + 8) = 0u;
  *(&v137[24] + 8) = v162;
  *(&v137[25] + 8) = __PAIR128__(v181, v86);
  *(&v137[23] + 8) = v216;
  v164 = v182;
  BYTE8(v137[26]) = v182;
  memcpy(v106, v137, 0x1A9uLL);
  v165[0] = v89;
  v165[1] = v88;
  v166 = v126;
  *v167 = v138[0];
  *&v167[3] = *(v138 + 3);
  v169 = 0u;
  v170 = 0u;
  v168 = v90;
  v171 = sub_264C787CC;
  v172 = v91;
  v175 = v217;
  v173 = v215;
  v174 = v216;
  v176 = v92;
  v177 = v86;
  v178 = v87;
  v179 = v74;
  sub_264C6467C(&v140, &v180, &qword_27FFA9610);
  sub_264C6467C(&v148, &v180, &qword_27FFA9618);
  sub_264C6467C(&v155, &v180, &qword_27FFA9620);
  sub_264C646E4(v165, &qword_27FFA9620);
  v185 = 0u;
  v186 = 0u;
  v190 = v213;
  v180 = v114;
  v181 = v120;
  v182 = v113;
  *v183 = v139[0];
  *&v183[3] = *(v139 + 3);
  v184 = v122;
  strcpy(v187, "music.note.tv");
  v187[7] = -4864;
  v188 = 0x402A000000000000;
  v191 = v214;
  v189 = v212;
  v192 = v110;
  v193 = v117;
  v194 = v116;
  v195 = v115;
  sub_264C646E4(&v180, &qword_27FFA9618);
  v196[0] = v133;
  v196[1] = v132;
  v197 = v123;
  *v198 = *v210;
  *&v198[3] = *&v210[3];
  v199 = v134;
  v200 = v131;
  v201 = v130;
  v202 = v129;
  v203 = v135;
  v204 = v121;
  v205 = v128;
  v206 = v127;
  v207 = v119;
  v208 = v124;
  v209 = v118;
  return sub_264C646E4(v196, &qword_27FFA9610);
}

uint64_t sub_264C760F0@<X0>(void *a1@<X8>)
{
  v62 = objc_opt_self();
  v1 = [v62 bundle];
  sub_264CC3CFC();
  LOWORD(v49) = 256;
  v2 = sub_264CC3FAC();
  v79 = v3;
  v80 = v2;
  v72 = v4;
  v82 = v5;
  v81 = sub_264CC414C();
  v78 = sub_264C874BC();
  v76 = sub_264CC45DC();
  v7 = v6;
  type metadata accessor for SettingsPresetViewModel();
  sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel);
  v8 = sub_264CC3A0C();
  sub_264CC474C();

  v9 = sub_264CC473C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = v76;
  v10[6] = v7;
  v12 = sub_264CC3A0C();
  v13 = sub_264CC473C();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = MEMORY[0x277D85700];
  v14[4] = v12;
  v14[5] = v76;
  v14[6] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E0);
  sub_264CC437C();
  v75 = *(&v124 + 1);
  v77 = v124;
  v73 = v72 & 1;
  v74 = v125;
  LOBYTE(v124) = v73;
  v15 = [v62 bundle];
  sub_264CC3CFC();
  LOWORD(v50) = 256;
  v58 = sub_264CC3FAC();
  v71 = v16;
  v63 = v17;
  v60 = v18;
  v59 = sub_264CC414C();
  v70 = sub_264C872C4();
  v68 = sub_264CC45DC();
  v20 = v19;
  v66 = sub_264CC3A0C();

  v21 = sub_264CC473C();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = MEMORY[0x277D85700];
  v22[4] = v66;
  v22[5] = v68;
  v22[6] = v20;
  v23 = sub_264CC3A0C();
  v24 = sub_264CC473C();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = MEMORY[0x277D85700];
  v25[4] = v23;
  v25[5] = v68;
  v25[6] = v20;
  sub_264CC437C();
  v67 = *(&v124 + 1);
  v69 = v124;
  v65 = v125;
  v26 = v63 & 1;
  LOBYTE(v124) = v63 & 1;
  v27 = sub_264CC336C();
  *(&v125 + 1) = v27;
  v28 = sub_264C78764(&qword_27FFA95F0, MEMORY[0x277D4B880]);
  *&v126 = v28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v124);
  v30 = *(*(v27 - 8) + 104);
  v30(boxed_opaque_existential_1, *MEMORY[0x277D4B860], v27);
  LOBYTE(v20) = sub_264CC30BC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v124);
  v64 = v63 & 1;
  if (v20 & 1) != 0 && (*(&v125 + 1) = v27, *&v126 = v28, v31 = __swift_allocate_boxed_opaque_existential_1(&v124), v30(v31, *MEMORY[0x277D4B878], v27), v32 = sub_264CC30BC(), __swift_destroy_boxed_opaque_existential_1Tm(&v124), (v32))
  {
    v33 = [v62 bundle];
    sub_264CC3CFC();
    v34 = sub_264CC3FAC();
    v55 = v35;
    v56 = v34;
    v52 = v36;
    v54 = v37;
    v57 = sub_264CC414C();
    v53 = sub_264C874BC();
    v38 = sub_264CC45DC();
    v40 = v39;
    v51 = sub_264CC3A0C();

    v41 = sub_264CC473C();
    v42 = swift_allocObject();
    v42[2] = v41;
    v43 = MEMORY[0x277D85700];
    v42[3] = MEMORY[0x277D85700];
    v42[4] = v51;
    v42[5] = v38;
    v42[6] = v40;
    v44 = sub_264CC3A0C();
    v45 = sub_264CC473C();
    v46 = swift_allocObject();
    v46[2] = v45;
    v46[3] = v43;
    v46[4] = v44;
    v46[5] = v38;
    v46[6] = v40;
    sub_264CC437C();
    v47 = v124;
    LOBYTE(v124) = v52 & 1;
    *&v116 = v56;
    *(&v116 + 1) = v55;
    LOBYTE(v117) = v52 & 1;
    *(&v117 + 1) = v54;
    v118 = 0u;
    v119 = 0u;
    v26 = v64;
    *&v120 = 0xD00000000000001BLL;
    *(&v120 + 1) = 0x8000000264CE1220;
    *&v121 = 0x4030000000000000;
    *(&v121 + 1) = v57;
    *v122 = v53;
    *&v122[8] = __PAIR128__(*(&v124 + 1), v47);
    v122[24] = v125;
    nullsub_1(&v116);
    v128 = v120;
    v129 = v121;
    *v130 = *v122;
    *&v130[9] = *&v122[9];
    v124 = v116;
    v125 = v117;
    v126 = v118;
    v127 = v119;
  }

  else
  {
    sub_264C787AC(&v124);
  }

  v100[4] = v128;
  v100[5] = v129;
  v101[0] = *v130;
  *(v101 + 9) = *&v130[9];
  v100[0] = v124;
  v100[1] = v125;
  v100[2] = v126;
  v100[3] = v127;
  *&v84 = v80;
  *(&v84 + 1) = v79;
  LOBYTE(v85) = v73;
  DWORD1(v85) = *(v131 + 3);
  *(&v85 + 1) = v131[0];
  *(&v85 + 1) = v82;
  v86 = 0u;
  v87 = 0u;
  *&v88 = 0xD000000000000016;
  *(&v88 + 1) = 0x8000000264CE1190;
  *&v89 = 0x4030000000000000;
  *(&v89 + 1) = v81;
  *v90 = v78;
  *&v90[8] = v77;
  *&v90[16] = v75;
  v90[24] = v74;
  *(&__src[6] + 9) = *&v90[9];
  __src[5] = v89;
  __src[6] = *v90;
  __src[4] = v88;
  __src[1] = v85;
  memset(&__src[2], 0, 32);
  __src[0] = v84;
  *&v91 = v58;
  *(&v91 + 1) = v71;
  LOBYTE(v92) = v26;
  DWORD1(v92) = *(v123 + 3);
  *(&v92 + 1) = v123[0];
  *(&v92 + 1) = v60;
  v93 = 0u;
  v94 = 0u;
  *&v95 = 0xD000000000000016;
  *(&v95 + 1) = 0x8000000264CE11D0;
  *&v96 = 0x4030000000000000;
  *(&v96 + 1) = v59;
  *v97 = v70;
  *&v97[8] = v69;
  *&v97[16] = v67;
  v97[24] = v65;
  memset(&__src[10], 0, 32);
  __src[8] = v91;
  __src[9] = v92;
  *(&__src[14] + 9) = *&v97[9];
  __src[13] = v96;
  __src[14] = *v97;
  __src[12] = v95;
  v98[2] = v126;
  v98[3] = v127;
  v98[0] = v124;
  v98[1] = v125;
  *(v99 + 9) = *&v130[9];
  v98[5] = v129;
  v99[0] = *v130;
  v98[4] = v128;
  *(&__src[22] + 9) = *&v130[9];
  __src[18] = v126;
  __src[19] = v127;
  __src[16] = v124;
  __src[17] = v125;
  __src[21] = v129;
  __src[22] = *v130;
  __src[20] = v128;
  memcpy(a1, __src, 0x179uLL);
  sub_264C6467C(&v84, &v116, &qword_27FFA95F8);
  sub_264C6467C(&v91, &v116, &qword_27FFA95F8);
  sub_264C6467C(v98, &v116, &qword_27FFA9600);
  sub_264C646E4(v100, &qword_27FFA9600);
  v102[0] = v58;
  v102[1] = v71;
  v103 = v64;
  *v104 = v123[0];
  *&v104[3] = *(v123 + 3);
  v105 = v60;
  v106 = 0u;
  v107 = 0u;
  v108 = 0xD000000000000016;
  v109 = 0x8000000264CE11D0;
  v110 = 0x4030000000000000;
  v111 = v59;
  v112 = v70;
  v113 = v69;
  v114 = v67;
  v115 = v65;
  sub_264C646E4(v102, &qword_27FFA95F8);
  *&v116 = v80;
  *(&v116 + 1) = v79;
  LOBYTE(v117) = v73;
  *(&v117 + 1) = v131[0];
  DWORD1(v117) = *(v131 + 3);
  *(&v117 + 1) = v82;
  v118 = 0u;
  v119 = 0u;
  *&v120 = 0xD000000000000016;
  *(&v120 + 1) = 0x8000000264CE1190;
  *&v121 = 0x4030000000000000;
  *(&v121 + 1) = v81;
  *v122 = v78;
  *&v122[8] = v77;
  *&v122[16] = v75;
  v122[24] = v74;
  return sub_264C646E4(&v116, &qword_27FFA95F8);
}

double sub_264C76BDC@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bundle];
  sub_264CC3CFC();
  v3 = sub_264CC3FAC();
  v23 = v4;
  v24 = v3;
  v20 = v5;
  v22 = v6;
  v25 = sub_264CC412C();
  v21 = sub_264C874BC();
  v7 = sub_264CC45DC();
  v9 = v8;
  v19 = v7;
  type metadata accessor for SettingsPresetViewModel();
  sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel);
  v10 = sub_264CC3A0C();
  sub_264CC474C();

  v11 = sub_264CC473C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v14 = v13;
  v12[4] = v10;
  v12[5] = v19;
  v12[6] = v9;
  v15 = sub_264CC3A0C();
  v16 = sub_264CC473C();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v14;
  v17[4] = v15;
  v17[5] = v19;
  v17[6] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E0);
  sub_264CC437C();
  *a1 = v24;
  *(a1 + 8) = v23;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0xD000000000000011;
  *(a1 + 72) = 0x8000000264CE1140;
  *(a1 + 80) = 0x4030000000000000;
  *(a1 + 88) = v25;
  *(a1 + 96) = v21;
  *(a1 + 104) = v26;
  *(a1 + 112) = v27;
  *(a1 + 120) = v28;
  return result;
}

uint64_t sub_264C76EC0()
{
  v1 = *(v0 + 16);
  *(v0 + 24) = *v1;
  *(v0 + 32) = *(v1 + 8);
  *(v0 + 96) = *(v1 + 16);
  *(v0 + 40) = type metadata accessor for SettingsPresetViewModel();
  *(v0 + 48) = sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel);
  *(v0 + 56) = sub_264CC3A0C();
  *(v0 + 64) = sub_264CC474C();
  *(v0 + 72) = sub_264CC473C();
  v3 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C76FE0, v3, v2);
}

uint64_t sub_264C76FE0()
{
  v1 = *(v0 + 56);

  sub_264C8E894();

  return MEMORY[0x2822009F8](sub_264C77054, 0, 0);
}

uint64_t sub_264C77054()
{
  *(v0 + 80) = sub_264CC3A0C();
  *(v0 + 88) = sub_264CC473C();
  v2 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C770F4, v2, v1);
}

uint64_t sub_264C770F4()
{
  v1 = *(v0 + 80);

  sub_264C8E8A8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264C7715C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  sub_264CC474C();
  *(v3 + 24) = sub_264CC473C();
  v5 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C771F4, v5, v4);
}

uint64_t sub_264C771F4()
{

  type metadata accessor for SettingsPresetViewModel();
  sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel);
  v1 = sub_264CC3A0C();
  [*&v1[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_agePresetsAnalytics] sendPresetsViewedAnalyticsEventWithIsInitialSetup_];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264C7732C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;

  v5 = sub_264CC41EC();
  v6 = sub_264CC3F0C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_264CC3F1C();
  sub_264C646E4(v4, &qword_27FFA91C8);
  KeyPath = swift_getKeyPath();
  v9 = sub_264CC416C();
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v7;
  a1[3] = result;
  a1[4] = v9;
  return result;
}

uint64_t sub_264C77498@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  *a1 = v3;
  return result;
}

uint64_t sub_264C77518(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_264CC393C();
}

unint64_t sub_264C77588()
{
  result = qword_27FFA9568;
  if (!qword_27FFA9568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9570);
    sub_264C77650();
    swift_getOpaqueTypeConformance2();
    sub_264C7774C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9568);
  }

  return result;
}

unint64_t sub_264C77650()
{
  result = qword_27FFA9578;
  if (!qword_27FFA9578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9580);
    sub_264C64918(&qword_27FFA9588, &qword_27FFA9580);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9578);
  }

  return result;
}

unint64_t sub_264C7774C()
{
  result = qword_27FFA9590;
  if (!qword_27FFA9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9590);
  }

  return result;
}

uint64_t sub_264C777A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

uint64_t sub_264C777B8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_264C6DF34;

  return sub_264C76EA0(v0 + 16);
}

uint64_t sub_264C7784C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_264C6EA28;

  return sub_264C7715C(v2, v3, v0 + 32);
}

uint64_t sub_264C778F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264CC3C3C();
  *a1 = result;
  return result;
}

uint64_t sub_264C77948@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264CC3BDC();
  *a1 = result;
  return result;
}

uint64_t sub_264C779A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_264CC4B7C();
  sub_264CC460C();
  v8 = sub_264CC4B9C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_264CC4AAC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_264C77D50(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_264C77AF0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E8);
  result = sub_264CC48FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_264CC4B7C();
      sub_264CC460C();
      result = sub_264CC4B9C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}