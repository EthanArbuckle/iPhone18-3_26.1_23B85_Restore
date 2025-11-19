uint64_t BuilderType.embed<A, B, C>(name:flexBoxItem:keyPath:size:_:layout:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *a7;
  v12 = *(a3 + 32);
  v13 = *a5;
  OUTLINED_FUNCTION_22();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(v11 + 168);
  v31 = v27;
  v32 = v15;
  v33 = AssociatedConformanceWitness;
  v34 = a10;
  v35 = *(v11 + 184);
  OUTLINED_FUNCTION_32();
  type metadata accessor for EmbedLayout();
  v16 = a3[1];
  v31 = *a3;
  v32 = v16;
  LOBYTE(v33) = v12;
  v30 = v13;

  sub_1D792233C(&v30, a6, &v29);

  OUTLINED_FUNCTION_41();
  sub_1D7925C38(v17, v18, v19, v20, v21, v22, v23, v24);
  OUTLINED_FUNCTION_33();
  v25();
}

uint64_t sub_1D79577EC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a6;
  v17 = *a6;
  v18 = *a4;
  v27 = *(*a3 + *MEMORY[0x1E69E77B0]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(v16 + 184);
  v20 = *(v16 + 192);
  v34 = AssociatedConformanceWitness;
  v35 = &protocol witness table for LayoutItemList<A>;
  v36 = v26;
  v37 = v20;
  v25 = *(v17 + 168);
  type metadata accessor for EmbedLayout();
  memset(v33, 0, sizeof(v33));
  LOBYTE(v34) = 1;
  v38 = v18;

  sub_1D792233C(&v38, a5, &v32);
  v21 = swift_allocObject();
  v22 = OUTLINED_FUNCTION_46(v21);
  *(v22 + 32) = v25;
  *(v22 + 48) = a10;
  *(v22 + 56) = *(*(&v27 + 1) + 88);
  *(v22 + 64) = v26;
  *(v22 + 72) = v20;
  *(v22 + 80) = a7;
  *(v22 + 88) = a8;

  sub_1D7925C38(a1, a2, v33, a3, &v32, a6, a12, v12);
  OUTLINED_FUNCTION_2_22();
  v23();
}

uint64_t sub_1D7957A6C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  a4[3] = a3;
  __swift_allocate_boxed_opaque_existential_1(a4);
  result = a2(a1);
  if (v4)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a4);
  }

  return result;
}

uint64_t sub_1D7957B44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *a7;
  v18 = *a7;
  v29 = *(a3 + 32);
  v27 = *a5;
  v31 = *(*a4 + *MEMORY[0x1E69E77B0]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(v17 + 184);
  v21 = *(v17 + 192);
  v38 = AssociatedConformanceWitness;
  v39 = &protocol witness table for LayoutItemList<A>;
  v40 = v20;
  v41 = v21;
  v28 = *(v18 + 168);
  v36 = v31;
  v37 = v28;
  type metadata accessor for EmbedLayout();
  v22 = *a3;
  v37 = *(a3 + 16);
  v36 = v22;
  LOBYTE(v38) = v29;
  v42 = v27;

  sub_1D792233C(&v42, a6, &v35);
  v23 = swift_allocObject();
  v24 = OUTLINED_FUNCTION_46(v23);
  *(v24 + 32) = v28;
  *(v24 + 48) = a11;
  *(v24 + 56) = *(*(&v31 + 1) + 88);
  *(v24 + 64) = v20;
  *(v24 + 72) = v21;
  *(v24 + 80) = a8;
  *(v24 + 88) = a9;

  sub_1D7925C38(a1, a2, &v36, a4, &v35, a7, a13, v13);
  OUTLINED_FUNCTION_2_22();
  v25();
}

uint64_t sub_1D7957D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _BYTE *)@<X2>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v10 = sub_1D796C690();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18[-v13];
  sub_1D79594A8(a2, v18);
  sub_1D7933374();
  v15 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v14, v15 ^ 1u, 1, a4);
  a5[3] = a4;
  __swift_allocate_boxed_opaque_existential_1(a5);
  v16 = v19;
  a3(a1, v14);
  if (!v16)
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v11 + 8))(v14, v10);
  return __swift_deallocate_boxed_opaque_existential_0(a5);
}

void BuilderType.embed<A, B>(name:flexBoxItem:keyPath:size:_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71();
  v57 = v24;
  v58 = v25;
  v52 = v26;
  v55 = v27;
  v56 = v28;
  v30 = v29;
  v32 = v31;
  v54 = v33;
  v59 = v34;
  v50[1] = a23;
  v35 = *v33;
  v53 = a22;
  v36 = (v35 + *MEMORY[0x1E69E77B0]);
  v37 = v36[1];
  *&v62 = *v36;
  *(&v62 + 1) = v37;
  *&v63 = a21;
  *(&v63 + 1) = a21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v65 = a23;
  v66 = a24;
  v67 = a24;
  OUTLINED_FUNCTION_50();
  v51 = type metadata accessor for EmbedFactory.Context();
  OUTLINED_FUNCTION_0_15();
  v39 = v38;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = v50 - v42;
  v44 = *(v32 + 32);
  v45 = *v30;
  *(&v62 + 1) = v37;
  *(&v63 + 1) = AssociatedConformanceWitness;
  AssociatedConformanceWitness = a23;
  v65 = a24;
  OUTLINED_FUNCTION_50();
  type metadata accessor for EmbedFactory();
  v46 = *v32;
  v63 = v32[1];
  v62 = v46;
  LOBYTE(AssociatedConformanceWitness) = v44;
  v61 = v45;
  v47 = v55;

  v48 = v54;

  sub_1D792233C(&v61, v56, &v60);
  (*(v39 + 16))(v43, v58, v51);
  sub_1D7935408(v59, v47, &v62, v48, &v60, v43, 0, 0);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20_0();
  v49();

  OUTLINED_FUNCTION_67();
}

void BuilderType.mapEmbedFactory<A, B>(name:keyPath:size:positions:context:mapBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _UNKNOWN **a22, uint64_t a23, _UNKNOWN **a24)
{
  OUTLINED_FUNCTION_71();
  v54 = v24;
  v55 = v25;
  v56 = v26;
  v57 = v27;
  v48 = v28;
  v30 = v29;
  v58 = v31;
  v59 = v32;
  v52 = a23;
  v53 = v33;
  v34 = (*v33 + *MEMORY[0x1E69E77B0]);
  v35 = v34[1];
  v62 = *v34;
  v63 = v35;
  v64 = a22;
  v65 = a22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67 = &protocol witness table for LayoutItemList<A>;
  v68 = a24;
  v69 = a24;
  v49 = a24;
  OUTLINED_FUNCTION_58();
  v50 = type metadata accessor for EmbedFactory.Context();
  OUTLINED_FUNCTION_0_15();
  v37 = v36;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v48 - v40;
  v42 = *v30;
  v63 = v35;
  v65 = AssociatedConformanceWitness;
  AssociatedConformanceWitness = &protocol witness table for LayoutItemList<A>;
  v67 = a24;
  OUTLINED_FUNCTION_58();
  v51 = type metadata accessor for EmbedFactory();
  OUTLINED_FUNCTION_53();
  v61 = v42;

  v43 = v53;

  v44 = v52;
  sub_1D792233C(&v61, v48, &v60);
  (*(v37 + 16))(v41, v55, v50);
  v45 = swift_allocObject();
  v45[2] = a21;
  v45[3] = *(v35 + 80);
  v45[4] = a22;
  v45[5] = v44;
  v46 = v49;
  v45[6] = *(v35 + 88);
  v45[7] = v46;
  v45[8] = v56;
  v45[9] = v57;

  sub_1D7935408(v58, v59, &v62, v43, &v60, v41, sub_1D79595EC, v45);
  OUTLINED_FUNCTION_2_22();
  v47();

  OUTLINED_FUNCTION_67();
}

void BuilderType.mapEmbedFactory<A, B>(name:flexBoxItem:keyPath:size:positions:context:mapBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _UNKNOWN **a25)
{
  OUTLINED_FUNCTION_71();
  v66 = v25;
  v67 = v26;
  v69 = v28;
  v70 = v27;
  v64 = v29;
  v65 = v30;
  v32 = v31;
  v34 = v33;
  v62 = a24;
  v63 = v35;
  v36 = *v35;
  v68 = a21;
  v61 = a22;
  v37 = (v36 + *MEMORY[0x1E69E77B0]);
  v38 = v37[1];
  *&v73 = *v37;
  *(&v73 + 1) = v38;
  *&v74 = a23;
  *(&v74 + 1) = a23;
  v57 = a23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = &protocol witness table for LayoutItemList<A>;
  v77 = a25;
  v78 = a25;
  v58 = a25;
  OUTLINED_FUNCTION_50();
  v59 = type metadata accessor for EmbedFactory.Context();
  OUTLINED_FUNCTION_0_15();
  v40 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v56 - v43;
  v45 = *(v34 + 32);
  v46 = *v32;
  *(&v73 + 1) = v38;
  *(&v74 + 1) = AssociatedConformanceWitness;
  AssociatedConformanceWitness = &protocol witness table for LayoutItemList<A>;
  v76 = a25;
  OUTLINED_FUNCTION_50();
  v60 = type metadata accessor for EmbedFactory();
  v47 = *v34;
  v74 = v34[1];
  v73 = v47;
  LOBYTE(AssociatedConformanceWitness) = v45;
  v72 = v46;
  v48 = v64;

  v49 = v63;

  v51 = v61;
  v50 = v62;
  sub_1D792233C(&v72, v65, &v71);
  (*(v40 + 16))(v44, v67, v59);
  v52 = swift_allocObject();
  v52[2] = v51;
  v53 = v57;
  v52[3] = *(v38 + 80);
  v52[4] = v53;
  v52[5] = v50;
  v54 = v58;
  v52[6] = *(v38 + 88);
  v52[7] = v54;
  v52[8] = v69;
  v52[9] = v68;

  v55 = sub_1D7935408(v70, v48, &v73, v49, &v71, v44, sub_1D7958624, v52);
  (*(v50 + 40))(v55, v51, v50);

  OUTLINED_FUNCTION_67();
}

uint64_t sub_1D7958628@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 64);
  a2[3] = *(v2 + 24);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v4(a1);
}

void *BuilderType.if (_:thenBlock:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  OUTLINED_FUNCTION_44();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_21();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for IfBuilder();
  v10 = sub_1D796249C(a2, a3);
  type metadata accessor for IfNode();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = v10;

  sub_1D7938D28(v9);

  sub_1D79466D0();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = v10;

  IfNode.Else(elseBlock:)(sub_1D7937618, v12);

  OUTLINED_FUNCTION_9_5();
  v17(v13, v14, v15, v16);

  return v10;
}

void *BuilderType.if<A>(_:thenBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_5();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_18_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_38();
  type metadata accessor for IfBuilder();
  v13 = sub_1D796249C(a2, a3);
  type metadata accessor for IfNode();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a8;
  v14[7] = a9;
  v14[8] = v13;

  sub_1D7946880();
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a8;
  v15[7] = a9;
  v15[8] = v13;

  v16 = IfNode.Else(elseBlock:)(sub_1D7958A9C, v15);

  (*(a6 + 40))(v16, a4, a6);

  return v13;
}

Swift::Void __swiftcall BuilderType.log(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_31();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_29();
  type metadata accessor for Log();

  v1 = OUTLINED_FUNCTION_55();
  Log.__allocating_init(_:)(v1, v2);
  OUTLINED_FUNCTION_3_17();
  v3();
}

uint64_t BuilderType.inspect(_:)()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_31();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_29();
  type metadata accessor for Inspect();

  v0 = OUTLINED_FUNCTION_55();
  Inspect.__allocating_init(_:)(v0, v1);
  OUTLINED_FUNCTION_3_17();
  v2();
}

uint64_t sub_1D7958C18(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ListBuilder();
  v6 = sub_1D79375E0();
  v7 = a3;
  a2(v6, a1);
  if (!v9)
  {
    swift_beginAccess();
    v7 = *(v6 + 16);
  }

  return v7;
}

uint64_t sub_1D7958E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_29();
  type metadata accessor for Dynamic();
  OUTLINED_FUNCTION_16_2();
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a3;
  v15[5] = a4;

  sub_1D7942568(a1, a2, v18, a8, v15);
  OUTLINED_FUNCTION_9_5();
  v16();
}

uint64_t sub_1D7958F6C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(a3 + 32);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_29();
  type metadata accessor for Dynamic();
  v16 = *a3;
  v21[1] = a3[1];
  v21[0] = v16;
  v22 = v15;
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a4;
  v17[5] = a5;

  sub_1D7942568(a1, a2, v21, a9, v17);
  OUTLINED_FUNCTION_9_5();
  v18();
}

uint64_t sub_1D79590B0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_54();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ListBuilder();
  v4 = sub_1D79375E0();
  a2(v4, a1);
  if (!v6)
  {
    swift_beginAccess();
  }

  return OUTLINED_FUNCTION_55();
}

uint64_t BuilderType.stack(name:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = v3;
  OUTLINED_FUNCTION_28();
  swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_30();
  type metadata accessor for Stack();
  OUTLINED_FUNCTION_16_2();

  sub_1D7951D04(a1, a2, v15);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20_0();
  v9();
  OUTLINED_FUNCTION_13_2();
  v10 = OUTLINED_FUNCTION_7_10();
  v15[0] = v4;
  v15[1] = v5;
  v15[2] = v8;
  v15[3] = v10;
  type metadata accessor for StackBuilder();
  v11 = OUTLINED_FUNCTION_19_0();
  v12 = sub_1D79207F4(v11);

  a3(v12);
}

uint64_t BuilderType.stack(name:flexBoxItem:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_28();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_30();
  type metadata accessor for Stack();

  v4 = OUTLINED_FUNCTION_55();
  sub_1D7951D04(v4, v5, v6);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20_0();
  v7();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_7_10();
  type metadata accessor for StackBuilder();
  v8 = OUTLINED_FUNCTION_19_0();
  v9 = sub_1D79207F4(v8);

  a4(v9);
}

uint64_t sub_1D79594A8(uint64_t a1, uint64_t a2)
{
  sub_1D7933374();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1DA7055B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_46(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = *(v1 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_68()
{

  return sub_1D79536C0();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_70()
{

  return type metadata accessor for BoxBuilder();
}

uint64_t OUTLINED_FUNCTION_72()
{
}

uint64_t OUTLINED_FUNCTION_73()
{
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D7959834(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1D7959874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1D79598C0(uint64_t a1, double a2)
{
  swift_beginAccess();
  if (*(a1 + 64))
  {
    sub_1D7930964();
    swift_allocError();
    *v4 = 2;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0;
    *(v4 + 48) = 6;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_1D7959984()
{
  if (*(v0 + 41) == 1)
  {
    sub_1D796C780();
    sub_1D79450A8();
    sub_1D796C860();
    v1 = 0x80000001D7976840;
    v2 = 0xD000000000000012;
  }

  else
  {
    sub_1D79450A8();
    sub_1D796C860();
    v2 = 0x6F68636E61202B20;
    v1 = 0xEA00000000002872;
  }

  MEMORY[0x1DA704750](v2, v1);
  type metadata accessor for Positioning.Anchor();
  swift_getWitnessTable();
  sub_1D796C960();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D7959B08()
{
  swift_beginAccess();
  type metadata accessor for Node();
  sub_1D796C4F0();
  sub_1D796C460();
  return swift_endAccess();
}

void sub_1D7959BA8()
{
  OUTLINED_FUNCTION_9_6();
  v3 = v0;
  OUTLINED_FUNCTION_7();
  v5 = v4;
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v10 = v9;
  v36 = sub_1D796C170();
  OUTLINED_FUNCTION_0_15();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v5;
  type metadata accessor for Cursor();
  memcpy(v48, (v10 + 128), 0x109uLL);
  memcpy(v47, (v10 + 128), 0x109uLL);
  memcpy(v46, (v10 + 400), sizeof(v46));
  LOBYTE(v43[0]) = *(v3 + 88);
  sub_1D792EBC8(v10, &v45);
  v44 = v45;
  v17 = swift_allocObject();
  sub_1D7923AE4(v48, v43);
  sub_1D796C160();
  v18 = sub_1D796C150();
  v20 = v19;
  (*(v12 + 8))(v16, v36);
  *(v17 + 16) = v18;
  *(v17 + 24) = v20;
  v21 = v37;
  v43[0] = v17;
  LOBYTE(v18) = *(v3 + 120);
  sub_1D792E84C(v42);
  v40 = v42[0];
  v41 = v42[1];
  OUTLINED_FUNCTION_4_9();
  v27 = sub_1D792B65C(v22, v23, v24, 0, 0, 2, v25, v26, v18);
  v28 = sub_1D792B794(v3, v38, v27, v39, v21);
  if (!v1)
  {
    v29 = v28;
    v47[0] = v35;
    v50.origin.x = Cursor.absoluteFrame.getter();
    SizerResult.postProcess(frame:nonIntegral:)(v50, 0);
    if (!v30)
    {
      OUTLINED_FUNCTION_2_18();
      LOBYTE(v43[0]) = v29[48];
      v47[0] = v35;
      v31 = SizerResult.metadata.getter();
      v51.origin.x = OUTLINED_FUNCTION_4_9();
      v49.value._rawValue = v31;
      v51.size.height = v2;
      LayoutContext.set(frame:direction:metadata:for:)(v51, v32, v49, v33);

      OUTLINED_FUNCTION_0_21();
      sub_1D7927B8C(v34);

      goto LABEL_5;
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_10_5();
}

uint64_t sub_1D7959EC8(uint64_t a1, uint64_t a2, char a3, unint64_t *a4, uint64_t a5, uint64_t a6, char a7, uint64_t (*a8)(void))
{
  v13 = *a4;
  type metadata accessor for Box();
  v20 = v13;
  v19 = a7;
  memset(v17, 0, sizeof(v17));
  v18 = 1;
  sub_1D79558BC(&v16);
  sub_1D7922754(v13);

  sub_1D792280C(&v16, &v20, &v19, a1, a2, a3, v17);
  v14 = a8();

  return v14;
}

uint64_t sub_1D795A048()
{
  sub_1D7934DC0(*(v0 + 80));
}

uint64_t sub_1D795A080()
{
  if (*(v0 + 88))
  {
    if (*(v0 + 88) != 1)
    {
      sub_1D796C780();
      v1 = 0x6574697265686E49;
      v2 = 0xED000028786F4264;
      goto LABEL_7;
    }

    v1 = 0x28786F4256;
  }

  else
  {
    v1 = 0x28786F4248;
  }

  v2 = 0xE500000000000000;
LABEL_7:
  MEMORY[0x1DA704750](v1, v2);
  v4 = *(v0 + 80);
  sub_1D7922754(v4);
  type metadata accessor for Sizing();
  swift_getWitnessTable();
  sub_1D796C960();
  sub_1D7934DC0(v4);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

const __CFAttributedString *sub_1D795A214(const __CFAttributedString *result, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v8 = *v6;
  v10 = result;
  v11 = a3.n128_u64[0];
  switch(*v6 >> 62)
  {
    case 1uLL:
      v23 = v8 & 0x3FFFFFFFFFFFFFFFLL;
      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      v26 = *(a2 + 16);

      if (v26 && (LOBYTE(v6) = a2, v27 = sub_1D792CF90(v25, v24), (v28 & 1) != 0))
      {
        v29 = v27;

        v30 = (*(a2 + 56) + 96 * v29);
        v31 = v30[2];
        v32 = v30[4];
        v33 = v30[5];
        v34 = v30[6];
        v35 = v30[7];
        v36 = v30[8];
        v37 = v30[9];

        v6 = v32;
        v38 = v37;
        v39 = v6;

        v40 = v31;
        v41.n128_u64[0] = v33;
        v42.n128_u64[0] = v34;
        v43.n128_u64[0] = v35;
        v44.n128_u64[0] = v36;
        LOBYTE(v6) = sub_1D795A214(v39, a2, v41, v42, v43, v44);
      }

      else
      {
        sub_1D7930964();
        swift_allocError();
        *v45 = v25;
        *(v45 + 8) = v24;
        *(v45 + 16) = 0u;
        *(v45 + 32) = 0u;
        *(v45 + 48) = 5;
        swift_willThrow();
      }

      return (v6 & 1);
    case 2uLL:
      v17 = OUTLINED_FUNCTION_0_36(a3, a4, a5, a6);
      if (v7)
      {
        return (v6 & 1);
      }

      if (v17)
      {
        goto LABEL_17;
      }

      LOBYTE(v6) = 0;
      return (v6 & 1);
    case 3uLL:
      v22 = OUTLINED_FUNCTION_0_36(a3, a4, a5, a6);
      if (v7)
      {
        return (v6 & 1);
      }

      if (v22)
      {
        LOBYTE(v6) = 1;
      }

      else
      {
LABEL_17:
        v46 = OUTLINED_FUNCTION_0_36(v18, v19, v20, v21);
        LOBYTE(v6) = v46;
      }

      return (v6 & 1);
    default:
      v12 = *(v8 + 16);
      if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v12 <= -9.22337204e18)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v12 >= 9.22337204e18)
      {
LABEL_27:
        __break(1u);
        return result;
      }

      v13 = *(v8 + 24);
      v14 = v12;
      v15 = v11;
      CGRectGetWidth(*(&a4 - 8));
      v16 = sub_1D795A76C(v10);
      switch(v13)
      {
        case 1:
          LOBYTE(v6) = v16 != v14;
          break;
        case 2:
          LOBYTE(v6) = v16 > v14;
          break;
        case 3:
          LOBYTE(v6) = v16 >= v14;
          break;
        case 4:
          LOBYTE(v6) = v16 < v14;
          break;
        case 5:
          LOBYTE(v6) = v16 <= v14;
          break;
        default:
          LOBYTE(v6) = v16 == v14;
          break;
      }

      return (v6 & 1);
  }
}

uint64_t AltTextLogic.Operator.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

unint64_t sub_1D795A5A4()
{
  result = qword_1EC9DA338;
  if (!qword_1EC9DA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA338);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlexBoxJustifyContent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AltTextLogic.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D795A76C(const __CFAttributedString *a1)
{
  v2 = CTFramesetterCreateWithAttributedString(a1);
  Mutable = CGPathCreateMutable();
  sub_1D796C600();
  v10.length = [(__CFAttributedString *)a1 length:0x3FF0000000000000];
  v10.location = 0;
  Frame = CTFramesetterCreateFrame(v2, v10, Mutable, 0);
  v5 = CTFrameGetLines(Frame);
  v6 = sub_1D796C420();

  v7 = sub_1D795A888(v6);

  if (v7)
  {
    v8 = sub_1D791F99C(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1D795A888(unint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1D791F99C(a1);
  sub_1D796C7F0();
  result = sub_1D795DAE8(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA704BC0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for CTLine(0);
    if (!swift_dynamicCastUnknownClass())
    {
      swift_unknownObjectRelease();

      return 0;
    }

    sub_1D796C7C0();
    sub_1D796C800();
    sub_1D796C810();
    result = sub_1D796C7D0();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void *sub_1D795AA18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10 = *a1;
  v11 = v4[3];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  result = (*(v12 + 16))(&v16, a1, a2, a3, *(v10 + 80), *(v10 + 88), v11, v12);
  if (!v5)
  {
    v14 = v16;
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = sub_1D795AC54;
    *(v15 + 32) = a1;
    *a4 = v15 | 0x6000000000000000;
  }

  return result;
}

void sub_1D795AB24(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v14.origin.x = Cursor.absoluteFrame.getter();
  v14.origin.y = v10;
  v14.size.width = v11;
  v14.size.height = v12;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  *a1 = CGRectIntersection(v13, v14);
  *(a1 + 32) = 1;
}

uint64_t sub_1D795ABB8()
{
  sub_1D796C780();
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x5470696C63202B20, 0xEF73646E756F426FLL);
  return 0;
}

void sub_1D795AC5C(void (*a1)(void *__return_ptr, void *)@<X1>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  MinX = CGRectGetMinX(*&a3);
  v23.origin.x = a3;
  v23.origin.y = a4;
  v23.size.width = a5;
  v23.size.height = a6;
  *v20 = MinX;
  v20[1] = CGRectGetWidth(v23);
  a1(v21, v20);
  v14 = v21[0];
  v13 = v21[1];
  if (v22)
  {
    if (v22 == 1)
    {
      v24.origin.x = a3;
      v24.origin.y = a4;
      v24.size.width = a5;
      v24.size.height = a6;
      MinY = CGRectGetMinY(v24);
      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      Height = CGRectGetHeight(v25);
      *a2 = v14;
      *(a2 + 8) = MinY;
      *(a2 + 16) = v13;
      *(a2 + 24) = Height;
      v17 = 1;
    }

    else
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      v17 = 2;
    }

    *(a2 + 32) = v17;
  }

  else
  {
    v26.origin.x = a3;
    v26.origin.y = a4;
    v26.size.width = a5;
    v26.size.height = a6;
    v18 = CGRectGetMinY(v26);
    v27.origin.x = a3;
    v27.origin.y = a4;
    v27.size.width = a5;
    v27.size.height = a6;
    v19 = CGRectGetHeight(v27);
    *a2 = v14;
    *(a2 + 8) = v18;
    *(a2 + 16) = v13;
    *(a2 + 24) = v19;
    *(a2 + 32) = 0;
  }
}

void sub_1D795AD98(void (*a1)(void *__return_ptr, void *)@<X1>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  MinY = CGRectGetMinY(*&a3);
  v23.origin.x = a3;
  v23.origin.y = a4;
  v23.size.width = a5;
  v23.size.height = a6;
  *v20 = MinY;
  v20[1] = CGRectGetHeight(v23);
  a1(v21, v20);
  v14 = v21[0];
  v13 = v21[1];
  if (v22)
  {
    if (v22 == 1)
    {
      v24.origin.x = a3;
      v24.origin.y = a4;
      v24.size.width = a5;
      v24.size.height = a6;
      MinX = CGRectGetMinX(v24);
      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      Width = CGRectGetWidth(v25);
      *a2 = MinX;
      *(a2 + 8) = v14;
      *(a2 + 16) = Width;
      *(a2 + 24) = v13;
      v17 = 1;
    }

    else
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      v17 = 2;
    }

    *(a2 + 32) = v17;
  }

  else
  {
    v26.origin.x = a3;
    v26.origin.y = a4;
    v26.size.width = a5;
    v26.size.height = a6;
    v18 = CGRectGetMinX(v26);
    v27.origin.x = a3;
    v27.origin.y = a4;
    v27.size.width = a5;
    v27.size.height = a6;
    v19 = CGRectGetWidth(v27);
    *a2 = v18;
    *(a2 + 8) = v14;
    *(a2 + 16) = v19;
    *(a2 + 24) = v13;
    *(a2 + 32) = 0;
  }
}

double sub_1D795AED4(void (*a1)(double *__return_ptr, void *), CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  *v13 = MinX;
  v13[1] = CGRectGetWidth(v15);
  a1(&v14, v13);
  if (!v5)
  {
    MinX = v14;
    v16.origin.x = a2;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    CGRectGetMinY(v16);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGRectGetHeight(v17);
  }

  return MinX;
}

double sub_1D795AFC0(void (*a1)(uint64_t *__return_ptr, void *), CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetWidth(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  MinY = CGRectGetMinY(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  *v13 = MinY;
  v13[1] = CGRectGetHeight(v17);
  a1(&v14, v13);
  return MinX;
}

uint64_t sub_1D795B0A0()
{
  sub_1D796C780();
  MEMORY[0x1DA704750](0xD000000000000011, 0x80000001D7976880);
  sub_1D7940FA4();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x636974726576202CLL, 0xEC000000203A6C61);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D795B1A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1D795B1E4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

BOOL sub_1D795B31C(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  return ((*(v7 + 8))(a1, a2, *(v5 + 80), *(v5 + 88), v6, v7) & 1) == 0;
}

uint64_t sub_1D795B3C0()
{
  sub_1D795C35C();
  sub_1D795C3C0();

  v0 = sub_1D796C370();

  return v0;
}

uint64_t sub_1D795B4F8()
{
  v1 = *v0;
  v2 = v0[2];
  if ((v0[3] & 1) == 0)
  {
    OUTLINED_FUNCTION_1_28(*(v1 + 80));
    v8 = sub_1D796CB30();
    sub_1D7933170(v8, v9, v2, &v22);

    sub_1D79594A8(&v22, &v20);
    if (v21)
    {
      sub_1D793257C(0, qword_1EE09D280);
      if (swift_dynamicCast())
      {
        if (*(&v14 + 1))
        {
          sub_1D7924DA0(&v13, v17);
          v10 = v18;
          v11 = v19;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          (*(v11 + 8))(&v13, v10, v11);
          sub_1D7925A20(&v22);
          v7 = *(&v14 + 1) != 0;
          sub_1D7925A20(&v13);
          goto LABEL_9;
        }
      }

      else
      {
        v15 = 0;
        v13 = 0u;
        v14 = 0u;
      }
    }

    else
    {
      sub_1D7925A20(&v20);
      v13 = 0u;
      v14 = 0u;
      v15 = 0;
    }

    sub_1D7925A20(&v22);
    sub_1D795C2E4(&v13, &qword_1EC9DA340, qword_1EE09D280);
LABEL_14:
    v7 = 0;
    return v7 & 1;
  }

  OUTLINED_FUNCTION_1_28(*(v1 + 80));
  v3 = sub_1D796CB30();
  sub_1D7933170(v3, v4, v2, &v22);

  if (!v23)
  {
    goto LABEL_14;
  }

  sub_1D79326E0(&v22, &v20);
  sub_1D79326F0(&v20, v16);
  sub_1D793257C(0, &qword_1EC9DA348);
  if (!swift_dynamicCast())
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    __swift_destroy_boxed_opaque_existential_1(&v20);
    sub_1D795C2E4(&v13, &qword_1EC9DA350, &qword_1EC9DA348);
    v7 = 1;
    return v7 & 1;
  }

  sub_1D7924DA0(&v13, v17);
  v5 = v18;
  v6 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  LOBYTE(v5) = (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  v7 = v5 ^ 1;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v7 & 1;
}

BOOL sub_1D795B798()
{
  v1 = *v0;
  v2 = v0[2];
  if ((v0[3] & 1) == 0)
  {
    OUTLINED_FUNCTION_1_28(*(v1 + 80));
    v6 = sub_1D796CB30();
    sub_1D7933170(v6, v7, v2, v18);

    sub_1D79594A8(v18, v11);
    if (v11[3])
    {
      sub_1D793257C(0, qword_1EE09D280);
      if (swift_dynamicCast())
      {
        if (*(&v13 + 1))
        {
          sub_1D7924DA0(&v12, &v15);
          v8 = v16;
          v9 = v17;
          __swift_project_boxed_opaque_existential_1(&v15, v16);
          (*(v9 + 8))(&v12, v8, v9);
          sub_1D7925A20(v18);
          v5 = *(&v13 + 1) == 0;
          sub_1D7925A20(&v12);
          __swift_destroy_boxed_opaque_existential_1(&v15);
          return v5;
        }
      }

      else
      {
        v14 = 0;
        v12 = 0u;
        v13 = 0u;
      }
    }

    else
    {
      sub_1D7925A20(v11);
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
    }

    sub_1D7925A20(v18);
    sub_1D795C2E4(&v12, &qword_1EC9DA340, qword_1EE09D280);
    return 0;
  }

  OUTLINED_FUNCTION_1_28(*(v1 + 80));
  v3 = sub_1D796CB30();
  sub_1D7933170(v3, v4, v2, &v15);

  v5 = v16 == 0;
  sub_1D7925A20(&v15);
  return v5;
}

uint64_t sub_1D795B970()
{
  sub_1D7932C30(MEMORY[0x1E69E6370], MEMORY[0x1E69E6370], &v3);
  if (!v0)
  {
    v1 = v3;
  }

  return v1 & 1;
}

uint64_t sub_1D795B9B4()
{
  result = sub_1D7932C30(MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], &v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

double sub_1D795B9F4()
{
  sub_1D7932C30(MEMORY[0x1E69E63B0], MEMORY[0x1E69E63B0], &v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

float sub_1D795BA34()
{
  sub_1D7932C30(MEMORY[0x1E69E6448], MEMORY[0x1E69E6448], &v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1D795BA74()
{
  OUTLINED_FUNCTION_2_24();
  result = sub_1D7932C30(v1, v1, &v3);
  if (!v0)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1D795BAAC()
{
  OUTLINED_FUNCTION_2_24();
  result = sub_1D7932C30(v1, v1, &v3);
  if (!v0)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1D795BAE4()
{
  OUTLINED_FUNCTION_2_24();
  result = sub_1D7932C30(v1, v1, &v3);
  if (!v0)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1D795BB1C()
{
  OUTLINED_FUNCTION_2_24();
  result = sub_1D7932C30(v1, v1, &v3);
  if (!v0)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1D795BB54()
{
  sub_1D79534BC();
  v0 = swift_allocError();
  return OUTLINED_FUNCTION_0_39(v0, v1);
}

uint64_t sub_1D795BEB4()
{
  result = sub_1D796C9D0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1D795BF04()
{
  result = sub_1D796C9E0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1D795BFAC()
{
  result = sub_1D796CA10();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1D795BFFC()
{
  result = sub_1D796C9F0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1D795C13C()
{
  result = sub_1D796CA20();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1D795C18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

BOOL sub_1D795C1E4(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, *(a1 + 16));
  if (EnumTagSinglePayload != 1)
  {
    (*(v3 + 8))(v6, a1);
  }

  return EnumTagSinglePayload == 1;
}

uint64_t sub_1D795C2E4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D7932628(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D795C35C()
{
  if (!qword_1EC9DA358)
  {
    v0 = sub_1D796C250();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9DA358);
    }
  }
}

unint64_t sub_1D795C3C0()
{
  result = qword_1EC9DA360;
  if (!qword_1EC9DA360)
  {
    sub_1D795C35C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA360);
  }

  return result;
}

TeaTemplate::CursorFrameKind_optional __swiftcall CursorFrameKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D796C910();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CursorFrameKind.rawValue.getter()
{
  result = 0x656D617266;
  switch(*v0)
  {
    case 1:
      result = 0x6563617073;
      break;
    case 2:
      result = 7892834;
      break;
    case 3:
      result = 0x6465626D65;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D795C500()
{
  result = qword_1EC9DA368;
  if (!qword_1EC9DA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA368);
  }

  return result;
}

uint64_t sub_1D795C578@<X0>(uint64_t *a1@<X8>)
{
  result = CursorFrameKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FlexBoxDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CursorFrameKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 ColumnDebugView.columnSystem.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_columnSystem;
  OUTLINED_FUNCTION_4_3();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 sub_1D795C754@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_columnSystem;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

id sub_1D795C7B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return ColumnDebugView.columnSystem.setter(v4);
}

id ColumnDebugView.columnSystem.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = &v1[OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_columnSystem];
  swift_beginAccess();
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  v4[32] = v3;
  [v1 setNeedsLayout];
  return [v1 layoutIfNeeded];
}

uint64_t ColumnDebugView.columnSystem.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  OUTLINED_FUNCTION_1_29();
  return OUTLINED_FUNCTION_4_13();
}

uint64_t ColumnDebugView.layoutOptions.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_layoutOptions;
  OUTLINED_FUNCTION_4_3();
  memcpy(__dst, (v1 + v3), 0x109uLL);
  memcpy(a1, (v1 + v3), 0x109uLL);
  return sub_1D795C930(__dst, v5);
}

uint64_t sub_1D795C930(uint64_t a1, uint64_t a2)
{
  sub_1D791F9C0(0, qword_1EE09D598, &type metadata for LayoutOptions, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D795C9B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_layoutOptions;
  swift_beginAccess();
  memcpy(__dst, (v3 + v4), 0x109uLL);
  memcpy(a2, (v3 + v4), 0x109uLL);
  return sub_1D795C930(__dst, v6);
}

id sub_1D795CA34(void *__src)
{
  memcpy(__dst, __src, 0x109uLL);
  sub_1D795C930(__dst, &v3);
  return ColumnDebugView.layoutOptions.setter(__src);
}

id ColumnDebugView.layoutOptions.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_layoutOptions;
  swift_beginAccess();
  memcpy(__dst, &v1[v3], 0x109uLL);
  memcpy(&v1[v3], a1, 0x109uLL);
  sub_1D795CB24(__dst);
  [v1 setNeedsLayout];
  return [v1 layoutIfNeeded];
}

uint64_t sub_1D795CB24(uint64_t a1)
{
  sub_1D791F9C0(0, qword_1EE09D598, &type metadata for LayoutOptions, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ColumnDebugView.layoutOptions.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  OUTLINED_FUNCTION_1_29();
  return OUTLINED_FUNCTION_4_13();
}

id sub_1D795CBF0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    [v5 setNeedsLayout];

    return [v5 layoutIfNeeded];
  }

  return result;
}

uint64_t ColumnDebugView.showMargins.getter()
{
  v1 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_showMargins;
  OUTLINED_FUNCTION_4_3();
  return *(v0 + v1);
}

uint64_t sub_1D795CC94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_showMargins;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1D795CD0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_leftMarginView);
  v2 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_showMargins;
  swift_beginAccess();
  [v1 setHidden_];
  return [*(v0 + OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_rightMarginView) setHidden_];
}

uint64_t ColumnDebugView.showMargins.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  OUTLINED_FUNCTION_1_29();
  return OUTLINED_FUNCTION_4_13();
}

uint64_t ColumnDebugView.showColumns.getter()
{
  v1 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_showColumns;
  OUTLINED_FUNCTION_4_3();
  return *(v0 + v1);
}

uint64_t sub_1D795CE40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_showColumns;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D795CEB8(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = swift_beginAccess();
  *(v3 + v6) = a1;
  return a3(v7);
}

void sub_1D795CF10()
{
  v1 = *(v0 + OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_columnViews);
  if (v1 >> 62)
  {
    v2 = sub_1D796C8D0();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_showColumns;
    swift_beginAccess();
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA704BC0](i, v1);
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      v6 = v5;
      [v5 setHidden_];
    }
  }
}

uint64_t ColumnDebugView.showColumns.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  OUTLINED_FUNCTION_1_29();
  return OUTLINED_FUNCTION_4_13();
}

uint64_t sub_1D795D070(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id ColumnDebugView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ColumnDebugView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_layoutOptions;
  sub_1D791F994(__src);
  memcpy((v0 + v1), __src, 0x109uLL);
  *(v0 + OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_showMargins) = 0;
  *(v0 + OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_showColumns) = 1;
  v2 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_leftMarginView;
  v3 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v4 = OUTLINED_FUNCTION_0_40();
  *(v0 + v2) = [v5 v6];
  v7 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_rightMarginView;
  v8 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v9 = OUTLINED_FUNCTION_0_40();
  *(v0 + v7) = [v10 v11];
  sub_1D796C8C0();
  __break(1u);
}

Swift::Void __swiftcall ColumnDebugView.layoutSubviews()()
{
  v1 = v0;
  v128.receiver = v0;
  v128.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v128, sel_layoutSubviews);
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    v4 = 0x1E84E6000uLL;
    v5 = [v2 rootViewController];
    v6 = 0x1E84E6000uLL;
    if (v5)
    {
      v7 = v5;
      v8 = [v5 view];

      if (v8)
      {
        goto LABEL_14;
      }
    }

    sub_1D795DB28(0, &qword_1EC9DA3A8);
    v9 = sub_1D796C5D0();
    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = v9;
    v11 = [v9 windows];

    sub_1D795DB28(0, &qword_1EC9DA3B0);
    v12 = sub_1D796C420();

    if (!sub_1D791F99C(v12))
    {

      goto LABEL_13;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      goto LABEL_34;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      for (i = *(v12 + 32); ; i = MEMORY[0x1DA704BC0](0, v12))
      {
        v14 = i;

        v15 = [v14 *(v4 + 2616)];

        if (!v15 || (v8 = [v15 *(v6 + 2624)], v15, !v8))
        {
LABEL_13:
          v8 = sub_1D796C660();
        }

LABEL_14:
        [v8 layoutMargins];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v112 = v22;
        v23 = OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_layoutOptions;
        OUTLINED_FUNCTION_4_3();
        memcpy(__dst, &v1[v23], 0x109uLL);
        memcpy(v127, &v1[v23], 0x109uLL);
        if (sub_1D795DB10(v127) == 1)
        {
          v24 = OUTLINED_FUNCTION_2_25();
          v26 = v25;
          [v24 v27];
          v110 = v29;
          v111 = v28;
          v30 = OUTLINED_FUNCTION_2_25();
          [v30 v31];
          v108 = v33;
          v109 = v32;
          v34 = OUTLINED_FUNCTION_2_25();
          [v34 v35];
          v107 = v36;
          v38 = v37;
          [v3 bounds];
          v40 = v39;
          v42 = v41;
          v43 = [objc_opt_self() mainScreen];
          [v43 nativeBounds];
          v45 = v44;
          v47 = v46;

          v48 = [v1 traitCollection];
          v49 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
          v50 = [v1 traitCollection];
          v6 = [v50 preferredContentSizeCategory];

          [v1 (v26 + 3832)];
          v55 = v38;
          v56 = v107;
          v57 = v108;
          v59 = v109;
          v58 = v110;
          v60 = v111;
          v61 = 0;
          v62 = v112;
          v63 = vdupq_n_s64(0xF000000000000007);
          v64 = -1;
          v65 = 3;
          v66 = 0;
          v67 = v63;
          v68 = v63;
          v69 = v63;
        }

        else
        {
          v58 = *(&__dst[0] + 1);
          v60 = *&__dst[0];
          v57 = *(&__dst[1] + 1);
          v59 = *&__dst[1];
          v55 = *(&__dst[2] + 1);
          v56 = *&__dst[2];
          v42 = *(&__dst[3] + 1);
          v40 = *&__dst[3];
          v47 = *(&__dst[4] + 1);
          v45 = *&__dst[4];
          v17 = *(&__dst[5] + 1);
          v48 = *&__dst[5];
          v19 = *&__dst[6];
          v62 = __dst[7];
          v21 = *(&__dst[6] + 1);
          v49 = *(&__dst[8] + 1);
          v66 = *&__dst[8];
          v51 = *(&__dst[9] + 1);
          v6 = *&__dst[9];
          v53 = *(&__dst[10] + 1);
          v52 = *&__dst[10];
          v54 = *&__dst[11];
          v65 = BYTE8(__dst[11]);
          v125[0] = *(&__dst[11] + 9);
          *(v125 + 3) = HIDWORD(__dst[11]);
          v63 = __dst[12];
          v67 = __dst[13];
          v68 = __dst[14];
          v69 = __dst[15];
          v61 = *&__dst[16];
          v64 = BYTE8(__dst[16]);
        }

        *&__src[0] = v60;
        *(&__src[0] + 1) = v58;
        *&__src[1] = v59;
        *(&__src[1] + 1) = v57;
        *&__src[2] = v56;
        *(&__src[2] + 1) = v55;
        *&__src[3] = v40;
        *(&__src[3] + 1) = v42;
        *&__src[4] = v45;
        *(&__src[4] + 1) = v47;
        *&__src[5] = v48;
        *(&__src[5] + 1) = v17;
        *&__src[6] = v19;
        __src[7] = v62;
        *(&__src[6] + 1) = v21;
        *&__src[8] = v66;
        *(&__src[8] + 1) = v49;
        *&__src[9] = v6;
        *(&__src[9] + 1) = v51;
        *&__src[10] = v52;
        *(&__src[10] + 1) = v53;
        *&__src[11] = v54;
        BYTE8(__src[11]) = v65;
        *(&__src[11] + 9) = v125[0];
        HIDWORD(__src[11]) = *(v125 + 3);
        __src[12] = v63;
        __src[13] = v67;
        __src[14] = v68;
        __src[15] = v69;
        *&__src[16] = v61;
        v70 = &v1[OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_columnSystem];
        BYTE8(__src[16]) = v64;
        OUTLINED_FUNCTION_4_3();
        v71 = v70[32];
        v72 = *(v70 + 1);
        v115 = *v70;
        v116 = v72;
        v117 = v71;
        memcpy(v114, __src, 0x109uLL);
        sub_1D795C930(__dst, v113);
        ColumnSystem.options(layoutOptions:)(v114, v118);
        v73 = v118[0];
        v74 = v119;
        v75 = v120;
        v76 = v121;
        v77 = v122;
        v78 = v123;
        v12 = *&v1[OBJC_IVAR____TtC11TeaTemplate15ColumnDebugView_columnViews];
        v79 = sub_1D791F99C(v12);
        if (v79)
        {
          v80 = v79;
          if (v79 < 1)
          {
            goto LABEL_36;
          }

          v6 = 0;
          do
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v81 = MEMORY[0x1DA704BC0](v6, v12);
            }

            else
            {
              v81 = *(v12 + 8 * v6 + 32);
            }

            v82 = v81;
            ++v6;
            v83 = OUTLINED_FUNCTION_0_40();
            [v84 v85];
          }

          while (v80 != v6);
        }

        v4 = v12 & 0xC000000000000001;
        if ((v12 & 0xC000000000000001) != 0 || *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_34:
        ;
      }

      sub_1D795DAEC(6 * v73 + 5, v4 == 0, v12);
      v86 = 0;
      v87 = 6 * v73 + 6;
      do
      {
        if (v4)
        {
          v88 = MEMORY[0x1DA704BC0](v86, v12);
        }

        else
        {
          v88 = *(v12 + 8 * v86 + 32);
        }

        v89 = v88;
        ++v86;
        v90 = OUTLINED_FUNCTION_2_25();
        [v90 v91];
        [v89 setFrame_];

        v75 = v77 + v74 + v75;
      }

      while (v87 != v86);
      [v1 safeAreaInsets];
      v93 = v92;
      v94 = OUTLINED_FUNCTION_2_25();
      [v94 v95];
      CGRectGetHeight(v129);
      v96 = OUTLINED_FUNCTION_5_13();
      [v96 v97];
      v98 = OUTLINED_FUNCTION_2_25();
      [v98 v99];
      Width = CGRectGetWidth(v130);
      [v1 safeAreaInsets];
      v102 = Width - v101 - v78;
      v103 = OUTLINED_FUNCTION_2_25();
      [v103 v104];
      CGRectGetHeight(v131);
      v105 = OUTLINED_FUNCTION_5_13();
      [v105 v106];

      sub_1D79243AC(__src);
    }

    else
    {
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }
}

id ColumnDebugView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ColumnDebugView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D795DAEC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D795DB10(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D795DB28(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D795DBBC(uint64_t a1)
{
  if (*(a1 + 33))
  {
    v1 = 0xE700000000000000;
    v2 = 0x746C7561666564;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 16);
    v6[0] = *a1;
    v6[1] = v4;
    v7 = v3 & 1;
    MEMORY[0x1DA704750](0x286E6D756C6F63, 0xE700000000000000);
    sub_1D795DC84(v6);
    MEMORY[0x1DA704750](41, 0xE100000000000000);
    v2 = 0;
    v1 = 0xE000000000000000;
  }

  MEMORY[0x1DA704750](v2, v1);
}

uint64_t sub_1D795DC84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (a1[4])
  {
    if (v2 | v1 | v3 | v4)
    {
      v5 = 1685217635;
    }

    else
    {
      v5 = 0x746C7561666564;
    }

    if (v2 | v1 | v3 | v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    sub_1D796C780();
    MEMORY[0x1DA704750](0x69286D6F74737563, 0xEF203A737465736ELL);
    type metadata accessor for UIEdgeInsets(0);
    sub_1D796C860();
    MEMORY[0x1DA704750](41, 0xE100000000000000);
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  MEMORY[0x1DA704750](v5, v6);
}

uint64_t Layout.__allocating_init(canvas:name:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_14();
  swift_allocObject();
  return Layout.init(canvas:name:)(a1, a2, a3);
}

uint64_t sub_1D795DE00()
{
  type metadata accessor for LayoutContextRecords();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for DebugLayoutData();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  qword_1EE09D3B8 = result;
  return result;
}

uint64_t static DebugLayoutData.empty.getter()
{
  if (qword_1EE09D3B0 != -1)
  {
    swift_once();
  }
}

uint64_t Layout.init(canvas:name:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_1_24();
  type metadata accessor for Node();
  v11 = a1[1];
  v12 = *a1;
  v9 = sub_1D796C480();
  *(v3 + 80) = v12;
  *(v3 + 96) = v11;
  *(v3 + 112) = v7;
  *(v3 + 113) = v8;
  *(v3 + 120) = v9;
  *(v3 + 128) = a2;
  *(v3 + 136) = a3;
  v15 = 12;
  memset(v13, 0, sizeof(v13));
  v14 = 1;

  return sub_1D79202C0(&v15, a2, a3, v13);
}

uint64_t Layout.__allocating_init(canvas:name:block:)(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_5_14();
  swift_allocObject();
  return Layout.init(canvas:name:block:)(a1, a2, a3, a4);
}

uint64_t Layout.__allocating_init(tryCanvas:name:block:)(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_5_14();
  swift_allocObject();
  return Layout.init(tryCanvas:name:block:)(a1, a2, a3, a4);
}

uint64_t Layout.init(tryCanvas:name:block:)(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v23 = (*v4 + 176);
  v10 = *(*v4 + 168);
  OUTLINED_FUNCTION_1_24();
  v12 = *(v11 + 184);
  v14 = (v13 + 192);
  type metadata accessor for Node();
  v21 = a1[1];
  v22 = *a1;
  v15 = sub_1D796C480();
  *(v4 + 80) = v22;
  *(v4 + 96) = v21;
  *(v4 + 112) = v8;
  *(v4 + 113) = v9;
  *(v4 + 120) = v15;
  *(v4 + 128) = a2;
  *(v4 + 136) = a3;
  v29 = 12;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;

  v16 = sub_1D79202C0(&v29, a2, a3, &v26);
  *&v17 = v10;
  *(&v17 + 1) = *v23;
  *&v18 = v12;
  *(&v18 + 1) = *v14;
  v26 = v17;
  v27 = v18;
  type metadata accessor for LayoutBuilder();
  v19 = sub_1D79207F4(v16);

  a4(v19);
  if (v25)
  {
  }

  return v16;
}

uint64_t sub_1D795E240()
{
  swift_beginAccess();
  type metadata accessor for Node();
  sub_1D796C4F0();
  sub_1D796C460();
  return swift_endAccess();
}

void sub_1D795E2E0(const void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7926228(a1, a2);
  if (v2)
  {
    v3 = v2;
    sub_1D7931460();
    if (swift_dynamicCast())
    {
      swift_willThrow();
    }

    else
    {
      swift_willThrow();
    }
  }
}

uint64_t sub_1D795E3CC()
{
}

uint64_t Layout.description.getter()
{
  MEMORY[0x1DA704750](0x3C74756F79614CLL, 0xE700000000000000);
  v1 = sub_1D796CB50();
  MEMORY[0x1DA704750](v1);

  MEMORY[0x1DA704750](10302, 0xE200000000000000);
  v2 = *(v0 + 96);
  v4[0] = *(v0 + 80);
  v4[1] = v2;
  v5 = *(v0 + 112);
  sub_1D795DBBC(v4);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D795E5FC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
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
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

void sub_1D795E738(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

_DWORD *sub_1D795E91C(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 64;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_1D795EA20(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 64;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFC0)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFC0)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFC0)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D795EBB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D795EBD8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

void *sub_1D795ECC0(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_1_24();
  v10 = v4;
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_1_24();
  type metadata accessor for FlexBoxNode();
  sub_1D796C4F0();
  swift_getWitnessTable();
  v5 = sub_1D796C570();
  if (v5)
  {

    OUTLINED_FUNCTION_5_15();
    return 0;
  }

  else
  {
    v1[2] = a1;
    MEMORY[0x1EEE9AC00](v5, v6);

    OUTLINED_FUNCTION_0_7();
    swift_getWitnessTable();
    v7 = sub_1D796C380();
    v1[3] = v10;
    MEMORY[0x1EEE9AC00](v7, v8);
    sub_1D796C380();

    v1[4] = v10;
  }

  return v2;
}

double sub_1D795EEE8()
{
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_1_24();
  type metadata accessor for FlexBoxNode();
  sub_1D796C4F0();

  OUTLINED_FUNCTION_0_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_15();
  sub_1D796C380();

  *(v0 + 24) = v2;

  OUTLINED_FUNCTION_4_15();
  sub_1D796C380();

  result = v2;
  *(v0 + 32) = v2;
  return result;
}

uint64_t sub_1D795F02C(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + 2);
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_1_24();
  type metadata accessor for FlexBoxNode();

  v8 = sub_1D796C430();
  for (i = v8; i != sub_1D796C4A0(); v8 = i)
  {
    v10 = sub_1D796C490();
    sub_1D796C450();
    if (v10)
    {
      v11 = *(v7 + 32 + 8 * v8);
    }

    else
    {
      v11 = sub_1D796C790();
    }

    sub_1D796C4E0();
    v12 = a3 - *(v11 + 32);
    if (v6 < 2)
    {
      v12 = a2;
    }

    *(v11 + 16) = v12;
  }
}

void sub_1D795F1E4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_18(a1, a2);
  v6 = v5(v4);
  if (v6 >= v3)
  {
    v6 = v3;
  }

  *v2 = v6;
}

void sub_1D795F224(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_18(a1, a2);
  v6 = v5(v4);
  if (v3 > v6)
  {
    v6 = v3;
  }

  *v2 = v6;
}

double sub_1D795F27C()
{
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_1_24();
  type metadata accessor for FlexBoxNode();
  sub_1D796C4F0();

  OUTLINED_FUNCTION_0_7();
  swift_getWitnessTable();
  sub_1D796C380();

  return v1;
}

uint64_t sub_1D795F348()
{
  sub_1D79528A4();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

double sub_1D795F3F4@<D0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *(*a2 + 72);
  *a3 = result;
  return result;
}

void *sub_1D795F518@<X0>(void *result@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  if (*result != -1)
  {
    result = swift_once();
  }

  v7 = *a3;
  *a4 = *a2;
  a4[1] = v7;
  return result;
}

uint64_t DimensionSizingBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

uint64_t DimensionSizingBehavior.description.getter()
{
  if (*v0)
  {
    return 0x6465786966;
  }

  else
  {
    return 0x69466F54657A6973;
  }
}

unint64_t sub_1D795F648()
{
  result = qword_1EC9DA3B8;
  if (!qword_1EC9DA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA3B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SizingBehavior(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SizingBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

_BYTE *storeEnumTagSinglePayload for DimensionSizingBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_1D795F8F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 1);
  v14 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v14);
  v20 = v11;
  v23[0] = v11;
  v15 = v12;
  v24 = v12;
  result = (*(v13 + 16))(&v25, v23, a2, a3, a4, a5, v14, v13);
  if (!v22)
  {
    v17 = v25;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    *(v19 + 32) = v20;
    *(v19 + 40) = v15;
    *(v18 + 24) = sub_1D795FB44;
    *(v18 + 32) = v19;
    *a6 = v18 | 0xA000000000000000;
  }

  return result;
}

double sub_1D795FA28@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for DimensionCursor();
  result = DimensionCursor.remainingBounds.getter() - v4;
  *a2 = v3;
  *(a2 + 8) = result;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_1D795FAB8()
{
  sub_1D7940FA4();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x7265766E69202B20, 0xE900000000000074);
  return 0;
}

uint64_t sub_1D795FB7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1D795FBBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D795FC24()
{
  v1 = *v0;

  return v1;
}

TeaTemplate::FlexBoxDisplay_optional __swiftcall FlexBoxDisplay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D796C910();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FlexBoxDisplay.rawValue.getter()
{
  if (*v0)
  {
    return 0x656E696C6E69;
  }

  else
  {
    return 0x6B636F6C62;
  }
}

unint64_t sub_1D795FD0C()
{
  result = qword_1EC9DA3C0;
  if (!qword_1EC9DA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA3C0);
  }

  return result;
}

uint64_t sub_1D795FD84@<X0>(uint64_t *a1@<X8>)
{
  result = FlexBoxDisplay.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D795FDB0()
{
  result = qword_1EC9DA3C8;
  if (!qword_1EC9DA3C8)
  {
    sub_1D795FE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA3C8);
  }

  return result;
}

void sub_1D795FE08()
{
  if (!qword_1EC9DA3D0[0])
  {
    v0 = sub_1D796C4F0();
    if (!v1)
    {
      atomic_store(v0, qword_1EC9DA3D0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FlexBoxDisplay(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D795FF54(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      v2 = 1467507053;
      goto LABEL_7;
    case 2:
      v3 = 1215195501;
      goto LABEL_5;
    case 3:
      v3 = 1215848813;
LABEL_5:
      v4 = v3 | 0x6867696500000000;
      break;
    default:
      v2 = 1466853741;
LABEL_7:
      v4 = v2 | 0x6874646900000000;
      break;
  }

  v7 = v4;
  v5 = sub_1D796C510();
  MEMORY[0x1DA704750](v5);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return v7;
}

uint64_t getEnumTagSinglePayload for MinMaxSizer.Adjust(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for MinMaxSizer.Adjust(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1D79600CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1D796010C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D796016C()
{
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x7465736E69202B20, 0xE900000000000028);
  type metadata accessor for UIEdgeInsets(0);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D7960238@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 48))
  {
    OUTLINED_FUNCTION_0_43();
    v6 = *(a1 + 664);
    v7 = *(a1 + 672);
    v17.origin.x = *(a1 + 96);
    v17.origin.y = *(a1 + 104);
    v8 = *(a1 + 112);
    v17.size.height = *(a1 + 120);
    v17.size.width = v8;
    v9 = CGRectGetHeight(v17) * a3;
    result = swift_allocObject();
    v11 = result;
    *(result + 16) = v6;
    *(result + 24) = v7;
    *(result + 32) = v8;
    *(result + 40) = v9;
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    v12 = *(a1 + 664);
    v13 = *(a1 + 672);
    v18.origin.x = *(a1 + 96);
    v18.origin.y = *(a1 + 104);
    v18.size.width = *(a1 + 112);
    v14 = *(a1 + 120);
    v18.size.height = v14;
    v15 = CGRectGetWidth(v18) * a3;
    result = swift_allocObject();
    v11 = result;
    *(result + 16) = v12;
    *(result + 24) = v13;
    *(result + 32) = v15;
    *(result + 40) = v14;
  }

  if (qword_1EE09D478 != -1)
  {
    result = swift_once();
  }

  v16 = HIBYTE(word_1EE09D480);
  *(v11 + 48) = word_1EE09D480;
  *(v11 + 49) = v16;
  *a2 = v11;
  return result;
}

uint64_t sub_1D796037C()
{
  v0 = sub_1D796C510();
  MEMORY[0x1DA704750](v0);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0x61746E6563726570;
}

double *sub_1D7960404@<X0>(double **a1@<X8>)
{
  v2 = Cursor.remainingBounds.getter();
  v4 = v3;
  result = swift_allocObject();
  v6 = result;
  result[2] = v2;
  *(result + 3) = v4;
  result[4] = 0.0;
  result[5] = 0.0;
  if (qword_1EE09D478 != -1)
  {
    result = swift_once();
  }

  v7 = HIBYTE(word_1EE09D480);
  *(v6 + 48) = word_1EE09D480;
  *(v6 + 49) = v7;
  *a1 = v6;
  return result;
}

uint64_t ForEach<A, B>(_:block:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a3;
  v41 = a6;
  v39 = a2;
  v37 = a1;
  v35 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v38 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  sub_1D796C690();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v35 - v16;
  OUTLINED_FUNCTION_0_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v36 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v35 - v28;
  type metadata accessor for ForEachNode();
  v41 = OUTLINED_FUNCTION_2_28();
  (*(v19 + 16))(v23, v37, a5);
  v30 = v29;
  sub_1D796C350();
  v31 = v24;
  swift_getAssociatedConformanceWitness();
  v32 = (v38 + 32);
  for (i = (v38 + 8); ; (*i)(v13, AssociatedTypeWitness))
  {
    sub_1D796C6A0();
    if (__swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v32)(v13, v17, AssociatedTypeWitness);
    v39(v13);
    sub_1D796088C();
  }

  (*(v36 + 8))(v30, v31);
  return v41;
}

uint64_t sub_1D796088C()
{
  swift_beginAccess();
  type metadata accessor for Node();
  sub_1D796C4F0();

  swift_getWitnessTable();
  sub_1D796C4B0();
  return swift_endAccess();
}

uint64_t ForEach<A, B>(_:block:)(char *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v43 = a1;
  v38 = a2;
  v39 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v36 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  sub_1D796C690();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v35 - v16;
  OUTLINED_FUNCTION_0_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v37 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v35 - v28;
  v40 = a4;
  type metadata accessor for ForEachNode();
  v41 = OUTLINED_FUNCTION_2_28();
  (*(v19 + 16))(v23, v43, a5);
  v43 = v29;
  sub_1D796C350();
  v30 = v24;
  swift_getAssociatedConformanceWitness();
  v31 = (v36 + 32);
  for (i = (v36 + 8); ; (*i)(v13, AssociatedTypeWitness))
  {
    sub_1D796C6A0();
    if (__swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v31)(v13, v17, AssociatedTypeWitness);
    sub_1D79206C4();
    swift_allocObject();
    sub_1D796C440();
    *v33 = v38(v13);
    type metadata accessor for Node();
    sub_1D7920548();
    sub_1D796088C();
  }

  (*(v37 + 8))(v43, v30);
  return v41;
}

uint64_t sub_1D7960CCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  type metadata accessor for Node();

  v6 = sub_1D796C430();
  for (i = v6; i != sub_1D796C4A0(); v6 = i)
  {
    v8 = sub_1D796C490();
    sub_1D796C450();
    if (v8)
    {
      v9 = *(v5 + 32 + 8 * v6);
    }

    else
    {
      v9 = sub_1D796C790();
    }

    sub_1D796C4E0();
    (*(*v9 + 144))(a1, a2);
  }
}

uint64_t sub_1D7960E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  v7 = sub_1D7929380(v6, a1, a2, a3);

  return v7;
}

uint64_t sub_1D7960ED4(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  type metadata accessor for Node();
  *(v3 + 80) = sub_1D796C200();
  v8 = v6;
  return Node.init(kind:identifier:)(&v8, a2, a3);
}

uint64_t sub_1D7960F64()
{
  v0 = Node.deinit();

  return v0;
}

uint64_t sub_1D7960F94()
{
  v0 = sub_1D7960F64();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t ResizeConstraint.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

unint64_t sub_1D79610E4()
{
  result = qword_1EC9DA458;
  if (!qword_1EC9DA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA458);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResizeConstraint(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_1D7961214(uint64_t a1, void *(*a2)(unint64_t *__return_ptr))
{
  result = a2(&v6);
  if (!v2)
  {
    v4 = v6;
    v5 = type metadata accessor for Sizing();
    sub_1D79228AC(v5);
    return sub_1D7934DC0(v4);
  }

  return result;
}

uint64_t static Sizing.size<A>(_:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_4_16();
  *(v7 + 16) = a2;
  *(v6 + 16) = v7;
  result = OUTLINED_FUNCTION_4_16();
  *(result + 16) = a3;
  *(v6 + 24) = result;
  *a1 = v6 | 0x1000000000000000;
  return result;
}

uint64_t static Sizing.scaledSize<A>(_:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_4_16();
  *(v7 + 16) = a2;
  *(v6 + 16) = v7 | 0x2000000000000000;
  result = OUTLINED_FUNCTION_4_16();
  *(result + 16) = a3;
  *(v6 + 24) = result | 0x2000000000000000;
  *a1 = v6 | 0x1000000000000000;
  return result;
}

uint64_t Sizing.description.getter()
{
  v1 = *v0;
  v2 = 0x63696D616E7964;
  switch((*v0 >> 59) & 0x1E | (*v0 >> 2) & 1)
  {
    case 1uLL:
      OUTLINED_FUNCTION_3_19();
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_1D796C780();
      MEMORY[0x1DA704750](0x61746E6563726570, 0xEF286C6C69466567);
      sub_1D796C510();
      OUTLINED_FUNCTION_8_7();
      MEMORY[0x1DA704750]();

      OUTLINED_FUNCTION_5_16();
      sub_1D796C860();
      return v37[0];
    case 2uLL:
      OUTLINED_FUNCTION_3_19();
      v37[0] = 0x28657A6973;
      v37[1] = 0xE500000000000000;
      DimensionSizing.description.getter();
      OUTLINED_FUNCTION_8_7();
      MEMORY[0x1DA704750]();

      OUTLINED_FUNCTION_5_16();
      DimensionSizing.description.getter();
      goto LABEL_47;
    case 3uLL:
      OUTLINED_FUNCTION_1_30(v1);
      v3 = 0x286874646977;
      v4 = 0xE600000000000000;
      goto LABEL_34;
    case 4uLL:
      OUTLINED_FUNCTION_1_30(v1);
      v3 = 0x28746867696568;
      v4 = 0xE700000000000000;
      goto LABEL_34;
    case 5uLL:
      OUTLINED_FUNCTION_1_30(v1);
      v3 = 0x695764656C616373;
      v4 = 0xEC00000028687464;
      goto LABEL_34;
    case 6uLL:
      OUTLINED_FUNCTION_1_30(v1);
      v3 = 0x654864656C616373;
      v4 = 0xED00002874686769;
      goto LABEL_34;
    case 7uLL:
      OUTLINED_FUNCTION_3_19();
      OUTLINED_FUNCTION_2_29();
      v37[0] = v28 - 1;
      v37[1] = v27;
      v16 = [v29 description];
      goto LABEL_38;
    case 8uLL:
      OUTLINED_FUNCTION_3_19();
      OUTLINED_FUNCTION_2_29();
      v37[0] = v14;
      v37[1] = v13;
      v16 = [v15 description];
LABEL_38:
      v30 = v16;
      v31 = sub_1D796C310();
      v33 = v32;

      MEMORY[0x1DA704750](v31, v33);
      goto LABEL_39;
    case 9uLL:
      OUTLINED_FUNCTION_3_19();
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      MEMORY[0x1DA704750](0x286F69746172, 0xE600000000000000);
      sub_1D796C860();
      goto LABEL_50;
    case 0xAuLL:
      OUTLINED_FUNCTION_1_30(v1);
      v3 = 0x656C626978656C66;
      v4 = 0xE900000000000028;
      goto LABEL_34;
    case 0xBuLL:
      OUTLINED_FUNCTION_1_30(v1);
      OUTLINED_FUNCTION_2_29();
      v12 = v11 + 1;
      goto LABEL_45;
    case 0xCuLL:
      OUTLINED_FUNCTION_3_19();
      v26 = "flexibleMaxWidth(";
      goto LABEL_43;
    case 0xDuLL:
      OUTLINED_FUNCTION_3_19();
      OUTLINED_FUNCTION_2_29();
      v37[0] = v9 - 1;
      v37[1] = v8;
      sub_1D796C510();
      OUTLINED_FUNCTION_8_7();
      MEMORY[0x1DA704750]();
LABEL_39:

      OUTLINED_FUNCTION_5_16();
      goto LABEL_46;
    case 0xEuLL:
      OUTLINED_FUNCTION_3_19();
      if (*(v19 + 24))
      {
        return 0x656C626978656C66;
      }

      else
      {
        return 1869768058;
      }

    case 0xFuLL:
      OUTLINED_FUNCTION_0_44();
      if (!v6)
      {
        return 1869768058;
      }

      OUTLINED_FUNCTION_11_5();
      return v7 + 5;
    case 0x10uLL:
      OUTLINED_FUNCTION_0_44();
      if (!v20)
      {
        return 1869768058;
      }

      OUTLINED_FUNCTION_11_5();
      return v21 | 8;
    case 0x11uLL:
      OUTLINED_FUNCTION_0_44();
      strcpy(v37, "columns(");
      BYTE1(v37[1]) = 0;
      WORD1(v37[1]) = 0;
      HIDWORD(v37[1]) = -402653184;
      goto LABEL_41;
    case 0x12uLL:
      OUTLINED_FUNCTION_3_19();
      v26 = "columnPercentage(";
LABEL_43:
      v10 = (v26 - 32) | 0x8000000000000000;
      v12 = 0xD000000000000011;
      goto LABEL_45;
    case 0x13uLL:
      OUTLINED_FUNCTION_3_19();
      LODWORD(v22) = *(v22 + 16);
      strcpy(v37, "columnSpec(");
      HIDWORD(v37[1]) = -352321536;
      if (v22)
      {
        v23 = 0x676E696361705376;
      }

      else
      {
        v23 = 0x676E696361705368;
      }

      MEMORY[0x1DA704750](v23, 0xE800000000000000);
      goto LABEL_49;
    case 0x14uLL:
      OUTLINED_FUNCTION_3_19();
      v25 = *(v24 + 32);
      strcpy(v37, "columnRowSpan(");
      HIBYTE(v37[1]) = -18;
      sub_1D796C930();
      OUTLINED_FUNCTION_8_7();
      MEMORY[0x1DA704750]();

      OUTLINED_FUNCTION_5_16();
      if ((v25 & 1) == 0)
      {
        sub_1D796C510();
      }

      goto LABEL_48;
    case 0x15uLL:
      OUTLINED_FUNCTION_0_44();
      v37[0] = 0xD000000000000014;
      v37[1] = 0x80000001D7976AA0;
LABEL_41:
      sub_1D796C930();
      goto LABEL_47;
    case 0x16uLL:
      OUTLINED_FUNCTION_1_30(v1);
      OUTLINED_FUNCTION_2_29();
      v12 = v34 | 0xC;
LABEL_45:
      v37[0] = v12;
      v37[1] = v10;
      goto LABEL_46;
    case 0x17uLL:
      OUTLINED_FUNCTION_3_19();
      if (*(v18 + 24))
      {
        return 1954047348;
      }

      else
      {
        return 1869768058;
      }

    case 0x18uLL:
      OUTLINED_FUNCTION_0_44();
      if (v17)
      {
        return 0x7475626972747461;
      }

      else
      {
        return 1869768058;
      }

    case 0x19uLL:
      OUTLINED_FUNCTION_0_44();
      if (v36)
      {
        return 0xD000000000000011;
      }

      else
      {
        return 1869768058;
      }

    case 0x1AuLL:
      OUTLINED_FUNCTION_3_19();
      sub_1D7924F60(v5 + 16, v37);
      MEMORY[0x1DA704750](0x2872657A6973, 0xE600000000000000);
      sub_1D79450A8();
      sub_1D796C860();
      MEMORY[0x1DA704750](41, 0xE100000000000000);
      v2 = 0;
      __swift_destroy_boxed_opaque_existential_1(v37);
      return v2;
    case 0x1BuLL:
      OUTLINED_FUNCTION_3_19();
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_1D796C780();
      MEMORY[0x1DA704750](2647657, 0xE300000000000000);
      type metadata accessor for Conditional();
      swift_getWitnessTable();
      sub_1D796C960();
      MEMORY[0x1DA704750](0x203A6E656874202CLL, 0xE800000000000000);
      swift_getWitnessTable();
      OUTLINED_FUNCTION_12_3();
      MEMORY[0x1DA704750](0x203A65736C65202CLL, 0xE800000000000000);
      OUTLINED_FUNCTION_12_3();
      goto LABEL_50;
    case 0x1CuLL:
      return v2;
    case 0x1DuLL:
      v2 = 1819044198;
      switch(__ROR8__(v1 + 0x1FFFFFFFFFFFFFFCLL, 3))
      {
        case 1:
          v2 = 0x69466F54657A6973;
          break;
        case 2:
          v2 = 0x656C626978656C66;
          break;
        case 3:
          v2 = 1869768058;
          break;
        default:
          return v2;
      }

      return v2;
    default:
      v3 = 0x61746E6563726570;
      v4 = 0xEB00000000286567;
LABEL_34:
      v37[0] = v3;
      v37[1] = v4;
LABEL_46:
      sub_1D796C510();
LABEL_47:
      OUTLINED_FUNCTION_8_7();
LABEL_48:
      MEMORY[0x1DA704750]();
LABEL_49:

LABEL_50:
      MEMORY[0x1DA704750](41, 0xE100000000000000);
      return v37[0];
  }
}

uint64_t sub_1D7961C1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x63 && *(a1 + 8))
    {
      v2 = *a1 + 98;
    }

    else
    {
      v2 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
      if (v2 >= 0x62)
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

uint64_t sub_1D7961C70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x62)
  {
    *result = a2 - 99;
    if (a3 >= 0x63)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x63)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PercentageFillSizer(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for PercentageFillSizer(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1D7961D98(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D7961FD0(*(v2 + 8), *(v2 + 16), a1, *v2);
  if (!v3)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    if (qword_1EE09D478 != -1)
    {
      swift_once();
    }

    v14 = HIBYTE(word_1EE09D480);
    *(v13 + 48) = word_1EE09D480;
    *(v13 + 49) = v14;
    *a2 = v13;
  }
}

double sub_1D7961E6C(uint64_t a1, double a2, double a3)
{
  v3 = 0.0;
  if (a2 > 0.0)
  {
    v7 = *(a1 + 96);
    v6 = *(a1 + 104);
    v9 = *(a1 + 112);
    v8 = *(a1 + 120);
    rect = v8;
    v10 = v7;
    v11 = v6;
    v12 = v9;
    if (*(a1 + 48))
    {
      CGRectGetHeight(*&v10);
      swift_beginAccess();
      v3 = *(a1 + 664);
      v16.origin.x = v7;
      v16.origin.y = v6;
      v16.size.width = v9;
      v16.size.height = rect;
      CGRectGetWidth(v16);
    }

    else
    {
      CGRectGetWidth(*&v10);
      swift_beginAccess();
      v13 = *(a1 + 664);
      if (*(a1 + 16) < v13)
      {
        v13 = v13 + a3;
      }

      v3 = floor(v13);
      v17.origin.x = v7;
      v17.origin.y = v6;
      v17.size.width = v9;
      v17.size.height = rect;
      CGRectGetHeight(v17);
    }
  }

  return v3;
}

void sub_1D7961FD0(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v5 = a1;
  if (a2)
  {
    v7 = *&a1;
LABEL_3:
    sub_1D7961E6C(a3, a4, v7);
    return;
  }

  memcpy(__dst, (a3 + 400), sizeof(__dst));
  if (sub_1D792C4B8(__dst) == 1)
  {
    v8 = 1;
  }

  else
  {
    if (v5)
    {
      if (*(a3 + 48))
      {
        v7 = *&__dst[12];
        goto LABEL_3;
      }
    }

    else if ((*(a3 + 48) & 1) == 0)
    {
      v7 = *&__dst[10];
      goto LABEL_3;
    }

    v8 = 5;
  }

  sub_1D7930964();
  swift_allocError();
  *v9 = v8;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0;
  *(v9 + 48) = 6;
  swift_willThrow();
}

uint64_t Direction.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

uint64_t BoxDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

unint64_t sub_1D7962208()
{
  result = qword_1EC9DA460;
  if (!qword_1EC9DA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA460);
  }

  return result;
}

unint64_t sub_1D7962260()
{
  result = qword_1EC9DA468;
  if (!qword_1EC9DA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA468);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Direction(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for BoxDirection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *sub_1D796249C(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[4] = 0;
  result[5] = 0;
  result[2] = a1;
  result[3] = a2;
  return result;
}

uint64_t IfBuilder.else(elseBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1D7935140(v3);
}

uint64_t IfBuilder.deinit()
{

  sub_1D7935140(*(v0 + 32));
  return v0;
}

uint64_t IfBuilder.__deallocating_deinit()
{
  IfBuilder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t CursorFrame.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CursorFrame.pass.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

uint64_t sub_1D7962664(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1D79626A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

double Ratio.Aspect.multiplier.getter()
{
  if (v0[8])
  {
    return dbl_1D7974DA0[*v0];
  }

  else
  {
    return *v0;
  }
}

uint64_t Ratio.Aspect.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return sub_1D796C510();
  }

  result = 3226161;
  switch(*v0)
  {
    case 1:
      result = 3357236;
      break;
    case 2:
      result = 3422771;
      break;
    case 3:
      result = 960116273;
      break;
    case 4:
      result = 0x30313A3631;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Void __swiftcall ListBuilder.reserveCapacity(_:)(Swift::Int a1)
{
  swift_beginAccess();
  OUTLINED_FUNCTION_0_45();
  OUTLINED_FUNCTION_0_45();
  type metadata accessor for Node();
  sub_1D796C4F0();
  sub_1D796C460();
  swift_endAccess();
}

unint64_t sub_1D79628E8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    MEMORY[0x1EEE9AC00](result, v5);
    type metadata accessor for Positioning();
    sub_1D796C4F0();
    v6 = type metadata accessor for Sizing();
    swift_getWitnessTable();
    sub_1D796C380();

    sub_1D79228AC(v6, a2);
    return sub_1D7934DC0(v7);
  }

  return result;
}

uint64_t sub_1D7962A5C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v7 = *a1;
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = v2;
  return + infix<A>(_:_:)(&v7, v5);
}

uint64_t Positioning.Anchor.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D796C910();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Positioning.Anchor.rawValue.getter()
{
  result = 7368564;
  switch(*v0)
  {
    case 1:
      result = 0x6D6F74746F62;
      break;
    case 2:
      result = OUTLINED_FUNCTION_7_12();
      break;
    case 3:
      result = OUTLINED_FUNCTION_4_17();
      break;
    case 4:
      result = OUTLINED_FUNCTION_12_4();
      break;
    case 5:
      result = OUTLINED_FUNCTION_6_13();
      break;
    case 6:
      result = 0x7265746E656376;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7962B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D7962BF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D7962C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D7962CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D7962D48@<X0>(uint64_t *a1@<X8>)
{
  result = Positioning.Anchor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PositioningAdjustmentOperator.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

uint64_t Positioning.Anchor.description.getter()
{
  result = 0x6D6F74746F62;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_7_12();
      break;
    case 3:
      result = OUTLINED_FUNCTION_4_17();
      break;
    case 4:
      result = OUTLINED_FUNCTION_12_4();
      break;
    case 5:
      result = OUTLINED_FUNCTION_6_13();
      break;
    case 6:
      result = 0x7265746E656376;
      break;
    default:
      result = 7368564;
      break;
  }

  return result;
}

uint64_t PositioningAdjustmentOperator.description.getter()
{
  if (*v0)
  {
    return 0x7463617274627573;
  }

  else
  {
    return 0x676E69646461;
  }
}

unint64_t sub_1D7962F0C()
{
  result = qword_1EC9DA470;
  if (!qword_1EC9DA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA470);
  }

  return result;
}

uint64_t sub_1D7962F64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xE3 && *(a1 + 33))
    {
      v2 = *a1 + 226;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 0x1D)
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

uint64_t sub_1D7962FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 227;
    *(result + 8) = 0;
    if (a3 >= 0xE3)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE3)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

_BYTE *sub_1D7962FEC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PositioningAdjustmentOperator(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_20_1()
{
}

uint64_t SizerResultMetadataKey.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D796C910();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1D796327C()
{
  result = qword_1EE09D060;
  if (!qword_1EE09D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE09D060);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SizerResultMetadataKey(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SizerResultMetadataKey(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D79633EC()
{
  if ((*(v0 + 48) & 0x20) != 0)
  {
    sub_1D796C780();
    sub_1D79450A8();
    OUTLINED_FUNCTION_0_47();
    v2 = 0x80000001D7976BC0;
    v1 = 0xD000000000000010;
  }

  else
  {
    sub_1D796C780();
    sub_1D79450A8();
    OUTLINED_FUNCTION_0_47();
    v1 = 0x73756A6461202B20;
    v2 = 0xEF28687464695774;
  }

  MEMORY[0x1DA704750](v1, v2);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t getEnumTagSinglePayload for SizeAdjustSizer.Adjust(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1F && *(a1 + 9))
    {
      v2 = *a1 + 30;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x1E | (*(a1 + 8) >> 5) & 1) ^ 0x1F;
      if (v2 >= 0x1E)
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

uint64_t storeEnumTagSinglePayload for SizeAdjustSizer.Adjust(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 8) = 0;
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * ((((-a2 >> 1) & 0xF) - 16 * a2) & 0x1F);
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D7963654(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1D7963694(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D79636F4()
{
  if (*(v0 + 48) == 1)
  {
    if (*(v0 + 49))
    {
      OUTLINED_FUNCTION_0_48();
      sub_1D796C780();
      OUTLINED_FUNCTION_1_32();
      OUTLINED_FUNCTION_3_21();
      v1 = 0xD000000000000019;
      v2 = 0x80000001D7976C00;
    }

    else
    {
      OUTLINED_FUNCTION_0_48();
      sub_1D796C780();
      OUTLINED_FUNCTION_1_32();
      OUTLINED_FUNCTION_3_21();
      v1 = OUTLINED_FUNCTION_2_31();
      v2 = 0xEF28746867696548;
    }
  }

  else if (*(v0 + 49))
  {
    OUTLINED_FUNCTION_0_48();
    sub_1D796C780();
    OUTLINED_FUNCTION_1_32();
    OUTLINED_FUNCTION_3_21();
    v2 = 0x80000001D7976BE0;
    v1 = 0xD000000000000018;
  }

  else
  {
    OUTLINED_FUNCTION_0_48();
    sub_1D796C780();
    OUTLINED_FUNCTION_1_32();
    OUTLINED_FUNCTION_3_21();
    v1 = OUTLINED_FUNCTION_2_31();
    v2 = 0xEE00286874646957;
  }

  MEMORY[0x1DA704750](v1, v2);
  v3 = sub_1D796C510();
  MEMORY[0x1DA704750](v3);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return v5;
}

uint64_t sub_1D7963888(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1D7975570;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1D79638EC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D792D228();
  result = sub_1D796C750();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1D7963A50(*v14, *(v14 + 8), *(v14 + 16), v4))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = *(v2 + 48) + 24 * (v11 | (v5 << 6));
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v2 + 32);
    if (v15 >= 64)
    {
      sub_1D7963888(0, (v15 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v15;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1D7963A50(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1D796CAC0();
  if (a3)
  {
    if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        v8 = 3;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1DA704EF0](v8);
  }

  else
  {
    MEMORY[0x1DA704EF0](2);
    sub_1D7940410(*&a1, *&a2);
  }

  sub_1D796CAF0();
  result = sub_1D796C730();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v10 = *(a4 + 48) + 24 * result;
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3 & 1;
  ++*(a4 + 16);
  return result;
}

void *sub_1D7963B70()
{
  v1 = v0;
  sub_1D792D228();
  v2 = *v0;
  v3 = sub_1D796C740();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 3 * v14;
      v18 = *(v2 + 48) + 8 * v17;
      v19 = *(v18 + 16);
      v20 = *(v4 + 48) + 8 * v17;
      *v20 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

TeaTemplate::FlexBoxJustifyContent_optional __swiftcall FlexBoxJustifyContent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D796C910();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FlexBoxJustifyContent.rawValue.getter()
{
  result = 0x7261745378656C66;
  switch(*v0)
  {
    case 1:
      result = 0x646E4578656C66;
      break;
    case 2:
      result = 0x7265746E6563;
      break;
    case 3:
      result = 0x7465426563617073;
      break;
    case 4:
      result = 0x6F72416563617073;
      break;
    case 5:
      result = 0x6576456563617073;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D79644F0()
{
  result = qword_1EC9DA478;
  if (!qword_1EC9DA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA478);
  }

  return result;
}

uint64_t sub_1D7964568@<X0>(uint64_t *a1@<X8>)
{
  result = FlexBoxJustifyContent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D7964594()
{
  result = qword_1EC9DA480;
  if (!qword_1EC9DA480)
  {
    sub_1D79645EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA480);
  }

  return result;
}

void sub_1D79645EC()
{
  if (!qword_1EC9DA488)
  {
    v0 = sub_1D796C4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9DA488);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FlexBoxJustifyContent(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

double sub_1D796472C(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 48);
  return v6 + v5 + CGRectGetMaxX(*&a1);
}

double sub_1D7964788(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 24);
  v6 = *(v4 + 48);
  return v6 + v5 + CGRectGetMaxY(*&a1);
}

uint64_t sub_1D79647F8()
{
  v0 = OUTLINED_FUNCTION_1_33();
  switch(v3)
  {
    case 1:
      if (*(v1 + 2) > 1u)
      {
        v8 = OUTLINED_FUNCTION_6_15();
        v0 = OUTLINED_FUNCTION_4_19(v8);
        v5 = sub_1D7964EF0;
      }

      else
      {
        v4 = OUTLINED_FUNCTION_6_15();
        v0 = OUTLINED_FUNCTION_4_19(v4);
        v5 = sub_1D7964EFC;
      }

      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_2_33();
      sub_1D795EC78();
      v6 = OUTLINED_FUNCTION_7_14();
      v0 = OUTLINED_FUNCTION_3_23(v6);
      v5 = sub_1D7964ED8;
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_2_33();
      sub_1D795EC78();
      v7 = OUTLINED_FUNCTION_7_14();
      v0 = OUTLINED_FUNCTION_3_23(v7);
      v5 = sub_1D7964EE8;
LABEL_7:
      v2 = v5;
      break;
    default:
      return OUTLINED_FUNCTION_5_19(v0, v2);
  }

  return OUTLINED_FUNCTION_5_19(v0, v2);
}

CGFloat sub_1D7964900(CGFloat *a1, double a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v10.origin.x = *a1;
  v10.origin.y = v5;
  v10.size.width = v6;
  v10.size.height = v7;
  v8 = a2 - CGRectGetMaxY(v10);
  v11.origin.x = v4;
  v11.origin.y = v5;
  v11.size.width = v6;
  v11.size.height = v7;
  result = CGRectGetMinY(v11) + v8;
  a1[1] = result;
  return result;
}

CGFloat sub_1D7964978(CGRect *a1, double a2, double a3)
{
  result = a3 * 0.5 - CGRectGetHeight(*a1) * 0.5 + a2;
  a1->origin.y = result;
  return result;
}

uint64_t sub_1D79649D0()
{
  v0 = OUTLINED_FUNCTION_1_33();
  switch(v3)
  {
    case 1:
      if (*(v1 + 2) > 1u)
      {
        v8 = OUTLINED_FUNCTION_6_15();
        v0 = OUTLINED_FUNCTION_4_19(v8);
        v5 = sub_1D7964F1C;
      }

      else
      {
        v4 = OUTLINED_FUNCTION_6_15();
        v0 = OUTLINED_FUNCTION_4_19(v4);
        v5 = sub_1D7964F28;
      }

      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_2_33();
      sub_1D795EC78();
      v6 = OUTLINED_FUNCTION_7_14();
      v0 = OUTLINED_FUNCTION_3_23(v6);
      v5 = sub_1D7964F04;
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_2_33();
      sub_1D795EC78();
      v7 = OUTLINED_FUNCTION_7_14();
      v0 = OUTLINED_FUNCTION_3_23(v7);
      v5 = sub_1D7964F14;
LABEL_7:
      v2 = v5;
      break;
    default:
      return OUTLINED_FUNCTION_5_19(v0, v2);
  }

  return OUTLINED_FUNCTION_5_19(v0, v2);
}

CGFloat sub_1D7964AD8(CGFloat *a1, double a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v10.origin.x = *a1;
  v10.origin.y = v5;
  v10.size.width = v6;
  v10.size.height = v7;
  v8 = a2 - CGRectGetMaxX(v10);
  v11.origin.x = v4;
  v11.origin.y = v5;
  v11.size.width = v6;
  v11.size.height = v7;
  result = CGRectGetMinX(v11) + v8;
  *a1 = result;
  return result;
}

CGFloat sub_1D7964B50(CGRect *a1, double a2, double a3)
{
  result = a3 * 0.5 - CGRectGetWidth(*a1) * 0.5 + a2;
  a1->origin.x = result;
  return result;
}

TeaTemplate::FlexBoxAlignItems_optional __swiftcall FlexBoxAlignItems.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D796C910();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FlexBoxAlignItems.rawValue.getter()
{
  result = 0x7261745378656C66;
  switch(*v0)
  {
    case 1:
      result = 0x646E4578656C66;
      break;
    case 2:
      result = 0x68637465727473;
      break;
    case 3:
      result = 0x7265746E6563;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D7964CA0()
{
  result = qword_1EC9DA490;
  if (!qword_1EC9DA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA490);
  }

  return result;
}

uint64_t sub_1D7964D18@<X0>(uint64_t *a1@<X8>)
{
  result = FlexBoxAlignItems.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D7964D44()
{
  result = qword_1EC9DA498;
  if (!qword_1EC9DA498)
  {
    sub_1D7964D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA498);
  }

  return result;
}

void sub_1D7964D9C()
{
  if (!qword_1EC9DA4A0)
  {
    v0 = sub_1D796C4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9DA4A0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FlexBoxAlignItems(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

double sub_1D7964ED8(uint64_t a1)
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  *(a1 + 8) = result;
  *(a1 + 24) = v3;
  return result;
}

double sub_1D7964EF0(uint64_t a1)
{
  result = *(v1 + 16);
  *(a1 + 8) = result;
  return result;
}

double sub_1D7964F04(uint64_t a1)
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double sub_1D7964F1C(double *a1)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

void *sub_1D7964FCC(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_1_24();
  v10 = v4;
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_1_24();
  type metadata accessor for FlexBoxNode();
  sub_1D796C4F0();
  swift_getWitnessTable();
  v5 = sub_1D796C570();
  if (v5)
  {

    OUTLINED_FUNCTION_5_15();
    return 0;
  }

  else
  {
    v1[2] = a1;
    MEMORY[0x1EEE9AC00](v5, v6);

    OUTLINED_FUNCTION_0_7();
    swift_getWitnessTable();
    v7 = sub_1D796C380();
    v1[3] = v10;
    MEMORY[0x1EEE9AC00](v7, v8);
    sub_1D796C380();

    v1[4] = v10;
  }

  return v2;
}

double sub_1D79651F4()
{
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_1_24();
  type metadata accessor for FlexBoxNode();
  sub_1D796C4F0();

  OUTLINED_FUNCTION_0_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_15();
  sub_1D796C380();

  *(v0 + 24) = v2;

  OUTLINED_FUNCTION_4_15();
  sub_1D796C380();

  result = v2;
  *(v0 + 32) = v2;
  return result;
}

uint64_t sub_1D7965338(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + 2);
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_1_24();
  type metadata accessor for FlexBoxNode();

  v8 = sub_1D796C430();
  for (i = v8; i != sub_1D796C4A0(); v8 = i)
  {
    v10 = sub_1D796C490();
    sub_1D796C450();
    if (v10)
    {
      v11 = *(v7 + 32 + 8 * v8);
    }

    else
    {
      v11 = sub_1D796C790();
    }

    sub_1D796C4E0();
    v12 = a3 - *(v11 + 40);
    if (v6 < 2)
    {
      v12 = a2;
    }

    *(v11 + 24) = v12;
  }
}

void sub_1D7965490(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_18(a1, a2);
  v6 = v5(v4);
  if (v6 >= v3)
  {
    v6 = v3;
  }

  *v2 = v6;
}

void sub_1D79654D0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_18(a1, a2);
  v6 = v5(v4);
  if (v3 > v6)
  {
    v6 = v3;
  }

  *v2 = v6;
}

TeaTemplate::FlexBoxWrap_optional __swiftcall FlexBoxWrap.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D796C910();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FlexBoxWrap.rawValue.getter()
{
  v1 = 1885434487;
  if (*v0 != 1)
  {
    v1 = 0x6576655270617277;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x706172576F6ELL;
  }
}

unint64_t sub_1D79656E8()
{
  result = qword_1EC9DA4A8;
  if (!qword_1EC9DA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA4A8);
  }

  return result;
}

uint64_t sub_1D7965760@<X0>(uint64_t *a1@<X8>)
{
  result = FlexBoxWrap.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D796578C()
{
  result = qword_1EC9DA4B0;
  if (!qword_1EC9DA4B0)
  {
    sub_1D79657E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA4B0);
  }

  return result;
}

void sub_1D79657E4()
{
  if (!qword_1EC9DA4B8)
  {
    v0 = sub_1D796C4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9DA4B8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FlexBoxWrap(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

TeaTemplate::FlexBoxDirection_optional __swiftcall FlexBoxDirection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D796C910();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FlexBoxDirection.rawValue.getter()
{
  result = 7827314;
  switch(*v0)
  {
    case 1:
      result = 0x7265766552776F72;
      break;
    case 2:
      result = 0x6E6D756C6F63;
      break;
    case 3:
      result = 0x65526E6D756C6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D7965A1C()
{
  result = qword_1EC9DA4C0;
  if (!qword_1EC9DA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA4C0);
  }

  return result;
}

uint64_t sub_1D7965A94@<X0>(uint64_t *a1@<X8>)
{
  result = FlexBoxDirection.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D7965AC0()
{
  result = qword_1EC9DA4C8;
  if (!qword_1EC9DA4C8)
  {
    sub_1D7965B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA4C8);
  }

  return result;
}

void sub_1D7965B18()
{
  if (!qword_1EC9DA4D0)
  {
    v0 = sub_1D796C4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9DA4D0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FlexBoxDirection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 FlexBoxItem.flex.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 FlexBoxItem.flex.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

double FlexBoxItem.init()@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE09E0A8 != -1)
  {
    swift_once();
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  result = *&xmmword_1EE09C418;
  *(a1 + 16) = xmmword_1EE09C418;
  return result;
}

uint64_t sub_1D7965D50(uint64_t a1, int a2)
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

uint64_t sub_1D7965D80(uint64_t a1, uint64_t a2, __n128 *a3, double a4, double a5, double a6, CGFloat a7)
{
  v8 = a3;
  v307 = *v7;
  v14 = v7[1];
  v15 = v7[2];
  v16 = v7[3];
  v17 = v7[4];
  v18 = v7[5];
  v19 = *(v7 + 3);
  v21 = *(v7 + 1);
  v20 = *(v7 + 2);
  v306 = v7[24];
  v280 = a1;
  v303 = a1;
  v288 = a2;
  v289 = a3;
  v287 = type metadata accessor for FlexBoxNode();
  sub_1D796C4F0();
  OUTLINED_FUNCTION_0_7();
  swift_getWitnessTable();
  v22 = &v303;
  v23 = sub_1D796C390();
  v24 = v14;
  v25 = v23;
  v275 = 0;
  v282 = a7;
  v281 = a6;
  v283 = a5;
  v285 = a4;
  v269 = v24;
  v273 = v15;
  v272 = v16;
  v271 = v17;
  v270 = v18;
  v26 = v19;
  v267 = v19;
  v284 = v21;
  v286 = v20;
  v277 = v8;
  v276 = a2;
  if (v24 > 1)
  {
    v35 = v24;

    v279 = v307;
    LOBYTE(v303) = v307;
    v36 = v35;
    BYTE1(v303) = v35;
    OUTLINED_FUNCTION_23_0();
    v37 = &v303;
    v38 = OUTLINED_FUNCTION_5_20();
    v41 = sub_1D7967B7C(v280, v38, v39, v40, a7);
    v43 = v41;
    v296 = v41;
    if (v15 >= 2)
    {
      v140 = OUTLINED_FUNCTION_5_20();
      v143 = sub_1D7967E94(v140, v141, v142, a7);
      OUTLINED_FUNCTION_15_4(v143, v144, v145);
      type metadata accessor for FlexBoxColumn();
      OUTLINED_FUNCTION_56_0();

      v146 = sub_1D796C430();
      v303 = v146;
      OUTLINED_FUNCTION_24_0();
      if (v146 != sub_1D796C4A0())
      {
        v8 = (v43 + 32);
        do
        {
          OUTLINED_FUNCTION_24_0();
          v254 = sub_1D796C490();
          OUTLINED_FUNCTION_35();
          sub_1D796C450();
          if (v254)
          {
            v255 = v8->n128_i64[v146];
          }

          else
          {
            OUTLINED_FUNCTION_53_0();
            v255 = sub_1D796C790();
          }

          OUTLINED_FUNCTION_53_0();
          sub_1D796C4E0();
          v256 = *(v255 + 16);

          v16 = sub_1D796C430();
          v297 = v16;
          OUTLINED_FUNCTION_34_0();
          if (v16 != sub_1D796C4A0())
          {
            do
            {
              OUTLINED_FUNCTION_34_0();
              sub_1D796C490();
              OUTLINED_FUNCTION_42_0();
              if (v17)
              {
                v16 = *(v256 + 32 + 8 * v16);
              }

              else
              {
                OUTLINED_FUNCTION_47_0();
                v16 = sub_1D796C790();
              }

              OUTLINED_FUNCTION_47_0();
              sub_1D796C4E0();
              v321.origin.x = OUTLINED_FUNCTION_25_0();
              MaxX = CGRectGetMaxX(v321);
              v322.origin.x = OUTLINED_FUNCTION_2_0();
              v259 = MaxX - CGRectGetMaxX(v322);
              v323.origin.x = OUTLINED_FUNCTION_2_0();
              MinY = CGRectGetMinY(v323);
              v324.origin.x = OUTLINED_FUNCTION_2_0();
              Width = CGRectGetWidth(v324);
              v325.origin.x = OUTLINED_FUNCTION_2_0();
              Height = CGRectGetHeight(v325);
              *(v16 + 16) = v259;
              *(v16 + 24) = MinY;
              *(v16 + 32) = Width;
              *(v16 + 40) = Height;

              OUTLINED_FUNCTION_34_0();
              sub_1D796C4A0();
              OUTLINED_FUNCTION_55_0();
              a7 = *(v263 - 256);
              a5 = v283;
            }

            while (!v253);
          }

          sub_1D795EEE8();

          OUTLINED_FUNCTION_24_0();
          v257 = sub_1D796C4A0();
          v146 = v303;
        }

        while (v303 != v257);
      }

      v303 = v43;
      v43 = sub_1D796C4F0();
      OUTLINED_FUNCTION_0_7();
      swift_getWitnessTable();
      v37 = &v303;
      sub_1D796C3A0();
      OUTLINED_FUNCTION_16_5();
    }

    v303 = v43;
    MEMORY[0x1EEE9AC00](v41, v42);
    OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_9_11(v147);
    v148 = type metadata accessor for FlexBoxColumn();
    LOBYTE(v149) = sub_1D796C4F0();
    OUTLINED_FUNCTION_0_7();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_56_0();

    v150 = sub_1D796C430();
    v303 = v150;
    OUTLINED_FUNCTION_29_0();
    v151 = v287;
    v268 = v36;
    if (v150 != sub_1D796C4A0())
    {
      v149 = v36 + 32;
      do
      {
        OUTLINED_FUNCTION_29_0();
        sub_1D796C490();
        OUTLINED_FUNCTION_10_9();
        sub_1D796C450();
        if (v37)
        {
          v37 = *(v149 + 8 * v150);
        }

        else
        {
          OUTLINED_FUNCTION_24_0();
          LOBYTE(v37) = sub_1D796C790();
        }

        sub_1D796C4E0();
        v313.origin.x = OUTLINED_FUNCTION_5_20();
        v313.size.height = a7;
        v164 = CGRectGetHeight(v313);
        if (v164 - sub_1D795F184() <= 0.0)
        {
        }

        else if (sub_1D795F264() <= 0.0)
        {

          OUTLINED_FUNCTION_32_0();
        }

        else
        {
          v314.origin.x = OUTLINED_FUNCTION_5_20();
          v314.size.height = a7;
          v165 = CGRectGetMinY(v314);

          v166 = sub_1D796C430();
          if (v151 == OUTLINED_FUNCTION_45_0(v166))
          {

            OUTLINED_FUNCTION_32_0();
          }

          else
          {
            OUTLINED_FUNCTION_31_0();
            do
            {
              OUTLINED_FUNCTION_58_0();
              sub_1D796C490();
              OUTLINED_FUNCTION_44_0();
              if (v36)
              {
                v167 = *(&v264 + v151);
              }

              else
              {
                OUTLINED_FUNCTION_18_2();
                v167 = sub_1D796C790();
              }

              OUTLINED_FUNCTION_43_0();
              v315.origin.x = v167[2];
              v315.size.width = v167[4];
              v315.size.height = v167[5] + a5 * v167[9];
              v167[3] = v165;
              v167[5] = v315.size.height;
              v315.origin.y = v165;
              MaxY = CGRectGetMaxY(v315);

              v165 = v21 + MaxY;
              OUTLINED_FUNCTION_58_0();
              v169 = sub_1D796C4A0();
              v151 = v297;
            }

            while (v297 != v169);

            OUTLINED_FUNCTION_61_0();
          }

          OUTLINED_FUNCTION_28_0();
        }

        OUTLINED_FUNCTION_29_0();
        v170 = sub_1D796C4A0();
        v150 = v303;
      }

      while (v303 != v170);
    }

    OUTLINED_FUNCTION_30_0();
    BYTE1(v303) = v269;
    v152 = OUTLINED_FUNCTION_7_15();
    sub_1D796988C(v152);

    v153 = sub_1D796C430();

    v295 = v153;
    OUTLINED_FUNCTION_49_0();
    if (v153 != sub_1D796C4A0())
    {
      v265 = v151 + 32;
      v266 = v148;
      do
      {
        OUTLINED_FUNCTION_49_0();
        sub_1D796C490();
        OUTLINED_FUNCTION_10_9();
        sub_1D796C450();
        if (v37)
        {
          OUTLINED_FUNCTION_63_0();
        }

        else
        {
          OUTLINED_FUNCTION_20_2();
          v8 = sub_1D796C790();
        }

        OUTLINED_FUNCTION_20_2();
        sub_1D796C4E0();
        LOBYTE(v294) = v36;
        LOBYTE(v290) = v307;
        v171 = v269;
        BYTE1(v290) = v269;
        OUTLINED_FUNCTION_2_34();
        HIWORD(v290) = v26;
        OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_5_20();
        v172 = OUTLINED_FUNCTION_60_0();
        sub_1D796403C(v172);
        LOBYTE(v294) = v149;
        OUTLINED_FUNCTION_37_0();
        *(v173 - 256) = v171;
        OUTLINED_FUNCTION_2_34();
        HIWORD(v290) = v26;
        OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_5_20();
        OUTLINED_FUNCTION_60_0();
        sub_1D79649D0();
        v174 = v8[1].n128_u64[0];

        OUTLINED_FUNCTION_28_0();
        v37 = sub_1D796C430();
        v294 = v37;
        OUTLINED_FUNCTION_57();
        if (v37 == sub_1D796C4A0())
        {

          LOBYTE(v37) = v305;
          OUTLINED_FUNCTION_3_24(v304);
          LOBYTE(v175) = v302;
        }

        else
        {
          v264 = v8;
          OUTLINED_FUNCTION_62_0();
          v281 = v176;
          OUTLINED_FUNCTION_3_24(v177);
          v178 = v298;
          OUTLINED_FUNCTION_27_0(v299);
          v280 = v174 + 32;
          v175 = v302;
          OUTLINED_FUNCTION_28_0();
          v274 = v178;
          do
          {
            OUTLINED_FUNCTION_57();
            v179 = sub_1D796C490();
            OUTLINED_FUNCTION_35();
            sub_1D796C450();
            if (v179)
            {
              v8 = *(v280 + 8 * v37);
            }

            else
            {
              OUTLINED_FUNCTION_18_2();
              v8 = sub_1D796C790();
            }

            OUTLINED_FUNCTION_18_2();
            sub_1D796C4E0();
            OUTLINED_FUNCTION_59_0(v8[1], v8[2]);
            if (v175 != 0xFF)
            {
              v180 = v36;
              v181 = v174;
              OUTLINED_FUNCTION_54_0();
              if (v175)
              {
                OUTLINED_FUNCTION_48_0();
                sub_1D796849C(v182, v183, v184, v185, v275, 1);

                v186 = OUTLINED_FUNCTION_51_0();
                v178(v186);
              }

              else
              {
                v37 = v178;
                OUTLINED_FUNCTION_41_0();
                OUTLINED_FUNCTION_17_4();
                v187 = v275;
                sub_1D796849C(v188, v189, v190, v191, v275, 0);
                (v171)(&v290);
                v175 = LODWORD(v282);
                sub_1D7968440(v171, v178, v178, v16, v187, SLOBYTE(v282));
              }

              v174 = v181;
              v36 = v180;
            }

            if (v36 != 0xFF)
            {
              if (v36)
              {
                OUTLINED_FUNCTION_22_0();
                sub_1D796849C(v193, v194, v195, v196, *(v192 - 256), 1);

                v197 = OUTLINED_FUNCTION_51_0();
                (v175)(v197);
              }

              else
              {
                OUTLINED_FUNCTION_46_0();
                v37 = *(v198 - 256);
                OUTLINED_FUNCTION_14_3();
                sub_1D796849C(v199, v200, v201, v202, v203, 0);
                (v16)(&v290);
                OUTLINED_FUNCTION_14_3();
                sub_1D7968440(v204, v205, v206, v207, v208, v36);
              }

              v178 = v274;
            }

            v209 = *&v291;
            v210 = *&v292;
            v211 = *&v293;
            v8[1].n128_f64[0] = v290;
            v8[1].n128_u64[1] = v209;
            v8[2].n128_u64[0] = v210;
            v8[2].n128_u64[1] = v211;
            if (v175 == 0xFF)
            {
              v175 = 255;
            }

            else if (v175)
            {
              OUTLINED_FUNCTION_54_0();
              OUTLINED_FUNCTION_41_0();
              OUTLINED_FUNCTION_17_4();
              OUTLINED_FUNCTION_65_0(v212, v213, v214, v215);
              v216 = OUTLINED_FUNCTION_0_21();
              v217 = (v16)(v216);
              sub_1D7968440(v171, v178, v178, v16, v37, SLOBYTE(v282));
              v171 = *&v217;
              v175 = 1;
            }

            if (v36 == 0xFF)
            {

              v36 = 255;
            }

            else if (v36)
            {
              OUTLINED_FUNCTION_46_0();
              v218 = v278;
              OUTLINED_FUNCTION_14_3();
              sub_1D796849C(v219, v220, v221, v222, v223, 1);
              v224 = OUTLINED_FUNCTION_0_21();
              v225 = v218(v224);

              v178 = v274;
              OUTLINED_FUNCTION_14_3();
              sub_1D7968440(v226, v227, v228, v229, v230, v36);
              v16 = *&v225;
              v36 = 1;
            }

            else
            {
            }

            OUTLINED_FUNCTION_28_0();
            v231 = sub_1D796C4A0();
            v37 = v294;
          }

          while (v294 != v231);

          OUTLINED_FUNCTION_13_5();
        }

        v232 = OUTLINED_FUNCTION_54_0();
        sub_1D7968440(v232, v233, v234, v235, v236, v175);
        OUTLINED_FUNCTION_14_3();
        sub_1D7968440(v237, v238, v239, v240, v241, v36);
        v242 = OUTLINED_FUNCTION_39_0();
        v36 = v272;
        LOBYTE(v149) = v271;
        v16 = v270;
        v26 = v267;
      }

      while (v295 != v242);
    }
  }

  else
  {
    LODWORD(v280) = v307;
    LOBYTE(v303) = v307;
    BYTE1(v303) = v24;
    OUTLINED_FUNCTION_23_0();
    v27 = OUTLINED_FUNCTION_5_20();
    v29 = v28;
    v32 = sub_1D79676C4(v25, v27, v30, v31, a7);

    v296 = v32;
    if (v15 >= 2)
    {
      v44 = OUTLINED_FUNCTION_5_20();
      v47 = sub_1D79679DC(v44, v45, v46, a7);
      OUTLINED_FUNCTION_15_4(v47, v48, v49);
      type metadata accessor for FlexBoxRow();
      OUTLINED_FUNCTION_56_0();

      v50 = sub_1D796C430();
      v303 = v50;
      OUTLINED_FUNCTION_24_0();
      if (v50 != sub_1D796C4A0())
      {
        do
        {
          OUTLINED_FUNCTION_24_0();
          v243 = sub_1D796C490();
          OUTLINED_FUNCTION_35();
          sub_1D796C450();
          if (v243)
          {
            v244 = *(v32 + 32 + 8 * v50);
          }

          else
          {
            OUTLINED_FUNCTION_53_0();
            v244 = sub_1D796C790();
          }

          OUTLINED_FUNCTION_53_0();
          sub_1D796C4E0();
          v245 = *(v244 + 16);

          v16 = sub_1D796C430();
          v297 = v16;
          OUTLINED_FUNCTION_34_0();
          if (v16 != sub_1D796C4A0())
          {
            do
            {
              OUTLINED_FUNCTION_34_0();
              sub_1D796C490();
              OUTLINED_FUNCTION_42_0();
              if (v29)
              {
                v16 = *(v245 + 32 + 8 * v16);
              }

              else
              {
                OUTLINED_FUNCTION_47_0();
                v16 = sub_1D796C790();
              }

              OUTLINED_FUNCTION_47_0();
              sub_1D796C4E0();
              v316.origin.x = OUTLINED_FUNCTION_2_0();
              MinX = CGRectGetMinX(v316);
              v317.origin.x = OUTLINED_FUNCTION_25_0();
              v248 = CGRectGetMaxY(v317);
              v318.origin.x = OUTLINED_FUNCTION_2_0();
              v249 = v248 - CGRectGetMaxY(v318);
              v319.origin.x = OUTLINED_FUNCTION_2_0();
              v250 = CGRectGetWidth(v319);
              v320.origin.x = OUTLINED_FUNCTION_2_0();
              v251 = CGRectGetHeight(v320);
              *(v16 + 16) = MinX;
              *(v16 + 24) = v249;
              *(v16 + 32) = v250;
              *(v16 + 40) = v251;

              OUTLINED_FUNCTION_34_0();
              sub_1D796C4A0();
              OUTLINED_FUNCTION_55_0();
              a7 = *(v252 - 256);
              a5 = v283;
            }

            while (!v253);
          }

          sub_1D79651F4();

          OUTLINED_FUNCTION_24_0();
          v246 = sub_1D796C4A0();
          v50 = v303;
        }

        while (v303 != v246);
      }

      v303 = v32;
      v32 = sub_1D796C4F0();
      OUTLINED_FUNCTION_0_7();
      swift_getWitnessTable();
      v22 = &v303;
      sub_1D796C3A0();
      OUTLINED_FUNCTION_16_5();
    }

    v303 = v32;
    MEMORY[0x1EEE9AC00](v33, v34);
    OUTLINED_FUNCTION_12_6();
    v52 = v51;
    OUTLINED_FUNCTION_9_11(v53);
    v54 = type metadata accessor for FlexBoxRow();
    LOBYTE(v55) = sub_1D796C4F0();
    OUTLINED_FUNCTION_0_7();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_56_0();

    v56 = sub_1D796C430();
    v303 = v56;
    OUTLINED_FUNCTION_29_0();
    v57 = v287;
    v268 = v25;
    if (v56 != sub_1D796C4A0())
    {
      v55 = v25 + 32;
      do
      {
        OUTLINED_FUNCTION_29_0();
        sub_1D796C490();
        OUTLINED_FUNCTION_10_9();
        sub_1D796C450();
        if (v22)
        {
          v22 = *(v55 + 8 * v56);
        }

        else
        {
          OUTLINED_FUNCTION_24_0();
          LOBYTE(v22) = sub_1D796C790();
        }

        sub_1D796C4E0();
        v310.origin.x = OUTLINED_FUNCTION_5_20();
        v310.size.height = a7;
        v155 = CGRectGetWidth(v310);
        if (v155 - sub_1D7964F30() <= 0.0)
        {
        }

        else
        {
          v156 = sub_1D795F264();
          if (v156 <= 0.0)
          {

            OUTLINED_FUNCTION_32_0();
          }

          else
          {
            v157 = v156;
            v311.origin.x = OUTLINED_FUNCTION_5_20();
            v311.size.height = a7;
            v158 = CGRectGetMinX(v311);

            v159 = sub_1D796C430();
            if (v57 == OUTLINED_FUNCTION_45_0(v159))
            {

              OUTLINED_FUNCTION_32_0();
            }

            else
            {
              OUTLINED_FUNCTION_31_0();
              do
              {
                OUTLINED_FUNCTION_58_0();
                sub_1D796C490();
                OUTLINED_FUNCTION_44_0();
                if (v25)
                {
                  v160 = *(&v264 + v57);
                }

                else
                {
                  OUTLINED_FUNCTION_18_2();
                  v160 = sub_1D796C790();
                }

                OUTLINED_FUNCTION_43_0();
                v312.origin.y = v160[3];
                v312.size.height = v160[5];
                v312.size.width = v160[4] + a5 * v160[9];
                v160[2] = v158;
                v160[4] = v312.size.width;
                v312.origin.x = v158;
                v161 = CGRectGetMaxX(v312);

                v158 = v157 + v161;
                OUTLINED_FUNCTION_58_0();
                v162 = sub_1D796C4A0();
                v57 = v297;
              }

              while (v297 != v162);

              OUTLINED_FUNCTION_61_0();
            }

            OUTLINED_FUNCTION_28_0();
          }
        }

        OUTLINED_FUNCTION_29_0();
        v163 = sub_1D796C4A0();
        v56 = v303;
      }

      while (v303 != v163);
    }

    OUTLINED_FUNCTION_30_0();
    BYTE1(v303) = v52;
    v58 = OUTLINED_FUNCTION_7_15();
    sub_1D7969114(v58);

    v59 = sub_1D796C430();

    v295 = v59;
    OUTLINED_FUNCTION_49_0();
    if (v59 != sub_1D796C4A0())
    {
      v60 = v52;
      v265 = v57 + 32;
      v266 = v54;
      do
      {
        v61 = v60;
        OUTLINED_FUNCTION_49_0();
        sub_1D796C490();
        OUTLINED_FUNCTION_10_9();
        sub_1D796C450();
        if (v22)
        {
          OUTLINED_FUNCTION_63_0();
        }

        else
        {
          OUTLINED_FUNCTION_20_2();
          v52 = sub_1D796C790();
        }

        OUTLINED_FUNCTION_20_2();
        sub_1D796C4E0();
        LOBYTE(v294) = v25;
        OUTLINED_FUNCTION_37_0();
        *(v62 - 256) = v61;
        OUTLINED_FUNCTION_2_34();
        v63 = v267;
        HIWORD(v290) = v267;
        OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_5_20();
        v64 = OUTLINED_FUNCTION_60_0();
        sub_1D7963CC8(v64);
        LOBYTE(v294) = v55;
        OUTLINED_FUNCTION_37_0();
        *(v65 - 256) = v61;
        OUTLINED_FUNCTION_2_34();
        HIWORD(v290) = v63;
        OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_5_20();
        OUTLINED_FUNCTION_60_0();
        sub_1D79647F8();
        v66 = *(v52 + 16);

        v22 = v287;
        v67 = sub_1D796C430();
        v294 = v67;
        if (v67 == sub_1D796C4A0())
        {

          LOBYTE(v22) = v305;
          OUTLINED_FUNCTION_3_24(v304);
          v69 = v298;
          v68 = v299;
          v70 = v300;
          v71 = v301;
          v52 = v302;
        }

        else
        {
          v264 = v52;
          LODWORD(v281) = v306;
          OUTLINED_FUNCTION_62_0();
          v282 = v72;
          OUTLINED_FUNCTION_3_24(v73);
          v69 = v298;
          OUTLINED_FUNCTION_27_0(v299);
          v280 = v66 + 32;
          v52 = v302;
          OUTLINED_FUNCTION_28_0();
          v274 = v69;
          do
          {
            sub_1D796C490();
            OUTLINED_FUNCTION_10_9();
            sub_1D796C450();
            if (v22)
            {
              v74 = *(v280 + 8 * v67);
            }

            else
            {
              v74 = sub_1D796C790();
            }

            sub_1D796C4E0();
            OUTLINED_FUNCTION_59_0(v74[1], v74[2]);
            if (v52 != 0xFF)
            {
              OUTLINED_FUNCTION_36_0();
              if (v52)
              {
                OUTLINED_FUNCTION_48_0();
                sub_1D796849C(v76, v77, v78, v79, v275, 1);

                v80 = OUTLINED_FUNCTION_51_0();
                v69(v80);
              }

              else
              {
                v81 = *(v75 - 256);
                v22 = v69;
                OUTLINED_FUNCTION_17_4();
                v82 = v52;
                v83 = v25;
                v84 = v66;
                v85 = v275;
                sub_1D796849C(v86, v87, v88, v89, v275, 0);
                (v63)(&v290);
                v90 = v85;
                v66 = v84;
                v25 = v83;
                v52 = v82;
                sub_1D7968440(v63, v69, v81, v16, v90, v82);
              }
            }

            if (v25 != 0xFF)
            {
              if (v25)
              {
                OUTLINED_FUNCTION_22_0();
                sub_1D796849C(v92, v93, v94, v95, *(v91 - 256), 1);

                v96 = OUTLINED_FUNCTION_51_0();
                v69(v96);
              }

              else
              {
                OUTLINED_FUNCTION_46_0();
                v22 = *(v97 - 256);
                OUTLINED_FUNCTION_14_3();
                sub_1D796849C(v98, v99, v100, v101, v102, 0);
                (v16)(&v290);
                OUTLINED_FUNCTION_14_3();
                sub_1D7968440(v103, v104, v105, v106, v107, v25);
              }

              v69 = v274;
            }

            x = v290;
            y = v291;
            v110 = v292;
            v111 = v293;
            if (LODWORD(v281))
            {
              v308.origin.x = OUTLINED_FUNCTION_0_21();
              v309 = CGRectIntegral(v308);
              x = v309.origin.x;
              y = v309.origin.y;
              v110 = v309.size.width;
              v111 = v309.size.height;
            }

            v74[1].n128_f64[0] = x;
            v74[1].n128_f64[1] = y;
            v74[2].n128_f64[0] = v110;
            v74[2].n128_f64[1] = v111;
            if (v52 == 0xFF)
            {
              v52 = 255;
            }

            else if (v52)
            {
              OUTLINED_FUNCTION_36_0();
              v113 = *(v112 - 256);
              OUTLINED_FUNCTION_17_4();
              OUTLINED_FUNCTION_65_0(v114, v115, v116, v117);
              v118 = OUTLINED_FUNCTION_0_21();
              v119 = (v16)(v118);
              sub_1D7968440(v63, v69, v113, v16, v22, v52);
              v63 = *&v119;
              v52 = 1;
            }

            if (v25 == 0xFF)
            {

              v25 = 255;
            }

            else if (v25)
            {
              OUTLINED_FUNCTION_46_0();
              v120 = v278;
              OUTLINED_FUNCTION_14_3();
              sub_1D796849C(v121, v122, v123, v124, v125, 1);
              v126 = OUTLINED_FUNCTION_0_21();
              v22 = *&v283;
              v127 = v120(v126);

              v69 = v274;
              OUTLINED_FUNCTION_14_3();
              sub_1D7968440(v128, v129, v130, v131, v132, v25);
              v16 = *&v127;
              v25 = 1;
            }

            else
            {
            }

            OUTLINED_FUNCTION_28_0();
            v133 = sub_1D796C4A0();
            v67 = v294;
          }

          while (v294 != v133);

          OUTLINED_FUNCTION_13_5();
        }

        sub_1D7968440(v63, v69, v68, v70, v71, v52);
        OUTLINED_FUNCTION_14_3();
        sub_1D7968440(v134, v135, v136, v137, v138, v25);
        v139 = OUTLINED_FUNCTION_39_0();
        v60 = v269;
        v25 = v272;
        LOBYTE(v55) = v271;
        v16 = v270;
      }

      while (v295 != v139);
    }
  }
}

void FlexBoxLayout.init()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 1) = 0;
  *(a1 + 5) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D7967614(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[25])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7967650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D79676C4(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *(v5 + 2);
  v12 = *(v5 + 16);
  type metadata accessor for FlexBoxRow();
  v25 = sub_1D796C200();
  type metadata accessor for FlexBoxNode();
  v13 = sub_1D796C200();
  v24 = v13;
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MinX = CGRectGetMinX(v26);
  v15 = sub_1D796C430();
  v23 = v15;
  if (v15 != sub_1D796C4A0())
  {
    do
    {
      v16 = sub_1D796C490();
      sub_1D796C450();
      if (v16)
      {
        v17 = *(a1 + 32 + 8 * v15);
      }

      else
      {
        v17 = sub_1D796C790();
      }

      sub_1D796C4E0();
      if ((v11 - 1) <= 1)
      {
        v18 = MinX + CGRectGetWidth(*(v17 + 16));
        v27.origin.x = a2;
        v27.origin.y = a3;
        v27.size.width = a4;
        v27.size.height = a5;
        if (CGRectGetMaxX(v27) < v18)
        {

          if (sub_1D7964F90(v19))
          {

            sub_1D796C4F0();

            sub_1D796C4C0();
            v24 = sub_1D796C480();
            v28.origin.x = a2;
            v28.origin.y = a3;
            v28.size.width = a4;
            v28.size.height = a5;
            MinX = CGRectGetMinX(v28);
          }
        }
      }

      sub_1D796C4F0();
      swift_getWitnessTable();
      sub_1D796C2A0();
      if (v22)
      {
        MinY = *(v22 + 32);
      }

      else
      {
        v29.origin.x = a2;
        v29.origin.y = a3;
        v29.size.width = a4;
        v29.size.height = a5;
        MinY = CGRectGetMinY(v29);
      }

      v30.size.width = *(v17 + 32);
      v30.size.height = *(v17 + 40);
      *(v17 + 16) = MinX;
      *(v17 + 24) = MinY;
      v30.origin.x = MinX;
      v30.origin.y = MinY;
      MinX = MinX + v12 + CGRectGetWidth(v30);
      sub_1D796C4F0();
      sub_1D796C4C0();
      v15 = v23;
    }

    while (v23 != sub_1D796C4A0());
    v13 = v24;
  }

  if (sub_1D7964F90(v13))
  {
    sub_1D796C4F0();
    sub_1D796C4C0();
  }

  return v25;
}

double sub_1D79679DC(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = a1;
  if (CGRectGetMaxY(*&a1) == 1.79769313e308)
  {
    type metadata accessor for FlexBoxRow();
    sub_1D796C4F0();
    swift_getWitnessTable();
    sub_1D796C2A0();
    if (v10)
    {
    }

    else
    {
      v12.origin.x = v7;
      v12.origin.y = a2;
      v12.size.width = a3;
      v12.size.height = a4;
      CGRectGetMinY(v12);
    }

    v13.origin.x = v7;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    MinX = CGRectGetMinX(v13);
    v14.origin.x = v7;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetMinY(v14);
    v15.origin.x = v7;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    CGRectGetWidth(v15);
    v16.origin.x = v7;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    CGRectGetMinY(v16);
    return MinX;
  }

  else
  {
    v11.origin.x = v7;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    CGRectGetMinY(v11);
    sub_1D796C650();
  }

  return v7;
}

uint64_t sub_1D7967B7C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *(v5 + 2);
  v12 = *(v5 + 8);
  type metadata accessor for FlexBoxColumn();
  v25 = sub_1D796C200();
  type metadata accessor for FlexBoxNode();
  v13 = sub_1D796C200();
  v24 = v13;
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MinY = CGRectGetMinY(v26);
  v15 = sub_1D796C430();
  v23 = v15;
  if (v15 != sub_1D796C4A0())
  {
    do
    {
      v16 = sub_1D796C490();
      sub_1D796C450();
      if (v16)
      {
        v17 = *(a1 + 32 + 8 * v15);
      }

      else
      {
        v17 = sub_1D796C790();
      }

      sub_1D796C4E0();
      if ((v11 - 1) <= 1)
      {
        v18 = MinY + CGRectGetHeight(*(v17 + 16));
        v27.origin.x = a2;
        v27.origin.y = a3;
        v27.size.width = a4;
        v27.size.height = a5;
        if (CGRectGetMaxY(v27) < v18)
        {

          if (sub_1D795EC84(v19))
          {

            sub_1D796C4F0();

            sub_1D796C4C0();
            v24 = sub_1D796C480();
            v28.origin.x = a2;
            v28.origin.y = a3;
            v28.size.width = a4;
            v28.size.height = a5;
            MinY = CGRectGetMinY(v28);
          }
        }
      }

      sub_1D796C4F0();
      swift_getWitnessTable();
      sub_1D796C2A0();
      if (v22)
      {
        MinX = *(v22 + 32);
      }

      else
      {
        v29.origin.x = a2;
        v29.origin.y = a3;
        v29.size.width = a4;
        v29.size.height = a5;
        MinX = CGRectGetMinX(v29);
      }

      v30.size.width = *(v17 + 32);
      v30.size.height = *(v17 + 40);
      *(v17 + 16) = MinX;
      *(v17 + 24) = MinY;
      v30.origin.x = MinX;
      v30.origin.y = MinY;
      MinY = MinY + v12 + CGRectGetHeight(v30);
      sub_1D796C4F0();
      sub_1D796C4C0();
      v15 = v23;
    }

    while (v23 != sub_1D796C4A0());
    v13 = v24;
  }

  if (sub_1D795EC84(v13))
  {
    sub_1D796C4F0();
    sub_1D796C4C0();
  }

  return v25;
}

double sub_1D7967E94(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = a1;
  if (CGRectGetMaxX(*&a1) == 1.79769313e308)
  {
    type metadata accessor for FlexBoxColumn();
    sub_1D796C4F0();
    swift_getWitnessTable();
    sub_1D796C2A0();
    if (v10)
    {
    }

    else
    {
      v12.origin.x = v7;
      v12.origin.y = a2;
      v12.size.width = a3;
      v12.size.height = a4;
      CGRectGetMinX(v12);
    }

    v13.origin.x = v7;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    MinX = CGRectGetMinX(v13);
    v14.origin.x = v7;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetMinY(v14);
    v15.origin.x = v7;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    CGRectGetMinX(v15);
    v16.origin.x = v7;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    CGRectGetHeight(v16);
    return MinX;
  }

  else
  {
    v11.origin.x = v7;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    CGRectGetMinX(v11);
    sub_1D796C640();
  }

  return v7;
}

uint64_t sub_1D7968034@<X0>(uint64_t *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(void, uint64_t, uint64_t)@<X5>, uint64_t (*a6)(uint64_t)@<X6>, uint64_t *a7@<X8>)
{
  v8 = *a1;
  if ((a2 & 0xFD00) != 0)
  {
    a5(0, a3, a4);
    type metadata accessor for FlexBoxNode();
    sub_1D796C4F0();

    OUTLINED_FUNCTION_0_7();
    swift_getWitnessTable();
    v10 = sub_1D796C3A0();
    result = a6(v10);
    v8 = result;
  }

  else
  {
  }

  *a7 = v8;
  return result;
}

void sub_1D7968114()
{
  OUTLINED_FUNCTION_26_0();
  v1 = *(v0 + 2);
  CGRectGetMaxY(v7);
  OUTLINED_FUNCTION_40_0();
  if (!v4)
  {
    if (v1 <= 1)
    {
      MEMORY[0x1EEE9AC00](v2, v3);
      OUTLINED_FUNCTION_21_1();
      type metadata accessor for FlexBoxRow();
      sub_1D796C4F0();
      OUTLINED_FUNCTION_0_7();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_33_0();
      if (!__OFSUB__(OUTLINED_FUNCTION_64_0(), 1))
      {
        v8.origin.x = OUTLINED_FUNCTION_0();
        CGRectGetMaxY(v8);
        return;
      }

      __break(1u);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_21_1();
    type metadata accessor for FlexBoxRow();
    sub_1D796C4F0();
    OUTLINED_FUNCTION_11_8();
    OUTLINED_FUNCTION_66_0();
    if (v6)
    {
    }

    else
    {
      v9.origin.x = OUTLINED_FUNCTION_0();
      CGRectGetMinY(v9);
    }

    v10.origin.x = OUTLINED_FUNCTION_0();
    CGRectGetMinY(v10);
    OUTLINED_FUNCTION_57();
    v5 = sub_1D796C4A0();
    if (__OFSUB__(v5, 1))
    {
LABEL_12:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_50_0(v5 - 1);
  }
}

void sub_1D7968288()
{
  OUTLINED_FUNCTION_26_0();
  if (*(v0 + 2) > 1u)
  {
    OUTLINED_FUNCTION_21_1();
    type metadata accessor for FlexBoxColumn();
    sub_1D796C4F0();
    OUTLINED_FUNCTION_11_8();
    OUTLINED_FUNCTION_66_0();
    if (v5)
    {
    }

    else
    {
      v8.origin.x = OUTLINED_FUNCTION_0();
      CGRectGetMinX(v8);
    }

    v9.origin.x = OUTLINED_FUNCTION_0();
    CGRectGetMinX(v9);
    OUTLINED_FUNCTION_57();
    v4 = sub_1D796C4A0();
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_50_0(v4 - 1);
  }

  else
  {
    v6.origin.x = OUTLINED_FUNCTION_0();
    CGRectGetMaxX(v6);
    OUTLINED_FUNCTION_40_0();
    if (!v3)
    {
      MEMORY[0x1EEE9AC00](v1, v2);
      OUTLINED_FUNCTION_21_1();
      type metadata accessor for FlexBoxColumn();
      sub_1D796C4F0();
      OUTLINED_FUNCTION_0_7();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_33_0();
      if (!__OFSUB__(OUTLINED_FUNCTION_64_0(), 1))
      {
        v7.origin.x = OUTLINED_FUNCTION_0();
        CGRectGetMaxX(v7);
        return;
      }

      goto LABEL_12;
    }
  }
}

uint64_t sub_1D7968440(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1D7968458(result, a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

uint64_t sub_1D7968458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

uint64_t sub_1D796849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

double *sub_1D7968578@<X0>(double *result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v3 = *result;
  if (*result <= *(*a2 + 32))
  {
    v3 = *(*a2 + 32);
  }

  *a3 = v3;
  return result;
}

void OUTLINED_FUNCTION_23_0()
{
  *(v5 - 214) = v1;
  *(v5 - 213) = v3;
  *(v5 - 212) = v4;
  *(v5 - 211) = v0;
  *(v5 - 210) = v2;
  *(v5 - 208) = v7;
  *(v5 - 200) = v6;
  *(v5 - 192) = *(v5 - 168);
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return sub_1D796C380();
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_1D796C4A0();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return sub_1D796C450();
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return sub_1D796C4E0();
}

uint64_t OUTLINED_FUNCTION_63_0()
{
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 472);

  return sub_1D796849C(a1, a2, a3, a4, v6, 1);
}

uint64_t sub_1D79687E4()
{
  sub_1D796CAC0();
  OUTLINED_FUNCTION_33_1();
  return sub_1D796CAF0();
}

uint64_t sub_1D7968874(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1D796CAC0();
  a2(v5, a1);
  return sub_1D796CAF0();
}

uint64_t sub_1D79688C4()
{
  OUTLINED_FUNCTION_30_1();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_35_1();
      break;
    case 13:
      OUTLINED_FUNCTION_32_1();
      break;
    default:
      break;
  }

  sub_1D796C320();
}

uint64_t sub_1D7968A28()
{
  OUTLINED_FUNCTION_26_1();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_32_1();
      break;
    case 2:
      OUTLINED_FUNCTION_43_1();
      break;
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_35_1();
      break;
    default:
      break;
  }

  sub_1D796C320();
}

uint64_t sub_1D7968AEC()
{
  sub_1D796C320();
}

uint64_t sub_1D7968C04()
{
  OUTLINED_FUNCTION_26_1();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_32_1();
      break;
    case 3:
      OUTLINED_FUNCTION_43_1();
      break;
    default:
      break;
  }

  sub_1D796C320();
}

uint64_t sub_1D7968C8C()
{
  sub_1D796C320();
}

uint64_t sub_1D7968D48()
{
  OUTLINED_FUNCTION_30_1();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_35_1();
      break;
    default:
      break;
  }

  sub_1D796C320();
}

uint64_t sub_1D7968DCC()
{
  sub_1D796C320();
}

uint64_t sub_1D7968E30(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_44_1();
  }

  sub_1D796C320();
}

uint64_t sub_1D7968EAC(uint64_t a1, char a2)
{
  sub_1D796CAC0();
  if (!a2)
  {
    OUTLINED_FUNCTION_44_1();
  }

  sub_1D796C320();

  return sub_1D796CAF0();
}

uint64_t sub_1D7968F3C()
{
  sub_1D796CAC0();
  sub_1D796C320();

  return sub_1D796CAF0();
}

uint64_t sub_1D796902C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1D796CAC0();
  a3(v6, a2);
  return sub_1D796CAF0();
}

uint64_t sub_1D7969078()
{
  sub_1D796CAC0();
  OUTLINED_FUNCTION_33_1();
  return sub_1D796CAF0();
}

uint64_t sub_1D79690B0()
{
  sub_1D796CAC0();
  NodeKind.rawValue.getter();
  sub_1D796C320();

  return sub_1D796CAF0();
}

void sub_1D796A004()
{
  OUTLINED_FUNCTION_48_1();
  if ((*&v0 & 0xFE0000) == 0)
  {
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_49_1();

    __asm { BRAA            X5, X16 }
  }

  OUTLINED_FUNCTION_4_9();
  v4 = OUTLINED_FUNCTION_46_1(v1, v2, v3);
  v10 = v5;
  v6(v4);
  v7 = OUTLINED_FUNCTION_4_9();
  v10(v7);
  OUTLINED_FUNCTION_49_1();
}

void sub_1D796A0D0()
{
  OUTLINED_FUNCTION_48_1();
  if (v0 > 1u)
  {
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_49_1();

    __asm { BRAA            X6, X16 }
  }

  OUTLINED_FUNCTION_4_9();
  v4 = OUTLINED_FUNCTION_46_1(v1, v2, v3);
  v10 = v5;
  v6(v4);
  v7 = OUTLINED_FUNCTION_4_9();
  v10(v7);
  OUTLINED_FUNCTION_49_1();
}

TeaTemplate::FlexBoxAlignContent_optional __swiftcall FlexBoxAlignContent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D796C910();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FlexBoxAlignContent.rawValue.getter()
{
  result = 0x7261745378656C66;
  switch(*v0)
  {
    case 1:
      result = 0x646E4578656C66;
      break;
    case 2:
      result = 0x7265746E6563;
      break;
    case 3:
      result = 0x68637465727473;
      break;
    case 4:
      result = 0x7465426563617073;
      break;
    case 5:
      result = 0x6F72416563617073;
      break;
    case 6:
      result = 0x6576456563617073;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D796A2F8()
{
  result = qword_1EC9DA4D8;
  if (!qword_1EC9DA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA4D8);
  }

  return result;
}

uint64_t sub_1D796A3C0@<X0>(uint64_t *a1@<X8>)
{
  result = FlexBoxAlignContent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D796A3EC()
{
  result = qword_1EC9DA4E0;
  if (!qword_1EC9DA4E0)
  {
    sub_1D796A444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA4E0);
  }

  return result;
}

void sub_1D796A444()
{
  if (!qword_1EC9DA4E8)
  {
    v0 = sub_1D796C4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9DA4E8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FlexBoxAlignContent(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return sub_1D796C320();
}

uint64_t sub_1D796A730(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1D796A770(a1);
  return v2;
}

uint64_t sub_1D796A770(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(v1 + 16) = *(a1 + 24);
  *(v1 + 32) = v2;
  *(v1 + 48) = a1;
  v3 = *(a1 + 16);
  if (*(v3 + 72))
  {
    v4 = qword_1EE09E0A8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = *(&xmmword_1EE09C418 + 1);
    v6 = xmmword_1EE09C418;

    v7 = 0uLL;
  }

  else
  {
    v6 = *(v3 + 56);
    v5 = *(v3 + 64);
    v7 = *(v3 + 40);
  }

  *(v1 + 56) = v7;
  *(v1 + 72) = v6;
  *(v1 + 80) = v5;
  return v1;
}

uint64_t sub_1D796A840()
{
  sub_1D796A820();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1D796A88C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D796A8B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D796A934@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D794BD88(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t Array<A>.flipRightToLeft(bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v12[9] = a1;
  v12[2] = a2;
  v12[3] = a3;
  *&v12[4] = a4;
  *&v12[5] = a5;
  *&v12[6] = a6;
  *&v12[7] = a7;
  v8 = sub_1D796C4F0();
  WitnessTable = swift_getWitnessTable();
  return sub_1D794789C(sub_1D796AA3C, v12, v8, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);
}

uint64_t sub_1D796AA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  result = Array<A>.flipRightToLeft(bounds:)(*v7, *(a1 + 16), *(a2 - 8), a4, a5, a6, a7);
  *a3 = result;
  return result;
}

uint64_t sub_1D796AB60@<X0>(uint64_t *a1@<X8>)
{
  result = Dictionary<>.flipRightToLeft(bounds:)();
  *a1 = result;
  return result;
}

uint64_t sub_1D796ABDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1D796AC1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D796AC88()
{
  sub_1D796C780();
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x656C616373202B20, 0xEF2874657366664FLL);
  type metadata accessor for CGPoint(0);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D796ADB4(unsigned __int8 a1)
{
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](a1);
  return sub_1D796CAF0();
}

_BYTE *sub_1D796AE18(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D796AEF8()
{
  result = qword_1EC9DA4F0;
  if (!qword_1EC9DA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA4F0);
  }

  return result;
}

uint64_t FastLayoutDecoder.decodeFrame(_:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {
    sub_1D7953554();
    OUTLINED_FUNCTION_8_12();
    *v3 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t FastLayoutDecoder.decodeIfPresent<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_9_13(a2);
  v7 = v6;
  v9 = *(v8 + 80);
  sub_1D796C690();
  OUTLINED_FUNCTION_7_17();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_4_21();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v28 - v16;
  v18 = *(v2 + 32);
  if (v18 == 1)
  {
    LayoutItem.flipRightToLeft(bounds:)(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    OUTLINED_FUNCTION_2_36();
    v21 = OUTLINED_FUNCTION_6_17();
    v22(v21);

    OUTLINED_FUNCTION_3_26(v4);
    if (!v20)
    {
      OUTLINED_FUNCTION_5_22();
      return (*(v27 + 32))(v29, v4, v9);
    }

    (*(v11 + 8))(v4, v3);
    return __swift_storeEnumTagSinglePayload(v29, 1, 1, *(v9 + 16));
  }

  if (!v18)
  {
    v19 = *(v7 + 96);
    OUTLINED_FUNCTION_2_36();
    (*(v11 + 16))(v17, a1 + v19, v3);
    OUTLINED_FUNCTION_3_26(v17);
    if (!v20)
    {
      OUTLINED_FUNCTION_5_22();
      return (*(v25 + 32))(v29, v17, v9);
    }

    (*(v11 + 8))(v17, v3);
    return __swift_storeEnumTagSinglePayload(v29, 1, 1, *(v9 + 16));
  }

  sub_1D7953554();
  v23 = OUTLINED_FUNCTION_8_12();
  return OUTLINED_FUNCTION_10_11(v23, v24);
}

uint64_t FastLayoutDecoder.decode<A>(_:)()
{
  v1 = *(v0 + 32);
  if (v1 == 1)
  {
    LayoutItemList.flipRightToLeft(bounds:)(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
    swift_beginAccess();

    MEMORY[0x1EEE9AC00](v4, v5);
    OUTLINED_FUNCTION_1_35();
    sub_1D796C4F0();
    OUTLINED_FUNCTION_0_52();
  }

  else
  {
    if (v1)
    {
      sub_1D7953554();
      v6 = OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_10_11(v6, v7);
      return v0;
    }

    v2 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v2, v3);
    OUTLINED_FUNCTION_1_35();
    sub_1D796C4F0();

    OUTLINED_FUNCTION_0_52();
  }

  v0 = sub_1D796C370();

  return v0;
}

uint64_t sub_1D796B3D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D796B3F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t LayoutContextRecord.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LayoutContextRecord.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t Canvas.description.getter()
{
  if (*(v0 + 33))
  {
    return 0x746C7561666564;
  }

  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v3;
  v5 = v2 & 1;
  MEMORY[0x1DA704750](0x286E6D756C6F63, 0xE700000000000000);
  sub_1D795DC84(v4);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Canvas(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 34))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Canvas(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 34) = v3;
  return result;
}

uint64_t sub_1D796B6A4(uint64_t a1)
{
  if (*(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Canvas.Options(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[216])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for Canvas.Options(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    v5 = a2 - 253;
    bzero(a1, 0xD8uLL);
    *a1 = v5;
    if (a3 >= 0xFD)
    {
      *(a1 + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(a1 + 216) = 0;
    }

    if (a2)
    {
      *a1 = a2 + 3;
    }
  }
}

double sub_1D796B778(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    result = 0.0;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 254;
  }

  else if (a2)
  {
    *a1 = a2 + 2;
  }

  return result;
}

uint64_t sub_1D796B820(uint64_t a1)
{
  *(a1 + 8) = sub_1D796B888(&qword_1EC9DA4F8);
  result = sub_1D796B888(&unk_1EC9DA500);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D796B888(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D796B950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a4;
  v7[10] = a3;
  v7[11] = v8;
  v7[12] = a5;
  v7[13] = a1;
  v7[14] = a2;
  v7[15] = a6;
  v7[16] = a7;

  return OUTLINED_FUNCTION_0_53(v9, v10, v11, v12, v13, v14, v15, v16, 0);
}

double sub_1D796B9BC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v48 = a16;
  v45 = a14;
  v51 = a2;
  v49 = a1;
  v24 = *a13;
  v46 = *(*a13 + 184);
  v44 = *(v24 + 216);
  v50[0] = v46;
  v50[1] = v44;
  v25 = type metadata accessor for Layout.InternalLayoutResult();
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v44 - v28;
  v30 = *(&v46 + 1);
  v31 = *(*(&v46 + 1) - 8);
  MEMORY[0x1EEE9AC00](v27, v32);
  v35 = &v44 - v34;
  if (a6 == a10 && a7 == a11)
  {
    v40 = *(&v44 + 1);
    sub_1D794C600(v30, *(&v44 + 1));
    *&v50[0] = a15;
    (*(v40 + 16))(v30, v40);
    sub_1D79336C0(v49, v51, a3, v45, v50, v48, v35);
    a11 = v41;
    (*(v31 + 8))(v35, v30);
  }

  else
  {
    *&v46 = v33;
    *&v50[0] = a15;
    v37 = v48;
    v38 = v47;
    v39 = sub_1D792B230(v29, v49, a8, a9, a10, a11, v51, a3, v50);
    if (!v38)
    {
      *&v50[0] = a15;
      sub_1D79336C0(v49, v51, a3, v39, v50, v37, v29);
      a11 = v43;
      (*(v46 + 8))(v29, v25);
    }
  }

  return a11;
}

uint64_t sub_1D796BD70()
{

  sub_1D7934F58(*(v0 + 88));

  v1 = *(v0 + 120);

  return sub_1D7935140(v1);
}

uint64_t sub_1D796BDB8()
{
  sub_1D796C780();
  MEMORY[0x1DA704750](0x79614C6465626D45, 0xEC0000003C74756FLL);
  v1 = sub_1D796CB50();
  MEMORY[0x1DA704750](v1);

  MEMORY[0x1DA704750](10302, 0xE200000000000000);
  v3 = *(v0 + 88);
  sub_1D7922754(v3);
  type metadata accessor for Sizing();
  swift_getWitnessTable();
  sub_1D796C960();
  sub_1D7934F58(v3);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

double sub_1D796BF1C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v12 = (*(*(*(v11 + 40) - 8) + 80) + 80) & ~*(*(*(v11 + 40) - 8) + 80);
  v13 = (*(*(*(v11 + 40) - 8) + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D796B9BC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v11 + v12, *(v11 + v13), *(v11 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v11 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v11 + ((((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t FlexBoxBuilder.__deallocating_deinit()
{
  FlexBoxBuilder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t FlexBoxBuilder.add(node:)(uint64_t a1)
{
  sub_1D79206C4();
  swift_allocObject();
  sub_1D796C440();
  *v2 = a1;
  type metadata accessor for Node();
  sub_1D7920548();

  sub_1D793DAD8();
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}