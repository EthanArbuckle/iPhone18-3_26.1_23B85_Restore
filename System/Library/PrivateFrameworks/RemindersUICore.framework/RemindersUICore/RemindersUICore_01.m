uint64_t sub_21D0E3B70(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  if (v1[4])
  {
    v5 = MEMORY[0x28223BE20](result);
    v10[2] = a1;
    v10[3] = v1;
    MEMORY[0x28223BE20](v5);
    v7[2] = *(v3 + 80);
    v8 = *(v3 + 88);
    v9 = *(v3 + 104);
    type metadata accessor for TTRCollectionViewItemObservedViewModel();

    WitnessTable = swift_getWitnessTable();
    TTRObservableViewModelCollection<>.updateAllAndPublishIfChanged(using:shouldForcePublish:)(sub_21D11F234, v10, sub_21D111F98, v7, WitnessTable);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TTRObservableViewModelCollection<>.updateAllAndPublishIfChanged(using:shouldForcePublish:)(void (*a1)(char *, char *), uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v10 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  return sub_21D0E3D78(&v13, a1, a2, a3, a4, v10, a5, WitnessTable);
}

uint64_t sub_21D0E3D78(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v92 = a8;
  v86 = a7;
  v85 = a5;
  v84 = a4;
  v101 = a3;
  v100 = a2;
  v106 = a1;
  v91 = *v8;
  v10 = v91;
  v105 = *(v91 + 80);
  v11 = v105;
  v99 = sub_21DBFBA8C();
  v12 = *(v99 - 8);
  v13 = MEMORY[0x28223BE20](v99 - 8);
  v98 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v118 = v80 - v16;
  v17 = *(v11 - 8);
  MEMORY[0x28223BE20](v15);
  v83 = v80 - v18;
  v117 = sub_21DBFBA8C();
  v123 = *(v117 - 8);
  v19 = MEMORY[0x28223BE20](v117);
  v21 = v80 - v20;
  v112 = a6;
  v22 = *(a6 - 8);
  v23 = MEMORY[0x28223BE20](v19);
  v90 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v10 + 88);
  v94 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v113 = v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v102 = v80 - v28;
  v80[2] = type metadata accessor for TTRObservableViewModel();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v111 = sub_21DBFBA8C();
  v122 = *(v111 - 8);
  v30 = MEMORY[0x28223BE20](v111);
  v32 = v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v116 = v80 - v33;
  swift_beginAccess();
  v34 = v8[4];
  if ((v34 & 0xC000000000000001) != 0)
  {
    v35 = sub_21DBFC21C();
    v36 = 0;
    v37 = 0;
    v114 = v35 | 0x8000000000000000;
    v115 = 0;
  }

  else
  {
    v38 = -1 << *(v34 + 32);
    v36 = ~v38;
    v39 = *(v34 + 64);
    v114 = v34;
    v115 = v34 + 64;
    v40 = -v38;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v37 = v41 & v39;
  }

  v119 = (v94 + 32);
  v110 = TupleTypeMetadata2 - 8;
  v80[1] = v36;
  v42 = (v36 + 64) >> 6;
  v93 = v94 + 16;
  v109 = (v122 + 32);
  v104 = (v123 + 16);
  v103 = (v22 + 48);
  v89 = (v22 + 32);
  v88 = (v22 + 8);
  v107 = (v94 + 8);
  v87 = (v123 + 8);
  v97 = (v12 + 16);
  v96 = (v12 + 8);
  v95 = (v17 + 48);
  v82 = (v17 + 32);
  v81 = (v17 + 8);
  result = sub_21DBF8E0C();
  v44 = 0;
  v120 = TupleTypeMetadata2;
  v123 = v32;
  v45 = v116;
  for (i = v42; ; v42 = i)
  {
    v46 = v114;
    if ((v114 & 0x8000000000000000) != 0)
    {
      v62 = sub_21DBFC2DC();
      v49 = v113;
      if (v62)
      {
        v63 = v102;
        sub_21DBFC60C();
        swift_unknownObjectRelease();
        sub_21DBFC60C();
        swift_unknownObjectRelease();
        v64 = *(TupleTypeMetadata2 + 48);
        v65 = v63;
        v32 = v123;
        (*v119)(v123, v65, v25);
        *&v32[v64] = v124;
        v60 = *(TupleTypeMetadata2 - 8);
        (*(v60 + 56))(v32, 0, 1, TupleTypeMetadata2);
      }

      else
      {
        v60 = *(TupleTypeMetadata2 - 8);
        (*(v60 + 56))(v32, 1, 1, TupleTypeMetadata2);
      }

      v121 = v44;
      v122 = v37;
      v61 = v112;
      goto LABEL_26;
    }

    v47 = v37;
    v48 = v44;
    v49 = v113;
    if (!v37)
    {
      break;
    }

LABEL_20:
    v122 = (v47 - 1) & v47;
    v53 = __clz(__rbit64(v47)) | (v48 << 6);
    v54 = v94;
    v55 = v102;
    (*(v94 + 16))(v102, *(v114 + 48) + *(v94 + 72) * v53, v25);
    v56 = *(*(v46 + 56) + 8 * v53);
    v57 = *(v120 + 48);
    v58 = *(v54 + 32);
    TupleTypeMetadata2 = v120;
    v59 = v55;
    v32 = v123;
    v58(v123, v59, v25);
    *&v32[v57] = v56;
    v60 = *(TupleTypeMetadata2 - 8);
    (*(v60 + 56))(v32, 0, 1, TupleTypeMetadata2);

    v121 = v48;
LABEL_21:
    v61 = v112;
    v45 = v116;
LABEL_26:
    (*v109)(v45, v32, v111);
    if ((*(v60 + 48))(v45, 1, TupleTypeMetadata2) == 1)
    {
      return sub_21D0CFAF8();
    }

    v66 = *&v45[*(TupleTypeMetadata2 + 48)];
    (*v119)(v49, v45, v25);
    (*v104)(v21, v106, v117);
    if ((*v103)(v21, 1, v61) == 1)
    {
      (*v87)(v21, v117);
      v67 = v105;
    }

    else
    {
      v68 = v90;
      (*v89)(v90, v21, v61);
      v69 = sub_21DBFA59C();
      v70 = v61;
      v71 = v69;
      (*v88)(v68, v70);
      v67 = v105;
      if ((v71 & 1) == 0)
      {
        (*v107)(v49, v25);

        v44 = v121;
        v37 = v122;
        continue;
      }
    }

    v72 = v25;
    v73 = *(*v66 + 88);
    swift_beginAccess();
    v74 = v98;
    v75 = v99;
    (*v97)(v98, v66 + v73, v99);
    v100(v49, v74);
    v76 = *v96;
    v77 = v118;
    (*v96)(v74, v75);
    if ((*v95)(v77, 1, v67) == 1)
    {
      v25 = v72;
      (*v107)(v49, v72);

      result = v76(v77, v75);
    }

    else
    {
      v78 = v83;
      (*v82)(v83, v77, v67);
      v79 = v84(v49);
      TTRObservableViewModel<A>.update(with:forcePublish:)(v78, v79 & 1, v86);

      (*v81)(v78, v67);
      v25 = v72;
      result = (*v107)(v49, v72);
    }

    v44 = v121;
    v37 = v122;
    TupleTypeMetadata2 = v120;
    v32 = v123;
    v45 = v116;
  }

  if (v42 <= v44 + 1)
  {
    v50 = v44 + 1;
  }

  else
  {
    v50 = v42;
  }

  v51 = v50 - 1;
  v52 = v44;
  while (1)
  {
    v48 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v48 >= v42)
    {
      v121 = v51;
      v60 = *(TupleTypeMetadata2 - 8);
      (*(v60 + 56))(v32, 1, 1, TupleTypeMetadata2);
      v122 = 0;
      goto LABEL_21;
    }

    v47 = *(v115 + 8 * v48);
    ++v52;
    if (v47)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D0E49BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t TTRTreeContentsQueryable.children(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 24))();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v12[8] = 0;
    v12[9] = result;
    MEMORY[0x28223BE20](result);
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = v3;
    v12[5] = a1;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A050);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = sub_21D0E8418(&qword_280D17898);
    return sub_21D0E5014(sub_21D10893C, v12, v8, AssociatedTypeWitness, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);
  }

  return result;
}

uint64_t TTRMutableTreeStorage.numberOfChildren(of:)(uint64_t a1)
{
  v25 = *v1;
  v3 = v25[10];
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = v25[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  (*(v5 + 16))(v7, a1, v4);
  v15 = *(v3 - 8);
  if ((*(v15 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    v16 = v25[11];
    v17 = v25[13];
    sub_21DBF8E0C();
    v26 = v3;
    v27 = v16;
    v28 = v8;
    v29 = v17;
    type metadata accessor for TTRTreeStorageNode();
    v18 = sub_21DBFA6DC();
  }

  else
  {
    (*(v8 + 24))(v3, v8);
    (*(v15 + 8))(v7, v3);
    v19 = v24;
    (*(v24 + 32))(v14, v12, AssociatedTypeWitness);
    if (sub_21D109DEC())
    {
      swift_beginAccess();
      sub_21DBF8E0C();

      v20 = v25[11];
      v21 = v25[13];
      v26 = v3;
      v27 = v20;
      v28 = v8;
      v29 = v21;
      type metadata accessor for TTRTreeStorageNode();
      v18 = sub_21DBFA6DC();
    }

    else
    {
      v18 = 0;
    }

    (*(v19 + 8))(v14, AssociatedTypeWitness);
  }

  return v18;
}

uint64_t sub_21D0E4EC4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_21D0E4FC0()
{
  result = qword_280D178F8;
  if (!qword_280D178F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D178F8);
  }

  return result;
}

uint64_t sub_21D0E5014(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_21DBFAC8C();
  if (!v19)
  {
    return sub_21DBFA68C();
  }

  v41 = v19;
  v45 = sub_21DBFC06C();
  v32 = sub_21DBFC07C();
  sub_21DBFC00C();
  result = sub_21DBFAC3C();
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
      v22 = sub_21DBFAD3C();
      v23 = v14;
      v24 = v14;
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
      sub_21DBFC05C();
      result = sub_21DBFACBC();
      ++v21;
      v14 = v24;
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

uint64_t sub_21D0E5434()
{
  sub_21DBF8D0C();
  swift_getTupleTypeMetadata2();

  return sub_21DBFA68C();
}

uint64_t UICollectionViewDiffableDataSource.apply(_:for:option:canBatchIncrementalUpdates:completion:)(unint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, int a4, uint64_t (*a5)(void), void *a6)
{
  v7 = v6;
  v66 = a6;
  LODWORD(v61) = a4;
  v60 = a2;
  ObjectType = swift_getObjectType();
  v65 = v7;
  v10 = (*MEMORY[0x277D85000] & *v7) + *MEMORY[0x277D74D48];
  v12 = *v10;
  v11 = *(v10 + 8);
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  aBlock = v12;
  v69 = v11;
  v70 = v14;
  v71 = v13;
  v62 = v13;
  v15 = type metadata accessor for UICollectionViewDiffableDataSource.CombinedSnapshots();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v55 - v19;
  LODWORD(a3) = *a3;
  v63 = a1;
  result = UICollectionViewDiffableDataSource.CombinedSnapshots.isEmpty.getter(v18);
  if (result)
  {
    if (a5)
    {
      return a5();
    }
  }

  else
  {
    if (a3 == 2)
    {
      v23 = v63;
      v24 = a5;
      v25 = v62;
      sub_21D0E5DD0(v63, v24, v66, v12, v11, v14, v62, &aBlock);
      v57 = v69;
      v58 = aBlock;
      v60 = v70;
      v61 = v71;
      v59 = v72;
      v66 = objc_opt_self();
      (*(v16 + 16))(v20, v23, v15);
      v26 = (*(v16 + 80) + 56) & ~*(v16 + 80);
      v27 = v26 + v17;
      v56 = v27 & 0xFFFFFFFFFFFFFFF8;
      v63 = ((v27 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8;
      a3 = swift_allocObject();
      *(a3 + 16) = v12;
      *(a3 + 24) = v11;
      *(a3 + 32) = v14;
      *(a3 + 40) = v25;
      v12 = v65;
      *(a3 + 48) = v65;
      (*(v16 + 32))(a3 + v26, v20, v15);
      *(a3 + v27) = 2;
      a5 = v57;
      v28 = (a3 + v56);
      v14 = v58;
      v29 = v59;
      v28[1] = v58;
      v28[2] = a5;
      v31 = v60;
      v30 = v61;
      v28[3] = v60;
      v28[4] = v30;
      v28[5] = v29;
      *(a3 + v63) = ObjectType;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_21D0E6230;
      *(v11 + 24) = a3;
      v72 = sub_21D0E622C;
      v73 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v69 = 1107296256;
      v70 = sub_21D0E6204;
      v71 = &block_descriptor_13_9;
      v32 = _Block_copy(&aBlock);
      v33 = v12;
      sub_21D0D0E74(v14, a5);
      sub_21D0E61F4(v31, v30);

      [v66 performWithoutAnimation_];
      sub_21D0D0E88(v14);
      sub_21D0E5BE4(v31, v30);
      _Block_release(v32);
      LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

      if ((v32 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    if (v61)
    {
      if (a5)
      {
        v34 = swift_allocObject();
        v35 = v66;
        *(v34 + 16) = a5;
        *(v34 + 24) = v35;
        v36 = sub_21D0E6078;
      }

      else
      {
        v36 = 0;
        v34 = 0;
        v35 = v66;
      }

      v67[0] = v36;
      v67[1] = v34;
      sub_21D0D0E74(a5, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE675E0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE675E8);
      sub_21D109F40(sub_21DB7CED0, 0, MEMORY[0x277D84A98], v41, v42, &aBlock);
      v43 = sub_21D0D0E88(v36);
      v44 = aBlock;
      if (aBlock)
      {
        v45 = v69;
        v43 = swift_allocObject();
        v46 = v43;
        *(v43 + 16) = v44;
        *(v43 + 24) = v45;
        v47 = sub_21DB7E080;
      }

      else
      {
        v47 = 0;
        v46 = 0;
      }

      MEMORY[0x28223BE20](v43);
      v49 = v60;
      *(&v55 - 8) = v60;
      *(&v55 - 7) = v48;
      v51 = ObjectType;
      v50 = v65;
      *(&v55 - 6) = v65;
      *(&v55 - 40) = a3;
      *(&v55 - 39) = a3 & 1;
      *(&v55 - 4) = v47;
      *(&v55 - 3) = v46;
      *(&v55 - 2) = v51;
      if (a3)
      {
        sub_21DB7CF6C(v49, v48, v50, a3, 1, v47, v46, v51);
        return sub_21D0D0E88(v47);
      }

      else
      {
        v52 = objc_opt_self();
        v53 = swift_allocObject();
        *(v53 + 16) = sub_21DB7E064;
        *(v53 + 24) = &v55 - 10;
        v72 = sub_21D0E622C;
        v73 = v53;
        aBlock = MEMORY[0x277D85DD0];
        v69 = 1107296256;
        v70 = sub_21D0E6204;
        v71 = &block_descriptor_20_2;
        v54 = _Block_copy(&aBlock);

        [v52 performWithoutAnimation_];
        _Block_release(v54);
        LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

        result = sub_21D0D0E88(v47);
        if (v52)
        {
          __break(1u);
        }
      }
    }

    else
    {
      v37 = v63;
      sub_21D0E5DD0(v63, a5, v66, v12, v11, v14, v62, &aBlock);
      v38 = aBlock;
      v39 = v70;
      v40 = v71;
      LOBYTE(v67[0]) = a3;
      sub_21D0D0E74(aBlock, v69);
      sub_21D0E61F4(v39, v40);
      sub_21D0E63D0(v67, &aBlock, v37, v65, ObjectType);
      sub_21D0E67DC();
      sub_21D0D0E88(v38);
      sub_21D0E5BE4(v39, v40);
      sub_21D0D0E88(v38);
      return sub_21D0E5BE4(v39, v40);
    }
  }

  return result;
}

uint64_t sub_21D0E5BE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21D0E5BF4()
{
  v1 = *(type metadata accessor for UICollectionViewDiffableDataSource.CombinedSnapshots() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = sub_21DBF8B0C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  if (*(v0 + v3 + 8))
  {
  }

  if (*(v0 + v3 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D0E5D90()
{

  return swift_deallocObject();
}

uint64_t sub_21D0E5DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v30 = *(a1 + *(type metadata accessor for UICollectionViewDiffableDataSource.CombinedSnapshots() + 52));
  sub_21DBF8D0C();
  swift_getTupleTypeMetadata2();
  sub_21DBFA74C();
  swift_getWitnessTable();
  v16 = sub_21DBFACFC();
  if (v16)
  {
    sub_21D0D0E74(a2, a3);
LABEL_9:
    v25 = 0;
    v27 = 0;
    result = 0;
    goto LABEL_10;
  }

  if (a2)
  {
    v16 = swift_allocObject();
    v17 = v16;
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v18 = sub_21D11DA28;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v29[0] = v29;
  v29[2] = v18;
  v29[3] = v17;
  MEMORY[0x28223BE20](v16);
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v28[6] = a1;
  v20 = v19;
  sub_21D0D0E74(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE675E0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE67678);
  sub_21D109F40(sub_21D10A2B8, v28, MEMORY[0x277D84A98], v21, v22, &v30);
  sub_21D0D0E88(v20);
  v23 = v31;
  if (!v31)
  {
    a2 = 0;
    a3 = 0;
    goto LABEL_9;
  }

  v24 = v32;
  v25 = v30;
  result = swift_allocObject();
  a2 = 0;
  a3 = 0;
  *(result + 16) = v23;
  *(result + 24) = v24;
  v27 = sub_21D11DA2C;
LABEL_10:
  *a8 = a2;
  a8[1] = a3;
  a8[2] = v25;
  a8[3] = v27;
  a8[4] = result;
  return result;
}

char *sub_21D0E60A0(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF8B0C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_21DBFBA8C();
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 52)] = *&a2[*(a3 + 52)];
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D0E61F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21D0E6318(uint64_t a1, void *a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a4 + 32);
  v8 = a3;
  v6 = *(a4 + 16);
  v9[0] = *a4;
  v9[1] = v6;
  v10 = v5;
  sub_21D0E63D0(&v8, v9, a1, a2, a5);
  return sub_21D0E67DC();
}

uint64_t sub_21D0E6390()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  v6[0] = *(v0 + 40);
  v6[1] = v3;
  v4 = *(v0 + 80);
  v7 = *(v0 + 72);
  return sub_21D0E6318(v1, v2, *(v0 + 32), v6, v4);
}

uint64_t sub_21D0E63D0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v27 = a5;
  v28 = a2;
  v8 = ((*MEMORY[0x277D85000] & *a4) + *MEMORY[0x277D74D48]);
  v9 = v8[1];
  v29 = *v8;
  v30 = v9;
  v10 = sub_21DBF8B0C();
  v11 = sub_21DBFBA8C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = *(v10 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = *a1;
  (*(v12 + 16))(v15, a3, v11);
  if ((*(v16 + 48))(v15, 1, v10) == 1)
  {
    return (*(v12 + 8))(v15, v11);
  }

  (*(v16 + 32))(v18, v15, v10);
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  sub_21DBFBEEC();
  *&v29 = v27;
  swift_getMetatypeMetadata();
  v21 = sub_21DBFA1AC();
  v23 = v22;

  *&v29 = v21;
  *(&v29 + 1) = v23;
  if (v19 == 2)
  {
    v24 = MEMORY[0x223D42AA0](0xD00000000000001ELL, 0x800000021DC7C6A0);
    MEMORY[0x28223BE20](v24);
    *(&v26 - 4) = a4;
    *(&v26 - 3) = v18;
    *(&v26 - 2) = v28;
  }

  else
  {
    v25 = MEMORY[0x223D42AA0](0xD000000000000015, 0x800000021DC7C6C0);
    MEMORY[0x28223BE20](v25);
    *(&v26 - 4) = a4;
    *(&v26 - 3) = v18;
    *(&v26 - 16) = v19 & 1;
    *(&v26 - 1) = v28;
  }

  sub_21DBFAE9C();
  sub_21DBF626C();

  return (*(v16 + 8))(v18, v10);
}

uint64_t sub_21D0E67DC()
{
  type metadata accessor for UICollectionViewDiffableDataSource.CombinedSnapshots();
  sub_21DBF8D0C();
  swift_getTupleTypeMetadata2();
  sub_21DBFA74C();
  swift_getWitnessTable();
  result = sub_21DBFACFC();
  if ((result & 1) == 0)
  {
    sub_21DBFBEEC();
    swift_getMetatypeMetadata();
    sub_21DBFA1AC();

    MEMORY[0x223D42AA0](0xD00000000000001BLL, 0x800000021DC7C680);
    sub_21DBFA6DC();
    v1 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v1);

    v2 = MEMORY[0x223D42AA0](41, 0xE100000000000000);
    MEMORY[0x28223BE20](v2);
    sub_21DBFAE9C();
    sub_21DBF626C();
  }

  return result;
}

uint64_t sub_21D0E6A64(uint64_t a1, uint64_t a2)
{
  sub_21D0E6A9C(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D0E6A9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  return swift_unknownObjectWeakAssign();
}

void *sub_21D0E6B18()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_280D0E720 = result;
  return result;
}

uint64_t sub_21D0E6B44()
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

uint64_t sub_21D0E6C08()
{
  result = sub_21DBF563C();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D0E6CCC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v19 - v13;
  v15 = *a1;
  sub_21D0E6F44(v11);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 32))(v14, v11, v6);
  v17 = *((*v5 & *v3) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 24);
  swift_beginAccess();
  v18 = (v12 + 8);
  if (*(v3 + v17) == 1)
  {
    v21 = v15;
    sub_21D76F25C(v14, &v21, v19, v20);
  }

  else
  {
    v21 = v15;
    sub_21D0E701C(v14, &v21, v19, v20);
  }

  return (*v18)(v14, v6);
}

uint64_t sub_21D0E6F44@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 16);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_21D0E701C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a4;
  v24 = a3;
  v23[1] = swift_getObjectType();
  v8 = *MEMORY[0x277D85000] & *v5;
  v10 = *(v8 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v9 = *(v8 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v37[0] = swift_getAssociatedTypeWitness();
  v37[1] = v37[0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedConformanceWitness;
  v23[0] = type metadata accessor for UICollectionViewDiffableDataSource.CombinedSnapshots();
  v11 = *(v23[0] - 8);
  MEMORY[0x28223BE20](v23[0]);
  v13 = v23 - v12;
  v14 = *a2;
  (*(v9 + 24))(v37, v10, v9);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_21DBFBEEC();
  v15 = static UICollectionViewDiffableDataSource.loggingPrefix.getter();
  v17 = v16;

  v35 = v15;
  v36 = v17;
  MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC6A630);
  v31 = v37;
  v32 = v14;
  v33 = v5;
  v34 = a1;
  sub_21DBFAE9C();
  v18 = v23[0];
  sub_21DBF625C();

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_21DBFBEEC();
  v19 = static UICollectionViewDiffableDataSource.loggingPrefix.getter();
  v21 = v20;

  v35 = v19;
  v36 = v21;
  MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC6A650);
  v26 = v5;
  v27 = v13;
  v28 = v14;
  v29 = v24;
  v30 = v25;
  sub_21DBFAE9C();
  sub_21DBF626C();

  (*(v11 + 8))(v13, v18);
  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_21D0E73AC()
{
  sub_21DBF8B0C();
  result = sub_21DBFBA8C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.presentationTreeForDiffableDataSource.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C18);
  a1[4] = sub_21D0D0F1C(qword_280D156E0, &qword_27CE64C18);
  *a1 = v3;
}

uint64_t sub_21D0E754C@<X0>(void *a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v104 = a4;
  v109 = a1;
  v78 = a5;
  v100 = a3;
  v5 = *MEMORY[0x277D85000] & *a3;
  LODWORD(v102) = a2;
  v6 = *(v5 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  v112 = *(v5 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v113 = v6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_21DBF8D0C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v96 = &v71 - v10;
  v95 = sub_21DBFBA8C();
  v87 = *(v95 - 8);
  v11 = MEMORY[0x28223BE20](v95);
  v94 = (&v71 - v12);
  v98 = v9;
  v84 = *(v9 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v93 = &v71 - v14;
  v83 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v92 = &v71 - v15;
  v16 = swift_checkMetadataState();
  v82 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v91 = &v71 - v17;
  v107 = swift_getTupleTypeMetadata2();
  v18 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v18 - 8);
  v106 = &v71 - v19;
  v122 = AssociatedTypeWitness;
  v123 = AssociatedTypeWitness;
  v124 = AssociatedConformanceWitness;
  v125 = AssociatedConformanceWitness;
  v20 = sub_21DBF8B0C();
  v21 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v21 - 8);
  v101 = &v71 - v22;
  v122 = AssociatedTypeWitness;
  v123 = AssociatedTypeWitness;
  v124 = AssociatedConformanceWitness;
  v125 = AssociatedConformanceWitness;
  v108 = AssociatedConformanceWitness;
  v105 = type metadata accessor for UICollectionViewDiffableDataSource.CombinedSnapshots();
  v77 = *(v105 - 8);
  v23 = MEMORY[0x28223BE20](v105);
  v111 = &v71 - v24;
  v81 = v20;
  v80 = *(v20 - 8);
  MEMORY[0x28223BE20](v23);
  v79 = &v71 - v25;
  v114 = sub_21DBFBA8C();
  v26 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v28 = &v71 - v27;
  v29 = sub_21DBF849C();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFB2EC();
  v73 = objc_opt_self();
  v33 = [v73 ppt];
  sub_21DBF848C();
  sub_21DBF847C();

  v34 = *(v30 + 8);
  v74 = v32;
  v76 = v29;
  v75 = v30 + 8;
  v72 = v34;
  v34(v32, v29);
  v35 = v109[3];
  v36 = v109[4];
  __swift_project_boxed_opaque_existential_1(v109, v35);
  (*(v82 + 56))(v28, 1, 1, v16);
  v37 = TTRTreeContentsQueryable.children(of:)(v28, v35, v36);
  (*(v26 + 8))(v28, v114);
  v122 = v37;
  v116 = v112;
  v117 = v113;
  v114 = v16;
  v38 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  v110 = v38;
  v40 = v103;
  v42 = sub_21D0E5014(sub_21D108EC8, v115, v38, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v41);
  v71 = v40;
  if (v102 == 2)
  {
    v43 = v79;
    sub_21DBF8AFC();
    v44 = v81;
    sub_21DBF8A6C();
    v45 = v43;
  }

  else
  {
    v46 = v79;
    sub_21DBF8C2C();
    v44 = v81;
    NSDiffableDataSourceSnapshot.setSectionIdentifiersWithDiff(_:)(v42);
    v45 = v46;
  }

  v47 = v80;
  v48 = v101;
  (*(v80 + 16))(v101, v45, v44);
  (*(v47 + 56))(v48, 0, 1, v44);
  v49 = sub_21D0E5434();
  UICollectionViewDiffableDataSource.CombinedSnapshots.init(main:sections:)(v48, v49, v111);
  v104 = (*(v113 + 32))(v112);
  v101 = sub_21DBF9E3C();
  v126 = v101;
  v122 = v37;
  *&v121 = v42;
  v99 = AssociatedTypeWitness;
  v50 = sub_21DBFA74C();
  v51 = v110;
  v52 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  sub_21DBFC6EC();

  v121 = v118;
  v122 = v51;
  v123 = v50;
  v103 = v52;
  v124 = v52;
  v125 = v53;
  v102 = v53;
  sub_21DBFBF5C();
  sub_21DBFBF2C();
  v54 = v107;
  v100 = (v107 - 8);
  v90 = (v82 + 32);
  v89 = (v83 + 4);
  v88 = (v83 + 7);
  ++v87;
  v86 = (v83 + 2);
  v85 = (v84 + 2);
  ++v84;
  ++v83;
  v82 += 8;
  v55 = v106;
  v56 = v98;
  while (1)
  {
    *&v118 = v110;
    *(&v118 + 1) = v50;
    v119 = v103;
    v120 = v102;
    sub_21DBFBF4C();
    sub_21DBFBF3C();
    if ((*(*(v54 - 8) + 48))(v55, 1, v54) == 1)
    {
      break;
    }

    v57 = *(v54 + 48);
    v58 = v91;
    (*v90)(v91, v55, v114);
    v59 = v92;
    v60 = v99;
    (*v89)(v92, &v55[v57], v99);
    v61 = v93;
    sub_21DBF8CFC();
    sub_21DBFA73C();
    v62 = v94;
    (*v88)(v94, 1, 1, v60);
    sub_21D109454(v58, v61, v62, &v126, v109, v104, v112, v113);
    (*v87)(v62, v95);
    v101 = v126;
    sub_21DBF8CAC();
    v63 = *(TupleTypeMetadata2 + 48);
    v64 = v50;
    v65 = v96;
    (*v86)(v96, v59, v60);
    (*v85)(&v65[v63], v61, v56);
    sub_21DBFA74C();
    v50 = v64;
    sub_21DBFA6FC();
    v66 = v61;
    v55 = v106;
    (*v84)(v66, v56);
    v67 = v59;
    v54 = v107;
    (*v83)(v67, v60);
    (*v82)(v58, v114);
  }

  (*(v80 + 8))(v79, v81);

  (*(v77 + 32))(v78, v111, v105);
  sub_21DBFB2DC();
  v68 = [v73 ppt];
  v69 = v74;
  sub_21DBF848C();
  sub_21DBF847C();

  return v72(v69, v76);
}

uint64_t sub_21D0E8418(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A050);
    sub_21D0E4FC0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t UICollectionViewDiffableDataSource.CombinedSnapshots.init(main:sections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21DBF8B0C();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = sub_21DBFBA8C();
  (*(*(v7 - 8) + 40))(a3, a1, v7);
  result = type metadata accessor for UICollectionViewDiffableDataSource.CombinedSnapshots();
  *(a3 + *(result + 52)) = a2;
  return result;
}

uint64_t sub_21D0E8594(void *a1, unint64_t a2, int a3, uint64_t (*a4)(void), void *a5, uint64_t a6)
{
  v19 = a6;
  v20 = a2;
  v22 = a5;
  v21 = a4;
  v23 = a3;
  v7 = sub_21DBF849C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFB2EC();
  v11 = objc_opt_self();
  v12 = [v11 ppt];
  sub_21DBF848C();
  sub_21DBF847C();

  v13 = *(v8 + 8);
  v13(v10, v7);
  v14 = *MEMORY[0x277D85000] & *a1;
  v15 = *(v14 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 32);
  v16 = *(a1 + *(v14 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 40));
  v24 = v23;
  swift_beginAccess();
  UICollectionViewDiffableDataSource.apply(_:for:option:canBatchIncrementalUpdates:completion:)(v20, v16, &v24, (*(a1 + v15) & 1) == 0, v21, v22);
  sub_21DBFB2DC();
  v17 = [v11 ppt];
  sub_21DBF848C();
  sub_21DBF847C();

  return (v13)(v10, v7);
}

uint64_t UICollectionViewDiffableDataSource.CombinedSnapshots.isEmpty.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 40);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = v12;
  v15 = v4;
  v5 = sub_21DBF8B0C();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  (*(v7 + 16))(&v12 - v8, v2, v6);
  LODWORD(v5) = (*(*(v5 - 8) + 48))(v9, 1, v5);
  (*(v7 + 8))(v9, v6);
  if (v5 == 1)
  {
    v13 = *(v2 + *(a1 + 52));
    sub_21DBF8D0C();
    swift_getTupleTypeMetadata2();
    sub_21DBFA74C();
    swift_getWitnessTable();
    v10 = sub_21DBFACFC();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_21D0E8A0C(uint64_t a1)
{
  v2 = sub_21DBF8B0C();
  v3 = *(v2 - 8);
  if (!(*(v3 + 48))(a1, 1, v2))
  {
    (*(v3 + 8))(a1, v2);
  }
}

uint64_t sub_21D0E8AC8(uint64_t a1, uint64_t a2)
{
  sub_21D0E49BC(*a1, *(a1 + 8), *(a1 + 16));
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 17) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t TTRAccountsListsViewModel.accountCollection.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  result = sub_21D0E8DA0(v10);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    sub_21D0D523C(v10, v8, &qword_27CE5A490);
    v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    sub_21D0D523C(v8, v16 + v15, &qword_27CE5A490);
    *a1 = 0;
    a1[1] = v14;
    a1[2] = sub_21D1079A4;
    a1[3] = v16;
    a1[4] = sub_21D108104;
    a1[5] = v2;
    a1[6] = sub_21D1083B8;
    a1[7] = 0;
    a1[8] = sub_21D11DAE4;
    a1[9] = 0;
  }

  return result;
}

uint64_t sub_21D0E8DA0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_21D0D3954(a1, v5, &qword_27CE5A490);
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  if ((*(*(v12 - 8) + 48))(v5, 1, v12) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE5A490);
    swift_beginAccess();
    v13 = *(v1 + 16);
    if (v13 >> 62)
    {
      return sub_21DBFBD7C();
    }

    else
    {
      return *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v9);
    sub_21D106918(v5, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D2A0DC8(v9, v11, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v15 = sub_21D2916C8(v11, sub_21D105CF4);
    if (v15)
    {
      v16 = *(*v15 + 136);
      v17 = v15;
      swift_beginAccess();
      v18 = *(v17 + v16);
      sub_21DBF8E0C();

      if (v18 >> 62)
      {
        v14 = sub_21DBFBD7C();
      }

      else
      {
        v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v14 = 0;
    }

    sub_21D106918(v11, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  }

  return v14;
}

uint64_t sub_21D0E9054(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21D0E90D0()
{
  result = qword_280D0C170;
  if (!qword_280D0C170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE64CA8);
    sub_21D0E9054(&qword_280D0C188, &qword_27CE64CB0, &unk_21DC375C0, sub_21D0E9180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C170);
  }

  return result;
}

unint64_t sub_21D0E91B0()
{
  result = qword_280D0C360;
  if (!qword_280D0C360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A050);
    sub_21D0E4FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C360);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TTRISubtaskListViewModel(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t objectdestroy_111Tm()
{
  sub_21D157478(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 32);
  v2 = (type metadata accessor for TTRUserDefaultsBacked() - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  swift_unknownObjectRelease();
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  sub_21DBF9B7C();

  return swift_deallocObject();
}

uint64_t objectdestroy_117Tm()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_35Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + *(v1 + 20);
  v4 = sub_21DBF563C();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{
  v1 = *(type metadata accessor for TTRICollectionViewItemHit(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = sub_21DBF5D5C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v2, v3);
  v6 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v5(v0 + v2 + *(v6 + 20), v3);
  v7 = *(v6 + 24);
  if (!(*(v4 + 48))(v0 + v2 + v7, 1, v3))
  {
    v5(v0 + v2 + v7, v3);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  v1 = sub_21DBF5B9C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = a3(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 8u:
      case 0xAu:
        v5 = sub_21DBF56BC();
        (*(*(v5 - 8) + 8))(v0 + v2, v5);
        break;
      case 2u:
        v6 = sub_21DBF56BC();
        (*(*(v6 - 8) + 8))(v0 + v2, v6);
        type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
        goto LABEL_13;
      case 3u:
        v11 = sub_21DBF56BC();
        (*(*(v11 - 8) + 8))(v0 + v2, v11);
        type metadata accessor for TTRAccountsListsViewModel.SmartList(0);

        goto LABEL_13;
      case 4u:

        break;
      case 5u:
      case 6u:

        sub_21D1078C0(*(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120));
        sub_21D0FB9F4(*(v3 + 128), *(v3 + 136), *(v3 + 144));

        goto LABEL_13;
      case 7u:

        break;
      case 9u:
        sub_21D5D60A0(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));
        break;
      case 0xBu:
        goto LABEL_13;
      case 0xCu:
        v7 = sub_21DBF56BC();
        v8 = *(*(v7 - 8) + 8);
        v8(v0 + v2, v7);
        v9 = v3 + *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
        v10 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
        if ((*(*(v10 - 8) + 48))(v9, 1, v10))
        {
          break;
        }

        v8(v9, v7);
LABEL_13:

        break;
      case 0xDu:
        v12 = sub_21DBF56BC();
        (*(*(v12 - 8) + 8))(v0 + v2, v12);
        type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        goto LABEL_13;
      case 0xEu:

        goto LABEL_13;
      default:
        break;
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for TTRISubtaskListViewModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21D0EA454()
{
  result = type metadata accessor for TTRAccountsListsViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    result = sub_21DBF6C1C();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21D0EA554()
{
  result = qword_280D14DD0;
  if (!qword_280D14DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14DD0);
  }

  return result;
}

unint64_t sub_21D0EA5AC()
{
  result = qword_280D14DC8;
  if (!qword_280D14DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14DC8);
  }

  return result;
}

uint64_t static TTRLocalizableStrings.AccountsList.addListText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

id sub_21D0EA6E8(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_21D0EA770(uint64_t a1, void *a2)
{
  type metadata accessor for RemindersUICoreBundleLookupObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a2 = result;
  return result;
}

void _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(void *a1)
{
  if (a1)
  {
    goto LABEL_4;
  }

  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() _systemImageNamed_];

  if (v2)
  {
    v3 = [objc_opt_self() magentaColor];
    [v2 imageWithTintColor:v3 renderingMode:1];

    a1 = 0;
LABEL_4:
    v4 = a1;
    return;
  }

  __break(1u);
}

void sub_21D0EA900()
{
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = sub_21DBFA12C();

  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_280D168D0 = v3;
}

uint64_t sub_21D0EAA20()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16698 = result;
  unk_280D166A0 = v1;
  return result;
}

uint64_t sub_21D0EAAE0(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;
  sub_21DBF8E0C();
  return v2;
}

uint64_t static TTRCommonAsset.Image.actionMenuIcon(shouldShowCircleIcon:)()
{
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220 == 1)
  {
    v0 = sub_21DBFA12C();
  }

  else
  {
    v0 = sub_21DBFA12C();
  }

  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  return v3;
}

uint64_t sub_21D0EACA0()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_dataViewMonitor))
  {

    sub_21D0D4B6C(1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *UIViewController.effectiveNavigationControllerForBars.getter()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 navigationController];
  if (!v3)
  {
    return v2;
  }

  do
  {
    v4 = v3;

    v3 = [v4 navigationController];
    v2 = v4;
  }

  while (v3);
  return v4;
}

uint64_t TTRObservableViewModel.updateAndPublish(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v11 - v6, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  v9 = *(*v1 + 88);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v9, v7, v4);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  sub_21D0EAF6C();
  return sub_21DBF912C();
}

unint64_t sub_21D0EAF6C()
{
  result = qword_280D0C460;
  if (!qword_280D0C460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE5C9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C460);
  }

  return result;
}

uint64_t sub_21D0EAFD0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a3(v8, v3 + v5, v9);
}

uint64_t sub_21D0EB0BC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C330) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21D42C8B0(v5, v0 + v2, v6);
}

uint64_t objectdestroy_59Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21D0EB248(char *a1)
{
  v3 = sub_21DBF9D2C();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_21DBF9D7C();
  v32 = *(v37 - 8);
  v9 = MEMORY[0x28223BE20](v37);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = sub_21DBF9D8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a1;
  v19 = *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_queue];
  *v17 = v19;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v31 = v19;
  LOBYTE(v19) = sub_21DBF9DAC();
  result = (*(v15 + 8))(v17, v14);
  if (v19)
  {
    v21 = OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_executeToken;
    v22 = *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_executeToken];
    if (v18)
    {
      if (!v22)
      {
        v23 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
        v24 = *&v1[v21];
        *&v1[v21] = v23;
        v25 = v23;

        sub_21DBF9D6C();
        sub_21DBF9D9C();
        v32 = *(v32 + 8);
        (v32)(v11, v37);
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = v1;
        *(v27 + 32) = 1;
        aBlock[4] = sub_21D1825D4;
        aBlock[5] = v27;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D0D74FC;
        aBlock[3] = &block_descriptor_18;
        v28 = _Block_copy(aBlock);

        v29 = v1;
        sub_21DBF9D4C();
        v38 = MEMORY[0x277D84F90];
        sub_21D0CD898();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
        sub_21D0CD8F0();
        v30 = v36;
        sub_21DBFBCBC();
        MEMORY[0x223D43880](v13, v8, v5, v28);
        _Block_release(v28);

        (*(v35 + 8))(v5, v30);
        (*(v33 + 8))(v8, v34);
        (v32)(v13, v37);
      }
    }

    else
    {
      *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_executeToken] = 0;

      LOBYTE(aBlock[0]) = 0;
      return sub_21D0EB944(aBlock);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D0EB724()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D0EB75C()
{

  return swift_deallocObject();
}

uint64_t sub_21D0EB79C()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280);
  result = sub_21DBFC84C();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_21DBFBA8C();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D0EB8DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D0EB944(char *a1)
{
  v3 = sub_21DBF9D8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_queue);
  *v6 = v8;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_21DBF9DAC();
  result = (*(v4 + 8))(v6, v3);
  if (v8)
  {
    v11 = v1 + OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      HIBYTE(v14) = v7;
      (*(v12 + 8))(&v14 + 7, ObjectType, v12);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D0EBACC(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C338);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C338);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C338);
    aBlock[4] = sub_21D0EF004;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_207;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D0EBE9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C338);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF69DC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    v5 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  }

  v6 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF69DC();
    (*(*(v7 - 8) + 8))(v6, v7);
    v8 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  }

  v9 = *(v1 + 40);
  v10 = sub_21DBF688C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  return swift_deallocObject();
}

Swift::Void __swiftcall TTRAccountsListsInteractor.cloudKitNetworkActivityDidChange(activity:)(RemindersUICore::TTRCloudKitNetworkActivityMonitor::Activity activity)
{
  v2 = v1;
  v3 = activity;
  v4 = sub_21DBF9D2C();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF9D5C();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_21D0D8CF0(0, &qword_280D1B900);
  v11 = sub_21DBFB12C();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v10;
  aBlock[4] = sub_21D0ECD44;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_72_0;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D0D8E04(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v9, v6, v13);
  _Block_release(v13);

  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_21D0EC404()
{

  return swift_deallocObject();
}

void *sub_21D0EC450(void *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  if (*(v5 + 64) <= 8uLL)
  {
    v6 = 8;
  }

  else
  {
    v6 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *a2;
      if (v6 < 4)
      {
LABEL_21:
        if ((v10 | (v8 << (8 * v6))) != 0xFFFFFFFF)
        {
          goto LABEL_22;
        }

LABEL_19:
        v11 = *a2;
        v12 = *a2;
        *a1 = v11;
        v13 = 1;
        goto LABEL_23;
      }
    }

    else if (v9 == 2)
    {
      v10 = *a2;
      if (v6 < 4)
      {
        goto LABEL_21;
      }
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
      if (v6 < 4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = *a2;
      if (v6 < 4)
      {
        goto LABEL_21;
      }
    }

    v7 = v10 + 2;
  }

LABEL_18:
  if (v7 == 1)
  {
    goto LABEL_19;
  }

LABEL_22:
  (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  v13 = 0;
LABEL_23:
  *(a1 + v6) = v13;
  v14 = v6 + 1;
  v15 = *(v5 + 80) & 0xF8 | 7;
  v16 = v6 + 1 + v15;
  v17 = ((a1 + v16) & ~v15);
  v18 = (&a2[v16] & ~v15);
  v19 = v18[v6];
  v20 = v19 - 2;
  if (v19 < 2)
  {
    goto LABEL_37;
  }

  if (v6 <= 3)
  {
    v21 = v6;
  }

  else
  {
    v21 = 4;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      goto LABEL_37;
    }

    v22 = *v18;
  }

  else if (v21 == 2)
  {
    v22 = *v18;
  }

  else if (v21 == 3)
  {
    v22 = *v18 | (v18[2] << 16);
  }

  else
  {
    v22 = *v18;
  }

  v23 = (v22 | (v20 << (8 * v6))) + 2;
  v19 = v22 + 2;
  if (v6 < 4)
  {
    v19 = v23;
  }

LABEL_37:
  if (v19 == 1)
  {
    v24 = *v18;
    v25 = *v18;
    *v17 = v24;
    v26 = 1;
  }

  else
  {
    (*(v5 + 16))(v17, v18, AssociatedTypeWitness);
    v26 = 0;
  }

  *(v17 + v6) = v26;
  v27 = &v18[v14];
  v28 = swift_getAssociatedTypeWitness();
  v29 = *(v28 - 8);
  v30 = *(v29 + 80);
  v31 = v17 + v14 + v30;
  v32 = &v27[v30];
  if ((*(v29 + 48))(&v27[v30] & ~v30, 1, v28))
  {
    if (*(v29 + 84))
    {
      v33 = *(v29 + 64);
    }

    else
    {
      v33 = *(v29 + 64) + 1;
    }

    memcpy((v31 & ~v30), (v32 & ~v30), v33);
  }

  else
  {
    (*(v29 + 16))(v31 & ~v30, v32 & ~v30, v28);
    (*(v29 + 56))(v31 & ~v30, 0, 1, v28);
  }

  return a1;
}

Swift::Void __swiftcall TTRStartupItemQueue.start()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  *(v0 + 32) = 1;
  if (!v0[3])
  {
    v6 = sub_21DBFA89C();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    sub_21DBFA84C();

    v8 = sub_21DBFA83C();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    v9[5] = v2;

    v1[3] = sub_21D1B5178(0, 0, v5, &unk_21DC174A0, v9);
  }
}

uint64_t sub_21D0EC94C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D0EC98C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D0EC9F8(id *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  if (*(v3 + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v5 = *(a1 + v4);
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_18;
      }

      v8 = *a1;
      if (v4 < 4)
      {
LABEL_21:
        if ((v8 | (v6 << (8 * v4))) != 0xFFFFFFFF)
        {
          goto LABEL_22;
        }

LABEL_19:

        goto LABEL_23;
      }
    }

    else if (v7 == 2)
    {
      v8 = *a1;
      if (v4 < 4)
      {
        goto LABEL_21;
      }
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (*(a1 + 2) << 16);
      if (v4 < 4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = *a1;
      if (v4 < 4)
      {
        goto LABEL_21;
      }
    }

    v5 = v8 + 2;
  }

LABEL_18:
  if (v5 == 1)
  {
    goto LABEL_19;
  }

LABEL_22:
  (*(v3 + 8))(a1, AssociatedTypeWitness);
LABEL_23:
  v9 = *(v3 + 80) & 0xF8 | 7;
  v10 = ((a1 + v4 + v9 + 1) & ~v9);
  v11 = v10[v4];
  v12 = v11 - 2;
  if (v11 < 2)
  {
    goto LABEL_37;
  }

  if (v4 <= 3)
  {
    v13 = v4;
  }

  else
  {
    v13 = 4;
  }

  if (v13 <= 1)
  {
    if (!v13)
    {
      goto LABEL_37;
    }

    v14 = *v10;
  }

  else if (v13 == 2)
  {
    v14 = *v10;
  }

  else if (v13 == 3)
  {
    v14 = *v10 | (v10[2] << 16);
  }

  else
  {
    v14 = *v10;
  }

  v15 = (v14 | (v12 << (8 * v4))) + 2;
  v11 = v14 + 2;
  if (v4 < 4)
  {
    v11 = v15;
  }

LABEL_37:
  if (v11 == 1)
  {
  }

  else
  {
    (*(v3 + 8))(v10, AssociatedTypeWitness);
  }

  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = &v10[v4 + 1 + v18];
  v22 = v17;
  result = (*(v17 + 48))(v19 & ~v18, 1, v16);
  if (!result)
  {
    v21 = *(v22 + 8);

    return v21(v19 & ~v18, v16);
  }

  return result;
}

uint64_t sub_21D0ECCF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_21D0ECD50(uint64_t result, char a2)
{
  if (*(result + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_cloudKitNetworkActivity) != (a2 & 1))
  {
    *(result + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_cloudKitNetworkActivity) = a2 & 1;
    sub_21DBFBEEC();
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60E98);
    sub_21DBFA1AC();

    MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC69F60);
    v2 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();
  }

  return result;
}

uint64_t sub_21D0ECEBC()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5C130, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D0ED6A0;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1091;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D0ED364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return sub_21D0ED4E8(a1, v4);
}

uint64_t sub_21D0ED41C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F298);
  v1 = __swift_project_value_buffer(v0, qword_280D0F298);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D0ED4E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21D0F31D4;

  return v6(a1);
}

uint64_t sub_21D0ED5E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D0ED6D0(a1, v4, v5, v6);
}

uint64_t sub_21D0ED6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_21DBFA84C();
  v4[9] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_21D0ED89C, v6, v5);
}

uint64_t sub_21D0ED768(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v9 = v8;
  LOBYTE(v8) = sub_21DBF9DAC();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      result = a2(0);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D0ED89C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);
  }

  else
  {
    type metadata accessor for TTRStartupItemQueue.UnprocessedStartupItems();
    v2 = swift_allocObject();
    *(v2 + 16) = MEMORY[0x277D84F90];
  }

  *(v0 + 96) = v2;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_21D0F251C;

  return sub_21D0ED994(v2);
}

uint64_t sub_21D0ED994(uint64_t a1)
{
  v1[8] = a1;
  sub_21DBFA84C();
  v1[9] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_21D0EDA2C, v3, v2);
}

uint64_t sub_21D0EDA2C()
{
  v1 = v0[8];
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    sub_21DBFA99C();
    v0[12] = 0;
    v3 = v0[8];
    result = swift_beginAccess();
    v5 = *(v3 + 16);
    v6 = v5[2];
    if (v6)
    {
      v7 = v0[8];
      v0[13] = v5[4];
      v8 = v5[5];
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 16) = v5;
      if (!isUniquelyReferenced_nonNull_native || (v6 - 1) > v5[3] >> 1)
      {
        v10 = v0[8];
        v5 = sub_21D0E6BE4(isUniquelyReferenced_nonNull_native, v6, 1, v5);
        *(v10 + 16) = v5;
      }

      v11 = v0[8];
      swift_unknownObjectRelease();
      v12 = v5[2];
      memmove(v5 + 4, v5 + 6, 16 * v12 - 16);
      v5[2] = v12 - 1;
      *(v11 + 16) = v5;
      swift_endAccess();
      ObjectType = swift_getObjectType();
      v15 = (*(v8 + 40) + **(v8 + 40));
      v14 = swift_task_alloc();
      v0[14] = v14;
      *v14 = v0;
      v14[1] = sub_21D0F1B00;

      return v15(ObjectType, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v2 = v0[1];

    return v2();
  }

  return result;
}

uint64_t sub_21D0EDCB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D0F00D0;

  return sub_21D0EDD3C();
}

uint64_t sub_21D0EDD3C()
{
  v1[5] = v0;
  v2 = *(*v0 + 80);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D0EDED0, 0, 0);
}

uint64_t sub_21D0EDE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D0EDE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D0EDED0()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = *(v4 + *(*v4 + 96));
  v6 = *(*v4 + 88);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v6, v3);
  v10 = (v5 + *v5);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_21D0F0550;
  v8 = v0[8];

  return v10(v8);
}

uint64_t sub_21D0EE040(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D0EE264(a1, v4, v5, v6);
}

uint64_t sub_21D0EE108()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v7 = (v0[7] + *v0[7]);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21D0F035C;
    v4 = v0[5];

    return v7(v2, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21D0EE264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_21D0EE108, 0, 0);
}

uint64_t sub_21D0EE288(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return sub_21D0EE348(a1, a2, v6);
}

uint64_t sub_21D0EE348(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = sub_21DBFA84C();
  v3[3] = sub_21DBFA83C();
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_21D0EF998;

  return v8(a1);
}

uint64_t sub_21D0EE46C(uint64_t a1)
{
  v2 = sub_21DBF4D5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_21DBF4D1C();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D0EE5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a2;
  v11 = sub_21DBF9D2C();
  v23 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21DBF9D5C();
  v14 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a4;
  aBlock[4] = a7;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = a8;
  v19 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v25 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v16, v13, v19);
  _Block_release(v19);
  (*(v23 + 8))(v13, v11);
  (*(v14 + 8))(v16, v22);
}

uint64_t sub_21D0EE8D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5C130, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E710;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1080;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_1(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_2()
{

  return swift_deallocObject();
}

uint64_t sub_21D0EF02C(char a1, uint64_t a2)
{
  v4 = sub_21DBF9D2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF9D5C();
  v9 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 48);
  v14 = *(a2 + 49);
  v15 = *(a2 + 50);
  v16 = *(a2 + 51);
  *(a2 + 51) = 1;
  if (v14 != 1 || v16 != 0)
  {
    goto LABEL_24;
  }

  v54 = v10;
  v55 = v9;
  v56 = v5;
  v59 = v16;
  v60 = v15;
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  *(a2 + 64) = 0;
  v58 = v18;

  v57 = TTRModuleState.description.getter();
  v21 = v20;
  if (a1 != 2)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    if (qword_280D17ED8 != -1)
    {
      swift_once();
    }

    v51 = v4;
    v52 = v14;
    v53 = v13;
    v33 = sub_21DBF84BC();
    __swift_project_value_buffer(v33, qword_280D0F240);
    sub_21DBF8E0C();
    v34 = sub_21DBF84AC();
    v35 = sub_21DBFAE9C();

    v36 = v19;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      v39 = v57;
      *(v37 + 4) = sub_21D0CDFB4(v57, v21, aBlock);
      _os_log_impl(&dword_21D0C9000, v34, v35, "%s scheduling resolve", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x223D46520](v38, -1, -1);
      MEMORY[0x223D46520](v37, -1, -1);
    }

    else
    {

      v39 = v57;
    }

    sub_21D0CE468();
    v57 = sub_21DBFB12C();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = v21;
    v40[4] = v58;
    v40[5] = v36;
    aBlock[4] = sub_21D123498;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_13_8;
    v41 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21D122DFC(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
    v42 = v51;
    sub_21DBFBCBC();
    v43 = v57;
    MEMORY[0x223D438F0](0, v12, v7, v41);
    _Block_release(v41);

    (*(v56 + 8))(v7, v42);
    (*(v54 + 8))(v12, v55);
    v14 = v52;
    v13 = v53;
    goto LABEL_23;
  }

  swift_beginAccess();
  if (*(a2 + 32))
  {
    goto LABEL_13;
  }

LABEL_8:
  if (qword_280D17ED8 != -1)
  {
    swift_once();
  }

  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_280D0F240);
  sub_21DBF8E0C();
  v23 = sub_21DBF84AC();
  v24 = sub_21DBFAE9C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v13;
    v26 = swift_slowAlloc();
    v27 = v14;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v26 = 136315138;
    v29 = v19;
    v30 = sub_21D0CDFB4(v57, v21, aBlock);

    *(v26 + 4) = v30;
    v19 = v29;
    _os_log_impl(&dword_21D0C9000, v23, v24, "%s resolve", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v31 = v28;
    v14 = v27;
    MEMORY[0x223D46520](v31, -1, -1);
    v32 = v26;
    v13 = v25;
    MEMORY[0x223D46520](v32, -1, -1);
  }

  else
  {
  }

  sub_21DBF5FCC();
  if (v19)
  {

    sub_21DBF5FCC();
  }

LABEL_23:
  v16 = v59;
  v15 = v60;
LABEL_24:
  if (v16)
  {
    v44 = 0x1000000;
  }

  else
  {
    v44 = 0;
  }

  if (v15)
  {
    v45 = 0x10000;
  }

  else
  {
    v45 = 0;
  }

  if (v14)
  {
    v46 = 256;
  }

  else
  {
    v46 = 0;
  }

  v47 = v46 | v13;
  v48 = v45 | v44;
  sub_21D0EF69C(v47 | v45 | v44);
  return sub_21DAE0620(v47 | v48);
}

uint64_t sub_21D0EF69C(uint64_t result)
{
  if ((result & 0x10000) != 0)
  {
    if (*(v1 + 50))
    {
      return result;
    }

    if (qword_280D17ED8 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F240);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v15 = TTRModuleState.description.getter();
      v17 = sub_21D0CDFB4(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_21D0C9000, v11, v12, "%s becomes outdated", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C9B0);
    swift_allocObject();
    *(v1 + 72) = sub_21DBF5FDC();
  }

  else
  {
    if (!*(v1 + 50))
    {
      return result;
    }

    if (qword_280D17ED8 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_280D0F240);

    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAE9C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136315138;
      v7 = TTRModuleState.description.getter();
      v9 = sub_21D0CDFB4(v7, v8, &v18);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_21D0C9000, v3, v4, "%s becomes up-to-date", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x223D46520](v6, -1, -1);
      MEMORY[0x223D46520](v5, -1, -1);
    }

    sub_21DBF5FCC();
  }
}

uint64_t sub_21D0EF998()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D0EFB64, v1, v0);
}

uint64_t sub_21D0EFAD4(uint64_t result, uint64_t a2, uint64_t (*a3)(void (*)(uint64_t), uint64_t))
{
  v3 = result + *(*result + 136);
  v4 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v4(a2);

    return a3(v4, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D0EFB64()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21D0EFBC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C330);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v38 - v3;
  v4 = sub_21DBF688C();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = sub_21DBF9D8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v39 = v21;
      v22 = *(v20 + *(*v20 + 112));
      *v18 = v22;
      (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
      v23 = v22;
      LOBYTE(v22) = sub_21DBF9DAC();
      (*(v16 + 8))(v18, v15);
      if (v22)
      {
        v38 = v8;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C338);
        v25 = *(v24 + 36);
        sub_21D0D3954(a1 + v25, v14, &qword_27CE60DE0);
        sub_21D0F00DC(v14);
        sub_21D0D3954(a1 + v25, v12, &qword_27CE60DE0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v26 = *v12;
          v27 = v39;
          sub_21D749280(*v12);
        }

        else
        {
          v28 = v38;
          sub_21D0EDE6C(v12, v38);
          v29 = v41;
          sub_21D0D3954(a1 + *(v24 + 40), v41, &qword_27CE5C330);
          v31 = v42;
          v30 = v43;
          if ((*(v42 + 48))(v29, 1, v43) == 1)
          {
            sub_21D0CF7E0(v29, &qword_27CE5C330);
            v32 = objc_opt_self();
            v33 = sub_21DBFA12C();
            v34 = [v32 internalErrorWithDebugDescription_];

            v35 = v39;
            sub_21D749280(v34);
          }

          else
          {
            v36 = v40;
            (*(v31 + 32))(v40, v29, v30);
            v37 = v39;
            sub_21D0F06A8(v28, v36);

            (*(v31 + 8))(v36, v30);
          }

          sub_21D0D7DF0(v28);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_21D0F00DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C328);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE60DE0);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE60DE0);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE60DE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE60DE0);
  }

  sub_21D0EDE6C(v8, v5);
  v11 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C328);
  return swift_endAccess();
}

uint64_t sub_21D0F02F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D0F035C()
{

  return MEMORY[0x2822009F8](sub_21D0F0458, 0, 0);
}

uint64_t sub_21D0F0458()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t assignWithTake for TTRAccountListsMonitorableDataView.Data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF69DC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_21D0F0550()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_21D0F06A8(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_280D0F300);
  v7 = sub_21DBF84AC();
  v8 = sub_21DBFAE9C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21D0C9000, v7, v8, "TTRAccountListsMonitorableDataView did fetch data", v9, 2u);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  ObjectType = 0;
  v29 = 0xE000000000000000;
  sub_21DBFBEEC();
  v10 = v27;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60E98);
  v11 = sub_21DBFA1AC();
  v13 = v12;

  ObjectType = v11;
  v29 = v13;
  MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
  v14 = sub_21DBFAEDC();
  MEMORY[0x28223BE20](v14);
  *(&v25 - 4) = v10;
  *(&v25 - 3) = a1;
  *(&v25 - 2) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();

  v16 = *(a1 + *(v3 + 20));
  if (*(v16 + 16))
  {
    sub_21D0D4B04(a1, v5, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
    v17 = sub_21DBF84AC();
    v18 = sub_21DBFAE9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      ObjectType = v20;
      *v19 = 136315138;
      sub_21DBF686C();
      sub_21D0D8E04(&unk_280D0C7E8, MEMORY[0x277D45298]);
      v21 = sub_21DBFAABC();
      v23 = v22;
      sub_21D0D8E4C(v5, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
      v24 = sub_21D0CDFB4(v21, v23, &ObjectType);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_21D0C9000, v17, v18, "TTRAccountsListsInteractor: found outdated cachable properties {properties: %s}", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x223D46520](v20, -1, -1);
      MEMORY[0x223D46520](v19, -1, -1);
    }

    else
    {

      sub_21D0D8E4C(v5, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
    }

    ObjectType = v16;

    sub_21DBF8E0C();
    sub_21DBF906C();
  }

  return result;
}

uint64_t sub_21D0F0AD4()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  if (!*(*(v1 + 16) + 16))
  {

    goto LABEL_5;
  }

  v2 = v0[12];
  sub_21DBFA99C();
  v0[12] = v2;
  if (v2)
  {
    v3 = v0[8];

    *(v3 + 16) = MEMORY[0x277D84F90];

LABEL_5:
    v4 = v0[1];

    return v4();
  }

  v6 = v0[8];
  result = swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = v7[2];
  if (v8)
  {
    v9 = v0[8];
    v0[13] = v7[4];
    v10 = v7[5];
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 16) = v7;
    if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > v7[3] >> 1)
    {
      v12 = v0[8];
      v7 = sub_21D0E6BE4(isUniquelyReferenced_nonNull_native, v8, 1, v7);
      *(v12 + 16) = v7;
    }

    v13 = v0[8];
    swift_unknownObjectRelease();
    v14 = v7[2];
    memmove(v7 + 4, v7 + 6, 16 * v14 - 16);
    v7[2] = v14 - 1;
    *(v13 + 16) = v7;
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v17 = (*(v10 + 40) + **(v10 + 40));
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_21D0F1B00;

    return v17(ObjectType, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D0F0D4C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F300);
  v1 = __swift_project_value_buffer(v0, qword_280D0F300);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D0F0E34(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_21D0F0E8C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t sub_21D0F0F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v8 = a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v10 = result;
  if (result)
  {
    v11 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(a1, &protocol witness table for TTRAccountsListsInteractor, a2, a3, ObjectType, v11);
    result = swift_unknownObjectRelease();
  }

  *a4 = v10 == 0;
  return result;
}

uint64_t objectdestroy_38Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21D0F1084()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D1B795C;

  return sub_21D0F1110();
}

uint64_t sub_21D0F1110()
{
  v1[6] = v0;
  v2 = *(*v0 + 88);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_21DBFA84C();
  v1[10] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_21D0F1214, v4, v3);
}

uint64_t sub_21D0F1214()
{
  v1 = v0[6];
  v2 = sub_21DBF5FCC();
  v3 = *(v1 + *(*v1 + 104));
  v0[13] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_21D0F1568;
    v2 = v0[9];
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821A7870](v2);
}

uint64_t sub_21D0F130C(uint64_t a1, uint64_t (*a2)(_BYTE *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(*Strong + 96);
    v13 = Strong;
    swift_beginAccess();
    (*(v8 + 16))(v10, v13 + v12, a4);
    v5 = a2(v10);

    (*(v8 + 8))(v10, a4);
  }

  else
  {
    v14 = sub_21DBF5F5C();
    sub_21D31A8A0();
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D44D48], v14);
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_21D0F1568()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_21D483A98;
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_21D0F1794;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

Swift::Void __swiftcall TTRAccountsListsInteractor.updateAccountsEligibleForMigration()()
{
  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_280D0F300);
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAE9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "Request update accountsEligibleForMigration", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  sub_21D0F17FC(0, 0);
}

uint64_t sub_21D0F1794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D0F17FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21DBF9D2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = *(v3 + 24);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_21D0F1F68;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_68;
  v15 = _Block_copy(aBlock);

  sub_21D0D0E78(a1);
  sub_21DBF9D4C();
  v17[1] = MEMORY[0x277D84F90];
  sub_21D0F1D40(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0CD8F0();
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v13, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

uint64_t sub_21D0F1AB8()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D0F1B00()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21D0F0AD4, v3, v2);
}

uint64_t sub_21D0F1C20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D0F1C68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D0F1CB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D0F1CF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D0F1D40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D0F1D88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D0F1DD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D0F1E18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D0F1E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D0F1EA8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t sub_21D0F1F74(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v38 = a2;
  v50 = sub_21DBF9D8C();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_21DBF9D2C();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF9D5C();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v37 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0F2660();
  v52 = dispatch_group_create();
  result = sub_21D0FC144();
  v11 = 0;
  v13 = result + 64;
  v12 = *(result + 64);
  v51 = result;
  v14 = 1 << *(result + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v48 = *MEMORY[0x277D85200];
  v46 = (v4 + 8);
  v47 = (v4 + 104);
  v45 = result + 64;
  v18 = v50;
  if ((v15 & v12) != 0)
  {
    while (1)
    {
      v19 = v11;
LABEL_8:
      v20 = *(*(v51 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v16)))));
      v21 = v52;
      dispatch_group_enter(v52);
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = v21;
      v23 = a1[3];
      v24 = v49;
      *v49 = v23;
      (*v47)(v24, v48, v18);
      v25 = v20;
      v26 = v21;
      v27 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*v46)(v24, v18);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v16 &= v16 - 1;
      v28 = v25;

      sub_21D60ABE0(v28, a1, a1, v28, sub_21D60C064, v22);

      v11 = v19;
      v13 = v45;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        v29 = swift_allocObject();
        v30 = v38;
        v31 = v39;
        *(v29 + 16) = v38;
        *(v29 + 24) = v31;
        aBlock[4] = sub_21D0FC878;
        aBlock[5] = v29;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D0D74FC;
        aBlock[3] = &block_descriptor_55;
        v32 = _Block_copy(aBlock);
        sub_21D0D0E78(v30);
        v33 = v37;
        sub_21DBF9D4C();
        v53 = MEMORY[0x277D84F90];
        sub_21D0F1D40(&qword_280D1B920, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
        sub_21D0CD8F0();
        v34 = v42;
        v35 = v44;
        sub_21DBFBCBC();
        v36 = v52;
        sub_21DBFB0AC();
        _Block_release(v32);

        (*(v43 + 8))(v34, v35);
        (*(v40 + 8))(v33, v41);
      }

      v16 = *(v13 + 8 * v19);
      ++v11;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D0F249C()
{

  return swift_deallocObject();
}

uint64_t sub_21D0F24DC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D0F251C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21D0F29A0, v3, v2);
}

void sub_21D0F2660()
{
  v1 = v0;
  v2 = sub_21DBFAF2C();
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  MEMORY[0x28223BE20](v2);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF9D8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + 24);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v13 = sub_21DBFAF3C();

  v14 = *(v13 + 16);
  if (v14)
  {
    v30 = v1;
    v36 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v14, 0);
    v15 = 0;
    v16 = v36;
    v33 = v13 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v32 = v35 + 16;
    v17 = (v35 + 8);
    v18 = v31;
    while (v15 < *(v13 + 16))
    {
      v19 = v34;
      (*(v35 + 16))(v18, v33 + *(v35 + 72) * v15, v34);
      v20 = sub_21DBFAEFC();
      v21 = [v20 identifier];

      if (!v21)
      {
        goto LABEL_14;
      }

      v22 = sub_21DBFA16C();
      v24 = v23;

      (*v17)(v18, v19);
      v36 = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_21D18E678((v25 > 1), v26 + 1, 1);
        v18 = v31;
        v16 = v36;
      }

      ++v15;
      *(v16 + 16) = v26 + 1;
      v27 = v16 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      if (v14 == v15)
      {

        v1 = v30;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_11:
  v28 = sub_21D0FC0A8(v16);

  *(v1 + 56) = v28;
}

uint64_t sub_21D0F29A0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 24) = 0;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t TTRAccountsListsInteractor.accountForUpgradeHint(from:)(uint64_t a1)
{
  v2 = sub_21DBF69AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v69 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v69 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v76 = &v69 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v74 = &v69 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v75 = &v69 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v69 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v77 = &v69 - v23;
  MEMORY[0x28223BE20](v22);
  v78 = &v69 - v24;
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v72 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults;
  v73 = qword_280D1AA18;
  v25 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v25)
  {
    v26 = sub_21DBFA12C();
    v27 = [v25 BOOLForKey_];

    if (v27)
    {
      return 0;
    }
  }

  v71 = v9;
  v28 = *(a1 + 16);
  if (v28)
  {
    v80 = v6;
    v81 = 0;
    v69 = v12;
    v70 = v3;
    v83 = *(v3 + 16);
    v84 = v3 + 16;
    v29 = (v3 + 8);
    v30 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v82 = *(v3 + 72);
    v31 = v30;
    v32 = v28;
    while (1)
    {
      v83(v21, v31, v2);
      v33 = v2;
      v34 = sub_21DBF693C();
      v35 = [v34 accountTypeHost];

      LOBYTE(v34) = [v35 isPrimaryCloudKit];
      if (v34)
      {
        break;
      }

      (*v29)(v21, v33);
      v31 += v82;
      --v32;
      v2 = v33;
      if (!v32)
      {
        goto LABEL_12;
      }
    }

    v37 = v70 + 32;
    v36 = *(v70 + 32);
    v38 = v77;
    v36(v77, v21, v33);
    v39 = v78;
    v36(v78, v38, v33);
    v40 = sub_21DBF693C();
    TTRAccountsListsInteractor.migrationState(for:)(v40, &v86);

    (*(v37 - 24))(v39, v33);
    v2 = v33;
    if (v86 - 2 < 4)
    {
      return 0;
    }

LABEL_12:
    if (v28 != 1)
    {
      v42 = v79;
      v41 = v80;
      while (1)
      {
LABEL_23:
        v83(v41, v30, v2);
        v53 = sub_21DBF693C();
        v54 = [v53 accountTypeHost];

        LODWORD(v53) = [v54 isCalDav];
        if (v53)
        {
          v55 = sub_21DBF693C();
          v56 = [v55 objectID];

          sub_21D60BA3C();
          LOBYTE(v55) = v57;

          if (v55)
          {
            v58 = sub_21DBF693C();
            v59 = [v58 accountTypeHost];
            v60 = swift_allocObject();
            *(v60 + 16) = v42;
            *(v60 + 24) = v58;
            *(swift_allocObject() + 16) = v58;
            v61 = v58;
            v62 = v42;
            v63 = v81;
            sub_21DBFB2CC();
            if (v63)
            {

              v81 = 0;
              v41 = v80;
            }

            else
            {
              v81 = 0;

              v41 = v80;
              if (v85 - 2 >= 5)
              {
                v64 = v71;
                v66 = v70 + 32;
                v65 = *(v70 + 32);
                v65(v71, v80, v2);
                v67 = v69;
                v65(v69, v64, v2);
                v28 = sub_21DBF693C();
                (*(v66 - 24))(v67, v2);
                return v28;
              }
            }
          }
        }

        (*v29)(v41, v2);
        v30 += v82;
        if (!--v28)
        {
          return v28;
        }
      }
    }

    v43 = sub_21D60BC94();
    v41 = v80;
    if (v43)
    {
      v42 = v79;
      goto LABEL_23;
    }

    v44 = v76;
    v83(v76, v30, v2);
    v45 = sub_21DBF693C();
    v46 = [v45 accountTypeHost];

    LOBYTE(v45) = [v46 isLocal];
    if ((v45 & 1) == 0)
    {
      (*v29)(v44, v2);
      v42 = v79;
      goto LABEL_23;
    }

    v47 = *(v70 + 32);
    v48 = v74;
    v47(v74, v44, v2);
    v49 = v75;
    v47(v75, v48, v2);
    v50 = *(v73 + v72);
    if (v50 && (v51 = sub_21DBFA12C(), v52 = [v50 BOOLForKey_], v51, (v52 & 1) != 0))
    {
      v28 = 0;
    }

    else
    {
      v28 = sub_21DBF693C();
    }

    (*v29)(v49, v2);
  }

  return v28;
}

uint64_t sub_21D0F31D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm_0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t TTRAccountsListsInteractor.migrationState(for:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = [a1 accountTypeHost];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(swift_allocObject() + 16) = a1;
  v7 = a1;
  v8 = v2;
  sub_21DBFB2CC();

  v10 = v11;
  if (v11 == 6)
  {
    v10 = 2;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_21D0F34F4()
{

  return swift_deallocObject();
}

uint64_t sub_21D0F3534()
{

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for TTRListEditor.ReminderParentListMutationOperation(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

id sub_21D0F3644@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = [v3 didChooseToMigrate];
  if (result)
  {
    result = [v3 didFinishMigration];
    if (result)
    {
      v5 = 5;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 2;
  }

  *a1 = v5;
  return result;
}

uint64_t storeEnumTagSinglePayload for TTRRemindersBoardCellInfoButtonStates(uint64_t result, int a2, int a3)
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

uint64_t TTRAccountsListsViewModel.visiblePinnedLists.getter()
{
  v27 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v27);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = MEMORY[0x277D84F90];
  v26 = *(v6 + 72);
  while (1)
  {
    sub_21D0D3954(v11, v8, &qword_27CE58180);
    sub_21D0FE734(v8, v2, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21D0CF7E0(v8, &qword_27CE58180);
      sub_21D100E28(v2, v4, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
      v14 = *&v4[*(v25 + 20)];
      sub_21DBF8E0C();
      result = sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
    }

    else
    {
      sub_21D101450(v2, type metadata accessor for TTRAccountsListsViewModel.Item);
      result = sub_21D0CF7E0(v8, &qword_27CE58180);
      v14 = MEMORY[0x277D84F90];
    }

    v15 = *(v14 + 16);
    v16 = v12[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= v12[3] >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v12 = sub_21D103860(isUniquelyReferenced_nonNull_native, v19, 1, v12);
      if (*(v14 + 16))
      {
LABEL_17:
        v20 = (v12[3] >> 1) - v12[2];
        result = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
        if (v20 < v15)
        {
          goto LABEL_25;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v21 = v12[2];
          v22 = __OFADD__(v21, v15);
          v23 = v21 + v15;
          if (v22)
          {
            goto LABEL_26;
          }

          v12[2] = v23;
        }

        goto LABEL_4;
      }
    }

    if (v15)
    {
      goto LABEL_24;
    }

LABEL_4:
    v11 += v26;
    if (!--v10)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21D0F3AB8@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage))
  {
    v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage + 8);
    ObjectType = swift_getObjectType();
    return (*(v3 + 8))(ObjectType, v3);
  }

  else
  {
    v6 = type metadata accessor for TTRListType(0);
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

uint64_t sub_21D0F3B8C()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 64))(v2, v3);
  return swift_endAccess();
}

unint64_t TTRUserDefaults.smartListsVisibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3 && (v4 = sub_21DBFA12C(), v5 = [v3 dictionaryForKey_], v4, v5) && (v6 = sub_21DBF9E6C(), v5, v7 = sub_21DA54204(v6), , v7))
  {
    v24 = MEMORY[0x277D84F98];
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 64);
    v11 = (v8 + 63) >> 6;
    sub_21DBF8E0C();
    for (i = 0; v10; i = v13)
    {
      v13 = i;
LABEL_11:
      v14 = (v13 << 10) | (16 * __clz(__rbit64(v10)));
      v15 = (*(v7 + 48) + v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v7 + 56) + v14);
      v19 = *v18;
      v20 = v18[1];
      v23[0] = v16;
      v23[1] = v17;
      v23[2] = v19;
      v23[3] = v20;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DA5447C(&v24, v23);
      v10 &= v10 - 1;
    }

    while (1)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        v22 = v24;
        sub_21D0F3E74(MEMORY[0x277D84F90]);

        result = v22;
        goto LABEL_15;
      }

      v10 = *(v7 + 64 + 8 * v13);
      ++i;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    result = sub_21D0F3E74(MEMORY[0x277D84F90]);
LABEL_15:
    *a1 = result;
  }

  return result;
}

unint64_t sub_21D0F3E74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58208);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_21D10186C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

RemindersUICore::TTRListType::PredefinedSmartListVisibilityOptions __swiftcall TTRListType.PredefinedSmartListVisibilityOptions.merging(with:)(Swift::OpaquePointer with)
{
  v4 = v1;
  v5 = *v2;
  sub_21DBF8E0C();
  sub_21D0F3E74(MEMORY[0x277D84F90]);

  v6 = with._rawValue + 64;
  v7 = 1 << *(with._rawValue + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(with._rawValue + 8);
  v10 = (v7 + 63) >> 6;
  sub_21DBF8E0C();
  rawValue = with._rawValue;
  v11 = 0;
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      *v4 = v5;
      return result;
    }

    v9 = *&v6[8 * v12];
    ++v11;
    if (v9)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v14 = (v12 << 9) | (8 * v13);
        v15 = *(*(with._rawValue + 7) + v14);
        v16 = *(*(with._rawValue + 6) + v14);
        TTRListType.PredefinedSmartListType.init(remSmartListType:)(v16);
        v17 = v54;
        if (v54 == 7 || !v15)
        {

          v11 = v12;
          if (!v9)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

        if (v15 == 1)
        {
          break;
        }

        if (v15 == 2)
        {
          v24 = v4;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = v5;
          v26 = sub_21D10186C(v17);
          v28 = v5[2];
          v29 = (v27 & 1) == 0;
          v30 = __OFADD__(v28, v29);
          v31 = v28 + v29;
          if (v30)
          {
            goto LABEL_46;
          }

          v32 = v27;
          if (v5[3] >= v31)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_29;
            }

            v46 = v26;
            sub_21D224B88();
            v26 = v46;
            with._rawValue = rawValue;
            if ((v32 & 1) == 0)
            {
              goto LABEL_39;
            }

LABEL_30:
            *(v5[7] + v26) = 2;
          }

          else
          {
            sub_21D21D0E0(v31, isUniquelyReferenced_nonNull_native);
            v26 = sub_21D10186C(v17);
            if ((v32 & 1) != (v33 & 1))
            {
              goto LABEL_50;
            }

LABEL_29:
            with._rawValue = rawValue;
            if (v32)
            {
              goto LABEL_30;
            }

LABEL_39:
            v5[(v26 >> 6) + 8] |= 1 << v26;
            *(v5[6] + v26) = v17;
            *(v5[7] + v26) = 2;

            v47 = v5[2];
            v30 = __OFADD__(v47, 1);
            v48 = v47 + 1;
            if (v30)
            {
              goto LABEL_49;
            }

            v5[2] = v48;
          }

          v4 = v24;
LABEL_42:

          v11 = v12;
          if (!v9)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

        v51 = v5;
        if (qword_27CE56C38 != -1)
        {
          swift_once();
        }

        v18 = sub_21DBF84BC();
        __swift_project_value_buffer(v18, qword_27CE607B0);
        v19 = sub_21DBF84AC();
        v20 = sub_21DBFAECC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = v4;
          v22 = swift_slowAlloc();
          *v22 = 134217984;
          *(v22 + 4) = v15;
          _os_log_impl(&dword_21D0C9000, v19, v20, "TTRListType.PredefinedSmartListVisibilityOptions#merging(_:): Unhandled userDefinedVisibility {userDefinedVisibility: %ld}", v22, 0xCu);
          v23 = v22;
          v4 = v21;
          MEMORY[0x223D46520](v23, -1, -1);
        }

        v11 = v12;
        v5 = v51;
        with._rawValue = rawValue;
        if (!v9)
        {
          goto LABEL_7;
        }

LABEL_6:
        v12 = v11;
      }

      v34 = v4;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v54 = v5;
      v37 = sub_21D10186C(v17);
      v38 = v5[2];
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_47;
      }

      if (v5[3] >= v40)
      {
        if ((v35 & 1) == 0)
        {
          v49 = v36;
          sub_21D224B88();
          v36 = v49;
        }
      }

      else
      {
        v52 = v36;
        sub_21D21D0E0(v40, v35);
        v41 = sub_21D10186C(v17);
        v43 = v42 & 1;
        v36 = v52;
        if ((v52 & 1) != v43)
        {
          goto LABEL_50;
        }

        v37 = v41;
      }

      v4 = v34;
      if (v36)
      {
        *(v5[7] + v37) = 1;
      }

      else
      {
        v5[(v37 >> 6) + 8] |= 1 << v37;
        *(v5[6] + v37) = v17;
        *(v5[7] + v37) = 1;

        v44 = v5[2];
        v30 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v30)
        {
          goto LABEL_48;
        }

        v5[2] = v45;
      }

      with._rawValue = rawValue;
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result.visibilityByType._rawValue = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D0F43C4()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 40))(v2, v3);
  return swift_endAccess();
}

void *TTRUserDefaults.smartListsDisplayOrder.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3 && (v4 = sub_21DBFA12C(), v5 = [v3 arrayForKey_], v4, v5) && (v6 = sub_21DBFA5EC(), v5, v7 = sub_21DA4E538(v6), result = , v7))
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = v7 + 40;
      v22 = MEMORY[0x277D84F90];
      do
      {
        v12 = v11 + 16 * v10;
        v13 = v10;
        while (1)
        {
          if (v13 >= *(v7 + 16))
          {
            __break(1u);
            return result;
          }

          v10 = v13 + 1;
          sub_21DBF8E0C();
          v14 = sub_21DBFC45C();
          if (v14 <= 6)
          {
            break;
          }

          if (qword_27CE56FE8 != -1)
          {
            swift_once();
          }

          v15 = sub_21DBF84BC();
          __swift_project_value_buffer(v15, qword_27CE65080);
          v16 = sub_21DBF84AC();
          v17 = sub_21DBFAECC();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&dword_21D0C9000, v16, v17, "Saved a smart list type to user defaults that is not valid", v18, 2u);
            MEMORY[0x223D46520](v18, -1, -1);
          }

          v12 += 16;
          v13 = v10;
          if (v9 == v10)
          {
            goto LABEL_22;
          }
        }

        v19 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_21D0F4EB4(0, *(v22 + 2) + 1, 1, v22);
        }

        v21 = *(v22 + 2);
        v20 = *(v22 + 3);
        if (v21 >= v20 >> 1)
        {
          v22 = sub_21D0F4EB4((v20 > 1), v21 + 1, 1, v22);
        }

        *(v22 + 2) = v21 + 1;
        v22[v21 + 32] = v19;
        v11 = v7 + 40;
      }

      while (v9 - 1 != v13);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

LABEL_22:

    return TTRListType.PredefinedSmartListsDisplayOrder.init(ordering:)(v22).ordering._rawValue;
  }

  else
  {
    result = TTRListType.PredefinedSmartListsDisplayOrder.init(ordering:)(MEMORY[0x277D84F90]).ordering._rawValue;
    *a1 = v23;
  }

  return result;
}

RemindersUICore::TTRListType::PredefinedSmartListsDisplayOrder __swiftcall TTRListType.PredefinedSmartListsDisplayOrder.init(ordering:)(Swift::OpaquePointer ordering)
{
  v2 = *(ordering._rawValue + 2);
  v31 = v1;
  if (v2)
  {
    v3 = ordering._rawValue + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v8 = *v3++;
      v7 = v8;
      if (v8 != 5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21D0FF89C(0, *(v4 + 2) + 1, 1);
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        if (v6 >= v5 >> 1)
        {
          sub_21D0FF89C((v5 > 1), v6 + 1, 1);
        }

        *(v4 + 2) = v6 + 1;
        v4[v6 + 32] = v7;
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v10 = sub_21D0F4C68(v9);

  v11 = 0;
  v12 = v10 + 56;
  do
  {
    v13 = byte_282EA6970[v11 + 32];
    if (v13 != 5)
    {
      if (*(v10 + 16))
      {
        sub_21DBFC7DC();
        sub_21DBFA27C();

        v14 = sub_21DBFC82C();
        v15 = -1 << *(v10 + 32);
        v16 = v14 & ~v15;
        if ((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          do
          {
            v18 = *(*(v10 + 48) + v16);
            if (v18 <= 2)
            {
              if (*(*(v10 + 48) + v16))
              {
                if (v18 == 1)
                {
                  v20 = 0x656C756465686373;
                }

                else
                {
                  v20 = 7105633;
                }

                if (v18 == 1)
                {
                  v19 = 0xE900000000000064;
                }

                else
                {
                  v19 = 0xE300000000000000;
                }

                if (v13 > 2)
                {
LABEL_42:
                  v26 = 0x6574656C706D6F63;
                  if (v13 == 4)
                  {
                    v26 = 0x64656E6769737361;
                  }

                  v24 = 0xE900000000000064;
                  if (v13 == 4)
                  {
                    v24 = 0xE800000000000000;
                  }

                  v21 = v13 == 3;
                  if (v13 == 3)
                  {
                    v22 = 0x64656767616C66;
                  }

                  else
                  {
                    v22 = v26;
                  }

                  v23 = 0xE700000000000000;
                  goto LABEL_50;
                }
              }

              else
              {
                v19 = 0xE500000000000000;
                v20 = 0x7961646F74;
                if (v13 > 2)
                {
                  goto LABEL_42;
                }
              }
            }

            else if (*(*(v10 + 48) + v16) > 4u)
            {
              if (v18 == 5)
              {
                v20 = 0x6E756F4669726973;
                v19 = 0xEF737070416E4964;
                if (v13 > 2)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v20 = 0x6574656C706D6F63;
                v19 = 0xE900000000000064;
                if (v13 > 2)
                {
                  goto LABEL_42;
                }
              }
            }

            else if (v18 == 3)
            {
              v19 = 0xE700000000000000;
              v20 = 0x64656767616C66;
              if (v13 > 2)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v19 = 0xE800000000000000;
              v20 = 0x64656E6769737361;
              if (v13 > 2)
              {
                goto LABEL_42;
              }
            }

            if (!v13)
            {
              v25 = 0xE500000000000000;
              if (v20 != 0x7961646F74)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            }

            v21 = v13 == 1;
            if (v13 == 1)
            {
              v22 = 0x656C756465686373;
            }

            else
            {
              v22 = 7105633;
            }

            v23 = 0xE900000000000064;
            v24 = 0xE300000000000000;
LABEL_50:
            if (v21)
            {
              v25 = v23;
            }

            else
            {
              v25 = v24;
            }

            if (v20 != v22)
            {
              goto LABEL_55;
            }

LABEL_54:
            if (v19 == v25)
            {

              goto LABEL_13;
            }

LABEL_55:
            v27 = sub_21DBFC64C();

            if (v27)
            {
              goto LABEL_13;
            }

            v16 = (v16 + 1) & v17;
          }

          while (((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_21D0F4EB4(0, *(v4 + 2) + 1, 1, v4);
      }

      v29 = *(v4 + 2);
      v28 = *(v4 + 3);
      if (v29 >= v28 >> 1)
      {
        v4 = sub_21D0F4EB4((v28 > 1), v29 + 1, 1, v4);
      }

      *(v4 + 2) = v29 + 1;
      v4[v29 + 32] = v13;
    }

LABEL_13:
    ++v11;
  }

  while (v11 != 7);

  *v31 = v4;
  return result;
}

uint64_t sub_21D0F4C9C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x223D43280](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t sub_21D0F4D1C()
{
  result = qword_280D16BA8;
  if (!qword_280D16BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D16BA8);
  }

  return result;
}

unint64_t sub_21D0F4D74()
{
  result = qword_280D16BA0;
  if (!qword_280D16BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D16BA0);
  }

  return result;
}

char *sub_21D0F4DC8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

uint64_t getEnumTagSinglePayload for TTRRemindersBoardCellInfoButtonStates(uint64_t a1, int a2)
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

uint64_t getEnumTagSinglePayload for TTRPermissionConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_21D0F4FF0()
{
  result = sub_21DBF56BC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D0F509C()
{
  result = type metadata accessor for TTRAccountsListsViewModel.SmartList(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D0F514C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(BOOL, unint64_t, uint64_t), uint64_t (*a7)(void))
{
  v10 = v7;
  v28 = a1;
  v29 = a2;
  v26 = a4;
  v27 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v24 - v15;
  v17 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
    return v18;
  }

  v30 = MEMORY[0x277D84F90];
  v24 = a6;
  (a6)(0, v17, 0, v14);
  v18 = v30;
  v19 = *(a7(0) - 8);
  v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v25 = *(v19 + 72);
  while (1)
  {
    v28(v20);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v30 = v18;
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    if (v22 >= v21 >> 1)
    {
      v24(v21 > 1, v22 + 1, 1);
      v18 = v30;
    }

    *(v18 + 16) = v22 + 1;
    sub_21D0D523C(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, v26);
    v20 += v25;
    if (!--v17)
    {
      return v18;
    }
  }

  __break(1u);
  return result;
}

size_t sub_21D0F53A8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

size_t sub_21D0F5590(size_t a1, int64_t a2, char a3)
{
  result = sub_21D0F53A8(a1, a2, a3, *v3, &qword_27CE58798, &unk_21DC099C0, &qword_27CE58180);
  *v3 = result;
  return result;
}

unint64_t sub_21D0F55D0(uint64_t a1)
{
  sub_21DBF56BC();
  v2 = MEMORY[0x277CC95F0];
  sub_21D0F56A4(&qword_280D1B850, MEMORY[0x277CC95F0]);
  v3 = sub_21DBF9FFC();
  return sub_21D0F56EC(a1, v3, MEMORY[0x277CC95F0], &qword_280D1B848, v2, MEMORY[0x277CC9610]);
}

uint64_t sub_21D0F56A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21D0F56EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_21D0F56A4(v24, v25);
      v20 = sub_21DBFA10C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

void *sub_21D0F588C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D180);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v28 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v26 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(sub_21DBF68DC() - 8);
  v23 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = MEMORY[0x277D84F90];
  v27 = *(v15 + 72);
  v24 = v9;
  v25 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE5D180);
    }

    else
    {
      v19 = v26;
      sub_21D0D523C(v8, v26, &qword_27CE58180);
      sub_21D0D523C(v19, v28, &qword_27CE58180);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_21D0FBE34(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_21D0FBE34(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_21D0D523C(v28, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_27CE58180);
      v9 = v24;
      a1 = v25;
    }

    v17 += v27;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

void sub_21D0F5BDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = sub_21DBF695C();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF676C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF68DC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v15, a1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x277D452F8])
  {
    (*(v12 + 96))(v15, v11);
    v17 = *v15;
    v65 = 0;
    v18 = v17;
    MEMORY[0x223D3EFA0]();
    v19 = v18;
    TTRAccountsListsViewModel.List.init(remList:sharingContactsData:reminderCounts:)(v19, &v65, v10, &v66);
    v20 = v77;
    *(a3 + 160) = v76;
    *(a3 + 176) = v20;
    *(a3 + 192) = *v78;
    *(a3 + 202) = *&v78[10];
    v21 = v73;
    *(a3 + 96) = v72;
    *(a3 + 112) = v21;
    v22 = v75;
    *(a3 + 128) = v74;
    *(a3 + 144) = v22;
    v23 = v69;
    *(a3 + 32) = v68;
    *(a3 + 48) = v23;
    v24 = v71;
    *(a3 + 64) = v70;
    *(a3 + 80) = v24;
    v25 = v67;
    *a3 = v66;
    *(a3 + 16) = v25;
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    swift_storeEnumTagMultiPayload();

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
    v27 = v26;
    v28 = a3 + *(v26 + 52);
    *v28 = v19;
    v29 = 1;
LABEL_5:
    *(v28 + 8) = v29;
    *(a3 + *(v26 + 56)) = MEMORY[0x277D84F90];
    (*(*(v26 - 8) + 56))(a3, 0, 1, v27);
    return;
  }

  if (v16 == *MEMORY[0x277D452F0])
  {
    (*(v12 + 96))(v15, v11);
    v30 = *v15;
    MEMORY[0x223D3EF90]();
    v31 = v30;
    TTRAccountsListsViewModel.List.init(remSmartList:reminderCounts:parentList:)(v31, v10, 0, &v66);
    v32 = v77;
    *(a3 + 160) = v76;
    *(a3 + 176) = v32;
    *(a3 + 192) = *v78;
    *(a3 + 202) = *&v78[10];
    v33 = v73;
    *(a3 + 96) = v72;
    *(a3 + 112) = v33;
    v34 = v75;
    *(a3 + 128) = v74;
    *(a3 + 144) = v34;
    v35 = v69;
    *(a3 + 32) = v68;
    *(a3 + 48) = v35;
    v36 = v71;
    *(a3 + 64) = v70;
    *(a3 + 80) = v36;
    v37 = v67;
    *a3 = v66;
    *(a3 + 16) = v37;
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    swift_storeEnumTagMultiPayload();

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
    v27 = v26;
    v28 = a3 + *(v26 + 52);
    *v28 = v31;
    v29 = 2;
    goto LABEL_5;
  }

  if (v16 == *MEMORY[0x277D45300])
  {
    v38 = a2;
    (*(v12 + 96))(v15, v11);
    v39 = v63;
    v40 = v7;
    (*(v63 + 32))(v7, v15, v64);
    *&v66 = 0;
    v41 = sub_21DBF692C();
    MEMORY[0x28223BE20](v41);
    *(&v61 - 4) = v38;
    *(&v61 - 3) = &v66;
    *(&v61 - 2) = v7;
    v42 = v79;
    v43 = sub_21D4E800C(sub_21DA311B4, (&v61 - 6), v41);
    v79 = v42;

    v44 = sub_21DBF693C();
    v45 = [v44 displayName];
    v62 = sub_21DBFA16C();
    v61 = v46;

    v47 = v66;
    v48 = objc_opt_self();
    v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v50 = [v48 localizedStringFromNumber:v49 numberStyle:1];

    v51 = sub_21DBFA16C();
    v53 = v52;

    v54 = [v44 objectID];
    v55 = v43[2];
    v56 = v61;
    *a3 = v62;
    *(a3 + 8) = v56;
    *(a3 + 16) = v47;
    *(a3 + 24) = v51;
    *(a3 + 32) = v53;
    *(a3 + 40) = 1;
    *(a3 + 41) = v65;
    *(a3 + 44) = *(&v65 + 3);
    *(a3 + 48) = v54;
    *(a3 + 56) = v55;
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    swift_storeEnumTagMultiPayload();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
    v58 = a3 + *(v57 + 52);
    *v58 = v44;
    *(v58 + 8) = 4;
    *(a3 + *(v57 + 56)) = v43;
    (*(*(v57 - 8) + 56))(a3, 0, 1, v57);
    (*(v39 + 8))(v40, v64);
  }

  else
  {
    if (qword_280D0F4D0 != -1)
    {
      swift_once();
    }

    v59 = sub_21DBF84BC();
    __swift_project_value_buffer(v59, qword_280D0F4D8);
    v60 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v60);
    sub_21DAEAB00("Unknown child type", 18, 2);
    __break(1u);
  }
}

__n128 TTRAccountsListsViewModel.List.init(remList:sharingContactsData:reminderCounts:)@<Q0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = *a2;
  v6 = a1;
  if ([v6 isShared])
  {
    v80 = REMList.participantsToShowForSharingStatus(maxCount:)(3, 0);
  }

  else
  {

    v80 = 0;
  }

  v7 = objc_opt_self();
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v9 = [v7 localizedStringFromNumber:v8 numberStyle:1];

  v82 = sub_21DBFA16C();
  v84 = v10;

  v85 = [v6 sharingStatus];
  v11 = [v6 appearanceContext];
  if (!v11 || (v12 = v11, v13 = [v11 badge], v12, !v13))
  {
LABEL_15:
    v24 = v6;
    v25 = [v24 appearanceContext];
    v26 = [v25 badge];

    if (v26)
    {
      v27 = [v26 emblem];
      if (v27)
      {
        v28 = v27;
        if (qword_27CE56B40 != -1)
        {
          swift_once();
        }

        v29 = qword_27CE5F688;
        sub_21DBF8E0C();
        v30 = sub_21D22D5B4(v28, v29);

        if (v30)
        {
          goto LABEL_22;
        }
      }
    }

    v28 = *MEMORY[0x277D44960];
LABEL_22:

    v83 = v28;
    v31 = v28;
    v32 = [v24 appearanceContext];
    if (v32)
    {

      v33 = REMListBadgeEmblem.name.getter();
      v77 = v34;
      v78 = v33;
    }

    else
    {

      v77 = 0;
      v78 = 0;
    }

    v20 = 0;
    v23 = 0;
    goto LABEL_26;
  }

  v14 = [v13 emoji];
  if (!v14)
  {

    goto LABEL_15;
  }

  v15 = v14;
  v16 = sub_21DBFA16C();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    goto LABEL_15;
  }

  v83 = v16;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v20 = v18;
  v62 = 0x800000021DC73AF0;
  v21 = sub_21DBF516C();
  v77 = v22;
  v78 = v21;

  v23 = 1;
LABEL_26:
  v35 = [v6 parentList];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 displayName];

    v38 = sub_21DBFA16C();
    v75 = v39;
    v76 = v38;
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  v40 = [v6 parentList];
  if (v40)
  {
    v41 = v40;
    v74 = [v40 objectID];
  }

  else
  {
    v74 = 0;
  }

  v42 = [v6 account];
  v43 = [v42 capabilities];

  LODWORD(v42) = [v43 supportsPinnedLists];
  if (v42)
  {
    v73 = [v6 isPinned];
  }

  else
  {
    v73 = 2;
  }

  v72 = [v6 objectID];
  v44 = [v6 displayName];
  v45 = sub_21DBFA16C();
  v70 = v46;
  v71 = v45;

  v69 = sub_21DBF673C();
  v68 = sub_21DBF675C();
  v79 = a3;
  if (v85 == 3)
  {

    v82 = 0;
    v84 = 0xE000000000000000;
  }

  type metadata accessor for TTRListColors();
  v86[3] = sub_21D0D8CF0(0, &qword_280D17690);
  v86[4] = &protocol witness table for REMList;
  v86[0] = v6;
  v47 = v6;
  static TTRListColors.color(for:)(v86, v87);
  sub_21D0CF7E0(v86, &qword_27CE59DC0);
  v67 = v87[1];
  v64 = v87[0];
  v65 = v89;
  v66 = v88;
  v48 = v90;
  sub_21D0FB9BC(v83, v20, v23);
  v63 = [v47 canBeShared];
  v49 = [v47 isShared];
  v50 = [v47 sharingStatusText];
  if (v50)
  {
    v51 = v50;
    v52 = sub_21DBFA16C();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = [v47 groceryContext];
  if (v55)
  {
    v86[0] = v55;
    v56 = sub_21D0D8CF0(0, &unk_280D0C250);
    v57 = sub_21D0FB9CC(v56, &protocol witness table for REMListGroceryContext);
    v58 = v83;
    sub_21D0FB9F4(v83, v20, v23);

    v59 = sub_21DBF676C();
    (*(*(v59 - 8) + 8))(v79, v59);
  }

  else
  {
    v58 = v83;
    sub_21D0FB9F4(v83, v20, v23);

    v60 = sub_21DBF676C();
    (*(*(v60 - 8) + 8))(v79, v60);
    v57 = 0;
  }

  *a4 = v72;
  *(a4 + 8) = v71;
  *(a4 + 16) = v70;
  *(a4 + 24) = v69;
  *(a4 + 32) = v68;
  *(a4 + 40) = v82;
  *(a4 + 48) = v84;
  *(a4 + 56) = v78;
  *(a4 + 64) = v77;
  *(a4 + 72) = v64;
  result = v67;
  *(a4 + 88) = v67;
  *(a4 + 104) = v66;
  *(a4 + 112) = v65;
  *(a4 + 120) = v48;
  *(a4 + 128) = v58;
  *(a4 + 136) = v20;
  *(a4 + 144) = v23;
  *(a4 + 145) = 1;
  *(a4 + 146) = v73;
  *(a4 + 147) = v63;
  *(a4 + 148) = v49;
  *(a4 + 152) = v85;
  *(a4 + 160) = v52;
  *(a4 + 168) = v54;
  *(a4 + 176) = v80;
  *(a4 + 184) = v81;
  *(a4 + 192) = v74;
  *(a4 + 200) = v76;
  *(a4 + 208) = v75;
  *(a4 + 216) = 0;
  *(a4 + 217) = v57 & 1;
  return result;
}

uint64_t REMListBadgeEmblem.name.getter()
{
  v0 = sub_21DBFA16C();
  v2 = v1;
  if (v0 == sub_21DBFA16C() && v2 == v3)
  {

LABEL_15:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v5 = sub_21DBFC64C();

  if (v5)
  {
    goto LABEL_15;
  }

  v6 = sub_21DBFA16C();
  v8 = v7;
  if (v6 == sub_21DBFA16C() && v8 == v9)
  {

LABEL_18:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v11 = sub_21DBFC64C();

  if (v11)
  {
    goto LABEL_18;
  }

  v12 = sub_21DBFA16C();
  v14 = v13;
  if (v12 == sub_21DBFA16C() && v14 == v15)
  {

    goto LABEL_21;
  }

  v16 = sub_21DBFC64C();

  if (v16)
  {
LABEL_21:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

LABEL_189:
    swift_once();
    return sub_21DBF516C();
  }

  v18 = sub_21DBFA16C();
  v20 = v19;
  if (v18 == sub_21DBFA16C() && v20 == v21)
  {

    goto LABEL_27;
  }

  v22 = sub_21DBFC64C();

  if (v22)
  {
LABEL_27:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v23 = sub_21DBFA16C();
  v25 = v24;
  if (v23 == sub_21DBFA16C() && v25 == v26)
  {

    goto LABEL_33;
  }

  v27 = sub_21DBFC64C();

  if (v27)
  {
LABEL_33:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v28 = sub_21DBFA16C();
  v30 = v29;
  if (v28 == sub_21DBFA16C() && v30 == v31)
  {

    goto LABEL_39;
  }

  v32 = sub_21DBFC64C();

  if (v32)
  {
LABEL_39:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v33 = sub_21DBFA16C();
  v35 = v34;
  if (v33 == sub_21DBFA16C() && v35 == v36)
  {

    goto LABEL_46;
  }

  v37 = sub_21DBFC64C();

  if (v37)
  {
LABEL_46:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v38 = sub_21DBFA16C();
  v40 = v39;
  if (v38 == sub_21DBFA16C() && v40 == v41)
  {

    goto LABEL_53;
  }

  v42 = sub_21DBFC64C();

  if (v42)
  {
LABEL_53:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v43 = sub_21DBFA16C();
  v45 = v44;
  if (v43 == sub_21DBFA16C() && v45 == v46)
  {

    goto LABEL_60;
  }

  v47 = sub_21DBFC64C();

  if (v47)
  {
LABEL_60:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v48 = sub_21DBFA16C();
  v50 = v49;
  if (v48 == sub_21DBFA16C() && v50 == v51)
  {

    goto LABEL_67;
  }

  v52 = sub_21DBFC64C();

  if (v52)
  {
LABEL_67:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v53 = sub_21DBFA16C();
  v55 = v54;
  if (v53 == sub_21DBFA16C() && v55 == v56)
  {

    goto LABEL_74;
  }

  v57 = sub_21DBFC64C();

  if (v57)
  {
LABEL_74:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v58 = sub_21DBFA16C();
  v60 = v59;
  if (v58 == sub_21DBFA16C() && v60 == v61)
  {

    goto LABEL_81;
  }

  v62 = sub_21DBFC64C();

  if (v62)
  {
LABEL_81:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v63 = sub_21DBFA16C();
  v65 = v64;
  if (v63 == sub_21DBFA16C() && v65 == v66)
  {

    goto LABEL_88;
  }

  v67 = sub_21DBFC64C();

  if (v67)
  {
LABEL_88:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v68 = sub_21DBFA16C();
  v70 = v69;
  if (v68 == sub_21DBFA16C() && v70 == v71)
  {

    goto LABEL_95;
  }

  v72 = sub_21DBFC64C();

  if (v72)
  {
LABEL_95:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v73 = sub_21DBFA16C();
  v75 = v74;
  if (v73 == sub_21DBFA16C() && v75 == v76)
  {

    goto LABEL_102;
  }

  v77 = sub_21DBFC64C();

  if (v77)
  {
LABEL_102:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v78 = sub_21DBFA16C();
  v80 = v79;
  if (v78 == sub_21DBFA16C() && v80 == v81)
  {

    goto LABEL_109;
  }

  v82 = sub_21DBFC64C();

  if (v82)
  {
LABEL_109:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v83 = sub_21DBFA16C();
  v85 = v84;
  if (v83 == sub_21DBFA16C() && v85 == v86)
  {

    goto LABEL_116;
  }

  v87 = sub_21DBFC64C();

  if (v87)
  {
LABEL_116:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v88 = sub_21DBFA16C();
  v90 = v89;
  if (v88 == sub_21DBFA16C() && v90 == v91)
  {

    goto LABEL_123;
  }

  v92 = sub_21DBFC64C();

  if (v92)
  {
LABEL_123:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v93 = sub_21DBFA16C();
  v95 = v94;
  if (v93 == sub_21DBFA16C() && v95 == v96)
  {

    goto LABEL_130;
  }

  v97 = sub_21DBFC64C();

  if (v97)
  {
LABEL_130:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v98 = sub_21DBFA16C();
  v100 = v99;
  if (v98 == sub_21DBFA16C() && v100 == v101)
  {

    goto LABEL_137;
  }

  v102 = sub_21DBFC64C();

  if (v102)
  {
LABEL_137:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v103 = sub_21DBFA16C();
  v105 = v104;
  if (v103 == sub_21DBFA16C() && v105 == v106)
  {

    goto LABEL_144;
  }

  v107 = sub_21DBFC64C();

  if (v107)
  {
LABEL_144:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v108 = sub_21DBFA16C();
  v110 = v109;
  if (v108 == sub_21DBFA16C() && v110 == v111)
  {

    goto LABEL_151;
  }

  v112 = sub_21DBFC64C();

  if (v112)
  {
LABEL_151:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v113 = sub_21DBFA16C();
  v115 = v114;
  if (v113 == sub_21DBFA16C() && v115 == v116)
  {

    goto LABEL_158;
  }

  v117 = sub_21DBFC64C();

  if (v117)
  {
LABEL_158:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v118 = sub_21DBFA16C();
  v120 = v119;
  if (v118 == sub_21DBFA16C() && v120 == v121)
  {

    goto LABEL_165;
  }

  v122 = sub_21DBFC64C();

  if (v122)
  {
LABEL_165:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v123 = sub_21DBFA16C();
  v125 = v124;
  if (v123 == sub_21DBFA16C() && v125 == v126)
  {

    goto LABEL_172;
  }

  v127 = sub_21DBFC64C();

  if (v127)
  {
LABEL_172:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v128 = sub_21DBFA16C();
  v130 = v129;
  if (v128 == sub_21DBFA16C() && v130 == v131)
  {

    goto LABEL_179;
  }

  v132 = sub_21DBFC64C();

  if (v132)
  {
LABEL_179:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_189;
  }

  v133 = sub_21DBFA16C();
  v135 = v134;
  if (v133 == sub_21DBFA16C() && v135 == v136)
  {

    goto LABEL_186;
  }

  v137 = sub_21DBFC64C();

  if (v137)
  {
LABEL_186:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v138 = sub_21DBFA16C();
  v140 = v139;
  if (v138 == sub_21DBFA16C() && v140 == v141)
  {

    goto LABEL_197;
  }

  v142 = sub_21DBFC64C();

  if (v142)
  {
LABEL_197:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v143 = sub_21DBFA16C();
  v145 = v144;
  if (v143 == sub_21DBFA16C() && v145 == v146)
  {

    goto LABEL_204;
  }

  v147 = sub_21DBFC64C();

  if (v147)
  {
LABEL_204:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v148 = sub_21DBFA16C();
  v150 = v149;
  if (v148 == sub_21DBFA16C() && v150 == v151)
  {

    goto LABEL_211;
  }

  v152 = sub_21DBFC64C();

  if (v152)
  {
LABEL_211:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v153 = sub_21DBFA16C();
  v155 = v154;
  if (v153 == sub_21DBFA16C() && v155 == v156)
  {

    goto LABEL_218;
  }

  v157 = sub_21DBFC64C();

  if (v157)
  {
LABEL_218:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v158 = sub_21DBFA16C();
  v160 = v159;
  if (v158 == sub_21DBFA16C() && v160 == v161)
  {

    goto LABEL_225;
  }

  v162 = sub_21DBFC64C();

  if (v162)
  {
LABEL_225:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v163 = sub_21DBFA16C();
  v165 = v164;
  if (v163 == sub_21DBFA16C() && v165 == v166)
  {

    goto LABEL_232;
  }

  v167 = sub_21DBFC64C();

  if (v167)
  {
LABEL_232:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v168 = sub_21DBFA16C();
  v170 = v169;
  if (v168 == sub_21DBFA16C() && v170 == v171)
  {

    goto LABEL_239;
  }

  v172 = sub_21DBFC64C();

  if (v172)
  {
LABEL_239:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v173 = sub_21DBFA16C();
  v175 = v174;
  if (v173 == sub_21DBFA16C() && v175 == v176)
  {

    goto LABEL_246;
  }

  v177 = sub_21DBFC64C();

  if (v177)
  {
LABEL_246:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v178 = sub_21DBFA16C();
  v180 = v179;
  if (v178 == sub_21DBFA16C() && v180 == v181)
  {

    goto LABEL_253;
  }

  v182 = sub_21DBFC64C();

  if (v182)
  {
LABEL_253:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v183 = sub_21DBFA16C();
  v185 = v184;
  if (v183 == sub_21DBFA16C() && v185 == v186)
  {

    goto LABEL_260;
  }

  v187 = sub_21DBFC64C();

  if (v187)
  {
LABEL_260:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v188 = sub_21DBFA16C();
  v190 = v189;
  if (v188 == sub_21DBFA16C() && v190 == v191)
  {

    goto LABEL_267;
  }

  v192 = sub_21DBFC64C();

  if (v192)
  {
LABEL_267:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v193 = sub_21DBFA16C();
  v195 = v194;
  if (v193 == sub_21DBFA16C() && v195 == v196)
  {

    goto LABEL_274;
  }

  v197 = sub_21DBFC64C();

  if (v197)
  {
LABEL_274:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v198 = sub_21DBFA16C();
  v200 = v199;
  if (v198 == sub_21DBFA16C() && v200 == v201)
  {

    goto LABEL_281;
  }

  v202 = sub_21DBFC64C();

  if (v202)
  {
LABEL_281:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v203 = sub_21DBFA16C();
  v205 = v204;
  if (v203 == sub_21DBFA16C() && v205 == v206)
  {

    goto LABEL_288;
  }

  v207 = sub_21DBFC64C();

  if (v207)
  {
LABEL_288:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v208 = sub_21DBFA16C();
  v210 = v209;
  if (v208 == sub_21DBFA16C() && v210 == v211)
  {

    goto LABEL_295;
  }

  v212 = sub_21DBFC64C();

  if (v212)
  {
LABEL_295:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v213 = sub_21DBFA16C();
  v215 = v214;
  if (v213 == sub_21DBFA16C() && v215 == v216)
  {

    goto LABEL_302;
  }

  v217 = sub_21DBFC64C();

  if (v217)
  {
LABEL_302:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v218 = sub_21DBFA16C();
  v220 = v219;
  if (v218 == sub_21DBFA16C() && v220 == v221)
  {

    goto LABEL_309;
  }

  v222 = sub_21DBFC64C();

  if (v222)
  {
LABEL_309:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v223 = sub_21DBFA16C();
  v225 = v224;
  if (v223 == sub_21DBFA16C() && v225 == v226)
  {

    goto LABEL_316;
  }

  v227 = sub_21DBFC64C();

  if (v227)
  {
LABEL_316:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v228 = sub_21DBFA16C();
  v230 = v229;
  if (v228 == sub_21DBFA16C() && v230 == v231)
  {

    goto LABEL_323;
  }

  v232 = sub_21DBFC64C();

  if (v232)
  {
LABEL_323:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v233 = sub_21DBFA16C();
  v235 = v234;
  if (v233 == sub_21DBFA16C() && v235 == v236)
  {

    goto LABEL_330;
  }

  v237 = sub_21DBFC64C();

  if (v237)
  {
LABEL_330:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v238 = sub_21DBFA16C();
  v240 = v239;
  if (v238 == sub_21DBFA16C() && v240 == v241)
  {

    goto LABEL_337;
  }

  v242 = sub_21DBFC64C();

  if (v242)
  {
LABEL_337:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v243 = sub_21DBFA16C();
  v245 = v244;
  if (v243 == sub_21DBFA16C() && v245 == v246)
  {

    goto LABEL_344;
  }

  v247 = sub_21DBFC64C();

  if (v247)
  {
LABEL_344:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v248 = sub_21DBFA16C();
  v250 = v249;
  if (v248 == sub_21DBFA16C() && v250 == v251)
  {

    goto LABEL_351;
  }

  v252 = sub_21DBFC64C();

  if (v252)
  {
LABEL_351:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v253 = sub_21DBFA16C();
  v255 = v254;
  if (v253 == sub_21DBFA16C() && v255 == v256)
  {

    goto LABEL_358;
  }

  v257 = sub_21DBFC64C();

  if (v257)
  {
LABEL_358:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v258 = sub_21DBFA16C();
  v260 = v259;
  if (v258 == sub_21DBFA16C() && v260 == v261)
  {

    goto LABEL_365;
  }

  v262 = sub_21DBFC64C();

  if (v262)
  {
LABEL_365:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v263 = sub_21DBFA16C();
  v265 = v264;
  if (v263 == sub_21DBFA16C() && v265 == v266)
  {

    goto LABEL_372;
  }

  v267 = sub_21DBFC64C();

  if (v267)
  {
LABEL_372:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v268 = sub_21DBFA16C();
  v270 = v269;
  if (v268 == sub_21DBFA16C() && v270 == v271)
  {

    goto LABEL_379;
  }

  v272 = sub_21DBFC64C();

  if (v272)
  {
LABEL_379:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v273 = sub_21DBFA16C();
  v275 = v274;
  if (v273 == sub_21DBFA16C() && v275 == v276)
  {

    goto LABEL_386;
  }

  v277 = sub_21DBFC64C();

  if (v277)
  {
LABEL_386:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v278 = sub_21DBFA16C();
  v280 = v279;
  if (v278 == sub_21DBFA16C() && v280 == v281)
  {

    goto LABEL_393;
  }

  v282 = sub_21DBFC64C();

  if (v282)
  {
LABEL_393:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v283 = sub_21DBFA16C();
  v285 = v284;
  if (v283 == sub_21DBFA16C() && v285 == v286)
  {

    goto LABEL_400;
  }

  v287 = sub_21DBFC64C();

  if (v287)
  {
LABEL_400:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v288 = sub_21DBFA16C();
  v290 = v289;
  if (v288 == sub_21DBFA16C() && v290 == v291)
  {

    goto LABEL_407;
  }

  v292 = sub_21DBFC64C();

  if (v292)
  {
LABEL_407:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v293 = sub_21DBFA16C();
  v295 = v294;
  if (v293 == sub_21DBFA16C() && v295 == v296)
  {

    goto LABEL_414;
  }

  v297 = sub_21DBFC64C();

  if (v297)
  {
LABEL_414:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v298 = sub_21DBFA16C();
  v300 = v299;
  if (v298 == sub_21DBFA16C() && v300 == v301)
  {

    goto LABEL_421;
  }

  v302 = sub_21DBFC64C();

  if (v302)
  {
LABEL_421:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v303 = sub_21DBFA16C();
  v305 = v304;
  if (v303 == sub_21DBFA16C() && v305 == v306)
  {

    goto LABEL_428;
  }

  v307 = sub_21DBFC64C();

  if (v307)
  {
LABEL_428:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v308 = sub_21DBFA16C();
  v310 = v309;
  if (v308 == sub_21DBFA16C() && v310 == v311)
  {

    goto LABEL_435;
  }

  v312 = sub_21DBFC64C();

  if (v312)
  {
LABEL_435:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v313 = sub_21DBFA16C();
  v315 = v314;
  if (v313 == sub_21DBFA16C() && v315 == v316)
  {

    goto LABEL_442;
  }

  v317 = sub_21DBFC64C();

  if (v317)
  {
LABEL_442:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v318 = sub_21DBFA16C();
  v320 = v319;
  if (v318 == sub_21DBFA16C() && v320 == v321)
  {

    goto LABEL_449;
  }

  v322 = sub_21DBFC64C();

  if (v322)
  {
LABEL_449:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v323 = sub_21DBFA16C();
  v325 = v324;
  if (v323 == sub_21DBFA16C() && v325 == v326)
  {

    goto LABEL_456;
  }

  v327 = sub_21DBFC64C();

  if (v327)
  {
LABEL_456:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v328 = sub_21DBFA16C();
  v330 = v329;
  if (v328 == sub_21DBFA16C() && v330 == v331)
  {

    goto LABEL_463;
  }

  v332 = sub_21DBFC64C();

  if (v332)
  {
LABEL_463:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v333 = sub_21DBFA16C();
  v335 = v334;
  if (v333 == sub_21DBFA16C() && v335 == v336)
  {

    goto LABEL_470;
  }

  v337 = sub_21DBFC64C();

  if (v337)
  {
LABEL_470:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v338 = sub_21DBFA16C();
  v340 = v339;
  if (v338 == sub_21DBFA16C() && v340 == v341)
  {

    goto LABEL_477;
  }

  v342 = sub_21DBFC64C();

  if (v342)
  {
LABEL_477:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v343 = sub_21DBFA16C();
  v345 = v344;
  if (v343 == sub_21DBFA16C() && v345 == v346)
  {

    goto LABEL_484;
  }

  v347 = sub_21DBFC64C();

  if (v347)
  {
LABEL_484:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v348 = sub_21DBFA16C();
  v350 = v349;
  if (v348 == sub_21DBFA16C() && v350 == v351)
  {

    goto LABEL_491;
  }

  v352 = sub_21DBFC64C();

  if (v352)
  {
LABEL_491:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  v353 = sub_21DBFA16C();
  v355 = v354;
  if (v353 == sub_21DBFA16C() && v355 == v356)
  {

    goto LABEL_498;
  }

  v357 = sub_21DBFC64C();

  if (v357)
  {
LABEL_498:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  return 0;
}

id static TTRListColors.color(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D0FACE0(a1, &v34);
  if (v35)
  {
    sub_21D0D0FD0(&v34, v36);
    v3 = v37;
    v4 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v5 = (*(v4 + 40))(v3, v4);
    if (v5)
    {
      v6 = v5;
      v7 = v37;
      v8 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v9 = (*(v8 + 72))(v7, v8);
      LODWORD(v7) = [v9 supportsListAppearance];

      v10 = &selRef_ckSymbolicColorName;
      if (!v7)
      {
        v10 = &selRef_daSymbolicColorName;
      }

      v11 = [v6 *v10];
      v12 = sub_21DBFA16C();
      v14 = v13;

      if (qword_280D1AD80 != -1)
      {
        swift_once();
      }

      v15 = off_280D1AD88;
      if (*(off_280D1AD88 + 2))
      {
        v16 = sub_21D0CEF70(v12, v14);
        v18 = v17;

        if (v18)
        {
          v20 = *(v15[7] + 8 * v16);
          if (qword_280D1BB08 == -1)
          {
            if ((v20 & 0x8000000000000000) == 0)
            {
              goto LABEL_11;
            }
          }

          else
          {
            result = swift_once();
            if ((v20 & 0x8000000000000000) == 0)
            {
LABEL_11:
              if (v20 < *(off_280D1BB10 + 2))
              {
                v21 = (off_280D1BB10 + 48 * v20);
                v23 = v21[4];
                v22 = v21[5];
                v25 = v21[6];
                v24 = v21[7];
                v27 = v21[8];
                v26 = v21[9];
                sub_21DBF8E0C();
                sub_21DBF8E0C();
                sub_21DBF8E0C();

                *a2 = v23;
                *(a2 + 8) = v22;
                *(a2 + 16) = v25;
                *(a2 + 24) = v24;
                *(a2 + 32) = v27;
                *(a2 + 40) = v26;
                *(a2 + 48) = 0;
                return __swift_destroy_boxed_opaque_existential_0(v36);
              }

              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }
      }

      else
      {
      }

      *a2 = v6;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
      return __swift_destroy_boxed_opaque_existential_0(v36);
    }

    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    sub_21D45C980(&v34);
  }

  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = *(&xmmword_280D1BAC8 + 1);
  v28 = xmmword_280D1BAC8;
  v30 = qword_280D1BAD8;
  v31 = unk_280D1BAE0;
  v32 = xmmword_280D1BAE8;
  v33 = byte_280D1BAF8;
  *a2 = xmmword_280D1BAC8;
  *(a2 + 8) = v29;
  *(a2 + 16) = v30;
  *(a2 + 24) = v31;
  *(a2 + 32) = v32;
  *(a2 + 48) = v33;
  return sub_21D0FB960(v28, v29, v30, v31, v32, *(&v32 + 1), v33);
}

uint64_t sub_21D0FACE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_21D0FAD54()
{
  v1 = [*v0 color];

  return v1;
}

id sub_21D0FAD98@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D44C20];
  v3 = sub_21DBFA16C();
  v5 = v4;
  v6 = v2;
  if (!REMSymbolicColorIsSupportedByCK())
  {

LABEL_14:

    goto LABEL_15;
  }

  IsSupportedByDA = REMSymbolicColorIsSupportedByDA();

  if (!IsSupportedByDA)
  {
    goto LABEL_14;
  }

  if (qword_280D1AD80 != -1)
  {
    swift_once();
  }

  v8 = off_280D1AD88;
  if (!*(off_280D1AD88 + 2))
  {
    goto LABEL_14;
  }

  v9 = sub_21D0CEF70(v3, v5);
  v11 = v10;

  if (v11)
  {
    v13 = *(v8[7] + 8 * v9);
    if (qword_280D1BB08 == -1)
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = swift_once();
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v13 < *(off_280D1BB10 + 2))
        {
          v14 = (off_280D1BB10 + 48 * v13);
          v15 = v14[5];
          v16 = v14[6];
          v17 = v14[7];
          v18 = v14[8];
          v19 = v14[9];
          *a1 = v14[4];
          *(a1 + 8) = v15;
          *(a1 + 16) = v16;
          *(a1 + 24) = v17;
          *(a1 + 32) = v18;
          *(a1 + 40) = v19;
          *(a1 + 48) = 0;
          sub_21DBF8E0C();
          sub_21DBF8E0C();

          return sub_21DBF8E0C();
        }

LABEL_22:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (qword_27CE56DF8 != -1)
  {
    swift_once();
  }

  v20 = sub_21DBF84BC();
  __swift_project_value_buffer(v20, qword_27CE63690);
  v21 = sub_21DBF84AC();
  v22 = sub_21DBFAECC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_21D0C9000, v21, v22, "Failed to find default list color", v23, 2u);
    MEMORY[0x223D46520](v23, -1, -1);
  }

  result = [objc_opt_self() blueColor];
  *a1 = result;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return result;
}

void *sub_21D0FB014()
{
  result = sub_21D0FB034();
  off_280D1AD88 = result;
  return result;
}

uint64_t sub_21D0FB034()
{
  v20 = MEMORY[0x277D84F98];
  if (qword_280D1BB08 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v0 = off_280D1BB10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F808);
    sub_21DBF9EAC();
    v19 = v0[2];
    if (!v19)
    {
      return v20;
    }

    v1 = 0;
    v2 = v0 + 5;
    while (v1 < v0[2])
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = sub_21D0CEF70(v4, v3);
      v8 = v20[2];
      v9 = (v7 & 1) == 0;
      v10 = __OFADD__(v8, v9);
      v11 = v8 + v9;
      if (v10)
      {
        goto LABEL_19;
      }

      v12 = v7;
      if (v20[3] < v11)
      {
        sub_21D215CC8(v11, isUniquelyReferenced_nonNull_native);
        v6 = sub_21D0CEF70(v4, v3);
        if ((v12 & 1) != (v13 & 1))
        {
          result = sub_21DBFC70C();
          __break(1u);
          return result;
        }

LABEL_12:
        if (v12)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v17 = v6;
      sub_21D220548();
      v6 = v17;
      if (v12)
      {
LABEL_4:
        *(v20[7] + 8 * v6) = v1;

        goto LABEL_5;
      }

LABEL_13:
      v20[(v6 >> 6) + 8] |= 1 << v6;
      v14 = (v20[6] + 16 * v6);
      *v14 = v4;
      v14[1] = v3;
      *(v20[7] + 8 * v6) = v1;

      v15 = v20[2];
      v10 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v10)
      {
        goto LABEL_20;
      }

      v20[2] = v16;
LABEL_5:
      ++v1;
      v2 += 6;
      if (v19 == v1)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_21D0FB274()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC2FA20;
  v1 = sub_21DBFA16C();
  v3 = v2;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF516C();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  strcpy((v0 + 48), "list-color-red");
  *(v0 + 63) = -18;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = sub_21DBFA16C();
  v8 = v7;
  v9 = sub_21DBF516C();
  *(v0 + 80) = v6;
  *(v0 + 88) = v8;
  *(v0 + 96) = 0xD000000000000011;
  *(v0 + 104) = 0x800000021DC6F1F0;
  *(v0 + 112) = v9;
  *(v0 + 120) = v10;
  v11 = sub_21DBFA16C();
  v13 = v12;
  v14 = sub_21DBF516C();
  *(v0 + 128) = v11;
  *(v0 + 136) = v13;
  *(v0 + 144) = 0xD000000000000011;
  *(v0 + 152) = 0x800000021DC6F230;
  *(v0 + 160) = v14;
  *(v0 + 168) = v15;
  v16 = sub_21DBFA16C();
  v18 = v17;
  v19 = sub_21DBF516C();
  *(v0 + 176) = v16;
  *(v0 + 184) = v18;
  *(v0 + 192) = 0xD000000000000010;
  *(v0 + 200) = 0x800000021DC6F270;
  *(v0 + 208) = v19;
  *(v0 + 216) = v20;
  v21 = sub_21DBFA16C();
  v23 = v22;
  v24 = sub_21DBF516C();
  *(v0 + 224) = v21;
  *(v0 + 232) = v23;
  *(v0 + 240) = 0xD000000000000015;
  *(v0 + 248) = 0x800000021DC6F2B0;
  *(v0 + 256) = v24;
  *(v0 + 264) = v25;
  v26 = sub_21DBFA16C();
  v28 = v27;
  v29 = sub_21DBF516C();
  *(v0 + 272) = v26;
  *(v0 + 280) = v28;
  *(v0 + 288) = 0x6C6F632D7473696CLL;
  *(v0 + 296) = 0xEF65756C622D726FLL;
  *(v0 + 304) = v29;
  *(v0 + 312) = v30;
  v31 = sub_21DBFA16C();
  v33 = v32;
  v34 = sub_21DBF516C();
  *(v0 + 320) = v31;
  *(v0 + 328) = v33;
  *(v0 + 336) = 0xD000000000000011;
  *(v0 + 344) = 0x800000021DC6F2F0;
  *(v0 + 352) = v34;
  *(v0 + 360) = v35;
  v36 = sub_21DBFA16C();
  v38 = v37;
  v39 = sub_21DBF516C();
  *(v0 + 368) = v36;
  *(v0 + 376) = v38;
  *(v0 + 384) = 0x6C6F632D7473696CLL;
  *(v0 + 392) = 0xEF6B6E69702D726FLL;
  *(v0 + 400) = v39;
  *(v0 + 408) = v40;
  v41 = sub_21DBFA16C();
  v43 = v42;
  v44 = sub_21DBF516C();
  *(v0 + 416) = v41;
  *(v0 + 424) = v43;
  *(v0 + 432) = 0xD000000000000011;
  *(v0 + 440) = 0x800000021DC6F330;
  *(v0 + 448) = v44;
  *(v0 + 456) = v45;
  v46 = sub_21DBFA16C();
  v48 = v47;
  v49 = sub_21DBF516C();
  *(v0 + 464) = v46;
  *(v0 + 472) = v48;
  *(v0 + 480) = 0xD000000000000010;
  *(v0 + 488) = 0x800000021DC6F350;
  *(v0 + 496) = v49;
  *(v0 + 504) = v50;
  v51 = sub_21DBFA16C();
  v53 = v52;
  v54 = sub_21DBF516C();
  *(v0 + 512) = v51;
  *(v0 + 520) = v53;
  *(v0 + 528) = 0x6C6F632D7473696CLL;
  *(v0 + 536) = 0xEF796172672D726FLL;
  *(v0 + 544) = v54;
  *(v0 + 552) = v55;
  v56 = sub_21DBFA16C();
  v58 = v57;
  result = sub_21DBF516C();
  *(v0 + 560) = v56;
  *(v0 + 568) = v58;
  *(v0 + 576) = 0x6C6F632D7473696CLL;
  *(v0 + 584) = 0xEF65736F722D726FLL;
  *(v0 + 592) = result;
  *(v0 + 600) = v60;
  off_280D1BB10 = v0;
  return result;
}

id sub_21D0FB960(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return a1;
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return sub_21DBF8E0C();
  }
}

id sub_21D0FB9BC(void *a1, id a2, char a3)
{
  if (a3)
  {
    return sub_21DBF8E0C();
  }

  else
  {
    return a1;
  }
}

void sub_21D0FB9F4(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

_DWORD *sub_21D0FBA04(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v26 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v26 = a2 - 1;
      }

      *((result + v15) & 0xFFFFFFFFFFFFFFF8) = v26;
    }
  }

  return result;
}

uint64_t sub_21D0FBC64(int *a1, unsigned int a2, uint64_t a3)
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

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

size_t sub_21D0FBE58(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

id sub_21D0FC054(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = [*v4 *a3];
  v7 = [v6 *a4];

  return v7;
}

uint64_t sub_21D0FC0A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D43280](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_21DBF8E0C();
      sub_21D29B8E4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_21D0FC144()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v65 - v2;
  v83 = sub_21DBF56BC();
  v4 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v77 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + 24);
  *v10 = v11;
  v12 = *(v7 + 104);
  v73 = *MEMORY[0x277D85200];
  v71 = v12;
  v72 = v7 + 104;
  v12(v10, v8);
  v70 = v11;
  LOBYTE(v11) = sub_21DBF9DAC();
  v13 = *(v7 + 8);
  v74 = v10;
  v75 = v7 + 8;
  v76 = v6;
  v69 = v13;
  v13(v10, v6);
  if (v11)
  {
    v14 = *(v0 + 56);
    if (!v14)
    {
      sub_21D0F2660();
      v14 = *(v0 + 56);
      if (!v14)
      {
        goto LABEL_41;
      }
    }

    v81 = v14;
    v16 = v14 + 56;
    v15 = *(v14 + 56);
    v17 = 1 << *(v14 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    sub_21DBF8E0C();
    v67 = v0;
    swift_beginAccess();
    v20 = 0;
    v21 = v17 + 63;
    v22 = v81;
    v23 = v21 >> 6;
    v82 = (v4 + 48);
    v68 = (v4 + 32);
    v78 = MEMORY[0x277D84F98];
    v66 = (v4 + 8);
    *&v24 = 136315138;
    v79 = v24;
    v80 = v3;
    while (1)
    {
      v30 = v20;
      if (!v19)
      {
        break;
      }

LABEL_12:
      v31 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v32 = (*(v22 + 48) + ((v20 << 10) | (16 * v31)));
      v33 = *v32;
      v34 = v32[1];
      sub_21DBF8E0C();
      sub_21DBF564C();
      if ((*v82)(v3, 1, v83) == 1)
      {
        sub_21D0CF7E0(v3, &qword_27CE58370);
        if (qword_280D17E98 != -1)
        {
          swift_once();
        }

        v35 = sub_21DBF84BC();
        __swift_project_value_buffer(v35, qword_27CE5EF68);
        sub_21DBF8E0C();
        v36 = sub_21DBF84AC();
        v37 = sub_21DBFAEBC();

        if (os_log_type_enabled(v36, v37))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v84 = v26;
          *v25 = v79;
          v27 = sub_21D0CDFB4(v33, v34, &v84);

          *(v25 + 4) = v27;
          _os_log_impl(&dword_21D0C9000, v36, v37, "accountIdentifier is not a valid UUID {accountIdentifier: %s}", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          v28 = v26;
          v22 = v81;
          MEMORY[0x223D46520](v28, -1, -1);
          v29 = v25;
          v3 = v80;
          MEMORY[0x223D46520](v29, -1, -1);
        }

        else
        {
        }
      }

      else
      {

        (*v68)(v77, v3, v83);
        v38 = objc_opt_self();
        v39 = sub_21DBF566C();
        v40 = [v38 objectIDWithUUID_];

        v41 = v74;
        v43 = v70;
        v42 = v71;
        *v74 = v70;
        v44 = v76;
        v42(v41, v73, v76);
        v45 = v43;
        LOBYTE(v43) = sub_21DBF9DAC();
        v69(v41, v44);
        if ((v43 & 1) == 0)
        {
          goto LABEL_38;
        }

        v46 = *(v67 + 48);
        if (*(v46 + 16))
        {
          sub_21DBF8E0C();
          v47 = sub_21D17E07C(v40);
          if (v48)
          {
            v49 = *(*(v46 + 56) + v47);
          }

          else
          {
            v49 = 2;
          }
        }

        else
        {
          v49 = 2;
        }

        v50 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v50;
        v52 = sub_21D17E07C(v40);
        v54 = *(v50 + 16);
        v55 = (v53 & 1) == 0;
        v56 = __OFADD__(v54, v55);
        v57 = v54 + v55;
        if (v56)
        {
          goto LABEL_39;
        }

        v58 = v53;
        if (*(v50 + 24) >= v57)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v63 = v52;
            sub_21D224234();
            v52 = v63;
          }
        }

        else
        {
          sub_21D21C158(v57, isUniquelyReferenced_nonNull_native);
          v52 = sub_21D17E07C(v40);
          if ((v58 & 1) != (v59 & 1))
          {
            goto LABEL_42;
          }
        }

        v60 = v84;
        v78 = v84;
        if (v58)
        {
          *(v84[7] + v52) = v49;

          (*v66)(v77, v83);
          v22 = v81;
        }

        else
        {
          v84[(v52 >> 6) + 8] |= 1 << v52;
          *(v60[6] + 8 * v52) = v40;
          *(v60[7] + v52) = v49;
          (*v66)(v77, v83);
          v61 = v60[2];
          v56 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v56)
          {
            goto LABEL_40;
          }

          v60[2] = v62;
          v22 = v81;
        }
      }
    }

    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v20 >= v23)
      {

        return v78;
      }

      v19 = *(v16 + 8 * v20);
      ++v30;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  sub_21D0D8CF0(0, &qword_280D17880);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}