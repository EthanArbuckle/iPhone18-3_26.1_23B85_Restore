uint64_t Set._isDisjoint<A>(with:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v70 = a1;
  v71 = a5;
  v10 = *(a3 - 1);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v13 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v72 = (&v52 - v14);
  v17 = type metadata accessor for Optional(0, v15, v15, v16);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v57 = &v52 - v19;
  v20 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v67 = v23;
  v56 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v68 = &v52 - v24;
  v66 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v25 = a2;
    }

    else
    {
      v25 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    if ([v25 count])
    {
      goto LABEL_6;
    }

    return 1;
  }

  if (!*(a2 + 16))
  {
    return 1;
  }

LABEL_6:
  v55 = v11;
  (*(v20 + 16))(v22, v70, a4);
  v26 = v10;
  v27 = v68;
  (*(a6 + 32))(a4, a6);
  v28 = v67;
  v29 = v27;
  v30 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a4, v67, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v32 = *(AssociatedConformanceWitness + 16);
  v33 = v57;
  v64 = AssociatedConformanceWitness + 16;
  v65 = AssociatedConformanceWitness;
  v63 = v32;
  (v32)(v28);
  v34 = 1;
  v61 = *(v26 + 48);
  v62 = v26 + 48;
  if (v61(v33, 1, a3) == 1)
  {
    goto LABEL_31;
  }

  v35 = *(v26 + 32);
  v36 = (a2 & 0xFFFFFFFFFFFFFF8);
  if (a2 < 0)
  {
    v36 = a2;
  }

  v58 = v36;
  v59 = v35;
  v37 = (v26 + 8);
  v53 = v26;
  v54 = v71 + 32;
  v60 = v26 + 32;
  v69 = v26 + 16;
  v70 = a2 + 56;
  v38 = v55;
  v35(v72, v33, a3);
  while (v66)
  {
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      if (v38 != 8)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v39 = v72;
      v40 = *v72;
      v41 = *v37;
      swift_unknownObjectRetain(*v72);
      v41(v39, a3);
      v28 = v67;
    }

    else
    {
      v59(v13, v72, a3);
      v40 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v13, a3);
    }

    v42 = [v58 member_];
    swift_unknownObjectRelease(v40);
    if (v42)
    {
      swift_unknownObjectRelease(v42);
      v34 = 0;
      v29 = v68;
      goto LABEL_31;
    }

LABEL_13:
    v29 = v68;
    v63(v28, v65);
    v34 = 1;
    if (v61(v33, 1, a3) == 1)
    {
      goto LABEL_31;
    }

    v59(v72, v33, a3);
  }

  if (!*(a2 + 16))
  {
    (*v37)(v72, a3);
    goto LABEL_13;
  }

  v43 = (*(v71 + 32))(*(a2 + 40), a3);
  v44 = -1 << *(a2 + 32);
  v45 = v43 & ~v44;
  if (((*(v70 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
  {
    v50 = *v37;
LABEL_28:
    v50(v72, a3);
    v30 = v53;
    goto LABEL_13;
  }

  v52 = v37 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46 = ~v44;
  v47 = *(v30 + 72);
  v48 = *(v30 + 16);
  while (1)
  {
    v48(v13, *(a2 + 48) + v47 * v45, a3);
    v49 = (*(*(v71 + 8) + 8))(v13, v72, a3);
    v50 = *v37;
    (*v37)(v13, a3);
    if (v49)
    {
      break;
    }

    v45 = (v45 + 1) & v46;
    if (((*(v70 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
      v38 = v55;
      v33 = v57;
      v28 = v67;
      goto LABEL_28;
    }
  }

  v50(v72, a3);
  v34 = 0;
  v28 = v67;
  v29 = v68;
LABEL_31:
  (*(v56 + 8))(v29, v28);
  return v34;
}

uint64_t Set.union<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v49 = a5;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v48 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v17 = type metadata accessor for Optional(0, v15, v15, v16);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v41 - v18;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v21 = v20;
  v42 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  v50 = a2;
  v24 = v19;
  v25 = a3;
  (*(a6 + 32))(a4, a6);
  v26 = a6;
  v27 = v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v26, a4, v21, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v46 = *(AssociatedConformanceWitness + 16);
  v47 = AssociatedConformanceWitness;
  v46(v21);
  v29 = v10;
  v32 = *(v10 + 48);
  v31 = v10 + 48;
  v30 = v32;
  if (v32(v24, 1, v25) != 1)
  {
    v44 = *(v29 + 32);
    v45 = v29 + 32;
    v43 = (v29 + 8);
    do
    {
      v33 = v31;
      v34 = v27;
      v35 = v21;
      v36 = v48;
      v44(v48, v24, v25);
      v38 = type metadata accessor for Set._Variant(0, v25, v49, v37);
      v39 = v36;
      v21 = v35;
      v27 = v34;
      v31 = v33;
      Set._Variant.insert(_:)(v14, v39, v38);
      (*v43)(v14, v25);
      (v46)(v21, v47);
    }

    while (v30(v24, 1, v25) != 1);
  }

  (*(v42 + 8))(v27, v21);
  return v50;
}

uint64_t Set.formUnion<A>(_:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v44 = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v43 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v10;
  v13 = type metadata accessor for Optional(0, v6, v11, v12);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - v14;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v17 = v16;
  v39 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - v18;
  (*(a4 + 32))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v17, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v22 = AssociatedConformanceWitness + 16;
  v21 = *(AssociatedConformanceWitness + 16);
  v45 = v19;
  v46 = v17;
  v42 = AssociatedConformanceWitness;
  v21(v17);
  v23 = v21;
  v24 = v7;
  v27 = *(v7 + 48);
  v25 = v7 + 48;
  v26 = v27;
  if (v27(v15, 1, v6) != 1)
  {
    v40 = *(v24 + 32);
    v28 = (v24 + 8);
    do
    {
      v29 = v23;
      v30 = v43;
      v40(v43, v15, v6);
      v32 = type metadata accessor for Set._Variant(0, v6, *(v44 + 24), v31);
      v33 = v25;
      v34 = v22;
      v35 = v41;
      Set._Variant.insert(_:)(v41, v30, v32);
      v36 = v35;
      v22 = v34;
      v25 = v33;
      (*v28)(v36, v6);
      v29(v46, v42);
      v23 = v29;
    }

    while (v26(v15, 1, v6) != 1);
  }

  return (*(v39 + 8))(v45, v46);
}

__objc2_class **Set.subtracting<A>(_:)(void (**a1)(uint64_t, uint64_t), uint64_t a2, Class *a3, const char *a4, uint64_t a5, int **a6)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v9 = a1;
    v10 = a6;
    v11 = a4;
    v12 = a2;
    a2;
    v13 = _NativeSet.init(_:capacity:)(v8, [v8 count], a3, a5);
    v12;
    a1 = v9;
    a4 = v11;
    a6 = v10;
    a2 = v13;
  }

  return _NativeSet.subtracting<A>(_:)(a1, a2, a3, a4, a5, a6);
}

id Set._subtract<A>(_:)(char *a1, uint64_t a2, unint64_t a3, swift *a4)
{
  v5 = v4;
  v44 = a2;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v52 = a1;
  v53 = v9;
  MEMORY[0x1EEE9AC00](a1);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for Optional(0, v8, v12, v13);
  v46 = *(v50 - 8);
  v14 = MEMORY[0x1EEE9AC00](v50);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v19 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4;
  v23 = a4;
  v24 = a3;
  swift_getAssociatedTypeWitness(0, v23, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v54 = v25;
  v43 = *(v25 - 8);
  result = MEMORY[0x1EEE9AC00](v25);
  v28 = &v43 - v27;
  v51 = v5;
  v29 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v29 < 0)
    {
      v30 = *v5;
    }

    else
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFF8);
    }

    result = [v30 count];
    if (!result)
    {
      return result;
    }
  }

  else if (!*(v29 + 16))
  {
    return result;
  }

  (*(v19 + 16))(v21, v52, v24);
  (*(v22 + 4))(v24, v22);
  v31 = v54;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v22, v24, v54, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v33 = *(AssociatedConformanceWitness + 16);
  v52 = v28;
  v48 = v33;
  v49 = AssociatedConformanceWitness;
  (v33)(v31);
  v34 = v53;
  v35 = *(v53 + 48);
  v36 = v35(v18, 1, v8);
  v38 = v44;
  v37 = v45;
  if (v36 != 1)
  {
    v39 = *(v34 + 32);
    ++v46;
    v47 = v39;
    v53 = v34 + 32;
    v40 = (v34 + 8);
    do
    {
      v47(v11, v18, v8);
      v42 = type metadata accessor for Set._Variant(0, v8, *(v38 + 24), v41);
      Set._Variant.remove(_:)(v11, v42, v37);
      (*v46)(v37, v50);
      (*v40)(v11, v8);
      v48(v54, v49);
    }

    while (v35(v18, 1, v8) != 1);
  }

  return (*(v43 + 8))(v52, v54);
}

__objc2_class **Set.intersection<A>(_:)(uint64_t a1, uint64_t a2, __objc2_class **a3, __objc2_class **a4, __objc2_class **a5, __objc2_class **a6)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, a1, v15);
  v17 = type metadata accessor for Set(0, a3, a5, v16);
  if (swift_dynamicCast(&v24, v13, a4, v17, 6uLL))
  {
    v18 = v24;
    v19 = Set._Variant.intersection(_:)(v24, a2, a3, a5);
    v18;
    return v19;
  }

  else
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      if (a2 < 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      a2;
      v22 = _NativeSet.init(_:capacity:)(v21, [v21 count], a3, a5);
      a2;
      a2 = v22;
    }

    return _NativeSet.genericIntersection<A>(_:)(a1, a2, a3, a4, a5, a6);
  }
}

__objc2_class **Set.formIntersection<A>(_:)(uint64_t a1, uint64_t a2, __objc2_class **a3, __objc2_class **a4)
{
  result = Set.intersection<A>(_:)(a1, *v4, *(a2 + 16), a3, *(a2 + 24), a4);
  *v4 = result;
  return result;
}

uint64_t Set.symmetricDifference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v8 = Set.init<A>(_:)(a1, a3, a4, a5, a6);
  v10 = type metadata accessor for Set(0, a3, a5, v9);
  Set.formSymmetricDifference(_:)(v8, v10);
  return a2;
}

uint64_t Set.formSymmetricDifference<A>(_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = Set.init<A>(_:)(a1, *(a2 + 16), a3, *(a2 + 24), a4);

  return Set.formSymmetricDifference(_:)(v5, a2);
}

uint64_t Set.formSymmetricDifference(_:)(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = *(a2 + 16);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v89 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v92 = (&v67 - v10);
  v13 = type metadata accessor for Optional(0, v6, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v76 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v69 = &v67 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v70 = (&v67 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v85 = (&v67 - v21);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v22 = v5;
    }

    else
    {
      v22 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v23 = type metadata accessor for __CocoaSet.Iterator();
    v24 = swift_allocObject(v23, 0xE8, 7uLL);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    *(v24 + 208) = v22;
    *(v24 + 216) = 0;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 0u;
    *(v24 + 64) = 0u;
    *(v24 + 80) = 0u;
    *(v24 + 96) = 0u;
    *(v24 + 112) = 0u;
    *(v24 + 128) = 0u;
    *(v24 + 144) = 0u;
    *(v24 + 160) = 0u;
    *(v24 + 176) = 0u;
    *(v24 + 192) = 0u;
    *(v24 + 224) = 0;
    v5 = v24 | 0x8000000000000000;
  }

  else
  {
    v28 = -1 << *(v5 + 32);
    v25 = v5 + 56;
    v29 = ~v28;
    v30 = -v28;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v27 = v31 & *(v5 + 56);
    v26 = v29;
  }

  v82 = 0;
  v78 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  v84 = (v7 + 56);
  v68 = (v14 + 16);
  v67 = (v7 + 48);
  v77 = (v14 + 8);
  v80 = v5;
  v81 = (v7 + 32);
  v74 = v26;
  v75 = v8;
  v32 = (v26 + 64) >> 6;
  v90 = (v7 + 16);
  v91 = (v7 + 8);
  v86 = v13;
  v83 = v25;
  v79 = v32;
  v88 = v6;
  while ((v5 & 0x8000000000000000) == 0)
  {
    v36 = v85;
    if (v27)
    {
      v37 = v82;
      goto LABEL_27;
    }

    v43 = v82;
    do
    {
      v37 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_60;
      }

      if (v37 >= v32)
      {
        goto LABEL_56;
      }

      v27 = *(v25 + 8 * v37);
      ++v43;
    }

    while (!v27);
    v82 = v37;
LABEL_27:
    v44 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    (*(v7 + 16))(v85, *(v5 + 48) + *(v7 + 72) * (v44 | (v37 << 6)), v6);
    (*(v7 + 56))(v36, 0, 1, v6);
LABEL_34:
    (*v81)(v92, v36, v6);
    v49 = *v3;
    if ((*v3 & 0xC000000000000001) != 0)
    {
      if (v49 < 0)
      {
        v50 = *v3;
      }

      else
      {
        v50 = (v49 & 0xFFFFFFFFFFFFFF8);
      }

      if (_swift_isClassOrObjCExistentialType(v6, v6))
      {
        v5 = v80;
        if (v8 == 8)
        {
          v51 = *v92;
          swift_unknownObjectRetain(*v92);
          goto LABEL_41;
        }

LABEL_60:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v65 = v89;
      (*v90)(v89, v92, v6);
      v51 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v65, v6);
      v5 = v80;
LABEL_41:
      v52 = [v50 member_];
      swift_unknownObjectRelease(v51);
      if (!v52)
      {
        v33 = *(v4 + 24);
        goto LABEL_12;
      }

      swift_unknownObjectRelease(v52);
      v33 = *(v4 + 24);
    }

    else
    {
      v33 = *(v4 + 24);
      if (!*(v49 + 16))
      {
        goto LABEL_51;
      }

      v55 = (*(v33 + 32))(*(v49 + 40), v6, *(v4 + 24));
      v56 = -1 << *(v49 + 32);
      v57 = v55 & ~v56;
      v87 = v49 + 56;
      if (((*(v49 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
      {
LABEL_50:
        v8 = v75;
        v6 = v88;
LABEL_51:
        v5 = v80;
LABEL_12:
        v34 = type metadata accessor for Set._Variant(0, v6, v33, v48);
        v35 = v89;
        Set._Variant.insert(_:)(v89, v92, v34);
        goto LABEL_13;
      }

      v72 = v4;
      v73 = v3;
      v58 = v7;
      v59 = ~v56;
      v60 = *(v58 + 72);
      v71 = v58;
      v61 = *(v58 + 16);
      while (1)
      {
        v63 = v88;
        v62 = v89;
        v61(v89, *(v49 + 48) + v60 * v57, v88);
        v64 = (*(*(v33 + 8) + 8))(v62, v92, v63);
        (*v91)(v62, v63);
        if (v64)
        {
          break;
        }

        v57 = (v57 + 1) & v59;
        if (((*(v87 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
        {
          v3 = v73;
          v4 = v72;
          v7 = v71;
          goto LABEL_50;
        }
      }

      v3 = v73;
      v4 = v72;
      v7 = v71;
      v8 = v75;
      v6 = v88;
      v5 = v80;
    }

    v53 = type metadata accessor for Set._Variant(0, v6, v33, v48);
    v54 = v76;
    v35 = v92;
    Set._Variant.remove(_:)(v92, v53, v76);
    (*v77)(v54, v86);
LABEL_13:
    (*v91)(v35, v6);
    v13 = v86;
    v25 = v83;
    v32 = v79;
  }

  v38 = v78;
  v39 = *(v78 + 216);
  if ((v39 & 0x8000000000000000) == 0)
  {
    if (v39 != *(v78 + 224))
    {
      v41 = *(v78 + 24);
      if (v41)
      {
        v42 = v84;
        if (!(v39 >> 60))
        {
          goto LABEL_30;
        }

        __break(1u);
LABEL_62:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_63:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v40 = [*(v78 + 208) countByEnumeratingWithState:v78 + 16 objects:v78 + 80 count:16];
    v38 = v78;
    *(v78 + 224) = v40;
    if (v40)
    {
      *(v38 + 216) = 0;
      v41 = *(v38 + 24);
      if (v41)
      {
        v39 = 0;
        v42 = v84;
LABEL_30:
        v45 = (v41 + 8 * v39);
        if ((v45 & 7) == 0)
        {
          v46 = *v45;
          *(v38 + 216) = v39 + 1;
          swift_unknownObjectRetain(v46);
          if (_swift_isClassOrObjCExistentialType(v6, v6))
          {
            v93 = v46;
            v36 = v85;
            swift_dynamicCast(v85, &v93, qword_1EEEAC710, v6, 7uLL);
            v47 = *v42;
          }

          else
          {
            v47 = *v42;
            v47(v70, 1, 1, v6);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v46, v6, v70);
            (*v68)(v69, v70, v13);
            if ((*v67)(v69, 1, v6) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            swift_unknownObjectRelease(v46);
            (*v77)(v70, v13);
            v36 = v85;
            (*v81)(v85, v69, v6);
          }

          v47(v36, 0, 1, v6);
          goto LABEL_34;
        }

        goto LABEL_62;
      }

      goto LABEL_63;
    }

    *(v38 + 216) = -1;
  }

  v36 = v85;
LABEL_56:
  (*v84)(v36, 1, 1, v6);
  return _sSh8IteratorV8_VariantOySS__GWOe_0(v5);
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance Set<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Set.intersection(_:)(*a1, *v3, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance Set<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, unint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v10 = *v5;
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, a2, a3);
  result = a4(a1, v10, v11, a2, v12, WitnessTable);
  *a5 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance Set<A>(uint64_t a1, const char *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, a2, a3);

  return Set.formUnion<A>(_:)(a1, a2, a2, WitnessTable);
}

__objc2_class **protocol witness for SetAlgebra.formIntersection(_:) in conformance Set<A>(uint64_t a1, __objc2_class **a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, a2, a3);

  return Set.formIntersection<A>(_:)(a1, a2, a2, WitnessTable);
}

__objc2_class **protocol witness for SetAlgebra.subtracting(_:) in conformance Set<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, __objc2_class ***a3@<X8>)
{
  result = Set.subtracting(_:)(*a1, *v3, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  return result;
}

__objc2_class **Set.subtracting(_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v8 = [a1 count];
    if ((v6 & 0xC000000000000001) != 0)
    {
LABEL_5:
      if (v6 < 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = (v6 & 0xFFFFFFFFFFFFFF8);
      }

      if (v8 > [v9 count] / 8)
      {
        v19 = v7;
        v6;
        v10 = _NativeSet.init(_:capacity:)(v9, [v9 count], a3, a4);
        v6;
        v6 = v10;
LABEL_13:
        v11 = type metadata accessor for Set(0, a3, a4, a4);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v11, v12);
        return _NativeSet.subtracting<A>(_:)(&v19, v6, a3, v11, a4, WitnessTable);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_5;
    }
  }

  if (v8 > *(v6 + 16) >> 3)
  {
    v19 = v7;
    goto LABEL_13;
  }

LABEL_14:
  v18 = v7;
  v19 = v6;
  v15 = type metadata accessor for Set(0, a3, a4, a4);
  v17 = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v15, v16);
  Set._subtract<A>(_:)(&v18, v15, v15, v17);
  return v19;
}

__objc2_class **protocol witness for SetAlgebra.init<A>(_:) in conformance Set<A>@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __objc2_class ***a5@<X8>)
{
  result = Set.init<A>(_:)(a1, *(a4 + 16), a2, *(a4 + 24), a3);
  *a5 = result;
  return result;
}

id Set.subtract(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, a2, a3);
  return Set._subtract<A>(_:)(&v6, a2, a2, WitnessTable);
}

uint64_t Set.description.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  inited = a1;
  v120 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Optional(0, v6, v7, v8);
  v9 = *(v112 - 8);
  v10 = MEMORY[0x1EEE9AC00](v112 - 8);
  v111 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v110 = &v105 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v119 = (&v105 - v14);
  0xE000000000000000;
  v128 = 91;
  v129 = 0xE100000000000000;
  if ((inited & 0xC000000000000001) != 0)
  {
    if (inited < 0)
    {
      v15 = inited;
    }

    else
    {
      v15 = inited & 0xFFFFFFFFFFFFFF8;
    }

    v16 = type metadata accessor for __CocoaSet.Iterator();
    v17 = swift_allocObject(v16, 0xE8, 7uLL);
    v115 = 0;
    v18 = 0;
    v19 = 0;
    *(v17 + 208) = v15;
    *(v17 + 216) = 0;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 80) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
    *(v17 + 128) = 0u;
    *(v17 + 144) = 0u;
    *(v17 + 160) = 0u;
    *(v17 + 176) = 0u;
    *(v17 + 192) = 0u;
    *(v17 + 224) = 0;
    v20 = v17 | 0x8000000000000000;
  }

  else
  {
    v21 = -1 << *(inited + 32);
    v18 = ~v21;
    v22 = *(inited + 56);
    v115 = inited + 56;
    v23 = -v21;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v19 = v24 & v22;
    v20 = inited;
  }

  v118 = v20 & 0x7FFFFFFFFFFFFFFFLL;
  v25 = (v120 + 56);
  v109 = (v9 + 16);
  v108 = (v120 + 48);
  v107 = (v9 + 8);
  v125 = (v120 + 32);
  v114 = v18;
  v26 = (v18 + 64) >> 6;
  v117 = v120 + 16;
  inited;
  v124 = 0;
  v27 = 1;
  v122 = xmmword_18071DB30;
  v113 = xmmword_18071DB40;
  v28 = v119;
  v121 = v20;
  v123 = v25;
  v116 = v5;
  while ((v20 & 0x8000000000000000) == 0)
  {
    if (v19)
    {
      v31 = v124;
      goto LABEL_27;
    }

    v36 = v124;
    do
    {
      v31 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_127:
        inited = _StringGuts._foreignConvertedToSmall()(inited, v2);
        v20 = v98;
        goto LABEL_114;
      }

      if (v31 >= v26)
      {
        (*v25)(v28, 1, 1, v2);
        _sSh8IteratorV8_VariantOySS__GWOe_0(v20);
        goto LABEL_88;
      }

      v19 = *(v115 + 8 * v31);
      ++v36;
    }

    while (!v19);
    v124 = v31;
LABEL_27:
    v37 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v38 = v120;
    (*(v120 + 16))(v28, *(v20 + 48) + *(v120 + 72) * (v37 | (v31 << 6)), v2);
    (*(v38 + 56))(v28, 0, 1, v2);
    v39 = v125;
LABEL_34:
    v43 = *v39;
    (*v39)(v5, v28, v2);
    if (v27)
    {
      goto LABEL_13;
    }

    v44 = v128;
    inited = v129;
    v45 = HIBYTE(v129) & 0xF;
    v46 = v128 & 0xFFFFFFFFFFFFLL;
    if ((v129 & 0x2000000000000000) != 0)
    {
      v47 = HIBYTE(v129) & 0xF;
    }

    else
    {
      v47 = v128 & 0xFFFFFFFFFFFFLL;
    }

    if (!v47 && (v128 & ~v129 & 0x2000000000000000) == 0)
    {
      v129;
      v128 = 8236;
      v129 = 0xE200000000000000;
      v5 = v116;
      v28 = v119;
      v20 = v121;
      goto LABEL_13;
    }

    if ((v129 & 0x2000000000000000) == 0 || v45 > 0xD)
    {
      0xE200000000000000;
      if ((inited & 0x1000000000000000) != 0)
      {
        v47 = String.UTF8View._foreignCount()();
      }

      v55 = __OFADD__(v47, 2);
      v56 = v47 + 2;
      v20 = v121;
      if (!v55)
      {
        if ((*&v44 & ~inited & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(inited & 0xFFFFFFFFFFFFFFFLL))
        {
          v57 = _StringGuts.nativeUnusedCapacity.getter(*&v44, inited);
          if (v58)
          {
            goto LABEL_140;
          }

          if (v56 > 15)
          {
            goto LABEL_11;
          }

          if ((inited & 0x2000000000000000) == 0)
          {
            if (v57 < 2)
            {
LABEL_54:
              if ((inited & 0x1000000000000000) != 0)
              {
                v44 = _StringGuts._foreignConvertedToSmall()(*&v44, inited);
                v60 = v76;
              }

              else
              {
                if ((*&v44 & 0x1000000000000000) != 0)
                {
                  v59 = ((inited & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v59 = _StringObject.sharedUTF8.getter(*&v44, inited);
                  v46 = v81;
                }

                closure #1 in _StringGuts._convertedToSmall()(v59, v46, &v126, v54);
                v60 = *(&v126 + 1);
                v44 = v126;
              }

LABEL_61:
              v61 = 0xE200000000000000;
              0xE200000000000000;
              v62._rawBits = 131073;
              v63._rawBits = 1;
              v64._rawBits = _StringGuts.validateScalarRange(_:)(v63, v62, 0x202CuLL, 0xE200000000000000)._rawBits;
              if (v64._rawBits < 0x10000)
              {
                v64._rawBits |= 3;
              }

              if (v64._rawBits >> 16 || (v67 = 8236, (v65._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
              {
                v67 = specialized static String._copying(_:)(v64._rawBits, v65._rawBits, 0x202CuLL, 0xE200000000000000);
                v61 = v68;
                0xE200000000000000;
              }

              if ((v61 & 0x2000000000000000) != 0)
              {
                v61;
              }

              else if ((v61 & 0x1000000000000000) != 0)
              {
                v67 = _StringGuts._foreignConvertedToSmall()(v67, v61);
                v106 = v82;
                v61;
                v61 = v106;
              }

              else
              {
                if ((v67 & 0x1000000000000000) != 0)
                {
                  v79 = ((v61 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v80 = v67 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v79 = _StringObject.sharedUTF8.getter(v67, v61);
                }

                closure #1 in _StringGuts._convertedToSmall()(v79, v80, &v126, v66);
                v61;
                v61 = *(&v126 + 1);
                v67 = v126;
              }

              v69 = specialized _SmallString.init(_:appending:)(*&v44, v60, v67, v61);
              if ((v71 & 1) == 0)
              {
                v72 = v69;
                v73 = v70;
                inited;
                swift_bridgeObjectRelease_n(0xE200000000000000, 2);
                v128 = v72;
                v129 = v73;
                goto LABEL_12;
              }

LABEL_140:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_11:
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v56, 2);
            v126 = v113;
            0xE200000000000000;
            _StringGuts.appendInPlace(_:isASCII:)(&v126, 2uLL, 1);
            0xE200000000000000;
LABEL_12:
            v5 = v116;
            v28 = v119;
            goto LABEL_13;
          }
        }

        else
        {
          if (v56 > 15)
          {
            goto LABEL_11;
          }

          if ((inited & 0x2000000000000000) == 0)
          {
            goto LABEL_54;
          }
        }

        v60 = inited;
        goto LABEL_61;
      }

      __break(1u);
LABEL_131:
      v99 = String.UTF8View._foreignCount()();
      v86 = v99 + 1;
      if (!__OFADD__(v99, 1))
      {
        goto LABEL_100;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      if ((v86 & 0x1000000000000000) != 0)
      {
        v19 = _StringGuts._foreignConvertedToSmall()(v19, v86);
        v104 = v103;
        v86;
        v86 = v104;
      }

      else
      {
        if ((v19 & 0x1000000000000000) != 0)
        {
          v100 = ((v86 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v101 = v19 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v100 = _StringObject.sharedUTF8.getter(v19, v86);
        }

        closure #1 in _StringGuts._convertedToSmall()(v100, v101, &v126, v85);
        v86;
        v86 = *(&v126 + 1);
        v19 = v126;
      }

      goto LABEL_121;
    }

    v48 = 8 * (HIBYTE(v129) & 7);
    v49 = (-255 << v48) - 1;
    v50 = 44 << v48;
    v51 = v45 + 1;
    if (v45 >= 8)
    {
      v53 = v49 & v129 | v50;
      v52 = 8 * (v51 & 7);
      v28 = v119;
LABEL_71:
      v74 = ((-255 << v52) - 1) & v53 | (32 << v52);
    }

    else
    {
      v44 = (v49 & v128 | v50);
      v28 = v119;
      if (v45 == 7)
      {
        v52 = 0;
        v53 = v129;
        goto LABEL_71;
      }

      v44 = (((-255 << (8 * (v51 & 7u))) - 1) & *&v44 | (32 << (8 * (v51 & 7u))));
      v74 = v129;
    }

    v129;
    0xE200000000000000;
    v75 = 0xE000000000000000;
    if (*&v44 & 0x8080808080808080 | v74 & 0x80808080808080)
    {
      v75 = 0xA000000000000000;
    }

    v128 = v44;
    v129 = (v75 & 0xFF00000000000000 | (v45 << 56) | v74 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v5 = v116;
    v20 = v121;
LABEL_13:
    v29 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    inited = swift_initStackObject(v29, v127);
    *(inited + 16) = v122;
    *(inited + 56) = v2;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
    v43(boxed_opaque_existential_0Tm, v5, v2);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v128);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm((inited + 32));
    v27 = 0;
    v25 = v123;
  }

  v32 = v118;
  v33 = *(v118 + 216);
  if ((v33 & 0x8000000000000000) == 0)
  {
    if (v33 != *(v118 + 224))
    {
      v35 = *(v118 + 24);
      if (v35)
      {
        if (v33 >> 60)
        {
          __break(1u);
          goto LABEL_129;
        }

LABEL_30:
        v40 = (v35 + 8 * v33);
        if ((v40 & 7) == 0)
        {
          v41 = *v40;
          *(v32 + 216) = v33 + 1;
          swift_unknownObjectRetain(v41);
          if (_swift_isClassOrObjCExistentialType(v2, v2))
          {
            *&v126 = v41;
            swift_dynamicCast(v28, &v126, qword_1EEEAC710, v2, 7uLL);
            v42 = *v25;
            v39 = v125;
          }

          else
          {
            v42 = *v25;
            v77 = v110;
            v42(v110, 1, 1, v2);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v41, v2, v77);
            v78 = v111;
            (*v109)(v111, v77, v112);
            if ((*v108)(v78, 1, v2) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            (*v107)(v77, v112);
            swift_unknownObjectRelease(v41);
            v39 = v125;
            v28 = v119;
            (*v125)(v119, v78, v2);
          }

          v42(v28, 0, 1, v2);
          v20 = v121;
          goto LABEL_34;
        }

LABEL_129:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_139:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v34 = [*(v118 + 208) countByEnumeratingWithState:v118 + 16 objects:v118 + 80 count:16];
    v32 = v118;
    *(v118 + 224) = v34;
    if (v34)
    {
      *(v32 + 216) = 0;
      v35 = *(v32 + 24);
      if (v35)
      {
        v33 = 0;
        goto LABEL_30;
      }

      goto LABEL_139;
    }

    *(v32 + 216) = -1;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v20);
  (*v25)(v28, 1, 1, v2);
LABEL_88:
  inited = v128;
  v2 = v129;
  v19 = HIBYTE(v129) & 0xF;
  v20 = v128 & 0xFFFFFFFFFFFFLL;
  if ((v129 & 0x2000000000000000) != 0)
  {
    v83 = HIBYTE(v129) & 0xF;
  }

  else
  {
    v83 = v128 & 0xFFFFFFFFFFFFLL;
  }

  if (!v83 && (v128 & ~v129 & 0x2000000000000000) == 0)
  {
    v129;
    return 93;
  }

  if ((v129 & 0x2000000000000000) != 0 && v19 != 15)
  {
    if (v19 < 8)
    {
      inited = ((-255 << (8 * (HIBYTE(v129) & 7u))) - 1) & v128 | (93 << (8 * (HIBYTE(v129) & 7u)));
    }

    v129;
    0xE100000000000000;
    return inited;
  }

  0xE100000000000000;
  if ((v2 & 0x1000000000000000) != 0)
  {
    goto LABEL_131;
  }

  v55 = __OFADD__(v83, 1);
  v86 = v83 + 1;
  if (v55)
  {
    goto LABEL_133;
  }

LABEL_100:
  if ((inited & ~v2 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v2 & 0xFFFFFFFFFFFFFFFLL))
  {
    v87 = _StringGuts.nativeUnusedCapacity.getter(inited, v2);
    if (v88)
    {
      goto LABEL_140;
    }

    if (v86 > 15)
    {
      goto LABEL_111;
    }

    if ((v2 & 0x2000000000000000) == 0)
    {
      if (v87 < 1)
      {
        goto LABEL_106;
      }

LABEL_111:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v86, 1);
      v126 = xmmword_18071DB50;
      closure #1 in _StringGuts.append(_:)(&v126, 1uLL, &v128, 1);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v128;
    }

    goto LABEL_113;
  }

  if (v86 > 15)
  {
    goto LABEL_111;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
LABEL_113:
    v20 = v2;
    goto LABEL_114;
  }

LABEL_106:
  if ((v2 & 0x1000000000000000) != 0)
  {
    goto LABEL_127;
  }

  if ((inited & 0x1000000000000000) != 0)
  {
    v89 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v89 = _StringObject.sharedUTF8.getter(inited, v2);
    v20 = v102;
  }

  closure #1 in _StringGuts._convertedToSmall()(v89, v20, &v126, v85);
  v20 = *(&v126 + 1);
  inited = v126;
LABEL_114:
  v86 = 0xE100000000000000;
  0xE100000000000000;
  v19 = 93;
  v90._rawBits = 1;
  v91._rawBits = 65537;
  v92._rawBits = _StringGuts.validateScalarRange(_:)(v90, v91, 0x5DuLL, 0xE100000000000000)._rawBits;
  if (v92._rawBits < 0x10000)
  {
    v92._rawBits |= 3;
  }

  if (v92._rawBits >> 16 || (v93._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
  {
    v19 = specialized static String._copying(_:)(v92._rawBits, v93._rawBits, 0x5DuLL, 0xE100000000000000);
    v86 = v94;
    0xE100000000000000;
  }

  if ((v86 & 0x2000000000000000) == 0)
  {
    goto LABEL_134;
  }

  v86;
LABEL_121:
  v95 = specialized _SmallString.init(_:appending:)(inited, v20, v19, v86);
  if (v96)
  {
    goto LABEL_140;
  }

  v97 = v95;
  v2;
  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
  return v97;
}

uint64_t Set.debugDescription.getter(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v185 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v182 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = v5;
  v8 = type metadata accessor for Optional(0, v5, v6, v7);
  v188 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v180 = (&v174 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v190 = (&v174 - v14);
  v195 = 0;
  v196 = 0xE000000000000000;
  v15 = _StringGuts.init(_initialCapacity:)(4);
  inited = v15;
  v18 = v16;
  v193 = v15;
  v194 = v16;
  v19 = HIBYTE(v16) & 0xF;
  v20 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v21 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21 && (v15 & ~v16 & 0x2000000000000000) == 0)
  {
    v16;
    inited = 0;
    v27 = 0xE000000000000000;
    v193 = 0;
    goto LABEL_33;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    v16;
    0xE000000000000000;
    v29 = 0xA000000000000000;
    if (!(v18 & 0x80808080808080 | *&inited & 0x8080808080808080))
    {
      v29 = 0xE000000000000000;
    }

    v27 = v29 & 0xFF00000000000000 | (v19 << 56) | v18 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_32;
  }

  0xE000000000000000;
  v23 = v20;
  if ((v18 & 0x1000000000000000) != 0)
  {
    v23 = String.UTF8View._foreignCount()();
    if ((*&inited & 0x2000000000000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((*&inited & 0x2000000000000000) == 0)
  {
    goto LABEL_35;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v18 & 0xFFFFFFFFFFFFFFFLL))
  {
    v24 = _StringGuts.nativeUnusedCapacity.getter(*&inited, v18);
    if (v25)
    {
      goto LABEL_206;
    }

    if (v23 <= 15 && (v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

LABEL_36:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v23, 0);
    v191 = 0uLL;
    closure #1 in _StringGuts.append(_:)(&v191, 0, &v193, 1);
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    inited = v193;
    v27 = v194;
    goto LABEL_37;
  }

LABEL_35:
  if (v23 > 15)
  {
    goto LABEL_36;
  }

LABEL_13:
  if ((v18 & 0x1000000000000000) != 0)
  {
    inited = _StringGuts._foreignConvertedToSmall()(*&inited, v18);
    v27 = v30;
  }

  else
  {
    if ((*&inited & 0x1000000000000000) != 0)
    {
      v26 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = _StringObject.sharedUTF8.getter(*&inited, v18);
      v20 = v165;
    }

    closure #1 in _StringGuts._convertedToSmall()(v26, v20, &v191, v22);
    v27 = *(&v191 + 1);
    inited = v191;
  }

  v31 = 0xE000000000000000;
  0xE000000000000000;
  v32._rawBits = 1;
  v33._rawBits = 1;
  v34._rawBits = _StringGuts.validateScalarRange(_:)(v32, v33, 0, 0xE000000000000000)._rawBits;
  if (v34._rawBits < 0x10000)
  {
    v34._rawBits |= 3;
  }

  if (v34._rawBits >> 16 || v35._rawBits >= 0x10000)
  {
    v2 = specialized static String._copying(_:)(v34._rawBits, v35._rawBits, 0, 0xE000000000000000);
    v31 = v37;
    0xE000000000000000;
  }

  else
  {
    v2 = 0;
  }

  if ((v31 & 0x2000000000000000) == 0)
  {
    goto LABEL_190;
  }

  v31;
  while (1)
  {
    v38 = specialized _SmallString.init(_:appending:)(*&inited, v27, v2, v31);
    if (v40)
    {
      goto LABEL_206;
    }

    inited = v38;
    v27 = v39;
    v18;
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
LABEL_32:
    v193 = inited;
LABEL_33:
    v194 = v27;
LABEL_37:
    v41 = HIBYTE(v27) & 0xF;
    v18 = *&inited & 0xFFFFFFFFFFFFLL;
    v42 = (v27 & 0x2000000000000000) != 0 ? HIBYTE(v27) & 0xF : *&inited & 0xFFFFFFFFFFFFLL;
    if (v42 || (*&inited & ~v27 & 0x2000000000000000) != 0)
    {
      break;
    }

    inited = 7628115;
    v18 = 0xE300000000000000;
    0xE300000000000000;
LABEL_79:
    v27;
LABEL_80:
    v193 = inited;
    v194 = v18;
LABEL_81:
    v68 = HIBYTE(v18) & 0xF;
    v27 = *&inited & 0xFFFFFFFFFFFFLL;
    if ((v18 & 0x2000000000000000) != 0)
    {
      v69 = HIBYTE(v18) & 0xF;
    }

    else
    {
      v69 = *&inited & 0xFFFFFFFFFFFFLL;
    }

    if (!v69 && (*&inited & ~v18 & 0x2000000000000000) == 0)
    {
      v18;
      v81 = 0xE200000000000000;
      inited = 23336;
      goto LABEL_122;
    }

    if ((v18 & 0x2000000000000000) != 0 && v68 <= 0xD)
    {
      v70 = 8 * (HIBYTE(v18) & 7);
      v71 = (-255 << v70) - 1;
      v72 = 40 << v70;
      v73 = v68 + 1;
      if (v68 >= 8)
      {
        v75 = v71 & v18 | v72;
        v74 = 8 * (v73 & 7);
LABEL_106:
        v82 = ((-255 << v74) - 1) & v75 | (91 << v74);
      }

      else
      {
        inited = (v71 & *&inited | v72);
        if (v68 == 7)
        {
          v74 = 0;
          v75 = v18;
          goto LABEL_106;
        }

        inited = (((-255 << (8 * (v73 & 7u))) - 1) & *&inited | (91 << (8 * (v73 & 7u))));
        v82 = v18;
      }

      v18;
      0xE200000000000000;
      v94 = 0xA000000000000000;
      if (!(*&inited & 0x8080808080808080 | v82 & 0x80808080808080))
      {
        v94 = 0xE000000000000000;
      }

      v81 = (v94 & 0xFF00000000000000 | (v68 << 56) | v82 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
      goto LABEL_122;
    }

    0xE200000000000000;
    if ((v18 & 0x1000000000000000) != 0)
    {
      goto LABEL_187;
    }

    v76 = __OFADD__(v69, 2);
    v31 = v69 + 2;
    if (!v76)
    {
      goto LABEL_93;
    }

LABEL_189:
    __break(1u);
LABEL_190:
    if ((v31 & 0x1000000000000000) != 0)
    {
      v2 = _StringGuts._foreignConvertedToSmall()(v2, v31);
      v169 = v168;
      v31;
      v31 = v169;
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v159 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v160 = v2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v159 = _StringObject.sharedUTF8.getter(v2, v31);
      }

      closure #1 in _StringGuts._convertedToSmall()(v159, v160, &v191, v36);
      v31;
      v31 = *(&v191 + 1);
      v2 = v191;
    }
  }

  if ((v27 & 0x2000000000000000) != 0 && v41 <= 0xC)
  {
    v43 = 8 * HIBYTE(v27);
    v44 = (-255 << (v43 & 0x38)) - 1;
    v45 = 83 << (v43 & 0x38);
    v46 = v41 + 1;
    if (v41 >= 8)
    {
      v48 = v44 & v27 | v45;
      v47 = 8 * (v46 & 7);
LABEL_62:
      v54 = ((-255 << v47) - 1) & v48 | (101 << v47);
      v55 = (v43 + 16) & 0x38;
    }

    else
    {
      inited = (v44 & *&inited | v45);
      if (v41 == 7)
      {
        v47 = 0;
        v48 = v27;
        goto LABEL_62;
      }

      inited = (((-255 << (8 * (v46 & 7u))) - 1) & *&inited | (101 << (8 * (v46 & 7u))));
      if (v41 < 6)
      {
        inited = (((-255 << ((v43 + 16) & 0x38)) - 1) & *&inited | (116 << ((v43 + 16) & 0x38)));
        v56 = v27;
        goto LABEL_64;
      }

      v55 = 0;
      v54 = v27;
    }

    v56 = ((-255 << v55) - 1) & v54 | (116 << v55);
LABEL_64:
    v27;
    v57 = 0xA000000000000000;
    if (!(*&inited & 0x8080808080808080 | v56 & 0x80808080808080))
    {
      v57 = 0xE000000000000000;
    }

    v18 = (v57 & 0xFF00000000000000 | (v41 << 56) | v56 & 0xFFFFFFFFFFFFFFLL) + 0x300000000000000;
    goto LABEL_80;
  }

  if ((v27 & 0x1000000000000000) == 0)
  {
    v49 = v42 + 3;
    if (__OFADD__(v42, 3))
    {
      goto LABEL_186;
    }

    goto LABEL_49;
  }

  v157 = String.UTF8View._foreignCount()();
  v49 = v157 + 3;
  if (!__OFADD__(v157, 3))
  {
LABEL_49:
    if ((*&inited & ~v27 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v27 & 0xFFFFFFFFFFFFFFFLL))
    {
      v50 = _StringGuts.nativeUnusedCapacity.getter(*&inited, v27);
      if (v51)
      {
        goto LABEL_206;
      }

      if (v49 > 15)
      {
        goto LABEL_60;
      }

      if ((v27 & 0x2000000000000000) != 0)
      {
        goto LABEL_68;
      }

      if (v50 >= 3)
      {
LABEL_60:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v49, 3);
        v191 = xmmword_18071DD10;
        closure #1 in _StringGuts.append(_:)(&v191, 3uLL, &v193, 1);
        inited = v193;
        v18 = v194;
        goto LABEL_81;
      }
    }

    else
    {
      if (v49 > 15)
      {
        goto LABEL_60;
      }

      if ((v27 & 0x2000000000000000) != 0)
      {
LABEL_68:
        v53 = v27;
        goto LABEL_69;
      }
    }

    if ((v27 & 0x1000000000000000) != 0)
    {
      goto LABEL_180;
    }

    if ((*&inited & 0x1000000000000000) != 0)
    {
      v52 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v52 = _StringObject.sharedUTF8.getter(*&inited, v27);
      v18 = v166;
    }

    closure #1 in _StringGuts._convertedToSmall()(v52, v18, &v191, v28);
    v53 = *(&v191 + 1);
    inited = v191;
LABEL_69:
    v2 = 7628115;
    v58 = 0xE300000000000000;
    0xE300000000000000;
    v59._rawBits = 196609;
    v60._rawBits = 1;
    v61._rawBits = _StringGuts.validateScalarRange(_:)(v60, v59, 0x746553uLL, 0xE300000000000000)._rawBits;
    if (v61._rawBits < 0x10000)
    {
      v61._rawBits |= 3;
    }

    if (v61._rawBits >> 16 || (v62._rawBits & 0xFFFFFFFFFFFF0000) != 0x30000)
    {
      v2 = specialized static String._copying(_:)(v61._rawBits, v62._rawBits, 0x746553uLL, 0xE300000000000000);
      v58 = v64;
      0xE300000000000000;
    }

    if ((v58 & 0x2000000000000000) != 0)
    {
      v58;
    }

    else if ((v58 & 0x1000000000000000) != 0)
    {
      v2 = _StringGuts._foreignConvertedToSmall()(v2, v58);
      v171 = v170;
      v58;
      v58 = v171;
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v161 = ((v58 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v162 = v2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v161 = _StringObject.sharedUTF8.getter(v2, v58);
      }

      closure #1 in _StringGuts._convertedToSmall()(v161, v162, &v191, v63);
      v58;
      v58 = *(&v191 + 1);
      v2 = v191;
    }

    v65 = specialized _SmallString.init(_:appending:)(*&inited, v53, v2, v58);
    if (v67)
    {
      goto LABEL_206;
    }

    inited = v65;
    v18 = v66;
    goto LABEL_79;
  }

LABEL_186:
  __break(1u);
LABEL_187:
  v158 = String.UTF8View._foreignCount()();
  v31 = v158 + 2;
  if (__OFADD__(v158, 2))
  {
    goto LABEL_189;
  }

LABEL_93:
  if ((*&inited & ~v18 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v18 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v31 > 15)
    {
      goto LABEL_104;
    }

    if ((v18 & 0x2000000000000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_108;
  }

  v77 = _StringGuts.nativeUnusedCapacity.getter(*&inited, v18);
  if (v78)
  {
    goto LABEL_206;
  }

  if (v31 > 15)
  {
    goto LABEL_104;
  }

  if ((v18 & 0x2000000000000000) != 0)
  {
LABEL_108:
    v80 = v18;
    goto LABEL_109;
  }

  if (v77 < 2)
  {
LABEL_99:
    if ((v18 & 0x1000000000000000) != 0)
    {
      inited = _StringGuts._foreignConvertedToSmall()(*&inited, v18);
      v80 = v156;
    }

    else
    {
      if ((*&inited & 0x1000000000000000) != 0)
      {
        v79 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v79 = _StringObject.sharedUTF8.getter(*&inited, v18);
        v27 = v167;
      }

      closure #1 in _StringGuts._convertedToSmall()(v79, v27, &v191, v36);
      v80 = *(&v191 + 1);
      inited = v191;
    }

LABEL_109:
    0xE200000000000000;
    v83._rawBits = 1;
    v84._rawBits = 131073;
    v85._rawBits = _StringGuts.validateScalarRange(_:)(v83, v84, 0x5B28uLL, 0xE200000000000000)._rawBits;
    if (v85._rawBits < 0x10000)
    {
      v85._rawBits |= 3;
    }

    v87 = Substring.description.getter(v85._rawBits, v86._rawBits, 0x5B28uLL, 0xE200000000000000);
    v89 = v88;
    0xE200000000000000;
    if ((v89 & 0x2000000000000000) != 0)
    {
      v89;
    }

    else if ((v89 & 0x1000000000000000) != 0)
    {
      v87 = _StringGuts._foreignConvertedToSmall()(v87, v89);
      v173 = v172;
      v89;
      v89 = v173;
    }

    else
    {
      if ((v87 & 0x1000000000000000) != 0)
      {
        v163 = ((v89 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v164 = v87 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v163 = _StringObject.sharedUTF8.getter(v87, v89);
      }

      closure #1 in _StringGuts._convertedToSmall()(v163, v164, &v191, v90);
      v89;
      v89 = *(&v191 + 1);
      v87 = v191;
    }

    v91 = specialized _SmallString.init(_:appending:)(*&inited, v80, v87, v89);
    if ((v93 & 1) == 0)
    {
      inited = v91;
      v81 = v92;
      v18;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      goto LABEL_122;
    }

LABEL_206:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_104:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v31, 2);
  v191 = xmmword_18071DC30;
  closure #1 in _StringGuts.append(_:)(&v191, 2uLL, &v193, 1);
  swift_bridgeObjectRelease_n(0xE200000000000000, 2);
  inited = v193;
  v81 = v194;
LABEL_122:
  0xE000000000000000;
  v195 = inited;
  v196 = v81;
  v95 = v182;
  v178 = v8;
  v179 = v11;
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v96 = v3;
    }

    else
    {
      v96 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v97 = type metadata accessor for __CocoaSet.Iterator();
    v98 = swift_allocObject(v97, 0xE8, 7uLL);
    v99 = 0;
    v100 = 0;
    v101 = 0;
    *(v98 + 208) = v96;
    *(v98 + 216) = 0;
    *(v98 + 16) = 0u;
    *(v98 + 32) = 0u;
    *(v98 + 48) = 0u;
    *(v98 + 64) = 0u;
    *(v98 + 80) = 0u;
    *(v98 + 96) = 0u;
    *(v98 + 112) = 0u;
    *(v98 + 128) = 0u;
    *(v98 + 144) = 0u;
    *(v98 + 160) = 0u;
    *(v98 + 176) = 0u;
    *(v98 + 192) = 0u;
    *(v98 + 224) = 0;
    v102 = v98 | 0x8000000000000000;
  }

  else
  {
    v103 = -1 << *(v3 + 32);
    v100 = ~v103;
    v99 = v3 + 56;
    v104 = -v103;
    if (v104 < 64)
    {
      v105 = ~(-1 << v104);
    }

    else
    {
      v105 = -1;
    }

    v101 = v105 & *(v3 + 56);
    v102 = v3;
  }

  v27 = v184;
  v8 = v102 & 0x7FFFFFFFFFFFFFFFLL;
  v189 = (v185 + 56);
  v177 = (v188 + 16);
  v176 = (v185 + 48);
  v175 = (v188 + 8);
  v11 = (v185 + 32);
  v181 = v100;
  v106 = (v100 + 64) >> 6;
  v183 = v185 + 16;
  v3;
  v188 = 0;
  v3 = 1;
  v186 = xmmword_18071DB30;
  v187 = v102;
  while ((v102 & 0x8000000000000000) == 0)
  {
    if (v101)
    {
      v117 = v188;
      goto LABEL_148;
    }

    v123 = v188;
    do
    {
      v117 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        __break(1u);
LABEL_180:
        inited = _StringGuts._foreignConvertedToSmall()(*&inited, v27);
        v53 = v155;
        goto LABEL_69;
      }

      if (v117 >= v106)
      {
        (*v189)(v190, 1, 1, v27);
        _sSh8IteratorV8_VariantOySS__GWOe_0(v102);
        goto LABEL_167;
      }

      v101 = *(v99 + 8 * v117);
      ++v123;
    }

    while (!v101);
    v188 = v117;
LABEL_148:
    v124 = __clz(__rbit64(v101));
    v101 &= v101 - 1;
    v125 = v185;
    v126 = *(v102 + 48) + *(v185 + 72) * (v124 | (v117 << 6));
    v127 = v190;
    (*(v185 + 16))(v190, v126, v27);
    v128 = *(v125 + 56);
    v129 = v127;
    v128(v127, 0, 1, v27);
LABEL_155:
    v133 = *v11;
    (*v11)(v95, v129, v27);
    if ((v3 & 1) == 0)
    {
      v134 = v196;
      v135 = HIBYTE(v196) & 0xF;
      if ((v196 & 0x2000000000000000) == 0)
      {
        v135 = v195 & 0xFFFFFFFFFFFFLL;
      }

      if (v135 || (v195 & ~v196 & 0x2000000000000000) != 0)
      {
        if (v196 & 0x2000000000000000) == 0 || (v136 = specialized _SmallString.init(_:appending:)(v195, v196, 0x202CuLL, 0xE200000000000000), (v138))
        {
          0xE200000000000000;
          _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v107, v108, v109, v110, v111, v112, v113, v114);
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        }

        else
        {
          v139 = v136;
          v140 = v137;
          v134;
          0xE200000000000000;
          v195 = v139;
          v196 = v140;
        }

        v27 = v184;
      }

      else
      {
        v196;
        v195 = 8236;
        v196 = 0xE200000000000000;
      }
    }

    v115 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    inited = swift_initStackObject(v115, v192);
    *(*&inited + 16) = v186;
    *(*&inited + 56) = v27;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((*&inited + 32));
    v133(boxed_opaque_existential_0Tm, v95, v27);
    specialized _debugPrint<A>(_:separator:terminator:to:)(*&inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v195);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(*&inited);
    __swift_destroy_boxed_opaque_existential_1Tm((*&inited + 32));
    v3 = 0;
    v102 = v187;
  }

  v118 = *(v8 + 216);
  v120 = v189;
  v119 = v190;
  if ((v118 & 0x8000000000000000) == 0)
  {
    if (v118 != *(v8 + 224))
    {
      v122 = *(v8 + 24);
      if (v122)
      {
        if (!(v118 >> 60))
        {
          goto LABEL_151;
        }

        __break(1u);
LABEL_183:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_205:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v121 = [*(v8 + 208) countByEnumeratingWithState:v8 + 16 objects:v8 + 80 count:16];
    *(v8 + 224) = v121;
    if (v121)
    {
      *(v8 + 216) = 0;
      v122 = *(v8 + 24);
      if (v122)
      {
        v118 = 0;
LABEL_151:
        v130 = (v122 + 8 * v118);
        if ((v130 & 7) == 0)
        {
          v131 = *v130;
          *(v8 + 216) = v118 + 1;
          swift_unknownObjectRetain(v131);
          if (_swift_isClassOrObjCExistentialType(v27, v27))
          {
            v193 = v131;
            v129 = v190;
            swift_dynamicCast(v190, &v193, qword_1EEEAC710, v27, 7uLL);
            v132 = *v120;
          }

          else
          {
            v132 = *v120;
            v132(v180, 1, 1, v27);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v131, v27, v180);
            (*v177)(v179, v180, v178);
            if ((*v176)(v179, 1, v27) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            (*v175)(v180, v178);
            swift_unknownObjectRelease(v131);
            v129 = v190;
            (*v11)(v190, v179, v27);
          }

          v132(v129, 0, 1, v27);
          v95 = v182;
          goto LABEL_155;
        }

        goto LABEL_183;
      }

      goto LABEL_205;
    }

    *(v8 + 216) = -1;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v102);
  (*v120)(v119, 1, 1, v27);
LABEL_167:
  v141 = v196;
  v142 = HIBYTE(v196) & 0xF;
  if ((v196 & 0x2000000000000000) == 0)
  {
    v142 = v195 & 0xFFFFFFFFFFFFLL;
  }

  if (v142 || (v195 & ~v196 & 0x2000000000000000) != 0)
  {
    if ((v196 & 0x2000000000000000) != 0 && (v143 = specialized _SmallString.init(_:appending:)(v195, v196, 0x295DuLL, 0xE200000000000000), (v144 & 1) == 0))
    {
      v154 = v143;
      v141;
      0xE300000000000000;
      0xE200000000000000;
      return v154;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10589, 0xE200000000000000, 0, 2, v145, v146, v147, v148, v149, v150, v151, v152);
      0xE300000000000000;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      return v195;
    }
  }

  else
  {
    v196;
    0xE300000000000000;
    return 10589;
  }
}

__objc2_class **Set._Variant.intersection(_:)(__objc2_class **a1, uint64_t a2, __objc2_class **a3, uint64_t a4)
{
  v78 = a4;
  v7 = type metadata accessor for Optional(0, a3, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v73 = *(a3 - 1);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v19 = (&v61 - v18);
  v79 = a1;
  v20 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (!v20)
    {
      v60 = v78;
      v59 = v79;

      return _NativeSet.intersection(_:)(v59, a2, a3, v60);
    }

    v23 = v78;
    v81 = v79;
    v32 = type metadata accessor for Set(0, a3, v78, v15);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v32, v33);
    v29 = a2;
    v30 = a3;
    v31 = v32;
    return _NativeSet.genericIntersection<A>(_:)(&v81, v29, v30, v31, v23, WitnessTable);
  }

  if (v20)
  {
    if (a2 < 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v22 = [v21 count];
    v23 = v78;
    v24 = _NativeSet.init(_:capacity:)(v21, v22, a3, v78);
    v81 = v79;
    v26 = type metadata accessor for Set(0, a3, v23, v25);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v26, v27);
    v29 = v24;
    v30 = a3;
    v31 = v26;
    return _NativeSet.genericIntersection<A>(_:)(&v81, v29, v30, v31, v23, WitnessTable);
  }

  v67 = v17;
  v68 = v16;
  v69 = v14;
  v70 = &_swiftEmptySetSingleton;
  v81 = &_swiftEmptySetSingleton;
  if (a2 < 0)
  {
    v35 = a2;
  }

  else
  {
    v35 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  v36 = type metadata accessor for __CocoaSet.Iterator();
  v37 = swift_allocObject(v36, 0xE8, 7uLL);
  v38 = 0;
  *(v37 + 1) = 0u;
  v72 = v37 + 2;
  v37[27] = 0;
  v39 = v37 + 27;
  *(v37 + 2) = 0u;
  *(v37 + 3) = 0u;
  *(v37 + 4) = 0u;
  *(v37 + 6) = 0u;
  *(v37 + 7) = 0u;
  *(v37 + 8) = 0u;
  *(v37 + 9) = 0u;
  v40 = v73;
  v66 = (v73 + 56);
  v65 = (v8 + 16);
  *(v37 + 10) = 0u;
  *(v37 + 11) = 0u;
  v64 = (v40 + 48);
  v63 = (v8 + 8);
  v62 = (v40 + 32);
  *(v37 + 12) = 0u;
  *(v37 + 5) = 0u;
  v71 = v37 + 10;
  v74 = v78 + 32;
  v75 = v37 + 27;
  v41 = v79 + 7;
  v37[28] = 0;
  v76 = v37;
  v77 = v40 + 16;
  v42 = (v40 + 8);
  v37[26] = v35;
  while (1)
  {
    if (v38 != v37[28])
    {
      v44 = v37[3];
      if (!v44)
      {
LABEL_44:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v38 >> 60)
      {
        __break(1u);
LABEL_43:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_22;
    }

    v43 = [v37[26] countByEnumeratingWithState:v72 objects:v71 count:16];
    v37[28] = v43;
    if (!v43)
    {
      break;
    }

    v37[27] = 0;
    v44 = v37[3];
    if (!v44)
    {
      goto LABEL_44;
    }

    v38 = 0;
LABEL_22:
    v45 = (v44 + 8 * v38);
    if ((v45 & 7) != 0)
    {
      goto LABEL_43;
    }

    v46 = *v45;
    *v39 = v38 + 1;
    swift_unknownObjectRetain(v46);
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      v80 = v46;
      swift_dynamicCast(v19, &v80, qword_1EEEAC710, a3, 7uLL);
    }

    else
    {
      v57 = v67;
      (*v66)(v67, 1, 1, a3);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v46, a3, v57);
      v58 = v68;
      (*v65)(v68, v57, v69);
      if ((*v64)(v58, 1, a3) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v46);
      (*v63)(v57, v69);
      (*v62)(v19, v58, a3);
    }

    if (v79[2] && (v47 = v79, v48 = (*(v78 + 32))(v79[5], a3), v49 = -1 << *(v47 + 32), v50 = v48 & ~v49, ((*(v41 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0))
    {
      v51 = ~v49;
      v52 = *(v73 + 72);
      v53 = *(v73 + 16);
      while (1)
      {
        v53(v13, v79[6] + v52 * v50, a3);
        v54 = (*(*(v78 + 8) + 8))(v13, v19, a3);
        (*v42)(v13, a3);
        if (v54)
        {
          break;
        }

        v50 = (v50 + 1) & v51;
        if (((*(v41 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v56 = v70[2];
      v39 = v75;
      if (v70[3] <= v56)
      {
        type metadata accessor for _NativeSet(0, a3, v78, v55);
        _NativeSet.resize(capacity:)(&v56->isa + 1);
      }

      v70 = v81;
      _NativeSet._unsafeInsertNew(_:)(v19, v81, a3);
    }

    else
    {
LABEL_14:
      (*v42)(v19, a3);
      v39 = v75;
    }

    v38 = *v39;
    v37 = v76;
    if ((*v39 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }
  }

  *v39 = -1;
LABEL_40:
  v37;
  return v70;
}

uint64_t Dictionary.Index._variant.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  result = a5(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3 & 1;
  return result;
}

Swift::Bool __swiftcall Set.Index._isUniquelyReferenced()()
{
  if (*(v0 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*v0 >= 0)
  {
    v1 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v1 = *v0;
  }

  v2 = type metadata accessor for __CocoaSet.Index.Storage();
  if (!swift_dynamicCastClass(v1, v2))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return !v1 || swift_isUniquelyReferenced_nonNull_native(v1);
}

uint64_t __CocoaDictionary.Index.handleBitPattern.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1 < 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = a3();
  if (!swift_dynamicCastClass(v3, v4))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v3;
}

unint64_t key path getter for Set.Index._asCocoa : <A>Set<A>.Index@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (*(a1 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  *a2 = v3;
  a2[1] = v4;

  return v3;
}

uint64_t (*Set.Index._asCocoa.modify(void *a1))()
{
  a1[2] = v1;
  if (*(v1 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v2;
  return Set.Index._asCocoa.modify;
}

void Set.Index._asCocoa.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  sub_180615F30(*v2, *(v2 + 8), 1);
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 1;
}

BOOL static Set.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a4;
  if (a3)
  {
    if (a6)
    {
      if (a1 >= 0)
      {
        v9 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v9 = a1;
      }

      v10 = type metadata accessor for __CocoaSet.Index.Storage();
      if (!swift_dynamicCastClass(v9, v10))
      {
        goto LABEL_21;
      }

      if (v7 >= 0)
      {
        v7 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      if (!swift_dynamicCastClass(v7, v10))
      {
LABEL_21:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (*(v9 + 16) != *(v7 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return a2 == a5;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a6)
  {
    goto LABEL_20;
  }

  if (a2 != a5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 == a4;
}

BOOL static Set.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a4;
  if (a3)
  {
    if (a6)
    {
      if (a1 >= 0)
      {
        v9 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v9 = a1;
      }

      v10 = type metadata accessor for __CocoaSet.Index.Storage();
      if (!swift_dynamicCastClass(v9, v10))
      {
        goto LABEL_21;
      }

      if (v7 >= 0)
      {
        v7 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      if (!swift_dynamicCastClass(v7, v10))
      {
LABEL_21:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (*(v9 + 16) != *(v7 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return a2 < a5;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a6)
  {
    goto LABEL_20;
  }

  if (a2 != a5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 < a4;
}

void Set.Index.hash(into:)(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    a3 = a2;
  }

  Hasher._combine(_:)(a4 & 1);
  Hasher._combine(_:)(a3);
}

Swift::Int Set.Index.hashValue.getter(Swift::UInt a1, Swift::UInt a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    a2 = a1;
  }

  Hasher._combine(_:)(a3 & 1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Set<A>.Index(uint64_t a1)
{
  specialized Hasher.init(_seed:)(a1, v3);
  Set.Index.hash(into:)(v3, *v1, *(v1 + 8), *(v1 + 16));
  return Hasher._finalize()();
}

uint64_t Set.Iterator._variant.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Set.Iterator._Variant(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

__n128 Dictionary.Keys.Iterator._base.setter(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void, void))
{
  v5 = *(a1 + 32);
  a3(*v3, v3[1], v3[2], v3[3], v3[4]);
  result = *a1;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v7;
  v3[4] = v5;
  return result;
}

__n128 Set.Iterator.init(_variant:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

__n128 Set.Iterator.init(_native:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

double Set.Iterator.init(_cocoa:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1 | 0x8000000000000000;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  return result;
}

atomic_ullong *Dictionary.Iterator._asNative.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *v1;
  v4 = v1[1];
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return v3;
}

__n128 Dictionary.Iterator._asNative.setter(__n128 *a1, uint64_t a2, void (*a3)(unint64_t, unint64_t, unint64_t, unint64_t, unint64_t))
{
  v6 = a1[1];
  v7 = *a1;
  v4 = a1[2].n128_u64[0];
  a3(v3->n128_u64[0], v3->n128_u64[1], v3[1].n128_u64[0], v3[1].n128_u64[1], v3[2].n128_u64[0]);
  result = v6;
  *v3 = v7;
  v3[1] = v6;
  v3[2].n128_u64[0] = v4;
  return result;
}

void (*Set.Iterator._asNative.modify(atomic_ullong ***a1))(atomic_ullong ***a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc(0x58, 0x4ABFuLL);
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[5] = v1;
  v5 = *v1;
  v4[6] = *v1;
  v6 = *(v1 + 8);
  v4[7] = v6;
  v7 = *(v1 + 16);
  v4[8] = v7;
  v8 = *(v1 + 24);
  v4[9] = v8;
  v9 = *(v1 + 32);
  v4[10] = v9;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v5;
  return Dictionary.Iterator._asNative.modify;
}

void Dictionary.Iterator._asNative.modify(atomic_ullong ***a1, char a2, void (*a3)(atomic_ullong *, atomic_ullong *, atomic_ullong *, atomic_ullong *, atomic_ullong *))
{
  v4 = *a1;
  v5 = **a1;
  v13 = (*a1)[1];
  v14 = (*a1)[2];
  v15 = (*a1)[3];
  v7 = (*a1)[9];
  v6 = (*a1)[10];
  v9 = (*a1)[7];
  v8 = (*a1)[8];
  v11 = (*a1)[5];
  v10 = (*a1)[6];
  v12 = (*a1)[4];
  if (a2)
  {
    v5;
    a3(v10, v9, v8, v7, v6);
    *v11 = v5;
    v11[1] = v13;
    v11[2] = v14;
    v11[3] = v15;
    v11[4] = v12;
    *v4;
  }

  else
  {
    a3(v4[6], v4[7], v4[8], v4[9], v4[10]);
    *v11 = v5;
    v11[1] = v13;
    v11[2] = v14;
    v11[3] = v15;
    v11[4] = v12;
  }

  free(v4);
}

uint64_t protocol witness for IteratorProtocol.next() in conformance Set<A>.Iterator@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2 < 0)
  {
    v10 = *(result + 16);
    v11 = __CocoaSet.Iterator.next()();
    if (v11)
    {
      v13 = v11;
      _forceBridgeFromObjectiveC<A>(_:_:)(v11, v10, v12, a2);
      swift_unknownObjectRelease(v13);
      v14 = *(*(v10 - 1) + 56);
      v15 = a2;
      v16 = 0;
    }

    else
    {
      v14 = *(*(v10 - 1) + 56);
      v15 = a2;
      v16 = 1;
    }

    return v14(v15, v16, 1, v10);
  }

  else
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[4];
    if (v8)
    {
      v9 = v2[3];
LABEL_13:
      v20 = (v8 - 1) & v8;
      v21 = *(result + 16);
      v22 = *(v21 - 8);
      (*(v22 + 16))(a2, *(v4 + 48) + *(v22 + 72) * (__clz(__rbit64(v8)) | (v9 << 6)), v21);
      result = (*(v22 + 56))(a2, 0, 1, v21);
      v19 = v9;
LABEL_14:
      *v2 = v4;
      v2[1] = v5;
      v2[2] = v6;
      v2[3] = v19;
      v2[4] = v20;
    }

    else
    {
      v17 = (v6 + 64) >> 6;
      if (v17 <= v7 + 1)
      {
        v18 = v7 + 1;
      }

      else
      {
        v18 = (v6 + 64) >> 6;
      }

      v19 = v18 - 1;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v17)
        {
          result = (*(*(*(result + 16) - 8) + 56))(a2, 1, 1);
          v20 = 0;
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v9);
        ++v7;
        if (v8)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t Set.Iterator.customMirror.getter@<X0>(Class *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v24[0] = *v3;
  v24[1] = v6;
  v25 = *(v3 + 32);
  v21[0] = 0;
  v21[1] = 0;
  v7 = *(v3 + 16);
  v26[0] = *v3;
  v26[1] = v7;
  v27 = *(v3 + 32);
  v8 = type metadata accessor for Set.Iterator._Variant(0, a1[2], a1[3], a2);
  (*(*(v8 - 8) + 16))(v22, v26, v8);
  v9 = static Mirror._superclassIterator<A>(_:_:)(v24, v21, a1);
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys05EmptyA0VySSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys05EmptyA0VySSSg5label_yp5valuetGGMR);
  v13 = swift_allocObject(v12, 0x30, 7uLL);
  v14 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v15 = swift_allocObject(v14, 0x18, 7uLL);
  v15[2] = 0;
  v16 = swift_allocObject(v14, 0x18, 7uLL);
  v16[2] = 0;
  v13[2] = v15;
  v13[3] = &protocol witness table for _IndexBox<A>;
  v13[4] = v16;
  v13[5] = &protocol witness table for _IndexBox<A>;
  v17 = *(v3 + 16);
  v22[0] = *v3;
  v22[1] = v17;
  v23 = *(v3 + 32);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v21, v22, a1, v18, 6uLL);
  v20 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  *a3 = a1;
  *(a3 + 8) = v13;
  *(a3 + 16) = 9;
  *(a3 + 24) = v9;
  *(a3 + 32) = v11;
  *(a3 + 40) = v20;
  return result;
}

void Set.customMirror.getter(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a1;
  v9 = type metadata accessor for Set(0, a2, a3, a4);
  v56[0] = 0;
  v56[1] = 0;
  a1;
  v10 = static Mirror._superclassIterator<A>(_:_:)(&v59, v56, v9);
  v12 = v11;
  v13 = swift_allocObject(&unk_1EEEADF70, 0x28, 7uLL);
  v13[2] = v9;
  v13[3] = v9;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v9, v14);
  v13[4] = WitnessTable;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
  v18 = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v9, v17);
  v19 = type metadata accessor for LazyMapSequence(255, v9, v16, v18);
  v58 = WitnessTable;
  v20 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v19, &v58);
  v22 = type metadata accessor for _CollectionBox(0, v19, v20, v21);
  v24 = swift_allocObject(v22, 0x48, 7uLL);
  v24[6] = a1;
  v24[7] = closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)partial apply;
  v24[8] = v13;
  v25 = a1 & 0xC000000000000001;
  v54 = v10;
  v55 = a1 & 0xC000000000000001;
  v53 = v12;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    a1;
    v27 = [v26 count];
    type metadata accessor for __BridgingBufferStorage(0);
    if ((v27 - 0x1000000000000000) >> 61 == 7)
    {
      if (!__OFADD__(8 * v27, 24))
      {
        v29 = swift_bufferAllocate(v28, (8 * v27 + 24), 7uLL);
        v29[2] = v27;
        [v26 getObjects_];
        v30 = type metadata accessor for __CocoaSet.Index.Storage();
        v31 = swift_allocObject(v30, 0x20, 7uLL);
        v32 = 0;
        *(v31 + 16) = v26;
        *(v31 + 24) = v29;
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v33 = (a1 + 56);
  v34 = -1 << *(a1 + 32);
  v31 = -v34;
  v35 = (63 - v34) >> 6;
  while (1)
  {
    v37 = *v33++;
    v36 = v37;
    if (v37)
    {
      break;
    }

    v25 -= 64;
    if (!--v35)
    {
      goto LABEL_13;
    }
  }

  v31 = __clz(__rbit64(v36)) - v25;
LABEL_13:
  v32 = *(a1 + 36);
LABEL_14:
  v38 = type metadata accessor for Set.Index(255, a2, a3, v23);
  v40 = type metadata accessor for _IndexBox(0, v38, &protocol witness table for Set<A>.Index, v39);
  v41 = swift_allocObject(v40, 0x21, 7uLL);
  v41[2] = v31;
  v41[3] = v32;
  *(v41 + 32) = v55 != 0;
  if (!v55)
  {
    v47 = (1 << *(a1 + 32));
    v48 = *(a1 + 36);
    goto LABEL_22;
  }

  if (a1 < 0)
  {
    v42 = a1;
  }

  else
  {
    v42 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  a1;
  v43 = [v42 count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v43 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_27;
  }

  if (__OFADD__(8 * v43, 24))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v45 = swift_bufferAllocate(v44, (8 * v43 + 24), 7uLL);
  v45[2] = v43;
  [v42 getObjects_];
  v46 = type metadata accessor for __CocoaSet.Index.Storage();
  v47 = swift_allocObject(v46, 0x20, 7uLL);
  v47[2] = v42;
  v47[3] = v45;
  v48 = v45[2];
LABEL_22:
  v49 = swift_allocObject(v40, 0x21, 7uLL);
  v49[2] = v47;
  v49[3] = v48;
  *(v49 + 32) = v55 != 0;
  v24[2] = v41;
  v24[3] = &protocol witness table for _IndexBox<A>;
  v24[4] = v49;
  v24[5] = &protocol witness table for _IndexBox<A>;
  v57 = a1;
  a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  v51 = swift_dynamicCast(v56, &v57, v9, v50, 6uLL);
  v52 = v51;
  if (v51)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }

  *a5 = v9;
  *(a5 + 8) = v24;
  *(a5 + 16) = 7;
  *(a5 + 24) = v54;
  *(a5 + 32) = v53;
  *(a5 + 40) = v52;
}

void Set.popFirst()(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(a1 + 16);
  v8 = *v3 & 0xC000000000000001;
  if (v8)
  {
    if (v6 < 0)
    {
      v9 = *v3;
    }

    else
    {
      v9 = (v6 & 0xFFFFFFFFFFFFFF8);
    }

    if ([v9 count])
    {
      v10 = [swift_unknownObjectRetain(v9) count];
      type metadata accessor for __BridgingBufferStorage(0);
      if ((v10 - 0x1000000000000000) >> 61 == 7)
      {
        if (!__OFADD__(8 * v10, 24))
        {
          v12 = swift_bufferAllocate(v11, (8 * v10 + 24), 7uLL);
          v12[2] = v10;
          [v9 getObjects_];
          v6;
          v13 = type metadata accessor for __CocoaSet.Index.Storage();
          v14 = swift_allocObject(v13, 0x20, 7uLL);
          *(v14 + 16) = v9;
          *(v14 + 24) = v12;
          v6;
          v15 = 0;
LABEL_17:
          v23 = type metadata accessor for Set._Variant(0, v7, *(a1 + 24), a2);
          Set._Variant.remove(at:)(v14, v15, v8 != 0, v23, a3);
          sub_180615F30(v14, v15, v8 != 0);
          v22 = 0;
          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  else if (*(v6 + 16))
  {
    v16 = 0;
    v17 = (v6 + 56);
    v18 = -1 << *(v6 + 32);
    v14 = -v18;
    v19 = (63 - v18) >> 6;
    while (1)
    {
      v21 = *v17++;
      v20 = v21;
      if (v21)
      {
        break;
      }

      v16 -= 64;
      if (!--v19)
      {
        goto LABEL_16;
      }
    }

    v14 = __clz(__rbit64(v20)) - v16;
LABEL_16:
    v15 = *(v6 + 36);
    goto LABEL_17;
  }

  v22 = 1;
LABEL_18:
  v24 = *(*(v7 - 8) + 56);

  v24(a3, v22, 1, v7);
}

id Set._Variant.capacity.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 24);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return [a1 count];
}

Swift::Void __swiftcall Set.reserveCapacity(_:)(Swift::Int a1)
{
  type metadata accessor for Set._Variant(0, *(v1 + 16), *(v1 + 24), v2);

  Set._Variant.reserveCapacity(_:)(a1);
}

Swift::Void __swiftcall Set._Variant.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(v1 + 16);
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = (v5 & 0xFFFFFFFFFFFFFF8);
    }

    v8 = [v7 count];
    if (v8 <= a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = v8;
    }

    *v2 = _NativeSet.init(_:capacity:)(v7, v9, v6, *(v3 + 24));
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v5);
    v12 = isUniquelyReferenced_nonNull_native;
    v14 = *v2;
    v13 = *v2;
    *v2 = 0x8000000000000000;
    if (*(v13 + 24) >= a1)
    {
      if (!isUniquelyReferenced_nonNull_native)
      {
        type metadata accessor for _NativeSet(0, v6, *(v3 + 24), v11);
        _NativeSet.copy()();
      }
    }

    else
    {
      type metadata accessor for _NativeSet(0, v6, *(v3 + 24), v11);
      if (v12)
      {
        _NativeSet.resize(capacity:)(a1);
      }

      else
      {
        _NativeSet.copyAndResize(capacity:)(a1);
      }
    }

    *v2 = v14;
  }
}

uint64_t SetAlgebra.isStrictSuperset(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 144))())
  {
    v7 = (*(*(a3 + 8) + 8))(v3, a1, a2) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t SetAlgebra.isStrictSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((*(a3 + 144))(v4))
  {
    v8 = (*(*(a3 + 8) + 8))(a1, v4, a2) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t Set<>.insert<A>(_:)(swift *a1, uint64_t a2, swift *a3, uint64_t a4)
{
  AnyHashable.init<A>(_:)(a2, a3, a4, v10);
  v6 = specialized Set._Variant.insert(_:)(v11, v10);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  (*(v8 + 48))(v10, v7, v8);
  outlined destroy of AnyHashable(v11);
  swift_dynamicCast(a1, v10, byte_1EEEAC6F8, a3, 7uLL);
  return v6 & 1;
}

uint64_t Set<>.update<A>(with:)@<X0>(uint64_t a1@<X0>, swift *a2@<X1>, uint64_t a3@<X2>, swift *a4@<X8>)
{
  AnyHashable.init<A>(_:)(a1, a2, a3, &v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v4);
  v13[0] = *v4;
  *v4 = 0x8000000000000000;
  v8 = specialized _NativeSet.update(with:isUnique:)(&v14, isUniquelyReferenced_nonNull_native, &v18);
  *v4 = v13[0];
  v9 = v20;
  if (v20)
  {
    v14 = v18;
    v10 = v21;
    v15 = v19;
    v16 = v20;
    v17 = v21;
    __swift_project_boxed_opaque_existential_0Tm(&v14, v20);
    (*(v10 + 48))(v13, v9, v10);
    outlined destroy of AnyHashable(&v14);
    swift_dynamicCast(a4, v13, byte_1EEEAC6F8, a2, 7uLL);
    return (*(*(a2 - 1) + 56))(a4, 0, 1, a2);
  }

  else
  {
    v12 = *(*(a2 - 1) + 56);

    return v12(a4, 1, 1, a2, v8);
  }
}

uint64_t Set<>.remove<A>(_:)@<X0>(uint64_t a1@<X0>, swift *a2@<X1>, uint64_t a3@<X2>, swift *a4@<X8>)
{
  v7 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  AnyHashable.init<A>(_:)(v9, a2, a3, &v14);
  specialized Set._Variant.remove(_:)(&v14, &v18);
  outlined destroy of AnyHashable(&v14);
  v10 = v20;
  if (!v20)
  {
    return (*(v7 + 56))(a4, 1, 1, a2);
  }

  v14 = v18;
  v11 = v21;
  v15 = v19;
  v16 = v20;
  v17 = v21;
  __swift_project_boxed_opaque_existential_0Tm(&v14, v20);
  (*(v11 + 48))(v13, v10, v11);
  outlined destroy of AnyHashable(&v14);
  swift_dynamicCast(a4, v13, byte_1EEEAC6F8, a2, 7uLL);
  return (*(v7 + 56))(a4, 0, 1, a2);
}

__objc2_class **_NativeSet.bridged()(__objc2_class **a1, uint64_t *a2, void *a3)
{
  if (one-time initialization token for _bridgeInitializedSuccessfully != -1)
  {
    v11 = a2;
    v12 = a3;
    swift_once(&one-time initialization token for _bridgeInitializedSuccessfully, one-time initialization function for _bridgeInitializedSuccessfully, a3);
    a2 = v11;
    a3 = v12;
  }

  if (!_bridgeInitializedSuccessfully)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _orphanedFoundationSubclassesReparented = 1;
  if (a1 == &_swiftEmptySetSingleton)
  {
    a1 = &_swiftEmptySetSingleton;
    &_swiftEmptySetSingleton;
  }

  else if (a1[2])
  {
    v4 = a3;
    v5 = a2;
    if (_swift_isClassOrObjCExistentialType(a2, a2))
    {
      v7 = type metadata accessor for _SetStorage(0, v5, v4, v6);
      if (!swift_dynamicCastClass(a1, v7))
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v8 = type metadata accessor for _SwiftDeferredNSSet(0, v5, v4, v6);
      v9 = swift_allocObject(v8, 0x20, 7uLL);
      v9[2] = 0;
      v9[3] = a1;
      return v9;
    }
  }

  else
  {
    a1;
    return &_swiftEmptySetSingleton;
  }

  return a1;
}

void *_SwiftSetNSEnumerator.init(_:)(uint64_t a1)
{
  v2 = v1;
  v2[3] = 0;
  v4 = *(a1 + 24);
  v2[2] = v4;
  v5 = v4;
  v6 = _SwiftDeferredNSSet.bridgeElements()(v5);
  a1;
  v7 = v2[3];
  v2[3] = v6;
  v7;
  v8 = 0;
  v9 = v2[2];
  v10 = (v9 + 56);
  v11 = -1 << *(v9 + 32);
  v12 = -v11;
  v13 = (63 - v11) >> 6;
  while (1)
  {
    v15 = *v10++;
    v14 = v15;
    if (v15)
    {
      break;
    }

    v8 -= 64;
    if (!--v13)
    {
      v16 = v12;
      goto LABEL_6;
    }
  }

  v16 = __clz(__rbit64(v14)) - v8;
LABEL_6:
  v2[4] = v16;
  v2[5] = v12;
  return v2;
}

void *_SwiftDeferredNSSet.bridgeElements()(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v35 - v7);
  v10 = atomic_load(v9);
  if (v10)
  {
    type metadata accessor for __BridgingHashBuffer(0);
    v12 = v11;
    v13 = swift_unknownObjectRetain(v10);
    if (!swift_dynamicCastClass(v13, v12))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v36 = v6;
    v44 = v1;
    v14 = v1[3];
    v15 = *(v14 + 32);
    type metadata accessor for __BridgingHashBuffer(0);
    v37 = v16;
    v17 = swift_allocObject(v16, ((8 << v15) + 40), 7uLL);
    v17[2] = v14;
    v17[3] = v14 + 56;
    v38 = v17;
    v39 = v14 + 56;
    v17[4] = ~(-1 << v15);
    if (1 << v15 < 64)
    {
      v18 = ~(-1 << (1 << v15));
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v14 + 56);
    v20 = ((1 << v15) + 63) >> 6;
    v42 = v3 + 16;
    v43 = v3;
    v35 = (v3 + 32);
    v40 = (v3 + 8);
    v41 = v17 + 5;
    v14;
    v21 = 0;
LABEL_8:
    if (v19)
    {
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      goto LABEL_15;
    }

    v23 = v21;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v21 >= v20)
      {
        break;
      }

      v24 = *(v39 + 8 * v21);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v19 = (v24 - 1) & v24;
LABEL_15:
        v25 = v22 | (v21 << 6);
        (*(v43 + 16))(v8, *(v44[3] + 48) + *(v43 + 72) * v25, v2);
        if (_swift_isClassOrObjCExistentialType(v2, v2))
        {
          if (v4 == 8)
          {
            v26 = *v8;
            v27 = *v40;
            swift_unknownObjectRetain(*v8);
            v27(v8, v2);
            v4 = 8;
            v41[v25] = v26;
            goto LABEL_8;
          }

LABEL_26:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v28 = v36;
        (*v35)(v36, v8, v2);
        v29 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v28, v2);
        v41[v25] = v29;
        goto LABEL_8;
      }
    }

    v30 = v38;
    v38;
    v31 = 0;
    v32 = v44 + 2;
    atomic_compare_exchange_strong(v44 + 2, &v31, v30);
    if (v31)
    {
      swift_unknownObjectRelease(v30);
    }

    v10 = atomic_load(v32);
    if (!v10)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v33 = swift_unknownObjectRetain(v10);
    if (!swift_dynamicCastClass(v33, v37))
    {
LABEL_27:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v30;
  }

  return v10;
}

atomic_ullong *_SwiftDictionaryNSEnumerator.bridgedKey(at:)(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(v2 - 1);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = (&v10 - v5);
  v7 = v1[3];
  if (v7)
  {
    v8 = *(v7 + 8 * v4 + 40);
    swift_unknownObjectRetain(v8);
  }

  else
  {
    (*(v3 + 16))(v6, *(v1[2] + 48) + *(v3 + 72) * v4, v2);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)(v6, v2);
    (*(v3 + 8))(v6, v2);
  }

  return v8;
}

atomic_ullong *_SwiftSetNSEnumerator.nextObject()()
{
  offset = v0[4].offset;
  if (offset == v0[5].offset)
  {
    return 0;
  }

  v0[4].offset = _HashTable.occupiedBucket(after:)(v0[4]).offset;
  return _SwiftDictionaryNSEnumerator.bridgedKey(at:)(offset);
}

id @objc _SwiftDictionaryNSEnumerator.nextObject()(atomic_ullong *a1, uint64_t a2, uint64_t (*a3)(atomic_ullong *))
{
  v5 = a1;
  v6 = a3(v5);
  a1;

  return v6;
}

uint64_t @objc _SwiftDictionaryNSEnumerator.countByEnumerating(with:objects:count:)(atomic_ullong *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  a1;
  v10 = a6(a3, a4);
  a1;
  return v10;
}

uint64_t _SwiftDictionaryNSEnumerator.__ivar_destroyer()
{
  *(v0 + 16);
  v1 = *(v0 + 24);

  return v1;
}

void _SwiftDictionaryNSEnumerator.__deallocating_deinit()
{
  v1 = v0[2];
  v0;
  v1;
  v2 = v0[3];
  v0;
  v2;

  swift_deallocClassInstance(v0);
}

id @objc _SwiftDeferredNSSet.copy(with:)()
{
  v0 = specialized _SwiftDeferredNSDictionary.copy(with:)();

  return swift_unknownObjectRetain(v0);
}

void *_SwiftDeferredNSSet.member(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(*v4 + 96);
  v8 = type metadata accessor for Optional(0, v7, a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v37 - v11);
  v13 = *(v7 - 1);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  _conditionallyBridgeFromObjectiveC<A>(_:_:)(a1, v7, v19, v12);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  v38 = v13;
  (*(v13 + 32))(v18, v12, v7);
  v37 = v4;
  v20 = v4[3];
  v21 = *(v20 + 40);
  v22 = *(v6 + 104);
  v23 = *(v22 + 32);
  v20;
  v41 = v22;
  v24 = v23(v21, v7, v22);
  v42 = v20;
  v25 = -1 << *(v20 + 32);
  v26 = v24 & ~v25;
  v40 = v20 + 56;
  if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_7:
    v42;
    (*(v38 + 8))(v18, v7);
    return 0;
  }

  v39 = ~v25;
  v27 = *(v38 + 16);
  v28 = *(v38 + 72);
  v29 = (v38 + 8);
  while (1)
  {
    v27(v16, *(v42 + 48) + v28 * v26, v7);
    v30 = v18;
    v31 = (*(*(v41 + 8) + 8))(v16, v18, v7);
    v32 = *v29;
    (*v29)(v16, v7);
    if (v31)
    {
      break;
    }

    v26 = (v26 + 1) & v39;
    v18 = v30;
    if (((*(v40 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v42;
  v34 = (v32)(v30, v7);
  v35 = _SwiftDeferredNSSet.bridgeElements()(v34);
  v36 = v35[v26 + 5];
  swift_unknownObjectRetain(v36);
  v35;
  return v36;
}

void *_SwiftDeferredNSSet.objectEnumerator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _SwiftSetNSEnumerator(0, *(*v4 + 96), *(*v4 + 104), a4);
  v6 = swift_allocObject(v5, 0x30, 7uLL);
  v7 = v4;
  _SwiftSetNSEnumerator.init(_:)(v7);
  return v6;
}

id @objc _SwiftDeferredNSDictionary.keyEnumerator()(atomic_ullong *a1, uint64_t a2, uint64_t (*a3)(atomic_ullong *))
{
  v5 = a1;
  v6 = a3(v5);
  a1;

  return v6;
}

uint64_t _SwiftDeferredNSSet.countByEnumerating(with:objects:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  v8 = v7 + 56;
  v9 = -1 << *(v7 + 32);
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v31 = *(a1 + 32);
  v32 = *(a1 + 48);
  if (*a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = 0;
    v13 = -v9;
    v24 = (63 - v9) >> 6;
    v25 = (v7 + 56);
    while (1)
    {
      v27 = *v25++;
      v26 = v27;
      if (v27)
      {
        break;
      }

      v23 -= 64;
      if (!--v24)
      {
        goto LABEL_27;
      }
    }

    v13 = __clz(__rbit64(v26)) - v23;
LABEL_27:
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    v12 = &_fastEnumerationStorageMutationsTarget;
    v11 = 1;
    v10 = a2;
    if (a2)
    {
LABEL_3:
      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = -v9;
        if (v13 + v9 && (v13 >= v14 || ((*(v8 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
        {
LABEL_38:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v29 = v10;
        v30 = v12;
        v15 = _SwiftDeferredNSSet.bridgeElements()(a1);
        if (a3 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v16 = 0;
        if (!a3)
        {
          goto LABEL_32;
        }

        while (1)
        {
          if (v16 == a3)
          {
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          if (v13 == v14)
          {
            break;
          }

          if (v16 == 0x1000000000000000)
          {
            __break(1u);
            goto LABEL_38;
          }

          *(a2 + 8 * v16) = v15[v13 + 5];
          v17 = v13 >> 6;
          if ((*(v8 + 8 * (v13 >> 6)) & (-2 << v13)) != 0)
          {
            v13 = __clz(__rbit64(*(v8 + 8 * (v13 >> 6)) & (-2 << v13))) | v13 & 0xFFFFFFFFFFFFFFC0;
          }

          else
          {
            v18 = v17 << 6;
            v19 = v17 + 1;
            v20 = (v7 + 64 + 8 * v17);
            while (v19 < (63 - v9) >> 6)
            {
              v22 = *v20++;
              v21 = v22;
              v18 += 64;
              ++v19;
              if (v22)
              {
                v13 = __clz(__rbit64(v21)) + v18;
                goto LABEL_19;
              }
            }

            v13 = -v9;
          }

LABEL_19:
          if (++v16 == a3)
          {
            v16 = a3;
            v14 = v13;
            goto LABEL_31;
          }
        }

        v13 = -v9;
LABEL_31:
        if ((v14 & 0x8000000000000000) == 0)
        {
LABEL_32:
          v15;
          *a1 = v11;
          *(a1 + 8) = v29;
          *(a1 + 16) = v30;
          *(a1 + 24) = v13;
          *(a1 + 32) = v31;
          *(a1 + 48) = v32;
          return v16;
        }
      }

LABEL_36:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return 0;
}

uint64_t @objc _SwiftSetNSEnumerator.init(coder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  swift_unknownObjectRetain(a3);

  return a4(v4, v5);
}

void _SwiftDeferredNSSet.__deallocating_deinit()
{
  v1 = v0[2];
  v0;
  swift_unknownObjectRelease(v1);
  v2 = v0[3];
  v0;
  v2;

  swift_deallocClassInstance(v0);
}

id __CocoaSet.member(for:)(uint64_t a1, id a2)
{
  v2 = [a2 member_];

  return v2;
}

void __CocoaSet.startIndex.getter(void *a1)
{
  v2 = [swift_unknownObjectRetain(a1) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    if (!__OFADD__(8 * v2, 24))
    {
      v4 = swift_bufferAllocate(v3, (8 * v2 + 24), 7uLL);
      v4[2] = v2;
      [a1 getObjects_];
      swift_unknownObjectRelease(a1);
      v5 = type metadata accessor for __CocoaSet.Index.Storage();
      v6 = swift_allocObject(v5, 0x20, 7uLL);
      v6[2] = a1;
      v6[3] = v4;
      swift_unknownObjectRetain(a1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __CocoaSet.endIndex.getter(void *a1)
{
  v2 = [swift_unknownObjectRetain(a1) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    if (!__OFADD__(8 * v2, 24))
    {
      v4 = swift_bufferAllocate(v3, (8 * v2 + 24), 7uLL);
      v4[2] = v2;
      [a1 getObjects_];
      swift_unknownObjectRelease(a1);
      v5 = type metadata accessor for __CocoaSet.Index.Storage();
      v6 = swift_allocObject(v5, 0x20, 7uLL);
      v6[2] = a1;
      v6[3] = v4;
      swift_unknownObjectRetain(a1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t __CocoaSet.index(after:)(int64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = type metadata accessor for __CocoaSet.Index.Storage();
  if (!swift_dynamicCastClass(v6, v7))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v6 + 16) != a3 || *(*(v6 + 24) + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

uint64_t __CocoaSet.formIndex(after:isUnique:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  if (*a1 < 0)
  {
    v6 = *a1;
  }

  else
  {
    v6 = *a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = type metadata accessor for __CocoaSet.Index.Storage();
  result = swift_dynamicCastClass(v6, v7);
  if (!result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v6 + 16) != a3 || v5 >= *(*(v6 + 24) + 16))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  a1[1] = v5 + 1;
  return result;
}

void *__CocoaSet.index(for:)(void *a1, id a2)
{
  v4 = [a2 member_];
  if (!v4)
  {
    return 0;
  }

  swift_unknownObjectRelease(v4);
  v5 = [swift_unknownObjectRetain(a2) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v5 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(8 * v5, 24))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = swift_bufferAllocate(v6, (8 * v5 + 24), 7uLL);
  v7[2] = v5;
  [a2 getObjects_];
  swift_unknownObjectRelease(a2);
  if ((v7[2] & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  v8 = 3;
  do
  {
    v9 = v7[v8];
    swift_unknownObjectRetain(v9);
    isEqual = swift_stdlib_NSObject_isEqual(a1, v9);
    swift_unknownObjectRelease(v9);
    ++v8;
  }

  while ((isEqual & 1) == 0);
  v11 = type metadata accessor for __CocoaSet.Index.Storage();
  v12 = swift_allocObject(v11, 0x20, 7uLL);
  v12[2] = a2;
  v12[3] = v7;
  swift_unknownObjectRetain(a2);
  return v12;
}

id __CocoaSet.member(for:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = type metadata accessor for __CocoaSet.Index.Storage();
  if (!swift_dynamicCastClass(v3, v4))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(v3 + 24);
  if (*(v5 + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *(v5 + 8 * a2 + 24);

  return swift_unknownObjectRetain(v6);
}

void __CocoaDictionary.Index.Storage.__deallocating_deinit()
{
  swift_unknownObjectRelease(*(v0 + 16));
  *(v0 + 24);

  swift_deallocClassInstance(v0);
}

uint64_t __CocoaSet.Iterator.init(_:)(uint64_t a1)
{
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 216) = 0;
  *(v1 + 224) = 0;
  *(v1 + 208) = a1;
  return v1;
}

void __CocoaSet.Iterator.__deallocating_deinit()
{
  swift_unknownObjectRelease(*(v0 + 208));

  swift_deallocClassInstance(v0);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance __CocoaDictionary@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(uint64_t)@<X3>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = a1();
  v8 = swift_allocObject(v7, 0xE8, 7uLL);
  result = a2(v6);
  *a3 = v8;
  return result;
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance __CocoaSet()
{
  v1 = *v0;
  v2 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);
  swift_unknownObjectRelease(v1);
  return v2;
}

id protocol witness for IteratorProtocol.next() in conformance __CocoaSet.Iterator@<X0>(void *a1@<X8>)
{
  result = __CocoaSet.Iterator.next()();
  *a1 = result;
  return result;
}

int64_t Set._bridgeToObjectiveCImpl()(int64_t result, uint64_t *a2, void *a3)
{
  if ((result & 0xC000000000000001) == 0)
  {
    return _NativeSet.bridged()(result, a2, a3);
  }

  if (result >= 0)
  {
    return result & 0xFFFFFFFFFFFFFF8;
  }

  return result;
}

__objc2_class **static Set._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)(__objc2_class **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _SwiftDeferredNSSet(0, a2, a3, a4);
  v8 = swift_unknownObjectRetain(a1);
  v9 = swift_dynamicCastClass(v8, v7);
  if (v9)
  {
    v11 = v9;
    swift_unknownObjectRelease(a1);
    v12 = *(v11 + 24);
    v12;
    swift_unknownObjectRelease(a1);
  }

  else
  {
    v13 = type metadata accessor for _SetStorage(0, a2, a3, v10);
    v12 = swift_dynamicCastClass(a1, v13);
    swift_unknownObjectRelease(a1);
    if (!v12)
    {
      swift_unknownObjectRelease(a1);
      if (a1 == &_swiftEmptySetSingleton)
      {
        return &_swiftEmptySetSingleton;
      }

      else
      {
        return 0;
      }
    }
  }

  return v12;
}

uint64_t _SetBuilder._target.setter(uint64_t a1)
{
  result = *v1;
  *v1 = a1;
  return result;
}

__objc2_class **_SetBuilder.init(count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return &_swiftEmptySetSingleton;
  }

  type metadata accessor for _SetStorage(0, a2, a3, a4);
  return static _SetStorage.allocate(capacity:)(a1);
}

uint64_t _SetBuilder.add(member:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 16) >= v2[1])
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v4 + 16))(v6);
  return _NativeSet._unsafeInsertNew(_:)(v6, v7, v3);
}

uint64_t _SetBuilder.take()(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void _swift_setDownCastIndirect(unint64_t *a1, uint64_t *a2, uint64_t *a3, ValueMetadata *a4, void *a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *a1;
  v13 = _setDownCast<A, B>(_:)(v12, a3, a4, a5, a6);
  v11;
  *a2 = v13;
}

uint64_t _setDownCast<A, B>(_:)(int64_t a1, uint64_t *a2, ValueMetadata *a3, void *a4, uint64_t a5)
{
  v104 = a5;
  v101 = *(a2 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v103 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional(0, v12, v13, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v88 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v88 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v88 - v26;
  if (_swift_isClassOrObjCExistentialType(a2, a2) && _swift_isClassOrObjCExistentialType(a3, &a3->Kind))
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v29 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v29 = a1;
      }

      v30 = (~(v29 >> 1) & 0x4000000000000000 | v29);
      a1;
    }

    else
    {
      v86 = a1;
      v87 = _NativeSet.bridged()(v86, a2, a4);
      return ~(v87 >> 1) & 0x4000000000000000 | v87;
    }

    return v30;
  }

  v93 = v22;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v32 = a1;
    }

    else
    {
      v32 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v33 = [v32 count];
    v99 = v16;
    if (v33)
    {
      goto LABEL_12;
    }

LABEL_14:
    v30 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  v33 = *(a1 + 16);
  v99 = v16;
  if (!v33)
  {
    goto LABEL_14;
  }

LABEL_12:
  type metadata accessor for _SetStorage(0, a3, v104, v28);
  v30 = static _SetStorage.allocate(capacity:)(v33);
LABEL_15:
  v105[1] = v30;
  v96 = v30;
  if (a3 != &type metadata for String)
  {
    v91 = v15;
    v92 = v19;
    v98 = a3;
    if (v31)
    {
      if (a1 < 0)
      {
        v34 = a1;
      }

      else
      {
        v34 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v35 = type metadata accessor for __CocoaSet.Iterator();
      v36 = swift_allocObject(v35, 0xE8, 7uLL);
      v37 = 0;
      v38 = 0;
      v39 = 0;
      *(v36 + 208) = v34;
      *(v36 + 216) = 0;
      *(v36 + 16) = 0u;
      *(v36 + 32) = 0u;
      *(v36 + 48) = 0u;
      *(v36 + 64) = 0u;
      *(v36 + 80) = 0u;
      *(v36 + 96) = 0u;
      *(v36 + 112) = 0u;
      *(v36 + 128) = 0u;
      *(v36 + 144) = 0u;
      *(v36 + 160) = 0u;
      *(v36 + 176) = 0u;
      *(v36 + 192) = 0u;
      *(v36 + 224) = 0;
      v40 = v36 | 0x8000000000000000;
    }

    else
    {
      v48 = -1 << *(a1 + 32);
      v38 = ~v48;
      v37 = a1 + 56;
      v49 = -v48;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      else
      {
        v50 = -1;
      }

      v39 = v50 & *(a1 + 56);
      v40 = a1;
    }

    v51 = v40 & 0x7FFFFFFFFFFFFFFFLL;
    v100 = (v101 + 56);
    v89 = (v101 + 48);
    v90 = (v99 + 16);
    v88 = (v99 + 8);
    v52 = (v101 + 32);
    v53 = (v38 + 64) >> 6;
    v94 = v38;
    v95 = v101 + 16;
    a1;
    v30;
    v99 = 0;
    v97 = v40;
    while ((v40 & 0x8000000000000000) == 0)
    {
      if (v39)
      {
        v54 = v99;
        goto LABEL_32;
      }

      v61 = v99;
      do
      {
        v54 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v54 >= v53)
        {
          goto LABEL_54;
        }

        v39 = *(v37 + 8 * v54);
        ++v61;
      }

      while (!v39);
      v99 = v54;
LABEL_32:
      v55 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v56 = v101;
      (*(v101 + 16))(v25, *(v40 + 48) + *(v101 + 72) * (v55 | (v54 << 6)), a2);
      (*(v56 + 56))(v25, 0, 1, a2);
LABEL_33:
      v57 = v103;
      (*v52)(v103, v25, a2);
      v58 = v102;
      v59 = v57;
      v60 = v98;
      swift_dynamicCast(v102, v59, a2, v98, 7);
      _NativeSet._unsafeInsertNew(_:)(v58, v30, v60);
      v40 = v97;
    }

    v62 = *(v51 + 216);
    if ((v62 & 0x8000000000000000) == 0)
    {
      if (v62 != *(v51 + 224))
      {
        v64 = *(v51 + 24);
        if (v64)
        {
          v65 = v100;
          if (v62 >> 60)
          {
            goto LABEL_81;
          }

          goto LABEL_48;
        }

LABEL_83:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v63 = [*(v51 + 208) countByEnumeratingWithState:v51 + 16 objects:v51 + 80 count:16];
      *(v51 + 224) = v63;
      if (v63)
      {
        *(v51 + 216) = 0;
        v64 = *(v51 + 24);
        if (v64)
        {
          v62 = 0;
          v65 = v100;
LABEL_48:
          v66 = (v64 + 8 * v62);
          if ((v66 & 7) == 0)
          {
            v67 = *v66;
            *(v51 + 216) = v62 + 1;
            swift_unknownObjectRetain(v67);
            if (_swift_isClassOrObjCExistentialType(a2, a2))
            {
              v105[0] = v67;
              swift_dynamicCast(v25, v105, &unk_1EEEAC710, a2, 7);
              v68 = *v65;
            }

            else
            {
              v68 = *v65;
              v68(v93, 1, 1, a2);
              _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v67, a2, v93);
              (*v90)(v92, v93, v91);
              if ((*v89)(v92, 1, a2) == 1)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              swift_unknownObjectRelease(v67);
              (*v88)(v93, v91);
              (*v52)(v25, v92, a2);
            }

            v68(v25, 0, 1, a2);
            v30 = v96;
            goto LABEL_33;
          }

          goto LABEL_82;
        }

        goto LABEL_83;
      }

      *(v51 + 216) = -1;
    }

LABEL_54:
    (*v100)(v25, 1, 1, a2);
    _sSh8IteratorV8_VariantOySS__GWOe_0(v40);
    goto LABEL_73;
  }

  if (v31)
  {
    if (a1 < 0)
    {
      v41 = a1;
    }

    else
    {
      v41 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v42 = type metadata accessor for __CocoaSet.Iterator();
    v43 = swift_allocObject(v42, 0xE8, 7uLL);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    *(v43 + 208) = v41;
    *(v43 + 216) = 0;
    *(v43 + 16) = 0u;
    *(v43 + 32) = 0u;
    *(v43 + 48) = 0u;
    *(v43 + 64) = 0u;
    *(v43 + 80) = 0u;
    *(v43 + 96) = 0u;
    *(v43 + 112) = 0u;
    *(v43 + 128) = 0u;
    *(v43 + 144) = 0u;
    *(v43 + 160) = 0u;
    *(v43 + 176) = 0u;
    *(v43 + 192) = 0u;
    *(v43 + 224) = 0;
    v47 = v43 | 0x8000000000000000;
  }

  else
  {
    v69 = -1 << *(a1 + 32);
    v45 = ~v69;
    v44 = a1 + 56;
    v70 = -v69;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    else
    {
      v71 = -1;
    }

    v46 = v71 & *(a1 + 56);
    v47 = a1;
  }

  v72 = (v101 + 56);
  v73 = (v45 + 64) >> 6;
  v98 = v45;
  v99 = v101 + 16;
  v74 = (v101 + 32);
  a1;
  v96;
  v100 = 0;
  while ((v47 & 0x8000000000000000) != 0)
  {
    v82 = __CocoaSet.Iterator.next()();
    if (!v82)
    {
      goto LABEL_72;
    }

    v84 = v82;
    _forceBridgeFromObjectiveC<A>(_:_:)(v82, a2, v83, v27);
    swift_unknownObjectRelease(v84);
LABEL_62:
    (*v72)(v27, 0, 1, a2);
    v77 = v103;
    (*v74)(v103, v27, a2);
    v78 = v102;
    swift_dynamicCast(v102, v77, a2, &type metadata for String, 7);
    v80 = type metadata accessor for _NativeSet(0, &type metadata for String, v104, v79);
    _NativeSet._unsafeUpdate(with:)(v78, v80);
  }

  if (v46)
  {
    v75 = v100;
LABEL_61:
    v76 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    (*(v101 + 16))(v27, *(v47 + 48) + *(v101 + 72) * (v76 | (v75 << 6)), a2);
    goto LABEL_62;
  }

  v81 = v100;
  while (1)
  {
    v75 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      goto LABEL_80;
    }

    if (v75 >= v73)
    {
      break;
    }

    v46 = *(v44 + 8 * v75);
    v81 = (v81 + 1);
    if (v46)
    {
      v100 = v75;
      goto LABEL_61;
    }
  }

LABEL_72:
  (*v72)(v27, 1, 1, a2);
  _sSh8IteratorV8_VariantOySS__GWOe_0(v47);
  v30 = v96;
LABEL_73:
  v30;
  return v30;
}

BOOL _swift_setDownCastConditionalIndirect(unint64_t *a1, uint64_t *a2, swift *a3, ValueMetadata *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *a1;
  v13 = _setDownCastConditional<A, B>(_:)(v11, a3, a4, v12, a6);
  v10;
  if (v13)
  {
    *a2 = v13;
  }

  return v13 != 0;
}

uint64_t _setDownCastConditional<A, B>(_:)(int64_t a1, swift *a2, ValueMetadata *a3, uint64_t a4, uint64_t a5)
{
  v146 = a5;
  v143 = *(a2 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v137 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v139 = &v120 - v10;
  v13 = type metadata accessor for Optional(0, v11, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v15);
  v138 = &v120 - v19;
  Description = a3[-1].Description;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v136 = (&v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v20);
  v145 = &v120 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v135 = &v120 - v24;
  v27 = type metadata accessor for Optional(0, a2, v25, v26);
  v133 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v144 = &v120 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v142 = &v120 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v141 = &v120 - v36;
  v37 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v38 = a1;
    }

    else
    {
      v38 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v39 = [v38 count];
  }

  else
  {
    v39 = *(a1 + 16);
  }

  v123 = v30;
  v124 = v27;
  if (v39)
  {
    type metadata accessor for _SetStorage(0, a3, v146, v35);
    v40 = static _SetStorage.allocate(capacity:)(v39);
  }

  else
  {
    v40 = &_swiftEmptySetSingleton;
  }

  v41 = v144;
  v147[1] = v40;
  v140 = v40;
  v126 = v13;
  v125 = v14;
  if (a3 != &type metadata for String)
  {
    v134 = v17;
    if (v37)
    {
      v42 = a2;
      if (a1 < 0)
      {
        v43 = a1;
      }

      else
      {
        v43 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v44 = type metadata accessor for __CocoaSet.Iterator();
      v45 = swift_allocObject(v44, 0xE8, 7uLL);
      v127 = 0;
      v128 = 0;
      *(v45 + 208) = v43;
      *(v45 + 216) = 0;
      v46 = 0;
      *(v45 + 16) = 0u;
      *(v45 + 32) = 0u;
      *(v45 + 48) = 0u;
      *(v45 + 64) = 0u;
      *(v45 + 80) = 0u;
      *(v45 + 96) = 0u;
      *(v45 + 112) = 0u;
      *(v45 + 128) = 0u;
      *(v45 + 144) = 0u;
      *(v45 + 160) = 0u;
      *(v45 + 176) = 0u;
      *(v45 + 192) = 0u;
      *(v45 + 224) = 0;
      v47 = v45 | 0x8000000000000000;
    }

    else
    {
      v42 = a2;
      v54 = -1;
      v55 = -1 << *(a1 + 32);
      v128 = ~v55;
      v56 = *(a1 + 56);
      v127 = a1 + 56;
      v57 = -v55;
      if (v57 < 64)
      {
        v54 = ~(-1 << v57);
      }

      v46 = v54 & v56;
      v47 = a1;
    }

    v139 = v47;
    v130 = v47 & 0x7FFFFFFFFFFFFFFFLL;
    v138 = (v143 + 56);
    v122 = (v133 + 2);
    v121 = (v143 + 48);
    v120 = (v133 + 1);
    v135 = (v143 + 32);
    v58 = (v128 + 64) >> 6;
    v129 = v143 + 16;
    v132 = (Description + 6);
    v133 = (Description + 7);
    Description += 4;
    a1;
    v59 = 0;
    v60 = v139;
    if ((v139 & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_25:
    v61 = v130;
    v62 = *(v130 + 216);
    v63 = v42;
    v64 = v142;
    if ((v62 & 0x8000000000000000) == 0)
    {
      if (v62 != *(v130 + 224))
      {
        v66 = *(v130 + 24);
        if (v66)
        {
          v67 = v138;
          if (v62 >> 60)
          {
            goto LABEL_76;
          }

          goto LABEL_32;
        }

LABEL_78:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v65 = [*(v130 + 208) countByEnumeratingWithState:v130 + 16 objects:v130 + 80 count:16];
      v61 = v130;
      *(v130 + 224) = v65;
      if (v65)
      {
        *(v61 + 216) = 0;
        v66 = *(v61 + 24);
        if (v66)
        {
          v62 = 0;
          v67 = v138;
LABEL_32:
          v68 = (v66 + 8 * v62);
          if ((v68 & 7) != 0)
          {
            goto LABEL_77;
          }

          v141 = v46;
          v69 = *v68;
          *(v61 + 216) = v62 + 1;
          swift_unknownObjectRetain(v69);
          if (_swift_isClassOrObjCExistentialType(v63, v63))
          {
            v147[0] = v69;
            swift_dynamicCast(v64, v147, &unk_1EEEAC710, v63, 7);
            v70 = *v67;
          }

          else
          {
            v70 = *v67;
            v70(v41, 1, 1, v63);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v69, v63, v41);
            v72 = v41;
            v73 = v123;
            v74 = v124;
            (*v122)(v123, v72, v124);
            if ((*v121)(v73, 1, v63) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            swift_unknownObjectRelease(v69);
            (*v120)(v72, v74);
            v64 = v142;
            (*v135)(v142, v73, v63);
          }

          v70(v64, 0, 1, v63);
          v71 = v59;
          v46 = v141;
          while (1)
          {
            v78 = v137;
            (*v135)(v137, v64, v63);
            v79 = v78;
            v80 = v134;
            v81 = swift_dynamicCast(v134, v79, v63, a3, 6);
            (*v133)(v80, v81 ^ 1u, 1, a3);
            v82 = (*v132)(v80, 1, a3);
            v40 = v140;
            if (v82 == 1)
            {
              break;
            }

            v42 = v63;
            v83 = *Description;
            v84 = v136;
            (*Description)(v136, v80, a3);
            v85 = v145;
            v83(v145, v84, a3);
            _NativeSet._unsafeInsertNew(_:)(v85, v40, a3);
            v59 = v71;
            v41 = v144;
            v60 = v139;
            if ((v139 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

LABEL_38:
            v75 = v46;
            v71 = v59;
            v63 = v42;
            v64 = v142;
            if (!v46)
            {
              v76 = v59;
              while (1)
              {
                v71 = v76 + 1;
                if (__OFADD__(v76, 1))
                {
                  break;
                }

                if (v71 >= v58)
                {
                  v86 = v60;
                  (*v138)(v142, 1, 1, v63);
                  v87 = v86;
                  goto LABEL_48;
                }

                v75 = *(v127 + 8 * v71);
                ++v76;
                if (v75)
                {
                  goto LABEL_43;
                }
              }

              __break(1u);
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_43:
            v141 = v46;
            v46 = (v75 - 1) & v75;
            v77 = v143;
            (*(v143 + 16))(v142, *(v60 + 48) + *(v143 + 72) * (__clz(__rbit64(v75)) | (v71 << 6)), v63);
            (*(v77 + 56))(v64, 0, 1, v63);
          }

          _sSh8IteratorV8_VariantOySS__GWOe_0(v139);
          v40;
          (*(v125 + 8))(v80, v126);
          return 0;
        }

        goto LABEL_78;
      }

      *(v61 + 216) = -1;
      v60 = v139;
    }

    v119 = v60;
    (*v138)(v64, 1, 1, v63);
    v87 = v119;
LABEL_48:
    _sSh8IteratorV8_VariantOySS__GWOe_0(v87);
    return v40;
  }

  if (v37)
  {
    if (a1 < 0)
    {
      v48 = a1;
    }

    else
    {
      v48 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v49 = type metadata accessor for __CocoaSet.Iterator();
    v50 = swift_allocObject(v49, 0xE8, 7uLL);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    *(v50 + 208) = v48;
    *(v50 + 216) = 0;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 0u;
    *(v50 + 48) = 0u;
    *(v50 + 64) = 0u;
    *(v50 + 80) = 0u;
    *(v50 + 96) = 0u;
    *(v50 + 112) = 0u;
    *(v50 + 128) = 0u;
    *(v50 + 144) = 0u;
    *(v50 + 160) = 0u;
    *(v50 + 176) = 0u;
    *(v50 + 192) = 0u;
    *(v50 + 224) = 0;
    v144 = v50 | 0x8000000000000000;
  }

  else
  {
    v88 = -1 << *(a1 + 32);
    v52 = ~v88;
    v51 = a1 + 56;
    v89 = -v88;
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    else
    {
      v90 = -1;
    }

    v53 = v90 & *(a1 + 56);
    v144 = a1;
  }

  v91 = v141;
  v142 = (v143 + 56);
  v92 = (v52 + 64) >> 6;
  v132 = v52;
  v133 = (v143 + 16);
  v136 = (Description + 7);
  v137 = (v143 + 32);
  v134 = (Description + 6);
  v93 = (Description + 4);
  a1;
  v94 = 0;
  v95 = v144;
  if ((v144 & 0x8000000000000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_54:
  v96 = __CocoaSet.Iterator.next()();
  if (v96)
  {
    v98 = v141;
    v99 = v96;
    _forceBridgeFromObjectiveC<A>(_:_:)(v96, a2, v97, v141);
    v100 = v99;
    v91 = v98;
    swift_unknownObjectRelease(v100);
    v101 = v94;
    v102 = v53;
    while (1)
    {
      (*v142)(v91, 0, 1, a2);
      v105 = v91;
      v106 = v139;
      (*v137)(v139, v105, a2);
      v107 = v106;
      v108 = v138;
      v109 = swift_dynamicCast(v138, v107, a2, &type metadata for String, 6);
      (*v136)(v108, v109 ^ 1u, 1, &type metadata for String);
      if ((*v134)(v108, 1, &type metadata for String) == 1)
      {
        _sSh8IteratorV8_VariantOySS__GWOe_0(v144);
        v140;
        (*(v125 + 8))(v108, v126);
        return 0;
      }

      v110 = v108;
      v111 = *v93;
      v112 = v135;
      (*v93)(v135, v110, &type metadata for String);
      v113 = v145;
      v111(v145, v112, &type metadata for String);
      v115 = type metadata accessor for _NativeSet(0, &type metadata for String, v146, v114);
      _NativeSet._unsafeUpdate(with:)(v113, v115);
      v94 = v101;
      v53 = v102;
      v91 = v141;
      v95 = v144;
      if ((v144 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

LABEL_56:
      v103 = v53;
      v101 = v94;
      if (!v53)
      {
        break;
      }

LABEL_61:
      v102 = (v103 - 1) & v103;
      (*(v143 + 16))(v91, *(v95 + 48) + *(v143 + 72) * (__clz(__rbit64(v103)) | (v101 << 6)), a2);
    }

    v104 = v94;
    while (1)
    {
      v101 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        goto LABEL_75;
      }

      if (v101 >= v92)
      {
        break;
      }

      v103 = *(v51 + 8 * v101);
      ++v104;
      if (v103)
      {
        goto LABEL_61;
      }
    }

    v116 = v95;
    (*v142)(v91, 1, 1, a2);
    v117 = v116;
  }

  else
  {
    (*v142)(v141, 1, 1, a2);
    v117 = v144;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v117);
  return v140;
}

uint64_t _SetStorage.deinit()
{
  if (*(v0 + 16) < 1)
  {
    return v0;
  }

  v1 = *(*v0 + 168);
  if ((*(*(v1 - 8) + 82) & 1) == 0)
  {
    return v0;
  }

  v3 = *(v1 - 8);
  v4 = 0;
  v5 = 1 << *(v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = *(v0 + 48);
  v8 = v6 & *(v0 + 56);
  for (i = (v5 + 63) >> 6; v8; result = (*(v3 + 8))(v7 + *(v3 + 72) * (v10 | (v4 << 6)), v1))
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    ;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= i)
    {
      return v0;
    }

    v12 = *(v0 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void _SetStorage.__deallocating_deinit()
{
  _SetStorage.deinit();

  swift_deallocClassInstance(v0);
}

id @objc _SetStorage.copy(with:)()
{
  v0 = specialized _SwiftDeferredNSDictionary.copy(with:)();

  return swift_unknownObjectRetain(v0);
}

void *_SetStorage.objectEnumerator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _SwiftSetNSEnumerator(0, *(*v4 + 168), *(*v4 + 176), a4);
  v6 = swift_allocObject(v5, 0x30, 7uLL);
  v7 = v6;
  v8 = 0;
  v6[2] = v4;
  v6[3] = 0;
  v9 = (v4 + 7);
  v10 = -1 << *(v4 + 32);
  v11 = -v10;
  v12 = (63 - v10) >> 6;
  while (1)
  {
    v14 = *v9++;
    v13 = v14;
    if (v14)
    {
      break;
    }

    v8 -= 64;
    if (!--v12)
    {
      v15 = v11;
      goto LABEL_6;
    }
  }

  v15 = __clz(__rbit64(v13)) - v8;
LABEL_6:
  v6[4] = v15;
  v6[5] = v11;
  v4;
  return v7;
}

void *@objc _SetStorage.objectEnumerator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _SetStorage.objectEnumerator()(a1, a2, a3, a4);

  return v4;
}

uint64_t _SetStorage.countByEnumerating(with:objects:count:)(uint64_t a1, atomic_ullong a2)
{
  v4 = *(*v2 + 168);
  v5 = *(v4 - 1);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v43 - v11);
  v13 = (v2 + 56);
  v14 = -1 << *(v2 + 32);
  v15 = *v8;
  v16 = v8[1];
  v17 = v8[2];
  v18 = v8[3];
  v19 = *(v8 + 3);
  v59 = *(v8 + 2);
  v60 = v19;
  if (!v15)
  {
    goto LABEL_26;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_3:
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  v20 = -v14;
  if (v18 + v14 && (v18 >= v20 || ((*(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v9 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v9)
  {
    v45 = v16;
    v46 = v15;
    v21 = 0;
    v22 = v5 + 2;
    v43 = (v5 + 4);
    v44 = v10;
    v58 = (v5 + 1);
    v49 = (63 - v14) >> 6;
    v47 = v17;
    v48 = v2 + 64;
    while (1)
    {
      if (v21 == v9)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v18 == v20)
      {
        break;
      }

      v52 = v13;
      v56 = v8;
      v57 = v9;
      v23 = *(v2 + 48) + v5[9] * v18;
      v24 = v5[2];
      v50 = v22;
      v24(v12, v23, v4);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v4, v4);
      v54 = v4;
      v55 = v12;
      v53 = v6;
      v51 = v20;
      if (isClassOrObjCExistentialType)
      {
        if (v6 != 8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v6 = *v12;
        v26 = v5;
        v27 = a2;
        v28 = *v58;
        swift_unknownObjectRetain(*v12);
        v8 = v28(v12, v4);
        a2 = v27;
        v5 = v26;
        if (v21 == 0x1000000000000000)
        {
LABEL_25:
          __break(1u);
LABEL_26:
          v36 = 0;
          v18 = -v14;
          v37 = (63 - v14) >> 6;
          v38 = v13;
          while (1)
          {
            v40 = *v38++;
            v39 = v40;
            if (v40)
            {
              break;
            }

            v36 -= 64;
            if (!--v37)
            {
              goto LABEL_34;
            }
          }

          v18 = __clz(__rbit64(v39)) - v36;
LABEL_34:
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          v17 = &_fastEnumerationStorageMutationsTarget;
          v15 = 1;
          v16 = a2;
          if (!a2)
          {
            return 0;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v35 = v44;
        (*v43)(v44, v12, v4);
        v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v35, v4);
        v6 = v8;
        if (v21 == 0x1000000000000000)
        {
          goto LABEL_25;
        }
      }

      *(a2 + 8 * v21) = v6;
      swift_unknownObjectRelease(v6);
      v29 = v18 >> 6;
      v13 = v52;
      if ((v52[v18 >> 6] & (-2 << v18)) != 0)
      {
        v18 = __clz(__rbit64(v52[v18 >> 6] & (-2 << v18))) | v18 & 0xFFFFFFFFFFFFFFC0;
        v8 = v56;
        v9 = v57;
        v4 = v54;
        v12 = v55;
        v6 = v53;
        v22 = v50;
        v20 = v51;
      }

      else
      {
        v30 = v29 << 6;
        v31 = v29 + 1;
        v32 = (v48 + 8 * v29);
        v8 = v56;
        v9 = v57;
        v4 = v54;
        v12 = v55;
        v6 = v53;
        v22 = v50;
        v20 = v51;
        while (v31 < v49)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            v18 = __clz(__rbit64(v33)) + v30;
            goto LABEL_22;
          }
        }

        v18 = v51;
      }

LABEL_22:
      if (++v21 == v9)
      {
        v21 = v9;
        v20 = v18;
        goto LABEL_39;
      }
    }

    v18 = v20;
LABEL_39:
    v15 = v46;
    v17 = v47;
    v16 = v45;
    if (v20 < 0)
    {
LABEL_40:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v21 = 0;
  }

  *v8 = v15;
  v8[1] = v16;
  v8[2] = v17;
  v8[3] = v18;
  v41 = v60;
  *(v8 + 2) = v59;
  *(v8 + 3) = v41;
  return v21;
}

uint64_t @objc _SwiftDeferredNSDictionary.countByEnumerating(with:objects:count:)(atomic_ullong *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  a1;
  v11 = a6(a3, a4, a5);
  a1;
  return v11;
}

atomic_ullong *_SetStorage.member(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *(v7 + 168);
  v9 = type metadata accessor for Optional(0, v8, a3, a4);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v35 - v12);
  v14 = *(v8 - 1);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  _conditionallyBridgeFromObjectiveC<A>(_:_:)(a1, v8, v20, v13);
  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  (*(v14 + 32))(v19, v13, v8);
  v21 = v5[5];
  v22 = *(*(v7 + 176) + 32);
  v39 = *(v7 + 176);
  v40 = v19;
  v23 = v22(v21, v8);
  v24 = -1 << *(v5 + 32);
  v25 = v23 & ~v24;
  v36 = v5 + 7;
  if (((*(v5 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) == 0)
  {
    v32 = *(v14 + 8);
LABEL_9:
    v32(v40, v8);
    return 0;
  }

  v26 = v14;
  v27 = ~v24;
  v28 = *(v26 + 16);
  v26 += 16;
  v37 = v28;
  v38 = v5;
  v29 = *(v26 + 56);
  v30 = (v26 - 8);
  v35 = (v26 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (1)
  {
    v37(v17, v38[6] + v29 * v25, v8);
    v31 = (*(*(v39 + 8) + 8))(v17, v40, v8);
    v32 = *v30;
    (*v30)(v17, v8);
    if (v31)
    {
      break;
    }

    v25 = (v25 + 1) & v27;
    if (((*(v36 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v32(v40, v8);
  v37(v17, v38[6] + v29 * v25, v8);
  v34 = _bridgeAnythingToObjectiveC<A>(_:)(v17, v8);
  v32(v17, v8);
  return v34;
}

id @objc _SwiftDeferredNSDictionary.object(forKey:)(atomic_ullong *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  swift_unknownObjectRetain(a3);
  a1;
  v7 = a4(a3);
  swift_unknownObjectRelease(a3);
  a1;

  return v7;
}

uint64_t (*Set._Variant.asNative.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return _ArrayBody.count.modify;
}

uint64_t Set._Variant._migrateToNative(_:removing:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v8 = *(a3 + 16);
  v34 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v4;
  *v4;
  v11 = [a1 count];
  v12 = *(a3 + 24);
  v13 = swift_unknownObjectRetain(a1);
  v14 = _NativeSet.init(_:capacity:)(v13, v11, v8, v12);
  v42 = v14;
  v15 = v14[5];
  v16 = *(v12 + 32);
  v14;
  v40 = v12;
  v41 = a2;
  v17 = v16(v15, v8, v12);
  v18 = -1 << *(v14 + 32);
  v19 = v17 & ~v18;
  v36 = v14 + 7;
  if (((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) == 0)
  {
LABEL_5:
    v14;
    goto LABEL_6;
  }

  v35 = ~v18;
  v20 = *(v34 + 16);
  v37 = *(v34 + 72);
  v38 = v20;
  v39 = v34 + 16;
  v21 = (v34 + 8);
  while (1)
  {
    v22 = v14;
    v23 = v14[6];
    v24 = v37 * v19;
    v38(v10, v23 + v37 * v19, v8);
    v25 = *(v40 + 8);
    v26 = *(v25 + 8);
    v27 = v26(v10, v41, v8, v25);
    (*v21)(v10, v8);
    if (v27)
    {
      break;
    }

    v19 = (v19 + 1) & v35;
    v14 = v22;
    if (((*(v36 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v22;
  v28 = v33;
  (*(v34 + 32))(v33, *(v22 + 48) + v24, v8);
  type metadata accessor for _NativeSet(0, v8, v40, v29);
  _NativeSet._delete(at:)(v19);
  result = v26(v41, v28, v8, v25);
  if ((result & 1) == 0)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *v32 = v22;
  return result;
}

uint64_t IndexingIterator._position.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 36);
  swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), a2, a3);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v4 + v6, v7);
}

uint64_t IndexingIterator._position.setter(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = *(a2 + 36);
  swift_getAssociatedTypeWitness(0, *(a2 + 24), *(a2 + 16), a3, a4);
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t Slice._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(*(a3 + 24) + 160))(a1, a2, *(a3 + 16));
}

{
  return (*(*(a3 + 24) + 176))(a1, a2, *(a3 + 16));
}

uint64_t Slice.indices.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v45 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v5, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v43 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v17);
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v36 - v18;
  v40 = v5;
  swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Indices);
  v42 = v19;
  v44 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v41 = &v36 - v20;
  v38 = v6;
  (*(v6 + 96))(v5, v6);
  v21 = *(a1 + 36);
  v22 = *(v8 - 8);
  v23 = v22[2];
  v37 = v15;
  v23(v15, v3, v8);
  v24 = v10;
  v23(&v15[*(v10 + 48)], v3 + v21, v8);
  v25 = v45;
  (*(v45 + 16))(v13, v15, v24);
  v26 = *(v24 + 48);
  v27 = v24;
  v28 = v22[4];
  v29 = v39;
  v28(v39, v13, v8);
  v30 = v22[1];
  v30(&v13[v26], v8);
  (*(v25 + 32))(v13, v37, v27);
  v31 = v43;
  v28(&v29[*(v43 + 36)], &v13[*(v27 + 48)], v8);
  v30(v13, v8);
  v32 = v42;
  v33 = swift_getAssociatedConformanceWitness(v38, v40, v42, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Indices: Collection);
  v34 = v41;
  (*(v33 + 88))(v29, v32, v33);
  (*(v46 + 8))(v29, v31);
  return (*(v44 + 8))(v34, v32);
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5@<X0>(uint64_t (*a1)(uint64_t)@<X0>, Swift::String::Index a2@<X2>, Swift::String::Index a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  if ((a5 & 0x1000000000000000) != 0)
  {
    return (*(*(a6 - 8) + 56))(a7, 1, 1, a6);
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a5) & 0xF;
    v18[0] = a4;
    v18[1] = a5 & 0xFFFFFFFFFFFFFFLL;
    v11 = v18;
  }

  else if ((a4 & 0x1000000000000000) != 0)
  {
    v11 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a4 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = a4;
    rawBits = a3._rawBits;
    v15 = a5;
    v16 = a2._rawBits;
    v11 = _StringObject.sharedUTF8.getter(a4, a5);
    a2._rawBits = v16;
    a4 = v17;
    a3._rawBits = rawBits;
    a5 = v15;
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5(v11, v12, a2, a3, a4, a5, a1);
  if (!v7)
  {
    return (*(*(a6 - 8) + 56))(a7, 0, 1, a6);
  }

  return result;
}

uint64_t Slice.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[7] = a2;
  v4 = *(a3 + 24);
  v6[2] = *(a3 + 16);
  v6[3] = a4;
  v6[6] = a1;
  return (*(*(v4 + 8) + 72))(partial apply for closure #1 in Slice.withContiguousStorageIfAvailable<A>(_:), v6, a4);
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5(uint64_t a1, uint64_t a2, Swift::String::Index from, Swift::String::Index to, unint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t))
{
  v11 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v13 = from._rawBits & 0xC;
  rawBits = from._rawBits;
  if (v13 == 4 << v11)
  {
    v30 = to._rawBits;
    v32 = from._rawBits;
    v36 = a6;
    v20._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(from)._rawBits;
    to._rawBits = v30;
    from._rawBits = v32;
    a6 = v36;
    rawBits = v20._rawBits;
    if ((v36 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v15 = rawBits >> 16;
      if (v13 != v12)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v31 = to._rawBits;
  v33 = from._rawBits;
  v21 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  if (v21 < rawBits >> 16)
  {
    goto LABEL_27;
  }

  v37 = a6;
  v15 = String.UTF8View._foreignDistance(from:to:)(15, rawBits);
  a6 = v37;
  to._rawBits = v31;
  from._rawBits = v33;
  if (v13 != v12)
  {
    goto LABEL_6;
  }

LABEL_18:
  v34 = v15;
  v38 = a6;
  v22 = to._rawBits;
  v23._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(from)._rawBits;
  to._rawBits = v22;
  a6 = v38;
  from._rawBits = v23._rawBits;
  v15 = v34;
LABEL_6:
  if ((to._rawBits & 0xC) == v12)
  {
    v35 = v15;
    v24 = from._rawBits;
    v25 = a6;
    v26._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
    from._rawBits = v24;
    a6 = v25;
    to._rawBits = v26._rawBits;
    v15 = v35;
    if ((v25 & 0x1000000000000000) == 0)
    {
LABEL_8:
      v16 = (to._rawBits >> 16) - (from._rawBits >> 16);
      v17 = v15 + v16;
      if (!__OFADD__(v15, v16))
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_8;
  }

  v27 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v27 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v27 < from._rawBits >> 16 || v27 < to._rawBits >> 16)
  {
LABEL_27:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v28 = v15;
  v29 = String.UTF8View._foreignDistance(from:to:)(from, to);
  v15 = v28;
  v17 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_9:
  if (v17 < v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v15 < 0 || v17 > a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v15, v17, a1, a2);
  return a7(v18);
}

uint64_t closure #1 in Slice.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v24 = a4;
  v23[1] = a8;
  v23[2] = a5;
  v25 = a2;
  v23[0] = a1;
  swift_getAssociatedTypeWitness(0, a7, a6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v28 = v11;
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  v26 = type metadata accessor for Slice(0, a6, a7, v14);
  (*(a7 + 64))(a6, a7);
  v15 = *(a7 + 152);
  v16 = v15(v13, a3, a6, a7);
  (*(v27 + 8))(v13, v28);
  v17 = v15(a3, &a3[*(v26 + 36)], a6, a7);
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v18 < v16)
  {
    goto LABEL_7;
  }

  if (v16 < 0 || (v19 = v25, v18 > v25))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(0, *(a7 + 8), a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v21 = UnsafeBufferPointer.init(rebasing:)(v16, v18, v23[0], v19, v20);
  return v24(v21);
}

uint64_t UnsafeBufferPointer.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return UnsafeBufferPointer.subscript.getter(result, a2, a3, a4);
}

{
  if (result < 0 || a4 < a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Slice<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0xDFBFuLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Slice.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*Slice.subscript.read(void *a1, uint64_t a2, uint64_t a3))()
{
  swift_getAssociatedTypeWitness(0, *(*(a3 + 24) + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(v8, 0x8EFFuLL);
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  Slice.subscript.getter(a2, a3, v9);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance DefaultIndices<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness(255, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v6 = type metadata accessor for Optional(0, v3, v4, v5);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, 1, 1, v6);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance DefaultIndices<A>@<X0>(unint64_t a1@<X0>, int *a2@<X2>, void (*a3)(unint64_t)@<X3>, uint64_t a4@<X8>)
{
  v13 = *(a1 - 8);
  (*(v13 + 16))(a4, v4, a1);
  WitnessTable = swift_getWitnessTable(a2, a1, v8);
  type metadata accessor for IndexingIterator(0, a1, WitnessTable, v10);
  a3(a1);
  v11 = *(v13 + 8);

  return v11(v4, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance Slice<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t Slice._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4;
  v119 = a3;
  v117 = a1;
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  swift_getTupleTypeMetadata2(0, v10, v10, "lower upper ", 0);
  v103 = v11;
  v111 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v102 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v84 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v100 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v15);
  v105 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v84 - v16;
  v114 = *(v7 + 8);
  swift_getAssociatedTypeWitness(0, v114, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v18 = v17;
  v108 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v97 = &v84 - v20;
  v115 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v110 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v5, v22);
  v116 = type metadata accessor for IndexingIterator(0, v5, WitnessTable, v24);
  v107 = *(v116 - 8);
  v25 = MEMORY[0x1EEE9AC00](v116);
  v112 = &v84 - v26;
  v118 = v10;
  v27 = *(v10 - 8);
  v104 = v27;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v84 - v28;
  v128 = v8;
  v129 = v7;
  v113 = a2;
  v130 = a2;
  v131 = v119;
  v30 = *(v5 + 40);
  v121 = v8;
  v98 = v18;
  v33 = type metadata accessor for UnsafeBufferPointer.Iterator(255, v18, v31, v32);
  swift_getTupleTypeMetadata2(0, v33, &type metadata for Int, 0, 0);
  v122 = v34;
  v123 = v7;
  v35 = v7;
  v124 = v4;
  v125 = partial apply for closure #1 in Slice._copyContents(initializing:);
  v126 = &v127;
  v36 = v114[9];
  v37 = v4;
  v109 = v30;
  (v36)(v132, partial apply for closure #1 in Slice.withContiguousStorageIfAvailable<A>(_:), v120, v34, v8);
  if (v133)
  {
    v38 = v111;
    v114 = v7;
    v109 = v8;
    v39 = v115;
    v40 = v110;
    (*(v115 + 32))(v110, v37, v5);
    v41 = v112;
    (*(v39 + 16))(v112, v40, v5);
    v42 = v116;
    v43 = *(v116 + 36);
    v46 = *(v27 + 16);
    v45 = (v27 + 16);
    v44 = v46;
    v46(&v41[v43], v40, v118);
    (*(v39 + 8))(v40, v5);
    v47 = v113;
    v48 = v41;
    if (v113)
    {
      v49 = v119;
      v50 = v117;
      if (v119 < 0)
      {
LABEL_13:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v96 = v44;
      v110 = v45;
      v51 = v114;
      if (v119)
      {
        v52 = 0;
        v95 = (v38 + 16);
        v94 = (v104 + 4);
        ++v104;
        v93 = (v38 + 32);
        v92 = v114 + 20;
        ++v105;
        v91 = v114 + 10;
        v90 = v108 + 16;
        v53 = v114 + 24;
        v89 = v108 + 32;
        v111 = *(AssociatedConformanceWitness + 8);
        v54 = *(v111 + 8);
        AssociatedConformanceWitness = v111 + 8;
        while (1)
        {
          if (v49 == v52)
          {
            goto LABEL_13;
          }

          v55 = v50;
          v113 = v47;
          v56 = &v48[*(v5 + 36)];
          v57 = &v48[v43];
          v87 = v43;
          v58 = v118;
          v88 = v54;
          if (v54(v57, v56, v118, v111))
          {
            break;
          }

          v86 = v52 + 1;
          v59 = v101;
          v85 = v53;
          v60 = v96;
          v96(v101, v112, v58);
          v61 = v103;
          v60(&v59[*(v103 + 48)], v56, v58);
          v62 = v102;
          (*v95)(v102, v59, v61);
          v63 = *(v61 + 48);
          v115 = v5;
          v84 = *v94;
          v64 = v99;
          v84(v99, v62, v58);
          v65 = *v104;
          (*v104)(&v62[v63], v58);
          v66 = v59;
          v48 = v112;
          (*v93)(v62, v66, v61);
          v67 = v100;
          v84(&v64[*(v100 + 36)], &v62[*(v61 + 48)], v58);
          v65(v62, v58);
          v68 = v51[20];
          v69 = v87;
          v70 = v109;
          (v68)(&v48[v87], v64, v109, v114);
          (*v105)(v64, v67);
          v71 = (v114[10])(v132, &v48[v69], v70, v114);
          v72 = v108;
          v73 = v97;
          v74 = v98;
          (*(v108 + 16))(v97);
          v71(v132, 0);
          v53 = v85;
          v75 = v117;
          v49 = v119;
          v76 = v70;
          v51 = v114;
          (v114[24])(&v48[v69], v76, v114);
          v77 = v113;
          v78 = v73;
          v52 = v86;
          (*(v72 + 32))(v113, v78, v74);
          v50 = v75;
          v79 = *(v72 + 72);
          v42 = v116;
          v47 = v77 + v79;
          v5 = v115;
          v43 = v69;
          v54 = v88;
          if (v49 == v52)
          {
            goto LABEL_9;
          }
        }

        (*(v107 + 32))(v55, v48, v42);
        return v52;
      }

      else
      {
LABEL_9:
        (*(v107 + 32))(v50, v48, v42);
      }
    }

    else
    {
      (*(v107 + 32))(v117, v41, v42);
      return 0;
    }
  }

  else
  {
    v49 = v132[2];
    v80 = v118;
    (*(v27 + 16))(v29, v4, v118);
    v81 = *(v7 + 136);
    v82 = v117;
    v81(v29, v49, v8, v35);
    (*(v27 + 8))(v29, v80);
    (*(v115 + 32))(v82, v4, v5);
  }

  return v49;
}

char *closure #1 in Slice._copyContents(initializing:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, char **a7@<X8>)
{
  v8 = result;
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = a2;
    }

    swift_getAssociatedTypeWitness(0, *(a6 + 8), a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v13 = v12;
    result = UnsafeMutablePointer.initialize(from:count:)(v8, v10, a3, v12);
    v14 = *(*(v13 - 1) + 72);
    v15 = &v8[v14 * a2];
    v8 += v14 * v10;
  }

  else if (result)
  {
    swift_getAssociatedTypeWitness(0, *(a6 + 8), a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v10 = 0;
    v17 = *(v16 - 8);
    result = (v16 - 8);
    v15 = &v8[*(v17 + 72) * a2];
  }

  else
  {
    v15 = 0;
    v10 = 0;
  }

  *a7 = v8;
  a7[1] = v15;
  a7[2] = v10;
  return result;
}

char *UnsafeBufferPointer._copyContents(initializing:)(char *__dst, uint64_t a2, char *__src, uint64_t a4, unint64_t *a5)
{
  v5 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = a4;
    }

    UnsafeMutablePointer.initialize(from:count:)(__src, v6, __dst, a5);
    v5 += *(*(a5 - 1) + 72) * v6;
  }

  return v5;
}

uint64_t Slice<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v46 = a1;
  v4 = *(a3 + 8);
  v5 = *(a2 + 16);
  v40[1] = a2;
  v44 = v4;
  v45 = v5;
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v42 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v40 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v41 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v17);
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v19 = v40 - v18;
  v20 = *(a2 + 36);
  v21 = *(v8 - 8);
  v22 = v21[2];
  v23 = v15;
  v40[0] = v15;
  v24 = v15;
  v25 = v48;
  v22(v24, v48, v8);
  v22(&v23[*(v10 + 48)], v25 + v20, v8);
  v26 = v42;
  v27 = v10;
  (*(v42 + 16))(v13, v23, v10);
  v28 = *(v10 + 48);
  v29 = v21[4];
  v29(v19, v13, v8);
  v30 = v21[1];
  v30(&v13[v28], v8);
  (*(v26 + 32))(v13, v40[0], v27);
  v31 = v41;
  v29(&v19[*(v41 + 36)], &v13[*(v27 + 48)], v8);
  v30(v13, v8);
  v32 = v45;
  v33 = v46;
  v34 = v44;
  (v44[20])(v46, v19, v45);
  (*(v43 + 8))(v19, v31);
  v35 = (v34[10])(v49, v33, v32);
  v37 = v36;
  swift_getAssociatedTypeWitness(0, v34[1], v32, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v38 - 8) + 16))(v47, v37, v38);
  return v35(v49, 0);
}

uint64_t key path getter for Slice<>.subscript(_:) : <A>Slice<A>A(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return key path getter for DiscontiguousSlice<>.subscript(_:) : <A>DiscontiguousSlice<A>A(a1, a2, a3, type metadata accessor for Slice, Slice<>.subscript.getter);
}

{
  return key path getter for DiscontiguousSlice<>.subscript(_:) : <A>DiscontiguousSlice<A>A(a1, a2, a3, type metadata accessor for Slice, Slice<>.subscript.getter);
}

uint64_t key path setter for Slice<>.subscript(_:) : <A>Slice<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v8 = *(v6 + 8);
  swift_getAssociatedTypeWitness(0, *(v8 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  swift_getAssociatedTypeWitness(0, v8, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  (*(v17 + 16))(&v21 - v15, a3);
  (*(v11 + 16))(v13, a1, v10);
  v19 = type metadata accessor for Slice(0, v7, v8, v18);
  return Slice<>.subscript.setter(v13, v16, v19, v6);
}

uint64_t Slice<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  v43 = a2;
  v44 = a4;
  v4 = *(a4 + 8);
  v5 = *(a3 + 16);
  v37 = a3;
  v41 = v4;
  v42 = v5;
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v39 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v38 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v17);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v19 = &v35 - v18;
  v20 = *(a3 + 36);
  v21 = *(v8 - 8);
  v22 = v21[2];
  v23 = v15;
  v36 = v15;
  v24 = v15;
  v25 = v46;
  v22(v24, v46, v8);
  v22(&v23[*(v10 + 48)], v25 + v20, v8);
  v26 = v39;
  v27 = v10;
  (*(v39 + 16))(v13, v23, v10);
  v28 = *(v10 + 48);
  v29 = v21[4];
  v29(v19, v13, v8);
  v30 = v21[1];
  v30(&v13[v28], v8);
  (*(v26 + 32))(v13, v36, v27);
  v31 = v38;
  v29(&v19[*(v38 + 36)], &v13[*(v27 + 48)], v8);
  v30(v13, v8);
  v32 = v42;
  v33 = v43;
  (v41[20])(v43, v19, v42);
  (*(v40 + 8))(v19, v31);
  return (*(v44 + 24))(v45, v33, v32);
}

void (*Slice<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x58, 0x6DCBuLL);
  }

  else
  {
    v9 = malloc(0x58uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v11 = *(a4 + 8);
  v12 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, *(v11 + 8), v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10[3] = v13;
  v14 = *(v13 - 8);
  v10[4] = v14;
  v15 = *(v14 + 64);
  if (swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc(v15, 0x6DCBuLL);
    v16 = swift_coroFrameAlloc(v15, 0x6DCBuLL);
  }

  else
  {
    v10[5] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v10[6] = v16;
  swift_getAssociatedTypeWitness(0, v11, v12, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10[7] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v10[8] = v19;
  v21 = *(v19 + 64);
  if (swift_coroFrameAlloc)
  {
    v10[9] = swift_coroFrameAlloc(v21, 0x6DCBuLL);
    v22 = swift_coroFrameAlloc(v21, 0x6DCBuLL);
  }

  else
  {
    v10[9] = malloc(v21);
    v22 = malloc(v21);
  }

  v10[10] = v22;
  (*(v20 + 16))();
  Slice<>.subscript.getter(a2, a3, a4, v17);
  return Slice<>.subscript.modify;
}

void Slice<>.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  if (a2)
  {
    v5 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v9 = v2[4];
    v10 = v2[1];
    v12 = v2[7];
    v11 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v12);
    Slice<>.subscript.setter(v7, v3, v11, v10);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    Slice<>.subscript.setter(v6, v4, *v2, v2[1]);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t Slice<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v48 = a1;
  v4 = *(a3 + 8);
  v5 = *(a2 + 16);
  v40 = a2;
  v43 = v4;
  v44 = v5;
  v45 = a4;
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v41 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v46 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v17);
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v19 = &v37 - v18;
  v20 = *(a2 + 36);
  v21 = *(v8 - 8);
  v22 = v21[2];
  v38 = v15;
  v23 = v47;
  v22(v15, v47, v8);
  v22(&v15[*(v10 + 48)], v23 + v20, v8);
  v24 = v41;
  (*(v41 + 16))(v13, v15, v10);
  v25 = *(v10 + 48);
  v26 = v21[4];
  v26(v19, v13, v8);
  v39 = v26;
  v27 = v21[1];
  v27(&v13[v25], v8);
  (*(v24 + 32))(v13, v38, v10);
  v26(&v19[*(v46 + 36)], &v13[*(v10 + 48)], v8);
  v27(v13, v8);
  v28 = v40;
  v29 = *(v40 + 40);
  v30 = v44;
  v31 = v47;
  (v43[22])(v48, v19, v44);
  v32 = v42;
  v33 = v46;
  (*(v42 + 8))(v19, v46);
  v34 = v45;
  (*(*(v30 - 1) + 16))(&v45[*(v28 + 40)], v31 + v29, v30);
  (*(v32 + 16))(v19, v48, v33);
  v35 = v39;
  v39(v34, v19, v8);
  return v35(&v34[*(v28 + 36)], &v19[*(v33 + 36)], v8);
}

uint64_t key path getter for DiscontiguousSlice<>.subscript(_:) : <A>DiscontiguousSlice<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a2 + a3 - 8);
  v8 = a4(0, *(a2 + a3 - 16), *(v7 + 8));
  return a5(a2, v8, v7);
}

uint64_t key path setter for Slice<>.subscript(_:) : <A>Slice<A>A(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *&a3[a4 - 8];
  v7 = type metadata accessor for Slice(0, *&a3[a4 - 16], *(v6 + 8), a4);
  return specialized Slice<>.subscript.setter(a1, a3, v7, v6);
}

uint64_t Slice<>.subscript.setter(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  specialized Slice<>.subscript.setter(a1, a2, a3, a4);
  v8 = *(a4 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v13);
  (*(*(v14 - 8) + 8))(a2, v14);
  v15 = *(*(a3 - 8) + 8);

  return v15(a1, a3);
}

void (*Slice<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x60, 0xCFA7uLL);
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[3] = a4;
  v8[4] = v4;
  v8[2] = a3;
  v10 = *(a3 - 8);
  v8[5] = v10;
  v11 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[6] = swift_coroFrameAlloc(v11, 0xCFA7uLL);
    v12 = swift_coroFrameAlloc(v11, 0xCFA7uLL);
  }

  else
  {
    v8[6] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v9[7] = v12;
  v14 = *(a4 + 8);
  v15 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v14, v15, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v17 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v14, v15, v16, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20 = type metadata accessor for Range(0, v17, AssociatedConformanceWitness, v19);
  v9[8] = v20;
  v21 = *(v20 - 8);
  v22 = v21;
  v9[9] = v21;
  v23 = *(v21 + 64);
  if (swift_coroFrameAlloc)
  {
    v9[10] = swift_coroFrameAlloc(v23, 0xCFA7uLL);
    v24 = swift_coroFrameAlloc(v23, 0xCFA7uLL);
  }

  else
  {
    v9[10] = malloc(v23);
    v24 = malloc(v23);
  }

  v9[11] = v24;
  (*(v22 + 16))();
  Slice<>.subscript.getter(a2, a3, a4, v13);
  return Slice<>.subscript.modify;
}

void Slice<>.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[10];
    v3 = v2[11];
    v5 = v2[8];
    v6 = v2[9];
    v8 = v2[6];
    v7 = v2[7];
    v9 = v2[5];
    v23 = v2[4];
    v10 = v2[2];
    v11 = v2[3];
    (*(v9 + 16))(v8, v7, v10);
    (*(v6 + 32))(v4, v3, v5);
    *v2 = v11;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v10, v2);
    v14 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v10, v13);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)(v23, v4, v8, v10, v10, WitnessTable, v14);
    (*(v6 + 8))(v4, v5);
    v15 = *(v9 + 8);
    v15(v8, v10);
    v15(v7, v10);
  }

  else
  {
    v2[1] = v2[3];
    v4 = v2[10];
    v3 = v2[11];
    v16 = v2[9];
    v24 = v2[8];
    v8 = v2[6];
    v7 = v2[7];
    v18 = v2[4];
    v17 = v2[5];
    v19 = v2[2];
    v20 = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v19, (v2 + 1));
    v22 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v19, v21);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)(v18, v3, v7, v19, v19, v20, v22);
    (*(v16 + 8))(v3, v24);
    (*(v17 + 8))(v7, v19);
  }

  free(v3);
  free(v4);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t Slice<>.withContiguousMutableStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v32 = a1;
  v33 = a2;
  v10 = *(a5 + 8);
  v11 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, v10, v11, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v28 = *(v12 - 8);
  v29 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v37 = v11;
  v38 = a4;
  v39 = a5;
  v30 = a3;
  v15 = *(a3 + 40);
  v16 = v35;
  v31 = *(a5 + 80);
  (v31)(&v40, _swift_displayCrashMessage, v36, &unk_1EEEAC658, v11, a5);
  v35 = v16;
  if (v40 == 1)
  {
    return (*(*(a4 - 8) + 56))(v34, 1, 1, a4);
  }

  (*(v10 + 64))(v11, v10);
  v27 = a4;
  v25[1] = v15;
  v18 = *(v10 + 152);
  v26 = v18(v14, v6, v11, v10);
  (*(v28 + 8))(v14, v29);
  v19 = v18(v6, &v6[*(v30 + 36)], v11, v10);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v26;
  v21 = v27;
  v25[-8] = v11;
  v25[-7] = v21;
  v25[-6] = a5;
  v25[-5] = v22;
  v24 = v32;
  v23 = v33;
  v25[-4] = v20;
  v25[-3] = v24;
  v25[-2] = v23;
  return v31(partial apply for closure #2 in Slice<>.withContiguousMutableStorageIfAvailable<A>(_:));
}

void *closure #2 in Slice<>.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    __break(1u);
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 < a2)
  {
    goto LABEL_7;
  }

  if (a2 < 0 || a1[1] < v8)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18[3] = a7;
  v11 = *a1;
  swift_getAssociatedTypeWitness(0, *(*(a8 + 8) + 8), a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v14 = UnsafeMutableBufferPointer.init(rebasing:)(a2, v8, v11, v13, v12);
  v16 = v15;
  v18[0] = v14;
  v18[1] = v15;
  a4(v18);
  return $defer #1 <A><A1>() in closure #2 in Slice<>.withContiguousMutableStorageIfAvailable<A>(_:)(v18, v14, v16);
}

uint64_t UnsafeMutableBufferPointer.init(rebasing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    result = a3 + *(*(a5 - 8) + 72) * a1;
    v8 = a2 - a1;
    v7 = v8 == 0;
    if (v8 < 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = 0;
    v9 = a2 - a1;
    v7 = v9 == 0;
    if (v9 < 0)
    {
      goto LABEL_7;
    }
  }

  if (!v7 && !result)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void *$defer #1 <A><A1>() in closure #2 in Slice<>.withContiguousMutableStorageIfAvailable<A>(_:)(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    if (*result != a2)
    {
LABEL_6:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  if (result[1] != a3)
  {
    goto LABEL_6;
  }

  return result;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance <> Slice<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x58, 0x2545uLL);
  }

  else
  {
    v9 = malloc(0x58uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = v4;
  v9[1] = a3;
  v11 = *(a4 - 8);
  v9[2] = v11;
  v12 = *(v11 + 8);
  v13 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, *(v12 + 8), v13, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10[3] = v14;
  v15 = *(v14 - 8);
  v10[4] = v15;
  v16 = *(v15 + 64);
  if (swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc(v16, 0x2545uLL);
    v17 = swift_coroFrameAlloc(v16, 0x2545uLL);
  }

  else
  {
    v10[5] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[6] = v17;
  swift_getAssociatedTypeWitness(0, v12, v13, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10[7] = v19;
  v20 = *(v19 - 8);
  v21 = v20;
  v10[8] = v20;
  v22 = *(v20 + 64);
  if (swift_coroFrameAlloc)
  {
    v10[9] = swift_coroFrameAlloc(v22, 0x2545uLL);
    v23 = swift_coroFrameAlloc(v22, 0x2545uLL);
  }

  else
  {
    v10[9] = malloc(v22);
    v23 = malloc(v22);
  }

  v10[10] = v23;
  (*(v21 + 16))();
  Slice<>.subscript.getter(a2, a3, v11, v18);
  return protocol witness for MutableCollection.subscript.modify in conformance <> Slice<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance <> Slice<A>(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  if (a2)
  {
    v5 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v9 = v2[4];
    v10 = v2[1];
    v11 = v2[2];
    v12 = v2[7];
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v12);
    Slice<>.subscript.setter(v7, v3, v10, v11);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    Slice<>.subscript.setter(v6, v4, v2[1], v2[2]);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance <> Slice<A>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  specialized Slice<>.subscript.setter(a1, a2, a3, v7);
  v8 = *(v7 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v13);
  (*(*(v14 - 8) + 8))(a2, v14);
  v15 = *(*(a3 - 8) + 8);

  return v15(a1, a3);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance <> Slice<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2, uint64_t a3)
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x50, 0x3CA1uLL);
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = a4;
  *v8 = v4;
  v10 = *(a4 - 8);
  v11 = *(a3 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[4] = swift_coroFrameAlloc(v12, 0x3CA1uLL);
    v13 = swift_coroFrameAlloc(v12, 0x3CA1uLL);
  }

  else
  {
    v8[4] = malloc(v12);
    v13 = malloc(v12);
  }

  v14 = v13;
  v9[5] = v13;
  v15 = *(v10 + 8);
  v16 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v15, v16, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v15, v16, v17, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v21 = type metadata accessor for Range(0, v18, AssociatedConformanceWitness, v20);
  v9[6] = v21;
  v22 = *(v21 - 8);
  v23 = v22;
  v9[7] = v22;
  v24 = *(v22 + 64);
  if (swift_coroFrameAlloc)
  {
    v9[8] = swift_coroFrameAlloc(v24, 0x3CA1uLL);
    v25 = swift_coroFrameAlloc(v24, 0x3CA1uLL);
  }

  else
  {
    v9[8] = malloc(v24);
    v25 = malloc(v24);
  }

  v9[9] = v25;
  (*(v23 + 16))();
  Slice<>.subscript.getter(a2, a3, v10, v14);
  return protocol witness for MutableCollection.subscript.modify in conformance <> Slice<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance <> Slice<A>(uint64_t **a1, char a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v6 = (*a1)[7];
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[3];
  v17 = (*a1)[2];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    (*(v10 + 16))(v8, v9, v3[1]);
    (*(v6 + 32))(v4, v5, v7);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v11, v13);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)(v12, v4, v8, v11, v11, v17, WitnessTable);
    (*(v6 + 8))(v4, v7);
    v15 = *(v10 + 8);
    v15(v8, v11);
    v15(v9, v11);
  }

  else
  {
    v16 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v3[1], a3);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)(v12, v5, v9, v11, v11, v17, v16);
    (*(v6 + 8))(v5, v7);
    (*(v10 + 8))(v9, v11);
  }

  free(v5);
  free(v4);
  free(v9);
  free(v8);

  free(v3);
}

uint64_t Slice<>.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 8);
  type metadata accessor for Slice(0, a1, v7, a4);
  v6(a1, a2);
  (*(v7 + 64))(a1, v7);
  return (*(v7 + 72))(a1, v7);
}

uint64_t Slice<>.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 48);
  v9 = *(a4 + 8);
  type metadata accessor for Slice(0, a3, v9, a4);
  v8(a1, a2, a3, a4);
  (*(v9 + 64))(a3, v9);
  return (*(v9 + 72))(a3, v9);
}

uint64_t Slice<>.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 56);
  v10 = *(a4 + 8);
  type metadata accessor for Slice(0, a2, v10, a4);
  v9(a1, a3, a5, a2, a4);
  (*(v10 + 64))(a2, v10);
  return (*(v10 + 72))(a2, v10);
}

uint64_t Slice<>.replaceSubrange<A>(_:with:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v50 = a4;
  v51 = a6;
  v49 = a2;
  v53 = a1;
  v44 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v9;
  v10 = *(v9 + 8);
  v12 = *(v11 + 16);
  v52 = v11;
  swift_getAssociatedTypeWitness(0, v10, v12, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v43 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - v18;
  v41 = *(v10 + 64);
  v42 = v10 + 64;
  v41(v12, v10);
  v20 = *(v10 + 152);
  v38 = v20(v19, v6, v12, v10);
  v48 = v15;
  v21 = *(v15 + 8);
  v46 = v19;
  v39 = v21;
  v40 = v15 + 8;
  v21(v19, v14);
  v22 = v53;
  v23 = v20(v6, v53, v12, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v12, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v26 = &v22[*(type metadata accessor for Range(0, v14, AssociatedConformanceWitness, v25) + 36)];
  v52 = *(v52 + 36);
  result = v20(v26, &v6[v52], v12, v10);
  v28 = v23 + result;
  if (__OFADD__(v23, result))
  {
    __break(1u);
  }

  else
  {
    v30 = v50;
    v29 = v51;
    v31 = v49;
    result = (*(v51 + 112))(v50, v51);
    v32 = v28 + result;
    if (!__OFADD__(v28, result))
    {
      v33 = v45;
      v34 = *(v44 + 16);
      v44 = v32;
      v34(v45, v31, v30);
      (*(v47 + 32))(v53, v33, v30, v29, v12);
      v35 = v43;
      v41(v12, v10);
      v53 = *(v10 + 136);
      v36 = v46;
      (v53)(v35, v38, v12, v10);
      v39(v35, v14);
      v37 = *(v48 + 40);
      v37(v7, v36, v14);
      (v53)(v7, v44, v12, v10);
      return (v37)(&v7[v52], v36, v14);
    }
  }

  __break(1u);
  return result;
}

uint64_t Slice<>.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v46 = a4;
  v43 = a1;
  v5 = *(a4 + 8);
  v6 = *(v5 + 8);
  v7 = *(a3 + 16);
  v48 = a3;
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v35 - v10;
  v51 = v7;
  swift_getAssociatedTypeWitness(0, v5, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v49 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = *(v5 + 64);
  v19 = v4;
  v52 = *(a3 + 40);
  v38 = v18;
  v39 = v5 + 64;
  v18(v7, v5);
  v47 = *(v5 + 152);
  v36 = v47(v17, v4, v7, v5);
  v20 = v13;
  v21 = *(v13 + 8);
  v21(v17, v12);
  v44 = v20;
  v22 = *(v20 + 16);
  v22(v17, v19, v12);
  v23 = v49;
  v48 = *(v48 + 36);
  v22(v49, &v19[v48], v12);
  v37 = v19;
  v24 = v5;
  v25 = v47(v17, v23, v51, v5);
  v21(v23, v12);
  v47 = v21;
  result = (v21)(v17, v12);
  if (__OFADD__(v25, 1))
  {
    __break(1u);
  }

  else
  {
    v27 = v40;
    v28 = *(v41 + 16);
    v41 = v25 + 1;
    v28(v40, v43, v42);
    v29 = *(v46 + 80);
    v50 = v12;
    v30 = v51;
    v31 = v37;
    v29(v27, v45, v51);
    v38(v30, v24);
    v32 = *(v24 + 136);
    v32(v23, v36, v30, v24);
    v33 = v50;
    (v47)(v23, v50);
    v34 = *(v44 + 40);
    v34(v31, v17, v33);
    v32(v31, v41, v30, v24);
    return (v34)(&v31[v48], v17, v50);
  }

  return result;
}

uint64_t Slice<>.insert<A>(contentsOf:at:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void, void), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v55 = a6;
  v56 = a4;
  v59 = a1;
  v49 = *(a4 - 1);
  v50 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v9;
  v10 = *(v9 + 8);
  v12 = *(v11 + 16);
  v13 = v11;
  v54 = v11;
  v60 = v12;
  swift_getAssociatedTypeWitness(0, v10, v12, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v57 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - v19;
  v21 = *(v10 + 64);
  v58 = *(v13 + 40);
  v45 = v21;
  v46 = v10 + 64;
  v21(v12, v10);
  v53 = *(v10 + 152);
  v22 = v7;
  v43 = v53(v20, v7, v12, v10);
  v23 = *(v16 + 8);
  v23(v20, v15);
  v52 = v16;
  v24 = *(v16 + 16);
  v24(v20, v22, v15);
  v47 = *(v54 + 36);
  v25 = v57;
  v24(v57, v22 + v47, v15);
  v44 = v22;
  v54 = v10;
  v26 = v53(v20, v25, v60, v10);
  v27 = v55;
  v28 = v26;
  v23(v25, v15);
  v29 = v15;
  v53 = v23;
  v23(v20, v15);
  v30 = v56;
  result = (*(v27 + 112))();
  if (__OFADD__(v28, result))
  {
    __break(1u);
  }

  else
  {
    v32 = v48;
    v33 = *(v49 + 16);
    v49 = v28 + result;
    v33(v48, v59, v30);
    v34 = *(v51 + 88);
    v59 = v29;
    v35 = v44;
    v36 = v30;
    v37 = v60;
    v34(v32, v50, v36, v27, v60);
    v38 = v57;
    v39 = v54;
    v45(v37, v54);
    v56 = *(v39 + 136);
    v56(v38, v43, v37, v39);
    v40 = v38;
    v41 = v59;
    (v53)(v40, v59);
    v42 = *(v52 + 40);
    v42(v35, v20, v41);
    v56(v35, v49, v37, v39);
    return (v42)(v35 + v47, v20, v41);
  }

  return result;
}

uint64_t Slice<>.remove(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v39 = a1;
  v40 = a3;
  v5 = *(a3 + 8);
  v6 = *(a2 + 16);
  v44 = a2;
  v42 = v6;
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = *(v5 + 64);
  v46 = *(a2 + 40);
  v36 = v15;
  v37 = v5 + 64;
  v15(v6, v5);
  v43 = *(v5 + 152);
  v33 = v43(v14, v4, v6, v5);
  v16 = *(v10 + 8);
  v16(v14, v9);
  v41 = v10;
  v17 = *(v10 + 16);
  v17(v14, v4, v9);
  v18 = v45;
  v44 = *(v44 + 36);
  v17(v45, v4 + v44, v9);
  v32 = v4;
  v19 = v42;
  v34 = v5;
  v20 = (v43)(v14, v18);
  v21 = v18;
  v16(v18, v9);
  v35 = v9;
  v43 = v16;
  result = (v16)(v14, v9);
  if (__OFSUB__(v20, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = v39;
    v24 = *(v40 + 96);
    v25 = v32;
    v26 = v19;
    v39 = v20 - 1;
    v24(v23, v19);
    v27 = v19;
    v28 = v34;
    v36(v27, v34);
    v40 = *(v28 + 136);
    (v40)(v21, v33, v26, v28);
    v29 = v35;
    (v43)(v21, v35);
    v30 = *(v41 + 40);
    v30(v25, v14, v29);
    (v40)(v25, v39, v26, v28);
    return (v30)(v25 + v44, v14, v29);
  }

  return result;
}

uint64_t Slice<>.removeSubrange(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a1;
  v35 = a3;
  v5 = *(a3 + 8);
  v6 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = *(v5 + 64);
  v41 = *(a2 + 40);
  v37 = v6;
  v31 = v16;
  v32 = v5 + 64;
  v16(v6, v5);
  v40 = *(v5 + 152);
  v28 = v40(v15, v4, v6, v5);
  v17 = *(v10 + 8);
  v17(v15, v9);
  v36 = v10;
  v18 = *(v10 + 16);
  v18(v15, v4, v9);
  v33 = *(v38 + 36);
  v18(v13, v4 + v33, v9);
  v19 = v37;
  v38 = v40(v15, v13, v37, v5);
  v34 = v13;
  v17(v13, v9);
  v29 = v17;
  v30 = v10 + 8;
  v17(v15, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v19, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v22 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v21);
  v23 = v39;
  result = v40(v39, &v39[*(v22 + 36)], v19, v5);
  if (__OFSUB__(v38, result))
  {
    __break(1u);
  }

  else
  {
    v25 = *(v35 + 104);
    v40 = (v38 - result);
    v25(v23, v19);
    v26 = v34;
    v31(v19, v5);
    v39 = *(v5 + 136);
    (v39)(v26, v28, v19, v5);
    v29(v26, v9);
    v27 = *(v36 + 40);
    v27(v4, v15, v9);
    (v39)(v4, v40, v19, v5);
    return (v27)(v4 + v33, v15, v9);
  }

  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance <> Slice<A>(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Slice<>.replaceSubrange<A>(_:with:)(a1, a2, a5, a3, *(a6 - 8), a4);
  v8 = *(*(a3 - 8) + 8);

  return v8(a2, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance <> Slice<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  Slice<>.insert(_:at:)(a1, a2, a3, v6);
  swift_getAssociatedTypeWitness(0, *(*(v6 + 8) + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

uint64_t protocol witness for RangeReplaceableCollection.insert<A>(contentsOf:at:) in conformance <> Slice<A>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Slice<>.insert<A>(contentsOf:at:)(a1, a2, a5, a3, *(a6 - 8), a4);
  v8 = *(*(a3 - 1) + 8);

  return v8(a1, a3);
}

uint64_t Slice<>.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v88 = a7;
  v89 = a2;
  v85 = a6;
  v90 = a4;
  v82 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v83 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = v11;
  v12 = *(v11 + 8);
  v14 = *(v13 + 16);
  swift_getAssociatedTypeWitness(0, v12, v14, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v76[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v76[-v21];
  v92 = a3;
  v23 = *(a3 + 40);
  v24 = *(v12 + 64);
  v94 = v7;
  v78 = v24;
  v79 = (v12 + 64);
  v24(v14, v12);
  v81 = v12;
  v93 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v14, v16, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v25 = *(AssociatedConformanceWitness + 8);
  v26 = *(v25 + 8);
  v27 = v26(a1, v22, v16, v25);
  v86 = v22;
  v87 = v17;
  v29 = *(v17 + 8);
  v28 = (v17 + 8);
  v30 = v22;
  v31 = v16;
  v80 = v29;
  v29(v30, v16);
  v84 = v23;
  if (v27)
  {
    v33 = v94;
    v32 = v95;
    v34 = *(v95 + 64);
    v35 = a1;
    v36 = a1;
    v37 = v93;
    v38 = v34(v94, v36, v93, v95);
    v40 = *(type metadata accessor for Range(0, v31, AssociatedConformanceWitness, v39) + 36);
    AssociatedConformanceWitness = *(v92 + 36);
    v92 = v35;
    result = v34(v35 + v40, &v33[AssociatedConformanceWitness], v37, v32);
    v42 = v38 + result;
    if (!__OFADD__(v38, result))
    {
      v44 = v88;
      v43 = v89;
      v45 = v90;
      result = (*(v88 + 112))(v90, v88);
      if (!__OFADD__(v42, result))
      {
        v46 = v83;
        v47 = *(v82 + 16);
        v82 = v42 + result;
        v47(v83, v43, v45);
        v48 = v94;
        (*(v85 + 32))(v92, v46, v45, v44, v37);
        v49 = v31;
        v50 = v86;
        v78(v37, v81);
        v51 = *(v87 + 40);
        v51(v48, v50, v49);
        (*(v95 + 48))(v48, v82, v37);
        return (v51)(&v48[AssociatedConformanceWitness], v50, v49);
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v78 = v28;
  v52 = a1;
  v53 = v94;
  v77 = v26(a1, v94, v31, v25);
  v54 = v95;
  v55 = *(v95 + 32);
  v79 = v20;
  v56 = a1;
  v57 = v93;
  v55(v56, v93, v95);
  v59 = type metadata accessor for Range(0, v31, AssociatedConformanceWitness, v58);
  v60 = *(v54 + 64);
  v61 = v52 + *(v59 + 36);
  v92 = *(v92 + 36);
  v62 = v60(v61, &v53[v92], v57, v54);
  v63 = v88;
  v64 = v89;
  v65 = v90;
  result = (*(v88 + 112))(v90, v88);
  v66 = v62 + result;
  if (__OFADD__(v62, result))
  {
    goto LABEL_12;
  }

  v67 = __OFADD__(v66, 1);
  v68 = v66 + 1;
  if (v67)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v69 = v53;
  v70 = v63;
  v71 = v52;
  AssociatedConformanceWitness = v68;
  v72 = v83;
  (*(v82 + 16))(v83, v64, v65);
  (*(v85 + 32))(v71, v72, v65, v70, v57);
  v74 = v86;
  v73 = v87;
  v75 = v79;
  if (v77)
  {
    (*(v81 + 184))(v79, v57);
    (*(v73 + 40))(v69, v74, v31);
  }

  (*(v54 + 48))(v75, AssociatedConformanceWitness, v57, v54);
  v80(v75, v31);
  return (*(v73 + 40))(&v69[v92], v74, v31);
}

uint64_t Slice<>.insert(_:at:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a1;
  v58 = a5;
  v59 = a4;
  v8 = *(a4 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, *(v8 + 8), v9, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v56 = v10;
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v49 - v11;
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v52 = &v49 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - v19;
  v60 = a3;
  v21 = *(v8 + 64);
  v63 = *(a3 + 40);
  v64 = v5;
  v50 = v21;
  v51 = (v8 + 64);
  v21(v9, v8);
  v61 = v9;
  v22 = *(swift_getAssociatedConformanceWitness(v8, v9, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v23 = *(v22 + 8);
  v24 = v23(a2, v20, v13, v22);
  v62 = v14;
  v27 = *(v14 + 8);
  v26 = (v14 + 8);
  v25 = v27;
  v27(v20, v13);
  if (v24)
  {
    v53 = a2;
    v28 = *(v62 + 16);
    v29 = v64;
    v28(v20, v64, v13);
    v60 = *(v60 + 36);
    v30 = v52;
    v28(v52, &v29[v60], v13);
    v31 = (*(v8 + 152))(v20, v30, v61, v8);
    v25(v30, v13);
    result = (v25)(v20, v13);
    if (!__OFADD__(v31, 1))
    {
      v33 = v55;
      (*(v54 + 16))(v55, v57, v56);
      v34 = v64;
      v35 = v61;
      (*(v58 + 80))(v33, v53, v61);
      v50(v35, v8);
      v36 = *(v62 + 40);
      v36(v34, v20, v13);
      (*(v59 + 48))(v34, v31 + 1, v35);
      return (v36)(&v34[v60], v20, v13);
    }

    __break(1u);
    goto LABEL_10;
  }

  v51 = v25;
  v52 = v26;
  v49 = v8;
  v37 = a2;
  v38 = v64;
  LODWORD(v50) = v23(a2, v64, v13, v22);
  v39 = v59;
  v40 = v53;
  v41 = v61;
  (*(v59 + 32))(v37, v61, v59);
  v42 = *(v60 + 36);
  result = (*(v39 + 64))(v37, &v38[v42], v41, v39);
  if (__OFADD__(result, 2))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v43 = v37;
  v44 = v40;
  v45 = result + 2;
  v46 = v55;
  (*(v54 + 16))(v55, v57, v56);
  (*(v58 + 80))(v46, v43, v41);
  if (v50)
  {
    v47 = v64;
    (*(v49 + 184))(v44, v41);
    (*(v62 + 40))(v47, v20, v13);
  }

  v48 = v64;
  (*(v39 + 48))(v44, v45, v41, v39);
  v51(v44, v13);
  return (*(v62 + 40))(&v48[v42], v20, v13);
}

uint64_t Slice<>.insert<A>(contentsOf:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v75 = a7;
  v76 = a1;
  v71 = a6;
  v78 = a4;
  v68 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v11;
  v12 = *(v11 + 8);
  v14 = *(v13 + 16);
  swift_getAssociatedTypeWitness(0, v12, v14, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v72 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v63 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v63 - v22;
  v74 = a3;
  v24 = *(a3 + 40);
  v25 = *(v12 + 64);
  v77 = v7;
  v81 = v24;
  v65 = v25;
  v66 = (v12 + 64);
  v25(v14, v12);
  v79 = v14;
  v26 = *(swift_getAssociatedConformanceWitness(v12, v14, v16, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v27 = *(v26 + 8);
  v28 = a2;
  v29 = v27(a2, v23, v16, v26);
  v80 = v17;
  v32 = *(v17 + 8);
  v30 = (v17 + 8);
  v31 = v32;
  v32(v23, v16);
  v70 = v28;
  if (v29)
  {
    v33 = *(v80 + 16);
    v34 = v77;
    v33(v23, v77, v16);
    v35 = *(v74 + 36);
    v36 = v67;
    v33(v67, &v34[v35], v16);
    v37 = (*(v12 + 152))(v23, v36, v79, v12);
    v31(v36, v16);
    v31(v23, v16);
    v39 = v75;
    v38 = v76;
    result = (*(v75 + 112))(v78, v75);
    v41 = v37 + result;
    if (!__OFADD__(v37, result))
    {
      v42 = v69;
      v43 = *(v68 + 16);
      v74 = v41;
      v44 = v78;
      v43(v69, v38, v78);
      v45 = *(v71 + 88);
      v76 = v35;
      v46 = v77;
      v47 = v42;
      v48 = v79;
      v45(v47, v70, v44, v39, v79);
      v65(v48, v12);
      v49 = *(v80 + 40);
      v49(v46, v23, v16);
      (*(v73 + 48))(v46, v74, v48);
      return (v49)(&v46[v76], v23, v16);
    }

    __break(1u);
    goto LABEL_11;
  }

  v66 = v31;
  v67 = v30;
  v63 = v12;
  v50 = v77;
  LODWORD(v65) = v27(v28, v77, v16, v26);
  v51 = v73;
  v52 = v79;
  (*(v73 + 32))(v28, v79, v73);
  v53 = *(v51 + 64);
  v74 = *(v74 + 36);
  v54 = v53(v28, &v50[v74], v52, v51);
  v55 = v76;
  v56 = v78;
  v57 = v75;
  result = (*(v75 + 112))();
  v58 = v54 + result;
  if (__OFADD__(v54, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v59 = __OFADD__(v58, 1);
  v60 = v58 + 1;
  if (v59)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v64 = v60;
  v61 = v69;
  (*(v68 + 16))(v69, v55, v56);
  (*(v71 + 88))(v61, v70, v56, v57, v52);
  v62 = v72;
  if (v65)
  {
    (*(v63 + 184))(v72, v52);
    (*(v80 + 40))(v50, v23, v16);
  }

  (*(v51 + 48))(v62, v64, v52, v51);
  v66(v62, v16);
  return (*(v80 + 40))(&v50[v74], v23, v16);
}

uint64_t Slice<>.remove(at:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v53 = a3;
  v54 = a5;
  v8 = *(a3 + 8);
  v9 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, *(v8 + 8), v9, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v47 - v11;
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v59 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v50 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v55 = a2;
  v21 = *(v8 + 64);
  v61 = *(a2 + 40);
  v62 = v5;
  v48 = v21;
  v49 = (v8 + 64);
  v21(v9, v8);
  v58 = v8;
  v60 = v9;
  v22 = *(swift_getAssociatedConformanceWitness(v8, v9, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v23 = *(v22 + 8);
  v24 = a1;
  v25 = v23(a1, v20, v13, v22);
  v26 = *(v14 + 1);
  v26(v20, v13);
  if (v25)
  {
    v59 = v24;
    v27 = v56;
    v28 = v14;
    v29 = *(v14 + 2);
    v30 = v62;
    v29(v20, v62, v13);
    v57 = *(v55 + 36);
    v31 = v50;
    v29(v50, &v57[v30], v13);
    v32 = (*(v58 + 152))(v20, v31, v60);
    v26(v31, v13);
    result = (v26)(v20, v13);
    if (__OFSUB__(v32, 1))
    {
      __break(1u);
    }

    else
    {
      v34 = v28;
      v35 = v62;
      v36 = v60;
      (*(v27 + 96))(v59, v60, v27);
      v48(v36, v58);
      v37 = *(v34 + 5);
      v37(v35, v20, v13);
      (*(v53 + 48))(v35, v32 - 1, v36);
      return (v37)(&v57[v35], v20, v13);
    }
  }

  else
  {
    v48 = (v14 + 8);
    v49 = v26;
    v50 = v14;
    v38 = v24;
    v39 = v62;
    v40 = v23(v24, v62, v13, v22);
    v41 = v53;
    v42 = v60;
    (*(v53 + 32))(v38, v60, v53);
    v43 = *(v55 + 36);
    v55 = (*(v41 + 64))(v38, &v39[v43], v42, v41);
    (*(v56 + 96))(v38, v42);
    if (v40)
    {
      v44 = v62;
      (*(v58 + 184))(v59, v42);
      (*(v50 + 5))(v44, v20, v13);
    }

    v45 = v62;
    v46 = v59;
    (*(v41 + 48))(v59, v55, v42, v41);
    v49(v46, v13);
    (*(v50 + 5))(&v45[v43], v20, v13);
    return (*(v51 + 32))(v54, v57, v52);
  }

  return result;
}

uint64_t Slice<>.removeSubrange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v50 = a4;
  v6 = a2;
  v57 = a3;
  v8 = *(a3 + 8);
  v9 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v49 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - v17;
  v53 = v6;
  v19 = *(v8 + 64);
  v58 = *(v6 + 40);
  v47 = v19;
  v48 = (v8 + 64);
  (v19)(v9, v8);
  v54 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20 = *(AssociatedConformanceWitness + 8);
  v21 = *(v20 + 8);
  v56 = a1;
  LOBYTE(v6) = v21(a1, v18, v11, v20);
  v55 = v12;
  v24 = *(v12 + 8);
  v22 = (v12 + 8);
  v23 = v24;
  v24(v18, v11);
  if (v6)
  {
    v25 = *(v55 + 16);
    v25(v18, v5, v11);
    v51 = *(v53 + 36);
    v26 = v49;
    v25(v49, &v51[v5], v11);
    v27 = v54;
    v53 = (*(v8 + 152))(v18, v26, v54, v8);
    v23(v26, v11);
    v23(v18, v11);
    v29 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v28);
    v30 = v56;
    v31 = v57;
    result = (*(v57 + 64))(v56, v56 + *(v29 + 36), v27, v57);
    v33 = v53 - result;
    if (!__OFSUB__(v53, result))
    {
      (*(v50 + 104))(v30, v27);
      (v47)(v27, v8);
      v34 = *(v55 + 40);
      v34(v5, v18, v11);
      (*(v31 + 48))(v5, v33, v27, v31);
      return (v34)(&v51[v5], v18, v11);
    }

    __break(1u);
    goto LABEL_11;
  }

  v48 = v23;
  v49 = v22;
  v45 = v8;
  v35 = v56;
  v46 = v21(v56, v5, v11, v20);
  v36 = v57;
  v37 = v54;
  (*(v57 + 32))(v35, v54, v57);
  v38 = *(v36 + 64);
  v47 = *(v53 + 36);
  v53 = v38(v35, &v47[v5], v37, v36);
  v40 = (v35 + *(type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v39) + 36));
  result = v38(v35, v40, v37, v36);
  v41 = v53 - result;
  if (__OFSUB__(v53, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v42 = v41 + 1;
  if (__OFADD__(v41, 1))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  (*(v50 + 104))(v56, v37);
  v43 = v55;
  v44 = v51;
  if (v46)
  {
    (*(v45 + 184))(v51, v37);
    (*(v43 + 40))(v5, v18, v11);
  }

  (*(v57 + 48))(v44, v42, v37);
  v48(v44, v11);
  return (*(v43 + 40))(&v47[v5], v18, v11);
}

uint64_t (*_SmallString.leadingRawBits.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return _ArrayBody.count.modify;
}

uint64_t (*_SmallString.trailingRawBits.modify(void *a1))()
{
  *a1 = *(v1 + 8);
  a1[1] = v1;
  return _SmallString.trailingRawBits.modify;
}

unint64_t _SmallString.subscript.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 >= 8)
  {
    a2 = a3;
  }

  return a2 >> (8 * (a1 & 7u));
}

void (*_SmallString.subscript.modify(void *a1, uint64_t a2))(void **a1)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x28, 0xFD4CuLL);
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  if (a2 > 7)
  {
    v6 = v2[1];
    v5[3] = v6;
    v7 = _SmallString.subscript.modify;
  }

  else
  {
    v6 = *v2;
    v5[2] = *v2;
    v7 = _SmallString.subscript.modify;
  }

  *(v5 + 32) = v6 >> (8 * (a2 & 7u));
  return v7;
}

void _SmallString.subscript.modify(void **a1)
{
  v1 = *a1;
  **(v1 + 1) = ((-255 << (8 * (*v1 & 7u))) - 1) & *(v1 + 2) | (v1[32] << (8 * (*v1 & 7u)));
  free(v1);
}

{
  v1 = *a1;
  *(v1[1] + 8) = ((-255 << (8 * (*v1 & 7u))) - 1) & v1[3] | (*(v1 + 32) << (8 * (*v1 & 7u)));
  free(v1);
}

uint64_t _SmallString.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int64x2_t a12)
{
  v92[0] = a3;
  v92[1] = a4 & 0xFFFFFFFFFFFFFFLL;
  if (a1 < 0 || (HIBYTE(a4) & 0xF) < a2 || (v12 = a2 - a1, a2 - a1 < 0))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 == a1)
  {
    return 0;
  }

  if (v12 >= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = a2 - a1;
  }

  v15 = v14 - 1;
  if (v14 < v14 - 1)
  {
    v15 = v14;
  }

  if (v14 == v15)
  {
LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = (v92 + a1);
  v17 = v12 - 8;
  if (v12 >= 8)
  {
    v19 = v14 & 8;
    v20 = vmovl_u8(*v16);
    v21 = vmovl_u16(*v20.i8);
    v22.i64[0] = v21.u32[2];
    v22.i64[1] = v21.u32[3];
    v23 = v22;
    v24 = vmovl_high_u16(v20);
    v22.i64[0] = v24.u32[2];
    v22.i64[1] = v24.u32[3];
    v25 = v22;
    v22.i64[0] = v21.u32[0];
    v22.i64[1] = v21.u32[1];
    v26 = v22;
    v22.i64[0] = v24.u32[0];
    v22.i64[1] = v24.u32[1];
    v27 = vorrq_s8(vorrq_s8(vshlq_u64(v26, xmmword_18071DBB0), vshlq_u64(v22, xmmword_18071DBC0)), vorrq_s8(vshlq_u64(v23, xmmword_18071DBA0), vshlq_u64(v25, xmmword_18071DBD0)));
    v13 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    if (v14 == v19)
    {
      goto LABEL_19;
    }

    v18 = 8 * v19;
  }

  else
  {
    v13 = 0;
    v18 = 0;
    v19 = 0;
  }

  v28 = v14 - v19;
  v29 = v92 + v19 + a1;
  do
  {
    v30 = *v29++;
    *&v13 |= v30 << (v18 & 0x38);
    v18 += 8;
    --v28;
  }

  while (v28);
LABEL_19:
  if (v12 < 9)
  {
    return v13;
  }

  if (v17 <= a2 - a1 - 9)
  {
    goto LABEL_12;
  }

  if (v17 < 4)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_35;
  }

  if (v17 >= 0x10)
  {
    v35 = &v16[1];
    v33 = v17 & 0xFFFFFFFFFFFFFFF0;
    v36 = xmmword_18071DBF0;
    v37 = xmmword_18071DC00;
    v38 = xmmword_18071DC10;
    v39 = xmmword_18071DC20;
    v40 = xmmword_18071DBD0;
    v41 = xmmword_18071DBC0;
    v42 = vdupq_n_s64(0x38uLL);
    a12 = vdupq_n_s64(0x80uLL);
    v43 = xmmword_18071DBA0;
    v34 = 8 * (v17 & 0xFFFFFFFFFFFFFFF0);
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = xmmword_18071DBB0;
    v47 = v17 & 0xFFFFFFFFFFFFFFF0;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    do
    {
      v54 = *v35++;
      v55 = vmovl_u8(*v54.i8);
      v56 = vmovl_high_u16(v55);
      v57.i64[0] = v56.u32[2];
      v57.i64[1] = v56.u32[3];
      v58 = v57;
      v59 = vmovl_high_u8(v54);
      v60 = vmovl_u16(*v59.i8);
      v57.i64[0] = v60.u32[2];
      v57.i64[1] = v60.u32[3];
      v61 = v57;
      v57.i64[0] = v60.u32[0];
      v57.i64[1] = v60.u32[1];
      v62 = v57;
      v57.i64[0] = v56.u32[0];
      v57.i64[1] = v56.u32[1];
      v63 = v57;
      v64 = vmovl_u16(*v55.i8);
      v57.i64[0] = v64.u32[2];
      v57.i64[1] = v64.u32[3];
      v65 = v57;
      v66 = vmovl_high_u16(v59);
      v57.i64[0] = v66.u32[0];
      v57.i64[1] = v66.u32[1];
      v67 = v57;
      v57.i64[0] = v64.u32[0];
      v57.i64[1] = v64.u32[1];
      v68 = v57;
      v57.i64[0] = v66.u32[2];
      v57.i64[1] = v66.u32[3];
      v49 = vorrq_s8(vshlq_u64(v58, vandq_s8(v40, v42)), v49);
      v51 = vorrq_s8(vshlq_u64(v61, vandq_s8(v38, v42)), v51);
      v50 = vorrq_s8(vshlq_u64(v62, vandq_s8(v39, v42)), v50);
      v48 = vorrq_s8(vshlq_u64(v63, vandq_s8(v41, v42)), v48);
      v45 = vorrq_s8(vshlq_u64(v65, vandq_s8(v43, v42)), v45);
      v52 = vorrq_s8(vshlq_u64(v67, vandq_s8(v37, v42)), v52);
      v44 = vorrq_s8(vshlq_u64(v68, vandq_s8(v46, v42)), v44);
      v53 = vorrq_s8(vshlq_u64(v57, vandq_s8(v36, v42)), v53);
      v41 = vaddq_s64(v41, a12);
      v43 = vaddq_s64(v43, a12);
      v46 = vaddq_s64(v46, a12);
      v40 = vaddq_s64(v40, a12);
      v39 = vaddq_s64(v39, a12);
      v38 = vaddq_s64(v38, a12);
      v37 = vaddq_s64(v37, a12);
      v36 = vaddq_s64(v36, a12);
      v47 -= 16;
    }

    while (v47);
    v69 = vorrq_s8(vorrq_s8(vorrq_s8(v44, v50), vorrq_s8(v48, v52)), vorrq_s8(vorrq_s8(v45, v51), vorrq_s8(v49, v53)));
    v31 = vorr_s8(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
    if (v17 == v33)
    {
      return v13;
    }

    if ((v17 & 0xC) == 0)
    {
      v32 = 8 * (v17 & 0xFFFFFFFFFFFFFFF0);
LABEL_35:
      v86 = v33 + a1 + 8;
      v87 = v86 - a2;
      v88 = v92 + v86;
      do
      {
        v89 = *v88++;
        *&v31 |= v89 << (v32 & 0x38);
        v32 += 8;
      }

      while (!__CFADD__(v87++, 1));
      return v13;
    }
  }

  else
  {
    v31 = 0;
    v34 = 0;
    v33 = 0;
  }

  v70 = v33;
  v33 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v32 = 8 * (v17 & 0xFFFFFFFFFFFFFFFCLL);
  v71 = 0uLL;
  v72 = v31;
  v73 = vdupq_n_s64(v34);
  v74 = vaddq_s64(v73, xmmword_18071DBA0);
  v75 = vaddq_s64(v73, xmmword_18071DBB0);
  v76 = (&v92[1] + v70 + a1);
  v77 = v70 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
  v78.i64[0] = 255;
  v78.i64[1] = 255;
  v79 = vdupq_n_s64(0x38uLL);
  v80 = vdupq_n_s64(0x20uLL);
  do
  {
    v81 = *v76++;
    a12.i32[0] = v81;
    v82 = vmovl_u16(*&vmovl_u8(*a12.i8));
    v83.i64[0] = v82.u32[2];
    v83.i64[1] = v82.u32[3];
    v84 = vandq_s8(v83, v78);
    v83.i64[0] = v82.u32[0];
    v83.i64[1] = v82.u32[1];
    a12 = vshlq_u64(vandq_s8(v83, v78), vandq_s8(v75, v79));
    v71 = vorrq_s8(vshlq_u64(v84, vandq_s8(v74, v79)), v71);
    v72 = vorrq_s8(a12, v72);
    v74 = vaddq_s64(v74, v80);
    v75 = vaddq_s64(v75, v80);
    v77 += 4;
  }

  while (v77);
  v85 = vorrq_s8(v72, v71);
  v31 = vorr_s8(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
  if (v17 != v33)
  {
    goto LABEL_35;
  }

  return v13;
}

uint64_t key path getter for _SmallString.subscript(_:) : _SmallString@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, int8x8_t *a3@<X8>, int64x2_t a4@<Q7>)
{
  v4 = *(result + 8);
  v6 = *a2;
  v5 = a2[1];
  v87[0] = *result;
  v87[1] = v4 & 0xFFFFFFFFFFFFFFLL;
  if (v6 < 0 || (HIBYTE(v4) & 0xF) < v5 || (v7 = v5 - v6, v5 - v6 < 0))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v5 == v6)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_41;
  }

  v10 = v7 - 8;
  if (v7 >= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v5 - v6;
  }

  v12 = v11 - 1;
  if (v11 < v11 - 1)
  {
    v12 = v11;
  }

  if (v11 == v12)
  {
LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = (v87 + v6);
  if (v7 > 7)
  {
    v14 = v11 & 8;
    v15 = vmovl_u8(*v13);
    v16 = vmovl_u16(*v15.i8);
    v17.i64[0] = v16.u32[2];
    v17.i64[1] = v16.u32[3];
    v18 = v17;
    v19 = vmovl_high_u16(v15);
    v17.i64[0] = v19.u32[2];
    v17.i64[1] = v19.u32[3];
    v20 = v17;
    v17.i64[0] = v16.u32[0];
    v17.i64[1] = v16.u32[1];
    v21 = v17;
    v17.i64[0] = v19.u32[0];
    v17.i64[1] = v19.u32[1];
    v22 = vorrq_s8(vorrq_s8(vshlq_u64(v21, xmmword_18071DBB0), vshlq_u64(v17, xmmword_18071DBC0)), vorrq_s8(vshlq_u64(v18, xmmword_18071DBA0), vshlq_u64(v20, xmmword_18071DBD0)));
    v8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    if (v11 == v14)
    {
      goto LABEL_19;
    }

    result = 8 * v14;
  }

  else
  {
    v8 = 0;
    result = 0;
    v14 = 0;
  }

  v23 = v11 - v14;
  v24 = v87 + v14 + v6;
  do
  {
    v25 = *v24++;
    *&v8 |= v25 << (result & 0x38);
    result += 8;
    --v23;
  }

  while (v23);
LABEL_19:
  if (v7 >= 9)
  {
    if (v10 <= v5 - v6 - 9)
    {
      goto LABEL_12;
    }

    if (v10 < 4)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      goto LABEL_35;
    }

    if (v10 >= 0x10)
    {
      v30 = &v13[1];
      v28 = v10 & 0xFFFFFFFFFFFFFFF0;
      v31 = xmmword_18071DBF0;
      v32 = xmmword_18071DC00;
      v33 = xmmword_18071DC10;
      v34 = xmmword_18071DC20;
      v35 = xmmword_18071DBD0;
      v36 = xmmword_18071DBC0;
      v37 = vdupq_n_s64(0x38uLL);
      a4 = vdupq_n_s64(0x80uLL);
      v38 = xmmword_18071DBA0;
      v29 = 8 * (v10 & 0xFFFFFFFFFFFFFFF0);
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = xmmword_18071DBB0;
      v42 = v10 & 0xFFFFFFFFFFFFFFF0;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
      do
      {
        v49 = *v30++;
        v50 = vmovl_u8(*v49.i8);
        v51 = vmovl_high_u16(v50);
        v52.i64[0] = v51.u32[2];
        v52.i64[1] = v51.u32[3];
        v53 = v52;
        v54 = vmovl_high_u8(v49);
        v55 = vmovl_u16(*v54.i8);
        v52.i64[0] = v55.u32[2];
        v52.i64[1] = v55.u32[3];
        v56 = v52;
        v52.i64[0] = v55.u32[0];
        v52.i64[1] = v55.u32[1];
        v57 = v52;
        v52.i64[0] = v51.u32[0];
        v52.i64[1] = v51.u32[1];
        v58 = v52;
        v59 = vmovl_u16(*v50.i8);
        v52.i64[0] = v59.u32[2];
        v52.i64[1] = v59.u32[3];
        v60 = v52;
        v61 = vmovl_high_u16(v54);
        v52.i64[0] = v61.u32[0];
        v52.i64[1] = v61.u32[1];
        v62 = v52;
        v52.i64[0] = v59.u32[0];
        v52.i64[1] = v59.u32[1];
        v63 = v52;
        v52.i64[0] = v61.u32[2];
        v52.i64[1] = v61.u32[3];
        v44 = vorrq_s8(vshlq_u64(v53, vandq_s8(v35, v37)), v44);
        v46 = vorrq_s8(vshlq_u64(v56, vandq_s8(v33, v37)), v46);
        v45 = vorrq_s8(vshlq_u64(v57, vandq_s8(v34, v37)), v45);
        v43 = vorrq_s8(vshlq_u64(v58, vandq_s8(v36, v37)), v43);
        v40 = vorrq_s8(vshlq_u64(v60, vandq_s8(v38, v37)), v40);
        v47 = vorrq_s8(vshlq_u64(v62, vandq_s8(v32, v37)), v47);
        v39 = vorrq_s8(vshlq_u64(v63, vandq_s8(v41, v37)), v39);
        v48 = vorrq_s8(vshlq_u64(v52, vandq_s8(v31, v37)), v48);
        v36 = vaddq_s64(v36, a4);
        v38 = vaddq_s64(v38, a4);
        v41 = vaddq_s64(v41, a4);
        v35 = vaddq_s64(v35, a4);
        v34 = vaddq_s64(v34, a4);
        v33 = vaddq_s64(v33, a4);
        v32 = vaddq_s64(v32, a4);
        v31 = vaddq_s64(v31, a4);
        v42 -= 16;
      }

      while (v42);
      v64 = vorrq_s8(vorrq_s8(vorrq_s8(v39, v45), vorrq_s8(v43, v47)), vorrq_s8(vorrq_s8(v40, v46), vorrq_s8(v44, v48)));
      v26 = vorr_s8(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
      if (v10 == v28)
      {
        goto LABEL_38;
      }

      if ((v10 & 0xC) == 0)
      {
        v27 = 8 * (v10 & 0xFFFFFFFFFFFFFFF0);
LABEL_35:
        v81 = v28 + v6 + 8;
        v82 = v81 - v5;
        v83 = v87 + v81;
        do
        {
          v84 = *v83++;
          *&v26 |= v84 << (v27 & 0x38);
          v27 += 8;
        }

        while (!__CFADD__(v82++, 1));
        goto LABEL_38;
      }
    }

    else
    {
      v26 = 0;
      v29 = 0;
      v28 = 0;
    }

    v65 = v28;
    v28 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v27 = 8 * (v10 & 0xFFFFFFFFFFFFFFFCLL);
    v66 = 0uLL;
    v67 = v26;
    v68 = vdupq_n_s64(v29);
    v69 = vaddq_s64(v68, xmmword_18071DBA0);
    v70 = vaddq_s64(v68, xmmword_18071DBB0);
    v71 = (&v87[1] + v65 + v6);
    v72 = v65 - (v10 & 0xFFFFFFFFFFFFFFFCLL);
    v73.i64[0] = 255;
    v73.i64[1] = 255;
    v74 = vdupq_n_s64(0x38uLL);
    result = 32;
    v75 = vdupq_n_s64(0x20uLL);
    do
    {
      v76 = *v71++;
      a4.i32[0] = v76;
      v77 = vmovl_u16(*&vmovl_u8(*a4.i8));
      v78.i64[0] = v77.u32[2];
      v78.i64[1] = v77.u32[3];
      v79 = vandq_s8(v78, v73);
      v78.i64[0] = v77.u32[0];
      v78.i64[1] = v77.u32[1];
      a4 = vshlq_u64(vandq_s8(v78, v73), vandq_s8(v70, v74));
      v66 = vorrq_s8(vshlq_u64(v79, vandq_s8(v69, v74)), v66);
      v67 = vorrq_s8(a4, v67);
      v69 = vaddq_s64(v69, v75);
      v70 = vaddq_s64(v70, v75);
      v72 += 4;
    }

    while (v72);
    v80 = vorrq_s8(v67, v66);
    v26 = vorr_s8(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
    if (v10 == v28)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v26 = 0;
LABEL_38:
  v86 = 0xA000000000000000;
  if (((*&v26 | *&v8) & 0x8080808080808080) == 0)
  {
    v86 = 0xE000000000000000;
  }

  v9 = v86 | (v7 << 56) | *&v26;
LABEL_41:
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t _SmallString.init(_:)(_DWORD *a1, uint64_t a2, uint8x8_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 15)
  {
    return 0;
  }

  v4 = 8;
  if (a2 < 8)
  {
    v4 = a2;
  }

  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 > 3)
  {
    v7 = v4 & 0xC;
    a3.i32[0] = *a1;
    v8 = vmovl_u16(*&vmovl_u8(a3));
    v9.i64[0] = v8.u32[0];
    v9.i64[1] = v8.u32[1];
    v10.i64[0] = 255;
    v10.i64[1] = 255;
    v11 = vandq_s8(v9, v10);
    v9.i64[0] = v8.u32[2];
    v9.i64[1] = v8.u32[3];
    v12 = vshlq_u64(vandq_s8(v9, v10), xmmword_18071DBA0);
    v13.i32[1] = 0;
    v14 = vshlq_u64(v11, xmmword_18071DBB0);
    if (v7 != 4)
    {
      v13.i32[0] = a1[1];
      v15 = vmovl_u16(*&vmovl_u8(v13));
      v16.i64[0] = v15.u32[2];
      v16.i64[1] = v15.u32[3];
      v17 = vandq_s8(v16, v10);
      v16.i64[0] = v15.u32[0];
      v16.i64[1] = v15.u32[1];
      v12 = vorrq_s8(vshlq_u64(v17, xmmword_18071DBD0), v12);
      v14 = vorrq_s8(vshlq_u64(vandq_s8(v16, v10), xmmword_18071DBC0), v14);
    }

    v18 = vorrq_s8(v14, v12);
    result = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    if (v4 == v7)
    {
      goto LABEL_16;
    }

    v6 = 8 * v7;
  }

  else
  {
    result = 0;
    v6 = 0;
    v7 = 0;
  }

  v19 = v4 - v7;
  v20 = a1 + v7;
  do
  {
    v21 = *v20++;
    result |= v21 << (v6 & 0x38);
    v6 += 8;
    --v19;
  }

  while (v19);
LABEL_16:
  v22 = 0;
  v23 = a2 - 8;
  if (a2 > 8)
  {
    v24 = 0;
    v25 = (a1 + 2);
    do
    {
      v26 = *v25++;
      v22 |= v26 << v24;
      v24 += 8;
      --v23;
    }

    while (v23);
  }

  return result;
}

uint64_t _SmallString.withUTF8<A>(_:)(uint64_t (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4 & 0xFFFFFFFFFFFFFFLL;
  return a1(v5, HIBYTE(a4) & 0xF);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance _SmallString(void *a1, uint64_t *a2))(void **a1)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x28, 0xA2A3uLL);
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v6 = *a2;
  *v5 = v2;
  v5[1] = v6;
  if (v6 > 7)
  {
    v7 = v2[1];
    v5[3] = v7;
    v8 = protocol witness for MutableCollection.subscript.modify in conformance _SmallString;
  }

  else
  {
    v7 = *v2;
    v5[2] = *v2;
    v8 = protocol witness for MutableCollection.subscript.modify in conformance _SmallString;
  }

  *(v5 + 32) = v7 >> (8 * (v6 & 7u));
  return v8;
}

void protocol witness for MutableCollection.subscript.modify in conformance _SmallString(void **a1)
{
  v1 = *a1;
  **v1 = ((-255 << (8 * (v1[8] & 7u))) - 1) & *(v1 + 2) | (v1[32] << (8 * (v1[8] & 7u)));
  free(v1);
}

{
  v1 = *a1;
  *(*v1 + 8) = ((-255 << (8 * (v1[8] & 7u))) - 1) & *(v1 + 3) | (v1[32] << (8 * (v1[8] & 7u)));
  free(v1);
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance _SmallString@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _SmallString@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v2, *(v2 + 8));
  *a2 = result;
  return result;
}

unint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance _SmallString(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v1, *(v1 + 8));
  *a1 = result;
  return result;
}

unint64_t _ss12_SmallStringVSksSk5index_8offsetBy5IndexQzAF_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3, *(v3 + 8));
  *a3 = result;
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance _SmallString@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *v4;
  v9 = v4[1];
  v10 = specialized RandomAccessCollection<>.distance(from:to:)(*a1, *a3, *v4, v9);
  if (a2 < 1)
  {
    if (v10 <= 0 && v10 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v7, a2, v8, v9);
    v12 = 0;
    goto LABEL_11;
  }

  if (v10 < 0 || v10 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  result = 0;
  v12 = 1;
LABEL_11:
  *a4 = result;
  *(a4 + 8) = v12;
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance _SmallString@<X0>(uint64_t result@<X0>, int8x8_t *a2@<X8>, int64x2_t a3@<Q7>)
{
  v5 = *result;
  v4 = *(result + 8);
  v6 = v3[1];
  v87[0] = *v3;
  v87[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v5 < 0 || (HIBYTE(v6) & 0xF) < v4 || (v7 = v4 - v5, v4 - v5 < 0))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v4 == v5)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_41;
  }

  v10 = v7 - 8;
  if (v7 >= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v4 - v5;
  }

  v12 = v11 - 1;
  if (v11 < v11 - 1)
  {
    v12 = v11;
  }

  if (v11 == v12)
  {
LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = (v87 + v5);
  if (v7 > 7)
  {
    v14 = v11 & 8;
    v15 = vmovl_u8(*v13);
    v16 = vmovl_u16(*v15.i8);
    v17.i64[0] = v16.u32[2];
    v17.i64[1] = v16.u32[3];
    v18 = v17;
    v19 = vmovl_high_u16(v15);
    v17.i64[0] = v19.u32[2];
    v17.i64[1] = v19.u32[3];
    v20 = v17;
    v17.i64[0] = v16.u32[0];
    v17.i64[1] = v16.u32[1];
    v21 = v17;
    v17.i64[0] = v19.u32[0];
    v17.i64[1] = v19.u32[1];
    v22 = vorrq_s8(vorrq_s8(vshlq_u64(v21, xmmword_18071DBB0), vshlq_u64(v17, xmmword_18071DBC0)), vorrq_s8(vshlq_u64(v18, xmmword_18071DBA0), vshlq_u64(v20, xmmword_18071DBD0)));
    v8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    if (v11 == v14)
    {
      goto LABEL_19;
    }

    result = 8 * v14;
  }

  else
  {
    v8 = 0;
    result = 0;
    v14 = 0;
  }

  v23 = v11 - v14;
  v24 = v87 + v14 + v5;
  do
  {
    v25 = *v24++;
    *&v8 |= v25 << (result & 0x38);
    result += 8;
    --v23;
  }

  while (v23);
LABEL_19:
  if (v7 >= 9)
  {
    if (v10 <= v4 - v5 - 9)
    {
      goto LABEL_12;
    }

    if (v10 < 4)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      goto LABEL_35;
    }

    if (v10 >= 0x10)
    {
      v30 = &v13[1];
      v28 = v10 & 0xFFFFFFFFFFFFFFF0;
      v31 = xmmword_18071DBF0;
      v32 = xmmword_18071DC00;
      v33 = xmmword_18071DC10;
      v34 = xmmword_18071DC20;
      v35 = xmmword_18071DBD0;
      v36 = xmmword_18071DBC0;
      v37 = vdupq_n_s64(0x38uLL);
      a3 = vdupq_n_s64(0x80uLL);
      v38 = xmmword_18071DBA0;
      v29 = 8 * (v10 & 0xFFFFFFFFFFFFFFF0);
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = xmmword_18071DBB0;
      v42 = v10 & 0xFFFFFFFFFFFFFFF0;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
      do
      {
        v49 = *v30++;
        v50 = vmovl_u8(*v49.i8);
        v51 = vmovl_high_u16(v50);
        v52.i64[0] = v51.u32[2];
        v52.i64[1] = v51.u32[3];
        v53 = v52;
        v54 = vmovl_high_u8(v49);
        v55 = vmovl_u16(*v54.i8);
        v52.i64[0] = v55.u32[2];
        v52.i64[1] = v55.u32[3];
        v56 = v52;
        v52.i64[0] = v55.u32[0];
        v52.i64[1] = v55.u32[1];
        v57 = v52;
        v52.i64[0] = v51.u32[0];
        v52.i64[1] = v51.u32[1];
        v58 = v52;
        v59 = vmovl_u16(*v50.i8);
        v52.i64[0] = v59.u32[2];
        v52.i64[1] = v59.u32[3];
        v60 = v52;
        v61 = vmovl_high_u16(v54);
        v52.i64[0] = v61.u32[0];
        v52.i64[1] = v61.u32[1];
        v62 = v52;
        v52.i64[0] = v59.u32[0];
        v52.i64[1] = v59.u32[1];
        v63 = v52;
        v52.i64[0] = v61.u32[2];
        v52.i64[1] = v61.u32[3];
        v44 = vorrq_s8(vshlq_u64(v53, vandq_s8(v35, v37)), v44);
        v46 = vorrq_s8(vshlq_u64(v56, vandq_s8(v33, v37)), v46);
        v45 = vorrq_s8(vshlq_u64(v57, vandq_s8(v34, v37)), v45);
        v43 = vorrq_s8(vshlq_u64(v58, vandq_s8(v36, v37)), v43);
        v40 = vorrq_s8(vshlq_u64(v60, vandq_s8(v38, v37)), v40);
        v47 = vorrq_s8(vshlq_u64(v62, vandq_s8(v32, v37)), v47);
        v39 = vorrq_s8(vshlq_u64(v63, vandq_s8(v41, v37)), v39);
        v48 = vorrq_s8(vshlq_u64(v52, vandq_s8(v31, v37)), v48);
        v36 = vaddq_s64(v36, a3);
        v38 = vaddq_s64(v38, a3);
        v41 = vaddq_s64(v41, a3);
        v35 = vaddq_s64(v35, a3);
        v34 = vaddq_s64(v34, a3);
        v33 = vaddq_s64(v33, a3);
        v32 = vaddq_s64(v32, a3);
        v31 = vaddq_s64(v31, a3);
        v42 -= 16;
      }

      while (v42);
      v64 = vorrq_s8(vorrq_s8(vorrq_s8(v39, v45), vorrq_s8(v43, v47)), vorrq_s8(vorrq_s8(v40, v46), vorrq_s8(v44, v48)));
      v26 = vorr_s8(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
      if (v10 == v28)
      {
        goto LABEL_38;
      }

      if ((v10 & 0xC) == 0)
      {
        v27 = 8 * (v10 & 0xFFFFFFFFFFFFFFF0);
LABEL_35:
        v81 = v28 + v5 + 8;
        v82 = v81 - v4;
        v83 = v87 + v81;
        do
        {
          v84 = *v83++;
          *&v26 |= v84 << (v27 & 0x38);
          v27 += 8;
        }

        while (!__CFADD__(v82++, 1));
        goto LABEL_38;
      }
    }

    else
    {
      v26 = 0;
      v29 = 0;
      v28 = 0;
    }

    v65 = v28;
    v28 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v27 = 8 * (v10 & 0xFFFFFFFFFFFFFFFCLL);
    v66 = 0uLL;
    v67 = v26;
    v68 = vdupq_n_s64(v29);
    v69 = vaddq_s64(v68, xmmword_18071DBA0);
    v70 = vaddq_s64(v68, xmmword_18071DBB0);
    v71 = (&v87[1] + v65 + v5);
    v72 = v65 - (v10 & 0xFFFFFFFFFFFFFFFCLL);
    v73.i64[0] = 255;
    v73.i64[1] = 255;
    v74 = vdupq_n_s64(0x38uLL);
    result = 32;
    v75 = vdupq_n_s64(0x20uLL);
    do
    {
      v76 = *v71++;
      a3.i32[0] = v76;
      v77 = vmovl_u16(*&vmovl_u8(*a3.i8));
      v78.i64[0] = v77.u32[2];
      v78.i64[1] = v77.u32[3];
      v79 = vandq_s8(v78, v73);
      v78.i64[0] = v77.u32[0];
      v78.i64[1] = v77.u32[1];
      a3 = vshlq_u64(vandq_s8(v78, v73), vandq_s8(v70, v74));
      v66 = vorrq_s8(vshlq_u64(v79, vandq_s8(v69, v74)), v66);
      v67 = vorrq_s8(a3, v67);
      v69 = vaddq_s64(v69, v75);
      v70 = vaddq_s64(v70, v75);
      v72 += 4;
    }

    while (v72);
    v80 = vorrq_s8(v67, v66);
    v26 = vorr_s8(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
    if (v10 == v28)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v26 = 0;
LABEL_38:
  v86 = 0xA000000000000000;
  if (((*&v26 | *&v8) & 0x8080808080808080) == 0)
  {
    v86 = 0xE000000000000000;
  }

  v9 = v86 | (v7 << 56) | *&v26;
LABEL_41:
  *a2 = v8;
  a2[1] = v9;
  return result;
}

void protocol witness for Collection.indices.getter in conformance _SmallString(void *a1@<X8>)
{
  v2 = *(v1 + 15) & 0xF;
  *a1 = 0;
  a1[1] = v2;
}

unint64_t protocol witness for Collection.index(after:) in conformance _SmallString@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v2, *(v2 + 8));
  *a2 = result;
  return result;
}

unint64_t protocol witness for Collection.formIndex(after:) in conformance _SmallString(unint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v1, *(v1 + 8));
  *a1 = result;
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance _SmallString@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

unint64_t static _StringObject.Nibbles.small(withCount:isASCII:)(uint64_t a1, char a2)
{
  v2 = 0xA000000000000000;
  if (a2)
  {
    v2 = 0xE000000000000000;
  }

  return v2 | (a1 << 56);
}

uint64_t _bytesToUInt64(_:_:)(uint8x16_t *a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_17;
  }

  if (a2 >= 0x10)
  {
    v12 = a2 & 0x7FFFFFFFFFFFFFF0;
    v14 = xmmword_18071DBF0;
    v15 = xmmword_18071DC00;
    v16 = xmmword_18071DC10;
    v17 = xmmword_18071DC20;
    v13 = 8 * (a2 & 0x7FFFFFFFFFFFFFF0);
    v18 = 0uLL;
    v19 = xmmword_18071DBD0;
    v20 = xmmword_18071DBC0;
    a10 = vdupq_n_s64(0x38uLL);
    v21 = a2 & 0x7FFFFFFFFFFFFFF0;
    v22 = vdupq_n_s64(0x80uLL);
    v23 = a1;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = xmmword_18071DBA0;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = xmmword_18071DBB0;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    do
    {
      v33 = *v23++;
      v34 = vmovl_u8(*v33.i8);
      v35 = vmovl_high_u16(v34);
      v36.i64[0] = v35.u32[2];
      v36.i64[1] = v35.u32[3];
      v37 = v36;
      v38 = vmovl_high_u8(v33);
      v39 = vmovl_u16(*v38.i8);
      v36.i64[0] = v39.u32[2];
      v36.i64[1] = v39.u32[3];
      v40 = v36;
      v36.i64[0] = v39.u32[0];
      v36.i64[1] = v39.u32[1];
      v41 = v36;
      v36.i64[0] = v35.u32[0];
      v36.i64[1] = v35.u32[1];
      v42 = v36;
      v43 = vmovl_u16(*v34.i8);
      v36.i64[0] = v43.u32[2];
      v36.i64[1] = v43.u32[3];
      v44 = v36;
      v45 = vmovl_high_u16(v38);
      v36.i64[0] = v45.u32[0];
      v36.i64[1] = v45.u32[1];
      v46 = v36;
      v36.i64[0] = v43.u32[0];
      v36.i64[1] = v43.u32[1];
      v47 = v36;
      v36.i64[0] = v45.u32[2];
      v36.i64[1] = v45.u32[3];
      v27 = vorrq_s8(vshlq_u64(v37, vandq_s8(v19, a10)), v27);
      v30 = vorrq_s8(vshlq_u64(v40, vandq_s8(v16, a10)), v30);
      v28 = vorrq_s8(vshlq_u64(v41, vandq_s8(v17, a10)), v28);
      v25 = vorrq_s8(vshlq_u64(v42, vandq_s8(v20, a10)), v25);
      v24 = vorrq_s8(vshlq_u64(v44, vandq_s8(v26, a10)), v24);
      v31 = vorrq_s8(vshlq_u64(v46, vandq_s8(v15, a10)), v31);
      v18 = vorrq_s8(vshlq_u64(v47, vandq_s8(v29, a10)), v18);
      v32 = vorrq_s8(vshlq_u64(v36, vandq_s8(v14, a10)), v32);
      v20 = vaddq_s64(v20, v22);
      v26 = vaddq_s64(v26, v22);
      v29 = vaddq_s64(v29, v22);
      v19 = vaddq_s64(v19, v22);
      v17 = vaddq_s64(v17, v22);
      v16 = vaddq_s64(v16, v22);
      v15 = vaddq_s64(v15, v22);
      v14 = vaddq_s64(v14, v22);
      v21 -= 16;
    }

    while (v21);
    v48 = vorrq_s8(vorrq_s8(vorrq_s8(v18, v28), vorrq_s8(v25, v31)), vorrq_s8(vorrq_s8(v24, v30), vorrq_s8(v27, v32)));
    v10 = vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
    if (v12 == a2)
    {
      return v10;
    }

    if ((a2 & 0xC) == 0)
    {
      v11 = 8 * (a2 & 0x7FFFFFFFFFFFFFF0);
LABEL_17:
      v65 = a2 - v12;
      v66 = &a1->u8[v12];
      do
      {
        v67 = *v66++;
        *&v10 |= v67 << (v11 & 0x38);
        v11 += 8;
        --v65;
      }

      while (v65);
      return v10;
    }
  }

  else
  {
    v10 = 0;
    v13 = 0;
    v12 = 0;
  }

  v49 = v12;
  v12 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v11 = 8 * (a2 & 0x7FFFFFFFFFFFFFFCLL);
  v50 = 0uLL;
  v51 = v10;
  v52 = vdupq_n_s64(v13);
  v53 = vaddq_s64(v52, xmmword_18071DBA0);
  v54 = vaddq_s64(v52, xmmword_18071DBB0);
  v55 = (a1->u32 + v49);
  v56 = v49 - (a2 & 0x7FFFFFFFFFFFFFFCLL);
  v57.i64[0] = 255;
  v57.i64[1] = 255;
  v58 = vdupq_n_s64(0x38uLL);
  v59 = vdupq_n_s64(0x20uLL);
  do
  {
    v60 = *v55++;
    a10.i32[0] = v60;
    v61 = vmovl_u16(*&vmovl_u8(*a10.i8));
    v62.i64[0] = v61.u32[2];
    v62.i64[1] = v61.u32[3];
    v63 = vandq_s8(v62, v57);
    v62.i64[0] = v61.u32[0];
    v62.i64[1] = v61.u32[1];
    a10 = vshlq_u64(vandq_s8(v62, v57), vandq_s8(v54, v58));
    v50 = vorrq_s8(vshlq_u64(v63, vandq_s8(v53, v58)), v50);
    v51 = vorrq_s8(a10, v51);
    v53 = vaddq_s64(v53, v59);
    v54 = vaddq_s64(v54, v59);
    v56 += 4;
  }

  while (v56);
  v64 = vorrq_s8(v51, v50);
  v10 = vorr_s8(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
  if (v12 != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

uint64_t Sequence<>.sorted()(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness(0, v10, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = v11;
  (*(v7 + 16))(v9, v3, a1);
  v26 = (*(a2 + 56))(a1, a2);
  v15 = type metadata accessor for ContiguousArray(0, v12, v13, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v15, v16);
  v19 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v15, v18);
  MutableCollection<>.sort(by:)(partial apply for implicit closure #1 in Sequence<>.sorted(), v21, v15, WitnessTable, v19);
  return v26;
}

uint64_t Sequence.sorted(by:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v23 = (*(a4 + 56))(a3, a4);
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v15 = type metadata accessor for ContiguousArray(0, v12, v13, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v15, v16);
  v19 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v15, v18);
  MutableCollection<>.sort(by:)(a1, a2, v15, WitnessTable, v19);
  v20 = v23;
  if (v5)
  {
    v23;
  }

  return v20;
}

void *MutableCollection<>.sort()(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness(0, *(*(a2 + 8) + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = v8;
  return MutableCollection<>.sort(by:)(partial apply for implicit closure #1 in MutableCollection<>.sort(), v10, a1, a2, a3);
}