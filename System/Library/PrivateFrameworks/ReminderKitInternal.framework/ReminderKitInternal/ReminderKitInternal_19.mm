void REMRegExTextClassifier.predictIndices(_:)(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v29 = v2;
  v6 = *(v2 + 24);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v2 + 24) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v37 = *(v2 + 24);

  v14 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v12)
  {
LABEL_11:
    v17 = __clz(__rbit64(v12)) | (v14 << 6);
    v18 = (*(v37 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v37 + 56) + 8 * v17);

    v23 = MEMORY[0x2319135A0](v22);
    v35 = v31;
    v36 = v32;
    v33 = v19;
    v34 = v20;
    v24 = sub_23030ED38();
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    sub_2300A85F0();
    sub_2303105A8();
    LOBYTE(v19) = v25;
    sub_2300A8644(v5);

    if ((v19 & 1) == 0 && (v21 & 0x8000000000000000) == 0 && v21 < *(*(v29 + 16) + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_23007EA48(0, *(v30 + 2) + 1, 1, v30);
      }

      v27 = *(v30 + 2);
      v26 = *(v30 + 3);
      if (v27 >= v26 >> 1)
      {
        v30 = sub_23007EA48((v26 > 1), v27 + 1, 1, v30);
      }

      v15 = v30;
      *(v30 + 2) = v27 + 1;
      *&v15[8 * v27 + 32] = v21;
    }

    v12 &= v12 - 1;
    objc_autoreleasePoolPop(v23);
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return;
    }

    v12 = *(v8 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t REMRegExTextClassifier.deinit()
{

  return v0;
}

uint64_t REMRegExTextClassifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall ReminderKitInternalVerify()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143B8);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D837D0];
  *(v0 + 16) = xmmword_230315CE0;
  *(v0 + 56) = v1;
  *(v0 + 32) = 0x736B726F77;
  *(v0 + 40) = 0xE500000000000000;
  sub_230311338();
}

Swift::Bool __swiftcall CLCircularRegion.overlaps(_:)(CLCircularRegion a1)
{
  [v1 center];
  v4 = v3;
  [v1 center];
  v6 = v5;
  [(objc_class *)a1.super.super.isa center];
  v8 = v7;
  [(objc_class *)a1.super.super.isa center];
  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v4 longitude:v6];
  v12 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v8 longitude:v10];
  [v11 distanceFromLocation_];
  v14 = v13;
  [v1 radius];
  v16 = v15;
  [(objc_class *)a1.super.super.isa radius];
  v18 = v17;

  return v14 < v16 + v18;
}

uint64_t String.firstMatch(regularExpressionPattern:)(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(MEMORY[0x277CCAC68]);

  v5 = sub_2301BEC78(a1, a2, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB168D0);
  sub_2301BED54();
  sub_2300A85F0();
  v6 = sub_230310498();
  v8 = v7;
  v9 = sub_23030F8B8();
  v10 = [v5 firstMatchInString:v9 options:0 range:{v6, v8}];

  if (!v10)
  {

    return 0;
  }

  [v10 range];
  sub_2303101C8();
  if (v11)
  {

    return 0;
  }

  v12 = sub_23030FB28();

  return v12;
}

Swift::String __swiftcall String.addingHashtagPrefix()()
{
  MEMORY[0x231911790]();
  v0 = 35;
  v1 = 0xE100000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.hashtaggedDirectionLocalized(inCurrentContext:)(Swift::Bool inCurrentContext)
{
  v3 = v2;
  v4 = v1;
  v29 = inCurrentContext;
  v28 = sub_23030ED38();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23030ED18();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = objc_opt_self();
  v30 = v4;
  v31 = v3;
  v16 = sub_23030F8B8();
  v17 = [v15 dominantLanguageForString_];

  v18 = v17;
  if (!v17)
  {
    v18 = *MEMORY[0x277CD8708];
  }

  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v19 = v17;

  sub_23030ECD8();
  v20 = sub_23030ECF8();
  v21 = *(v9 + 8);
  v21(v14, v8);
  if (v29 && (sub_23030EC88(), sub_23030ED28(), (*(v5 + 8))(v7, v28), v22 = sub_23030ECF8(), v21(v12, v8), v22 == v20) || v20 != 2)
  {
    v32 = 35;
    v33 = 0xE100000000000000;
    v23 = v30;
    v24 = v31;
  }

  else
  {
    v32 = v30;
    v33 = v31;

    v23 = 35;
    v24 = 0xE100000000000000;
  }

  MEMORY[0x231911790](v23, v24);

  v25 = v32;
  v26 = v33;
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

NSString *String.asREMObjectIDProvidingModelClass()()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  ObjCClassMetadata = sub_23030F8B8();
  v1 = NSClassFromString(ObjCClassMetadata);

  if (!v1)
  {
    sub_2301BEDB8();
    swift_allocError();
LABEL_6:
    swift_willThrow();
    return ObjCClassMetadata;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  v3[2] = ObjCClassMetadata;
  aBlock[4] = sub_2301BEE0C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300F5280;
  aBlock[3] = &block_descriptor_7;
  v4 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v5 = [v2 catchObjCException:v4 error:aBlock];
  _Block_release(v4);
  if ((v5 & 1) == 0)
  {
    ObjCClassMetadata = aBlock[0];
    sub_23030E808();

    goto LABEL_6;
  }

  v6 = aBlock[0];
  return ObjCClassMetadata;
}

uint64_t String.urlFragmentRepresentation.getter()
{
  v0 = sub_23030F8B8();
  v1 = [v0 CKMangledDocumentNameForURLFragment];

  if (!v1)
  {
    return 0;
  }

  v2 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  return v2;
}

id sub_2301BEC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23030F8B8();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_23030E808();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_2301BED54()
{
  result = qword_27DB168D8;
  if (!qword_27DB168D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB168D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB168D8);
  }

  return result;
}

unint64_t sub_2301BEDB8()
{
  result = qword_27DB168E0;
  if (!qword_27DB168E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB168E0);
  }

  return result;
}

void sub_2301BEE0C()
{
  v0 = [swift_getObjCClassFromMetadata() newObjectID];
}

uint64_t sub_2301BEE64()
{
  v0 = sub_23030E4A8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = sub_2303105C8();
  v7[1] = v4;
  sub_23030E478();
  sub_2300A85F0();
  v5 = sub_230310558();
  (*(v1 + 8))(v3, v0);

  return v5;
}

uint64_t StringProtocol.trimmingUnicodeScalars(in:)(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = sub_230310B68();
  MEMORY[0x28223BE20](v5);
  WitnessTable = swift_getWitnessTable();
  v6 = sub_230311328();
  MEMORY[0x28223BE20](v6);
  v38 = &v32 - v7;
  v44 = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  v33 = v6;
  v35 = v8;
  v39 = sub_230310B68();
  v37 = *(v39 - 8);
  v9 = MEMORY[0x28223BE20](v39);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v32 - v12;
  v13 = *(a2 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v32 - v21;
  if (sub_230310088())
  {
    return 0;
  }

  v24 = (*(v13 + 16))(v16, v2, a2);
  MEMORY[0x28223BE20](v24);
  v25 = v42;
  *(&v32 - 2) = v42;
  sub_2303100B8();
  v26 = v43;
  (*(v17 + 16))(v20, v22, v43);
  v27 = MEMORY[0x231911530](v26, AssociatedConformanceWitness);
  MEMORY[0x28223BE20](v27);
  *(&v32 - 2) = v25;
  sub_2303100B8();
  v28 = v36;
  MEMORY[0x231911530](v33, v35);
  v29 = v37;
  v30 = v39;
  (*(v37 + 16))(v34, v28, v39);
  swift_getWitnessTable();
  v31 = sub_23030FB08();
  (*(v29 + 8))(v28, v30);
  (*(v17 + 8))(v22, v26);
  return v31;
}

uint64_t sub_2301BF514(uint64_t *a1, uint64_t (*a2)(void *))
{
  v3 = *a1;
  v4 = a1[1];
  v6[2] = *(v2 + 16);
  return sub_2301D28D0(a2, v6, v3, v4) & 1;
}

uint64_t Array<A>.sorted(byFirstObjectIDs:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MutableOrderedSet();

  v8 = MutableOrderedSet.__allocating_init(_:)();
  v16[12] = a2;
  v9 = sub_23004CB58();
  swift_getTupleTypeMetadata2();
  v10 = sub_23030FD38();
  v11 = sub_23004CD24();
  v12 = sub_2301BFA60(v10, v9, a3, v11);

  v16[11] = v12;
  v16[8] = a3;
  v16[9] = a4;
  sub_23030FDE8();
  sub_23030F6F8();
  swift_getWitnessTable();
  sub_23030FBC8();
  v13 = v17;
  v17 = sub_23030F608();
  v16[2] = v13;
  v16[3] = &v17;
  v16[4] = v8;
  sub_2301BF918(sub_2301BFD68, v16, a1);

  MutableOrderedSet.array.getter();
  v14 = sub_23030FD28();

  return v14;
}

uint64_t sub_2301BF778(uint64_t a1, id *a2)
{
  [*a2 remObjectID];
  sub_23004CB58();
  sub_23004CD24();
  sub_23030F6F8();
  swift_unknownObjectRetain();
  return sub_23030F738();
}

void sub_2301BF824(void **a1)
{
  v1 = *a1;
  sub_23004CB58();
  sub_23004CD24();
  v2 = v1;
  sub_23030F728();

  if (v3)
  {
    sub_23030FDE8();
    swift_unknownObjectRetain();
    sub_23030FD98();
    MutableOrderedSet.remove(_:)(&v3);
    swift_unknownObjectRelease();
  }
}

void sub_2301BF918(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2303106D8())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x231912650](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t Array<A>.sort(byFirstObjectIDs:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = Array<A>.sorted(byFirstObjectIDs:)(a1, *v3, *(a2 + 16), a3);

  *v3 = v4;
  return result;
}

uint64_t sub_2301BFA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_23030FD78())
  {
    sub_230310BD8();
    v13 = sub_230310BC8();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_23030FD78();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_23030FD58())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2303108C8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2301EE014(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void *sub_2301BFDB0(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_230310AC8();

    if (v5)
    {
      sub_23004CBA4(0, a3);
      swift_dynamicCast();
      return v12;
    }
  }

  else if (*(a2 + 16))
  {
    v8 = sub_230059108(a1);
    if (v9)
    {
      v10 = *(*(a2 + 56) + 8 * v8);
      v11 = v10;
      return v10;
    }
  }

  return 0;
}

uint64_t sub_2301BFE80(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_230310AC8();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB168F8);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_230059108(a1);
    if (v5)
    {
    }
  }

  return 0;
}

char *sub_2301BFF3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2303106D8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_23009ECB4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x231912650](i, a1);
        sub_23004CBA4(0, &qword_280C9C478);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_23009ECB4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_230061914(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_23004CBA4(0, &qword_280C9C478);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_23009ECB4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_230061914(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2301C0138(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_23009EEC0(0, v1, 0);
    v4 = a1 + 40;
    v2 = v11;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16910);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16918);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23009EEC0((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2301C027C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_23009EF30(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB148A8);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_23009EF30((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2301C0394(uint64_t a1)
{
  v2 = sub_23030F308();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_23009EFF0(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_23009EFF0((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for Alarm;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
      v9(boxed_opaque_existential_0, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_23011F5E8(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t REMMutableManualOrdering.__allocating_init(immutableManualOrdering:)(void *a1)
{
  swift_allocObject();
  v2 = sub_2301C2288(a1);

  return v2;
}

uint64_t REMMutableManualOrdering.topLevelElementIDs.getter()
{

  v0 = sub_2301C0870();

  return v0;
}

id REMMutableManualOrdering.immutableCopy()()
{
  v1 = sub_23030EB58();
  v16 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);

  sub_2301C0870();

  REMMutableManualOrdering.secondaryLevelElementIDsByTopLevelElementID.getter();
  swift_beginAccess();
  v5 = *(v0 + 48);
  v6 = OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_modifiedDate;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v6, v1);
  v7 = objc_allocWithZone(MEMORY[0x277D446E8]);
  v8 = v5;
  v9 = sub_23030F8B8();
  sub_23004CBA4(0, &qword_280C9C478);
  v10 = sub_23030FCC8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16590);
  sub_23004CD24();
  v11 = sub_23030F638();

  v12 = sub_23030EAA8();
  v13 = [v7 initWithObjectID:v18 listType:v17 listID:v9 topLevelElementIDs:v10 secondaryLevelElementIDsByTopLevelElementID:v11 uncommitedElementsAccountID:v8 modifiedDate:v12];

  (*(v2 + 8))(v4, v16);
  return v13;
}

uint64_t sub_2301C0870()
{
  v1 = [*(v0 + 16) array];
  v2 = sub_23030FCD8();

  v10 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_23004D5CC(v4, v9);
      sub_230061914(v9, &v7);
      sub_23004CBA4(0, &qword_280C9C478);
      if ((swift_dynamicCast() & 1) != 0 && v8)
      {
        MEMORY[0x231911A30]();
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23030FD18();
        }

        sub_23030FD68();
        v5 = v10;
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t REMMutableManualOrdering.listID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *REMMutableManualOrdering.uncommitedElementsAccountID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void REMMutableManualOrdering.uncommitedElementsAccountID.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t REMMutableManualOrdering.modifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_modifiedDate;
  swift_beginAccess();
  v4 = sub_23030EB58();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t REMMutableManualOrdering.modifiedDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_modifiedDate;
  swift_beginAccess();
  v4 = sub_23030EB58();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t REMMutableManualOrdering.init(immutableManualOrdering:)(void *a1)
{
  v2 = sub_2301C2288(a1);

  return v2;
}

uint64_t REMMutableManualOrdering.__allocating_init(objectID:listType:listID:)(void *a1, int a2)
{
  HIDWORD(v15) = a2;
  v16 = sub_23030EB58();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_23008D558(MEMORY[0x277D84F90]);
  sub_23030EB48();
  v7 = objc_allocWithZone(MEMORY[0x277D446E8]);
  v8 = sub_23030F8B8();

  sub_23004CBA4(0, &qword_280C9C478);
  v9 = sub_23030FCC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16590);
  sub_23004CD24();
  v10 = sub_23030F638();

  v11 = sub_23030EAA8();
  v12 = [v7 initWithObjectID:v6 listType:SWORD2(v15) listID:v8 topLevelElementIDs:v9 secondaryLevelElementIDsByTopLevelElementID:v10 uncommitedElementsAccountID:0 modifiedDate:v11];

  (*(v3 + 8))(v5, v16);
  swift_allocObject();
  v13 = sub_2301C2288(v12);

  return v13;
}

uint64_t REMMutableManualOrdering.secondaryLevelElementIDsByTopLevelElementID.getter()
{
  v1 = OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_orderedSetOfSecondaryLevelElementIDsByTopLevelElementID;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_23008D558(MEMORY[0x277D84F90]);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = sub_230310AA8() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v5 = ~v8;
    v4 = v2 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v2 + 64);
    v7 = v2;
  }

  v11 = 0;
  v12 = (v5 + 64) >> 6;
  v34 = v12;
  v35 = v7;
  while ((v7 & 0x8000000000000000) != 0)
  {
    if (!sub_230310AD8() || (sub_23004CBA4(0, &qword_280C9C478), swift_dynamicCast(), v17 = v37, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB168F8), swift_dynamicCast(), v15 = v11, v16 = v6, !v37))
    {
LABEL_30:
      sub_230060014();

      return v3;
    }

LABEL_19:
    v36 = v16;
    v18 = v4;
    v19 = v17;

    v20 = sub_2301C0870();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v3;
    v23 = sub_230059108(v19);
    v24 = v3[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_32;
    }

    v27 = v22;
    if (v3[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v22)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_23008AED4();
        if (v27)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_23008656C(v26, isUniquelyReferenced_nonNull_native);
      v28 = sub_230059108(v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_34;
      }

      v23 = v28;
      if (v27)
      {
LABEL_8:
        *(v3[7] + 8 * v23) = v20;

        goto LABEL_9;
      }
    }

    v3[(v23 >> 6) + 8] |= 1 << v23;
    *(v3[6] + 8 * v23) = v19;
    *(v3[7] + 8 * v23) = v20;

    v30 = v3[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_33;
    }

    v3[2] = v32;
LABEL_9:
    v11 = v15;
    v4 = v18;
    v7 = v35;
    v6 = v36;
    v12 = v34;
  }

  v13 = v11;
  v14 = v6;
  v15 = v11;
  if (v6)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v7 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_30;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_23004CBA4(0, &qword_280C9C478);
  result = sub_2303112A8();
  __break(1u);
  return result;
}

Swift::Void __swiftcall REMMutableManualOrdering.remove(topLevelElementID:)(REMObjectID topLevelElementID)
{
  isa = topLevelElementID.super.isa;
  [*(*(v1 + OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_orderedSetOfTopLevelElementIDs) + 16) removeObject_];
  swift_beginAccess();
  sub_2300A14C4(isa);
  swift_endAccess();
}

Swift::Void __swiftcall REMMutableManualOrdering.append(secondaryLevelElementID:forTopLevelElementID:)(REMObjectID secondaryLevelElementID, REMObjectID forTopLevelElementID)
{
  uuid = secondaryLevelElementID._uuid;
  isa = secondaryLevelElementID.super.isa;
  v5 = OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_orderedSetOfSecondaryLevelElementIDsByTopLevelElementID;
  swift_beginAccess();
  v6 = sub_2301BFE80(uuid, *(v2 + v5));
  swift_endAccess();
  if (v6)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB168F8);
    v7 = swift_allocObject();
    sub_2301BFF3C(MEMORY[0x277D84F90]);
    v8 = objc_allocWithZone(MEMORY[0x277CBEB40]);
    v9 = sub_23030FCC8();

    v10 = [v8 initWithArray_];

    *(v7 + 16) = v10;
    swift_beginAccess();
    v11 = *(v2 + v5);
    if ((v11 & 0xC000000000000001) != 0)
    {
      if (v11 < 0)
      {
        v12 = *(v2 + v5);
      }

      else
      {
        v12 = v11 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = sub_2303106D8();
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return;
      }

      *(v2 + v5) = sub_2301C1BA8(v12, v13 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + v5);
    sub_2300A1F30(v7, uuid, isUniquelyReferenced_nonNull_native);
    *(v2 + v5) = v17;
    swift_endAccess();
  }

  swift_beginAccess();
  v15 = sub_2301BFE80(uuid, *(v2 + v5));
  if (v15)
  {
    v16 = v15;
    swift_endAccess();
    [*(v16 + 16) addObject_];
  }

  else
  {
    swift_endAccess();
  }
}

Swift::Void __swiftcall REMMutableManualOrdering.remove(secondaryLevelElementID:forTopLevelElementID:)(REMObjectID secondaryLevelElementID, REMObjectID forTopLevelElementID)
{
  uuid = secondaryLevelElementID._uuid;
  isa = secondaryLevelElementID.super.isa;
  v5 = OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_orderedSetOfSecondaryLevelElementIDsByTopLevelElementID;
  swift_beginAccess();
  v6 = sub_2301BFE80(uuid, *(v2 + v5));
  swift_endAccess();
  if (v6)
  {

    swift_beginAccess();
    v7 = sub_2301BFE80(uuid, *(v2 + v5));
    if (v7)
    {
      v8 = v7;
      swift_endAccess();
      [*(v8 + 16) removeObject_];
    }

    else
    {
      swift_endAccess();
    }
  }
}

uint64_t REMMutableManualOrdering.deinit()
{

  v1 = OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_modifiedDate;
  v2 = sub_23030EB58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t REMMutableManualOrdering.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_modifiedDate;
  v2 = sub_23030EB58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2301C1710(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14690);
    v2 = sub_230310BB8();
    v19 = v2;
    sub_230310AA8();
    v3 = sub_230310AD8();
    if (v3)
    {
      v4 = v3;
      sub_23004CBA4(0, &qword_280C9C478);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_23004CBA4(0, &qword_27DB145D8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_230083BC4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_230310438();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_230310AD8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2301C195C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14688);
    v2 = sub_230310BB8();
    v19 = v2;
    sub_230310AA8();
    v3 = sub_230310AD8();
    if (v3)
    {
      v4 = v3;
      sub_23004CBA4(0, &qword_280C9C478);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_23004CBA4(0, &qword_27DB14FE8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2300843E8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_230310438();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_230310AD8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2301C1BA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14598);
    v2 = sub_230310BB8();
    v19 = v2;
    sub_230310AA8();
    v3 = sub_230310AD8();
    if (v3)
    {
      v4 = v3;
      sub_23004CBA4(0, &qword_280C9C478);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB168F8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2300862E8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_230310438();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_230310AD8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2301C1DF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB145D0);
    v2 = sub_230310BB8();
    v19 = v2;
    sub_230310AA8();
    v3 = sub_230310AD8();
    if (v3)
    {
      v4 = v3;
      sub_23004CBA4(0, &qword_27DB145D8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_23004CBA4(0, &qword_27DB165C0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2300867DC(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_230310438();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_230310AD8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2301C203C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB145B0);
    v2 = sub_230310BB8();
    v19 = v2;
    sub_230310AA8();
    v3 = sub_230310AD8();
    if (v3)
    {
      v4 = v3;
      sub_23004CBA4(0, &qword_280C9C478);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_23004CBA4(0, &qword_27DB14808);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2300867F0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_230310438();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_230310AD8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2301C2288(void *a1)
{
  v3 = sub_23030EB58();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 48) = 0;
  v55[1] = v1 + 48;
  *(v1 + 16) = [a1 objectID];
  *(v1 + 24) = [a1 listType];
  v5 = [a1 listID];
  v6 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v8 = v7;

  *(v1 + 32) = v6;
  *(v1 + 40) = v8;
  v9 = [a1 topLevelElementIDs];
  v10 = sub_23004CBA4(0, &qword_280C9C478);
  v11 = sub_23030FCD8();

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB168F8);
  v12 = swift_allocObject();
  sub_2301BFF3C(v11);

  v13 = objc_allocWithZone(MEMORY[0x277CBEB40]);
  v14 = sub_23030FCC8();

  v15 = [v13 initWithArray_];

  *(v12 + 16) = v15;
  v60 = v1;
  *(v1 + OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_orderedSetOfTopLevelElementIDs) = v12;
  v56 = a1;
  v16 = [a1 secondaryLevelElementIDsByTopLevelElementID];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16590);
  sub_23004CD24();
  v55[0] = v10;
  v17 = sub_23030F658();

  v18 = sub_23008D650(MEMORY[0x277D84F90]);
  v19 = v17 + 64;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 64);
  v23 = (v20 + 63) >> 6;
  v62 = v17;

  v24 = 0;
  if (v22)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      v48 = v60;
      *(v60 + OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_orderedSetOfSecondaryLevelElementIDsByTopLevelElementID) = v18;
      v49 = v56;
      v50 = [v56 uncommitedElementsAccountID];
      swift_beginAccess();
      v51 = *(v48 + 48);
      *(v48 + 48) = v50;

      v52 = [v49 modifiedDate];
      v53 = v57;
      sub_23030EB18();

      (*(v58 + 32))(v48 + OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_modifiedDate, v53, v59);
      return v48;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      while (1)
      {
        v26 = (v25 << 9) | (8 * __clz(__rbit64(v22)));
        v27 = *(*(v62 + 48) + v26);
        v28 = *(*(v62 + 56) + v26);
        v29 = swift_allocObject();
        v30 = v27;
        swift_bridgeObjectRetain_n();
        v31 = v30;
        sub_2301BFF3C(v28);
        v63 = v28;

        v32 = objc_allocWithZone(MEMORY[0x277CBEB40]);
        v33 = sub_23030FCC8();

        v34 = [v32 initWithArray_];

        v64 = v29;
        *(v29 + 16) = v34;
        if ((v18 & 0xC000000000000001) != 0)
        {
          if (v18 >= 0)
          {
            v18 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v35 = sub_2303106D8();
          if (__OFADD__(v35, 1))
          {
            goto LABEL_28;
          }

          v18 = sub_2301C1BA8(v18, v35 + 1);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v18;
        v38 = sub_230059108(v31);
        v39 = *(v18 + 16);
        v40 = (v37 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
          goto LABEL_27;
        }

        v42 = v37;
        if (*(v18 + 24) >= v41)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23008AD5C();
          }
        }

        else
        {
          sub_2300862E8(v41, isUniquelyReferenced_nonNull_native);
          v43 = sub_230059108(v31);
          if ((v42 & 1) != (v44 & 1))
          {
            goto LABEL_30;
          }

          v38 = v43;
        }

        v22 &= v22 - 1;
        v18 = v65;
        if (v42)
        {
          *(*(v65 + 56) + 8 * v38) = v64;

          v24 = v25;
          if (!v22)
          {
            goto LABEL_7;
          }
        }

        else
        {
          *(v65 + 8 * (v38 >> 6) + 64) |= 1 << v38;
          *(*(v18 + 48) + 8 * v38) = v31;
          *(*(v18 + 56) + 8 * v38) = v64;

          v45 = *(v18 + 16);
          v46 = __OFADD__(v45, 1);
          v47 = v45 + 1;
          if (v46)
          {
            goto LABEL_29;
          }

          *(v18 + 16) = v47;
          v24 = v25;
          if (!v22)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v25 = v24;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for REMMutableManualOrdering()
{
  result = qword_27DB16900;
  if (!qword_27DB16900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2301C2894()
{
  result = sub_23030EB58();
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

uint64_t sub_2301C299C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_23009EE70(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  result = sub_230310658();
  v6 = result;
  v7 = 0;
  v25 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *(*(*(a1 + 56) + 8 * v6) + 16);
    v24 = *v10;
    v12 = *(v26 + 16);
    v13 = *(v26 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_23009EE70((v13 > 1), v12 + 1, 1);
    }

    *(v26 + 16) = v12 + 1;
    v14 = (v26 + 24 * v12);
    v14[4] = v24;
    v14[5] = v11;
    v14[6] = v23;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_2300EB170(v6, v25, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_2300EB170(v6, v25, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2301C2BF0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2302A3844(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_230310E48();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16910);
      v7 = sub_23030FD48();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2301C4A40(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2301C2D4C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2302A3858(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_230310E48();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = v13[2];
          v13[4] = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB148B8);
      v7 = sub_23030FD48();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_2301C4FD4(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2301C2EBC()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB16920);
  v1 = __swift_project_value_buffer(v0, qword_27DB16920);
  if (qword_280C99DE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2301C2FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_230310848();

  v8 = MEMORY[0x231911A60](a1, MEMORY[0x277D837D0]);
  MEMORY[0x231911790](v8);

  MEMORY[0x231911790](0x726F74636576202CLL, 0xEB00000000203A73);
  v9 = type metadata accessor for RDVector();
  v10 = MEMORY[0x231911A60](a2, v9);
  MEMORY[0x231911790](v10);

  MEMORY[0x231911790](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  MEMORY[0x231911790](a3, a4);
  MEMORY[0x231911790](125, 0xE100000000000000);
  return 0x3A736C6562616C7BLL;
}

uint64_t sub_2301C30D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a3;
  v15 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16968);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301C67FC();
  sub_230311448();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_230059F7C(&qword_280C96EE8);
  sub_230310DF8();
  if (!v5)
  {
    v17 = v14;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16958);
    sub_2301C6850(&qword_27DB16970, &qword_27DB16020);
    sub_230310DF8();
    LOBYTE(v17) = 2;
    sub_230310DA8();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2301C3320()
{
  v1 = 0x73726F74636576;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736C6562616CLL;
  }
}

uint64_t sub_2301C3378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2301C61B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2301C33A0(uint64_t a1)
{
  v2 = sub_2301C67FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301C33DC(uint64_t a1)
{
  v2 = sub_2301C67FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301C3418@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2301C5EC4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t REMkNNByTitleEmbedding.__allocating_init(from:with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  REMkNNByTitleEmbedding.init(from:with:)(a1);
  return v2;
}

uint64_t REMkNNByTitleEmbedding.init(from:with:)(uint64_t a1)
{
  v20[1] = *v1;
  v4 = sub_23030E9B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  sub_23030E908();

  v8 = sub_23030E9C8();
  if (v2)
  {

    v10 = objc_opt_self();
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    sub_230310848();

    *&v22 = 0xD000000000000023;
    *(&v22 + 1) = 0x8000000230343410;
    v11 = sub_23030E888();
    MEMORY[0x231911790](v11);

    v12 = sub_23030F8B8();

    [v10 internalErrorWithDebugDescription_];

    swift_willThrow();
    v15 = *(v5 + 8);
    v15(v21, v4);
    v15(v7, v4);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v8;
    v14 = v9;
    sub_23030E408();
    swift_allocObject();
    sub_23030E3F8();
    sub_2301C38D8();
    sub_23030E3E8();

    sub_23005FE3C(v13, v14);
    v17 = *(v5 + 8);
    v17(v21, v4);
    v17(v7, v4);
    v18 = v23;
    v19 = v24;
    *(v1 + 16) = v22;
    *(v1 + 32) = v18;
    *(v1 + 40) = v19;
  }

  return v1;
}

unint64_t sub_2301C38D8()
{
  result = qword_27DB16938;
  if (!qword_27DB16938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16938);
  }

  return result;
}

uint64_t REMkNNByTitleEmbedding.__allocating_init(vectors:labels:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  REMkNNByTitleEmbedding.init(vectors:labels:)(a1, a2);
  return v4;
}

void *REMkNNByTitleEmbedding.init(vectors:labels:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23030EB58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a2;
  v3[3] = a1;
  v10 = objc_allocWithZone(MEMORY[0x277CCA968]);

  v11 = [v10 init];
  v12 = sub_23030F8B8();
  [v11 setDateFormat_];

  sub_23030EB48();
  v13 = sub_23030EAA8();
  (*(v7 + 8))(v9, v6);
  v14 = [v11 stringFromDate_];

  v15 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v17 = v16;

  v33 = v15;
  v34 = v17;

  MEMORY[0x231911790](46, 0xE100000000000000);

  MEMORY[0x231911790](3157553, 0xE300000000000000);

  v18 = v34;
  v3[4] = v33;
  v3[5] = v18;
  v19 = sub_2301C59D0(a2);

  v20 = sub_2301C299C(v19);

  if (qword_27DB13C08 != -1)
  {
    swift_once();
  }

  v21 = sub_23030EF48();
  __swift_project_value_buffer(v21, qword_27DB16920);

  v22 = sub_23030EF38();
  v23 = sub_2303102A8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136446210;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB148B8);
    v27 = MEMORY[0x231911A60](v20, v26);
    v29 = v28;

    v30 = sub_23004E30C(v27, v29, &v33);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_230044000, v22, v23, "kNN Model Statistics: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x231914180](v25, -1, -1);
    MEMORY[0x231914180](v24, -1, -1);
  }

  else
  {
  }

  return v3;
}

uint64_t REMkNNByTitleEmbedding.save(to:with:)()
{
  v1 = sub_23030E9B8();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];

  sub_23030E908();

  sub_23030E458();
  swift_allocObject();
  sub_23030E448();
  v14 = v4;
  v15 = v5;
  v16 = v7;
  v17 = v6;
  sub_2301C5BE0();
  v8 = sub_23030E438();
  v10 = v9;

  sub_23030EA28();
  (*(v13 + 8))(v3, v1);
  sub_23005FE3C(v8, v10);
  return 1;
}

uint64_t REMkNNByTitleEmbedding.neighbors(of:neighborCount:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2303106D8())
  {
    v8 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v32 = MEMORY[0x277D84F90];
    sub_23009EE90(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v8 = v32;
    v31 = a2;
    if (v6)
    {
      v9 = sub_2303106D8();
      if ((v5 & 0xC000000000000001) == 0)
      {
LABEL_14:
        v16 = 0;
        v6 = v5 + 32;
        v17 = v9 & ~(v9 >> 63);
        while (v17 != v16)
        {

          sub_230130E64(v18, a1);
          v20 = v19;

          v32 = v8;
          a2 = *(v8 + 16);
          v21 = *(v8 + 24);
          v5 = a2 + 1;
          if (a2 >= v21 >> 1)
          {
            sub_23009EE90((v21 > 1), a2 + 1, 1);
            v8 = v32;
          }

          v22 = (v8 + 16 * a2);
          *(v22 + 4) = v16;
          *(v8 + 16) = v5;
          *(v22 + 5) = v20;
          if (i == ++v16)
          {
LABEL_19:
            a2 = v31;
            goto LABEL_20;
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((v5 & 0xC000000000000001) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = 0;
    v10 = v9 & ~(v9 >> 63);
    while (v10 != v6)
    {
      v11 = MEMORY[0x231912650](v6, v5);
      sub_230130E64(v11, a1);
      v13 = v12;
      swift_unknownObjectRelease();
      v32 = v8;
      a2 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (a2 >= v14 >> 1)
      {
        sub_23009EE90((v14 > 1), a2 + 1, 1);
        v8 = v32;
      }

      v15 = (v8 + 16 * a2);
      *(v15 + 4) = v6;
      *(v8 + 16) = a2 + 1;
      *(v15 + 5) = v13;
      if (i == ++v6)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_20:
  v32 = v8;

  sub_2301C2BF0(&v32);

  a2 = sub_2300F5268(a2, v32);
  if ((v25 & 1) == 0)
  {
LABEL_21:
    sub_23009D6D0(a2, v23, v24, v25);
    v27 = v26;
    goto LABEL_28;
  }

  v8 = v25;
  i = v24;
  a1 = v23;
  sub_230311088();
  swift_unknownObjectRetain_n();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    swift_unknownObjectRelease();
    v28 = MEMORY[0x277D84F90];
  }

  v29 = *(v28 + 16);

  if (__OFSUB__(v8 >> 1, i))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v29 != (v8 >> 1) - i)
  {
LABEL_35:
    swift_unknownObjectRelease();
    v25 = v8;
    v24 = i;
    v23 = a1;
    goto LABEL_21;
  }

  v27 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v27)
  {
    return v27;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_28:
  swift_unknownObjectRelease();
  return v27;
}

uint64_t REMkNNByTitleEmbedding.predict(for:neighborCountToConsider:)(uint64_t a1, int64_t a2)
{
  v3 = v2;
  if (qword_27DB13C08 != -1)
  {
    swift_once();
  }

  v6 = sub_23030EF48();
  __swift_project_value_buffer(v6, qword_27DB16920);
  v7 = sub_23030EF38();
  v8 = sub_230310268();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a2;
    _os_log_impl(&dword_230044000, v7, v8, "kNN with k = %ld", v9, 0xCu);
    MEMORY[0x231914180](v9, -1, -1);
  }

  v10 = REMkNNByTitleEmbedding.neighbors(of:neighborCount:)(a1, a2);

  v11 = sub_23030EF38();
  v12 = sub_230310268();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v42 = v14;
    *v13 = 136315138;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16910);
    v16 = MEMORY[0x231911A60](v10, v15);
    v18 = sub_23004E30C(v16, v17, &v42);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_230044000, v11, v12, "kNN neighbor distances: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x231914180](v14, -1, -1);
    MEMORY[0x231914180](v13, -1, -1);
  }

  v19 = *(v10 + 16);
  if (v19)
  {
    v20 = (v10 + 40);
    v21 = MEMORY[0x277D84F90];
    do
    {
      v25 = *v20;
      if (*v20 < 0.9)
      {
        v26 = *(v20 - 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23009EE90(0, *(v21 + 16) + 1, 1);
          v21 = v42;
        }

        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_23009EE90((v22 > 1), v23 + 1, 1);
          v21 = v42;
        }

        *(v21 + 16) = v23 + 1;
        v24 = v21 + 16 * v23;
        *(v24 + 32) = v26;
        *(v24 + 40) = v25;
      }

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v28 = *(v21 + 16);

  if (v28 >= a2)
  {
    v33 = sub_2301C0138(v10);

    v34 = sub_2301C62CC(v33, v3);
    v36 = v35;

    if (v36)
    {

      v37 = sub_23030EF38();
      v38 = sub_230310268();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v42 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_23004E30C(v34, v36, &v42);
        _os_log_impl(&dword_230044000, v37, v38, "kNN model suggesting %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x231914180](v40, -1, -1);
        MEMORY[0x231914180](v39, -1, -1);
      }
    }
  }

  else
  {

    v29 = sub_23030EF38();
    v30 = sub_230310268();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      v32 = *(v10 + 16);

      *(v31 + 4) = v32;

      _os_log_impl(&dword_230044000, v29, v30, "Embedding.neighbors returned less than k neighbors {neighbor count: %ld} within distance of 0.9", v31, 0xCu);
      MEMORY[0x231914180](v31, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  return v34;
}

uint64_t REMkNNByTitleEmbedding.deinit()
{

  return v0;
}

uint64_t REMkNNByTitleEmbedding.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2301C4A40(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2302A36A0(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_2301C5590((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007EA34(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_23007EA34((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_2301C5590((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2301C4FD4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2302A36A0(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_2301C5794((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v12 < v9) ^ (v15 >= v16);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007EA34(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_23007EA34((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_2301C5794((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2301C5590(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_2301C5794(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_2301C59D0(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v27 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;
    swift_bridgeObjectRetain_n();
    v8 = sub_23005EE00(v6, v5);
    v9 = v1[2];
    v10 = (v7 & 1) == 0;
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      break;
    }

    v12 = v7;
    if (v1[3] < v11)
    {
      sub_2300846D8(v11, 1);
      v1 = v27;
      v13 = sub_23005EE00(v6, v5);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_19;
      }

      v8 = v13;
    }

    if (v12)
    {

      v15 = v1[7];
      v16 = *(v15 + 8 * v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + 8 * v8) = v16;
      v26 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_23007E928(0, *(v16 + 2) + 1, 1, v16);
        *(v15 + 8 * v8) = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        v16 = sub_23007E928((v18 > 1), v19 + 1, 1, v16);
        *(v26 + 8 * v8) = v16;
      }

      *(v16 + 2) = v19 + 1;
      v4 = &v16[16 * v19];
      *(v4 + 4) = v6;
      *(v4 + 5) = v5;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_230315CE0;
      *(v20 + 32) = v6;
      *(v20 + 40) = v5;
      v1[(v8 >> 6) + 8] |= 1 << v8;
      v21 = (v1[6] + 16 * v8);
      *v21 = v6;
      v21[1] = v5;
      *(v1[7] + 8 * v8) = v20;
      v22 = v1[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v1[2] = v24;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

unint64_t sub_2301C5BE0()
{
  result = qword_27DB16940;
  if (!qword_27DB16940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16940);
  }

  return result;
}

uint64_t sub_2301C5C34(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F98];
  v4 = *(a1 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = (v2 + 40);
    v33 = v2;
    while (v5 < *(v2 + 16))
    {
      v8 = *(v6 - 1);
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      v9 = *(a2 + 16);
      if (v8 >= *(v9 + 16))
      {
        goto LABEL_22;
      }

      v10 = *v6;
      v11 = v9 + 16 * v8;
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);

      v15 = sub_23005EE00(v13, v12);
      v16 = v3[2];
      v17 = (v14 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        goto LABEL_23;
      }

      v19 = v14;
      if (v3[3] < v18)
      {
        sub_23008701C(v18, 1);
        v3 = v35;
        v20 = sub_23005EE00(v13, v12);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_25;
        }

        v15 = v20;
      }

      if (v19)
      {

        v22 = v3[7];
        v23 = *(v22 + 8 * v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v22 + 8 * v15) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_23007FCD4(0, *(v23 + 2) + 1, 1, v23);
          *(v22 + 8 * v15) = v23;
        }

        v26 = *(v23 + 2);
        v25 = *(v23 + 3);
        if (v26 >= v25 >> 1)
        {
          v23 = sub_23007FCD4((v25 > 1), v26 + 1, 1, v23);
          *(v22 + 8 * v15) = v23;
        }

        *(v23 + 2) = v26 + 1;
        v7 = &v23[16 * v26];
        *(v7 + 4) = v8;
        *(v7 + 5) = v10;
        v2 = v33;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14340);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_230315CE0;
        *(v27 + 32) = v8;
        *(v27 + 40) = v10;
        v3[(v15 >> 6) + 8] |= 1 << v15;
        v28 = (v3[6] + 16 * v15);
        *v28 = v13;
        v28[1] = v12;
        *(v3[7] + 8 * v15) = v27;
        v29 = v3[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_24;
        }

        v3[2] = v31;
      }

      ++v5;
      v6 += 2;
      if (v4 == v5)
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
LABEL_24:
    __break(1u);
LABEL_25:

    result = sub_2303112A8();
    __break(1u);
  }

  else
  {
LABEL_19:

    return v3;
  }

  return result;
}

uint64_t sub_2301C5EC4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16948);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_2301C67FC();
  sub_230311428();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    v10 = 0;
    sub_230059F7C(&qword_280C98850);
    sub_230310CE8();
    v7 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16958);
    v10 = 1;
    sub_2301C6850(&qword_27DB16960, &qword_27DB16010);
    sub_230310CE8();
    LOBYTE(v11) = 2;
    v9 = 0;
    sub_230310C98();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_2301C61B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6562616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73726F74636576 && a2 == 0xE700000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2301C62CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 < 2)
  {
    if (!v4)
    {
      return 0;
    }

    v18 = *(a1 + 32);
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v19 = *(a2 + 16);
      if (v18 < *(v19 + 16))
      {
        v20 = *(v19 + 16 * v18 + 32);

        return v20;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = sub_2301C5C34(v5, a2);
    v7 = sub_2301C299C(v6);

    v25[0] = v7;

    sub_2301C2D4C(v25);

    v2 = v25[0];
    if (qword_27DB13C08 != -1)
    {
      swift_once();
    }

    v8 = sub_23030EF48();
    __swift_project_value_buffer(v8, qword_27DB16920);

    v9 = sub_23030EF38();
    v10 = sub_2303102A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25[0] = v12;
      *v11 = 136446210;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB148B8);
      v14 = MEMORY[0x231911A60](v2, v13);
      v16 = v15;

      v17 = sub_23004E30C(v14, v16, v25);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_230044000, v9, v10, "kNN list index and neighbor counts: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x231914180](v12, -1, -1);
      MEMORY[0x231914180](v11, -1, -1);
    }

    else
    {
    }

    v21 = v2[2];
    if (v21 == 1)
    {
      v20 = v2[4];

      return v20;
    }

    if (v21)
    {
      v20 = v2[4];
      v22 = v2[6];
      v23 = v2[9];

      if (v23 < v22)
      {
        return v20;
      }

      return 0;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t destroy for REMkNNByTitleEmbedding.ModelData()
{
}

void *initializeWithCopy for REMkNNByTitleEmbedding.ModelData(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for REMkNNByTitleEmbedding.ModelData(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for REMkNNByTitleEmbedding.ModelData(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMkNNByTitleEmbedding.ModelData(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for REMkNNByTitleEmbedding.ModelData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2301C67FC()
{
  result = qword_27DB16950;
  if (!qword_27DB16950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16950);
  }

  return result;
}

uint64_t sub_2301C6850(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB16958);
    sub_2301724C8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2301C68EC()
{
  result = qword_27DB16978;
  if (!qword_27DB16978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16978);
  }

  return result;
}

unint64_t sub_2301C6944()
{
  result = qword_27DB16980;
  if (!qword_27DB16980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16980);
  }

  return result;
}

unint64_t sub_2301C699C()
{
  result = qword_27DB16988;
  if (!qword_27DB16988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16988);
  }

  return result;
}

uint64_t Date.init(testing_parsedFrom:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v35 = a4;
  v34 = sub_23030EB58();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_23030EE68();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23030ED38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_23030EBF8();
  v18 = sub_23030EC38();
  (*(v14 + 8))(v16, v13);
  [v17 setLocale_];

  v19 = v31;
  v20 = sub_23030F8B8();
  [v17 setDateFormat_];

  [v17 setLenient_];
  sub_230055F74(v19, v8, &qword_27DB147D8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_230061918(v8, &qword_27DB147D8);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v21 = sub_23030EE38();
    [v17 setTimeZone_];

    (*(v10 + 8))(v12, v9);
  }

  v22 = sub_23030F8B8();

  v23 = [v17 dateFromString_];

  if (v23)
  {
    v24 = v30;
    sub_23030EB18();

    sub_230061918(v19, &qword_27DB147D8);
    v25 = v35;
    v26 = v24;
    v27 = v34;
    (*(v4 + 32))(v35, v26, v34);
    v28 = 0;
  }

  else
  {
    sub_230061918(v19, &qword_27DB147D8);

    v28 = 1;
    v27 = v34;
    v25 = v35;
  }

  return (*(v4 + 56))(v25, v28, 1, v27);
}

uint64_t Date.init(testing_allDayParsedFrom:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v35 = a4;
  v34 = sub_23030EB58();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_23030EE68();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23030ED38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_23030EBF8();
  v18 = sub_23030EC38();
  (*(v14 + 8))(v16, v13);
  [v17 setLocale_];

  v19 = v31;
  v20 = sub_23030F8B8();
  [v17 setDateFormat_];

  [v17 setLenient_];
  sub_230055F74(v19, v8, &qword_27DB147D8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_230061918(v8, &qword_27DB147D8);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v21 = sub_23030EE38();
    [v17 setTimeZone_];

    (*(v10 + 8))(v12, v9);
  }

  v22 = sub_23030F8B8();

  v23 = [v17 dateFromString_];

  if (v23)
  {
    v24 = v30;
    sub_23030EB18();

    sub_230061918(v19, &qword_27DB147D8);
    v25 = v35;
    v26 = v24;
    v27 = v34;
    (*(v4 + 32))(v35, v26, v34);
    v28 = 0;
  }

  else
  {
    sub_230061918(v19, &qword_27DB147D8);

    v28 = 1;
    v27 = v34;
    v25 = v35;
  }

  return (*(v4 + 56))(v25, v28, 1, v27);
}

uint64_t sub_2301C72E0(void (*a1)(uint64_t))
{
  v3 = sub_23030EE08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030EDC8();
  a1(v1);
  return (*(v4 + 8))(v6, v3);
}

uint64_t Date.init(fussyParsedFrom:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v6 = sub_23030EB58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1;
  }

  v11 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v28[0] = 15;
  v28[1] = (v11 | (v10 << 16));
  v27[1] = a1;
  v27[2] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB168D0);
  sub_2301BED54();
  sub_2300A85F0();
  v12 = sub_230310498();
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v28[0] = 0;
  v16 = [v15 initWithTypes:8 error:v28];
  if (!v16)
  {
    v24 = v28[0];
    v25 = sub_23030E808();

    swift_willThrow();

LABEL_12:
    v23 = 1;
    return (*(v7 + 56))(a3, v23, 1, v6);
  }

  v17 = v16;
  v18 = v28[0];
  v19 = sub_23030F8B8();

  v20 = [v17 firstMatchInString:v19 options:0 range:{v12, v14}];

  if (!v20)
  {

    goto LABEL_12;
  }

  v21 = [v20 date];
  if (!v21)
  {

    goto LABEL_12;
  }

  v22 = v21;
  sub_23030EB18();

  (*(v7 + 32))(a3, v9, v6);
  v23 = 0;
  return (*(v7 + 56))(a3, v23, 1, v6);
}

uint64_t Date.testing_localizedString.getter()
{
  v0 = sub_23030ED38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_23030EBF8();
  v5 = sub_23030EC38();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  v6 = sub_23030EAA8();
  v7 = [v4 stringFromDate_];

  v8 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v10 = v9;

  v13[4] = v8;
  v13[5] = v10;
  v13[2] = 11501794;
  v13[3] = 0xA300000000000000;
  v13[0] = 32;
  v13[1] = 0xE100000000000000;
  sub_2300A85F0();
  v11 = sub_230310568();

  return v11;
}

uint64_t sub_2301C78F0@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_230055F74(v4, &v13 - v7, &unk_27DB15AA0);
  v9 = sub_23030EB58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v8, v9);
  }

  a1();
  result = (v11)(v8, 1, v9);
  if (result != 1)
  {
    return sub_230061918(v8, &unk_27DB15AA0);
  }

  return result;
}

uint64_t Array<A>.removeDuplicates()(uint64_t a1, uint64_t a2)
{
  v3 = Array<A>.removingDuplicates()(*v2, *(a1 + 16), a2);

  *v2 = v3;
  return result;
}

uint64_t Array<A>.removingDuplicates()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v32 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v31 = &v26 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v11);
  v36 = &v26 - v14;
  v38 = sub_23030F608();
  v15 = sub_23030FD38();
  if (sub_23030FD78())
  {
    v16 = sub_2301C7E48(v15, a2, a3);
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v37[1] = v16;
  if (!sub_23030FD78())
  {
LABEL_16:

    return v38;
  }

  v17 = 0;
  v34 = a3;
  v35 = (v6 + 16);
  v18 = (v6 + 32);
  v33 = (v6 + 8);
  v29 = v6;
  v30 = v5;
  v27 = v7;
  v28 = (v6 + 32);
  while (1)
  {
    v19 = sub_23030FD58();
    sub_23030FD08();
    if (v19)
    {
      v20 = *(v6 + 16);
      v20(v36, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, a2);
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    result = sub_2303108C8();
    if (v27 != 8)
    {
      break;
    }

    v37[0] = result;
    v20 = *v35;
    (*v35)(v36, v37, a2);
    swift_unknownObjectRelease();
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_10:
    (*v18)(v13, v36, a2);
    if (sub_23030FF98())
    {
      (*v33)(v13, a2);
    }

    else
    {
      v22 = v31;
      v20(v31, v13, a2);
      sub_23030FDE8();
      sub_23030FD98();
      v20(v32, v13, a2);
      v18 = v28;
      sub_23030FFA8();
      v6 = v29;
      sub_23030FF78();
      v23 = *v33;
      v24 = v22;
      v5 = v30;
      (*v33)(v24, a2);
      v23(v13, a2);
    }

    ++v17;
    if (v21 == sub_23030FD78())
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2301C7E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_23030FD78())
  {
    sub_2303107F8();
    v15 = sub_2303107E8();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_23030FD78();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_23030FD58();
    sub_23030FD08();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_2303108C8();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_23030F768();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_23030F818();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2301C8204()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v0 + 24))
  {
    v2 = nullsub_1;
  }

  else
  {
    *(v0 + 24) = 1;
    os_unfair_lock_assert_owner(*(v1 + 16));
    swift_beginAccess();
    v3 = *(v0 + 40);
    *(v0 + 40) = 0;
    v4 = *(v0 + 48);
    *(v0 + 48) = 0;
    sub_2301CFBE8(v3, v4);
    swift_beginAccess();
    v5 = *(v0 + 32);
    *(v0 + 32) = MEMORY[0x277D84F90];
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v5;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;

    v2 = sub_2301CFBFC;
  }

  os_unfair_lock_unlock(*(v1 + 16));
  v2();
}

uint64_t sub_2301C8324(void *a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v1 + 24))
  {
    v4 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    v5 = *(v3 + 16);
    v6 = a1;
    os_unfair_lock_assert_owner(v5);
    swift_beginAccess();
    v7 = *(v1 + 40);
    *(v1 + 40) = a1;
    v8 = *(v1 + 48);
    *(v1 + 48) = 0;
    v9 = v6;
    sub_230073384(v7, v8);
    swift_beginAccess();
    v10 = *(v1 + 32);
    *(v1 + 32) = MEMORY[0x277D84F90];
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v10;
    *(v11 + 32) = a1;
    *(v11 + 40) = 0;

    v4 = sub_2301D01AC;
  }

  os_unfair_lock_unlock(*(v3 + 16));
  v4();
}

uint64_t sub_2301C8468(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v2 + 24))
  {
    v6 = nullsub_1;
  }

  else
  {
    *(v2 + 24) = 1;
    v7 = *(v5 + 16);

    os_unfair_lock_assert_owner(v7);
    swift_beginAccess();
    v8 = *(v2 + 40);
    v9 = *(v2 + 48);
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
    v10 = *(v2 + 56);
    *(v2 + 56) = 0;

    sub_2301CFA8C(v8, v9, v10);
    swift_beginAccess();
    v11 = *(v2 + 32);
    *(v2 + 32) = MEMORY[0x277D84F90];
    v12 = swift_allocObject();
    *(v12 + 16) = v5;
    *(v12 + 24) = v11;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v12 + 48) = 0;

    v6 = sub_2301CFAC0;
  }

  os_unfair_lock_unlock(*(v5 + 16));
  v6();
}

uint64_t sub_2301C85C0(void *a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v1 + 24))
  {
    v4 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    v5 = *(v3 + 16);
    v6 = a1;
    os_unfair_lock_assert_owner(v5);
    swift_beginAccess();
    v7 = *(v1 + 40);
    *(v1 + 40) = a1;
    v8 = *(v1 + 48);
    *(v1 + 48) = 0;
    v9 = v6;
    sub_230073384(v7, v8);
    swift_beginAccess();
    v10 = *(v1 + 32);
    *(v1 + 32) = MEMORY[0x277D84F90];
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v10;
    *(v11 + 32) = a1;
    *(v11 + 40) = 0;

    v4 = sub_2301CFC10;
  }

  os_unfair_lock_unlock(*(v3 + 16));
  v4();
}

uint64_t sub_2301C8704(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v3 + 24))
  {
    v8 = nullsub_1;
  }

  else
  {
    *(v3 + 24) = 1;
    v9 = *(v7 + 16);
    v10 = a1;

    os_unfair_lock_assert_owner(v9);
    swift_beginAccess();
    v11 = *(v3 + 40);
    v12 = *(v3 + 48);
    v13 = *(v3 + 56);
    *(v3 + 40) = a1;
    *(v3 + 48) = a2;
    *(v3 + 56) = a3;
    v14 = *(v3 + 64);
    *(v3 + 64) = 0;
    v15 = v10;

    sub_2301CF8E8(v11, v12, v13, v14);
    swift_beginAccess();
    v16 = *(v3 + 32);
    *(v3 + 32) = MEMORY[0x277D84F90];
    v17 = swift_allocObject();
    *(v17 + 16) = v7;
    *(v17 + 24) = v16;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    *(v17 + 48) = a3;
    *(v17 + 56) = 0;

    v8 = sub_2301CF95C;
  }

  os_unfair_lock_unlock(*(v7 + 16));
  v8();
}

uint64_t sub_2301C8884(void *a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v1 + 24))
  {
    v4 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    v5 = *(v3 + 16);
    v6 = a1;
    os_unfair_lock_assert_owner(v5);
    swift_beginAccess();
    v7 = *(v1 + 40);
    v8 = *(v1 + 48);
    v9 = a1;
    *(v1 + 40) = a1;
    *(v1 + 48) = 1;
    sub_2301CFBE8(v7, v8);
    swift_beginAccess();
    v10 = *(v1 + 32);
    *(v1 + 32) = MEMORY[0x277D84F90];
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v10;
    *(v11 + 32) = a1;
    *(v11 + 40) = 1;

    v4 = sub_2301D01A4;
  }

  os_unfair_lock_unlock(*(v3 + 16));
  v4();
}

uint64_t sub_2301C89CC(void *a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v1 + 24))
  {
    v4 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    v5 = *(v3 + 16);
    v6 = a1;
    os_unfair_lock_assert_owner(v5);
    swift_beginAccess();
    v7 = *(v1 + 40);
    v8 = *(v1 + 48);
    v9 = a1;
    *(v1 + 40) = a1;
    *(v1 + 48) = 1;
    sub_230073384(v7, v8);
    swift_beginAccess();
    v10 = *(v1 + 32);
    *(v1 + 32) = MEMORY[0x277D84F90];
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v10;
    *(v11 + 32) = a1;
    *(v11 + 40) = 1;

    v4 = sub_2301D01AC;
  }

  os_unfair_lock_unlock(*(v3 + 16));
  v4();
}

uint64_t sub_2301C8B14(void *a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v1 + 24))
  {
    v4 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    v5 = *(v3 + 16);
    v6 = a1;
    os_unfair_lock_assert_owner(v5);
    swift_beginAccess();
    v7 = *(v1 + 40);
    v8 = *(v1 + 48);
    v9 = *(v1 + 56);
    v10 = a1;
    *(v1 + 40) = a1;
    *(v1 + 48) = 0;
    *(v1 + 56) = 1;
    sub_2301CFA8C(v7, v8, v9);
    swift_beginAccess();
    v11 = *(v1 + 32);
    *(v1 + 32) = MEMORY[0x277D84F90];
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v11;
    *(v12 + 32) = a1;
    *(v12 + 40) = 0;
    *(v12 + 48) = 1;

    v4 = sub_2301D01A0;
  }

  os_unfair_lock_unlock(*(v3 + 16));
  v4();
}

uint64_t sub_2301C8C68(void *a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v1 + 24))
  {
    v4 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    v5 = *(v3 + 16);
    v6 = a1;
    os_unfair_lock_assert_owner(v5);
    swift_beginAccess();
    v7 = *(v1 + 40);
    v8 = *(v1 + 48);
    v9 = *(v1 + 56);
    v10 = *(v1 + 64);
    v11 = a1;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 40) = a1;
    *(v1 + 64) = 1;
    sub_2301CF8E8(v7, v8, v9, v10);
    swift_beginAccess();
    v12 = *(v1 + 32);
    *(v1 + 32) = MEMORY[0x277D84F90];
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = v12;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 32) = a1;
    *(v13 + 56) = 1;

    v4 = sub_2301D0198;
  }

  os_unfair_lock_unlock(*(v3 + 16));
  v4();
}

uint64_t sub_2301C8DCC()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v0 + 24))
  {
    v2 = nullsub_1;
  }

  else
  {
    *(v0 + 24) = 1;
    os_unfair_lock_assert_owner(*(v1 + 16));
    swift_beginAccess();
    v3 = *(v0 + 40);
    *(v0 + 40) = 0;
    v4 = *(v0 + 48);
    *(v0 + 48) = 2;
    sub_2301CFBE8(v3, v4);
    swift_beginAccess();
    v5 = *(v0 + 32);
    *(v0 + 32) = MEMORY[0x277D84F90];
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v5;
    *(v6 + 32) = 0;
    *(v6 + 40) = 2;

    v2 = sub_2301D01A4;
  }

  os_unfair_lock_unlock(*(v1 + 16));
  v2();
}

uint64_t sub_2301C8EF0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v0 + 24))
  {
    v2 = nullsub_1;
  }

  else
  {
    *(v0 + 24) = 1;
    os_unfair_lock_assert_owner(*(v1 + 16));
    swift_beginAccess();
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    v5 = *(v0 + 56);
    *(v0 + 56) = 2;
    sub_2301CFA8C(v3, v4, v5);
    swift_beginAccess();
    v6 = *(v0 + 32);
    *(v0 + 32) = MEMORY[0x277D84F90];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v6;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 48) = 2;

    v2 = sub_2301D01A0;
  }

  os_unfair_lock_unlock(*(v1 + 16));
  v2();
}

uint64_t sub_2301C9014()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v0 + 24))
  {
    v2 = nullsub_1;
  }

  else
  {
    *(v0 + 24) = 1;
    os_unfair_lock_assert_owner(*(v1 + 16));
    swift_beginAccess();
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 40) = 0;
    v6 = *(v0 + 64);
    *(v0 + 64) = 2;
    sub_2301CF8E8(v3, v4, v5, v6);
    swift_beginAccess();
    v7 = *(v0 + 32);
    *(v0 + 32) = MEMORY[0x277D84F90];
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = v7;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 32) = 0;
    *(v8 + 56) = 2;

    v2 = sub_2301D0198;
  }

  os_unfair_lock_unlock(*(v1 + 16));
  v2();
}

uint64_t sub_2301C9144(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16A28);
  swift_allocObject();

  v9 = sub_2301CAAB0(v8, &unk_27DB16A30, &unk_230316190, sub_23008F094);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  swift_retain_n();

  os_unfair_lock_lock_with_options();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = 0;
  *(v11 + 32) = 1;
  *(v11 + 40) = sub_2301CFBC0;
  *(v11 + 48) = v10;
  *(v11 + 56) = sub_2301CFB50;
  *(v11 + 64) = v9;
  *(v11 + 72) = sub_2301CFB20;
  *(v11 + 80) = v9;
  v12 = a1;

  swift_retain_n();
  v13 = sub_2302CB110(sub_2301CFBD0, v11);

  os_unfair_lock_unlock(*(*(v7 + 16) + 16));
  v13();

  result = swift_beginAccess();
  v15 = *(v9 + 16);
  if (v15)
  {

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2301C9344(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = v2;
  if (*(v2 + 24) && swift_weakLoadStrong())
  {

    a2(a1);
  }

  *(v3 + 24) = 0;
}

uint64_t sub_2301C93E8(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = a1;
  a2(&v3);
  return sub_2301C9500(sub_2301C8204);
}

uint64_t sub_2301C9500(void (*a1)(uint64_t))
{
  if (*(v1 + 24) && swift_weakLoadStrong())
  {

    a1(v3);
  }

  *(v1 + 24) = 0;
}

uint64_t sub_2301C9598(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16A28);
  swift_allocObject();

  v10 = sub_2301CAAB0(v9, &unk_27DB16A30, &unk_230316190, sub_23008F094);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = a3;
  v12[5] = a4;
  swift_retain_n();

  os_unfair_lock_lock_with_options();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = 0;
  *(v13 + 32) = 1;
  *(v13 + 40) = sub_2301CFE68;
  *(v13 + 48) = v12;
  *(v13 + 56) = sub_2301D01C8;
  *(v13 + 64) = v10;
  *(v13 + 72) = sub_2301D01A8;
  *(v13 + 80) = v10;
  v14 = a1;

  swift_retain_n();
  v15 = sub_2302CB110(sub_2301D01CC, v13);

  os_unfair_lock_unlock(*(*(v8 + 16) + 16));
  v15();

  result = swift_beginAccess();
  v17 = *(v10 + 16);
  if (v17)
  {

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2301C97D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v8 = a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    a4(&v8, Strong);
    sub_2301C9500(sub_2301C8204);
  }

  else
  {
    sub_230095B08();
    v6 = swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 1;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    sub_2301C9344(v6, sub_2301C8884);
  }
}

uint64_t sub_2301C998C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16A10);
  swift_allocObject();

  v9 = sub_2301CAAB0(v8, &qword_27DB16A18, &unk_230322A40, sub_23008F168);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  swift_retain_n();

  os_unfair_lock_lock_with_options();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = 0;
  *(v11 + 32) = 1;
  *(v11 + 40) = sub_2301CF9F4;
  *(v11 + 48) = v10;
  *(v11 + 56) = sub_2301CF9C4;
  *(v11 + 64) = v9;
  *(v11 + 72) = sub_2301D019C;
  *(v11 + 80) = v9;
  v12 = a1;

  swift_retain_n();
  v13 = sub_2302CB2C0(sub_2301D01C0, v11);

  os_unfair_lock_unlock(*(*(v7 + 16) + 16));
  v13();

  result = swift_beginAccess();
  v15 = *(v9 + 16);
  if (v15)
  {

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2301C9B8C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB169F0);
  swift_allocObject();

  v9 = sub_2301CAAB0(v8, &unk_27DB16A00, &unk_230322A28, sub_23008F240);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  swift_retain_n();

  os_unfair_lock_lock_with_options();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = 0;
  *(v11 + 32) = 1;
  *(v11 + 40) = sub_2301CF830;
  *(v11 + 48) = v10;
  *(v11 + 56) = sub_2301CF800;
  *(v11 + 64) = v9;
  *(v11 + 72) = sub_2301D0194;
  *(v11 + 80) = v9;
  v12 = a1;

  swift_retain_n();
  v13 = sub_2302CB2C0(sub_2301CF840, v11);

  os_unfair_lock_unlock(*(*(v7 + 16) + 16));
  v13();

  result = swift_beginAccess();
  v15 = *(v9 + 16);
  if (v15)
  {

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2301C9D8C(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v5 = *(a2(&v12) + 16);
  v6 = qword_280C9BA30;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280C9BA38;
  swift_retain_n();
  os_unfair_lock_lock_with_options();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;
  *(v8 + 40) = sub_2301CFA34;
  *(v8 + 48) = a4;
  *(v8 + 56) = sub_2301D01C4;
  *(v8 + 64) = a4;
  *(v8 + 72) = sub_2301CFA04;
  *(v8 + 80) = a4;
  v9 = v7;
  swift_retain_n();
  v10 = sub_2302CB470(sub_2301CFA44, v8);

  os_unfair_lock_unlock(*(*(v5 + 16) + 16));
  v10();
}

uint64_t sub_2301C9FF4(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v5 = *(a2(&v12) + 16);
  v6 = qword_280C9BA30;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280C9BA38;
  swift_retain_n();
  os_unfair_lock_lock_with_options();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;
  *(v8 + 40) = sub_2301CF888;
  *(v8 + 48) = a4;
  *(v8 + 56) = sub_2301D01BC;
  *(v8 + 64) = a4;
  *(v8 + 72) = sub_2301CF858;
  *(v8 + 80) = a4;
  v9 = v7;
  swift_retain_n();
  v10 = sub_2302CB630(sub_2301CF89C, v8);

  os_unfair_lock_unlock(*(*(v5 + 16) + 16));
  v10();
}

uint64_t sub_2301CA25C(uint64_t a1, void (*a2)(uint64_t))
{
  if (*(a1 + 24) && swift_weakLoadStrong())
  {

    a2(v4);
  }

  *(a1 + 24) = 0;
}

uint64_t sub_2301CA2F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*(a2 + 24) && swift_weakLoadStrong())
  {

    a3(a1);
  }

  *(a2 + 24) = 0;
}

uint64_t sub_2301CA398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24) && swift_weakLoadStrong())
  {

    sub_2301C8468(a1, a2);
  }

  *(a3 + 24) = 0;
}

uint64_t sub_2301CA43C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 24) && swift_weakLoadStrong())
  {

    sub_2301C8704(a1, a2, a3);
  }

  *(a4 + 24) = 0;
}

uint64_t sub_2301CA4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v22 = a3;
  v12 = sub_23030F458();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23030F4C8();
  v16 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = v22;
  v19[7] = a4;
  aBlock[4] = sub_2301CFFA0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300F5280;
  aBlock[3] = &block_descriptor_151;
  v20 = _Block_copy(aBlock);

  sub_23030F488();
  v25 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  sub_230310648();
  MEMORY[0x2319120F0](0, v18, v15, v20);
  _Block_release(v20);
  (*(v13 + 8))(v15, v12);
  (*(v16 + 8))(v18, v23);
}

uint64_t sub_2301CA790(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = qword_280C9BA30;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_280C9BA38;
  sub_2301C9144(qword_280C9BA38, sub_2301CFFB0, v10);

  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;

  sub_230065368(v12, sub_2301CFFF4, v13);
}

uint64_t sub_2301CA8D0(void (*a1)(void **__return_ptr))
{
  a1(&v9);
  v1 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169A8);
  v2 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = v1;
  v5 = swift_slowAlloc();
  *(v3 + 16) = v5;
  *v5 = 0;
  *(v3 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169B0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 40) = 0;
  *(v6 + 32) = v7;
  *(v6 + 48) = -1;
  *(v6 + 16) = v3;
  *(v6 + 24) = 1;
  swift_beginAccess();
  *(v6 + 40) = v4;
  *(v6 + 48) = 0;

  *(v2 + 16) = v6;
  return v2;
}

uint64_t sub_2301CAAB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = swift_allocObject();
  swift_unownedRetain();
  v9 = a4(a1, v8, v4);
  swift_unownedRelease();
  swift_unownedRelease();
  swift_beginAccess();
  *(v4 + 16) = v9;

  return v4;
}

void sub_2301CAB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  os_unfair_lock_assert_not_owner(*(a1 + 16));
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + 40;
    do
    {
      v11 = *(v10 - 8);
      v12[0] = a3;
      v12[1] = a4;
      v13 = a5;

      v11(v12);

      v10 += 16;
      --v9;
    }

    while (v9);
  }
}

void sub_2301CAC18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  os_unfair_lock_assert_not_owner(*(a1 + 16));
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + 40;
    do
    {
      v9 = *(v8 - 8);
      v10 = a3;
      v11 = a4;

      v9(&v10);

      v8 += 16;
      --v7;
    }

    while (v7);
  }
}

void sub_2301CACA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  os_unfair_lock_assert_not_owner(*(a1 + 16));
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 40;
    do
    {
      v13 = *(v12 - 8);
      v14[0] = a3;
      v14[1] = a4;
      v14[2] = a5;
      v15 = a6;

      v13(v14);

      v12 += 16;
      --v11;
    }

    while (v11);
  }
}

uint64_t REMContactAndName.init(contact:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id REMContactAndName.contact.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t REMContactAndName.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *REMContactsProvider.__allocating_init(contactStoreCreator:queue:backgroundQueue:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = 0;
  v8[5] = a3;
  v8[6] = a4;
  v8[7] = 0;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2301CB040;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = sub_2301CB04C;
  v11[5] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169A0);
  v12 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = a3;
  v15 = a4;
  v16 = v14;
  v17 = v15;

  v18 = swift_slowAlloc();
  *(v13 + 16) = v18;
  *v18 = 0;

  *(v13 + 24) = 0;
  v19 = MEMORY[0x277D84F98];
  v12[9] = v13;
  v12[10] = v19;
  v12[2] = v16;
  v12[3] = sub_2301CEB70;
  v12[4] = v11;
  v12[5] = 0;
  v12[7] = sub_2301CB04C;
  v12[8] = v10;
  v12[6] = 0;
  v8[7] = v12;

  return v8;
}

uint64_t sub_2301CAF70(void *a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a3)
    {
      v5 = sub_2301CCCD4(a1);
    }

    else
    {
      v5 = sub_2301CCBE0();
    }

    v8 = v5;

    return v8;
  }

  else
  {
    sub_230095B08();
    result = swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 1;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
  }

  return result;
}

uint64_t REMContactsProvider.meCard(keys:)(void *a1)
{
  v3 = sub_23030F508();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 40);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_23030F528();
  result = (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!*(v1 + 56))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_2301CB338(a1, 0, 0, &v23);

  v10 = v23;
  v11 = v24;
  if (!v24)
  {
    return v23;
  }

  if (v24 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169A8);
    v12 = swift_allocObject();
    type metadata accessor for UnfairLock();
    v13 = swift_allocObject();
    v14 = v10;
    v15 = swift_slowAlloc();
    *(v13 + 16) = v15;
    *v15 = 0;
    *(v13 + 24) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169B0);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D84F90];
    *(v16 + 40) = 0;
    *(v16 + 32) = v17;
    *(v16 + 48) = -1;
    *(v16 + 16) = v13;
    *(v16 + 24) = 1;
    swift_beginAccess();
    *(v16 + 40) = v10;
    *(v16 + 48) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169A8);
    v12 = swift_allocObject();
    type metadata accessor for UnfairLock();
    v18 = swift_allocObject();
    v19 = v10;
    v20 = swift_slowAlloc();
    *(v18 + 16) = v20;
    *v20 = 0;
    *(v18 + 24) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169B0);
    v16 = swift_allocObject();
    v21 = MEMORY[0x277D84F90];
    *(v16 + 40) = 0;
    *(v16 + 32) = v21;
    *(v16 + 48) = -1;
    *(v16 + 16) = v18;
    *(v16 + 24) = 1;
    swift_beginAccess();
    *(v16 + 40) = v10;
    *(v16 + 48) = 1;
  }

  sub_2301CEC18(v10, v11);
  *(v12 + 16) = v16;
  return v12;
}

void sub_2301CB338(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v9 = sub_23030F508();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v4[2];
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_23030F528();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v15 = *(v4[9] + 16);
    os_unfair_lock_lock_with_options();
    sub_2301CDF58(v4, a1, a2, a3 & 1, a4);
    os_unfair_lock_unlock(v15);
  }

  else
  {
    __break(1u);
  }
}

void *REMContactsProvider.syncMeCard(keys:)(void *result)
{
  if (*(v1 + 56))
  {
    v2 = result;

    v3 = sub_2301CB504(v2, 0, 0);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2301CB504(void *a1, uint64_t a2, char a3)
{
  v7 = sub_23030F458();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23030F4C8();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3[9] + 16);
  os_unfair_lock_lock_with_options();
  v14 = sub_2301CE4C4(v3, a1, a2, a3 & 1);
  v16 = v15;
  os_unfair_lock_unlock(v13);
  if ((v16 & 0x100) != 0 && v3[5])
  {
    v25 = v3[2];
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = a3 & 1;
    v32 = v18;
    v31 = v16 & 1;
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = a1;
    v24 = v17;
    *(v19 + 32) = a2;
    *(v19 + 40) = v32;
    *(v19 + 48) = v14;
    *(v19 + 56) = v31;
    aBlock[4] = sub_2301CFC38;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2300F5280;
    aBlock[3] = &block_descriptor_8;
    v23 = _Block_copy(aBlock);

    sub_23008E030(a1, a2, v18);
    sub_23008E0E0(v14);
    sub_23030F488();
    v29 = MEMORY[0x277D84F90];
    sub_2300ED808();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
    sub_2300ED860();
    sub_230310648();
    v20 = v23;
    MEMORY[0x2319120F0](0, v12, v9, v23);
    _Block_release(v20);
    (*(v28 + 8))(v9, v7);
    (*(v26 + 8))(v12, v27);
  }

  return v14;
}

uint64_t REMContactsProvider.name(for:)(void *a1)
{
  v37 = a1;
  v2 = sub_23030F508();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = v1;
  v6 = *(v1 + 40);
  *v5 = v6;
  v7 = *MEMORY[0x277D85200];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  v9 = v6;
  v10 = sub_23030F528();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    if (qword_27DB13C18 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = qword_27DB16998;
  *v5 = v9;
  v8(v5, v7, v2);
  v13 = sub_23030F528();
  result = (v11)(v5, v2);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
LABEL_12:
    v31 = qword_280C9BA38;
    sub_2301C9144(qword_280C9BA38, sub_2301CEE6C, v9);

    v32 = swift_allocObject();
    *(v32 + 16) = sub_2301CEE44;
    *(v32 + 24) = v13;

    sub_230065368(v31, sub_2301CEE84, v32);

    v33 = swift_allocObject();
    *(v33 + 16) = v8;
    *(v33 + 24) = v2;
    v34 = v2;

    v35 = sub_2301C998C(v31, sub_2301CEFB4, v33);

    return v35;
  }

  v8 = v38;
  if (*(v38 + 56))
  {
    v15 = v37;
    v2 = v37;

    sub_2301CB338(v15, v12, 1, &v39);

    v16 = v39;
    v17 = v40;
    v18 = MEMORY[0x277D84F90];
    if (v40)
    {
      if (v40 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169A8);
        v19 = swift_allocObject();
        type metadata accessor for UnfairLock();
        v20 = swift_allocObject();
        v21 = v16;
        v22 = swift_slowAlloc();
        *(v20 + 16) = v22;
        *v22 = 0;
        *(v20 + 24) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169B0);
        v23 = swift_allocObject();
        *(v23 + 40) = 0;
        *(v23 + 32) = v18;
        *(v23 + 48) = -1;
        *(v23 + 16) = v20;
        *(v23 + 24) = 1;
        swift_beginAccess();
        *(v23 + 40) = v16;
        *(v23 + 48) = 0;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169A8);
        v19 = swift_allocObject();
        type metadata accessor for UnfairLock();
        v24 = swift_allocObject();
        v25 = v16;
        v26 = swift_slowAlloc();
        *(v24 + 16) = v26;
        *v26 = 0;
        *(v24 + 24) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169B0);
        v23 = swift_allocObject();
        *(v23 + 40) = 0;
        *(v23 + 32) = v18;
        *(v23 + 48) = -1;
        *(v23 + 16) = v24;
        *(v23 + 24) = 1;
        swift_beginAccess();
        *(v23 + 40) = v16;
        *(v23 + 48) = 1;
      }

      sub_2301CEC18(v16, v17);
      *(v19 + 16) = v23;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169B8);
    v13 = swift_allocObject();
    type metadata accessor for UnfairLock();
    v27 = swift_allocObject();
    v28 = swift_slowAlloc();
    *(v27 + 16) = v28;
    *v28 = 0;
    *(v27 + 24) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169C0);
    v29 = swift_allocObject();
    *(v29 + 32) = v18;
    *(v29 + 40) = 0;
    *(v29 + 48) = -1;
    *(v29 + 16) = v27;
    *(v29 + 24) = 0;
    *(v13 + 16) = v29;
    v9 = swift_allocObject();
    v9[2] = sub_2301CEE44;
    v9[3] = v13;
    v30 = qword_280C9BA30;
    swift_retain_n();
    if (v30 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t REMContactsProvider.contact(matching:keys:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_23030F508();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 40);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_23030F528();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (*(v3 + 56))
    {
      v14 = a1;

      sub_2301CB338(a1, a2, 1, a3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2301CBF58(void **a1, int a2, id a3)
{
  v3 = sub_2301CEFD0(a3, *a1);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16A18);
  v6 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *(v7 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16A20);
  v9 = swift_allocObject();
  *(v9 + 32) = MEMORY[0x277D84F90];
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = -1;
  *(v9 + 16) = v7;
  *(v9 + 24) = 1;
  swift_beginAccess();
  *(v9 + 40) = v3;
  *(v9 + 48) = v5;
  *(v9 + 56) = 0;
  *(v6 + 16) = v9;
  return v6;
}

void *REMContactsProvider.syncContact(matching:keys:)(void *result, uint64_t a2)
{
  if (*(v2 + 56))
  {
    v4 = result;
    v5 = result;

    v6 = sub_2301CB504(v4, a2, 1);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void REMContactsProvider.contactAndName(matching:keys:)(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = a3;
  v38 = a1;
  v5 = sub_23030F508();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v3;
  v9 = *(v3 + 40);
  *v8 = v9;
  v10 = *MEMORY[0x277D85200];
  v11 = *(v6 + 104);
  v11(v8, v10, v5);
  v12 = v9;
  v13 = sub_23030F528();
  v16 = *(v6 + 8);
  v15 = v6 + 8;
  v14 = v16;
  v16(v8, v5);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  *v8 = v12;
  v11(v8, v10, v5);
  v17 = sub_23030F528();
  v14(v8, v5);
  if ((v17 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v39;
  if (!*(v39 + 56))
  {
    __break(1u);
    return;
  }

  v18 = v38;
  v5 = v38;

  sub_2301CB338(v18, a2, 1, &v40);

  a2 = v40;
  if (!v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169B8);
    v8 = swift_allocObject();
    type metadata accessor for UnfairLock();
    v23 = swift_allocObject();
    v24 = swift_slowAlloc();
    *(v23 + 16) = v24;
    *v24 = 0;
    *(v23 + 24) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169C0);
    v25 = swift_allocObject();
    *(v25 + 32) = MEMORY[0x277D84F90];
    *(v25 + 40) = 0;
    *(v25 + 48) = -1;
    *(v25 + 16) = v23;
    *(v25 + 24) = 0;
    v8[2] = v25;
    v12 = swift_allocObject();
    v12[2] = sub_2301D01E0;
    v12[3] = v8;
    v26 = qword_280C9BA30;
    swift_retain_n();
    if (v26 == -1)
    {
LABEL_8:
      v27 = qword_280C9BA38;
      sub_2301C9144(qword_280C9BA38, sub_2301D017C, v12);

      v28 = swift_allocObject();
      *(v28 + 16) = sub_2301D01E0;
      *(v28 + 24) = v8;

      sub_230065368(v27, sub_2301D0174, v28);

      v29 = swift_allocObject();
      *(v29 + 16) = v15;
      *(v29 + 24) = v5;
      v30 = v5;

      v31 = sub_2301C9B8C(v27, sub_2301CF238, v29);
      sub_2301CEC18(a2, 0);

      v32 = v37;
      v37[1] = 0;
      v32[2] = 0;
      *v32 = v31;
      *(v32 + 24) = 0;
      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_8;
  }

  if (v41 == 1)
  {
    sub_2301CF1B8(v40, 1);
    v19 = sub_2301CEFD0(v5, a2);
    v21 = v20;
    sub_2301CEC18(a2, 1);
    v22 = v37;
    *v37 = a2;
    v22[1] = v19;
    v22[2] = v21;
    *(v22 + 24) = 1;
  }

  else
  {
    sub_2301CEC18(v40, 2);
    v33 = sub_2301CEFD0(v5, 0);
    v34 = v37;
    *v37 = 0;
    v34[1] = v33;
    v34[2] = v35;
    *(v34 + 24) = 1;
  }
}

uint64_t sub_2301CC580(void **a1, int a2, id a3)
{
  v3 = *a1;
  v4 = sub_2301CEFD0(a3, *a1);
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A00);
  v7 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = v3;
  v10 = swift_slowAlloc();
  *(v8 + 16) = v10;
  *v10 = 0;
  *(v8 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146E0);
  v11 = swift_allocObject();
  *(v11 + 32) = MEMORY[0x277D84F90];
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = -1;
  *(v11 + 16) = v8;
  *(v11 + 24) = 1;
  swift_beginAccess();
  v12 = *(v11 + 40);
  v13 = *(v11 + 48);
  v14 = *(v11 + 56);
  *(v11 + 40) = v3;
  *(v11 + 48) = v4;
  *(v11 + 56) = v6;
  v15 = *(v11 + 64);
  *(v11 + 64) = 0;
  sub_2301CF8E8(v12, v13, v14, v15);
  *(v7 + 16) = v11;
  return v7;
}

id sub_2301CC6BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14880);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2303172A0;
  v1 = *MEMORY[0x277CBD0C8];
  *(v0 + 32) = *MEMORY[0x277CBD0C8];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 descriptorForRequiredKeysForStyle_];
  v5 = *MEMORY[0x277CBD160];
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  qword_280C9AD80 = v0;

  return v5;
}

uint64_t sub_2301CC79C()
{
  result = sub_2301CC7BC();
  qword_27DB16998 = result;
  return result;
}

uint64_t sub_2301CC7BC()
{
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v2 = MEMORY[0x277D84F90];
  sub_2303109B8();

  sub_23030F8B8();

  sub_230310988();
  sub_2303109C8();
  sub_2303109D8();
  sub_230310998();

  swift_arrayDestroy();
  sub_23030F8B8();

  sub_230310988();
  sub_2303109C8();
  sub_2303109D8();
  sub_230310998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23031C0D0;
  *(inited + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  sub_23009D064(inited);
  return v2;
}

id sub_2301CC988()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = v0;
    v4 = (*(v0 + 16))();
    v5 = *(v0 + 32);
    *(v3 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_2301CC9E8(uint64_t a1, uint64_t a2, char a3)
{
  sub_230311358();
  if (a3)
  {
    MEMORY[0x2319130E0](1);
    sub_230310458();
  }

  else
  {
    MEMORY[0x2319130E0](0);
  }

  sub_23008E0EC();
  sub_23030F778();
  return sub_2303113A8();
}

uint64_t sub_2301CCA90()
{
  if (*(v0 + 16))
  {
    MEMORY[0x2319130E0](1);
    sub_230310458();
  }

  else
  {
    MEMORY[0x2319130E0](0);
  }

  sub_23008E0EC();
  return sub_23030F778();
}

uint64_t sub_2301CCB1C()
{
  v1 = *(v0 + 16);
  sub_230311358();
  if (v1)
  {
    MEMORY[0x2319130E0](1);
    sub_230310458();
  }

  else
  {
    MEMORY[0x2319130E0](0);
  }

  sub_23008E0EC();
  sub_23030F778();
  return sub_2303113A8();
}

uint64_t sub_2301CCBB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_23008E030(v2, v3, v4);
}

id sub_2301CCBE0()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2301CC988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB169E0);
  v1 = sub_23030FCC8();
  v6[0] = 0;
  v2 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_23030E808();

    swift_willThrow();
  }

  return v2;
}

id sub_2301CCCD4(void *a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 emails];
  v5 = sub_23030FCD8();

  v6 = v5[2];
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 5;
    do
    {
      if (v7 >= v5[2])
      {
        __break(1u);
        goto LABEL_32;
      }

      v9 = objc_opt_self();

      v10 = sub_23030F8B8();

      v3 = [v9 predicateForContactsMatchingEmailAddress_];

      v11 = sub_2301CC988();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB169E0);
      v12 = sub_23030FCC8();
      v29[0] = 0;
      v13 = [v11 unifiedContactsMatchingPredicate:v3 keysToFetch:v12 error:v29];

      v14 = v29[0];
      if (!v13)
      {
        v1 = v29[0];

        sub_23030E808();

        swift_willThrow();
        return v1;
      }

      sub_23004CBA4(0, &qword_27DB16A60);
      v2 = sub_23030FCD8();
      v15 = v14;

      if (v2 >> 62)
      {
        if (sub_2303106D8())
        {
LABEL_10:

          if ((v2 & 0xC000000000000001) != 0)
          {
            goto LABEL_33;
          }

          if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v16 = *(v2 + 32);

            return v16;
          }

          __break(1u);
LABEL_35:
          v1 = MEMORY[0x231912650](0, v13);
LABEL_25:

          return v1;
        }
      }

      else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      ++v7;

      v8 += 2;
    }

    while (v6 != v7);
  }

  v18 = [a1 phones];
  v19 = sub_23030FCD8();

  v28 = *(v19 + 16);
  if (v28)
  {
    v3 = 0;
    v2 = v19 + 40;
    while (v3 < *(v19 + 16))
    {
      v20 = objc_allocWithZone(MEMORY[0x277CBDB70]);

      v21 = sub_23030F8B8();

      v5 = [v20 initWithStringValue_];

      v14 = [objc_opt_self() predicateForContactsMatchingPhoneNumber_];
      v22 = sub_2301CC988();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB169E0);
      v23 = sub_23030FCC8();
      v29[0] = 0;
      v24 = [v22 unifiedContactsMatchingPredicate:v14 keysToFetch:v23 error:v29];

      v25 = v29[0];
      if (!v24)
      {
        v1 = v29[0];

        sub_23030E808();

        swift_willThrow();
        return v1;
      }

      sub_23004CBA4(0, &qword_27DB16A60);
      v13 = sub_23030FCD8();
      v26 = v25;

      if (v13 >> 62)
      {
        if (sub_2303106D8())
        {
LABEL_22:

          if ((v13 & 0xC000000000000001) != 0)
          {
            goto LABEL_35;
          }

          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v1 = *(v13 + 32);
          goto LABEL_25;
        }
      }

      else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      ++v3;

      v2 += 16;
      if (v28 == v3)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    v1 = MEMORY[0x231912650](0, v2);
  }

  else
  {
LABEL_26:

    sub_2301CFFFC();
    swift_allocError();
    swift_willThrow();
  }

  return v1;
}

id *REMContactsProvider.deinit()
{

  return v0;
}

uint64_t REMContactsProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_2301CD2EC(void *result, uint64_t a2)
{
  if (*(*v2 + 56))
  {
    v4 = result;
    v5 = result;

    v6 = sub_2301CB504(v4, a2, 1);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

ReminderKitInternal::REMMeCardAddressType __swiftcall REMMeCardAddressType.init(label:)(Swift::String_optional label)
{
  v2 = v1;
  if (!label.value._object)
  {
    goto LABEL_30;
  }

  object = label.value._object;
  countAndFlagsBits = label.value._countAndFlagsBits;
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() != label.value._countAndFlagsBits || v5 != object)
  {
    v7 = sub_230311048();

    if (v7)
    {
      goto LABEL_9;
    }

    if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == countAndFlagsBits && v9 == object)
    {

LABEL_17:

      v8 = 1;
      goto LABEL_31;
    }

    v11 = sub_230311048();

    if (v11)
    {
      goto LABEL_17;
    }

    if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == countAndFlagsBits && v12 == object)
    {

LABEL_25:

      v8 = 2;
      goto LABEL_31;
    }

    v14 = sub_230311048();

    if (v14)
    {
      goto LABEL_25;
    }

    if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() != countAndFlagsBits || v15 != object)
    {
      sub_230311048();
    }

LABEL_30:
    v8 = 3;
    goto LABEL_31;
  }

LABEL_9:

  v8 = 0;
LABEL_31:
  *v2 = v8;
  return label.value._countAndFlagsBits;
}

uint64_t REMMeCardAddressType.cnLabel.getter()
{
  if (*v0 > 2u)
  {
    return 0;
  }

  else
  {
    return _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  }
}

uint64_t REMMeCardAddressType.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t CNContact.addressByType.getter()
{
  v1 = [v0 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169C8);
  v2 = sub_23030FCD8();

  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_56:
    v6 = MEMORY[0x277D84F98];
LABEL_57:

    return v6;
  }

LABEL_55:
  v4 = sub_2303106D8();
  if (!v4)
  {
    goto LABEL_56;
  }

LABEL_3:
  v5 = 0;
  v44 = v2 & 0xC000000000000001;
  v41 = *MEMORY[0x277CBD8E8];
  v6 = MEMORY[0x277D84F98];
  v42 = v3;
  v43 = v2;
  while (2)
  {
    v7 = v5;
    while (1)
    {
      if (v44)
      {
        v8 = MEMORY[0x231912650](v7, v2);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_53;
        }

        v8 = *(v2 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v10 = [v8 label];
      if (!v10)
      {
        v18 = 3;
        if (!v6[2])
        {
          break;
        }

        goto LABEL_22;
      }

      v11 = v10;
      v12 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v14 = v13;

      if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == v12 && v15 == v14)
      {
        v18 = 0;
      }

      else
      {
        v17 = sub_230311048();

        if (v17)
        {
          v18 = 0;
LABEL_16:
          v3 = v42;
          goto LABEL_21;
        }

        if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == v12 && v20 == v14)
        {
          v18 = 1;
          v3 = v42;
        }

        else
        {
          v21 = sub_230311048();

          if (v21)
          {
            v18 = 1;
            goto LABEL_16;
          }

          if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == v12 && v22 == v14)
          {
            v18 = 2;
            v3 = v42;
          }

          else
          {
            v23 = sub_230311048();

            if (v23)
            {
              v18 = 2;
              goto LABEL_16;
            }

            if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() != v12 || v24 != v14)
            {
              sub_230311048();
            }

            v18 = 3;
            v3 = v42;
          }
        }
      }

LABEL_21:

      v2 = v43;
      if (!v6[2])
      {
        break;
      }

LABEL_22:
      sub_230081EF4(v18);
      if ((v19 & 1) == 0)
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_57;
      }
    }

    v25 = [v9 value];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = sub_230081EF4(v18);
    v29 = v6[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_54;
    }

    v33 = v28;
    if (v6[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = v27;
        sub_23008B678();
        v27 = v37;
        if (v33)
        {
          goto LABEL_46;
        }

        goto LABEL_48;
      }

LABEL_45:
      if (v33)
      {
LABEL_46:
        v35 = v6[7];
        v36 = *(v35 + 8 * v27);
        *(v35 + 8 * v27) = v25;

LABEL_50:
        v3 = v42;
        if (v5 != v4)
        {
          continue;
        }

        goto LABEL_57;
      }

LABEL_48:
      v6[(v27 >> 6) + 8] |= 1 << v27;
      *(v6[6] + v27) = v18;
      *(v6[7] + 8 * v27) = v25;

      v38 = v6[2];
      v31 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v31)
      {
        __break(1u);
        goto LABEL_59;
      }

      v6[2] = v39;
      goto LABEL_50;
    }

    break;
  }

  sub_23008761C(v32, isUniquelyReferenced_nonNull_native);
  v27 = sub_230081EF4(v18);
  if ((v33 & 1) == (v34 & 1))
  {
    goto LABEL_45;
  }

LABEL_59:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t sub_2301CDAC0()
{
  sub_230311358();
  sub_23030F778();
  return sub_2303113A8();
}

void sub_2301CDB24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB169E0);
  v0 = sub_23030FCC8();
  sub_230310458();
}

uint64_t sub_2301CDB98()
{
  sub_230311358();
  sub_23030F778();
  return sub_2303113A8();
}

uint64_t sub_2301CDBF8()
{
  sub_23004CBA4(0, &qword_280C9B980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB169E0);
  v0 = sub_23030FCC8();
  v1 = sub_23030FCC8();
  v2 = sub_230310448();

  return v2 & 1;
}

uint64_t sub_2301CDC98(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_23030F508();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = a4;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v18 = a4;
  LOBYTE(a4) = sub_23030F528();
  result = (*(v15 + 8))(v17, v14);
  if (a4)
  {
    v20 = a3 & 1;
    v28 = a3 & 1;
    v21 = swift_allocObject();
    *(v21 + 16) = a6;
    *(v21 + 24) = a7;
    *(v21 + 32) = a1;
    *(v21 + 40) = a2;
    *(v21 + 48) = v28;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_2301CFF78;
    *(v22 + 24) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169A8);
    v23 = swift_allocObject();
    type metadata accessor for UnfairLock();
    v24 = swift_allocObject();

    sub_23008E030(a1, a2, v20);

    v25 = swift_slowAlloc();
    *(v24 + 16) = v25;
    *v25 = 0;
    *(v24 + 24) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169B0);
    v26 = swift_allocObject();
    *(v26 + 32) = MEMORY[0x277D84F90];
    *(v26 + 40) = 0;
    *(v26 + 48) = -1;
    *(v26 + 16) = v24;
    *(v26 + 24) = 0;
    *(v23 + 16) = v26;
    swift_retain_n();
    sub_2301CA4F0(sub_2301D01E4, v23, sub_2301D01E8, v23, a5, sub_2301CFF98, v22);

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2301CDF58@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v37 = a5;
  v9 = sub_23030F508();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v13 = a1[10];
  if (*(v13 + 16))
  {
    v14 = sub_230081E34(a2, a3, a4 & 1);
    if (v15)
    {
      v16 = *(v13 + 56) + 40 * v14;
      v17 = *(v16 + 32);
      v18 = *(v16 + 16);
      v41 = *v16;
      v42 = v18;
      v43 = v17;
      swift_endAccess();
      sub_2301CFD34(&v41, &v38);
      sub_2301CE3F0(&v38);
      result = sub_2301CFDA4(&v41);
      v20 = v38;
      v21 = v39;
LABEL_6:
      v35 = v37;
      *v37 = v20;
      *(v35 + 8) = v21;
      return result;
    }
  }

  swift_endAccess();
  v22 = a1[2];
  *v12 = v22;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v23 = v22;
  LOBYTE(v22) = sub_23030F528();
  result = (*(v10 + 8))(v12, v9);
  if (v22)
  {
    type metadata accessor for PromiseDisposableToken();
    v24 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169A8);
    v20 = swift_allocObject();
    type metadata accessor for UnfairLock();
    v25 = swift_allocObject();
    v26 = swift_slowAlloc();
    *(v25 + 16) = v26;
    *v26 = 0;
    *(v25 + 24) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169B0);
    v27 = swift_allocObject();
    *(v27 + 32) = MEMORY[0x277D84F90];
    *(v27 + 40) = 0;
    *(v27 + 48) = -1;
    *(v27 + 16) = v25;
    *(v27 + 24) = 0;
    *(v20 + 16) = v27;
    *&v41 = a2;
    *(&v41 + 1) = a3;
    v28 = a4 & 1;
    LOBYTE(v42) = v28;
    v29 = v23;
    v30 = a1[3];
    swift_retain_n();
    v30(&v41);
    v31 = swift_allocObject();
    swift_weakInit();
    LOBYTE(v38) = v28;
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = a2;
    *(v32 + 32) = a3;
    *(v32 + 40) = v38;
    *(v32 + 48) = sub_2301CFC68;
    *(v32 + 56) = v20;
    sub_23008E030(a2, a3, v28);
    sub_23008E030(a2, a3, v28);

    sub_2301C9598(v29, v24, sub_2301CFCB4, v32);

    v33 = swift_allocObject();
    swift_weakInit();
    LOBYTE(v38) = v28;
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = a2;
    *(v34 + 32) = a3;
    *(v34 + 40) = v38;
    *(v34 + 48) = sub_2301CFC90;
    *(v34 + 56) = v20;

    sub_2302D229C(v29, v24, sub_2301CFD24, v34);

    v40 = 0;
    swift_beginAccess();
    *&v41 = 0;
    BYTE8(v41) = -1;
    *&v42 = v20;
    *(&v42 + 1) = v24;
    v43 = v40;

    sub_23008E030(a2, a3, v28);

    sub_2301FE9A0(&v41, a2, a3, v28);
    swift_endAccess();

    v21 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_2301CE3F0@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 32))
  {
    if (v3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    *a1 = v4;
    *(a1 + 8) = v5;

    return sub_23008E0E0(v4);
  }

  else
  {
    v7 = *(v1 + 16);

    sub_23008E0C8(v4, v3);

    if (v3 == 0xFF)
    {
      *a1 = v7;
      *(a1 + 8) = 0;
    }

    else
    {

      if (v3)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      *a1 = v4;
      *(a1 + 8) = v8;
    }
  }

  return result;
}

void *sub_2301CE4C4(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  v8 = *(a1 + 80);
  v9 = a4 & 1;
  if (*(v8 + 16) && (v10 = sub_230081E34(a2, a3, a4 & 1), (v11 & 1) != 0))
  {
    v12 = *(v8 + 56) + 40 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    swift_endAccess();
    if (v17)
    {
      sub_23008E06C(v13, v14, v16, v15, 1);
    }

    else
    {
      sub_23008E06C(v13, v14, v16, v15, 0);

      v25 = a2;
      v26 = a3;
      v20 = a4 & 1;
      v27 = a4 & 1;
      (*(a1 + 56))(&v28, &v25);
      v21 = v28;
      v30 = v28;
      v31 = v29;
      v32 = 0;
      v33 = 0;
      v34 = 1;
      swift_beginAccess();
      sub_23008E030(a2, a3, v20);
      sub_23008E0E0(v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(a1 + 80);
      sub_2300A2308(&v30, a2, a3, v9, isUniquelyReferenced_nonNull_native);
      sub_23008E140(a2, a3, v20);
      *(a1 + 80) = v24;
      swift_endAccess();
      sub_2301CFC50(v13, v14);
      return v21;
    }
  }

  else
  {
    swift_endAccess();
    v25 = a2;
    v26 = a3;
    v27 = a4 & 1;
    (*(a1 + 56))(&v28, &v25);
    v13 = v28;
    v30 = v28;
    v31 = v29;
    v32 = 0;
    v33 = 0;
    v34 = 1;
    swift_beginAccess();
    sub_23008E030(a2, a3, a4 & 1);
    sub_23008E0E0(v13);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(a1 + 80);
    sub_2300A2308(&v30, a2, a3, a4 & 1, v18);
    sub_23008E140(a2, a3, a4 & 1);
    *(a1 + 80) = v23;
    swift_endAccess();
  }

  return v13;
}

uint64_t sub_2301CE74C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v10[0] = a2;
  v10[1] = a3;
  v11 = a4 & 1;
  v8 = a5;
  v9 = a6 & 1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 40);
    sub_230048758(v7);

    if (v7)
    {
      v7(v10, &v8);
      return sub_2300528E4(v7);
    }
  }

  return result;
}

void sub_2301CE7F0(void *a1, uint64_t a2, char a3, void *a4, char a5)
{
  v11 = sub_23030F508();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25[0] = a1;
  v25[1] = a2;
  v15 = a3 & 1;
  v26 = v15;
  v23 = a4;
  v16 = a5 & 1;
  v24 = v16;
  v17 = v5[2];
  *v14 = v17;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v18 = v17;
  LOBYTE(v17) = sub_23030F528();
  (*(v12 + 8))(v14, v11);
  if (v17)
  {
    v19 = *(v5[9] + 16);
    os_unfair_lock_lock_with_options();
    v20 = sub_2301CE994(v5, a1, a2, v15, a4, v16);
    os_unfair_lock_unlock(v19);
    if (v20)
    {
      v21 = v5[5];
      if (v21)
      {
        v21(v25, &v23);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2301CE994(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5, char a6)
{
  swift_beginAccess();
  v12 = *(a1 + 80);
  if (!*(v12 + 16))
  {
    swift_endAccess();
    v13 = a4 & 1;
LABEL_8:
    v26[0] = a5;
    v26[1] = a6 & 1;
    v26[2] = 0;
    v26[3] = 0;
    v20 = 1;
    v27 = 1;
    swift_beginAccess();
    sub_23008E030(a2, a3, a4 & 1);
    sub_23008E0E0(a5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(a1 + 80);
    sub_2300A2308(v26, a2, a3, v13, isUniquelyReferenced_nonNull_native);
    sub_23008E140(a2, a3, a4 & 1);
    *(a1 + 80) = v25;
    swift_endAccess();
    return v20;
  }

  v13 = a4 & 1;
  v14 = sub_230081E34(a2, a3, a4 & 1);
  if ((v15 & 1) == 0)
  {
    swift_endAccess();
    goto LABEL_8;
  }

  v16 = *(v12 + 56) + 40 * v14;
  v23 = *(v16 + 8);
  v24 = *v16;
  v17 = *(v16 + 16);
  v18 = *(v16 + 24);
  v19 = *(v16 + 32);
  swift_endAccess();
  if ((v19 & 1) == 0)
  {
    sub_23008E06C(v24, v23, v17, v18, 0);

    sub_2301CFC50(v24, v23);
    goto LABEL_8;
  }

  sub_23008E06C(v24, v23, v17, v18, 1);
  sub_2301CFE0C(v24, v23, v17, v18, 1);
  return 0;
}

uint64_t sub_2301CEB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t objectdestroy_5Tm_0()
{

  return swift_deallocObject();
}

void sub_2301CEC18(void *a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

void *sub_2301CEC40@<X0>(void *(*a1)(uint64_t *__return_ptr, __int128 *)@<X0>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v4 = *(a2 + 16);
  v8 = *a2;
  v9 = v4;
  result = a1(&v6, &v8);
  if (v7)
  {
    return swift_willThrow();
  }

  *a3 = v6;
  return result;
}

uint64_t sub_2301CECC0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = *a1;
  v7 = *a4;
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = v6;
    sub_2301CE7F0(v7, v8, v9, v6, 0);
  }

  return a5(&v12);
}

uint64_t sub_2301CED88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = a1;
    sub_2301CE7F0(v7, v8, v9, a1, 1);
  }

  return a5(a1);
}

uint64_t sub_2301CEE84()
{
  v1 = *(v0 + 16);
  v3 = 0;
  return v1(&v3);
}

uint64_t sub_2301CEEBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      sub_23004CBA4(0, &qword_280C9B980);
      if (sub_230310448())
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  sub_23004CBA4(0, &qword_280C9B980);
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB169E0);
  v7 = sub_23030FCC8();
  v8 = sub_23030FCC8();
  v9 = sub_230310448();

  return v9 & 1;
}

uint64_t sub_2301CEFD0(id a1, void *a2)
{
  if (a2)
  {
    v4 = objc_opt_self();
    v5 = a2;
    v6 = [v4 stringFromContact:v5 style:0];
    if (v6)
    {
      v7 = v6;
      v8 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

LABEL_11:
      return v8;
    }
  }

  v9 = [a1 phones];
  v10 = sub_23030FCD8();

  if (*(v10 + 16))
  {
    v8 = *(v10 + 32);

    v11 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v12 = sub_23030F8B8();
    v5 = [v11 initWithStringValue_];

    v13 = [v5 formattedStringValue];
    if (!v13)
    {
      goto LABEL_11;
    }

    v14 = v13;
    v8 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  }

  else
  {

    v15 = [a1 emails];
    v16 = sub_23030FCD8();

    if (!*(v16 + 16))
    {

      v5 = _REMGetLocalizedString();
      v8 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      goto LABEL_11;
    }

    v8 = *(v16 + 32);
  }

  return v8;
}

id sub_2301CF1B8(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void sub_2301CF1E0(id *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v3 = v4;
  v2(&v4);
}

unint64_t sub_2301CF258()
{
  result = qword_27DB169D0;
  if (!qword_27DB169D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB169D0);
  }

  return result;
}

uint64_t assignWithCopy for REMContactAndName(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for REMContactAndName(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMMatrix(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for REMMatrix(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_2301CF474(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
  }

  else
  {
  }
}

void sub_2301CF4D4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t initializeWithCopy for REMContactAndNameFetchResult(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_2301CF474(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for REMContactAndNameFetchResult(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_2301CF474(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_2301CF4D4(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for REMContactAndNameFetchResult(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_2301CF4D4(v5, v7, v6, v8);
  return a1;
}

uint64_t sub_2301CF6A0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_23008E030(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for REMContactsProvider.OperationParams(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_23008E030(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_23008E140(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for REMContactsProvider.OperationParams(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_23008E140(v4, v5, v6);
  return a1;
}

unint64_t sub_2301CF7AC()
{
  result = qword_280C9AD88;
  if (!qword_280C9AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9AD88);
  }

  return result;
}

void sub_2301CF8E8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_2301CF8FC(a1, a2, a3, a4);
  }
}

void sub_2301CF8FC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else
  {
    if (a4)
    {
      return;
    }

    v5 = a1;

    a1 = v5;
  }
}

uint64_t objectdestroy_56Tm()
{

  sub_2301CF8FC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

void sub_2301CFA8C(void *a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_2301CFAA0(a1, a2, a3);
  }
}

void sub_2301CFAA0(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t objectdestroy_77Tm()
{

  sub_2301CFAA0(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_47Tm()
{

  return swift_deallocObject();
}

void sub_2301CFBE8(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_230065354(a1, a2);
  }
}

void sub_2301CFC50(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_230077E1C(a1);
  }
}

uint64_t objectdestroy_115Tm()
{

  sub_23008E140(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_2301CFD34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2301CFDA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2301CFE0C(void *a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    sub_230077E1C(a1);
  }

  else
  {
    sub_2301CFC50(a1, a2);
  }
}

uint64_t objectdestroy_50Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_94Tm(void (*a1)(void, void))
{

  a1(*(v1 + 32), *(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_2301CFFB0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

unint64_t sub_2301CFFFC()
{
  result = qword_27DB16A68;
  if (!qword_27DB16A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16A68);
  }

  return result;
}

unint64_t sub_2301D0070()
{
  result = qword_27DB16A70;
  if (!qword_27DB16A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16A70);
  }

  return result;
}

unint64_t sub_2301D00C8()
{
  result = qword_27DB16A78;
  if (!qword_27DB16A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16A78);
  }

  return result;
}

unint64_t sub_2301D0120()
{
  result = qword_280C98410;
  if (!qword_280C98410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98410);
  }

  return result;
}

uint64_t sub_2301D01EC()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_280C97148);
  v1 = __swift_project_value_buffer(v0, qword_280C97148);
  if (qword_280C97088 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1700);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t REMWidgetRefresh.WidgetKind.widgetKindIdentifier.getter()
{
  if (*v0)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t REMWidgetRefresh.WidgetKind.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

void *REMWidgetRefresh.__allocating_init(interval:queue:)(void *a1)
{
  swift_allocObject();
  v2 = sub_2301D0518(a1);

  return v2;
}

void *REMWidgetRefresh.init(interval:queue:)(void *a1)
{
  v2 = sub_2301D0518(a1);

  return v2;
}

uint64_t sub_2301D0424()
{
  v2 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v3 = v0;

  MEMORY[0x231911790](0xD000000000000010, 0x8000000230343660);

  qword_280C983D0 = v2;
  *algn_280C983D8 = v3;
  return result;
}

uint64_t REMWidgetRefresh.deinit()
{

  return v0;
}

uint64_t REMWidgetRefresh.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_2301D0518(void *a1)
{
  v2 = v1;
  v25 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v22 = sub_230310338();
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16AA8);
  v11 = *(v10 - 8);
  v23 = v10;
  v24 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16A80);
  swift_allocObject();
  v14 = sub_23030F0F8();
  v1[2] = v14;
  v1[4] = a1;
  v27 = v14;

  v15 = a1;
  sub_230310328();
  v26 = v15;
  v16 = sub_230310318();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_230047540();
  sub_23005F108(&qword_280C99D50, &qword_27DB16A80);
  sub_2301D0C60();
  sub_23030F278();
  sub_2301D0CB8(v6);
  (*(v7 + 8))(v9, v22);

  v17 = swift_allocObject();
  *(v17 + 16) = v25;
  v18 = swift_allocObject();
  *(v18 + 16) = j___s19ReminderKitInternal16REMWidgetRefreshC18refreshImmediatelyyyFZ_0;
  *(v18 + 24) = v17;
  sub_23005F108(qword_280C99D58, &qword_27DB16AA8);
  v19 = v23;
  v20 = sub_23030F288();

  (*(v24 + 8))(v13, v19);
  v2[3] = v20;
  return v2;
}

void _s19ReminderKitInternal16REMWidgetRefreshC18refreshImmediatelyyyFZ_0()
{
  if (qword_280C97140 != -1)
  {
    swift_once();
  }

  v0 = sub_23030EF48();
  __swift_project_value_buffer(v0, qword_280C97148);
  v1 = sub_23030EF38();
  v2 = sub_2303102A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_230044000, v1, v2, "REMWidgetRefresh: Requesting Widget Refresh", v3, 2u);
    MEMORY[0x231914180](v3, -1, -1);
  }

  if (qword_280C983C8 != -1)
  {
    swift_once();
  }

  v4 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v5 = sub_23030F8B8();
  v6 = sub_23030F8B8();
  v7 = [v4 initWithExtensionBundleIdentifier:v5 kind:v6];

  v8 = sub_23030F8B8();
  v9 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v10 = sub_23030F8B8();
  v11 = sub_23030F8B8();
  v13 = [v9 initWithExtensionBundleIdentifier:v10 kind:v11];

  v12 = sub_23030F8B8();
}

unint64_t sub_2301D0B68()
{
  result = qword_27DB16A88;
  if (!qword_27DB16A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16A88);
  }

  return result;
}

unint64_t sub_2301D0C60()
{
  result = qword_280C9B400;
  if (!qword_280C9B400)
  {
    sub_230047540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B400);
  }

  return result;
}

uint64_t sub_2301D0CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

ReminderKitInternal::REMFeatureFlags::DevelopmentPhase_optional __swiftcall REMFeatureFlags.DevelopmentPhase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t REMFeatureFlags.DevelopmentPhase.rawValue.getter()
{
  v1 = 0x706D6F4365646F43;
  v2 = 0x5277656976657250;
  if (*v0 != 2)
  {
    v2 = 0x4365727574616546;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2301D0E28()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301D0F0C()
{
  sub_23030F9C8();
}

uint64_t sub_2301D0FDC()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_2301D10C8(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000006574656CLL;
  v3 = 0x706D6F4365646F43;
  v4 = 0xEC00000079646165;
  v5 = 0x5277656976657250;
  if (*v1 != 2)
  {
    v5 = 0x4365727574616546;
    v4 = 0xEF6574656C706D6FLL;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000023033EFD0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t REMFeatureFlags.TargetRelease.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2301D11D8()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_2301D1244()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_2301D1294@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t static REMFeatureFlags.withOverrides(enabled:disabled:block:)(unint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (qword_280C9C350 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = *(a1 + 16);
    v38 = off_280C9C358;
    if (!v4)
    {
      break;
    }

    v5 = (a1 + 32);

    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = off_280C9C358;
      v42 = off_280C9C358;
      off_280C9C358 = 0x8000000000000000;
      a1 = sub_230081CD0(v8);
      v12 = v10[2];
      v13 = (v11 & 1) == 0;
      v14 = v12 + v13;
      if (__OFADD__(v12, v13))
      {
        break;
      }

      v15 = v11;
      if (v10[3] >= v14)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v18 = v42;
          if (v11)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_23008B7D4();
          v18 = v42;
          if (v15)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_2300878A8(v14, isUniquelyReferenced_nonNull_native);
        v16 = sub_230081CD0(v7);
        if ((v15 & 1) != (v17 & 1))
        {
LABEL_40:
          result = sub_2303112A8();
          __break(1u);
          return result;
        }

        a1 = v16;
        v18 = v42;
        if (v15)
        {
LABEL_4:
          *(v18[7] + a1) = 1;
          goto LABEL_5;
        }
      }

      v18[(a1 >> 6) + 8] |= 1 << a1;
      *(v18[6] + a1) = v7;
      *(v18[7] + a1) = 1;
      v19 = v18[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_37;
      }

      v18[2] = v21;
LABEL_5:
      off_280C9C358 = v18;
      v6 = swift_endAccess();
      if (!--v4)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_18:
  v22 = *(a2 + 16);
  if (v22)
  {
    v23 = (a2 + 32);
    while (1)
    {
      v25 = *v23++;
      v24 = v25;
      swift_beginAccess();
      a1 = swift_isUniquelyReferenced_nonNull_native();
      v26 = off_280C9C358;
      v43 = off_280C9C358;
      off_280C9C358 = 0x8000000000000000;
      v27 = sub_230081CD0(v25);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v20 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v20)
      {
        goto LABEL_36;
      }

      v32 = v28;
      if (v26[3] < v31)
      {
        break;
      }

      if (a1)
      {
        goto LABEL_27;
      }

      a1 = v27;
      sub_23008B7D4();
      v27 = a1;
      v34 = v43;
      if (v32)
      {
LABEL_20:
        *(v34[7] + v27) = 0;
        goto LABEL_21;
      }

LABEL_28:
      v34[(v27 >> 6) + 8] |= 1 << v27;
      *(v34[6] + v27) = v24;
      *(v34[7] + v27) = 0;
      v35 = v34[2];
      v20 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v20)
      {
        goto LABEL_38;
      }

      v34[2] = v36;
LABEL_21:
      off_280C9C358 = v34;
      v6 = swift_endAccess();
      if (!--v22)
      {
        goto LABEL_32;
      }
    }

    sub_2300878A8(v31, a1);
    v27 = sub_230081CD0(v24);
    if ((v32 & 1) != (v33 & 1))
    {
      goto LABEL_40;
    }

LABEL_27:
    v34 = v43;
    if (v32)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

LABEL_32:
  a3(v6);
  if (!v40)
  {
    off_280C9C358 = v38;
  }
}

id static REMFeatureFlags.override(enabled:disabled:)(void **a1, uint64_t a2)
{
  if (qword_280C9C350 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    swift_beginAccess();
    v3 = a1[2];
    v39 = off_280C9C358;
    if (!v3)
    {

LABEL_17:
      v20 = *(a2 + 16);
      if (!v20)
      {
LABEL_31:
        v36 = type metadata accessor for TemporaryOverride();
        v37 = objc_allocWithZone(v36);
        v37[OBJC_IVAR____TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride_finishCalled] = 0;
        *&v37[OBJC_IVAR____TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride_overridesToRestore] = v39;
        v41.receiver = v37;
        v41.super_class = v36;
        return objc_msgSendSuper2(&v41, sel_init);
      }

      v21 = (a2 + 32);
      while (1)
      {
        v23 = *v21++;
        v22 = v23;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a1 = off_280C9C358;
        v42 = off_280C9C358;
        off_280C9C358 = 0x8000000000000000;
        v25 = sub_230081CD0(v23);
        v27 = a1[2];
        v28 = (v26 & 1) == 0;
        v12 = __OFADD__(v27, v28);
        v29 = v27 + v28;
        if (v12)
        {
          goto LABEL_33;
        }

        v30 = v26;
        if (a1[3] < v29)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_26;
        }

        a1 = &v42;
        v35 = v25;
        sub_23008B7D4();
        v25 = v35;
        v32 = v42;
        if (v30)
        {
LABEL_19:
          *(v32[7] + v25) = 0;
          goto LABEL_20;
        }

LABEL_27:
        v32[(v25 >> 6) + 8] = (v32[(v25 >> 6) + 8] | (1 << v25));
        *(v32[6] + v25) = v22;
        *(v32[7] + v25) = 0;
        v33 = v32[2];
        v12 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v12)
        {
          goto LABEL_35;
        }

        v32[2] = v34;
LABEL_20:
        off_280C9C358 = v32;
        swift_endAccess();
        if (!--v20)
        {
          goto LABEL_31;
        }
      }

      sub_2300878A8(v29, isUniquelyReferenced_nonNull_native);
      a1 = v42;
      v25 = sub_230081CD0(v22);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_37;
      }

LABEL_26:
      v32 = v42;
      if (v30)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }

    v4 = (a1 + 4);

LABEL_6:
    v6 = *v4++;
    v5 = v6;
    swift_beginAccess();
    v7 = swift_isUniquelyReferenced_nonNull_native();
    a1 = off_280C9C358;
    v42 = off_280C9C358;
    off_280C9C358 = 0x8000000000000000;
    v8 = sub_230081CD0(v6);
    v10 = a1[2];
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (!v12)
    {
      break;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  v14 = v9;
  if (a1[3] >= v13)
  {
    if (v7)
    {
      goto LABEL_11;
    }

    a1 = &v42;
    v19 = v8;
    sub_23008B7D4();
    v8 = v19;
    v16 = v42;
    if (v14)
    {
LABEL_4:
      *(v16[7] + v8) = 1;
      goto LABEL_5;
    }

LABEL_12:
    v16[(v8 >> 6) + 8] = (v16[(v8 >> 6) + 8] | (1 << v8));
    *(v16[6] + v8) = v5;
    *(v16[7] + v8) = 1;
    v17 = v16[2];
    v12 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v12)
    {
      goto LABEL_34;
    }

    v16[2] = v18;
LABEL_5:
    off_280C9C358 = v16;
    swift_endAccess();
    if (!--v3)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  sub_2300878A8(v13, v7);
  a1 = v42;
  v8 = sub_230081CD0(v5);
  if ((v14 & 1) == (v15 & 1))
  {
LABEL_11:
    v16 = v42;
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

LABEL_37:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t REMFeatureFlags.Platforms.description.getter()
{
  v1 = *v0;
  if ((~*v0 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0x5D6C6C615BLL;
  }

  if (!v1)
  {
    return 23899;
  }

  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  if ((~v1 & 3) != 0)
  {
    if (v1)
    {
      sub_2301D1C50(v5);
      swift_beginAccess();
      v3 = 0x534F656E6F687069;
      v4 = 0xE800000000000000;
    }

    else
    {
      if ((v1 & 2) == 0)
      {
        if ((v1 & 4) != 0)
        {
          goto LABEL_17;
        }

        goto LABEL_10;
      }

      sub_2301D1C50(v5);
      swift_beginAccess();
      v3 = 0x534F64617069;
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    sub_2301D1C50(v5);
    swift_beginAccess();
    v3 = 5459817;
    v4 = 0xE300000000000000;
  }

  MEMORY[0x231911790](v3, v4);
  swift_endAccess();
  if ((v1 & 4) != 0)
  {
LABEL_17:
    sub_2301D1C50(v5);
    swift_beginAccess();
    MEMORY[0x231911790](0x534F63616DLL, 0xE500000000000000);
    swift_endAccess();
    if ((v1 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  if ((v1 & 8) != 0)
  {
LABEL_11:
    sub_2301D1C50(v5);
    swift_beginAccess();
    MEMORY[0x231911790](0x534F6863746177, 0xE700000000000000);
    swift_endAccess();
  }

LABEL_12:
  swift_beginAccess();
  MEMORY[0x231911790](93, 0xE100000000000000);
  swift_endAccess();
  return v5[0];
}

uint64_t sub_2301D1C50(void *a1)
{
  swift_beginAccess();
  v2 = a1[1];
  v3 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (v3)
  {
    v4 = 8236;
  }

  else
  {
    v4 = 91;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE100000000000000;
  }

  swift_beginAccess();
  MEMORY[0x231911790](v4, v5);
  swift_endAccess();
}

ReminderKitInternal::REMFeatureFlags::ExternalFeatureFlag __swiftcall REMFeatureFlags.ExternalFeatureFlag.init(domain:feature:)(Swift::String domain, Swift::String feature)
{
  *v2 = domain;
  v2[1] = feature;
  result.feature = feature;
  result.domain = domain;
  return result;
}

uint64_t REMFeatureFlags.ExternalFeatureFlag.isEnabled.getter()
{
  v0 = sub_23030F8B8();
  v1 = sub_23030F8B8();
  v2 = rem_feature_enabled();

  return v2;
}

uint64_t static REMFeatureFlags.isAppleAccountBrandingEnabled()()
{
  v0 = sub_23030F8B8();
  v1 = sub_23030F8B8();
  v2 = rem_feature_enabled();

  return v2;
}

ReminderKitInternal::REMFeatureFlags_optional __swiftcall REMFeatureFlags.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230311228();

  v5 = 0;
  v6 = 10;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
LABEL_24:
      v6 = v5;
      break;
    case 10:
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    default:
      v6 = 28;
      break;
  }

  *v2 = v6;
  return result;
}